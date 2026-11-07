# Decision Record — NH-DEC-009
## Finalized Seat-to-Model Assignment
**Date:** 2026-11-06  
**Status:** Locked  
**Related:** NH-RUNBOOK.md

---

## Decision
The 7-seat committee uses the following models with 100% vendor diversity.

| Seat | Role | Model | Version | Provider | Target Input Cost (per 1M) |
|------|------|-------|---------|----------|----------------------------|
| 0 | Human Sovereign | Gemini Sovereign | N/A | Google | Varies |
| 1 | Orchestration & Governance | Claude Haiku 5.5 | v1 | Anthropic | $0.10 |
| 2 | Tactical Architecture | GPT-5.6 Luna | v1 | OpenAI | $0.20 |
| 3 | Implementation | Qwen3-Coder-30B-A3B-Instruct | 1 | Qwen | ~$0.25 |
| 4 | Moderation | Ministral 3B | v1 | Mistral AI | $0.10 |
| 5 | Independent Validation | Llama 4 Scout 17B Instruct | v1.0 | Meta | ~$0.12 |
| 6 | Auditing & GRC | Jamba 1.5 Mini | v1 | AI21 Labs | ~$0.15–$0.20 |

## Rationale
- Complete vendor diversity (no overlapping providers).
- Cost-optimized for the target range ($0.10–$0.25 per 1M input tokens for most seats).
- Role specialization matched to model strengths.
- Outage or restriction at one provider cannot halt the governance loop.

## Seat functions
| Seat | Function |
|------|----------|
| 0 | Final decisions. Approves or rejects. Owns the system. |
| 1 | Controls workflow. Performs advancement checks. Keeps the process moving. |
| 2 | Designs solutions. Makes technical trade-offs. |
| 3 | Builds. Produces code, templates, and artifacts. |
| 4 | Facilitates sessions. Keeps discussion on track. |
| 5 | Authors validation packages. Checks that work meets the brief. |
| 6 | Acknowledges audit. Ensures governance, risk, and compliance. |

---

*Locked 2026-11-06.*
