help:
    @just --list

# Install as a Claude Code plugin (copies the plugin into ~/.claude/plugins/)
install-claude:
    mkdir -p ~/.claude/plugins
    rm -rf ~/.claude/plugins/jujutsu-skill
    cp -r . ~/.claude/plugins/jujutsu-skill

# Install as a Codex plugin (copies the plugin into ~/.codex/plugins/)
install-codex:
    mkdir -p ~/.codex/plugins
    rm -rf ~/.codex/plugins/jujutsu-skill
    cp -r . ~/.codex/plugins/jujutsu-skill

# Install the bare skill into ~/.claude/skills/ (legacy, pre-plugin layout)
install-skill:
    cp -r ./skills/jujutsu ~/.claude/skills/jujutsu

install: install-claude install-codex
