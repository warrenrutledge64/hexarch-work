# Seat 2 Work Package — NH-STORY-013
## For Seat 3
**Date:** 2026-11-06
**From:** Seat 2
**To:** Seat 3

---

## Read this first
- This work package: `NH-STORY-013_Seat2_WorkPackage.md`
- Brief (acceptance criteria): `NH-STORY-013_Brief.md`

## Your task
Execute the work described below. Update the master table on completion.

---

---

## What to deploy
- Template: `NH-STORY-008_cloudformation.yaml`
- Stack name: `hexarch-storage`
- Capabilities: `CAPABILITY_NAMED_IAM`

## Deploy command
```bash
aws cloudformation deploy \
  --template-file NH-STORY-008_cloudformation.yaml \
  --stack-name hexarch-storage \
  --capabilities CAPABILITY_NAMED_IAM
```

## Acceptance criteria
- [ ] Stack deploys successfully
- [ ] Three buckets exist (hexarch-projects, hexarch-work, hexarch-audit)
- [ ] Cross-project write is denied
- [ ] Same-project read succeeds

## Verification
Execute tests in `NH-STORY-013_Security_Performance_Test_Plan.md`.
Record results. Update master table on pass.

---
*Work package for Seat 3.*
