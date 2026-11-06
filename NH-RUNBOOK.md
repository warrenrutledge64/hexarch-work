# Hexarch Runbook
## Operational Guide
**Version:** 1.0  
**Date:** 2026-11-06  
**Status:** Ready for use  
**Related:** NH-DEC-001 (Charter), NH-GP-1, NH-D-9

---

## 1. Purpose
This runbook is the single source of truth for how work moves through Hexarch. It protects Seat 0 attention and ensures every change is traceable, verified, and controlled.

## 2. Seat model

| Seat | Role | Primary responsibility |
|------|------|------------------------|
| 0 | Human Sovereign | Final decisions, live validation |
| 1 | Orchestration & Governance | Advancement checks, workflow control |
| 2 | Tactical Architecture | Design |
| 3 | Implementation | Build |
| 4 | Moderation | Session facilitation |
| 5 | Independent Validation | Validation packages |
| 6 | Auditing & GRC | Audit acknowledgment |

## 3. Workflow (run order)

1. **Brief** — Define the story.  
2. **Advancement check** (Seat 1) — Confirm no open dependencies.  
3. **Implementation** (Seat 3) — Produce the artifact.  
4. **Independent validation** (Seat 5) — Author the validation package.  
5. **Live validation** (Seat 0) — Record Pass/Fail with digital signature.  
6. **Audit acknowledgment** (Seat 6).  
7. **Close-out** — Status → ✅ and warm handoff.

## 4. Digital signature method
Minimum viable non-repudiation:

**Confirmation phrase:**  
`I confirm as <identity> on <timestamp>`

Recorded with:
- Live validation result (Pass/Fail)
- Signer identity
- Timestamp

## 5. Source of truth
- Runbook and project plan are source of truth.
- Only Seat 0 may make high-level changes.
- Changes require dual control (Seat 1 and Seat 6 oversight).
- Model output is untrusted until verified-fetch or live human validation.

## 6. Storage model
Three buckets (CloudFormation template: NH-STORY-008):
- `hexarch-projects` — source of truth
- `hexarch-work` — temporary work product
- `hexarch-audit` — audit records

Prefix isolation enforced by IAM.

## 7. Onboarding a new project
1. Stamp from `_template/`.  
2. Assign project ID.  
3. Apply prefix-level IAM.  
4. Confirm isolation.

## 8. Console
Minimal console shows:
- “Since you were away” summary
- Story drill-down (stage, owning seat, advancement gate, live validation)

Generated from the runbook. No second status system.

## 9. Notifications
Email is generated when a story is waiting on Seat 0.  
Includes story ID and link/summary.

## 10. Integrity
- Objects are hashed on write (Lambda).  
- Retrieval uses verified-fetch.  
- Mismatch is detected and surfaced.

## 11. Final validation gate
Use the checklist in NH-STORY-012_Final_Validation_Checklist.md.  
A full Pass requires live AWS confirmation of all controls.

## 12. Key artifacts
- Charter: NH-DEC-001  
- Design package: NH-D-3  
- CloudFormation: NH-STORY-008_cloudformation.yaml  
- Console: NH-STORY-009_console.html  
- Final checklist: NH-STORY-012_Final_Validation_Checklist.md  
- Final gate record: NH-D-9_Final_Validation_Gate.md  

---

*This runbook is the operational source of truth for Hexarch.*
