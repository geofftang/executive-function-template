# Life Areas & Balance System

How tasks are selected and balanced day-to-day. The goal: prevent defaulting to one area (usually work or chores) while neglecting everything else.

---

## The Area System

Daily planning pulls **one task from each area.** This is the core mechanism — it forces balance.

### Default Areas (Customize in Setup Interview)

| Area | What it covers | Daily goal |
|------|---------------|------------|
| **Relationships** | Partner, family, friends, social life | 1 intentional action |
| **Projects** | Current big goals (career, side projects, creative work) | 1 task |
| **Growth** | Self-improvement (health, learning, hobbies) | 1 small action |
| **Logistics** | Everything else — chores, admin, errands, finances | 1 task (capped) |

**Key insight:** The catch-all area (Logistics/chores/admin) dominates by default. Cap it to 1/day to protect other areas.

### Customization Examples

**Career-focused person:**
| Area | Description |
|------|------------|
| Career | Job search, networking, skill development |
| Relationships | Partner, family, friends |
| Health | Exercise, nutrition, mental health, sleep |
| Home | Household, finances, errands |

**Creative person:**
| Area | Description |
|------|------------|
| Creative Work | Writing, art, music, content |
| Day Job | Work tasks, professional development |
| Self-Care | Health, therapy, rest, social |
| Life Admin | Finances, household, errands |

**Parent:**
| Area | Description |
|------|------------|
| Family | Kids, partner, family activities |
| Work | Career, professional growth |
| Self | Health, hobbies, friendships, alone time |
| Household | Chores, finances, errands, maintenance |

The areas should reflect how the user *actually thinks* about their life, not an ideal framework.

---

## The Balance System (Pillars — Optional)

Pillars are cross-cutting dimensions that track balance *across* areas. Not everyone needs these — skip if the area system alone provides enough balance.

### What Problem Pillars Solve

Within any area, there's a tendency to only do certain types of tasks. For example, within Logistics, someone might always do financial/career tasks and never do wellness or fun tasks.

Pillars make this visible: "Your last 3 logistics tasks were all career-related. Consider a wellness or fun one today."

### Example Pillars

| Pillar | What it covers |
|--------|---------------|
| **Livelihood** | Money, career, job search |
| **Wellness** | Health, self-care, therapy, medication |
| **Creative** | Art, cooking, content, learning for fun |
| **Fun/Social** | Events, friends, style, entertainment |

### How Pillars Work

- Each task can be tagged with a pillar
- When selecting the daily task from an area, check pillar balance
- If one pillar has been neglected (>3 days without a touch), suggest a task from it
- Used primarily during weekly review to spot patterns

---

## Threshold Detection

The system tracks when each area (and optionally each pillar) was last active.

| Threshold | Trigger | Response |
|-----------|---------|----------|
| Area: 2 days inactive | ⚠️ Warning | Mention in morning planning: "Growth hasn't been touched in 2 days" |
| Area: 3+ days inactive | 🚨 Alert | Propose bridge task: specific, tiny (<5 min) action to break the stall |
| Pillar: 3 days inactive | ⚠️ Suggest rotation | "Last 3 logistics tasks were Livelihood. Pick a Wellness one today?" |

### Bridge Tasks

When an area hits 🚨 threshold, propose a **bridge task** — the smallest possible action that counts as touching the area:

- Relationships: "Send one text to someone you haven't talked to this week"
- Growth: "Do 5 minutes of [current focus]. Just 5."
- Projects: "Open the project file and read your last session note"
- Logistics: "Check if any bills are due this week"

Bridge tasks break the stall. Once someone starts, they often continue. If they don't, at least the threshold resets.

---

## Task Structure Within Areas

Each area contains tasks organized by urgency:

```markdown
## Focus
- [ ] The current priority (linked to detail page if complex)

## Operational
- [ ] Recurring or simple tasks

## Backlog (collapsed/hidden by default)
- [ ] Future items

## Done (collapsed/hidden by default)
- [x] Completed items
```

<!-- How to collapse sections depends on your tool:
  - Obsidian: use callout syntax `> [!note]- Backlog`
  - Notion: use toggle blocks
  - Other markdown: use <details> tags or just a heading
  The key: backlog and done should be hidden by default to avoid pile anxiety. -->

**Focus** = the current priority. One at a time.
**Operational** = things that just need doing, no deep thought.
**Backlog** = future items. Hidden by default to avoid overwhelm.
**Done** = archive. Collapsed but kept for review.

---

## Energy Mapping

Not all tasks are equal. Match task difficulty to energy:

| Time of Day | Energy Level | Best For |
|-------------|-------------|----------|
| Morning peak | High | Projects, creative work, hard tasks |
| Afternoon dip | Low | Logistics, admin, easy operational tasks |
| Evening | Variable | Relationships, light growth activities |

Morning planning considers energy when suggesting task order — hard things first, easy things for the afternoon slump.
