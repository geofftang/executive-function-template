---
name: checkpoint
description: "Save work state, document progress, create clean stopping points. Explicit: user says \"checkpoint\", \"save my work\", \"I'm done for now\"; session ending; after risky multi-step operation. Implicit: at explicit boundary events — major task completion, risky change completed, user stepping away. As hyperfocus exit ramp: suggest only after repeated same-thread turns with no boundary update AND user acknowledges time-loss. Do not trigger based on turn count alone."
---

# Skill: @checkpoint (State Save + Alignment Check)

## Purpose
Save current session state and check alignment with plan. This is the **exclusive** mechanism for writing session logs and committing state.

## Execution

1. **Daily Intention + Priority Discipline:**
   - Compare actual work to: (a) `STATE.md` Intention, (b) current weekly priorities, (c) `{PROJECT}.md > Foundation > Success Criteria` if this project has one — flag any deliverable that's drifted from its success criteria.
   - Mark alignment as YES / NO / PARTIAL.
   - If work was off-priority, ask whether it should be:
     - A) captured as backlog,
     - B) mapped under current priority, or
     - C) promoted above current priority.
   - **Active-work gate:** if current work is not the in-progress task (from any workstream or Operational), classify as either:
     - `justified_detour` (required blocker rotation), or
     - `drift` (unplanned work). If drift, capture via `@task` and return to in-progress task.
   - **Intake rule:** new work items must be created via `@task create` (default `pending`) unless explicitly promoted.
   - **Material reprioritization rule:** if Focus #1 changed, a Focus item was displaced, or a deadline shifted, add one compact reprioritization log line to `STATE.md`:
     - `YYYY-MM-DD | X→Y | reason | deferred: Z | review: YYYY-MM-DD`

2. **Update `context` frontmatter:**
   - **Task pages:** For each task worked on this session, overwrite `context`. One line: progress summary + what's next + where to look for detail. Example: `context: "Research done. Execution mode — shopping Wed, staging Thu. See Plan section."`
   - **Project hubs:** For each project touched, overwrite `context`. One line: project state + which task is active. Example: `context: "MDMA session Fri Mar 6. Active task: relationship-work (execution mode)."`
   - Always set `context-updated: YYYY-MM-DD` alongside `context`.
   - If a page has no `context` field yet, add both `context` and `context-updated` to frontmatter.

3. **Update `state/STATE.md`:**
   - Append only. Never delete prior entries.
   - Add concise completion lines for current day.
   - Confirm/update focused-hours estimate if known.
   - Add carry-forward items without forcing a full plan.
   - Update `Execution Adherence` fields for the current week:
     - `committed_items`
     - `completed_committed_items`
     - `adherence_score` (completed/committed)
     - `drift_label` (`on_plan`, `justified_detour`, `drift`, `blocked`)
     - `stale_in_progress_reviewed` (`yes/no`)
   - Update Watch sections when applicable:
     - **Drift Watch:** off-goal work that pulled focus from weekly priorities
     - **Constraint Watch:** blockers that materially limit execution
     - **Decision Watch:** active decisions with timing/threshold pressure

4. **Task + Project Sync:**
   - Scan active project workstream/Operational checklists for newly completed items in this session.
   - For any completed item that maps to a task page, require a corresponding `@task` lifecycle update.
   - Run `@task handle [brief work summary]` for task lifecycle updates.
   - Write a 2-3 line "Cognitive Cache" to `{PROJECT}.md` session log with:
     - key technical finding,
     - decision/constraint,
     - next-session North Star.

5. **Automatic URL Routing:**
   - For each new URL surfaced in session context, run `@digest capture [URL]`.
   - Add resulting resource links to task/project `References` where relevant.

6. **Reference Material Routing:**
   - If session produced research or findings broader than one task (design explorations, external pattern analysis, workstream-level context), file in `reference/` or `reference.md` — not in task page Key Findings.
   - Task-scoped findings stay in the task page. Workstream/project-scoped insights go to `reference/`.

7. **Git Backup:**
   - Commit `state/STATE.md` as `checkpoint: state update`.
   - If project files changed, ask whether to commit now or defer.
   - Push when checkpoint commit is complete.

## Compliance
- [ ] `context` frontmatter updated on active task page(s)
- [ ] `STATE.md` updated (append-only)
- [ ] Relevant task lifecycle changes routed through `@task`
- [ ] Newly completed checklist items reconciled with task-page lifecycle status
- [ ] `{PROJECT}.md` cache updated when project work occurred
- [ ] Off-priority work categorized (backlog / mapped / promoted)
- [ ] Off-focus work classified (`justified_detour` or `drift`) and routed
- [ ] New work items created via `@task` (default pending unless explicitly promoted)
- [ ] Material reprioritizations logged in compact one-line format
- [ ] Watch sections updated when new drift/constraints/decisions emerged
- [ ] New URLs captured via `@digest capture`
- [ ] Checkpoint commit completed (or explicitly deferred for project files)
- [ ] @plan quick-scan on session's primary work (flag one finding if applicable)
- [ ] Parallel-tab safety check done before writing `{PROJECT}.md`

## Session Context Preservation
At checkpoint, preserve high-signal context that is otherwise lost:
1. External references that informed decisions
2. User constraints/preferences stated during session
3. Reasoning behind key decisions (including rejected options)
4. Pending questions to revisit

## Notes
- No skill other than `@checkpoint` may write `{PROJECT}.md` session logs.
- `{PROJECT}.md` log is an AI-to-AI handoff cache, not a user diary.
- Session log hygiene and archive policy are defined in `execution/SYSTEM-STRUCTURE.md`.
