# FORTH3

> Source: `dev/forth/X-forth.zip!x4th8cor.zip!x4th8cor.dsk!FORTH3.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

*
* FORTH3
*
        FCB    $82
        FCC    'C'
        FCB    $AC
        FDB    COMMA-4
CCOMM   FDB    DOCOL,HERE,CSTORE,ONE,ALLOT
        FDB    SEMIS

        FCB    $81
        FCB    $AD
        FDB    CCOMM-5
SUB     FDB    DOCOL,MINUS,PLUS
        FDB    SEMIS

        FCB    $81
        FCB    $BD
        FDB    SUB-4
EQUAL   FDB    DOCOL,SUB,ZEQU
        FDB    SEMIS

        FCB    $81
        FCB    $BE
        FDB    EQUAL-4
GREAT   FDB    DOCOL,SWAP,LESS
        FDB    SEMIS

        FCB    $83
        FCC    'RO'
        FCB    'T+$80
        FDB    GREAT-4
ROT     FDB    DOCOL,TOR,SWAP,FROMR,SWAP
        FDB    SEMIS

        FCB    $85
        FCC    'SPAC'
        FCB    'E+$80
        FDB    ROT-6
SPACE   FDB    DOCOL,BL,EMIT
        FDB    SEMIS

        FCB    $83
        FCC    'MI'
        FCB    'N+$80
        FDB    SPACE-8
MIN     FDB    DOCOL,OVER,OVER,GREAT,ZBRAN
        FDB    MIN2-*
        FDB    SWAP
MIN2    FDB    DROP
        FDB    SEMIS

        FCB    $83
        FCC    'MA'
        FCB    'X+$80
        FDB    MIN-6
MAX     FDB    DOCOL,OVER,OVER,LESS,ZBRAN
        FDB    MAX2-*
        FDB    SWAP
MAX2    FDB    DROP
        FDB    SEMIS

        FCB    $84
        FCC    '-DU'
        FCB    'P+$80
        FDB    MAX-6
DDUP    FDB    DOCOL,DUP,ZBRAN
        FDB    DDUP2-*
        FDB    DUP
DDUP2   FDB    SEMIS

        FCB    $86
        FCC    '?ERRO'
        FCB    'R+$80
        FDB    DDUP-7
QERR    FDB    DOCOL,SWAP,ZBRAN
        FDB    QERR2-*
        FDB    ERROR,BRAN
        FDB    QERR3-*
QERR2   FDB    DROP
QERR3   FDB    SEMIS

        FCB    $85
        FCC    '?ROO'
        FCB    'M+$80
        FDB    QERR-9
QROOM   FDB    DOCOL,OUT,AT,PLUS
        FDB    LIT,TTYWID,CAT,GREAT,ZBRAN
        FDB    QROOM2-*
        FDB    CR
QROOM2  FDB    SEMIS

        FCB    $C1
        FCB    $DB
        FDB    QROOM-8
LBRAK   FDB    DOCOL,ZERO,STATE,STORE
        FDB    SEMIS

        FCB    $81
        FCB    $DD
        FDB    LBRAK-4
RBRAK   FDB    DOCOL,CLITER
        FCB   $C0
        FDB    STATE,STORE
        FDB    SEMIS

        FCB    $86
        FCC    'SMUDG'
        FCB    'E+$80
        FDB    RBRAK-4
SMUDGE  FDB    DOCOL,LATEST,CLITER
        FCB    $20
        FDB    TOGGLE
        FDB    SEMIS

        FCB    $87
        FCC    '<BUILD'
        FCB    'S+$80
        FDB    SMUDGE-9
BUILDS  FDB    DOCOL
        FDB    ZERO,CON
        FDB    SEMIS

        FCB    $87
        FCC    'DECIMA'
        FCB    'L+$80
        FDB    BUILDS-10
DEC     FDB    DOCOL
        FDB    CLITER
        FCB    10
        FDB    BASE,STORE
        FDB    SEMIS

        FCB    $85
        FCC    'COUN'
        FCB    'T+$80
        FDB    DEC-10
COUNT   FDB    DOCOL,DUP,ONEP,SWAP,CAT
        FDB    SEMIS

        FCB    $84
        FCC    'TYP'
        FCB    'E+$80
        FDB    COUNT-8
TYPE    FDB    DOCOL,DDUP,ZBRAN
        FDB    TYPE3-*
        FDB    OVER,PLUS,SWAP,XDO
TYPE2   FDB    I,CAT
        FDB    LIT,CCOUT,AT
        FDB    ZEQU,ZBRAN
        FDB    TYPE25-*
        FDB    DUP,BL,LESS
        FDB    OVER,CLITER
        FCB    $7E
        FDB    GREAT
        FDB    OR,ZBRAN
        FDB    TYPE25-*
        FDB    DROP,LIT,CCEMIT,AT
TYPE25  FDB    EMIT,XLOOP
        FDB    TYPE2-*
        FDB    BRAN
        FDB    TYPE4-*
TYPE3   FDB    DROP
TYPE4   FDB    SEMIS

        FCB    $89
        FCC    '-TRAILIN'
        FCB    'G+$80
        FDB    TYPE-7
DTRAIL  FDB    DOCOL
        FDB    DUP,ZBRAN
        FDB    DTRAL5-*
        FDB    DUP,ZERO,XDO
DTRAL2  FDB    OVER,OVER,PLUS,ONE,SUB,CAT,BL
        FDB    LIT,CCOUT,AT
        FDB    ZBRAN
        FDB    DTRL25-*
        FDB    SUB
        FDB    BRAN
        FDB    DTRL26-*
DTRL25  FDB    GREAT
DTRL26  FDB    ZBRAN
        FDB    DTRAL3-*
        FDB    LEAVE,BRAN
        FDB    DTRAL4-*
DTRAL3  FDB    ONE,SUB
DTRAL4  FDB    XLOOP
        FDB    DTRAL2-*
DTRAL5  FDB    SEMIS

* END OF FILE
