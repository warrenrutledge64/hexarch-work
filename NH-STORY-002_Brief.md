# Story Brief — NH-STORY-002
## First Template Stamp
**Date:** 2026-11-06  
**Status:** Ready for advancement check  
**Related:** NH-STORY-001 (closed), NH-TMPL-001, NH-DEC-007

---

## Story

**ID:** NH-STORY-002  
**Title:** Stamp the first project from the template skeleton  

**As** Seat 0  
**I want** a new project directory created by copying the `_template/` skeleton  
**So that** we prove the onboarding path works before any real project content is added.

## Acceptance criteria

- [ ] `_template/` skeleton exists with the minimum required files  
- [ ] A new `{project-id}` (e.g., `demo-project`) is created by copying the template  
- [ ] Placeholders in PROJECT_PLAN.md and RUNBOOK.md are replaced with demo values  
- [ ] Seat 0 is recorded as owner of the new project  
- [ ] Corresponding prefixes are noted for `hexarch-work` and `hexarch-audit` (even if only as placeholders)  
- [ ] Advancement gate, independent validation, live pass, and audit acknowledgment are followed  
- [ ] Status flips to ✅ only after the recorded pass  
- [ ] Warm handoff for NH-STORY-003 is written  

## Out of scope

- Real S3 buckets (simulate with local/GitHub folders for this story)  
- Custom dashboard  
- MFA  

## Definition of Done

A recorded live pass exists showing that a new project was successfully stamped from the template, and the runbook shows the story as ✅.

---

*Draft brief for NH-STORY-002.*
