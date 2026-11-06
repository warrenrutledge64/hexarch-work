# Story Brief — NH-STORY-005
## First Hashing and Verified-Fetch Proof
**Date:** 2026-11-06  
**Status:** Ready for advancement check  
**Related:** NH-STORY-004 (closed), NH-REQ-INT-2

---

## Story

**ID:** NH-STORY-005  
**Title:** First hashing and verified-fetch proof  

**As** Seat 0  
**I want** a source-of-truth object to be hashed and then retrieved only via verified-fetch  
**So that** we prove the integrity path works before larger builds.

## Acceptance criteria

- [ ] A sample source-of-truth file is hashed  
- [ ] A verified-fetch path returns the content only if the hash matches  
- [ ] A mismatch is detected and surfaced  
- [ ] Advancement gate, independent validation, live pass, and audit acknowledgment are followed  
- [ ] Status flips to ✅ only after the recorded pass  
- [ ] Warm handoff for NH-STORY-006 is written  

## Out of scope

- Full production hashing infrastructure  
- Custom dashboard  
- MFA  

## Definition of Done

A recorded live pass exists showing that hashing and verified-fetch work (including mismatch detection), and the runbook shows the story as ✅.

---

*Brief locked for NH-STORY-005.*
