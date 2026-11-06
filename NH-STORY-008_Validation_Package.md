# Independent Validation Package — NH-STORY-008
**Date:** 2026-11-06  
**Seat:** Seat 5 (Independent Validation & QA)  
**Story:** NH-STORY-008 — Real AWS S3 buckets and prefix-level IAM policies

---

## Validation approach
Seat 5 authors this package from the raw change and the story brief.  
The builder (Seat 3) did not author or self-certify the check.

## Live validation steps for Seat 0 (human)

1. Confirm the CloudFormation template exists and creates the three buckets.  
2. Confirm prefix-level IAM policies are defined with cross-project write denial.  
3. (When deployed) Confirm a write from one project context to another is denied.  
4. Record the result using the digital signature method.

## Expected result
- CloudFormation template present and complete  
- Isolation policies defined  
- (Post-deploy) Cross-project write denied  

## Recorded result (to be completed by Seat 0 using the digital signature method)

**Live validation result:** _______________ (Pass / Fail)  
**Signer identity:** _______________  
**Timestamp:** _______________  
**Confirmation:** I confirm as _______________ on _______________  

---

*Package ready for Seat 0 live validation (template review; full test after deploy).*
