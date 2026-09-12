# FORTH2

> Source: `dev/forth/X-forth.zip!x4th8cor.zip!x4th8cor.dsk!FORTH2.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

* FORTH2
*
        FCB $86
        FCC    'TOGGL'
        FCB    'E+$80
        FDB    REPORT-9
TOGGLE  FDB    DOCOL,OVER,CAT,XOR,SWAP,CSTORE
        FDB    SEMIS

        FCB    $C1
        FCB    $BB
        FDB    TOGGLE-9
SEMI    FDB    DOCOL,QCSP,COMPIL,SEMIS,SMUDGE,LBRAK
        FDB    SEMIS

        FCB    $81
        FCB    $B0
        FDB    SEMI-4
ZERO    FDB    DOCON
        FDB    0

        FCB    $81
        FCB    $B1
        FDB    ZERO-4
ONE     FDB    DOCON
        FDB    1

        FCB    $81
        FCB    $B2
        FDB    ONE-4
TWO     FDB    DOCON
        FDB    2

        FCB    $81
        FCB    $B3
        FDB    TWO-4
THREE   FDB    DOCON
        FDB    3

        FCB    $82
        FCC    'B'
        FCB    'L+$80
        FDB    THREE-4
BL      FDB    DOCON
        FDB    $20

        FCB    $85
        FCC    'B/BU'
        FCB    'F+$80
        FDB    BL-5
BBUF    FDB    DOCON
        FDB    1008

        FCB    $85
        FCC    'B/SC'
        FCB    'R+$80
        FDB    BBUF-8
BSCR    FDB    DOCON
        FDB    1

        FCB    $83
        FCC    'C/'
        FCB    'L+$80
        FDB    BSCR-8
CPERL   FDB    DOCON
        FDB    63

        FCB    $83
        FCC    'TI'
        FCB    'B+$80
        FDB    CPERL-6
TIB     FDB    DOVAR
        FDB    0

        FCB    $85
        FCC    'WIDT'
        FCB    'H+$80
        FDB    TIB-6
WIDTH   FDB    DOVAR
        FDB    31

        FCB    $85
        FCC    'FENC'
        FCB    'E+$80
        FDB    WIDTH-8
FENCE   FDB    DOVAR
        FDB    REND

        FCB    $83
        FCC    'BL'
        FCB    'K+$80
        FDB    FENCE-8
BLK     FDB    DOVAR
        FDB    $8000

        FCB    $83
        FCC    'CN'
        FCB    'T+$80
        FDB    BLK-6
CNT     FDB    DOVAR
        FDB    0

        FCB    $82
        FCC    'I'
        FCB    'N+$80
        FDB    CNT-6
IN      FDB    DOVAR
        FDB    0

        FCB    $83
        FCC    'OU'
        FCB    'T+$80
        FDB    IN-5
OUT     FDB    DOVAR
        FDB    0

        FCB    $83
        FCC    'SC'
        FCB    'R+$80
        FDB    OUT-6
SCR     FDB    DOVAR
        FDB    0

        FCB    $86
        FCC    'OFFSE'
        FCB    'T+$80
        FDB    SCR-6
OFFSET  FDB    DOVAR
        FDB    0

        FCB    $87
        FCC    'CONTEX'
        FCB    'T+$80
        FDB    OFFSET-9
CONTXT  FDB    DOVAR
        FDB    FORTH+6

        FCB    $87
        FCC    'CURREN'
        FCB    'T+$80
        FDB    CONTXT-10
CURENT  FDB    DOVAR
        FDB    FORTH+6

        FCB    $85
        FCC    'STAT'
        FCB    'E+$80
        FDB    CURENT-10
STATE   FDB    DOVAR
        FDB    0

        FCB    $84
        FCC    'BAS'
        FCB    'E+$80
        FDB    STATE-8
BASE    FDB    DOVAR
        FDB    10

        FCB    $83
        FCC    'DP'
        FCB    'L+$80
        FDB    BASE-7
DPL     FDB    DOVAR
        FDB    0

        FCB    $83
        FCC    'FL'
        FCB    'P+$80
        FDB    DPL-6
FLD     FDB    DOVAR
        FDB    -1

        FCB    $82
        FCC    'R'
        FCB    '#+$80
        FDB    FLD-6
RNUM    FDB    DOVAR
        FDB    0

        FCB    $82
        FCB    'F
        FCB    '#+$80
        FDB    RNUM-5
FNUM    FDB    DOVAR
        FDB    0

        FCB    $83
        FCC    'HL'
        FCB    'D+$80
        FDB    FNUM-5
HLD     FDB    DOVAR
        FDB    0

        FCB    $82
        FCC    '1'
        FCB    '++$80
        FDB    HLD-6
ONEP    FDB    DOCOL,ONE,PLUS
        FDB    SEMIS

        FCB    $82
        FCC    '2'
        FCB    '++$80
        FDB    ONEP-5
TWOP    FDB    DOCOL,TWO,PLUS
        FDB    SEMIS

        FCB    $84
        FCC    'HER'
        FCB    'E+$80
        FDB    TWOP-5
HERE    FDB    DOCOL,DP,AT
        FDB    SEMIS

        FCB    $85
        FCC    'ALLO'
        FCB    'T+$80
        FDB    HERE-7
ALLOT   FDB    DOCOL
        FDB    DP,PSTORE
        FDB    SEMIS

        FCB    $81
        FCB    $AC
        FDB    ALLOT-8
COMMA   FDB    DOCOL,HERE,STORE,TWO,ALLOT
        FDB    SEMIS

* END OF FILE
