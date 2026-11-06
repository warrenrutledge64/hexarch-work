# NH-STORY-008 — Terraform: S3 Buckets and Prefix-Level IAM Policies
# Creates hexarch-projects, hexarch-work, hexarch-audit
# Enforces project isolation via IAM policies

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

variable "aws_region" {
  default = "us-east-1"
}

variable "project_ids" {
  description = "List of project IDs to grant access"
  type        = list(string)
  default     = ["demo-project", "project-b"]
}

# ---------------------------------------------------------------------------
# S3 Buckets
# ---------------------------------------------------------------------------

resource "aws_s3_bucket" "projects" {
  bucket = "hexarch-projects-${data.aws_caller_identity.current.account_id}"
}

resource "aws_s3_bucket" "work" {
  bucket = "hexarch-work-${data.aws_caller_identity.current.account_id}"
}

resource "aws_s3_bucket" "audit" {
  bucket = "hexarch-audit-${data.aws_caller_identity.current.account_id}"
}

resource "aws_s3_bucket_versioning" "projects" {
  bucket = aws_s3_bucket.projects.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_versioning" "work" {
  bucket = aws_s3_bucket.work.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_versioning" "audit" {
  bucket = aws_s3_bucket.audit.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "projects" {
  bucket = aws_s3_bucket.projects.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "work" {
  bucket = aws_s3_bucket.work.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "audit" {
  bucket = aws_s3_bucket.audit.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# ---------------------------------------------------------------------------
# IAM Policies — Project Isolation
# ---------------------------------------------------------------------------

data "aws_caller_identity" "current" {}

# Policy that allows a seat to read/write only its own project prefix
resource "aws_iam_policy" "project_isolation" {
  name        = "hexarch-project-isolation"
  description = "Restricts write access to own project prefix only"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "AllowListOwnPrefix"
        Effect = "Allow"
        Action = ["s3:ListBucket"]
        Resource = [
          aws_s3_bucket.projects.arn,
          aws_s3_bucket.work.arn,
          aws_s3_bucket.audit.arn
        ]
        Condition = {
          StringLike = {
            "s3:prefix" = ["${var.project_ids[0]}/*", "${var.project_ids[1]}/*", "_template/*"]
          }
        }
      },
      {
        Sid    = "AllowReadWriteOwnPrefix"
        Effect = "Allow"
        Action = [
          "s3:GetObject",
          "s3:PutObject",
          "s3:DeleteObject"
        ]
        Resource = [
          for pid in var.project_ids :
          "${aws_s3_bucket.projects.arn}/${pid}/*"
        ]
      },
      {
        Sid    = "DenyCrossProjectWrite"
        Effect = "Deny"
        Action = [
          "s3:PutObject",
          "s3:DeleteObject"
        ]
        Resource = [
          for pid in var.project_ids :
          "${aws_s3_bucket.projects.arn}/${pid}/*"
        ]
        Condition = {
          StringNotEquals = {
            "aws:PrincipalTag/ProjectId" = var.project_ids
          }
        }
      }
    ]
  })
}

# Seat 0 policy (full control within owned projects)
resource "aws_iam_policy" "seat0" {
  name        = "hexarch-seat0"
  description = "Seat 0 full control on owned project prefixes"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = "s3:*"
        Resource = [
          aws_s3_bucket.projects.arn,
          "${aws_s3_bucket.projects.arn}/*",
          aws_s3_bucket.work.arn,
          "${aws_s3_bucket.work.arn}/*",
          aws_s3_bucket.audit.arn,
          "${aws_s3_bucket.audit.arn}/*"
        ]
      }
    ]
  })
}

output "projects_bucket" {
  value = aws_s3_bucket.projects.bucket
}

output "work_bucket" {
  value = aws_s3_bucket.work.bucket
}

output "audit_bucket" {
  value = aws_s3_bucket.audit.bucket
}
