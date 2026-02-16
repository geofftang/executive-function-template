---
decision: "Clinical formulation model (8-section YAML) over checklist"
status: active
date: 2026-02-14
---

**Applies to:** [[SETUP-GUIDE#Formulation Model]] | [[SETUP-GUIDE#Update Rules]]

**Problem:** The interview needs an internal data model to accumulate and cross-reference user information across 7 questions. A flat checklist (name, areas, tools, patterns) captures facts but loses the relationships between them — e.g., how a failure mode connects to a life area, or how a protective factor compensates for a vulnerability.

**Decision:** Use an 8-section clinical formulation model maintained as a running YAML document: presenting, context, patterns, predispositions, aspirations, protective_factors, interaction_profile, segmentation. The structured format enables LLMs to generate contextual interventions (matching failure mode functions to intervention patterns) rather than generic advice. Update rules enforce additive accumulation, contradiction detection, and triangulation (3+ evidence points to confirm a pattern).

**Rejected:** Flat checklist / key-value data collection. Simpler to implement but loses interaction effects between sections. A checklist can't represent "this failure mode is triggered by this life area context and compensated by this protective factor." Also rejected: freeform narrative notes — too unstructured for reliable cross-LLM handoff.

**Evidence:** Codex flagged complexity concern during cross-LLM review — the 8-section YAML is dense. Retained because GPT-5.3, Claude, and Gemini all handle structured YAML reliably; the complexity is in the model, not in parsing it. The formulation approach is adapted from clinical psychology case formulation (integrative model), scaled down for productivity use.

**Context:** The template must work across multiple LLMs (Claude, Gemini, Codex). The data model needs to be explicit enough that any LLM can pick it up mid-interview or during config generation without losing context. YAML was chosen over JSON for readability in markdown files.
