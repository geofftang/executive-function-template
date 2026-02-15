# @digest — Deep Read & Route

**Purpose:** Deeply analyze any content (article, newsletter, podcast transcript, thread) and route insights to the right place.

---

## Commands

| Command | Input | Behavior |
|---------|-------|----------|
| `@digest` (default) | URL, text, file, email | Full deep read + route |
| `@digest capture` | URL, text | Quick scan (30s) → save to resources/ with `status: pending` |

---

## Input

Accept any of:
- **URL** — `@digest https://example.com/article`
- **Pasted text** — `@digest [pasted content]`
- **Email message ID** — `@digest [message-id]` (if email access configured)
- **resources/ folder** — `@digest resources/[area]/`
- **resources/ specific file** — `@digest resources/[area]/article-name.md`
- **Batch mode** — `@digest my newsletters` or `@digest my inbox`

---

## Behavior by Input Type

### `@digest capture` Mode

**Purpose:** Quick intake → resources. When you have multiple items or limited time, capture for later deep digestion.

**Process:**
1. Fetch + quick scan (title, 1-sentence what-it-says, ~30s)
2. Suggest area(s) where it belongs
3. Create resource file with `status: pending`
4. Return: "Captured to resources/livelihood/article-slug.md — deep read later"

**Frontmatter template:**
```markdown
---
title: "[Article Title]"
url: "[URL]"
areas: [livelihood]
importance: medium  # will assess during deep read
status: pending  # digest later
date-captured: 2026-02-12
---

[1-sentence summary of what it covers]
```

**Note:** Don't do full analysis in capture mode. Just get it safely stored.

---

### URL Input (Default Deep Read Mode)

When you provide a URL without `capture`, default behavior is **full deep read**:

1. Fetch content
2. Run full deep reading protocol (Steps 1-4 below)
3. Route (EF/Learning/Signal/Project/Resources)

**If you meant to capture instead:** Use `@digest capture [url]`

### Folder/File Input (Deep Read Mode)

When you provide a folder path or specific file, run full deep reading protocol below.

### Pasted Text (Deep Read Mode)

When you paste content directly, always run full deep reading protocol.

---

## Deep Reading Protocol

**You MUST follow this protocol. No exceptions. Do not summarize without grounding.**

### Step 1: Full Read
Read the entire content. If it's long (>3000 words), add paragraph markers mentally and note the structure before analyzing.

### Step 2: Section-by-Section Extraction
For each major section or argument:
1. **Claim:** What is the author saying?
2. **Evidence:** Direct quote from the text in `>` blockquote
3. **Unsaid:** What's implied or assumed but not stated?

### Step 3: Critical Analysis
- Where does the author's logic strain or depend on something unproven?
- What would someone who disagrees say?
- What follows from this argument that the author does NOT draw out?

### Step 4: Non-Obvious Insights
Ask yourself:
- What connections exist to things the user is working on?
- What would a careful reader notice that a skimmer would miss?
- Is there a buried detail that matters more than the headline?

**Rule:** Every claim you make about the content must cite a specific passage. If you can't quote it, flag it as "inference, no direct support."

---

## Project Relevance Scan

**Before routing, scan fundamental projects for relevance.**

After completing the deep read, load the {PROJECT}.md for each fundamental project and check if the content connects. Only flag projects with a clear connection — don't force matches.

**Fundamental projects (always scan):**
| Project | Project file | Cares about |
|---------|------------|-------------|
| EF system | `ef-system/EF-SYSTEM.md` + `BUILD-PLAN.md` | ADHD scaffolding, productivity, interventions, system design |
| agentic-design | `projects/agentic-design/AGENTIC-DESIGN.md` | AI agent patterns, automation, agentic workflows |
| income-lab | `projects/income-lab/INCOME-LAB.md` | Opportunities, market signals, AI leverage, freelancing |
| therapy | `projects/therapy/THERAPY.md` | ADHD, OCD, anxiety, mental health techniques |
| marketing | *(no project yet — cross-cutting knowledge)* | PMM, growth, attribution, crypto marketing, content strategy |

**Known gap:** Cooking/food is a passion without a project. Flag food-related content but note there's nowhere to route it yet.

If a match is found, add a `**Project relevance:**` line to the routing output naming the project and the specific connection.

---

## Routing

After analysis, classify each insight into one or more categories:

### 1. EF System Improvement
*"This could improve how the system works"*

Examples: new ADHD scaffolding technique, better prompt pattern, workflow insight

**Action:** Classify the insight, then route:

| Type | Test | Route to |
|------|------|----------|
| **Actionable gap** | "My system doesn't do X, and it should" | `ef-system/EF-SYSTEM.md > System Roadmap` as a roadmap item |
| **Behavioral pattern** | "Claude should always/never do X" | Propose CLAUDE.md rule or skill edit via @iterate |
| **Skill improvement** | "This skill would work better if..." | Propose specific edit to the skill file |

Don't just summarize — propose the concrete change. If user approves, make the edit immediately.

### 2. Learning / Comprehension
*"This helps the user understand the world better"*

Examples: economics concept, policy analysis, technical explanation

**Action:** Explain at the user's level. Don't just summarize — teach. Connect to things the user already knows. If the user is struggling with a thinker's style (e.g., Tyler Cowen), explain the rhetorical moves and hidden structure.

For difficult writers, add:
- **What they're actually saying** (plain language)
- **Why they're saying it that way** (rhetorical style)
- **What to read next** to build comprehension

### 3. Opportunity Signal
*"This might represent an actionable opportunity"*

**ALWAYS produce at least one signal assessment, even if weak.** Format:

```
SIGNAL: [one-line description]
TYPE: [from opportunity-engine Part 1: structural inconsistency / layer mismatch / transition window / competence gap / effort arbitrage / platform asymmetry / attention misallocation]
CONFIDENCE: [low / medium / high]
EVIDENCE: [quote from article]
SO WHAT: [what would you do with this if pursuing it]
```

If nothing looks like a signal, still output:
```
SIGNAL: [closest thing to a signal in this piece]
CONFIDENCE: low
WHY LOW: [why this doesn't clear the bar]
```

This forces the detection muscle to exercise every time. Over time, patterns in "low confidence" signals may reveal blind spots.

### 4. Skip
*"Nothing actionable here"*

**Action:** One line: what it was, why it's skip-worthy. Don't waste time.

### 5. Resource Archiving
*"This should be saved for long-term reference"*

**Decision:** Archive to `resources/` if ANY of these are true:
- ☐ Inspired a task/project (clear value signal)
- ☐ Introduces a referenceable framework/concept (you'll lookup later)
- ☐ Fundamentally shifts how you think about an area
- ☐ Applicable across multiple projects/areas

Otherwise: Discard from resources (may still route to projects/EF/learning)

**Action:** Create resource with frontmatter:

```markdown
# resources/[title-slug].md

---
title: "[Full Article Title]"
url: "[source URL]"
areas: [productivity]  # tag areas it supports (match to areas/ topics)
importance: high|medium|low  # based on decision above
status: pending  # integration status: pending | integrated | reference-only | archived
date-captured: 2026-02-12
---

[1-2 sentence summary of why it matters]

**Key concepts:**
- [Referenceable framework/pattern name]
- [Another concept]

**Related to:** [[areas/productivity#relevant-section]] (if integrated, update when done)
```

**Note:** If importance=low AND not yet integrated, archive to status=archived during next @system-audit to declutter.

---

## Output Format

**Principle:** The deep reading protocol is for grounding — do it internally. The output separates "what they said" from "what I think." Keep it tight — hit the 80/20, don't exhaustively list every claim. Tables don't render well in CLI; use compact sections with dividers.

```
## [Title / Source]

### What It Says

**[Theme 1]:** [1-2 sentences + key quote]

**[Theme 2]:** [1-2 sentences + key quote]

**[Theme 3]:** [1-2 sentences + key quote. Note what's unsaid if it matters.]

---

### What I Think

[Critical analysis in 1-3 short paragraphs: where logic strains, what a disagreer says, non-obvious insights. All editorial — clearly mine, not the article's.]

---

### Routing

**EF:** [insight + proposed action, or "none"]
**Learning:** [explanation, or "none"]
**Signal:** [always present, see format above]
**Project relevance:** [project — connection, or "none"]
**Archive to resources?** [yes + frontmatter template, or "no + reason"]

### Bottom Line

[1-2 sentences: the single most important thing from this piece]
```

---

## Batch Mode

When processing multiple items (e.g., "digest my newsletters" or "digest ~/resources/livelihood/"):

**For ~/resources/ folder:**
1. List all metadata files in the folder
2. For each file: read metadata (title, URL, author) + fetch full content
3. Triage into: **deep read** vs **skim** vs **skip** based on content signals
4. Deep read the important ones (full protocol)
5. Skim the moderate ones (bottom line + signal check only)
6. Skip the rest (one-line note)

**For email inbox:**
1. Pull inbox via the configured email tool (see CLAUDE.md Tool Ecosystem)
2. Scan subjects/snippets — triage into: **deep read** vs **skim** vs **skip**
3. Deep read the important ones (full protocol)
4. Skim the moderate ones (bottom line + signal check only)
5. Skip the rest (one-line note)

Present results grouped by routing category, not by source.

---

## Workflow: Capture → Digest

**Phase 1: Lightweight Capture (URL Input)**
```
You: @digest https://paulgraham.com/startup
Me: Fetch metadata, scaffold area → "Looks like livelihood?"
    Create resources/[area]/example-article-on-startup.md (minimal file)
    Return: "Added to resources/[area]/example-article-on-startup.md"
```

**Phase 2: Batch Digest (Later)**
```
You: @digest ~/resources/livelihood/
Me: Read all .md files
    For each: fetch full content + run deep reading protocol
    Route insights (EF improvements, learning, opportunity signals, projects)
    Optional: archive enhanced version (with importance/status/areas tags)
```

**Commands:**
- `@digest https://url` — quick capture to ~/resources/ (lightweight)
- `@digest ~/resources/` — digest all areas (deep read batch)
- `@digest ~/resources/livelihood/` — digest one area (deep read batch)
- `@digest resources/[area]/example-article.md` — digest specific article
- `@digest my newsletters` — batch process email inbox

**Result:** No guilt pile. Frictionless capture. Deliberate digestion on your schedule.

---

## Notes

- **Opportunity engine reference:** `projects/income-lab/opportunity-engine-v1.md` — use Part 1 (opportunity types), Part 4 (structural questions), and Part 7 (competition assessment) when evaluating signals.
- **Never truncate quotes.** If a passage matters, quote it fully. Misquoting is worse than a long output.
- **Teach, don't just inform.** The learning category exists because the user wants to build comprehension over time, not just get answers.

## Compliance (verify before presenting output)
- [ ] Every claim cites a specific passage (no unsupported assertions)
- [ ] Signal assessment present (even if low confidence)
- [ ] EF routing classification applied (actionable gap / behavioral pattern / skill improvement / knowledge only)
- [ ] Actionable items have concrete proposed changes, not just observations
