---
name: system-audit
description: "System health review — stale rules, outdated skills, dead decisions. Explicit: user invokes system-audit. Automatically included in weekly review (light mode). Implicit: none — periodic, not behavioral."
---

# Skill: @system-audit

## Purpose
Periodic review of the executive-function for rules, skills, and patterns that are stale, unenforced, duplicated, or ready to be codified. Replaces scattered system health checks across weekly/monthly reviews.

Called by `@weekly-review` (light mode). Full mode runs standalone on its own monthly cadence ([task app] recurring). Outputs a findings list — execute trivial fixes (<5 lines, obvious correctness) inline; everything else becomes a task in ef-system.

## Modes

### Light (weekly default)
Run when called from weekly review B3, or standalone without arguments.

1. **Diff scan:** `git log --since="1 week ago" --oneline -- CLAUDE.md execution/skills/ projects/ef-system/decisions/ execution/agentic-patterns.md`
2. **For each change this week:**
   - If it's a rule that claims to catch/prevent something: does it have a trigger mechanism? If not → propose how to codify it or flag as unenforced
   - If it's a new skill or skill change: is it tested? Any dead steps?
3. **Tag scan:** `grep -r "WORKAROUND:\|REVISIT:" CLAUDE.md execution/skills/ projects/ef-system/decisions/`
   - WORKAROUND → check if upstream fix shipped
   - REVISIT → check if condition has been met
4. **Output:** List of findings. For each: specific proposed edit or "no action needed."

### Full (monthly)
Run when called from monthly strategic review, or with `@system-audit full`.

Everything in Light mode, plus:

5. **Agentic patterns drift check.** Compare last-modified dates: `git log -1 --format=%ai execution/agentic-patterns.md` vs each active project's `{PROJECT}.md`. If agentic-patterns was updated more recently than a project hub, flag: "agentic-patterns changed since last [project] touch — skim for relevance."

6. **Full CLAUDE.md read-through.** For each rule in Execution Support + Core Rules + Design Principles:
   - Still accurate? (references correct tools, patterns, workflows)
   - Still needed? (not duplicated by a skill that now handles it)
   - Still enforced? (has a trigger, not just hoping Claude notices)
   - If answer is "no" to any → propose specific action (edit, create decision file, delete)

7. **Active skills scan.** For each skill in the skills table:
   - Read the skill file
   - Any steps referencing deprecated tools, removed patterns, or stale state schema?
   - Any compliance items that never get checked in practice?
   - Does it follow current conventions (e.g., [configured tool] not MCP for Google)?

8. **Architecture doc staleness.** For `projects/ef-system/decisions/` and any project-level architecture docs:
   - Do architecture descriptions match actual behavior? (e.g., references to Jarvis when Jarvis isn't active)
   - Do cross-references point to files that still exist?
   - Any sections duplicating content that now lives in skills or execution/system-structure.md?
   - If stale → propose trim/update. Architecture docs should be the system map (how pieces connect), not duplicate operational detail.

9. **Strengths lens pass.**
   - "Are we leveraging strengths or just compensating for weaknesses?" — check recent project designs, CLAUDE.md rules, skill changes
   - Chua's test: "Am I shipping faster than expected?" If yes, infrastructure investment is working. If no, it may be avoidance.
   - Any implicit abstraction transfers (formal methods applied cross-domain) that should be codified as system rules?

10. **Decision record audit.** Scan `projects/ef-system/decisions/` and `projects/*/decisions/`:
   - Any CLAUDE.md rules without a corresponding decision file? Flag for documentation.
   - Any decision files with `status: active` whose targets no longer exist? Flag for removal.
   - Any decisions repeating across 2+ projects? Flag for execution/agentic-patterns.md promotion.

11. **Content health pass.** Check for accumulation debt:
   - Resources with `status: pending` older than 2 weeks → digest or archive
   - Project files not following Workstreams + Operational structure → flag for migration
   - Active projects missing `tasks/` folder or `.base` file → create them
   - Any file grown >50% since last audit → review for context rot (redundant content, unintegrated appends, outdated sections)
   - Dead internal links: grep for path references in `.md` files under `projects/`, `execution/`, root governance → verify targets exist. Flag broken refs.
   - CLAUDE.md line count (current baseline: ~185 lines) → flag if growing without corresponding removals

12. **Agentic lens pass.** Across all system files reviewed:
   - What's repeatable that could be encoded as a skill or script?
   - What's manual that could be automated?
   - Any pattern appearing in 3+ places that should be consolidated?

13. **Output:** Grouped findings (stale, unenforced, duplicated, automation candidates). Each with a specific proposed edit. Present to user for approval before executing.

## Tag Convention

Two lifecycle tags for system files (scanned by this audit):

```
<!-- WORKAROUND: [description] | CHECK: [upstream fix condition] -->
<!-- REVISIT: [why this might change] | WHEN: [condition or timeframe] -->
```

- WORKAROUND = upstream bug or limitation (remove when fixed)
- REVISIT = intentionally temporary, experimental, or actively iterating (review when condition met)

## Compliance
- [ ] Mode-appropriate steps completed (light or full)
- [ ] Each finding has a specific proposed action (not just "this seems off")
- [ ] WORKAROUND/REVISIT tags checked against their conditions
- [ ] No findings left as observations — either propose an edit or note "no action needed"
