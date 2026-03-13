---
name: help
description: "List all available commands with descriptions. Explicit: user asks 'what can you do', 'help', 'commands'. Implicit: user seems unaware skills exist."
---

# @help — Available Commands

## Protocol

1. Read available skills from `execution/skills/` (each `<name>/SKILL.md` with YAML frontmatter)
2. Format for the user as a clean list with one-line descriptions
3. Group by frequency of use:

**Daily:**
| Command | What it does |
|---------|-------------|
| `@daily` | Morning planning + evening close-out |
| `@checkpoint` | Save progress, check goal alignment |
| `@task [action]` | Create, update, or complete tasks |

**As-needed:**
| Command | What it does |
|---------|-------------|
| `@plan` | Audit a task or project before starting (problem quality + execution quality) |
| `@project [create\|complete]` | Project lifecycle: inception (create) or archive (complete) |
| `@digest [input]` | Process an article, email, or content — extract key points |
| `@triage` | Process inboxes (email, drafts, captures) or route unstructured items |
| `@support` | Get help when stuck, overwhelmed, or spiraling |
| `@interrupt` | Force-break hyperfocus, rumination loops, or research spirals |
| `@continue` | Reload context after interruption or cold-start on stalled work |
| `@pregame` | Prepare for upcoming social events |

**Periodic:**
| Command | What it does |
|---------|-------------|
| `@weekly-review` | Weekly reflection + next-week planning |
| `@strategic-reviews` | Quarterly/annual reviews |
| `@system-audit` | Check if the system itself needs tuning |
| `@update-system` | Apply template updates to your system |

**Utility:**
| Command | What it does |
|---------|-------------|
| `@help` | This list |
| `@mem [action]` | Search, manage cross-session memory |
| `@iterate` | Identify friction in this conversation and fix it |

4. **IMPORTANT:** If new skills exist in `execution/skills/` that aren't listed above (added after this file was written), include them too. The skills directory is the source of truth — this grouping is just the default presentation order.

5. End with: "Type any command to run it. Most commands guide you step by step."
