# Create junctions so AI tools discover skills from execution/skills/
# Set up hooks for safety and compaction survival.
# Run once after cloning. New skills added to execution/skills/ are auto-discovered.

$SkillsDir = "execution\skills"
$HooksDir = "execution\hooks"

if (-not (Test-Path $SkillsDir)) {
    Write-Error "$SkillsDir not found. Run from repo root."
    exit 1
}

New-Item -ItemType Directory -Path .claude -Force | Out-Null
New-Item -ItemType Directory -Path .gemini -Force | Out-Null

# Skills
if (Test-Path .claude\skills) { Remove-Item .claude\skills -Force }
if (Test-Path .gemini\skills) { Remove-Item .gemini\skills -Force }

$FullPath = (Resolve-Path $SkillsDir).Path
New-Item -ItemType Junction -Path .claude\skills -Target $FullPath | Out-Null
New-Item -ItemType Junction -Path .gemini\skills -Target $FullPath | Out-Null

Write-Host "Skills linked:"
Write-Host "  .claude\skills -> $SkillsDir"
Write-Host "  .gemini\skills -> $SkillsDir"

# Hooks
if (Test-Path $HooksDir) {
    if (Test-Path .claude\hooks) { Remove-Item .claude\hooks -Force }
    $HooksPath = (Resolve-Path $HooksDir).Path
    New-Item -ItemType Junction -Path .claude\hooks -Target $HooksPath | Out-Null
    Write-Host "Hooks linked:"
    Write-Host "  .claude\hooks -> $HooksDir"

    $Settings = ".claude\settings.local.json"
    if (-not (Test-Path $Settings)) {
        @'
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
'@ | Set-Content $Settings -Encoding UTF8
        Write-Host "Hook settings created: $Settings"
    } else {
        Write-Host "Note: $Settings already exists - hooks may need manual registration."
    }
}

Write-Host "Done. Skills and hooks are ready."
