---
decision: "LLM-agnostic via shim chain"
status: active
date: 2026-02-14
---

**Applies to:** [[RULES.md]] | [[CLAUDE.md]] | [[GEMINI.md]] | [[AGENTS.md]] | [[RULES-TEMPLATE]]

**Problem:** Different AI coding tools auto-load different instruction files: Claude Code reads `CLAUDE.md`, Gemini CLI reads `GEMINI.md`, Codex CLI reads `AGENTS.md`. Maintaining separate full instruction sets per LLM creates drift — a rule change must be applied to 3+ files. The template needs to support all three tools without duplicating the entire instruction set.

**Decision:** Single source of truth in `RULES.md`. Each LLM-specific file (CLAUDE.md, GEMINI.md, AGENTS.md) is a one-line shim: "Read and follow all instructions in RULES.md." All system logic, interaction principles, skills, and rules live in RULES.md. The shim chain means adding a new LLM requires only a new one-line redirect file, not a new copy of the full instructions.

**Rejected:** Separate instruction files per LLM. Would allow LLM-specific tuning (e.g., different prompting strategies for Claude vs Gemini) but at the cost of maintenance burden and drift risk. The template is already large (~200 lines in RULES.md); tripling it is not viable. Also rejected: no LLM-specific files at all — each tool requires its named file to exist for auto-loading; you can't just have RULES.md.

**Evidence:** Tested with Claude Code, Gemini CLI, and Codex CLI during Stage 3. All three followed the shim chain correctly — read their named file, followed the redirect to RULES.md, and executed the full instruction set. No LLM-specific behavioral differences required separate tuning at the RULES.md level (differences were handled at the formulation/interview level instead).

**Context:** This was the Stage 1 architectural decision for the v2 rewrite. The v1 template had a single `CLAUDE.md` with all instructions. Making the system LLM-agnostic was a prerequisite for the cross-LLM review (Stage 3) and for shipping a template that works regardless of which AI tool the user prefers.
