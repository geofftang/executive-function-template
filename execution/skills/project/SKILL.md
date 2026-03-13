---
name: project
description: "Project lifecycle management: create new bounded projects (with @plan inception, milestone roadmap, and design decision scan) or archive completed ones (with distillation of reusable knowledge back to areas). Use when starting a new initiative or closing out finished work."
disable-model-invocation: true
---

# Skill: @project — Project Lifecycle

**Purpose:** Manage project creation and completion.

**Reference:** `execution/system-structure.md` for file structure, templates, conventions, and naming rules.

---

## @project create

### 1. Create Project Structure

```
projects/{project-name}/
  {PROJECT}.md             ← Tasks + context + session log (single file)
  CLAUDE.md                ← AI context (auto-loaded by Claude Code)
  tasks/                   ← Task detail pages (always created)
    tasks.base             ← Base view filtered to status == "in-progress" (always created)
    archive/               ← Completed task subpages
  decisions/               ← Design decision records (ADR pattern, see execution/system-structure.md §3.2.1)
  reference.md             ← Support material: research, findings, context (always created)
```

Use templates from `execution/system-structure.md > Templates` for CLAUDE.md and {PROJECT}.md content.

### 2. Problem Quality + Execution Audit (always run)

Run `@plan` at project-level depth. This covers both layers — problem quality (P1-P4) and execution quality (1-8). Record P1-P4 results in `{PROJECT}.md > Foundation` section (persistent — referenced by `@weekly-review` C.7). Record execution results in session log. See `execution/skills/plan.md`.

**For unclear or complex projects**, use AskUserQuestion to interview deeply before running @plan. Ask about: the specific problem, who it's for, what success looks like, what they've seen that's similar, must-haves vs nice-to-haves. Let answers guide follow-ups.

**For problem-oriented projects**, use these to seed P1 (Right problem?):
1. What specifically isn't working?
2. What would fixed look like?
3. What can't change?
4. What have you tried?

### 3. Define Workstreams

From P2 objectives and chosen approach, define workstreams (see `decisions/2026-03-01-milestone-item-sizing.md`):
- **3-5 max** per project. Each must pass the "done or not done" test.
- Named by the problem they solve, not by category (anti-pattern: "research," "infrastructure")
- Can be sequential (numbered stages) or parallel — don't label which
- First workstream should address the highest-risk assumption
- **Operational** goes last — catches chores not tied to any workstream

Populate initial task items as checkboxes under each workstream heading.

### 4. Design Decision Scan (before designing from scratch)

Scan `decisions/` folders of **relevant** active/completed projects for applicable patterns. Not a vault-wide search — pick 2-3 projects with similar domain, methodology, or challenges.

- Check: has a similar design problem been solved already?
- Check: are there rejected approaches worth knowing about?
- Check: execution/AGENTIC-PATTERNS.md for system-level patterns that apply

If applicable patterns found, create inherited decision files in `decisions/` with source project noted.

### 5. Launch Checklist (for projects with build complexity)

Skip for simple projects. Use when there are real architectural choices.

- [ ] 3+ alternative approaches considered
- [ ] Top choice justified (why this over others)
- [ ] Core assumption identified (what must be true for this to work)
- [ ] Smallest possible validation defined
- [ ] Pivot triggers defined (when to abandon or change approach)

**If any of these fire → create decision files in `projects/{project}/decisions/` immediately.** Inception decisions that involve choosing between approaches are architecture.

---

## @project complete

Run when all workstreams are done or the project is being closed.

### 1. Final State

- Run @checkpoint for final state save
- Mark all remaining workstream/Operational items as done or cancelled with reason
- Verify all workstreams complete

### 2. Knowledge Distillation

- Are there generalizable insights worth moving to area folders? (per PARA quarterly distillation rule)
- Are there decision files worth promoting to system-wide patterns? (check `decisions/` for patterns that repeated across this project → candidate for execution/AGENTIC-PATTERNS.md)

### 3. Archive

- Move project folder to `archive/` (or mark as archived in frontmatter)
- Update `projects/ef-system/ef-system.md` active projects list
- Keep decisions/ files accessible (they may still have backlinks from other projects)

### 4. Confirm

Surface what was accomplished (1-3 lines). ADHD note: completion can feel anti-climactic — naming what was done helps close the loop.
