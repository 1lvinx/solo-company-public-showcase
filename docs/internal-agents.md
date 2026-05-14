# Internal Agents

> Automated agents for Solo Company OS operations.

## Strategy

**Decision:** Internal productivity tools first. Commercial Agents built only after internal workflows are proven.

**Rationale:**
1. Internal agents must work reliably before being sold
2. Proven internal workflows become commercializable offers
3. Reduces risk — test on own operations first
4. Builds credibility — "eating own dog food"

## Agent Overview

| Agent | Purpose | Status | Priority | Risk |
|-------|---------|--------|----------|------|
| Project Review Agent | Daily/weekly health checks | ✅ Defined | P0 | L1 |
| Proof Capture Agent | Screenshot/proof capture | ✅ Defined | P0 | L1-L2 |
| Nuwa Asset Builder | Experience → reusable assets | ✅ Defined | P0 | L1-L2 |
| SkillHub Evaluator | Skill candidate verification | Planned | P1 | L1 |
| Browser Automation Agent | Web interaction tasks | Planned | P2 | L2-L3 |

---

## Project Review Agent

**Mission:** Automate project health monitoring.

**Inputs:**
- Daily reports
- Risk register
- Code review queue
- Task tickets
- Proof gap tracker

**Outputs:**
- Daily health report
- Weekly summary
- PASS/WARN/FAIL verdict
- Action items

**Workflow:**
1. Read today's report
2. Check risk register
3. Check code review queue
4. Check proof coverage
5. Generate report

**PASS criteria:**
- No L3/L4 risks open without mitigation
- No code reviews pending > 5 days
- Proof coverage >= 90%
- No blockers > 3 days old

---

## Proof Capture Agent

**Mission:** Capture, validate, and track proof materials.

**Tools:**
- Peekaboo (app/window capture)
- shot-scraper (web capture)
- screencapture (full screen)
- render-md-proof-page.sh (Markdown → PNG)

**Workflow:**
1. Identify target
2. Capture with appropriate tool
3. Validate content
4. Record in manifest
5. Update tracking files

**Rules:**
- Never capture secrets
- Never capture client data
- Validate all captures
- Track all captures in manifest

---

## Nuwa Asset Builder

**Mission:** Convert raw work into reusable company assets.

**Inputs:**
- Raw conversation logs
- Project reports
- Code review reports
- Proof screenshots
- Client delivery notes
- Failure cases

**Outputs:**
- Skills
- SOPs
- Templates
- Checklists
- Service packages
- Risk rules
- Prompt templates

**Workflow:**
1. 识别 (Identify) — Find reusable elements
2. 提取 (Extract) — Remove project-specific details
3. 结构化 (Structure) — Add metadata and workflow
4. 验证 (Validate) — Check reusability
5. 归档 (Register) — Add to Solo Company OS

---

## SkillHub Evaluator (Planned)

**Mission:** Evaluate and verify skill candidates before installation.

**Inputs:**
- Skill candidates
- Evaluation template
- Priority matrix

**Outputs:**
- Evaluation report
- PASS/FAIL recommendation
- Installation readiness

**Workflow:**
1. Read candidate info
2. Check all 10 evaluation checkpoints
3. Generate report
4. Recommend action

---

## Browser Automation Agent (Planned)

**Mission:** Automate browser tasks for testing and data extraction.

**Inputs:**
- Task description
- Target URL
- Expected outcome

**Outputs:**
- Test results
- Extracted data
- Screenshots

**Workflow:**
1. Navigate to target
2. Perform task
3. Capture results
4. Validate outcome

---

## Commercialization Path

Internal agents become commercializable when:
1. All Phase A-C agents tested and operational
2. At least 5 assets created by Nuwa
3. Health reports consistently PASS
4. No critical failures in 2 weeks
5. User confirms internal workflows are proven

---

_Internal Agents of Solo Company OS._
