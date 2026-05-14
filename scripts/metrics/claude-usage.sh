#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
REPORT_DIR="$PROJECT_ROOT/reports/metrics"
TIMESTAMP=$(date +%Y%m%d-%H%M%S)
REPORT_FILE="$REPORT_DIR/claude-usage-${TIMESTAMP}.txt"

mkdir -p "$REPORT_DIR"

CLAUDE_PROJECTS="$HOME/.claude/projects"
if [[ ! -d "$CLAUDE_PROJECTS" ]]; then
  echo "ERROR: $CLAUDE_PROJECTS not found. Claude Code may not have been used yet."
  exit 1
fi

echo "=== Claude Code Token Usage Report ===" | tee "$REPORT_FILE"
echo "Generated: $(date)" | tee -a "$REPORT_FILE"
echo "Project: $PROJECT_ROOT" | tee -a "$REPORT_FILE"
echo "" | tee -a "$REPORT_FILE"

echo "--- Daily Usage ---" | tee -a "$REPORT_FILE"
npx ccusage@latest daily 2>&1 | tee -a "$REPORT_FILE" || echo "(no daily data)" | tee -a "$REPORT_FILE"
echo "" | tee -a "$REPORT_FILE"

echo "--- Monthly Usage ---" | tee -a "$REPORT_FILE"
npx ccusage@latest monthly 2>&1 | tee -a "$REPORT_FILE" || echo "(no monthly data)" | tee -a "$REPORT_FILE"
echo "" | tee -a "$REPORT_FILE"

echo "--- Session Usage ---" | tee -a "$REPORT_FILE"
npx ccusage@latest session 2>&1 | tee -a "$REPORT_FILE" || echo "(no session data)" | tee -a "$REPORT_FILE"
echo "" | tee -a "$REPORT_FILE"

echo "Report saved: $REPORT_FILE"
