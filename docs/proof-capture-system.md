# Proof Capture System

> How Solo Company OS captures, validates, and tracks visual proof of work.

## Overview

The Proof Capture System provides visual evidence that work was completed correctly. It uses three capture tools, automated validation, and structured tracking.

## Capture Tools

### Peekaboo

**Purpose:** macOS app/window detection and screenshot capture.

**Capabilities:**
- Capture specific app windows
- Capture by window title
- List running applications
- List windows per application

**Policy:** Observation-only. No automation, clicking, or control.

**Use cases:**
- Capture app dashboards
- Capture browser windows
- Capture terminal sessions
- Capture document editors

### shot-scraper

**Purpose:** Web page and HTML capture.

**Capabilities:**
- Capture web pages by URL
- Capture local HTML files
- Full page or viewport capture
- Custom viewport sizes

**Use cases:**
- Capture web applications
- Capture rendered Markdown
- Capture documentation sites
- Capture API documentation

### screencapture

**Purpose:** Full screen capture (macOS built-in).

**Capabilities:**
- Full screen capture
- Delayed capture
- Region selection

**Use cases:**
- Fallback when other tools unavailable
- Full desktop capture
- Quick captures

### render-md-proof-page.sh

**Purpose:** Convert Markdown to styled HTML and capture as PNG.

**Workflow:**
1. Read Markdown file
2. Render to styled HTML
3. Start local HTTP server
4. Capture HTML with shot-scraper
5. Clean up

**Use cases:**
- Capture documentation
- Capture reports
- Capture any Markdown content

## Manifest Tracking

**File:** `proof-manifest.csv`

**Format:** `timestamp,tool,category,target,description,mode,file_path,status,notes`

**Rules:**
1. Every capture gets a manifest entry
2. Timestamp in UTC (ISO 8601)
3. Status: captured / invalid / needs_browser_ready
4. File path must be absolute

## Validation Rules

| Rule | Description |
|------|-------------|
| File exists | PNG file must exist at specified path |
| Size non-zero | File size must be > 0 bytes |
| Target content visible | Must show intended content |
| No login pages | Login screens marked NEEDS_BROWSER_READY |
| No blank pages | Blank/empty pages marked INVALID |
| No menu bars only | Tiny crops marked INVALID |

## Redaction Rules

| Content | Action |
|---------|--------|
| API keys | Never screenshot |
| Passwords | Never screenshot |
| Private keys | Never screenshot |
| Client data | Blur or crop |
| Token in URL | Blur URL bar |
| Sensitive browser tabs | Do not capture |

## Gap Tracking

**File:** `proof/proof-gap-tracker.md`

**Purpose:** Track what proof is needed and what's been captured.

**Status values:**
- Needed — Not yet captured
- Captured — Screenshot exists and validated
- INVALID — Captured but content not visible
- NEEDS_BROWSER_READY — Requires logged-in session
- BLOCKED — Cannot capture (permission/access)

## Current Status

| Metric | Value |
|--------|-------|
| Total proof gaps | 14 |
| Gaps filled | 13 (93%) |
| Valid screenshots | 19 |
| Tools available | 3 |

---

_Proof Capture System of Solo Company OS._
