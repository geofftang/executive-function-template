# Heartbeat — Proactive Nudges

**Status: Phase 2.** Get the base system working first. This document describes what proactive nudges are and why they matter, so you understand the concept when you're ready to build it.

---

## The Problem

Without proactive nudges, the user has to initiate every interaction. Claude only helps when asked. This means:
- Hyperfocus goes unchecked (3 hours without a break)
- Morning planning gets skipped (no one reminded you)
- Stuck items accumulate silently (no one surfaces them)
- Calendar blocks end and you don't transition (no external signal)

For people with executive function challenges, **the external prompt is the intervention.** Without it, awareness of time, balance, and priorities fades.

---

## What Proactive Nudges Are

A background process that periodically checks your state and reaches out *only when something needs attention.* Otherwise, it stays silent.

### The Three-Tier Model

| Tier | Trigger | Action |
|------|---------|--------|
| **Calendar-aligned** | A time block ends | "Block ended. How'd it go? Take a break." |
| **Fallback** | 60 min since last break (no block ended) | "60 min without a break. Water, stretch?" |
| **Hard cap** | 90 min since last maintenance | Buzz/notification only, no conversation |

### What Gets Checked

| Check | What it detects | Example nudge |
|-------|----------------|---------------|
| Morning planning | Day started without setting intention | "Morning — want to plan the day?" |
| Calendar block end | Work block finished | "Block ended. Break time?" |
| Idle detection | User stopped working (on phone, walked away) | "Back? Here's where you left off." |
| Task mismatch | Working on something different from plan | "Plan says X. You're doing Y. Intentional?" |
| Distraction | Extended time on distraction apps | "On [app] for 15 min — break or refocus?" |
| Maintenance | Too long without water/stretch/break | "Time for water and a stretch." |

### Smart Suppression

The key design principle: **only message if something needs attention.** If everything's fine, the check completes silently. No "everything's good!" messages. No noise.

---

## What You'd Need to Build One

### Components

| Component | Purpose | Options |
|-----------|---------|---------|
| **Scheduler** | Run checks on a timer | macOS launchd, cron, system timer |
| **Check logic** | Read state, decide if nudge needed | Claude Code CLI, script, or agent |
| **Delivery** | Send the nudge to user | Push notification (ntfy, Pushover), Telegram, iMessage, SMS |
| **Conversation** | Follow up on the nudge | Same Claude session, resumed with context |

### Basic Flow

```
[Timer: every 60-90 min]
     ↓
[Read state file + calendar + activity]
     ↓
[Anything need attention?]
     ├── NO → Silent. Do nothing.
     └── YES → Send nudge via chosen channel
              ↓
         [User responds]
              ↓
         [Continue conversation with full context]
```

### Activity Sensing (Optional)

To detect what the user is actually doing (for task mismatch and distraction checks), you need an activity monitor. Options:
- **ActivityWatch** — open source, runs locally, tracks window titles
- **Screen time APIs** — macOS Screen Time (limited access)
- **Manual check-in** — just ask "what are you working on?" periodically

---

## Why Phase 2

The base system (morning planning, checkpoints, reviews) works without proactive nudges. You interact when you choose to.

Proactive nudges add value when:
- You've been using the base system for 2+ weeks
- You notice you forget to plan, forget to take breaks, or lose track of time regularly
- You want the system to reach out to you, not just wait

**Don't build this until the base system feels natural.** Adding complexity too early creates a system that's harder to maintain than the problem it solves.

---

## Further Reading

If you decide to build proactive nudges, the implementation involves:
1. A scheduler (launchd/cron) running a check script
2. A check script that reads your state and calendar
3. A delivery mechanism (push notification service)
4. Integration with your Claude sessions for conversational follow-up

This is a non-trivial engineering project. Plan it as a separate project with its own CLAUDE.md and CONTEXT.md.
