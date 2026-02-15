# Projects

Bounded work with a specific goal. Each project is a flat folder containing a `{PROJECT}.md` hub.

**Structure:**
```
projects/
  my-project/
    my-project.md        ← project hub (focus, backlog, session log)
    CLAUDE.md            ← project-specific AI rules (optional)
    tasks/               ← deep-dive task subpages (optional)
```

**Rules:**
- One folder per project, flat (no nesting by area)
- `{PROJECT}.md` is the single source of truth for project state
- Link projects to areas via frontmatter: `areas: [livelihood, food]`
- Active project notes stay here. General knowledge moves to `areas/` during quarterly distillation.

**See:** `ef-system/SYSTEM-STRUCTURE.md` for full conventions.
