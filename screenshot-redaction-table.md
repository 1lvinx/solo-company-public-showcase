# Screenshot Redaction Table

> Classification of all proof screenshots for public showcase readiness.
> Updated 2026-05-14 (Phase 9-A): Reconciled counts, redacted plane-homarr screenshots.

## Classification Legend

| Label | Meaning |
|-------|---------|
| READY_PUBLIC | Safe to publish as-is. No private data visible. |
| REDACTED | Originally needed redaction, now processed. Safe to publish. |
| NEEDS_REDACTION | Usable with blur/crop. Sensitive data must be hidden. |
| PRIVATE_ONLY | Internal use only. Contains private infrastructure data. |
| DO_NOT_USE | Invalid, test artifact, or unusable for any purpose. |

---

## Public-Showcase Screenshots (in `public-showcase/assets/screenshots/`)

These are the 8 files copied to the public-showcase package.

| # | File | Size | Classification | Reason |
|---|------|------|----------------|--------|
| 1 | `20260514_172943_company_company-dashboard_v01.png` | 339K | READY_PUBLIC | Rendered markdown — mission, areas, modules. No private data. |
| 2 | `20260514_173042_company_service-catalog_v01.png` | 372K | READY_PUBLIC | Rendered markdown — service descriptions and pricing. Public-safe. |
| 3 | `20260514_173046_business_offer-ladder_v01.png` | 478K | READY_PUBLIC | Rendered markdown — 4-level pricing. Public-safe. |
| 4 | `20260514_173213_solo-company-os_folder-structure_v01.png` | 256K | READY_PUBLIC | Finder view of OS directory tree. No private data. |
| 5 | `20260514_180238_terminal_peekaboo-window-list_v01.png` | 110K | READY_PUBLIC | Peekaboo capture showing window title only. No private data. |
| 6 | `20260514_181309_solo-company-os_os-workspace-peekaboo_v01.png` | 111K | READY_PUBLIC | Peekaboo capture of workspace. Directory names only. |
| 7 | `20260514_182939_plane-homarr_plane-workspace-peekaboo_v01_redacted.png` | 315K | REDACTED | Browser chrome (IPs, URLs) covered with solid overlay. Dashboard content preserved. |
| 8 | `20260514_184101_plane-homarr_homarr-cockpit-final_v01_redacted.png` | 87K | REDACTED | Browser chrome (IPs, bookmarks, avatar, timestamp) covered. Dashboard cards preserved. |

## Public-Showcase Classification Summary

| Classification | Count | Usable for Public Showcase |
|----------------|-------|---------------------------|
| READY_PUBLIC | 6 | Yes — no changes needed |
| REDACTED | 2 | Yes — after redaction applied |
| **Total public-ready** | **8** | **All safe to publish** |

## Full Proof Inventory (source: `proof/assets/screenshots/`)

All screenshots across the entire proof system, including those NOT in public-showcase.

| # | File | Category | Classification | In Public Showcase |
|---|------|----------|----------------|-------------------|
| 1 | `company/.../company-dashboard_v01.png` | company | READY_PUBLIC | Yes |
| 2 | `company/.../service-catalog_v01.png` | company | READY_PUBLIC | Yes |
| 3 | `company/.../company-dashboard-rendered_v01.png` | company | READY_PUBLIC | No (duplicate of #1) |
| 4 | `business/.../offer-ladder_v01.png` | business | READY_PUBLIC | Yes |
| 5 | `business/.../offer-ladder-peekaboo_v01.png` | business | READY_PUBLIC | No (duplicate of #4) |
| 6 | `solo-company-os/.../daily-report_v01.png` | solo-company-os | NEEDS_REDACTION | No |
| 7 | `solo-company-os/.../folder-structure_v01.png` | solo-company-os | READY_PUBLIC | Yes |
| 8 | `solo-company-os/.../os-workspace-peekaboo_v01.png` | solo-company-os | READY_PUBLIC | Yes |
| 9 | `infrastructure/.../ssh-backup-pass_v01.png` | infrastructure | PRIVATE_ONLY | No |
| 10 | `plane-homarr/.../plane-workspace-peekaboo_v01.png` | plane-homarr | REDACTED | Yes (redacted copy) |
| 11 | `plane-homarr/.../homarr-cockpit-final_v01.png` | plane-homarr | REDACTED | Yes (redacted copy) |
| 12 | `terminal/.../peekaboo-window-list_v01.png` | terminal | READY_PUBLIC | Yes |
| 13-19 | Various test artifacts | misc/plane-homarr | DO_NOT_USE | No |

### Full Inventory Classification Summary

| Classification | Count | Notes |
|----------------|-------|-------|
| READY_PUBLIC | 6 | Safe as-is |
| REDACTED | 2 | Safe after redaction |
| NEEDS_REDACTION | 1 | daily-report — not in public-showcase |
| PRIVATE_ONLY | 1 | ssh-backup-pass — never publish |
| DO_NOT_USE | 7 | Test artifacts in proof directory |
| **Total** | **17** | 8 in public-showcase, 9 excluded |

---

_Redaction table reconciled: 2026-05-14 (Phase 9-A). Public-showcase has 8 safe screenshots (6 READY_PUBLIC + 2 REDACTED)._
