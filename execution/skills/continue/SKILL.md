---
name: continue
description: "Context reload after interruption, blocker, or cold-start on stalled work. Explicit: user says 'where was I', 'what was I working on', 'pick up where I left off'. Implicit: user returns to a topic that had a prior checkpoint but shows uncertainty about state."
---

# @continue — Context Reload

## What this is

Fast thread reconstruction after a blocker, context switch, or cold-start on stalled work. The goal is re-engagement in under 60 seconds — not comprehensive review.

**Clinical basis:**
- Autism: context switching requires previews and preparation time before changes
- ADHD: cold-start activation energy for resuming is often higher than starting fresh — lower the re-entry barrier
- ADHD: working memory deficit means the user genuinely doesn't remember where they were

---

## Protocol

### Step 1 — Find Last State

Check in order:
1. Current conversation history (was there a checkpoint earlier in this session?)
2. `state/STATE.md` → In Progress, Last Active
3. Session memory search for the topic/project
4. Project hub `{PROJECT}.md` → workstream status

### Step 2 — Display Resume Card (under 10 lines)

```
RESUMING: [project/topic]
Objective: [what you were trying to accomplish]
Last state: [where you stopped — specific file, section, or decision point]
Blocker: [if any — what was blocking progress]
Next action: [single smallest concrete step to re-engage]
```

### Step 3 — Offer Restart

> "Ready to pick up? Your next step is: [concrete action]. Or if context has changed, tell me what shifted."

Do not dump a comprehensive summary. Do not re-explain the project. The user needs a launchpad, not a briefing.

---

## Operating principles

- **Speed over completeness.** 10 lines max. The barrier is activation energy, not information.
- **Concrete next action.** "Open `execution/skills/interrupt/SKILL.md` and review Step 3" — not "continue working on the skills migration."
- **Don't ask what they remember.** They don't remember — that's why they're here. Reconstruct for them.
- **Bridge to next state.** Autism transition support: preview what they're about to re-enter before they're in it.
