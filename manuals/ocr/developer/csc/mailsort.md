# MAILSORT

> Source: `dev/csc/CSCPRODS_4 - CSC Development - Programs, Source, and Build Files.zip!CSCPRODS_4.DSK!MAILSORT.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

rst problem usually encountered when interfacing a new serial terminal
concerns the setting of the cursor.	The program which modifies the user
function code can handle the majority of the types of terminals normally
encountered.	However, manual changORQDtX[x}XdT`cbUeeXdoNltlu`xtr!p~{kf"4?3


0|59:I!@

Q(G$%&9)M0-
$,B2V(96&-"[;>_`<GlNQHE5DUt`OL<7sPQROdR[x^ZXf)SZLZ	6(8V\Tea
416Xfjm&N9Pr`ru"%w-2<9

'
 ,{59r;J

7uo$%?L)J+!*HZnB34N
W8;[
]l>?Y)bBEfgBWE\u	restore current field to previous value.
.fi
.sp
User function code is provided for the 6809 in two forms, as follows:
.nf
	serial port (ACIA) at $E004,
	video board (Thomas 16*64) at $EC00.
.fi
A program is provided to assist the user in making si=Q0%+1\IF Q0%<=Q2% THEN QD$=MID$(A$,Q0%,1) ELSE RETURN
31996 IF QD$="" OR QD$=MID$(B$,Q0%,1) THEN GOTO 31994
31998 Q0%=0\RETURN
32000 REM DELETE RECORD
32010 ON ERROR GOTO 32500
32030 REM FIND IN NAME TABLE
32040 GOSUB 32640
32100 REM COMPLETE RECORD A0
10690 F7%=F7%+1\IF F7%>677 THEN GOTO 10780 ELSE F9%=N2%(F7%)\GOTO 10680
10700 GET#3,RECORD F9%\T9%=F9%\F9%=CVT$%(P3$)
10710 IF LEFT$(DT$,2)=CVT%$(0) THEN GOTO 10670
10720 IF DT$="DELETED" OR LEFT$(DT$,2)<"01" THEN GOTO 10670
10730 GOSUB 10850\F8%=F8%ELSE NL$=NL$+CHR$(ASC(CH$)-32)
12560 NEXT I%\NL$=NL$+","
12570 NL$=NL$+MID$(LN$,L%)\LN$=NL$
12580 J%=14\I%=0
12590 J%=J%+1\CH$=MID$(LN$,J%,1)
12600 IF CH$<=" " THEN GOTO 12630
12610 IF CH$="," THEN I%=I%+1
12620 GOTO 12590
12630 IF I%>CM% THEN CM%=I%
1, and the emulation
overhead will usually be small.
.sp 2
.ce
CONVERSION ANALYSIS
.sp 2
Most computer programs, even on microcomputers, do not run
stand-alone but run under control of an operating system
or use external I/O, math, or service subroutine
