---
decision: "Archetype labels value-neutral"
status: active
date: 2026-02-14
---

**Applies to:** [[SETUP-GUIDE#Update Rules]] | [[SETUP-GUIDE#Q2: What Gets Attention vs. What Slides (Balance Detection)]]

**Problem:** The segmentation model classifies users into archetypes (threat-responsive, career-focused, experience-focused, functional-but-disorganized, overwhelmed) to guide interview depth, area derivation, and skill calibration. Labels that carry implicit judgment — "workaholic," "present-oriented," "chaotic" — would undermine the neutral, non-deficit framing that SFBT/MI provides. Users who see their archetype label (in reflection checkpoints or USER-PROFILE) should not feel pathologized.

**Decision:** All archetype labels use value-neutral, descriptive language. "Career-focused" not "workaholic." "Experience-focused" not "present-oriented" or "hedonistic." "Functional-but-disorganized" not "messy" or "scattered." The labels describe what gets attention, not what's wrong. Internal LLM processing still uses the archetype to drive formulation decisions (e.g., career-focused triggers balance flags in weekly review), but the user-facing label is neutral.

**Rejected:** Clinical/pathological labels (workaholic, avoidant, etc.). More precise in some clinical contexts but violate the system's principle of neutral phrasing and would feel like a diagnosis. Also rejected: no labels at all — archetypes serve a real function in adaptive depth and skill calibration; removing them would require more complex conditional logic.

**Evidence:** Codex review specifically flagged the original label set as potentially judgmental. Aligned with MI principles (avoid the labeling trap) and the system's interaction principle of neutral phrasing (no shame, no guilt, no "you should have"). The value-neutral framing is consistent with strengths-based approaches in clinical psychology.

**Context:** The archetype system is a key branching mechanism in the interview (adaptive depth by Q3-4) and in skill calibration (Step 6). Labels appear in the formulation model, reflection checkpoints, USER-PROFILE, and .template-config.md. Ensuring they read as descriptive rather than evaluative is important across all these touchpoints.
