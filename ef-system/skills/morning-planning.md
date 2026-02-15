# Skill: @morning-planning

## Purpose
Morning planning protocol with review routing. Run at start of day to set intention and surface what needs attention.

## Execution

### Step 1: Review Routing
Check state.md dates first:
- IF `last_weekly_review` > 7 days OR today is Wednesday: Suggest `@weekly-review` before planning
- IF `last_monthly_check` > 31 days OR first Wednesday of month: Suggest `@strategic-reviews`
- Otherwise: Continue with morning planning

### Step 2: Load Context
Read from Obsidian `ef-system/STATE.md`:
- `date` — is it today? If not, archive yesterday to This Week table
- `in_progress` — what was being worked on
- `weekly_goals` — current week's focus
- `last_active` — threshold check (areas: 2-day, pillars: 3-day)
  - ⚠️ at threshold, 🚨 over threshold
  - For 🚨 areas: propose Bridge Task (<5 min) to break the stall

### Step 3: Read Bucket Files
Check each bucket for actionable items:

| Bucket | Path |
|--------|------|
| [AREA_1] | Check state.md `in_progress` for current focus |
| [AREA_2] | `projects/[area-2]/[AREA_2].md` or area hub |
| [AREA_3] | `projects/[area-3]/[AREA_3].md` or area hub |
| [AREA_4] | `projects/[area-4]/[AREA_4].md` or area hub |

Look for:
- 🔄 in-progress items
- 🔺 high priority items
- Items matching weekly goals

### Step 4: Propose Plan
Select **one task from each bucket** based on:
- Threshold gaps (🚨 areas get priority)
- Weekly goals alignment
- Energy mapping:
  - High Effort (deep work) → Morning Peak
  - Low Effort (admin/chores) → Afternoon Slump

Present as: "Here's what I'm suggesting: [list]. Confirm or change?"

### Step 4b: @plan Quick Scan
Run @plan on the day's primary task (quick depth — flag only actionable findings, <30s thinking). Present alongside the plan: "Plan audit: [findings or 'audit clean']."

### Step 5: Commit
On user confirmation:
1. Update state.md:
   - Set `date` to today
   - Set `in_progress` to first task
   - Set `Intention` section with selected tasks
2. Add 🔄 marker to selected tasks in bucket files
3. Announce: "State recorded. What's the micro-win to start?"

## State Update Format
```markdown
**Date:** YYYY-MM-DD
**In Progress:** [current task]

**Intention:**
- [[AREA_1] task]
- [[AREA_2] task]
- [[AREA_3] task]
- [[AREA_4] task]
```

## Notes
- Don't check recurring task app in morning — save recurring/reminders for midday triage
- If multi-day gap since last planning: "Looks like we're missing [dates]. Quick summary of each?"
- Recovery rule: For 🚨 thresholds, propose specific tiny action, not generic category

## Compliance (verify before presenting to user)
- [ ] Read this skill file completely before starting
- [ ] Read ALL bucket task files from Obsidian (all area hubs + active projects)
- [ ] Read state.md for yesterday's progress, current intention, and last_active dates
- [ ] Checked today's calendar events (via configured calendar tool)
- [ ] Time blocks assigned with specific times (not just task lists)
- [ ] Catch-all area references actual Obsidian bucket (NOT inbox processing)
- [ ] Each bucket has exactly one suggested task (not a list of options)
