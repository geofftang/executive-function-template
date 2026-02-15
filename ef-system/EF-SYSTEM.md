# EF System

**Purpose:** Task hub and system context for EF system improvements.

---

## EF System Map

| File | Purpose | Updated How |
|------|---------|-------------|
| `/CLAUDE.md` | Global rules, tool commands, interaction principles | Direct edit during @iterate |
| `ef-system/EF-SYSTEM.md` | Task hub, system roadmap, structural decisions | This file |
| `ef-system/BUILD-PLAN.md` | EF architecture, intervention patterns, execution design | During @system-audit |
| `ef-system/STATE.md` | Current intention, in-progress work, last active dates | Auto-updated by @checkpoint |
| `ef-system/skills/` | Protocols for @morning-planning, @checkpoint, etc. | Direct edit |

**Key principle:** You specify (processes, criteria, triggers), Claude executes.

---

## Current State

**Active projects:**
1. `projects/[PRIMARY_PROJECT]/` — [Description]
2. `projects/[SECONDARY_PROJECT]/` — [Description]

**EF system status:** Active. Using templates for standardizing workflows.

---

## Operational Roadmap

**Pending:**
- [ ] Implement [FEATURE_A] to reduce [FRICTION_TYPE]
- [ ] Audit [COMPONENT] against [STANDARD]
- [ ] Consolidate legacy files to new `{PROJECT}.md` pattern

**Next tasks:**
- [ ] **System Refactoring** — Review core rules and intervention effectiveness.
- [ ] **Tool Integration** — Enhance automation between [TOOL_1] and [TOOL_2].

---

## Key Insights

1. **Single-file project convention** — CLAUDE.md + project `{PROJECT}.md` is the standard. Only add more docs if complexity demands it.
2. **Work accountability** — Session logs in the project hub serve as the audit trail.
3. **State vs. Life** — `STATE.md` tracks high-level life areas and daily intentions. Project-specific detail stays in the project folder.
4. **AI Strengths** — AI excels at exhaustive enumeration, rubrics, and quality gates. Design workflows to leverage these.

---

## System Roadmap (Generic)

- [ ] **Feedback Loop** — Log user choices when nudged to improve intervention timing.
- [ ] **Pattern Analysis** — Analyze weekly logs for recurring friction points.
- [ ] **Knowledge Management** — Formalize the transition from project working notes to long-term area knowledge.

---

## File Structure

```
[USER_ROOT_PATH]/
├── CLAUDE.md                 ← universal rules and skill routing
├── projects/
│   ├── [project-name]/
│   └── ...
├── ef-system/
│   ├── EF-SYSTEM.md          ← this file (task hub)
│   ├── BUILD-PLAN.md         ← architecture and design decisions
│   ├── STATE.md              ← daily intention, progress, last_active
│   ├── skills/               ← protocol files (@name)
│   └── tasks/                ← deep dive task subpages
```
