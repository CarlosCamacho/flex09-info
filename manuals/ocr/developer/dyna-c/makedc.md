# MAKEDC

> Source: `dev/dyna-c/DYNAC - Dyna-C Compiler - Programs, Source, and Build Files.zip!DYNAC.DSK!MAKEDC.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

*	JCP PROCEDURE TO MAKE 5" DYNA-C DISKS
*
*
. 51
*
*
*	Put 5" Master disk in drive #2 (two), the from disk.
*
. A
*
*
*	Put 5" disk to copy TO in drive #3 (three)
*
*	Type 'CONT' when ready or 'END' to stop.
*
*
BREAK
ONERROR GOTO 5ERRF
FORMAT,3
:Y5SS
20
:S2	
DYNA-C
1983
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
BACKUP,2,3
:Y
CHECKSUM 3
BELL
GOTO A
. 5ERR
*
*	ERROR IN BACKUP - RETRY
*
BELL
GOTO A
*	END OF PROCEDURE
