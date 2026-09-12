# APG1

> Source: `manuals/misc/TSC_MAN - FLEX Software Archive - Manual and Documentation Archive - Includes APG-MAC, APG-PREF, APG1.zip!TSC_MAN.dsk!APG1.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

ction Code
STA   0,X     Store in FCB
LDA   CHAR    Get character to be written
JSR   FMS     Call FMS
BNE   ERROR   Check for errors
Character has been written
.sx
.sp 2
Function 19 ($13 hex) - Reserved for future system use
.sp 2
Function 20 ($14 hexBytes 53-63   Scratch Bytes
.bx
These are the bytes into which the user stores the new name and
extension of a file being renamed.  The new name is formatted the
same as described above under File Name and File Extension.
.sx
Byte 59    Space Compressi by DOS.
.bx
.nf
LDA   \#'A     Setup an ASCII A
JSR   PUTCHR  Call DOS out character

LDX   \#STRING Point to string
JSR   PSTRNG  Print CR & LF + string
.sx
The above simple examples are to show the basic mechanism
for calling and using DOS I/O routimory-resident command is a program, already in memory, to
which DOS will transfer when the proper command is entered from
the keyboard.
The command which invokes the program, and the entry-point of the
program, are stored in a User Command Table createroduction by any means is strictly prohibited.
Use of the FLEX Operating System and/or its documentation,
or any part thereof, for any purpose other than single end use
is strictly prohibited.
.sp 30
FLEX~ is a trademark of Technical Systems Consultant
