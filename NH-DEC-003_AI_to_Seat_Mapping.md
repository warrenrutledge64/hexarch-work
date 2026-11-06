# NH-DEC-003 — AI-to-Seat Mapping
## Decision Record
**Date:** 2026-11-06  
**Status:** Decided  
**Related:** Ratified Charter, NH-AI-SEAT-MAPPING.md

---

## Decision

Adopt the fully diversified AI-to-seat mapping below as the working assignment for Hexarch.

| Seat | Function | Model | Provider |
|------|----------|-------|----------|
| **0** | Human Sovereign + supporting AI | Gemini | Google |
| **1** | Orchestration & Governance | Claude 3.5 Sonnet | Anthropic |
| **2** | Tactical Architecture | Amazon Nova Pro | Amazon |
| **3** | Implementation & Code Execution | Mistral Large | Mistral |
| **4** | Moderation & Session Facilitation | Cohere Command R+ | Cohere |
| **5** | Independent Validation & QA | AI21 Jamba 1.5 Large | AI21 |
| **6** | Auditing & GRC | Meta Llama 3.1 70B | Meta |

## Principles

- No provider is used more than once.
- Seats 1–6 use models available on Amazon Bedrock.
- Selection balances functionality with mid-to-low cost where possible.
- Seat 5 and Seat 6 are intentionally different from the governance and implementation models to support independent challenge and audit.

## Rationale

Supplier diversification reduces availability, behavioral, and commercial risk. Each model is matched to seat function while remaining within the Bedrock cost/performance envelope for Seats 1–6. Seat 0 remains on Gemini so the human’s supporting AI is independent of the working seats.

**Seat 0 choice:** Adopt  
**Date:** 2026-11-06

---

*Recorded as NH-DEC-003.*
