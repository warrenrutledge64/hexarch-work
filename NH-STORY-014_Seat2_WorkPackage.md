# Seat 2 Work Package — NH-STORY-014
## For Seat 3
**Date:** 2026-11-06
**From:** Seat 2
**To:** Seat 3

---

## Read this first
- This work package: `NH-STORY-014_Seat2_WorkPackage.md`
- Brief (acceptance criteria): `NH-STORY-014_Brief.md`

## Your task
Execute the work described below. Update the master table on completion.

---

## What to deploy
- Lambda function that hashes objects on write to hexarch-projects
- Verified-fetch path that checks hash before returning content

## Acceptance criteria
- [ ] Lambda deployed and triggered on object create
- [ ] Hash written to metadata or registry
- [ ] Matching hash returns object
- [ ] Mismatch is rejected

## Verification
Test with known-good and known-bad objects. Record results.

---
