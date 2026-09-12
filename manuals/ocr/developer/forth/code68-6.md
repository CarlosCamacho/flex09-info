# CODE68-6

> Source: `dev/forth/X-forth.zip!x4th8cor.zip!x4th8cor.dsk!CODE68-6.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

* CODE68-6
*


GETDIR  LDA A  21,X      GET FILE SIZE
        LDA B  22,X
        SUB B  23,X        ELIMINATE SECTOR MAP
        SBC A  #0
        LDX    FREDIR
        STA A  0,X       PUT FILE SIZE IN DIRECTORY
        STA B  1,X
        LDX    FCB+2
        LDA A  3,X       GET DRIVE
        LDA B  15,X      GET WRITE PROTECT STATUS
        BPL    GETDI2
        ORA A  #$80
GETDI2  LDA B  60,X      GET SECTORS/TRACK
        LDX    FREDIR
        STA B  2,X
        STA A  3,X
        LDX    FCB+2
        LDA A  47,X      GET FLEX DIRECTORY POINTERS
        LDA B  48,X
        LDX    FREDIR
        STA A  4,X
        STA B  5,X
        LDX    FCB+2
        LDA A  49,X
        LDX    FREDIR
        STA A  6,X
        CLR    7,X       CLEAR LINK TO NEXT FILE
        CLR    8,X
* CHECK IF THIS FILE HAS ALREADY BEEN OPENED.
* CHECK DONE BY COMPARING FLEX DIRECTORY POINTERS.
        LDX    LIMIT+2   START WITH FIRST FILE
        CPX    FREDIR
        BEQ    QSEC3     ARE ANY OPEN?
QSEC    STX    N         YES, SAVE POINTER
        LDX    FREDIR
        LDA A  5,X
        LDA B  6,X
        LDX    N
        CMP A  5,X
        BNE    QSEC2
        CMP B  6,X
        BNE    QSEC2
        LDX    FREDIR
        LDA A  3,X
        LDA B  4,X
        LDX    N
        CMP A  3,X
        BNE    QSEC2
        CMP B  4,X
        BEQ    QSEC4
QSEC2   LDX    7,X       POINT TO NEXT FILE
        BNE    QSEC      IS THERE ONE?
QSEC3   CLR B            NO
        RTS
QSEC4   LDA B  #2        FILE IS OPEN ERROR
        RTS


* ADD FLEX DIRECTORY INFORMATION AND
* SECTOR MAP DATA TO FORTH DIRECTORY

        FCB    $86
        FCC    '(OPEN'
        FCB    ')+$80
        FDB    COLD-7
POPEN   FDB    *+2
        LDX    FCB+2
        LDA A  #1
        STA A  0,X
        JSR    FMSCAL
        BEQ    MAP
        JMP    FCBERR
MAP     LDA A  #4
        STA A  0,X
        JSR    FMSCAL
        LDA A  3,X       SET DRIVE NUMBER
        STA A  DRIVE
        LDA A  FREDIR    CHECK DIRECTORY SPACE
        LDA B  FREDIR+1
        ADD B  #15       ENOUGH FOR ONE SEGMENT?
        ADC A  #0
        CMP A  FCB+2
        BHI    MAP3      FULL?
        BLO    MAP2
        CMP B  FCB+3
        BHI    MAP3      FULL?

MAP2    JSR    GETDIR    NO.  SET TEMP DIR POINTER
        BNE    MAP5
        LDX    FREDIR    BUMP TEMP DIRECTORY POINTER
        LDA B  #9          TO SEGMENT AREA
        JSR    ADDBX
        STX    XTEMP
* READ FIRST SECTOR
        LDX    FCB+2
        LDA A  17,X
        LDA B  18,X
        JSR    RABFCB
        BNE    MAP5
        LDX    FCB+2
        TST    23,X      RANDOM FILE?
        BNE    MAPRND
* NOT A RANDOM FILE
        JSR    KMAP      CONSTRUCT MAP
        BNE    MAP5
        BRA    MAP25

* RANDOM FILE: GET SECTOR MAP
MAPRND  BSR    GETBUF    GET SECTOR MAP DATA
        BCS    MAP5      PROBLEMS?
        PSH B            SAVE OFFSET
        LDX    FCB+2
        LDA A  30,X      GET MAP SECTOR ADDRESS
        LDA B  31,X
        LDX    XTEMP     PUT IT IN DIR
        STA A  0,X
        INX
        STA B  0,X
        INX
        PUL B            PUT OFFSET IN DIR
        STA B  0,X
        INX
        STX    XTEMP
* SUCCESSFUL OPEN
* SETUP DIRECTORY POINTERS
MAP25   LDX    FREDIR
        CPX    LIMIT+2   OTHER FILES OPENED?
        BEQ    MAP3
        LDA A  FREDIR    YES
        LDA B  FREDIR+1
        LDX    LSTFIL    GET LINK TO NEW FILE
        STA A  7,X
        STA B  8,X
        LDX    FREDIR
MAP3    STX    LSTFIL
        LDX    XTEMP     SET POINTER TO NEXT
        STX    FREDIR      (POSSIBLY) FREE BYTE IN DIR
        LDX    LSTFIL
        LDA B  1,X
        AND B  #3
        BEQ    MAP5
        LDA B  #46
        BRA    MAP5
MAP4    LDA B  #6        DIRECTORY FULL ERROR
MAP5    JMP    DSKERR
MAP6    LDA B  1,X
        BRA    MAP5

GETBUF  LDX    FCBBUF    POINT TO FCB DATA BUFFER
        LDA B  #4        SKIP SECTOR LINK BYTES
        BSR    GETSEG    GET FIRST MAP SECTOR
        BCS    GETBU4    PROBLEMS?
        BEQ    GETBU3    DONE?
        LDX    FCB+2
        LDA A  30,X      MAYBE NOT
        LDA B  31,X
        CMP A  17,X      WAS IT REALLY THE FIRST?
        BNE    GETBU2
        CMP B  18,X
        BNE    GETBU2
        LDA A  64,X      YES. READ NEXT MAP SECTOR
        LDA B  65,X
        JSR    RABFCB
        BNE    GETBU5    PROBLEMS?
        TST    68,X      IS IT EMPTY?
        BNE    GETBUF
GETBU2  CLR B            OFFSET TO END OF SECTOR
GETBU3  SUB B  #3        BACKUP TO LAST SEG
        CLC
GETBU4  RTS
GETBU5  SEC
        RTS

GETSGL  LDX    N         NO, GET NEXT MAP BYTE
GETSEG  LDA A  4,X
        BEQ    GETSG2    ALL BYTES READ?
        INX              NO
        STX    N
        LDX    XTEMP
        STA A  0,X       ADD IT DO DIR
        INX
        CPX    FCB+2
        BEQ    GETSG3
        STX    XTEMP
        INC B            BUMP OFFSET
        BNE    GETSGL    ENTIRE SECTOR READ?
        TST A            YES
GETSG2  CLC
        RTS
GETSG3  LDA B  #6        DIR FULL ERROR
        SEC
        RTS

* CONSTRUCT SECTOR MAP FOR NON-RANDOM FILE
KMAP    CLR    A
        STA A  N
        INC A
        STA A  N+1
        LDA A  30,X
        LDA B  31,X
        LDX    XTEMP
        BSR    NWSG15
KMAP2   LDX    FCB+2
        INC B
        CMP B  60,X
        BLS    KMAP3
        INC A
KMAP3   CMP A  64,X
        BNE    KMAP5
        CMP B  65,X
        BNE    KMAP5
        LDX    XTEMP
        LDA A  2,X
        CMP A  #$FF
        BEQ    KMAP4
        INC A
        STA A  2,X
        LDX    FCB+2
        LDA A  64,X
        LDA B  65,X
        BRA    KMAP55
KMAP4   LDX    FCB+2
KMAP5   LDA A  64,X
        BEQ    KMAP7
        LDA B  65,X
        BEQ    KMAP7
        BSR    NEWSEG
        BCS    KMAP8
KMAP55  PSH B
        PSH A
        INC    N+1
        BNE    KMAP56
        INC    N
KMAP56  JSR    RABFCB
        BEQ    KMAP6
        INS
        INS
        BRA    KMAP8
KMAP6   PUL A
        PUL B
        BRA    KMAP2
KMAP7   BSR    NEW3
        BCS    KMAP8
        LDA A  N
        LDA B  N+1
        LDX    FREDIR
        STA A  0,X
        STA B  1,X
        CLR B
KMAP8   RTS

NEWSEG  BSR    NEW3
        BCS    NEWSG2
NWSG15  STA A  0,X
        STA B  1,X
        PSH A
        LDA A  #1
        STA A  2,X
        PUL A
        CLC
NEWSG2  RTS


NEW3    PSH B
        PSH A
        LDA A  XTEMP
        LDA B  XTEMP+1
        ADD B  #6
        ADC A  #0
        CMP A  FCB+2
        BHI    NEW3ER
        BLO    NEW3OK
        CMP B  FCB+3
        BHI    NEW3ER
NEW3OK  LDX    XTEMP
        INX
        INX
        INX
        STX    XTEMP
        PUL A
        PUL B
        CLC
        RTS
NEW3ER  LDA B  #6
        INS
        INS
        SEC
        RTS

* END OF FILE
