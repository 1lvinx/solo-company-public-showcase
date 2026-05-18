# Public Release Checklist

> Pre-launch safety checklist for Solo Company OS public showcase.

## Checklist

### 1. No Internal IPs

| Check | Status |
|-------|--------|
| No `10.x.x.x` in any public file | VERIFIED (2026-05-19) |
| No `192.168.x.x` in any public file | VERIFIED (2026-05-19) |
| No `172.16-31.x.x` in any public file | VERIFIED (2026-05-19) |
| No `localhost` with port numbers | VERIFIED (2026-05-19) |

**Verification command:**
```bash
grep -rn "10\.\|192\.168\.\|172\.1[6-9]\.\|172\.2[0-9]\.\|172\.3[0-1]\.\|localhost:" public-showcase/
```

### 2. No Live URLs

| Check | Status |
|-------|--------|
| No `http://10.` URLs | VERIFIED (2026-05-19) |
| No `http://192.168.` URLs | VERIFIED (2026-05-19) |
| No internal dashboard URLs | VERIFIED (2026-05-19) |
| No Plane/Homarr live URLs | VERIFIED (2026-05-19) |

**Verification command:**
```bash
grep -rn "http://10\.\|http://192\.168\.\|http://localhost:" public-showcase/
```

### 3. No Server Paths

| Check | Status |
|-------|--------|
| No `/srv/` paths | VERIFIED (2026-05-19) |
| No `/Users/elvinx/` paths | VERIFIED (2026-05-19) |
| No `/Users/` home directory paths | VERIFIED (2026-05-19) |
| No SSH config paths (`~/.ssh/`) | VERIFIED (2026-05-19) |

**Verification command:**
```bash
grep -rn "/srv/\|/Users/" public-showcase/
```

### 4. No SSH Aliases or Keys

| Check | Status |
|-------|--------|
| No `solo-cockpit` alias references | VERIFIED (2026-05-19) |
| No SSH key paths | VERIFIED (2026-05-19) |
| No SSH config content | VERIFIED (2026-05-19) |

**Verification command:**
```bash
grep -rn "solo-cockpit\|\.ssh/\|IdentityFile" public-showcase/
```

### 5. No API Keys or Tokens

| Check | Status |
|-------|--------|
| No API key patterns | VERIFIED (2026-05-19) |
| No token strings | VERIFIED (2026-05-19) |
| No password references | VERIFIED (2026-05-19) |
| No secret file paths (`.env`) | VERIFIED (2026-05-19) |

**Verification command:**
```bash
grep -rn "API_KEY\|TOKEN\|SECRET\|PASSWORD\|\.env\b" public-showcase/
```

### 6. No Private Screenshots

| Check | Status |
|-------|--------|
| Only READY_PUBLIC screenshots included | PASS — 6 READY_PUBLIC + 2 REDACTED |
| No screenshots with visible IPs | PASS — plane/homarr redacted with solid overlay |
| No screenshots with server paths | PASS — no server paths in any included screenshot |
| No screenshots with SSH terminals | PASS — ssh-backup-pass excluded (PRIVATE_ONLY) |
| No screenshots with browser URL bars showing internal URLs | PASS — browser chrome covered in redacted screenshots |

**Verification:** Cross-reference with `screenshot-redaction-table.md`. Updated 2026-05-14 (Phase 9-A).

### 7. No Client Data

| Check | Status |
|-------|--------|
| No client names | NEEDS_VERIFICATION |
| No client project details | NEEDS_VERIFICATION |
| No client contact information | NEEDS_VERIFICATION |
| No client-specific screenshots | NEEDS_VERIFICATION |

### 8. No Exaggerated Claims

| Check | Status |
|-------|--------|
| All statistics match internal records | NEEDS_VERIFICATION |
| All service descriptions accurate | NEEDS_VERIFICATION |
| No unverified pricing (marked NEEDS_VERIFICATION) | NEEDS_VERIFICATION |
| No false "completed" claims | NEEDS_VERIFICATION |

### 9. Legal and Payment Terms

| Check | Status |
|-------|--------|
| No payment processing details | NEEDS_VERIFICATION |
| No bank account numbers | NEEDS_VERIFICATION |
| No tax identification numbers | NEEDS_VERIFICATION |
| Payment terms marked NEEDS_VERIFICATION where not finalized | NEEDS_VERIFICATION |

### 10. File Hygiene

| Check | Status |
|-------|--------|
| No `.env` files | VERIFIED (2026-05-19) |
| No `node_modules/` | VERIFIED (2026-05-19) |
| No `__pycache__/` | VERIFIED (2026-05-19) |
| No `.DS_Store` | VERIFIED (2026-05-19) — added to .gitignore |
| No backup files (`*.bak`, `*.old`) | VERIFIED (2026-05-19) |
| No temp files (`*.tmp`) | VERIFIED (2026-05-19) |

**Verification command:**
```bash
find public-showcase/ -name ".env" -o -name "node_modules" -o -name "__pycache__" -o -name ".DS_Store" -o -name "*.bak" -o -name "*.tmp"
```

---

## Verification Commands (Run All)

```bash
# 1. Internal IPs
grep -rn "10\.\|192\.168\.\|172\.1[6-9]\.\|172\.2[0-9]\.\|172\.3[0-1]\." public-showcase/

# 2. Live URLs
grep -rn "http://10\.\|http://192\.168\.\|http://localhost:" public-showcase/

# 3. Server paths
grep -rn "/srv/\|/Users/" public-showcase/

# 4. SSH references
grep -rn "solo-cockpit\|\.ssh/\|IdentityFile" public-showcase/

# 5. Secrets
grep -rn "API_KEY\|TOKEN\|SECRET\|PASSWORD\|\.env\b" public-showcase/

# 6. File hygiene
find public-showcase/ -name ".env" -o -name "node_modules" -o -name "__pycache__" -o -name ".DS_Store" -o -name "*.bak" -o -name "*.tmp"
```

## Decision Gate

| Outcome | Action |
|---------|--------|
| All checks PASS | Proceed with GitHub Pages launch |
| Any check FAIL | Fix issue, re-verify, then launch |
| Any check WARN | Document risk, launch with caution |

---

_Public Release Checklist of Solo Company OS._
