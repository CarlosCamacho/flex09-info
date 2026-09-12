# VERIFY

_OCR transcription from: `Screenshot_20260912-071618.png`_

VERIFY

The VERIFY command is used to set the File Management System's write
verify mode. If VERIFY is on, every sector which is written to the disk
is read back from the disk for verification (to make sure there are no
errors in any sectors). With VERIFY off, no verification is performed.
## Description
The general syntax of the VERIFY command is:

VERIFY[,ON]

or

VERIFY[,OFF]
where ON or OFF sets the VERIFY mode accordingly. If VERIFY is typed
without any parameters, the current status of VERIFY will be displayed
on the terminal. Example:

+++VERIFY,ON

+++VERIFY
The first example sets the VERIFY mode to ON. The second line would
display the current status (ON or OFF) of the VERIFY mode. VERIFY
causes slower write times, but it is recommended that it be left on for
your protection.

