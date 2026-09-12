# CODE68-1

> Source: `dev/forth/X-forth.zip!x4th8cor.zip!x4th8cor.dsk!CODE68-1.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

* CODE68-1
*

FCBERR  LDX    FCB+2
        LDA B  1,X
DSKERR  CLR A
        LDX    #STATUS+2
        BRA    STABX

PULABX  PUL A
        PUL B
STABX   STA A  0,X
        STA B  1,X
        BRA    NEXT

GETX    LDA A  0,X
        LDA B  1,X
PUSHBA  PSH B
        PSH A

NEXT    LDX    IP
        INX
        INX
NEXTR   STX    IP
NEXT2   LDX    0,X
NEXT3   STX    W
        LDX    0,X
        JMP    0,X

* DICTIONARY - PRE-COMPILED NUCLEUS

        FCB    $84
        FCC    'NEX'
        FCB    'T+$80
        FDB    0
VNEXT   FDB    DOCON
        FDB    NEXT

        FCB    $83
        FCC    'JS'
        FCB    'R+$80
        FDB    VNEXT-7
XJSR    FDB    *+2
        TSX
        LDX    0,X
        INS
        INS
        STX    JSRVEC+1
        LDX    XREG
        LDA A  DREG
        LDA B  DREG+1
JSRVEC  JSR    0
        STX    XREG
        STA A  DREG
        STA B  DREG+1
        CLR    CCREG
        TPA
        STA A  CCREG+1
        BRA    NEXT

        FCB    $83
        FCC    'LI'
        FCB    'T+$80
        FDB    XJSR-6
LIT     FDB    *+2
        LDX    IP
        INX
        INX
        STX    IP
        LDA A  0,X
        LDA B  1,X
        JMP    PUSHBA

        FCB    $84
        FCC    'CLI'
        FCB    'T+$80
        FDB    LIT-6
CLITER  FDB    *+2
        LDX    IP
        INX
        STX    IP
        CLR A
        LDA B  1,X
        JMP    PUSHBA

        FCB    $84
        FCC    '"LI'
        FCB    'T+$80
        FDB    CLITER-7
QLIT    FDB    *+2
* PUSH STRING ADDRESS TO STACK
        LDX    RP
        LDA A  2,X
        LDA B  3,X
        ADD B  #1
        ADC A  #0
        PSH B
        PSH A
* PUSH STRING LENGTH TO STACK
        LDX    2,X
        LDA B  0,X
        CLR A
        PSH B
        PSH A
* ADVANCE RETURN ADDRESS TO NEXT INSTRUCTION
        TSX
        ADD B  3,X
        ADC A  2,X
        LDX    RP
        STA A  2,X
        STA B  3,X
        JMP    NEXT

        FCB    $86
        FCC    'BRANC'
        FCB    'H+$80
        FDB    QLIT-7
BRAN    FDB    ZBYES     GO STEAL CODE IN ZBRANCH

        FCB    $87
        FCC    '0BRANC'
        FCB    'H+$80
        FDB    BRAN-9
ZBRAN   FDB    *+2
        PUL A
        PUL B
        ABA
        BNE    ZBNO
        BCS    ZBNO
        BRA    ZBYES

        FCB    $86
        FCC    '(LOOP'
        FCB    ')+$80
        FDB    ZBRAN-10
XLOOP   FDB    *+2
        CLR A
        LDA B  #1
        LDX    RP
XPLOF   ADD B  3,X
        ADC A  2,X
        BVS    XPLONO
        CMP A  4,X
        BGT    XPLONO
        BLT    XPLYES
        CMP B  5,X
        BHS    XPLONO
XPLYES  STA B  3,X
        STA A  2,X
ZBYES   LDX    IP
        LDA B  3,X
        LDA A  2,X
        ADD B  IP+1
        ADC A  IP
        STA B  IP+1
        STA A  IP
        JMP    NEXT
XPLONO  INX
        INX
        INX
        INX
        STX    RP
ZBNO    LDX    IP
        INX
        INX
        JMP    NEXT+2

        FCB    $87
        FCC    '(+LOOP'
        FCB    ')+$80
        FDB    XLOOP-9
XPLOOP  FDB    *+2
      LIB    FORTH2
        LIB    FORTH3
        LIB    FORTH4
        LIB    FORTH5
        LIB    FORTH6
        LIB    FORTH7

REND    EQU    *

        END    ORIG

* END OF FILE
