#!/bin/bash
# Create symlinks so AI tools discover skills from execution/skills/
# Set up hooks for safety and compaction survival.
# Run once after cloning. New skills added to execution/skills/ are auto-discovered.

SKILLS_DIR="execution/skills"
HOOKS_DIR="execution/hooks"

if [ ! -d "$SKILLS_DIR" ]; then
  echo "Error: $SKILLS_DIR not found. Run from repo root."
  exit 1
fi

mkdir -p .claude .gemini

# Skills
ln -sfn "../$SKILLS_DIR" .claude/skills
ln -sfn "../$SKILLS_DIR" .gemini/skills

echo "Skills linked:"
echo "  .claude/skills -> $SKILLS_DIR"
echo "  .gemini/skills -> $SKILLS_DIR"

# Hooks
if [ -d "$HOOKS_DIR" ]; then
  ln -sfn "../$HOOKS_DIR" .claude/hooks
  echo "Hooks linked:"
  echo "  .claude/hooks -> $HOOKS_DIR"

  # Create settings.local.json with hook registrations if it doesn't exist
  SETTINGS=".claude/settings.local.json"
  if [ ! -f "$SETTINGS" ]; then
    cat > "$SETTINGS" << 'SETTINGS_EOF'
{
  "hooks": {
    "PreToolUse": [
      {
        "matcher": "Bash",
        "hooks": [
          {
            "type": "command",
            "command": "\"$CLAUDE_PROJECT_DIR\"/.claude/hooks/block-dangerous.sh"
          }
        ]
      }
    ],
    "PreCompact": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "python3 \"$CLAUDE_PROJECT_DIR\"/.claude/hooks/precompact-save.py"
          }
        ]
      }
    ],
    "SessionStart": [
      {
        "matcher": "compact",
        "hooks": [
          {
            "type": "command",
            "command": "\"$CLAUDE_PROJECT_DIR\"/.claude/hooks/compact-restore.sh"
          }
        ]
      }
    ]
  }
}
SETTINGS_EOF
    echo "Hook settings created: $SETTINGS"
  else
    echo "Note: $SETTINGS already exists — hooks may need manual registration."
  fi
fi

echo "Done. Skills and hooks are ready."
