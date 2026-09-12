# FORTH1

> Source: `dev/forth/X-forth.zip!x4th8cor.zip!x4th8cor.dsk!FORTH1.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

* FORTH1
*

        FCB    $85
        FCC    'ABOR'
        FCB    'T+$80
        FDB    RPSTOR-6
ABORT   FDB    DOCOL,SPSTOR,DEC,QSTACK
        FDB    FORTH,DEFIN
        FDB    OK
        FDB    QUIT
*       FDB    SEMIS     NEVER EXECUTED

        FCB    $84
        FCC    '(."'
        FCB    ')+$80
        FDB    ABORT-8
PDOTQ   FDB    DOCOL
        FDB    QLIT,TYPE
        FDB    SEMIS

        FCB    $87
        FCC    'COMPIL'
        FCB    'E+$80
        FDB    PDOTQ-7
COMPIL  FDB    DOCOL,QCOMP,FROMR,DUP,AT,COMMA,TWOP,TOR
        FDB    SEMIS

        FCB    $87
        FCC    '(;CODE'
        FCB    ')+$80
        FDB    COMPIL-10
PSCODE  FDB    DOCOL,FROMR,LATEST,PFA,CFA,STORE
        FDB    SEMIS

        FCB    $85
        FCC    'FIRS'
        FCB    'T+$80
        FDB    PSCODE-10
FIRST   FDB    DOCON
        FDB    0

        FCB    $85
        FCC    'LIMI'
        FCB    'T+$80
        FDB    FIRST-8
LIMIT   FDB    DOCON
        FDB    0

        FCB    $82
        FCB    'S
        FCB    '0+$80
        FDB    LIMIT-8
SZERO   FDB    DOVAR
        FDB    0

        FCB    $82
        FCB    'R
        FCB    '0+$80
        FDB    SZERO-5
RZERO   FDB    DOVAR
        FDB    0

        FCB    $82
        FCC    'D'
        FCB    'P+$80
        FDB    RZERO-5
DP      FDB    DOVAR
        FDB    REND

        FCB    $88
        FCC    'VOC-LIN'
        FCB    'K+$80
        FDB    DP-5
VOCLIN  FDB    DOVAR
        FDB    FORTH+8

        FCB    $83
        FCC    'CS'
        FCB    'P+$80
        FDB    VOCLIN-11
CSP     FDB    DOVAR
        FDB    0

        FCB    $88
        FCC    'TRAVERS'
        FCB    'E+$80
        FDB    CSP-6
TRAV    FDB    DOCOL,SWAP
TRAV2   FDB    OVER,PLUS,CLITER
        FCB    $7F
        FDB    OVER,CAT,LESS,ZBRAN
        FDB    TRAV2-*
        FDB    SWAP,DROP
        FDB    SEMIS

        FCB    $86
        FCC    'LATES'
        FCB    'T+$80
        FDB    TRAV-11
LATEST  FDB    DOCOL,CURENT,AT,AT
        FDB    SEMIS

        FCB    $83
        FCC    'LF'
        FCB    'A+$80
        FDB    LATEST-9
LFA     FDB    DOCOL,CLITER
        FCB    4
        FDB    SUB
        FDB    SEMIS

        FCB    $83
        FCC    'CF'
        FCB    'A+$80
        FDB    LFA-6
CFA     FDB    DOCOL,TWO,SUB
        FDB    SEMIS

        FCB    $83
        FCC    'NF'
        FCB    'A+$80
        FDB    CFA-6
NFA     FDB    DOCOL,CLITER
        FCB    5
        FDB    SUB,ONE,MINUS,TRAV
        FDB    SEMIS

        FCB    $83
        FCC    'PF'
        FCB    'A+$80
        FDB    NFA-6
PFA     FDB    DOCOL,ONE,TRAV,CLITER
        FCB    5
        FDB    PLUS
        FDB    SEMIS

        FCB    $84
        FCC    '!CS'
        FCB    'P+$80
        FDB    PFA-6
SCSP    FDB    DOCOL,SPAT,CSP,STORE
        FDB    SEMIS

        FCB    $85
        FCC    '?COM'
        FCB    'P+$80
        FDB    SCSP-7
QCOMP   FDB    DOCOL
        FDB    STATE,AT,ZEQU,CLITER
        FCB    33
        FDB    QERR
        FDB    SEMIS

        FCB    $85
        FCC    '?EXE'
        FCB    'C+$80
        FDB    QCOMP-8
QEXEC   FDB    DOCOL,STATE,AT,CLITER
        FCB    34
        FDB    QERR
        FDB    SEMIS

        FCB    $84
        FCC    '?CS'
        FCB    'P+$80
        FDB    QEXEC-8
QCSP    FDB    DOCOL,SPAT,CSP,AT,SUB
        FDB    DUP,ZLESS
        FDB    CLITER
        FCB    36
        FDB    QERR
        FDB    CLITER
        FCB    48
        FDB    QERR
        FDB    SEMIS

        FCB    $88
        FCC    '?LOADIN'
        FCB    'G+$80
        FDB    QCSP-7
QLOAD   FDB    DOCOL,BLK,AT,ZLESS,CLITER
        FCB    38
        FDB    QERR
        FDB    SEMIS

        FCB    $86
        FCC    '?STAC'
        FCB    'K+$80
        FDB    QLOAD-11
QSTACK  FDB    DOCOL
        FDB    TIB,AT,TWO,SUB,SPAT,ULESS
        FDB    CLITER
        FCB    42
        FDB    QERR
        FDB    SPAT
        FDB    HERE,LIT
        FDB    272
        FDB    PLUS,ULESS
        FDB    CLITER
        FCB    43
        FDB    QERR
        FDB    SEMIS

        FCB    $88
        FCC    '(NUMBER'
        FCB     ')+$80
        FDB    QSTACK-9
PNUMB   FDB    DOCOL
PNUMB2  FDB    ONEP,DUP,TOR,CAT,BASE,AT,DIGIT,ZBRAN
        FDB    PNUMB4-*
        FDB    SWAP,BASE,AT,USTAR,DROP,ROT,BASE
        FDB    AT,USTAR,DPLUS,DPL,AT,ONEP,ZBRAN
        FDB    PNUMB3-*
        FDB    ONE,DPL,PSTORE
PNUMB3  FDB    FROMR,BRAN
        FDB    PNUMB2-*
PNUMB4  FDB    FROMR
        FDB    SEMIS

CFIND   FDB    DOCOL
        FDB    BL,WORD,HERE
        FDB    LATEST,PFIND
        FDB    SEMIS

        FCB    $86
        FCC    'CREAT'
        FCB    'E+$80
        FDB    PNUMB-11
CREATE  FDB    DOCOL
        FDB    CFIND,ZBRAN
        FDB    CREAT2-*
        FDB    CLITER
        FCB    $1F
        FDB    AND,CLITER
        FCB    11
        FDB    PLUS,QROOM
        FDB    BELL
        FDB    PDOTQ
        FCB    9
        FCC    '  REDEF: '
        FDB    NFA,IDDOT
CREAT2  FDB    HERE,DUP,CAT,WIDTH,AT,MIN
        FDB    ONEP,ALLOT,DUP,CLITER
        FCB    $A0
        FDB    TOGGLE,HERE,ONE,SUB,CLITER
        FCB    $80
        FDB    TOGGLE,LATEST,COMMA,CURENT,AT,STORE
        FDB    HERE,TWOP,COMMA
        FDB    SEMIS

        FCB    $89
        FCC    'INTERPRE'
        FCB    'T+$80
        FDB    CREATE-9
INTERP  FDB    DOCOL
INTER2  FDB    DFIND,ZBRAN
        FDB    INTER5-*
        FDB    STATE,AT,LESS
        FDB    ZBRAN
        FDB    INTER3-*
        FDB    CFA,COMMA,BRAN
        FDB    INTER4-*
INTER3  FDB    CFA,EXEC
INTER4  FDB    BRAN
        FDB    INTER7-*
INTER5  FDB    HERE,NUMB,ZEQU,ZERO,QERR,DPL,AT,ONEP,ZBRAN
        FDB    INTER6-*
        FDB    DLITER,BRAN
        FDB    INTER7-*
INTER6  FDB    DROP,LITER
INTER7  FDB    QDISK,QSTACK,BRAN
        FDB    INTER2-*
*       FDB    SEMIS     NEVER EXECUTED

        FCB    $83
        FCC    'US'
        FCB    'E+$80
        FDB    INTERP-12
USE     FDB    DOVAR
        FDB    0

        FCB    $84
        FCC    'PRE'
        FCB    'V+$80
        FDB    USE-6
PREV    FDB    DOVAR
        FDB    0

        FCB    $84
        FCC    '+BU'
        FCB    'F+$80
        FDB    PREV-7
PBUF    FDB    DOCOL,LIT
        FDB    1012
        FDB    PLUS,DUP,LIMIT,EQUAL,ZBRAN
        FDB    PBUF2-*
        FDB    DROP,FIRST
PBUF2   FDB    DUP,PREV,AT,SUB
        FDB    SEMIS

        FCB    $87
        FCC    '+SYSTE'
        FCB    'M+$80
        FDB    PBUF-7
VPORIG  FDB    DOCOL
        FDB    DUP,PLUS,LIT,PRMORG,PLUS
        FDB    LIT,PRMORG,MAX
        FDB    LIT,ORGEND,MIN
        FDB    SEMIS

* END OF FILE
