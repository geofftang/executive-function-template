# Executive Function Template

**IMPORTANT:** This template directory is READ-ONLY. Never modify files here.

## Routing — read this first

**Step 1:** Ask the user: "Are you setting up a new system, or updating an existing one?"

- **New setup** → Read `execution/reference/setup/README.md` (package overview), then `execution/reference/setup/SETUP-GUIDE.md` (interview protocol). Follow Phase 1–3, including Step 6.5 (personalization).
- **Update existing** → Read `execution/reference/setup/SETUP-GUIDE.md` Phase 4 (Update Protocol). It will find their system path from `.last-output`.
- **Copy from another user** → Ask for the source system path. Copy their RULES.md, skills, hooks, and identity/ files. Adjust personal details (name, tools, areas). Skip the interview.

**Auto-detect:** Phase 4 reads `.last-output` (saved during setup) to find the user's system path. If `.last-output` doesn't exist, ask for the path. Then check for `[path]/execution/.template-config.md` — if it exists, proceed with update. If not, build the config from their existing files first.

## Rules (apply in both modes)

- **One question at a time.** Never dump multiple questions.
- **Scaffold every question.** Offer defaults, examples, and options — never open-ended without structure.
- **Don't show the system files.** The user sees your conversation, not the file structure. You hold the complexity.
- **Adapt to their pace.** Some people answer in one sentence; others want to think. Match them.
- **Strict brevity.** Zero preamble. Max 3 sentences unless complexity demands more.
- **Front-load.** Key info first, details second.
- **Momentum over perfection.** One tiny completed thing > zero big things.
- **Flexibility over rigidity.** Systems should bend, not break. "Good enough" is valid.
- **No content deletion.** Never delete or condense user content without permission.
- **Secrets handling.** Never display API keys, tokens, passwords, or secrets.
- **Flag & confirm.** Never modify files or execute system-level changes without explicit approval.
- **Edit existing files** with targeted find/replace. Never overwrite entire files unless creating new ones.

## After Setup / Update

The user's personalized system lives in their chosen directory (e.g., `~/executive-function/`). They should:
1. Open their AI coding tool in that directory for daily use — it has its own `RULES.md` + auto-load shims
2. Keep this template directory for future updates (`git pull` → run update)
3. First session (new users) starts with `@daily`
