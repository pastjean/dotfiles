# Design skills: sources and local edits

Installed 2026-11-08 after review. Re-fetch from these commits or newer; re-apply the local edits.

| Local dir | Source | Commit | Upstream path |
|---|---|---|---|
| `impeccable/` | github.com/pbakaus/impeccable (skill 4.8.1, engine 0.1.19) | 924bbd1 | `.pi/skills/impeccable` |
| `emil/*` | github.com/emilkowalski/skills | c8a7962 | `skills/{emil-design-eng,animate,choreograph,review-animations,break-ui,apple-design}` |
| `ui-ux-pro-max/` | github.com/nextlevelbuilder/ui-ux-pro-max-skill (2.15.0) | 4f2dbb6 | `.claude/skills/ui-ux-pro-max` |
| `apple-ui-design/` | github.com/rshankras/claude-code-apple-skills | 77aac09 | `skills/design` |

## Local edits

- `ui-ux-pro-max/SKILL.md`: `${CLAUDE_PLUGIN_ROOT}/.claude/skills/ui-ux-pro-max/` prefix removed (paths relative to skill dir); added `disable-model-invocation: true` so it only loads via `/skill:ui-ux-pro-max` and does not compete with impeccable for routing.
- `apple-ui-design/SKILL.md`: `name: design` -> `apple-ui-design`; removed the line that reads `~/Downloads/docs/*.md`; added instruction to read sub-skill `SKILL.md` files (pi does not recurse past a dir with SKILL.md).

## Runtime notes

- impeccable runs a native engine: `~/.impeccable/bin/0.1.19/impeccable`, sha256 verified against `impeccable/scripts/engine-checksums.txt`. Telemetry off via `~/.impeccable/config.json`. `new-work` rolls still GET `https://impeccable.style/api/roll` (scope/mode/seed only); works degraded offline.
- No design hook on pi: run `impeccable detect --json <targets>` manually after UI edits.
- `emil/review-animations` is explicit-only upstream (`/skill:review-animations`).
