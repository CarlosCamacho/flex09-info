# FORTH6

> Source: `dev/forth/X-forth.zip!x4th8cor.zip!x4th8cor.dsk!FORTH6.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

* FORTH6
*
        FCB    $86
        FCC    '#CLOS'
        FCB    'E+$80
        FDB    ARROW-6
CLOSE   FDB    DOCOL,FLUSH
        FDB    STATUS,AT,ZBRAN
        FDB    NCLOS2-*
        FDB    DROP,SEMIS
NCLOS2  FDB    PCLOSE
        FDB    SEMIS


QPOPEN  FDB    DOCOL
        FDB    STATUS,AT,ZBRAN
        FDB    QPOPN2-*
        FDB    FROMR
QPOPN2  FDB    SEMIS

        FCB    $83
        FCC    'FC'
        FCB    'B+$80
        FDB    CLOSE-9
FCB     FDB    DOCON
        FDB    0

        FCB    $89
        FCC    '(NEWFILE'
        FCB    ')+$80
        FDB    FCB-6
NEWFIL  FDB    DOCOL
        FDB    OVER
        FDB    ZBRAN
        FDB    NEWFL2-*
        FDB    PNEW,QPOPEN
        FDB    POPEN
        FDB    SEMIS
NEWFL2  FDB    DROP,DROP
        FDB    SEMIS

        FCB    $88
        FCC    '+SECTOR'
        FCB    'S+$80
        FDB    NEWFIL-12
VMORE   FDB    DOCOL
        FDB    OVER
        FDB    ZBRAN
        FDB    NEWFL2-*
        FDB    MORE,QPOPEN
        FDB    NUMFIL
        FDB    PCLOSE,QPOPEN
        FDB    POPEN
        FDB    SEMIS

        FCB    $86
        FCC    'STATU'
        FCB    'S+$80
        FDB    VMORE-11
STATUS  FDB    DOVAR
        FDB    0

        FCB    $C1
        FCB    $A7
        FDB    STATUS-9
TICK    FDB    DOCOL,DFIND,ZEQU,ZERO,QERR,DROP,LITER
        FDB    SEMIS

        FCB    $87
        FCC    '?STATU'
        FCB    'S+$80
        FDB    TICK-4
QDISK   FDB    DOCOL,STATUS,AT,DUP
        FDB    QERR
        FDB    SEMIS

        FCB    $86
        FCC    'SPACE'
        FCB    'S+$80
        FDB    QDISK-10
SPACES  FDB    DOCOL,ZERO,MAX,DDUP,ZBRAN
        FDB    SPACE3-*
        FDB    ZERO,XDO
SPACE2  FDB    SPACE,XLOOP
        FDB    SPACE2-*
SPACE3  FDB    SEMIS

* END OF FILE
