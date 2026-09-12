# CODE68-4

> Source: `dev/forth/X-forth.zip!x4th8cor.zip!x4th8cor.dsk!CODE68-4.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

* CODE68-4
*
        FCB    $82
        FCB    $3B
        FCB    $D3
        FDB    XOR-6
SEMIS   FDB    *+2
        LDX    RP
        INX
        INX
        STX    RP
        LDX    0,X       GET ADDR JUST FINISHED
        JMP    NEXTR    INC RETURN ADDR AND DO NEXT

        FCB    $85
        FCC    'LEAV'
        FCB    'E+$80
        FDB    SEMIS-5
LEAVE   FDB    *+2
        LDX    RP
        LDA A  2,X
        LDA B  3,X
        STA A  4,X
        STA B  5,X
        JMP    NEXT

        FCB    $82
        FCC    '>'
        FCB    'R+$80
        FDB    LEAVE-8
TOR     FDB    *+2
        LDX    RP
        DEX
        DEX
        STX    RP
        PUL A
        PUL B
        STA A  2,X
        STA B  3,X
        JMP    NEXT

        FCB    $82
        FCC    'R'
        FCB    '>+$80
        FDB    TOR-5
FROMR   FDB    *+2
        LDX    RP
        LDA A  2,X
        LDA B  3,X
        INX
        INX
        STX    RP
        JMP    PUSHBA

        FCB    $81
        FCB    'I+$80
        FDB    FROMR-5
I       FDB    *+2
        LDX    RP
        INX
        INX
        JMP    GETX

        FCB    $81
        FCB    'J+$80
        FDB    I-4
J       FDB    *+2
        LDX    RP
        INX
        INX
        INX
        INX
        BRA    I+4

        FCB    $81
        FCB    'K+$80
        FDB     J-4
K       FDB     *+2
        LDX     RP
        INX
        INX
        INX
        INX
        BRA    J+4

        FCB    $81
        FCB    'R+$80
        FDB    K-4
R       FDB    I+2

        FCB    $82
        FCB    '0
        FCB    '=+$80
        FDB    R-4
ZEQU    FDB    *+2
        TSX
        CLR A
        CLR B
        LDX    0,X
        BNE    ZEQU2
        INC B
ZEQU2   TSX
        JMP    STABX

        FCB    $82
        FCC    '0'
        FCB    '<+$80
        FDB    ZEQU-5
ZLESS   FDB    *+2
        CLR A
        TSX
        LDA B  0,X
        AND B  #$80
        BEQ    ZLESS2
        LDA B  #1
ZLESS2  JMP    STABX

        FCB    $81
        FCB    $AB
        FDB    ZLESS-5
PLUS    FDB    *+2
        PUL A
        PUL B
PLUS2   TSX
        ADD B  1,X
        ADC A  0,X
        JMP    STABX

        FCB    $82
        FCB    'D
        FCB    $AB
        FDB    PLUS-4
DPLUS   FDB    *+2
        TSX
        CLC
        LDA B  #4
DPLUS2  LDA A  3,X
        ADC A  7,X
        STA A  7,X
        DEX
        DEC B
        BNE    DPLUS2
        INS
        INS
        INS
        INS
        JMP    NEXT

        FCB    $85
        FCC    'MINU'
        FCB    'S+$80
        FDB    DPLUS-5
MINUS   FDB    *+2
        TSX
        NEG    1,X
        BCS    MINUS2
        NEG    0,X
        BRA    MINUS3
MINUS2  COM    0,X
MINUS3  JMP    NEXT

        FCB    $86
        FCC    'DMINU'
        FCB    'S+$80
        FDB    MINUS-8
DMINUS  FDB    *+2
        TSX
        COM    0,X
        COM    1,X
        COM    2,X
        NEG    3,X
        BNE    DMINX
        INC    2,X
        BNE    DMINX
        INC    1,X
        BNE    DMINX
        INC    0,X
DMINX   JMP    NEXT

        FCB    $84
        FCC    'OVE'
        FCB    'R+$80
        FDB    DMINUS-9
OVER    FDB    *+2
        TSX
        LDA A  2,X
        LDA B  3,X
        JMP    PUSHBA

        FCB    $84
        FCC    'DRO'
        FCB    'P+$80
        FDB    OVER-7
DROP    FDB    *+2
        INS
        INS
        JMP    NEXT

        FCB    $84
        FCC    'SWA'
        FCB    'P+$80
        FDB    DROP-7
SWAP    FDB    *+2
        PUL A
        PUL B
        TSX
        LDX    0,X
        INS
        INS
        PSH B
        PSH A
        STX    N
        LDX    #N
        JMP    GETX

        FCB    $83
        FCC    'DU'
        FCB    'P+$80
        FDB    SWAP-7
DUP     FDB    *+2
        PUL A
        PUL B
        PSH B
        PSH A
        JMP    PUSHBA

        FCB    $82
        FCB    $2B
        FCB    $A1
        FDB    DUP-6
PSTORE  FDB    *+2
        TSX
        LDX    0,X
        INS
        INS
        PUL A
        PUL B
        ADD B  1,X
        ADC A  0,X
        JMP    STABX

        FCB    $83
        FCC    'SP'
        FCB    '@+$80
        FDB    PSTORE-5
SPAT    FDB    *+2
        TSX
        STX    N
        LDX    #N
        JMP    GETX

        FCB    $81
        FCB    '@+$80
        FDB    SPAT-6
AT      FDB    *+2
        TSX
        LDX    0,X
        INS
        INS
        JMP    GETX

        FCB    $82
        FCC    'C'
        FCB    '@+$80
        FDB    AT-4
CAT     FDB    *+2
        TSX
        LDX    0,X
        CLR A
        LDA B  0,X
        INS
        INS
        JMP    PUSHBA

        FCB    $81
        FCB    $A1
        FDB    CAT-5
STORE   FDB    *+2
        TSX
        LDX    0,X
        INS
        INS
        JMP    PULABX

        FCB    $82
        FCC    'C'
        FCB    $A1
        FDB    STORE-4
CSTORE  FDB    *+2
        TSX
        LDX    0,X
        INS
        INS
        INS
        PUL B
        STA B  0,X
        JMP    NEXT

        FCB    $C1
        FCB    $BA
        FDB    CSTORE-5
COLON   FDB    DOCOL,QEXEC,SCSP,CURENT,AT,CONTXT,STORE
        FDB    CREATE,RBRAK
        FDB    PSCODE

* HERE IS THE IP PUSHER FOR ALLOWING NESTED
* WORDS IN THE VIRTUAL MACHINE:

DOCOL   LDX    RP        MAKE ROOM IN THE STACK
        DEX
        DEX
        STX    RP
        LDA A  IP        STORE ADDRESS OF THE
        LDA B  IP+1      HIGH LEVEL WORD
        ADD B  #2
        ADC A  #0
        STA A  2,X       THAT WE ARE STARTING
        STA B  3,X       TO EXECUTE
        LDX    W         GET FIRST SUB-WORD OF THAT
        JMP    NEXT+2    DEFINITION AND EXECUTE IT

        FCB    $88
        FCC    'CONSTAN'
        FCB    'T+$80
        FDB    COLON-4
CON     FDB    DOCOL,CREATE,SMUDGE,COMMA,PSCODE
DOCON   LDX    W
        LDA A  2,X
        LDA B  3,X
        JMP    PUSHBA

        FCB    $88
        FCC    'VARIABL'
        FCB    'E+$80
        FDB    CON-11
VAR     FDB    DOCOL,CON,PSCODE
DOVAR   LDA A  W
        LDA B  W+1
        ADD B  #2
        ADC A  #0
        JMP    PUSHBA

* END OF FILE
