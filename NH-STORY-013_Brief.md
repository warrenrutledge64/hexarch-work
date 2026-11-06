# Story Brief — NH-STORY-013
## Deploy CloudFormation Stack and Confirm Isolation
**Date:** 2026-11-06  
**Status:** Ready for advancement check  
**Related:** NH-STORY-012 (closed), NH-D-5, NH-D-9

---

## Story

**ID:** NH-STORY-013  
**Title:** Deploy CloudFormation stack and confirm isolation  

**As** Seat 0  
**I want** the CloudFormation stack deployed and a cross-project write test performed on the live buckets  
**So that** we replace the Conditional Pass with a confirmed Pass on real AWS.

## Acceptance criteria

- [ ] CloudFormation stack deploys successfully  
- [ ] Three buckets exist  
- [ ] A write from one project context to another is denied  
- [ ] Result recorded with digital signature  
- [ ] Advancement gate, independent validation, live pass, and audit acknowledgment are followed  
- [ ] Status flips to ✅ only after the recorded pass  
- [ ] Warm handoff written  

## Out of scope

- Full Lambda deployment  
- Console authentication  

## Definition of Done

A recorded live pass exists showing that the stack is deployed and isolation is enforced, and the runbook shows the story as ✅.

---

*Brief locked for NH-STORY-013.*
