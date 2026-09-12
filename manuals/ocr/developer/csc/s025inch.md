# S025INCH

> Source: `dev/csc/CSCPRODS_4 - CSC Development - Programs, Source, and Build Files.zip!CSCPRODS_4.DSK!S025INCH.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

EQU *
 RTS
OPCD90 EQU * BCC REL
 BITA #RC C=0
 BNE OPCE90
OPCH90 INC BRANCH BRANCH TAKEN
 LDAA YADDR CHECK PAGE
 CMPA CADDR
 BEQ OPCI90
 INC BRANCH PAGE CHANGED
OPCI90 JMP JUMP
OPCE90 RTS
OPCD91 EQU * STA INI
 BRA OPCD81
OPCD92 EQU *
 RTS
OPCD93 EQU *
12700 PRINT "Enter ACIA starting address (Was: ";
12710 PRINT MID$(LN$,13,4);") ";
12720 INPUT LINE QS$
12730 IF QS$="" THEN GOTO 10420
12740 I%=LEN(QS$)\IF I%<>4 THEN GOTO 12700
12750 IF I%<1 THEN GOTO 12830 ELSE CH$=MID$(QS$,I%,1)\I%=I%-1
12760 IF CHwill generally be in the following areas:
.nf
	-monitor, operating system, and subroutine library
	entry points,
	-I/O addresses and hardware,
	-memory-mapped video facilities,
	-miscellaneous tradeoffs made in translation.
.fi
.sp
Entry points ma
