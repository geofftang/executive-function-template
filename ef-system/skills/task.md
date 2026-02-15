# @task — Task Lifecycle Management

**Purpose:** Create and manage task lifecycle (creation, status updates, routing). Single entry point for all task operations. Automatically syncs task frontmatter ↔ {PROJECT}.md sections.

---

## Usage

### Mode 1: Explicit (You know exactly what to do)

#### Create
```
@task create [name]
```
- Creates new task file in `{active_project}/tasks/{task-slug}.md`
- Initializes frontmatter (status: pending, priority, created date)
- Adds to {PROJECT}.md Backlog section
- Asks: title, description, priority, related tasks

#### Update
```
@task update [name]
```
- Reads current task status from frontmatter
- Asks: what's the new status? (pending → in_progress → done/blocked/cancelled)
- Updates frontmatter (status, blocker if applicable, last_updated)
- Auto-routes task to correct section in {PROJECT}.md
- Adds dated log entry to task file if significant transition

---

### Mode 2: Flexible (Let @task figure it out)

#### Handle
```
@task handle [work summary]
```

**Input:** Brief description of what you did/discovered during the session. Examples:
- "Finished auth refactor, all tests passing, ready to merge"
- "Started database migration but hit schema conflict, need to rethink approach"
- "Worked on three things: wrote metrics collector, researched caching strategies, found old TODOs in code"
- "This is blocking the GTM work because we need the API first"

**@task processes:**
1. **Parse the work summary** — what happened? (completed, blocked, discovered, started, etc.)
2. **Match to existing tasks:**
   - Scan `{active_project}/tasks/` for matching task names or slugs
   - If match found: update that task (add findings, status transition, blocker if applicable)
   - If no clear match: ask "Should I create a new task for this?"
3. **Determine task hierarchy:**
   - Is this work part of a Focus item? (e.g., "This is part of the GTM refactor")
   - Should this be a subtask? (depends_on field, nested in {PROJECT}.md)
   - Is this a blocker for another task? (add blocker note to blocking task)
4. **Determine status transition:**
   - If work completed → offer: mark done?
   - If work hit blocker → offer: mark blocked + blocker?
   - If work just started → offer: move to in_progress?
   - If work discovered something new → offer: create subtask?
5. **Execute operations:**
   - Create new task file if needed
   - Update existing task file (findings, status, blocker)
   - Update {PROJECT}.md (move to correct section, add dependencies)
   - Add dated session log entry
6. **Confirm what changed:**
   - "Updated tasks/auth-refactor (in_progress → done). Moved to Done section."
   - Or: "Created tasks/schema-migration (blocked on rethinking approach). Moved to Operational."
   - Or: "Created tasks/metrics-collector + tasks/caching-research. Both pending. Added to Backlog."

---

## Task File Structure

**Location:** `{active_project}/tasks/{task-slug}.md`

**Frontmatter:**
```yaml
---
status: pending | in_progress | blocked | done | cancelled
priority: high | medium | low
created: 2026-02-12
last_updated: 2026-02-12
blocker: "[blocker description]" (only if status: blocked)
depends_on: ["parent-task-slug"] (optional, for subtasks)
focus_level: high | medium | low (optional, signals Focus vs Operational)
---
```

**Content:**
```
# [Task Name]

## Description
[What is this task?]

## Context
[Why is this important? Related to what?]

## Key Findings
[Discoveries during work on this task]

## Blocked On
[If blocked: what's blocking? What would unblock?]

## Next Steps
[What's the next action?]

### Session Log
- **2026-02-12:** Brief summary of work done, findings
- **2026-02-11:** Previous session entry
```

---

## Routing Logic

When status changes, @task auto-routes to the right section in {PROJECT}.md:

| Status | {PROJECT}.md Section | Routing Rules |
|--------|----------------------|---------------|
| pending | Backlog | Default for new tasks |
| in_progress | Focus | Actively being worked on NOW |
| blocked | Operational | Waiting on blocker, unblock then resume |
| done | Done (callout) | Mark completed, archive if >1 week old |
| cancelled | Done (callout) | Mark cancelled with reason |

**Routing algorithm:**
1. Read task status from frontmatter
2. Identify section for that status (above)
3. Find task entry in current {PROJECT}.md section (by slug)
4. Move entry to target section
5. Update entry metadata (priority, blocker if applicable)

---

## Execution Workflow

### @task handle (Flexible Mode)

1. **Parse work summary** for semantic signals:
   - Completed work: "finished", "done", "merged", "ready"
   - Blocker: "blocked", "stuck", "hit", "conflict", "need to", "waiting on"
   - Discovery: "found", "discovered", "realized", "researched"
   - Started: "started", "began", "in progress"
   - Multiple threads: "also", "separately", "meanwhile"

2. **Match to existing tasks:**
   ```
   FOR EACH semantic signal:
     - Search tasks/ folder for task names containing keywords
     - If found: propose update (findings + status transition)
     - If not found: ask "Create new task for this?"
   ```

3. **Hierarchy & dependencies logic:**
   - Ask: "Is this part of a Focus item or blocking one?"
   - If subtask: ask parent task name, set `depends_on: [parent-slug]`
   - If blocker: add note to blocking task's "Blocked On" section

4. **Status inference:**
   - "completed" + all tests passing → in_progress → done
   - "blocked on X" → in_progress → blocked (add blocker)
   - "just started" → pending → in_progress
   - "discovered" without clear owner → ask: new task or add to existing?

5. **Execute all operations:**
   - Create task files if new
   - Update existing task files (append findings, update status, add blocker)
   - Update {PROJECT}.md (move entries, create new entries, add dependencies)
   - Append session log entries with dated summary

6. **Confirm to user:**
   ```
   Processed work summary:
   ✅ Updated tasks/auth-refactor (in_progress → done). Moved to Done section.
   ⏳ Created tasks/schema-migration (blocked on approach redesign). Added to Operational.
   📝 Appended findings to tasks/metrics-collector (in_progress).
   ```

---

### @task create

1. **Detect active project** from conversation context or ask user
2. **Generate slug** from task name (lowercase, hyphens, no special chars)
3. **Ask for details:**
   - Title (required)
   - Priority: high/medium/low (required)
   - Description: 1-2 sentences (required)
   - Depends on (optional task slug)
4. **Create task file** with frontmatter + template content
5. **@plan quick-scan (high priority only)** — If priority is high, run @plan task-level scan (one-line finding). Append to task file Next Steps if actionable.
6. **Add to {PROJECT}.md Backlog:**
   ```markdown
   - [ ] [[tasks/{slug}|{Task Name}]] (priority: {priority}) — {1-line description}
   ```
6. **Confirm:** "Created tasks/{slug}.md and added to {PROJECT}.md Backlog"

### @task update

1. **Identify task** (by slug or name from conversation)
2. **Read current status** from task file frontmatter
3. **Ask for new status:**
   ```
   Current status: in_progress
   Transition to? (options: blocked, done, cancelled, back to pending)
   ```
4. **If blocked:** ask "What's blocking this? (brief description)"
5. **If done/cancelled:** ask "Summary for Done section? (1 line)"
6. **Update task file:**
   - Update `status:` in frontmatter
   - Update `last_updated:` to today
   - Add blocker to frontmatter if blocked
   - Append to Session Log: "**{DATE}:** Status: {old_status} → {new_status}. {Brief reason if provided}"
7. **Update {PROJECT}.md:**
   - Remove entry from old section
   - Add entry to new section
   - Format example:
     - **In Backlog:** `- [ ] [[tasks/slug|Name]] (priority: high)`
     - **In Focus:** `- 🔄 [[tasks/slug|Name]] (in_progress, priority: high)`
     - **In Operational:** `- ⏸️ [[tasks/slug|Name]] (blocked: waiting on X)`
     - **In Done:** `- ✅ [[tasks/slug|Name]] (done 2026-02-12)`
8. **Confirm:** "Updated tasks/{slug}.md — status {old} → {new}. Moved to {PROJECT}.md {section}"

---

## Special Cases

### Blocking a Task
- User says "this is blocked on Y"
- @task update interprets as transition to blocked
- Adds blocker field: `blocker: "Waiting on task Y"`
- Asks: should I update task Y's entry to mark it's blocking something?

### Unblocking a Task
- User says "Y is done, unblock this"
- @task update detects current status is blocked
- Asks: move back to in_progress?
- Removes blocker field, updates status, moves to Focus section

### Task Dependencies
- When creating task, ask: "Does this depend on another task?"
- Store in frontmatter: `depends_on: ["parent-task-slug"]`
- When unblocking/completing parent task, @task could suggest "This unblocks subtask X. Start it?"

### Subtasks
- Subtasks live in same folder, named `parent-slug--child-slug.md`
- In {PROJECT}.md, subtasks are nested (markdown indentation):
  ```
  - [ ] [[tasks/parent|Parent Task]]
    - [ ] [[tasks/parent--child|Subtask]]
  ```

---

## Integration with Other Skills

**@checkpoint:**
- Detects tasks worked on during session
- Calls `@task handle [summary of work]` with findings
- @task intelligently determines what operations are needed (create/update/nest/status change)
- {PROJECT}.md syncs automatically
- User can accept @task's decisions or review before committing

**Manual usage:**
- User can call `@task handle` directly: "@task handle I finished auth refactor and all tests pass"
- Same processing as @checkpoint-initiated, but user-initiated
- Or use explicit mode (`@task create`, `@task update`) when you want full control

**@new-task:**
- Deprecated. Use `@task create` for explicit task creation.

**{PROJECT}.md:**
- @task reads/writes all sections (Focus, Operational, Backlog, Done)
- Single source of truth for task routing
- Task files are single source of truth for detailed work

---

## Compliance Checklist

- [ ] Task slug generated (lowercase, hyphens, unique)
- [ ] Task file created with complete frontmatter
- [ ] {PROJECT}.md updated with correct entry in target section
- [ ] If blocked: blocker field added to frontmatter
- [ ] If done/cancelled: entry moved to Done callout
- [ ] Session log entry added if significant transition
- [ ] User confirmed with task slug + section it moved to

---

## Notes

- **Task files are append-only.** Never delete Session Log entries. Archive old entries only during quarterly refactor.
- **Frontmatter is source of truth for status.** {PROJECT}.md reflects frontmatter state, not the other way around.
- **Priority can stay the same or change** when routing. Ask user if priority should shift (e.g., blocked tasks might drop to low priority).
- **No time estimates in frontmatter.** Time-boxing happens in @checkpoint or task content, not in routing.
