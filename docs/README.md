# EF Framework — AI-Assisted Executive Function

An AI Chief of Staff that holds your complexity so you see one next thing.

Instead of showing you 47 tasks, 12 emails, and 8 overdue items, this system holds the pile and surfaces what matters right now. It provides structure for planning, reviewing, and executing — calibrated to how much support you actually need.

---

## How to Use This Package

**You are Claude, helping a new user set up their system.**

1. Read this file to understand the package
2. Run `SETUP-GUIDE.md` — it's an interview protocol you walk the user through
3. Build their system from the templates, informed by their answers
4. Hand them one thing at a time. **Never show the full package.**

The user should never feel overwhelmed by the system itself. You hold the complexity of these files; they just interact with you.

---

## Package Contents

| File | Purpose |
|------|---------|
| **README.md** | This file — package overview for Claude |
| **SETUP-GUIDE.md** | Interview protocol to customize the system for a new user |

### fuel/ (Templates for Personalization)

| File | Purpose |
|------|---------|
| STATE-TEMPLATE.md | Daily tracking scaffold — intention, progress, balance |
| USER-PROFILE-TEMPLATE.md | User profile — WOOP plan, energy map, cognitive traits |
| CONTEXT-TEMPLATE.md | Project hub template — focus, backlog, session log |

### engine/ (The Deployed System)

| Path | Purpose |
|------|---------|
| `CLAUDE.md` | System config — rules, skills, interaction principles |
| `ef-system/STATE.md` | Daily tracking (scaffold — populated by @morning-planning) |
| `ef-system/EF-SYSTEM.md` | Task hub + system roadmap |
| `ef-system/BUILD-PLAN.md` | Architecture + intervention patterns |
| `ef-system/SYSTEM-STRUCTURE.md` | PARA organization, navigation, schemas |
| `ef-system/AGENTIC-PATTERNS.md` | Automation patterns + research heuristics |
| `ef-system/skills/` | Protocol files (@morning-planning, @checkpoint, etc.) |
| `ef-system/tasks/` | Deep-dive task subpages |
| `ef-system/history/` | Weekly review archives |
| `ef-system/reference/` | Supporting docs (getting-to-baseline, user manual, memory) |

### docs/ (Concepts — works as-is)

| File | Purpose |
|------|---------|
| chief-of-staff.md | Core philosophy — "hide the pile" |
| life-areas.md | Area + balance system for daily task selection |
| personality-module.md | Tone/style options for Claude's communication |
| heartbeat-overview.md | Proactive nudges (future capability) |

---

## What Needs Customizing vs Works As-Is

| Category | Customization Level | What Changes |
|----------|-------------------|--------------|
| **engine/CLAUDE.md** | High | Tool ecosystem, skills table, interaction depth, root path |
| **fuel/STATE-TEMPLATE** | Medium | Area names, pillar names |
| **fuel/USER-PROFILE-TEMPLATE** | High | WOOP plan, energy map, cognitive traits, interaction style |
| **engine/ef-system/skills/** | Low-Medium | Path references, tool commands, area names |
| **docs/ (concepts)** | Works as-is | Universal principles, no personalization needed |

The SETUP-GUIDE interview collects everything needed to fill the templates.

---

## Setup Order

**Start small. Add skills only when pain emerges.**

### Week 1: Foundation
1. **CLAUDE.md** — generated from interview (interaction principles, tool ecosystem)
2. **morning-planning** skill — the daily anchor
3. **state.md** — tracks daily intention and balance

### Week 2: Session Management
4. **checkpoint** skill — state saves when stepping away

### Week 3+: As Needed
5. **weekly-review** — when weekly patterns start mattering
6. **inbox-triage** — when inboxes feel overwhelming
7. **digest** — when processing articles/content regularly
8. **strategic-reviews** — when monthly/quarterly planning is needed
9. **support** — personalized cognitive/psychological scaffolding

**The interview determines starting configuration. Not everyone needs every skill.**

---

## Design Principles

- **The pile is the assault** — ambient cognitive load from seeing everything is worse than any individual task. Hide it.
- **One next thing** — always surface a single action, not a list. User says "what else" for more.
- **Scaffold, don't lecture** — provide structure (options, checklists, micro-steps), not advice.
- **Systems should bend** — if a user skips a review or misses a day, the system adapts. No guilt.
- **Momentum over perfection** — one tiny completed thing beats zero big things.
- **Discover, don't assume** — the interview determines what support level someone needs. Some people need full intervention patterns; others just need organization.
