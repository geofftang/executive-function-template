---
name: strategic-reviews
description: "Structured strategy review at monthly, quarterly, and annual cadences. Audits goal alignment, surfaces stalled projects, promotes cross-project patterns, and rebalances priorities across life areas. Use when a review cycle is due or when strategic drift is suspected."
disable-model-invocation: true
---

# STRATEGIC REVIEWS
**Purpose:** Monthly, quarterly, and annual planning protocols optimized for ADHD
**Used by:** Executive function agent when review triggers detected

---

## 1. MONTHLY CHECKPOINT (30 min - First Monday of month)

**Context:** Embedded within weekly review on first Monday
**Purpose:** Catch drift before it compounds, not set new goals

**ADHD-optimized process:**

### **Step 0: /insights baseline (before starting)**
* **Action:** Run `/insights` to get quantitative data on last month's sessions
* **Key metrics:** Misunderstood requests, wrong approaches, satisfaction ratio, achievement rate
* **Compare:** To previous month's numbers (stored in archive or prior review notes)
* **Route:** Actionable suggestions through @iterate
* **Why:** Evidence-based review — don't guess at what's working

### **Step 1: Win anchoring (2 min)**
* **Prompt:** "What's ONE thing that worked surprisingly well this month?"
* **Why:** Positive start prevents shame spiral, activates reward system

### **Step 2: Friction audit (3 min)**
* **Action:** Scan last 4 weekly reviews from archive files
* **Report:** "Task X appeared 4 weeks, never done - delete or do?"
* **Decision point:** Delete guilt-free OR schedule for THIS week (no middle ground)
* **Why:** ADHD brains need binary choices, not "maybe later"

### **Step 2.5: Steering Trend Scorecard**
* **Action:** Review the last 4 weeks of `STATE.md` watch sections.
* **Track:**
  1. Drift Watch trend (up/down/flat)
  2. Constraint Watch trend (new constraints vs cleared constraints)
  3. Decision Watch trend (decisions closed vs overdue)
* **Output:** One sentence: "Main steering risk this month is [X], caused by [Y], with corrective focus [Z]."
* **Purpose:** Convert weekly signals into longitudinal steering, not one-off anecdotes.

### **Step 2.6: Feedback criteria revisit**
* **Action:** For each active project with feedback criteria in Foundation, ask:
  1. Are we still measuring the right things? (Goals may have shifted)
  2. Are the criteria actually measurable with available data?
  3. Any new signals that should be tracked?
* **If criteria need updating:** Update Foundation, note change in session log.
* **If criteria are fine:** Move on.

### **Step 2.7: Design Decision cross-pollination**
* **Action:** Scan `decisions/` folders across all projects and ef-system (active and completed) for recently added entries (since last monthly review).
* **Check:** Does any new decision apply to another project? Flag but don't auto-apply.
* **Why:** Catches applicable patterns within weeks, not quarters. Completed projects' decisions are equally relevant. Lightweight — skip if no new design decisions were added.

### **Step 2.9: Resource backlog triage**
* **Action:** Scan all `resources/` files with `status: pending`.
* **For each:** Quick scan title + summary. Triage into:
  - **Digest now** — still relevant, queue for `@digest` this week
  - **Keep pending** — still want to read, not urgent
  - **Archive** — no longer relevant, set `status: archived`
* **Output:** "[X] pending resources: [Y] queued for digest, [Z] archived, [W] kept pending."
* **Why:** Prevents capture pile-up. Weekly surfacing handles relevant ones; this catches the rest.

### **Step 3: Pillar starvation check (3 min)**
* **Action:** Review pillar activity across last 4 weeks
* **Check:** Compare active quarter priorities in `state/STATE.md` against actual pillar touches
* **Report:** "Creative was quarterly priority but got 0 touches all month"
* **Decision point:** 
  - Keep as quarterly priority → Add explicit weekly goals next 4 weeks
  - Downgrade to "maintenance only" → Remove from weekly planning
* **Why:** Makes neglect visible, forces triage

### **Step 3.5: Leverage challenge (3 min)**
* **Action:** Read `projects/ef-system/decisions/` (leverage assessment, if exists) + all active project hubs + STATE.md. What's consuming time vs. producing results?
* **Challenge:** "Are you in the right lane? Any friction pattern suggesting you should shift focus?" Compare current allocation against past leverage assessments.
* **AI suggests:** Based on skills, situation, and project history — 1-2 adjustments to current allocation. Include things not on the task list if warranted.
* **Output:** "Current allocation is [confirmed / suggest shifting X because Y]."

### **Step 4: Horizon scan (2 min)**
* **Prompt:** "Any deadline 30-60 days out that triggers GAD if not broken down today?"
* **Examples:** Insurance renewal, tax dates, major life transitions
* **Action:** Add to [task app] recurring for weekly reminders (T-30, T-14, T-7 days)
* **Why:** Prevents surprise crisis mode

### **Output:**
* Write `Monthly Adjustments` section in `state/STATE.md` (date range, key changes, constraints). This is the handoff point — `@weekly-review` reads Monthly Adjustments when setting weekly goals, `@daily` reads weekly goals when planning the day. Chain: monthly → weekly → daily.
* No new state outside the current `state/STATE.md` schema
* Update `Reviews > Monthly` to today's date

---

## 2. QUARTERLY REVIEW (60 min - First Wednesday after quarter end)

**Trigger:** First Monday after Jan 1, Apr 1, Jul 1, Oct 1
**Purpose:** Validate strategy, adjust priorities for next 90 days

**ADHD-optimized process:**

---

### **PART A: EVIDENCE GATHERING (10 min)**

**Step 1: Pattern extraction from data (5 min)**

* **Action:** Review archived weekly sessions from last quarter (in `/history/`)
* **What to count:**
  - Which areas were active how many weeks?
  - Which pillars got touched across the quarter?
  - What weekly goals were set vs. actually done?

* **Report format:**
```
Last Quarter Pattern Analysis:
- Projects: Active 11/13 weeks, primarily livelihood pillar (job search)
- Leveling Up: Active 8/13 weeks, exclusively wellness (therapy/recovery)
- Logistics: Active 10/13 weeks, mixed pillars
- [support partner]: Active 10/13 weeks, fun_social pillar

Pillar Summary:
- Livelihood: 11 weeks (strong)
- Wellness: 10 weeks (strong)
- Creative: 0 weeks (starved)
- Fun_social: 10 weeks (strong)
```

* **Why:** External memory - you can't hold 13 weeks in working memory

**Step 2: Quarterly goal audit (5 min)**

* **Action:** Review quarter priorities from `state/STATE.md` (`Q1 2026` or current quarter section)
* **For each pillar priority, report:**
  - What was the stated goal?
  - How many weeks did it get explicit attention?
  - Achieved? [Yes/No/Partial]

* **If "No" or "Partial":** Ask: "Was this unrealistic, or did something block it?"
* **Why:** Distinguish between bad planning vs. execution barriers

---

### **PART B: STRATEGIC ADJUSTMENTS (15 min)**

**Step 1: Check annual alignment (5 min)**

* **Action:** Review annual direction from `state/STATE.md` (`2026 Annual`)
* **Prompt:** "Does this still feel true, or has something shifted?"
* **If shifted:** Update identity statement (rare, but allowed)
  - Example: "From job-seeking to sustainably employed" might shift mid-year if you get a job
* **Why:** Rigid annual goals fail with ADHD - allow flexibility when reality changes

**Step 1.5: Clean-sheet test (5 min)**

* **Action:** Read `projects/ef-system/decisions/` (leverage assessment, if exists). Set aside current projects and priorities. "If starting fresh today with everything you know — skills, market, energy, constraints — what would you prioritize?"
* **AI proposes:** 2-3 highest-leverage actions for the quarter, including things not currently on any project list. Uses full context: skills, market signals, project history, memory.
* **Compare:** Does the clean-sheet answer match current priorities? If not, what should change?
* **Update:** If priorities shifted, update decision files and STATE.md quarterly priorities.

**Step 2: Pillar triage for next quarter (10 min)**

* **Action:** For each pillar, present 3 options:
  1. **Primary focus** - Gets explicit weekly goals for 10+ weeks
  2. **Maintenance** - Threshold tracking only (2-day area / 3-day pillar rules), no weekly goals
  3. **Deferred** - Explicitly not prioritized this quarter (OK to neglect)

* **Constraint:** Only 2 pillars can be "primary focus" per quarter
  - **Why:** ADHD can't sustain 4 parallel priorities - forces triage
  - **Why 2 specifically:** Research shows working memory handles 2-3 active goals max

* **Example Q1 triage:**
  - Livelihood: Primary (job search urgent, 6-week insurance deadline)
  - Wellness: Primary (medication baseline + therapy rhythm critical)
  - Creative: Maintenance (threshold only - defer explicit goals to Q2)
  - Fun_social: Maintenance ([support partner] relationship only via threshold)

* **Confirm:** "Does this triage feel right, or should we adjust?"

---

### **PART C: NEXT 90 DAYS PLANNING (15 min)**

**Step 1: Translate pillar priorities to area goals (5 min)**

* **Action:** For each "primary focus" pillar, suggest which area will carry it
* **Examples:**
  - "Livelihood priority → Projects area (job search will be main Projects work)"
  - "Wellness priority → Leveling Up area (therapy + exercise routines)"
  - If creative was primary: "Creative priority → Leveling Up area (cooking experiments, writing)"

* **Why:** Pillars are abstract (what matters), areas are concrete (where work happens)

**Step 2: Identify quick wins (5 min)**

* **Prompt:** "What's ONE thing in each primary pillar that would feel like progress in the next 30 days?"
* **Examples:**
  - Livelihood: "Get 1 interview scheduled"
  - Wellness: "3 consecutive weeks of consistent medication timing"

* **Why:** ADHD needs dopamine hits - quick wins prevent abandonment
* **Use:** These become candidates for first month's weekly goals

**Step 3: Project distillation (5 min)**

* **Action:** For each completed or paused project from the quarter:
  - Extract generalizable knowledge (learnings, techniques, recipes, patterns) → move to relevant area folder
  - Examples:
    - Project `makgeolli` finished? Extract fermentation timing → `areas/food/cooking/recipes.md`
    - Project learnings about analytics? Extract patterns → `resources/livelihood/analytics-patterns.md`
  - Archive the project folder if complete

* **Rule:** Project-specific notes stay in project folder while active. General knowledge moves to area folder during distillation.

* **Why:** Prevents knowledge from getting lost when projects end; reusable learning stays accessible across projects

* **Design Decision pattern promotion:** Scan `*/decisions/` folders — if a decision repeats across 2+ projects → candidate for execution/AGENTIC-PATTERNS.md promotion. (Cross-pollination between projects happens monthly — see Monthly Step 2.7.)

---

### **PART D: ARCHIVE AND RESET (5 min)**

**Action - I will:**

1. **Update `state/STATE.md`:**
   - Refresh current quarter section (e.g., `Q2 2026`) with primary vs maintenance priorities.

2. **Update timestamp:**
   - Set `Reviews > Quarterly` to today.

3. **Set first week's goals** based on quarterly priorities:
   - Inform Mode D Part C with quarterly context
   - Ensure week 1 goals serve primary pillars

---

## 3. ANNUAL ARCHITECTURE (90 min - January only)

**Trigger:** First Monday of January
**Purpose:** Set direction for year, establish constraints

**ADHD-optimized process:**

---

### **PART A: LAST YEAR REVIEW (15 min)**

**Step 1: Evidence-based reflection (10 min)**

* **Action:** Review last 4 quarterly reviews from archive
* **Questions to answer:**
  - "What pattern showed up every quarter?" (consistent priority = real value)
  - "What did you always defer?" (probably not actually important = candidate for anti-goal)
  - "What surprised you positively?" (hidden strength = leverage point)

* **Example insights:**
  - "Wellness was primary focus 3/4 quarters → clearly a sustained need"
  - "Creative was always deferred → maybe not a real priority despite wishes"
  - "Relationship work ([support partner]/fun_social) was consistently maintained → natural strength"

* **Why:** Uses actual data, not faulty recall or aspirational thinking

**Step 2: Identity check (5 min)**

* **Prompt:** "Looking at 2025's data, who did you actually BE (not who you planned to be)?"
* **Example:** "You planned to be creative and productive. Data shows you were wellness-focused and relationship-maintaining."
* **Why:** Reality check prevents fantasy planning for 2026

---

### **PART B: DEFINE 2026 DIRECTION (20 min)**

**Step 1: Identity statement (10 min - collaborative)**

* **Template:** "2026 is the year I transition from [current state] to [desired state]"

* **Process:**
  1. I suggest based on last year's pattern: "From job-seeking to sustainably employed"
  2. You refine until it feels true
  3. Test: "Does this statement connect to actual behavior, or is it aspirational?"

* **Constraint:** One sentence only
  - **Why:** ADHD needs simple anchor, not detailed vision
  - Multiple goals = diffused focus = nothing gets done

* **Examples:**
  - "2026 is the year I transition from survival mode to sustainable stability"
  - "2026 is the year I transition from reactive execution to proactive creation"
  - "2026 is the year I transition from isolated effort to collaborative leverage"

**Step 2: Anti-goals (10 min)**

* **Prompt:** "What are 3 things you will NOT spend energy on in 2026?"

* **Why this matters for ADHD:**
  - Prevents overcommitment (common ADHD trap - saying yes to everything)
  - Saying "no" is harder than saying "yes" - pre-deciding removes decision fatigue
  - Creates boundaries that quarterly reviews must respect

* **Format:** Specific, behavioral, enforceable
  - ✗ Bad: "I won't be unproductive" (vague, unmeasurable)
  - ✓ Good: "I will not optimize my productivity system at the expense of job applications"

* **Examples:**
  - "I will not take on new creative projects until Q3 (employment must be secured first)"
  - "I will not pursue perfectionism in 'good enough' areas (logistics, admin tasks)"
  - "I will not sacrifice sleep for productivity (wellness is non-negotiable)"

* **Test each anti-goal:** "If I'm tempted to do this, what weekly goal would I be sacrificing?"

---

### **PART C: SET Q1 PRIORITIES (20 min)**

**Action:** Run the same process as Quarterly Review Part B & C, but informed by annual identity:

1. **Pillar triage for Q1** (based on identity statement)
   - Which 2 pillars serve the annual transition most directly?
   - Which pillars can be maintenance for now?

2. **Implementation intentions** for Q1 primary pillars

3. **Quick wins** for first month

**Example for "job-seeking to sustainably employed":**
- Q1 Primary: Livelihood (obvious - get the job)
- Q1 Primary: Wellness (need to be stable to perform in job search + new role)
- Q1 Maintenance: Creative (defer until employment secured)
- Q1 Maintenance: Fun_social ([support partner] relationship only, no expansion)

---

### **PART D: ARCHIVE AND COMMIT (5 min)**

**Action - I will:**

1. **Save to `state/STATE.md`:**
   - Update `2026 Annual` identity, anti-goals, and success criteria.

2. **Set Q1 priorities** in quarter section (e.g., `Q1 2026`)

3. **Ask activation question:** "What's ONE thing you'll do THIS WEEK to start living this identity?"
   - **Why:** Immediate action prevents "planning high" → "execution low" gap
   - **Example:** "Apply to 2 companies Monday" or "Schedule med check-in with psychiatrist"

---

## INTEGRATION WITH MODE D

**When Mode D (weekly review) runs, Part C (goal setting) now includes:**

**Additional prompts:**
1. "Do this week's goals serve the quarterly priorities?" (check against current quarter section in `STATE.md`)
2. "Does this week move you toward the annual identity statement?" (check against `2026 Annual`)
3. "Are you respecting anti-goals, or sneaking in what you said you wouldn't do?" (check against `2026 Annual > Anti-goals`)

**This keeps strategy alive in weekly execution - prevents drift between "what I planned" and "what I'm doing"**

---

## STATE UPDATES AFTER REVIEWS

**After Monthly:**
- Update `Reviews > Monthly` date.

**After Quarterly:**
- Update `Reviews > Quarterly` date.
- Refresh the active quarter section (e.g., `Q1 2026`) with current priorities.

**After Annual:**
- Refresh `2026 Annual` identity/anti-goals/success criteria.
- Refresh active quarter section and set first week goals accordingly.

---

## ADHD-SPECIFIC SAFEGUARDS

**Time-boxing enforcement:**
* Monthly: HARD stop at 30 minutes (use timer)
* Quarterly: HARD stop at 60 minutes (use timer)
* Annual: HARD stop at 90 minutes (use timer)

**If time runs out mid-section:**
* Save progress to `state/STATE.md`
* Note where you stopped
* Resume next session (don't force completion)

**Why:** ADHD + perfectionism = reviews that take 3 hours and never finish. Time-boxing prevents this.

**Activation energy management:**
* Always start with wins (positive activation)
* Always end with ONE immediate action (prevents "planned but never started")
* Quick wins embedded throughout (dopamine maintenance)

**Decision fatigue reduction:**
* Binary choices wherever possible (delete OR do, not "maybe later")
* Constrained options (2 primary pillars max, not "as many as you want")
* Pre-decided anti-goals (removes in-the-moment willpower requirements)

## Compliance (verify before presenting review output)

### Monthly
- [ ] Scanned last 4 weekly reviews from archive files
- [ ] Recurring deferred tasks identified with binary choice (delete or schedule)
- [ ] Pillar starvation check against active quarter priorities in `STATE.md`
- [ ] Horizon scan for 30-60 day deadlines
- [ ] Resource backlog triaged (classify only — no inline @digest runs)
- [ ] `Reviews > Monthly` updated

### Quarterly
- [ ] Archived weekly sessions from last quarter reviewed (history/ files)
- [ ] Quarterly goal audit completed (stated vs actual for each pillar)
- [ ] Annual identity statement checked for drift
- [ ] Exactly 2 pillars marked as primary focus (not more)
- [ ] Quick wins identified for first month
- [ ] last_quarterly_review updated

### Annual
- [ ] Last 4 quarterly reviews reviewed from archive
- [ ] Identity statement is one sentence, connected to actual behavior
- [ ] Anti-goals are specific, behavioral, and enforceable (not vague)
- [ ] Q1 priorities set and first week's goals defined
- [ ] Activation question asked (one immediate action)
