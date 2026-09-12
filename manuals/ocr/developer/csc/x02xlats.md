# X02XLATS

> Source: `dev/csc/CSCPRODS_4 - CSC Development - Programs, Source, and Build Files.zip!CSCPRODS_4.DSK!X02XLATS.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

FF,PCR] CHECK POSITION
 CMPA #$05 CHECK FOR CURSOR RIGHT
 BNE FUNS5L
 CMPB [SLNGTH,PCR] CHECK AGAINST LENGTH
 BHS FUNS5H
 LEAX CONT25,PCR CURSOR RIGHT OUTPUT
 LDB #$FF
 LBSR PUTST1
 BRA FUNS5G
FUNS5L CMPA #$06 CHECK FOR CURSOR LEFT
 BNE FUNS5M
 TSTB CH,$04 ORG $
ADDRR FCC "PC	"
 FCB $04
REGHR FCC " A	CC X	Y	S	Time	"
 FCB $04
OPCDR FCC " Addr.	Hex	Instruction"
 FCB $04
READP FCC "Read"
 FCB $04
WRITP FCC "Write"
 FCB $04
EXECP FCC "Execute"
 FCB $04
BRKPT FCC "Breakpoint"
 FCB $04
PROMS FCC " TO TOP
11590 PRINT#0,CN$;TAB(30);"Customer Purchase History";TAB(70);TD$
11600 PRINT#0\PRINT#0,"	Customer Name";TAB(31);"Modified";
11610 PRINT#0,TAB(40);"	Date	Purchase"\PRINT#0\PL%=5
11620 RETURN
11630 REM PAGE HEADING FOR SUMMARY
11640 IF PT$="PFT$(QS$,1)
11880 IF CH$<"0" OR CH$>"9" GOTO 11830
11890 CH$=RIGHT$(QS$,1)
11900 IF CH$<"0" OR CH$>"9" GOTO 11830
11910 IF QS$<"10" OR QS$>"82" THEN GOTO 11830
11920 NL$=LEFT$(LN$,11)+QS$+MID$(LN$,14)\LN$=NL$\GOTO 10420
11930 REM MAX INPUT CHARACTER
119be copied from "." in drive  to "=" in drive .  sL#CJContinue?  
&>L#9
~0$4
s${_'w-'s.'o594@3d2zm^o[L'
%&[4Lh

m`',' Ld
L

&Bp+_
0' 2D5@m\oZl^#\%lZ xc\m^&Z&m[&9
0' l[9
