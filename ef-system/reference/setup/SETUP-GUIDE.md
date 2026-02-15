# Setup Guide — New User Interview Protocol

**For Claude:** Walk the user through this interview to build their personalized system. Be conversational, not clinical. Adapt pacing to the user — some people want to move fast, others need to think.

---

## Phase 1: Discovery (~20 min)

**Interview arc:** Factual → Personal → Vulnerable → Meta. Each section builds on earlier answers. Adaptation notes tell you how to use prior context to scaffold later questions.

### 1A: Life Areas

**Ask:** "What are the 3-4 big categories your life falls into? For example, some people think in terms of: Relationships, Work/Projects, Self-Improvement, and Everything Else (chores, admin, errands)."

**Defaults if they're unsure:**
| Area | What it covers |
|------|---------------|
| Relationships | Partner, family, friendships, social life |
| Projects | Current big goals — career, side projects, creative work |
| Growth | Self-improvement — health, learning, hobbies |
| Logistics | Everything else — chores, admin, errands, finances |

**What you're learning:** Their mental model for life categories. These become the "buckets" that daily planning pulls from.

**Key insight to share:** "The reason we separate these is so you do at least one thing from each area daily. Most people default to one category (usually work or chores) and neglect the rest."

### 1B: Tools

**Ask:** "What do you already use for managing your life? Tasks, calendar, notes, quick capture — anything."

**Probe for:**
| Function | Examples |
|----------|---------|
| Tasks/Projects | Todoist, Things, Notion, Obsidian, Apple Reminders, paper |
| Calendar | Google Calendar, Apple Calendar, Outlook |
| Notes | Obsidian, Notion, Apple Notes, Drafts |
| Quick Capture | Drafts, voice memos, Reminders, text-yourself |
| Recurring Tasks | Todoist, Things, TickTick, calendar events |
| Habits | Streaks, Habitica, TickTick habits, manual tracking |

**What you're learning:** What tools to reference in their CLAUDE.md and how skills should read/write data.

**Important:** Don't suggest they switch tools. Build the system around what they already use.

**After collecting tools, run the Gap Analysis internally:**

The system needs these capabilities. Map each to what they have, and apply the fallback if they don't have it:

| Capability | Why it matters | If they have it | If they DON'T |
|-----------|---------------|-----------------|---------------|
| **Markdown file storage** | STATE.md, skills, project hubs — the system's foundation | Use their notes app (Obsidian, filesystem, etc.) | **Minimum requirement.** If they have no markdown-capable tool, create a folder on their machine (e.g., `~/executive-function/`). Claude Code reads files directly. Claude.ai users paste content — note the extra friction. |
| **Calendar access** | Session-start alignment, morning planning schedule-awareness | Reference their calendar tool in CLAUDE.md | Skills ask the user directly: "What's on your calendar today?" Remove automated calendar checks from morning-planning and checkpoint compliance. |
| **Email access** | Inbox triage, digest batch mode | Reference their email tool in CLAUDE.md | Inbox triage skips the email step (just capture tool + head). Digest skips email mode. User can paste emails manually when needed. |
| **Quick capture** | Capture-then-defer (ADHD: idea is safe, won't be forgotten) | Reference their capture app | Capture-then-defer writes to a `scratch.md` file or directly to STATE.md context notes. |
| **Recurring tasks** | Inbox triage tool elevation (weekly+) | Reference their recurring task tool | Use calendar recurring events instead. Or maintain a simple recurring checklist in a `routines.md` file. |
| **Habits tracking** | Balance dimension tracking, routine consistency | Reference their habits app | Skip habits — track via weekly review narrative only. Or add a simple checkbox section to STATE.md. |

**If critical gap (no markdown file storage):** Suggest Obsidian (free, local-first, markdown-native). This is the ONE tool worth recommending because the entire system is built on markdown files.

**Adapt skills accordingly:** When generating CLAUDE.md (Phase 2 Step 1), set the Tool Ecosystem table to reflect actual tools AND fallbacks. Skills that reference missing capabilities should have their compliance checklists adjusted (remove tool-specific checks, replace with "ask user" steps).

### 1C: Energy & Routines

**Ask:** "Walk me through a typical day — when do you wake up, when is your focus sharpest, when does energy dip? Do you have any routines that anchor your day (morning, midday, evening)?"

**Listen for:**
| Signal | Maps to |
|--------|---------|
| "I'm sharpest in the morning" | Peak window → guard for hard/important work |
| "I crash after lunch" | Valley window → schedule low-stakes tasks or rest |
| "I have a morning routine" | Existing scaffold to build on (morning-planning pairs well) |
| "Evenings are chaotic" | Night routine friction → don't over-schedule evenings |
| "I take medication at [time]" | Medication window → peak focus may be time-shifted |

**What you're learning:** Their biological rhythm (Energy Map) for the USER-PROFILE, and where to anchor daily planning. If they use medication that affects focus windows, note timing.

### 1D: Aspirations

**Adapt from 1A:** "You mentioned [their areas]. Looking across those — what's the big thing you're trying to achieve right now, or over the next year? Not a task list, just the one thing that would feel like real progress."

**Follow up with WOOP framework (one question at a time):**
1. "When you imagine that going well, what does success look and feel like?"
2. "What usually gets in the way — not external blockers, but the internal thought or habit that derails you?"
3. "When that obstacle hits, what's one concrete thing you could do instead?"

**What you're learning:** Their WOOP plan (Wish, Outcome, Obstacle, Plan). This becomes the "North Star" in their USER-PROFILE and informs the annual identity statement. If they struggle with this, don't force it — revisit during the first strategic review.

### 1E: Balance Dimensions

**Adapt from 1A + 1C + 1D:** "You've got [their areas], your energy peaks at [time], and your main goal is [aspiration]. Looking at that — which areas tend to get neglected when you're busy? What slides first?"

**Follow up:** "Are there cross-cutting themes that matter to you? For example, some people care about tracking: earning money, health/wellness, creative expression, fun/social life — and those cut across multiple areas."

**Suggest based on what you've heard:** If their aspiration is career-focused but they mentioned health routines fading, suggest pillars that cover both. Example: "Based on what you said, possible pillars could be: Livelihood (career progress), Wellness (those routines you mentioned), Creative (side interests), Social (relationships)."

**What you're learning:** Their "pillars" — cross-cutting balance dimensions. Used for rotation within areas (especially the catch-all area) and weekly review.

**If they don't resonate with pillars:** Skip it. Pillars are optional — some people just need areas.

### 1F: Struggles & Past Systems

**Adapt from 1D:** "You mentioned [WOOP obstacle] as what usually gets in your way. Does that show up across your life, or mainly in [aspiration context]? More broadly — what makes getting things done hard for you?"

**Listen for patterns:**

| What they say | Maps to | Support level |
|---------------|---------|---------------|
| "I know what to do but can't start" | Executive function gap (initiation) | Full EF scaffolding |
| "I get overwhelmed by everything at once" | Working memory / cognitive load | Chief of Staff model (hide the pile) |
| "I start things but don't finish" | Sustained attention / follow-through | Checkpoint + review systems |
| "I forget things unless they're in front of me" | Working memory / external memory | State tracking + proactive nudges |
| "I procrastinate on hard/boring things" | Avoidance / activation energy | Micro-step interventions |
| "I get sucked into one thing and neglect everything else" | Hyperfocus / tunnel vision | Balance tracking + drift detection |
| "I feel guilty about what I haven't done" | Emotional regulation / shame | Neutral phrasing + momentum framing |
| "I'm disorganized but functional" | Mild organizational friction | Lighter scaffolding, fewer nudges |
| "I just need help organizing my projects" | Organizational, not EF | Project patterns + reviews only |

**Follow up:** "What productivity systems or approaches have you tried before? What worked, what didn't, and why?"

**What you're learning:** Their failure mechanisms (Research Abyss, False Start, Guilt Spiral, etc.) and what's been tried. Past system failures are the best predictor of what friction to avoid. If rigid systems failed, keep this one loose. If they never stuck with anything, start extremely minimal.

**If they mention ADHD, autism, OCD, anxiety, or other conditions:**
→ Note it. Adapt intervention patterns (from CLAUDE-TEMPLATE.md Section 6) to the mentioned conditions. See the "Communication by Condition" table.

**If they mention mainly organizational struggles:**
→ Lighter system. Skip intervention patterns. Focus on project structure + reviews.

### 1G: Working Preferences

**Adapt from 1F:** If they mentioned rigid systems failing: "Since rigid systems haven't worked, would you prefer the system to be more hands-off — or do you still want structure, just with more flexibility?" If they mentioned forgetfulness: "Given the memory challenges, would you want the system to be proactive — nudging you without being asked — or should it wait until you ask?"

**Ask:** "How do you prefer to interact with tools — quick text prompts, voice, visual boards, long conversations? And how do you feel about automation — full auto once it's set up, or hands-on control?"

**What you're learning:** Two things:
1. **Modality preference** → Affects how skills prompt them (checklists vs narrative, granular vs summary)
2. **Automation tolerance** → Affects how aggressively the system acts autonomously vs asks first

| Automation level | System behavior |
|-----------------|-----------------|
| "Full auto, I trust it" | Proactive nudges, auto-capture, silent state updates |
| "Show me what you're doing" | Explain before acting, confirm changes |
| "I want control" | Only act when explicitly asked, minimal proactivity |

### 1H: Communication Style

**Adapt from 1F:** Based on their struggles, RECOMMEND a style — don't just list options. Examples:
- Shame/guilt prominent → "Based on what you shared, a **Warm Coach** style might help — celebrating small wins and keeping things shame-free."
- Momentum/action-focused → "You seem action-oriented — a **Direct Commander** style would keep things terse and moving."
- Levity helps them cope → "Sounds like humor helps you — **Sardonic Companion** might be a good fit."
- Wants tool-like efficiency → "**Neutral Professional** — no personality, just output."

**Then ask:** "Does that feel right, or would you prefer something different?"

| Style | Tone | Best for |
|-------|------|----------|
| Warm Coach | Encouraging, celebrates small wins | When shame/avoidance is high |
| Direct Commander | Terse, action-focused | When momentum matters most |
| Sardonic Companion | Dry humor, slightly pessimistic | When levity helps |
| Neutral Professional | Matter-of-fact, no personality | When tool-like interaction is preferred |

**What you're learning:** Their personality module. Goes into CLAUDE.md and USER-PROFILE.

### 1I: Interface

**Ask:** "How are you using Claude? Claude Code (terminal), Claude.ai (web/app), or something else?"

**What you're learning:** Affects file management approach and which features are available.

---

## Phase 2: Generate Config (Claude does this)

After the interview, build their system in a **new directory**. The template stays untouched.

**CRITICAL:** Never modify files in the template directory. Read template source files, write customized versions to the output directory.

### Step 0: Create Output Directory

**Ask:** "Where should I set up your system? Default is `~/executive-function/`, or if you use Obsidian, your vault root."

Create the directory structure:
```
[OUTPUT_DIR]/
  CLAUDE.md
  ef-system/
    STATE.md
    EF-SYSTEM.md
    BUILD-PLAN.md
    SYSTEM-STRUCTURE.md
    AGENTIC-PATTERNS.md
    skills/
    reference/
    tasks/
    history/
  projects/
  resources/
```

Copy these files from the template to `[OUTPUT_DIR]/` unchanged (they're already generic):
- `ef-system/EF-SYSTEM.md`
- `ef-system/BUILD-PLAN.md`
- `ef-system/AGENTIC-PATTERNS.md`
- `ef-system/skills/` — all skill files (will be customized in Step 6)
- `ef-system/reference/` — all reference docs **except** `reference/setup/` (setup-only, stays in template)
- `ef-system/tasks/README.md`
- `ef-system/history/README.md`
- `projects/README.md`
- `resources/README.md`
- `areas/health/SUPPORT-KB.md`

### Step 1: Placeholder Substitution Map

Build this map from the interview, then apply it when writing each customized file.

**Placeholder tokens:**

| Token | Source | Example value |
|-------|--------|---------------|
| `[AREA_1]` through `[AREA_4]` | Interview 1A: life areas (display name) | `Projects`, `Relationships` |
| `[area-1]` through `[area-4]` | Same, kebab-case (for folder/file paths) | `projects`, `relationships` |
| `[PILLAR_1]` through `[PILLAR_4]` | Interview 1E: balance dimensions | `Livelihood`, `Wellness` |
| `[pillar_1]` through `[pillar_4]` | Same, snake_case (for state keys) | `livelihood`, `wellness` |
| `[USER_HOME]` | System path (from Step 0) | `/Users/jane` |
| `[Pillar_N]` | Same as PILLAR_N (used in some narrative examples) | `Creative` |
| `[YEAR]` | Current year (for annual planning references) | `2026` |
| `[PREV_YEAR]` | Previous year (for annual review lookback) | `2025` |

**Files needing substitution (read from template, write customized to output):**

| Source file | Placeholders |
|------------|-------------|
| `CLAUDE-TEMPLATE.md` | `[USER_HOME]`, area/pillar references |
| `ef-system/STATE.md` | `[AREA_1]`–`[AREA_4]`, `[PILLAR_1]`–`[PILLAR_4]`, `[pillar_1]`–`[pillar_4]` |
| `ef-system/skills/morning-planning.md` | `[AREA_1]`–`[AREA_4]` |
| `ef-system/skills/weekly-review.md` | `[AREA_1]`–`[AREA_4]` |
| `ef-system/skills/inbox-triage.md` | `[AREA_1]`–`[AREA_4]` |
| `ef-system/skills/strategic-reviews.md` | `[AREA_1]`–`[AREA_4]`, `[PILLAR_1]`–`[PILLAR_4]`, `[Pillar_N]`, `[YEAR]`, `[PREV_YEAR]` |
| `ef-system/SYSTEM-STRUCTURE.md` | Area/project folder examples |

If the user has fewer than 4 areas, remove unused `[AREA_N]` rows/references rather than leaving placeholders. Same for pillars.

### Step 2: Build CLAUDE.md

Read `CLAUDE-TEMPLATE.md` as the source. Write a customized version to `[OUTPUT_DIR]/CLAUDE.md` with:
- Section 1: Their system root path (`[USER_HOME]`) and state file location
- Section 2: Skill commands (start with `@morning-planning` only)
- Section 3: Skills table (only morning-planning initially, note others available)
- Section 4: Their tool ecosystem from interview 1B
- Section 5: Interaction principles — **calibrate based on 1F:**
  - Universal principles (scaffold decisions, flexibility, momentum) → always include
  - Neutral phrasing → include if shame/guilt patterns in 1F; otherwise optional
  - Intervention patterns → include only patterns matching their struggles. If struggles were mainly organizational → skip intervention table entirely
  - Communication by Condition → include only conditions they mentioned
  - Execution Support (session-start alignment, capture-then-defer, research-before-build) → include if they mentioned focus/drift/forgetfulness; skip if organizational only
  - **Energy-aware scheduling:** Add note from 1C — hard tasks during peak window, operational tasks during valley
- Section 6: Core rules — **calibrate based on 1G + 1H:**
  - Flag & Confirm → **relax if automation tolerance is "full auto"**: change to "act autonomously, surface results after". Keep strict if "hands-on control"
  - Systems Design First → keep if they have complex projects; skip if they mainly need daily planning
  - Research Before Answering → keep (universal)
  - Checkpoint adherence → include if support level is moderate or full EF; skip if organizational only
  - Workflow Design for AI Pairing → skip unless they're technical/interested in AI workflows
- Section 7: Communication style — **from 1H, but calibrate specifics:**
  - Warm Coach → soften brevity rules: allow 4-5 sentences, include encouragement
  - Direct Commander → strict brevity, max 2 sentences, zero preamble
  - Sardonic Companion → allow personality in responses, dry humor OK
  - Neutral Professional → strict brevity, no personality, tool-like output
- Section 8: File management (adapt to their interface from 1I)

Apply all placeholder substitutions from Step 1.

### Step 3: Build state.md

Read `ef-system/STATE.md` as the source. Write customized version to `[OUTPUT_DIR]/ef-system/STATE.md` with:
- `[AREA_1]`–`[AREA_4]` replaced with their area names
- `[PILLAR_1]`–`[PILLAR_4]` and `[pillar_1]`–`[pillar_4]` replaced with their pillar names
- Leave daily fields empty (first morning-planning will populate)

### Step 4: Build USER-PROFILE

Read `ef-system/reference/setup/USER-PROFILE-TEMPLATE.md`. Write filled version to `[OUTPUT_DIR]/ef-system/reference/USER-PROFILE.md`:
- Section 1 (WOOP Plan): From interview 1D — wish, outcome, obstacle, if-then plan
- Section 2 (Energy Map): From interview 1C — peak and valley windows
- Section 3 (Cognitive Traits): From interview 1F — focus style, failure mechanism, initiation vs persistence. Cross-reference with 1D WOOP obstacle.
- Section 4 (Interaction Archetype): From interview 1G (modality/automation) + 1H (communication style)
- Section 5 (Privacy): Ask now if there are off-limits topics or key support people
- Section 6 (Hard Rules): Derive from the above — 2-3 rules Claude must always follow for this user

### Step 5: Build CONTEXT.md

Generate from interview data. Write to `[OUTPUT_DIR]/` or first project folder:
- Their active projects (ask: "What are you working on right now?")
- Their tool stack from interview 1B
- File structure based on their setup

### Step 6: Install skills

For each skill file already copied in Step 0, apply placeholder substitutions from Step 1 in-place in the output directory.

**Tool-gap adaptations:** For each tool gap identified in the 1B Gap Analysis, edit the relevant skill's compliance checklist in the output directory:
- No calendar → morning-planning: remove calendar check, add "Ask user: what's on your schedule today?"
- No email → inbox-triage: remove email inbox check, keep capture + head only
- No capture app → skills that use capture-then-defer: write to `scratch.md` instead
- No recurring task tool → inbox-triage Step 4A: replace "recurring task tool" with "calendar recurring events" or "routines.md checklist"

Then introduce morning-planning first — walk them through a first morning planning session right now. This is how they learn the system.

### Step 7: Memory Setup (Optional but Recommended)

If the user wants cross-session memory (so Claude remembers past conversations):

1. Install claude-mem MCP: `npm install -g @thedotmack/claude-mem`
2. Add to Claude Code MCP config (`.claude/settings.json`):
   ```json
   { "mcpServers": { "claude-mem": { "command": "claude-mem", "args": ["mcp"] } } }
   ```
3. The `@mem` skill and CLAUDE.md Memory Protocol are already configured in the output.
4. Memory is shared across all agents that read from `~/.claude-mem/claude-mem.db`.

### Step 8: Save Template Config

Save the substitution map and template version to the user's system so future updates can re-apply personalizations.

Write to `[OUTPUT_DIR]/ef-system/.template-config.md`:

```markdown
# Template Configuration
<!-- DO NOT EDIT — used by @update-system to apply template updates -->

## Source
- template-version: [version from template's VERSION file]
- template-path: [path to template directory]
- generated: [today's date]

## Substitution Map
| Token | Value |
|-------|-------|
| `[AREA_1]` | [their value] |
| `[AREA_2]` | [their value] |
| `[AREA_3]` | [their value] |
| `[AREA_4]` | [their value or "unused"] |
| `[area-1]` | [kebab-case] |
| `[area-2]` | [kebab-case] |
| `[area-3]` | [kebab-case] |
| `[area-4]` | [kebab-case or "unused"] |
| `[PILLAR_1]` | [their value] |
| `[PILLAR_2]` | [their value] |
| `[PILLAR_3]` | [their value or "unused"] |
| `[PILLAR_4]` | [their value or "unused"] |
| `[pillar_1]` | [snake_case] |
| `[pillar_2]` | [snake_case] |
| `[pillar_3]` | [snake_case or "unused"] |
| `[pillar_4]` | [snake_case or "unused"] |
| `[USER_HOME]` | [their home path] |
| `[YEAR]` | [current year] |
| `[PREV_YEAR]` | [previous year] |

## Tool Gap Adaptations
[List each gap and what was changed, e.g.:]
- No calendar access: morning-planning compliance adjusted, checkpoint calendar check removed
- No email: inbox-triage email step removed
- (or: "No gaps — all capabilities covered")

## Communication Style
- Archetype: [Warm Coach / Direct Commander / Sardonic Companion / Neutral Professional]
- Support level: [full EF / moderate / organizational only]
```

### Step 9: Save breadcrumb in template

Write the user's system path to `.last-output` in the template directory (this file is gitignored):

```
/Users/jane/executive-function
```

This lets the update protocol auto-detect their system path without asking.

### Step 10: Verify and hand off

1. Verify the output directory has: `CLAUDE.md`, `ef-system/` (with STATE.md, skills/, reference/, .template-config.md), `projects/`, `resources/`
2. Tell the user: "Your system is ready at `[OUTPUT_DIR]`. Open Claude Code there for daily use. This template directory stays for future updates — you can `git pull` anytime."
3. The system is live. First session starts with `@morning-planning`.

---

## Phase 3: First Week Protocol

**Calibrate pace from interview 1F (support level):**

### If Full EF Scaffolding
User has significant executive function challenges. Gradual rollout, but not glacial.

**Day 1:** Morning planning + checkpoint. Walk through both live.
**Day 3:** Add inbox triage (if they have email/capture tools).
**End of week 1:** Weekly review.
**Week 2+:** Add remaining skills as specific friction emerges.

### If Moderate Support
User has some challenges but is generally functional. Faster rollout.

**Day 1:** Morning planning + checkpoint + inbox triage. Walk through each once.
**End of week 1:** Weekly review.
**Week 2:** All skills available, introduce as relevant.

### If Organizational Only
User mainly needs structure, not scaffolding. Everything available immediately.

**Day 1:** Walk through all core skills (morning planning, checkpoint, inbox triage, weekly review). User picks which to adopt.
**Week 1:** Full system available. Adjust based on what sticks.

### For all levels — add on demand:
- **Want deeper content processing?** → `@digest`
- **Need longer-horizon planning?** → `@strategic-reviews`
- **Need structured task tracking?** → `@task`
- **Need emotional/cognitive support?** → `@support`

**Key message:** "Everything is available. Start with the core loop (plan → do → checkpoint → review) and add the rest when you feel specific friction."

---

## Interview Notes Template

After the interview, save this for reference:

```markdown
## Setup Interview Notes
**Date:** [date]

### Life Areas (1A)
- [Area 1]: [description]
- [Area 2]: [description]
- [Area 3]: [description]
- [Area 4]: [description] (if applicable)

### Tools (1B)
- Tasks: [tool]
- Calendar: [tool]
- Notes: [tool]
- Capture: [tool]
- Recurring: [tool]
- Habits: [tool or "none"]

### Energy & Routines (1C)
- Peak window: [time range]
- Valley window: [time range]
- Existing routines: [morning/midday/evening — what exists]
- Medication timing: [if applicable]

### Aspirations / WOOP (1D)
- Wish: [their big goal]
- Outcome: [what success looks/feels like]
- Obstacle: [internal blocker]
- Plan: IF [obstacle], THEN [action]

### Balance Dimensions / Pillars (1E)
- [Pillar 1]: [what it covers]
- [Pillar 2]: [what it covers]
- (or: "Skipped — user doesn't resonate with cross-cutting dimensions")

### Struggles & Past Systems (1F)
- Key patterns: [what they said]
- Support level: [full EF / moderate / organizational only]
- Conditions mentioned: [if any]
- Past system failures: [what they tried, why it failed]
- Failure mechanism: [Research Abyss / False Start / Guilt Spiral / other]

### Working Preferences (1G)
- Modality: [text prompts / voice / visual / mixed]
- Automation tolerance: [full auto / show me / hands-on]
- Granularity: [tactical micro-steps / high-level summary]

### Communication Style (1H)
- Style: [Warm Coach / Direct Commander / Sardonic Companion / Neutral Professional]
- Recommended based on: [which 1F patterns drove the suggestion]

### Interface (1I)
- Primary: [Claude Code / Claude.ai / other]

### Active Projects
- [project 1]: [brief description]
- [project 2]: [brief description]
```

---

## Phase 4: Update Protocol

**When:** User has an existing system and the template has been updated (`git pull`).

**Entry point:** User opens Claude Code in the template directory, says "update my system" and provides their system path.

### Step 1: Find system and read state

1. Read `.last-output` in this template directory — it contains the user's system path
   - If `.last-output` doesn't exist, ask: "Where is your system directory? (e.g., `~/executive-function/`)"
   - Confirm with the user: "Your system is at `[path]` — correct?"
2. Read `CHANGELOG.md` in this template directory — note the current version (top heading)
3. Read `[USER_SYSTEM]/ef-system/.template-config.md` — note their version, substitution map, tool gaps, and communication style
4. Identify all changelog entries between their version and the current version

**If no `.template-config.md` exists:** The system predates versioned updates. Build the config by reading their existing `CLAUDE.md` (extract areas, pillars, tools, style). Save it as `.template-config.md` before proceeding.

### Step 2: Categorize changes

From the changelog entries, build three lists:

**Auto-update files** (template-owned — safe to replace):
| Category | Files | Update method |
|----------|-------|---------------|
| Skills | `ef-system/skills/*.md` | Read new template file → apply substitution map → write to user's system |
| Reference docs | `ef-system/reference/*.md` (except USER-PROFILE.md) | Copy from template, no substitution needed |
| Infrastructure | `BUILD-PLAN.md`, `AGENTIC-PATTERNS.md`, `SYSTEM-STRUCTURE.md` | Copy from template (SYSTEM-STRUCTURE needs substitution) |

**Manual merge files** (user-owned — show diff, don't replace):
| Category | Files | Update method |
|----------|-------|---------------|
| CLAUDE.md | Root `CLAUDE.md` | Show what changed in template's CLAUDE-TEMPLATE.md. Suggest specific additions. Never overwrite. |
| EF-SYSTEM.md | `ef-system/EF-SYSTEM.md` | Only if template changed task structure. Usually no action needed. |

**New files** (didn't exist in their version):
| Update method |
|---------------|
| Copy from template → apply substitution map → write to user's system. If it's a new skill, also suggest adding it to their CLAUDE.md skill table. |

### Step 3: Present and confirm

Show the user a summary:

```
Template update: [old version] → [new version]

Auto-update (I'll handle these):
- [list of files with one-line description of what changed]

Manual merge (I'll show you what to add):
- [list of files with description]

New files (I'll create these):
- [list of new files]

Shall I proceed?
```

**Wait for confirmation before touching any files.**

### Step 4: Apply updates

1. **Auto-update files:** For each file:
   - Read the new version from the template
   - Apply the substitution map from `.template-config.md`
   - Re-apply tool-gap adaptations from `.template-config.md`
   - Write to user's system (replacing the old version)

2. **Manual merge files:** For each file:
   - Show a clear before/after of the template change
   - Suggest the specific edit to make in their file (section to add, line to change)
   - Apply only with explicit approval

3. **New files:** For each file:
   - Read from the template
   - Apply substitution map
   - Write to user's system
   - If it's a skill, suggest adding the `@skillname` row to their CLAUDE.md skill table

### Step 5: Update config

Update `[USER_SYSTEM]/ef-system/.template-config.md`:
- Set `template-version` to the new version
- Set `last-updated` to today's date
- Keep all other fields unchanged

### Edge Cases

**User modified a template-owned file (e.g., edited a skill protocol):**
→ The auto-update will overwrite their changes. Before applying, diff the user's current file against the *previous* template version. If they diverge (user made custom edits), flag it: "You've customized [file]. The update will replace it. Want to: (a) accept the update and re-apply your changes, (b) keep your version, or (c) see the diff?"

**User has fewer areas/pillars than placeholders:**
→ The substitution map handles this — "unused" tokens get removed, same as initial setup.

**User wants to skip some updates:**
→ Fine. Update the version number to current anyway (to avoid re-prompting), but note skipped files in `.template-config.md` under a `## Skipped Updates` section.

---

## Troubleshooting

**User is overwhelmed by the interview itself:**
→ Cut to essentials: "What are your 3-4 life areas?" and "What tools do you use?" Skip the rest, use defaults, refine later.

**User wants everything immediately:**
→ Generate it all, but still introduce one skill at a time. "Everything's ready behind the scenes. Let's start with morning planning and add more as we go."

**User has very different needs than the defaults:**
→ The system is flexible. Rename areas, skip pillars, adjust skill protocols. The only non-negotiable: some form of daily intention-setting and periodic review.

**User is neurodivergent but doesn't want the ND-specific patterns:**
→ Respect their preference. The universal principles (scaffold decisions, momentum > perfection) help everyone. Don't push the clinical framing.
