# Playbook: Universal Memory Integration (New LLM)

This guide defines the process for adding a new LLM agent (e.g., OpenAI, Mistral, Perplexity) to the **Universal Memory Bridge** infrastructure.

## 1. Source Discovery
Find the session log location for the new agent.
- **Typical Paths:** `~/.<agent>/logs/`, `~/.config/<agent>/history/`
- **Verification:** Ensure the file is updated after every turn or session end.

## 2. Bridge Registration
Update `execution/scripts/memory/universal-memory-bridge.js`.
1. **Define Root:** `const NEW_AGENT_LOG_ROOT = path.join(process.env.HOME, ".new-agent/logs");`
2. **Add to Watcher:** `watcher.add(NEW_AGENT_LOG_ROOT);`
3. **Add Parser:** Add a conditional block in the `watcher.on('change')` event to handle the specific JSON/JSONL format of the new agent.

## 3. Intelligence Mapping
Update `ef-system/AGENTIC-PATTERNS.md`.
- Add the model to the **Multi-LLM Specialization Matrix**.
- Define its "Role" (e.g., "Best for UI tweaks", "High-ceiling reasoning").

## 4. Operational Check
1. Restart the daemon: `launchctl unload ~/Library/LaunchAgents/com.user.universal-mem.plist && launchctl load ~/Library/LaunchAgents/com.user.universal-mem.plist`
2. Run `@mem search` from the new agent to verify cross-pollination.
