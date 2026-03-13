---
name: daily
description: "Morning planning or evening close-out. Explicit: 'good morning', 'let's plan today', 'wrapping up', 'done for the day'. Implicit: none needed — naturally time-bounded."
---

# Skill: @daily

## Purpose
Daily lifecycle — morning planning and evening close-out. Two modes:
- `@daily` (default) — close previous day + plan today
- `@daily close` — capture today's work, close the day, no planning

## Mode: Morning (default)

### Step 1: Close Previous Day
If `STATE.md > Today` is dated before today:
1. Roll `Today > Completed` items into the `This Week` log entry for that date (create entry if missing)
2. Update areas/pillars/projects touched and hours estimate in the This Week entry
3. Check for late-session work in session memory that wasn't captured — add to This Week entry
4. Clear the Today section (will be rebuilt in Step 5)
5. Update `Last Active` dates based on what was actually worked on

If Today is already current or empty, skip to Step 2.

### Step 2: Review Routing (HARD GATE)
Check `state/STATE.md` review dates first:
- IF `Reviews > Weekly` is older than 7 days OR today is Monday: **BLOCK.** Do not proceed to Step 3. Present: "@weekly-review is [N] days overdue. Run now or explicitly defer?" Only continue if user says defer.
- IF `Reviews > Monthly` is older than 31 days OR first Monday of month: **BLOCK.** Same pattern for `@strategic-reviews`.
- Otherwise: Continue with morning planning

### Step 3: Load Context
Read from Obsidian `state/STATE.md`:
- `Date` / `Today` block — is it current?
- `In Progress` — what was being worked on
- `Weekly Goals` — current week's focus
- `Last Active` — threshold check (areas: 2-day, pillars: 3-day)
  - Warning at threshold, alert over threshold
  - For alert areas: propose Bridge Task (<5 min) to break the stall

### Step 4: Read Bucket Files
Check each bucket for actionable items:

| Bucket | Path |
|--------|------|
| Projects | Check `STATE.md` `In Progress` + active project hubs |
| [Bucket 1] | `projects/[bucket-1]/[BUCKET-1].md` |
| [Bucket 2] | `projects/[bucket-2]/[BUCKET-2].md` |
| Logistics | `projects/logistics/LOGISTICS.md` |

Look for:
- `[/]` in-progress items — if linked to a graduated task page (`[[task-name]]`), read it for today's specific action
- High priority items (top workstream position)
- Items matching weekly goals

### Step 5: Propose Plan
If `Today` section has pre-populated daily intention blocks (from @weekly-review), use today's block as the starting point. Adjust based on:
- Energy level (ask if not already known)
- Calendar conflicts or new information
- Threshold gaps that emerged since weekly review

If no pre-populated block exists, select **one task from each bucket** based on:
- Threshold gaps (alert areas get priority)
- Weekly goals alignment
- **Energy check:** Ask "How's your energy right now?" then match:
  - High energy → Projects/Creative work
  - Medium energy → Logistics/Admin
  - Low energy → smallest available Operational item or bridge task
- Focus transition rules: same workstream first → highest-priority project → break something down

Present as: "Here's what I'm suggesting: [list]. Confirm or change?"

### Step 5b: @plan Quick Scan
Run @plan on the day's primary task (quick depth — flag only actionable findings, <30s thinking). Present alongside the plan: "Plan audit: [findings or 'audit clean']."

### Step 6: Commit
On user confirmation:
1. Update state.md:
   - Set `Date` / `Today` to today
   - Set `In Progress` to first task
   - Set `Intention` section with selected tasks
2. Mark selected tasks as `[/]` in-progress in bucket files
3. **Block time in `[calendar tool]`** — Create events for each time block. Events are opaque (busy) by default.
4. Announce: "State recorded. What's the micro-win to start?"

---

## Mode: Close (`@daily close`)

### Step 1: Capture Work
1. Read `STATE.md > Today` — compare Intention vs actual work done this session
2. Check session memory for any uncaptured work from today's sessions
3. Update `Today > Completed` with all finished items

### Step 2: Roll to This Week
1. Create/update `This Week` log entry for today's date:
   - Areas/pillars/projects touched
   - Hours estimate
   - Concise summary of work (1 line per item)
2. Update `Last Active` dates based on what was worked on

### Step 3: Adherence Check
1. Update `Execution Adherence` fields:
   - `completed_committed_items` — how many intention items got done?
   - `adherence_score` — completed/committed
   - `drift_label` — `on_plan`, `justified_detour`, `drift`, `blocked`
2. If drift: name it, classify, and route via capture-then-defer

### Step 4: Set Next Context
1. Update `In Progress` to reflect carry-forward work
2. Add any tomorrow-specific context to `Context` section
3. Update Watch sections if new drift/constraints/decisions emerged

### Step 5: Announce
Present: "Day closed. [X/Y intention items done]. [One-line summary]. Tomorrow's carry-forward: [item]."

---

## State Update Format
```markdown
**Date:** YYYY-MM-DD
**In Progress:** [current task]

**Intention:**
- [ ] [Bucket] Task description → [[task-page-name]]
- [ ] [Bucket] Task description → [[task-page-name]]
```
Every intention that maps to a task page gets a wikilink. The linked task page carries a `context` frontmatter field (written by @checkpoint) so any new session can read STATE.md → follow links → know where things stand.

## Notes
- Don't check `[task app]` in morning — save recurring/reminders for midday triage
- If multi-day gap since last planning: "Looks like we're missing [dates]. Quick summary of each?"
- Recovery rule: For alert thresholds, propose specific tiny action, not generic category
- Close mode is optional but preferred — morning fallback (Step 1) catches missed closes

## Compliance — Morning (verify before presenting to user)
- [ ] Read this skill file completely before starting
- [ ] Previous day closed (Step 1) or confirmed current
- [ ] Read ALL bucket task files from Obsidian (all bucket hubs + active projects)
- [ ] Read `state/STATE.md` for yesterday's progress, current intention, and last_active dates
- [ ] Checked today's calendar events via `[calendar tool]`
- [ ] Time blocks assigned with specific times (not just task lists)
- [ ] Logistics references actual Obsidian logistics bucket (NOT inbox processing)
- [ ] Each bucket has exactly one suggested task (not a list of options)

## Compliance — Close (verify before announcing)
- [ ] All completed items captured in Today > Completed
- [ ] This Week log entry created/updated for today
- [ ] Last Active dates updated
- [ ] Execution Adherence updated
- [ ] Carry-forward context set
