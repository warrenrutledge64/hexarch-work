# Story Brief — NH-STORY-008
## Real AWS S3 Buckets and Prefix-Level IAM Policies
**Date:** 2026-11-06  
**Status:** Ready for advancement check  
**Related:** NH-STORY-007 (closed), NH-D-5, NH-DEC-008

---

## Story

**ID:** NH-STORY-008  
**Title:** Create real AWS S3 buckets and prefix-level IAM policies  

**As** Seat 0  
**I want** the three buckets (`hexarch-projects`, `hexarch-work`, `hexarch-audit`) created in AWS with prefix-level IAM policies that enforce project isolation  
**So that** we move from simulation to real infrastructure for the storage and access model.

## Acceptance criteria

- [ ] Three S3 buckets created  
- [ ] Prefix structure matches the design (`{project-id}/`, `_template/`)  
- [ ] IAM policies enforce least-privilege and cross-project write denial  
- [ ] A test write from one project context to another is denied  
- [ ] Advancement gate, independent validation, live pass, and audit acknowledgment are followed  
- [ ] Status flips to ✅ only after the recorded pass  
- [ ] Warm handoff for NH-STORY-009 is written  

## Out of scope

- Full console  
- Notifications  
- Production hashing infrastructure  

## Definition of Done

A recorded live pass exists showing that the three buckets exist with enforcing IAM policies, and the runbook shows the story as ✅.

---

*Brief locked for NH-STORY-008.*
