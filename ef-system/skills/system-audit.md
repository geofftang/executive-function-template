# Skill: @system-audit

## Purpose
Periodic review of the executive-function for rules, skills, and patterns that are stale, unenforced, duplicated, or ready to be codified. Replaces scattered system health checks across weekly/monthly reviews.

Called by `@weekly-review` (light mode) and `@strategic-reviews` monthly (full mode). Also invocable standalone.

## Modes

### Light (weekly default)
Run when called from weekly review B3, or standalone without arguments.

1. **Version Synchronization (HARD CHECK):** 
   - Read `master_version` from `ef-system/AGENTIC-PATTERNS.md` and `ef-system/SYSTEM-STRUCTURE.md`.
   - For each active project in `projects/`:
     - Read `pattern_version` from the project's `{PROJECT}.md`.
     - If `project_version < master_version` AND project is in "Focus" slot → **MANDATORY UPGRADE**. Propose specific edits to bring the project to current standard.
     - If `project_version < master_version` AND project is NOT in Focus → **LOG DEBT**. Add to project's backlog: "Needs pattern migration to vX.X".

2. **Diff scan:** `git log --since="1 week ago" --oneline -- CLAUDE.md ef-system/skills/ ef-system/BUILD-PLAN.md ef-system/AGENTIC-PATTERNS.md`
2. **For each change this week:**
   - If it's a rule that claims to catch/prevent something: does it have a trigger mechanism? If not → propose how to codify it or move to `BUILD-PLAN.md > Alignment & Drift Design > Not enforced`
   - If it's a new skill or skill change: is it tested? Any dead steps?
3. **Tag scan:** `grep -r "WORKAROUND:\|REVISIT:" CLAUDE.md ef-system/skills/ ef-system/BUILD-PLAN.md`
   - WORKAROUND → check if upstream fix shipped
   - REVISIT → check if condition has been met
4. **Output:** List of findings. For each: specific proposed edit or "no action needed."

### Full (monthly)
Run when called from monthly strategic review, or with `@system-audit full`.

Everything in Light mode, plus:

5. **Full CLAUDE.md read-through.** For each rule in Execution Support + Core Rules + Design Principles:
   - Still accurate? (references correct tools, patterns, workflows)
   - Still needed? (not duplicated by a skill that now handles it)
   - Still enforced? (has a trigger, not just hoping Claude notices)
   - If answer is "no" to any → propose specific action (edit, move to BUILD-PLAN.md, delete)

6. **Active skills scan.** For each skill in the skills table:
   - Read the skill file
   - Any steps referencing deprecated tools, removed patterns, or stale state schema?
   - Any compliance items that never get checked in practice?
   - Does it follow current conventions from the Tool Ecosystem table in CLAUDE.md?

7. **Architecture doc staleness.** For BUILD-PLAN.md and any project-level architecture docs:
   - Do architecture descriptions match actual behavior?
   - Do cross-references point to files that still exist?
   - Any sections duplicating content that now lives in skills or SYSTEM-STRUCTURE.md?
   - If stale → propose trim/update. Architecture docs should be the system map (how pieces connect), not duplicate operational detail.

8. **Strengths lens pass.**
   - "Are we leveraging strengths or just compensating for weaknesses?" — check recent project designs, CLAUDE.md rules, skill changes
   - Chua's test: "Am I shipping faster than expected?" If yes, infrastructure investment is working. If no, it may be avoidance.
   - Any implicit abstraction transfers (formal methods applied cross-domain) that should be codified as system rules?

9. **Decision record audit.** Scan `ef-system/decisions/` and `projects/*/decisions/`:
   - Any CLAUDE.md rules without a corresponding decision file? Flag for documentation.
   - Any decision files with `status: active` whose targets no longer exist? Flag for removal.
   - Any decisions repeating across 2+ projects? Flag for AGENTIC-PATTERNS.md promotion.

10. **Agentic lens pass.** Across all system files reviewed:
   - What's repeatable that could be encoded as a skill or script?
   - What's manual that could be automated?
   - Any pattern appearing in 3+ places that should be consolidated?

11. **Output:** Grouped findings (stale, unenforced, duplicated, automation candidates). Each with a specific proposed edit. Present to user for approval before executing.

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
