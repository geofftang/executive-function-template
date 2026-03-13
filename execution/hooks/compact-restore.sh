#!/bin/bash
# SessionStart(compact): Inject compaction survival kit as additionalContext
KIT_PATH="$HOME/.claude/compaction-kit.json"

if [ ! -f "$KIT_PATH" ]; then
  exit 0
fi

# Read kit and format as concise injection
TASK=$(jq -r '.task // ""' "$KIT_PATH")
PHASE=$(jq -r '.current_phase // ""' "$KIT_PATH" | head -c 400)
LAST=$(jq -r '.last_context // ""' "$KIT_PATH" | head -c 400)
FILES=$(jq -r '.files_to_reread // [] | .[]' "$KIT_PATH" | head -5)

# Build injection (target: 250-600 tokens)
CONTEXT="Post-compaction restore (authoritative files win if conflict):"

if [ -n "$FILES" ]; then
  CONTEXT="$CONTEXT
Re-read now: $FILES"
fi

if [ -n "$TASK" ]; then
  CONTEXT="$CONTEXT
$TASK"
fi

if [ -n "$PHASE" ]; then
  CONTEXT="$CONTEXT
$PHASE"
fi

if [ -n "$LAST" ]; then
  CONTEXT="$CONTEXT
Last context: $LAST"
fi

# Output as JSON additionalContext
jq -n --arg ctx "$CONTEXT" '{
  "hookSpecificOutput": {
    "hookEventName": "SessionStart",
    "additionalContext": $ctx
  }
}'

# Clean up kit after use
rm -f "$KIT_PATH"

exit 0
