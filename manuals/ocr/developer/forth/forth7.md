# FORTH7

> Source: `dev/forth/X-forth.zip!x4th8cor.zip!x4th8cor.dsk!FORTH7.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

* FORTH7
*

        FCB    $84
        FCC    'FLE'
        FCB    'X+$80
        FDB    SPACES-9
VFLEX   FDB    DOCOL,FLUSH
        FDB    STATUS,AT,ZBRAN
        FDB    VFLEX2-*
        FDB    SEMIS
VFLEX2  FDB    PFLEX

        FCB    $85
        FCC    'VLIS'
        FCB    'T+$80
        FDB    VFLEX-7
VLIST   FDB    DOCOL,CONTXT,AT,AT
VLIST2  FDB    ONE,SWAP,CR
VLIST3  FDB    DUP,FENCE,AT,LESS,ZBRAN
        FDB    VLIST4-*
        FDB    OVER,ZBRAN
        FDB    VLIST4-*
        FDB    SWAP,DROP,ZERO,SWAP
        FDB    CR,PDOTQ
        FCB    23
        FCC    '****** PROTECTED ******'
        FDB    CR
VLIST4  FDB    DUP,CAT,CLITER
        FCB    31
        FDB    AND,THREE,PLUS,QROOM
        FDB    DUP,IDDOT,SPACE,SPACE
        FDB    PFA,LFA,AT,DDUP,ZEQU,ZBRAN
        FDB    VLIST3-*
        FDB    SEMIS

        FCB    $85
        FCC    'CLIS'
        FCB    'T+$80
        FDB    VLIST-8
CLIST   FDB    DOCOL,CURENT,AT,AT,BRAN
        FDB    VLIST2-*

        FCB    $84
        FCC    '+DO'
        FCB    'S+$80
        FDB    CLIST-8
PLDOS   FDB    DOCOL
        FDB    LIT,BSCHR,PLUS
        FDB    SEMIS

        FCB    $83
        FCC    'DO'
        FCB    'S+$80
        FDB    PLDOS-7
VDOS    FDB    DOCOL
        FDB    BL,WORD
        FDB    CLITER
        FCB    $0D
        FDB    HERE,COUNT
        FDB    PLUS,CSTORE
        FDB    HERE,ONEP
        FDB    PDOS
        FDB    SEMIS

        FCB    $86
        FCC    'GETFI'
        FCB    'L+$80
        FDB    VDOS-6
GETFIL  FDB    DOCOL
        FDB    BL,WORD
        FDB    HERE,ONEP
        FDB    GETSPC
        FDB    SEMIS

        FCB    $84
        FCC    'OPE'
        FCB    'N+$80
        FDB    GETFIL-9
OPEN    FDB    DOCOL
        FDB    FCB,CLITER
        FCB    12
        FDB    GETFIL
        FDB    QPOPEN
        FDB    POPEN
        FDB    SEMIS


REVOC   FDB    DOCOL
        FDB    DUP,FNUM,AT,LESS,ZBRAN
        FDB    REVOC0-*
        FDB    ZERO,FNUM,STORE
REVOC0  FDB    DUP,LIT,PABORT,AT,LESS,ZBRAN
        FDB    REVOC1-*
        FDB    ZERO,LIT,PABORT,STORE
REVOC1  FDB    VOCLIN,AT
REVOC2  FDB    OVER,OVER,LESS,ZBRAN
        FDB    REVOC3-*
        FDB    AT,BRAN
        FDB    REVOC2-*
REVOC3  FDB    DUP,VOCLIN,STORE
REVOC4  FDB    DUP,TOR,CFA,AT
REVOC5  FDB    OVER,OVER,GREAT,ZEQU,ZBRAN
        FDB    REVOC6-*
        FDB    PFA,LFA,AT,BRAN
        FDB    REVOC5-*
REVOC6  FDB    R,CFA,STORE
        FDB    FROMR,AT,DDUP,ZEQU,ZBRAN
        FDB    REVOC4-*
        FDB    DUP,DP,STORE
        FDB    LIT,MEM,AT,SWAP,GREAT,ZBRAN
        FDB    REVOC7-*
        FDB    REMEM
REVOC7  FDB    SEMIS

        FCB    $89
        FCC    'UNPROTEC'
        FCB    'T+$80
        FDB    OPEN-7
UNPROT  FDB    DOCOL
        FDB    CFIND,ZEQU,ZERO,QERR,DROP
        FDB    FENCE,AT,OVER,LESS,CLITER
        FCB    44
        FDB    QERR
        FDB    NFA
        FDB    BRAN
        FDB    FORGT3-*

        FCB    $88
        FCC    '(FORGET'
        FCB    ')+$80
        FDB    UNPROT-12
PFORGT  FDB    DOCOL
        FDB    BRAN
        FDB    FORGT2-*

        FCB    $86
        FCC    'FORGE'
        FCB    'T+$80
        FDB    PFORGT-11
FORGET  FDB    DOCOL
        FDB    CFIND,ZEQU,ZERO,QERR
        FDB    DROP,NFA
FORGT2  FDB    DUP,FENCE,AT,LESS,CLITER
        FCB    37
        FDB    QERR
FORGT3  FDB    DUP,CURENT,AT,LESS,CLITER
        FCB    40
        FDB    QERR
        FDB    DUP,CONTXT,AT,LESS,CLITER
        FCB    41
        FDB    QERR
        FDB    REVOC
        FDB    SEMIS

        FCB    $88
        FCC    'REMEMBE'
        FCB    'R+$80
        FDB    FORGET-9
REMEM   FDB    DOCOL
        FDB    HERE,DUP,FENCE,STORE
        FDB    LIT,MEM,STORE
        FDB    CONTXT,AT,LIT,MEM+2,STORE
        FDB    CURENT,AT,LIT,MEM+4,STORE
        FDB    VOCLIN,AT,LIT,MEM+6,STORE
        FDB    SEMIS

        FCB    $85
        FCC    'EMPT'
        FCB    'Y+$80
        FDB    REMEM-11
MTY     FDB    DOCOL
        FDB    LIT,MEM,AT
        FDB    REVOC
        FDB    LIT,MEM+2,AT,CONTXT,STORE
        FDB    LIT,MEM+4,AT,CURENT,STORE
        FDB    LIT,MEM+6,AT,VOCLIN,STORE
        FDB    SEMIS


        FCB    $C5
        FCC    'FORT'
        FCB    'H+$80
        FDB    MTY-8
FORTH   FDB    DODOES,DOVOC,$81A0,FORTH-8,0

* END OF FILE
