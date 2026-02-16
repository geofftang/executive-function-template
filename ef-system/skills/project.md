# Skill: @project — Project Lifecycle

**Purpose:** Manage project creation and completion.

**Reference:** `ef-system/SYSTEM-STRUCTURE.md` for file structure, templates, conventions, and naming rules.

---

## @project create

### 1. Create Project Structure

```
projects/{project-name}/
  {PROJECT}.md             ← Tasks + context + session log (single file)
  CLAUDE.md                ← AI context (auto-loaded by Claude Code)
  tasks/                   ← Task detail pages (create as needed)
    archive/               ← Completed task subpages
  decisions/               ← Design decision records (ADR pattern, see SYSTEM-STRUCTURE.md §3.2.1)
  reference/               ← Static knowledge, methodology (create as needed)
```

Use templates from `ef-system/SYSTEM-STRUCTURE.md > Templates` for CLAUDE.md and {PROJECT}.md content.

### 2. Problem Quality + Execution Audit (always run)

Run `@plan` at project-level depth. This covers both layers — problem quality (P1-P4) and execution quality (1-5). Record P1-P4 results in `{PROJECT}.md > Foundation` section (persistent — referenced by `@weekly-review` C.7). Record execution results in session log. See `ef-system/skills/plan.md`.

**For unclear or complex projects**, use AskUserQuestion to interview deeply before running @plan. Ask about: the specific problem, who it's for, what success looks like, what they've seen that's similar, must-haves vs nice-to-haves. Let answers guide follow-ups.

**For problem-oriented projects**, use these to seed P1 (Right problem?):
1. What specifically isn't working?
2. What would fixed look like?
3. What can't change?
4. What have you tried?

### 3. Define Milestones

From P2 objectives and chosen approach, define ordered milestones for the Roadmap:
- Each milestone has a clear "done when" definition
- Order by dependency and value (what must come first? what proves viability?)
- First milestone should validate the core assumption

Populate initial backlog items under each milestone header.

### 4. Design Decision Scan (before designing from scratch)

Scan `decisions/` folders of **relevant** active/completed projects for applicable patterns. Not a vault-wide search — pick 2-3 projects with similar domain, methodology, or challenges.

- Check: has a similar design problem been solved already?
- Check: are there rejected approaches worth knowing about?
- Check: AGENTIC-PATTERNS.md for system-level patterns that apply

If applicable patterns found, create inherited decision files in `decisions/` with source project noted.

### 5. Launch Checklist (for projects with build complexity)

Skip for simple projects. Use when there are real architectural choices.

- [ ] 3+ alternative approaches considered
- [ ] Top choice justified (why this over others)
- [ ] Core assumption identified (what must be true for this to work)
- [ ] Smallest possible validation defined
- [ ] Pivot triggers defined (when to abandon or change approach)

**If any of these fire → create BUILD-PLAN.md immediately.** Inception decisions that involve choosing between approaches are architecture.

---

## @project complete

Run when all milestones are done or the project is being closed.

### 1. Final State

- Run @checkpoint for final state save
- Mark all remaining Focus/Operational items as done or cancelled with reason
- Update Roadmap: all milestones marked complete

### 2. Knowledge Distillation

- Are there generalizable insights worth moving to area folders? (per PARA quarterly distillation rule)
- Are there decision files worth promoting to system-wide patterns? (check `decisions/` for patterns that repeated across this project → candidate for AGENTIC-PATTERNS.md)

### 3. Archive

- Move project folder to `archive/` (or mark as archived in frontmatter)
- Update `ef-system/EF-SYSTEM.md` active projects list
- Keep decisions/ files accessible (they may still have backlinks from other projects)

### 4. Confirm

Surface what was accomplished (1-3 lines). ADHD note: completion can feel anti-climactic — naming what was done helps close the loop.
