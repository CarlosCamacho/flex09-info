# S02ZAPCD

> Source: `dev/csc/CSCPRODS_4 - CSC Development - Programs, Source, and Build Files.zip!CSCPRODS_4.DSK!S02ZAPCD.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

LDB [CUROFF,PCR] GET CURSOR OFFSET
 BMI FUNS5H CHECK FOR ERROR
 CMPB [SLNGTH,PCR] CHECK AGAINST LENGTH
 BHS FUNS5H CHECK FOR ERROR
 LDB CURTYP,PCR CHECK FIELD TYPE
 CMPB #$50 PROTECTED?
 BEQ FUNS5H
 CMPB #$4E NUMERIC?
 BNE FUNS5F
 CMPA #$2E .
 BEQ FUB $04
 FCC ".8 .9 .A .B .C .D .E .F "
 FCB $04
SHOTA1 FCC " 01234567"
 FCB $04
 FCC "89ABCDEF"
 FCB $04
SHOTA2 FCC "/Start/=</End/=>"
 FCC "/A=!/C=#/H=(/I=)/J=*/K=+/"
 FCC "Scrn/Quit/Prev/Next/addr/ ?"
 FCB $00
DISOM FCC " Output file name "
 FCB $04
DD$(3)=A3$
11370 QD$=CT$+" "+ST$+" "+ZP$\GOSUB 11260\ND$(4)=B$\ND$(5)=AT$
11380 Q6%=0\FOR Q%=1 TO 60 STEP 3\QD$=MID$(I1$,Q%,3)
11390 Q8%=ASC(QD$)\IF QD$="" THEN Q%=1000\GOTO 11500
11400 Q7%=ASC(MID$(QD$,2))\X$=""
11410 IF Q6%>5 THEN GOTO 11430
11420 X$=0 PRINT#2," LBSR PUTST1 OUTPUT IT"
11610 PRINT#2," BRA SETCU3"
11620 PRINT#2,"SETCU6 DEC $01,S GET COL"
11630 PRINT#2," BLE SETCU9"
11640 PRINT#2," LEAX CONT25,PCR CURSOR RIGHT"
11650 PRINT#2," LDB #$FF"
11660 PRINT#2," LBSR PUTST1 OUTPUT IT"
11670 PRI`x9&94'Lm
	'=T&"0PF
]F
&?' &1?Z&sL #m!l=)O54t3d2r1RF.l.V/Z|%0	| u/X.RoLmlm@m'm
	'=T&&
lDm@.Ro"'=T'
$&.R&2D5t.Z,X%
&p0DF~
D/Z L4.V/\.\,Z%	.V/ZO5.T+=T&&s1D.\F~
/\.T'"'=T&&V
