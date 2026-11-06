# Security and Performance Test Plan — NH-STORY-013
**Date:** 2026-11-06  
**Story:** NH-STORY-013 — Deploy CloudFormation stack and confirm isolation  
**Status:** Ready for execution after deployment

---

## Security tests

| Test | Command / action | Expected result |
|------|------------------|-----------------|
| Cross-project write denied | `aws s3 cp test.txt s3://hexarch-projects-<acct>/other-project/file.txt` (credentials for a different project) | Access Denied |
| Same-project write allowed | Same command targeting own project prefix | Success |
| Unauthenticated access denied | Attempt access without credentials | Access Denied |
| Bucket encryption enabled | `aws s3api get-bucket-encryption --bucket hexarch-projects-<acct>` | AES256 |
| Versioning enabled | `aws s3api get-bucket-versioning --bucket hexarch-projects-<acct>` | Enabled |
| Public access blocked | `aws s3api get-public-access-block --bucket hexarch-projects-<acct>` | All true |

## Performance tests (basic)

| Test | Action | Acceptable result |
|------|--------|-------------------|
| Object upload latency | Upload a 1 MB file to own prefix | < 2 seconds |
| Object download latency | Download the same file | < 1 second |
| List prefix | `aws s3 ls s3://hexarch-projects-<acct>/own-project/` | < 1 second |
| Concurrent writes | 10 parallel uploads to own prefix | All succeed, no throttling |

## Integrity test (after Lambda is deployed)
- Upload an object, alter it outside the verified-fetch path, then attempt verified-fetch.  
- Expected: mismatch detected and surfaced.

---

*Formal test plan for NH-STORY-013. Execute after stack deployment.*
