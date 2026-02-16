# Skill: @update-system

## Purpose
Apply template updates to the user's system. Reads CHANGELOG.md to determine what changed, uses `.template-config.md` for the user's substitution map and current version, and walks through each change category.

## Prerequisites
- User's system was generated from this template (has `ef-system/.template-config.md`)
- Template has been updated (user ran `git pull` or received new files)

## Execution

### Step 1: Read state

1. Read `ef-system/.template-config.md` from the user's system. Extract:
   - `template-version` — their current version
   - `template-path` — path to the template directory
   - `Substitution Map` — all token → value mappings
   - `Tool Gap Adaptations` — what was removed/adjusted for missing tools
   - `Communication Style` — archetype and support level
2. If `.template-config.md` doesn't exist:
   - Ask: "Where is the template directory?"
   - Build a config by reading the user's `RULES.md` — extract areas, pillars, tools, communication style
   - Save as `ef-system/.template-config.md` before proceeding
3. Read `CHANGELOG.md` from the template directory
4. Identify all changelog entries between the user's version and the current (top) version

**If already current:** "Your system is up to date (v[X]). Nothing to do."

### Step 2: Categorize changes

From the changelog entries, build three lists:

**Auto-update** (template-owned — safe to replace with re-substitution):
- `ef-system/skills/*.md` — read new template file → apply substitution map → write to user's system
- `ef-system/reference/*.md` (except USER-PROFILE.md) — copy from template
- `ef-system/BUILD-PLAN.md`, `ef-system/AGENTIC-PATTERNS.md` — copy from template
- `ef-system/SYSTEM-STRUCTURE.md` — copy from template, apply substitutions

**Manual merge** (user-owned — show diff, suggest additions, never replace):
- `RULES.md` — show what changed in template's RULES-TEMPLATE.md, suggest specific edits
- `ef-system/EF-SYSTEM.md` — only if template changed task structure

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

Edit `ef-system/.template-config.md`:
- Set `template-version` to the new version
- Add `last-updated: [today's date]`
- Keep all other fields unchanged

### Step 7: Removed files

If the changelog lists removed files:
- Tell the user which files to delete (don't delete automatically)
- Example: "v1.7.0 removed `ef-system/skills/new-project.md` (replaced by `project.md`). Safe to delete."

## Edge Cases

**User has fewer areas/pillars than placeholders:**
The substitution map handles this — "unused" tokens get removed.

**User wants to skip some updates:**
Fine. Update the version number anyway (to avoid re-prompting). Note skipped files in `.template-config.md` under `## Skipped Updates`.

**No `.template-config.md` and user can't provide template path:**
Build config from their RULES.md (areas from STATE.md, tools from Section 5, style from Section 8). Set `template-version: 1.6.0` (first versioned release) so all subsequent changes apply.

## Compliance
- [ ] `.template-config.md` read (or built) before any changes
- [ ] User confirmed before any file writes
- [ ] Substitution map applied to all auto-update files
- [ ] Tool-gap adaptations re-applied
- [ ] Custom edits detected and flagged (not silently overwritten)
- [ ] `.template-config.md` version updated after completion
- [ ] Removed files communicated to user
