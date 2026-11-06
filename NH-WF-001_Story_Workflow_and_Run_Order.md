# NH-WF-001 — Story Workflow and Run-Order Rule
## Hexarch Working Document
**Date:** 2026-11-06  
**Status:** Working baseline  
**Related:** Ratified Charter, NH-DEC-002, NH-AI-SEAT-MAPPING

---

## 1. Purpose

Define the end-to-end workflow that moves a story from advancement check to finished product, and the rule that stories are executed strictly in run order.

## 2. Run-Order Rule

- Stories are executed in **run order**.
- Run order is the sequence maintained in the runbook, ordered by **dependency and priority** (reuse value).
- A story **cannot begin** until every story it depends on is ✅ (hard advancement gate).
- Seat 0 does **not** select the next story. The runbook’s run order determines what is next.
- Seat 1 enforces the advancement gate before work begins.
- Priority is expressed by position in the runbook’s ready/build-order sequence.
- Any deviation from run order requires a signed Seat 0 decision record.

## 3. Story Workflow

| Stage | Lead seat | Supporting seats | Key action | Gate |
|-------|-----------|------------------|------------|------|
| **1. Advancement check** | Seat 1 | — | Confirm the next story in run order has all dependencies ✅. | Hard advancement gate |
| **2. Brief & plan** | Seat 1 | Seat 2 | Author/update the brief for the story that is next in run order. Add tactical notes if needed. | Brief ready |
| **3. Implementation** | Seat 3 | Seat 4 | Implement the story. Facilitate the session and keep work on track. | Implementation complete (branch ready) |
| **4. Independent validation** | Seat 5 | — | Author the Definition of Done and live validation steps from the raw change (builder does not author the check). | Validation package ready |
| **5. Live validation** | Seat 0 (human) | Seat 5 | Human runs the live check. Result is recorded. | Pass / Fail recorded |
| **6. Audit & compliance check** | Seat 6 | — | Review the change against controls, debt register, and integrity rules. | Audit acknowledgment |
| **7. Close-out** | Seat 0 | Seat 1 + Seat 6 | Record the result. Status flips to ✅ only after a recorded pass. High-level impact requires co-signature from Seat 1 and Seat 6. Write the warm handoff for the *next* story in run order. | Story ✅ |
| **8. Finished product** | — | — | Story is complete. Next story in run order is already briefed. | — |

## 4. Core rules

- One story at a time.
- Nothing is “done” without a recorded live validation.
- Builder (Seat 3) never authors or self-certifies the check.
- High-level changes still require dual control (Seat 0 initiation + Seat 1 and Seat 6 acknowledgment).
- Warm handoff is mandatory before the session ends.
- Work waits (fail closed) if Seat 0 is unavailable for a required decision.
- The runbook remains the single source of truth for status and run order.
- The project plan and runbook stay in sync on facts; they may order content differently.

## 5. Flow (summary)

```
Next story in run order
        ↓
Seat 1 confirms dependencies ✅
        ↓
Seat 1 authors brief (Seat 2 supports)
        ↓
Seat 3 implements (Seat 4 facilitates)
        ↓
Seat 5 authors independent validation
        ↓
Seat 0 (human) runs live check
        ↓
Seat 6 audit review
        ↓
Seat 0 + Seat 1 + Seat 6 close-out (if high-level)
        ↓
Story ✅ → next brief already waiting
```

---

*This document captures the agreed workflow and run-order rule. It may be formalized later as a decision record.*
