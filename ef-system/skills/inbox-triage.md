# INBOX TRIAGE
**Schema Authority:** All state updates follow the STATE schema defined in `ef-system/SYSTEM-STRUCTURE.md` and `ef-system/STATE.md`.
**Sync Logic:** Use existing session state if "warm." If state is ambiguous or >1 hour old, read Obsidian `ef-system/STATE.md` before proceeding.

**Purpose:** Process new/uncategorized tasks from inboxes (email, notes, head) into organized buckets. Run this during Mode A or anytime inboxes feel overwhelming.

---

**STEP 1: CAPTURE**
* **Action:** List all unprocessed items (from head, email, capture tool, messages, etc.)
* **Email Rule:** Search `in:inbox` (all emails in inbox, not just unread). Read ≠ resolved.
* **Priority Signal:** Recruiter/interview emails with scheduling requests are ALWAYS top priority regardless of read status.
* **Note:** If inboxes are unmanageable (>20 items), defer some to tomorrow's processing

---

**STEP 2: THE SIZE GAUGE**
* **Query:** "Estimate Time Cost."
  * **MICRO (< 5 mins):** **DO NOW.** Stop triage, execute, then resume.
  * **QUICK WINS (5-15mins):** Add to catch-all area "Quick Wins" list
  * **STANDARD (5-45 mins):** Sort into bucket (Step 4)
  * **HEAVY (45m - 2h):** **Break into 2-3 Standard tasks.**
  * **PROJECT (> 2h):** **TRIGGER DECOMPOSITION.**

  **Purpose:** Prevent frustration from impossibly-sized tasks; clear micro-tasks immediately to build momentum
---

**STEP 3: EISENHOWER CLASSIFICATION**
* **Query A:** "Does this have a real deadline < 3 days OR immediate consequences?"
* **Query B:** "Does this move you toward your weekly goals from Mode D?"

**Results (for noting, not necessarily doing today):**
* **Urgent + Important** → Mark as high priority
* **Urgent + Not Important** → Evaluate if this is someone else's urgency; consider minimizing/delegating
* **Not Urgent + Important** → Schedule for later this week
* **Not Urgent + Not Important** → Defer or delete

**Purpose:** Distinguish between "feels urgent" (ADHD bait) and "actually matters" (your goals)

---

**STEP 4: TOOL PLACEMENT**

**STEP 4A: Tool Elevation (only if task needs special handling)**
**Move to Recurring Tasks tool if:**
* Must happen on schedule (weekly/monthly/quarterly)
* NOT daily (daily = too much stress on todo list so would add to a routine app)
* Causes stress if ignored (maintenance that can't slip)
* Examples: Weekly budget review, monthly air filter, quarterly tax prep

**Move to Reminders/Location tool if:**
* Blocked by external trigger (location, date, event)
* Can't execute now, need situational cue
* Examples: "Buy gift at mall", "Call plumber during business hours"

**Move to Habits tool if:**
* Want to build daily/frequent streak
* OK with inconsistency (not must-do)
* Active growth/self-improvement work that needs regular attention
* Relationship maintenance (daily connection rituals)
* High-friction routines needing accountability
* **Limit: 5-7 active habits** - review weekly if over capacity

**Move to Routine app if:**
* Fixed daily essential that anchors the day
* Examples: Morning planning, medications, shutdown routine

**Otherwise: Stays in notes app bucket (see CLAUDE.md Tool Ecosystem)**

**STEP 4B: Bucket Assignment**

* **[AREA_1]:** Primary focus area (top-priority goals)
* **[AREA_2]:** Relationship or second-priority area
* **[AREA_3]:** Growth/self-improvement areas currently neglected
* **[AREA_4]:** Catch-all — reactive maintenance (finance, admin, household, quick wins)
  * Sub-categories: Wellness / Creative / Fun-Social / Sustenance
  * Not formal projects - just prioritized idea lists (e.g., "cooking ideas to try")

## Compliance (verify before presenting triage results)
- [ ] Read this skill file completely before starting
- [ ] Checked email inbox via configured email tool (not just unread — all inbox)
- [ ] Checked capture inbox (configured quick-capture tool) for unprocessed items
- [ ] Every item classified with size gauge (micro/quick/standard/heavy/project)
- [ ] Every item has Eisenhower classification (urgent/important)
- [ ] Tool placement decided for each item (notes bucket / recurring / habits / skip)
- [ ] Micro tasks (<5 min) executed immediately, not just listed