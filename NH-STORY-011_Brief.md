# Story Brief — NH-STORY-011
## Production Hashing and Verified-Fetch
**Date:** 2026-11-06  
**Status:** Ready for advancement check  
**Related:** NH-STORY-010 (closed), NH-D-8, NH-DEC-008

---

## Story

**ID:** NH-STORY-011  
**Title:** Production hashing and verified-fetch  

**As** Seat 0  
**I want** source-of-truth objects in S3 to be hashed and retrieved only via verified-fetch  
**So that** integrity is enforced in the real environment.

## Acceptance criteria

- [ ] A Lambda or equivalent hashes objects on write  
- [ ] A verified-fetch path returns content only if the hash matches  
- [ ] A mismatch is detected and surfaced  
- [ ] Advancement gate, independent validation, live pass, and audit acknowledgment are followed  
- [ ] Status flips to ✅ only after the recorded pass  
- [ ] Warm handoff for NH-STORY-012 is written  

## Out of scope

- Full console integration  
- MFA  
- Multi-region  

## Definition of Done

A recorded live pass exists showing that hashing and verified-fetch work in the AWS environment, and the runbook shows the story as ✅.

---

*Brief locked for NH-STORY-011.*
