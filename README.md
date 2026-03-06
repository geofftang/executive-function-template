# Executive Function

A personal operating system for AI-augmented knowledge work. Built around the idea that the bottleneck in working with AI agents isn't the model — it's context: what the agent knows, what it remembers, and what it's allowed to do.

## What this is

A structured workspace that gives AI agents persistent context across sessions, reusable workflow protocols, and a clear operating model for daily knowledge work — research, writing, planning, decision-making, and execution.

Built for and used daily by a non-engineer. The system is designed so that the human sets direction and approves decisions; the agents handle research, drafting, synthesis, and memory management.

## How it works

**Skills** (`ef-system/skills/`) — Reusable workflow protocols that agents execute on demand. Each skill is a markdown file defining a structured process: inputs, steps, outputs, and decision rules. Examples:

- `plan.md` — Problem framing and execution audit before starting work
- `digest.md` — Deep-read protocol for articles, newsletters, and research
- `council.md` — Multi-model adversarial review (runs Gemini, Codex, and Claude in parallel to pressure-test strategy)
- `weekly-review.md` / `system-audit.md` — Recurring review cadences
- `checkpoint.md` — State save and alignment check

**Knowledge structure** (`areas/`, `projects/`, `resources/`) — PARA-based organization with frontmatter tagging for cross-linking. Projects are bounded work; areas are perpetual domains; resources are curated external material with importance and status tags.

**Agentic patterns** (`ef-system/AGENTIC-PATTERNS.md`) — Documented principles for getting high-quality output from AI agents: how to frame problems, when to use parallel research, how to prevent hallucination, when not to automate.

**State management** (`ef-system/STATE.md`) — Single source of truth for what's active, what's completed, and what the current priorities are. Agents read this at session start.

**Memory** (`ef-system/skills/mem.md`) — Cross-session memory operations via a shared SQLite database accessible by Claude, Gemini, and Codex. Agents can search, save, and prune observations across conversations.

## What makes it useful

Most people use AI as a smart autocomplete. This system treats agents as persistent collaborators with working memory, defined responsibilities, and documented operating rules — closer to how you'd onboard a human assistant than how you'd use a search engine.

The `AGENTIC-PATTERNS.md` file is the clearest expression of the design philosophy: frame the problem before solving it, design for feedback loops, play to AI strengths (exhaustive enumeration, bulk scoring, parallel research), and know the failure modes (completion bias, hallucination, architectural drift).

## Stack

- **AI agents:** Claude Code (primary), Gemini CLI, Codex CLI
- **MCP integrations:** Google Calendar, Gmail, TickTick, Drafts
- **Memory:** SQLite via claude-mem, with JSONL transcript fallback search
- **Vault:** Obsidian (file-based, accessed directly via filesystem tools)
- **Scripting:** Python for data pipelines, Google API integrations, and automation

## Using this template

The `CLAUDE.md` file at the root defines the operating rules for Claude Code. The `RULES-TEMPLATE.md` is a starting point for adapting those rules to your own workflow. Skills in `ef-system/skills/` can be used as-is or modified — each is self-contained.

Start with `ef-system/AGENTIC-PATTERNS.md` to understand the design philosophy before customizing anything else.
