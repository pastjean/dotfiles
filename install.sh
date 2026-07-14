#!/usr/bin/env bash

echo ""
echo '         88                          ad88  88  88                       '
echo '         88                ,d       d8"    ""  88                       '
echo '         88                88       88         88                       '
echo ' ,adPPYb,88   ,adPPYba,  MM88MMM  MM88MMM  88  88   ,adPPYba,  ,adPPYba,'
echo 'a8"    `Y88  a8"     "8a   88       88     88  88  a8P_____88  I8[    ""'
echo '8b       88  8b       d8   88       88     88  88  8PP"""""""   `"Y8ba, '
echo '"8a,   ,d88  "8a,   ,a8"   88,      88     88  88  "8b,   ,aa  aa    ]8I'
echo ' `"8bbdP"Y8   `"YbbdP"`    "Y888    88     88  88   `"Ybbd8"`  `"YbbdP" '
echo ""
echo ""

DOTFILES_DIR="$( cd "$(dirname "$0")" ; pwd -P )"
# All files that get symlinked into $HOME live under home/
HOME_DIR="$DOTFILES_DIR/home"

link() {
    echo "Linking $1 to $2"
    ln -sfh "$1" "$2"
}

mkdir -p $HOME/.config/fish
link $HOME_DIR/.config/fish/config.fish $HOME/.config/fish/config.fish

link $HOME_DIR/.gitconfig $HOME/.gitconfig
link $HOME_DIR/.gitmessage $HOME/.gitmessage
link $HOME_DIR/.irbrc $HOME/.irbrc
link $HOME_DIR/.tmux.conf $HOME/.tmux.conf
link $HOME_DIR/.vimrc $HOME/.vimrc
link $HOME_DIR/.alacritty.toml $HOME/.alacritty.toml
link $HOME_DIR/.curlrc $HOME/.curlrc

# Claude Code
mkdir -p $HOME/.claude
link "$HOME_DIR/.claude/settings.json" "$HOME/.claude/settings.json"

# Agent skills. opencode is the primary agent, so the repo keeps skills under
# home/.config/opencode/skills (the authority); symlink each into opencode and Claude Code.
mkdir -p $HOME/.config/opencode/skills $HOME/.claude/skills
for skill_dir in $HOME_DIR/.config/opencode/skills/*/; do
    skill_name=$(basename "$skill_dir")
    link "$skill_dir" "$HOME/.config/opencode/skills/$skill_name"
    link "$skill_dir" "$HOME/.claude/skills/$skill_name"
done

# Upstream skills: managed by the skills CLI (https://skills.sh), updatable
# via `npx skills update`. Add more with: npx skills add <owner/repo> -g -a claude-code -a opencode -y
if command -v npx >/dev/null 2>&1; then
    npx -y skills add blader/humanizer -g -a claude-code -a opencode -y
else
    echo "npx not found; skipping skills CLI installs (e.g. humanizer)"
fi

# Agent instructions, shared across Claude Code, Codex, and opencode
mkdir -p $HOME/.claude $HOME/.codex $HOME/.config/opencode
link "$HOME_DIR/AGENTS.md" "$HOME/.claude/CLAUDE.md"
link "$HOME_DIR/AGENTS.md" "$HOME/.codex/AGENTS.md"
link "$HOME_DIR/AGENTS.md" "$HOME/.config/opencode/AGENTS.md"

echo "Done..."
echo "All dotfiles are now linked, your are good to go"
echo ""
