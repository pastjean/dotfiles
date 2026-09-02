# Project notes for agents

Deliberate decisions in this repo - do NOT silently revert them:

- `~/.agents/skills` is the canonical runtime skill store. Keep custom sources in `home/.agents/skills`; agent-specific skill directories contain links only. See `install.sh`.

## Maintaining this file

Keep this file for knowledge useful to almost every future agent session in this project.
Do not repeat what the codebase already shows; point to the authoritative file or command instead.
Prefer rewriting or pruning existing entries over appending new ones.
When updating this file, preserve this bar for all agents and keep entries concise.