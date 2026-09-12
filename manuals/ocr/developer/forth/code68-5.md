# CODE68-5

> Source: `dev/forth/X-forth.zip!x4th8cor.zip!x4th8cor.dsk!CODE68-5.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

* CODE68-5
*
        FCB    $82
        FCB    'U
        FCB    '<+$80
        FDB    VAR-11
ULESS   FDB    *+2
        PUL A
        PUL B
        TSX
        CMP A  0,X
        BHI    LESST
        BLO    LESSF
        BRA    LESS2

        FCB    $81
        FCB    $BC
        FDB    ULESS-5
LESS    FDB    *+2
        PUL A
        PUL B
        TSX
        CMP A  0,X
        BGT    LESST
        BLT    LESSF
LESS2   CMP B  1,X
        BHI    LESST
LESSF   CLRB
        BRA    LESSX
LESST   LDA B  #1
LESSX   CLR A
        TSX
        JMP    STABX

        FCB    $85
        FCC    'DOES'
        FCB    '>+$80
        FDB    LESS-4
DOES    FDB    DOCOL,FROMR,LATEST,PFA,STORE
        FDB    PSCODE
DODOES  LDA A  IP
        LDA B  IP+1
        ADD B  #2
        ADC A  #0
        LDX    RP        MAKE ROOM ON RETURN STACK
        DEX
        DEX
        STX    RP
        STA A  2,X       PUSH RETURN ADDRESS
        STA B  3,X
        LDX    W         GET ADR OF PTR TO RUN-TIME CODE
        INX
        INX
        STX    N         STASH IT IN SCRATCH AREA
        LDX    0,X       GET NEW IP
        STX    IP
        CLR A            GET ADDRESS OF PARAMETER
        LDA B  #2
        ADD B  N+1
        ADC A  N
        PSH B            AND PUSH IT ON DATA STACK
        PSH A
        JMP    NEXT2

        FCB    $82
        FCB    'O
        FCB    'K+$80
        FDB    DOES-8
OK      FDB    *+2
        CLR    TRMEKO+1
        LDA A  TRMWID+1
        STA A  TTYWID
        JSR    RSTRIO
        TST    EKOFLG+1
        BEQ    OK2
        LDX    PPKEY
        STX    INCH
OK2     JMP    NEXT

        FCB    $85
        FCC    'PRIN'
        FCB    'T+$80
        FDB    OK-5
PRINT   FDB    *+2
        LDX    PINIT
        JSR    0,X
        LDX    POUT
        LDA A  0,X
        CMP A  #$39
        BEQ    PRINT3
        STX    OUTCH
        LDA A  PTRWID+1
        STA A  TTYWID
        CLR B
        BRA    PRINT3
PRINT2  LDA B  #29
PRINT3  JMP    DSKERR

OVRFLO  LDA B  #45
        STA B  RECORD+1
        LDX    #RECORD
        JSR    RPTERR
        JMP    WARMS

        FCB    $84
        FCC    'COL'
        FCB    'D+$80
        FDB    PRINT-8
COLD    FDB    *+2
CENT    LDA A  MEMEND
        LDA B  MEMEND+1
        SUB B  #$FF
        SBC A  #0
        STA A  FCBBUF
        STA B  FCBBUF+1
        SUB B  #64
        SBC A  #0
        STA A  FCB+2
        STA B  FCB+3
        SUB B  DIRSIZ+1
        SBC A  DIRSIZ
        BCS    OVRFLO
        STA A  LIMIT+2
        STA B  LIMIT+3
        PSH B
        LDA B  NUMBUF+1
        CMP B  #2
        BHS    CENT3
        LDA B  #2
CENT3   STA B  N
        PUL B
COLD2   SUB B  #$F4
        SBC A  #3
        BCS    OVRFLO
        DEC    N
        BNE    COLD2
        STA A  FIRST+2
        STA B  FIRST+3
        SUB B  RETSIZ+1
        SBC A  RETSIZ
        BCS    OVRFLO
        SUB B  INSIZ+1
        SBC A  INSIZ
        BCS    OVRFLO
        STA A  TIB+2
        STA B  TIB+3
        CMP A  DP+2
        BLS    OVRFLO
        LDX    TIB+2
        STX    SZERO+2
        TXS
        LDX    FIRST+2
        STX    PREV+2
        STX    USE+2
        STX    RZERO+2
        DEX
        DEX
        STX    RP
        LDX    #WENT
        STX    ESCRET
        LDX    #0
        STX    STATUS+2
        STX    OFFSET+2
        LDX    LIMIT+2
        STX    FREDIR
        STX    LSTFIL
        LDX    #ABORT
        STX    IP
        LDX    #DUMMY
        JMP    NEXT3

DUMMY   FDB    DOCOL,REMEM,MTBUF,LIT,CFCOLD
        FDB    AT,EXEC
        FDB    SEMIS

WENT    LDX    SZERO+2
        TXS
        LDX    #QUIT
        STX    IP
        LDX    CFWARM
        JMP    NEXT3

* END OF FILE
