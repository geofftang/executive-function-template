# Executive Function

A personal operating system for AI-augmented knowledge work. Built around the idea that the bottleneck in working with AI agents isn't the model — it's context: what the agent knows, what it remembers, and what it's allowed to do.

## What this is

A structured workspace that gives AI agents persistent context across sessions, reusable workflow protocols, and a clear operating model for daily knowledge work — research, writing, planning, decision-making, and execution.

Built for and used daily by a non-engineer. The system is designed so that the human sets direction and approves decisions; the agents handle research, drafting, synthesis, and memory management.

## How it works

**Skills** (`execution/skills/`) — Reusable workflow protocols in Agent Skills format (`<name>/SKILL.md` with YAML frontmatter). Auto-triggered by behavioral pattern matching or invoked manually. Examples:

- `plan/` — Problem framing and execution audit before starting work
- `digest/` — Deep-read protocol for articles, newsletters, and research (thesis/roundup/forum detection)
- `daily/` — Morning planning or evening close-out
- `triage/` — Capture and route unstructured items; prevent thread abandonment
- `interrupt/` — Active state break for hyperfocus lock-in and rumination loops
- `checkpoint/` — State save and alignment check

**Identity** (`identity/`) — User profile, behavioral patterns, and interaction preferences. Generated from a clinical-formulation-based setup interview. Three files: `profile.md`, `behaviors.md`, `user-manual.md`.

**Knowledge structure** (`areas/`, `projects/`, `resources/`) — PARA-based organization with frontmatter tagging for cross-linking. Projects are bounded work; areas are perpetual domains; resources are curated external material with importance and status tags.

**Agentic patterns** (`execution/agentic-patterns.md`) — Documented principles for getting high-quality output from AI agents: how to frame problems, when to use parallel research, how to prevent hallucination, when not to automate.

**State management** (`state/STATE.md`) — Single source of truth for what's active, what's completed, and what the current priorities are. Agents read this at session start.

**Memory** (`execution/skills/mem/`) — Cross-session memory operations via a shared SQLite database accessible by Claude, Gemini, and Codex. Agents can search, save, and prune observations across conversations.

## What makes it useful

Most people use AI as a smart autocomplete. This system treats agents as persistent collaborators with working memory, defined responsibilities, and documented operating rules — closer to how you'd onboard a human assistant than how you'd use a search engine.

The `execution/agentic-patterns.md` file is the clearest expression of the design philosophy: frame the problem before solving it, design for feedback loops, play to AI strengths (exhaustive enumeration, bulk scoring, parallel research), and know the failure modes (completion bias, hallucination, architectural drift).

## Stack

- **AI agents:** Claude Code (primary), Gemini CLI, Codex CLI
- **Cross-model discovery:** Skills symlinked to `.claude/skills/`, `.gemini/skills/` for native tool integration
- **Memory:** SQLite via claude-mem, with JSONL transcript fallback search
- **Vault:** Obsidian (file-based, accessed directly via filesystem tools)

## Using this template

`RULES.md` is the starting point — open a new AI session in this directory and it routes you through setup automatically. Skills in `execution/skills/` can be used as-is or modified — each is self-contained with YAML frontmatter for auto-triggering.

Start with `execution/agentic-patterns.md` to understand the design philosophy before customizing anything else.
