# Story Brief — NH-STORY-007
## First Multi-Project Isolation Proof
**Date:** 2026-11-06  
**Status:** Ready for advancement check  
**Related:** NH-STORY-006 (closed), NH-REQ-ST-2

---

## Story

**ID:** NH-STORY-007  
**Title:** First multi-project isolation proof  

**As** Seat 0  
**I want** two projects to exist under separate prefixes with write access denied across projects  
**So that** we prove the isolation model works before onboarding additional project managers.

## Acceptance criteria

- [ ] A second project is stamped from the template  
- [ ] Write to the first project’s governance path from the second project’s context is denied  
- [ ] Read access remains allowed where defined  
- [ ] Advancement gate, independent validation, live pass, and audit acknowledgment are followed  
- [ ] Status flips to ✅ only after the recorded pass  
- [ ] Warm handoff for NH-STORY-008 is written  

## Out of scope

- Real IAM / S3 policy enforcement (simulate with directory permissions or explicit denial)  
- Custom dashboard  
- MFA  

## Definition of Done

A recorded live pass exists showing that cross-project write is denied while read remains allowed, and the runbook shows the story as ✅.

---

*Brief locked for NH-STORY-007.*
