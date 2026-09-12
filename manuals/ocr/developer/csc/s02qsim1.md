# S02QSIM1

> Source: `dev/csc/CSCPRODS_4 - CSC Development - Programs, Source, and Build Files.zip!CSCPRODS_4.DSK!S02QSIM1.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

that multiple screen formats may be defined in the same
program and used as required.	Normally, this facility is used to define
the background, or constant, portion of a screen display as a given number
and the variable portions of a display as otherR=24 THEN QD$(41)="File Full!!!"
32520 IF ERR=34 THEN RESUME 30100 ELSE RESUME 32380
32550 REM MOVE DATA TO BUFFER
32560 LSET NM$=QD$(26)\LSET A1$=QD$(27)\LSET A2$=QD$(28)
32565 LSET A3$=QD$(29)\LSET CT$=QD$(30)\LSET ST$=QD$(31)
32570 LSET ZP$=QD$(32)\F Q1%<=C2% THEN PD%(4,Q2%)=PD%(4,Q2%)+1
10970 IF Q1%=M1% THEN PD%(5,Q2%)=PD%(5,Q2%)+1\GOTO 10990
10980 IF Q1%=M2% THEN PD%(6,Q2%)=PD%(6,Q2%)+1\GOTO 10990
10990 NEXT Q%
11000 FOR Q%=0 TO 63\Q1%=PD%(0,Q%)\IF Q1%<1 THEN GOTO 11070
11010 IF Q1%>7 THEN Q1%=F I%<>4 THEN GOTO 12850
12900 IF I%<1 THEN GOTO 12980 ELSE CH$=MID$(QS$,I%,1)\I%=I%-1
12910 IF CH$<"0" THEN GOTO 12850
12920 IF CH$<="9" THEN GOTO 12900
12930 IF CH$<"A" THEN GOTO 12850
12940 IF CH$<="F" THEN GOTO 12900
12950 IF CH$<"a" THEN GOTO 12850tion, method of returning results, etc.\ is
astronomical.
.sp
The best plan of attack on these problems varies with the
nature of the effort.
In the case of a well-defined subroutine library or set
of operating system routines being referenced, it may
