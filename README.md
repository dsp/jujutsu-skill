# jujutsu-skill

A plugin that teaches AI coding agents to work with the [Jujutsu (jj)](https://github.com/jj-vcs/jj) version control system. Ships as both a **Claude Code plugin** and a **Codex plugin**, and the underlying skill works standalone too.

## Overview

This repository packages an Agent Skill that walks an agent through the proper workflow and commands for creating atomic, well-documented commits using jj. The skill teaches the describe-first workflow, atomic commit hygiene, and how to refine history with `squash`, `split`, and `absorb`. The skill is based on [danverbraganza/jujutsu-skill](https://github.com/danverbraganza/jujutsu-skill)

**Tested with:** jj v0.37.0

## Repository layout

```
.
├── .claude-plugin/plugin.json   # Claude Code plugin manifest
├── .codex-plugin/plugin.json    # Codex plugin manifest
├── skills/
│   └── jujutsu/
│       └── SKILL.md             # The shared skill content
├── LICENSE
└── README.md
```

Both plugin manifests point at the same `skills/jujutsu/SKILL.md`, so there is one source of truth for the skill instructions.

## Install as a Claude Code plugin

Local development (no install, loads the plugin for one session):

```bash
claude --plugin-dir /path/to/jujutsu-skill
```

Persistent install (copies the plugin into `~/.claude/plugins/`):


Or, distribute through a [plugin marketplace](https://code.claude.com/docs/en/plugin-marketplaces) and install with `/plugin install jujutsu-skill@<your-marketplace>`. Full plugin docs: <https://code.claude.com/docs/en/plugins>.

## Install as a Codex plugin

Persistent install (copies the plugin into `~/.codex/plugins/`):

Or reference the plugin from a marketplace file at `~/.agents/plugins/marketplace.json` (personal) or `<repo>/.agents/plugins/marketplace.json` (repo-scoped) with a relative path entry. See the [Codex plugin docs](https://developers.openai.com/codex/plugins/build) for current marketplace schema details.

## Skill philosophy

The skill emphasizes:

1. **Describe-first commits**: `jj desc -m "message"` before making changes
2. **Atomic commits**: one logical change per commit
3. **Commit quality preservation**: leverage jj's mutability to refine
4. **Clean history**: use `squash`, `split`, and `absorb` to keep history readable

See [`skills/jujutsu/SKILL.md`](skills/jujutsu/SKILL.md) for the full instructions the agent will follow.

## Contributing

Contributions welcome. Please keep changes compatible with jj v0.37.0.

## License

MIT
