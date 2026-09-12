# FORTH4

> Source: `dev/forth/X-forth.zip!x4th8cor.zip!x4th8cor.dsk!FORTH4.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

* FORTH4
*
        FCB    $86
        FCC    'EXPEC'
        FCB    'T+$80
        FDB    DTRAIL-12
EXPECT  FDB    DOCOL
        FDB    ZERO,CNT,STORE
* SET UP LOOP
        FDB    OVER,PLUS,OVER,XDO
* BODY OF LOOP
EXPEC2  FDB    KEY,DUP,LIT,DELCHR,CAT,EQUAL,ZBRAN
        FDB    EXPE25-*
* PROCESS LINE DELETE
EXPE21  FDB    DROP,FROMR,DROP,DUP,TOR
        FDB    ZERO,DUP,LEAVE,BRAN
        FDB    EXPEC5-*
* CHECK FOR BACK SPACE
EXPE25  FDB    DUP,LIT,BSCHR
        FDB    CAT
        FDB    EQUAL,ZBRAN
        FDB    EXPEC3-*
* PROCESS BACK SPACE
        FDB    OVER,I,EQUAL,ZBRAN
        FDB    EXP255-*
* AT BEGINNING OF LINE
        FDB    DROP,BELL
        FDB    LIT,EKOFLG,AT,ZEQU,ZBRAN
        FDB    EXPEC2-*
        FDB    SPACE
        FDB    BRAN
        FDB    EXPEC2-*
* NOT AT BEGINNING OF LINE
EXP255  FDB    XEMIT
        FDB    FROMR,ONE,SUB,TOR
        FDB    CNT,AT,ONE,SUB,CNT,STORE
        FDB    LIT,BSECHO,CAT
        FDB    DUP,CLITER
        FCB    8         BACKSPACE CHAR
        FDB    EQUAL,ZBRAN
        FDB    EXPE26-*
        FDB    LIT,BSCHAR,AT,EMIT
EXPE26  FDB    EMIT,BRAN
        FDB    EXPEC2-*
* CHECK FOR CARRIAGE RETURN
EXPEC3  FDB    DUP,CLITER
        FCB    $D        CARRIAGE RETURN
        FDB    EQUAL,ZBRAN
        FDB    EXPEC4-*
* PROCESS CARRIAGE RETURN
        FDB    DROP,ZERO,I,STORE,LEAVE,BRAN
        FDB    EXPEC6-*
* CHECK FOR CONTROL CHARACTER INPUT
EXPEC4  FDB    LIT,CCFLAG
        FDB    AT,ZEQU,ZBRAN
        FDB    EXPE45-*
* CTL-CHARS NOT ACCEPTED.  EMIT IT AND GET NEXT CHAR
        FDB    DUP,BL,LESS,ZBRAN
        FDB    EXPE45-*
        FDB    XEMIT,BRAN
        FDB    EXPEC2-*
* PROCESS CHARACTER
EXPE45  FDB    DUP
        FDB    ONE,CNT,PSTORE
EXPEC5  FDB    I,CSTORE,ZERO,I,ONEP,STORE
        FDB    XEMIT
EXPEC6  FDB    XLOOP
        FDB    EXPEC2-*
        FDB    DROP
        FDB    SEMIS

        FCB    $85
        FCC    'QUER'
        FCB    'Y+$80
        FDB    EXPECT-9
QUERY   FDB    DOCOL
        FDB    BL,LIT,BSCHAR,STORE
        FDB    TIB,AT,LIT,INSIZ,AT
        FDB    EXPECT,ZERO,IN,STORE
        FDB    SEMIS

        FCB    $C1
        FCB    $80
        FDB    QUERY-8
NULL    FDB    DOCOL,BLK,AT,ZLESS,ZBRAN
        FDB    NULL1-*
        FDB    FROMR,DROP,BRAN
        FDB    NULL2-*
NULL1   FDB    ONE,BLK,PSTORE
        FDB    ZERO,IN,STORE
NULL2   FDB    SEMIS

        FCB    $85
        FCC    'ERAS'
        FCB    'E+$80
        FDB    NULL-4
ERASE   FDB    DOCOL,ZERO,FILL
        FDB    SEMIS

        FCB    $86
        FCC    'BLANK'
        FCB    'S+$80
        FDB    ERASE-8
BLANKS  FDB    DOCOL,BL,FILL
        FDB    SEMIS

        FCB    $83
        FCC    'PA'
        FCB    'D+$80
        FDB    BLANKS-9
PAD     FDB    DOCOL,HERE,CLITER
        FCB    $44
        FDB    PLUS
        FDB    SEMIS

        FCB    $84
        FCC    'WOR'
        FCB    'D+$80
        FDB    PAD-6
WORD    FDB    DOCOL,BLK,AT,ZLESS,ZBRAN
        FDB    WORD2-*
        FDB    TIB,AT,BRAN
        FDB    WORD3-*
WORD2   FDB    BLK,AT,BLOCK
WORD3   FDB    IN,AT,PLUS,SWAP,ENCLOS,HERE,CLITER
        FCB    34
        FDB    BLANKS,IN,PSTORE,OVER,SUB,TOR,R,HERE
        FDB    CSTORE,PLUS,HERE,ONEP,FROMR,CMOVE
        FDB    SEMIS

        FCB    $86
        FCC    'NUMBE'
        FCB    'R+$80
        FDB    WORD-7
NUMB    FDB    DOCOL,ZERO,ZERO,ROT,DUP,ONEP,CAT,CLITER
        FCC    '-'
        FDB    EQUAL,DUP,TOR,PLUS,LIT,$FFFF
        FDB    DPL,STORE,PNUMB,DUP,CAT,BL,SUB
        FDB    ZBRAN
        FDB    NUMB2-*
        FDB    DUP,CAT,CLITER
        FCB    $2E
        FDB    EQUAL,ZBRAN
        FDB    NUMB5-*
        FDB    ZERO,DPL,STORE
        FDB    PNUMB,DUP,CAT,BL,EQUAL,ZBRAN
        FDB    NUMB5-*
        FDB    DROP
* SCALE
        FDB    FLD,AT,DUP,ZLESS,ZEQU,ZBRAN
        FDB    NUMB2-*
        FDB    DPL,AT,SUB,DUP,ZLESS,ZEQU,ZBRAN
        FDB    NUMB5-*
        FDB    DDUP,ZBRAN
        FDB    NUMB3-*
        FDB    ZERO,XDO
SCALE   FDB    DSTEN,XLOOP
        FDB    SCALE-*
        FDB    BRAN
        FDB    NUMB3-*
NUMB2   FDB    DROP
NUMB3   FDB    FROMR,ZBRAN
        FDB    NUMB4-*
        FDB    DMINUS
NUMB4   FDB    ONE
        FDB    SEMIS
* ERROR
NUMB5   FDB    DROP,DROP,DROP,FROMR,DROP,ZERO
        FDB    SEMIS

DSTEN   FDB    DOCOL
        FDB    ZERO,SWAP,CLITER
        FCB    10
        FDB    USTAR,DROP,ROT,CLITER
        FCB    10
        FDB    USTAR,DPLUS
        FDB    SEMIS

        FCB    $85
        FCC    '-FIN'
        FCB    'D+$80
        FDB    NUMB-9
DFIND   FDB    DOCOL,BL,WORD,HERE,CONTXT,AT,AT
        FDB    PFIND,DUP,ZEQU,ZBRAN
        FDB    DFIND2-*
        FDB    DROP,CURENT,AT,AT
        FDB    CONTXT,AT,AT,OVER,SUB,ZBRAN
        FDB    DFINDF-*
        FDB    HERE,SWAP
        FDB    PFIND,DUP,ZEQU,ZBRAN
        FDB    DFIND2-*
DFINDF  FDB    DROP,HERE,LIT,FORTH+6
        FDB    AT
        FDB    CURENT,AT,AT,OVER,SUB,ZBRAN
        FDB    DFINDG-*
        FDB    PFIND
        FDB    SEMIS
DFINDG  FDB    CONTXT,AT,AT,OVER,SUB,ZBRAN
        FDB    DFIND3-*
        FDB    PFIND
DFIND2  FDB    SEMIS
DFIND3  FDB    DROP,DROP,ZERO
        FDB    SEMIS

        FCB    $85
        FCC    'ERRO'
        FCB    'R+$80
        FDB    DFIND-8
ERROR   FDB    DOCOL,LIT,PABORT,AT,DDUP,ZBRAN
        FDB    ERROR2-*
        FDB    EXEC
ERROR2  FDB    OK,HERE,COUNT,TYPE
        FDB    SPACE,CLITER
        FCB    $3F
        FDB    EMIT
        FDB    BELL
        FDB    REPORT
        FDB    SPSTOR
        FDB    IN,AT,BLK,AT
        FDB    QUIT

        FCB    $84
        FCC    'BEL'
        FCB    'L+$80
        FDB    ERROR-8
BELL    FDB    DOCOL
        FDB    LIT,BELCHR,AT,EMIT
        FDB    SEMIS

        FCB    $83
        FCC    'ID'
        FCB    '.+$80
        FDB    BELL-7
IDDOT   FDB    DOCOL,PAD,CLITER
        FCB    32
        FDB    CLITER
        FCB    $5F       UNDERLINE
        FDB    FILL,DUP,PFA,LFA,OVER,SUB,DUP,TOR,PAD
        FDB    SWAP,CMOVE
        FDB    PAD,FROMR,PLUS,ONE
        FDB    SUB,DUP,CAT,CLITER
        FCB    $7F
        FDB    AND,SWAP,CSTORE
        FDB    PAD,COUNT,CLITER
        FCB    31
        FDB    AND,TYPE,SPACE
        FDB    SEMIS

        FCB    $C7
        FCC    'LITERA'
        FCB    'L+$80
        FDB    IDDOT-6
LITER   FDB    DOCOL,STATE,AT,ZBRAN
        FDB    LITER3-*
        FDB    SPAT,CAT,ZBRAN
        FDB    LITER2-*
        FDB    COMPILE,LIT,COMMA
        FDB    BRAN
        FDB    LITER3-*
LITER2  FDB    COMPILE,CLITER,CCOMM
LITER3  FDB    SEMIS

        FCB    $C8
        FCC    'DLITERA'
        FCB    'L+$80
        FDB    LITER-10
DLITER  FDB    DOCOL,STATE,AT,ZBRAN
        FDB    DLITE2-*
        FDB    SWAP,LITER,LITER
DLITE2  FDB    SEMIS

        FCB    $8A
        FCC    'VOCABULAR'
        FCB    'Y+$80
        FDB    DLITER-11
VOCAB   FDB    DOCOL,BUILDS,LIT,$81A0,COMMA
        FDB    LIT,DUMWRD,COMMA
        FDB    HERE,VOCLIN,AT,COMMA,VOCLIN,STORE,DOES
DOVOC   FDB    TWOP,CONTXT,STORE
        FDB    SEMIS

DUMWRD  FDB    $81A0,0


* END OF FILE
