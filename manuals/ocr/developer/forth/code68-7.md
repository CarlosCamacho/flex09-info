# CODE68-7

> Source: `dev/forth/X-forth.zip!x4th8cor.zip!x4th8cor.dsk!CODE68-7.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

* CODE68-7
*

        FCB    $86
        FCC    '#FILE'
        FCB    'S+$80
        FDB    POPEN-9
NUMFIL  FDB    *+2
        CLR B
        LDX    LIMIT+2
        CPX    FREDIR
        BEQ    NUMFI3
NUMFI2  INC B
        LDX    7,X
        BNE    NUMFI2
NUMFI3  CLR A
        JMP    PUSHBA

        FCB    $83
        FCC    'SI'
        FCB    'R+$80
        FDB    NUMFIL-9
VSIR    FDB    *+2
        PUL B
        PUL B
        LDX    FCB+2
        STA B  3,X
        CLR    30,X
        LDA B  #3
        STA B  31,X
        LDA A  #9
        STA A  0,X
        JSR    FMSCAL
        BNE    VSIR3
        LDA A  FCBBUF
        LDA B  FCBBUF+1
        ADD B  #16
        ADC A  #0
        PSH B
        PSH A
        CLR B
        JMP    DSKERR
VSIR3   JSR    RERR
        CLR A
        PSH A
        PSH A
        JMP    DSKERR

PCLOSE  FDB    *+2
        LDX    FCB+2
        CLR    31,X
        PUL B
        PUL B
        LDX    LIMIT+2
        TST B
        BNE    CLOSE4
* CLOSE ALL FILES
CLOSE0  STX    LSTFIL
CLOSE2  STX    FREDIR
        CLR B
CLOSE3  JMP    DSKERR
* FIND FILE TO CLOSE
CLOSE4  STA B  N+1
        BSR    POINT
        BCS    CLOSE3
        STX    XTEMP
        STX    YTEMP
        LDA A  7,X
        BNE    CLOSE5
* CLOSE LAST FILE
        LDA B  N+1
        DEC B
        BEQ    CLOSE0    AND ONLY
        BSR    POINT
        CLR    7,X
        CLR    8,X
        STX    LSTFIL
        LDX    XTEMP
        BRA    CLOSE2
* CLOSE ONE IN THE MIDDLE
CLOSE5  LDA B  8,X
        STA A  N+2
        STA B  N+3
        SUB B  XTEMP+1
        SBC A  XTEMP
        STA A  N+4
        STA B  N+5
CLOSE6  LDX    N+2
        CPX    FREDIR
        BEQ    CLOSE7
        LDA A  0,X
        INX
        STX    N+2
        LDX    XTEMP
        STA A  0,X
        INX
        STX    XTEMP
        BRA    CLOSE6
CLOSE7  LDX    YTEMP
CLOSE8  LDA A  7,X
        BEQ    CLOSE9
        LDA B  8,X
        SUB B  N+5
        SBC A  N+4
        STA A  7,X
        STA B  8,X
        LDX    7,X
        BRA    CLOSE8
CLOSE9  STX    LSTFIL
        LDA A  FREDIR
        LDA B  FREDIR+1
        SUB B  N+5
        SBC A  N+4
        STA A  FREDIR
        STA B  FREDIR+1
        JMP    NEXT

* ENTER: B=FILE NUMBER
* EXIT: AB=TOTAL SECTORS NOT INCLUDING THIS ONE
*        X=POINTER TO FILE ENTRY
*       IF CARRY SET, THEN B=ERROR NUMBER
POINT   STA B  N
        CLR A
        CLR B
        LDX    LIMIT+2
        CLR    STATUS+2
        CLR    STATUS+3
        TST    N
        BEQ    POINT5
        CPX    FREDIR
        BEQ    POINT4
POINT2  DEC    N
        BEQ    POINT3
        ADD B  1,X
        ADC A  0,X
        LDX    7,X
        BEQ    POINT5
        BRA    POINT2
POINT3  CLC
        RTS
POINT4  LDA B  #31
        BRA    POINT6
POINT5  LDA B  #30
POINT6  SEC
        RTS

        FCB    $85
        FCC    'DRIV'
        FCB    'E+$80
        FDB    VSIR-6
VDRIVE  FDB    *+2
        PUL B
        PUL B
        BSR    POINT
        BCS    DRIVE2
        LDA B  3,X
        CLR A
        JMP    PUSHBA
DRIVE2  CLR A
        PSH A
        PSH A
        JMP    DSKERR

        FCB    $86
        FCC    '(SIZE'
        FCB    ')+$80
        FDB    VDRIVE-8
SIZE    FDB    *+2
        PUL B
        PUL B
        BSR    POINT
        BCS    SIZE4
        PSH B
        PSH A
        LDA A  0,X
        LDA B  1,X
        JMP    PUSHBA
SIZE4   CLR A
        PSH A
        PSH A
        PSH A
        PSH A
        JMP    DSKERR

        FCB    $83
        FCC    'DI'
        FCB    'R+$80
        FDB    SIZE-9
DIR     FDB    *+2
        PUL B
        PUL B
        BSR    POINT
        BCS    DIR3
        LDA A  3,X
        STA A  DRIVE
        LDA A  6,X
        PSH A
        LDA A  4,X
        LDA B  5,X
        JSR    RABFCB
        PUL A
        BNE    DIR3
        TAB
        CLR A
        ADD B  FCBBUF+1
        ADC A  FCBBUF
        PSH B
        PSH A
        CLR B
        JMP    DSKERR
DIR3    CLR A
        PSH A
        PSH A
        JMP    DSKERR

PNEW    FDB    *+2
        LDX    FCB+2
        LDA B  23,X
        LDA A  #2
        STA A  0,X
        JSR    FMSCAL
        BNE    MERR
        STA B  23,X
RNDWRT  PUL A
        PUL B
        STA B  N+4       SAVE FILL BYTE
        PUL A
        PUL B
        STA A  N         SAVE NUMBER OF SECTORS
        STA B  N+1
        LDA A  #$FF
        STA A  59,X      BINARY FILE
RNDWR2  LDX    FCB+2
        BSR    FILFCB
        LDA B  #4
        STA B  34,X      MAKE FLEX THINK BUFFER FULL
        JSR    FMSCAL
        BNE    RNDWR3
        LDX    N         DECREMENT SECTOR COUNT
        DEX
        STX    N         DONE?
        BNE    RNDWR2
RNDWR3  LDX    FCB+2
        BSR    FILFCB
        LDA A  #4        YES, CLOSE FILE
        JMP    FLXCAL

FILFCB  LDA A  N+4
        LDA B  #252
FILFC2  STA A  68,X
        INX
        DEC B
        BNE    FILFC2
        LDX    FCB+2
        RTS

MORE    FDB    *+2
        LDX    FCB+2
        LDA A  #2
        STA A  0,X       OPEN FOR WRITE
        JSR    FMSCAL
        BNE    MOREOK
        INS
        INS
        INS
        INS
        LDA A  #4
        STA A  0,X
        JSR    FMSCAL
        LDA B  #4
        JMP    DSKERR
MOREOK  LDA A  #19
        STA A  0,X
        JSR    FMSCAL    OPEN FOR EXTEND
        BEQ    MORE2     PROBLEMS?
MERR    INS              DROP NUMBER
        INS
        INS
        INS
        JMP    FCBERR

MORE2   TST    23,X
        BEQ    MORE4
        LDX    FREDIR
        STX    XTEMP
        LDX    FCB+2
        STX    N+2
        LDA B  #6
MORE3   LDX    XTEMP
        DEX
        LDA A  0,X
        STX    XTEMP
        LDX    N+2
        STA A  58,X
        DEX
        STX    N+2
        DEC B
        BNE    MORE3
MORE4   LDX    LSTFIL
        LDA A  0,X
        LDA B  1,X
        LDX    FCB+2
        STA A  32,X
        STA B  33,X
        JMP    RNDWRT


FCBSET  LDX    FCB+2
        STA A  30,X
        STA B  31,X
        LDA B  DRIVE
        AND B  #$7F
        STA B  3,X
        RTS

RABFCB  LDX    FCB+2
        TST    1,X
        BNE    RABFC2
        CMP A  30,X
        BNE    RABFC2
        CMP B  31,X
        BNE    RABFC2
        LDA B  DRIVE
        CMP B  3,X
        BEQ    RABRTS
        LDA B  31,X
RABFC2  BSR    FCBSET
        LDA A  #9
        STA A  0,X
        JSR    FMSCAL
        BNE    RERR
RABRTS  CLR B
        RTS
RERR    LDA B  1,X
        BIT B  #$80
        BNE    WERR2
        LDA B  #9
        RTS

WABFCB  TST    DRIVE
        BMI    WERR3
        BSR    FCBSET
        LDA A  RECORD
        LDA B  RECORD+1
        STA A  66,X
        STA B  67,X
        TSX
        LDA A  3,X
        LDA B  4,X
        ADD B  #1
        ADC A  #0
        JSR    SEEK
        BCS    WABFC2
        LDX    #1
        CPX    RECORD
        BNE    WABFC3
WABFC2  CLR A
        CLR B
WABFC3  LDX    FCB+2
        STA A  64,X
        STA B  65,X
        LDA A  #10
        STA A  0,X
        JSR    FMSCAL
        BNE    WERR
        CLR B
        RTS

WERR    LDA B  1,X
        BIT B  #$40
        BNE    WERR3
        BIT B  #$80
        BNE    WERR2
* WRITE ERROR
        LDA B  #$A
        RTS
* DRIVES NOT READY
WERR2   LDA B  #$10
        RTS
* WRITE PROTECTED
WERR3   LDA B  #$B
        RTS

        FCB    $8A
        FCC    'BLOCK-REA'
        FCB    'D+$80
        FDB    DIR-6
READ    FDB    *+2
        TSX
        LDX    2,X
        STX    N+2       BUFFER = SOURCE
        LDA B  #4
        PSH B
        JSR    SETUP
READ2   JSR    SEEK
        BCS    READER
        JSR    RABFCB
        BNE    READER
* CHECK RECORD NUMBER
        LDX    66,X
        BEQ    READ25
        CPX    RECORD
        BEQ    READ25
        LDA B  #$19
        BRA    READER
READ25  LDX    FCBBUF
        INX
        INX
        INX
        INX
        STX    N+4       FCB = DESTINATION
        JSR    FCBMOV
READ3   PUL B
        DEC B
        BEQ    DONE
        PSH B
        BSR    INCREC
        BRA    READ2

READER  TST    STATUS+3
        BNE    READR2
        STA B  STATUS+3
READR2  LDX    N+2
        LDA B  #252
READR3  CLR    0,X       CLEAR BUFFER SEGMENT
        INX
        DEC B
        BNE    READR3
        STX    N+2       POINT TO NEXT SEGMENT
        BRA    READ3
DONE    INS
        INS
        INS
        INS
        JMP    NEXT

        FCB    $8B
        FCC    'BLOCK-WRIT'
        FCB    'E+$80
        FDB    READ-13
WRITE   FDB    *+2
        TSX
        LDX    2,X
        STX    N+4       BUFFER = SOURCE
        LDA B  #4
        PSH B
        BSR    SETUP
WRITE2  PSH B
        PSH A
        LDX    FCBBUF
        INX
        INX
        INX
        INX
        STX    N+2       FCB = DESTINATION
        BSR    FCBMOV
        PUL A
        PUL B
        BSR    SEEK
        BCS    WRITER
        JSR    WABFCB
        BNE    WRITER
WRITE3  PUL B
        DEC B
        BEQ    DONE
        PSH B
        BSR    INCREC
        BRA    WRITE2
WRITER  TST    STATUS+3
        BNE    WRITE3
        STA B  STATUS+3
        BRA    WRITE3


SETUP   TSX
        LDA A  3,X
        LDA B  4,X
        ASL B
        ROL A
        ASL B
        ROL A
        BRA    INREC2

INCREC  TSX
        LDA A  3,X
        LDA B  4,X
INREC2  ADD B  #1
        ADC A  #0
        STA A  3,X
        STA B  4,X
        RTS

FCBMOV  CLR N
        LDA B  #252
        STA B  N+1
        JMP    MOVSUB

SEEK    LDX    LIMIT+2
        CPX    FREDIR
        BEQ    NOFIL
        TST B
        BNE    SEEK1
        TST A
        BEQ    NOBLK
SEEK1   LDX    LIMIT+2
SEEK2   CMP A  0,X
        BLO    SEEK4
        BHI    SEEK3
        CMP B  1,X
        BLS    SEEK4
SEEK3   SUB B  1,X
        SBC A  0,X
        LDX    7,X
        BNE    SEEK2
NOBLK   LDA B  #$18
        SEC
        RTS
NOFIL   LDA B  #31
        SEC
        RTS

SEEK4   STA A  RECORD
        STA B  RECORD+1
        LDA A  2,X
        STA A  SECTRK
        CLR B
        LDA A  3,X
        STA A  DRIVE
        CLR A
        CLR B
SEEK6   ADD B  11,X
        ADC A  #0
        CMP A  RECORD
        BHI    SEEK8
        BCS    SEEK7
        CMP B  RECORD+1
        BCC    SEEK8
SEEK7   INX
        INX
        INX
        BRA    SEEK6
SEEK8   SUB B  RECORD+1
        SBC A  RECORD
        LDA A  11,X
        SBA
        DEC A
        TAB
        LDA A  9,X
        ADD B  10,X
        BCS    SEEK10
SEEK9   CMP B  SECTRK
        BLS    SEEK11
SEEK10  SUB B  SECTRK
        INC A
        BRA    SEEK9
SEEK11  CLC
        RTS

        FCB    $85
        FCC    '(DOS'
        FCB    ')+$80
        FDB    WRITE-14
PDOS    FDB    *+2
        LDX    BUFPTR
        STX    YTEMP
        TSX
        LDX    0,X
        INS
        INS
        STX    BUFPTR
        LDX    OUTCH
        STX    XTEMP
        LDX    INCH
        STX    N
        LDX    INCH2
        STX    INCH
        LDX    #WARMS
        STX    ESCRET
        JSR    DOCMND
        LDX    #WENT
        STX    ESCRET
        LDX    XTEMP
        STX    OUTCH
        LDX    N
        STX    INCH
        LDX    YTEMP
        STX    BUFPTR
        JMP    DSKERR

        FCB    $88
        FCC    '(GETFIL'
        FCB    ')+$80
        FDB    PDOS-8
GETSPC  FDB    *+2
        LDX    BUFPTR
        STX    YTEMP
        TSX
        LDX    0,X
        INS
        INS
        STX    BUFPTR
        PUL A
        PUL A
        TSX
        LDX    0,X
        INS
        INS
        PSH A
        JSR    FGEFIL
        PUL A
        BCS    GETSP1
        CLR    1,X
GETSP1  CMP A  #12
        BNE    GETSP2
        LDA B  12,X
        BNE    GETSP3
        LDA A  DFAULT
        STA A  12,X
        LDA A  DFAULT+1
        STA A  13,X
        LDA A  DFAULT+2
        STA A  14,X
        BRA    GETSP3
GETSP2  JSR    SETEXT
GETSP3  LDA B  1,X
        LDX    YTEMP
        STX    BUFPTR
        JMP    DSKERR

        FCB    $83
        FCC    'FM'
        FCB    'S+$80
        FDB    GETSPC-11
FMS     FDB    *+2
        PUL A
        PUL A
        TSX
        LDX    0,X
        INS
        INS
FLXCAL  STA A  0,X
        JSR    FMSCAL
FMSERR  LDA B  1,X
FMSER2  JMP    DSKERR

        FCB    $86
        FCC    'REPOR'
        FCB    'T+$80
        FDB    FMS-6
REPORT  FDB    *+2
        TSX
        JSR    RPTERR
        JSR    FMSCLS
        INS
        INS
        JMP    OK+2

PFLEX   FDB    *+2
        LDA A  WIDSAV
        STA A  TTYWID
        CLR    CMDFLG
        JMP    WARMS

* END OF FILE
