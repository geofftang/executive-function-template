# Changelog

Template updates for downstream users. Each entry includes the exact edit so Claude can apply it.

**Update process:**
1. First, diff source system against template to catch unlogged changes: `diff source CLAUDE.md against engine/CLAUDE.md, diff source skills/ against engine/ef-system/skills/. Add any missing CHANGELOG entries.`
2. Then apply to user: `Read projects/executive-function-template/docs/CHANGELOG.md. Apply all updates after v[X] to this user's system. Skip entries marked [optional]. Don't overwrite personal customizations — targeted edits only.`

**Version tracking:** After updating a user, add `<!-- template: vX -->` to the top of their CLAUDE.md.

---

## v1.2 (2026-02-14)

### Normalize stale paths [critical]
**Why:** All `system/` paths were renamed to `ef-system/` but references weren't updated.
**Files:** CLAUDE.md, all skills, AGENTIC-PATTERNS.md
**Edit:** Replace `system/state.md` → `ef-system/STATE.md`, `system/skills/` → `ef-system/skills/`, `system/tasks/` → `ef-system/tasks/`, `system/history/` → `ef-system/history/` everywhere.

### Add STATE.md scaffold [critical]
**Why:** Every skill references `ef-system/STATE.md` but it didn't exist in the engine.
**File:** `ef-system/STATE.md`
**Action:** Created with full scaffold (intention, completed, weekly goals, last active, reviews, quarterly, annual).

### Add tasks/ and history/ directories [critical]
**Why:** Skills reference `ef-system/tasks/` and `ef-system/history/` for task subpages and weekly archives.
**Action:** Created both with README placeholders.

### Add @plan quick-scan to task create [recommended]
**Why:** High-priority tasks benefit from a quick agentic audit at creation time.
**File:** task skill, @task create flow
**Edit:** After "Create task file," add step: `@plan quick-scan (high priority only) — If priority is high, run @plan task-level scan.`

### Add CONTEXT-TEMPLATE [recommended]
**Why:** SETUP-GUIDE referenced a project context template that didn't exist.
**File:** `fuel/CONTEXT-TEMPLATE.md`
**Action:** Created with standard project hub scaffold (focus, backlog, session log, references).

### Fix docs references [housekeeping]
**Why:** README and SETUP-GUIDE referenced `templates/` and `concepts/` dirs that don't exist.
**Files:** `docs/README.md`, `docs/SETUP-GUIDE.md`
**Edit:** Updated to reference actual dirs: `fuel/`, `engine/`, `docs/`.

### Add memory setup to SETUP-GUIDE [recommended]
**Why:** claude-mem MCP is easy to set up and gives cross-session memory.
**File:** `docs/SETUP-GUIDE.md`
**Edit:** Added Step 5: Memory Setup with npm install + MCP config instructions.

---

## v1.1 (2026-02-08)

### Remove SESSION_HANDOFF [critical] — APPLIED
**Why:** Single-file handoff breaks with parallel threads. Project CONTEXT.md session logs are parallel-safe.
**Files:** checkpoint skill, CLAUDE.md (if referencing SESSION_HANDOFF)
**Edit (checkpoint skill):** Remove any step that writes to SESSION_HANDOFF. Session continuity now comes from CONTEXT.md session logs.
**Edit (CLAUDE.md):** Remove SESSION_HANDOFF from auto-checkpoint rules if present.
**Action:** Delete SESSION_HANDOFF.md if it exists.

### Add compaction hint [critical]
**Why:** Claude Code compaction loses session context. This rule tells Claude to self-recover.
**File:** CLAUDE.md, Core Rules section
**Add after "Auto-Checkpoint on Task Completion" rule:**
```
- **After compaction:** Re-read CLAUDE.md and the active project's CONTEXT.md. Verify you still know: current task, working directory, which files you've modified.
```

### Add fresh-thread prompt to checkpoint [recommended]
**Why:** Reduces friction for starting new threads at task boundaries.
**File:** checkpoint skill, confirm-to-user section
**Replace** "Continue when ready." **with:**
```
Fresh thread? Paste: `Read projects/<project>/CONTEXT.md and pick up where we left off.`
```

### Add WORKAROUND tag convention [optional]
**Why:** Makes it easy to find and remove temporary fixes when upstream issues are resolved.
**File:** CLAUDE.md, Design Principles section
**Add:**
```
**Workaround tagging:** When adding anything that works around an upstream bug or limitation, mark it with `<!-- WORKAROUND: [description] | CHECK: [condition for removal] -->`. This makes cleanup possible when the underlying issue is fixed.
```

---

## v1.0 (2026-02-07)

Initial template release.
