# EF Framework — AI-Assisted Executive Function

An AI Chief of Staff that holds your complexity so you see one next thing.

Instead of showing you 47 tasks, 12 emails, and 8 overdue items, this system holds the pile and surfaces what matters right now. It provides structure for planning, reviewing, and executing — calibrated to how much support you actually need.

---

## How to Use This Package

**You are Claude, helping a new user set up their system.**

1. Read this file to understand the package
2. Run `SETUP-GUIDE.md` — it's an interview protocol you walk the user through
3. Build their system from the template files, informed by their answers
4. Hand them one thing at a time. **Never show the full package.**

The user should never feel overwhelmed by the system itself. You hold the complexity of these files; they just interact with you.

---

## Template Structure

The template mirrors the actual system structure. Everything at the root (except setup files) gets copied to the user's output directory.

| Path | Purpose |
|------|---------|
| `RULES-TEMPLATE.md` | System config source — personalized during setup → becomes user's `RULES.md` |
| `ef-system/STATE.md` | Daily tracking scaffold — populated by @morning-planning |
| `ef-system/EF-SYSTEM.md` | Task hub + system roadmap |
| `ef-system/BUILD-PLAN.md` | Architecture + intervention patterns |
| `ef-system/SYSTEM-STRUCTURE.md` | PARA organization, navigation, schemas |
| `ef-system/AGENTIC-PATTERNS.md` | Automation patterns + research heuristics |
| `ef-system/skills/` | Protocol files (@morning-planning, @checkpoint, etc.) |
| `ef-system/tasks/` | Deep-dive task subpages |
| `ef-system/history/` | Weekly review archives |
| `ef-system/reference/` | Supporting docs (getting-to-baseline, user manual, memory) |
| `areas/` | Life domain hubs |
| `projects/` | Active project folders |
| `resources/` | Curated external material |

### Setup-only files (stay in template, not copied)

| Path | Purpose |
|------|---------|
| `ef-system/reference/setup/SETUP-GUIDE.md` | Interview protocol |
| `ef-system/reference/setup/README.md` | This file — package overview for Claude |
| `ef-system/reference/setup/USER-PROFILE-TEMPLATE.md` | Profile template — WOOP, energy map, cognitive traits |
| `ef-system/reference/setup/STATE-TEMPLATE.md` | State scaffold with placeholder tokens |
| `ef-system/reference/setup/chief-of-staff.md` | Core philosophy — "hide the pile" |
| `ef-system/reference/setup/life-areas.md` | Area + balance system reference |

---

## What Needs Customizing vs Works As-Is

| Category | Customization Level | What Changes |
|----------|-------------------|--------------|
| `RULES-TEMPLATE.md` | High | Tool ecosystem, skills table, interaction depth, root path |
| `ef-system/STATE.md` | Medium | Area names, pillar names |
| `ef-system/skills/` | Low-Medium | Path references, tool commands, area names |
| `ef-system/reference/setup/USER-PROFILE-TEMPLATE.md` | High | WOOP plan, energy map, cognitive traits, interaction style |
| Everything else | Works as-is | Universal principles, no personalization needed |

The SETUP-GUIDE interview collects everything needed to fill the templates.

---

## Design Principles

- **The pile is the assault** — ambient cognitive load from seeing everything is worse than any individual task. Hide it.
- **One next thing** — always surface a single action, not a list. User says "what else" for more.
- **Scaffold, don't lecture** — provide structure (options, checklists, micro-steps), not advice.
- **Systems should bend** — if a user skips a review or misses a day, the system adapts. No guilt.
- **Momentum over perfection** — one tiny completed thing beats zero big things.
- **Discover, don't assume** — the interview determines what support level someone needs. Some people need full intervention patterns; others just need organization.
