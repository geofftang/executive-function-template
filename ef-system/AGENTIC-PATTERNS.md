# Agentic Patterns

Living reference for automation and agentic design thinking. Organized around the Four Pillars of AI Infrastructure. Grows as patterns are discovered and validated.

**This is also a personal pattern library.** Every framework here (enumerate-tag-filter, Ralph loop, parallel research sprint, etc.) is a reusable asset.

---

## The Four Pillars (7-Check Audit Alignment)

| Pillar | Relevant Checks | Core Focus |
| :--- | :--- | :--- |
| **1. Context Engineering (Fuel)** | Check 3 | External input, research, and data ingestion. |
| **2. Memory Systems (Brain)** | Check 1 | Encoding, persistence, and shared state (Bridge). |
| **3. Orchestration (Muscle)** | Checks 5, 6, 7 | Autonomy, sequencing, and multi-agent delegation. |
| **4. Eval & Governance (Judge)** | Checks 2, 4, 8 | Feedback loops, scope, and strengths alignment. |

---

## Pre-Audit: When NOT to Automate

**Critical gate:** Some decisions should stay human. Check these BEFORE auditing a task.

| Gate | Red Flag | Keep Human | Why |
|------|----------|-----------|-----|
| **Irreversible** | One-way door (hiring, firing, major spend) | ✅ Always | Cost of being wrong is unrecoverable. |
| **Frequency < 10/year** | One-off, novel, high variation | ✅ Usually | Setup cost >> payback. |
| **Deskilling risk** | Removing this task removes critical judgment | ✅ Always | Reduces organizational adaptability. |
| **Success is unmeasurable** | Can't verify correctness without human judgment | ✅ For now | Can't automate what you can't evaluate. |

---

## Pillar 1: Context Engineering (Fuel)

### Audit Check 3: External input?
**Question:** Solved problem? What would an expert check? → If yes, research first.

#### Parallel Research Sprint
- Pattern: launch N parallel subagents to research open design questions simultaneously.
- When to use: 3+ open questions that are independent.

#### Enumerate-Tag-Filter (AI Research Pattern)
1. **Enumerate** — Crawl a systematic source to generate the full universe.
2. **Tag** — Apply a characteristics taxonomy.
3. **Filter** — Automated quick-screens reduce thousands to dozens.

---

## Pillar 2: Memory Systems (Brain)

### Audit Check 1: Repeatable?
**Question:** Done before or will happen again? → If yes, encode it.

#### Encoding Patterns
- **Template:** Markdown/text pattern.
- **Skill file:** `.md` with instructions Claude reads (@mem, @task).
- **Script:** Code that runs without Claude (Bridge, Scrubber).

#### Universal Memory Bridge
- Shared SQLite/ChromaDB state between agents.
- **Fidelity Rule:** Distillation for *Recall*; Raw Logs for *Auditing*.

---

## Pillar 3: Orchestration (Muscle)

### Audit Check 5: Autonomous?
**Question:** Could this run without the user triggering it? → If yes, which runtime?

#### Ralph Loop (Correct Implementation)
- Bash `while` loop calling `claude -p` each iteration. Fresh context window every time.
- **Multi-Agent Team Orchestration:** Using specialized roles (Architect, Scout, Engineer) to complete a task.

### Audit Check 6: Right sequence?
**Question:** What upstream work would make this easier? (e.g., validate before build).

### Audit Check 7: Right person?
**Question:** Should you even be doing this? Is there an AI tool or person better suited?

---

## Pillar 4: Eval & Governance (Judge)

### Audit Check 2: Feedback loop?
**Question:** How will you know output is good? → If no feedback loop, you're flying blind.

#### Zero-Human-Role Architectures
- **StrongDM Model:** Scenario Testing (Pass/Fail automated tests).
- **Showboat/Rodney Model:** Evidence Documentation (Human spot-check of logs).

### Audit Check 4: Full function?
**Question:** Covering full scope or one slice? (create → distribute → measure → iterate).

### Audit Check 8: Playing to strengths?
**Question:** Leveraging cognitive strengths? Structural analog from past work?

---

## Foundations

### Core Abstraction
1. **Recognition** — spot a repeatable decision.
2. **Encoding** — turn the pattern into a skill or script.
3. **Amplification** — run the encoded pattern at volume.
4. **Evaluation** — feedback loop proving outputs are good.

---

## Failure Modes
- **Prompt decay:** Mitigation: fresh sessions (Ralph loop).
- **Architectural drift:** Mitigation: periodic human review.
- **Completion bias:** Mitigation: mandatory end-to-end testing.
- **Premature convergence:** Prevention: specify minimum exploration scope.
