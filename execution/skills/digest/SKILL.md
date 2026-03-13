---
name: digest
description: "Deep read, analysis, and routing of external content. Explicit: user asks to summarize, analyze, extract, or route shared content. Implicit: user shares content (URL, PDF, article) with intent to process (asks question about it, says 'what do you think', 'add to reading list'). Do NOT trigger on links shared as references, examples, or documentation citations."
---

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
2. **Three-gate filter** (must pass ALL):
   - **Half-life > 1 month:** Will this still matter in 30 days? News, reactions, hot takes, current events commentary → skip.
   - **Reusable:** Does it provide a mental model, framework, or reference you'd retrieve when thinking about something else? Self-contained analysis that doesn't generalize → skip.
   - **Non-redundant:** Search `resources/` and relevant `areas/` for key concepts. Core insight already captured → skip. Report: "Skipped [title] — overlaps with [existing-file]."
   - If it fails ANY gate → skip. Report: "Skipped [title] — [which gate failed]."
3. Suggest area(s) where it belongs
4. Create resource file with `status: pending`
5. Return: "Captured to resources/[area]/article-slug.md — deep read later"

**Frontmatter template:**
```markdown
---
title: "[Article Title]"
url: "[URL]"
areas: [area-name]
importance: medium  # will assess during deep read
status: pending  # digest later
date-captured: [DATE]
---

[1-sentence summary of what it covers]
```

**Note:** Don't do full analysis in capture mode. The gates should take ~30s total — a quick Grep of resources/ for key terms, not exhaustive research. When in doubt, capture — false negatives (missing good content) are worse than false positives (capturing something redundant).

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

### Step 1.5: Content-Type Detection

After reading, classify before proceeding:
- **Thesis/argument** (default): Unifying argument developed across sections → continue to Step 2.
- **Roundup/omnibus**: 10+ distinct sections with low topic overlap, short segments → skip to **Roundup Protocol** below.
- **Discussion/forum**: One topic, many authors, branching debate (HN threads, Reddit, forum posts) → skip to **Forum Protocol** below.

Detection signals:
- Roundup: issue numbers in title ("AI #156"), "In Other News"/"This Week In" headers, 10+ sections spanning unrelated topics.
- Forum: HN/Reddit URLs, comment trees, multiple usernames with replies, voting/points visible.

### Step 1.75: Relevance Scan

Before extracting, identify what matters for active work:

1. List which active projects/areas this connects to (check STATE.md if unsure)
2. For each connection: what specific question does this article answer?
3. Extract through those lenses — prioritize sections that answer those questions

Everything else: capture in resource file as ambient knowledge. Don't surface in chat output or create backlog tasks for connections to future/inactive work.

**Effect:** Chat output is filtered to what's actionable now. Resource file remains comprehensive for later reference. Tasks created only for active stages of work (max 3-4 per article).

### Step 2: Section-by-Section Extraction
For each major section or argument:
1. **Claim:** What is the author saying?
2. **Evidence:** Direct quote from the text in `>` blockquote
3. **Unsaid:** What's implied or assumed but not stated?

### Step 3: Critical Analysis
- Where does the author's logic strain or depend on something unproven?
- What would someone who disagrees say?
- What follows from this argument that the author does NOT draw out?

### Step 4: Non-Obvious Insights + Cross-Domain Connections
Ask yourself:
- What connections exist to things the user is working on?
- What would a careful reader notice that a skimmer would miss?
- Is there a buried detail that matters more than the headline?
- **Cross-domain check:** Does a stored mental model from a different domain apply here? Search `resources/` and `areas/` for frameworks that could reframe this content.

**Rule:** Every claim you make about the content must cite a specific passage. If you can't quote it, flag it as "inference, no direct support."

---

## Roundup Protocol

**Triggered by:** Step 1.5 detects roundup/omnibus format.

**Why separate:** Thesis-mode extraction (Claim/Evidence/Unsaid × 25 sections) produces either overwhelming output or artificial cuts that miss buried insights. Two-pass triage focuses depth where it matters.

### Pass 1: Triage

List every section with a one-line summary and relevance rating:

**[Section header]** — 🔴/🟡/⚪ [what it covers + why this rating]

- 🔴 **Deep read**: Connects to active projects, novel framework, challenges assumptions, or actionable signal
- 🟡 **Skim**: Useful context but no clear action or novel insight
- ⚪ **Skip**: Outside current interests, common knowledge, or pure commentary

**Target:** 4-8 deep reads from a typical 20-30 section roundup. Err toward fewer — the value is focus, not coverage.

### Pass 2: Selective Deep Read

For 🔴 sections only, run Steps 2-4 (Claim/Evidence/Unsaid → Critical Analysis → Non-Obvious Insights). Same rigor as thesis mode.

### Pass 3: Skim Notes

For 🟡 sections: one sentence on what it says and why it didn't clear the bar.

### Long Content Handling

If the article exceeds what a single fetch retrieves, re-fetch specific sections or the tail of the article. Never silently drop content — if sections were truncated, say so and offer to fetch the rest.

---

## Forum Protocol

**Triggered by:** Step 1.5 detects discussion/forum format.

**Why separate:** Forum signal lives in the *disagreement structure* — where the crowd converges, where genuine disagreement remains, and what nobody addresses.

### Step 1: Source Article Deep Read

If the forum links to a source article, fetch and deep-read it using standard thesis protocol (Steps 2-4). Present this first.

### Step 2: Thread Mapping

Identify 4-8 major argument threads. For each:

**[Thread name]** — 🔴/🟡/⚪ [what's being debated + why this rating]

### Step 3: Thread Deep Reads

For each 🔴 thread:

1. **Strongest claim** — best-argued position with quote
2. **Strongest counter** — best opposing argument with quote
3. **Resolution status**: resolved, unresolved, or talking-past (different definitions/frames)
4. **What nobody said** — the gap in the debate

### Step 4: Crowd Synthesis

What does the collective discussion reveal that no single commenter says?

---

## Project Relevance Scan

**Before routing, scan active projects for relevance.**

After completing the deep read, check if the content connects to any active projects (read `state/STATE.md` for what's in progress). Only flag projects with a clear connection — don't force matches.

If a match is found, add a `**Project relevance:**` line to the routing output naming the project and the specific connection.

---

## Routing

After analysis, classify each insight into one or more categories:

### 1. EF System Improvement
*"This could improve how the system works"*

| Type | Test | Route to |
|------|------|----------|
| **Actionable gap** | "My system doesn't do X, and it should" | `projects/ef-system/ef-system.md` workstream |
| **Behavioral pattern** | "The AI should always/never do X" | Propose RULES.md rule or skill edit |
| **Skill improvement** | "This skill would work better if..." | Propose specific edit to the skill file |

### 1b. Mental Model Extraction
*"This contains a reusable cross-domain pattern"*

**Test:** Can you name the pattern abstractly? Can you describe when it applies across 2+ domains?

**Action:** Add entry to `areas/productivity/mental-models.md` (or equivalent) with: pattern name, when it works, risk/failure mode, examples, source.

This is the highest-value extraction @digest can do. Most articles won't have one.

### 2. Learning / Comprehension
*"This helps the user understand the world better"*

**Action:** Explain at the user's level. Don't just summarize — teach. Connect to things they already know.

### 3. Opportunity Signal
*"This might represent an actionable opportunity"*

**ALWAYS assess for signals.** Format:

```
SIGNAL: [one-line description]
CONFIDENCE: [low / medium / high]
ACTIONABLE: [yes / no]
EVIDENCE: [quote from article]
SO WHAT: [what would you do with this if pursuing it]
```

If nothing actionable: `SIGNAL: none | ASSESSED: [what was considered]`

### 4. Skip
*"Nothing actionable here"*

One line: what it was, why it's skip-worthy.

### 5. Resource Archiving
*"This should be saved for long-term reference"*

**Decision:** Archive to `resources/` if ANY of:
- Inspired a task/project
- Introduces a referenceable framework/concept
- Fundamentally shifts thinking about an area
- Applicable across multiple projects/areas

**AND** passes novelty gates:
- Signal density (at least one specific, non-obvious claim or framework)
- No redundancy (core insight not already captured — search before creating)

---

## Output Format

**Principle:** The deep reading protocol is for grounding — do it internally. The output separates "what they said" from "what I think."

```
## [Title / Source]

### What It Says

**[Theme 1]:** [1-2 sentences + key quote]

**[Theme 2]:** [1-2 sentences + key quote]

**[Theme 3]:** [1-2 sentences + key quote]

---

### What I Think

[Critical analysis in 1-3 short paragraphs]

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

When processing multiple items:

**For resources/ folder:**
1. List all files in the folder
2. For each: read metadata + fetch full content
3. Triage: **deep read** vs **skim** vs **skip**
4. Deep read the important ones (full protocol)
5. Skim the moderate ones (bottom line + signal check only)
6. Skip the rest (one-line note)

**For email inbox** (if email access configured):
1. Pull inbox
2. Triage: **deep read** vs **skim** vs **skip**
3. Process accordingly

Present results grouped by routing category, not by source.

---

## Notes

- **Never truncate quotes.** If a passage matters, quote it fully.
- **Teach, don't just inform.** The learning category exists because the user wants to build comprehension over time.
- Route content into existing structure — don't append to the bottom of files (integration over accumulation).

## Compliance (verify before presenting output)
- [ ] Every claim cites a specific passage (no unsupported assertions)
- [ ] Signal assessment present (even if "none")
- [ ] EF routing classification applied
- [ ] Actionable items have concrete proposed changes, not just observations
- [ ] Content-type detection applied (thesis vs roundup vs forum)
- [ ] Overlap check performed before resource creation
