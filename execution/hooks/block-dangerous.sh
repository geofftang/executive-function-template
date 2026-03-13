#!/bin/bash
# PreToolUse(Bash): Block destructive commands — enforce safe alternatives
# Registered in .claude/settings.local.json

COMMAND=$(jq -r '.tool_input.command' < /dev/stdin)

# Extract just the first line (actual command, not heredoc/string content)
FIRST_LINE=$(echo "$COMMAND" | head -1)

# Block rm — use mv to Trash instead (check first line only to avoid heredoc false positives)
if echo "$FIRST_LINE" | grep -qE '\brm\b' && ! echo "$FIRST_LINE" | grep -q '\.Trash'; then
  echo "Blocked: use 'mv file ~/.Trash/' instead of rm" >&2
  exit 2
fi

# Block force push
if echo "$FIRST_LINE" | grep -qE 'git push.*(--force|-f)'; then
  echo "Blocked: force push not allowed" >&2
  exit 2
fi

# Block git reset --hard
if echo "$FIRST_LINE" | grep -qE 'git reset\s+--hard'; then
  echo "Blocked: git reset --hard is destructive — use a safer alternative" >&2
  exit 2
fi

exit 0
