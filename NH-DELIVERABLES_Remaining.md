# Remaining Deliverables — Formalized
## Hexarch Project
**Date:** 2026-11-06  
**Status:** Draft for Seat 0 ratification  
**Related:** NH-DEC-001 (Charter), NH-DEC-007 (Design Gate)

---

## Completed deliverables
- **NH-D-1** Ratified Project Charter ✅
- **NH-D-2** Consolidated Requirements Baseline ✅
- **NH-D-3** High-level Architecture & Design Package ✅
- **NH-D-4** First end-to-end loop ✅ (proven at simulation level via stories 001–007)

## Remaining deliverables

### NH-D-5 — Real AWS Storage & IAM Enforcement
Replace local simulation with actual S3 buckets and prefix-level IAM policies that enforce the three-bucket model and cross-project isolation.

### NH-D-6 — Production Console / Dashboard
Implement the minimum viable console that provides:
- “Since you were away” summary
- Story drill-down
- Pending decisions
- Generated from the runbook (no second status system)

### NH-D-7 — Notifications
Implement at least one notification channel (email recommended) so Seat 0 is alerted when action is required.

### NH-D-8 — Production Integrity Path
Implement production hashing and verified-fetch for source-of-truth objects, with mismatch detection surfaced to the console.

### NH-D-9 — Final Validation Gate
End-to-end validation on real AWS infrastructure demonstrating that all controls (workflow, dual control, digital signature, isolation, integrity, console) operate together.

---

*Draft for formalization. Awaiting Seat 0 confirmation.*
