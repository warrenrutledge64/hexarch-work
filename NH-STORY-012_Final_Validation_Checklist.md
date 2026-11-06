# Final Validation Gate Checklist — NH-D-9
**Date:** 2026-11-06  
**Status:** Ready for final gate  
**Traceability:** Each item links to a prior story or deliverable

---

## Controls to validate end-to-end on real AWS

| # | Control | Traceable to | Status |
|---|---------|--------------|--------|
| 1 | Workflow advancement gate | NH-STORY-001 | Proven |
| 2 | Dual control on high-level changes | Design package | Design ready |
| 3 | Digital signature (identity-bound confirmation) | NH-STORY-003 | Proven |
| 4 | Project isolation (prefix-level IAM) | NH-STORY-008 | Template ready |
| 5 | Integrity (hashing + verified-fetch) | NH-STORY-011 | Design ready |
| 6 | Console (“since you were away” + drill-down) | NH-STORY-009 | Proven |
| 7 | Notifications | NH-STORY-010 | Proven (example) |
| 8 | Runbook as single source of truth | All stories | Proven |
| 9 | Seat 0 attention protection (NH-GP-1) | All stories | Proven |

## Final gate criteria
- [ ] All items above pass on real AWS infrastructure  
- [ ] No open dual-control items  
- [ ] Seat 0 records final Pass with digital signature  

---

*Checklist complete. Input to final validation gate.*
