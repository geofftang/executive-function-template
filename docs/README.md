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

### templates/

| File | Purpose |
|------|---------|
| CLAUDE-TEMPLATE.md | System config — rules, skills, interaction principles |
| CONTEXT-TEMPLATE.md | Living state — current projects, insights, session log |
| STATE-TEMPLATE.md | Daily tracking — intention, progress, balance |
| project-patterns.md | How to structure projects (2-5 file pattern) |

### skills/

| File | Purpose |
|------|---------|
| morning-planning.md | Daily planning — set intention, surface what needs attention |
| checkpoint.md | Mid-session state save + alignment check |
| work-logging.md | End-of-session logging to project files |
| weekly-review.md | Pattern-informed weekly review + reset |
| strategic-reviews.md | Monthly / quarterly / annual planning |
| inbox-triage.md | Process inboxes (email, notes, captures) into organized buckets |
| project-management.md | Cross-project health scan + prioritization |
| digest.md | Deep read + route content (articles, newsletters, anything) |

### concepts/

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
| **CLAUDE-TEMPLATE** | High | Tool ecosystem, skills table, interaction depth |
| **STATE-TEMPLATE** | Medium | Area names, pillar names |
| **Skills** | Low-Medium | Path references, tool commands, area names |
| **Concepts** | Works as-is | Universal principles, no personalization needed |
| **project-patterns** | Works as-is | Generic project management pattern |

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
6. **weekly-review** — when weekly patterns start mattering
7. **inbox-triage** — when inboxes feel overwhelming
8. **project-management** — when juggling multiple projects
9. Other skills — when specific friction emerges

**The interview determines starting configuration. Not everyone needs every skill.**

---

## Design Principles

- **The pile is the assault** — ambient cognitive load from seeing everything is worse than any individual task. Hide it.
- **One next thing** — always surface a single action, not a list. User says "what else" for more.
- **Scaffold, don't lecture** — provide structure (options, checklists, micro-steps), not advice.
- **Systems should bend** — if a user skips a review or misses a day, the system adapts. No guilt.
- **Momentum over perfection** — one tiny completed thing beats zero big things.
- **Discover, don't assume** — the interview determines what support level someone needs. Some people need full intervention patterns; others just need organization.
