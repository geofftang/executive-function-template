---
decision: "FBA for failure modes over self-report"
status: active
date: 2026-02-14
---

**Applies to:** [[SETUP-GUIDE#Q5: Patterns — When Things Stall (Failure Modes)]] | [[RULES-TEMPLATE#Interventions]]

**Problem:** Understanding why users stall is critical for selecting intervention patterns (Wall of Awful, guilt spiral, overwhelm freeze, etc.). Self-report ("what's your biggest productivity blocker?") produces labels ("procrastination," "lack of motivation") that don't point to actionable interventions. Two users who both say "I procrastinate" may need completely different support — one avoids due to shame, the other due to sensory overload.

**Decision:** Use Functional Behavior Analysis (FBA) for each failure mode: antecedent (trigger), behavior (what they actually do), consequence (how it resolves), function hypothesis (what need the behavior serves — escape, avoidance, control, sensory regulation, or attention). This produces intervention targets: if the function is escape, the intervention is reducing task aversiveness; if it's control, the intervention is offering structured choice. Function hypotheses are explicitly marked as "working hypotheses" to be refined through system use.

**Rejected:** Self-report labels. Users describing their patterns in their own words is valuable for rapport (and is still part of Q5 via the pattern recognition list), but labels alone don't generate intervention logic. Also rejected: full clinical FBA with direct observation — impractical in a single interview; the LLM infers function from the user's description.

**Evidence:** FBA is the standard behavioral assessment method in applied behavior analysis. Adapted here for self-reported data rather than direct observation. Codex review feedback specifically recommended marking function hypotheses as "working" rather than definitive — accepted because the interview provides limited data points for function determination.

**Context:** The system installs specific intervention patterns in RULES.md (Section 6) based on failure mode analysis. Without behavioral function data, intervention selection would be arbitrary. The FBA structure also feeds into the longitudinal pattern matching backlog item, where weekly review data can refine the initial hypotheses.
