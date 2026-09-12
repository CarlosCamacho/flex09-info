# MAILINFO

> Source: `dev/csc/CSCPRODS_4 - CSC Development - Programs, Source, and Build Files.zip!CSCPRODS_4.DSK!MAILINFO.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

780 REM PRINT SUMMARIES
10790 GOSUB 11120
10800 REM FINISH AND CLOSE FILES
10810 ON ERROR GOTO 10830
10820 CLOSE 3\GOTO 10840
10830 RESUME 10840
10840 ON ERROR GOTO 0\GOTO 10750
10850 REM PROCESS DATA
10860 FOR Q%=0 TO 6\FOR Q0%=0 TO 63\PD%(Q%,Q0%)=0\N12700 PRINT "Enter ACIA starting address (Was: ";
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
