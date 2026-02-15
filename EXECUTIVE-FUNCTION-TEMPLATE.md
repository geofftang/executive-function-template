---
type: project
status: active
priority: high
pillar: livelihood
context: "Template for onboarding new users to the EF system. LLM-agnostic interview + config generation."
created: 2026-02-14
---

# Executive Function Template

**Overarching Goal:** Ship a template that any LLM can use to onboard a new user — interview them, build a personalized system, and hand it off ready to use.

## Current State
- v2 interview protocol is live (SFBT + MI + clinical formulation model)
- LLM-agnostic shim architecture works (RULES.md + CLAUDE.md/GEMINI.md/AGENTS.md)
- Tested with Claude, Gemini CLI, Codex CLI — all follow the chain
- Phase 2 (config generation) and Phase 4 (update protocol) carried forward from v1
- Profile-based skill adaptations added to Step 6 (basic level — tool gaps + failure mode calibration)

## Roadmap
1. ~~Stage 1: LLM-agnostic architecture (shims + RULES.md)~~
2. ~~Stage 2: Interview protocol redesign (SFBT/MI/formulation model)~~
3. ~~Stage 3: Cross-LLM review and fixes~~
4. Stage 4: First real user onboarding (test the full flow end-to-end)
5. Stage 5: Adaptive skill templates — skills vary by archetype/support-level ([[tasks/adaptive-skill-templates]])
6. Stage 6: Longitudinal pattern matching — weekly review uses archive data to predict risk ([[tasks/longitudinal-patterns]])

## Focus
- [x] LLM-agnostic shims + RULES.md centralization
- [x] SETUP-GUIDE v2 interview redesign
- [x] Cross-LLM testing and review (Claude, Gemini, Codex)
- [x] Apply review feedback (8 accepted fixes)

## Backlog

> [!backlog]
> - Adaptive skill templates: skills should adapt to archetype/support-level, not just swap placeholder names. Requires real user feedback from different archetypes before building. ([[tasks/adaptive-skill-templates]])
> - Longitudinal pattern matching: weekly review should use 4+ weeks of archive data to predict next week's risks and map observed patterns to known failure modes. ([[tasks/longitudinal-patterns]])
> - Important-TO surfacing: morning planning and weekly review should proactively surface Important-TO items for threat-responsive and career-focused users.
> - Failure-mode loop closure: weekly review should connect drift/avoidance data to the user's specific failure modes from their profile and suggest the intervention that matches.
> - Privacy/consent framing: consider whether Q5 privacy note is sufficient or needs expansion for cloud-based LLM users.
> - Test with a real non-ADHD user to validate value-neutrality claims.

## Design Decisions
- SFBT + MI over pure CBT for interview: future-focused framing avoids deficit narrative for neurodivergent users. SFBT "good day" question captures aspirations without requiring problem identification first. MI scaling ("why not lower?") elicits change talk without confrontation. (Clinical lit review + Gemini/Codex cross-validation)
- Clinical formulation model (8-section YAML) over checklist: captures interaction between conditions, not just symptoms. Enables LLM to generate contextual interventions. (Codex flagged complexity concern — retained because GPT-5.3/Claude/Gemini all handle structured YAML)
- FBA for failure modes over self-report: antecedent→behavior→consequence→function pattern produces actionable intervention targets, not just labels. Function hypothesis marked as "working hypothesis" per Codex feedback.
- One-time skill adaptation at setup, not runtime profile re-read: profile rarely changes, reduces per-invocation complexity. Deeper adaptation deferred until real user data exists.
- Archetype labels value-neutral: "career-focused" not "workaholic", "experience-focused" not "present-oriented". Internal LLM labels still affect formulation. (Codex review)
- LLM-agnostic via shim chain: RULES.md holds all logic, CLAUDE.md/GEMINI.md/AGENTS.md are one-line redirects. Tested with Claude, Gemini CLI, Codex CLI.

## Done

> [!done]
> - 2026-02-14: Created RULES.md + shims (CLAUDE.md, GEMINI.md, AGENTS.md)
> - 2026-02-14: Created RULES-TEMPLATE.md, moved CLAUDE-TEMPLATE.md to trash
> - 2026-02-14: Updated all SETUP-GUIDE references for LLM-agnostic architecture
> - 2026-02-14: Created @help skill, added proactive skill suggestion rule
> - 2026-02-15: SETUP-GUIDE v2 interview protocol (SFBT/MI/formulation model)
> - 2026-02-15: Cross-LLM review (Gemini + Codex critiques)
> - 2026-02-15: Applied 8 fixes from review + 5 gap fills
> - 2026-02-15: Promoted v2 to official SETUP-GUIDE.md
> - 2026-02-15: Added profile-based skill adaptations to Step 6
