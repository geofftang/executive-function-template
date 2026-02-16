# Setup Guide — New User Interview Protocol

Walk the user through this interview to build their personalized system. The interview is a clinical formulation process disguised as a conversation. You are gathering data to populate a running model of the user — but the user experiences a warm, future-focused dialogue, not an assessment.

**Interview goals (beyond data collection):**
- Teach the mental model (user learns how the system thinks through the questions)
- Build trust and rapport (first impression determines retention)
- Generate commitment (articulating goals makes them real — MI change talk)
- Calibrate expectations (what the system does and doesn't do)
- Detect when someone needs basics before productivity

---

## Phase 1: Discovery Interview (~20-30 min, adaptive)

### Formulation Model

You maintain a running internal model, updated after every exchange. Do NOT show this model to the user during the interview — it's your working document. You will share a summarized version at reflection checkpoints.

```yaml
formulation:
  presenting:
    what_isnt_working: []        # functional impact, in their words
    self_awareness_level: null    # high / moderate / low
  context:
    life_areas:
      always_on: []              # areas that get attention without scaffolding
      neglected: []              # areas that slide — these become system buckets
      aspirational: []           # areas they want but don't have yet
    tools: {}                    # capability → tool mapping
    energy_rhythm:
      peak: null                 # time range
      valley: null               # time range
      medication_timing: null    # if applicable
    projects: []                 # active work, with status
  patterns:
    failure_modes: []            # each entry: {antecedent, behavior, consequence, function_hypothesis}
    success_modes: []            # what works, when, and why
    explanatory_mechanism: null  # Research Abyss, False Start, Guilt Spiral, etc.
  predispositions:
    conditions: []               # ADHD, autism, OCD, anxiety, etc. — only if stated
    past_systems: []             # what they tried, what failed, why
    personality_traits: []       # inferred from conversation style
  aspirations:
    north_star: null             # from miracle question
    woop: {wish: null, outcome: null, obstacle: null, plan: null}
    important_to_me: []          # intrinsic — energizing, identity-aligned
    important_for_me: []         # extrinsic — necessary, obligation-driven
  protective_factors:
    strengths: []                # what they're good at, what works
    support_network: []          # people, communities
    coping_strategies: []        # things that help, even imperfectly
  interaction_profile:
    support_level: null          # full EF / moderate / organizational only
    communication_style: null    # Warm Coach / Direct Commander / Sardonic Companion / Neutral Professional
    automation_tolerance: null   # full auto / show me / hands-on
    modality: null               # text / voice / visual / mixed
  segmentation:
    archetype: null              # tentative by Q3-4, confirmed by end
    archetype_confidence: null   # low / medium / high
```

### Update Rules

Apply these rules every time you update the formulation model:

1. **Additive by default.** Never delete a previous entry based on one new answer. New data refines — it doesn't replace.
2. **Contradiction detection.** If new information conflicts with existing entries, flag internally. Raise it at the next reflection checkpoint: "Earlier you mentioned X, but just now you said Y — which feels more accurate?"
3. **Triangulation.** A pattern is confirmed when supported by 3+ evidence points (across different questions). Before that, mark it tentative.
4. **Inference marking.** Tag every entry as `[stated]` or `[inferred]`. Stated = user said it directly. Inferred = you derived it from context. Only present inferred items at reflection checkpoints for validation.
5. **Archetype convergence.** By Q3-4, form a tentative archetype classification to guide adaptive depth for remaining questions. Archetypes:
   - **Threat-responsive:** Over-focuses on urgent/obligations, neglects passions and play. Needs balance toward what energizes.
   - **Career-focused:** Over-indexes on career/productivity, neglects rest/relationships. Needs balance toward life.
   - **Experience-focused:** Lives in the moment, may neglect maintenance and obligations. Needs light structure so obligations don't become crises.
   - **Functional-but-disorganized:** Generally capable, needs structure not scaffolding. Shorter interview.
   - **Overwhelmed:** Multiple areas in crisis, high emotional load. Needs stabilization before optimization.
6. **Important-TO vs Important-FOR.** Classify each life area and aspiration:
   - Important-TO-me: intrinsic motivation, energizing, identity-aligned
   - Important-FOR-me: extrinsic, obligation-driven, necessary but not energizing
   - The system protects both, but surfaces Important-TO items when the user defaults to Important-FOR.
7. **Function hypothesis.** For each failure mode, hypothesize the behavioral function: escape, avoidance, control, sensory regulation, or attention (seeking connection/validation). This is a **working hypothesis** — refine through system use, not a clinical diagnosis. This guides which intervention patterns to install.

### Formatting Rules (apply to EVERY question)

These rules ensure consistent output quality across all LLMs (Claude, Gemini, Codex):

- Present options as **bullet lists with 6-10 concrete sub-items**, not bare labels
- **Bold the category name**, follow with specific examples: **Category** — item1, item2, item3...
- Give context for WHY you're asking before presenting options (one sentence max)
- End each question with an invitation to customize: "rename any of these" / "does any of this resonate?" / "what would you change?"
- Recognition over recall: always provide scannable lists of concrete items. Users (especially ADHD) recognize what fits faster than they can generate it from scratch.

### Anti-Patterns (from MI research — never do these)

- **No Expert Trap:** Don't prescribe before understanding. You are learning their world, not fixing it yet.
- **No Labeling Trap:** Describe patterns, don't diagnose. Say "it sounds like starting is harder than continuing" not "you have an initiation deficit."
- **No interrogation feel:** Interleave reflection between questions. Every 2-3 questions, summarize what you've heard.
- **No premature focus:** Don't jump to solutions during assessment. The interview is for understanding; solutions come in Phase 2.
- **Never ask "why not higher?"** on a satisfaction/importance scale. Always ask "why not lower?" — this elicits change talk (reasons things matter) rather than sustain talk (reasons things are hard).
- **No open-ended questions without scaffolding.** Always pair open questions with recognition lists or examples to scan.

### Adaptive Depth

The interview has 7 core questions. Not all users need the same depth.

- **Functional-but-disorganized:** ~20 min. Move quickly through Q1-Q4, light touch on Q5, brief Q6-Q7.
- **Complex needs (multiple conditions, high emotional load, many stuck areas):** ~30 min. Go deep on Q1, Q2, Q5. Full reflection checkpoints.
- **Screen broadly, branch deeply only where signal appears.** If Q2 reveals balanced life areas with minor neglect, don't spend 10 minutes on it. If Q5 reveals a deep pattern of system abandonment, explore it.

### Scope Boundary

If someone's basics (eating regularly, sleeping, basic self-care) are inconsistent: the system adjusts scope. Their first project becomes "get stable" with self-care tasks prioritized. The system doesn't diagnose crisis — it makes self-care a visible priority and reduces cognitive load elsewhere. Mention this matter-of-factly if it comes up: "It sounds like the foundation needs attention first. We can make that the system's first focus — keeping the basics visible so they don't slip."

---

### The Interview

#### Q1: The Good Day (SFBT Miracle Question)

**Purpose:** Establish their aspirational picture. Problems surface through the solution-oriented frame without requiring vulnerability upfront.

**Opening (if you haven't gotten their name yet):** "First — what should I call you?"

**Ask:** "Before we get into systems and tools — what would a genuinely good day look like for you? Not a perfect day, just one where you'd go to bed thinking 'yeah, that was a good one.' Walk me through it."

**Listen for and update:**
- `aspirations.north_star` — the overall picture
- `context.life_areas` (implicit) — what domains appear in their good day
- `context.energy_rhythm` (implicit) — when things happen in their description
- `important_to_me` vs `important_for_me` — which elements feel energizing vs obligatory in their telling

**Follow-up: Exception finding.**
"When was the last time you had a day like that — or close to it? What was different about that day?"

This reveals protective factors (what conditions enable good days) and patterns (what's usually missing).

**Adaptive branch — obligation-heavy answer:**
If their "good day" is entirely work and chores (no play, no passion, no rest), gently reflect and branch:

"I notice your good day is mostly about getting things done — which makes sense, that feels satisfying. But I want to check: is there anything you used to enjoy, or wish you had time for, that didn't make the list? Scan these and see if anything jumps out:"

- **Creative expression** — writing, art, music, building things, photography, side projects driven by curiosity
- **Play and fun** — games, sports, concerts, restaurants, spontaneous adventures, travel, hobbies-for-fun
- **Learning** — reading, courses, documentaries, exploring a topic just because it's interesting
- **Connection** — quality time with partner/friends/family, community, long conversations, new people
- **Rest and restoration** — nature, meditation, baths, doing nothing, solo time, walks

**If they say "no, I genuinely just want to be productive":** Accept it. Note `archetype: career-focused [tentative]` and move on. The system will surface balance opportunities through weekly reviews, not by arguing during setup.

**Energy rhythm follow-up (if not implicit from their good day description):**
"One more thing about your day — when is your focus sharpest, and when does your energy usually dip?"

**Update:** `context.energy_rhythm.peak`, `context.energy_rhythm.valley`

#### Q2: What Gets Attention vs. What Slides (Balance Detection)

**Purpose:** Identify the 3-4 system areas. The areas that slide become the system's primary buckets — these are what need protection. The always-on areas get compressed into one bucket with guardrails.

**Frame (say this before the question):** "This system works by protecting the parts of your life that slide when you're busy or stressed. Most people have one or two areas that always get attention — and everything else gets neglected. We need to figure out which is which for you."

**Ask (two parts, one at a time):**

1. "What always gets your attention — whether you want it to or not? The thing you default to when you're stressed or busy."

2. "Now — what consistently slides? Scan this list and notice what jumps out:"

**Present the recognition list:**

- **Health & Body** — exercise, nutrition, sleep, therapy appointments, meditation, doctor/dentist, medication management, mental health maintenance
- **Relationships & Social** — partner quality time, family, close friends, social events, community, dating, long-distance friendships, networking
- **Fun & Play** — entertainment, travel, restaurants, games, concerts, spontaneous adventures, hobbies-for-fun (not productivity), relaxation, doing nothing
- **Creative Expression** — art, writing, music, side projects driven by passion, learning for curiosity, photography, building things for the joy of it
- **Career & Professional** — job performance, job search, professional development, business ideas, portfolio, freelance work, professional networking
- **Finances & Security** — budgeting, investing, savings goals, retirement, debt payoff, financial literacy, tax planning, insurance
- **Home & Maintenance** — cleaning, groceries, cooking, car/home maintenance, mail/packages, subscriptions, paperwork, errands, organizing

**After they identify what slides:**

**MI scaling follow-up (for the 1-2 most ambiguous neglected areas — skip for areas with obviously high importance):** "How important is [area] to you, on a scale of 1-10?"

Then: "Why not lower?" (Never "why not higher?" — this elicits change talk.)

Listen for the classification:
- High importance + low action = Important-TO-me (intrinsic but blocked)
- Moderate importance + external pressure = Important-FOR-me (obligation-driven)
- Low importance = possibly not a system area at all

**Derive life areas:**
- Neglected items with high importance become system areas (3-4 max)
- The always-on domain becomes a single compressed bucket (it doesn't need scaffolding — it needs guardrails against over-indexing)
- Name the areas in the user's language, not the template's

**Example derivations by archetype:**
- **Threat-responsive** (defaults to urgent) → Areas: Wellness, Fun/Creative, Relationships, Sustenance (work + maintenance compressed)
- **Career-focused** (defaults to career) → Areas: Relationships, Health, Play, Career (compressed with time limits)
- **Experience-focused** (defaults to fun) → Areas: Maintenance, Finances, Career, Fun (compressed — already gets attention)
- **Overwhelmed** → Even 4-way split with full scaffolding on all areas

**Update:** `context.life_areas`, `presenting.what_isnt_working`, `aspirations.important_to_me` vs `important_for_me`

**Cross-reference with Q1:** Does their "good day" include the neglected areas? If not, reflect: "Your good day didn't include much [neglected area], but you rated it [X/10] important. What's the gap there?" This surfaces barriers.

#### Q3: Tools (Quick Factual)

**Purpose:** Map their current tool ecosystem. Build the system around what they already use — don't suggest switches unless there's a critical gap.

**Ask:** "What do you already use to manage your life? Tasks, calendar, notes, quick capture — anything, even if it's just texting yourself reminders."

**Present the capability table for recognition:**

| What it does | Common tools |
|-------------|-------------|
| **Tasks & projects** | Todoist, Things, Notion, Obsidian, Apple Reminders, paper lists, sticky notes |
| **Calendar** | Google Calendar, Apple Calendar, Outlook, paper planner |
| **Notes & documents** | Obsidian, Notion, Apple Notes, Google Docs, paper notebooks |
| **Quick capture** (grab an idea before it disappears) | Drafts, voice memos, Reminders, text-yourself, notebook by the bed |
| **Recurring tasks** (weekly chores, bills, etc.) | Todoist, Things, TickTick, calendar events, paper checklist |
| **Habits** (daily streaks, routines) | Streaks, Habitica, TickTick habits, manual tracking, apps |

**Run the gap analysis internally (don't present this to the user):**

| Capability | Why the system needs it | If they have it | If they DON'T |
|-----------|------------------------|-----------------|---------------|
| **Markdown file storage** | STATE.md, skills, project hubs — the system's foundation | Use their notes app (Obsidian, filesystem, etc.) | **Minimum requirement.** Create a folder on their machine (e.g., `~/executive-function/`). Claude Code reads files directly. For web-only users (Claude.ai), note the extra friction of manual pasting. |
| **Calendar access** | Morning planning schedule-awareness, session-start alignment | Reference their calendar tool in RULES.md | Skills ask user directly: "What's on your calendar today?" Remove automated calendar checks. |
| **Email access** | Inbox triage, digest batch mode | Reference their email tool in RULES.md | Inbox triage skips email step. User can paste emails manually when needed. |
| **Quick capture** | Capture-then-defer (idea is safe, won't be forgotten) | Reference their capture app | Capture-then-defer writes to `scratch.md` or STATE.md context notes. |
| **Recurring tasks** | Inbox triage tool elevation (weekly+) | Reference their recurring task tool | Use calendar recurring events or a `routines.md` checklist. |
| **Habits tracking** | Balance dimension tracking, routine consistency | Reference their habits app | Skip habits — track via weekly review narrative only. |

**If critical gap (no markdown file storage):** This is the one tool worth recommending: "The system is built on markdown files. If you don't have a markdown-capable notes app, I'd suggest Obsidian (free, local-first) — or we can just use a folder on your machine."

**AI tool follow-up:** "And which AI coding tool are you using — Claude Code, Gemini CLI, Cursor, something else?" This determines which auto-load shims to prioritize and any tool-specific setup steps.

**Update:** `context.tools`, `interaction_profile.modality`

**Archetype signal:** By now you should have a tentative archetype. Update `segmentation.archetype` and let it guide depth for remaining questions.

#### Q4: Active Projects

**Purpose:** Ground the abstract areas in concrete work. Cross-reference with Q1 to detect aspiration gaps.

**Ask:** "What are you actively working on right now? Doesn't have to be formal projects — anything that takes up mental space or has a deadline."

**For each project, probe:**
- "Where is it at — just starting, in progress, or stuck?"
- "Which of your life areas does it fall under?"

**Cross-reference with Q1:** If all their projects are obligations (Important-FOR) and their good day (Q1) mentioned passions or play, reflect the gap:

"I notice all your current projects are [work/obligations], but your good day included [passion/play element]. Is there something you'd want to make space for, even small?"

This isn't prescriptive — it's a mirror. If they say "yeah, I know, but not right now," accept it and note it as an aspirational area.

**Update:** `context.projects`, `presenting` (stuck items reveal patterns)

---

#### Reflection Checkpoint 1

**Pause here.** Summarize what you've understood so far in plain language. This is both a correction mechanism and a trust-building moment.

"Here's what I'm understanding so far — tell me if I'm off:

[Summarize in 3-5 sentences: their good day picture, what gets attention vs. what slides, the life areas you'd build, their tool setup, and what they're working on. Include any tensions you noticed (e.g., aspiration vs. current projects, stated importance vs. actual attention).]

Does that sound right? Anything I'm missing or getting wrong?"

**Wait for their response.** Correct the formulation model before proceeding. This is where contradictions get resolved.

---

#### Q5: Patterns — When Things Stall (Failure Modes)

**Purpose:** Understand their failure mechanisms to select the right intervention patterns. This is the deepest question — and where conditions/diagnoses naturally surface. Don't ask about conditions directly; let them emerge.

**Frame:** "Now I want to understand what gets in the way — not to fix it right now, just to understand the pattern so the system can work with it instead of against it. Skip anything you'd rather not share — you can always add detail later."

**Ask:** "When something you care about stalls or falls apart — what's usually happening? Not the external excuse, but the internal experience. Scan these and see which ones you recognize:"

**Present the pattern recognition list:**

- **Can't start** — you know what to do but can't make yourself begin. The task sits there, getting heavier. Sometimes called the Wall of Awful.
- **Start but don't finish** — exciting at the beginning, then interest fades or something shinier appears. Lots of 80%-done projects.
- **Research forever** — you keep gathering information, refining the plan, but never actually execute. Feels productive but nothing ships.
- **All-or-nothing** — if you can't do it perfectly or completely, you don't do it at all. Partial credit doesn't register as progress.
- **Guilt spiral** — you miss one day/task, feel bad about it, and the shame makes it harder to come back. The gap grows.
- **Tunnel vision** — you get absorbed in one thing and everything else drops. Hours or days disappear into a single focus area.
- **Overwhelm freeze** — too many things to do, so you do none of them. The pile is paralyzing.
- **Avoidance of hard/boring things** — you'll do anything except the one thing that actually matters. Productive procrastination.
- **Forget unless it's visible** — out of sight, out of mind. If it's not in front of you, it doesn't exist.
- **External pressure dependency** — you only perform under deadlines or when someone else is counting on you. No internal engine.

**For each pattern they identify, probe for the FBA (Functional Behavior Analysis):**
- **Antecedent:** "What's usually happening right before [pattern] kicks in? What triggers it?"
- **Behavior:** "What do you actually do instead? Where does your attention go?"
- **Consequence:** "What happens after? How does it resolve — or does it?"
- **Function hypothesis (internal — don't share, mark as tentative):** Is this serving escape, avoidance, control, sensory regulation, or attention (connection/validation) needs? This is a working hypothesis from limited data — refine through system use, not a diagnosis.

**Follow-up: Past systems.**
"What productivity systems or approaches have you tried before? What worked, what didn't, and what made you stop?"

**Listen for:**
- If rigid systems failed → keep this one loose
- If they never stuck with anything → start extremely minimal
- If they mention specific conditions (ADHD, autism, OCD, anxiety) → note for Section 6 calibration, but don't label or diagnose
- If they describe mainly organizational struggles (not executive function) → lighter system, fewer intervention patterns

**Update:** `patterns.failure_modes` (with FBA), `patterns.success_modes`, `patterns.explanatory_mechanism`, `predispositions`, `protective_factors`, `interaction_profile.support_level`

**Support level derivation:**
| Signal | Support level |
|--------|--------------|
| Multiple failure modes, emotional load, conditions mentioned | Full EF scaffolding |
| Some patterns but generally functional, a few stuck areas | Moderate support |
| "I just need help organizing my projects" | Organizational only |

---

#### Reflection Checkpoint 2

**Summarize the patterns in plain, non-clinical language.**

"Here's what I'm seeing pattern-wise:

[Summarize: their primary failure mode(s), what triggers them, what's worked before, and the function you hypothesize — phrased as observable behavior, not diagnosis. Example: 'Starting seems to be the hard part — once you're going, you're fine. The systems you've tried before were too rigid, so when you missed a day, the guilt made it harder to come back. What's worked is having someone else involved — external accountability.']

Does that track? Anything feel off?"

**If they correct you:** Update the model. If they add something new, explore it briefly before moving on.

**At this point, internally derive:**
- `segmentation.archetype` (confirm or revise from tentative)
- `interaction_profile.support_level`
- Candidate intervention patterns for RULES.md

---

#### Q6: Communication Style (Recommend, Don't Ask)

**Purpose:** Set the system's personality. By now you have enough data to recommend — don't ask from scratch.

**Recommend based on the accumulated model:**

Choose the style that fits what you've observed, and explain why:

- If shame/guilt was prominent in Q5 → **Warm Coach**: "Based on what you shared about [guilt spiral / shame pattern], I'd suggest a warm, encouraging tone — celebrating small wins and keeping things shame-free. Does that fit?"
- If they were action-oriented and terse in conversation → **Direct Commander**: "You seem like a 'just tell me what to do' person — I'd suggest a direct, no-nonsense style. Short responses, action-focused. Sound right?"
- If humor/self-deprecation appeared in their answers → **Sardonic Companion**: "You've got a sense of humor about this stuff — I could match that with a dry, slightly irreverent tone. Want that?"
- If they seem to want a tool, not a personality → **Neutral Professional**: "You seem to want output, not conversation — I'd suggest a neutral, tool-like style. No personality, just results."

**Then ask:** "Does that feel right, or would you prefer something different?"

**Present the options only if they're unsure:**

| Style | Tone | Best for |
|-------|------|----------|
| **Warm Coach** | Encouraging, celebrates small wins, gentle nudges | When shame/avoidance is high |
| **Direct Commander** | Terse, action-focused, no fluff | When momentum matters most |
| **Sardonic Companion** | Dry humor, slightly irreverent, real talk | When levity helps cope |
| **Neutral Professional** | Matter-of-fact, no personality, tool-like | When efficiency is the priority |

**Update:** `interaction_profile.communication_style`

#### Q7: Automation Tolerance

**Purpose:** Determine how proactively the system should act.

**Frame based on what you know:** If they mentioned forgetfulness (Q5) → lean toward proactive. If they mentioned control needs or rigidity (Q5) → lean toward hands-on.

**Ask:** "Last one — how hands-on do you want the system to be? Three options:"

- **"Do it for me"** — The system acts proactively: nudges you, captures things automatically, updates state without asking. You review results, not approve actions.
- **"Show me first"** — The system suggests actions, explains what it would do, and waits for your OK. You stay in the loop.
- **"I'll drive"** — The system only acts when you explicitly ask. Minimal proactivity. You initiate everything.

**Update:** `interaction_profile.automation_tolerance`

---

#### Final Reflection

**Share the complete picture in plain language:**

"OK, here's the full picture I'd build your system around:

**Your good day** involves [summary from Q1]. The areas that need protection are [areas from Q2] — [always-on area] takes care of itself but could use guardrails.

**You're currently working on** [projects from Q4], and the pattern when things stall is [primary mechanism from Q5].

**The system I'd build** would be [support level]-touch, with a [communication style] personality, and [automation level] automation. Your tools are [tool summary].

Anything I'm missing? Anything feel wrong?"

**Wait for correction.** Then transition: "Great — I'm going to build your system now. This takes a few minutes."

---

### Data Point Checklist

Before proceeding to Phase 2, verify you have all 19 required data points. If any are missing, ask targeted follow-up questions now.

| # | Data point | Source | Required for |
|---|-----------|--------|-------------|
| 1 | Name | Q1 or ask directly | USER-PROFILE, RULES.md |
| 2 | Home directory | Phase 2 Step 0 | RULES.md Section 1 |
| 3-6 | Area names + descriptions (3-4) | Q2 | STATE.md, skills, RULES.md |
| 7 | Bucket assignment logic | Q2 (what's compressed, what's protected) | RULES.md Section 5 |
| 8 | Notes app | Q3 | RULES.md Section 5 (Tool Ecosystem) |
| 9 | Recurring task tool | Q3 | RULES.md Section 5 |
| 10 | Calendar tool | Q3 | RULES.md Section 5 |
| 11 | Email tool | Q3 | RULES.md Section 5 |
| 12 | Quick capture tool | Q3 | RULES.md Section 5 |
| 13 | Peak energy window | Q1 (implicit) or ask | USER-PROFILE Section 2 |
| 14 | Valley energy window | Q1 (implicit) or ask | USER-PROFILE Section 2 |
| 15 | Conditions (if any) | Q5 (emergent) | RULES.md Section 6 |
| 16 | Focus style + failure mechanism | Q5 | USER-PROFILE Section 3 |
| 17 | Primary breaking point + preferred intervention | Q5 (FBA) | RULES.md interventions |
| 18 | Communication style | Q6 | RULES.md Section 8, USER-PROFILE Section 4 |
| 19 | Automation tolerance | Q7 | RULES.md Section 7 (Flag & Confirm calibration) |

**Energy rhythm note:** If peak/valley windows didn't surface naturally in Q1, ask directly before closing: "One more thing — when is your focus sharpest during the day, and when does your energy dip?"

---

## Phase 2: Generate Config (the LLM does this)

After the interview, build their system in a **new directory**. The template stays untouched.

**CRITICAL:** Never modify files in the template directory. Read template source files, write customized versions to the output directory.

**Execution order tip:** Write `.template-config.md` (Step 8) early — right after creating the output directory and building the substitution map (Steps 0-1). This gives you a persistent reference to re-read while generating the remaining files, reducing drift across 10+ file writes.

### Step 0: Create Output Directory

**Ask:** "Where should I set up your system? Default is `~/executive-function/`, or if you use Obsidian, your vault root."

Create the directory structure:
```
[OUTPUT_DIR]/
  RULES.md
  CLAUDE.md          <- shim -> RULES.md
  GEMINI.md          <- shim -> RULES.md
  AGENTS.md          <- shim -> RULES.md (for Codex CLI)
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
| `[AREA_1]` through `[AREA_4]` | Interview Q2: life areas (display name) | `Projects`, `Relationships` |
| `[area-1]` through `[area-4]` | Same, kebab-case (for folder/file paths) | `projects`, `relationships` |
| `[PILLAR_1]` through `[PILLAR_4]` | Derived from areas or cross-cutting themes (Q2 follow-up) | `Livelihood`, `Wellness` |
| `[pillar_1]` through `[pillar_4]` | Same, snake_case (for state keys) | `livelihood`, `wellness` |
| `[USER_HOME]` | System path (from Step 0) | `/Users/jane` |
| `[Pillar_N]` | Same as PILLAR_N (used in some narrative examples) | `Creative` |
| `[YEAR]` | Current year (for annual planning references) | `2026` |
| `[PREV_YEAR]` | Previous year (for annual review lookback) | `2025` |

**Files needing substitution (read from template, write customized to output):**

| Source file | Placeholders |
|------------|-------------|
| `RULES-TEMPLATE.md` | `[USER_HOME]`, area/pillar references |
| `ef-system/STATE.md` | `[AREA_1]`-`[AREA_4]`, `[PILLAR_1]`-`[PILLAR_4]`, `[pillar_1]`-`[pillar_4]` |
| `ef-system/skills/morning-planning.md` | `[AREA_1]`-`[AREA_4]` |
| `ef-system/skills/weekly-review.md` | `[AREA_1]`-`[AREA_4]` |
| `ef-system/skills/inbox-triage.md` | `[AREA_1]`-`[AREA_4]` |
| `ef-system/skills/strategic-reviews.md` | `[AREA_1]`-`[AREA_4]`, `[PILLAR_1]`-`[PILLAR_4]`, `[Pillar_N]`, `[YEAR]`, `[PREV_YEAR]` |
| `ef-system/SYSTEM-STRUCTURE.md` | Area/project folder examples |

If the user has fewer than 4 areas, remove unused `[AREA_N]` rows/references rather than leaving placeholders. Same for pillars.

### Step 2: Build RULES.md and LLM shims

Read `RULES-TEMPLATE.md` as the source. Write a customized version to `[OUTPUT_DIR]/RULES.md` with:
- Section 1: Their system root path (`[USER_HOME]`) and state file location
- Section 2: Skill commands (start with `@morning-planning` only)
- Section 3: Skills table (only morning-planning initially, note others available)
- Section 4: Their tool ecosystem from interview Q3
- Section 5: Interaction principles — **calibrate based on Q5:**
  - Universal principles (scaffold decisions, flexibility, momentum) -> always include
  - Neutral phrasing -> include if shame/guilt patterns in Q5; otherwise optional
  - Intervention patterns -> include only patterns matching their failure modes. If struggles were mainly organizational -> skip intervention table entirely
  - Communication by Condition -> include only conditions that surfaced in Q5
  - Execution Support (session-start alignment, capture-then-defer, research-before-build) -> include if they mentioned focus/drift/forgetfulness; skip if organizational only
  - **Energy-aware scheduling:** Add note from energy data — hard tasks during peak window, operational tasks during valley
- Section 6: Core rules — **calibrate based on Q7 + Q6:**
  - Flag & Confirm -> **relax if automation tolerance is "do it for me"**: change to "act autonomously, surface results after". Keep strict if "I'll drive"
  - Systems Design First -> keep if they have complex projects; skip if they mainly need daily planning
  - Research Before Answering -> keep (universal)
  - Checkpoint adherence -> include if support level is moderate or full EF; skip if organizational only
  - Workflow Design for AI Pairing -> skip unless they're technical/interested in AI workflows
- Section 7: Communication style — **from Q6, calibrate specifics:**
  - Warm Coach -> soften brevity rules: allow 4-5 sentences, include encouragement
  - Direct Commander -> strict brevity, max 2 sentences, zero preamble
  - Sardonic Companion -> allow personality in responses, dry humor OK
  - Neutral Professional -> strict brevity, no personality, tool-like output
- Section 8: File management (adapt to their interface from Q3)

Apply all placeholder substitutions from Step 1.

**Then create LLM shims.** For each auto-load file (based on user's AI tool, or all by default), write a shim containing:

```markdown
# Project Instructions

**Read and follow all instructions in [`RULES.md`](./RULES.md).**
```

Create at minimum: `CLAUDE.md`, `GEMINI.md`, `AGENTS.md`. These are identical one-line redirects.

### Step 3: Build STATE.md

Read `ef-system/STATE.md` as the source. Write customized version to `[OUTPUT_DIR]/ef-system/STATE.md` with:
- `[AREA_1]`-`[AREA_4]` replaced with their area names
- `[PILLAR_1]`-`[PILLAR_4]` and `[pillar_1]`-`[pillar_4]` replaced with their pillar names
- Leave daily fields empty (first morning-planning will populate)

### Step 4: Build USER-PROFILE

Read `ef-system/reference/setup/USER-PROFILE-TEMPLATE.md`. Write filled version to `[OUTPUT_DIR]/ef-system/reference/USER-PROFILE.md`:
- Section 1 (WOOP Plan): Derive from Q1 (north star) + Q5 (obstacle/pattern). If Q1 didn't produce a clear WOOP, use the aspiration from Q1 as the Wish and the primary failure mode from Q5 as the Obstacle.
- Section 2 (Energy Map): From energy rhythm data (Q1 implicit or direct ask)
- Section 3 (Cognitive Traits): From Q5 — focus style, failure mechanism, initiation vs persistence
- Section 4 (Interaction Archetype): From Q6 (communication style) + Q7 (automation tolerance)
- Section 5 (Privacy): Ask now if there are off-limits topics or key support people
- Section 6 (Hard Rules): Derive from the formulation model — 2-3 rules the AI must always follow for this user

### Step 5: Seed projects from Q4

For each active project the user mentioned in Q4, create a lightweight project stub:

```
[OUTPUT_DIR]/projects/[project-name]/[project-name].md
```

Each stub contains:
- Project name as heading
- One-line description (from Q4)
- Status (from Q4: just starting / in progress / stuck)
- Area assignment (from Q4 cross-reference)
- Empty Focus / Backlog / Done sections

This ensures `@morning-planning` has project files to read on day 1. The user can flesh these out later via `@project create` or `@plan`.

### Step 6: Install skills

For each skill file already copied in Step 0, apply placeholder substitutions from Step 1 in-place in the output directory.

**Tool-gap adaptations:** For each tool gap identified in the Q3 gap analysis, edit the relevant skill's compliance checklist in the output directory:
- No calendar -> morning-planning: remove calendar check, add "Ask user: what's on your schedule today?"
- No email -> inbox-triage: remove email inbox check, keep capture + head only
- No capture app -> skills that use capture-then-defer: write to `scratch.md` instead
- No recurring task tool -> inbox-triage Step 4A: replace "recurring task tool" with "calendar recurring events" or "routines.md checklist"
- No ActivityWatch -> weekly-review: remove B4 (ActivityWatch Analysis) entirely
- No Health export -> weekly-review: remove B5 (Biometric Correlation) entirely

**Profile-based adaptations:** Calibrate skill behavior based on the formulation model (one-time during setup — skills don't re-read USER-PROFILE at runtime):
- Guilt spiral / shame pattern -> weekly-review Part A (Wins Audit): add "Missed days aren't failures — they're data" framing. Morning-planning: normalize skipped days.
- Career-focused archetype -> weekly-review Part C: add balance flag if all weekly goals are work/obligations. Surface Important-TO items from Q2.
- Overwhelm pattern -> reduce weekly-review scope: skip Part D (deep dives), simplify Part C to 2 focuses instead of 4.
- All-or-nothing pattern -> checkpoint: explicitly validate partial progress as real progress.
- Tunnel vision pattern -> morning-planning: add area-balance check ("you've been on [area] for 3 days — anything else need attention?").

Then introduce morning-planning first — walk them through a first morning planning session right now. This is how they learn the system.

### Step 7: Memory Setup (Optional but Recommended)

If the user wants cross-session memory (so Claude remembers past conversations):

1. Install claude-mem MCP: `npm install -g @thedotmack/claude-mem`
2. Add to Claude Code MCP config (`.claude/settings.json`):
   ```json
   { "mcpServers": { "claude-mem": { "command": "claude-mem", "args": ["mcp"] } } }
   ```
3. The `@mem` skill and RULES.md Memory Protocol are already configured in the output.
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

## Formulation Summary
- Segmentation archetype: [threat-responsive / career-focused / experience-focused / functional-but-disorganized / overwhelmed]
- Primary failure mode: [from Q5]
- Function hypothesis: [escape / avoidance / control / sensory / attention]
```

### Step 9: Save breadcrumb in template

Write the user's system path to `.last-output` in the template directory. (This is the one exception to "template is read-only" — `.last-output` is gitignored and exists solely as a breadcrumb for the update protocol.)

```
/Users/jane/executive-function
```

This lets the update protocol auto-detect their system path without asking.

### Step 10: Initialize git repo

In the output directory:

```bash
cd [OUTPUT_DIR]
git init
git add -A
git commit -m "Initial EF system setup"
```

This gives the user version history from day one — they can track changes, revert if something breaks, and optionally push to a private GitHub repo.

### Step 11: Verify and hand off

1. Verify the output directory has: `RULES.md`, LLM shims (`CLAUDE.md`, `GEMINI.md`, `AGENTS.md`), `ef-system/` (with STATE.md, skills/, reference/, .template-config.md), `projects/`, `resources/`
2. Tell the user: "Your system is ready at `[OUTPUT_DIR]`. Open your AI coding tool there for daily use — it will auto-load your instructions via the shim files. This template directory stays for future updates — you can `git pull` anytime."
3. The system is live. First session starts with `@morning-planning`.

---

## Phase 3: First Week Protocol

**Project stubs are ready to use.** The stubs from Step 5 are enough for morning planning and daily work. `@plan` is available when the user wants to think strategically about a project's direction — don't push it during week 1. Let them pull it when they hit friction or want depth.

**Calibrate pace from Q5 (support level):**

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
- **Want deeper content processing?** -> `@digest`
- **Need longer-horizon planning?** -> `@strategic-reviews`
- **Need structured task tracking?** -> `@task`
- **Need emotional/cognitive support?** -> `@support`

**Key message:** "Everything is available. Start with the core loop (plan -> do -> checkpoint -> review) and add the rest when you feel specific friction."

---

## Interview Notes Template

After the interview, save the formulation model as structured notes. This becomes the source of truth for the user's profile and system calibration.

```markdown
## Setup Interview Notes
**Date:** [date]
**Interviewer model:** [Claude / Gemini / Codex]
**Interview duration:** [approx minutes]

### Formulation Summary

**Segmentation archetype:** [threat-responsive / career-focused / experience-focused / functional-but-disorganized / overwhelmed]
**Support level:** [full EF / moderate / organizational only]
**Archetype confidence:** [low / medium / high]

### Q1: Good Day Picture
- North star: [what their good day looks like]
- Exception (last good day): [when, what was different]
- Energy rhythm (implicit): [any timing signals from their description]
- Obligation-heavy: [yes/no — did they include play/passion/rest?]

### Q2: Life Areas
**Always-on (compressed):** [area — gets attention without help]
**System areas (protected):**
- [Area 1]: [description] — important-TO / important-FOR
- [Area 2]: [description] — important-TO / important-FOR
- [Area 3]: [description] — important-TO / important-FOR
- [Area 4]: [description, if applicable] — important-TO / important-FOR

**MI scaling notes:** [which areas had high importance + low action]

### Q3: Tools
| Capability | Tool | Gap? |
|-----------|------|------|
| Tasks/Projects | [tool] | |
| Calendar | [tool] | |
| Notes | [tool] | |
| Quick capture | [tool or gap] | [fallback if gap] |
| Recurring tasks | [tool or gap] | [fallback if gap] |
| Habits | [tool or "none"] | [fallback if gap] |

### Q4: Active Projects
- [Project 1]: [status: starting / in progress / stuck] — Area: [area]
- [Project 2]: [status] — Area: [area]
- Aspiration gap noted: [yes/no — all obligations vs. Q1 passions?]

### Q5: Patterns & Failure Modes
**Primary pattern:** [name]
- Antecedent: [what triggers it]
- Behavior: [what they do instead]
- Consequence: [how it resolves]
- Function hypothesis: [escape / avoidance / control / sensory / attention]

**Secondary patterns:** [list if any]

**Past systems tried:**
- [System]: [what worked / what failed / why they stopped]

**Conditions mentioned:** [if any — stated, not inferred]

**Success modes:** [what works, when, and why]

**Protective factors:**
- Strengths: [what they're good at]
- Support: [people, communities]
- Coping: [strategies that work, even imperfectly]

### Q6: Communication Style
- Recommended: [style]
- Reason: [which Q5 patterns drove the recommendation]
- User accepted: [yes / modified to X]

### Q7: Automation Tolerance
- Level: [do it for me / show me first / I'll drive]
- Reasoning: [why this fits their patterns]

### Energy Rhythm
- Peak window: [time range]
- Valley window: [time range]
- Medication timing: [if applicable]
- Existing routines: [morning / midday / evening — what exists]

### Interface
- Primary AI tool: [Claude Code / Gemini CLI / Codex CLI / etc.]
- LLM shims created: [list]
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

**If no `.template-config.md` exists:** The system predates versioned updates. Build the config by reading their existing `RULES.md` (or legacy `CLAUDE.md` — extract areas, pillars, tools, style). Save it as `.template-config.md` before proceeding.

### Step 2: Categorize changes

From the changelog entries, build three lists:

**Auto-update files** (template-owned — safe to replace):
| Category | Files | Update method |
|----------|-------|---------------|
| Skills | `ef-system/skills/*.md` | Read new template file -> apply substitution map -> write to user's system |
| Reference docs | `ef-system/reference/*.md` (except USER-PROFILE.md) | Copy from template, no substitution needed |
| Infrastructure | `BUILD-PLAN.md`, `AGENTIC-PATTERNS.md`, `SYSTEM-STRUCTURE.md` | Copy from template (SYSTEM-STRUCTURE needs substitution) |

**Manual merge files** (user-owned — show diff, don't replace):
| Category | Files | Update method |
|----------|-------|---------------|
| RULES.md | Root `RULES.md` | Show what changed in template's RULES-TEMPLATE.md. Suggest specific additions. Never overwrite. |
| EF-SYSTEM.md | `ef-system/EF-SYSTEM.md` | Only if template changed task structure. Usually no action needed. |

**New files** (didn't exist in their version):
| Update method |
|---------------|
| Copy from template -> apply substitution map -> write to user's system. If it's a new skill, also suggest adding it to their RULES.md skill table. |

### Step 3: Present and confirm

Show the user a summary:

```
Template update: [old version] -> [new version]

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
   - If it's a skill, suggest adding the `@skillname` row to their RULES.md skill table

### Step 5: Update config

Update `[USER_SYSTEM]/ef-system/.template-config.md`:
- Set `template-version` to the new version
- Set `last-updated` to today's date
- Keep all other fields unchanged

### Edge Cases

**User modified a template-owned file (e.g., edited a skill protocol):**
-> The auto-update will overwrite their changes. Before applying, diff the user's current file against the *previous* template version. If they diverge (user made custom edits), flag it: "You've customized [file]. The update will replace it. Want to: (a) accept the update and re-apply your changes, (b) keep your version, or (c) see the diff?"

**User has fewer areas/pillars than placeholders:**
-> The substitution map handles this — "unused" tokens get removed, same as initial setup.

**User wants to skip some updates:**
-> Fine. Update the version number to current anyway (to avoid re-prompting), but note skipped files in `.template-config.md` under a `## Skipped Updates` section.

---

## Troubleshooting

**User is overwhelmed by the interview itself:**
-> Cut to essentials: Q2 ("what slides?") and Q3 ("what tools?"). Use defaults for everything else. Refine during the first weekly review.

**User wants everything immediately:**
-> Generate it all, but still introduce one skill at a time. "Everything's ready behind the scenes. Let's start with morning planning and add more as we go."

**User has very different needs than the defaults:**
-> The system is flexible. Rename areas, skip pillars, adjust skill protocols. The strong default is daily intention-setting and periodic review — but cadence is adjustable (some users prefer 3x/week).

**User is neurodivergent but doesn't want the ND-specific patterns:**
-> Respect their preference. The universal principles (scaffold decisions, momentum over perfection) help everyone. Don't push the clinical framing.

**User's basics (eating, sleeping, self-care) are inconsistent:**
-> Don't declare crisis. Adjust scope: first project becomes "get stable" with self-care tasks visible in daily planning. Reduce system complexity — fewer areas, simpler skills. Revisit full system once basics are consistent.

**User gives very short answers / seems disengaged:**
-> Switch from open questions to forced-choice: "Is it more like A or B?" Reduce the interview to the minimum 19 data points. Some people engage more once the system is running than during setup.
