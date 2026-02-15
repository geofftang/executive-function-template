# System Structure - Knowledge & Project Management

**Purpose:** The definitive blueprint for organizing, navigating, and maintaining the Executive Function vault.

---

## 1. The PARA Framework (Vault Organization)

The system follows the PARA method for folder and knowledge structure:

- **Projects:** Bounded work with a specific goal and deadline. (e.g., `projects/my-project/`)
- **Areas:** Ongoing responsibilities that require a standard of performance over time. (e.g., `areas/health/`, `areas/livelihood/`)
- **Resources:** Interests or themes of ongoing value. Knowledge artifacts, articles, and references. (e.g., `resources/agentic-design/`)
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
- **Context Notes:** Key facts or constraints discovered during the day.
- **This Week:** Log of hours and pillars touched.

### 3.2 The AI Cache: `{PROJECT}.md`
The handoff hub for AI sessions. Session logs here are technical and high-signal.
- **Focus:** Active checkboxes with 🔄 markers.
- **References:** Links to portals, tools, and generated resources.
- **Session Logs:** AI-to-AI handoff notes summarizing findings and the "North Star" for the next session.

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

### Task Lifecycle
1. Task starts as a checkbox in `{PROJECT}.md` (Backlog/Focus).
2. If a task needs detail or tracking, create a file in `projects/{project}/tasks/`.
3. Completion moves the link to the `Done` callout and triggers `@checkpoint`.

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
