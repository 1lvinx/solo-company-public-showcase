# GitHub Pages Launch Plan

> Steps to publish Solo Company OS public showcase on GitHub Pages.
>
> Canonical current state lives in `docs/runtime-status-summary.md`. This document is a launch plan, not proof of live publication.

## Recommended Repository

| Field | Value |
|-------|-------|
| Repository name | `solo-company-os-showcase` |
| Visibility | **Public** |
| Branch | `main` |
| Source folder | `/` (root) |
| GitHub Pages | Enabled after push |

## Why This Name

- `solo-company-os` — already used as internal directory name, consistent branding
- `-showcase` suffix — signals this is the public-facing documentation, not the full OS
- Avoids confusion with any private repository

## Repository Contents

```
solo-company-os-showcase/
├── README.md                    (landing page redirect or intro)
├── index.html                   (if using a static site generator)
├── docs/
│   ├── overview.md
│   ├── system-architecture.md
│   ├── capabilities.md
│   ├── service-catalog.md
│   ├── proof-capture-system.md
│   ├── skillhub.md
│   ├── internal-agents.md
│   └── roadmap.md
├── screenshot-redaction-table.md
├── github-pages-launch-plan.md
├── public-release-checklist.md
└── assets/
    └── screenshots/
        └── (only READY_PUBLIC images)
```

## Launch Steps

### Pre-Launch (Before Any Push)

1. **Verify public-release-checklist.md** — all items PASS
2. **Copy only READY_PUBLIC screenshots** to `assets/screenshots/`
3. **Run secret scan** — `grep -rn "10\.\|192\.168\.\|/srv/\|/Users/\|solo-cockpit\|API_KEY\|TOKEN\|SECRET" public-showcase/`
4. **Verify no internal IPs** in any markdown file
5. **Verify no server paths** (`/srv/`, `/Users/elvinx/`) in any public file
6. **Verify no SSH aliases** (`solo-cockpit`) in any public file
7. **Verify no live URLs** (`http://10.`, `http://192.168.`) in any public file

### Step 1: Create Repository

```bash
# On GitHub web UI:
# Repository name: solo-company-os-showcase
# Visibility: Public
# Description: "Operating system for one-person AI companies — philosophy, architecture, and services"
# Initialize with: None (we push existing content)
```

### Step 2: Initialize and Push

```bash
cd solo-company-os/public-showcase
git init
git add .
git commit -m "docs: initial public showcase for Solo Company OS"
git remote add origin git@github.com:<username>/solo-company-os-showcase.git
git push -u origin main
```

### Step 3: Enable GitHub Pages

1. Go to repository Settings > Pages
2. Source: Deploy from a branch
3. Branch: `main`, folder: `/ (root)`
4. Save
5. Wait 2-3 minutes for first build
6. Visit `https://<username>.github.io/solo-company-os-showcase/` after the canonical source says the preview is ready to publish

### Step 4: Verify

1. All 8 docs pages load
2. Images render correctly
3. No 404 errors
4. No internal data exposed
5. Mobile responsive check
6. Search engine indexing (may take 24-48 hours)

### Step 5: Share

1. Add to GitHub profile README (if exists)
2. Share link in WeChat/social media
3. Add to any business cards or profiles

## Rollback Plan

If any private data is discovered after push:

1. **Immediate:** Set repository visibility to Private
2. **Investigate:** `git log --oneline` to find the offending commit
3. **Scrub:** `git filter-branch` or BFG Repo Cleaner to remove sensitive content from history
4. **Re-push:** Force push cleaned history
5. **Re-enable Pages** after verification
6. **Monitor:** Check GitHub search indexing for cached copies

## Content Guidelines

### DO Include

- System philosophy and approach
- Architecture diagrams (ASCII/text only)
- Service descriptions and pricing ranges
- SkillHub overview (names and categories only)
- Agent descriptions (purpose and workflow)
- Roadmap and success metrics
- Public-safe screenshots only

### DO NOT Include

- Internal IPs (10.x.x.x, 192.168.x.x)
- Server paths (/srv/, /Users/)
- SSH aliases or keys
- API keys, tokens, or secrets
- Client data or names
- Live dashboard URLs
- Detailed infrastructure configuration
- Daily reports with internal references
- Risk registers with server details

## Post-Launch Monitoring

| Check | Frequency | Method |
|-------|-----------|--------|
| GitHub Pages status | Weekly | Settings > Pages |
| 404 errors | Weekly | GitHub Pages analytics |
| Search indexing | Monthly | Google search `site:<username>.github.io` |
| Content accuracy | Monthly | Compare with internal OS state |
| Screenshot currency | Monthly | Update if OS structure changes significantly |

---

_GitHub Pages Launch Plan of Solo Company OS._
