# Skill: @checkpoint (State Save + Alignment Check)

## Purpose
Save current session state and check alignment with plan. **This is the single checkpoint mechanism** — replaces the old `/update` command. Use when:
- About to do something risky
- Context getting long
- Stepping away (mid-session or ending)
- Want explicit save point
- Wrapping up a session
- After completing a task (auto-triggered by CLAUDE.md rule)

## Execution

1. **Daily Intention Check** (do first, takes 10 seconds):
   - Read STATE.md `Intention` (set by @morning-planning or user)
   - **On intention?** YES / NO / PARTIAL
   - If NO/PARTIAL: Log brief note on detour + reason (e.g., "Switched to agentic-rigor articles because soft budget constraint insights emerged")
   - This is just tracking, no judgment. Reviewed quarterly for opportunity cost assessment.

2. **Alignment Check + Priority Discipline** (informs project work):
   - Read STATE.md `Weekly Goals` AND check calendar for timeblocks during this session (if calendar access configured)
   - Compare actual work to: (a) top priority in Weekly Goals, (b) active timeblock
   - **If work detected on task NOT in Weekly Goals:**
     - Ask: "You worked on [task], which isn't in Weekly Goals. Is this:"
       - A) Relevant to current priority [X]? (capture as findings under priority task)
       - B) New task for backlog? (create as pending, don't mark in_progress)
       - C) Higher priority than [X]? (insert in This Week, bump existing down)
     - Update state.md This Week list based on user decision
     - Only mark task in_progress if user adds to Weekly Goals
   - Note: "Planned: [X]. Actual: [Y]." (neutral, no judgment)
   - **Tagging:** Prefix unplanned work with `⚡` in Completed section. Work matching active priority/timeblock gets no prefix. This creates data for weekly review.

3. **Update Obsidian `ef-system/STATE.md`** if meaningful progress:
   - **Read state.md first.** If `date` is already today AND `Intention` section exists (set by @morning-planning or user):
     - Do NOT overwrite `In Progress` or `Intention` — morning planning owns those for the day
     - Only APPEND to `Completed` — **summary only** (1-2 lines per item). Detail goes to project `{PROJECT}.md` session logs.
     - Only APPEND to `Notes` (never replace existing notes)
   - If `date` is not today (first session of the day): set `in_progress`, `completed`, `notes` normally
   - `today_summary.hours_worked` — estimate if known

4. **Update project documentation** (if working on a specific project):
   - Identify active project from files edited or conversation topic
   - Check what docs exist in `projects/<project>/`:
     | File | Update when... |
     |------|----------------|
     | {PROJECT}.md | Any session work → add to session log |
     | BUILD-PLAN.md | Design decisions, structural changes |
     | PLAYBOOK.md | Process/workflow changes |
   - Only update files that exist and are relevant to what was done
   - If unclear which project → ask user

5. **Task-specific work processing** (project-scoped):
   - Detect active project from files edited/conversation topic
   - **Collect work summary** from session:
     - What tasks/files were touched?
     - What was completed, discovered, or blocked?
     - Were multiple threads of work happening?
     - Any findings or insights to record?
   - **Delegate to @task:**
     - Call `@task handle [work summary]`
     - @task intelligently determines:
       - Update existing tasks or create new ones?
       - Status transitions (pending → in_progress → done/blocked)?
       - Task hierarchy (subtask of Focus item? blocking another task?)?
       - Dependencies and priorities?
     - @task syncs {PROJECT}.md automatically
   - **User reviews and accepts:**
     - @task presents its decisions: "Updated X, created Y, blocked Z"
     - User accepts (changes committed) or reviews/modifies (via explicit @task commands)
   - **Defer if uncertain:**
     - If task placement is ambiguous, @task asks user to clarify
     - Don't guess; let user make the call

6. **Digest Backlog Scan** (5 min, optional):
   - Scan each area hub (`areas/{area}/{area}.md`) for "Digest Backlog" section
   - Count articles per topic bucket
   - Flag topics with 3+ articles as "ready to digest"
   - Offer in checkpoint output: "Agentic: Digest backlog ready — [topic] has X articles. Digest now, or next week?"
   - This is async — not mandatory, just surfacing when critical mass is reached

7. **Tomorrow thoughts** (if user mentioned any):
   - Capture to STATE.md Notes section
   - Don't formalize into a plan — just note it

8. **Git backup** (always do this):

   a. **State files** — auto-commit with prefix:
      ```bash
      git add ef-system/STATE.md
      git commit -m "checkpoint: state update"
      ```

   b. **Other changed files** — check and prompt:
      ```bash
      git status --short
      ```
      - If project files changed: "Project files modified: [list]. Commit now with message, or defer?"
      - If user provides message: commit those files separately (clean atomic commit)
      - If user says defer: leave unstaged

   c. **Always push**:
      ```bash
      git push origin main
      ```

9. **Confirm to user:**
   ```
   Checkpoint saved. [Aligned with plan / Pivoted: X→Y]
   - State committed + pushed to origin
   - [Project files: committed as "X" / deferred]
   - Agentic: [one-liner finding, or "nothing flagged"]

   Fresh session or post-compaction?
   - Query memory: @mem search "What was I working on in [project]?"
   - Then read: projects/<project>/{PROJECT}.md for next steps
   ```

## When Claude Should Auto-Checkpoint
- Before executing multi-step risky operations
- After completing a major milestone
- When session has been heavy (many file reads, many tool calls, long back-and-forth) — save state proactively so {PROJECT}.md session log is fresh if compaction hits
- Before user says "brb" or "stepping away"

## Notes
- This does NOT end the session
- `@work-logging` does full handoff + end-of-day summary
- Checkpoints are insurance, not a requirement

## Git Strategy
- **State files** (`ef-system/`) get frequent "checkpoint:" commits — noisy history is expected
- **Project files** (`projects/`) get atomic commits with descriptive messages
- To view clean project history: `git log --oneline -- projects/`
- To exclude checkpoint noise: `git log --invert-grep --grep="^checkpoint:"`

## Session Log Hygiene
- **Project {PROJECT}.md session logs** grow unboundedly. At checkpoint, check length:
  - If session log has >10 entries: move entries older than 7 days to `archive/session-log-YYYY-MM.md`
  - Keep the 3 most recent entries regardless of age (agent needs recent context)
  - Archive file is append-only, organized by month
- **Task-specific logs** (in `tasks/{task}.md`): keep all session entries, don't archive
  - Reason: Tasks are scoped work with limited lifespan; archival happens when task completes

## Compliance (verify before confirming to user)
- [ ] Any background agent results or key outputs written to files (not left only in context)
- [ ] **Session context saved** (see below — references, constraints, reasoning)
- [ ] STATE.md updated if meaningful progress made
- [ ] Project {PROJECT}.md updated if working on a specific project
- [ ] **Task-specific findings recorded** (not just project session log)
- [ ] **Task hierarchy verified** (no misplaced subtasks — check if work belongs to parent task)
- [ ] **Priority discipline enforced** (off-priority work captured to backlog or consciously added to This Week)
- [ ] Session log hygiene check performed (archive if >10 entries)
- [ ] If new project added to EF-SYSTEM.md active list, insert at correct priority position (list is priority-ordered)
- [ ] Git commit of state files completed
- [ ] Alignment check performed (planned vs actual noted)
- [ ] @plan audit (session depth): scan session work through the 7-point lens, flag one finding. If nothing actionable, note "audit clean." (See `ef-system/skills/plan.md`)

## Session Context Preservation

**Problem:** Compaction and new sessions lose references, constraints, and reasoning that informed decisions. Saving WHAT happened isn't enough — save WHY and WHAT INFORMED IT.

**At every checkpoint, scan the session for and save to project {PROJECT}.md or relevant framework doc:**

1. **External references** — URLs, article titles, paper IDs, author names. Anything the user shared or you fetched that informed decisions. These are invisible after compaction. Save the URL + a 1-sentence summary of why it matters.

2. **User-stated constraints** — Preferences, limitations, resources, and goals stated during the session that aren't in CLAUDE.md or existing docs. Examples: budget, available capital, risk tolerance, timeline, moral framework, skill self-assessment. Save verbatim quotes when the constraint is strong.

3. **Reasoning and conclusions** — Not just "we decided X" but "we decided X BECAUSE Y, after considering Z." Especially save: rejected alternatives and why, framework gaps discovered, assumptions that were challenged.

4. **Pending questions** — Unresolved decisions, things the user said "revisit later," open threads that need follow-up. Save with enough context that a fresh session can pick them up.

**Where to save:** Project {PROJECT}.md session log (inline with the entry) or dedicated framework doc if the reference has ongoing value. Don't create new files for this — append to existing structure.

**Parallel tab safety:** If multiple Claude Code sessions may be editing the same project, re-read {PROJECT}.md immediately before writing session log entries (not at session start — at checkpoint time). This catches changes from other tabs. Git push failure is a secondary safety net but don't rely on it — the file-level overwrite happens before git.
