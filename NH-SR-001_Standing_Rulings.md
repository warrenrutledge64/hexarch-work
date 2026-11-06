# NH-SR-001 — Standing Rulings
## Hexarch Working Document
**Date:** 2026-11-06  
**Status:** Working baseline  
**Related:** NH-DEC-002, NH-WF-001

---

## 1. Purpose

List the classes of update that are pre-authorized by standing ruling so they do not require a fresh Seat 0 decision record each time.

## 2. Standing rulings (initial set)

| ID | Ruling | Who may act | Scope | Notes |
|----|--------|-------------|-------|-------|
| **SR-1** | Routine runbook status updates | Seat 0 or Seat 1 | Status flips (⬜ → 🟡 → ✅), validation-result lines, lessons-learned notes | Must still follow the advancement gate and recorded-pass rule |
| **SR-2** | Warm-handoff creation | Seat 1 | Authoring the next story’s brief and prompt while context is fresh | Does not change baselines or authority |
| **SR-3** | Append to audit store | Seat 6 | Adding decision records, validation evidence, or compliance notes to `hexarch-audit/` | Append-oriented; no deletion |
| **SR-4** | Temporary work-file creation | Any seat | Writing drafts or scratch files under `hexarch-work/{project-id}/` | Perishable; subject to lifecycle expiration |
| **SR-5** | Read access to source-of-truth | All seats | Reading `governance/` objects | Verified-fetch and integrity checks still apply |

## 3. What still requires a fresh Seat 0 decision

- Changes to project scope, authority, or seat permissions
- Changes to standing rulings themselves
- Deviation from run order
- Ratification of high-level baselines
- Any action that alters source-of-truth content outside the standing rulings above

## 4. Rules

- Standing rulings may be added, amended, or revoked only by a Seat 0 decision record (with dual-control acknowledgment from Seat 1 and Seat 6).
- Every use of a standing ruling is logged.
- If Seat 0 is unavailable, work that requires a fresh decision waits (fail closed).

---

*Initial set. Additional standing rulings may be proposed as the system is exercised.*
