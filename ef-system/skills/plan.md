# Skill: @plan (7-Point Agentic Audit)

## Purpose
Quick sanity check before starting work. Catches missing feedback loops, automation opportunities, and sequencing errors. Run at task-level (fast) or project-level (thorough).

## When to Use
- Starting a meaningful task (not micro-tasks)
- Invoked by: @morning-planning (per-task), @checkpoint (session review), @new-project (project-level)
- Can also be called directly: @plan

## Execution

Scan each point. Only surface findings worth acting on — skip where no action needed.

### Pre-Audit Gates (STOP if any trigger)

Before running the 7 checks, ask:

**0a. Irreversible or high-stakes?** One-way door decision (hiring, termination, major spend, relationship, clinical judgment, policy change)?
- → YES: Keep human in the loop. Automation catches edge cases, humans make the call.
- → NO: Continue to 0b

**0b. Frequency < 10/year or high variation?** One-off, novel, or varies significantly each time?
- → YES: Improve human execution instead of automating. (Setup cost > payback with low frequency)
- → NO: Continue to 0c

**0c. Removing this task deskills the team/organization?** Does automating this remove critical learning, judgment practice, or decision visibility?
- → YES: Keep human in the loop. Build tools that support judgment, not replace it.
- → NO: Proceed to the 7 checks

If all gates pass: You're automation-safe. Now audit for quality.

---

### The 7 Checks

1. **Repeatable?** — Done before or will happen again? → Encode it (skill, script, template)
2. **Feedback loop?** — How will you know output is good? → If none: design rubric/eval BEFORE building. (Research: 60-80% of agentic project time is evals; rubric-first saves rework)
2.5. **Rubric written?** — If automating or agenting, do you have explicit success criteria + rubric on 3-5 real examples? → If no: design rubric first, test on knowns. This prevents evaluation-less systems.
3. **External input?** — Solved problem? What would an expert check? → Research first (see AGENTIC-PATTERNS.md > When to Research)
4. **Full function?** — Broader function this belongs to? Covering full scope or one slice? → Flag gaps
5. **Autonomous?** — Could this run without the user? → **First: is this nondeterministic enough to need an agent?** (Most tasks don't. Workflows work better. See AGENTIC-PATTERNS.md > Agent vs Workflow Decision.) If yes to agent: which runtime? Parallel agents? (see AGENTIC-PATTERNS.md > Architectural Decisions)
6. **Right sequence?** — Upstream work that would make this easier? → Do that first
7. **Right person?** — AI tool, service, or delegation opportunity? → Delegate or skip
8. **Playing to strengths?** — Does the approach leverage the user's cognitive strengths (exhaustive enumeration, systems optimization, cross-domain pattern transfer)? Have I solved a structurally similar problem before — what patterns transfer? (Reference: `ef-system/tasks/cognitive-strengths-mapping.md`)

### Output

Task-level (fast):
```
@plan [task]: [#N] finding → action. [#N] finding → action. Clean on rest.
```

Project-level (thorough — all 7 get explicit answers):
```
@plan [project]:
1. Repeatable: [answer]
2. Feedback loop: [answer]
3. External input: [answer]
4. Full function: [answer]
5. Autonomous: [answer]
6. Right sequence: [answer]
7. Right person: [answer]
```

If all clean: "@plan [task]: audit clean."

## Depth by Context

| Caller | Depth | Time |
|--------|-------|------|
| Direct (@plan) | Full 7, thorough | As needed |
| @morning-planning | Quick scan on day's primary task | <30s thinking |
| @checkpoint | Audit lens on session work — flag one thing | One line |
| @new-project | Full 7, all answers recorded in {PROJECT}.md | Part of inception |

## When #5 Fires: Autonomous Execution

When audit #5 identifies autonomous-safe work, first choose the execution architecture (see `AGENTIC-PATTERNS.md > Choosing an Execution Architecture`):
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

For non-code work (research, analysis, content): use the two-pass pattern (builder + judge) documented in `AGENTIC-PATTERNS.md > Non-Code Quality Funnel`.

See `AGENTIC-PATTERNS.md > Ralph Loop` for the full pattern, failure modes, and bash template.

## Reference
- Full patterns: `ef-system/AGENTIC-PATTERNS.md`
- Architecture decisions: `ef-system/BUILD-PLAN.md > Autonomous Work Design`
