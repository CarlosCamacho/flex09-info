# S02DISAS

> Source: `dev/csc/CSCPRODS_4 - CSC Development - Programs, Source, and Build Files.zip!CSCPRODS_4.DSK!S02DISAS.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

f
 std ,y++
 std ,y++
 std ,y++
 std ,y
 leax askopt,pcr ask for options
 lbsr xpdat
 lbsr xcrlf crlf
 leax askabc,pcr abc
 lbsr xpdat
 lbsr xinee
 anda #$5f
 cmpa #$41 a
 blo lmacra
 cmpa #$43 c
 bls lmacrb
lmacra lda #$43 c
lmacrb leax option-space,pHI SETAT8
SETAT2 LEAY CONATT,PCR POINT TO TABLE
 LDX $02,S
 LDB #MAXATT
 STB $06,S
SETAT3 CMPA ,Y+ LOOK THRU TABLE
 BEQ SETAT5
SETAT4 LDB ,X+ POINT TO NEXT ENTRY
 CMPB #$FF
 BNE SETAT4
 DEC $06,S
 BNE SETAT3
 CMPA #$44 SECURE FLAG IS D
 BNE SETAT8
 LDAnd each output
control sequence is defined in a data file for ease of change and for
customizing in particular cases.	The screen format and placement of
fields on the screen is also defined in a data file for ease of change.
.sp
In order to reduce the*
0=d~.=d~F0&=d~Z&v.=d~F0&=d~Z&v9>q3?q+0&9=Cyq,7qk7q]=ems+?qtk?q
m!=F DGi=dS?q>q&&~F50?q/'<&q3 >&q5=dl X=d~ S=emq+=dxq[?q)F4=Q>q
0'?q
qi=dn6qk
@ =d~6qi>q)#~#.'0?q)5Z&C=d|q[=dS=d|~F+=dPQ&q]9 higher-level process which must generally be
performed manually (although possibly with the assistance
of a editing or special-purpose computer program) since it
usually involves creativity and cleverness on a level not yet
found in the most advanced &
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
