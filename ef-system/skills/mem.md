# Skill: @mem — Universal Memory Management

**Purpose:** Manage the shared Universal Memory brain across all agents (Claude, Gemini, Codex).

---

## Commands

### @mem search [query]
Perform a semantic and keyword search.
- **SQL:** `SELECT o.id, o.subtitle, o.title, o.facts, o.narrative FROM observations o JOIN observations_fts fts ON o.id = fts.rowid WHERE observations_fts MATCH '[query]' ORDER BY o.created_at_epoch DESC LIMIT 5;`

### @mem forget [id]
Delete a specific, incorrect, or outdated memory.
- **Action:** Ask user for confirmation of the title/fact before running `DELETE FROM observations WHERE id = [id];`.

### @mem stats
View source attribution and project distribution.
- **Agent Stats:** `SELECT subtitle, COUNT(*) FROM observations GROUP BY subtitle;`
- **Project Stats:** `SELECT project, COUNT(*) FROM observations GROUP BY project LIMIT 10;`

### @mem export
Export project-specific memories to a Markdown summary.
- **Action:** Read the last 20 project-relevant memories and format them into a `MEMORY_EXPORT.md` for human review.

### @mem update
Update the native `claude-mem` tool and perform a Feature Discovery audit.
- **Action:**
  1. `npm install -g @thedotmack/claude-mem`
  2. **Delta Audit:** Agent MUST check `sqlite3` schema for new columns/tables.
  3. **Feature Scan:** Agent MUST fetch latest `README.md` from GitHub repo.
  4. **Report:** Propose integration of new features or move to backlog.
  5. `launchctl unload ~/Library/LaunchAgents/com.user.universal-mem.plist`
  6. `launchctl load ~/Library/LaunchAgents/com.user.universal-mem.plist`

### @mem synthesize
Manually trigger a "Narrative Synthesis" turn.
- **Action:** Take the last 10 turns of the current session and distill them into a single `type: narrative` observation in SQLite. This becomes the "Current Goal" for the next session.

### @mem prune
Identify and remove redundant "Session Logs" while preserving "Permanent Facts" and "Narratives."
- **Action:** `DELETE FROM observations WHERE type = 'session_log' AND created_at_epoch < (strftime('%s','now') - 604800);`

---

## Context Injection Protocol
On session start, the agent should silently run:
`SELECT title, facts, narrative FROM observations WHERE project = '[current_pwd]' ORDER BY created_at_epoch DESC LIMIT 5;`
This ensures the agent is "caught up" on the most recent activity across all platforms.
