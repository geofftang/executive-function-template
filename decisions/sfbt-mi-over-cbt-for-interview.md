---
decision: "SFBT + MI over pure CBT for interview"
status: active
date: 2026-02-14
---

**Applies to:** [[SETUP-GUIDE#Phase 1: Discovery Interview]] | [[RULES-TEMPLATE#Interaction Principles]]

**Problem:** The onboarding interview needs a therapeutic framework to gather meaningful data about user patterns, aspirations, and failure modes. Pure CBT frames everything as problems to fix — identifying cognitive distortions, challenging negative thoughts. For neurodivergent users, this creates a deficit narrative ("what's wrong with you?") that erodes trust and reduces engagement at the moment it matters most.

**Decision:** Use Solution-Focused Brief Therapy (SFBT) and Motivational Interviewing (MI) as the interview backbone. SFBT's "miracle question" / "good day" framing captures aspirations without requiring vulnerability or problem identification first. MI's scaling technique ("why not lower?") elicits change talk — reasons things matter — without confrontation. Together they produce richer data (aspirations, values, motivation) than deficit-focused questioning, while building rapport.

**Rejected:** Pure CBT interview. Would produce useful pattern data but at the cost of first-impression trust. Users who feel assessed rather than understood are less likely to engage with the system long-term. CBT techniques are still used downstream (failure mode analysis in Q5) once rapport is established.

**Evidence:** Clinical literature on SFBT effectiveness with neurodivergent populations (future-focused framing reduces shame). MI research on "why not lower?" vs "why not higher?" (sustain talk vs change talk). Cross-validated by Gemini and Codex CLI reviews during v2 development — both independently confirmed the framing produced better interview flow than the v1 CBT-style approach.

**Context:** The v1 interview was a structured questionnaire that felt like an assessment. Users with ADHD, OCD, or anxiety reported (or would predictably report) discomfort with "what's broken?" framing. The v2 redesign needed to gather the same 19 data points while feeling like a conversation, not an intake form.
