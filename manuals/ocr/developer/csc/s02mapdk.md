# S02MAPDK

> Source: `dev/csc/CSCPRODS_4 - CSC Development - Programs, Source, and Build Files.zip!CSCPRODS_4.DSK!S02MAPDK.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

,4+Q0%*2 AS X$,2 AS NP$(Q0%)\NEXT Q0%
29540 GET#4,RECORD Q2%\IF Q2%>1 THEN GOTO 29546
29542 IF DT$<="		" THEN PRINT "Bad Format File"\ON ERROR GOTO 0\STOP
29544 FR%=CVT$%(P2$)\NA%=CVT$%(P1$)\IF NA%<7 THEN NA%=7
29546 FOR Q0%=0 TO 112\N1%(Q1%)=CVT$%(NP$&]#C0
Fj
(Q]+0a
"$*.

0`
P41
4 '2'4A5h
ad
}%o
sm
f').
CLDO&$N'
&
Kf
Ik
Ki
I0
"o
D&
A
&o
)~.
f
"'
0& &Z&wg
f
~,o
o
O	~
0
<J*FY~
fA&z mW}}_=MN'}w-Se	}ll
ND33
 FDB OPCD34,OPCD35,OPCD36,OPCD37
 FDB OPCD38,OPCD39,OPCD3A,OPCD3B
 FDB OPCD3C,OPCD3D,OPCD3E,OPCD3F
 FDB OPCD40,OPCD41,OPCD42,OPCD43
 FDB OPCD44,OPCD45,OPCD46,OPCD47
 FDB OPCD48,OPCD49,OPCD4A,OPCD4B
 FDB OPCD4C,OPCD4D,OPCD4E,OPCD4F
 FDB OPCD50,OPCD5DATA R,"Promo Returned"
11990 DATA S," "
12000 DATA T," "
12010 DATA U," "
12020 DATA V," "
12030 DATA W,"Work Order"
12040 DATA X," "
12050 DATA Y," "
12060 DATA Z," "
12070 DATA END,"EASTGAT"
12080 DATA "Prev 4 Qtrs","Prev-3 Qtr","Prev-2 Qtr"
12090 DOTO 10420
12200 REM CONTXX CONTROL SEQUENCES
12210 IF MID$(LN$,5,2)<>"22" THEN GOTO 12230
12220 IF CS$="?" THEN QS$=""\GOTO 12510
12230 IF MID$(LN$,5,2)<>"00" THEN GOTO 12310
12240 PRINT
12250 PRINT "Descriptions of many control functions and"
12260 PR&
+'
'=T&d.a9

';


F


&0

!&	0Z&k\9


$



tD

%'
 
&I9   Example: COPY ADNL 0,1 .CMD AA  ALPHABETIZE FILESC  ALLOW CORRUPT FILES (DANGER)D  COPY ONLY FILES WITH NEWER DATEE  DELETE EXISTING FILE FROM DESTCON
 RTS
START5 LDU MEMEND POINT TO USER PARM
 CLR SECURE,PCR CLEAR SECURE FLAG
 LDA [ROWNBR,PCR] GET ROW
 LDB [COLNBR,PCR] GET COL
 STD CURROW,PCR SAVE ROW AND COL
 LDD -$04,U FUNCTION CODE
 CMPB #$01
 BEQ FUNS01 SET CURSOR
 CMPB #$02
 BEQ FUNS02 OUTP, Inc.
1454 Latta Lane, Conyers, GA 30207
Telephone Number 404-483-1717/4570
.sp 2
.ce
INTRODUCTION
.sp
The [14]6805, 6801, and 6502 simulators are programs which enable the user
to simulate, examine, and/or modify object [14]6805, 6801, and 6502 progrSREGST+1
 RTS
OPCD9B EQU *
 RTS
OPCD9C EQU *
 RTS
OPCD9D EQU * STA EXX
 BRA OPCD91
OPCD9E EQU *
 RTS
OPCD9F EQU *
 RTS
OPCDA0 EQU * LDY IMM
 STAB YREGST
OPCHA0 JMP OPCH88
OPCDA1 EQU * LDA IXI
 JSR GETVAL
 TSTB
 JMP OPCH01
OPCDA2 EQU * LDX IMM
 STAB XRE=LEFT$(LN$,12)+QS$+MID$(LN$,17)\LN$=NL$\GOTO 10420
12840 REM VIDEO BOARD STARTING ADDRESS
12850 PRINT "Enter video board starting address (Was: ";
12860 PRINT MID$(LN$,13,4);") ";
12870 INPUT LINE QS$
12880 IF QS$="" THEN GOTO 10420
12890 I%=LEN(QS$)\Is and values
passed to and from subroutines, monitor entry points, and
operating system routines, and may be far more complex.
The number of variations in table and control block format
and usage, control value interpretation, data structure
representa
