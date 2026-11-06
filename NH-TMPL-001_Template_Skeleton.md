# NH-TMPL-001 — Minimum Contents of the `_template/` Skeleton
## Hexarch Working Document
**Date:** 2026-11-06  
**Status:** Working baseline  
**Related:** NH-DEC-002 (storage structure)

---

## 1. Purpose

Define the minimum set of objects that must exist in `s3://hexarch-projects/_template/` so a new project can be stamped with a consistent, ready-to-use skeleton.

## 2. Minimum skeleton

```
_template/
├── governance/
│   ├── PROJECT_PLAN.md          ← stub with required sections
│   ├── RUNBOOK.md               ← stub with status table and advancement-gate language
│   ├── METHODOLOGY.md           ← pointer or short copy of the operating rules
│   ├── BOM.md                   ← empty inventory table
│   └── RESTORE.md               ← restore-point procedure stub
├── docs/
│   ├── SESSION_BRIEF_TEMPLATE.md
│   ├── SESSION_PROMPT_TEMPLATE.md
│   ├── VALIDATOR_BRIEF_TEMPLATE.md
│   └── session-briefs/
│       └── .gitkeep
├── work/
│   └── .gitkeep
└── README.md                    ← explains the skeleton and points to governance/
```

## 3. Required content rules

- Every stub must contain the section headings used in the ratified charter and NH-WF-001 so new projects start aligned.
- `RUNBOOK.md` stub must include the hard advancement-gate statement and a status legend.
- `PROJECT_PLAN.md` stub must include placeholders for purpose, non-negotiable constraints, phases, and registered decisions.
- Templates under `docs/` must be lean (load-bearing instruction only) per the existing methodology.
- No project-specific content; only structure and instructional stubs.

## 4. Stamping behavior

When a new `{project-id}` is created:
1. Copy the entire `_template/` tree to `hexarch-projects/{project-id}/`.
2. Seat 1 (or the onboarding process) replaces placeholders with project-specific values.
3. The new project’s Seat 0 is recorded as the owner.

---

*This is the minimum viable skeleton. Additional files may be added later by change request.*
