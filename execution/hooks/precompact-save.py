#!/usr/bin/env python3
"""PreCompact: Save compaction survival kit to temp file.
Reads STATE.md + last assistant message from transcript.
SessionStart(compact) hook reads the output."""

import json
import os
import sys

def main():
    input_data = json.load(sys.stdin)
    cwd = input_data.get("cwd", "")
    transcript_path = input_data.get("transcript_path", "")

    kit = {
        "task": "",
        "hard_constraints": [],
        "current_phase": "",
        "next_step": "",
        "dead_ends": [],
        "files_to_reread": [],
        "last_context": ""
    }

    # Read STATE.md for current task/intentions
    state_path = os.path.join(cwd, "state", "STATE.md")
    if os.path.exists(state_path):
        with open(state_path) as f:
            state_content = f.read()
        # Extract In Progress and Intention sections (first 500 chars each)
        for section in ["In Progress", "Intention", "Next"]:
            idx = state_content.find(f"## {section}")
            if idx >= 0:
                chunk = state_content[idx:idx+500].split("\n## ")[0].strip()
                if section == "In Progress":
                    kit["task"] = chunk
                elif section == "Intention":
                    kit["current_phase"] = chunk

    # Extract last assistant message from transcript
    if transcript_path and os.path.exists(transcript_path):
        last_assistant = ""
        try:
            with open(transcript_path) as f:
                for line in f:
                    try:
                        entry = json.loads(line.strip())
                        if entry.get("role") == "assistant" and entry.get("type") == "text":
                            last_assistant = entry.get("content", "")[:800]
                        # Also look for message format
                        if isinstance(entry, dict) and "message" in entry:
                            msg = entry["message"]
                            if msg.get("role") == "assistant":
                                content = msg.get("content", "")
                                if isinstance(content, str):
                                    last_assistant = content[:800]
                                elif isinstance(content, list):
                                    for block in content:
                                        if isinstance(block, dict) and block.get("type") == "text":
                                            last_assistant = block.get("text", "")[:800]
                    except json.JSONDecodeError:
                        continue
        except Exception:
            pass
        kit["last_context"] = last_assistant

    # Find recently modified files (potential re-read candidates)
    try:
        import subprocess
        result = subprocess.run(
            ["git", "diff", "--name-only", "HEAD"],
            capture_output=True, text=True, cwd=cwd, timeout=5
        )
        if result.returncode == 0:
            modified = [f for f in result.stdout.strip().split("\n") if f and (
                f.startswith("projects/") or f.startswith("state/") or
                f.startswith("execution/") or f.startswith("areas/")
            )]
            kit["files_to_reread"] = modified[:5]
    except Exception:
        pass

    # Write survival kit
    kit_path = os.path.join(os.path.expanduser("~"), ".claude", "compaction-kit.json")
    with open(kit_path, "w") as f:
        json.dump(kit, f, indent=2)

    exit(0)

if __name__ == "__main__":
    main()
