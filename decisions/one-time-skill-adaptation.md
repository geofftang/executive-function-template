---
decision: "One-time skill adaptation at setup, not runtime profile re-read"
status: active
date: 2026-02-14
---

**Applies to:** [[SETUP-GUIDE#Step 6: Install skills]] | [[RULES-TEMPLATE]]

**Problem:** Skills (morning-planning, weekly-review, etc.) need to adapt to user profiles — e.g., a guilt-spiral user needs "missed days aren't failures" framing in weekly review, a career-focused user needs balance flags. The question is when this adaptation happens: at setup (bake it into the skill files) or at runtime (skill reads USER-PROFILE.md each invocation and adjusts dynamically).

**Decision:** Adapt skills once during setup (Phase 2, Step 6). The formulation model drives specific edits to skill files in the output directory: adding framing text, removing irrelevant sections, adjusting scope. Skills in the user's system are pre-calibrated and don't re-read the profile at runtime.

**Rejected:** Runtime profile re-read. Would add per-invocation complexity (each skill reads and parses USER-PROFILE.md, then conditionally adjusts behavior). The profile rarely changes after setup — conditions, failure modes, and communication style are stable traits. Runtime adaptation also increases token cost and introduces inconsistency risk (LLM might interpret the profile differently across sessions).

**Evidence:** Design judgment based on the stability of the underlying data. User profiles change on a quarterly timescale at most; skills run daily. Deeper runtime adaptation (skills that evolve with the user) is deferred to the adaptive-skill-templates backlog item, which requires real user data from different archetypes before building.

**Context:** This is a pragmatic scope decision for v2. The template needs to ship and be tested with real users. One-time adaptation is "good enough" for launch. The adaptive-skill-templates task (Stage 5 on the roadmap) will revisit this if user feedback shows the static calibration is insufficient.
