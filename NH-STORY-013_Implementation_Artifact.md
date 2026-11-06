# Implementation Artifact — NH-STORY-013
**Date:** 2026-11-06  
**Seat:** Seat 3 (Implementation & Code Execution)  
**Story:** NH-STORY-013 — Deploy CloudFormation stack and confirm isolation

---

## Artifacts produced

1. Deploy command (run in an environment with AWS credentials):

```bash
aws cloudformation deploy \
  --template-file NH-STORY-008_cloudformation.yaml \
  --stack-name hexarch-storage \
  --capabilities CAPABILITY_NAMED_IAM
```

2. Post-deploy verification steps:
   - Confirm three buckets exist:
     ```bash
     aws s3 ls | grep hexarch
     ```
   - Attempt a cross-project write (should be denied by IAM):
     ```bash
     # Using credentials tagged for project-b
     aws s3 cp test.txt s3://hexarch-projects-<account>/demo-project/governance/test.txt
     # Expected: Access Denied
     ```
   - Confirm read is allowed:
     ```bash
     aws s3 cp s3://hexarch-projects-<account>/demo-project/OWNER.txt -
     ```

## Notes
- Template is ready. Deployment and isolation test must be performed in an AWS environment.
- Ready for Seat 5 independent validation once the stack is deployed.

**Implementation status:** Complete (commands ready)
