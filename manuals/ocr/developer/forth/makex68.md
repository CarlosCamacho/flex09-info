# MAKEX68

> Source: `dev/forth/X-forth.zip!xf_ostuf.zip!xf_ostuf.dsk!MAKEX68.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

. COPY1
ONERROR GOTO ERR1
*
*
*	MAKE 5" DISK FOR X-FORTH 6800
*
*
*	Place Disk #1 in drive 2
*
*	Type 'CONT' or 'END'
*
*
BREAK
DISKNAME 2
:Y
X-FORTH68
581
COPY,1,2,XFORTH.COR,XFORTH.CMD,ERRORS.SYS,DMATH,ASMB,ALL20X80,CT82,ED64,ACTV.F,CODESHET.TXT
. COPY2
ONERROR GOTO ERR2
BELL
*
*
*	Put disk X-FORTH68 #2 in drive #2
*
*	Type 'CONT' or 'END'
*
*
BREAK
DISKNAME 2
:Y
X-FORTH68
582
COPY,1,2,LOAD16,LOAD32,SAMPLES,COMPILER,NUMOUT,MATH,EDCOMMON,TTYED,BLOCKED,REPORTER,FILER,STRINGS,TOOLKIT,FILES,ERRORS.FTH,JOURNAL,MAKECMD,HEATH19
BELL
GOTO COPY1
. ERR1
BELL
*
*
*	ERROR IN #1 DISK COPY
*
*	REPLACE DISK #1 IN DRIVE #2
*
*	Type 'CONT' or 'END'
*
*
BREAK
GOTO COPY1
. ERR2
BELL
*
*
*	ERROR IN #2 DISK COPY
*
*	REPLACE DISK #2 IN DRIVE #2
*
*	Type 'CONT' or 'END'
*
*
BREAK
GOTO COPY2
END
