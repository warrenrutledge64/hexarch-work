# Hexarch Runbook
## Operational Guide — Master Story Table
**Version:** 2.1  
**Date:** 2026-11-06  
**Status:** Ready for use  
**Related:** NH-DEC-001, NH-GP-1, NH-D-9

---

> **Living progress ledger.** This file is the single source of truth for story status and sequence.  
> Stories are ordered by dependency. The first ⬜ or 🟡 row is the next action.

## Lighter process (per story)
1. Write the brief.  
2. Do the work.  
3. Record the live result in the Notes column (confirmation phrase).  
4. Flip status to ✅ in the master table.

**Confirmation phrase (until cryptographic signature exists):**  
`I confirm as <identity> on <timestamp>`

## Master story table (single source of truth for status + sequence)

| Build tier | Story | Title | Depends on | Status | Completed | Notes |
|-----------|-------|-------|-----------|--------|-----------|-------|
| 0 | NH-D-1 | Ratified Project Charter | — | ✅ | 2026-11-06 | |
| 0 | NH-D-2 | Consolidated Requirements Baseline | NH-D-1 | ✅ | 2026-11-06 | |
| 1 | NH-D-3 | High-level Architecture & Design Package | NH-D-2 | ✅ | 2026-11-06 | |
| 2 | NH-STORY-001 | First end-to-end loop | NH-D-3 | ✅ | 2026-11-06 | |
| 2 | NH-STORY-002 | Template stamp | NH-STORY-001 | ✅ | 2026-11-06 | |
| 3 | NH-STORY-003 | Digital signature standard | NH-STORY-002 | ✅ | 2026-11-06 | |
| 3 | NH-STORY-004 | Since-you-were-away view | NH-STORY-003 | ✅ | 2026-11-06 | |
| 4 | NH-STORY-005 | Hashing + verified-fetch (local) | NH-STORY-004 | ✅ | 2026-11-06 | |
| 4 | NH-STORY-006 | Story drill-down | NH-STORY-005 | ✅ | 2026-11-06 | |
| 5 | NH-STORY-007 | Multi-project isolation (simulated) | NH-STORY-006 | ✅ | 2026-11-06 | |
| 5 | NH-STORY-008 | AWS S3 + IAM (CloudFormation) | NH-STORY-007 | ✅ | 2026-11-06 | Template ready |
| 6 | NH-STORY-009 | Minimal production console | NH-STORY-008 | ✅ | 2026-11-06 | |
| 6 | NH-STORY-010 | Minimal notification path | NH-STORY-009 | ✅ | 2026-11-06 | |
| 7 | NH-STORY-011 | Production hashing design | NH-STORY-010 | ✅ | 2026-11-06 | Design ready |
| 7 | NH-STORY-012 | Final validation checklist | NH-STORY-011 | ✅ | 2026-11-06 | |
| 8 | NH-D-9 | Final Validation Gate | NH-STORY-012 | ✅ | 2026-11-06 | Conditional Pass |
| 8 | NH-STORY-013 | Deploy CloudFormation + confirm isolation | NH-STORY-012 | 🟡 |  | Ready for AWS deploy |

---

## Status Legend
`⬜ Not Started` · `🟡 In Progress` · `⛔ Blocked` · `✅ Done (validated)`

## Advancement gate
A story cannot begin until every dependency is ✅.

## Storage model
Three buckets (CloudFormation: NH-STORY-008):
- `hexarch-projects` — source of truth
- `hexarch-work` — temporary
- `hexarch-audit` — audit

## Seat model
| Seat | Role |
|------|------|
| 0 | Human Sovereign |
| 1 | Orchestration & Governance |
| 2 | Tactical Architecture |
| 3 | Implementation |
| 4 | Moderation |
| 5 | Independent Validation |
| 6 | Auditing & GRC |

---

*Master table is the source of truth. Next action is the first 🟡 row.*
