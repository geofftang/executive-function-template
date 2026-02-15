# Skill: @new-project — Project Inception

**Purpose:** Create a new project with proper structure and inception questions.

**Reference:** `ef-system/PROJECT-PATTERNS.md` for file structure, templates, conventions, and naming rules.

---

## Procedure

### 1. Create Project Structure

```
projects/{project-name}/
  {PROJECT}.md             ← Tasks + context + session log (single file)
  CLAUDE.md                ← AI context (auto-loaded by Claude Code)
  tasks/                   ← Task detail pages (create as needed)
    archive/               ← Completed task subpages
  reference/               ← Static knowledge, methodology (create as needed)
```

Use templates from `ef-system/PROJECT-PATTERNS.md > Templates` for CLAUDE.md and {PROJECT}.md content.

### 2. Inception Questions (always ask)

1. **Why?** — What's the motivation? (If you can't articulate it, you're not ready to start.)
2. **What does done look like?** — Concrete outcome, not vibes. "I have X that does Y" not "I understand Z better."
3. **What constraints exist?** — Budget, time, dependencies, skills you lack.
4. **What's already been tried?** — Prior art, your own attempts, adjacent projects. Prevents reinventing.

**For unclear or complex projects**, use AskUserQuestion to interview the user deeply before proceeding — don't rely on the initial brief. Ask about: the specific problem, who it's for, what success looks like, what they've seen that's similar, must-haves vs nice-to-haves. Let answers guide follow-ups. Then write the spec before building.

**For problem-oriented projects**, reframe as:
1. What specifically isn't working?
2. What would fixed look like?
3. What can't change?
4. What have you tried?

### 3. 7-Point Agentic Audit (always run)

After the 4 questions, run @plan at project-level depth (all 7 checks get explicit answers). Record results in {PROJECT}.md > Inception section. This catches automation opportunities, missing feedback loops, and sequencing errors before any work begins. See `ef-system/skills/plan.md`.

### 4. Launch Checklist (for projects with build complexity)

Skip for simple projects. Use when there are real architectural choices.

- [ ] 3+ alternative approaches considered
- [ ] Top choice justified (why this over others)
- [ ] Core assumption identified (what must be true for this to work)
- [ ] Smallest possible validation defined
- [ ] Pivot triggers defined (when to abandon or change approach)

**If any of these fire → create BUILD-PLAN.md immediately.** Inception decisions that involve choosing between approaches are architecture. They belong in BUILD-PLAN.md (stable, long-term), not just {PROJECT}.md (ephemeral). {PROJECT}.md gets a one-liner pointing to the BUILD-PLAN.md section.
