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
→ Note it. Adapt intervention patterns (from engine/CLAUDE.md Section 6) to the mentioned conditions. See the "Communication by Condition" table.

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

After the interview, build their system. **Do not dump all files at once.** Generate them behind the scenes and introduce one at a time.

### Step 0: Placeholder Substitution Map

Engine files use placeholder tokens that must be replaced with the user's answers from Phase 1. Build this map from the interview, then apply it across all files listed below.

**Placeholder tokens:**

| Token | Source | Example value |
|-------|--------|---------------|
| `[AREA_1]` through `[AREA_4]` | Interview 1A: life areas (display name) | `Projects`, `Relationships` |
| `[area-1]` through `[area-4]` | Same, kebab-case (for folder/file paths) | `projects`, `relationships` |
| `[PILLAR_1]` through `[PILLAR_4]` | Interview 1B: balance dimensions | `Livelihood`, `Wellness` |
| `[pillar_1]` through `[pillar_4]` | Same, snake_case (for state keys) | `livelihood`, `wellness` |
| `[USER_HOME]` | System path | `/Users/jane` |
| `[Pillar_N]` | Same as PILLAR_N (used in some narrative examples) | `Creative` |
| `[YEAR]` | Current year (for annual planning references) | `2026` |
| `[PREV_YEAR]` | Previous year (for annual review lookback) | `2025` |

**Files containing placeholders (apply substitutions to ALL of these):**

| File | What to replace |
|------|----------------|
| `engine/CLAUDE.md` | `[USER_HOME]`, area/pillar references in examples |
| `engine/ef-system/STATE.md` | `[AREA_1]`–`[AREA_4]`, `[PILLAR_1]`–`[PILLAR_4]`, `[pillar_1]`–`[pillar_4]` in all sections |
| `engine/ef-system/skills/morning-planning.md` | `[AREA_1]`–`[AREA_4]` in bucket table, state format, compliance checklist |
| `engine/ef-system/skills/weekly-review.md` | `[AREA_1]`–`[AREA_4]` in Part C focus items |
| `engine/ef-system/skills/inbox-triage.md` | `[AREA_1]`–`[AREA_4]` in bucket descriptions |
| `engine/ef-system/skills/strategic-reviews.md` | `[AREA_1]`–`[AREA_4]`, `[PILLAR_1]`–`[PILLAR_4]`, `[Pillar_N]`, `[YEAR]`, `[PREV_YEAR]` throughout |
| `engine/ef-system/SYSTEM-STRUCTURE.md` | Area/project folder examples |

**How to substitute:** Use find-and-replace across each file. If the user has fewer than 4 areas, remove unused `[AREA_N]` rows/references rather than leaving placeholders. Same for pillars.

### Step 1: Build CLAUDE.md

Use `engine/CLAUDE.md`. Apply placeholder substitutions (Step 0), then fill in:
- Section 1: Their system root path (`[USER_HOME]`) and state file location
- Section 2: Skill commands (start with `@morning-planning` only)
- Section 3: Skills table (only morning-planning initially, note others available)
- Section 4: Their tool ecosystem from interview 1B
- Section 5: Interaction principles — **calibrate based on interview 1F:**
  - Universal principles (scaffold decisions, neutral phrasing, flexibility, momentum) → always include
  - Intervention patterns → include patterns matching their struggles
  - Communication by Condition → include only conditions they mentioned or that clearly map to their struggles
  - Execution Support → include if they mentioned focus/drift issues
  - If struggles were mainly organizational → minimal Section 5, skip intervention table
- Section 6: Operational rules (include as-is, these are universal)
- Section 7: Communication style from interview 1H
- Section 8: File management (adapt to their interface from 1I)

**Energy-aware scheduling:** Use interview 1C (peak/valley windows) to add a note in Section 5 about task scheduling — hard tasks during peak window, operational tasks during valley.

### Step 2: Build state.md

Use `engine/ef-system/STATE.md` (already scaffolded with placeholders). Apply placeholder substitutions from Step 0:
- Replace `[AREA_1]`–`[AREA_4]` with their area names
- Replace `[PILLAR_1]`–`[PILLAR_4]` and `[pillar_1]`–`[pillar_4]` with their pillar names
- Leave daily fields empty (first morning-planning will populate)

### Step 3: Build USER-PROFILE

Use `fuel/USER-PROFILE-TEMPLATE.md`. Fill in from interview:
- Section 1 (WOOP Plan): From interview 1C — wish, outcome, obstacle, if-then plan
- Section 2 (Energy Map): From interview 1E — peak and valley windows
- Section 3 (Cognitive Traits): From interview 1F — focus style, failure mechanism, initiation vs persistence. Cross-reference with 1D WOOP obstacle.
- Section 4 (Interaction Archetype): From interview 1G (modality/automation) + 1H (communication style)
- Section 5 (Privacy): Ask now if there are off-limits topics or key support people
- Section 6 (Hard Rules): Derive from the above — 2-3 rules Claude must always follow for this user

Save to `ef-system/reference/USER-PROFILE.md`.

### Step 4: Build CONTEXT.md

Use `fuel/CONTEXT-TEMPLATE.md`. Fill in:
- Their active projects (ask: "What are you working on right now?")
- Their tool stack from interview 1B
- File structure based on their setup

### Step 5: Install skills

Apply placeholder substitutions (Step 0) to all skill files listed in the substitution map.

**Tool-gap adaptations:** For each tool gap identified in the 1B Gap Analysis, edit the relevant skill's compliance checklist:
- No calendar → morning-planning: remove calendar check, add "Ask user: what's on your schedule today?"
- No email → inbox-triage: remove email inbox check, keep capture + head only
- No capture app → skills that use capture-then-defer: write to `scratch.md` instead
- No recurring task tool → inbox-triage Step 4A: replace "recurring task tool" with "calendar recurring events" or "routines.md checklist"

Then introduce morning-planning first — walk them through a first morning planning session right now. This is how they learn the system.

### Step 6: Memory Setup (Optional but Recommended)

If the user wants cross-session memory (so Claude remembers past conversations):

1. Install claude-mem MCP: `npm install -g @thedotmack/claude-mem`
2. Add to Claude Code MCP config (`.claude/settings.json`):
   ```json
   { "mcpServers": { "claude-mem": { "command": "claude-mem", "args": ["mcp"] } } }
   ```
3. The `@mem` skill (`engine/ef-system/skills/mem.md`) and CLAUDE.md Memory Protocol are already configured.
4. Memory is shared across all agents that read from `~/.claude-mem/claude-mem.db`.

---

## Phase 3: First Week Protocol

**Explain to the user:**

"We're starting with just morning planning. Here's how the first two weeks work:"

### Days 1-3: Morning Planning Only
- Run `@morning-planning` each morning (or whenever you start your day)
- Pick one task from each life area
- That's it. No other system overhead.

### Days 4-7: Add Checkpoints
- When you finish a work session or step away, run `@checkpoint`
- This saves what you were doing so we can pick up next time
- Still doing morning planning daily

### Week 2: Add Weekly Review
- At the end of week 1, run `@weekly-review`
- Look at what happened, what was neglected, set next week's focus
- Continue morning planning + checkpoints

### Beyond Week 2: As Friction Emerges
- **Feeling overwhelmed by inboxes?** → Add `@inbox-triage`
- **Want deeper content processing?** → Add `@digest`
- **Need longer-horizon planning?** → Add `@strategic-reviews`
- **Need structured task tracking?** → Add `@task`

**Key message:** "You don't need all the skills. Add them when you feel specific friction, not before."

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

## Troubleshooting

**User is overwhelmed by the interview itself:**
→ Cut to essentials: "What are your 3-4 life areas?" and "What tools do you use?" Skip the rest, use defaults, refine later.

**User wants everything immediately:**
→ Generate it all, but still introduce one skill at a time. "Everything's ready behind the scenes. Let's start with morning planning and add more as we go."

**User has very different needs than the defaults:**
→ The system is flexible. Rename areas, skip pillars, adjust skill protocols. The only non-negotiable: some form of daily intention-setting and periodic review.

**User is neurodivergent but doesn't want the ND-specific patterns:**
→ Respect their preference. The universal principles (scaffold decisions, momentum > perfection) help everyone. Don't push the clinical framing.
