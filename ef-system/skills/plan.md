# Skill: @plan (Problem Quality + Agentic Audit)

## Purpose
Sanity check before starting work. Two layers: (1) problem quality — are we solving the right thing? (2) execution quality — are we building it right? Run at task-level (fast) or project-level (thorough).

## When to Use
- Starting a meaningful task (not micro-tasks)
- Invoked by: @morning-planning (per-task), @checkpoint (session review), @project create (project-level)
- Can also be called directly: @plan

## Execution

Reason about the problem and approach freely. Then scan the checks below for blind spots. Surface anything worth acting on — whether it fits a check or not. (DO-CONFIRM pattern: think first, checklist catches gaps.)

### Gate: High-Stakes Check

**Irreversible or high-stakes?** One-way door decision (hiring, termination, major spend, relationship, clinical judgment, policy change)?
- → YES: Keep human in the loop. Automation catches edge cases, humans make the call.
- → NO: Proceed to Phase 1.

---

### Phase 1: Problem Quality (What to solve)

**Anti-anchoring protocol:** Before asking the user, Claude reads project context (history, decisions/, Foundation if it exists) and writes preliminary P1-P4 observations to a scratch file. Then Claude asks the user the structured questions. After the user answers, Claude reads back its pre-observations and explicitly surfaces disagreements: "You said X. Before asking, I'd noted Y because [evidence]. Worth considering?" Delete scratch file when done.

**P1. Right problem?** (Wedell-Wedellsborg reframing)
- State the problem in one sentence. Now: is that the real problem, or a symptom?
- What category? (Technical / Process / Emotional / Incentive)
- What's been tried before? (Claude checks project history and decisions/ first, presents findings)
- If this were solved perfectly, what would actually change?
- At task-level: one-line reframe check. At project-level: walk through each question.

**P2. Objectives and scope clear?** (PrOACT)
- What are you optimizing for? (Not "what does done look like" — what trade-offs matter?)
- List objectives. Are any in conflict? Surface tension now.
- Which objectives are must-haves vs nice-to-haves?
- Does this cover the full function or just one slice? (Flag if building a piece without seeing the whole.)

**P3. Alternatives on the table?** (PrOACT)
- Have 3+ approaches been considered? If only one: you're anchored.
- Claude proposes at least one contrarian alternative.
- What's the do-nothing option? (Baseline — sometimes it wins.)

**P4. Consequences and trade-offs mapped?** (PrOACT + Even Swaps)
- For each alternative: what happens on each objective?
- Eliminate dominated options (worse on everything).
- For survivors: what's the key trade-off? Make it explicit.
- Even Swaps shortcut: on the hardest trade-off, how much of objective A would you give up to equalize objective B?

**→ Choose approach.** User picks. Record chosen approach + reasoning in Foundation (project-level) or proceed (task-level).

---

### Phase 2: Execution Quality (How to build the chosen approach)

Claude reasons about the chosen approach freely (DO-CONFIRM), then scans this checklist for blind spots. Surface anything worth acting on.

**Automation pre-check** (skip if not building/automating):
- **Frequency < 10/year or high variation?** → Improve human execution instead of automating.
- **Deskilling risk?** → Keep human in loop. Build tools that support judgment, not replace it.

**Execution checks:**
1. **Feedback loop?** — How will you know output is good? Design rubric/eval BEFORE building. If automating: explicit success criteria + rubric on 3-5 real examples first.
2. **Solved problem?** — What would an expert check? Research first if safety-critical or architecture. Build first if creative or novel.
3. **Right sequence?** — Upstream work that would make this easier? Do that first.
4. **Autonomous?** — Could this run without the user? Workflow-first for fixed sequences; agent-needed for open-ended search or ambiguous state. (See AGENTIC-PATTERNS.md > Agent vs Workflow Decision.)
5. **Playing to strengths?** — Does the approach leverage cognitive strengths (exhaustive enumeration, systems optimization, cross-domain pattern transfer)? Structurally similar past problem?

**Surface:** Anything Claude notices outside these checks — cross-project patterns, emotional blockers, unstated assumptions, a better framing that emerged.

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

Execution Quality:
1. Feedback loop: [answer]
2. Solved problem: [answer]
3. Right sequence: [answer]
4. Autonomous: [answer]
5. Playing to strengths: [answer]
Surface: [emergent observations]
```

If all clean: "@plan [task]: audit clean."

## Depth by Context

| Caller | Problem Quality | Execution Quality | Time |
|--------|----------------|-------------------|------|
| Direct (@plan) | Full P1-P4 with pre-registration | Full 5 + surface | As needed |
| @morning-planning | P1 reframe check only | Quick scan | <30s thinking |
| @checkpoint | Skip (work already in progress) | Flag one thing | One line |
| @project create | Full P1-P4 with pre-registration, recorded in `{PROJECT}.md > Foundation` | Full 5 + surface, recorded | Part of inception |

## When Execution #4 Fires: Autonomous Execution

When check #4 identifies autonomous-safe work, first choose the execution architecture:
- **Single session** — work fits in one context window, simple
- **Single session + judge** — fits in one session but quality matters (add eval pass)
- **Ralph loop** — work exceeds one session, decomposable into units with test suite
- **Ralph loop + judge** — exceeds one session, non-code work, judge substitutes for tests

If Ralph loop is the right architecture AND the user agrees, transition into spec production:

1. **Bidirectional planning** — You ask Claude questions, Claude asks you questions, until both sides have the exact same picture. Surface implicit assumptions — these are the root of cascading bugs across iterations. (Roman: "the biggest skill in Ralph loops by far is the skill of architecting a good plan.")
2. **Spec + implementation plan** — Claude writes both. Implementation plan uses checkboxes, one per task. Keep both as brief as possible — large specs cause context rot within single iterations.
3. **Sign off on every line** — Read both documents completely. If you don't understand something, fix it now. Errors cascade and amplify across iterations.
4. **PROMPT.md** — Instructions each iteration receives: read spec → read implementation plan → pick highest-priority unchecked task → execute → verify (unit test for code, eval check for non-code) → mark complete → update progress file. Include repo structure and conventions (each iteration starts with fresh context).
5. **Output the bash loop command** — User launches it themselves. Start with 10 iterations, scale up after reviewing results.

For non-code work (research, analysis, content): use the two-pass pattern (builder + judge). Design rubric first, test on known examples, then execute.

Full pattern + bash template: `AGENTIC-PATTERNS.md > Ralph Loop` (load on demand, not every @plan scan).

## Reference
- Full patterns: `ef-system/AGENTIC-PATTERNS.md`
- Architecture decisions: `ef-system/BUILD-PLAN.md > Autonomous Work Design`
