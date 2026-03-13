---
name: plan
description: "Problem architecture, scope definition, methodology selection before execution. Explicit: user asks for strategy, approach, or methodology; entering unfamiliar domain. Implicit: scope expands across turns without defined acceptance criteria; task has 3+ dependent steps and success criteria are unclear; user declares task 'simple', 'quick', or 'easy' — surface one friction-forecasting question before proceeding. Define 'good enough' scope before work begins. Do not trigger on straightforward execution asks or single-step tasks."
---

# Skill: @plan (Problem Quality + Agentic Audit)

## Purpose
Sanity check before starting work. Two layers: (1) problem quality — are we solving the right thing? (2) execution quality — are we building it right? Run at task-level (fast) or project-level (thorough).

## When to Use
- Any task meeting one or more: will span >1 session; has an external evaluator (hiring manager, client, partner); produces an artifact future sessions will reference; research is the primary activity
- Invoked by: @daily (per-task), @checkpoint (session review), @project create (project-level)
- Can also be called directly: @plan

## Execution

Reason about the problem and approach freely. Then scan the agentic-patterns checklist for blind spots. Surface anything worth acting on — whether it fits a principle or not. (REASON-CONFIRM pattern: think first, checklist catches gaps.)

### Gate: High-Stakes Check

**Irreversible or high-stakes?** One-way door decision (hiring, termination, major spend, relationship, clinical judgment, policy change)?
- → YES: Keep human in the loop. Automation catches edge cases, humans make the call.
- → NO: Proceed to Phase 1.

---

### Phase 1: Problem Quality (What to solve)

**Pattern check:** Read `areas/productivity/mental-models.md` (if exists) — does any stored lens reframe this problem?

**GATE: Anti-anchoring pre-registration.** Before asking the user ANY Phase 1 questions:
1. Read project context (history, decisions/, Foundation if exists)
2. Write your independent P1-P4 observations to `execution/tmp/plan-scratch.md`
   **Why this exists:** Your observations become anchored to whatever the user says first. Writing them down BEFORE asking preserves your independent perspective — otherwise you'll unconsciously validate the user's framing and miss reframes. The value of @plan is the *disagreement* between your pre-read and the user's stated framing.
3. THEN ask Phase 1 questions
4. After user answers: re-read your pre-observations, explicitly surface disagreements ("You said X. Before asking, I'd noted Y because [evidence]. Worth considering?")
5. Delete scratch file when done

**DO NOT skip this gate.** If you find yourself asking P1 questions without a scratch file, stop and write one first.

**P1. Right problem?** (Wedell-Wedellsborg reframing)
- State the problem in one sentence. Now: is that the real problem, or a symptom?
- What category? (Technical / Process / Emotional / Incentive)
- What's been tried before? (Check project history and decisions/ first, present findings)
- If this were solved perfectly, what would actually change? Is this eliminating busywork or multiplying valuable output? Against what's in the pipeline, is this where effort belongs?
- At task-level: one-line reframe check. At project-level: walk through each question.

**P2. Objectives and scope clear?** (PrOACT)
- What are you optimizing for? (Not "what does done look like" — what trade-offs matter?)
- List objectives. Are any in conflict? Surface tension now.
- Which objectives are must-haves vs nice-to-haves?
- Does this cover the full function or just one slice? (Flag if building a piece without seeing the whole.)
- **"Good enough" gate:** Define the minimum acceptable outcome *before* starting. What does 80% look like? If the user can't articulate a stopping point, the completion drive will prevent exit. Write it down — this becomes the boundary `@interrupt` enforces.

**P3. Alternatives on the table?** (PrOACT)
- Have 3+ approaches been considered? If only one: you're anchored.
- Propose at least one contrarian alternative.
- What's the do-nothing option? (Baseline — sometimes it wins.)

**P4. Consequences and trade-offs mapped?** (PrOACT + Even Swaps)
- For each alternative: what happens on each objective?
- Eliminate dominated options (worse on everything).
- For survivors: what's the key trade-off? Make it explicit.
- Even Swaps shortcut: on the hardest trade-off, how much of objective A would you give up to equalize objective B?

**→ Choose approach.** User picks. Record chosen approach + reasoning in Foundation (project-level) or proceed (task-level). At project-level, also define **feedback criteria** — how will you know the approach is working? These get checked during @weekly-review and revisited quarterly during @strategic-reviews.

**→ IMMEDIATELY proceed to Phase 2.** The approach is chosen — now evaluate how to build/execute it. Do not discuss recording, next steps, or wrap-up until Phase 2 is complete. Phase 2 evaluates the *approach itself* (the system design, the solution architecture), not just the current method or phase of execution.

---

### Phase 2: Execution Quality (How to build the chosen approach)

Reason about the chosen approach freely (REASON-CONFIRM), then scan the agentic-patterns checklist for blind spots. Surface anything worth acting on.

**Assumption declaration:** Before proposing how to build it, list 3-5 beliefs about the current system state that the approach depends on (e.g., "the queue consumer already handles retries," "this endpoint returns paginated results"). These are the things that, if wrong, would break the plan. User confirms or corrects. (Plans aren't valuable as plans — they're valuable as reviewable assumption surfaces.)

Scan `execution/agentic-patterns.md` Principles 2-6 against the chosen approach (Principle 1 was covered in Phase 1 — check sequencing if not already addressed). See Depth by Context for how thorough to be.

**Technique selection (project-level only):** While reading agentic-patterns, select which 1-3 techniques shape this project's execution architecture. Name them and how they apply. Selection forces judgment; don't enumerate all techniques.

**Enforcement check:** For any behavioral rules, quality gates, or process constraints in the chosen approach — can any be mechanically enforced via hooks rather than relying on the agent remembering? Hooks turn "should" into "must." Consider: file protection (PreToolUse), completion checks (Stop), session logging (Stop), dangerous operation blocking (PreToolUse).

**Surface:** Anything outside the principles — cross-project patterns, emotional blockers, unstated assumptions, a better framing that emerged.

### State Propagation
After recording Foundation (project-level) or completing audit (task-level): **if the @plan produced a phase change, new constraint, or intention shift, update `state/STATE.md` immediately** (Monthly Adjustments for constraints, Intention for direction changes). Don't defer to @checkpoint.

### Action Routing Gate
After recording Foundation and State: **enumerate every action item generated by this @plan and verify each one is written to exactly one workstream or Operational in `{PROJECT}.md`.** Don't list actions in chat prose without placing them. Check for duplicates across sections.

### Output

Task-level (fast):
```
@plan [task]: Problem: [clean | reframe]. Execution: [finding → action]. Clean on rest.
```

Project-level (thorough):
```
@plan [project]:
Problem Quality:
P1. Right problem: [answer]
P2. Objectives: [answer]
P3. Alternatives: [answer]
P4. Trade-offs: [answer]
Chosen approach: [answer]

Success Criteria: (one line per deliverable — specific enough to be checkable)
- [ ] [Deliverable 1]: [what done looks like]
- [ ] [Deliverable 2]: [what done looks like]
...

Execution Quality:
2. Research: [answer]
3. Feedback: [answer]
4. Leverage: [answer]
5. AI Strengths: [answer]
6. Failure Modes: [answer]
Surface: [emergent observations]
```

**The Success Criteria block is the reference frame for all subsequent @checkpoint and @iterate runs.** It must be specific enough that any future agent can check a deliverable against it without re-reading the original brief. Save this block in `{PROJECT}.md > Foundation`.

If all clean: "@plan [task]: audit clean."

## Depth by Context

| Caller | Problem Quality | Execution Quality | Time |
|--------|----------------|-------------------|------|
| Direct (@plan) | Full P1-P4 with pre-registration | Full Principles 2-6 + surface | As needed |
| @daily | P1 reframe check only | Quick scan (RULES.md principles) | <30s thinking |
| @checkpoint | Skip (work already in progress) | Flag one thing | One line |
| @project create | Full P1-P4 with pre-registration, recorded in `{PROJECT}.md > Foundation` | Full Principles 2-6 + surface + technique selection | Part of inception |

## When Principle 5 Fires: Autonomous Execution

When the AI Strengths principle identifies autonomous-safe work, first choose the execution architecture:
- **Single session** — work fits in one context window, simple
- **Single session + judge** — fits in one session but quality matters (add eval pass)
- **Ralph loop** — work exceeds one session, decomposable into units with test suite
- **Ralph loop + judge** — exceeds one session, non-code work, judge substitutes for tests

If Ralph loop is the right architecture AND the user agrees, transition into spec production:

1. **Bidirectional planning** — You ask questions, AI asks questions, until both sides have the exact same picture. Surface implicit assumptions — these are the root of cascading bugs across iterations.
2. **Spec + implementation plan** — AI writes both. Implementation plan uses checkboxes, one per task. Keep both as brief as possible — large specs cause context rot within single iterations.
3. **Sign off on every line** — Read both documents completely. If you don't understand something, fix it now. Errors cascade and amplify across iterations.
4. **PROMPT.md** — Instructions each iteration receives: read spec → read implementation plan → pick highest-priority unchecked task → execute → verify (unit test for code, eval check for non-code) → mark complete → update progress file. Include repo structure and conventions (each iteration starts with fresh context).
5. **Output the bash loop command** — User launches it themselves. Start with 10 iterations, scale up after reviewing results.

For non-code work (research, analysis, content): use the two-pass pattern (builder + judge). Design rubric first, test on known examples, then execute.

Full pattern + bash template: `execution/agentic-patterns.md > Ralph Loop` (load on demand, not every @plan scan).

## Reference
- Agentic principles + techniques + checklist: `execution/agentic-patterns.md`
- Architecture decisions: `projects/ef-system/decisions/`
