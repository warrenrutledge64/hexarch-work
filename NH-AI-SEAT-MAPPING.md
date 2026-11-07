# NH-AI-SEAT-MAPPING
## Finalized 7-Seat Committee — Model Assignment
**Date:** 2026-11-06  
**Status:** Locked  
**Related:** NH-DEC-009, NH-RUNBOOK.md

---

## Source
This catalog list provides a verified look at what is active on the serverless Bedrock endpoint. With this list, the entire 7-seat committee matrix is finalized, ensuring 100% vendor diversity (no overlapping providers) and keeping costs in the $0.10 to $0.25 target for nearly the entire processing chain.

For Seat 6 (Auditing & GRC), the catalog provides two strong candidates from independent providers: AI21 Labs (Jamba 1.5 Mini) and MiniMax (MiniMax M2/M2.1). Jamba 1.5 Mini is the optimal choice. Auditing & GRC requires reviewing large volumes of audit logs, compliance files, and full multi-agent discussion transcripts. Jamba's hybrid SSM architecture handles massive context windows at low cost (~$0.15–$0.20 per 1M input tokens) without overlapping other seat selections.

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

## Key Architectural Strengths

- **Complete Redundancy Protection:** Seven entirely separate corporate entities (Google, Anthropic, OpenAI, Qwen, Mistral AI, Meta, and AI21 Labs). An outage or API restriction at one company will never crash the entire governance loop.
- **Massive Budget Efficiency:** By avoiding heavy frontier models (like Nova 2 Pro, Mistral Large, or Grok 4.7) for downstream programmatic tasks, the system core can process millions of continuous token updates for pennies.
- **Role Specialization:** Every model fits its assigned behavioral profile — OpenAI manages deep design logic, Qwen crafts raw code templates, and independent smaller variants handle fast validation, moderation, and auditing.

---

## Architectural Filters

This lineage solves the infrastructure dilemma of building a highly dependable, zero-redundancy multi-agent system that runs at scale without ballooning API costs.

Every model was mapped against three non-negotiable filters:
1. **Strict vendor diversity**
2. **Task-to-model specialization**
3. **Aggressive $0.10–$0.25 cost ceiling**

---

## 1. Zero Overlap Risk (The Anti-Fragility Filter)

If an architecture uses the same provider for multiple seats, a single localized API outage, rate-limit constriction, or corporate policy change will completely freeze the business pipeline.

By enforcing a strict rule of 7 completely unique corporate backends (Google, Anthropic, OpenAI, Qwen, Mistral, Meta, and AI21 Labs), the committee is mathematically insulated from a single point of technical failure.

---

## 2. Deep Specialization by Seat (Task-to-Model Fit)

### Seat 1: Claude Haiku 5.5 (Anthropic) — The Traffic Cop
- **Why:** Orchestration requires lightning-fast advancement checks, loop evaluations, and path routing. Haiku 5.5 handles massive context histories and performs rapid-fire structural tasks instantly.
- **Cost Match:** Exactly hits the $0.10 per 1M input tokens target, ensuring the heavy loop overhead of an orchestrator does not inflate the bill.

### Seat 2: GPT-5.6 Luna (OpenAI) — The System Architect
- **Why:** Designing systems and evaluating deep engineering trade-offs requires advanced structural reasoning. Luna features integrated reasoning cycles that evaluate edge cases before outputting a plan, preventing superficial architectural drift.
- **Cost Match:** At $0.20 per 1M input tokens, it gives next-generation deep-thinking intelligence at a fraction of standard legacy flagship pricing.

### Seat 3: Qwen3-Coder-30B (Qwen/Alibaba) — The Dedicated Builder
- **Why:** General-purpose AI models are often mediocre code generators. This model is pre-trained exclusively on software development, multi-language repository building, and infrastructure templates. It writes pristine code because that is its sole function.
- **Cost Match:** Avoids expensive frontier coding models, costing roughly $0.25 per 1M input tokens.

### Seat 4: Ministral 3B (Mistral AI) — The Discussion Facilitator
- **Why:** A moderator needs to read conversational transcripts, keep other models from drifting off-topic, and track agenda milestones. It needs speed and cheap multi-turn chat fluidness, not massive engineering logic.
- **Cost Match:** At exactly $0.10 per 1M input tokens, it tracks thousands of chat lines for pennies.

### Seat 5: Llama 4 Scout 17B (Meta) — The Strict Inspector
- **Why:** Validation requires a model to cross-examine what the developer built (Seat 3) against what the architect designed (Seat 2). Llama 4 Scout is fine-tuned for high-precision instruction following and strict verification parsing.
- **Cost Match:** Hovers around $0.12 per 1M input tokens, keeping validation overhead nominal.

### Seat 6: Jamba 1.5 Mini (AI21 Labs) — The Risk Auditor
- **Why:** Compliance and GRC require an engine that can swallow an entire corporate security policy manual, regulatory rulebooks, and the entire historical log of the committee's debate without running out of memory. Jamba's hybrid SSM architecture excels at digesting massive context blocks efficiently.
- **Cost Match:** Keeps complex audit ingestion cheap at roughly $0.15–$0.20 per 1M input tokens.

---

## Economic Architecture Summary

By decoupling the framework this way, heavy-hitting reasoning brains are isolated only to the seats that need them (Architecture). The rest of the systemic tissue is supported by ultra-fast, high-throughput utility engines running at the $0.10 financial marker.

---

*Locked 2026-11-06. See also NH-DEC-009.*
