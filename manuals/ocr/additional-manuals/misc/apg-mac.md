# APG-MAC

> Source: `manuals/misc/TSC_MAN - FLEX Software Archive - Manual and Documentation Archive - Includes APG-MAC, APG-PREF, APG1.zip!TSC_MAN.dsk!APG-MAC.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

+ 4
STA   35,X    Put it in random index
LDA   \#17     Setup function code
STA   0,X     Store in FCB
JSR   FMS     Call FMS
BNE   ERROR   Check for errors
Character is now in acc. A
.sx
Function 18 ($12 hex) - Put Random Byte in Sector
.bx
The file  Work Buffer
.bx
These bytes are used internally by FMS as temporary storage
for a file name.  These locations are not for use by a user
program.
.sx
Bytes 47-49  Current Directory Address
.bx
If the FCB is being used to process directory information wmstart Entry Point.
.pg
.ce
EXAMPLES OF USING DOS ROUTINES
.pp
.pp
1. Setting up a file spec in the FCB
can be done in the following manner.
This example assumes the Line Buffer Pointer
is pointing to the first character of a file specification,
and the at hand while learning
the system.
It is organized to make it convenient as a quick reference
guide as well as a thorough reference manual.
The manual is not written for the novice programmer
and assumes the user to have a thorough understanding
of aED    COPY COMPLETE TO DRIVE #NO SUCH FILE  FILE EXISTS    DELETE ORIGINAL?     ARE YOU SURE? STARTUPTXTA
