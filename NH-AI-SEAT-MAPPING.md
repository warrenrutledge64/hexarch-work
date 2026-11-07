# NH-AI-SEAT-MAPPING
## Finalized 7-Seat Committee — Model Assignment
**Date:** 2026-11-06  
**Status:** Locked  
**Related:** NH-DEC-009, NH-RUNBOOK.md

---

## Finalized Committee

| Seat | Functional Committee Role | Model Name | Version | Provider (Vendor) | Target Input Cost (per 1M) |
|------|---------------------------|------------|---------|-------------------|----------------------------|
| 0 | Human Sovereign (Final Approver) | Gemini Sovereign | N/A | Google | Varies |
| 1 | Orchestration & Governance | Claude Haiku 5.5 | v1 | Anthropic | $0.10 |
| 2 | Tactical Architecture | GPT-5.6 Luna | v1 | OpenAI | $0.20 |
| 3 | Implementation | Qwen3-Coder-30B-A3B-Instruct | 1 | Qwen | ~$0.25 |
| 4 | Moderation | Ministral 3B | v1 | Mistral AI | $0.10 |
| 5 | Independent Validation | Llama 4 Scout 17B Instruct | v1.0 | Meta | ~$0.12 |
| 6 | Auditing & GRC | Jamba 1.5 Mini | v1 | AI21 Labs | ~$0.15–$0.20 |

---

## Architectural Filters Applied

Every model was selected against three non-negotiable filters:
1. **Strict vendor diversity** — no overlapping providers.
2. **Task-to-model specialization** — model strengths match seat function.
3. **Aggressive $0.10–$0.25 cost ceiling** — for nearly the entire processing chain.

---

## Key Architectural Strengths

- **Complete Redundancy Protection:** Seven entirely separate corporate entities (Google, Anthropic, OpenAI, Qwen, Mistral AI, Meta, and AI21 Labs). An outage or API restriction at one company will never crash the entire governance loop.
- **Massive Budget Efficiency:** By avoiding heavy frontier models for downstream programmatic tasks, the system core can process millions of continuous token updates for pennies.
- **Role Specialization:** Every model fits its assigned behavioral profile.

---

## Engineering Rationale by Seat

### Seat 1: Claude Haiku 5.5 (Anthropic) — The Traffic Cop
- **Why:** Orchestration requires lightning-fast advancement checks, loop evaluations, and path routing. Haiku 5.5 handles massive context histories and performs rapid-fire structural tasks instantly.
- **Cost Match:** Exactly hits the $0.10 per 1M input tokens target.

### Seat 2: GPT-5.6 Luna (OpenAI) — The System Architect
- **Why:** Designing systems and evaluating deep engineering trade-offs requires advanced structural reasoning. Luna features integrated reasoning cycles that evaluate edge cases before outputting a plan.
- **Cost Match:** $0.20 per 1M input tokens.

### Seat 3: Qwen3-Coder-30B (Qwen) — The Dedicated Builder
- **Why:** Pre-trained exclusively on software development, multi-language repository building, and infrastructure templates. Writes code because that is its sole function.
- **Cost Match:** ~$0.25 per 1M input tokens.

### Seat 4: Ministral 3B (Mistral AI) — The Discussion Facilitator
- **Why:** A moderator needs to read conversational transcripts, keep other models from drifting off-topic, and track agenda milestones. Needs speed and cheap multi-turn chat fluidness.
- **Cost Match:** Exactly $0.10 per 1M input tokens.

### Seat 5: Llama 4 Scout 17B (Meta) — The Strict Inspector
- **Why:** Validation requires cross-examining what the developer built against what the architect designed. Llama 4 Scout is fine-tuned for high-precision instruction following and strict verification parsing.
- **Cost Match:** ~$0.12 per 1M input tokens.

### Seat 6: Jamba 1.5 Mini (AI21 Labs) — The Risk Auditor
- **Why:** Compliance and GRC require an engine that can swallow entire policy manuals, regulatory rulebooks, and the full historical log of the committee's debate. Jamba's hybrid SSM architecture excels at digesting massive context blocks efficiently.
- **Cost Match:** ~$0.15–$0.20 per 1M input tokens.

---

## Economic Architecture Summary

Heavy-hitting reasoning is isolated to the seats that need it (Architecture). The rest of the systemic tissue is supported by ultra-fast, high-throughput utility engines running at the $0.10 financial marker.

---

*Locked 2026-11-06. See also NH-DEC-009.*
