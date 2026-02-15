# WEEKLY REVIEW
**Sync Logic:** Read Obsidian `ef-system/STATE.md` immediately upon loading (via MCP or filesystem).
**Schema Authority:** All state updates follow the STATE SCHEMA in `executive-function.md`.
**Database Role:** You are the Database Administrator. Do not hallucinate keys.

**Goal:** Pattern-Informed Planning and Reset.

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
* **Action:** Scan `This Week` table in state.md for the last 7 days. List any **Areas/Pillars** with zero activity.
* **Constraint:** If an area is 🚨 (Over Threshold) and was neglected, it is a "Required Focus" for next week.

**B2: ALIGNMENT & MOMENTUM LOG**
* **Audit:** Compare `This Week` table in state.md summaries against the `Weekly Goals` for each bucket. **Report:** "Projects Goal was [X]. Actual work: [Summary]. Alignment: [High/Low] + Alignment %. Reasons for mismatch: [Inferred or User-provided]."
* **Logic:** Identify the **Power Pillar** (most active) and **Friction Pillar** (most sliced/avoided).
* **Update State:** Record findings in state.md Notes section to inform future scheduling.

**B3: SYSTEM HEALTH CHECK**
* Is this system helping or becoming another obligation?
* Any section I'm avoiding looking at? (That's data)
* **Run `@system-audit`** (light mode) — covers: diff scan, soft rule audit, WORKAROUND/REVISIT tag check, system changes this week. See `ef-system/skills/system-audit.md`.

**B4: ACTIVITYWATCH ANALYSIS**
* **API:** `http://localhost:5600/api/0/`
* **Pull:** Last 7 days of window events
* **Analyze:**
  * Top apps by time (work vs distraction ratio)
  * Peak focus hours (when are deep work blocks most successful?)
  * Drift patterns (what time of day? what triggers?)
  * Context switch frequency
* **Surface:** "Best focus was 10am-1pm. Drift spiked after 3pm — maybe schedule breaks there."

**B5: BIOMETRIC CORRELATION (Optional)**
* **Trigger:** "Want to pull Health data this week?"
* **If YES:** Ask user to run Health Auto Export shortcut, then read exported JSON/CSV
* **Data path:** `~/Documents/HealthExport/` or iCloud Drive location
* **Analyze:**
  * Sleep duration vs focus quality (correlate with B4)
  * HRV trends (stress indicator)
  * Any mood logs
* **Surface:** "You averaged 5.8 hrs sleep this week. Days with <6 hrs had 40% more drift episodes."
* **Skip if:** No Health data available or user declines

---

#### PART C: PRIORITIZE BASED ON PATTERNS

**Step 0: Check monthly adjustments**
* **Action:** Read `Monthly Adjustments` section in state.md. Are those adjustments still relevant for this week's goals?
* **If expired** (past the date range): Remove section, note that next monthly review will set new ones.
* **If active:** Ensure this week's goals respect them (e.g., if "income-lab design banned," don't set income-lab design as a goal).
* **Skip if:** No Monthly Adjustments section exists.

**Selection rules:**
* **If pattern = recurring blocker** → Escalate to priority (needs structural fix)
* **If pattern = consistent avoidance** → Either eliminate guilt-free OR create if-then plan
* **If pattern = working well** → Maintain, don't over-optimize
* **If no strong pattern** → Choose based on deadline or strategic importance

**Pick ONE focus per bucket:**
* **[AREA_1] focus this week:** [Specific priority + reason]
* **[AREA_2] focus this week:** [Specific priority + reason]
* **[AREA_3] focus this week:** [Specific priority or "maintenance only"]
* **[AREA_4]:** [Specific priority or "reactive only"]

**Optional dimension tags** (for motivation clarity):
* Which focus addresses **sustenance**?
* Which focus addresses **wellness**?
* Which focus addresses **fun/creative**?


---

#### PART D: OPTIONAL DEEP DIVES

**Only if applicable this week:**

**High-Stakes Event Review** (conditional):
* **Trigger:** "Any high-stakes events WITH RECORDINGS this week?" (interviews, presentations, difficult conversations)
* **If YES (have transcript):**
  * Use Cold War judge prompt: "Act like a Cold War era Russian Olympic judge—be exacting and brutally honest with me. I want to improve, not hear that I did well. Analyze my performance and tell me specifically where I fell short and how I could have been better. Don't pull any punches."
  * Extract 2-3 actionable improvements
  * Log to relevant project's {PROJECT}.md or state.md Notes
* **If NO (no transcript):**
  * Manual reflection: "Where did I fall short? What would I do differently?"
  * Log lesson learned, but acknowledge limitation
  * **Reminder:** Set up recording for NEXT high-stakes event

**Critical Lesson Learned:**
* "What's ONE thing I want to remember from this week?"
* Log if significant, skip if nothing stands out

**Purpose:** Capture outlier insights without forcing reflection

---

## MODE E: STRATEGIC REVIEWS

**When triggered (monthly/quarterly/annual), load strategic review protocols:**

* **Monthly:** First Wednesday of month (10 min) - Embedded in weekly review
* **Quarterly:** First Wednesday after Jan 1, Apr 1, Jul 1, Oct 1 (45 min)
* **Annual:** First Wednesday of January (60 min)

**Trigger detection:**
* Check current month against `last_monthly_check` - if different month, monthly is due
* Check current quarter against `last_quarterly_review` - if different quarter, quarterly is due  
* If January AND `last_quarterly_review` != "2026-Q1", annual is due
* Execute due reviews in order: Annual → Quarterly → Monthly

**Action:**
* Call `Filesystem:read_file` for `[USER_HOME]/Library/Application Support/executive-function/ef-system/skills/strategic-reviews.md`
* Execute appropriate review (monthly/quarterly/annual) based on trigger
* Update corresponding timestamp in Obsidian `ef-system/STATE.md` after completion

**After completion:** 
* Monthly: Return to Mode D Part C (set weekly goals informed by monthly insights)
* Quarterly: Set weekly goals for first week of quarter
* Annual: Set Q1 priorities and first week's goals

---

#### PART F: ARCHIVE & RESET

**STEP 1: Calculate Week Boundaries**
* Weekly reviews happen on Wednesdays
* Weeks run: Wednesday → Tuesday
* Current week ends: Previous Tuesday's date
* Calculate week range: "YYYY-MM-DD_to_YYYY-MM-DD"
* Determine month file: Use the month of the ENDING Tuesday (e.g., week ending Jan 2 → 2026-01.json, week ending Dec 31 → 2025-12.json)
**STEP 2: Archive Sessions**
* Path: `[USER_HOME]/Library/Application Support/executive-function/ef-system/history/`
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
        "[area-1]": "[from Part C]",
        "[area-2]": "[from Part C]",
        "[area-3]": "[from Part C]",
        "[area-4]": "[from Part C]"
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
* Archive `completed` items to `ef-system/history/` JSON, then clear in Obsidian `ef-system/STATE.md`
* Update `last_weekly_review` to today
* Set new `Weekly Goals` section in state.md based on Part C priorities
* Store implementation intentions in active state for reference

**STEP 4: RELOAD ENGINE**
* "Archive complete. Reloading executive-function.md for Mode A: Morning Planning."