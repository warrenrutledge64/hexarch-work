# Story Brief — NH-STORY-010
## Minimal Notification Path
**Date:** 2026-11-06  
**Status:** Ready for advancement check  
**Related:** NH-STORY-009 (closed), NH-D-7, NH-DEC-008

---

## Story

**ID:** NH-STORY-010  
**Title:** Minimal notification path  

**As** Seat 0  
**I want** an email sent when a story is waiting on me  
**So that** I do not have to check the console to know action is required.

## Acceptance criteria

- [ ] A notification is generated when a story reaches “waiting on Seat 0”  
- [ ] The notification includes the story ID and a link or summary  
- [ ] At least one channel (email) is implemented  
- [ ] Advancement gate, independent validation, live pass, and audit acknowledgment are followed  
- [ ] Status flips to ✅ only after the recorded pass  
- [ ] Warm handoff for NH-STORY-011 is written  

## Out of scope

- SMS / push  
- Real-time console updates  
- MFA  

## Definition of Done

A recorded live pass exists showing that a notification is generated for a story waiting on Seat 0, and the runbook shows the story as ✅.

---

*Brief locked for NH-STORY-010.*
