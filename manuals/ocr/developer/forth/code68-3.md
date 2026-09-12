# CODE68-3

> Source: `dev/forth/X-forth.zip!x4th8cor.zip!x4th8cor.dsk!CODE68-3.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

* CODE68-3
*
        FCB    $87
        FCC    'EXECUT'
        FCB    'E+$80
        FDB    VPORIG-10
EXEC    FDB    *+2
        TSX
        LDX    0,X       GET CFA
        INS              POP STACK
        INS
        JMP    NEXT3

        FCB    $84
        FCC    'EMI'
        FCB    'T+$80
        FDB    EXEC-10
EMIT    FDB    *+2
        PUL A
        PUL A
EMIT2   PSH A
        JSR    PUTCHR
        PUL A
        TST    TRMEKO+1
        BEQ    EMIT4
        INC    SWITCH
        PSH A
        JSR    PUTCHR
        PUL A
        DEC    SWITCH
        DEC    CURCOL
EMIT4   CMP A  #$20
        BLO    EMIT5
        LDX    OUT+2
        INX
        STX    OUT+2
EMIT5   JMP    NEXT

XEMIT   FDB     *+2
        PUL A
        PUL A
        TST    EKOFLG+1
        BNE    EMIT2
        TST    TRMEKO+1
        BEQ    EMIT4
        PSH A
        JSR    PUTCHR
        PUL A
        BRA    EMIT4

LFEMIT  FDB    *+2
        TST    EKOFLG+1
        BNE    EMIT5
        BRA    CR2

        FCB    $83
        FCC    'KE'
        FCB    'Y+$80
        FDB    EMIT-7
KEY     FDB    *+2
        JSR    GETCHR
        AND A  #$7F
        CLR B
        PSH A
        PSH B
        JMP    NEXT

PKEY    STX    XTEMP
        PSH B
        LDX    ACIA
PKEY2   LDA A  0,X
        ASR A
        BCC    PKEY2
        LDA A  1,X
        LDX    XTEMP
        PUL B
        RTS

        FCB    $89
        FCC    '?TERMINA'
        FCB    'L+$80
        FDB     KEY-6
QTERM   FDB     *+2
        LDX     PPTERM
        JSR     0,X
        BEQ     QTERM2
        LDA B   #1
        BRA     QTERM3
QTERM2  CLR B
QTERM3  CLR A
        JMP     PUSHBA


PQTERM  STX     XTEMP
        LDX     ACIA
        PSH A
        LDA A   0,X
        AND A   #1
        LDX     XTEMP
        TST A
        PUL A
        RTS

        FCB    $82
        FCC    'C'
        FCB    'R+$80
        FDB    QTERM-12
CR      FDB    *+2
CR2     JSR    PCRLF
        LDX    #0
        STX    OUT+2
        TST    TRMEKO+1
        BEQ    CR4
        INC    SWITCH
        JSR    PCRLF
        DEC    SWITCH
CR4     JMP    NEXT

        FCB    $85
        FCC    'CMOV'
        FCB    'E+$80
        FDB    CR-5
CMOVE   FDB    *+2
        LDX    #N
        LDA B  #6
CMOV1   PUL A
        STA A  0,X
        INX
        DEC B
        BNE    CMOV1
        BSR    MOVSUB
        JMP    NEXT

MOVSUB  LDA B  N+1
        BNE    MOVS2
        LDA B  N
        BEQ    MOVS4
        DEC    N
        CLR B
MOVS2   NOP
        SEI
        STS    STEMP
        LDX    N+4
        TXS
        LDX    N+2
MOVS3   PUL A
        STA A  0,X
        INX
        DEC B
        BNE    MOVS3
        LDA B  N
        BEQ    MOVS4
        DEC N
        CLR B
        BRA    MOVS3
MOVS4   STX    N+2
        TSX
        STX    N+4
        LDS    STEMP
        NOP
        CLI
        RTS

        FCB    $86
        FCC    '<CMOV'
        FCB    'E+$80
        FDB    CMOVE-8
LCMOVE  FDB    *+2
        LDX    #N
        LDA B  #6
LMOV1   PUL A
        STA A  0,X
        INX
        DEC B
        BNE    LMOV1
        LDA A  N
        LDA B  N+1
        ADD B  N+3
        ADC A  N+2
        STA A  N+2
        STA B  N+3
        LDA A  N
        LDA B  N+1
        ADD B  N+5
        ADC A  N+4
        STA A  N+4
        STA B  N+5
LMOV2   LDA A  N
        LDA B  N+1
        SUB B  #1
        SBC A  #0
        STA A  N
        STA B  N+1
        BCS    LMOV3
        LDX    N+4
        DEX
        LDA A  0,X
        STX    N+4
        LDX    N+2
        DEX
        STA A  0,X
        STX    N+2
        BRA    LMOV2
LMOV3   JMP    NEXT

        FCB    $84
        FCC    'FIL'
        FCB    'L+$80
        FDB    LCMOVE-9
FILL    FDB    *+2
        LDX    #N
        LDA B  #6
FILL1   PUL A
        STA A  0,X
        INX
        DEC B
        BNE    FILL1
        BSR    FILSUB
        JMP    NEXT

FILSUB  LDA A  N+1
        LDX    N+4
FILL2   LDA B  N+3
        SUB B  #1
        STA B  N+3
        LDA B  N+2
        SBC B  #0
        STA B  N+2
        BCS    FILL3
        STA A  0,X
        INX
        BRA    FILL2
FILL3   RTS

CTEMP   EQU    N
LEN     EQU    N+4
REM     EQU    N+6

        FCB    $86
        FCC    '-MATC'
        FCB    'H+$80
        FDB    FILL-7
MATCH   FDB    *+2
        TSX
        LDA A  4,X
        LDA B  5,X
        LDX    6,X
        STX    CTEMP
        STX    XTEMP
        STA A  REM
        STA B  REM+1
        BRA    ENTER

NXTSTR  LDX    REM
        DEX
        STX    REM
        LDX    CTEMP
        INX
        STX    CTEMP
        STX    XTEMP

ENTER   TSX
        LDA A  0,X
        LDA B  1,X
        LDX    2,X
        STX    STEMP
        STA A  LEN
        STA B  LEN+1
        CMP A  REM
        BHI    NOTFND
        BLO    NXTCHR
        CMP B  REM+1
        BHI    NOTFND

NXTCHR  LDX    STEMP
        LDA A  0,X
        INX
        STX    STEMP
        LDX    XTEMP
        CMP A  0,X
        BNE    NXTSTR
        INX
        STX    XTEMP
        LDX    LEN
        DEX
        STX    LEN
        BNE    NXTCHR
* FOUND
        CLR B
MATCH2  CLR A
        INS
        INS
        INS
        INS
        TSX
        STA A  0,X
        STA B  1,X
        LDA A  XTEMP
        LDA B  XTEMP+1
        STA A  2,X
        STA B  3,X
        JMP    NEXT

NOTFND  TSX
        LDA A  4,X
        LDA B  5,X
        ADD B  7,X
        ADC A  6,X
        STA A  XTEMP
        STA B  XTEMP+1
        LDA B  #1
        BRA    MATCH2

        FCB    $87
        FCC    'COMPAR'
        FCB    'E+$80
        FDB    MATCH-9
COMPAR  FDB    *+2
        TSX
        LDX    6,X
        STX    N
        TSX
        LDA B  5,X
        CMP B  1,X
        BCS    COMP2
        LDA B  1,X
COMP2   LDX    2,X
        STX    N+2
COMP3   LDX    N
        LDA A  0,X
        INX
        STX    N
        LDX    N+2
        CMP A  0,X
        BNE    COMP6
        INX
        STX    N+2
        DEC B
        BNE    COMP3
COMP4   CLR A
COMP5   INS
        INS
        TSX
        JMP    STABX
COMP6   BCC    COMP7
        LDA A  #$FF
        TAB
        BRA    COMP5
COMP7   LDA B  #1
        BRA    COMP4

        FCB    $82
        FCC    'U'
        FCB    $AA
        FDB    COMPAR-10
USTAR   FDB    *+2
        LDA A  #16
        PSH A
        CLR A
        CLR B
        TSX
USTAR2  ROR    3,X
        ROR    4,X
        DEC    0,X
        BMI    USTAR4
        BCC    USTAR3
        ADD B  2,X
        ADC A  1,X
USTAR3  ROR A
        ROR B
        BRA    USTAR2
USTAR4  INS
        TSX
        JMP    STABX

        FCB    $82
        FCC    'U'
        FCB    '/+$80
        FDB    USTAR-5
USLASH  FDB    *+2
        LDA A  #17
        PSH A
        TSX
        LDA A  3,X
        LDA B  4,X
USL1    CMP A  1,X
        BHI    USL3
        BCS    USL2
        CMP B  2,X
        BCC    USL3
USL2    CLC
        BRA    USL4
USL3    SUB B  2,X
        SBC A  1,X
        SEC
USL4    ROL    6,X
        ROL    5,X
        DEC    0,X
        BEQ    USL5
        ROL B
        ROL A
        BCC    USL1
        BRA    USL3
USL5    INS
        INS
        INS
        INS
        INS
        JMP    SWAP+4    REVERSE QUO AND REM

        FCB    $82
        FCB    '2
        FCB    '*+$80
        FDB    USLASH-5
STAR2   FDB    *+2
        TSX
        ASL    1,X
        ROL    0,X
        JMP    NEXT

        FCB    $82
        FCB    '2
        FCB    '/+$80
        FDB    STAR2-5
DIV2    FDB    *+2
        TSX
        ASR    0,X
        ROR    1,X
        JMP    NEXT

        FCB    $83
        FCC    'AN'
        FCB    'D+$80
        FDB    DIV2-5
AND     FDB    *+2
        PUL A
        PUL B
        TSX
        AND B  1,X
        AND A  0,X
        JMP    STABX

        FCB    $82
        FCC    'O'
        FCB    'R+$80
        FDB    AND-6
OR      FDB    *+2
        PUL A
        PUL B
        TSX
        ORA B  1,X
        ORA A  0,X
        JMP    STABX

        FCB    $83
        FCC    'XO'
        FCB    'R+$80
        FDB    OR-5
XOR     FDB    *+2
        PUL A
        PUL B
        TSX
        EOR B  1,X
        EOR A  0,X
        JMP    STABX

* END OF FILE
