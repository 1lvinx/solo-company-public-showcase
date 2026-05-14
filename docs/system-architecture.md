# System Architecture

> Public-safe architecture of Solo Company OS.

## Architecture Overview

Solo Company OS is organized into interconnected modules that work together to provide a complete operating system for one-person AI companies.

```
┌─────────────────────────────────────────────────┐
│                  COCKPIT                        │
│            Daily Operating Dashboard            │
└─────────────────┬───────────────────────────────┘
                  │
    ┌─────────────┼─────────────┐
    │             │             │
    ▼             ▼             ▼
┌─────────┐ ┌─────────┐ ┌─────────┐
│  TASK   │ │  RISK   │ │  CODE   │
│ TICKET  │ │ REVIEW  │ │ REVIEW  │
└────┬────┘ └────┬────┘ └────┬────┘
     │           │           │
     └───────────┼───────────┘
                 │
    ┌────────────┼────────────┐
    │            │            │
    ▼            ▼            ▼
┌─────────┐ ┌─────────┐ ┌─────────┐
│ COMPANY │ │BUSINESS │ │  PROOF  │
│   OS    │ │  PACK   │ │ CAPTURE │
└─────────┘ └─────────┘ └─────────┘
                 │
    ┌────────────┼────────────┐
    │            │            │
    ▼            ▼            ▼
┌─────────┐ ┌─────────┐ ┌─────────┐
│ SKILL   │ │INTERNAL │ │ DAILY   │
│  HUB    │ │ AGENTS  │ │ REPORT  │
└─────────┘ └─────────┘ └─────────┘
```

## Core Components

### Cockpit

The daily operating dashboard. Shows current focus, active tasks, risks, and proof coverage.

**Purpose:** Quick overview of company health.

### Workflows

Three enforced workflows:

| Workflow | Purpose |
|----------|---------|
| Task Ticket | Requirement → implementation → verification |
| Risk Review | Risk identification → scoring → mitigation |
| Code Review | Code change → review → approval → merge |

### Company OS

Business-level operating modules:

| Module | Purpose |
|--------|---------|
| Company Dashboard | Operating overview |
| Capability Map | What the company can do |
| Service Catalog | Sellable service packages |
| Revenue Pipeline | Income opportunities |
| Asset Library | All company assets |
| Agent Role Matrix | Defined operating roles |
| Client Delivery | End-to-end delivery process |
| Content Operation | Content creation workflow |
| Weekly Rhythm | Weekly operating cadence |

### Business Pack

Client-facing materials:

| Module | Purpose |
|--------|---------|
| Offer Ladder | 4-level pricing structure |
| Service One-Pagers | Service descriptions |
| Lead Intake Form | Client intake |
| Quote Template | Quotation format |
| Delivery Checklist | Quality checklist |
| Client Handoff | Transition process |
| Proof Materials | Proof per asset |
| Content Calendar | 30-day plan |
| First Client Plan | 7-day acquisition |

### Proof Capture Engine

Three-tool screenshot and proof capture system:

| Tool | Purpose |
|------|---------|
| Peekaboo | macOS app/window capture |
| shot-scraper | Web page capture |
| screencapture | Full screen fallback |

Plus: manifest tracking, validation log, gap tracker, redaction rules.

### SkillHub

Reusable skills and prompt library:

- 12 skill candidates (11 external + 1 internal)
- Controlled evaluation process
- Installation policy
- Nuwa Creation Skill for asset generation

### Internal Agents

Automated agents:

| Agent | Purpose |
|-------|---------|
| Project Review Agent | Daily health checks |
| Proof Capture Agent | Screenshot workflows |
| Nuwa Asset Builder | Asset creation |
| SkillHub Evaluator | Skill verification |
| Browser Automation Agent | Web tasks |

### Daily Reports

Daily activity tracking:

- Tasks completed
- Risks reviewed
- Proof captured
- Decisions made
- Tomorrow's priorities

## Data Flow

```
User input → Task Ticket → AI work → Code Review → Proof Capture → Daily Report
     ↑                                                          │
     └──────────────────────────────────────────────────────────┘
```

## Safety Model

| Level | Description | Example |
|-------|-------------|---------|
| L1 | Documentation only | Reports, definitions |
| L2 | Internal file creation | SOPs, templates |
| L3 | Tool interaction | Browser automation |
| L4 | Secrets, destructive ops | Push, deploy |

All agents default to L1-L2 unless explicitly elevated.

---

_Public-safe architecture of Solo Company OS._
