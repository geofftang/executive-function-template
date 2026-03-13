---
name: update-system
description: "Apply upstream template updates to a user's personalized system. Reads CHANGELOG.md for what changed, uses .template-config.md for the user's substitution map and current version, then walks through auto-update, manual merge, and new file categories. Use after pulling a new template version."
disable-model-invocation: true
---

# Skill: @update-system

## Purpose
Apply template updates to the user's system using intelligent merge. Reads CHANGELOG.md to understand what changed, reads `identity/adaptations.md` to understand what the user customized and why, then makes educated merge decisions — preserving user improvements while incorporating template updates.

**Key principle:** No template versions of files exist. The template ships the same files the user runs. Updates are intelligent, not mechanical — the AI reads context and makes judgment calls.

## Prerequisites
- User's system was generated from this template (has `.template-config.md` in execution/)
- Template has been updated (user ran `git pull` or received new files)

## Execution

### Step 1: Read state

1. Read `.template-config.md` from the user's system. Check both:
   - `execution/.template-config.md` (v2.0+ location)
   - `ef-system/.template-config.md` (legacy v1.x location)
   Extract: `template-version`, `template-path`
2. If `.template-config.md` doesn't exist:
   - Ask: "Where is the template directory?"
   - Build a config by reading the user's `RULES.md`
   - Save as `execution/.template-config.md` before proceeding
3. Read `CHANGELOG.md` from the template directory
4. Read `identity/adaptations.md` from the user's system (if exists) — this tells you what the user changed and why
5. Identify all changelog entries between the user's version and the current (top) version

**If already current:** "Your system is up to date (v[X]). Nothing to do."

### Step 2: Intelligent diff

For each file mentioned in the changelog:

1. **Read the template's current version** of the file
2. **Read the user's current version** of the same file
3. **Read the changelog description** of what changed and why
4. **Read adaptations.md** for any notes about why the user customized this file

**Assess each difference:**
- User added something the template doesn't have → **preserve** (it's a customization)
- Template added something the user doesn't have → **propose addition**
- Template changed something the user also changed → **judgment call** — present both versions, explain the template's rationale, ask user
- Template removed something the user still has → **flag** — explain why template removed it, let user decide
- User's version is better than the template's → **preserve** and note it

### Step 3: Present plan

```
Template update: v[old] → v[new]

For each file, one of:
  ✅ [file] — template change, no conflict. [what changes]
  🔀 [file] — merge needed. [what template changed] vs [what you customized]
  ➕ [file] — new file. [description]
  🗑️ [file] — template removed this. [why]

Shall I proceed?
```

**Wait for confirmation before touching any files.**

### Step 4: Apply updates

For each file:
1. Show the specific edits you'll make (targeted changes, not full file replacement)
2. Apply with user's approval
3. For merge conflicts: present both versions side by side, explain trade-offs, let user choose

**Skills:** Read the template's new skill version. Compare with user's version. If the user customized trigger descriptions or added content based on their identity profile, preserve those customizations while incorporating template structural changes.

**RULES.md:** The most sensitive file. Never replace — always targeted edits. Show each proposed change individually. Ignore any `<!-- SETUP-ONLY: ... -->` comments in the template — these are for new installs only.

### Step 5: Update config

Edit `.template-config.md`:
- Set `template-version` to the new version
- Add `last-updated: [today's date]`

### Step 6: Note update in STATE.md

Append a one-liner to `state/STATE.md > Context`:
```
- System updated to v[new] ([date]). Key changes: [1-2 sentence summary].
```

### Step 7: Removed files

If the changelog lists removed files:
- Tell the user which files to delete (don't delete automatically)
- Example: "v1.7.0 removed `execution/skills/new-project.md` (replaced by `project.md`). Safe to delete."

## Personalize Mode

**Trigger:** User says `@update-system personalize`, or the system detects `identity/profile.md` was modified more recently than `identity/adaptations.md`.

**Execution:** Run the same personalization flow as SETUP-GUIDE Step 6.5:
1. Read identity/ files
2. Research evidence-based interventions for this user's patterns
3. Propose adaptations section by section with rationale
4. User approves each category
5. Write/update `identity/adaptations.md`
6. Apply changes to RULES.md and skill trigger descriptions

**If adaptations.md already exists:** Read it first to understand what's already personalized. Only propose changes for patterns that are new or have changed. Don't re-propose existing adaptations unless the user asks for a full re-personalization.

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
