# System Structure - Knowledge & Project Management

**Purpose:** The definitive blueprint for organizing, navigating, and maintaining the Executive Function vault.

---

## 1. The PARA Framework (Vault Organization)

The system follows the PARA method for folder and knowledge structure:

- **Projects:** Bounded work with a specific goal and deadline. (e.g., `projects/my-project/`)
- **Areas:** Ongoing responsibilities that require a standard of performance over time. (e.g., `areas/health/`, `areas/livelihood/`)
- **Resources:** Interests or themes of ongoing value. Knowledge artifacts, articles, and references. (e.g., `resources/cooking-techniques/`)
- **Archive:** Inactive items from the other three categories.

### Folder Rules
- **Rule:** Every project in `projects/` is a folder containing a main `{PROJECT}.md` hub.
- **Rule:** Active project folders are pinned in the File Explorer for high visibility.
- **Rule:** Project-specific notes stay in the project folder while active; generalizable knowledge is distilled into Area folders during quarterly reviews.

---

## 2. Navigation Hierarchy

The vault is designed for a consistent "3-Click" navigation pattern:
`Dashboard → Bucket Index → Sub-bucket → Task/File`

Each level should ideally only link to the next level down to prevent cognitive overwhelm.

---

## 3. Core Files & Schemas

### 3.1 The Master Schema: `STATE.md`
The source of truth for the system's "Working Memory."
- **Intention:** Daily task list.
- **Completed:** Brief bulleted list of achievements (⚡ prefix for unplanned work).
- **Context:** Key facts or constraints discovered during the day.
- **This Week:** Day-stamped weekly log including rough metadata (areas/pillars/projects) and concise outcomes.

### 3.2 The AI Cache: `{PROJECT}.md`
The handoff hub for AI sessions. Session logs here are technical and high-signal.
- **Focus:** Active checkboxes with 🔄 markers.
- **Roadmap (optional):** Ordered stage links for medium/long-horizon priority. Keep this as a thin queue only; execution checklists stay in task files.
- **References:** Links to portals, tools, and generated resources.
- **Session Logs:** AI-to-AI handoff notes summarizing findings and the "North Star" for the next session.

**Recommended `{PROJECT}.md` structure:**
1. `## Current State`
2. `## Foundation` — Problem statement, objectives, chosen approach. Written at inception by `@plan` P1-P4. Referenced by `@weekly-review` C.7 Assumption Check. Only updated when assumptions change.
3. `## Roadmap` (optional — ordered stages for medium/long-horizon work)
4. `## Focus`
5. `## Operational`
6. `## Backlog`
7. `## Design Decisions` (optional — pointer to `decisions/` folder or Dataview query. See §3.2.1 for the ADR pattern.)
8. `## References`
9. `## Done`

### 3.2.1 Decision Records (ADR Pattern)

Design decisions live as individual files in `decisions/` within each project:

```
projects/my-project/decisions/
projects/another-project/decisions/
projects/ef-system/decisions/
```

**When to create a decision file:**
- Methodology or architecture choice with rejected alternatives
- Tool/framework selection with trade-offs
- Any choice you'd want to re-research or explain in 6 months

**Decision file template:**
```yaml
---
decision: "Decision name"              # what was decided
status: active                         # active | superseded | removed
date: YYYY-MM-DD
supersedes: "Previous decision"        # optional, if replacing an older decision
---
```
```markdown
**Applies to:** [[FILE#Section]] | [[OTHER-FILE]]   ← wiki-links in body for Obsidian backlinks

**Problem:** What wasn't working or what question needed answering.
**Decision:** What was chosen and why.
**Rejected:** What alternatives were considered and why they lost.
**Evidence:** Research sources, data, or experience that informed the choice.
**Context:** Broader situation that made this decision necessary.
```

**Important:** `Applies to` links must be in the note body (not YAML frontmatter) for Obsidian backlinks to work.

**Lifecycle:**
- `active` — current, applies to the system/project
- `superseded` — replaced by a newer decision (link to successor)
- `removed` — no longer relevant (keep file for history)

**Discovery:** Decision files link to what they govern (rules, sections, files) via `**Applies to:**` wiki-links. Governed files do NOT link back — Obsidian backlinks handle reverse discovery automatically. Dataview can query across all `*/decisions/` folders.

**Audit:** `@system-audit` checks for CLAUDE.md rules without decision files and decision files whose targets no longer exist. `@strategic-reviews` quarterly checks for patterns repeating across projects — promote to AGENTIC-PATTERNS.md.

### 3.2.2 When to Create a BUILD-PLAN.md

A project's `CLAUDE.md` serves as its architecture overview by default. Split into a separate `BUILD-PLAN.md` when the project exceeds what CLAUDE.md can carry:

- **10+ interacting files** with non-obvious relationships
- **Multiple operating modes** (e.g., research vs build vs eval)
- **Multiple agents or roles** (builder, judge, orchestrator)
- **Distributed state** across files that need a map to navigate
- **CLAUDE.md architecture section exceeds ~200 lines**

BUILD-PLAN.md is the system map (how pieces connect), not a duplicate of operational detail already in skills or CLAUDE.md. `@system-audit` full mode checks these for staleness.

### 3.3 Frontmatter Schema (YAML)
Standard fields for all `.md` files to enable Dataview queries:
```yaml
status: todo | active | blocked | done | cancelled
priority: high | medium | low | backlog
pillar: livelihood | wellness | creative | fun_social
due: YYYY-MM-DD
context: "one-liner current state"
energy: high | low
time_estimate: 30min
created: YYYY-MM-DD
```

---

## 4. Task Management Protocol

### Status Markers
- 🔄 **In Progress:** Actively being worked on in the current session.
- ⏸️ **Blocked:** Paused due to an external dependency (must include reason).
- 🔺 **High Priority:** Critical for current milestones.

### Project Sections (`{PROJECT}.md`)

1. **Roadmap**
   Ordered milestones for the project. Mark one as CURRENT. Advance when current milestone's work is complete.

2. **Focus**
   The active strategic work. WIP=1 active (🔄). Blocked items stay in Focus with ⏸️ + blocker detail.
   When Focus empties: pull from current milestone's backlog. When milestone done: advance roadmap.

3. **Operational**
   Maintenance and support tasks not tied to milestones. Small WIP. Separate backlog.

4. **Backlog (by milestone)**
   Organized under milestone headers. Future Focus candidates live here.
   Operational backlog is a separate flat section.

### Checklist-First Rule
- Default representation is always a checklist item in `{PROJECT}.md`.
- Escalate to a dedicated task page only when the item needs more than a checklist can carry.

### Task vs Project vs Checklist
Use this decision logic:

1. **Checklist item in `{PROJECT}.md`** (default)
   - Single action or short sequence
   - No persistent blockers/dependencies
   - No substantial references or decision history needed

2. **Task page in `projects/{project}/tasks/`**
   - Multi-step work that needs status tracking over multiple sessions
   - Requires context, blockers, dependencies, or references
   - Needs a clear "definition of done"

3. **Project-level item**
   - Cross-cuts multiple task pages or weekly priorities
   - Belongs in Focus/Operational as a coordinating workstream, not a single action

### Task Page Format (when escalated)
Use a lightweight, operational layout:

1. `## Goal`
2. `## Current State`
3. `## Operational`
   - Current status
   - Next action
   - Blockers
   - Dependencies
   - Last updated
4. `## Definition of Done`
5. `## References` (if needed)

### Task Lifecycle
1. Task starts as a checkbox in `{PROJECT}.md` (Backlog/Focus).
2. If a task needs detail or tracking, create a file in `projects/{project}/tasks/`.
3. Completion moves the link to the `Done` callout and triggers `@checkpoint`.
4. If the task involved a design choice: create a decision file in `decisions/` (see §3.2.1). See `@task` skill for details.

---

## 5. AI Independence Rules

The agent is authorized to maintain system hygiene autonomously:
- **Update Logs:** After completing a task, the agent MUST update the session log in `{PROJECT}.md`.
- **Archive Bloat:** If a project hub exceeds 300 lines, the agent should suggest moving old logs to an `ARCHIVE.md`.
- **Friction Audit:** Before committing to complex tasks, the agent should pause to identify practical or emotional friction.

---

## 6. Failure Recovery (The Reset)

| Problem | Symptom | Fix |
| :--- | :--- | :--- |
| **Rule Drift** | AI ignores system rules | Shorten CLAUDE.md; perform @system-audit. |
| **Context Loss** | Lost "Next Steps" | Re-read {PROJECT}.md; query @mem for recent turn. |
| **Bloat** | AI response quality drops | Move older session logs to ARCHIVE.md. |
| **Debate Loop** | Re-arguing settled points | Document the decision in BUILD-PLAN.md. |

---

## 7. Tool-Specific Patterns

### Dataview Usage
Always prioritize specific path filters (e.g., `FROM "projects/logistics"`) rather than vault-wide searches to save tokens and improve performance.

### The State Contract
- **ONLY `@checkpoint`** is authorized to write narrative session log entries to `{PROJECT}.md`.
- **`@digest capture`** is the mandatory tool for archiving all URLs into the `resources/` folder.

### Session Log Hygiene
- If `{PROJECT}.md` session logs exceed 10 entries, archive entries older than 7 days.
- Keep at least the 3 most recent session entries in `{PROJECT}.md` for fast startup context.
- Archive by month in `archive/session-log-YYYY-MM.md`.
- Before writing `{PROJECT}.md`, re-read it to protect against parallel-tab overwrite.
