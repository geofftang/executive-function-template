# Changelog

Template updates for downstream users. Each entry includes the exact edit so Claude can apply it.

**Update process:**
1. First, diff source system against template to catch unlogged changes: `diff CLAUDE.md against CLAUDE-TEMPLATE.md, diff skills/ against template skills/. Add any missing CHANGELOG entries.`
2. Then apply to user: `Read projects/executive-function-template/template/CHANGELOG.md. Apply all updates after v[X] to this user's system. Skip entries marked [optional]. Don't overwrite personal customizations — targeted edits only.`

**Version tracking:** After updating a user, add `<!-- template: vX -->` to the top of their CLAUDE.md.

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
