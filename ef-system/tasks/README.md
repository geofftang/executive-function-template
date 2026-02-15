# Tasks

Deep-dive subpages for system-level work that's too detailed for EF-SYSTEM.md.

**When to create a task file:**
- Task needs more than 2-3 lines of spec
- Task has multiple deliverables or steps
- Task is blocked and needs context preserved for later

**File format:** `{task-name}.md` with frontmatter:
```yaml
---
status: pending | in_progress | done | blocked | cancelled
priority: high | medium | low
created: YYYY-MM-DD
blocked_by: "description of blocker"
---
```

**Task lifecycle:** See `ef-system/skills/task.md` for the full @task protocol.
