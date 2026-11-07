# Seat 2 Work Package — NH-STORY-014
## For Seat 3
**Date:** 2026-11-06

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
