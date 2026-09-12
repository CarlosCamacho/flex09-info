# CODE68-2

> Source: `dev/forth/X-forth.zip!x4th8cor.zip!x4th8cor.dsk!CODE68-2.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

* CODE68-2
*
        FCB    $85
        FCC    'DIGI'
        FCB    'T+$80
        FDB    XCASE-9
DIGIT   FDB    *+2
        TSX
        LDA A  3,X
        SUB A  #$30
        BMI    DIGIT2
        CMP A  #$A
        BMI    DIGIT0
        CMP A  #$11
        BMI    DIGIT2
        CMP A  #$2B
        BPL    DIGIT2
        SUB A  #7
DIGIT0  CMP A  1,X
        BPL    DIGIT2
        LDA B  #1
        STA A  3,X
DIGIT1  STA B  1,X
        JMP    NEXT
DIGIT2  CLR B
        INS
        INS
        TSX
        STA B  0,X
        BRA    DIGIT1

        FCB    $86
        FCC    '(FIND'
        FCB    ')+$80
        FDB    DIGIT-8
PFIND   FDB    *+2
        TSX
        LDX    0,X
        INS
        INS
        PUL A
        PUL B
        SUB B  #1
        SBC A  #0
        STA A  N+2
        STA B  N+3
        NOP
        SEI
        STS    STEMP
PFIND1  LDS    N+2
        LDA B  0,X
        AND B  #$3F
        PUL A
        CBA
        BNE    SKIP
        LDA B  0,X
        STA B  N+4
PFIND2  INX
        LDA B  0,X
        PUL A
        BMI    PFIND3
        CBA
        BEQ    PFIND2
SKIP    INX
        LDA B  0,X
        BPL    SKIP
SKIP2   INX
        LDX    0,X
        BNE    PFIND1
* NOT FOUND
        LDS    STEMP
        NOP
        CLI
        CLR A
        CLR B
        JMP    PUSHBA
PFIND3  AND B  #$7F
        CBA
        BNE    SKIP2
FOUND   STX    XTEMP
        LDS    STEMP
        NOP
        CLI
        CLR A
        LDA B  #5
        ADD B  XTEMP+1
        ADC A  XTEMP
        PSH B
        PSH A
        LDA B  N+4
        CLR A
        PSH B
        PSH A
        LDA B  #1
        JMP    PUSHBA

        FCB    $87
        FCC    'ENCLOS'
        FCB    'E+$80
        FDB    PFIND-9
ENCLOS  FDB    *+2
        INS
        PUL B
        TSX
        LDX    0,X
        DEX
* WAIT FOR A NON-DELIMITER OR A NUL
ENCL2   INX
        LDA A  0,X
        BEQ    ENCL6
        CBA
        BEQ    ENCL2
* FOUND FIRST CHARACTER.  SAVE FC
        STX    N
* WAIT FOR A DELIMITER OR A NUL
ENCL4   INX
        LDA A  0,X
        BEQ    ENCL7
        CBA
        BNE    ENCL4
* FOUND EW.  CALCULATE OFFSETS
        STX    N+2
        LDA B  N+1
        LDA A  N
        TSX
        SUB B  1,X
        SBC A  0,X
        PSH B
        PSH A
        LDA A  N+2
        LDA B  N+3
        SUB B  1,X
        SBC A  0,X
        PSH B
        PSH A
        ADD B  #1
        ADC A  #0
        JMP    PUSHBA
* FOUND NUL BEFORE NON-DELIMITER, NO WORD
ENCL6   STX    N
        LDA B  N+1
        LDA A  N
        TSX
        SUB B  1,X
        SBC A  0,X
        PSH B
        PSH A
        ADD B  #1
        ADC A  #0
        PSH B
        PSH A
        SUB B  #1
        SBC A  #0
        JMP    PUSHBA
* FOUND NUL FOLLOWING THE WORD INSTEAD OF SPACE
ENCL7   * X-FORTH2
*
        LIB    EQU68

        LIB    ORIGIN

        LIB    CODE68-1
        LIB    CODE68-2
        LIB    FORTH1
        LIB    CODE68-3
        LIB    CODE68-4
        LIB    CODE68-5
        LIB    CODE68-6
        LIB    CODE68-7

        LIB    FORTH2
        LIB    FORTH3
        LIB    FORTH4
        LIB    FORTH5
        LIB    FORTH6
        LIB    FORTH7

REND    EQU    *

        END    ORIG

* END OF FILE
