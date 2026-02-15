# Adaptive Skill Templates

**Status:** backlog
**Blocked by:** Real user onboarding (need feedback from non-ADHD archetypes)

## Problem
Skills (morning-planning, checkpoint, weekly-review, strategic-reviews) currently assume one operating style. The interview captures who the person is (archetype, support level, failure modes), but the skills run the same for everyone — only placeholder names change.

## Design Direction
Three interview outputs should propagate into skill behavior:

| Interview output | Affects |
|---|---|
| **Support level** (full EF / moderate / organizational) | Compliance depth, number of checks, scaffolding language |
| **Archetype** (threat-responsive / career-focused / experience-focused / etc.) | What the skill surfaces — Important-TO items, balance flags, obligation reminders |
| **Failure modes** (from Q5 FBA) | What the skill watches for, which intervention to suggest |

## Approach
- Start with morning-planning (daily touchpoint, highest impact)
- Design conditional sections marked by support level
- Test with real users before generalizing
- Use Step 6 profile-based adaptations as the customization mechanism (strip/modify sections during setup)

## Open Questions
- How much should skills vary vs. how much should RULES.md handle?
- Is conditional logic in skill files maintainable, or should each archetype get a separate skill variant?
- What's the minimum viable adaptation that covers 80% of the difference?
