# NOTE-2

> Source: `apps/screditor/SCREDIT - S-CREDITOR Editor - Program and Support Utilities.zip!SCREDIT.DSK!NOTE-2.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

TO ALL SCREDITOR II USERS -

The partial source listing in the manual contains an error
which has occurred due to program changes which have not been
caught up with yet by our documentation department.

A recent change to the SCREDITOR II to insure no page zero
contention with certain versions of some DOS's places the
beginning of the temporaries at address $0020 rather than at
$0010 as the manual listing indicates. All temporaries are in
the same order, just offset by $10 from the manual location.
This should cause no problems during operation, but we are
noting the change for completeness of documentation.
