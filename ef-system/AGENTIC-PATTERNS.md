# Agentic Patterns

Living reference for automation and agentic design thinking. Organized by the 8-Check audit (matches `ef-system/skills/plan.md`). Grows as patterns are discovered and validated.

**This is also a personal pattern library.** Every framework here (enumerate-tag-filter, Ralph loop, parallel research sprint, etc.) is a reusable asset.

---

## Pre-Audit: When NOT to Automate

**Critical gate:** Some decisions should stay human. Check these BEFORE auditing a task.

| Gate | Red Flag | Keep Human | Why |
|------|----------|-----------|-----|
| **Irreversible** | One-way door (hiring, firing, major spend) | Always | Cost of being wrong is unrecoverable. |
| **Frequency < 10/year** | One-off, novel, high variation | Usually | Setup cost >> payback. |
| **Deskilling risk** | Removing this task removes critical judgment | Always | Reduces organizational adaptability. |
| **Success is unmeasurable** | Can't verify correctness without human judgment | For now | Can't automate what you can't evaluate. |

---

## Check 1: Repeatable? (Encoding)

**Question:** Done before or will happen again? → If yes, encode it.

### Encoding Patterns
- **Template:** Markdown/text pattern.
- **Skill file:** `.md` with instructions Claude reads (@mem, @task).
- **Script:** Code that runs without Claude (Bridge, Scrubber).

### Universal Memory Bridge
- Shared SQLite/ChromaDB state between agents.
- **Fidelity Rule:** Distillation for *Recall*; Raw Logs for *Auditing*.

---

## Check 2: Feedback Loop? (Eval)

**Question:** How will you know output is good? → If no feedback loop, you're flying blind.

### Eval Design (Stable Core)
1. Inline gates (structural/safety checks before costly actions)
2. Post-run grading (rubric or pass/fail checks)
3. Continuous calibration (compare predictions vs outcomes)
4. Human spot checks (strategic confidence control)

Use code-based checks for compliance/safety and LLM-as-judge for qualitative dimensions.

### Zero-Human-Role Architectures
- **StrongDM Model:** Scenario Testing (Pass/Fail automated tests).
- **Showboat/Rodney Model:** Evidence Documentation (Human spot-check of logs).

---

## Check 3: External Input? (Research)

**Question:** Solved problem? What would an expert check? → If yes, research first.

### Parallel Research Sprint
- Pattern: launch N parallel subagents to research open design questions simultaneously.
- When to use: 3+ open questions that are independent.

### Enumerate-Tag-Filter (AI Research Pattern)
1. **Enumerate** — Crawl a systematic source to generate the full universe.
2. **Tag** — Apply a characteristics taxonomy.
3. **Filter** — Automated quick-screens reduce thousands to dozens.

---

## Check 4: Full Function?

**Question:** Covering full scope or one slice? (create → distribute → measure → iterate).

---

## Check 5: Autonomous? (Orchestration)

**Question:** Could this run without the user triggering it? → If yes, which runtime?

### Agent vs Workflow Decision (Critical Gate)
Use deterministic workflows unless uncertainty requires agent judgment.

- **Workflow-first:** fixed sequence, clear I/O, low ambiguity.
- **Agent-needed:** open-ended search, adaptive strategy, ambiguous state.
- **Hybrid default:** deterministic stages with agentic steps only where adaptation creates real value.

### Ralph Loop (Correct Implementation)
- Bash `while` loop calling `claude -p` each iteration. Fresh context window every time.
- **Multi-Agent Team Orchestration:** Using specialized roles (Architect, Scout, Engineer) to complete a task.

---

## Check 6: Right Sequence?

**Question:** What upstream work would make this easier? (e.g., validate before build).

### Sequencing Principles
1. Validate demand/constraints before heavy build.
2. Cheapest checks first, expensive checks later.
3. Separate exploration from selection to prevent premature convergence.
4. Keep one irreversible decision behind explicit human review.

---

## Check 7: Right Person?

**Question:** Should you even be doing this? Is there an AI tool or person better suited?

### Delegation Framework
1. Human: irreversible, high-liability, value-judgment decisions.
2. AI: exhaustive enumeration, transformation, rubric-based filtering.
3. Hybrid: AI proposes with evidence; human approves when stakes are high.

---

## Check 8: Playing to Strengths?

**Question:** Leveraging cognitive strengths? Structural analog from past work?

---

## Foundations

### Core Abstraction
1. **Recognition** — spot a repeatable decision.
2. **Encoding** — turn the pattern into a skill or script.
3. **Amplification** — run the encoded pattern at volume.
4. **Evaluation** — feedback loop proving outputs are good.

### Method vs Objective Specification
- **Method-specified:** human-triggered skills where procedure fidelity matters (`@checkpoint`, `@digest`, `@task`).
- **Objective-specified:** autonomous loops where success metric and constraints are clear, and method can emerge.

Rule: the more autonomous the runtime, the less you prescribe steps and the more you specify measurable success, constraints, and evaluation.

---

## Failure Modes
- **Prompt decay:** Mitigation: fresh sessions (Ralph loop).
- **Architectural drift:** Mitigation: periodic human review.
- **Completion bias:** Mitigation: mandatory end-to-end testing.
- **Premature convergence:** Prevention: specify minimum exploration scope.
