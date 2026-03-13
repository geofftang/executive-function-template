# Changelog

Format: version heading = current template version. Update protocol reads this to determine what changed since a user's last update.

Each entry categorizes changes by update type:
- **Auto-update** — Template-owned files. Safe to replace (with placeholder re-substitution).
- **Manual merge** — User-owned files where template structure changed. Show diff, suggest additions, never replace.
- **New files** — Files that didn't exist before. Copy to user's system + apply substitutions.

---

## 3.0.0

**Universal base + identity-driven personalization.** RULES-TEMPLATE rewritten to serve all users (neurotypical and neurodivergent). Condition-specific content moved from hardcoded to personalization layer driven by identity files. Setup trigger in RULES.md, SETUP-GUIDE self-deletes after completion.

### Breaking changes
- RULES-TEMPLATE §2: "ADHD Interrupt Protocol" → "Behavioral Interrupt Protocol" (neutral framing)
- RULES-TEMPLATE §4: Condition-specific interventions removed from universal base (OCD spiral, Communication by Condition table)
- RULES-TEMPLATE §4: Clinical terminology reframed ("Wall of Awful" → "Stuck starting", "Guilt Paralysis" → "Feeling unproductive")
- Setup interview now includes personalization phase (Step 6.5) — @plan reads identity/ and researches adaptations

### Auto-update (template-owned)
- `RULES-TEMPLATE.md` — Rewritten as universal base. §2 neutral Behavioral Interrupt Protocol. §4 universal interventions only. New Personalization section pointing to `identity/adaptations.md`. Setup trigger comment at top.
- `execution/reference/setup/SETUP-GUIDE.md` — Added Step 6.5 (identity-driven personalization via @plan). Step 11 now self-deletes setup directory. Direct-copy path documented.
- `execution/skills/update-system/SKILL.md` — Added Personalize mode (re-run personalization when identity changes)

### New files
- `identity/adaptations.md` — Generated during setup personalization. Tracks all condition-specific interventions, communication adjustments, and skill trigger modifications with rationale.
- `decisions/universal-base-personalization-split.md` — ADR documenting the design decision

### Manual merge (user-owned)
- `RULES.md` — §2 rename "ADHD Interrupt Protocol" → "Behavioral Interrupt Protocol". §4 remove Communication by Condition table (moved to personalization). §4 reframe interventions to neutral language. Add Personalization section. Condition-specific content now lives in `identity/adaptations.md`.
- Run `@update-system personalize` to generate `identity/adaptations.md` from your existing identity/ files — this restores your condition-specific adaptations in the new architecture.

---

## 2.1.0

**Hooks layer + skill renames.** Mechanical behavioral enforcement via Claude Code hooks. Compaction survival (precompact-save + compact-restore) preserves session context across auto-compaction. Safety hook blocks destructive commands.

### Auto-update (template-owned)
- `RULES-TEMPLATE.md` — Added Hooks section (§6 Core Rules), updated Rule of least authority to include hooks tier, fixed `resume` → `continue` in ADHD Interrupt Protocol
- `execution/skills/plan/SKILL.md` — Added "Enforcement check" to Phase 2 (hooks consideration for behavioral rules)
- `execution/skills/strategic-reviews/SKILL.md` — Improved description
- `execution/skills/weekly-review/SKILL.md` — Improved description
- `execution/skills/update-system/SKILL.md` — Improved description
- `execution/skills/project/SKILL.md` — Improved description
- `execution/agentic-patterns.md` — Ralph Loop section expanded (bash loop vs stop hook architectures)
- `setup-skills.sh` / `setup-skills.ps1` — Now also links hooks and generates `settings.local.json` with hook registrations

### New files
- `execution/hooks/block-dangerous.sh` — PreToolUse(Bash): blocks `rm`, force push, `git reset --hard`
- `execution/hooks/precompact-save.py` — PreCompact: saves session survival kit before auto-compaction
- `execution/hooks/compact-restore.sh` — SessionStart(compact): injects survival kit as context after compaction

### Skill renames
- `resume` → `continue` (aligns with behavioral trigger: "returning to stalled work")

### Manual merge (user-owned)
- `RULES.md` — Add Hooks section to Core Rules. Update ADHD Interrupt Protocol: `resume` → `continue`. Update Rule of least authority to include hooks tier.

---

## 2.0.0

**Major structural migration.** Monolithic `ef-system/` split into `identity/` + `execution/` + `state/`. Skills moved to Agent Skills folder format with YAML frontmatter for cross-model auto-triggering.

### Breaking changes (v1.x → v2.0 migration required)
- `ef-system/` directory restructured — see Phase 4b in SETUP-GUIDE for migration path
- Skills moved from flat files (`ef-system/skills/name.md`) to folders (`execution/skills/name/SKILL.md`)
- `USER-PROFILE.md` split into three identity files
- `SUPPORT-KB.md` merged into `identity/behaviors.md`
- Skill renames: `morning-planning` → `daily`, `inbox-triage` → `triage`

### New structure
```
identity/           ← profile.md, behaviors.md, user-manual.md
execution/          ← skills/, reference/, agentic-patterns.md, system-structure.md
state/              ← STATE.md, history/
projects/ef-system/ ← ef-system.md, tasks/, decisions/
```

### Auto-update (template-owned)
- `RULES-TEMPLATE.md` — Complete rewrite: Agent Skills discovery (Section 2), ADHD Interrupt Protocol, new file structure (Section 3.5), Agentic Principles (Section 5), updated execution support rules (capture-then-defer, spiral check, deliverable gate, section-by-section pacing)
- All skills — Migrated to folder format with YAML frontmatter (`name`, `description`, `disable-model-invocation`)
- `execution/skills/plan/SKILL.md` — Major rewrite: mental models check, anti-anchoring gate with scratch file, "good enough" gate, assumption declaration, REASON-CONFIRM pattern, state propagation, action routing gate, success criteria block
- `execution/skills/digest/SKILL.md` — Major rewrite: three-gate capture filter, content-type detection (thesis/roundup/forum), relevance scan, forum protocol, cross-domain connections
- `execution/skills/checkpoint/SKILL.md` — Ported live improvements (trimmed, sharper)
- `execution/skills/strategic-reviews/SKILL.md` — Ported live improvements, generalized
- `execution/skills/weekly-review/SKILL.md` — Ported live improvements
- `execution/skills/task/SKILL.md` — Ported live improvements
- `execution/skills/system-audit/SKILL.md` — Ported live improvements
- `execution/skills/help/SKILL.md` — Updated skill names and groupings
- `execution/skills/update-system/SKILL.md` — Updated paths, added v1.x→v2.0 migration detection
- `execution/agentic-patterns.md` — Updated path references
- `execution/system-structure.md` — Updated path references
- `execution/reference/BUILD-PLAN.md` — Updated path references
- `execution/reference/GETTING-TO-BASELINE.md` — Updated to new structure
- `execution/reference/USER-MANUAL.md` — Updated skill references
- `execution/reference/UNIVERSAL-MEMORY-NEW-LLM.md` — Updated path references
- `execution/reference/setup/README.md` — Complete rewrite for new structure
- `execution/reference/setup/STATE-TEMPLATE.md` — Updated skill references

### New files
- `identity/profile.md` — User profile template (WOOP, energy map, conditions, privacy)
- `identity/behaviors.md` — Failure modes (FBA structure), success modes, protective factors, support protocols
- `identity/user-manual.md` — Communication style, automation tolerance, hard rules, cognitive traits
- `execution/skills/interrupt/SKILL.md` — Active state break for hyperfocus/rumination
- `execution/skills/continue/SKILL.md` — Context reload after interruption or cold-start (renamed to `continue` in 2.1.0)
- `execution/skills/pregame/SKILL.md` — Social event preparation
- `setup-skills.sh` / `setup-skills.ps1` — Symlink creation for cross-model skill discovery

### Manual merge (user-owned)
- `RULES.md` — Extensive changes. Section 2 replaces skill table with Agent Skills discovery + ADHD Interrupt Protocol. Section 3.5 adds new file structure. Section 5 adds Agentic Principles. Section 4 adds new execution support rules. All `ef-system/` paths updated.
- For v1.x users: Run Phase 4b migration in SETUP-GUIDE — it reads old files and restructures without re-interviewing

### Migration guide (v1.x → v2.0)
1. Update template: `git pull` (or receive new files)
2. Run `@update-system` — it detects v1.x and triggers Phase 4b migration
3. Phase 4b reads `USER-PROFILE.md` + `SUPPORT-KB.md` → creates `identity/` files
4. Skills migrated from flat files to folder format
5. Infrastructure files moved to new locations
6. RULES.md updated with new structure
7. Old `ef-system/` files flagged for manual cleanup

---

## 1.7.1

Vault access: filesystem-only, no Obsidian MCP dependency.

### Auto-update (template-owned)
- `RULES-TEMPLATE.md` — Replaced "Obsidian Querying Protocol" (MCP-based) with "Vault Access Protocol" (filesystem-only). Tool table updated. Added note about when MCPs are appropriate (non-file-based tool APIs).
- `ef-system/skills/weekly-review.md` — Removed MCP reference from sync logic.

### Notes
- Obsidian MCP is redundant when Claude Code has filesystem access. `patch_content` can destroy content by replacing entire heading subtrees. Use Read/Edit/Write/Glob/Grep for all vault operations.

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
