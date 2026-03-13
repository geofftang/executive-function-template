---
name: triage
description: "Capture and route unstructured items; prevent thread abandonment during topic shifts. Explicit: user dumps unstructured item (email, idea, screenshot). Implicit: topic pivot occurs before prior thread has explicit next-step or capture. The interrupt IS the value — capture and route, then return to active thread."
---

# TRIAGE
**Schema Authority:** All state updates follow `state/STATE.md` + `execution/SYSTEM-STRUCTURE.md`.
**Sync Logic:** Use existing session state if "warm." If state is ambiguous or >1 hour old, read Obsidian `state/STATE.md` before proceeding.

**Purpose:** Route items into the right place with the right priority. Two modes:
- `@triage` — full sweep of all inboxes
- `@triage [item]` — quick-route a single item

---

## Mode: Single Item (`@triage [item]`)

**STEP 1: SIZE GAUGE**
* MICRO (< 5 mins) → **DO NOW.** Execute immediately.
* QUICK WIN (5-15 mins) → Add to Logistics "Quick Tasks"
* STANDARD (5-45 mins) → Route to bucket (Step 3)
* HEAVY (45m - 2h) → Break into 2-3 Standard tasks
* PROJECT (> 2h) → Trigger decomposition

**STEP 2: EISENHOWER**
* **Query A:** Real deadline < 3 days OR immediate consequences?
* **Query B:** Moves toward weekly goals?
* Urgent + Important → high priority
* Urgent + Not Important → Is this someone else's urgency?
* Not Urgent + Important → Schedule this week, flag if at risk of being forgotten
* Not Urgent + Not Important → Defer or delete

**STEP 3: ROUTE**
Classify execution owner (Step 4 below), then Tool Elevation (Step 5A) then Bucket Assignment (Step 5B).

---

## Mode: Full Sweep (`@triage`)

**STEP 1: CAPTURE**
* **Action:** List all unprocessed items (from head, email, capture app, messages, etc.)
* **Email Rule:** Search `in:inbox` via `[email tool]` (all emails in inbox, not just unread). Read ≠ resolved.
* **Capture App Rule:** Check `[capture app]` inbox for unprocessed items.
* **Priority Signal:** Recruiter/interview emails with scheduling requests are ALWAYS top priority regardless of read status.
* **Note:** If inboxes are unmanageable (>20 items), defer some to tomorrow's processing

---

**STEP 2: SIZE GAUGE**
* **Query:** "Estimate Time Cost."
  * **MICRO (< 5 mins):** **DO NOW.** Stop triage, execute, then resume.
  * **QUICK WINS (5-15mins):** Add to Logistics "Quick Tasks" list
  * **STANDARD (5-45 mins):** Sort into bucket (Step 4)
  * **HEAVY (45m - 2h):** **Break into 2-3 Standard tasks.**
  * **PROJECT (> 2h):** **TRIGGER DECOMPOSITION.**

  **Purpose:** Prevent frustration from impossibly-sized tasks; clear micro-tasks immediately to build momentum
---

**STEP 3: EISENHOWER CLASSIFICATION**
* **Query A:** "Does this have a real deadline < 3 days OR immediate consequences?"
* **Query B:** "Does this move you toward your weekly goals?"

**Results (for noting, not necessarily doing today):**
* **Urgent + Important** → Mark as high priority
* **Urgent + Not Important** → Evaluate if this is someone else's urgency; consider minimizing/delegating
* **Not Urgent + Important** → Schedule for later this week
* **Not Urgent + Not Important** → Defer or delete

**Purpose:** Distinguish between "feels urgent" (ADHD bait) and "actually matters" (your goals)

---

**STEP 4: EXECUTION OWNER**
Claude-complete / Claude-draft / mine — based on whether the task requires your judgment, presence, or voice.

---

**STEP 5: TOOL PLACEMENT**

**STEP 5A: Tool Elevation (only if task needs special handling)**
**Move to `[task app]` Recurring if:**
* Must happen on schedule (weekly/monthly/quarterly)
* NOT daily (daily = too much stress on todo list; add to `[routine app]` instead)
* Causes stress if ignored (maintenance that can't slip)
* Examples: Weekly budget review, monthly air filter, quarterly tax prep

**Move to `[task app]` Reminder if:**
* Blocked by external trigger (location, date, event)
* Can't execute now, need situational cue
* Examples: "Buy gift at mall", "Call plumber during business hours"

**Move to Habits if:**
* Want to build daily/frequent streak
* OK with inconsistency (not must-do)
* Active self-improvement work that needs regular attention
* Relationship maintenance (daily connection rituals)
* High-friction routines needing accountability
* **Limit: 5-7 active habits** - review weekly if over capacity

**Move to `[routine app]` if:**
* Fixed daily essential that anchors the day
* Examples: Morning planning, medications, shutdown routine

**Otherwise: Stays in Obsidian bucket (see RULES.md Tool Ecosystem)**

**STEP 5B: Bucket Assignment**

* **Projects:** Proactive, deliberate goals (passion projects or side income)
* **[Bucket 1]:** Your primary perpetual bucket (e.g., relationship, self-improvement)
* **[Bucket 2]:** Your secondary perpetual bucket (e.g., growth areas, creative work)
* **Logistics:** Reactive maintenance (finance, admin, household) - includes "Quick Tasks" for micro tasks

## `[task app]` Operations
- **Before completing or deleting a task via MCP**, always state the task name in plain text first so the user can confirm before approving the tool call.

## Compliance (full sweep mode only)
- [ ] Read this skill file completely before starting
- [ ] Checked email inbox via `[email tool]` (not just unread — all inbox)
- [ ] Checked `[capture app]` inbox for unprocessed items
- [ ] Every item classified with size gauge (micro/quick/standard/heavy/project)
- [ ] Every item has Eisenhower classification (urgent/important)
- [ ] Tool placement decided for each item (Obsidian bucket / `[task app]` / Habits / skip)
- [ ] Micro tasks (<5 min) executed immediately, not just listed
