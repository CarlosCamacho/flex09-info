# S02CONST

> Source: `dev/csc/CSCPRODS_4 - CSC Development - Programs, Source, and Build Files.zip!CSCPRODS_4.DSK!S02CONST.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

GST
OPCHA2 JMP OPCH88
OPCDA3 EQU *
 RTS
OPCDA4 EQU * LDY DIR
 JSR GETVAL
 STAB YREGST
OPCHA4 TPA
OPCJA4 JMP OPCJ01
OPCDA5 EQU * LDA DIR
 BRA OPCDA1
OPCDA6 EQU * LDX DIR
 JSR GETVAL
OPCGA6 STAB XREGST
 BRA OPCHA4
OPCDA7 EQU *
 RTS
OPCDA8 EQU * TAY
 BRA F I%<>4 THEN GOTO 12850
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
