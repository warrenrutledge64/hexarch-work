# HEXARCH (NAME PROVISIONAL)
## FORMAL PROJECT PLAN / CHARTER
### Version 0.1 — DRAFT

**Document ID:** NH-CHARTER-001  
**Date:** 2026-11-06  
**Status:** RATIFIED — Governing baseline (NH-DEC-001, 2026-11-06)  
**Author:** Seat 1 (Orchestrator & Governance)  
**Classification:** Governing baseline for the greenfield effort  

---

## 1. Project Purpose

Hexarch (name provisional) will be a tool for project managers. Project management work is handled in concert by a structured set of seats. Each seat is paired with a separate AI (such as Grok or Claude) specifically matched to exploit that model’s strengths for the seat’s function. Seat 0 is occupied by the human sovereign and a supporting AI.

- **Seat 0**: Human Sovereign Authority (Sovereign Apex & Final Decision-Maker) + supporting AI  
- **Seat 1**: Orchestration & Governance  
- **Seat 2**: Tactical Architecture  
- **Seat 3**: Implementation & Code Execution  
- **Seat 4**: Moderation & Session Facilitation  
- **Seat 5**: Independent Validation & Quality Assurance  
- **Seat 6**: Auditing & GRC (Governance, Risk, and Compliance)  

The system keeps the human decision-maker firmly in control while the seats and their matched AIs perform the supporting project management functions. It will be managed with clear plans and controls early on, then shift to faster, iterative delivery once the foundation is set.

## 2. Objectives

| ID | Objective |
|----|-----------|
| **NH-OBJ-1** | Deliver the system (currently called Hexarch) as a working project-management tool in which seats and their matched AIs operate in concert, with Seat 0 as the final authority. |
| **NH-OBJ-2** | Protect the human decision-maker’s attention while ensuring every significant action is verifiable and auditable. |
| **NH-OBJ-3** | Establish clear plans, baselines, and change control early, then transition to empirical, story-driven delivery after the design gate. |
| **NH-OBJ-4** | Maintain a clean identifier namespace so the new effort remains distinct from prior work. |
| **NH-OBJ-5** | Produce a system that can be offered as a product to other project managers. |
| **NH-OBJ-6** | Restrict write and update permissions on source-of-truth files (including the project plan and runbook) to explicitly authorized seats only; all other seats have read-only or no access. |
| **NH-OBJ-7** | Design and build the system from the beginning to scale to additional project managers and multiple concurrent projects. |

Seat 0 remains the sole final authority for any permission change or exception.

## 3. Scope

**In Scope**
- Requirements baseline consolidation
- Identity, storage, KMS, hashing, hash registry, workflow, audit, and seat model
- Integrity verification and seat boundaries
- Seat 0 console, communication, and decision model
- Scalable dashboard supporting multiple project managers and multiple concurrent projects
- Project governance, decision records, and standing rulings
- Identifier namespace (`NH-`)
- Hybrid execution model
- Seat-to-AI matching and the defined seat functions
- File-level permission controls on source-of-truth documents
- Multi-project and multi-project-manager scalability from the outset
- Commercial pricing model and customer onboarding path (supporting scale-up and scale-down)

**Out of Scope**
- Migration of existing production workloads
- Changes to the current (legacy) system
- Any auto-approval or bypass of Seat 0 gates

## 4. Governance and Authority

- The system is a service whose purpose is to enable project managers to improve performance, quality, and assurance (Product Owner value focus and ITIL service-delivery alignment).
- Seat 0 (human sovereign + supporting AI) is the final authority for all decisions, permission changes, and exceptions.
- All gates, change requests, standing rulings, and source-of-truth updates require a signed decision record.
- Decisions are one at a time (or deliberately bundled), and “Not now” is valid; work waits.
- No auto-approval on timeout.
- Write and update permissions on source-of-truth files (project plan, runbook, baselines, etc.) are restricted to explicitly authorized seats; all others are read-only or have no access. (Specific seat authorizations to be determined.)
- Console and dashboard actions that change state require step-up authentication.
- Seat messages are treated as untrusted.
- The hybrid model is governed: waterfall controls and baselines apply through the design gate; Scrum empiricism (transparency, inspection, adaptation) applies afterward, still under Seat 0 authority and the same integrity rules.
- Information-assurance principles (integrity, non-repudiation, least privilege, continuous verification) and ITIL change-enablement practices shape the control model.
- ITIL security management practices, aligned with the NIST 800-series and the NIST AI Risk Management Framework (AI RMF), will be applied to the design, operation, and continuous assurance of the service.
- ITIL service design and service transition practices will be applied where appropriate as the service is defined and introduced.

## 5. Execution Model

This project follows a formal waterfall structure from initiation through the design gate, then permits Scrum-style story-driven work. The model is adaptable; any change to phases, boundaries, or governing rules requires a Seat 0 decision record.

| Phase | Approach | Governing Rule |
|-------|----------|----------------|
| Initiation & Requirements | Waterfall | This plan + consolidated requirements baseline |
| High-level & Detailed Design (early) | Waterfall | Design gate; decision records required |
| Later Design & Execution / Build | Scrum stories permitted | Stories feed the change-request path; they do not bypass it. Integrity checks, hash registry, and verified-fetch remain mandatory. |
| Validation & Close | Waterfall | Final adjudication gate |

**Phase boundary:** The switch to story-driven work is explicit and occurs only after the design gate is passed by a signed decision record. The boundary itself may be adjusted by subsequent decision record.

ITIL service design and service transition practices will be applied during the relevant phases. Their exact placement and depth may be refined by decision record as the service definition matures.

## 6. High-level Deliverables and Milestones

| ID | Deliverable / Milestone | Target Phase |
|----|-------------------------|--------------|
| **NH-D-1** | Ratified Project Plan / Charter (this document) | Initiation |
| **NH-D-2** | Consolidated Requirements Baseline (namespaced) | Requirements |
| **NH-M-1** | Requirements Confirmation Gate | Requirements |
| **NH-D-3** | High-level Architecture & Design Package (including multi-project-manager and commercial onboarding design) | Design |
| **NH-M-2** | Design Gate | Design |
| **NH-D-4** | First end-to-end loop (notifications + AWS consoles) | Early Execution |
| **NH-D-5** | Scalable Seat 0 console and multi-project dashboard | Execution |
| **NH-D-6** | Commercial pricing model and customer onboarding path (supporting scale-up and scale-down) | Execution |
| **NH-M-3** | Build Gate | Execution |
| **NH-M-4** | Final Adjudication | Close |

Commercial and multi-project-manager readiness is included from the design phase onward so it is not deferred.

## 7. Success Criteria

| ID | Criterion |
|----|-----------|
| **NH-SC-1** | Seat 0 is the final authority; every significant decision exists as a signed decision record. |
| **NH-SC-2** | The human decision-maker’s attention is protected; the console/dashboard surfaces what changed, what needs action, and what is blocked. |
| **NH-SC-3** | Every significant action is verifiable and auditable; integrity failures are impossible to miss. |
| **NH-SC-4** | Write/update permissions on source-of-truth files are enforced as designed. |
| **NH-SC-5** | The system supports multiple project managers and multiple concurrent projects from the first usable release. |
| **NH-SC-6** | A commercial pricing model and onboarding path exist and have been validated at design-gate level. |
| **NH-SC-7** | The hybrid execution model operates as defined (or as adjusted by decision record), with integrity rules intact. |

## 8. Key Risks and Assumptions

| ID | Risk / Assumption | Mitigation / Note |
|----|-------------------|-------------------|
| **NH-R-1** | Seat 0 attention remains a bottleneck | Standing rulings, proactive dashboard, one-decision-at-a-time rule |
| **NH-R-2** | Scope creep after stories are introduced | Stories enter only via change request; design-gate exit criteria remain in force |
| **NH-R-3** | Identifier confusion with prior work | `NH-` namespace enforced at baseline |
| **NH-R-4** | Console or notification path becomes a manipulation vector | Untrusted rendering, step-up authentication, no approval via notification |
| **NH-R-5** | Multi-project-manager and commercial scale-up proves harder than expected | Design includes scalability from the start; validated at design gate |
| **NH-R-6** | Write-permission model on source-of-truth files is incomplete or too restrictive | Explicit authorization list to be decided by Seat 0; least-privilege default |
| **Assumption** | AWS remains the target platform | Confirmed by prior addenda |
| **Assumption** | Seat-to-AI matching can be achieved with available models | To be validated during design |

## 9. Identifier Namespace

Effective upon ratification of the consolidated requirements baseline, all new identifiers carry the project code **`NH-`** unless a different prefix is explicitly introduced and documented.

Examples: `NH-REQ-ID-1`, `NH-DE-1`, `NH-M-2`, `NH-Q-25`.

Legacy identifiers remain unchanged. Cross-references use the original form. The namespace may be adjusted by Seat 0 decision record if a different project code is later chosen.

New prefixes may be created either inside or outside the `NH-` namespace as the project progresses, provided each is documented with a clear definition in the same style as the existing prefix inventory.

## 10. Authorization

This Project Plan / Charter becomes the governing baseline for the effort (currently called Hexarch) upon Seat 0 signature as a decision record.

**Next formal action:** Seat 0 review and ratification (or directed revision) of this document.

All prior draft requirements, addenda, and prefix governance notes are incorporated by reference and will be consolidated under the applicable namespace upon baseline freeze.

## 11. Prefix Dictionary

New prefixes may be created either inside or outside the `NH-` namespace, provided each is documented with a clear definition in this dictionary.

### Base document prefixes
| Prefix | Meaning |
|--------|---------|
| P- | Problem the architecture must solve |
| GP- | Governing principle |
| O- | Option considered, with its disposition |
| REQ-ID | Requirement: identity and access |
| REQ-ST | Requirement: storage (S3 buckets) |
| REQ-KM | Requirement: KMS encryption and signing |
| REQ-CR | Requirement: change request and promotion |
| REQ-HA | Requirement: hashing |
| REQ-HR | Requirement: hash registry |
| REQ-WF | Requirement: workflow governance |
| REQ-AU | Requirement: audit and detection |
| REQ-SM | Requirement: seats, models and commercial model |
| Q- | Open question |
| F- | Fact checked during the discussion |
| I- | Immediate item, independent of platform choice |

### Addendum A prefixes
| Prefix | Meaning |
|--------|---------|
| BS- | Bootstrap model |
| NC- | "No chat window" implication |
| SP- | Starting point |

### Addendum B prefixes
| Prefix | Meaning |
|--------|---------|
| IV- | Integrity verification (verified read and submit) |
| SB- | Seat boundary |

### Addendum C prefixes
| Prefix | Meaning |
|--------|---------|
| DP- | Design principle |
| CH- | Challenge Seat 0 faces |
| CV- | Console visibility |
| CM- | Communication between seats and Seat 0 |
| DE- | Decision |
| CS- | Console security |
| BA- | Build approach |

### Charter / Plan prefixes
| Prefix | Meaning |
|--------|---------|
| OBJ- | Objective |
| D- | Deliverable |
| SC- | Success criterion |
| R- | Risk |
| M- | Milestone. In this plan, milestones are formal phase gates or decision points (e.g., NH-M-1 Requirements Confirmation Gate, NH-M-2 Design Gate, NH-M-3 Build Gate, NH-M-4 Final Adjudication). Distinct from legacy Hexarch runbook steps M-1 to M-10. |
| DEC- | Formal Seat 0 decision |

### Current project namespace
| Prefix | Meaning |
|--------|---------|
| NH- | New Hexarch (provisional project code). Applied to all new identifiers unless a different prefix is explicitly introduced and documented. |

---

*End of Formal Project Plan / Charter v0.1 (locked draft)*
