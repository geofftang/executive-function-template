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
| `RULES.md` | System config source — personalized during setup → becomes user's `RULES.md` |
| `identity/profile.md` | User profile template — WOOP plan, energy map, conditions, privacy |
| `identity/behaviors.md` | Failure modes (FBA), success modes, protective factors, support protocols |
| `identity/user-manual.md` | Communication style, automation tolerance, hard rules, cognitive traits |
| `execution/skills/<name>/SKILL.md` | Protocol files (@daily, @checkpoint, @triage, etc.) |
| `execution/agentic-patterns.md` | Automation patterns + research heuristics |
| `execution/system-structure.md` | PARA organization, navigation, schemas |
| `execution/reference/` | Supporting docs (getting-to-baseline, memory, build-plan) |
| `state/STATE.md` | Daily tracking scaffold — populated by @daily |
| `state/history/` | Weekly review archives |
| `projects/ef-system/` | System project hub + tasks + decisions |
| `areas/` | Life domain hubs |
| `projects/` | Active project folders |
| `resources/` | Curated external material |

### Setup-only files (stay in template, not copied)

| Path | Purpose |
|------|---------|
| `execution/reference/setup/SETUP-GUIDE.md` | Interview protocol |
| `execution/reference/setup/README.md` | This file — package overview for Claude |
| `execution/reference/setup/STATE-TEMPLATE.md` | State scaffold with placeholder tokens |
| `execution/reference/setup/chief-of-staff.md` | Core philosophy — "hide the pile" |
| `execution/reference/setup/life-areas.md` | Area + balance system reference |

---

## What Needs Customizing vs Works As-Is

| Category | Customization Level | What Changes |
|----------|-------------------|--------------|
| `RULES.md` | High | Tool ecosystem, interaction depth, root path |
| `identity/*.md` | High | WOOP plan, energy map, failure modes, communication style |
| `state/STATE.md` | Medium | Area names, pillar names |
| `execution/skills/` | Low-Medium | Path references, tool commands, area names |
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
