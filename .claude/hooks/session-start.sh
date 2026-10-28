#!/bin/bash
# Install dependencies for cnki-mcp and the vendored skills in .claude/skills
# so tests, lint and skill scripts work in Claude Code cloud sessions.
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

cd "$CLAUDE_PROJECT_DIR"

# cnki-mcp itself: project venv with pytest + ruff
uv sync --extra dev

# Skill scripts run with the system python3; install every skill's requirements
for req in .claude/skills/*/requirements.txt; do
  [ -f "$req" ] || continue
  python3 -m pip install --quiet --disable-pip-version-check --root-user-action=ignore -r "$req"
done
