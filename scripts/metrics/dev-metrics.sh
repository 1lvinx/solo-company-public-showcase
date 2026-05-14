#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
REPORT_DIR="$PROJECT_ROOT/reports/metrics"
TIMESTAMP=$(date +%Y%m%d-%H%M%S)
REPORT_FILE="$REPORT_DIR/dev-metrics-${TIMESTAMP}.md"

mkdir -p "$REPORT_DIR"

if git -C "$PROJECT_ROOT" rev-parse --is-inside-work-tree &>/dev/null; then
  GIT_BRANCH=$(git -C "$PROJECT_ROOT" branch --show-current 2>/dev/null || echo "N/A")
  GIT_DIRTY=$(git -C "$PROJECT_ROOT" status --porcelain 2>/dev/null | wc -l | tr -d ' ')
  if [[ "$GIT_DIRTY" -eq 0 ]]; then
    GIT_STATUS="Clean"
  else
    GIT_STATUS="$GIT_DIRTY uncommitted changes"
  fi
else
  GIT_BRANCH="N/A"
  GIT_STATUS="Not a git repo"
fi

{
  echo "# Dev Metrics Report"
  echo ""
  echo "- **Generated:** $(date)"
  echo "- **Project:** $PROJECT_ROOT"
  echo "- **Git branch:** $GIT_BRANCH"
  echo "- **Git status:** $GIT_STATUS"
  echo ""
  echo "---"
  echo ""
  echo "## Claude Code Token Usage"
  echo ""
  if [[ -d "$HOME/.claude/projects" ]]; then
    npx ccusage@latest daily 2>&1 | head -30 || echo "(no data)"
  else
    echo "Claude Code project data not found at ~/.claude/projects"
  fi
  echo ""
  echo "---"
  echo ""
  echo "## Code Line Count"
  echo ""
  if command -v tokei &>/dev/null; then
    tokei "$PROJECT_ROOT" \
      --exclude node_modules \
      --exclude .git \
      --exclude dist \
      --exclude build \
      --exclude target \
      --exclude .next \
      --exclude out \
      --exclude coverage \
      2>&1 || echo "(tokei error)"
  else
    echo "tokei not installed. Run: brew install tokei"
  fi
  echo ""
  echo "---"
  echo ""
  echo "## Suggestions"
  echo ""
  echo "- Review token usage trends to optimize Claude Code sessions"
  echo "- Track code growth over time"
  echo "- Run this script weekly for trend analysis"
} > "$REPORT_FILE"

echo "Metrics report: $REPORT_FILE"
