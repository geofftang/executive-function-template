# Executive Function Template

**This is the template directory — READ-ONLY. Never modify files here.**

## Routing

Ask the user: "Are you setting up a new system, or updating an existing one?"

- **New setup** → Read `execution/reference/setup/SETUP-GUIDE.md` and follow Phase 1–3, including Step 6.5 (personalization).
- **Update existing** → Read `execution/reference/setup/SETUP-GUIDE.md` Phase 4 (Update Protocol). Find system path from `.last-output`.
- **Copy from another user** → Ask for source system path. Copy their RULES.md, skills, hooks, and identity/ files. Adjust personal details.

**Auto-detect:** Check `.last-output` for user's system path. If found + `execution/.template-config.md` exists → update mode. Otherwise → setup mode.

## Rules (apply in all modes)

- One question at a time. Scaffold every question with defaults/examples.
- Don't show the system files — you hold the complexity.
- Strict brevity. Front-load key info.
- Momentum over perfection. Flexibility over rigidity.
- Never delete user content without permission.
- Never display secrets. Flag & confirm before system changes.
