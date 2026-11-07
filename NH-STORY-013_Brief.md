# Story Brief — NH-STORY-013
## Deploy CloudFormation + Confirm Isolation
**Date:** 2026-11-06  
**Status:** Ready for execution  
**Depends on:** NH-STORY-012 (✅)

---

## Story
**As** Seat 0  
**I want** the CloudFormation stack deployed and isolation confirmed on live AWS  
**So that** we replace the Conditional Pass with a confirmed Pass.

## Acceptance criteria
- [ ] CloudFormation stack deploys successfully
- [ ] Three buckets exist
- [ ] Cross-project write is denied
- [ ] Same-project read succeeds
- [ ] Result recorded in the master table with confirmation phrase

## Deploy command
```bash
aws cloudformation deploy \
  --template-file NH-STORY-008_cloudformation.yaml \
  --stack-name hexarch-storage \
  --capabilities CAPABILITY_NAMED_IAM
```

## Verification
See `NH-STORY-013_Security_Performance_Test_Plan.md`

---

*Brief ready. Deployment requires AWS credentials.*
