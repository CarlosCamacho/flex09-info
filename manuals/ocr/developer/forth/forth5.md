# FORTH5

> Source: `dev/forth/X-forth.zip!x4th8cor.zip!x4th8cor.dsk!FORTH5.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

*
* FORTH5
*
        FCB    $8B
        FCC    'DEFINITION'
        FCB    'S+$80
        FDB    VOCAB-13
DEFIN   FDB    DOCOL,CONTXT,AT,CURENT,STORE
        FDB    SEMIS

        FCB    $C1
        FCB    $A8
        FDB    DEFIN-14
PAREN   FDB    DOCOL,CLITER
        FCC    ')'
        FDB    WORD
        FDB    SEMIS

        FCB    $84
        FCC    'QUI'
        FCB    'T+$80
        FDB    PAREN-4
QUIT    FDB    DOCOL,LIT,$8000,BLK,STORE
        FDB    ZERO,STATUS,STORE
        FDB    LBRAK
QUIT2   FDB    RPSTOR,CR,SPACE
        FDB    QUERY,LFEMIT,SPACE,INTERP,STATE,AT,ZEQU
        FDB    ZBRAN
        FDB    QUIT2-*
        FDB    THREE,QROOM
        FDB    PDOTQ
        FCB    3
        FCC    ' OK'
QUIT3   FDB    BRAN
        FDB    QUIT2-*
*       FDB    SEMIS     NEVER EXECUTED

        FCB    $86
        FCC    'UPDAT'
        FCB    'E+$80
        FDB    QUIT-7
UPDATE  FDB    DOCOL,PREV,AT,AT,LIT,$8000
        FDB    OR,PREV,AT,STORE
        FDB    SEMIS

        FCB    $85
        FCC    'FLUS'
        FCB    'H+$80
        FDB    UPDATE-9
FLUSH   FDB    DOCOL
        FDB    PREV,AT
FLUSH2  FDB    DUP,AT,ZLESS,ZBRAN
        FDB    FLUSH3-*
        FDB    LIT,$8000,OVER,PSTORE
        FDB    DUP,TWOP,OVER,AT,WRITE
        FDB    STATUS,AT,ZBRAN
        FDB    FLUSH3-*
        FDB    DROP,SEMIS
FLUSH3  FDB    PBUF,ZEQU,ZBRAN
        FDB    FLUSH2-*
        FDB    MTBUF
        FDB    DROP
        FDB    SEMIS

        FCB    $8D
        FCC    'EMPTY-BUFFER'
        FCB    'S+$80
        FDB    FLUSH-8
MTBUF   FDB    DOCOL,FIRST,LIMIT,OVER,SUB,ERASE
        FDB    PREV,AT
MTBUF2  FDB    LIT,$7FFF,OVER,STORE
        FDB    PBUF,ZEQU,ZBRAN
        FDB    MTBUF2-*
        FDB    DROP
        FDB    SEMIS

        FCB    $86
        FCC    'BUFFE'
        FCB    'R+$80
        FDB    MTBUF-16
BUFFER  FDB    DOCOL,USE,AT,DUP,TOR
BUFFR2  FDB    PBUF,ZBRAN
        FDB    BUFFR2-*
        FDB    USE,STORE,R,AT,ZLESS
        FDB    ZBRAN
        FDB    BUFFR3-*
        FDB    FLUSH
BUFFR3  FDB    R,STORE,R,PREV,STORE,FROMR,TWO
        FDB    PLUS
        FDB    SEMIS

        FCB    $85
        FCC    'BLOC'
        FCB    'K+$80
        FDB    BUFFER-9
BLOCK   FDB    DOCOL,OFFSET,AT,PLUS
        FDB    ZERO,STATUS,STORE
        FDB    DUP,LIT,$FFFF,EQUAL,ZBRAN
        FDB    BLOCK2-*
        FDB    ONE,SUB
BLOCK2  FDB    TOR,PREV,AT,DUP,AT
        FDB    R,SUB,DUP,PLUS,ZBRAN
        FDB    BLOCK5-*
BLOCK3  FDB    PBUF,ZEQU,ZBRAN
        FDB    BLOCK4-*
        FDB    DROP,R,BUFFER
        FDB    DUP
        FDB    R,READ,TWO
        FDB    SUB
BLOCK4  FDB    DUP,AT
        FDB    R,SUB,DUP,PLUS,ZEQU,ZBRAN
        FDB    BLOCK3-*
        FDB    DUP,PREV,STORE
BLOCK5  FDB    FROMR,DROP
        FDB    STATUS,AT,ZBRAN
        FDB    BLOCK6-*
        FDB    LIT,$7FFF,OVER,STORE
BLOCK6  FDB    TWO,PLUS
        FDB    SEMIS

        FCB    $84
        FCC    'LOA'
        FCB    'D+$80
        FDB    BLOCK-8
LOAD    FDB    DOCOL,BLK,AT,TOR,IN,AT,TOR
        FDB    ZERO,IN,STORE
        FDB    BLK,STORE
        FDB    INTERP,FROMR,IN,STORE,FROMR,BLK,STORE
        FDB    SEMIS

        FCB    $C3
        FCC    '--'
        FCB    '>+$80
        FDB    LOAD-7
ARROW   FDB    DOCOL,QLOAD,ZERO,IN,STORE
        FDB    ONE,BLK,PSTORE
        FDB    SEMIS
* END OF FILE
