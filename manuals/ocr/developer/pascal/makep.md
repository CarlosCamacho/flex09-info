# MAKEP

> Source: `dev/pascal/PASCAL15 - Pascal Language - Program and Support Utilities.zip!PASCAL15.DSK!MAKEP.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

*	JCP PROCEDURE TO MAKE 5" PASCAL15 DISKS
*
*
. 51
*
*
*	Put 5" Master disk in drive #3 (three), the from disk.
*
. A
*
*
*	Put 5" disk to copy TO in drive #2 (two)
*
*	Type 'CONT' when ready or 'END' to stop.
*
*
BREAK
ONERROR GOTO 5ERRF
FORMAT,2
:Y5SS
25
:S2	
PASCAL15.FHL
15
:YN
GOTO 5COPY
. 5ERRF
*
*	ERROR IN FORMAT - RETRY
*
BELL
GOTO A
. 5COPY
ONERROR GOTO 5ERR
BACKUP,3,2
:Y
CHECKSUM 2
BELL
GOTO A
. 5ERR
*
*	ERROR IN BACKUP - RETRY
*
BELL
GOTO A
*	END OF PROCEDURE
