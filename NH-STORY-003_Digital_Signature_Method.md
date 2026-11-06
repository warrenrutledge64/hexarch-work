# Digital Signature Method — NH-STORY-003
## Minimum Viable Approach
**Date:** 2026-11-06  
**Status:** Documented for implementation

---

## Selected method

**Authenticated identity-bound confirmation**

For any authoritative sign-off (live validation, dual-control acknowledgment, gate passage, standing-ruling change):

1. Seat 0 (or the required seats) must be authenticated as their designated identity.
2. The sign-off record must include:
   - Explicit statement of the decision (e.g., “Pass”)
   - Identity of the signer (Seat 0 / Seat 1 / Seat 6)
   - Timestamp
   - A confirmation token or phrase that is unique to the authenticated session (minimum: “I confirm as [identity] on [timestamp]”)
3. The record is stored in the validation package or decision record.
4. Text-only “Pass” without the identity-bound confirmation is no longer sufficient for new records.

## Notes
- This is the minimum viable digital alternative. Full cryptographic signing or PKI can be added later.
- Existing text-only records (NH-STORY-001 and NH-STORY-002) are noted as pre-standard.
- Method is now applied to the templates below.

**Method status:** Documented and ready for template application.
