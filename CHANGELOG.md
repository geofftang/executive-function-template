# Changelog

Format: version heading = current template version. Update protocol reads this to determine what changed since a user's last update.

Each entry categorizes changes by update type:
- **Auto-update** — Template-owned files. Safe to replace (with placeholder re-substitution).
- **Manual merge** — User-owned files where template structure changed. Show diff, suggest additions, never replace.
- **New files** — Files that didn't exist before. Copy to user's system + apply substitutions.

---

## 1.6.0

Initial versioned release. Systems generated before this version have no `.template-config.md` — update protocol will need to build one from the user's existing files.

### Auto-update (template-owned)
- All `ef-system/skills/*.md` — genericized tool references, placeholder substitution
- `ef-system/reference/GETTING-TO-BASELINE.md` — aligned with SETUP-GUIDE archetypes
- `ef-system/reference/USER-MANUAL.md` — updated memory system description
- `ef-system/BUILD-PLAN.md` — no changes (baseline)
- `ef-system/AGENTIC-PATTERNS.md` — no changes (baseline)
- `ef-system/SYSTEM-STRUCTURE.md` — genericized area folder examples

### Manual merge (user-owned)
- `CLAUDE.md` — Tool Ecosystem now uses generic placeholders; Section 6 has updated Communication by Condition table; new `@support` skill replaces `@therapy`

### New files
- `ef-system/reference/USER-PROFILE.md` — generated from setup interview (existing users: create manually or skip)
- `areas/health/SUPPORT-KB.md` — support knowledge base (moved from engine)
