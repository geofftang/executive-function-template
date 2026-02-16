# Changelog

Format: version heading = current template version. Update protocol reads this to determine what changed since a user's last update.

Each entry categorizes changes by update type:
- **Auto-update** — Template-owned files. Safe to replace (with placeholder re-substitution).
- **Manual merge** — User-owned files where template structure changed. Show diff, suggest additions, never replace.
- **New files** — Files that didn't exist before. Copy to user's system + apply substitutions.

---

## 1.7.0

Problem-structuring, milestone-based workflow, and decision record pattern.

### Auto-update (template-owned)
- `ef-system/skills/plan.md` — **Major restructure:** 7-point audit → two-layer (Problem Quality P1-P4 + Execution Quality). Adds DO-CONFIRM pattern, anti-anchoring protocol, PrOACT/Wedell-Wedellsborg frameworks
- `ef-system/skills/task.md` — Enhanced blocker fields (blocked_by, next_unblock_action, check_date), focus refill logic, operational refill logic, ADR creation prompt on task completion, blocked items stay in Focus (not Operational)
- `ef-system/skills/project.md` — **New file** replacing `new-project.md`. Now `@project [create|complete]` with create + complete modes, uses @plan for inception, milestone-based roadmap, design decision scan, project completion/distillation flow
- `ef-system/skills/weekly-review.md` — Added C.6 Roadmap Hygiene, C.7 Assumption Check (references Foundation section). Updated state file references
- `ef-system/skills/strategic-reviews.md` — Added design decision cross-pollination (monthly Step 2.7), quarterly pattern promotion. Updated state references
- `ef-system/skills/system-audit.md` — Added architecture doc staleness check, decision record audit
- `ef-system/BUILD-PLAN.md` — Added project sections structure, session log hygiene, BUILD-PLAN creation criteria. Cleaned up header and references
- `ef-system/SYSTEM-STRUCTURE.md` — Added recommended {PROJECT}.md structure with Foundation section, ADR pattern (§3.2.1), task escalation logic, session log hygiene
- `ef-system/skills/update-system.md` — **New file.** Backs `@update-system` command (reads CHANGELOG + `.template-config.md`, applies updates with substitution map)
- `ef-system/skills/help.md` — Updated @plan description, added @update-system to periodic commands
- `ef-system/skills/checkpoint.md` — Updated @plan quick-scan reference
- `ef-system/reference/setup/README.md` — Fixed stale `CLAUDE-TEMPLATE.md` → `RULES-TEMPLATE.md`

### Manual merge (user-owned)
- `RULES.md` — Skill table: `@new-project` renamed to `@project [create|complete]`, `@update-system` added. Reference docs table updated (HEARTBEAT removed, SYSTEM-STRUCTURE now mentions ADR pattern). `@plan` description updated to two-layer audit.

### Removed files
- `ef-system/skills/new-project.md` — Replaced by `project.md` (users should delete old file)

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
