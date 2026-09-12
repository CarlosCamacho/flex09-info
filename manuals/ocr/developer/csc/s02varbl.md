# S02VARBL

> Source: `dev/csc/CSCPRODS_4 - CSC Development - Programs, Source, and Build Files.zip!CSCPRODS_4.DSK!S02VARBL.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

ikoc exit on error
outchx puls d,x,pc
**
otstrn lda ,x+ output string to disk
 beq otstrn
 cmpa #eot
 beq otstrx
 bsr otchrt
 bra otstrn
otstrx rts exit
**
inchrc pshs b,x input a char from control
 clrb
 leax fcbc,pcr point to control fcb
 bra inchrr
K FOR POSITION ONE
 BLS FUNS5H
 LEAX CONT26,PCR CURSOR LEFT OUTPUT
 LDB #$FF
 LBSR PUTST1
 DEC [CUROFF,PCR] DECR OFFSET
 LBRA FUNS5E
FUNS5M TSTB CHECK POSITION
 BMI FUNS5H
 CMPB [SLNGTH,PCR] CHECK AGAINST LENGTH
 BHS FUNS5H CHECK FOR ERROR
 LDX [SPOINT************************************************
**
* LEAD1 & LEAD2 SHOULD CONTAIN THE HEX ASCII
* VALUE OF THE LEADIN CHARACTER(S) OF MULTIPLE
* CHARACTER CONTROL SEQUENCES SUCH AS THOSE USED
* ON HEATH H-19 OR SWTPC CT-82 TERMINALS.
* IF MULTIPLE CHASHA
 CLV
 TPA
 EORA #RC FLIP CARRY
 PULB
 BRA OPCTE1
OPCSE1 LDAB AREGST NON-DECIMAL
 TPA
 EORA #RC FLIP CARRY
 TAP
 SBCB CCHAR
 TPA
 EORA #RC FLIP CARRY
OPCTE1 STAB AREGST
 ANDA #RC+RZ+RV+RN
 LDAB CREGST
 ANDB #$FF-RC-RZ-RV-RN
 ABA
 STAA CREGST
 RTS
OP IF ERR=8 THEN RESUME 13150
13150 ON ERROR GOTO 0
13160 CLOSE 1,2
13170 RETURN
13180 END
