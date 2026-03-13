---
name: weekly-review
description: "Weekly operational review: sync state, analyze patterns from the past week (energy, completion, avoidance), set next week's intentions, and audit habit streaks. Run Monday mornings or when resuming after a gap."
disable-model-invocation: true
---

# WEEKLY REVIEW
**Sync Logic:** Read `state/STATE.md` immediately upon loading.
**Schema Authority:** All state updates follow the STATE schema defined in `execution/SYSTEM-STRUCTURE.md` and `state/STATE.md`.
**Database Role:** You are the Database Administrator. Do not hallucinate keys.

**Goal:** Pattern-Informed Planning and Reset.
**Time:** 30 min hard stop (typically 20-25 min)

---

#### PART A: WINS AUDIT
**Prompt:** "What went BETTER than expected this week?"
* Any surprises where you handled something well?
* Any moments where you felt competent/effective?
* Any evidence you're improving at something?

**Action:** Surface insights from my last week's agent-state and encourage me to log at least ONE win (even if it feels small)
**Purpose:** Counteract negativity bias, build evidence of progress

---

#### PART B: PATTERN ANALYSIS

#### PART B: DATA-DRIVEN PATTERN ANALYSIS
**B1: NEGLECT ALERT**
* **Action:** Scan dated entries in `This Week` in `state/STATE.md` for the last 7 days. List any **Areas/Pillars** with zero activity.
* **Constraint:** If an area is 🚨 (Over Threshold) and was neglected, it is a "Required Focus" for next week.

**B2: ALIGNMENT & MOMENTUM LOG**
* **Audit:** Compare `This Week` summaries in `state/STATE.md` against `Weekly Goals`. **Report:** "Projects Goal was [X]. Actual work: [Summary]. Alignment: [High/Low] + Alignment %. Reasons for mismatch: [Inferred or User-provided]."
* **Logic:** Identify the **Power Pillar** (most active) and **Friction Pillar** (most sliced/avoided).
* **Update State:** Record findings in `state/STATE.md` under `Drift Watch` / `Constraint Watch` / `Decision Watch` as applicable.

**B3: SYSTEM HEALTH CHECK**
* Is this system helping or becoming another obligation?
* Any section I'm avoiding looking at? (That's data)
* **Run `@system-audit`** (light mode) — covers: diff scan, soft rule audit, WORKAROUND/REVISIT tag check, system changes this week. See `execution/skills/system-audit.md`.

**B4: ACTIVITYWATCH + BIOMETRIC (monthly only)**
*Moved to `@system-audit full` — weekly signal was low (confirms known patterns without new actions). Pull on-demand if specific question arises.*

---

#### PART C: PRIORITIZE BASED ON PATTERNS

**Step 0: Check monthly adjustments**
* **Action:** Read `Monthly Adjustments` in `state/STATE.md`. Are those adjustments still relevant for this week's goals?
* **If expired** (past the date range): Remove section, note that next monthly review will set new ones.
* **If active:** Ensure this week's goals respect them (e.g., if "[project] design banned," don't set [project] design as a goal).
* **Skip if:** No Monthly Adjustments section exists.

**Selection rules:**
* **If pattern = recurring blocker** → Escalate to priority (needs structural fix)
* **If pattern = consistent avoidance** → Either eliminate guilt-free OR create if-then plan
* **If pattern = working well** → Maintain, don't over-optimize
* **If no strong pattern** → Choose based on deadline or strategic importance

**Resource surfacing (per area):**
* While selecting each area's focus, check `resources/` for files tagged to that area with `status: pending`.
* If any exist, mention: "You have [N] pending articles tagged to [area]. Any relevant to this week's focus?"
* User picks 0-1 to `@digest` now, rest stay pending.
* Skip if no pending resources for that area.

**LEVERAGE CHECK (before selecting focus):**
* **Scan:** `git diff --stat` since last weekly review. Scan project hubs for new tasks, status changes, context shifts.
* **Challenge:** "Given what shifted, is the current focus still the highest-leverage use of time? Should anything be elevated or dropped?"
* **Cross-project:** Rank active focuses by impact. If a non-focus item has become clearly higher leverage, flag for reprioritization.
* **Output:** One line: "Focus is [confirmed / should shift to X because Y]."

**Pick ONE focus per bucket:**
* **Projects focus this week:** [Specific priority + reason]
* **Logistics priority this week:** [Specific priority + reason]
* **Leveling Up focus this week:** [Specific priority or "maintenance only"]
* **[support partner]:** [Scheduled activity or "reactive only"]

**Optional dimension tags** (for motivation clarity):
* Which focus addresses **sustenance**?
* Which focus addresses **wellness**?
* Which focus addresses **fun/creative**?

#### PART C.5: PROJECT HEALTH SCAN (exception-based)
*Per active project — read Foundation + Workstreams, flag only exceptions. No output if healthy.*

**Execution adherence:**
* Adherence score: committed vs completed (from B2 data). Drift label: `on_plan`, `justified_detour`, `drift`, `blocked`.
* One-sentence assessment: "Execution was [high/medium/low] because [reason]."

**Workstream check:** For each active project:
* Active task from highest-priority workstream? If not, flag.
* Any `[/]` items untouched 7+ days? Reclassify or keep with reason.
* Workstream count 3-5? Flag if bloated.
* Output one line per project: "aligned" or "[issue]."

**Assumption check:** Per active project with Foundation:
* Read Foundation (problem, objectives, approach). Surface it — user shouldn't recall from memory.
* Has anything this week contradicted the framing, objectives, or approach?
* Are feedback criteria signals present (success or failure)?
* **If anything off:** Flag for reframe. Otherwise: move on.

#### PART C.6: WEEKLY INSIGHT
*Scaffold: pick the category that resonates, then name the specific learning.*

Which of these applies this week?
* **Something I assumed that turned out wrong**
* **A friction point I keep hitting** (same blocker, different week)
* **Something that worked better than expected**
* **A decision I'm avoiding**

If one fits: name it in one sentence, log to relevant project or area file. If nothing stands out: skip.

---

## MODE D: STRATEGIC REVIEWS

**When triggered (monthly/quarterly/annual), load strategic review protocols:**

* **Monthly:** First Monday of month (10 min) - Embedded in weekly review
* **Quarterly:** First Monday after Jan 1, Apr 1, Jul 1, Oct 1 (45 min)
* **Annual:** First Monday of January (60 min)

**Trigger detection:**
* Check `Reviews > Monthly` in `state/STATE.md` - if month differs from current month, monthly is due
* Check `Reviews > Quarterly` in `state/STATE.md` - if quarter differs from current quarter, quarterly is due
* If January and no annual review has been completed this year, annual is due
* Execute due reviews in order: Annual → Quarterly → Monthly

**Action:**
* Call `Filesystem:read_file` for `[USER_HOME]/executive-function/execution/skills/strategic-reviews.md`
* Execute appropriate review (monthly/quarterly/annual) based on trigger
* Update corresponding timestamp in Obsidian `state/STATE.md` after completion

**After completion:** 
* Monthly: Return to Mode D Part C (set weekly goals informed by monthly insights)
* Quarterly: Set weekly goals for first week of quarter
* Annual: Set Q1 priorities and first week's goals

---

#### PART E: ARCHIVE & RESET

**STEP 1: Calculate Week Boundaries**
* Weekly reviews happen on Mondays
* Weeks run: Monday → Sunday
* Current week ends: Previous Tuesday's date
* Calculate week range: "YYYY-MM-DD_to_YYYY-MM-DD"
* Determine month file: Use the month of the ENDING Tuesday (e.g., week ending Jan 2 → 2026-01.json, week ending Dec 31 → 2025-12.json)
**STEP 2: Archive Sessions**
* Path: `[USER_HOME]/executive-function/state/history/`
* File format: `YYYY-MM.json` (monthly file, weeks append to it)

**Archive Logic:**
1. Check if monthly file exists (e.g., `2026-01.json`)
2. **If exists:** Read file, append new week to `weeks` array, write back
3. **If doesn't exist:** Create new monthly file with first week

**Content structure:**
```json
{
  "month": "YYYY-MM",
  "weeks": [
    {
      "week_range": "YYYY-MM-DD to YYYY-MM-DD",
      "archived_on": "[ISO timestamp]",
      "weekly_focus": {
        "projects": "[from Part C]",
        "logistics": "[from Part C]",
        "leveling_up": "[from Part C]",
        "ludia": "[from Part C]"
      },
      "sessions": [
        {
          "date": "YYYY-MM-DD",
          "hours_worked": [number],
          "areas_active": ["area1", "area2"],
          "pillars_active": ["pillar1", "pillar2"],
          "summary": "[narrative summary]"
        }
      ]
    }
  ]
}
```

* If sessions span multiple weeks, split them into separate archive files

**STEP 3: Clear for New Week**
* Archive only `[x]` items to `state/history/` JSON, then clear them from `state/STATE.md`. All other items (`[ ]`, `[/]`, `[-]`) carry forward — place them into the new week's daily blocks or flag for triage if no longer relevant.
* Update `Reviews > Weekly` to today
* Set new `Weekly Goals` section in `state/STATE.md` based on Part C priorities
* **Pre-populate daily intentions for the week:** After setting weekly goals, break them into day-by-day intention blocks in `Today` section. Read graduated task pages (`[/]` items with `[[links]]`) for timebound items (dates, appointments, prep deadlines). Format:
  ```markdown
  ### Mon Mar 3
  - [bucket] task name
  - [bucket] task name

  ### Tue Mar 4
  - [bucket] task name
  ```
  @daily reads the current day's block, proposes it (adjusting for energy/surprises), and scores adherence at close. Days without specific items get "flex" or the bucket's weekly goal restated.
* Store implementation intentions in active state for reference

**STEP 4: RELOAD ENGINE**
* "Archive complete. Reloading `@daily` for next cycle."
