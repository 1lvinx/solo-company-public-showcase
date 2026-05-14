#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
REPORT_DIR="$PROJECT_ROOT/reports/metrics"
TIMESTAMP=$(date +%Y%m%d-%H%M%S)
REPORT_FILE="$REPORT_DIR/code-lines-${TIMESTAMP}.txt"

mkdir -p "$REPORT_DIR"

if ! command -v tokei &>/dev/null; then
  echo "ERROR: tokei not found."
  echo "Install: brew install tokei"
  exit 1
fi

echo "=== Code Line Count Report ===" | tee "$REPORT_FILE"
echo "Generated: $(date)" | tee -a "$REPORT_FILE"
echo "Project: $PROJECT_ROOT" | tee -a "$REPORT_FILE"
echo "" | tee -a "$REPORT_FILE"

EXCLUDE_DIRS="node_modules,.git,dist,build,target,.next,out,coverage"

tokei "$PROJECT_ROOT" \
  --exclude node_modules \
  --exclude .git \
  --exclude dist \
  --exclude build \
  --exclude target \
  --exclude .next \
  --exclude out \
  --exclude coverage \
  2>&1 | tee -a "$REPORT_FILE" || echo "(tokei error)" | tee -a "$REPORT_FILE"

echo "" | tee -a "$REPORT_FILE"
echo "Report saved: $REPORT_FILE"
