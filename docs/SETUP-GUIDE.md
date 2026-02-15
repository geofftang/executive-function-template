# Setup Guide — New User Interview Protocol

**For Claude:** Walk the user through this interview to build their personalized system. Be conversational, not clinical. Adapt pacing to the user — some people want to move fast, others need to think.

---

## Phase 1: Discovery (~15 min)

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

### 1B: Balance Dimensions

**Ask:** "Looking at those areas — which ones tend to get neglected? What slides when you're busy?"

**Follow up:** "Are there cross-cutting themes that matter to you? For example, some people care about tracking: earning money, health/wellness, creative expression, fun/social life — and those cut across multiple areas."

**What you're learning:** Their "pillars" — cross-cutting balance dimensions. Used for rotation within areas (especially the catch-all area) and weekly review.

**If they don't resonate with pillars:** Skip it. Pillars are optional — some people just need areas.

### 1C: Tools

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

**Important:** Don't suggest they switch tools. Build the system around what they already use. Suggest additions only if a critical function is missing entirely.

### 1D: Struggles

**Ask:** "What makes getting things done hard for you? Not looking for a diagnosis — just what you notice."

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

**If they mention ADHD, autism, OCD, anxiety, or other conditions:**
→ Note it. Load the full intervention patterns (from CLAUDE-TEMPLATE Section 5) and adapt them to the mentioned conditions. See the "Communication by Condition" table.

**If they mention mainly organizational struggles:**
→ Lighter system. Skip intervention patterns. Focus on project structure + reviews.

**What you're learning:** How much executive function support they need. This is the biggest dial in the system.

### 1E: Communication Style

**Ask:** "How should I talk to you? Some people want warm encouragement. Others want terse, direct commands. Some like dry humor."

**Options to offer:**
| Style | Tone | Best for |
|-------|------|----------|
| Warm Coach | Encouraging, celebrates small wins | When shame/avoidance is high |
| Direct Commander | Terse, action-focused | When momentum matters most |
| Sardonic Companion | Dry humor, slightly pessimistic | When levity helps |
| Neutral Professional | Matter-of-fact, no personality | When tool-like interaction is preferred |

**What you're learning:** Their personality module. Goes into CLAUDE.md.

### 1F: Interface

**Ask:** "How are you using Claude? Claude Code (terminal), Claude.ai (web/app), or something else?"

**What you're learning:** Affects file management approach and which features are available.

---

## Phase 2: Generate Config (Claude does this)

After the interview, build their system. **Do not dump all files at once.** Generate them behind the scenes and introduce one at a time.

### Step 1: Build CLAUDE.md

Use `engine/CLAUDE.md`. Fill in:
- Section 1: Their system root path and state file location
- Section 2: Skill commands (start with `@morning-planning` only)
- Section 3: Skills table (only morning-planning initially, note others available)
- Section 4: Their tool ecosystem from interview 1C
- Section 5: Interaction principles — **calibrate based on interview 1D:**
  - Universal principles (scaffold decisions, neutral phrasing, flexibility, momentum) → always include
  - Intervention patterns → include patterns matching their struggles
  - Communication by Condition → include only conditions they mentioned or that clearly map to their struggles
  - Execution Support → include if they mentioned focus/drift issues
  - If struggles were mainly organizational → minimal Section 5, skip intervention table
- Section 6: Operational rules (include as-is, these are universal)
- Section 7: Communication style from interview 1E
- Section 8: File management (adapt to their interface)

### Step 2: Build state.md

Use `fuel/STATE-TEMPLATE.md`. Fill in:
- Their area names from interview 1A
- Their pillar names from interview 1B (if applicable)
- Leave daily fields empty (first morning-planning will populate)

### Step 3: Build CONTEXT.md

Use `fuel/CONTEXT-TEMPLATE.md`. Fill in:
- Their active projects (ask: "What are you working on right now?")
- Their tool stack from interview 1C
- File structure based on their setup

### Step 4: Install morning-planning

Copy `engine/ef-system/skills/morning-planning.md` with their area names substituted. Walk them through a first morning planning session right now — this is how they learn the system.

### Step 5: Memory Setup (Optional but Recommended)

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
- **Juggling multiple projects?** → Add `@project-management`
- **Want deeper content processing?** → Add `@digest`
- **Need longer-horizon planning?** → Add `@strategic-reviews`

**Key message:** "You don't need all the skills. Add them when you feel specific friction, not before."

---

## Interview Notes Template

After the interview, save this for reference:

```markdown
## Setup Interview Notes
**Date:** [date]

### Life Areas
- [Area 1]: [description]
- [Area 2]: [description]
- [Area 3]: [description]
- [Area 4]: [description] (if applicable)

### Balance Dimensions (Pillars)
- [Pillar 1]: [what it covers]
- [Pillar 2]: [what it covers]
- (or: "Skipped — user doesn't resonate with cross-cutting dimensions")

### Tools
- Tasks: [tool]
- Calendar: [tool]
- Notes: [tool]
- Capture: [tool]
- Recurring: [tool]
- Habits: [tool or "none"]

### Struggles → Support Level
- Key patterns: [what they said]
- Support level: [full EF / moderate / organizational only]
- Conditions mentioned: [if any]

### Communication Style
- Style: [chosen style]
- Notes: [any specifics]

### Interface
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
