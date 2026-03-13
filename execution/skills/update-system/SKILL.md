---
name: update-system
description: "Apply upstream template updates to a user's personalized system. Reads CHANGELOG.md for what changed, uses .template-config.md for the user's substitution map and current version, then walks through auto-update, manual merge, and new file categories. Use after pulling a new template version."
disable-model-invocation: true
---

# Skill: @update-system

## Purpose
Apply template updates to the user's system. Reads CHANGELOG.md to determine what changed, uses `.template-config.md` for the user's substitution map and current version, and walks through each change category.

## Prerequisites
- User's system was generated from this template (has `.template-config.md` in execution/ or ef-system/)
- Template has been updated (user ran `git pull` or received new files)

## Execution

### Step 1: Read state

1. Read `.template-config.md` from the user's system. Check both:
   - `execution/.template-config.md` (v2.0+ location)
   - `ef-system/.template-config.md` (legacy v1.x location)
   Extract: `template-version`, `template-path`, `Substitution Map`, `Tool Gap Adaptations`, `Communication Style`
2. If `.template-config.md` doesn't exist:
   - Ask: "Where is the template directory?"
   - Build a config by reading the user's `RULES.md` — extract areas, pillars, tools, communication style
   - Save as `execution/.template-config.md` before proceeding
3. Read `CHANGELOG.md` from the template directory
4. Identify all changelog entries between the user's version and the current (top) version

**If already current:** "Your system is up to date (v[X]). Nothing to do."

### Step 2: Categorize changes

From the changelog entries, build three lists:

**Auto-update** (template-owned — safe to replace with re-substitution):
- `execution/skills/<name>/SKILL.md` — read new template file → apply substitution map → write to user's system
- `execution/reference/*.md` (except identity files) — copy from template
- `execution/agentic-patterns.md`, `execution/system-structure.md` — copy from template (system-structure needs substitution)

**Manual merge** (user-owned — show diff, suggest additions, never replace):
- `RULES.md` — show what changed in template's RULES-TEMPLATE.md, suggest specific edits
- `identity/*.md` — user-owned profile data, only flag structural changes
- `projects/ef-system/ef-system.md` — only if template changed task structure

**New files** (didn't exist in user's version):
- Copy from template → apply substitution map → write to user's system
- If it's a new skill, suggest adding the `@skillname` row to their RULES.md skill table

### Step 3: Detect user customizations

Before applying auto-updates, check for user edits to template-owned files:

For each auto-update file:
1. Read the user's current version
2. Read the **previous** template version (the one matching their `template-version`)
3. If user's file differs from the previous template version → they made custom edits
4. Flag it: "[file] has custom edits. Options: (a) accept update + re-apply your changes, (b) keep your version, (c) see the diff"

If no customization detected → safe to auto-update.

### Step 4: Present summary

```
Template update: v[old] → v[new]

Auto-update (I'll handle these):
- [file] — [one-line description from changelog]
- ...

Manual merge (I'll show you what to add):
- [file] — [description]
- ...

New files (I'll create these):
- [file] — [description]
- ...

[If any customization conflicts detected:]
⚠️ Custom edits found:
- [file] — [options a/b/c]

Shall I proceed?
```

**Wait for confirmation before touching any files.**

### Step 5: Apply updates

1. **Auto-update files:** For each:
   - Read the new version from the template
   - Apply the substitution map from `.template-config.md`
   - Re-apply tool-gap adaptations from `.template-config.md`
   - Write to user's system (replacing old version)

2. **Manual merge files:** For each:
   - Show before/after of the template change
   - Suggest the specific edit (section to add, line to change)
   - Apply only with explicit approval

3. **New files:** For each:
   - Read from template
   - Apply substitution map
   - Write to user's system
   - If it's a skill, suggest adding `@skillname` to RULES.md skill table

### Step 6: Update config

Edit `.template-config.md` (wherever found — `execution/` for v2.0+, `ef-system/` for legacy):
- Set `template-version` to the new version
- Add `last-updated: [today's date]`
- Keep all other fields unchanged

### Step 7: Note update in STATE.md

Append a one-liner to `state/STATE.md > Context` (or create the section if missing):
```
- System updated to v[new] ([date]). Key changes: [1-2 sentence summary of what's new].
```
Morning planning will surface this naturally so the user knows what changed.

### Step 8: Removed files

If the changelog lists removed files:
- Tell the user which files to delete (don't delete automatically)
- Example: "v1.7.0 removed `execution/skills/new-project.md` (replaced by `project.md`). Safe to delete."

## Edge Cases

**User has fewer areas/pillars than placeholders:**
The substitution map handles this — "unused" tokens get removed.

**User wants to skip some updates:**
Fine. Update the version number anyway (to avoid re-prompting). Note skipped files in `.template-config.md` under `## Skipped Updates`.

**No `.template-config.md` and user can't provide template path:**
Build config from their RULES.md (areas from STATE.md, tools from Section 3, style from Section 7). Set `template-version: 1.6.0` (first versioned release) so all subsequent changes apply.

**User has v1.x system (ef-system/ monolith) updating to v2.0+:**
This is a structural migration. Run SETUP-GUIDE Phase 4 migration protocol instead — it handles restructuring `ef-system/` into `identity/` + `execution/` + `state/` without re-interviewing.

## Compliance
- [ ] `.template-config.md` read (or built) before any changes
- [ ] User confirmed before any file writes
- [ ] Substitution map applied to all auto-update files
- [ ] Tool-gap adaptations re-applied
- [ ] Custom edits detected and flagged (not silently overwritten)
- [ ] `.template-config.md` version updated after completion
- [ ] Removed files communicated to user
