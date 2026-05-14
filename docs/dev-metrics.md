# Dev Metrics

Token usage and code line count tracking for Solo Company OS.

## How to Run

```bash
# One-click: all metrics
bash scripts/metrics/dev-metrics.sh

# Token usage only
bash scripts/metrics/claude-usage.sh

# Code lines only
bash scripts/metrics/code-lines.sh
```

Reports are saved to `reports/metrics/` with timestamps.

## Tools Used

### ccusage

Tracks Claude Code token consumption across daily, monthly, and session views. Requires `~/.claude/projects` to exist (populated after using Claude Code).

**Limitations:**
- Only shows usage for sessions on this machine
- Does not track API costs directly
- Data depends on Claude Code log format (may change with updates)

### tokei

Fast code line counter. Supports 150+ languages. Counts lines, files, and code percentage.

## Report Output

```
reports/metrics/
  claude-usage-YYYYMMDD-HHMMSS.txt   # Token usage text
  code-lines-YYYYMMDD-HHMMSS.txt     # Line count text
  dev-metrics-YYYYMMDD-HHMMSS.md     # Combined markdown report
```

## FAQ

**Q: tokei not found?**
A: `brew install tokei`

**Q: ccusage shows no data?**
A: Claude Code must have been used at least once. Check `ls ~/.claude/projects`.

**Q: Can I delete old reports?**
A: Yes. Reports are timestamped and non-critical.

## Rollback

```bash
rm -rf scripts/metrics/
rm -rf reports/metrics/
```
