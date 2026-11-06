# Story Brief — NH-STORY-004
## Minimal Console “Since You Were Away” View
**Date:** 2026-11-06  
**Status:** Ready for advancement check  
**Related:** NH-STORY-003 (closed), NH-GP-1, NH-REQ-CON-2

---

## Story

**ID:** NH-STORY-004  
**Title:** Minimal console “since you were away” view  

**As** Seat 0  
**I want** a minimal console view that shows what changed and what needs my action since I last looked  
**So that** I can re-enter quickly without reading the full runbook or ledger.

## Acceptance criteria

- [ ] A simple view (text, HTML, or console output) lists:
  - Stories whose status changed
  - Pending dual-control items
  - Items waiting on Seat 0
- [ ] View is generated from the runbook and decision records (no second status system)
- [ ] Advancement gate, independent validation, live pass, and audit acknowledgment are followed
- [ ] Status flips to ✅ only after the recorded pass
- [ ] Warm handoff for NH-STORY-005 is written

## Out of scope

- Full interactive dashboard
- MFA
- Real-time push

## Definition of Done

A recorded live pass exists showing that the minimal “since you were away” view works and is generated from the runbook, and the runbook shows the story as ✅.

---

*Brief locked for NH-STORY-004.*
