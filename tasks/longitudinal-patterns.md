# Longitudinal Pattern Matching

**Status:** backlog
**Blocked by:** 4+ weeks of archive data from a real user

## Problem
Weekly review detects patterns in the current week's data but doesn't use accumulated archive data to predict next week's risks or map observed behavior to the user's known failure modes.

## Design Direction
After 4+ weeks of archived weekly reviews:
- Predict risk: "3 of your last 4 post-sprint weeks had a crash on Thursday. This week was a sprint. Flag Thursday."
- Map to failure modes: "You spent 11 hours researching without shipping — this matches Research Abyss. Last time, a shipping deadline broke the pattern."
- Track formulation refinement: "Setup said primary failure mode is Research Abyss, but 4 weeks of data show guilt spiral causes more stalls."

## Dependencies
- Archive format (already exists in weekly-review Part F)
- Formulation model from setup interview (stored in .template-config.md)
- Enough data to make predictions meaningful (minimum 4 weeks)
