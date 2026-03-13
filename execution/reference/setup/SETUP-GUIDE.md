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
| 1 | Name | Q1 or ask directly | identity/profile.md, RULES.md |
| 2 | Home directory | Phase 2 Step 0 | RULES.md Section 1 |
| 3-6 | Area names + descriptions (3-4) | Q2 | STATE.md, skills, RULES.md |
| 7 | Bucket assignment logic | Q2 (what's compressed, what's protected) | RULES.md Section 3.5 |
| 8 | Notes app | Q3 | RULES.md Section 3 (Tool Ecosystem) |
| 9 | Recurring task tool | Q3 | RULES.md Section 3 |
| 10 | Calendar tool | Q3 | RULES.md Section 3 |
| 11 | Email tool | Q3 | RULES.md Section 3 |
| 12 | Quick capture tool | Q3 | RULES.md Section 3 |
| 13 | Peak energy window | Q1 (implicit) or ask | identity/profile.md Section 2 |
| 14 | Valley energy window | Q1 (implicit) or ask | identity/profile.md Section 2 |
| 15 | Conditions (if any) | Q5 (emergent) | identity/profile.md Section 3, RULES.md Section 4 |
| 16 | Focus style + failure mechanism | Q5 | identity/behaviors.md |
| 17 | Primary breaking point + preferred intervention | Q5 (FBA) | identity/behaviors.md, RULES.md interventions |
| 18 | Communication style | Q6 | identity/user-manual.md, RULES.md Section 7 |
| 19 | Automation tolerance | Q7 | identity/user-manual.md, RULES.md Section 6 |

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
  identity/
    profile.md
    behaviors.md
    user-manual.md
  execution/
    skills/           <- folder-based: <name>/SKILL.md
    reference/
    agentic-patterns.md
    system-structure.md
  state/
    STATE.md
    history/
  projects/
    ef-system/
      ef-system.md
      tasks/
      decisions/
  resources/
```

Copy these files from the template to `[OUTPUT_DIR]/` unchanged (they're already generic):
- `execution/agentic-patterns.md`
- `execution/system-structure.md`
- `execution/reference/` — all reference docs **except** `reference/setup/` (setup-only, stays in template)
- `execution/skills/` — **ALL skill folders** (will be customized in Step 6)
- `projects/ef-system/ef-system.md`
- `state/history/README.md`
- `projects/README.md`
- `resources/README.md`

**After copying skills, run `setup-skills.sh`** (from the template root) in the output directory to create symlinks:
```bash
cd [OUTPUT_DIR] && bash [TEMPLATE_DIR]/setup-skills.sh
```
This creates `.claude/skills/`, `.gemini/skills/` symlinks pointing to `execution/skills/` for native tool discovery.

**Verification (HARD CHECK):** After copying, confirm all skill folders exist in `[OUTPUT_DIR]/execution/skills/`:
`checkpoint/`, `continue/`, `daily/`, `digest/`, `help/`, `interrupt/`, `mem/`, `plan/`, `pregame/`, `project/`, `strategic-reviews/`, `support/`, `system-audit/`, `task/`, `triage/`, `update-system/`, `weekly-review/`.
Each must contain a `SKILL.md` file. If any are missing, copy them now before proceeding. All skills ship from day one — there is no selective installation.

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
| `state/STATE.md` | `[AREA_1]`-`[AREA_4]`, `[PILLAR_1]`-`[PILLAR_4]`, `[pillar_1]`-`[pillar_4]` |
| `execution/skills/daily/SKILL.md` | `[AREA_1]`-`[AREA_4]` |
| `execution/skills/weekly-review/SKILL.md` | `[AREA_1]`-`[AREA_4]` |
| `execution/skills/triage/SKILL.md` | `[AREA_1]`-`[AREA_4]` |
| `execution/skills/strategic-reviews/SKILL.md` | `[AREA_1]`-`[AREA_4]`, `[PILLAR_1]`-`[PILLAR_4]`, `[Pillar_N]`, `[YEAR]`, `[PREV_YEAR]` |
| `execution/system-structure.md` | Area/project folder examples |

If the user has fewer than 4 areas, remove unused `[AREA_N]` rows/references rather than leaving placeholders. Same for pillars.

### Step 2: Build RULES.md and LLM shims

Read `RULES-TEMPLATE.md` as the source. Write a customized version to `[OUTPUT_DIR]/RULES.md` with:
- Section 1: Their system root path (`[USER_HOME]`) and state file location
- Section 2: Skills section — Agent Skills discovery (folder-based), ADHD Interrupt Protocol. All skills auto-discover via frontmatter; no manual table needed.
- Section 3: Their tool ecosystem from interview Q3
- Section 3.5: File structure — `identity/`, `execution/`, `state/` split with their area names
- Section 4: Interaction principles — **calibrate based on Q5:**
  - Universal principles (scaffold decisions, flexibility, momentum) -> always include
  - Neutral phrasing -> include if shame/guilt patterns in Q5; otherwise optional
  - Intervention patterns -> include only patterns matching their failure modes. If struggles were mainly organizational -> skip intervention table entirely
  - Communication by Condition -> include only conditions that surfaced in Q5
  - Execution Support (capture-then-defer, friction audit, spiral check, deliverable gate, section-by-section pacing) -> include if they mentioned focus/drift/forgetfulness; skip if organizational only
  - **Energy-aware scheduling:** Add note from energy data — hard tasks during peak window, operational tasks during valley
- Section 5: Agentic Principles (always include — these are universal)
- Section 6: Core rules — **calibrate based on Q7 + Q6:**
  - Hallucination prevention -> always include
  - Checkpoint adherence -> include if support level is moderate or full EF; skip if organizational only
  - After compaction -> always include
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

Read `state/STATE.md` as the source. Write customized version to `[OUTPUT_DIR]/state/STATE.md` with:
- `[AREA_1]`-`[AREA_4]` replaced with their area names
- `[PILLAR_1]`-`[PILLAR_4]` and `[pillar_1]`-`[pillar_4]` replaced with their pillar names
- Leave daily fields empty (first `@daily` will populate)

### Step 4: Build Identity Files

Read the three identity templates from the template's `identity/` folder. Write filled versions to `[OUTPUT_DIR]/identity/`:

**`identity/profile.md`** (from `identity/profile.md` template):
- Section 1 (WOOP Plan): Derive from Q1 (north star) + Q5 (obstacle/pattern). If Q1 didn't produce a clear WOOP, use the aspiration from Q1 as the Wish and the primary failure mode from Q5 as the Obstacle.
- Section 2 (Energy Map): From energy rhythm data (Q1 implicit or direct ask)
- Section 3 (Conditions & Context): From Q5 — any diagnoses, traits, or context mentioned. Only what surfaced during interview — not clinical assessment.
- Section 4 (Privacy): Ask now if there are off-limits topics or key support people

**`identity/behaviors.md`** (from `identity/behaviors.md` template):
- Failure Modes: Each pattern from Q5 with FBA structure (Antecedent/Behavior/Consequence/Function)
- Success Modes: From Q5 — conditions where things go well
- Protective Factors: Strengths, support people, coping strategies
- Support Protocols: Primary breaking point + preferred intervention from Q5

**`identity/user-manual.md`** (from `identity/user-manual.md` template):
- Communication Style: From Q6 (archetype + reasoning)
- Automation Tolerance: From Q7 (level + reasoning)
- Interaction Principles (Hard Rules): 2-3 rules derived from formulation model
- Cognitive Traits: From Q5 — focus style, initiation vs persistence, granularity preference

### Step 5: Seed Weekly Goals from Q4

Pre-populate `state/STATE.md > Weekly Goals` with onboarding goals derived from the interview:

```markdown
## Weekly Goals (Week 1)
- [ ] Set up [top priority project from Q4] with `@project create`
- [ ] Try `@checkpoint` at end of first session
- [ ] Run `@weekly-review` at end of week
```

If the user mentioned 2-3 active projects in Q4, add one `@project create` goal per project. Morning planning reads Weekly Goals and will surface these naturally — the user works through them at their own pace.

**Don't create project files yet.** `@project create` handles folder creation, runs `@plan` for Foundation sections, and builds the full project hub. The Weekly Goals just queue the work.

### Step 6: Install skills

Skills were already copied as folders in Step 0 (`execution/skills/<name>/SKILL.md`). Symlinks were created via `setup-skills.sh`. Now apply placeholder substitutions and adaptations in-place.

For each skill SKILL.md already in the output directory, apply placeholder substitutions from Step 1.

**Tool-gap adaptations:** For each tool gap identified in the Q3 gap analysis, edit the relevant skill in the output directory:
- No calendar -> daily: remove calendar check, add "Ask user: what's on your schedule today?"
- No email -> triage: remove email inbox check, keep capture + head only
- No capture app -> skills that use capture-then-defer: write to `scratch.md` instead
- No recurring task tool -> triage: replace "recurring task tool" with "calendar recurring events" or "routines.md checklist"
- No ActivityWatch -> weekly-review: remove ActivityWatch Analysis entirely
- No Health export -> weekly-review: remove Biometric Correlation entirely

**Profile-based adaptations:** Calibrate skill behavior based on the formulation model (one-time during setup — skills read identity/ at runtime but these tweaks go into the skill files themselves):
- Guilt spiral / shame pattern -> weekly-review Wins section: add "Missed days aren't failures — they're data" framing. Daily: normalize skipped days.
- Career-focused archetype -> weekly-review: add balance flag if all weekly goals are work/obligations. Surface Important-TO items from Q2.
- Overwhelm pattern -> reduce weekly-review scope: skip deep dives, simplify to 2 focuses instead of 4.
- All-or-nothing pattern -> checkpoint: explicitly validate partial progress as real progress.
- Tunnel vision pattern -> daily: add area-balance check ("you've been on [area] for 3 days — anything else need attention?").

Then introduce `@daily` first — walk them through a first morning planning session right now. This is how they learn the system.

### Step 6.5: Personalization (Identity-Driven Adaptation)

Now that identity files exist, adapt the system to the user's specific cognitive profile.

**Run `@plan` in personalization mode:**

1. **Read** `identity/profile.md` and `identity/behaviors.md` — identify conditions, failure modes, cognitive patterns, and communication needs.
2. **Research** evidence-based interventions for the patterns found. Don't rely on training data alone — search for clinical evidence, established frameworks, and published protocols. The quality of personalization depends on the research quality.
3. **Propose** adaptations section by section, with rationale:
   - **RULES.md §4 Interventions:** Add condition-specific interventions (e.g., OCD spiral detection, ADHD task activation scaffolding, anxiety evidence-grounding). Explain each: what pattern it addresses, what the intervention does, clinical basis.
   - **RULES.md §4 Communication adjustments:** Add condition-specific communication rules (e.g., "never ask 'how do you feel?' if user has alexithymia" or "don't solve rigidity with more rules for OCPD").
   - **Skill trigger descriptions:** Propose implicit trigger modifications for relevant skills (e.g., adding time-loss detection to `@interrupt`, adding catastrophizing detection to `@therapy`).
4. **User approves** each category before applying. Section-by-section — don't batch everything.
5. **Write `identity/adaptations.md`** tracking all changes made:

```markdown
# Adaptations
Generated: [date] | Based on: identity/profile.md
Personalized by: @plan | Approved by: [user]

## Interventions (added to RULES.md §4)
- [intervention]: [what pattern] → [what action]. Basis: [source].
...

## Communication Adjustments (added to RULES.md §4)
- [condition]: [rule]. Basis: [source].
...

## Skill Trigger Modifications
- [skill]: [what was added to implicit triggers]. Reason: [pattern].
...
```

6. **Remove the setup trigger comment** from the top of RULES.md (the `<!-- SETUP: ... -->` comment).

**If user declines personalization:** Remove the setup trigger comment and skip. The universal base works standalone. User can run personalization later via `@update-system personalize`.

**If user wants to copy another user's system:** Skip the interview entirely. Copy their RULES.md, skills, hooks, and identity/ files. Adjust personal details (name, tools, areas). The adaptations.md from the source system documents what was personalized and why.

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

Write to `[OUTPUT_DIR]/execution/.template-config.md`:

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
- No calendar access: daily skill compliance adjusted, checkpoint calendar check removed
- No email: triage email step removed
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

**System integrity check (MANDATORY — do not skip):**

1. **Skill folders on disk:** Confirm all skill folders exist in `[OUTPUT_DIR]/execution/skills/` with `SKILL.md` in each. List them and compare against the expected set.
2. **Symlinks created:** Verify `.claude/skills/` and `.gemini/skills/` symlinks exist and point to `execution/skills/`.
3. **Placeholder substitution:** Grep all files in `[OUTPUT_DIR]/` for unsubstituted tokens (`[AREA_`, `[PILLAR_`, `[USER_HOME]`, `[area-`, `[pillar_`). Fix any found.
4. **Cross-references:** Verify these files exist and are referenced correctly:
   - `execution/agentic-patterns.md` (referenced by @plan)
   - `execution/system-structure.md` (referenced by @project, @task)
   - `identity/profile.md` (referenced by RULES.md)
   - `identity/behaviors.md` (referenced by RULES.md)
   - `identity/user-manual.md` (referenced by RULES.md)
5. **STATE.md sections:** Confirm these sections exist in `state/STATE.md`: Intention, Completed, Context, This Week, Execution Adherence, Drift Watch, Constraint Watch.
6. **Identity customization:** Verify `identity/behaviors.md` reflects the user's patterns from Q5 (failure modes with FBA structure), and `identity/user-manual.md` reflects Q6/Q7 choices.
7. **Directory structure:** Confirm `RULES.md`, LLM shims (`CLAUDE.md`, `GEMINI.md`, `AGENTS.md`), `identity/` (3 files), `execution/` (skills/, reference/, .template-config.md, agentic-patterns.md, system-structure.md), `state/` (STATE.md, history/), `projects/`, `resources/` all exist.

**If any check fails, fix it now before handing off.** Report what was checked and the result.

8. **Clean up setup files:** Delete `execution/reference/setup/` — it's no longer needed. The interview data lives in identity/ files and .template-config.md. Future updates use `@update-system`, not the setup guide.
9. Tell the user: "Your system is ready at `[OUTPUT_DIR]`. Open your AI coding tool there for daily use — it will auto-load your instructions via the shim files."
10. The system is live. First session starts with `@daily`.

---

## Phase 3: First Week Protocol

**All skills are wired from day one.** There is no gradual rollout — skills either auto-trigger based on behavioral patterns (via YAML frontmatter) or the user invokes them directly. `@help` is the discovery mechanism.

**Week 1 goals are pre-seeded in STATE.md.** Daily planning will surface `@project create` goals from Step 5. Each `@project create` runs `@plan` to build a proper Foundation — this is intentional, not optional. But one project at a time, at the user's pace.

### Day 1 Walkthrough

Walk the user through their first morning planning session live. Mention:

1. **The core loop:** `@daily` → do work → `@checkpoint` when done or stepping away.
2. **Projects:** When you're ready to start a project, `@project create` guides you through it (it runs `@plan` automatically).
3. **Support:** "If you're ever stuck, overwhelmed, or spiraling, type `@support`."
4. **Discovery:** "Type `@help` anytime to see all available commands."

That's it for day 1. Don't enumerate all skills — the user learns them by using them.

### End of Week 1

Run `@weekly-review`. This is the first full-cycle close.

### Calibrate depth from Q5 (support level)

The walkthrough is the same for all levels. What changes is how much the system does autonomously:

- **Full EF Scaffolding:** Skills run with maximum scaffolding (micro-steps, shame-free framing, area-balance nudges). All intervention patterns active.
- **Moderate Support:** Standard skill behavior. Intervention patterns active but lighter touch.
- **Organizational Only:** Skills run lean — skip intervention patterns, skip emotional scaffolding, focus on structure and tracking.

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
3. Read `.template-config.md` — check both `[USER_SYSTEM]/execution/.template-config.md` (v2.0+) and `[USER_SYSTEM]/ef-system/.template-config.md` (legacy v1.x). Note their version, substitution map, tool gaps, and communication style.
4. Identify all changelog entries between their version and the current version

**If no `.template-config.md` exists:** The system predates versioned updates. Build the config by reading their existing `RULES.md` — extract areas, pillars, tools, style. Save as `execution/.template-config.md` before proceeding.

**If version < 2.0 (structural migration required):** The user has the old `ef-system/` monolith structure. Jump to **Phase 4b: Structural Migration** below.

### Step 2: Categorize changes (v2.0+ → v2.x updates)

From the changelog entries, build three lists:

**Auto-update files** (template-owned — safe to replace):
| Category | Files | Update method |
|----------|-------|---------------|
| Skills | `execution/skills/<name>/SKILL.md` | Read new template file -> apply substitution map -> write to user's system |
| Reference docs | `execution/reference/*.md` | Copy from template, no substitution needed |
| Infrastructure | `execution/agentic-patterns.md`, `execution/system-structure.md` | Copy from template (system-structure needs substitution) |

**Manual merge files** (user-owned — show diff, don't replace):
| Category | Files | Update method |
|----------|-------|---------------|
| RULES.md | Root `RULES.md` | Show what changed in template's RULES-TEMPLATE.md. Suggest specific additions. Never overwrite. |
| Identity | `identity/*.md` | Only flag structural changes. User-owned content. |
| Project hub | `projects/ef-system/ef-system.md` | Only if template changed task structure. Usually no action needed. |

**New files** (didn't exist in their version):
| Update method |
|---------------|
| Copy from template -> apply substitution map -> write to user's system. If it's a new skill folder, run `setup-skills.sh` to refresh symlinks. |

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
   - If it's a new skill, run `setup-skills.sh` to refresh symlinks

### Step 5: Update config

Update `[USER_SYSTEM]/execution/.template-config.md`:
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

## Phase 4b: Structural Migration (v1.x → v2.0)

**When:** User has the old `ef-system/` monolith structure and template is now v2.0+.

**Key principle:** Do NOT re-interview. Read existing files to extract all needed data, restructure into new layout.

### Step 1: Inventory existing system

Read these files from the user's system:
- `RULES.md` (or `CLAUDE.md` if it's the main rules file) → extract tool ecosystem, areas, pillars, communication style
- `ef-system/STATE.md` → will move to `state/STATE.md`
- `ef-system/reference/USER-PROFILE.md` (if exists) → will split into identity files
- `areas/health/SUPPORT-KB.md` (if exists) → will split into identity files
- `ef-system/.template-config.md` (if exists) → extract substitution map
- `ef-system/skills/*.md` → will migrate to folder format

### Step 2: Build identity files from existing data

**`identity/profile.md`:**
- Read `USER-PROFILE.md` Sections 1-2 (WOOP, Energy Map) → copy directly
- Read `USER-PROFILE.md` Section 3 (Cognitive Traits) or `SUPPORT-KB.md` Conditions → extract conditions/context
- Read `USER-PROFILE.md` Section 5 (Privacy) → copy directly

**`identity/behaviors.md`:**
- Read `SUPPORT-KB.md` → extract failure modes (FBA format), success modes, protective factors
- Read `USER-PROFILE.md` Section 3 → extract focus style, failure mechanism
- Read `RULES.md` intervention section → extract support protocols

**`identity/user-manual.md`:**
- Read `USER-PROFILE.md` Section 4 (Interaction Archetype) → communication style + automation tolerance
- Read `USER-PROFILE.md` Section 6 (Hard Rules) → interaction principles
- Read `USER-PROFILE.md` Section 3 → cognitive traits

If `USER-PROFILE.md` doesn't exist, extract what's available from `RULES.md` and `SUPPORT-KB.md`. Leave unfilled sections with template placeholders — user can fill them incrementally.

### Step 3: Migrate skills to folder format

For each skill file in `ef-system/skills/`:
1. Create `execution/skills/<name>/SKILL.md`
2. Copy content from the old flat file
3. If the old file lacks YAML frontmatter, add it from the template version

**Name mapping** (old → new):
- `morning-planning.md` → `daily/SKILL.md`
- `inbox-triage.md` → `triage/SKILL.md`
- All others keep their names as folder names

**New skills not in v1.x** (copy from template):
- `interrupt/SKILL.md`, `continue/SKILL.md`, `pregame/SKILL.md`

Run `setup-skills.sh` to create symlinks and set up hooks.

### Step 4: Move infrastructure files

| Old location | New location |
|-------------|-------------|
| `ef-system/STATE.md` | `state/STATE.md` |
| `ef-system/history/` | `state/history/` |
| `ef-system/AGENTIC-PATTERNS.md` | `execution/agentic-patterns.md` |
| `ef-system/SYSTEM-STRUCTURE.md` | `execution/system-structure.md` |
| `ef-system/BUILD-PLAN.md` | `execution/reference/BUILD-PLAN.md` |
| `ef-system/reference/` (except USER-PROFILE, setup/) | `execution/reference/` |
| `ef-system/EF-SYSTEM.md` | `projects/ef-system/ef-system.md` |
| `ef-system/tasks/` | `projects/ef-system/tasks/` |
| `ef-system/decisions/` (or root `decisions/`) | `projects/ef-system/decisions/` |
| `ef-system/.template-config.md` | `execution/.template-config.md` |

### Step 5: Update RULES.md

Read the new `RULES-TEMPLATE.md` from the template. Show the user a diff between their current `RULES.md` and the new structure. Key changes to suggest:
- Section 2: Replace skill table with Agent Skills discovery + ADHD Interrupt Protocol
- Section 3 (was 5): Update tool ecosystem paths (`state/STATE.md`, `execution/skills/mem/SKILL.md`)
- Section 3.5 (was 5.5): Update file structure diagram to show `identity/`, `execution/`, `state/`
- Section 4 (was 5/6): Add new execution support rules (capture-then-defer updated routing, spiral check, deliverable gate, section-by-section pacing)
- Section 5 (new): Add agentic principles
- Section 6 (was 7): Update core rules (hallucination prevention, after compaction)
- All path references: `ef-system/` → new locations

Apply with explicit approval for each major section change.

### Step 6: Clean up old structure

**Tell the user** which old files/folders are safe to remove (don't delete automatically):
- `ef-system/skills/` (migrated to `execution/skills/`)
- `ef-system/STATE.md` (migrated to `state/STATE.md`)
- `ef-system/reference/USER-PROFILE.md` (split into `identity/`)
- `areas/health/SUPPORT-KB.md` (split into `identity/`)
- `ef-system/AGENTIC-PATTERNS.md`, `SYSTEM-STRUCTURE.md`, `BUILD-PLAN.md` (migrated to `execution/`)
- Root `decisions/` folder if migrated to `projects/ef-system/decisions/`

**Do NOT remove** `ef-system/` entirely until user confirms all data is accounted for. There may be custom files.

### Step 7: Update config and verify

1. Write/update `execution/.template-config.md` with current version (2.0)
2. Run the same verification checklist as Phase 2 Step 11
3. Note in `state/STATE.md > Context`: "Migrated from v[old] to v2.0 ([date]). Structure: ef-system/ → identity/ + execution/ + state/."

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
