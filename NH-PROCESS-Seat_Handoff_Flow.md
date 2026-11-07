# Process Note — Seat Handoff Flow
## NH-STORY-013 and subsequent stories
**Date:** 2026-11-06  
**Status:** Active  
**Related:** NH-RUNBOOK.md, NH-AI-SEAT-MAPPING.md

---

## Handoff flow

| Step | Seat | Action |
|------|------|--------|
| 1 | **Seat 0** | Writes the brief (outcome, acceptance criteria). |
| 2 | **Seat 1** | Retrieves the brief. Writes the prompt that directs Seat 2. |
| 3 | **Seat 2** | Receives Seat 1’s prompt. Writes the technical design / work package (what to deploy, acceptance criteria, verification steps). |
| 4 | **Seat 3** | Ingests Seat 2’s work package and builds. |
| 5 | **Seat 5** | Validates against the brief. |
| 6 | **Seat 6** | Audit acknowledgment. |

## Roles
- **Seat 0** — Defines the outcome.
- **Seat 1** — Orchestrates (writes the prompt for Seat 2).
- **Seat 2** — Architects (writes the work package).
- **Seat 3** — Builds from the work package.
- **Seat 5** — Validates.
- **Seat 6** — Audits.

---

*Active 2026-11-06.*
