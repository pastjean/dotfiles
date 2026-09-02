#!/usr/bin/env bash

set -euo pipefail

echo ""
echo '         88                          ad88  88  88                       '
echo '         88                ,d       d8"    ""  88                       '
echo '         88                88       88         88                       '
echo ' ,adPPYb,88   ,adPPYba,  MM88MMM  MM88MMM  88  88   ,adPPYba,  ,adPPYba,'
echo 'a8"    `Y88  a8"     "8a   88       88     88  88  a8P_____88  I8[    ""'
echo '8b       88  8b       d8   88       88     88  88  8PP"""""""   `"Y8ba, '
echo '"8a,   ,d88  "8a,   ,a8"   88,      88     88  88  "8b,   ,aa  aa    ]8I'
# shellcheck disable=SC2016
echo ' `"8bbdP"Y8   `"YbbdP"`    "Y888    88     88  88   `"Ybbd8"`  `"YbbdP" '
echo ""
echo ""

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd -P)"
# All files that get symlinked into $HOME live under home/
HOME_DIR="$DOTFILES_DIR/home"

link() {
    echo "Linking $1 to $2"
    ln -sfh "$1" "$2"
}

mkdir -p "$HOME/.config/fish"
link "$HOME_DIR/.config/fish/config.fish" "$HOME/.config/fish/config.fish"

link "$HOME_DIR/.gitconfig" "$HOME/.gitconfig"
link "$HOME_DIR/.gitmessage" "$HOME/.gitmessage"
link "$HOME_DIR/.irbrc" "$HOME/.irbrc"
link "$HOME_DIR/.tmux.conf" "$HOME/.tmux.conf"
link "$HOME_DIR/.vimrc" "$HOME/.vimrc"
link "$HOME_DIR/.alacritty.toml" "$HOME/.alacritty.toml"
link "$HOME_DIR/.curlrc" "$HOME/.curlrc"

# Claude Code
mkdir -p "$HOME/.claude"
link "$HOME_DIR/.claude/settings.json" "$HOME/.claude/settings.json"

# OpenCode
mkdir -p "$HOME/.config/opencode"
link "$HOME_DIR/.config/opencode/opencode.json" "$HOME/.config/opencode/opencode.json"

# Agent skills. ~/.agents/skills is the canonical store. Custom skills live in
# this repo; upstream skills are installed into the same store by skills.sh.
mkdir -p "$HOME/.agents/skills" "$HOME/.config/opencode/skills" "$HOME/.claude/skills" "$HOME/.pi/agent/skills"
for skill_dir in "$HOME_DIR"/.agents/skills/*/; do
    [ -d "$skill_dir" ] || continue
    link "$skill_dir" "$HOME/.agents/skills/$(basename "$skill_dir")"
done

# Agent CLIs used by session hooks and MCP configuration.
if command -v npm >/dev/null 2>&1; then
    npm install --global gh-axi chrome-devtools-axi lavish-axi mcp-chrome-bridge
else
    echo "npm not found; skipping agent CLI installs"
fi

# Upstream skills: managed by the skills CLI (https://skills.sh), updatable
# via `npx skills update`. Add more with: npx skills add <owner/repo> -g -a claude-code -a opencode -y
if command -v npx >/dev/null 2>&1; then
    npx -y skills add blader/humanizer -g -a claude-code -a opencode -y
    npx -y skills add kunchenguid/gh-axi --skill gh-axi -g -a claude-code -a opencode -y
    npx -y skills add kunchenguid/chrome-devtools-axi --skill chrome-devtools-axi -g -a claude-code -a opencode -y
    npx -y skills add kunchenguid/lavish-axi --skill lavish -g -a claude-code -a opencode -y
else
    echo "npx not found; skipping skills CLI installs (e.g. humanizer)"
fi

# Agent-specific stores contain links only. Remove stale links, then mirror the
# canonical store. skills.sh has no pi target, so this also adds pi support.
for agent_skills_dir in "$HOME/.config/opencode/skills" "$HOME/.claude/skills" "$HOME/.pi/agent/skills"; do
    for skill_link in "$agent_skills_dir"/*; do
        if [ -L "$skill_link" ] && [ ! -e "$skill_link" ]; then
            rm "$skill_link"
        fi
    done

    for skill_dir in "$HOME"/.agents/skills/*/; do
        [ -e "$skill_dir" ] || continue
        link "$skill_dir" "$agent_skills_dir/$(basename "$skill_dir")"
    done
done

# Agent instructions, shared across Claude Code, Codex, OpenCode, and pi
mkdir -p "$HOME/.claude" "$HOME/.codex" "$HOME/.config/opencode" "$HOME/.pi/agent"
link "$HOME_DIR/AGENTS.md" "$HOME/.claude/CLAUDE.md"
link "$HOME_DIR/AGENTS.md" "$HOME/.codex/AGENTS.md"
link "$HOME_DIR/AGENTS.md" "$HOME/.config/opencode/AGENTS.md"
link "$HOME_DIR/AGENTS.md" "$HOME/.pi/agent/AGENTS.md"

# pi (pi.dev) declarative config: MCP servers and custom models.
# Secrets (auth.json), trust.json, and sessions stay local and untracked.
mkdir -p "$HOME/.pi/agent"
for pi_file in mcp.json models.json; do
    link "$HOME_DIR/.pi/agent/$pi_file" "$HOME/.pi/agent/$pi_file"
done

# pi-subagents roster mirroring oh-my-openagent. Discovery needs a real dir with
# symlinked files (it does not follow a symlinked agents/ directory).
mkdir -p "$HOME/.pi/agent/agents"
for agent_file in "$HOME_DIR"/.pi/agent/agents/*.md; do
    [ -e "$agent_file" ] || continue
    link "$agent_file" "$HOME/.pi/agent/agents/$(basename "$agent_file")"
done

# pi extensions: MCP client, subagents, plan mode. pi owns settings.json +
# node_modules; re-running is idempotent.
if command -v pi >/dev/null 2>&1; then
    for pi_pkg in npm:pi-mcp-extension npm:pi-subagents npm:@narumitw/pi-plan-mode; do
        pi install "$pi_pkg"
    done
else
    echo "pi not found; skipping pi extension installs"
fi

echo "Done..."
echo "All dotfiles are now linked, you are good to go"
echo ""
