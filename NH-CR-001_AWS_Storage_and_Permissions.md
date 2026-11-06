# NH-CR-001 — AWS Storage Structure, Classification, and Seat Permissions
## Change Request against Ratified Project Plan / Charter v0.1
**Date:** 2026-11-06  
**Status:** ADOPTED — NH-DEC-002 (2026-11-06)  
**Related:** NH-DEC-001 (ratification of charter)

---

## 1. Summary

Define the single-S3-bucket storage model, directory structure, file classification, and seat permission rules for Hexarch. The design supports long-term scale (many projects and project managers) while preserving Seat 0 final authority and dual-control oversight.

## 2. S3 Structure

**Buckets:**

| Bucket | Purpose |
|--------|---------|
| `hexarch-projects` | Durable project content (source-of-truth, docs, audit) — single bucket, prefix per project |
| `hexarch-work` | Perishable / temporary work product (drafts, session scratch, uncommitted changes) |
| `hexarch-audit` | Seat 6 dedicated audit store (decision records, evidence, compliance artifacts) — optional but recommended for separation |

```
s3://hexarch-projects/
├── _template/                  ← starter skeleton (SDD-repo-kit equivalent)
│   └── (governance/, docs/, etc. baseline objects)
└── {project-id}/
    ├── governance/             ← source-of-truth
    │   ├── PROJECT_PLAN.md
    │   ├── RUNBOOK.md
    │   ├── METHODOLOGY.md
    │   ├── BOM.md
    │   ├── RESTORE.md
    │   └── ...
    ├── docs/                   ← templates, session-briefs, evidence
    └── audit/                  ← pointer or copy of key audit items (optional)

s3://hexarch-work/
└── {project-id}/
    └── (temporary / perishable files — lifecycle expiration recommended)

s3://hexarch-audit/
└── {project-id}/
    └── (Seat 6 controlled: decision records, validation evidence, compliance artifacts)
```

- Isolation by prefix (`{project-id}/`) inside each bucket.
- Cross-project write denied by default.
- Template used to stamp a new `{project-id}/` skeleton on project onboarding.
- `hexarch-work` is perishable (lifecycle policy to expire objects).
- `hexarch-audit` gives Seat 6 a dedicated, more tightly controlled store.

## 3. File Classification

| Classification | Paths | Description |
|----------------|-------|-------------|
| **Source-of-truth** | `hexarch-projects/{project-id}/governance/` | Project plan, runbook, methodology, baselines, registered decisions |
| **Temporary / perishable** | `hexarch-work/{project-id}/` | Drafts, seat working files, uncommitted changes (lifecycle expiration) |
| **Docs / evidence** | `hexarch-projects/{project-id}/docs/` | Templates, session-briefs, validation evidence |
| **Audit** | `hexarch-audit/{project-id}/` | Signed decision records, restore manifests, compliance artifacts (Seat 6 primary) |
| **Template** | `hexarch-projects/_template/` | Read-only starter skeleton |

## 4. Seat Permission Matrix

| Seat | governance/ (source-of-truth) | work/ (perishable) | docs/ | audit/ (Seat 6 store) | Cross-project |
|------|-------------------------------|--------------------|-------|------------------------|---------------|
| **Seat 0** (Project Manager / Human Sovereign) | Write (initiator of high-level changes) | Write | Write | Write | None |
| **Seat 1** (Orchestration & Governance) | Write (routine) + co-sign high-level | Write | Write | Read | None |
| **Seat 2** (Tactical Architecture) | Read | Write | Write | Read | None |
| **Seat 3** (Implementation & Code) | Read | Write | Write | Read | None |
| **Seat 4** (Moderation) | Read | Write | Write | Read | None |
| **Seat 5** (Independent Validation) | Read | Write | Write | Read | None |
| **Seat 6** (Audit & GRC) | Read + co-sign high-level | Read | Read | Write (append) | Read (audit paths) |

### High-level change rule (dual control)
- High-level / baseline changes (project plan, scope, authority, permissions, standing rulings) may be initiated by Seat 0.
- They become ratified only after acknowledgment or co-signature from **both** Seat 1 **and** Seat 6.
- Until both acknowledgments are recorded, the change remains pending and visible on the console.

### Routine updates
- Routine ledger updates (status flips, lessons learned, minor runbook notes) may be performed by Seat 0 or Seat 1 under a standing ruling.
- All such updates are logged and visible to Seat 6.

### General rules
- All other seats are read-only on `governance/`.
- Every write to source-of-truth or audit paths is logged.
- No auto-approval; work waits if required oversight is not given.
- Seat messages remain untrusted; verified-fetch and integrity checks apply to all reads of source-of-truth objects.

## 5. Rationale

- Single projects bucket + prefix avoids unmanageable bucket sprawl at scale.
- Separate perishable bucket (`hexarch-work`) allows lifecycle expiration of temporary files.
- Dedicated audit bucket (`hexarch-audit`) gives Seat 6 a clearer control boundary.
- Dual control (Seat 0 + Seat 1 + Seat 6) on high-level changes prevents any single seat, including Seat 0, from altering baselines unchecked.
- Routine path keeps day-to-day ledger maintenance functional.
- Aligns with the operating model already proven in `pde-platform` and `ZTIE-Issues` (plan/runbook as source of truth, independent oversight, declared debt, Seat 0 final authority).

## 6. Decision requested

**NH-DEC-002** (proposed)

**Question:** Adopt the single-bucket prefix structure, classification, and seat permission matrix defined in NH-CR-001 as the working storage and access model for Hexarch?

**Options:**
1. **Adopt as-is** (recommended)
2. Adopt with modifications (specify)
3. Defer

**Seat 0 choice:** Adopt as-is  

**Date:** 2026-11-06  

**Recorded as:** NH-DEC-002

---

*End of NH-CR-001*
