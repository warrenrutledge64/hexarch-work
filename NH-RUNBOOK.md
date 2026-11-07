# Hexarch Runbook
## Operational Guide — Master Story Table
**Version:** 2.8  
**Date:** 2026-11-06  
**Status:** Ready for use  
**Related:** NH-DEC-001, NH-GP-1, NH-D-9, NH-DEC-009, NH-PROCESS-Seat_Handoff_Flow.md

---

> **Living progress ledger.** This file is the single source of truth for story status and sequence.  
> Stories are ordered by dependency. The first ⬜ or 🟡 row is the next action.

## Process (per story)
1. Write the brief (or update the table row).  
2. Do the work.  
3. Update the master table with the result.  
4. Continue.

**No pause for confirmation** unless a decision is required that changes direction.  
**What is recorded:** status in the master table, the brief, and the actual deliverable.

## Seat handoff flow
See `NH-PROCESS-Seat_Handoff_Flow.md` for the full note.

| Step | Seat | Action |
|------|------|--------|
| 1 | Seat 0 | Writes the brief. |
| 2 | Seat 1 | Writes the prompt that directs Seat 2. |
| 3 | Seat 2 | Writes the technical design / work package. |
| 4 | Seat 3 | Builds from the work package. |
| 5 | Seat 5 | Validates against the brief. |
| 6 | Seat 6 | Audit acknowledgment. |

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
| 4 | NH-STORY-005 | Hashing + verified-fetch (local) | NH-STORY-004 | ✅ | 2026-11-06 | Deploy in 014 |
| 4 | NH-STORY-006 | Story drill-down | NH-STORY-005 | ✅ | 2026-11-06 | |
| 5 | NH-STORY-007 | Multi-project isolation (simulated) | NH-STORY-006 | ✅ | 2026-11-06 | Deploy + confirm in 013 |
| 5 | NH-STORY-008 | AWS S3 + IAM (CloudFormation) | NH-STORY-007 | ✅ | 2026-11-06 | Template ready — deploy in 013 |
| 6 | NH-STORY-009 | Minimal production console | NH-STORY-008 | ✅ | 2026-11-06 | Auth in 017 (optional) |
| 6 | NH-STORY-010 | Minimal notification path | NH-STORY-009 | ✅ | 2026-11-06 | |
| 7 | NH-STORY-011 | Production hashing design | NH-STORY-010 | ✅ | 2026-11-06 | Deploy in 014 |
| 7 | NH-STORY-012 | Final validation checklist | NH-STORY-011 | ✅ | 2026-11-06 | Re-run in 015 |
| 8 | NH-D-9 | Final Validation Gate | NH-STORY-012 | ✅ | 2026-11-06 | Conditional Pass — full Pass in 015 |
| 8 | NH-STORY-013 | Deploy CloudFormation + confirm isolation | NH-STORY-012 | ⬜ |  | Deploys 008 + confirms 007 |
| 9 | NH-STORY-014 | Deploy hashing Lambda + verified-fetch on live S3 | NH-STORY-013 | ⬜ |  | Deploys 011 + 005 |
| 10 | NH-STORY-015 | Re-run final validation gate on live AWS | NH-STORY-014 | ⬜ |  | Completes 012 / D-9 |
| 10 | NH-STORY-016 | Dual-control enforcement in IAM | NH-STORY-013 | ⬜ |  | Seat 1 + Seat 6 oversight |
| 11 | NH-STORY-017 | Console authentication | NH-STORY-015 | ⬜ |  | Completes 009 (optional) |
| 11 | NH-STORY-018 | Operations handoff / customer onboarding template | NH-STORY-015 | ⬜ |  | |

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

## Seat model (locked — see NH-DEC-009)
| Seat | Role | Model | Provider |
|------|------|-------|----------|
| 0 | Human Sovereign | Gemini Sovereign | Google |
| 1 | Orchestration & Governance | Claude Haiku 5.5 | Anthropic |
| 2 | Tactical Architecture | GPT-5.6 Luna | OpenAI |
| 3 | Implementation | Qwen3-Coder-30B-A3B-Instruct | Qwen |
| 4 | Moderation | Ministral 3B | Mistral AI |
| 5 | Independent Validation | Llama 4 Scout 17B Instruct | Meta |
| 6 | Auditing & GRC | Jamba 1.5 Mini | AI21 Labs |

---

*Master table is the source of truth. Seat handoff flow in NH-PROCESS-Seat_Handoff_Flow.md. Next action is NH-STORY-013 when AWS is available.*
