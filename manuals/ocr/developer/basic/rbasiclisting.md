# RBASICLISTING

> Source: `dev/basic/RBASIC - Enhanced BASIC Disk, User Manual, and Source Listing.zip!RBASICLISTING.PDF`  
> Method: PDF text extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

OPT   PAG

       * STANDARD PRE-NAMED LABEL EQUATES

C080   LINBUF   EQU   $C080
C840   SYSFCB   EQU   $C840
CC00   TTYBS    EQU   $CC00
CC01   TTYDEL   EQU   $CC01
CC04   TTYWD    EQU   $CC04
CC07   TTYBE    EQU   $CC07
CC09   PAUSFG   EQU   $CC09
CC0E   SYSMTH   EQU   $CC0E
CC0F   SYSDAY   EQU   $CC0F
CC10   SYSYR    EQU   $CC10
CC11   LSTTRM   EQU   $CC11
CC14   LINPTR   EQU   $CC14
CC16   ESCRET   EQU   $CC16
CC1B   LDROFF   EQU   $CC1B
CC20   ERRTYP   EQU   $CC20
CC28   CMDFLG   EQU   $CC28
CC2B   MEMEND   EQU   $CC2B
CCC0   PINIT    EQU   $CCC0
CCE4   POUT     EQU   $CCE4
CCFC   PSTATE   EQU   $CCFC    PRINTING Flag
CD03   WARMS    EQU   $CD03
CD0F   OUTCH    EQU   $CD0F
CD12   OUTCH2   EQU   $CD12
CD15   GETCHR   EQU   $CD15
CD18   PUTCHR   EQU   $CD18
CD24   PCRLF    EQU   $CD24
CD2A   RSTRIO   EQU   $CD2A
CD2D   GETFIL   EQU   $CD2D
CD30   LOADFL   EQU   $CD30
CD33   SETEXT   EQU   $CD33
CD3F   RPTERR   EQU   $CD3F
CD4B   DOCMND   EQU   $CD4B
CD4E   STAT     EQU   $CD4E
D3E5   INCHNE   EQU   $D3E5    Input char - no echo
D403   FMSCLS   EQU   $D403
D406   FMS      EQU   $D406
D409   BASFCB   EQU   $D409
F814   MONITR   EQU   $F814    Monitor Warm-Start

       * ASCII CODE EQUATES

0000   NUL      EQU   0
0003   BRK      EQU   3
0004   EOT      EQU   4
0007   BELL     EQU   7
0008   BS       EQU   8
000D   CR       EQU   $0D
0020   SPACE    EQU   $20
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER    PAGE   1


 0000                        ORG   $0000

 0000 20 FE          BLURB   BRA   START
 0002 03             VN      FCB   3
 0003 2E                     FCC   "."
 0004 04                     FCB   4
 0005 45 6E 68 61            FCC   "Enhanced BASIC for 6809 FLEX Systems"
 0009 6E 63 65 64
 000D 20 42 41 53
 0011 49 43 20 66
 0015 6F 72 20 36
 0019 38 30 39 20
 001D 46 4C 45 58
 0021 20 53 79 73
 0025 74 65 6D 73
 0029 20 20 43 4F            FCC   " COPYRIGHT (C) 1986 by"
 002D 50 59 52 49
 0031 47 48 54 20
 0035 28 43 29 20
 0039 31 39 38 36
 003D 20 62 79
 0040 20 52 2E 20            FCC   " R. Jones   Micronics Research Corp.,"
 0044 4A 6F 6E 65
 0048 73 20 20 20
 004C 4D 69 63 72
 0050 6F 6E 69 63
 0054 73 20 52 65
 0058 73 65 61 72
 005C 63 68 20 43
 0060 6F 72 70 2E
 0064 2C
 0065 20 33 33 33            FCC   " 33383 Lynn Avenue, Abbotsford,"
 0069 38 33 20 4C
 006D 79 6E 6E 20
 0071 41 76 65 6E
 0075 75 65 2C 20
 0079 41 62 62 6F
 007D 74 73 66 6F
 0081 72 64 2C
 0084 20 42 72 69            FCC   " British Columbia, CANADA V2S 1E2"
 0088 74 69 73 68
 008C 20 43 6F 6C
 0090 75 6D 62 69
 0094 61 2C 20 43
 0098 41 4E 41 44
 009C 41 20 56 32
 00A0 53 20 31 45
 00A4 32
 00A5 20 20 28 36            FCC   " (604) 859-7005"
 00A9 30 34 29 20
 00AD 38 35 39 2D
 00B1 37 30 30 35
 00B5 20 41 4C 4C            FCC   " ALL RIGHTS RESERVED"
RBASIC by R. Jones   31 May 1988   4-7-4 TSC ASSEMBLER   PAGE   2

 00B9 20 52 49 47
 00BD 48 54 53 20
 00C1 52 45 53 45
 00C5 52 56 45 44
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   3


 0000                         ORG   $0000

 0000 7E   0114      START    JMP   COLDST
 0003 7E   016E      WSTART   JMP   WARMST
 0006 7E   CD03      DOS      JMP   WARMS
 0009 7E   CD15      GETCH    JMP   GETCHR
 000C 7E   CD18      PUTCH    JMP   PUTCHR

 000F 8590 7005      RANDOM   FDB   $8590,$7005
 0013 0001           XTEMP1   FDB   1
 0015                MATH7    RMB   7
 001C 00             DEFFLG   FCB   0         DEFINE Flag
 001D 00             CHMVCT   FCB   0         # of chars to move
 001E 00             VARCNT   FCB   0         # of Variables in Table
 001F 0000           VARSTO   FDB   0
 0021 0000           MEMTOP   FDB   0         Top of available memory
 0023 00             HALTFG   FCB   0         0 = Program may CONT 1 = Program halted
 0024 00             IMMEDF   FCB   0         0 = Program mode 1 = Immediate mode
 0025 00             INPTWT   FCB   0         Waiting for Input from operator
 0026 00             GSUBFG   FCB   0         GOSUB Flag
 0027 00             READFG   FCB   0         READ Flag
 0028 0000           INPMSG   FDB   0         0 = No message 1 = INPUT message to be displayed
 002A 0000           AUXPTR   FDB   0         Auxiliary Pointer
 002C 0000           CMDPTR   FDB   0         Command pointer
 002E 0000           LINPOS   FDB   0         Line-Position pointer
 0030 0000           LOWLIN   FDB   0         Address of Lowest Line-Number
 0032 00             ARCFLG   FCB   0         ARC Flag
 0033 0000           FCBDAD   FDB   0         FCB Data Address
 0035 0000           LMNTAD   FDB   0         Addr of element in Virtual-Array Sector
 0037 0000           LMNTSZ   FDB   0         Size of VRA element
 0039 0000           XTEMP4   FDB   0
 003B 0000           TEMP2    FDB   0
 003D 0000           LSTBEG   FDB   0         Start of LIST
 003F 0000           LSTEND   FDB   0         End of LIST
 0041 0000           FREPTR   FDB   0         Free-Memory start address
 0043 0000           STRLEN   FDB   0         # of bytes in String
 0045 0000           INBFPT   FDB   0         Input-Buffer pointer
 0047 00             LNBRFG   FCB   0         1 = Statement needs Line-Number
 0048 00             PARCTR   FCB   0         Parentheses-Counter
 0049 00             LSTCHR   FCB   0         Last char classified
 004A 00             ALFNCD   FCB   0         Alphanumeric code. 1=Alpha 2=Numeric 0=Neither
 004B 00             TOKEN    FCB   0
 004C 0000           VARNAM   FDB   0         Variable-Name
 004E 00             CODEST   FCB   0         Code-Store
 004F 0000           XTEMP3   FDB   0
 0051 0000           LINNBR   FDB   0         Line-Number
 0053 0000           STRBEG   FDB   0         Start-of-String pointer
 0055 0000           STREND   FDB   0         End-of-String address
 0057 0000           WKBFPT   FDB   0         Work-Buffer pointer
 0059 0000           LINADR   FDB   0         Start-of-Line address
 005B 0000           NEWLIN   FDB   0         New Line address
 005D 0000           VARPTR   FDB   0         Pointer to Variable-Stack
 005F 0000           VARADR   FDB   0         Stack-addr of current Variable
RBASIC by R. Jones   31 May 1988    4-7-4 TSC ASSEMBLER   PAGE    4

 0061 0000         VAREND   FDB    0         End of Variable-stack
 0063 0000         ADDOFF   FDB    0         Address Offset
 0065 00           CHARCT   FCB    0         Character count
 0066 0000         MSTKND   FDB    0         Pointer to next free space in Math-Stack
 0068 0000         STKPTR   FDB    0
 006A 00           CMPLCD   FCB    0         Compile-Code
 006B 00           OUTSLF   FCB    0         Output Select $80=Disk
 006C              MATH6    RMB    8
              0070 DIMPTR   EQU    MATH6+4   Pointer to DIM array
 0074 00           IFNEST   FCB    0         Nested-IF counter
 0075 00           POSCTR   FCB    0         Head-Position Counter
 0076 0000         INPLPT   FDB    0         INPUT-LINE Buffer-pointer
 0078 00           MODEFG   FCB    0         Mode Flag. 0=Numeric 1=String
 0079 0000         TEMP3    FDB    0
 007B 0000         CURLIN   FDB    0         Current-Line pointer
 007D 0000         INPBST   FDB    0         Start of Input-Buffer
 007F 0000         BLKPTR   FDB    0         Address of Block to be de-allocated
 0081 0000         NXLNAD   FDB    0         Next-Line address
 0083 0000         CLINAD   FDB    0         Current-Line address
 0085 0000         MSTKPT   FDB    0         Pointer to Math-Stack vectors
 0087 00           TRCFLG   FCB    0         TRACE Flag. 1=TRACE on
 0088              MATH5    RMB    9
 0091              MATH0    RMB    9         Main Math Register
 009A              MATH4    RMB    8
 00A2              MATH1    RMB    8
 00AA              MATH2    RMB    8
 00B2              MATH3    RMB    8
 00BA 0000         TRIGFG   FDB    0         Trig Flag
 00BC 00           OVFLOW   FCB    0         Amount of Over/Underflow in FP ops
 00BD 00           SCIFLG   FCB    0         Indicates Sci-Notation needed
 00BE 00           BINEXP   FCB    0         FP Binary Exponent
 00BF 00           DECEXP   FCB    0         FP Decimal Exponent
 00C0 00           M0SGN    FCB    0         Sign of MATH0 contents
 00C1 00           M4SGN    FCB    0         Sign of MATH4 contents
 00C2 00           NBRSGN   FCB    0         Sign of Number
 00C3 00           TEMP5    FCB    0
 00C4              MATH8    RMB    5
 00C9 0000         NBRPTR   FDB    0         Pointer to Number-Buffer
 00CB 00           VARCOD   FCB    0         Variable-Code
 00CC 00           VARTYP   FCB    0         Variable-Type
 00CD 0000         CONSPT   FDB    0         Pointer to Constant-Table
 00CF 00           SPCTAB   FCB    0         Set for SPC() or TAB()
 00D0 00           EOLFLG   FCB    0         End-of-Statement Flag
 00D1 0000         DATPTR   FDB    0         DATA pointer
 00D3 0000         TEMP6    FDB    0
 00D5 0000         TEMP7    FDB    0
 00D7 0000         TEMP8    FDB    0
 00D9 0000         HALTAD   FDB    0         Address at which program HALTed
 00DB 00           PRGTYP   FCB    0         Program Type. 0=BAS 1=BAC
 00DC 00           ERRFMS   FCB    0         FMS Error #
 00DD 00           CHANFG   FCB    0         Channel Flag. 0=Terminal 1=Internal Channel 1-12
 00DE 00           INPSEL   FCB    0         Input Select 0=Terminal 1=Internal Channel 1-12
 00DF 0000         FCBTMP   FDB    0         Temporary pointer to FCB
 00E1 0000         CHOUTV   FDB    0         Current CHAR-OUT vector
RBASIC by R. Jones   31 May 1988        4-7-4 TSC ASSEMBLER   PAGE   5

 00E3 0000           ERRLIN   FDB   0          ON ERROR GOTO Line # (HEX)
 00E5 0000           SPTEMP   FDB   0          Temporary SP Storage
 00E7 0000           ERRNO    FDB   0          ERR Variable
 00E9 0000           ERLNBR   FDB   0          Line # at which error occurred
 00EB 00             ONERRF   FCB   0          Error-Mode Flag
 00EC 00             RECORD   FCB   0          RECORD #
 00ED 00             VRAFLG   FCB   0          Virtual-Array Flag
 00EE 0000           NXLNLC   FDB   0          Location of Next-Line address
 00F0 0000           FCBPTR   FDB   0          Pointer to FCB
 00F2 00             CHANNO   FCB   0
 00F3 00             DIGNBR   FCB   0          Max # of DIGITs to be displayed
 00F4 00             DPTNBR   FCB   0          Max # of decimal-point positions to be displayed
 00F5 00             SCALFG   FCB   0          SCALE-Factor
 00F6 00             TEMP9    FCB   0
 00F7 00             FIELDF   FCB   0          Indicates Fielded Variable
 00F8 00             POUNDL   FCB   0          Number of '#' signs to left of DP in Print-Using String
 00F9 00             POUNDR   FCB   0          Number of '#' signs to right of DP in Print-Using String
 00FA 00             TOKCTR   FCB   0          Token-Counter for Print-Using String
 00FB 00             TEMP11   FCB   0
 00FC 00             XSDIGS   FCB   0          # of decimal digits, if in excess of DIGITS set
 00FD 00             DPTPOS   FCB   0          Position of decimal-point in numeral (~dec. exp)
 00FE 00             FRACLT   FCB   0          Maximum # of digits allowable to right of DP

 00FF 0000         REMNDR     FDB   0        Residue after Integer-divide
 0101 0000         ENDMEM     FDB   0        End of available memory = MEMEND - 4
              0101 USRDAT     EQU   ENDMEM   Storae for USR data
 0103 01           HOME       FCB   $01      HOME Cursor/Express Left-Right
 0104 02           CLEFT      FCB   $02      Cursor Left
 0105 05           CRIGHT     FCB   $05      Cursor Right
 0106 1F           LF         FCB   $1F      Feed Line to RBASIC
 0107 0C           FF         FCB   $0C      Clear Screen
 0108 12           REPEAT     FCB   $12      Recall last line
 0109 14           INSCH      FCB   $14      Insert Char
 010A 15           DELCH      FCB   $15      Delete Char
 010B 16           SPLIT      FCB   $16      Split Line
 010C 17           MELD       FCB   $17      Meld Lines
 010D 04 59 20 20 HOMEUP      FCC   $04,"Y ",EOT HOMEUP sequence for ADDS VIEWPOINT
 0111 04
 0112 0000         USRVEC     FDB   0          Storage for USR vector
RBASIC by R. Jones   31 May 1988      4-7-4 TSC ASSEMBLER     PAGE   6


                     *
                     * COLD-START
                     *
 0114 10FE CC2B      COLDST LDS     MEMEND    Set SP
 0118 32 7E                  LEAS   -2,S
 011A 10FF 0112              STS    USRVEC    Address for USR vector
 011E 32 7E                  LEAS   -2,S
 0120 10FF 0101              STS    ENDMEM    New end-of-memory
 0124 8E 0013                LDX    #XTEMP1   Initialise Flags etc
 0127 86 76                  LDA    #118      118 double-bytes
 0129 CE 0000                LDU    #0
 012C EF 81          COLD0 STU      0,X++
 012E 4A                     DECA
 012F 26 FB                  BNE    COLD0     No
 0131 1F 8B                  TFR    A,DP      Reset DP register
 0133 CC 020A                LDD    #522      522 double-bytes
 0136 8E 44A7                LDX    #EDITFG Clear Buffers
 0139 EF 81          COLD1 STU      0,X++
 013B 83 0001                SUBD   #1
 013E 26 F9                  BNE    COLD1     No
 0140 CC 0DFF                LDD    #$0DFF
 0143 DD F3                  STD    DIGNBR
 0145 97 23                  STA    HALTFG
 0147 B7 45F6                STA    INPBUF+255 Final CR in Input-Buffer
 014A FC CD10                LDD    OUTCH+1
 014D DD E1                  STD    CHOUTV    Reset Outch-vector

 014F CC 46F7               LDD     #MSPTRS   Point to Math-Stack pointers
 0152 DD 85                 STD     MSTKPT    and save in Pointer to M-Stack vectors
 0154 B6 CC11               LDA     LSTTRM    Get last non-alpha code
 0157 81 0D                 CMPA    #CR
 0159 1027 0509             LBEQ    NEW       Yes

                     * FIRE UP WITH A .BAC FILE

 015D CC   0B69             LDD     #ERR25A   Init EscRet-addr
 0160 FD   CC16             STD     ESCRET
 0163 BD   02CB             JSR     INITBF    No. Initialise Source-Buffer, etc
 0166 86   08               LDA     #8        Set Extension to .BAC
 0168 BD   CD33             JSR     SETEXT
 016B 7E   2965             JMP     CHAIN1
                     *
                     * WARM START
                     *
 016E 10FE 0101      WARMST LDS     ENDMEM    Initialise SP
 0172 CC 0B69        WARM1 LDD      #ERR25A
 0175 FD CC16                STD    ESCRET    Init EscRet-addr
 0178 CC 0000                LDD    #0
 017B DD F6                  STD    TEMP9
 017D 97 6B                  STA    OUTSLF    Set to Terminal-Output
 017F 8E 3E42                LDX    #READYM   Output "RBASIC" prompt
 0182 BD 0452                JSR    OUTSTR
 0185 BD 045F                JSR    LINEND    Terminate Line
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE       7

 0188 BD 291F        WARM2   JSR    XFOUT1    Restore ChrOut-vector
 018B BD 045F                JSR    LINEND    Terminate Line
 018E CC 0000                LDD    #0
 0191 DD 83                  STD    CLINAD    Set Current-Line-Address to 0000
 0193 BD 049D        WARM3   JSR    LINEIN    Input a line from Terminal
 0196 8E 44F7                LDX    #INPBUF   Point to Input-Buf
 0199 BD 3731                JSR    IGNSPC    Ignore SPACEs
 019C 9F 45                  STX    INBFPT    Save in Input-Buf pointer
 019E BD 0BEE                JSR    ALFNM2    Classify as alpha, numeric, or neither
 01A1 26 17                  BNE    DOLINE    Alphanumeric
 01A3 81 0D                  CMPA   #CR       Neither. CR?
 01A5 27 E1                  BEQ    WARM2     Yes
 01A7 81 3F                  CMPA   #'?       No. Print?
 01A9 27 45                  BEQ    NOTCMD    Yes. Parse line
 01AB 81 21                  CMPA   #'!       No. Input?
 01AD 27 41                  BEQ    NOTCMD    Yes. Parse Line
 01AF 81 2B                  CMPA   #'+       No. DOS command?
 01B1 1027 2467              LBEQ   CALDOS    Yes. Execute it

 01B5 86   32        ERR32A LDA     #$32      Error-Code 50 (Unrecognisable Statement)
 01B7 7E   0B6B              JMP    ERROR     Process Error
                     *
                     * PROCESS ENTERED LINE
                     *
 01BA 5A             DOLINE DECB              Is there a Line #?
 01BB 27   18                BEQ    IMMED     No. It's Immediate-mode

                     * PROGRAM-MODE. GET PROGRAM-LINE INTO SOURCE-BUFFER

 01BD BD 2D0B                JSR    CLFSTK    Clear FCB address Stack
 01C0 BD D403                JSR    FMSCLS    Close all files
 01C3 BD 0A41                JSR    CKSRCE    Check if BAS program
 01C6 BD 0B23                JSR    PARSLN    Parse Line in Input-Buf
 01C9 BD 0394                JSR    INSERT    Insert new line in Source-Buf
 01CC 10FE 0101              LDS    ENDMEM    Restore SP
 01D0 BD 02ED                JSR    INWKSP    Initialise Workspace
 01D3 20 B3                  BRA    WARM2
                     *
                     * IMMEDIATE-MODE. PARSE AND EXECUTE LINE
                     *
 01D5 9F   2A        IMMED STX      AUXPTR    Store Input-Buf pointer
 01D7 8E   3F49              LDX    #CMDTBL Point to Command-Table
 01DA BD   0C0C              JSR    CMDID     Identify Command
 01DD 26   11                BNE    NOTCMD    Command not found
 01DF E6   01                LDB    1,X       Found. Get Command-Token
 01E1 58                     ASLB             *2
 01E2 9E   2A                LDX    AUXPTR    Recover Input-Buf pointer
 01E4 30   01                LEAX 1,X         bump it
 01E6 9F   45                STX    INBFPT    and save in Input-Buf pointer
 01E8 BD   045F              JSR    LINEND    Terminate Line
 01EB 8E   3E70              LDX    #CMDVT-2 Identify Command
 01EE 6E   95                JMP    [B,X]     and execute it

 01F0 BD   0B23      NOTCMD JSR     PARSLN    Parse Line in Input-Buf
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   8

 01F3 CC 0000               LDD    #0
 01F6 DD 81                 STD    NXLNAD    Set Next-Line address to 0000
 01F8 BD 045F               JSR    LINEND    Terminate Line
 01FB 108E 45F7             LDY    #WORKBF   Point to Work-Buf
 01FF 0C 24                 INC    IMMEDF    Set Immed-Mode Flag
 0201 20 5A                 BRA    RUN7
                     *
                     * EXECUTE RUN COMMAND
                     *
 0203 CC 0000        RUN     LDD    #0
 0206 FD 48A8                STD    CHAINS   Initialise Chain-Start Line #
 0209 BD D403                JSR    FMSCLS   Close all files
 020C 9E 45                  LDX    INBFPT   Point to Input-Buffer
 020E BD 3731                JSR    IGNSPC   Ignore SPACEs
 0211 81 0D                  CMPA #CR        CR?
 0213 1026 078B              LBNE BACFIN     No. Input BAC file into Source-Buffer

                     * RUN PROGRAM IN SOURCE-BUFFER

 0217 BD 045F        RUN1   JSR    LINEND    Terminate Line
 021A 10FE 0101             LDS    ENDMEM    Set SP to End-of-Memory
 021E BD 02EF               JSR    INWK1     Init Workspace registers
 0221 0F 23                 CLR    HALTFG    Clear Halt-Flag. Allow program to cont
 0223 FC 48A8               LDD    CHAINS    Get Chain-Start Line #
 0226 27 08                 BEQ    RUN2      =0

                     * CHAIN TO NEW FILE

 0228 BD   0375             JSR    LNVAL1    Not 0. Validate Line #
 022B 27   05               BEQ    RUN3      It's OK
 022D 7E   135A             JMP    ERR3CA    Error-Code 60 (Bad Line-Ref in GOTO, GOSUB)
                 *
                 * ORIGINAL LOAD ie not Chained
                 *
 0230 9E 30      RUN2    LDX    LOWLIN   Get LowLine address
 0232 9F 81      RUN3    STX    NXLNAD   Save in Next-Line address
 0234 10DF E5    RUN4    STS    SPTEMP   Save SP
 0237 8D 7E              BSR    DELBLK   De-allocate block of memory
 0239 BD CD4E            JSR    STAT     Terminal has input?
 023C 27 0A              BEQ    RUN5     No
 023E AD 9F D3E5         JSR    [INCHNE] Yes. Get char
 0242 81 03              CMPA #BRK       Break?
 0244 1027 03CF          LBEQ BREAK1     Yes. Go to it
 0248 109E 81    RUN5    LDY    NXLNAD   Get Next-Line addr
 024B 27 5C              BEQ    CLDRCT   =0. Clear Immed-Mode Flag
 024D 109F 83            STY    CLINAD   Not 0. Save as Current-Line addr
 0250 EC 22              LDD    2,Y      Get addr of next line
 0252 DD 81              STD    NXLNAD   and save in Next-Line addr
 0254 96 87              LDA    TRCFLG   Test Trace-Flag
 0256 27 03              BEQ    RUN6     Trace is OFF
 0258 BD 0633            JSR    TRACER   Trace is ON. Go to it
 025B 31 24      RUN6    LEAY 4,Y        Advance to data area
 025D A6 A0      RUN7    LDA    0,Y+     Get char
 025F 2B 0C              BMI    RUN9     Variable
RBASIC by R. Jones   31 May 1988        4-7-4 TSC ASSEMBLER   PAGE   9

 0261 81 7E                 CMPA   #$7E        Statement. Space?
 0263 27 04                 BEQ    RUN8        Yes
 0265 25 11                 BCS    STATID      <7E. Identify Statement and execute
 0267 31 21                 LEAY   1,Y         >7E. Multiple SPACEs. Bump pointer past count
 0269 A6 A0          RUN8   LDA    0,Y+        Get Token
 026B 2A 0B                 BPL    STATID      Statement. Identify Statement and execute
 026D 85 20          RUN9   BITA   #$20        Variable. Constant?
 026F 1026 FF42             LBNE   ERR32A      Yes. Error-Code 50
 0273 31 3F                 LEAY   -1,Y        No. Back up Pointer
 0275 7E 0F74               JMP    LET         as it's an implied LET
                     *
                     * IDENTIFY STATEMENT IN STATVT, THEN EXECUTE STATEMENTS <= $27
                     *
 0278 81 27          STATID CMPA #$27         Compare with $27
 027A 1022 FF37              LBHI ERR32A      Above. Error-Code 50
 027E 48                     ASLA             OK, so A*2
 027F 8E 3E8A                LDX    #STATVT-2 Identify Statement
 0282 6E 96                  JMP    [A,X]     and execute it
                     *
                     * CHECK STATEMENT ENDING AND CONTINUE WITH PROGRAM
                     *
 0284 A6   A0        STENDC LDA     0,Y+      Get char
 0286 81   7D                CMPA #$7D        CR?
 0288 27   AA                BEQ    RUN4      Yes
 028A 22   08                BHI    ERR35A    >7D. Error-Code 53
 028C 81   7B                CMPA #$7B        <7D. Is it 7B?
 028E 24   09                BCC    STEND1    >=7B
 0290 81   31                CMPA #$31        <7B. Else?
 0292 27   A0                BEQ    RUN4      Yes
 0294 86   35        ERR35A LDA     #$35      Error-Code 53 (Illegal Line Termination)
 0296 7E   0B6B              JMP    ERROR     Process Error

                     * CHECK KEYBOARD

 0299 BD   CD4E    STEND1 JSR     STAT      >=7B, so it's : or \. Check Terminal Status
 029C 27   BF              BEQ    RUN7      No Key pressed. Proceed
                   *
                   * CHECK FOR BREAK DURING RUN
                   *
 029E AD   9F D3E5         JSR    [INCHNE] Get char - no echo
 02A2 81   03              CMPA #BRK        Break?
 02A4 26   B7              BNE    RUN7      No. Continue
 02A6 7E   0617            JMP    BREAK1    Yes. Go to it
                   *
                   * CLEAR IMMEDIATE-MODE FLAG
                   *
 02A9 96   24      CLDRCT LDA     IMMEDF    Check Immed-Mode Flag
 02AB 26   02              BNE    CLDRC1    Set. Go clear it
 02AD 0C   23              INC    HALTFG    Set Halt-Flag
 02AF 0F   24      CLDRC1 CLR     IMMEDF    Clear Immed-Mode Flag
 02B1 BD   2D0B            JSR    CLFSTK    Clear FCB address Stack
 02B4 7E   0172            JMP    WARM1     Return to RBASIC Warm-Start
                   *
                   * DE-ALLOCATE COMPLETE BLOCK OF MEMORY
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   10

                     *
 02B7 9E   EE        DELBLK LDX     NXLNLC    Get Next-Line pointer
 02B9 27   0F                BEQ    DELBK2    =0. Go home
 02BB EC   84        DELBK1 LDD     0,X       Get next addr
 02BD 34   06                PSHS D           Save it
 02BF EC   02                LDD    2,X       Get # of bytes
 02C1 BD   2896              JSR    UNRSV     De-allocate 'D' memory-bytes
 02C4 AE   E1                LDX    0,S++     Recover addr
 02C6 26   F3                BNE    DELBK1    Do next
 02C8 9F   EE                STX    NXLNLC    All done. Clear Next-Line pointer
 02CA 39             DELBK2 RTS
                     *
                     * INITIALISE SOURCE-BUFFER FOR BAS FILE AND GET FILE SPEC
                     *
 02CB CC   49F8      INITBF LDD     #SRCBUF Point to Source-Buffer
 02CE DD   5D                STD    VARPTR    Store in Var-Pointer
 02D0 DD   61                STD    VAREND    and V-Stack-End
 02D2 0F   DB                CLR    PRGTYP    Clear Program-Type Flag
 02D4 8D   19                BSR    INWK1     Init workspace
 02D6 8E   C840              LDX    #SYSFCB
 02D9 7E   CD2D              JMP    GETFIL    Get File-spec
                     *
                     * PARSE LINE IN WORK-BUFFER
                     *
 02DC 108E 45F7      PARSWB LDY     #WORKBF Point to Work-Buf
 02E0 109F 57                STY    WKBFPT    and save in Work-Buf pointer
 02E3 CC 0100                LDD    #$100
 02E6 DD 47                  STD    LNBRFG    Set Line-number-FlaG and clear Par-Counter
 02E8 D7 49                  STB    LSTCHR    Clear Last-Char
 02EA 7E 0B48                JMP    PRSLNA
                     *
                     * INITIALISE WORKSPACE REGISTERS
                     *
 02ED 0C   23        INWKSP INC     HALTFG    Set Halt-Flag
 02EF BD   2D0B      INWK1 JSR      CLFSTK    Clear FCB address Stack
 02F2 DC   30                LDD    LOWLIN    Get LowLine address
 02F4 DD   D3                STD    TEMP6
 02F6 CC   0000              LDD    #0
 02F9 DD   D1                STD    DATPTR    Clear Data-pointer
 02FB DD   E3                STD    ERRLIN    Clear 'On Error' address
 02FD DD   E7                STD    ERRNO     Clear ERR variable
 02FF DD   E9                STD    ERLNBR    Clear ERL variable
 0301 DD   EE                STD    NXLNLC    Clear Next-Line pointer
 0303 DD   F6                STD    TEMP9     Clear
 0305 97   EB                STA    ONERRF    Clear Error-Mode Flag
 0307 9E   5D                LDX    VARPTR    Get Pointer to Variable-Stack
 0309 CE   0000              LDU    #0        Preset for clearing
 030C D6   DB                LDB    PRGTYP    Test Program-Type Flag
 030E 27   08                BEQ    INWK3     BAS File

                     * BAC FILE. CLEAR VARIABLE-STACK

 0310 9C   61        INWK2   CMPX   VAREND   End-of-V-Stack?
 0312 27   1E                BEQ    FCHAIN   Yes. Initialise Free-Chain
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   11

 0314 A7   80               STA    0,X+      No. Clear Variable-Buf
 0316 20   F8               BRA    INWK2     Keep going
                     *
                     * BAS FILE. INITIALISE ALL VARIABLES TO NULs
                     *
 0318 9C   61        INWK3 CMPX VAREND        End-of-V-Stack?
 031A 27   16                BEQ    FCHAIN    Yes. Initialise Free-Chain
 031C E6   84                LDB    0,X       No. Get Variable-Code
 031E 30   03                LEAX 3,X         Bump past code + Var-Name
 0320 EF   81                STU    0,X++
 0322 C5   11                BITB #$11        String? Maybe subscripted?
 0324 26   08                BNE    INWK4     At least one. Clear 4 bytes
 0326 C5   04                BITB #4          Clear. '%'?
 0328 26   EE                BNE    INWK3     Yes. Clear 2 bytes
 032A EF   81                STU    0,X++     FP. Clear 8 bytes
 032C EF   81                STU    0,X++
 032E EF   81        INWK4 STU      0,X++
 0330 20   E6                BRA    INWK3     right thru to End-of-Stack
                     *
                     * INITIALISE FREE-CHAIN
                     * Reserve Stack space and calculate Free Memory
                     *
 0332 EF   84        FCHAIN STU     0,X       Set Free-Chain linkage to 0
 0334 9F   41                STX    FREPTR    Pointer to Free Memory space
 0336 FC   0101              LDD    ENDMEM    Reserve a minimum
 0339 C1   E0                CMPB #$E0        of $01E0 bytes
 033B 24   01                BCC    FCH1      below top-of-memory
 033D 4A                     DECA             Low address of MemTop
 033E 5F             FCH1    CLRB             to end in --00
 033F 4A                     DECA
 0340 DD   21                STD    MEMTOP    Save in MemTop
 0342 93   41                SUBD FREPTR      Subtract Free-Ptr from bottom-of-Stack
 0344 25   03                BCS    ERR50A    Error-Code 80
 0346 ED   02                STD    2,X       Save Free-Memory amount
 0348 39                     RTS

 0349 86   50        ERR50A LDA     #$50      Error-Code 80 (Memory Overflow)
 034B 7E   0B6B              JMP    ERROR     Process Error
                     *
                     * ADJUST TOP OF MEMORY, IF NECESSARY,
                     * TO ACCOMMODATE STACK OVERFLOW
                     *
 034E 1F 40          STKCHK TFR     S,D       Save SP
 0350 1093 21                CMPD MEMTOP      Top-of-memory?
 0353 22 12                  BHI    STKCK4    Over the top. Go home
 0355 9E 41                  LDX    FREPTR    Get Free-Ptr
 0357 AE 84          STKCK1 LDX     0,X       Search for start
 0359 26 FC                  BNE    STKCK1    of Free-Chain
 035B EC 02          STKCK2 LDD     2,X       Free Memory <=$100?
 035D 1083 0100              CMPD #$100
 0361 23 E6                  BLS    ERR50A    Yes. Error-Code 80
 0363 6A 02          STKCK3 DEC     2,X       otherwise adjust Free memory
 0365 0A 21                  DEC    MEMTOP    and MemTop by $100
 0367 39             STKCK4 RTS
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   12

                     *
                     * VALIDATE LINE # AND RELATE IT TO CURRENT LINE
                     *
 0368 EC 21          LINVAL LDD     1,Y       Get Line #
 036A 9E 83                  LDX    CLINAD    Get Current-Line address
 036C 27 07                  BEQ    LNVAL1    =0
 036E 10A3 84                CMPD 0,X         Not 0. On same Line?
 0371 22 18                  BHI    LOCLNB    # is higher
 0373 27 1E                  BEQ    LOCLND    Numbers match. Go home
 0375 9E 30          LNVAL1 LDX     LOWLIN    Lower. Get Low-Line address
 0377 26 0D                  BNE    LOCLNA    Not 0
 0379 20 16                  BRA    LOCLNC    0. Set up for first program-line
                     *
                     * COMPARE NEW LINE # WITH SOURCE PROGRAM
                     * AND DETERMINE ITS LOCATION IN PROGRAM
                     *
 037B CC 0000        LOCLIN LDD     #0
 037E DD 59                  STD    LINADR    Set Line-Adr to 0
 0380 9E 30                  LDX    LOWLIN    Get Low-Line address
 0382 27 0D                  BEQ    LOCLNC    Clear. Set up for first program line
 0384 DC 51                  LDD    LINNBR    Get Line #
 0386 10A3 84        LOCLNA CMPD 0,X          and compare with this Line
 0389 23 08                  BLS    LOCLND    <=, so go home
 038B 9F 59          LOCLNB STX     LINADR    >. Save Line-Adr and
 038D AE 02                  LDX    2,X       get address of next line
 038F 26 F5                  BNE    LOCLNA    Not 0. Do another compare
 0391 1C FA          LOCLNC ANDCC #$FA        Clear ZERO and CARRY bits
 0393 39             LOCLND RTS
                     *
                     * INSERT NEW LINE IN SOURCE BUFFER
                     *
 0394 8D E5          INSERT BSR     LOCLIN    Find position of new line in Source-Buf
 0396 27 57                  BEQ    DELETE    = an existing line #. Delete old one
 0398 9F 5B                  STX    NEWLIN    First line, or <, or > existing line. Save addr
 039A BD 0448                JSR    WKBFMT    Is Work-Buffer empty?
 039D 27 F4                  BEQ    LOCLND    Yes, so go home
 039F DC 5B                  LDD    NEWLIN    No. Recover New-Line address
 03A1 1093 30                CMPD LOWLIN      = Low-Line address?
 03A4 26 04                  BNE    INSRTA    No. It's higher up in Source prog
 03A6 DC 5D                  LDD    VARPTR    Yes. Get address of new line
 03A8 DD 30                  STD    LOWLIN    and save in Low-Line address
 03AA 9E 59          INSRTA LDX     LINADR    Get Line-Adr
 03AC 27 04                  BEQ    INSRTB    It's at end of program
 03AE DC 5D                  LDD    VARPTR    Get new line's address
 03B0 ED 02                  STD    2,X       and store
 03B2 D6 1D          INSRTB LDB     CHMVCT    Get # of chars to be moved
 03B4 CB 04                  ADDB #4          +4
 03B6 9E 61                  LDX    VAREND    Get End-of-V-Stack address
 03B8 1F 13                  TFR    X,U       and save in Aux. Pointer
 03BA 3A                     ABX              Calculate new End-of-V-Stack
 03BB 9C 21                  CMPX MEMTOP      Compare with Mem-Top
 03BD 24 24                  BCC    MEMOVF    Over the top
 03BF 9F 61                  STX    VAREND    Save in V-Stack-End
 03C1 20 04                  BRA    INSRTD
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE     13

                     *
                     * MOVE VARIABLE-STACK OUT BY LENGTH OF NEW LINE
                     *
 03C3 A6 C2          INSRTC LDA     0,-U      Back off and get char
 03C5 A7 82                  STA    0,-X      Store in new location
 03C7 1193 5D        INSRTD CMPU VARPTR       Same as Var-Ptr?
 03CA 26 F7                  BNE    INSRTC    No, so loop

 03CC DC   51               LDD    LINNBR    Get Line #
 03CE ED   C1               STD    0,U++     and save it
 03D0 DC   5B               LDD    NEWLIN    Recover NewLine addr
 03D2 ED   C1               STD    0,U++     and save. Bump by 2

                     * TRANSFER WORK-BUFFER TO SOURCE-BUFFER
                     * # of chars to be moved is in CHMVCT

 03D4 8E   45F7              LDX    #WORKBF Point to Work-Buffer
 03D7 D6   1D                LDB    CHMVCT    # of chars to move
 03D9 A6   80        XFWBS1 LDA     0,X+      Get char and bump pointer
 03DB A7   C0                STA    0,U+      Store char and bump pointer
 03DD 5A                     DECB             Dec count
 03DE 26   F9                BNE    XFWBS1    Not done. Back for more
 03E0 DF   5D                STU    VARPTR    Save source-end
 03E2 39                     RTS              Done. Go home
                     *
                     * MEMORY OVERFLOW
                     *
 03E3 9E   59        MEMOVF LDX     LINADR    Get Line-Adr
 03E5 6F   02                CLR    2,X       Set Next-Line addr
 03E7 6F   03                CLR    3,X       to 0000
 03E9 BD   02ED              JSR    INWKSP    Initialise everything
 03EC 7E   0349              JMP    ERR50A    Error-Code 80 (Memory Overflow)
                     *
                     * DELETE LINE FROM SOURCE BUFFER
                     *
 03EF 9F 2A          DELETE STX     AUXPTR    Save in Aux. Pointer
 03F1 EC 02                  LDD    2,X       Get Next-Line addr
 03F3 109E 59                LDY    LINADR    Get Line-Adr
 03F6 27 04                  BEQ    DLETE1    =0
 03F8 ED 22                  STD    2,Y       Store in Next-Line location
 03FA 20 02                  BRA    DLETE2

 03FC DD 30          DLETE1 STD    LOWLIN    Save in LowLine addr
 03FE 31 04          DLETE2 LEAY   4,X       Point to Line Data
 0400 8D 7B                 BSR    FINDCR    Search for CR
 0402 31 21                 LEAY   1,Y       Bump to start of next line
 0404 1F 20                 TFR    Y,D
 0406 93 2A                 SUBD   AUXPTR    Calculate Line-Length
 0408 D7 4A                 STB    ALFNCD    Save in Char-Count
 040A 109C 61        DLETE3 CMPY   VAREND    End-of-V-Stack?
 040D 27 06                 BEQ    ADJADR    Yes. Adjust addresses
 040F A6 A0                 LDA    0,Y+      No, so keep
 0411 A7 80                 STA    0,X+      compressing till
 0413 20 F5                 BRA    DLETE3    End-of-Source
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   14

                     *
                     * LINE DELETED.
                     * ADJUST NEXT-LINE ADDRESSES TO COMPENSATE FOR DELETED LINE
                     *
 0415 9F 61          ADJADR STX     VAREND    Save V-Stack end
 0417 9E 30                  LDX    LOWLIN    Get LowLine address
 0419 27 1C                  BEQ    ADJAD3    No lines to adjust
 041B 8E 002E                LDX    #LOWLIN-2 Not 0. +ve offset
 041E EC 02          ADJAD1 LDD     2,X       Get address and
 0420 1093 2A                CMPD AUXPTR      compare with next-line addr
 0423 23 06                  BLS    ADJAD2    <=
 0425 D0 4A                  SUBB ALFNCD      >. Subtract Line-Length
 0427 82 00                  SBCA #0
 0429 ED 02                  STD    2,X
 042B AE 02          ADJAD2 LDX     2,X       Get Next-Line addr
 042D 26 EF                  BNE    ADJAD1    Not done. Keep adjusting
 042F DC 5D                  LDD    VARPTR    Get V-Stack Pointer
 0431 D0 4A                  SUBB ALFNCD      Subtract Line-Length
 0433 82 00                  SBCA #0
 0435 20 03                  BRA    ADJAD4

 0437 CC   49F8      ADJAD3 LDD    #SRCBUF   Point to Source-Buffer
 043A DD   5D        ADJAD4 STD    VARPTR    and store in V-Stack Pointer

                     * PUT REPLACEMENT LINE (IF THERE IS ONE) AT END OF SOURCE

 043C F6 48B5               LDB    PDELFG    Test Block-Delete Flag
 043F 26 10                 BNE    WKBMT1    Set, so don't insert
 0441 8D 05                 BSR    WKBFMT    Is Work-Buffer empty?
 0443 1026 FF4D             LBNE   INSERT    No. Insert new line in Source-Buf
 0447 39                    RTS              Yes
                     *
                     * CHECK IF WORK-BUFFER EMPTY
                     *
 0448 108E 45F7      WKBFMT LDY     #WORKBF Point to Work-Buf
 044C BD 0F26                JSR    SKIPS1    Skip SPACEs and get char
 044F 81 7D                  CMPA #$7D        CR?
 0451 39             WKBMT1 RTS
                     *
                     * OUTPUT CR, THEN OUTPUT STRING TILL EOT
                     *
 0452 8D   0B        OUTSTR BSR     LINEND    Terminate Line
 0454 A6   80        OUTST1 LDA     0,X+      Get char
 0456 81   04                CMPA #EOT
 0458 27   F7                BEQ    WKBMT1    Done. Go home
 045A BD   27AA              JSR    CHROUT    Output char
 045D 20   F5                BRA    OUTST1    and another
                     *
                     * LINE TERMINATION
                     *
 045F 34   10        LINEND PSHS X            Save X
 0461 96   DD                LDA    CHANFG    Test Channel-Flag
 0463 27   0E                BEQ    LNEND1    Not 0
 0465 9E   F0                LDX    FCBPTR    Channel 0. Get FCB pointer
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE     15

 0467 27   0A               BEQ    LNEND1    Clear
 0469 6F   88 3F            CLR    63,X      Clear Column-Count
 046C 86   0D               LDA    #CR
 046E BD   27AA             JSR    CHROUT    Output CR
 0471 35   90               PULS   X,PC

 0473 BD   CD24      LNEND1 JSR     PCRLF     Channel 0. Print CRLF
 0476 0F   75                CLR    POSCTR    Reset Print-Head Position-Counter
 0478 35   90                PULS X,PC
                     *
                     * SEARCH FOR CR. Enter at FINDCR
                     *
 047A BD   15BB      FNDCR0 JSR     SKPVAR    Skip Variables

 047D BD   0F26      FINDCR JSR     SKIPS1    Skip SPACEs and get char
 0480 2B   F8                BMI    FNDCR0    Variable. Try again
 0482 81   7D                CMPA #$7D        Statement. CR?
 0484 27   CB                BEQ    WKBMT1    Found CR. Go home
 0486 31   21                LEAY 1,Y         Bump Pointer
 0488 20   F3                BRA    FINDCR    and keep looking
                     *
                     * SPLIT EDITED LINE AT CURSOR
                     *
 048A 86   0D        SPLITL LDA     #CR
 048C A7   84                STA    0,X       Insert CR at Split point
 048E 7C   44AA              INC    SPLITF    Set Split-Flag
 0491 B6   0107      SPLIT1 LDA     FF        and give 1st half to RBASIC
 0494 0E   0C                JMP    PUTCH
                     *
                     * EXECUTE CANCEL (CONTROL-X)
                     *
 0496 8E   3E03      CANCEL LDX     #CTLXMS Output ^X message
 0499 8D   B9                BSR    OUTST1
 049B 8D   C2                BSR    LINEND    Terminate Line

                     * INPUT A LINE FROM TERMINAL TO INPUT-BUFFER

 049D 8E   44F7      LINEIN LDX    #INPBUF   Point to Input-Buffer
 04A0 9F   45               STX    INBFPT    Save in Input-Buffer pointer
 04A2 B6   44AA             LDA    SPLITF    Test Split-Flag
 04A5 27   2D               BEQ    LINE1     Clear
 04A7 1F   13               TFR    X,U       Duplicate Buf-pointer
 04A9 8D   1D               BSR    LINE04    Restore cursor to HomeUp
 04AB 1F   31               TFR    U,X       Recover pointer
 04AD A6   C0        LINE00 LDA    0,U+      Search for CR
 04AF 81   0D               CMPA   #CR       at
 04B1 26   FA               BNE    LINE00    Split-Point
 04B3 A6   C0        LINE01 LDA    0,U+      Now delete
 04B5 81   0D               CMPA   #CR       first section
 04B7 27   06               BEQ    LINE02    of line, and
 04B9 A7   80               STA    0,X+      save the
 04BB 9D   0C               JSR    PUTCH     remainder
 04BD 20   F4               BRA    LINE01
RBASIC by R. Jones   31 May 1988      4-7-4 TSC ASSEMBLER   PAGE   16

 04BF A7   84        LINE02 STA     0,X
 04C1 7F   44AA             CLR     SPLITF
 04C4 8D   02               BSR     LINE04    Restore cursor to HomeUp
 04C6 20   D5               BRA     LINEIN

 04C8 B6   0103      LINE04 LDA     HOME
 04CB 9D   0C               JSR     PUTCH
 04CD 8E   010D             LDX     #HOMEUP
 04D0 20   82               BRA     OUTST1

 04D2 30 1F          LINE03 LEAX    -1,X      Back up pointer
 04D4 BD 2806        LINE1 JSR      CHRIN     Input a char
 04D7 B1 0103               CMPA    HOME      Home Cursor?
 04DA 1027 00BB             LBEQ    EXPRES    Yes. Do it
 04DE 7F 44A9               CLR     HOMEFG    No
 04E1 B1 CC00               CMPA    TTYBS     No. BS?
 04E4 27 74                 BEQ     BACKSP    Yes. Do it
 04E6 81 0D                 CMPA    #CR       No. CR?
 04E8 27 4E                 BEQ     LINE2     Yes. Store it
 04EA B1 0106               CMPA    LF        No. LF?
 04ED 27 A2                 BEQ     SPLIT1    Yes. Give line to RBASIC
 04EF B1 CC01               CMPA    TTYDEL    Cancel?
 04F2 27 A2                 BEQ     CANCEL    Yes. Do it

 04F4 B1 0104                CMPA   CLEFT     Cursor Left?
 04F7 27 61                  BEQ    BACKSP    Yes. Do it
 04F9 B1 0105                CMPA   CRIGHT    Cursor Right?
 04FC 1027 0085              LBEQ   RIGHTC    Yes. Do it
 0500 B1 0108                CMPA   REPEAT    Recall Line?
 0503 1027 00B8              LBEQ   RECALL    Yes. Do it
 0507 B1 0109                CMPA   INSCH     Insert char?
 050A 1027 00C2              LBEQ   INSCHR    Yes. Do it
 050E B1 010A                CMPA   DELCH     Delete char?
 0511 1027 00D1              LBEQ   DELCHR    Yes. Do it
 0515 81 03                  CMPA   #BRK      No. Break?
 0517 1027 00F4              LBEQ   BREAK     Yes. Do it
 051B B1 010B                CMPA   SPLIT     No. Split?
 051E 1027 FF68              LBEQ   SPLITL    Yes. Do it
 0522 B1 010C                CMPA   MELD      No. Meld?
 0525 27 18                  BEQ    MELDLN    Yes. Do it
 0527 81 1F                  CMPA   #$1F      No. Any other Control-Code?
 0529 23 A9                  BLS    LINE1     Yes. Ignore it. Back to Input routine
 052B 8C 45F6                CMPX   #INPBUF+255 End of Input-Buffer?
 052E 27 A4                  BEQ    LINE1     Yes. Ignore entry. Back to Input routine
 0530 E6 84                  LDB    0,X       No. Get buffer-char
 0532 C1 0D                  CMPB   #CR       End-of-line?
 0534 26 02                  BNE    LINE2     No. Continue
 0536 E7 01                  STB    1,X       Yes. Move CR to right
 0538 A7 80          LINE2   STA    0,X+      Store char and bump Pointer
 053A 81 0D                  CMPA   #CR
 053C 26 96                  BNE    LINE1     No. Back to Input routine
 053E 39                     RTS              Yes. Go home
                     *
                     * MELD TWO SUCCESSIVE LINES
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER      PAGE   17

                     *
 053F 7C   44A8      MELDLN INC     MELDFG    Set Meld-Flag
 0542 B6   0105             LDA     CRIGHT
 0545 E6   80        MELDL1 LDB     0,X+      Search for end-of-line
 0547 C1   0D               CMPB    #CR
 0549 27   04               BEQ     MELDL2
 054B 9D   0C               JSR     PUTCH     Cursor Right
 054D 20   F6               BRA     MELDL1

 054F 86   3A        MELDL2 LDA     #':       End line with ':'
 0551 A7   1F                STA    -1,X
 0553 9D   0C                JSR    PUTCH     Display it
 0555 9F   45                STX    INBFPT    Save Input-Buf pointer
 0557 7E   0757              JMP    LIST6
                     *
                     * EXECUTE BACKSPACE OR CURSOR-LEFT
                     *
 055A 8C 44F7        BACKSP CMPX #INPBUF At start of Input-Buffer?
 055D 27 1D                  BEQ    BACK2     Yes. Check Cursor
 055F 30 1F                  LEAX -1,X        No. Backspace by 1
 0561 B1 0104                CMPA CLEFT       Cursor Left?
 0564 1027 FF6C              LBEQ LINE1       Yes
 0568 B6 CC07                LDA    TTYBE     Get echo-char
 056B 81 08                  CMPA #BS         =BS?
 056D 26 08                  BNE    BACK1     No
 056F 86 20                  LDA    #SPACE    Output SPACE
 0571 BD 27AA                JSR    CHROUT
 0574 B6 CC07                LDA    TTYBE     Get echo-char
 0577 BD 27AA        BACK1 JSR      CHROUT    Output char
 057A 20 1A                  BRA    RT2       Back to Input routine

 057C B1 0104        BACK2   CMPA   CLEFT     Cursor Left?
 057F 1026 FF1A              LBNE   LINEIN    No. Back to Line-Input
 0583 20 0D                  BRA    RT1       Yes. Stay put
                     *
                     * EXECUTE CURSOR-RIGHT
                     *
 0585 A6   80        RIGHTC LDA     0,X+      Get char
 0587 81   0D                CMPA #CR         At extreme right?
 0589 26   0B                BNE    RT2       No. Move to right
 058B 30   1F                LEAX -1,X        Yes. Back up

 058D B6   0104              LDA    CLEFT
 0590 9D   0C                JSR    PUTCH     Move cursor back
 0592 86   07        RT1     LDA    #BELL
 0594 9D   0C                JSR    PUTCH     Warning beep!
 0596 7E   04D4      RT2     JMP    LINE1     and back for more
                     *
                     * EXPRESS CURSOR LEFT/RIGHT
                     *
 0599 8E   010D      EXPRES LDX     #HOMEUP Do non-std HomeUp
 059C BD   0454              JSR    OUTST1    Output HomeUp seq
 059F B6   44A9              LDA    HOMEFG
 05A2 26   06                BNE    XPRES1
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   18

 05A4 7C   44A9             INC    HOMEFG    Clear. Set Flag
 05A7 7E   049D             JMP    LINEIN    and go to left

 05AA 7F 44A9        XPRES1 CLR     HOMEFG
 05AD B6 0105                LDA    CRIGHT
 05B0 8E 44F7                LDX    #INPBUF Point to Input-Buf
 05B3 E6 80          XPRES2 LDB     0,X+      Get char and bump pointer
 05B5 C1 0D                  CMPB #CR         End of Line?
 05B7 1027 FF17              LBEQ LINE03      Yes. Go back to input
 05BB 9D 0C                  JSR    PUTCH     No. Cursor right on Screen
 05BD 20 F4                  BRA    XPRES2
                     *
                     * RECALL LAST-ENTERED LINE FOR EDITING
                     *
 05BF B6 0107        RECALL LDA     FF
 05C2 9D 0C                  JSR    PUTCH     Clear Screen
 05C4 A6 80          RECAL1 LDA     0,X+      Get char and bump Pointer
 05C6 81 0D                  CMPA #CR         CR?
 05C8 1027 FF06              LBEQ LINE03      Yes. All done
 05CC 9D 0C                  JSR    PUTCH     No. Display it
 05CE 20 F4                  BRA    RECAL1    and back for next char
                     *
                     * INSERT A CHARACTER IN LINE
                     *
 05D0 1F   13        INSCHR TFR     X,U       Copy X into U
 05D2 86   20                LDA    #SPACE
 05D4 E6   C4        INSCH1 LDB     0,U       Get char
 05D6 A7   C0                STA    0,U+      Save previous
 05D8 81   0D                CMPA #CR         End of Line?
 05DA 27   06                BEQ    INSCH2    Yes. Leave
 05DC 9D   0C                JSR    PUTCH     No. Display it
 05DE 1F   98                TFR    B,A       New 'previous'
 05E0 20   F2                BRA    INSCH1    and back for more

 05E2 33   5F        INSCH2 LEAU -1,U         Sit on CR
 05E4 20   18                BRA    RSTCSR    Locate insertion-point
                     *
                     * DELETE CHARACTER FROM LINE
                     *
 05E6 1F   13        DELCHR TFR     X,U       Duplicate pointer
 05E8 A6   C4                LDA    0,U       Get current char
 05EA 81   0D                CMPA #CR         At end of line?
 05EC 27   A4                BEQ    RT1       Yes. Don't delete

 05EE A6   41        DELCH1 LDA    1,U       Get next char
 05F0 A7   C0               STA    0,U+      and compress it to left. Bump pointer
 05F2 81   0D               CMPA   #CR       CR?
 05F4 27   04               BEQ    DELCH2    Yes. Job finished
 05F6 9D   0C               JSR    PUTCH     No. Display char
 05F8 20   F4               BRA    DELCH1    and back for another

 05FA 86   20        DELCH2 LDA    #SPACE
 05FC 9D   0C               JSR    PUTCH     Blank last char on screen
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE     19

                     * BRING CURSOR BACK TO INSERT-POINT

 05FE B6 0104        RSTCSR LDA     CLEFT
 0601 34 40          RSTCS1 PSHS U
 0603 AC E1                  CMPX 0,S++      Same as Buf-Pointer?
 0605 1027 FECB              LBEQ LINE1      Yes. Job complete
 0609 9D 0C                  JSR    PUTCH    No. Cursor Left
 060B 33 5F                  LEAU -1,U       Keep track in Buffer
 060D 20 F2                  BRA    RSTCS1   and keep going
                     *
                     * EXECUTE BREAK
                     *
 060F 32   62        BREAK LEAS 2,S          Adjust SP
 0611 96   25                LDA    INPTWT   Check Waiting-for-Input flag
 0613 27   0B                BEQ    ERR22B   Clear. Error-Code 34
 0615 32   63                LEAS 3,S        Adjust SP
 0617 9E   83        BREAK1 LDX     CLINAD   Set. Get Current-Line address
 0619 9F   D9                STX    HALTAD   Save in Halt-address
 061B 5F                     CLRB
 061C D7   25                STB    INPTWT   Clear Waiting-for-Input Flag and
 061E D7   23                STB    HALTFG   Halt-Flag

 0620 86   22      ERR22B LDA     #$22      Error-Code 34 (Programmable ^C Trap)
 0622 7E   0B6D            JMP    ERROR0
                   *
                   * EXECUTE TRACE COMMAND
                   *
 0625 BD   2207    TRACE JSR      EVALSB    Evaluate single-byte to HEX
 0628 81   01              CMPA #1
 062A 26   02              BNE    TRACE0
 062C 86   FF              LDA    #$FF
 062E 97   87      TRACE0 STA     TRCFLG
 0630 7E   0284            JMP    STENDC    Check statement-Ending and continue
                   *
                   * DISPLAY LINE # FOR 'TRACE'
                   *
 0633 81   FF      TRACER CMPA #$FF         Test Trace-Flag
 0635 27   02              BEQ    TRACE1    Continuous Trace
 0637 0A   87              DEC    TRCFLG    Limited Trace. Decr count
 0639 8E   3E23    TRACE1 LDX     #LBRKT    Point to [
 063C BD   0454            JSR    OUTST1    and output it
 063F 9E   83              LDX    CLINAD    Get Current-Line address
 0641 5F                   CLRB             No leading spaces
 0642 BD   0F35            JSR    OUTLIN    Output Line # in decimal
 0645 8E   3E3E            LDX    #RBRKT    Point to ]
 0648 BD   0454            JSR    OUTST1    and output it
 064B AD   9F D3E5         JSR    [INCHNE] then wait to continue
 064F 81   0D              CMPA #CR         Cancel Trace?
 0651 26   05              BNE    TRACE2    No
 0653 0F   87              CLR    TRCFLG    Yes
 0655 7E   045F            JMP    LINEND    Terminate Line

 0658 39             TRACE2 RTS
                     *
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER       PAGE   20

                     * EXECUTE MON COMMAND
                     *
 0659 B6   CCFC      MON     LDA    PSTATE     Check if Print-Spooling
 065C 26   03                BNE    MON1       Yes
 065E 7E   F814              JMP    MONITR     Go to Monitor

 0661 86   1B        MON1    LDA    #$1B       Set. Error-Code 27 (Not allowed while Printing)
 0663 7E   0B6B              JMP    ERROR      Process Error
                     *
                     * EXECUTE NEW COMMAND
                     *
 0666 8E   49F8      NEW     LDX    #SRCBUF    Point to Source-Buffer
 0669 9F   5D                STX    VARPTR     Initialise V-Stack Pointer
 066B 9F   61                STX    VAREND     and V-Stack-End to Start-of-Source
 066D CC   0000              LDD    #0         Set address of
 0670 DD   30                STD    LOWLIN     Low-Line addr to 0000
 0672 97   DB                STA    PRGTYP     and set Program-Type to .BAS

                     * EXECUTE CLEAR COMMAND

 0674 0F   87        CLEAR   CLR    TRCFLG     Clear Trace-Flag
 0676 BD   D403              JSR    FMSCLS     Close all files
 0679 BD   02ED              JSR    INWKSP     Initialise Workspace
 067C 7E   016E              JMP    WARMST     RBASIC Warm-Start
                     *
                     * EXECUTE CONTINUE COMMAND
                     *
 067F 96   23        CONT    LDA    HALTFG    Test Halt-Flag
 0681 26   07                BNE    ERR3FA    Set. Error-Code 63
 0683 DC   D9                LDD    HALTAD    Get address of line at which we stopped
 0685 DD   81                STD    NXLNAD    and store as Next-Line address
 0687 7E   0234              JMP    RUN4

 068A 86   3F        ERR3FA LDA     #$3F       Error-Code 63 (Can't Continue)
 068C 7E   0B6B              JMP    ERROR      Process Error
                     *
                     * EXECUTE EDIT COMMAND
                     *
 068F 7C   44A7      EDIT    INC    EDITFG     Set Edit-Flag
 0692 B6   0107              LDA    FF
 0695 9D   0C                JSR    PUTCH      Clear Screen

                     * EXECUTE LIST COMMAND

 0697 CC   0000      LIST    LDD    #0         Start-of-List
 069A DD   3D                STD    LSTBEG     to 0000
 069C 83   0001              SUBD   #1         Set End-of-List
 069F DD   3F                STD    LSTEND     to max
 06A1 BD   02DC              JSR    PARSWB     Parse Line into Work-Buffer
 06A4 BD   0F26      LIST2   JSR    SKIPS1     Skip SPACEs and get char
 06A7 2A   0F                BPL    LIST3      Statement
 06A9 81   A2                CMPA   #$A2       Variable. Line #?
 06AB 26   21                BNE    LIST4      No
 06AD EC   21                LDD    1,Y        Yes. Get Line # and
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE     21

 06AF DD   3D                STD    LSTBEG    save in Start-of-List
 06B1 DD   3F                STD    LSTEND    and in End-of-List
 06B3 31   23                LEAY   3,Y       Bypass Line #
 06B5 BD   0F26              JSR    SKIPS1    Skip SPACEs and get char
 06B8 81   6F        LIST3   CMPA   #$6F      '-'?
 06BA 26   12                BNE    LIST4     No
 06BC BD   0F24              JSR    SKIPSP    Yes. Skip next SPACEs and get char
 06BF 81   A2                CMPA   #$A2      Line #?
 06C1 27   05                BEQ    LIST31    Yes
 06C3 CC   FFFF              LDD    #$FFFF    No. Set to max
 06C6 20   04                BRA    LIST32

 06C8 EC   21        LIST31 LDD     1,Y       Get Line # and
 06CA 31   23               LEAY    3,Y       bump past it
 06CC DD   3F        LIST32 STD     LSTEND    Save in End-of-List

                     * GOT ALL INFO. NOW FIND FIRST LINE #, AND LIST

 06CE 9E 30          LIST4  LDX     LOWLIN    Get address of Lowest-Line #
 06D0 1027 008B             LBEQ    LIST7     None there. Leave
 06D4 9F 59          LIST5 STX      LINADR    Save in Line-Adr
 06D6 9F 57                 STX     WKBFPT    and in Work-Buf pointer
 06D8 F6 44A8               LDB     MELDFG    Melding lines?
 06DB 26 20                 BNE     LIST50    Yes
 06DD EC 84          LIST56 LDD     0,X       No. Get Line #
 06DF 1093 3D               CMPD    LSTBEG    Same as List-Beg?
 06E2 25 73                 BCS     LIST6     Lower
 06E4 1093 3F               CMPD    LSTEND    Same as List-End?
 06E7 23 0A                 BLS     LIST55

                     * ALLOW 'LIST 10,30,50', ETC

 06E9 A6   A4                LDA    0,Y       Get current char
 06EB 81   72                CMPA   #$72      ','?
 06ED 26   70                BNE    LIST7     No
 06EF 31   21                LEAY   1,Y       Yes. Bump past ','
 06F1 20   B1                BRA    LIST2     Do next lot

 06F3 CC   44F7      LIST55 LDD     #INPBUF   <=. Point to Input-Buf
 06F6 DD   45               STD     INBFPT    Set Input-Buf pointer to Start
 06F8 F6   44A7             LDB     EDITFG    Test Edit-Flag
 06FB 27   03               BEQ     LIST51    Clear
 06FD 5F             LIST50 CLRB              Set. No leading zeroes
 06FE 20   05               BRA     LIST52

 0700 BD   045F      LIST51 JSR     LINEND    <=. Terminate Line
 0703 C6   01               LDB     #1        Leading spaces
 0705 B6   48B5      LIST52 LDA     PDELFG    Test for Block-Delete
 0708 26   67               BNE     PDEL1     Go to it
 070A 9E   57               LDX     WKBFPT    Get Pointer to Work-Buffer
 070C B6   44A8             LDA     MELDFG    Melding?
 070F 27   1D               BEQ     LIST53    No
 0711 30   04               LEAX    4,X       Yes. Bypass Line # refs
 0713 A6   84               LDA     0,X       Get char
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER     PAGE    22

 0715 2B   12                BMI    LISTZ     Variable
 0717 81   7E                CMPA   #$7E      Spaces?
 0719 2D   0E                BLT    LISTZ     No
 071B 80   7D                SUBA   #$7D      Yes
 071D 30   86                LEAX   A,X       Bypass Space codes
 071F 86   20                LDA    #SPACE    Replace with single Space
 0721 9D   0C                JSR    PUTCH
 0723 DE   45                LDU    INBFPT    Save internally
 0725 A7   C0                STA    0,U+
 0727 DF   45                STU    INBFPT
 0729 BD   080C      LISTZ   JSR    LINOT1    Output data
 072C 20   08                BRA    LIST54    and now edit

 072E BD   0805      LIST53 JSR     LINOUT    Output Line # and the Line itself
 0731 F6   44A7             LDB     EDITFG    Editing?
 0734 27   21               BEQ     LIST6     No
 0736 9E   45        LIST54 LDX     INBFPT
 0738 86   0D               LDA     #CR
 073A A7   84               STA     0,X       End Buffer with a CR
 073C B6   0103             LDA     HOME
 073F 9D   0C               JSR     PUTCH     Put cursor at start of line
 0741 CE   010D             LDU     #HOMEUP
 0744 A6   C0        LISTX LDA      0,U+
 0746 81   04               CMPA    #EOT      End of line?
 0748 27   04               BEQ     LISTY
 074A 9D   0C               JSR     PUTCH
 074C 20   F6               BRA     LISTX

 074E CC   0000      LISTY   LDD    #0        Reset Edit-Flag
 0751 FD   44A7              STD    EDITFG    and Meld-Flag
 0754 7E   0193              JMP    WARM3

 0757 9E 59          LIST6   LDX    LINADR    Get Line-Adr
 0759 AE 02                  LDX    2,X       Get address of next Line
 075B 1026 FF75              LBNE   LIST5     and do again if not = 0
 075F BD 045F        LIST7   JSR    LINEND    Terminate Line
 0762 7F 48B5                CLR    PDELFG    Reset Block-Delete Flag
 0765 7E 0172                JMP    WARM1     Return to RBASIC Warm-Start
                     *
                     * EXECUTE PDEL COMMAND - BLOCK-DELETE
                     *
 0768 7C   48B5      PDEL    INC    PDELFG    Set Block-Delete Flag
 076B 7F   CC09              CLR    PAUSFG    Clear Pause-Flag
 076E 7E   0697              JMP    LIST      and set it all up

 0771 9E   59        PDEL1   LDX    LINADR
 0773 AE   02                LDX    2,X       Check for final line
 0775 27   3A                BEQ    PDEL5     Terminate deleting
 0777 9E   57                LDX    WKBFPT    Point to Work-Buffer
 0779 34   10                PSHS   X         Save pointer
 077B BD   0805              JSR    LINOUT    and output Line
 077E 35   10                PULS   X         Recover pointer
 0780 9F   57                STX    WKBFPT    and restore it
 0782 BD   045F              JSR    LINEND    Terminate Line
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER      PAGE   23

 0785 8E   3E27              LDX    #PDELMS
 0788 BD   0454              JSR    OUTST1    Output message
 078B BD   2806      PDEL2   JSR    CHRIN     Get response
 078E 84   5F                ANDA   #$5F      To upper-case
 0790 81   0D                CMPA   #CR       Quit?
 0792 27   CB                BEQ    LIST7     Yes. Leave
 0794 81   4E                CMPA   #'N       NO?
 0796 27   BF                BEQ    LIST6     Yes. Bypass this line
 0798 81   59                CMPA   #'Y       YES?
 079A 26   0A                BNE    PDEL4     No. Repeat request
 079C 9E   57        PDEL3   LDX    WKBFPT    Point to Work-Buffer
 079E BD   03EF              JSR    DELETE    Go delete line
 07A1 9E   59                LDX    LINADR    Next Line
 07A3 7E   06DD              JMP    LIST56    Check for more

 07A6 B6   0104      PDEL4   LDA    CLEFT     Back one char
 07A9 9D   0C                JSR    PUTCH
 07AB 86   07                LDA    #BELL     and beep
 07AD 9D   0C                JSR    PUTCH
 07AF 20   DA                BRA    PDEL2     and repeat request

 07B1 BD   045F      PDEL5   JSR    LINEND    Terminate line
 07B4 9E   57                LDX    WKBFPT
 07B6 BD   0F35              JSR    OUTLIN    Display Line-Number
 07B9 8E   3E08              LDX    #LASTMS
 07BC BD   0454              JSR    OUTST1    Display "Not deleted"
 07BF 20   9E                BRA    LIST7
                     *
                     * EXECUTE SCALE COMMAND
                     *
 07C1 BD 02DC        SCALE JSR      PARSWB    Parse Line in Work-Buffer
 07C4 BD 0F26                JSR    SKIPS1    Skip SPACEs and get char
 07C7 2A 1B                  BPL    SCALE1    Statement
 07C9 D6 DB                  LDB    PRGTYP    Check Program-Type Flag
 07CB 26 32                  BNE    ERR43A    BAC File. Error-Code 67
 07CD 9E 30                  LDX    LOWLIN    BAS File. Get LowLine address
 07CF 26 2E                  BNE    ERR43A    Not 0. Error-Code 67
 07D1 81 A2                  CMPA #$A2        Variable. Double-byte?
 07D3 26 27                  BNE    ERR34B    No. Syntax Error
 07D5 EC 21                  LDD    1,Y       Yes. Get Scale-Factor
 07D7 1083 0006              CMPD #6          =6?
 07DB 2E 1F                  BGT    ERR34B    >. Syntax Error
 07DD D7 F5                  STB    SCALFG    Set Scale-Factor
 07DF 0C 23                  INC    HALTFG    Set Halt-Flag
 07E1 7E 0172                JMP    WARM1     Return to RBASIC Warm-Start
                     *
                     * DISPLAY CURRENT SCALE-FACTOR
                     *
 07E4 81   7D        SCALE1 CMPA #$7D         CR?
 07E6 26   14                BNE    ERR34B    No. Syntax Error
 07E8 CC   0000              LDD    #0        Yes. Set for Terminal input, and
 07EB DD   DD                STD    CHANFG    clear Channel flag
 07ED D7   6B                STB    OUTSLF    Set for Terminal Output
 07EF D6   F5                LDB    SCALFG    Get Scale-Factor
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER    PAGE   24

 07F1 DD   91               STD    MATH0       and put in M0
 07F3 8E   0091             LDX    #MATH0      Point to M0
 07F6 BD   0F35             JSR    OUTLIN      Output Scale-Factor as Decimal #
 07F9 7E   0172             JMP    WARM1       Return to RBASIC Warm-Start

 07FC 7E   0B61      ERR34B JMP    SYNERR      Error-Code 52 (Syntax Error)

 07FF 86   43        ERR43A LDA     #$43      Error-Code 67 (Can't change Scale-factor)
 0801 7E   0B6B              JMP    ERROR     Process Error
                     *
                     * DISPLAY AN RBASIC SOURCE-LINE
                     * Enter at Linout
                     *
 0804 39             LINOT4 RTS               Go home

 0805 BD   0F35      LINOUT JSR     OUTLIN     Output Line-Number
 0808 9E   57                LDX    WKBFPT     Get Work-Buf pointer
 080A 30   04                LEAX 4,X          Point to data
 080C A6   80        LINOT1 LDA     0,X+       Get data char and bump pointer
 080E 9F   57                STX    WKBFPT     Save pointer
 0810 81   7D                CMPA #$7D         CR?
 0812 27   F0                BEQ    LINOT4     Yes. Go home
 0814 81   63                CMPA #$63         No. Below OPERATOR-TABLE?
 0816 22   2B                BHI    OUTOP      >63 is OPERATOR. Output it
 0818 8E   3F9C              LDX    #STATBL    Point to STATEMENT Table
 081B 9F   2E        LINOT2 STX     LINPOS     Save in Line-Position Pointer
 081D 30   01                LEAX 1,X          and search for NUL
 081F 6D   80        LINOT3 TST     0,X+
 0821 26   FC                BNE    LINOT3     Step through Table till NUL found
 0823 A1   80                CMPA 0,X+         then check for Token match
 0825 26   F4                BNE    LINOT2     No match. Check next item
                     *
                     * OUTPUT STATEMENT-NAME
                     *
 0827 9E   2E        STOUT LDX      LINPOS     Point to Statement-Name
 0829 34   02                PSHS A            Save Token
 082B A6   80        STOUT1 LDA     0,X+       Get next char
 082D 27   05                BEQ    STOUT2     Leave if NUL, otherwise
 082F BD   27AA              JSR    CHROUT     output char
 0832 20   F7                BRA    STOUT1     and back for another

 0834 35   02        STOUT2 PULS A            Recover Token
 0836 9E   57                LDX    WKBFPT    Get Work-Buf pointer
 0838 81   05                CMPA #5          REM?
 083A 27   04                BEQ    STOUT3    Yes
 083C 81   17                CMPA #$17        No. DATA?
 083E 26   CC                BNE    LINOT1    No. Continue with Line
 0840 7E   08C9      STOUT3 JMP     OUTVK     Output Variable in ASCII
                     *
                     * OUTPUT ASCII CODE FOR TOKEN IN OPERATOR-TABLE
                     * AND/OR # OF INITIAL SPACES IN LINE
                     *
 0843 4D             OUTOP TSTA
 0844 2B   43                BMI    OUTVAR    Variable. Output Variable in ASCII
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   25

 0846 81   7F                CMPA #$7F        Statement. 7F?
 0848 27   2A                BEQ    OUTOP5    Yes. Output multiple-spaces
 084A 81   66                CMPA #$66        No. <>?
 084C 26   0E                BNE    OUTOP3    No. Go identify it
 084E 86   3C                LDA    #'<       Yes. So output it
 0850 BD   27AA              JSR    CHROUT    Output char
 0853 86   3E                LDA    #'>
 0855 BD   27AA      OUTOP1 JSR     CHROUT    Output char
 0858 9E   57        OUTOP2 LDX     WKBFPT    Get Work-Buf pointer
 085A 20   B0                BRA    LINOT1    Go identify token
                     *
                     * IDENTIFY AND OUTPUT OPERATOR
                     *
 085C 8E   41C2      OUTOP3 LDX     #OPTAB+1 Point to Operator-Table
 085F A1   81        OUTOP4 CMPA 0,X++        Identify Operator-Token
 0861 26   FC                BNE    OUTOP4    in Operator-Table
 0863 34   02                PSHS A           Save Token
 0865 A6   1D                LDA    -3,X      Get ASCII equivalent
 0867 BD   27AA              JSR    CHROUT    Output char
 086A 35   02                PULS A           Recover Token
 086C 81   67                CMPA #$67        Is it <?
 086E 24   E8                BCC    OUTOP2    >=67
 0870 86   3D                LDA    #'=       <67. Put '=' in A
 0872 20   E1                BRA    OUTOP1    and output it
                     *
                     * OUTPUT MULTIPLE SPACES
                     *
 0874 9E   57        OUTOP5 LDX     WKBFPT    Get Work-Buf pointer
 0876 E6   80                LDB    0,X+      Get count and bump and
 0878 9F   57                STX    WKBFPT    save pointer
 087A 5A                     DECB             Dec count
 087B BD   126F              JSR    OUTSPC    Output B+1 SPACEs
 087E 20   D8                BRA    OUTOP2
                     *
                     * LOCATE VARIABLE ON STACK, AND POINT TO ITS VALUE
                     *
 0880 D3   5D        LOCVAL ADDD VARPTR       Add D to V-Stack pointer
 0882 DD   5F                STD    VARADR    Save in Var-Adr
 0884 1F   01                TFR    D,X       Get it into X and
 0886 30   03                LEAX 3,X         bump by 3
 0888 39                     RTS
                     *
                     * TRANSLATE VARIABLE-TYPE CODE TO ASCII AND OUTPUT IT
                     *
 0889 85   20        OUTVAR BITA #$20         Constant?
 088B 26   2A                BNE    OUTVG     Yes
 088D 85   40                BITA #$40        No. Pre-defined?
 088F 26   59                BNE    OUTVQ     Yes
 0891 EC   81        OUTVA LDD      0,X++     No. Get offset
 0893 9F   57                STX    WKBFPT    Save Work-Buf pointer
 0895 8D   E9                BSR    LOCVAL    Locate current value of Variable

                     * OUTPUT VARIABLE-NAME
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER     PAGE   26

 0897 30   1D        OUTVB   LEAX   -3,X     Point to Var-Code
 0899 A6   01                LDA    1,X      Get 1st char of Name
 089B BD   27AA              JSR    CHROUT   Output char
 089E A6   02                LDA    2,X      Get 2nd char
 08A0 27   03                BEQ    OUTVC    =0
 08A2 BD   27AA              JSR    CHROUT   Output char
 08A5 A6   84        OUTVC   LDA    0,X      Get Var-Type
 08A7 85   01                BITA   #1       '$'?
 08A9 27   04                BEQ    OUTVD    No
 08AB 86   24                LDA    #'$      Yes. Output it
 08AD 20   A6                BRA    OUTOP1

 08AF 85   04        OUTVD   BITA   #4       '%'?
 08B1 27   A5                BEQ    OUTOP2   No
 08B3 86   25                LDA    #'%      Yes
 08B5 20   9E                BRA    OUTOP1
                     *
                     * OUTPUT A CONSTANT'S VALUE IN ASCII, AFTER SKIPPING HEX EQUIVALENT
                     *
 08B7 85   02        OUTVG BITA #2            No. Line #?
 08B9 26   25                BNE    OUTVP     Yes. Output it
 08BB 30   01                LEAX 1,X
 08BD 85   01                BITA #1          '$'?
 08BF 26   08                BNE    OUTVK     Yes. Bump pointer by 1
 08C1 30   01                LEAX 1,X
 08C3 85   04                BITA #4          No. '%'?
 08C5 26   02                BNE    OUTVK     Yes. Bump pointer by 2
 08C7 30   06                LEAX 6,X         No. It's FP. Bump by 8
 08C9 E6   80        OUTVK LDB      0,X+      Get # of digits
 08CB 27   0E                BEQ    OUTVN     NUL-string

                     * OUTPUT 'B' CHARACTERS IN ASCII, BYPASSING NULs AND CRs

 08CD A6   80        OUTVL   LDA    0,X+     Get next char
 08CF 27   07                BEQ    OUTVM    Bypass NULs
 08D1 81   0D                CMPA   #CR
 08D3 27   03                BEQ    OUTVM    Yes. Bypass it
 08D5 BD   27AA              JSR    CHROUT   No. Output char
 08D8 5A             OUTVM   DECB            Dec count
 08D9 26   F2                BNE    OUTVL    Not done yet. Back for more
 08DB 9F   57        OUTVN   STX    WKBFPT   All done. Save Work-Buf pointer
 08DD 7E   080C              JMP    LINOT1
                     *
                     * OUTPUT A LINE-NUMBER
                     *
 08E0 5F             OUTVP CLRB               No leading zeroes
 08E1 BD   0F35              JSR    OUTLIN    Output Line # as Decimal
 08E4 9E   57                LDX    WKBFPT    Get Work-Buf pointer
 08E6 30   02                LEAX 2,X         Bump by 2
 08E8 20   F1                BRA    OUTVN
                     *
                     * OUTPUT A PRE-DEFINED VARIABLE
                     *
 08EA 81   D0        OUTVQ CMPA #$D0          Subscripted?
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER    PAGE   27

 08EC 27   0C                BEQ    OUTVR     Yes
 08EE 86   46                LDA    #'F       No. Output 'FN'
 08F0 BD   27AA              JSR    CHROUT    Output char
 08F3 86   4E                LDA    #'N
 08F5 BD   27AA              JSR    CHROUT    Output char
 08F8 20   97                BRA    OUTVA

 08FA 30   02        OUTVR   LEAX   2,X       Bump by 2
 08FC 9F   57                STX    WKBFPT    Save Work-Buf pointer
 08FE 20   97                BRA    OUTVB
                     *
                     * EXECUTE SAVE COMMAND
                     *
 0900 BD   0A41      SAVE    JSR    CKSRCE    Check if BAS File
 0903 BD   25A4              JSR    SETBAS    Set ext to .BAS
 0906 BD   2787              JSR    OPENW     Open Channel for WRITE
 0909 86   80                LDA    #$80      Put DISK code in A and
 090B 97   6B                STA    OUTSLF    select DISK as output
 090D 9E   30                LDX    LOWLIN    Get LowLine address
 090F 27   13                BEQ    SAVE2     =0. No program
 0911 9F   59        SAVE1 STX      LINADR    Save X in LineAdr
 0913 9F   57                STX    WKBFPT    and in Work-Buf pointer
 0915 5F                     CLRB             No leading zeroes
 0916 BD   0805              JSR    LINOUT    Output an RBASIC Line
 0919 86   0D                LDA    #CR
 091B BD   27AA              JSR    CHROUT    Output CR
 091E 9E   59                LDX    LINADR    Get LineAdr
 0920 AE   02                LDX    2,X       and then Next-Line address
 0922 26   ED                BNE    SAVE1     Not 0. Go back for another line

                     * OUTPUT COMPLETED

 0924 0F   6B        SAVE2   CLR    OUTSLF    Set output back to Terminal
 0926 8E   C840              LDX    #SYSFCB   Point to FCB
 0929 BD   25D6              JSR    CLFILE    Close File
 092C 7E   0172              JMP    WARM1     Return to RBASIC Warm-Start
                     *
                     * EXECUTE APPEND COMMAND
                     *
 092F 96 DB          APPEND LDA     PRGTYP    BAS File?
 0931 1026 022C              LBNE SYNERR      No. Syntax error
 0935 7C 48B4                INC    APPNDF    Set Append-Flag

                     * EXECUTE LOAD COMMAND

 0938 BD   D403      LOAD    JSR    FMSCLS    Close all files
 093B BD   25A4              JSR    SETBAS    Set ext to .BAS
 093E 8D   03                BSR    BASFIN    Xfer .BAS file to Source-Buf
 0940 7E   0674              JMP    CLEAR     Clear all variables
                     *
                     * TRANSFER .BAS DISK-FILE TO INPUT BUFFER, PARSE IT,
                     * THEN TRANSFER TO SOURCE BUFFER
                     *
 0943 7F   48B6      BASFIN CLR     DEGSW     Set to Radians
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER     PAGE   28

 0946 B6   48B4             LDA     APPNDF    Check for Append
 0949 26   0E               BNE     APPND1    and append File
 094B CC   49F8             LDD     #SRCBUF   Point to Source-Buffer
 094E DD   5D               STD     VARPTR    Init V-Stack pointer
 0950 DD   61               STD     VAREND    and V-Stack-end
 0952 CC   0000             LDD     #0        Init Lowest-Line addr
 0955 DD   30               STD     LOWLIN
 0957 97   DB               STA     PRGTYP    Set to BAS File
 0959 7F   48B4      APPND1 CLR     APPNDF    Clear Append-Flag
 095C BD   25EB             JSR     RFILE     Set to Read File

                     * INPUT A LINE OF CODE FROM DISK TO INPUT BUFFER

 095F 8E   44F7      DSKIN   LDX    #INPBUF   Point to Input-Buf
 0962 9F   45                STX    INBFPT    and save in Input-Buf pointer

                     * GET LINE FROM DISK

 0964 9F   3B        DSKIN1 STX     TEMP2
 0966 8E   C840             LDX     #SYSFCB   Point to FCB
 0969 BD   D406             JSR     FMS       Read char
 096C 26   1E               BNE     DSKERR    Error. Check it
 096E 9E   3B               LDX     TEMP2     Recover Input-Buf pointer
 0970 A7   80               STA     0,X+      Store char
 0972 81   0D               CMPA    #CR       End-of-Line?
 0974 26   EE               BNE     DSKIN1    No

                     * PARSE AND TRANSFER TO SOURCE-BUFFER

 0976 9E   45                LDX    INBFPT    =CR. Get Input-Buf pointer
 0978 BD   3731              JSR    IGNSPC    Ignore SPACEs
 097B 9F   45                STX    INBFPT    Save in Input-Buf pointer
 097D BD   0BEE              JSR    ALFNM2    Classify as alpha, numeric, or neither
 0980 C1   02                CMPB   #2        Numeric?
 0982 26   1B                BNE    ERR33A    No. Error-Code 51
 0984 BD   0B23              JSR    PARSLN    Yes. Parse Line in Input-Buf and tokenise
 0987 BD   0394              JSR    INSERT    Insert new line in Source-Buf
 098A 20   D3                BRA    DSKIN     and back for another
                     *
                     * PROCESS DISK ERROR
                     *
 098C A6 01          DSKERR LDA     1,X       Get Error-Code
 098E 81 08                  CMPA #8          End-of-File?
 0990 1026 1C65              LBNE FCBERR      No

                     * ALL DONE

 0994 8E   49F8              LDX    #SRCBUF   Point to Source-Buffer
 0997 9F   30                STX    LOWLIN    and save in LowLine address
 0999 8E   C840              LDX    #SYSFCB   Point to FCB
 099C 7E   25D6              JMP    CLFILE    Set FCB to Close File

 099F 7E   0B65      ERR33A JMP     ERR33B    Error-Code 51 (Illegal char in Line)
                     *
RBASIC by R. Jones   31 May 1988        4-7-4 TSC ASSEMBLER   PAGE   29

                     * INPUT A COMPILED FILE FROM DISK INTO SOURCE-BUFFER
                     *
 09A2 BD   259D      BACFIN JSR     SETBAC    Set ext to .BAC
 09A5 7F   48B6      BACF1 CLR      DEGSW     Set to Radians
 09A8 8E   C840              LDX    #SYSFCB
 09AB BD   25EB              JSR    RFILE     Set for Read File
 09AE CC   0000              LDD    #0
 09B1 DD   30                STD    LOWLIN    Set LowLine addr to 0000
 09B3 4A                     DECA             Binary File
 09B4 A7   88 3B             STA    59,X
 09B7 CC   49F8              LDD    #SRCBUF Point to Source-Buffer
 09BA DD   5D                STD    VARPTR    and init V-Stack pointer,
 09BC DD   61                STD    VAREND    V-Stack-End,
 09BE DD   59                STD    LINADR    and Line-Adr
 09C0 0C   DB                INC    PRGTYP    Set Program-Type to .BAC
 09C2 BD   25C9              JSR    RWFILE    Read a byte
 09C5 81   89                CMPA #$89        Start-of-File code?
 09C7 26   6B                BNE    ERR41A    No. Error-Code 65
 09C9 0F   6A                CLR    CMPLCD    Yes. Clear Compile-code
 09CB 9E   59                LDX    LINADR    Get LineAdr

                     * INPUT A COMPILED LINE FROM DISK TO SOURCE-BUFFER

                     * GET CHAR-COUNT

 09CD 8D 6A          BACLIN BSR     BACINA     Get char from Disk and decompile
 09CF 4D                    TSTA
 09D0 27 32                 BEQ     BACF2      =0
 09D2 34 02                 PSHS    A          Not 0
 09D4 1F 89                 TFR     A,B
 09D6 4F                    CLRA
 09D7 D3 59                 ADDD    LINADR     Add to LineAdr
 09D9 C3 0002               ADDD    #2         +2
 09DC 1093 21               CMPD    MEMTOP     Over the top?
 09DF 35 04                 PULS    B
 09E1 1022 F964             LBHI    ERR50A     Yes. Error-Code 80

                     * GET LINE #

 09E5 8D   52               BSR     BACINA     No. Get char from Disk and decompile
 09E7 A7   80               STA     0,X+       Store in Source-Buf and bump pointer
 09E9 8D   4E               BSR     BACINA     Get char from Disk and decompile
 09EB A7   84               STA     0,X        Store in Source-Buf
 09ED 30   03               LEAX    3,X
 09EF C0   02               SUBB    #2         Dec count by 2

                     * GET COMPILED LINE

 09F1 8D   46        BACLN1 BSR     BACINA     Get char from Disk and decompile
 09F3 A7   80               STA     0,X+       Store in Source-Buf
 09F5 5A                    DECB               Dec count
 09F6 26   F9               BNE     BACLN1     Not done. Back for more
 09F8 9F   5D               STX     VARPTR     All done. Update V-Stack pointer
 09FA DE   59               LDU     LINADR     Get LineAdr
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE     30

 09FC DF   2A                STU    AUXPTR    Save in Aux. Pointer
 09FE AF   42                STX    2,U       Store address-of-next-line in correct location
 0A00 9F   59                STX    LINADR    and save in LineAdr
 0A02 26   C9                BNE    BACLIN    Keep inputting lines

                     * ALL DONE

 0A04 9E   2A        BACF2   LDX    AUXPTR    Get Start-of-Line
 0A06 6F   02                CLR    2,X       Set address of Next-Line to 0000
 0A08 6F   03                CLR    3,X
 0A0A BD   25C9              JSR    RWFILE    Read a byte
 0A0D 81   87                CMPA   #$87      End-of-File?
 0A0F 26   23                BNE    ERR41A    No. Error-Code 65
 0A11 BD   25C9              JSR    RWFILE    Yes. Get File-Length
 0A14 34   02                PSHS   A         ..
 0A16 BD   25C9              JSR    RWFILE    and
 0A19 1F   89                TFR    A,B       then
 0A1B 35   02                PULS   A         ..
 0A1D D3   5D                ADDD   VARPTR    add V-Stack pointer to # of bytes
 0A1F DD   61                STD    VAREND    and store in V-Stack-End
 0A21 BD   25C9              JSR    RWFILE    Read Scale-Factor
 0A24 97   F5                STA    SCALFG    and save in Flag
 0A26 CC   49F8              LDD    #SRCBUF   Get Source-Start
 0A29 DD   30                STD    LOWLIN    and store in LowLine address
 0A2B 8E   C840              LDX    #SYSFCB
 0A2E BD   25D6              JSR    CLFILE    Close File
 0A31 7E   0217              JMP    RUN1      and run the program

 0A34 86   41        ERR41A LDA     #$41      Error-Code 65 (Bad File - Won't Load)
 0A36 7E   0B6B              JMP    ERROR     Process Error
                     *
                     * INPUT A COMPILED CHAR FROM DISK INTO A. DECOMPILE IT
                     *
 0A39 BD   25C9      BACINA JSR     RWFILE    Read a byte
 0A3C 90   6A                SUBA CMPLCD      Adjust the
 0A3E 0C   6A                INC    CMPLCD    Compile-Code
 0A40 39             BACINB RTS
                     *
                     * CHECK FOR PRESENCE OF SOURCE-CODE
                     *
 0A41 0D   DB        CKSRCE TST     PRGTYP    Test Program-Type
 0A43 27   FB                BEQ    BACINB    BAS File, so go home
 0A45 86   40                LDA    #$40      BAC File. Error-Code 64 (Source not present)
 0A47 7E   0B6B              JMP    ERROR     Process Error
                     *
                     * EXECUTE COMPILE COMMAND
                     *
 0A4A 8D   F5        COMPIL BSR     CKSRCE    Check if BAS File
 0A4C BD   259D              JSR    SETBAC    Set ext to .BAC
 0A4F BD   2787              JSR    OPENW     Open Channel for WRITE
 0A52 86   FF                LDA    #$FF      Binary File
 0A54 A7   88 3B             STA    59,X
 0A57 9E   30                LDX    LOWLIN    Get LowLine address
 0A59 27   2C                BEQ    CMPIL2    No program there
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   31


 0A5B 86   89                LDA    #$89      Start-of-File code
 0A5D BD   25C9              JSR    RWFILE    Write it
 0A60 0F   6A                CLR    CMPLCD    Clear Compile-code
 0A62 9F   59        CMPIL1 STX     LINADR    Save LineAdr
 0A64 8D   31                BSR    LINCPL    Compile one line of Source to Disk
 0A66 9E   59                LDX    LINADR    Recover LineAdr
 0A68 AE   02                LDX    2,X       Point to address of next line
 0A6A 26   F6                BNE    CMPIL1    and compile it
 0A6C 4F                     CLRA             If no more - all done
 0A6D 8D   21                BSR    CHCMPL    Compile NUL to Disk
 0A6F 86   87                LDA    #$87      End-of-Compile code
 0A71 BD   25C9              JSR    RWFILE    Write it
 0A74 DC   61                LDD    VAREND    Get V-Stack-End address
 0A76 93   5D                SUBD VARPTR      Calculate File-Length
 0A78 34   04                PSHS B           and
 0A7A BD   25C9              JSR    RWFILE    output
 0A7D 35   02                PULS A           it
 0A7F BD   25C9              JSR    RWFILE    to Disk
 0A82 96   F5                LDA    SCALFG    Get Scale-Factor
 0A84 BD   25C9              JSR    RWFILE    Write it
 0A87 8E   C840      CMPIL2 LDX     #SYSFCB
 0A8A BD   25D6              JSR    CLFILE    Close File
 0A8D 7E   0172              JMP    WARM1     Return to RBASIC Warm-Start
                     *
                     * COMPILE ONE CHARACTER TO DISK
                     *
 0A90 9B   6A        CHCMPL ADDA CMPLCD       Add Compile-Code to A
 0A92 0C   6A                INC    CMPLCD    Bump Code
 0A94 7E   25C9              JMP    RWFILE    Write a byte
                     *
                     * TRANSFER ONE LINE OF TOKENISED SOURCE TO WORK-BUFFER.
                     * WHEN LINE IS COMPLETE TO CR, COMPILE IT AND WRITE TO DISK
                     *
 0A97 EC   84        LINCPL LDD     0,X       Get Line #
 0A99 30   04                LEAX 4,X         Bump past addresses
 0A9B 9F   2E                STX    LINPOS    Set Line-Position pointer
 0A9D 8E   45F7              LDX    #WORKBF Point to Work-Buf
 0AA0 ED   81                STD    0,X++     and store Line #
 0AA2 9F   57                STX    WKBFPT    Set Work-Buf pointer
 0AA4 86   02                LDA    #2        Count of 2
 0AA6 97   1D                STA    CHMVCT    into Char-Move Counter
 0AA8 9E   2E        LNCPL1 LDX     LINPOS    Recover Line-Position pointer
 0AAA A6   84        LNCPL2 LDA     0,X       Get char
 0AAC 2B   2E                BMI    VAR2WB    Variable. Transfer to Work-Buf
 0AAE 30   01                LEAX 1,X         Statement. Bump pointer
 0AB0 9F   2E                STX    LINPOS    Save Line-Position
 0AB2 81   17                CMPA #$17        DATA?
 0AB4 27   54                BEQ    DAT2WB    Yes. Move to Work-Buf
 0AB6 81   05                CMPA #5          No. REM?
 0AB8 27   49                BEQ    REM2WB    Yes. Move to Work-Buf
 0ABA 81   7E                CMPA #$7E        No. SPACE?
 0ABC 25   06                BCS    LNCPL3    <7E
 0ABE 27   EA                BEQ    LNCPL2    =7E. Back for next char
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE     32

 0AC0 30   01               LEAX   1,X       =7F. Bump past count
 0AC2 20   E6               BRA    LNCPL2    and back for more

 0AC4 BD   0D0C      LNCPL3 JSR    CH2WBF    Put char in Work-Buf
 0AC7 81   7D               CMPA   #$7D      CR?
 0AC9 26   DD               BNE    LNCPL1    No. Back for another char

                     * LINE COMPLETE. COMPILE TO DISK

 0ACB 96   1D                LDA    CHMVCT    Get # of chars to be moved
 0ACD 1F   89                TFR    A,B
 0ACF 8D   BF                BSR    CHCMPL    Compile one char to to Disk
 0AD1 8E   45F7              LDX    #WORKBF Point to Work-Buf
 0AD4 A6   80        LNCPL4 LDA     0,X+      Get char from Work-Buf
 0AD6 8D   B8                BSR    CHCMPL    Compile one char to Disk
 0AD8 5A                     DECB             Dec count
 0AD9 26   F9                BNE    LNCPL4    Not done. Keep compiling
 0ADB 39                     RTS              All done
                     *
                     * TRANSFER VARIABLE TO WORK-BUFFER
                     *
 0ADC 81   A0        VAR2WB CMPA #$A0         FP Constant?
 0ADE 27   14                BEQ    FP2WB     Yes
 0AE0 81   A1                CMPA #$A1        No. '$'?
 0AE2 27   0A                BEQ    STR2WB    Yes
 0AE4 C6   03                LDB    #3        No. Count of 3
 0AE6 81   A4                CMPA #$A4        No. Constant in range +-7FFF?
 0AE8 27   0C                BEQ    VAR2W2    Yes
 0AEA 8D   2A        VAR2W1 BSR     IN2WKB    Move B chars from Input-Buf to Work-Buf
 0AEC 20   BA                BRA    LNCPL1

 0AEE E6   02        STR2WB LDB    2,X       Get String-Length
 0AF0 CB   03               ADDB   #3        + 3
 0AF2 20   F6               BRA    VAR2W1

 0AF4 C6   09        FP2WB LDB      #9        Count of 9 for FP
 0AF6 8D   1E        VAR2W2 BSR     IN2WKB    Move B chars from Input-Buf to Work-Buf
 0AF8 E6   80        VAR2W3 LDB     0,X+
 0AFA 3A                     ABX
 0AFB 9F   2E                STX    LINPOS    Save in Line-Position pointer
 0AFD 4F                     CLRA
 0AFE BD   0D0C              JSR    CH2WBF    Put char in Work-Buf
 0B01 20   A5                BRA    LNCPL1
                     *
                     * 'REM' LINE TO WORK-BUFFER
                     *
 0B03 BD   0D0C      REM2WB JSR     CH2WBF    Put char in Work-Buf
 0B06 9E   2E                LDX    LINPOS    Get LinePos pointer
 0B08 20   EE                BRA    VAR2W3
                     *
                     * 'DATA' LINE TO WORK-BUFFER
                     *
 0B0A BD   0D0C      DAT2WB JSR     CH2WBF    Put char in Work-Buf
 0B0D 9E   2E                LDX    LINPOS    Recover Line-Position pointer
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   33

 0B0F E6   84               LDB    0,X
 0B11 5C                    INCB
 0B12 8D   02               BSR    IN2WKB    Move B chars from Input-Buf to Work-Buf
 0B14 20   94               BRA    LNCPL2
                     *
                     * MOVE B CHARS FROM INPUT-BUFFER TO WORK-BUFFER
                     * KEEP COUNT IN CHMVCT
                     *
 0B16 A6   80        IN2WKB LDA     0,X+      Get char
 0B18 9F   2E                STX    LINPOS    and bump Line-position pointer
 0B1A BD   0D0C              JSR    CH2WBF    Put char in Work-Buf
 0B1D 9E   2E                LDX    LINPOS    Recover Line-Position pointer
 0B1F 5A                     DECB             Dec count
 0B20 26   F4                BNE    IN2WKB    Not done yet. Keep transferring
 0B22 39             IN2WK1 RTS               All done
                     *
                     * PARSE LINE IN INPUT-BUFFER AND TOKENISE INTO WORK-BUFFER
                     *
 0B23 CC   0000      PARSLN LDD     #0
 0B26 DD   51                STD    LINNBR    Set Line-Number to 0000
 0B28 DD   1C                STD    DEFFLG    Clear Define and Char-Move Flags
 0B2A DD   47                STD    LNBRFG    Clear Line-number Flag and Par-counter
 0B2C CC   45F7              LDD    #WORKBF Point to Work-Buf
 0B2F DD   57                STD    WKBFPT    into Work-Buf pointer
 0B31 9E   45                LDX    INBFPT    Get Input-Buf pointer
 0B33 A6   84                LDA    0,X       Get char
 0B35 BD   0BEE              JSR    ALFNM2    Classify as alpha, numeric, or neither
 0B38 27   0E                BEQ    PRSLNA    Neither
 0B3A 5A                     DECB             Dec code
 0B3B 27   0B                BEQ    PRSLNA    It's alpha
 0B3D BD   3749              JSR    CVTBIN    Numeric. Convert to Line #
 0B40 9E   91                LDX    MATH0     Get Line #
 0B42 27   19                BEQ    ERR36A    =0. Error-Code 54
 0B44 9F   51                STX    LINNBR    and save in Line-Number
 0B46 0F   49                CLR    LSTCHR    Clear Last-Char-Classified
 0B48 BD   0C3A      PRSLNA JSR     TOKNLN    Tokenise Line into Work-Buffer
 0B4B 96   4B                LDA    TOKEN     Get Token
 0B4D 81   FF                CMPA #$FF        Non-existent?
 0B4F 27   14                BEQ    ERR33B    Yes. Error-Code 51
 0B51 81   7D                CMPA #$7D        No. CR?
 0B53 26   F3                BNE    PRSLNA    No
 0B55 0D   48                TST    PARCTR    Yes. Test Parentheses-Counter
 0B57 27   C9                BEQ    IN2WK1    =0. Go home

 0B59 86   37        ERR37A LDA    #$37      Error-Code 55 (Unbalanced Parentheses)
 0B5B 20   0E               BRA    ERROR     Process Error

 0B5D 86   36        ERR36A LDA    #$36      Error-Code 54 (Line 0 not allowed)
 0B5F 20   0A               BRA    ERROR     Process Error

 0B61 86   34        SYNERR LDA    #$34      Error-Code 52 (Syntax Error)
 0B63 20   06               BRA    ERROR     Process Error

 0B65 86   33        ERR33B LDA    #$33      Error-Code 51 (Illegal char in Line)
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER      PAGE   34

 0B67 20   02               BRA    ERROR      Process Error

 0B69 86   25        ERR25A LDA    #$25       Error-Code 37 (ESC-RET Trap)

                     * PROCESS ERROR-CODES

 0B6B 97 23      ERROR      STA    HALTFG     Set Halt-Flag
 0B6D 97 E8      ERROR0     STA    ERRNO+1    Save in Error-Number
 0B6F 5F                    CLRB
 0B70 D7 E7                 STB    ERRNO      Clear MS-byte of Error-Number
 0B72 D7 6B                 STB    OUTSLF     Set output to Terminal
 0B74 D7 DD                 STB    CHANFG     Clear Channel-Flag
 0B76 D7 DE                 STB    INPSEL     Set for Terminal input
 0B78 AE 9F 0083            LDX    [CLINAD]   Get Current-Line #
 0B7C 9F E9                 STX    ERLNBR     and save in Error-Line #
 0B7E 81 FF                 CMPA   #$FF       Error-Code = 255?
 0B80 25 46                 BCS    ERROR4     <255
 0B82 5F         ERROR1     CLRB
 0B83 1F 9B                 TFR    B,DP      Set DP to 0
 0B85 D7 EB                 STB    ONERRF    Clear Error-Mode Flag
 0B87 96 E8                 LDA    ERRNO+1 Get Error #
 0B89 81 22                 CMPA   #$22      No. Break?
 0B8B 27 21                 BEQ    BRKERR    Yes
 0B8D 10FE 0101             LDS    ENDMEM    Reset SP
 0B91 BD 291F               JSR    XFOUT1    Restore OUTC2-vector
 0B94 BD 2D0B               JSR    CLFSTK    Clear FCB address Stack
 0B97 BD D403               JSR    FMSCLS    Close all files
 0B9A 96 E8                 LDA    ERRNO+1 Get Error #
 0B9C 81 25                 CMPA   #$25      Esc-Return trap?
 0B9E 27 25                 BEQ    ERROR3    Yes
 0BA0 B7 CC20               STA    ERRTYP    No
 0BA3 8E CC1F               LDX    #ERRTYP-1 Point to Error-Type
 0BA6 BD CD3F               JSR    RPTERR    and output it
 0BA9 BD CD24               JSR    PCRLF
 0BAC 20 06                 BRA    ERROR2

 0BAE 8E   3DFD      BRKERR LDX    #BRKMS     Output Break message
 0BB1 BD   0452             JSR    OUTSTR
 0BB4 9E   83        ERROR2 LDX    CLINAD     Get Current-Line address
 0BB6 27   0D               BEQ    ERROR3     =0. Immediate Mode
 0BB8 8E   3DF3             LDX    #ATLINE    Output "at Line" message
 0BBB BD   0454             JSR    OUTST1
 0BBE 8E   00E9             LDX    #ERLNBR    Point to Err-Line #
 0BC1 5F                    CLRB              No leading zeroes
 0BC2 BD   0F35             JSR    OUTLIN     Output Line #
 0BC5 7E   0172      ERROR3 JMP    WARM1      Return to RBASIC Warm-Start

 0BC8 9E   83        ERROR4 LDX    CLINAD     Get Current-Line addr
 0BCA 27   B6               BEQ    ERROR1     =0. Immediate Mode
 0BCC 96   EB               LDA    ONERRF     Test Error-Mode Flag
 0BCE 26   B2               BNE    ERROR1     Set
 0BD0 0C   EB               INC    ONERRF     Clear (in 'On Error' mode), so set it
 0BD2 9E   E3               LDX    ERRLIN     Get 'On Error go to' addr
 0BD4 27   AC               BEQ    ERROR1     =0
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE    35

 0BD6 10DE E5               LDS    SPTEMP    Recover SP
 0BD9 108E 00E2             LDY    #ERRLIN-1 Point to ErrLine
 0BDD 0F 23                 CLR    HALTFG    Clear Halt-Flag. Let program cont
 0BDF 7E 1350               JMP    GOTO4
                     *
                     * CLASSIFY CHAR AS ALPHA, NUMERIC, OR NEITHER
                     * STORE CODE IN ALFNCD AND IN B
                     * 01 = ALPHA 02 = NUMERIC 00 = NEITHER
                     *
 0BE2 96   49        ALFNUM LDA     LSTCHR    Get previous char
 0BE4 26   08                BNE    ALFNM2    Not NUL
 0BE6 9E   45        ALFNM1 LDX     INBFPT    NUL. Get Input-Buf pointer
 0BE8 A6   80                LDA    0,X+      Get current char
 0BEA 9F   45                STX    INBFPT    Save pointer
 0BEC 97   49                STA    LSTCHR    Save as Last-Char
 0BEE 34   02        ALFNM2 PSHS A            Save A
 0BF0 5F                     CLRB             Set to 'Neither'
 0BF1 81   30                CMPA #$30        0?
 0BF3 25   13                BCS    ALFNM4    Not numeric
 0BF5 81   39                CMPA #$39        9?
 0BF7 23   0D                BLS    ALFNM3    It's numeric
 0BF9 84   5F                ANDA #$5F        To upper-case
 0BFB 81   41                CMPA #'A
 0BFD 25   09                BCS    ALFNM4    Not alpha
 0BFF 81   5A                CMPA #'Z
 0C01 22   05                BHI    ALFNM4    Not alpha
 0C03 5C                     INCB             Set to Alpha
 0C04 20   02                BRA    ALFNM4

 0C06 C6   02        ALFNM3 LDB     #2       Set to Numeric
 0C08 D7   4A        ALFNM4 STB     ALFNCD   Store in AlfNumCode
 0C0A 35   82                PULS A,PC
                     *
                     * IDENTIFY COMMAND
                     *
 0C0C DE   2A        CMDID LDU      AUXPTR   Get Auxiliary pointer
 0C0E A6   C0        CMDID1 LDA     0,U+     Get char
 0C10 81   20                CMPA #$20       Ignore
 0C12 27   FA                BEQ    CMDID1   all SPACEs
 0C14 33   5F                LEAU -1,U
 0C16 81   60                CMPA #$60       Lower-Case?
 0C18 23   02                BLS    CMDID2   No
 0C1A 80   20                SUBA #$20       Convert to upper
 0C1C A1   80        CMDID2 CMPA 0,X+        Char match with command-table?
 0C1E 26   08                BNE    CMDID3   No
 0C20 E6   84                LDB    0,X      End of Command-Name?
 0C22 27   11                BEQ    CMDID4   Yes. Go home
 0C24 33   41                LEAU 1,U        No
 0C26 20   E6                BRA    CMDID1   Try next char

 0C28 E6   80        CMDID3 LDB    0,X+      End of Command-Name?
 0C2A 26   FC               BNE    CMDID3    No
 0C2C 30   01               LEAX   1,X       Yes. Bypass Token to point to next command
 0C2E E6   84               LDB    0,X       Test char
RBASIC by R. Jones   31 May 1988      4-7-4 TSC ASSEMBLER    PAGE   36

 0C30 26   DA               BNE   CMDID         Not NUL. Go compare next command
 0C32 1C   FB               ANDCC #$FB          Not found. Clear Z bit
 0C34 39                    RTS

 0C35 DF   2A        CMDID4 STU     AUXPTR
 0C37 1A   04                ORCC #4          Found. Set Z-bit
 0C39 39                     RTS
                     *
                     * PARSE LINE IN INPUT-BUFFER AND TRANSFER
                     * TO WORK-BUFFER IN TOKENISED FORM
                     *
 0C3A 8D A6          TOKNLN BSR     ALFNUM    Get char, and classify it
 0C3C 0F 49                  CLR    LSTCHR    Clear Last-Char
 0C3E 5A                     DECB             Dec code
 0C3F 1027 00E6              LBEQ TOKNST      It's alpha. Identify and Tokenise Statement
 0C43 102A 01BF              LBPL VAL2WB      Numeric. Value of Variable to Work-Buf

                     * NOT ALPHANUMERIC

 0C47 81   3F        TOKNL1 CMPA     #'?        Print?
 0C49 26   04               BNE      TOKNL2     No
 0C4B 0F   47               CLR      LNBRFG     Yes. Clear Line-number Flag
 0C4D 20   2B               BRA      ENCDOP

 0C4F 81 22          TOKNL2 CMPA     #'"        "?
 0C51 1027 01FC             LBEQ     LENSTR     Yes. Count String-Length
 0C55 81 27                 CMPA     #''        '?
 0C57 1027 01F6             LBEQ     LENSTR     Yes. Count String-Length
 0C5B 81 3C                 CMPA     #'<
 0C5D 27 4E                 BEQ      NEORLE     Yes. Check if <> or <=
 0C5F 81 3E                 CMPA     #'>        No
 0C61 27 59                 BEQ      CHEKGE     Yes. Check if >=
 0C63 81 2A                 CMPA     #'*        No
 0C65 27 67                 BEQ      CKSTAR     Yes. Check if **
 0C67 81 2E                 CMPA     #'.        No. Period?
 0C69 26 0F                 BNE      ENCDOP     No. Go encode Operator

                     * PROCESS '.'

 0C6B 9E 45                 LDX      INBFPT     Get Input-Buf pointer
 0C6D A6 84                 LDA      0,X        and get char
 0C6F BD 0BEE               JSR      ALFNM2     Classify as alpha, numeric, or neither
 0C72 86 2E                 LDA      #'.        Reload '.'
 0C74 C1 02                 CMPB     #2         Numeric?
 0C76 1027 018C             LBEQ     VAL2WB     Yes. Value of Variable to Work-Buf

                     * ENCODE OPERATOR

 0C7A 8E   41C5      ENCDOP LDX      #OPTAB+4   Point to < in OPERATOR-TABLE
 0C7D 6D   84        NCDOP1 TST      0,X        End of Table?
 0C7F 27   06               BEQ      NCDOP2     Yes
 0C81 A1   81               CMPA     0,X++      Identify Operator
 0C83 26   F8               BNE      NCDOP1     No match. Keep going
 0C85 30   1E               LEAX     -2,X       Match. Adjust pointer
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   37

 0C87 A6   01        NCDOP2 LDA    1,X       Get its Token, and
 0C89 81   7E               CMPA   #$7E      compare with Space
 0C8B 26   50               BNE    CHKPAR    Not Single Space
 0C8D 0F   65               CLR    CHARCT    Clear Char-counter
 0C8F 20   04               BRA    CNTSPC

                     * COUNT # OF SPACES TO A VALID CHARACTER

 0C91 0F   49        CNTSP0 CLR     LSTCHR    Yes. Clear Last-Char
 0C93 0C   65                INC    CHARCT    Bump Char counter
 0C95 BD   0BE2      CNTSPC JSR     ALFNUM    Get char, and classify it
 0C98 81   20                CMPA #SPACE
 0C9A 27   F5                BEQ    CNTSP0    Yes, so loop
                     *
                     * CODE # OF SPACES INTO WORK-BUFFER
                     *
 0C9C D6   65        CODSPC LDB     CHARCT    Get count
 0C9E 27   09                BEQ    CODSP1    =0, so set to 7E
 0CA0 86   7F                LDA    #$7F      Multiple Spaces. Set to 7F
 0CA2 8D   39                BSR    CHKPAR    Check parens and save in Work-Buf
 0CA4 1F   98                TFR    B,A
 0CA6 4C                     INCA             Bump it
 0CA7 20   63                BRA    CH2WBF    Save char in Work-Buf

 0CA9 86   7E        CODSP1 LDA     #$7E      Single-Space code
 0CAB 20   30                BRA    CHKPAR    Check parens and save in Work-Buf
                     *
                     * IDENTIFY <> AND IF FOUND ENCODE IT
                     *
 0CAD 34   02        NEORLE PSHS A            Save char
 0CAF BD   0BE2              JSR    ALFNUM    Get char, and classify it
 0CB2 81   3E                CMPA #'>
 0CB4 35   02                PULS A           Recover previous char
 0CB6 26   04                BNE    CHEKGE    No. Check if <=
 0CB8 86   66                LDA    #$66      Yes. Set code to <>
 0CBA 20   1F                BRA    CKSTR1
                     *
                     * IDENTIFY <= OR >=
                     *
 0CBC 34   02        CHEKGE PSHS A
 0CBE BD   0BE2              JSR    ALFNUM    Get char, and classify it
 0CC1 81   3D                CMPA #'=
 0CC3 35   02                PULS A
 0CC5 26   B3                BNE    ENCDOP    Go encode Operator
 0CC7 8E   41C1              LDX    #OPTAB    Point to Operator-Table
 0CCA 0F   49                CLR    LSTCHR    Clear Last-Char
 0CCC 20   AF                BRA    NCDOP1
                     *
                     * CHECK IF ** AND IF SO ENCODE AS ^
                     *
 0CCE 34   02        CKSTAR PSHS A            Save char
 0CD0 BD   0BE2              JSR    ALFNUM    Get char, and classify it
 0CD3 A1   E4                CMPA 0,S         and compare them
 0CD5 35   02                PULS A
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   38

 0CD7 26   A1               BNE    ENCDOP    No match. Go encode Operator
 0CD9 86   6B               LDA    #$6B      Match. Set to ^ code
 0CDB 0F   49        CKSTR1 CLR    LSTCHR    Clear Last-Char

                     * CHECK FOR PARENTHESES, AND ADJUST PAREN-COUNTER
                     * STORE CHARACTER IN WORK-BUFFER

 0CDD 97   4B        CHKPAR STA    TOKEN     Save in Char-Code
 0CDF 2B   2B               BMI    CH2WBF    Variable. Save char in Work-Buf
 0CE1 81   7D               CMPA   #$7D      Statement. CR?
 0CE3 26   06               BNE    CKPAR0    No
 0CE5 0F   1C               CLR    DEFFLG    Yes. Clear Define-Flag
 0CE7 0F   1E               CLR    VARCNT    Clear # of Variables in Table
 0CE9 20   21               BRA    CH2WBF

 0CEB 81   4B        CKPAR0 CMPA   #$4B      ERL?
 0CED 26   0F               BNE    CKPAR1    No
 0CEF 34   12               PSHS   A,X       Save all
 0CF1 BD   3731             JSR    IGNSPC    Check next char
 0CF4 81   3D               CMPA   #$3D      Is it =?
 0CF6 35   12               PULS   A,X       Recover all
 0CF8 26   12               BNE    CH2WBF    No. Proceed
 0CFA 0C   32               INC    ARCFLG    Yes. Set Flag
 0CFC 20   0E               BRA    CH2WBF    and save char

 0CFE 81   74        CKPAR1 CMPA   #$74      (?
 0D00 26   04               BNE    CKPAR2    No
 0D02 0C   48               INC    PARCTR    Yes. Bump Paren-Counter
 0D04 20   06               BRA    CH2WBF    Save char in Work-Buf

 0D06 81   75        CKPAR2 CMPA   #$75      ')'?
 0D08 26   02               BNE    CH2WBF    Save char in Work-Buf
 0D0A 0A   48               DEC    PARCTR    Decr paren-Counter

                     * STORE CHAR IN WORK-BUF. BUMP COUNT AND CHMVCT

 0D0C 9E 57          CH2WBF LDX    WKBFPT    Get Work-Buf pointer
 0D0E A7 80                 STA    0,X+      Store char
 0D10 9F 57                 STX    WKBFPT    Save pointer
 0D12 0D 47                 TST    LNBRFG    Test Line-number Flag
 0D14 26 06                 BNE    CH2WB1    Requires a Line #
 0D16 9C 21                 CMPX   MEMTOP    End-of-Memory?
 0D18 1027 F62D             LBEQ   ERR50A    Yes. Error-Code 80
 0D1C 8C 46F3        CH2WB1 CMPX   #WORKBF+252 At Work-Buf end?
 0D1F 27 03                 BEQ    ERR64A    Yes
 0D21 0C 1D                 INC    CHMVCT    No. Bump Char-Move count
 0D23 39                    RTS

 0D24 86   64        ERR64A LDA     #$64      Error-Code 100 (Expression too complex)
 0D26 7E   0B6B              JMP    ERROR     Process Error
                     *
                     * IDENTIFY AND TOKENISE STATEMENT
                     *
 0D29 9E   45        TOKNST LDX     INBFPT    Get Input-Buf pointer
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER     PAGE   39

 0D2B 30   1F               LEAX   -1,X      dec it
 0D2D 9F   4F               STX    XTEMP3    and save it
 0D2F 9F   2A               STX    AUXPTR    also in Aux. Pointer
 0D31 0F   47               CLR    LNBRFG    Clear Line-Number Flag
 0D33 8E   3F9C             LDX    #STATBL   Point to STATEMENT Table
 0D36 BD   0C0C             JSR    CMDID     Identify Statement
 0D39 26   6B               BNE    TOKENV    Not found. Tokenise variable + offset into Work-Buf
 0D3B A6   01               LDA    1,X       Found. Get Token
 0D3D 9E   2A               LDX    AUXPTR    Recover Input-Buf pointer
 0D3F 30   01               LEAX   1,X       Bump it
 0D41 9F   45               STX    INBFPT    and save in Input-Buf Pointer
 0D43 81   2C               CMPA   #$2C      AS?
 0D45 26   03               BNE    TOKNS1    No. Check for others
 0D47 BD   2CF6             JSR    AS        Yes. Execute AS
 0D4A 81   34        TOKNS1 CMPA   #$34
 0D4C 24   42               BCC    CHKFN     >=34. In upper half of Table
 0D4E 81   18               CMPA   #$18      <34. RESTORE?
 0D50 27   04               BEQ    TOKNS2    Yes
 0D52 81   03               CMPA   #3        No. RESUME?
 0D54 22   04               BHI    TOKNS3    >3
 0D56 0C   47        TOKNS2 INC    LNBRFG    <=3. Needs a Line #. Set Lnbr-Flag
 0D58 20   83               BRA    CHKPAR    Check parens and save in Work-Buf

 0D5A 81   30        TOKNS3 CMPA   #$30      THEN?
 0D5C 27   F8               BEQ    TOKNS2    Yes
 0D5E 81   31               CMPA   #$31      No. ELSE?
 0D60 27   F4               BEQ    TOKNS2    Yes
 0D62 81   14               CMPA   #$14      No. DEF?
 0D64 26   07               BNE    TOKNS4    No
 0D66 0C   1C               INC    DEFFLG    Yes. Set Define-Flag
 0D68 0F   1E               CLR    VARCNT    Clear # of Variables in Table
 0D6A 7E   0CDD             JMP    CHKPAR

 0D6D 81 05          TOKNS4 CMPA   #5        No. REM?
 0D6F 27 06                 BEQ    LINCAL    Yes
 0D71 81 17                 CMPA   #$17      DATA?
 0D73 1026 FF66             LBNE   CHKPAR    No

                     * FIND START AND END OF DATA LINE
                     * STORE STATEMENT-CODE IN WORK-BUFFER

 0D77 9E   45        LINCAL LDX     INBFPT    Get Input-Buf pointer
 0D79 9F   53                STX    STRBEG    Save in String-Start
 0D7B 34   02                PSHS A
 0D7D BD   0BE6      LNCAL1 JSR     ALFNM1    Get char and classify it
 0D80 81   0D                CMPA #CR
 0D82 26   F9                BNE    LNCAL1    No. Keep looking
 0D84 30   1F                LEAX -1,X        Yes. Back off by 1
 0D86 9F   55                STX    STREND    Save in End-of-String-address
 0D88 35   02                PULS A
 0D8A BD   0CDD              JSR    CHKPAR    Check parens and save in Work-Buf
 0D8D 7E   0E79              JMP    ST2WKB    Move String to Work-Buf
                     *
                     * EXAMINE FN CODE FOR CORRECT FORMAT
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   40

                     *
 0D90 1026 FF49      CHKFN   LBNE   CHKPAR   Not FN
 0D94 86 40                  LDA    #$40     It's FN. Set Variable-code to Pre-Defined
 0D96 97 4E                  STA    CODEST   Save in Code-Store
 0D98 BD 0BE2                JSR    ALFNUM   Get char, and classify it
 0D9B 0F 49                  CLR    LSTCHR   Clear Last-Char
 0D9D C1 01                  CMPB   #1       Alpha?
 0D9F 27 0B                  BEQ    TOKNV1   Yes. Identify Variable-Type

 0DA1 86   38                LDA    #$38     No. Error-Code 56 (Illegal Function reference)
 0DA3 7E   0B6B              JMP    ERROR
                     *
                     * CLASSIFY VARIABLE AND FORM VARIABLE-CODE
                     * STORE IN WORK-BUFFER, WITH ADDRESS OFFSET
                     *
 0DA6 9E   4F        TOKENV LDX     XTEMP3    Recover pointer
 0DA8 A6   84                LDA    0,X       Get char
 0DAA 0F   4E                CLR    CODEST    Clear Code-Store
 0DAC 84   5F        TOKNV1 ANDA #$5F         To upper-case
 0DAE 5F                     CLRB
 0DAF DD   4C                STD    VARNAM    Save 1st char of Variable-Name
 0DB1 BD   0BE2              JSR    ALFNUM    Get char, and classify it
 0DB4 27   16                BEQ    TOKNV3    Not alphanumeric
 0DB6 5A                     DECB             Numeric?
 0DB7 26   0F                BNE    TOKNV2    Yes
 0DB9 9E   45                LDX    INBFPT    Alpha. Get Input-Buf pointer
 0DBB 34   02                PSHS A           Save char
 0DBD A6   84                LDA    0,X       Get current char
 0DBF BD   0BEE              JSR    ALFNM2    Classify as alpha, numeric, or neither
 0DC2 35   02                PULS A           (Recover previous char)
 0DC4 26   06                BNE    TOKNV3    Alphanumeric
 0DC6 84   5F                ANDA #$5F        Not so. To upper-case
 0DC8 0F   49        TOKNV2 CLR     LSTCHR    Clear Last-Char
 0DCA 97   4D                STA    VARNAM+1 Save 2nd char of Variable-Name
 0DCC BD   0BE2      TOKNV3 JSR     ALFNUM    Get next char, and classify it
 0DCF 81   24                CMPA #'$
 0DD1 26   04                BNE    TOKNV4    No. Check for %
 0DD3 86   01                LDA    #1        Yes. Set bit 0 for '$'
 0DD5 20   06                BRA    TOKNV5

 0DD7 81   25        TOKNV4 CMPA    #'%
 0DD9 26   09               BNE     TOKNV6   No. Check for (
 0DDB 86   04               LDA     #4       Yes. Set bit 2 for '%'
 0DDD 9A   4E        TOKNV5 ORA     CODEST
 0DDF 97   4E               STA     CODEST   Store in Code-Store
 0DE1 BD   0BE6             JSR     ALFNM1   Get next char, and classify it
 0DE4 D6   4E        TOKNV6 LDB     CODEST   Get Variable-Code
 0DE6 81   28               CMPA    #'(
 0DE8 26   06               BNE     TOKNV7   No
 0DEA C5   40               BITB    #$40     Yes. Pre-defined?
 0DEC 26   02               BNE     TOKNV7   Yes
 0DEE CA   10               ORB     #$10     No. Set bit 4 for 'subscripted'
 0DF0 CA   80        TOKNV7 ORB     #$80     Set bit 7
 0DF2 D7   4E               STB     CODEST   for 'Variable'
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   41

 0DF4 BD   0EB6             JSR    STKVAR     Add variable to V-Stack
 0DF7 96   4E               LDA    CODEST     Recover code from Code-Store
 0DF9 BD   0CDD             JSR    CHKPAR     Check parens and save in Work-Buf
 0DFC 96   63               LDA    ADDOFF     Save Address-Offset
 0DFE BD   0D0C             JSR    CH2WBF     to
 0E01 96   64               LDA    ADDOFF+1   Work-
 0E03 7E   0D0C             JMP    CH2WBF     Buffer
                     *
                     * TRANSFER VALUE OF VARIABLE TO WORK-BUFFER
                     *
 0E06 9E   45        VAL2WB LDX     INBFPT    Dec Input-Buf Pointer
 0E08 30   1F                LEAX -1,X
 0E0A 9F   45                STX    INBFPT
 0E0C 0F   49                CLR    LSTCHR    Clear Last-Char
 0E0E D6   47                LDB    LNBRFG    Test Line-number Flag
 0E10 26   2D                BNE    VAL2W4    Set
 0E12 BD   3627              JSR    CVT2FP    Clear. Convert ASCII to FP binary
 0E15 D6   BA                LDB    TRIGFG    Integer?
 0E17 26   12                BNE    VAL2W1    No
 0E19 D6   98                LDB    MATH0+7 Yes. Get M0 exp
 0E1B C1   90                CMPB #$90        Out of range for Integer?
 0E1D 24   0C                BCC    VAL2W1    Yes
 0E1F BD   3653              JSR    SCALDN    No. Adjust for Scale-Factor
 0E22 BD   3294              JSR    CRANGE    Check number range and normalise it
 0E25 86   A4                LDA    #$A4      Set to Int-Constant
 0E27 C6   02                LDB    #2        2-byte count (Integer)
 0E29 20   04                BRA    VAL2W2

 0E2B 86   A0        VAL2W1 LDA     #$A0      FP Constant
 0E2D C6   08                LDB    #8        8-byte count (FP)
 0E2F BD   0CDD      VAL2W2 JSR     CHKPAR    Check parens and save in Work-Buf
 0E32 CE   0091              LDU    #MATH0    Point to M0
 0E35 A6   C0        VAL2W3 LDA     0,U+      Get byte
 0E37 BD   0D0C              JSR    CH2WBF    Save char in Work-Buf
 0E3A 5A                     DECB             Dec count
 0E3B 26   F8                BNE    VAL2W3    Not done. Move more bytes
 0E3D 20   3A                BRA    ST2WKB    All done. Move String to Work-Buf
                     *
                     * LINE-NUMBER
                     *
 0E3F BD   3749      VAL2W4 JSR     CVTBIN    Convert ASCII Integer to signed Binary
 0E42 86   A2                LDA    #$A2      Set to 'Line #'
 0E44 BD   0CDD              JSR    CHKPAR    Check parens and save in Work-Buf
 0E47 96   91                LDA    MATH0
 0E49 BD   0D0C              JSR    CH2WBF    Save hi-byte in Work-Buf
 0E4C 96   92                LDA    MATH0+1
 0E4E 7E   0D0C              JMP    CH2WBF    Save lo-byte in Work-Buf
                     *
                     * CHECK DELIMITER BALANCE, AND COUNT STRING-LENGTH
                     *
 0E51 9E   45        LENSTR LDX     INBFPT    Get Input-Buf pointer
 0E53 30   1F                LEAX -1,X        Dec, and
 0E55 9F   53                STX    STRBEG    save in String-Start
 0E57 97   6A                STA    CMPLCD    Save char in Compile-Code
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE    42

 0E59 0F   65               CLR    CHARCT    Clear Char-Count
 0E5B 0C   65        LENST1 INC    CHARCT    Count 1 char
 0E5D BD   0BE6             JSR    ALFNM1    Get next char and classify it
 0E60 81   0D               CMPA   #CR
 0E62 27   4D               BEQ    ERR39A    Yes. Error-Code 57
 0E64 91   6A               CMPA   CMPLCD    No. Same as Compile-Code?
 0E66 26   F3               BNE    LENST1    No. Try next char for match
 0E68 0F   49               CLR    LSTCHR    Yes. Clear Last-Char
 0E6A 30   1F               LEAX   -1,X      Back off pointer, and
 0E6C 9F   55               STX    STREND    save in String-End
 0E6E 86   A1               LDA    #$A1      Set to 'String-Constant'
 0E70 BD   0CDD             JSR    CHKPAR    Check parens and save in Work-Buf
 0E73 96   65               LDA    CHARCT    Get Char-Count
 0E75 4A                    DECA             Dec it
 0E76 BD   0D0C             JSR    CH2WBF    Put count in Work-Buf

                     * COMPUTE # OF CHARACTERS IN STRING, AND STORE IT
                     * AND THE COMPLETE STRING IN WORK-BUFFER

 0E79 9E   53        ST2WKB LDX    STRBEG    Get Start-of-String
 0E7B 86   01               LDA    #1
 0E7D 9C   55        ST2WBA CMPX   STREND    Increment X
 0E7F 27   05               BEQ    ST2WBB    till it equals String-End,
 0E81 30   01               LEAX   1,X       keeping count in A
 0E83 4C                    INCA             of # of chars
 0E84 20   F7               BRA    ST2WBA

 0E86 1F   89        ST2WBB TFR    A,B       Copy count
 0E88 0D   32               TST    ARCFLG    Test ERL-Flag
 0E8A 27   02               BEQ    ST2WBC    Not set
 0E8C 86   06               LDA    #6        Set. Make count = 6
 0E8E 34   02        ST2WBC PSHS   A         Save count
 0E90 BD   0D0C             JSR    CH2WBF    Put char-count in Work-Buf
 0E93 DE   53               LDU    STRBEG    Point to String-Start again
 0E95 A6   C0        ST2WBD LDA    0,U+      Get char
 0E97 BD   0D0C             JSR    CH2WBF    Put char in Work-Buf
 0E9A 6A   E4               DEC    0,S       Dec stacked count
 0E9C 5A                    DECB             and char-count
 0E9D 26   F6               BNE    ST2WBD    Back for another char
 0E9F 35   04               PULS   B         Recover balance of count
 0EA1 0D   32               TST    ARCFLG    Test ERL-Flag
 0EA3 27   09               BEQ    ST2WBF    Clear
 0EA5 4F                    CLRA             Set to NUL
 0EA6 BD   0D0C      ST2WBE JSR    CH2WBF    Store NUL
 0EA9 5A                    DECB             Dec char-count
 0EAA 26   FA               BNE    ST2WBE
 0EAC 0F   32               CLR    ARCFLG    Clear ERL-Flag

 0EAE 30   5F        ST2WBF LEAX   -1,U      Adjust pointer
 0EB0 39                    RTS              Go home

 0EB1 86   39        ERR39A LDA    #$39      Error-Code 57 (Missing Quote in String)
 0EB3 7E   0B6B             JMP    ERROR     Process error
                     *
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE    43

                     * ADD VARIABLE TO V-STACK
                     *
 0EB6 1F   98        STKVAR TFR     B,A       Copy Variable-Code
 0EB8 D6   1C                LDB    DEFFLG    Check Define-Flag
 0EBA 27   1C                BEQ    LOCVAR    Clear. Stack variable
 0EBC D6   1E                LDB    VARCNT    Set. Get Variable-count
 0EBE 5A                     DECB             Dec count
 0EBF 23   11                BLS    STKVR1    0 or 1. Save Variable-Name in Buffer
 0EC1 81   80                CMPA #$80        Not 0. Floating-Point?
 0EC3 26   13                BNE    LOCVAR    No. Stack variable
 0EC5 9E   4C                LDX    VARNAM    Yes. Get Variable-Name
 0EC7 9C   1F                CMPX VARSTO      Same as Variable-Store?
 0EC9 26   0D                BNE    LOCVAR    No match. Stack variable
 0ECB 9F   63                STX    ADDOFF    Match. Save in Address-Offset
 0ECD 86   D0                LDA    #$D0      Pre-defined variable code
 0ECF 97   4E                STA    CODEST    Save in Code-Store
 0ED1 39                     RTS

 0ED2 9E   4C        STKVR1 LDX    VARNAM    Get Variable-Name
 0ED4 9F   1F               STX    VARSTO    Save in V-Store
 0ED6 0C   1E               INC    VARCNT    Bump Variable-count

                     * SEARCH FOR VARIABLE. IF FOUND, CALCULATE ADDRESS-OFFSET
                     * AND STORE IN ADDOFF

 0ED8 BD 0A41        LOCVAR JSR    CKSRCE    Check if BAS File
 0EDB 9E 5D                 LDX    VARPTR    Get V-Stack pointer
 0EDD 9C 61          LOCVR0 CMPX   VAREND    End-of-V-Stack?
 0EDF 27 26                 BEQ    STKVR2    Yes. Add variable
 0EE1 A1 84                 CMPA   0,X       No, then look for
 0EE3 26 10                 BNE    LOCVR2    Variable-Type code
 0EE5 DE 4C                 LDU    VARNAM    Type match. Get Variable-Name
 0EE7 11A3 01               CMPU   1,X       and look for match
 0EEA 26 09                 BNE    LOCVR2    No match
 0EEC 9F 5F                 STX    VARADR    Save in Var-Adr
 0EEE DC 5F          LOCVR1 LDD    VARADR    Get Var-Adr and
 0EF0 93 5D                 SUBD   VARPTR    compute offset from
 0EF2 DD 63                 STD    ADDOFF    V-Stack pointer
 0EF4 39                    RTS

 0EF5 E6   84        LOCVR2 LDB     0,X       Get Variable-Type
 0EF7 30   05                LEAX 5,X
 0EF9 C5   11                BITB #$11        $ or Subscripted?
 0EFB 26   06                BNE    LOCVR3    Yes. Bump X by 7
 0EFD C5   04                BITB #4          No. Integer?
 0EFF 26   DC                BNE    LOCVR0    Yes. Bump X by 5
 0F01 30   04                LEAX 4,X         No. Bump X by 11
 0F03 30   02        LOCVR3 LEAX 2,X
 0F05 20   D6                BRA    LOCVR0    Try next variable
                     *
                     * ADD VARIABLE TO V-STACK, IF NOT ALREADY THERE
                     * AND SET IT TO 0
                     *
 0F07 9F   5F        STKVR2 STX     VARADR    Save in Var-Adr
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   44

 0F09 A7   84                STA    0,X       Add Variable-Type to Table
 0F0B DE   4C                LDU    VARNAM    Get variable-name
 0F0D EF   01                STU    1,X       and add to Table
 0F0F 85   11                BITA #$11        $ or subscripted?
 0F11 26   06                BNE    STKVR3    Yes. Bump X by 7
 0F13 85   04                BITA #4          No. '%'?
 0F15 26   04                BNE    STKVR4    Yes. Bump X by 5
 0F17 30   04                LEAX 4,X         FP. Bump X by 11
 0F19 30   02        STKVR3 LEAX 2,X
 0F1B 30   05        STKVR4 LEAX 5,X
 0F1D 9F   61                STX    VAREND    Save in V-Stack-End
 0F1F BD   02ED              JSR    INWKSP    Init Work-space
 0F22 20   CA                BRA    LOCVR1
                     *
                     * SKIP NEXT SPACE-CODES, IF ANY,
                     * AND GET CHAR INTO A
                     *
 0F24 31   21        SKIPSP LEAY 1,Y          Bump to next char
 0F26 A6   A4        SKIPS1 LDA     0,Y       Get char
 0F28 2B   0A                BMI    SKIPS3    Variable. Go home
 0F2A 81   7E                CMPA #$7E        Statement. 7E?
 0F2C 25   04                BCS    SKIPS2    <7E. Get original char and go home
 0F2E 80   7D                SUBA #$7D
 0F30 31   A6                LEAY A,Y         Skip Space codes
 0F32 A6   A4        SKIPS2 LDA     0,Y       Get char pointed to
 0F34 39             SKIPS3 RTS
                     *
                     * CONVERT LINE-NUMBER OR SCALE-FACTOR TO DECIMAL, AND OUTPUT IT
                     * LEADING SPACES (TO FORM 7 DIGITS) IF 'B' IS NON-ZERO
                     *
 0F35 34   04        OUTLIN PSHS B
 0F37 EC   84                LDD    0,X       Get HEX #
 0F39 DD   91                STD    MATH0     Save in M0
 0F3B DC   F3                LDD    DIGNBR    Stack 'DIGITS'
 0F3D 34   06                PSHS D
 0F3F CC   0600              LDD    #$600     Put 6 INTO Dig-Nbr
 0F42 DD   F3                STD    DIGNBR    and none to right of DP
 0F44 BD   336B              JSR    INTDEC    Convert to decimal Integer
 0F47 35   06                PULS D           Recover original # of digits
 0F49 DD   F3                STD    DIGNBR    and restore them
 0F4B E6   E0                LDB    0,S+
 0F4D 27   07                BEQ    OUTLN1    =0
 0F4F C6   07                LDB    #7        Not 0. Set B to 7
 0F51 D0   44                SUBB STRLEN+1 Subtract Str-Len
 0F53 BD   126F              JSR    OUTSPC    Output B+1 Spaces
 0F56 9E   C9        OUTLN1 LDX     NBRPTR    Get Number-Buf pointer
 0F58 A6   84                LDA    0,X       Move char back by 1
 0F5A A7   1F                STA    -1,X
 0F5C 8E   44E0              LDX    #NBRBUF+1 Point to Number
 0F5F 7E   0454              JMP    OUTST1    and output it
                     *
                     * EXECUTE END STATEMENT
                     *
 0F62 CC   0000      END     LDD    #0
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   45

 0F65 DD   81               STD    NXLNAD    Clear Next-Line address
 0F67 BD   2D0B             JSR    CLFSTK    Clear FCB address Stack
 0F6A BD   D403             JSR    FMSCLS    Close all Files

                     * EXECUTE REM OR DATA STATEMENT

              0F6D DATA    EQU    *
 0F6D 108E 3E07    REM     LDY    #DUMYCR    Point to 7D
 0F71 7E 0284              JMP    STENDC     Check Statement-Ending and continue
                   *
                   * EXECUTE LET STATEMENT
                   *
 0F74 8D B0        LET     BSR    SKIPS1     Skip Spaces and get char
 0F76 2A 15                BPL    ERR32C     Statement. Error-Code 50
 0F78 85 20                BITA #$20         Variable. Constant?
 0F7A 26 11                BNE    ERR32C     Yes. Error-Code 50
 0F7C 85 01                BITA #1           No. '$'?
 0F7E 1026 00AC            LBNE STRASS       Yes. Evaluate and execute $-assignment
 0F82 8D 0C                BSR    ASSIGN     No. Evaluate Variable-Assignment. Form Var-Type
 0F84 D6 78                LDB    MODEFG     Check Mode-Flag
 0F86 26 05                BNE    ERR32C     '$'. Error-Code 50
 0F88 8D 1B                BSR    TYPCHK     Numeric. Check Variable-Type for Match
 0F8A 7E 0284              JMP    STENDC     Check Statement-Ending and continue

 0F8D 7E   01B5      ERR32C JMP     ERR32A    Error-Code 50 (Unrecognisable Statement)
                     *
                     * VALIDATE VARIABLE ASSIGNMENT, AND COMPUTE VALUE
                     *
 0F90 BD   103C      ASSIGN JSR     INZSTK    Initialise Stacks, Vectors, etc
 0F93 B6   48AD              LDA    TEMP15    Get Variable-Code
 0F96 84   0F                ANDA #$0F        Mask upper nybble
 0F98 97   CC                STA    VARTYP    Save in Var-Type
 0F9A 8D   8A                BSR    SKIPS1    Skip Spaces and get char
 0F9C 81   69                CMPA #$69        Is it '='?
 0F9E 26   ED                BNE    ERR32C    No. Error-Code 50
 0FA0 31   21                LEAY 1,Y         Yes. Bump pointer
 0FA2 7E   1843              JMP    EVALEX    Go evaluate expression
                     *
                     * CHECK VARIABLE TYPES FOR MATCH. IF MISMATCH, CONVERT SO THEY MATCH
                     * EG (Integer) = (FP) as in X% = Y
                     *
 0FA5 D6   F7        TYPCHK LDB     FIELDF    Fielded Variable?
 0FA7 27   06                BEQ    TYPCK1    No
 0FA9 97   C2                STA    NBRSGN    Yes. Save in Nbr-Sgn
 0FAB 8D   23                BSR    FLDVAR    and go Field it
 0FAD 96   C2                LDA    NBRSGN    Recover Nbr-Sgn
 0FAF 84   0F        TYPCK1 ANDA #$0F         Mask upper nybble
 0FB1 91   CC                CMPA VARTYP      Same as Var-Type?
 0FB3 27   73                BEQ    EQUTYP    Match. Stack assigned value
 0FB5 25   67                BCS    CFPINT    A is lower. Convert FP to Integer
 0FB7 BD   31F2              JSR    INTBFP    A is higher. Conv to FP binary
 0FBA BD   3629              JSR    FP2INT    Convert FP to Integer
 0FBD 9E   68        STAKFP LDX     STKPTR    Get $-Stack pointer
 0FBF DC   97                LDD    MATH0+6 Transfer M0
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   46

 0FC1 ED   06                STD    6,X       to $-Stack
 0FC3 DC   95                LDD    MATH0+4
 0FC5 ED   04                STD    4,X
 0FC7 DC   93                LDD    MATH0+2
 0FC9 ED   02                STD    2,X
 0FCB DC   91        STAKF1 LDD     MATH0
 0FCD ED   84                STD    0,X
 0FCF 39             STAKF2 RTS
                     *
                     * STORE VARIABLE IN RECORD-FIELD
                     *
 0FD0 0F F7          FLDVAR CLR     FIELDF    Clear Field-Flag
 0FD2 BD 3809                JSR    XFM0M2    Transfer M0 to M2
 0FD5 FC 48AE                LDD    TEMP17    Get total # of Records
 0FD8 FD 48AB                STD    VRASIZ
 0FDB DD 91                  STD    MATH0     Save in M0
 0FDD BE 48B0                LDX    TEMP18    Point to Array-info
 0FE0 9F 70                  STX    DIMPTR    Save DIM-Ptr
 0FE2 A6 05                  LDA    5,X       Get Channel # and
 0FE4 BD 274E                JSR    SELFCB    select Channel's FCB
 0FE7 A6 0F                  LDA    15,X      Get Write-Prot code
 0FE9 102B 1A7C              LBMI ERR0BA      >=80. Error-Code 11
 0FED BE 48B2                LDX    ADLMNT    <80. Get addr of element in Sector
 0FF0 9F 33                  STX    FCBDAD    Save it
 0FF2 BD 2A6D                JSR    CHKREC    Check record #. Extend File if nec.
 0FF5 86 03                  LDA    #3        Set Activity Status to Update
 0FF7 A7 02                  STA    2,X
 0FF9 0C F6                  INC    TEMP9
 0FFB BD 2E6B                JSR    UPDREC    Update Record
 0FFE 0A F6                  DEC    TEMP9
 1000 DD 68                  STD    STKPTR    Save pointer
 1002 BD 382B                JSR    XFM2M0    Recover M0
 1005 9E DF                  LDX    FCBTMP    Point to FCB
 1007 A6 02                  LDA    2,X       Set MS bit
 1009 8A 80                  ORA    #$80      of
 100B A7 02                  STA    2,X       Activity Status
 100D 9E 70                  LDX    DIMPTR    Get DIM-Ptr
 100F 6D 04                  TST    4,X       String?
 1011 27 BC                  BEQ    STAKF2    No. Go home
 1013 BD 2CAB                JSR    STRCK1    Yes. Get String-Length
 1016 BD 2C5C                JSR    STOSTR    and store String at location X
 1019 27 B4                  BEQ    STAKF2    =0. Go home
 101B 7E 2C8E                JMP    STOSP     Store Spaces
                     *
                     * CONVERT FP TO INTEGER, WHERE ASSIGNMENT IS OF FORM : LET X% = Y
                     * STACK ASSIGNED VALUE
                     *
 101E BD   3653      CFPINT JSR     SCALDN    Adjust for Scale-Factor
 1021 BD   3294              JSR    CRANGE    Check number range and normalise it
 1024 9E   68        STKINT LDX     STKPTR    Get $-Stack pointer
 1026 20   A3                BRA    STAKF1    Transfer Integer to $-Stack
                     *
                     * ASSIGNMENT TYPES MATCH. STACK ASSIGNED VALUE
                     *
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   47

 1028 85   04        EQUTYP BITA #4           '%'?
 102A 26   F8                BNE    STKINT    Yes. Stack Integer
 102C 20   8F                BRA    STAKFP    No. Stack FP binary
                     *
                     * EVALUATE $-ASSIGNMENT, AND STACK RESULT
                     *
 102E 17 FF5F        STRASS LBSR ASSIGN       Evaluate Variable-Assignment. Form Var-Type
 1031 96 78                  LDA    MODEFG    Test Mode-Flag
 1033 1027 FF56              LBEQ ERR32C      Numeric. Error-Code 50
 1037 8D 25                  BSR    STKSTR    '$', so Stack it
 1039 7E 0284                JMP    STENDC    Check Statement-Ending and continue
                     *
                     * PREPARE STACKS, VECTORS, ETC FOR INCOMING DATA
                     *
 103C 0C   F6        INZSTK INC     TEMP9
 103E 0F   C3                CLR    TEMP5
 1040 BD   19F2              JSR    CHKSUB    Check if Variable subscripted, set up vector
 1043 DD   68                STD    STKPTR    in M-Stack and save pointer to V-Stack
 1045 0F   F6                CLR    TEMP9
 1047 96   C3                LDA    TEMP5     Fielded?
 1049 27   12                BEQ    INZST1    No. Go home
 104B 97   F7                STA    FIELDF    Yes. Set for Fielded Variable
 104D BE   48AB              LDX    VRASIZ
 1050 BF   48AE              STX    TEMP17
 1053 9E   70                LDX    DIMPTR    Get DIM-Ptr
 1055 BF   48B0              STX    TEMP18
 1058 9E   35                LDX    LMNTAD    Get addr of element within sector
 105A BF   48B2              STX    ADLMNT
 105D 39             INZST1 RTS
                     *
                     * STORE STRING IN STRING-STACK OR RECORD
                     *
 105E 96 F7          STKSTR LDA     FIELDF    Fielded Variable?
 1060 1026 FF6C              LBNE FLDVAR      Yes. Go Field it
 1064 9E 68                  LDX    STKPTR    No. Get S-Stack pointer
 1066 EC 02                  LDD    2,X       Store old String-Length
 1068 DD D7                  STD    TEMP8     in TEMP
 106A AE 84                  LDX    0,X       Store address of
 106C 9F D5                  STX    TEMP7     old String
 106E BD 1D9B                JSR    FNDLEN    Determine new String-Length
 1071 1093 D7                CMPD TEMP8       Same length?
 1074 26 10                  BNE    STRINS    No. Add to Stack
 1076 9E 7B                  LDX    CURLIN    Yes. Get Cur-Line addr
 1078 AE 04                  LDX    4,X       Get address
 107A 26 0A                  BNE    STRINS    Not 0
 107C 9E D5                  LDX    TEMP7     =0. Recover old address
 107E 27 26                  BEQ    STRIN3    =0. Go home
 1080 0F D5                  CLR    TEMP7     Not 0, so
 1082 0F D6                  CLR    TEMP7+1 clear it
 1084 20 13                  BRA    STRIN2    and replace old String with new
                     *
                     * INSERT STRING IN STRING-STACK
                     *
 1086 ED   E3        STRINS STD     0,--S     Stack new String-Length
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   48

 1088 27 05                  BEQ    STRIN1    NUL-string
 108A BD 2250                JSR    RSVSPC    Not 0. Reserve memory space
 108D DC 2E                  LDD    LINPOS    Get new string address
 108F 9E 68          STRIN1 LDX     STKPTR    Get $-Stack pointer
 1091 ED 84                  STD    0,X       Store new string addr
 1093 35 06                  PULS D           Recover new String-Length
 1095 ED 02                  STD    2,X       and store it
 1097 9E 2E                  LDX    LINPOS    Get new string addr
 1099 BD 2111        STRIN2 JSR     MV2NUL    Insert new string
 109C 9E D5                  LDX    TEMP7     Recover old string address
 109E 27 06                  BEQ    STRIN3    =0
 10A0 DC D7                  LDD    TEMP8     Not 0. Recover old String-length
 10A2 102A 17F0              LBPL UNRSV       and de-allocate it
 10A6 39             STRIN3 RTS
                     *
                     * EXECUTE IF STATEMENT
                     *
 10A7 BD   0F26      IF      JSR    SKIPS1    Skip Spaces
 10AA BD   222A              JSR    EVLINT    Evaluate truth of expression
 10AD DC   91                LDD    MATH0     Get Truth-value
 10AF 27   26                BEQ    IF2       FALSE. Skip TRUE response

                     * EXECUTE TRUE CONDITION OF 'IF'

 10B1 BD 0F26               JSR    SKIPS1     TRUE. Skip Spaces and get char
 10B4 81 30                 CMPA   #$30       THEN?
 10B6 27 13                 BEQ    IF1        Yes
 10B8 31 21                 LEAY   1,Y        No. Point to next char
 10BA 81 01                 CMPA   #1         GOTO?
 10BC 1027 0268             LBEQ   GOTO       Yes. Process it
 10C0 81 02                 CMPA   #2         No. GOSUB?
 10C2 1027 0258             LBEQ   GOSUB      Yes. Execute GOSUB

 10C6 86   3A               LDA    #$3A       Error-Code 58 (Missing THEN in IF statement)
 10C8 7E   0B6B             JMP    ERROR      Process error
                     *
                     * EXECUTE 'THEN'
                     *
 10CB BD 0F24        IF1     JSR    SKIPSP    Skip next Spaces and get char
 10CE 81 A2                  CMPA #$A2        Line #?
 10D0 1026 F195              LBNE RUN8        No. Check if Statement, and execute
 10D4 7E 132B                JMP    GOTO1     Yes. Execute GOTO
                     *
                     * EXECUTE 'FALSE' CONDITION OF 'IF'
                     *
 10D7 97 74          IF2     STA    IFNEST    Save in IF-Cntr
 10D9 BD 0F26        IF3     JSR    SKIPS1    Skip Spaces and get char
 10DC 2B 16                  BMI    IF6       Variable
 10DE 81 31                  CMPA #$31        Statement. ELSE?
 10E0 27 17                  BEQ    IF7       Yes
 10E2 81 11                  CMPA #$11        No. IF?
 10E4 27 0A                  BEQ    IF5       Yes
 10E6 81 7B                  CMPA #$7B        No. Terminator?
 10E8 1024 FE81              LBCC REM         Yes
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER       PAGE   49

 10EC 31   21        IF4    LEAY   1,Y         No. Bump pointer
 10EE 20   E9               BRA    IF3         and back again
                     *
                     * CHAINED 'IF'S
                     *
 10F0 0C   74        IF5     INC    IFNEST     Bump IF-Cntr
 10F2 20   F8                BRA    IF4
                     *
                     * BYPASS VARIABLES
                     *
 10F4 BD   15BB      IF6     JSR    SKPVAR     Skip Variables
 10F7 20   E0                BRA    IF3
                     *
                     * ELSE
                     *
 10F9 96   74        IF7     LDA    IFNEST     Get IF-Cntr
 10FB 27   CE                BEQ    IF1        =0
 10FD 0A   74                DEC    IFNEST     Not 0. Dec it
 10FF 20   EB                BRA    IF4
                     *
                     * CHECK FOR END-OF-LINE
                     *
 1101 96   75        CMPEOL LDA     POSCTR     Get Head-Position Counter
 1103 D6   DD                LDB    CHANFG     Get Channel-Flag
 1105 27   07                BEQ    CMPEL2     Clear. Terminal
 1107 DE   F0                LDU    FCBPTR     Set. Get FCB pointer
 1109 27   03                BEQ    CMPEL2     Channel 0
 110B A6   C8 3F             LDA    63,U       Not 0. Get Column-Number

 110E 0F   CF        CMPEL2 CLR     SPCTAB    Clear SPC/TAB Flag
 1110 1F   89                TFR    A,B
 1112 8B   10                ADDA #16         Next TAB position
 1114 7D   CC04              TST    TTYWD     Test # of chars per line
 1117 27   03                BEQ    CMPEL3    =0. Go home
 1119 B1   CC04              CMPA TTYWD       Check A against width-count
 111C 39             CMPEL3 RTS
                     *
                     * EXECUTE PRINT STATEMENT
                     *
 111D CC   0000      PRINT LDD      #0
 1120 DD   CF                STD    SPCTAB    Clear SPC/TAB Flag and EOL-Flag
 1122 FD   4897              STD    NO_TAB    Clear No-Tab and PRUSING Flags
 1125 97   FB                STA    TEMP11
 1127 DE   DF                LDU    FCBTMP    Get FCB pointer TEMP
 1129 BD   270D              JSR    VOUTCH    Validate Output Channel #
 112C DC   DF                LDD    FCBTMP    Get FCB pointer again
 112E DD   F0                STD    FCBPTR    and save in FCB-Ptr
 1130 DF   DF                STU    FCBTMP    save back in TEMP
 1132 BD   0F26              JSR    SKIPS1    Skip Spaces and get char
 1135 81   2D                CMPA #$2D        USING?
 1137 26   2C                BNE    PRINT1    No. Process 'PRINT'

                     * PROCESS 'PRINT USING'
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   50

 1139 BD 0F24               JSR    SKIPSP    Skip next Spaces and get char
 113C B7 4897               STA    NO_TAB    No-Tab for ','
 113F B7 4898               STA    USINFG    Save in PRUSING-Flag
 1142 BD 1843               JSR    EVALEX    Evaluate expression
 1145 96 78                 LDA    MODEFG    Check Mode-Flag
 1147 1027 FA16             LBEQ   SYNERR    Numeric. Syntax Error
 114B BD 1D9B               JSR    FNDLEN    '$'. Determine String-Length
 114E C3 0001               ADDD   #1
 1151 FD 489D               STD    PRULEN    Save Length
 1154 BD 2250               JSR    RSVSPC    Reserve memory space
 1157 BF 489B               STX    PRUSPT    Save in PRUS-Ptr
 115A BF 4899               STX    PRUSAD    and in PRUSING-String addr
 115D BD 2111               JSR    MV2NUL    Move String to Stack
 1160 6F 84                 CLR    0,X       End with NUL
 1162 BD 20BD               JSR    COMMAC    Check for comma

                     * PROCESS 'PRINT'

 1165 BD 0F26        PRINT1 JSR     SKIPS1    Skip Spaces and get char
 1168 2B 12                  BMI    PRINT2    Variable
 116A 81 7B                  CMPA #$7B        Statement. Terminator?
 116C 24 5F                  BCC    PRINT7    Yes
 116E 81 31                  CMPA #$31        No. ELSE?
 1170 27 5B                  BEQ    PRINT7    Yes
 1172 81 72                  CMPA #$72        No. ','?
 1174 27 74                  BEQ    PRINTA    Yes
 1176 81 73                  CMPA #$73        No. ';'?
 1178 1027 0084              LBEQ PRINTD      Yes
 117C D6 D0          PRINT2 LDB     EOLFLG    At end of Statement?
 117E 26 06                  BNE    PRINT3    Yes
 1180 D6 CF                  LDB    SPCTAB    No. Test SPC/TAB-Flag
 1182 1026 F9DB              LBNE SYNERR      Set. Syntax Error
 1186 CE 0100        PRINT3 LDU     #$100
 1189 DF CF                  STU    SPCTAB    Set SPC/TAB-Flag and clear EOL-Flag
 118B 81 47                  CMPA #$47        SPC?
 118D 1027 00B4              LBEQ SPC         Yes. Print Spaces
 1191 81 48                  CMPA #$48        No. TAB?
 1193 1027 00BA              LBEQ TAB         Yes. Execute TAB
 1197 BD 1843                JSR    EVALEX    No. Evaluate expression
 119A F6 4898                LDB    USINFG    Check PRUSING-Flag
 119D 27 05                  BEQ    PRINT4    Clear
 119F BD 249B                JSR    USING     Set. Do PRINT-USING
 11A2 20 C1                  BRA    PRINT1    and back for more
                     *
                     * CHECK IF STRING OR VARIABLE
                     *
 11A4 D6   78        PRINT4 LDB     MODEFG    Check Mode-Flag
 11A6 26   66                BNE    PRINTG    '$'
 11A8 85   04                BITA #4          Numeric. '%'?
 11AA 27   16                BEQ    PRINT5    No. FP
 11AC DC   F3                LDD    DIGNBR    Yes. Save Digits
 11AE 34   06                PSHS D
 11B0 81   06                CMPA #6          Digits>5?
 11B2 25   05                BCS    PRNT41    No
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   51

 11B4 CC   0500              LDD    #$500     Yes. Set Digits to 5
 11B7 DD   F3                STD    DIGNBR
 11B9 BD   336B      PRNT41 JSR     INTDEC    Convert to decimal
 11BC 35   06                PULS D           Restore Digits
 11BE DD   F3                STD    DIGNBR
 11C0 20   03                BRA    PRINT6
                     *
                     * PRINT VALUE OF VARIABLE
                     *
 11C2 BD   3372      PRINT5 JSR     BINDEC    Convert FP to decimal
 11C5 8E   44DF      PRINT6 LDX     #NBRBUF Point to Number-Buf
 11C8 BD   0454              JSR    OUTST1    and output it
 11CB 20   98                BRA    PRINT1    and back for more
                     *
                     * PROCESS 'ELSE'
                     *
 11CD 96   D0        PRINT7 LDA     EOLFLG    Test EOL-Flag
 11CF 26   03                BNE    PRINT8    Set
 11D1 BD   045F              JSR    LINEND    Clear. Terminate Line
 11D4 0F   DD        PRINT8 CLR     CHANFG    Clear Channel-Flag
 11D6 BD   291F              JSR    XFOUT1    Reset to terminal
 11D9 B6   4898              LDA    USINFG    Test PRUSING-Flag
 11DC 27   09                BEQ    PRINT9    Clear
 11DE BE   4899              LDX    PRUSAD    Set. Get addr of PRUSING String
 11E1 FC   489D              LDD    PRULEN    Get PRU-LEN and EXCL-CT
 11E4 BD   2896              JSR    UNRSV     De-allocate 'D' bytes of memory
 11E7 7E   0284      PRINT9 JMP     STENDC    Check Statement-Ending and continue
                     *
                     * PROCESS TABBING FOR ',' IN PRINT
                     *
 11EA BD   1101      PRINTA JSR     CMPEOL    Check for EOL
 11ED 23   05                BLS    PRINTC    Not yet
 11EF BD   045F      PRINTB JSR     LINEND    EOL. Terminate Line
 11F2 20   11                BRA    PRINTE
                     *
                     * PROCESS ','
                     *
 11F4 B6   4897      PRINTC LDA     NO_TAB    Check Don't-Tab Flag
 11F7 26   0C                BNE    PRINTE    Set. Don't Tab
 11F9 53                     COMB             Calculate amount of Tab
 11FA C4   0F                ANDB #$F         15 at most
 11FC 8D   71                BSR    OUTSPC    Clear. Output B+1 Spaces
 11FE 20   05                BRA    PRINTE
                     *
                     * PROCESS ';'
                     *
 1200 BD   1101      PRINTD JSR     CMPEOL    Check for EOL
 1203 22   EA                BHI    PRINTB    Past it
 1205 86   01        PRINTE LDA     #1        Not yet
 1207 97   D0                STA    EOLFLG    so set EOL-Flag
 1209 31   21                LEAY 1,Y         Next char
 120B 7E   1165      PRINTF JMP     PRINT1    then back for more
                     *
                     * PRINT A STRING
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER    PAGE   52

                     *
 120E CC   0000      PRINTG LDD    #0          Set Mode-Flag
 1211 97   78               STA    MODEFG      to 'Numeric'
 1213 DD   3D               STD    LSTBEG      Clear List-Beg

                     * KEEP PRINTING TILL END OF STRING

 1215 8D   07        PRINTH BSR     CHRGET    Get char from String
 1217 27   F2                BEQ    PRINTF    All done
 1219 BD   27AA              JSR    CHROUT    Output char
 121C 20   F7                BRA    PRINTH
                     *
                     * GET CHAR FROM STRING AND CLEAR Z-BIT
                     * IF NO MORE CHARACTERS, SET Z-BIT
                     *
 121E 34   14        CHRGET PSHS B,X
 1220 DC   3D        CHGET1 LDD     LSTBEG    Get # of chars in String
 1222 26   12                BNE    CHGET2    Not 0
 1224 9E   7B                LDX    CURLIN    =0. Get Current-Line address
 1226 EC   02                LDD    2,X       and get String-Length
 1228 DD   3D                STD    LSTBEG    and store it
 122A EC   84                LDD    0,X       Get linkage to next String
 122C 27   15                BEQ    CHGET3    =0
 122E DD   3F                STD    LSTEND    Not 0. Save in List-End
 1230 30   04                LEAX 4,X         Bump pointer to next item
 1232 9F   7B                STX    CURLIN    Save in Cur-Line
 1234 20   EA                BRA    CHGET1    and back again

 1236 83   0001      CHGET2 SUBD #1            Dec count
 1239 DD   3D                STD    LSTBEG     and save in List-Beg
 123B 9E   3F                LDX    LSTEND     Point to String,
 123D A6   80                LDA    0,X+       get char, bump pointer,
 123F 9F   3F                STX    LSTEND     and save next-char addr
 1241 1C   FB                ANDCC #$FB        Clear Z-bit
 1243 35   94        CHGET3 PULS B,X,PC
                     *
                     * EXECUTE SPC STATEMENT
                     *
 1245 8D   19        SPC     BSR    INDEXS     Calculate # of Spaces
 1247 D6   92                LDB    MATH0+1    Get #
 1249 27   03                BEQ    SPC2       =0
 124B 5A             SPC1    DECB
 124C 8D   21                BSR    OUTSPC     Output B+1 Spaces
 124E 7E   1165      SPC2    JMP    PRINT1     and back for more
                     *
                     * EXECUTE TAB STATEMENT
                     *
 1251 8D   0D        TAB     BSR    INDEXS     Get TAB #
 1253 BD   1101              JSR    CMPEOL     Check for EOL
 1256 34   04                PSHS B            Stack Head-Position
 1258 D6   92                LDB    MATH0+1    Get TAB #
 125A E0   E0                SUBB 0,S+         Subtract Head-position
 125C 23   F0                BLS    SPC2       Not OK to Tab
 125E 20   EB                BRA    SPC1
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   53

                     *
                     * GET # ENCLOSED IN PARENS eg TAB(x) or SPC(x)
                     * SINGLE-INDEX ONLY. PUT # IN M0
                     *
 1260 BD 0F24        INDEXS JSR     SKIPSP    Skip next Spaces and get char
 1263 81 74                  CMPA #$74        '('?
 1265 1026 063C              LBNE ERR49B      No. Error-Code 73
 1269 BD 222A                JSR    EVLINT    Yes. Evaluate Integer expression
 126C 7E 221E                JMP    SBDEC2    Check if <=255
                     *
                     * OUTPUT B + 1 SPACES
                     *
 126F 86   20        OUTSPC LDA     #SPACE
 1271 34   04                PSHS B           Stack count
 1273 BD   27AA      OUTSP1 JSR     CHROUT    Output it
 1276 6A   E4                DEC    0,S       Dec count
 1278 2A   F9                BPL    OUTSP1    Output B+1 Spaces
 127A 35   84                PULS B,PC
                     *
                     * EXECUTE RESUME STATEMENT
                     *
 127C 96 EB          RESUME LDA     ONERRF    Check Error-Mode Flag
 127E 27 1F                  BEQ    ERR42A    Clear. Error-Code 66
 1280 BD 0F26                JSR    SKIPS1    Set. Skip Spaces and get char
 1283 2B 0D                  BMI    RESUM3    Variable.
 1285 81 7B                  CMPA #$7B        Statement. Terminator?
 1287 25 13                  BCS    ERR34C    No. Syntax Error
 1289 108E 00E8      RESUM1 LDY     #ERLNBR-1 Yes. Point to Line # - 1
 128D 0F EB          RESUM2 CLR     ONERRF    Clear Error-Mode Flag
 128F 7E 1350                JMP    GOTO4

 1292 81   A2        RESUM3 CMPA   #$A2      Line #?
 1294 26   06               BNE    ERR34C    No. Syntax Error
 1296 AE   21               LDX    1,Y       Yes. Get it
 1298 27   EF               BEQ    RESUM1    =0
 129A 20   F1               BRA    RESUM2    Not 0. Resume at specified Line

 129C 7E   0B61      ERR34C JMP    SYNERR    Error-Code 52 (Syntax Error)

 129F 86   42        ERR42A LDA     #$42     Error-Code 66 (RESUME not in Error Routine)
 12A1 7E   0B6B              JMP    ERROR    Process error
                     *
                     * PROCESS 'ON ERROR'
                     *
 12A4 BD   0F24      ONERR JSR      SKIPSP   Skip next Spaces and get char
 12A7 81   01                CMPA #1         GOTO?
 12A9 26   2B                BNE    ERR34D   No. Syntax Error
 12AB BD   0F24              JSR    SKIPSP   Yes. Skip next Spaces and get char
 12AE 2A   14                BPL    ONERR1   Statement
 12B0 81   A2                CMPA #$A2       Variable. Line #?
 12B2 26   22                BNE    ERR34D   No. Syntax Error
 12B4 AE   21                LDX    1,Y      Yes. Get address
 12B6 9F   E3                STX    ERRLIN   Save in 'On Error' addr
 12B8 31   22                LEAY 2,Y        Bump pointer
RBASIC by R. Jones   31 May 1988       4-7-4 TSC ASSEMBLER   PAGE   54

 12BA BD   0F24             JSR    SKIPSP     Skip next Spaces and get char
 12BD 9E   E3               LDX    ERRLIN     Get 'On Error' addr
 12BF 27   0C               BEQ    ONERR2     = GOTO 0
 12C1 7E   0284             JMP    STENDC     Check Statement-Ending and continue
                     *
                     * CLEAR 'ON ERROR' STATUS
                     *
 12C4 81 7B          ONERR1 CMPA #$7B         Terminator?
 12C6 25 0E                  BCS    ERR34D    No. Syntax Error
 12C8 8E 0000                LDX    #0        Yes. Clear
 12CB 9F E3                  STX    ERRLIN    On-Error Line #
 12CD 0D EB          ONERR2 TST     ONERRF    Test Error-Mode Flag
 12CF 1026 F8AF              LBNE ERROR1      Not in 'On Error'. Process error
 12D3 7E 0284                JMP    STENDC    Check statement-ending and continue

 12D6 7E   0B61      ERR34D JMP     SYNERR    Error-Code 52 (Syntax Error)
                     *
                     * EXECUTE ON STATEMENT
                     *
 12D9 BD   0F26      ON      JSR    SKIPS1    Skip Spaces and get char
 12DC 81   2E                CMPA #$2E        ERROR?
 12DE 27   C4                BEQ    ONERR     Yes. Go to it
 12E0 BD   2207              JSR    EVALSB    No. Evaluate single-byte to HEX
 12E3 BD   0F26              JSR    SKIPS1    Skip Spaces and get char
 12E6 81   01                CMPA #1          GOTO?
 12E8 27   04                BEQ    ON1       Yes
 12EA 81   02                CMPA #2          No. GOSUB?
 12EC 26   2D                BNE    ERR34E    No. Syntax Error
 12EE 34   02        ON1     PSHS A           Save Token
 12F0 D6   92                LDB    MATH0+1   Get count
 12F2 27   22                BEQ    ERR20A    =0. Syntax Error
 12F4 5A                     DECB             Valid count. Decr it
 12F5 BD   0F24      ON2     JSR    SKIPSP    Skip next Spaces and get char
 12F8 81   A2                CMPA #$A2        Line #?
 12FA 26   1A                BNE    ERR20A    No. Error-Code 32
 12FC 5A                     DECB             Yes. It's a Line #, so decr count
 12FD 2A   0E                BPL    ON3       Not done

                     * DESTINATION IDENTIFIED. GO TO IT

 12FF 35 02                 PULS   A          Recover Token
 1301 4A                    DECA              and dec it
 1302 27 24                 BEQ    GOTO       =0. Execute GOTO
 1304 109F 2E               STY    LINPOS     It's GOSUB. Save Line-Position pointer
 1307 108E 3E07             LDY    #DUMYCR    Point to '7D'
 130B 20 32                 BRA    GOTO3

 130D 31   22        ON3    LEAY   2,Y        Bypass Line #
 130F BD   0F24             JSR    SKIPSP     Skip next Spaces and get char
 1312 81   72               CMPA   #$72       ','?
 1314 27   DF               BEQ    ON2        Yes

 1316 86   20        ERR20A LDA    #$20       Error-Code 32 (Bad argument in ON statement)
 1318 7E   0B6B             JMP    ERROR      Process it
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   55


 131B 7E   0B61      ERR34E JMP     SYNERR    Error-Code 52 (Syntax Error)
                     *
                     * EXECUTE GOSUB STATEMENT
                     *
 131E BD   034E      GOSUB JSR      STKCHK    Check Stack space
 1321 BD   0F26              JSR    SKIPS1    Skip Spaces and get char
 1324 97   26                STA    GSUBFG    Set GOSUB-Flag
 1326 20   05                BRA    GOTO2     and execute GOSUB
                     *
                     * EXECUTE GOTO STATEMENT
                     *
 1328 BD 0F26        GOTO    JSR    SKIPS1    Skip Spaces and get char
 132B 0F 26          GOTO1 CLR      GSUBFG    Clear GOSUB-Flag (set to GOTO)
 132D 81 A2          GOTO2 CMPA #$A2          Line #?
 132F 1026 F82E              LBNE SYNERR      No. Syntax Error
 1333 96 26                  LDA    GSUBFG    Yes. Test GOSUB-Flag
 1335 27 19                  BEQ    GOTO4     = GOTO
 1337 109F 2E                STY    LINPOS    = GOSUB. Save Line-Position pointer
 133A 31 22                  LEAY 2,Y         Bump pointer past Line #
 133C BD 0F24                JSR    SKIPSP    Skip next Spaces and get char
 133F 0F 26          GOTO3 CLR      GSUBFG    Clear GOSUB-Flag
 1341 DC 81                  LDD    NXLNAD    Get Next-Line addr
 1343 34 26                  PSHS D,Y         and save. Also pointer
 1345 DC 83                  LDD    CLINAD    Get Cur-Line addr
 1347 34 06                  PSHS D           and save
 1349 86 FC                  LDA    #$FC      Save 'GOSUB'-code
 134B 34 02                  PSHS A
 134D 109E 2E                LDY    LINPOS    Recover Line-Position pointer
 1350 BD 0368        GOTO4 JSR      LINVAL    Check destination-line #
 1353 26 05                  BNE    ERR3CA    Not found. Error-Code 60
 1355 9F 81                  STX    NXLNAD    Found. Save in Next-Line addr
 1357 7E 0F6D                JMP    REM

 135A 86   3C        ERR3CA LDA     #$3C      Error-Code 60 (Bad Line ref in GOTO, GOSUB)
 135C 7E   0B6B              JMP    ERROR     Process error
                     *
                     * EXECUTE RETURN STATEMENT (Enter at RETURN below)
                     *
 135F 34 02          RETRN0 PSHS A
 1361 11BC 0101              CMPS ENDMEM      Top-of-Stack?
 1365 27 1B                  BEQ    ERR3DA    Yes. Error-Code 61
 1367 A6 E8 17               LDA    23,S      Get Code
 136A 81 F8                  CMPA #$F8        'FOR-NEXT'?
 136C 26 14                  BNE    ERR3DA    No. Error-Code 61
 136E 32 E8 18               LEAS 24,S        Yes. Next outer loop

                     * ENTRY POINT FOR 'RETURN'

 1371 35   02        RETURN PULS   A         Recover char-code
 1373 81   FC               CMPA   #$FC      GOSUB stacked?
 1375 26   E8               BNE    RETRN0    No
 1377 35   06               PULS   D         Yes. Recover Cur-Line addr
 1379 DD   83               STD    CLINAD    and store in CurLinAdr
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER    PAGE      56

 137B 35   26                PULS   D,Y        Recover Next-Line addr and Line-Pos
 137D DD   81                STD    NXLNAD     and store in Next-Line-Adr
 137F 7E   0284              JMP    STENDC     Check Statement-Ending and continue

 1382 86   3D        ERR3DA LDA     #$3D       Error-Code 61 (RETURN without GOSUB)
 1384 7E   0B6B              JMP    ERROR      Process error
                     *
                     * EXECUTE FOR STATEMENT
                     *
 1387 BD 034E        FOR     JSR    STKCHK     Check for room on Stack
 138A BD 0F26                JSR    SKIPS1     Skip Spaces and get char
 138D 85 53                  BITA #$53         Predefined, Subscripted, Line #, or $?
 138F 26 73                  BNE    ERR34G     Yes. Syntax Error
 1391 11BC 0101              CMPS ENDMEM       No. End-of-Memory?
 1395 27 2B                  BEQ    FOR1       Yes
 1397 30 E4                  LEAX 0,S          No. Point to FOR-NEXT Target
 1399 9F 2A                  STX    AUXPTR     Save in AUX. Pointer
 139B 20 03                  BRA    FOR01

 139D 30 88 18       FOR00   LEAX   24,X       No. Next outer loop
 13A0 BC 0101        FOR01   CMPX   ENDMEM     End-of-Memory?
 13A3 27 1D                  BEQ    FOR1       Yes
 13A5 A6 88 17               LDA    23,X       No. Get code
 13A8 81 F8                  CMPA   #$F8       'FOR-NEXT'?
 13AA 26 16                  BNE    FOR1       No
 13AC EC 88 14               LDD    20,X       Yes. Get offset to Variable
 13AF 10A3 21                CMPD   1,Y        Same as Line-Pos pointer?
 13B2 26 E9                  BNE    FOR00      No
                     *
                     * INSERT FOR-NEXT DATA IN STACK
                     *
 13B4 9C   2A        FOR02 CMPX AUXPTR        Same as Aux. Pointer?
 13B6 27   07                BEQ    FOR03     Yes
 13B8 A6   82                LDA    0,-X      No. Get previous char
 13BA A7   88 18             STA    24,X
 13BD 20   F5                BRA    FOR02     and back again

 13BF 32   E8 18     FOR03   LEAS   24,S       Done. Next outer loop
 13C2 A6   A4        FOR1    LDA    0,Y        At end. Save VAR-Code and its offset
 13C4 C6   F8                LDB    #$F8       and also put 'FOR-NEXT' code on Stack
 13C6 34   06                PSHS   D
 13C8 AE   21                LDX    1,Y        also Variable-Offset
 13CA 34   10                PSHS   X
 13CC BD   0F90              JSR    ASSIGN     Evaluate Variable-Assignment. Form Var-Type
 13CF D6   78                LDB    MODEFG     Check Mode-Flag
 13D1 26   31                BNE    ERR34G     '$'. Syntax Error
 13D3 BD   0FA5              JSR    TYPCHK     Numeric. Check Variable-Type for Match
 13D6 BD   0F26              JSR    SKIPS1     Skip Spaces and get char
 13D9 81   32                CMPA   #$32       TO?
 13DB 26   27                BNE    ERR34G     No. Syntax Error
 13DD 31   21                LEAY   1,Y        Yes
 13DF 96   CC                LDA    VARTYP     Get Var-Type
 13E1 85   04                BITA   #4         '%'?
 13E3 26   56                BNE    FOR4       Yes
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE     57

 13E5 8D   70               BSR    FOR6      FP. Evaluate expression
 13E7 DC   91               LDD    MATH0     Transfer Target
 13E9 DD   6C               STD    MATH6     to #6 reg
 13EB DC   93               LDD    MATH0+2
 13ED DD   6E               STD    MATH6+2
 13EF DC   95               LDD    MATH0+4
 13F1 DD   70               STD    MATH6+4
 13F3 DC   97               LDD    MATH0+6
 13F5 DD   72               STD    MATH6+6
 13F7 BD   0F26             JSR    SKIPS1    Skip Spaces and get char
 13FA 81   33               CMPA   #$33      STEP?
 13FC 26   09               BNE    FOR2      No
 13FE 31   21               LEAY   1,Y       Yes. Bypass Step-Code
 1400 8D   55               BSR    FOR6      Evaluate expression
 1402 20   13               BRA    FOR3

 1404 7E   0B61      ERR34G JMP     SYNERR    Error-Code 52 (Syntax Error)
                     *
                     * FLOATING-POINT STEP BY 1
                     *
 1407 CC   0000      FOR2    LDD    #0        Set Step-Size to 1
 140A DD   91                STD    MATH0
 140C DD   93                STD    MATH0+2
 140E DD   95                STD    MATH0+4
 1410 C6   81                LDB    #$81      ie, 1.0 (base 10)
 1412 DD   97                STD    MATH0+6
 1414 BD   3629              JSR    FP2INT    Convert FP to Integer

                     * STACK STEP-SIZE AND TARGET

 1417 BD   0F26      FOR3   JSR    SKIPS1    Skip Spaces and get char
 141A DC   81               LDD    NXLNAD    Stack Next-Line addr
 141C 34   06               PSHS   D
 141E 34   20               PSHS   Y         and Line-Pos pointer
 1420 9E   97               LDX    MATH0+6   Stack M0 (STEP Size)
 1422 DC   95               LDD    MATH0+4
 1424 34   16               PSHS   D,X
 1426 9E   93               LDX    MATH0+2
 1428 DC   91               LDD    MATH0
 142A 34   16               PSHS   D,X
 142C 9E   72               LDX    MATH6+6   Stack M6 (Target)
 142E DC   70               LDD    MATH6+4
 1430 34   16               PSHS   D,X
 1432 9E   6E               LDX    MATH6+2
 1434 DC   6C               LDD    MATH6
 1436 34   16               PSHS   D,X
 1438 7E   0284             JMP    STENDC    Check Statement-Ending and continue
                     *
                     * INTEGER TARGET
                     *
 143B BD   222A      FOR4    JSR    EVLINT   Evaluate Target
 143E DC   91                LDD    MATH0    Move Integer from N0 to M6
 1440 DD   6C                STD    MATH6
 1442 BD   0F26              JSR    SKIPS1   Skip Spaces and get char
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER        PAGE   58

 1445 81   33               CMPA   #$33         STEP?
 1447 26   07               BNE    FOR5         No. Integer step of 1
 1449 31   21               LEAY   1,Y          Yes. Bypass Step-Code
 144B BD   222A             JSR    EVLINT       Evaluate Step-Size
 144E 20   C7               BRA    FOR3         Stack them
                     *
                     * INTEGER STEP OF '1'
                     *
 1450 CC   0001      FOR5    LDD    #1
 1453 DD   91                STD    MATH0     Set M0 to 0001
 1455 20   C0                BRA    FOR3      Stack it and Target
                     *
                     * EVALUATE 'TO' OR 'STEP' EXPRESSION
                     *
 1457 BD   1843      FOR6    JSR    EVALEX    Evaluate expression
 145A D6   78                LDB    MODEFG    Check Mode-Flag
 145C 26   0B                BNE    ERR48A    '$'. Error-Code 72
 145E 85   04                BITA #4          Numeric. '%'?
 1460 26   01                BNE    FOR7      Yes
 1462 39                     RTS              FP

 1463 BD   31F2      FOR7   JSR    INTBFP       Conv to FP binary
 1466 7E   3629             JMP    FP2INT       Convert FP to Integer

 1469 86   48        ERR48A LDA    #$48         Error-Code 72 (Mixed Mode error)
 146B 20   02               BRA    ERRXXX       Process error

 146D 86   3E        ERR3EA LDA     #$3E        Error-Code 62 (FOR-NEXT Nest-error)
 146F 7E   0B6B      ERRXXX JMP     ERROR       Process error
                     *
                     * NEXT OUTER LOOP
                     *
 1472 32 E8 18       NEXT0 LEAS 24,S            Next outer loop
 1475 11BC 0101              CMPS ENDMEM
 1479 27 F2                  BEQ    ERR3EA      Error-Code 62

                     * EXECUTE NEXT STATEMENT

 147B A6 E8 17       NEXT   LDA    23,S         Get code
 147E 81 F8                 CMPA   #$F8         'FOR-NEXT'?
 1480 26 EB                 BNE    ERR3EA       No. Error-Code 62
 1482 BD 0F26               JSR    SKIPS1       Yes. Skip Spaces and get char
 1485 97 CC                 STA    VARTYP       Save Var-Type
 1487 EC 21                 LDD    1,Y          Get its offset
 1489 10A3 E8 14            CMPD   20,S         Same as stored offset?
 148D 26 E3                 BNE    NEXT0        No
 148F 31 23                 LEAY   3,Y          Yes. Bypass variable and Offset
 1491 C3 0003               ADDD   #3           Bump D past Name and Type
 1494 D3 5D                 ADDD   VARPTR       Add V-Ptr to point to Value
 1496 DD 68                 STD    STKPTR       Save at Target addr
 1498 96 CC                 LDA    VARTYP       Test Var-Type
 149A 85 04                 BITA   #4           '%'?
 149C 26 3F                 BNE    NEXT6        Yes
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER    PAGE   59

                     * BUMP FP LOOP-COUNT. LEAVE LOOP IF PAST TARGET

 149E EC   68                LDD    8,S        No. Transfer Step-Size
 14A0 DD   91                STD    MATH0      to M0
 14A2 EC   6A                LDD    10,S
 14A4 DD   93                STD    MATH0+2
 14A6 EC   6C                LDD    12,S
 14A8 DD   95                STD    MATH0+4
 14AA EC   6E                LDD    14,S
 14AC DD   97                STD    MATH0+6
 14AE 9E   68                LDX    STKPTR     Get Target-Addr
 14B0 BD   2F78              JSR    JSTIFY     Justify, and add/subtract
 14B3 1F   41                TFR    S,X
 14B5 BD   2EE7              JSR    CMPFP      Compare FP numbers for approx =
 14B8 34   01                PSHS   CC         Save their relationship
 14BA E6   08                LDB    8,X        Test Step-Size
 14BC 2A   09                BPL    NEXT2      +ve

                     * NEGATIVE FP STEP-SIZE

 14BE 35   01                PULS   CC         -ve. Recover relationship
 14C0 24   09                BCC    NEXT3      More to do

                     * FOR-NEXT LOOP COMPLETED

 14C2 32   E8 18     NEXT1   LEAS   24,S       Next outer loop
 14C5 20   10                BRA    NEXT5
                     *
                     * POSITIVE FP STEP-SIZE
                     *
 14C7 35 01          NEXT2 PULS CC             Recover relationship
 14C9 22 F7                  BHI    NEXT1      Loop completed
 14CB BD 0FBD        NEXT3 JSR      STAKFP     Stack Target
 14CE 10AE E8 10     NEXT4 LDY      16,S       Get Line-Pos
 14D2 AE E8 12               LDX    18,S       Get Next-Line addr
 14D5 9F 81                  STX    NXLNAD     Save in Next-Line addr

                     * RE-EXECUTE LOOP

 14D7 BD   0F26      NEXT5   JSR    SKIPS1     Skip Spaces and get char
 14DA 7E   0284              JMP    STENDC     Check Statement-Ending and continue
                   *
                   * BUMP INTEGER LOOP-COUNT. LEAVE LOOP IF PAST TARGET
                   *
 14DD EC   9F 0068 NEXT6 LDD      [STKPTR] Get Loop-Count
 14E1 E3   68              ADDD 8,S         and add Step-Size
 14E3 29   1A              BVS    ERR6DA    Error-Code 109
 14E5 6D   68              TST    8,S       Test Step-Size
 14E7 2A   0B              BPL    NEXT7     +ve

                     * NEGATIVE INTEGER STEP-SIZE

 14E9 10A3 E4                CMPD   0,S        -ve. Compare with Target
 14EC 2D D4                  BLT    NEXT1      Past it
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   60

 14EE ED   9F 0068           STD   [STKPTR] Still OK. Save Loop-Count
 14F2 20   DA                BRA   NEXT4
                 *
                 * POSITIVE INTEGER STEP-SIZE
                 *
 14F4 10A3 E4    NEXT7 CMPD 0,S           At Target?
 14F7 2E C9              BGT    NEXT1     Past it
 14F9 ED 9F 0068         STD    [STKPTR] Still OK. Save Loop-Count
 14FD 20 CF              BRA    NEXT4

 14FF 86   6D        ERR6DA LDA    #$6D       Error-Code 109 (Over-UnderFlow in Integer)
 1501 7E   0B6B             JMP    ERROR      Process error

 1504 7E   0B61      ERR34H JMP    SYNERR     Error-Code 52 (Syntax Error)

 1507 86   51        ERR51   LDA   #$51       Error-Code 81 (Array already DIMed)
 1509 7E   0B6B              JMP   ERROR      Process it
                   *
                   * EXECUTE DIM STATEMENT
                   *
 150C 0F   EC      DIM     CLR    RECORD    Clear Channel #
 150E BD   0F26            JSR    SKIPS1    Skip Spaces and get char
 1511 2B   08              BMI    DIM1      Variable
 1513 BD   2D90            JSR    EVALRC    Statement. Evaluate Channel #
 1516 BD   0F26            JSR    SKIPS1    Skip Spaces and get char
 1519 2A   E9              BPL    ERR34H    Statement. Syntax Error
 151B 85   60      DIM1    BITA #$60        Predefined, or Constant?
 151D 26   E5              BNE    ERR34H    Yes. Syntax Error
 151F 97   4E              STA    CODEST    No. Save in Code-Store
 1521 BD   19FD            JSR    LOCDM1    Locate Variable on Stack
 1524 DD   72              STD    MATH6+6 Store vector to array
 1526 AE   9F 0072         LDX    [MATH6+6] Already DIMensioned?
 152A 26   DB              BNE    ERR51     Yes. Error
 152C BD   20B3            JSR    LPARCK    No. Check for '('
 152F CC   0000            LDD    #0
 1532 DD   6C              STD    MATH6     Set Dimension 1 to 0
 1534 BD   222A            JSR    EVLINT    Evaluate Dimension 1
 1537 BD   0F26            JSR    SKIPS1    Skip Spaces and get char
 153A 31   21              LEAY 1,Y
 153C 81   75              CMPA #$75        ')'?
 153E 27   12              BEQ    DIM2      Yes (Single dim counts as Dim 2)
 1540 81   72              CMPA #$72        No. ','?
 1542 26   C0              BNE    ERR34H    No. Syntax Error
 1544 DC   91              LDD    MATH0     It's ','. Recover Dimension 1
 1546 DD   6C              STD    MATH6     and save in #6
 1548 BD   222A            JSR    EVLINT    Evaluate Dimension 2
 154B BD   20A9            JSR    RPARCK    Check for ')'
 154E 9E   72              LDX    MATH6+6 Get array-vector
 1550 6C   03              INC    3,X       and flag as 2-dim array

                     * CALCULATE ARRAY-SIZE

 1552 DC   6C        DIM2    LDD   MATH6      Get Dimension 1
 1554 2B   AE                BMI   ERR34H     -ve. Syntax Error
RBASIC by R. Jones   31 May 1988       4-7-4 TSC ASSEMBLER    PAGE   61

 1556 34 06                 PSHS   D          +ve. Save it
 1558 DC 91                 LDD    MATH0      Get Dimension 2
 155A 2B A8                 BMI    ERR34H     -ve. Syntax Error
 155C 34 06                 PSHS   D          +ve. Save it
 155E 0D EC                 TST    RECORD     Test Channel #
 1560 1026 183C             LBNE   OPNVRA     Not 0. Compute # of Items per Record
 1564 9E 91                 LDX    MATH0      =0. Get Dimension 2 from M0
 1566 30 01                 LEAX   1,X        Bump, and
 1568 9F 91                 STX    MATH0      Re-save
 156A 9E 6C                 LDX    MATH6      Same with Dimension 1
 156C 30 01                 LEAX   1,X
 156E 9F 6C                 STX    MATH6

                     * CALCULATE # OF BYTES IN VECTOR-ARRAY

 1570 8E   006C             LDX    #MATH6     Point to Dimension 1
 1573 BD   3ABC             JSR    MPY16B     Multiply by Dimension 2
 1576 08   92               ASL    MATH0+1    *2
 1578 09   91               ROL    MATH0
 157A 96   4E               LDA    CODEST     Get Code-Store
 157C 85   04               BITA   #4         '%'?
 157E 26   0C               BNE    DIM3       Yes. Multiply by 2 bytes only
 1580 08   92               ASL    MATH0+1    *2 again
 1582 09   91               ROL    MATH0
 1584 85   01               BITA   #1         No. '$'?
 1586 26   04               BNE    DIM3       Yes. Multiply by 4 bytes only
 1588 08   92               ASL    MATH0+1    FP. Multiply by 8
 158A 09   91               ROL    MATH0
 158C DC   91        DIM3   LDD    MATH0      +4 extra bytes for dimensions
 158E C3   0004             ADDD   #4

                     * RESERVE MEMORY-SPACE FOR VECTORS AND STORE DIMENSION-SIZES

 1591 BD 2250               JSR    RSVSPC     Allocate memory-space
 1594 4F                    CLRA
 1595 A7 80          DIM4   STA    0,X+       Set array to 0
 1597 9C 59                 CMPX   LINADR
 1599 26 FA                 BNE    DIM4
 159B 9E 2E                 LDX    LINPOS     Get Line-Pos pointer
 159D 35 06                 PULS   D
 159F ED 02                 STD    2,X        Store Dimension 2
 15A1 35 06                 PULS   D
 15A3 ED 84                 STD    0,X        Store Dimension 1
 15A5 9E 72                 LDX    MATH6+6
 15A7 DC 2E                 LDD    LINPOS     Get Line-Pos pointer
 15A9 ED 84                 STD    0,X        and save Vector-addr
 15AB 6F 02                 CLR    2,X        Clear VRA-byte
 15AD BD 0F26               JSR    SKIPS1     Skip Spaces and get char
 15B0 81 72                 CMPA   #$72       Separator ','?
 15B2 1026 ECCE             LBNE   STENDC     No. Check Statement-Ending and continue
 15B6 31 21                 LEAY   1,Y        Yes
 15B8 7E 150C               JMP    DIM        Back for next DIM in chain
                     *
                     * SKIP VARIABLE
RBASIC by R. Jones   31 May 1988       4-7-4 TSC ASSEMBLER   PAGE   62

                     *
 15BB C6   03        SKPVAR LDB    #3
 15BD 85   20               BITA   #$20       Constant?
 15BF 27   14               BEQ    SKVAR3     No

                     * SKIP CONSTANT

 15C1 85   02      SKVAR1 BITA #2           No. Line #?
 15C3 26   10              BNE    SKVAR3    Yes. Bump by 3
 15C5 85   04              BITA #4          No. '%'?
 15C7 26   07              BNE    SKVAR2    Yes. Bump by 3
 15C9 5A                   DECB
 15CA 85   01              BITA #1          '$'?
 15CC 26   02              BNE    SKVAR2    Yes. Bump by 2
 15CE C6   09              LDB    #9        No. Bump by 9 for FP
 15D0 31   A5      SKVAR2 LEAY B,Y          Bump by 'B'
 15D2 E6   A4              LDB    0,Y       Get # of bytes
 15D4 5C                   INCB             +1
 15D5 31   A5      SKVAR3 LEAY B,Y          Bypass ASCII string
 15D7 39                   RTS
                   *
                   * EXECUTE STOP STATEMENT
                   *
 15D8 8E   3E49    STOP    LDX    #STOPMS
 15DB BD   0452            JSR    OUTSTR    Output message
 15DE 0F   23              CLR    HALTFG    Clear Halt-Flag. Allow to continue
 15E0 9E   81              LDX    NXLNAD    Get Next-Line addr
 15E2 9F   D9              STX    HALTAD    Save in Halt-addr
 15E4 AE   9F 0083         LDX    [CLINAD] Get Current-Line #
 15E8 9F   E9              STX    ERLNBR    and put in Error-Line #
 15EA 7E   0BB4            JMP    ERROR2    Go process it
                   *
                   * PROCESS 'INPUT LINE' STATEMENT
                   *
 15ED 31   21      INPLIN LEAY 1,Y          Bump pointer
 15EF 8E   4857            LDX    #INPLBF Point to INPLN-Buf
 15F2 9F   76              STX    INPLPT    Save in INPLN-Adr
 15F4 9F   7B              STX    CURLIN    Save in CurLine
 15F6 DE   DF              LDU    FCBTMP    Get FCB pointer TEMP
 15F8 BD   271A            JSR    VINPCH    Validate Input Channel #
 15FB DC   DF              LDD    FCBTMP    Get FCB-pointer TEMP
 15FD DD   F0              STD    FCBPTR    Save in FCB-pointer
 15FF DF   DF              STU    FCBTMP    and save once more
 1601 BD   0F26            JSR    SKIPS1    Skip Spaces and get char
 1604 2A   28              BPL    ERR4CA    Statement. Error-Code 76
 1606 81   81              CMPA #$81        Variable. '$'?
 1608 27   04              BEQ    INPLN1    Yes
 160A 81   91              CMPA #$91        No. Subscripted-$?
 160C 26   20              BNE    ERR4CA    No. Error-Code 76
 160E BD   103C    INPLN1 JSR     INZSTK    Yes. Initialise Stacks, vectors, etc
 1611 BD   16CE            JSR    INPREQ    Request Input
 1614 9E   45              LDX    INBFPT    Get Input-Buf pointer
 1616 9F   79              STX    TEMP3
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   63

                     * COUNT STRING-LENGTH IN 'B'

 1618 5F                    CLRB
 1619 A6   80        INPLN2 LDA    0,X+      Search for CR, and
 161B 5C                    INCB             count chars in B
 161C 81   0D               CMPA   #CR
 161E 26   F9               BNE    INPLN2
 1620 5A                    DECB
 1621 BD   1F4C             JSR    IDSTR0
 1624 0F   78               CLR    MODEFG    Set Mode-Flag to 'Numeric'
 1626 BD   105E             JSR    STKSTR    Store String on Stack
 1629 0F   DE               CLR    INPSEL    Select Terminal input
 162B 7E   0284             JMP    STENDC    Check Statement-Ending and continue

 162E 86   4C        ERR4CA LDA     #$4C      Error-Code 76 (Illegal Variable-Type)
 1630 7E   0B6B              JMP    ERROR     Process error
                     *
                     * EXECUTE INPUT STATEMENT
                     *
 1633 CC   0000      INPUT LDD      #0
 1636 DD   27                STD    READFG    Clear READ and INP-MSG Flags
 1638 BD   0F26              JSR    SKIPS1    Skip Spaces and get char
 163B 81   2F                CMPA #$2F        LINE?
 163D 27   AE                BEQ    INPLIN    Yes. Go to it
 163F DE   DF                LDU    FCBTMP    No. Get FCB-pointer TEMP
 1641 BD   271A              JSR    VINPCH    Validate Input Channel #
 1644 DC   DF                LDD    FCBTMP    Get FCB-pointer TEMP
 1646 DD   F0                STD    FCBPTR    Save in FCB-pointer
 1648 DF   DF                STU    FCBTMP    and re-save
 164A BD   0F26      INPUT1 JSR     SKIPS1    Skip Spaces and get char
 164D 2A   20                BPL    ERR34J    Statement. Syntax Error
 164F 85   60                BITA #$60        Variable. Predefined, or Constant?
 1651 27   1F                BEQ    INPUT4    No
 1653 85   21                BITA #$21        Yes. $-constant?
 1655 27   18                BEQ    ERR34J    No. Syntax Error
 1657 D6   27                LDB    READFG    Yes. Test READ-Flag
 1659 26   14                BNE    ERR34J    Set. Syntax Error
 165B 31   24                LEAY 4,Y         Clear. Bypass String info
 165D E6   3D                LDB    -3,Y      Get length of message-string
 165F 27   08                BEQ    INPUT3    No message. Just a plain Input
 1661 A6   A0        INPUT2 LDA     0,Y+      Output message-string
 1663 BD   27AA              JSR    CHROUT
 1666 5A                     DECB
 1667 26   F8                BNE    INPUT2
 1669 31   21        INPUT3 LEAY 1,Y          All done. Bump pointer
 166B 0F   28                CLR    INPMSG    Clear INP-MSG Flag
 166D 20   45                BRA    INPUTB

 166F 7E   0B61      ERR34J JMP    SYNERR    Error-Code 52 (Syntax Error)

 1672 DE   27        INPUT4 LDU    READFG    Get READ and INP-MSG Flags
 1674 26   02               BNE    INPUT5    One or other set
 1676 8D   56               BSR    INPREQ    Both clear. Request Input
 1678 34   02        INPUT5 PSHS   A         Save Var-Code
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE     64

 167A BD   103C             JSR    INZSTK     Initialise Stacks, Vectors, etc
 167D 8E   46F7             LDX    #MSPTRS    Point to M-Stack vectors
 1680 9F   85               STX    MSTKPT     and store in M-Stack pointer
 1682 35   02               PULS   A          Recover Var-Code
 1684 85   01               BITA   #1         '$'?
 1686 26   12               BNE    INPUT8     Yes
 1688 84   0F               ANDA   #$0F       No. Mask high nybble
 168A 97   CC               STA    VARTYP     Save VARTYP
 168C BD   174E      INPUT6 JSR    DATEND     Check EOL or ',' in INPUT Line
 168F 26   04               BNE    INPUT7
 1691 8D   59               BSR    NXTVAR     Input next Variable
 1693 20   F7               BRA    INPUT6     and back again

 1695 BD   0FA5      INPUT7 JSR     TYPCHK    Check Variable-Types for Match
 1698 20   1A                BRA    INPUTB
                     *
                     * PROCESS STRING INPUT
                     *
 169A 8E   4857      INPUT8 LDX     #INPLBF   Point to INPLN-Buf
 169D 9F   76                STX    INPLPT
 169F 9F   7B                STX    CURLIN    Save in Cur-Line
 16A1 BD   177B      INPUT9 JSR     DATSTR    Get String-Length of 'DATA' item
 16A4 26   04                BNE    INPUTA    Item found
 16A6 8D   44                BSR    NXTVAR    End-of-Line. Input next Variable
 16A8 20   F7                BRA    INPUT9    and back again

 16AA 9F   79        INPUTA STX    TEMP3      Save pointer to String
 16AC BD   1F4D             JSR    IDSTR1
 16AF 0F   78               CLR    MODEFG     Set Mode-Flag to 'Numeric'
 16B1 BD   105E             JSR    STKSTR     Store String on Stack
 16B4 BD   0F26      INPUTB JSR    SKIPS1     Skip Spaces and get char
 16B7 2B   B6               BMI    ERR34J     Variable. Syntax Error
 16B9 81   7B               CMPA   #$7B       Statement. Terminator?
 16BB 24   0C               BCC    INPUTD     Yes
 16BD 81   72               CMPA   #$72       No. ','?
 16BF 27   04               BEQ    INPUTC     Yes
 16C1 81   73               CMPA   #$73       No. ';'?
 16C3 26   AA               BNE    ERR34J     No. Syntax Error
 16C5 31   21        INPUTC LEAY   1,Y        Bypass separator
 16C7 20   81               BRA    INPUT1     and back for next

 16C9 0F   DE        INPUTD CLR     INPSEL    Set to Terminal
 16CB 7E   0284              JMP    STENDC    Check Statement-Ending and continue
                     *
                     * REQUEST INPUT FROM TERMINAL
                     *
 16CE 34   02        INPREQ PSHS A
 16D0 96   DE                LDA    INPSEL    Test INPUT-SELECT
 16D2 26   06                BNE    INPRQ1    Not Terminal
 16D4 8E   3E3B              LDX    #QUERYM Output '? '
 16D7 BD   0454              JSR    OUTST1
 16DA 0C   25        INPRQ1 INC     INPTWT    Set Waiting-for-Input Flag
 16DC BD   049D              JSR    LINEIN    and input a Line
 16DF 0F   25                CLR    INPTWT    Clear INPUTWT-Flag
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   65

 16E1 96   DE                LDA    INPSEL    Test INPUT-SELECT
 16E3 26   03                BNE    INPRQ2    Not Terminal
 16E5 BD   045F              JSR    LINEND    Terminate Line
 16E8 0C   28        INPRQ2 INC     INPMSG    Set INPUT-DONE Flag
 16EA 35   82                PULS A,PC
                     *
                     * INPUT NEXT VARIABLE FOR 'INPUT' OR 'READ'
                     *
 16EC 96   27        NXTVAR LDA     READFG    Test READ-Flag
 16EE 27   DE                BEQ    INPREQ    Clear. Request Input
 16F0 9E   D3        LOCDAT LDX     TEMP6     Set. Get Next-Line temp
 16F2 27   1F                BEQ    ERR1FA    =0. Error-Code 31
 16F4 EC   02                LDD    2,X       Get Next-Line addr
 16F6 DD   D3                STD    TEMP6     and save in Next-Line temp
 16F8 30   04                LEAX 4,X         Bump pointer by 4 past Line #,etc
 16FA A6   84                LDA    0,X       get char
 16FC 2B   F2                BMI    LOCDAT    Variable. Go back
 16FE 81   7E                CMPA #$7E        Statement. 7E?
 1700 25   06                BCS    LOCDT2    <7E
 1702 80   7D                SUBA #$7D
 1704 30   86                LEAX A,X         Bypass Space codes
 1706 A6   84                LDA    0,X       Get next char
 1708 81   17        LOCDT2 CMPA #$17         DATA?
 170A 26   E4                BNE    LOCDAT    Not DATA line. Check next one
 170C 30   02                LEAX 2,X         DATA line. Point to actual data
 170E 9F   D1                STX    DATPTR    Save in DATA-pointer
 1710 9F   45                STX    INBFPT    and in Input-Buf pointer
 1712 39                     RTS

 1713 86   1F        ERR1FA LDA     #$1F      Error-Code 31 (Out of DATA in READ)
 1715 7E   0B6B              JMP    ERROR     Process error
                     *
                     * EXECUTE READ STATEMENT
                     *
 1718 86   01        READ    LDA    #1
 171A 97   27                STA    READFG    Set READ-Flag
 171C 20   02                BRA    READ1     Repeat

 171E 8D   CC        READ2   BSR   NXTVAR    Input next Variable
 1720 9E   D1        READ1   LDX   DATPTR    Get DATA-pointer
 1722 27   FA                BEQ   READ2     =0
 1724 9F   45                STX   INBFPT    Not 0. Save in Input-Buf pointer
 1726 7E   164A              JMP   INPUT1
                     *
                     * EXECUTE RESTORE STATEMENT
                     *
 1729 CC 0000        RESTOR LDD     #0
 172C DD D1                  STD    DATPTR    Clear DATA-pointer
 172E 9E 30                  LDX    LOWLIN    Get LowLine address
 1730 9F D3                  STX    TEMP6     and save
 1732 BD 0F26                JSR    SKIPS1    Skip Spaces and get char
 1735 2A 14                  BPL    RSTOR1    Statement
 1737 81 A2                  CMPA #$A2        Variable. Line #?
 1739 1026 F424              LBNE SYNERR      No. Syntax Error
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   66

 173D BD 0368                JSR    LINVAL    Validate Line #
 1740 1026 FC16              LBNE ERR3CA      Error-Code 60
 1744 9F D3                  STX    TEMP6     Save DATA-pointer in Temp
 1746 31 23                  LEAY 3,Y         Bypass Line # info
 1748 BD 0F26                JSR    SKIPS1    Skip Spaces and get char
 174B 7E 0284        RSTOR1 JMP     STENDC    Check Statement-Ending and continue
                     *
                     * CHECK FOR EOL OR ',' IN 'DATA' OR 'INPUT' LINE
                     *
 174E 9E   45        DATEND LDX     INBFPT    Get Input-Buf pointer
 1750 BD   3731              JSR    IGNSPC    Ignore Spaces
 1753 81   0D                CMPA #CR
 1755 27   1E                BEQ    DATND4    Yes. Go home
 1757 9F   45                STX    INBFPT    No. Save Input-Buf pointer
 1759 BD   3627              JSR    CVT2FP    Convert inputted ASCII to binary FP
 175C 9E   45        DATND1 LDX     INBFPT    Recover Input-Buf pointer
 175E BD   3731              JSR    IGNSPC    Ignore Spaces
 1761 81   0D                CMPA #CR
 1763 27   06                BEQ    DATND2    Yes
 1765 81   2C                CMPA #',         No. ','?
 1767 26   0D                BNE    ERR1EA    No. Error-Code 30
 1769 30   01                LEAX 1,X         Yes. Bypass it
 176B 9F   45        DATND2 STX     INBFPT    Save Input-Buf pointer
 176D 96   27                LDA    READFG    Test READ-Flag
 176F 27   02                BEQ    DATND3    Clear
 1771 9F   D1                STX    DATPTR    Set. Save DATA-pointer
 1773 86   80        DATND3 LDA     #$80      Set A to 80 (FP-variable code)
 1775 39             DATND4 RTS

 1776 86   1E        ERR1EA LDA     #$1E      Error-Code 30 (Data Type mismatch)
 1778 7E   0B6B              JMP    ERROR     Process error
                     *
                     * GET STRING-LENGTH IN INPUT OR 'DATA' LINE INTO STRLEN
                     *
 177B 9E   45        DATSTR LDX     INBFPT    Get Input-Buf pointer
 177D BD   3731              JSR    IGNSPC    Ignore Spaces
 1780 81   0D                CMPA #CR
 1782 27   F1                BEQ    DATND4    Yes. Go home
 1784 0F   43                CLR    STRLEN    No. Clear StrLen
 1786 81   22                CMPA #$22        "?
 1788 27   16                BEQ    DATST2    Yes
 178A 81   27                CMPA #$27        No. '?
 178C 27   12                BEQ    DATST2    Yes
 178E 9F   53                STX    STRBEG    " or ' not found. Save String-Start pointer
 1790 0C   43        DATST1 INC     STRLEN    Bump StrLen
 1792 81   0D                CMPA #CR         and keep incrementing it
 1794 27   20                BEQ    DATST4    until either CR
 1796 81   2C                CMPA #',         or ',' is found
 1798 27   1C                BEQ    DATST4
 179A 30   01                LEAX 1,X
 179C A6   84                LDA    0,X
 179E 20   F0                BRA    DATST1    and back again
                     *
                     * PROCESS DATA ITEM ENCLOSED IN QUOTES
RBASIC by R. Jones   31 May 1988    4-7-4 TSC ASSEMBLER   PAGE   67

                     *
 17A0 30   01        DATST2 LEAX   1,X      Bump pointer
 17A2 9F   53               STX    STRBEG   and save in String-Start pointer
 17A4 B7   48A4             STA    PUNDCT   Save in Temp
 17A7 0C   43        DATST3 INC    STRLEN   Keep bumping StrLen
 17A9 A6   80               LDA    0,X+     until matching
 17AB B1   48A4             CMPA   PUNDCT   symbol is found
 17AE 27   06               BEQ    DATST4
 17B0 81   0D               CMPA   #CR      No match. CR?
 17B2 27   C2               BEQ    ERR1EA   Yes. Error-Code 30
 17B4 20   F1               BRA    DATST3   No. Keep looking

 17B6 9F   45      DATST4 STX     INBFPT    Found. Save Input-Buf pointer
 17B8 8D   A2              BSR    DATND1    Check whether EOL or ','
 17BA 4F                   CLRA
 17BB D6   43              LDB    STRLEN    Get StrLen
 17BD 5A                   DECB             Dec it
 17BE 9E   53              LDX    STRBEG    Recover Input-Buf pointer
 17C0 39                   RTS
                   *
                   * COMPUTE DESTINATION ADDRESS
                   *
 17C1 BD   2240    DESTAD JSR     EVALDB    Evaluate and convert to 2-byte HEX
 17C4 BD   3277            JSR    INTTST    Check range of FP for conv. to Integer
 17C7 BD   20BD            JSR    COMMAC    Check for comma
 17CA DC   91              LDD    MATH0     Get output-address
 17CC DD   68              STD    STKPTR    Save in $-Stack pointer
 17CE 39                   RTS
                   *
                   * EXECUTE DPOKE STATEMENT
                   *
 17CF 8D   F0      DPOKE BSR      DESTAD    Compute destination address
 17D1 BD   2240            JSR    EVALDB    Evaluate expression to 2-byte HEX
 17D4 BD   3277            JSR    INTTST    Check range of FP for conv. to Integer
 17D7 DC   91              LDD    MATH0     Get data
 17D9 ED   9F 0068         STD    [STKPTR] and output to address
 17DD 7E   0284            JMP    STENDC    Check Statement-Ending and continue
                   *
                   * EXECUTE POKE STATEMENT
                   *
 17E0 8D   DF      POKE    BSR    DESTAD    Compute destination address
 17E2 BD   2207            JSR    EVALSB    Evaluate expression to 1-byte HEX
 17E5 A7   9F 0068         STA    [STKPTR] and POKE to address
 17E9 7E   0284            JMP    STENDC    Check Statement-Ending and continue
                   *
                   * EXECUTE DEF STATEMENT
                   *
 17EC BD   0F26    DEF     JSR    SKIPS1    Skip Spaces and get char
 17EF 81   C0              CMPA #$C0        Predefined FP?
 17F1 26   2D              BNE    ERR34K    No. Syntax Error
 17F3 31   21              LEAY 1,Y         Yes. Bump pointer
 17F5 EC   A1              LDD    0,Y++
 17F7 BD   0880            JSR    LOCVAL    Locate variable, and point to value
 17FA 9F   2A              STX    AUXPTR    Save in Aux. Pointer
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   68

 17FC BD 20B3               JSR    LPARCK     Check '('
 17FF BD 0F26               JSR    SKIPS1     Skip Spaces and get char
 1802 81 80                 CMPA   #$80       FP-variable?
 1804 26 1A                 BNE    ERR34K     No. Syntax Error
 1806 31 22                 LEAY   2,Y        Yes
 1808 BD 0F24               JSR    SKIPSP     Skip next Spaces and get char
 180B 81 75                 CMPA   #$75       )?
 180D 26 11                 BNE    ERR34K     No. Syntax Error
 180F BD 0F24               JSR    SKIPSP     Yes. Skip next Spaces and get char
 1812 81 69                 CMPA   #$69       =?
 1814 26 0A                 BNE    ERR34K     No. Syntax Error
 1816 31 21                 LEAY   1,Y        Yes. Bypass it
 1818 10AF 9F 002A          STY    [AUXPTR]   Save vector to Formula
 181D 7E 0F6D               JMP    REM        Bypass actual Formula for now

 1820 7E   0B61      ERR34K JMP     SYNERR    Error-Code 52 (Syntax Error)
                     *
                     * INITIALISE POINTERS
                     *
 1823 CC   4757      INZPTR LDD     #MSTACK Point to M-Stack
 1826 DD   66                STD    MSTKND    and init M-Stack-end
 1828 CC   44F7              LDD    #INPBUF Point to Input-Buf
 182B DD   7D                STD    INPBST
 182D 8E   4857              LDX    #INPLBF Point to INPLN-Buf
 1830 9F   76                STX    INPLPT    and save in INPLN-Ptr
 1832 CC   0000              LDD    #0
 1835 ED   84                STD    0,X       Clear 1st 2 bytes
 1837 97   78                STA    MODEFG    Set MODE-Flag to 'Numeric'
 1839 97   C3                STA    TEMP5     Clear ???
 183B 97   6A                STA    CMPLCD    Clear Compile-Code
 183D 8E   46F7              LDX    #MSPTRS Init Pointer to
 1840 9F   85                STX    MSTKPT    M-Stack vectors
 1842 39                     RTS
                     *
                     * EVALUATE MATHEMATICAL OR LOGICAL EXPRESSION
                     * STORE RESULT IN M0 IF NUMERIC
                     *
 1843 8D   DE        EVALEX BSR     INZPTR    Init Pointers, etc
 1845 8D   07                BSR    EVALUE    Evaluate expression, and execute
 1847 0D   78                TST    MODEFG    Test Mode-Flag
 1849 26   24                BNE    EVALU4    '$'. Go home
 184B 7E   1B4A              JMP    UNSTAK    Numeric. Copy M-Stack to M0
                     *
                     * CHECK 'OR' AND 'XOR' PRIORITY AGAINST HIGHER LEVELS, AND EXECUTE
                     *
 184E 8D   20        EVALUE BSR     ANDPTY    Check AND priority, and execute
 1850 27   1D                BEQ    EVALU4    =0. Go home
 1852 A6   A0        EVALU1 LDA     0,Y+
 1854 81   60                CMPA #$60        OR?
 1856 27   04                BEQ    EVALU2    Yes
 1858 81   61                CMPA #$61        XOR?
 185A 26   0F                BNE    EVALU3    No
 185C 34   02        EVALU2 PSHS A            Yes. Save Token
 185E 8D   10                BSR    ANDPTY    Check AND priority, and execute
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   69

 1860 35   02               PULS   A         Recover Token
 1862 27   41               BEQ    ERR49B    =0. Error-Code 73
 1864 80   5F               SUBA   #$5F      Not 0. Put OR or XOR code into A
 1866 BD   1C41             JSR    ANDOR     and execute function
 1869 20   E7               BRA    EVALU1    then back for more

 186B 31   3F        EVALU3 LEAY -1,Y         Adjust Pointer
 186D 97   6A                STA    CMPLCD    Save Operator-Code
 186F 39             EVALU4 RTS
                     *
                     * CHECK 'AND' PRIORITY AGAINST HIGHER LEVELS, AND EXECUTE
                     *
 1870 8D   12        ANDPTY BSR     RELPTY    Check for higher priority
 1872 27   FB                BEQ    EVALU4    =0. Go home
 1874 A6   A0        ANDPY1 LDA     0,Y+      Not 0. Get char
 1876 81   5F                CMPA #$5F        AND?
 1878 26   F1                BNE    EVALU3    No
 187A 8D   08                BSR    RELPTY    Yes. Check for higher priority
 187C 27   27                BEQ    ERR49B    Error-Code 73
 187E 4F                     CLRA             Not 0. Put AND-code into A
 187F BD   1C41              JSR    ANDOR     Execute AND function
 1882 20   F0                BRA    ANDPY1    and back for more
                     *
                     * CHECK RELATIONAL-OPERATOR PRIORITY
                     * AGAINST HIGHER LEVELS, AND EXECUTE
                     *
 1884 8D 24          RELPTY BSR     PMPTY     Check +- priority
 1886 27 E7                  BEQ    EVALU4    =0. Go home
 1888 A6 A0          RELPY1 LDA     0,Y+      Not 0. Get char
 188A 81 64                  CMPA #$64        Relop or math op?
 188C 25 DD                  BCS    EVALU3    No. Save code and go home
 188E 81 69                  CMPA #$69        Yes. Math op?
 1890 22 D9                  BHI    EVALU3    Yes. Save code and go home
 1892 34 02                  PSHS A           No. Save code
 1894 0D 78                  TST    MODEFG    Test MODE-Flag
 1896 1026 0639              LBNE VALST3      '$'
 189A 8D 0E                  BSR    PMPTY     Check +- priority
 189C 35 02                  PULS A           Recover code
 189E 27 05                  BEQ    ERR49B    Error-Code 73
 18A0 BD 1BEE                JSR    FTRUTH    Evaluate Truth of Function
 18A3 20 E3                  BRA    RELPY1    and back for more

 18A5 86   49        ERR49B LDA     #$49      Error-Code 73 (Illegal Expression)
 18A7 7E   0B6B              JMP    ERROR     Process error
                     *
                     * CHECK +- PRIORITY AGAINST HIGHER LEVELS, AND EXECUTE
                     *
 18AA 8D   21        PMPTY BSR      MDPTY     Check Multiply/Divide priority
 18AC 27   C1                BEQ    EVALU4    =0. Go home
 18AE A6   A0        PMPTY1 LDA     0,Y+      Not 0. Get char
 18B0 81   6F                CMPA #$6F        '-'?
 18B2 26   0B                BNE    PMPTY2    No. Check for +
 18B4 8D   17                BSR    MDPTY     Yes. Check Multiply/Divide priority
 18B6 27   ED                BEQ    ERR49B    Error-Code 73
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   70

 18B8 86   01               LDA    #1        Not 0. Put '-' code in A
 18BA BD   1AF4             JSR    MATH      Execute Math
 18BD 20   EF               BRA    PMPTY1    and back for more

 18BF 81   6E        PMPTY2 CMPA #$6E         '+'?
 18C1 26   A8        PMPTY3 BNE     EVALU3    No. Prepare to leave
 18C3 8D   08                BSR    MDPTY     Yes. Check Multiply/Divide priority
 18C5 27   DE                BEQ    ERR49B    Error-Code 73
 18C7 4F                     CLRA             Not 0. Put '+' code in A
 18C8 BD   1AF4              JSR    MATH      Execute Math
 18CB 20   E1                BRA    PMPTY1    and back for more
                     *
                     * CHECK MULTIPLY/DIVIDE/MOD PRIORITY
                     * AGAINST HIGHER LEVELS, AND EXECUTE
                     *
 18CD 8D   22        MDPTY BSR      EXPPTY    Check ^ priority
 18CF 27   37                BEQ    EXPTY2    =0. Go home
 18D1 A6   A0        MDPTY1 LDA     0,Y+      Not 0. Get char
 18D3 81   6D                CMPA #$6D        '*'?
 18D5 26   0B                BNE    MDPTY2    No. Check for /
 18D7 8D   18                BSR    EXPPTY    Yes. Check ^ priority
 18D9 27   CA                BEQ    ERR49B    Error-Code 73
 18DB 86   02                LDA    #2        Not 0. Put '*' code in A
 18DD BD   1AF4              JSR    MATH      Execute Math
 18E0 20   EF                BRA    MDPTY1    and back for more

 18E2 81   6C        MDPTY2 CMPA #$6C         '/'?
 18E4 26   85                BNE    EVALU3    No. Prepare to leave
 18E6 8D   09                BSR    EXPPTY    Yes. Check ^ priority
 18E8 27   BB                BEQ    ERR49B    Error-Code 73
 18EA 86   03                LDA    #3        Not 0. Put '/' code in A
 18EC BD   1AF4              JSR    MATH      Execute Math
 18EF 20   E0                BRA    MDPTY1    and back again
                     *
                     * CHECK ^ PRIORITY AGAINST HIGHER LEVELS, AND EXECUTE
                     *
 18F1 8D 18          EXPPTY BSR     UNARYP    Check Unary +- priority
 18F3 27 13                  BEQ    EXPTY2    =0. Go home
 18F5 A6 A0          EXPTY1 LDA     0,Y+      Not 0. Get char
 18F7 81 6B                  CMPA #$6B        '^'?
 18F9 1026 FF6E              LBNE EVALU3      No
 18FD 8D 0C                  BSR    UNARYP    Yes. Check Unary +- priority
 18FF 27 A4                  BEQ    ERR49B    Error-Code 73
 1901 86 04                  LDA    #4        Not 0. Put '^' code in A
 1903 BD 1AF4                JSR    MATH      Execute Math
 1906 20 ED                  BRA    EXPTY1    and back for more

 1908 39             EXPTY2 RTS

 1909 20   9A        ERR49C BRA     ERR49B    Error-Code 73 (Illegal Expression)
                     *
                     * CHECK UNARY +- AND 'NOT' PRIORITY
                     * AGAINST HIGHER LEVELS, AND EXECUTE
                     *
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   71

 190B A6 A4          UNARYP LDA     0,Y      Get char
 190D 2B 51                 BMI     EVALV    Variable. Evaluate it
 190F 81 34                 CMPA    #$34     Statement. FN?
 1911 1025 009B             LBCS    EVALP2   <34
 1915 81 5E                 CMPA    #$5E     NOT?
 1917 26 0A                 BNE     UNARY1   No. Unary -?

                     * NOT

 1919 31   21                LEAY   1,Y      Yes. Bump pointer
 191B BD   1884              JSR    RELPTY   Check Relop priority
 191E 27   E8                BEQ    EXPTY2   =0. Go home
 1920 7E   1C6C              JMP    NOT      Not 0. Execute NOT function
                     *
                     * UNARY -
                     *
 1923 81   6F        UNARY1 CMPA #$6F         -?
 1925 26   13                BNE    UNARY2    No. Check +
 1927 31   21                LEAY 1,Y         Yes. Bump pointer
 1929 8E   4377              LDX    #CONS4F Get 0.0 constant
 192C 1F   10                TFR    X,D
 192E BD   19CD              JSR    UDMSP3
 1931 8D   D8                BSR    UNARYP    Check Unary +- priority
 1933 27   D4                BEQ    ERR49C    Error-Code 73
 1935 86   01                LDA    #1        Not 0. Put '-' code in A
 1937 7E   1AF4              JMP    MATH      Execute Math
                     *
                     * UNARY + AND MISC FUNCTIONS
                     *
 193A 81 6E          UNARY2 CMPA #$6E         +?
 193C 27 1E                  BEQ    UNARY3    Yes
 193E 81 4C                  CMPA #$4C        No. 4C?
 1940 1023 037B              LBLS DCDNSF      <=4C. Calculate pointer to FNCT-VT table
 1944 81 74                  CMPA #$74        >4C. (?
 1946 27 51                  BEQ    EVALP1    Yes. Check paren priority
 1948 81 54                  CMPA #$54        No. 54?
 194A 1023 03BC              LBLS DECODE      <=54. Decode range above 48
 194E 81 5D                  CMPA #$5D        >54. 5D?
 1950 1023 0560              LBLS VALSTR      <=5D. Validate $-expression
 1954 81 7E                  CMPA #$7E        >5D. Single-Space?
 1956 27 04                  BEQ    UNARY3    Yes
 1958 25 56                  BCS    EVALP2    <7E
 195A 31 21                  LEAY 1,Y         >7E. Bump pointer
 195C 31 21          UNARY3 LEAY 1,Y
 195E 20 AB                  BRA    UNARYP    and back again
                     *
                     * CHECK FOR, AND EVALUATE, VARIABLES
                     *
 1960 85 01          EVALV BITA #1            '$'?
 1962 1026 054E              LBNE VALSTR      Yes. Validate $-expression
 1966 B7 48AD                STA    TEMP15    No. Store code
 1969 85 20                  BITA #$20        Constant?
 196B 26 49                  BNE    UDMSPT    Yes. Update V-Stack-Pointer table
 196D 85 40                  BITA #$40        No. Predefined?
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   72

>196F 1027 007F              LBEQ CHKSUB      No. Check if subscripted
 1973 81 C0          EVALV1 CMPA #$C0         Yes. USER?
 1975 1027 0835              LBEQ USRCHK      Yes. Check for valid User function
 1979 31 23                  LEAY 3,Y         No. Bump pointer
 197B 97 CB                  STA    VARCOD    Save Variable-Code
 197D BD 0F26                JSR    SKIPS1    Skip Spaces and get char
 1980 DE 15                  LDU    MATH7     Transfer M7
 1982 DF 91                  STU    MATH0     into M0
 1984 DE 17                  LDU    MATH7+2
 1986 DF 93                  STU    MATH0+2
 1988 DE 19                  LDU    MATH7+4
 198A DF 95                  STU    MATH0+4
 198C DE 1B                  LDU    MATH7+6
 198E DF 97                  STU    MATH0+6
 1990 7E 1B10                JMP    STACK0    Stack on top of V-Stack
                     *
                     * EVALUATE EXPRESSION INSIDE PARENTHESES
                     *
 1993 A6 A4          EVALPR LDA     0,Y       Get char
 1995 81 74                  CMPA #$74        '('?
 1997 26 17                  BNE    EVALP2    Non-subscripted
 1999 109F 2E        EVALP1 STY     LINPOS    Yes. Save pointer
 199C BD 0F24                JSR    SKIPSP    Skip next Spaces and get char
 199F BD 184E                JSR    EVALUE    Evaluate expression, and execute
 19A2 1027 FEFF              LBEQ ERR49B      =0. Error-Code 73
 19A6 81 75                  CMPA #$75        ')'?
 19A8 26 09                  BNE    ERR37B    No. Error-Code 55
 19AA BD 0F24                JSR    SKIPSP    Yes. Skip next Spaces and get char
 19AD 97 6A                  STA    CMPLCD    Save in Compile-Code
 19AF 39                     RTS

 19B0 0F   6A        EVALP2 CLR    CMPLCD    Clear COMPILE-CODE
 19B2 39                    RTS

 19B3 7E   0B59      ERR37B JMP     ERR37A    Error-Code 55 (Unbalanced Parentheses)
                     *
                     * UPDATE M-STACK POINTERS TABLE
                     *
 19B6 31 21          UDMSPT LEAY 1,Y          Point to Variable-value (binary)
 19B8 109F 5F                STY    VARADR    and save in Var-Adr
 19BB 85 04                  BITA #4          '%'?
 19BD 27 06                  BEQ    UDMSP1    No. FP
 19BF E6 22                  LDB    2,Y       Yes. Get # of digits in Integer
 19C1 CB 03                  ADDB #3
 19C3 20 04                  BRA    UDMSP2

 19C5 E6   28        UDMSP1 LDB    8,Y       Get # of digits in FP
 19C7 CB   09               ADDB   #9
 19C9 31   A5        UDMSP2 LEAY   B,Y
 19CB DC   5F               LDD    VARADR    Get Var-Adr
 19CD 9E   85        UDMSP3 LDX    MSTKPT    Get pointer to M-Stack vectors
 19CF 8C   4757             CMPX   #MSTACK   End-of-Stack?
 19D2 24   1B               BCC    ERR64B    Yes. Error-Code 100
 19D4 ED   01               STD    1,X       No. Save address of Variable
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER     PAGE   73

 19D6 34   02               PSHS   A
 19D8 B6   48AD             LDA    TEMP15       Get Variable-code from Temp
 19DB A7   84               STA    0,X          and save in M-Stack-Pointers
 19DD 30   03               LEAX   3,X          Bump to next location,
 19DF 9F   85               STX    MSTKPT       and save pointer to M-Stack vectors
 19E1 A6   A4               LDA    0,Y          Get char
 19E3 2B   08               BMI    UDMSP4       Variable
 19E5 81   7E               CMPA   #$7E         Single-Space?
 19E7 25   04               BCS    UDMSP4       <7E. Go home
 19E9 80   7D               SUBA   #$7D         Space-code
 19EB 31   A6               LEAY   A,Y          Bypass codes
 19ED 35   82        UDMSP4 PULS   A,PC

 19EF 7E   0D24      ERR64B JMP     ERR64A    Error-Code 100 (Expression too complex)
                     *
                     * CHECK WHETHER VARIABLE IS SUBSCRIPTED
                     *
 19F2 85   10        CHKSUB BITA #$10         Subscripted?
 19F4 26   11                BNE    CKRASD    Yes. Check array dimension
 19F6 8D   02                BSR    LOCDIM    No. Locate Dimension on V-Stack
 19F8 20   D3                BRA    UDMSP3
                     *
                     * CALCULATE ADDRESS OF ARRAY DATA ON V-STACK
                     * GET IT INTO 'D'
                     *
 19FA B7   48AD      LOCDIM STA     TEMP15    Save Var-type
 19FD EC   21        LOCDM1 LDD     1,Y       Get Offset of Variable
 19FF D3   5D                ADDD VARPTR      Add to V-Stack pointer
 1A01 C3   0003              ADDD #3          + 3 more to bypass info
 1A04 31   23                LEAY 3,Y         Bump pointer too
 1A06 39                     RTS
                     *
                     * CHECK ARRAY-REFERENCE AGAINST CORRESPONDING 'DIM'
                     *
 1A07 34   02        CKRASD PSHS A            Save Var-Code
 1A09 8D   EF                BSR    LOCDIM    Locate Dimension on Stack
 1A0B DD   70                STD    DIMPTR    Save in DIM-Ptr
 1A0D 34   06                PSHS D           Also stack it
 1A0F 0F   78                CLR    MODEFG    Set Mode-Flag to 'Numeric'
 1A11 9E   70                LDX    DIMPTR    Get DIM-Ptr
 1A13 A6   84                LDA    0,X       Undimensioned?
 1A15 27   51                BEQ    ERR4EA    Yes. Error-Code 78
 1A17 A6   03                LDA    3,X       No. A 2D array?
 1A19 26   51                BNE    CKRADD    Yes. Go to it

                     * SINGLE-DIMENSION ARRAY

 1A1B BD   1993             JSR    EVALPR       Evaluate expression in parentheses
 1A1E BD   2225             JSR    PRPINT       Prepare Integer for conversion
 1A21 CC   0000             LDD    #0           Clear Temp
 1A24 DD   2E               STD    LINPOS
 1A26 35   10        CKRAS1 PULS   X            Recover vector to Array
 1A28 35   02               PULS   A            Recover Var-Code
 1A2A B7   48AD             STA    TEMP15       Save in Temp
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   74

 1A2D E6 02                 LDB    2,X       Get Virtual-Array byte
 1A2F D7 ED                 STB    VRAFLG    Store in Virtual Array Flag
 1A31 AE 84                 LDX    0,X       Get DIM-value address
 1A33 9F 70                 STX    DIMPTR    Save in DIM-Ptr
 1A35 DC 91                 LDD    MATH0     Get calculated DIM ref
 1A37 10A3 02               CMPD   2,X       and compare with original DIM
 1A3A 22 27                 BHI    ERR4DA    >. Error-Code 77
 1A3C D3 2E                 ADDD   LINPOS    <=. Add Temp
 1A3E 0D ED                 TST    VRAFLG    Test Virtual-Array Flag
 1A40 1026 13F1             LBNE   VIRTRA    Set. Virtual Array
 1A44 97 2E                 STA    LINPOS    Save in Temp
 1A46 B6 48AD               LDA    TEMP15    Get Var-code from Temp
 1A49 85 04                 BITA   #4        '%'?
 1A4B 26 0A                 BNE    CKRAS2    Yes. Multiply by 2
 1A4D 58                    ASLB
 1A4E 09 2E                 ROL    LINPOS    Rotate into Temp
 1A50 85 01                 BITA   #1        No. '$'?
 1A52 26 03                 BNE    CKRAS2    Yes. Multiply by 4
 1A54 58                    ASLB             FP. Multiply by 8
 1A55 09 2E                 ROL    LINPOS    Rotate into Temp
 1A57 96 2E          CKRAS2 LDA    LINPOS    Get Temp
 1A59 58                    ASLB
 1A5A 49                    ROLA
 1A5B C3 0004               ADDD   #4
 1A5E D3 70                 ADDD   DIMPTR    Add DIM-Ptr
 1A60 7E 19CD               JMP    UDMSP3    Update Math-Stack pointer

 1A63 86   4D        ERR4DA LDA    #$4D      Error-Code 77 (Array ref out of range)
 1A65 7E   0B6B      ERRORB JMP    ERROR     Process error

 1A68 86   4E    ERR4EA LDA     #$4E      Error-Code 78 (Undimensioned Array ref)
 1A6A 20   F9            BRA    ERRORB
                 *
                 * CHECK ARRAY REFERENCE AGAINST CORRESPONDING 'DIM'
                 * DOUBLE-DIMENSION ARRAYS
                 *
 1A6C BD 20B3    CKRADD JSR     LPARCK    Check for '('
 1A6F BD 184E            JSR    EVALUE    Evaluate 1st expression
 1A72 BD 20BD            JSR    COMMAC    Check for comma
 1A75 BD 2225            JSR    PRPINT    Prepare Integer for conversion
 1A78 EC E4              LDD    0,S       Recover vector to Array
 1A7A DD 70              STD    DIMPTR    and store in DIM-Ptr
 1A7C AE 9F 0070         LDX    [DIMPTR] Point to it
 1A80 DC 91              LDD    MATH0     Get calculated DIM
 1A82 10A3 84            CMPD 0,X         Same as original DIM?
 1A85 22 DC              BHI    ERR4DA    >. Error-Code 77
 1A87 AE 02              LDX    2,X       <=. Get 2nd Dimension
 1A89 30 01              LEAX 1,X         Bump it, and
 1A8B 9F 2E              STX    LINPOS    save in Temp

                     * CALCULATE POSITION OF ELEMENT IN ARRAY

 1A8D 8E   002E             LDX    #LINPOS   Multiply calculated 1st DIM
 1A90 BD   3ABC             JSR    MPY16B    by 2nd DIM
RBASIC by R. Jones   31 May 1988    4-7-4 TSC ASSEMBLER   PAGE   75

 1A93 DC   91               LDD    MATH0    Stack the result
 1A95 34   06               PSHS   D
 1A97 BD   184E             JSR    EVALUE   Evaluate 2nd expression
 1A9A BD   20A9             JSR    RPARCK   Check for )
 1A9D BD   2225             JSR    PRPINT   Prepare Integer for conversion
 1AA0 35   06               PULS   D
 1AA2 DD   2E               STD    LINPOS   Save POSITION OF ELEMENT
 1AA4 20   80               BRA    CKRAS1   Check 2nd dimension against DIM
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   76


                     *                                                    *
                     * FLOATIN G- P OI NT              A RI T HM E TI C *
                     *                                                    *
                     *
                     * MULTIPLY 2 NUMBERS
                     *
 1AA6 34 10          MLTPLY PSHS X
 1AA8 BD 3653                JSR    SCALDN    Adjust for Scale-Factor
 1AAB 35 10                  PULS X
 1AAD BD 306E                JSR    MPYFP     Multiply FP numbers
 1AB0 96 F5                  LDA    SCALFG    Get Scale-Factor
 1AB2 1026 1B7C              LBNE FPINT3      Set. Round and add
 1AB6 39                     RTS              Clear
                     *
                     * DIVIDE 2 NUMBERS
                     *
 1AB7 BD   30E7      DIVIDE JSR     DIVFP     Divide FP numbers (M0/M4)
 1ABA 7E   3629              JMP    FP2INT    Convert FP to Integer
                     *
                     * PERFORM EXPONENTIATION
                     *
 1ABD BD   1B4A      EXPDO JSR      UNSTAK    Unstack M-Stack into M0
 1AC0 97   CB                STA    VARCOD    Save Var-Code
 1AC2 85   04                BITA #4          '%'?
 1AC4 26   11                BNE    EXPDO1    Yes
 1AC6 BD   3653              JSR    SCALDN    FP. Adjust for Scale-Factor
 1AC9 9E   93                LDX    MATH0+2 Transfer M0
 1ACB 9F   6E                STX    MATH6+2 to M6
 1ACD 9E   95                LDX    MATH0+4
 1ACF 9F   70                STX    MATH6+4
 1AD1 9E   97                LDX    MATH0+6
 1AD3 9F   72                STX    MATH6+6
 1AD5 9E   91                LDX    MATH0
 1AD7 9F   6C        EXPDO1 STX     MATH6
 1AD9 BD   223B              JSR    PRPFP     Prepare FP for conversion
 1ADC 8E   006C              LDX    #MATH6    Point to M6
 1ADF 96   CB                LDA    VARCOD    Recover Var-Code
 1AE1 85   04                BITA #4          '%'?
 1AE3 26   05                BNE    EXPDO2    Yes
 1AE5 BD   3A2F              JSR    APOWRB    No. Calculate a^b
 1AE8 20   03                BRA    EXPDO3

 1AEA BD   38E8      EXPDO2 JSR     POWRAB    Calculate precise integer a^b
 1AED BD   3629      EXPDO3 JSR     FP2INT    Convert FP to Integer
 1AF0 86   80                LDA    #$80      Code for FP-variable
 1AF2 20   1A                BRA    STAKIT    Stack on M-Stack
                     *
                     * PERFORM ONE OF EIGHT MATH FUNCTIONS
                     * AND PUT RESULT ON M-STACK
                     *
 1AF4 81   04        MATH    CMPA #4          EXP?
 1AF6 27   C5                BEQ    EXPDO     Yes
 1AF8 34   02                PSHS A           No. Save math-function-code
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER    PAGE   77

 1AFA BD 1B7E               JSR    CMPVT     Prepare numbers for conversion
 1AFD 97 CB                 STA    VARCOD    Save Var-Code
 1AFF AB E0                 ADDA   0,S+      Calculate function to perform
 1B01 48                    ASLA
 1B02 34 20                 PSHS   Y
 1B04 108E 3F39             LDY    #MATHVT
 1B08 AD B6                 JSR    [A,Y]     and go do it
 1B0A 35 20                 PULS   Y
 1B0C 20 02                 BRA    STACK0
                     *
                     * STACK VARIABLE ON M-STACK AND UPDATE POINTERS
                     *
 1B0E 97 CB          STAKIT STA     VARCOD    Save in Var-Code
 1B10 DC 66          STACK0 LDD     MSTKND    Get M-Stack-end
 1B12 1F 01                  TFR    D,X       and into X
 1B14 1083 4857              CMPD #INPLBF Top-of-Stack?
 1B18 24 2D                  BCC    ERR64D    Yes. Error-Code 100
 1B1A C3 0008                ADDD #8          No. Bump M-Stack-end
 1B1D DD 66                  STD    MSTKND    by 8
 1B1F 96 CB                  LDA    VARCOD    Recover Var-Code
 1B21 85 04                  BITA #4          '%'?
 1B23 26 0C                  BNE    STACK1    Yes. Stack 2 bytes
 1B25 DC 97                  LDD    MATH0+6 No, so stack M0
 1B27 ED 06                  STD    6,X       on M-Stack
 1B29 DC 95                  LDD    MATH0+4
 1B2B ED 04                  STD    4,X
 1B2D DC 93                  LDD    MATH0+2
 1B2F ED 02                  STD    2,X
 1B31 DC 91          STACK1 LDD     MATH0
 1B33 ED 84                  STD    0,X
 1B35 1F 10          STACK2 TFR     X,D
 1B37 9E 85                  LDX    MSTKPT    Get pointer to M-Stack vectors
 1B39 ED 01                  STD    1,X       and save vector
 1B3B 34 02                  PSHS A
 1B3D 96 CB                  LDA    VARCOD    Recover Var-Code
 1B3F A7 84                  STA    0,X       and save
 1B41 30 03                  LEAX 3,X         bump M-Stack pointer by 3
 1B43 9F 85                  STX    MSTKPT    and save in pointer to M-Stack vectors
 1B45 35 82                  PULS A,PC

 1B47 7E   0D24      ERR64D JMP     ERR64A    Error-Code 100 (Expression too complex)
                     *
                     * TRANSFER VARIABLE-VALUE TO M0
                     *
 1B4A 9E 85          UNSTAK LDX     MSTKPT    Get pointer to M-Stack vectors
 1B4C 8C 46F7                CMPX #MSPTRS Bottom-of-Stack?
 1B4F 1027 FD52              LBEQ ERR49B      Yes. Error-Code 73
 1B53 30 1D                  LEAX -3,X        Dec pointer
 1B55 9F 85                  STX    MSTKPT    and save back
 1B57 96 78                  LDA    MODEFG    Test MODE-Flag
 1B59 26 2B                  BNE    CMPVT1    '$'
 1B5B A6 84                  LDA    0,X       Numeric. Get Variable-Type
 1B5D 84 0F                  ANDA #$0F        Mask MS nybble
 1B5F AE 01                  LDX    1,X       Get pointer to M-Stack
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   78

 1B61 85   04               BITA   #4        '%'?
 1B63 26   14               BNE    UNSTK2    Yes
 1B65 34   02        UNSTK1 PSHS   A
 1B67 EC   06               LDD    6,X       Unstack FP into M0
 1B69 DD   97               STD    MATH0+6
 1B6B EC   04               LDD    4,X
 1B6D DD   95               STD    MATH0+4
 1B6F EC   02               LDD    2,X
 1B71 DD   93               STD    MATH0+2
 1B73 EC   84               LDD    0,X
 1B75 DD   91               STD    MATH0
 1B77 35   82               PULS   A,PC      Go home

 1B79 AE   84        UNSTK2 LDX     0,X       Unstack INT only
 1B7B 9F   91                STX    MATH0
 1B7D 39                     RTS              Go home
                     *
                     * COMPARE TWO NUMBERS 'A' AND 'B' READY FOR
                     * MATH OPERATION. GET MATH-OPERATOR CODE
                     *
 1B7E 9E   85        CMPVT LDX      MSTKPT    Get pointer to M-Stack vectors
 1B80 30   1A                LEAX -6,X        Back off by 2 variables
 1B82 9F   85                STX    MSTKPT    and save back
 1B84 96   78                LDA    MODEFG    Test Mode-Flag
 1B86 26   63        CMPVT1 BNE     ERR48B    '$'. Error-Code 72
 1B88 A6   84                LDA    0,X       Numeric. Get first Variable-type
 1B8A 84   0F                ANDA #$0F        Mask MS nybble
 1B8C 97   CB                STA    VARCOD    Save in Var-Code
 1B8E E6   03                LDB    3,X       Get second Variable-Type
 1B90 C4   0F                ANDB #$0F        Mask MS nybble
 1B92 D1   CB                CMPB VARCOD      Compare them
 1B94 2F   26                BLE    ATGEBT    A>=B

                     * FIRST VARIABLE'S TYPE-CODE < SECOND NUMBER'S

 1B96 EC   98 04            LDD    [4,X]     A<B. Get 2nd variable
 1B99 DD   91               STD    MATH0     and save in MS bytes of M0
 1B9B BD   31F2             JSR    INTBFP    Conv to FP binary
 1B9E BD   3629             JSR    FP2INT    Convert FP to Integer
 1BA1 DC   91               LDD    MATH0     Transfer M0
 1BA3 DD   A2               STD    MATH1     to M1
 1BA5 DC   93               LDD    MATH0+2
 1BA7 DD   A4               STD    MATH1+2
 1BA9 DC   95               LDD    MATH0+4
 1BAB DD   A6               STD    MATH1+4
 1BAD DC   97               LDD    MATH0+6
 1BAF DD   A8               STD    MATH1+6
 1BB1 9E   85               LDX    MSTKPT    Get pointer to M-Stack vectors
 1BB3 AE   01               LDX    1,X       Get addr of Variable in M-Stack
 1BB5 8D   AE               BSR    UNSTK1    and unstack its value into M0
 1BB7 8E   00A2             LDX    #MATH1    Point to M1
 1BBA 4F                    CLRA
 1BBB 39                    RTS
                     *
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   79

                     * FIRST VARIABLE'S TYPE-CODE >= SECOND NUMBER'S
                     *
 1BBC AE   01        ATGEBT LDX     1,X       Get Variable's addr from M-Stack
 1BBE 34   06                PSHS D
 1BC0 85   04                BITA #4          '%'?
 1BC2 26   0C                BNE    ATGEB1    Yes. Move only 2 bytes
 1BC4 EC   02                LDD    2,X       No. Move 8 bytes into M0
 1BC6 DD   93                STD    MATH0+2
 1BC8 EC   04                LDD    4,X
 1BCA DD   95                STD    MATH0+4
 1BCC EC   06                LDD    6,X
 1BCE DD   97                STD    MATH0+6
 1BD0 EC   84        ATGEB1 LDD     0,X
 1BD2 DD   91                STD    MATH0
 1BD4 35   02                PULS A
 1BD6 A1   E4                CMPA 0,S         Compare
 1BD8 35   04                PULS B
 1BDA 27   08                BEQ    ATGEB2    Match. A=B
 1BDC D7   CB                STB    VARCOD    A>B. Save in Var-Code
 1BDE BD   31F2              JSR    INTBFP    Convert INT to FP binary
 1BE1 BD   3629              JSR    FP2INT    Convert FP to Integer
 1BE4 9E   85        ATGEB2 LDX     MSTKPT    Get pointer to M-Stack vectors
 1BE6 AE   04                LDX    4,X       Get addr of next Variable on M-Stack
 1BE8 96   CB                LDA    VARCOD    Get Var-Code
 1BEA 39                     RTS

 1BEB 7E   1469      ERR48B JMP     ERR48A    Error-Code 72 (Mixed-Mode error)
                     *
                     * EVALUATE TRUTH OF RELATIONAL-OPERATOR EXPRESSION
                     *
 1BEE 34   02        FTRUTH PSHS A            Save Relop Token
 1BF0 8D   8C                BSR    CMPVT     Prepare numbers for comparison
 1BF2 85   04                BITA #4          '%'?
 1BF4 26   05                BNE    TRUTH1    Yes
 1BF6 BD   2EE7              JSR    CMPFP     FP. Compare for equivalence
 1BF9 20   12                BRA    TRUTH3
                     *
                     * COMPARE INTEGERS
                     *
 1BFB DC 91          TRUTH1 LDD     MATH0     Get Integer from M0
 1BFD 10A3 84                CMPD 0,X         Compare with other reg
 1C00 27 0B                  BEQ    TRUTH3
 1C02 2D 06                  BLT    TRUTH2
 1C04 86 02                  LDA    #2
 1C06 81 00                  CMPA #0
 1C08 20 01                  BRA    TRUTH0

 1C0A 4F             TRUTH2 CLRA
 1C0B 81   01        TRUTH0 CMPA #1           Convert to Unsigned Compare
                     *
                     * IDENTIFY TRUE OR FALSE
                     *
 1C0D 1F   A8        TRUTH3 TFR     CC,A
 1C0F 35   04        TRUTH4 PULS B            Recover Relop Token
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   80

 1C11 C0   64                SUBB   #$64      Subtract $64
 1C13 58                     ASLB             Multiply remainder by 4
 1C14 58                     ASLB             as offset into table
 1C15 8E   1C1C              LDX    #TRFALS
 1C18 1F   8A                TFR    A,CC
 1C1A 6E   85                JMP    B,X       and branch to it
                     *
                     * BRANCH TABLE FOR RELATIONAL-OPERATORS
                     *
 1C1C 23   1E        TRFALS BLS     TRUE      <= is true,
 1C1E 20   12                BRA    FALSE     otherwise false.

 1C20 24   1A                BCC    TRUE      >= is true,
 1C22 20   0E                BRA    FALSE     otherwise false.

 1C24 26   16                BNE    TRUE      <> is true,
 1C26 20   0A                BRA    FALSE     otherwise false.

 1C28 25   12                BCS    TRUE      < is true,
 1C2A 20   06                BRA    FALSE     otherwise false.

 1C2C 22   0E                BHI    TRUE      > is true,
 1C2E 20   02                BRA    FALSE     otherwise false.

 1C30 27   0A                BEQ    TRUE      = is true, otherwise false.

                     * STATEMENT IS FALSE

 1C32 8E   4377      FALSE   LDX    #CONS4F   Point to 0
 1C35 86   84        FALS1   LDA    #$84      Set code to
 1C37 97   CB                STA    VARCOD    '%' and save in Var-Code
 1C39 7E   1B35              JMP    STACK2    Stack Var-Code and constant on M-Stack
                     *
                     * STATEMENT IS TRUE
                     *
 1C3C 8E   41ED      TRUE    LDX    #MINUS1 Point to -1
 1C3F 20   F4                BRA    FALS1
                     *
                     * EXECUTE 'AND', 'OR' OR 'XOR' FUNCTION
                     *
 1C41 34   02        ANDOR PSHS A
 1C43 BD   2225              JSR    PRPINT    Prepare Integer for conversion
 1C46 9E   91                LDX    MATH0     Get M0
 1C48 9F   2E                STX    LINPOS    and save in Line-Pos
 1C4A BD   2225              JSR    PRPINT    Prepare Integer for conversion
 1C4D DC   91                LDD    MATH0     Get 2 bytes of M0
 1C4F 6A   E0                DEC    0,S+      Test stacked A
 1C51 2B   08                BMI    AND
 1C53 27   0C                BEQ    OR        It's OR
 1C55 98   2E                EORA LINPOS      XOR the 2 values
 1C57 D8   2F                EORB LINPOS+1
 1C59 20   0A                BRA    ANDOR1

 1C5B 94   2E        AND     ANDA   LINPOS    AND the 2 values
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER    PAGE     81

 1C5D D4   2F               ANDB   LINPOS+1
 1C5F 20   04               BRA    ANDOR1

 1C61 9A   2E        OR      ORA    LINPOS     OR the 2 values
 1C63 DA   2F                ORB    LINPOS+1
 1C65 DD   91        ANDOR1 STD     MATH0      Save in M0
 1C67 86   84                LDA    #$84       Integer code
 1C69 7E   1B0E              JMP    STAKIT     Stack M0 on M-Stack
                     *
                     * EXECUTE NOT FUNCTION
                     *
 1C6C BD   2225      NOT     JSR    PRPINT     Prepare Integer for conversion
 1C6F 03   91                COM    MATH0      Complement M0
 1C71 03   92                COM    MATH0+1    and M0+1
 1C73 86   54                LDA    #84        Set to '%' code
 1C75 7E   1B0E              JMP    STAKIT     Stack M0 on M-Stack
                     *
                     * EXECUTE NAME FUNCTION
                     *
 1C78 0C   28        NAME    INC    INPMSG     Set Flag for Name
 1C7A 20   02                BRA    PTR0
                     *
                     * EXECUTE PTR FUNCTION
                     *
 1C7C 0F   28        PTR     CLR    INPMSG     Set for Ptr
 1C7E 31   21        PTR0    LEAY 1,Y          Bump pointer
 1C80 BD   20B3              JSR    LPARCK     Check for (
 1C83 BD   0F26              JSR    SKIPS1     Skip Spaces and get char
 1C86 2A   34                BPL    ERR34T     Statement. Syntax Error
 1C88 85   60                BITA #$60         Variable. Predefined or Constant?
 1C8A 26   30                BNE    ERR34T     Yes. Syntax Error
 1C8C 0D   28                TST    INPMSG     Var-Name?
 1C8E 27   0F                BEQ    PTR1       No
 1C90 B7   48AD              STA    TEMP15     Save token
 1C93 EC   21                LDD    1,Y        Now compute
 1C95 D3   5D                ADDD VARPTR       address of
 1C97 C3   0001              ADDD #1           Var-Name,
 1C9A DD   35                STD    LMNTAD     and save it
 1C9C B6   48AD              LDA    TEMP15     Recover token
 1C9F BD   19F2      PTR1    JSR    CHKSUB     No. Check if subscripted
 1CA2 9E   85                LDX    MSTKPT     Get pointer to M-Stack vectors
 1CA4 30   1D                LEAX -3,X         Back off by one variable
 1CA6 9F   85                STX    MSTKPT     and save back
 1CA8 AE   01                LDX    1,X        Get vector
 1CAA 0D   28                TST    INPMSG     Var-Name?
 1CAC 27   04                BEQ    PTR2       No
 1CAE 0F   28                CLR    INPMSG     Clear Flag
 1CB0 9E   35                LDX    LMNTAD     Recover address
 1CB2 9F   91        PTR2    STX    MATH0      save in M0
 1CB4 BD   20A9              JSR    RPARCK     Check for )
 1CB7 BD   31E4              JSR    NMLINT     Normalise Integer in M0
 1CBA 20   43                BRA    DCDNS3

 1CBC 7E   0B61      ERR34T JMP    SYNERR      Error-Code 52 (Syntax Error)
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   82

                     *
                     * EXECUTE NON-$ FUNCTIONS IN FNCTVT < $49
                     *
 1CBF 81   49        DCDNSF CMPA #$49
 1CC1 24   47                BCC    DECODE    >=49
 1CC3 81   44                CMPA #$44        <49. PTR?
 1CC5 27   B5                BEQ    PTR       Yes. Go do it
 1CC7 81   46                CMPA #$46        No. ARC?
 1CC9 26   1B                BNE    DCDNS2    No
 1CCB 0C   32                INC    ARCFLG    Yes. Set Arc-Flag
 1CCD 1F   89                TFR    A,B       Copy function-code
 1CCF BD   0F24              JSR    SKIPSP    Identify function
 1CD2 81   3D                CMPA #$3D        SIN?
 1CD4 27   0E                BEQ    DCDNS1    Yes. Proceed
 1CD6 5C                     INCB             Bump Function-Code
 1CD7 81   37                CMPA #$37        No. COS?
 1CD9 27   09                BEQ    DCDNS1    Yes. Proceed
 1CDB 81   3F                CMPA #$3F        No. TAN?
 1CDD 27   07                BEQ    DCDNS2    Yes. Proceed
 1CDF 86   5F                LDA    #$5F      No. Error-Code 95 (Missing SIN, COS or TAN with ARC)
 1CE1 7E   0B6B              JMP    ERROR     Process it

 1CE4 1F   98        DCDNS1 TFR    B,A       Recover Function-Code
 1CE6 80   35        DCDNS2 SUBA   #$35      Subtract $35 from code
 1CE8 2B   1D               BMI    ERR49D    <35. Error-Code 73
 1CEA 48                    ASLA             >=35. Remainder *2
 1CEB 34   02               PSHS   A         Save adjusted code
 1CED BD   0F24             JSR    SKIPSP    Skip next Spaces and get char
 1CF0 BD   1993             JSR    EVALPR    Evaluate expression in parens
 1CF3 27   12               BEQ    ERR49D    =0. Error-Code 73
 1CF5 BD   223B             JSR    PRPFP     Not 0. Prepare FP for conversion
 1CF8 35   02               PULS   A         Recover adjusted code
 1CFA 8E   3ED6             LDX    #FNCTVT   Point to Jump Table
 1CFD AD   96               JSR    [A,X]     Get function addr, and execute it
 1CFF BD   3629      DCDNS3 JSR    FP2INT    Convert to Decimal
 1D02 86   80               LDA    #$80      Code for FP variable
 1D04 7E   1B0E             JMP    STAKIT    Stack it on M-Stack

 1D07 7E   18A5      ERR49D JMP     ERR49B    Error-Code 73 (Illegal Expression)
                     *
                     * EXECUTE NON-$ FUNCTIONS >= $49 BUT < $55
                     *
 1D0A 81 4D          DECODE CMPA #$4D         Var-Name?
 1D0C 1027 FF68              LBEQ NAME        Yes. Go to it
 1D10 31 21                  LEAY 1,Y         Bump pointer
 1D12 80 49                  SUBA #$49
 1D14 81 0C                  CMPA #12         DATE$?
 1D16 24 11                  BCC    ERRFFA    >=. Error-Code 255
 1D18 81 03                  CMPA #3
 1D1A 24 07                  BCC    DCODE1
 1D1C 34 02                  PSHS A
 1D1E BD 0F26                JSR    SKIPS1    Skip Spaces and get char
 1D21 35 02                  PULS A
 1D23 48             DCODE1 ASLA              Remainder *2
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   83

 1D24 8E   3EFC             LDX    #SVCTRS   Point to Vector-Table
 1D27 6E   96               JMP    [A,X]     Get address and execute

 1D29 86   FF        ERRFFA LDA     #$FF      Error-Code 255 (Illegal Token)
 1D2B 7E   0B6B              JMP    ERROR     Process error
                     *
                     * EXECUTE PI FUNCTION
                     *
 1D2E 8E   43CF      PI      LDX    #CONS6A Point to constant 6A (PI)
 1D31 BD   3938              JSR    LOADM0    Get it into M0
 1D34 20   C9                BRA    DCDNS3
                     *
                     * EXECUTE ERR FUNCTION
                     *
 1D36 DC   E7        ERR     LDD    ERRNO     Get ERR Error-Number
 1D38 7E   1C65              JMP    ANDOR1    and stack it
                     *
                     * EXECUTE ERL FUNCTION
                     *
 1D3B DC   E9        ERL     LDD    ERLNBR    Get ERL-Line-Number,
 1D3D 7E   1C65              JMP    ANDOR1    and stack it
                     *
                     * EXECUTE RESIDUE FUNCTION
                     *
 1D40 DC   FF        RESIDU LDD     REMNDR    Get residue
 1D42 7E   1C65              JMP    ANDOR1    and stack it
                     *
                     * EXECUTE ASC FUNCTION
                     *
 1D45 8D   14        ASC     BSR    VALNST    Validate $
 1D47 BD   121E              JSR    CHRGET    Get char from String
 1D4A 97   92                STA    MATH0+1 Save in M0+1
 1D4C 9F   7B                STX    CURLIN    Save Cur-Line pointer
 1D4E 86   84        ASC1    LDA    #$84      INT-variable code
 1D50 9E   7B        ASC2    LDX    CURLIN    Recover Cur-Line pointer
 1D52 9F   76                STX    INPLPT
 1D54 6F   84                CLR    0,X
 1D56 6F   01                CLR    1,X
 1D58 7E   1B0E              JMP    STAKIT    Stack Variable on M-Stack
                     *
                     * VALIDATE $-EXPRESSION AS BEING NUMERIC, AND PREPARE
                     * FOR CONVERSION TO DECIMAL-NUMBER
                     *
 1D5B BD   1F22      VALNST JSR     PARSTR    Validate $ in parens and get next char
 1D5E 0F   78                CLR    MODEFG    Set Mode-Flag to 'Numeric'
 1D60 8E   0000              LDX    #0
 1D63 9F   3D                STX    LSTBEG    Clear List-Beg
 1D65 9F   91                STX    MATH0     Clear MS 2 bytes of M0
 1D67 9E   7B                LDX    CURLIN    recover Cur-Line
 1D69 39             VALNS1 RTS
                     *
                     * EXECUTE LEN FUNCTION
                     *
 1D6A 8D   EF        LEN     BSR    VALNST    Validate $
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE      84

 1D6C 8D   2F               BSR    FDLEN1     Find String-Length
 1D6E 20   DE               BRA    ASC1       and stack on M-Stack
                     *
                     * EXECUTE VAL FUNCTION
                     *
 1D70 8D   E9        VAL     BSR    VALNST    Validate $
 1D72 86   18                LDA    #24       Count of 24 digits max
 1D74 97   6A                STA    CMPLCD    into Compile-Code
 1D76 9F   2A                STX    AUXPTR    Save in Aux. Pointer
 1D78 8E   44DF              LDX    #NBRBUF   Point to Number-Buf
 1D7B 9F   45                STX    INBFPT    and save pointer in Input-Buf-pointer
 1D7D BD   121E      VAL1    JSR    CHRGET    Get char from String
 1D80 27   0A                BEQ    VAL2      Done
 1D82 81   20                CMPA #SPACE      Not done yet
 1D84 27   F7                BEQ    VAL1      Yes. Skip it
 1D86 A7   80                STA    0,X+      No. Save char and bump pointer
 1D88 0A   6A                DEC    CMPLCD    Dec count
 1D8A 26   F1                BNE    VAL1      Not done yet. Back for more
 1D8C 86   0D        VAL2    LDA    #CR       All done
 1D8E A7   84                STA    0,X       Store a CR
 1D90 9E   2A                LDX    AUXPTR    Recover Pointer
 1D92 9F   7B                STX    CURLIN    and save in Cur-Line
 1D94 BD   3627              JSR    CVT2FP    Convert ASCII to FP binary
 1D97 86   80                LDA    #$80      FP Variable code
 1D99 20   B5                BRA    ASC2
                     *
                     * FIND STRING-LENGTH
                     *
 1D9B 9E   7B        FNDLEN LDX     CURLIN    Get Stack-pointer
 1D9D 9F   2E        FDLEN1 STX     LINPOS    Save in Line-Pos
 1D9F CC   0000              LDD    #0        Init String-Length to 0000
 1DA2 AE   84        FDLEN2 LDX     0,X       Test String-Addr
 1DA4 27   0A                BEQ    FDLEN3    =0. Prepare to leave
 1DA6 9E   2E                LDX    LINPOS    Not 0. Recover Stack-pointer
 1DA8 E3   02                ADDD 2,X         Inc by String-Length
 1DAA 30   04                LEAX 4,X         Next String-Variable
 1DAC 9F   2E                STX    LINPOS    and save
 1DAE 20   F2                BRA    FDLEN2    then back again

 1DB0 DD   91        FDLEN3 STD    MATH0      Save String-Length in M0
 1DB2 2A   B5               BPL    VALNS1     +ve. Go home

 1DB4 86   53               LDA    #$53       Error-Code 83 (String too long)
 1DB6 7E   0B6B             JMP    ERROR      Process error
                     *
                     * EXECUTE HEX FUNCTION
                     *
 1DB9 8D   A0        HEX     BSR    VALNST    Validate $
 1DBB 9F   76                STX    INPLPT
 1DBD BD   121E      HEX1    JSR    CHRGET    Get char from String
 1DC0 27   1F                BEQ    HEX4      Done
 1DC2 80   47                SUBA #$47        Not done yet. Subtract 'G
 1DC4 2A   1B                BPL    HEX4      Not HEX (>$46)
 1DC6 8B   06                ADDA #6
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER     PAGE      85

 1DC8 2A   04               BPL    HEX2         A -F
 1DCA 8B   07               ADDA   #7
 1DCC 2A   13               BPL    HEX4         Not HEX ($3A - $40)
 1DCE 8B   0A        HEX2   ADDA   #10
 1DD0 2B   0F               BMI    HEX4         Not HEX (<$30)
 1DD2 C6   04               LDB    #4
 1DD4 08   92        HEX3   ASL    MATH0+1      Shift 2 MS bytes
 1DD6 09   91               ROL    MATH0        left by 4 bits.
 1DD8 5A                    DECB                Low nybble of M0+1
 1DD9 26   F9               BNE    HEX3         now cleared.
 1DDB 9B   92               ADDA   MATH0+1      Merge new HEX digit
 1DDD 97   92               STA    MATH0+1      into M0+1
 1DDF 20   DC               BRA    HEX1         and back for next char

 1DE1 9F   7B        HEX4   STX    CURLIN       Save Cur-Line pointer
 1DE3 BD   31E4             JSR    NMLINT       Normalise FP Integer
 1DE6 BD   3629             JSR    FP2INT       Convert to Decimal
 1DE9 86   80               LDA    #$80         FP-variable code
 1DEB 7E   1D50             JMP    ASC2
                     *
                     * EXECUTE INSTR FUNCTION
                     *
 1DEE BD   20B3      INSTR JSR      LPARCK    Check for (
 1DF1 BD   184E              JSR    EVALUE    Evaluate expression
 1DF4 BD   2225              JSR    PRPINT    Prepare Integer for conversion
 1DF7 DC   91                LDD    MATH0     Stack Integer
 1DF9 34   06                PSHS D
 1DFB DC   76                LDD    INPLPT
 1DFD 34   06                PSHS D
 1DFF BD   20BD              JSR    COMMAC    Check for comma
 1E02 BD   1EB4              JSR    VALSTR    Validate $-variable
 1E05 DC   7B                LDD    CURLIN    Stack Cur-Line pointer
 1E07 34   06                PSHS D
 1E09 9E   76                LDX    INPLPT    Bump by 2
 1E0B 30   02                LEAX 2,X
 1E0D 9F   76                STX    INPLPT
 1E0F BD   20BD              JSR    COMMAC    Check for comma
 1E12 BD   1EB4              JSR    VALSTR    Validate $-variable
 1E15 BD   20A9              JSR    RPARCK    Check for )

                     * OK SO FAR. NOW FIND IT

 1E18 9E 7B                 LDX    CURLIN       Get Cur-Line pointer
 1E1A 9F 2A                 STX    AUXPTR       Save in Aux. pointer
 1E1C 9F 8F                 STX    MATH5+7
 1E1E 35 06                 PULS   D            Recover Cur-Line
 1E20 DD 7B                 STD    CURLIN       and re-store it
 1E22 35 06                 PULS   D
 1E24 DD 76                 STD    INPLPT
 1E26 35 06                 PULS   D            Recover Byte #
 1E28 83 0001               SUBD   #1
 1E2B 102B ED32             LBMI   SYNERR       -ve. Syntax Error
 1E2F DD 91                 STD    MATH0        +ve. Save in M0
 1E31 BD 20E2               JSR    LOCPNT       Locate desired point in String
RBASIC by R. Jones   31 May 1988    4-7-4 TSC ASSEMBLER       PAGE   86

 1E34 27   69             BEQ      INSTR4
 1E36 9F   7B             STX      CURLIN     Save Cur-Line pointer
 1E38 E3   84             ADDD     0,X        Point to cut-point
 1E3A ED   84             STD      0,X
 1E3C EC   02             LDD      2,X
 1E3E 93   43             SUBD     STRLEN     Subtract Str-Len
 1E40 ED   02             STD      2,X
 1E42 AE   9F 002A        LDX      [AUXPTR]   Get Current-Line #
 1E46 27   52             BEQ      INSTR3     =0
 1E48 AE   9F 007B        LDX      [CURLIN]   Not 0. Get
 1E4C 27   51             BEQ      INSTR4
 1E4E 8E   0000           LDX      #0
 1E51 9F   3D             STX      LSTBEG     Clear List-Beg
 1E53 9F   43      INSTR0 STX      STRLEN     Save in Str-Len
 1E55 BD   2159           JSR      CHRSTR     Get char from String in B
 1E58 9E   91             LDX      MATH0      Get M0
 1E5A BD   121E    INSTR1 JSR      CHRGET     Get char from String in A
 1E5D 27   40             BEQ      INSTR4
 1E5F 30   01             LEAX     1,X
 1E61 34   04             PSHS     B
 1E63 A1   E0             CMPA     0,S+       Match?
 1E65 26   F3             BNE      INSTR1     No
 1E67 9F   91             STX      MATH0      Yes. Save char-pos in M0
 1E69 9E   3D             LDX      LSTBEG     Get List-Beg
 1E6B 9F   A2             STX      MATH1      Save in M1
 1E6D 9E   3F             LDX      LSTEND     Get List-End
 1E6F 9F   A4             STX      MATH1+2    Save in M1+2
 1E71 9E   7B             LDX      CURLIN     Get Cur-Line addr
 1E73 9F   A6             STX      MATH1+4    Save in M1+4
 1E75 BD   2159    INSTR2 JSR      CHRSTR     Get char from String
 1E78 27   2A             BEQ      INSTR6
 1E7A BD   121E           JSR      CHRGET     Get char from String
 1E7D 27   20             BEQ      INSTR4
 1E7F 34   04             PSHS     B
 1E81 A1   E0             CMPA     0,S+       Match?
 1E83 27   F0             BEQ      INSTR2     Yes. Branch back
 1E85 9E   A2             LDX      MATH1      No, so restore
 1E87 9F   3D             STX      LSTBEG     Cur-Line, List-End,
 1E89 9E   A4             LDX      MATH1+2    and List-Beg
 1E8B 9F   3F             STX      LSTEND     addresses
 1E8D 9E   A6             LDX      MATH1+4    Get Cur-Line from M1+4
 1E8F 9F   7B             STX      CURLIN     Save in Cur-Line
 1E91 9E   8F             LDX      MATH5+7
 1E93 9F   2A             STX      AUXPTR
 1E95 8E   0000           LDX      #0
 1E98 20   B9             BRA      INSTR0     Back for more

 1E9A CC   0001      INSTR3 LDD    #1
 1E9D 20   03               BRA    INSTR5

 1E9F CC   0000      INSTR4 LDD    #0
 1EA2 DD   91        INSTR5 STD    MATH0      Store 0 or 1 integer
 1EA4 9E   76        INSTR6 LDX    INPLPT
 1EA6 6F   84               CLR    0,X
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE    87

 1EA8 6F   01               CLR    1,X
 1EAA BD   0F26             JSR    SKIPS1    Skip Spaces and get char
 1EAD 86   84               LDA    #$84      Code for Integer
 1EAF 0F   78               CLR    MODEFG    Set Mode-Flag to 'Numeric'
 1EB1 7E   1B0E             JMP    STAKIT    Stack it on M-Stack
                     *
                     * VALIDATE $-VARIABLE
                     *
 1EB4 DC   76        VALSTR LDD     INPLPT
 1EB6 34   06                PSHS D
 1EB8 8D   46                BSR    CONCAT    Bump pointer past string
 1EBA 35   06                PULS D           Unstack into
 1EBC DD   7B                STD    CURLIN    Cur-Line addr
 1EBE A6   A4                LDA    0,Y       Get next char
 1EC0 0D   78                TST    MODEFG    Test Mode-Flag
 1EC2 27   08                BEQ    VALST1    Numeric
 1EC4 81   64                CMPA #$64        '$'. 64?
 1EC6 25   04                BCS    VALST1    <64. Not a Relop
 1EC8 81   69                CMPA #$69        >=64. 69?
 1ECA 23   03                BLS    VALST2    <=69. It's a Relop
 1ECC 97   6A        VALST1 STA     CMPLCD    Save Token in Compile-Code
 1ECE 39                     RTS
                     *
                     * EVALUATE TRUTH OF RELATIONSHIP BETWEEN TWO STRINGS
                     *
 1ECF 34   02        VALST2 PSHS A            Save Relop-code
 1ED1 31   21                LEAY 1,Y         Bump pointer
 1ED3 9E   76        VALST3 LDX     INPLPT    Get
 1ED5 30   02                LEAX 2,X         bump by 2
 1ED7 9F   76                STX    INPLPT    and save back
 1ED9 DC   7B                LDD    CURLIN    Get Cur-Line addr
 1EDB 34   06                PSHS D
 1EDD DC   76                LDD    INPLPT
 1EDF 34   06                PSHS D
 1EE1 8D   1D                BSR    CONCAT    Bump pointer past string
 1EE3 27   16                BEQ    VALST4
 1EE5 35   06                PULS D           Unstack into Aux. Pointer
 1EE7 DD   2A                STD    AUXPTR
 1EE9 EC   E4                LDD    0,S
 1EEB DD   7B                STD    CURLIN    Recover Cur-Line addr
 1EED 0F   78                CLR    MODEFG    Set Mode-Flag to 'Numeric'
 1EEF BD   2127              JSR    CMPSTR    Compare Strings for equivalence
 1EF2 1F   A8                TFR    CC,A
 1EF4 35   40                PULS U
 1EF6 DF   76                STU    INPLPT    Restore Inp-Line pointer
 1EF8 7E   1C0F              JMP    TRUTH4

 1EFB 32   65        VALST4 LEAS 5,S          Adjust Stack
 1EFD 0F   6A        VALST5 CLR     CMPLCD    Clear Compile-Code
 1EFF 39             VALST6 RTS
                     *
                     * VALIDATE STRING-CONCATENATION (IF ANY)
                     * BUMP POINTER TO END OF CHAIN
                     *
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   88

 1F00 8D   11        CONCAT BSR    IDVARS    Identify if Variable, $, or neither
 1F02 27   FB               BEQ    VALST6    Neither. Go home
 1F04 A6   A4        CNCAT1 LDA    0,Y       Get code
 1F06 81   6E               CMPA   #$6E      '+'?
 1F08 26   C2               BNE    VALST1    No
 1F0A 31   21               LEAY   1,Y       Yes. Bump pointer
 1F0C 8D   05               BSR    IDVARS    Identify if Variable, $, or neither
 1F0E 26   F4               BNE    CNCAT1    Check for more

 1F10 7E   18A5              JMP    ERR49B    Error-Code 73 (Illegal Expression)
                     *
                     * IDENTIFY WHETHER VARIABLE OR $-STATEMENT, OR NEITHER
                     *
 1F13 BD 0F26        IDVARS JSR     SKIPS1    Skip Spaces and get char
 1F16 2B 1C                  BMI    IDSCON    Variable
 1F18 81 54                  CMPA #$54        Statement. 54? (CVT$F)
 1F1A 23 E1                  BLS    VALST5    <=54
 1F1C 81 5D                  CMPA #$5D        >54 5D? (CVTF$)
 1F1E 1023 0102              LBLS DCDSF       >54 but <=5D. Decode $-function

                     * VALIDATE $-EXPRESSION IN PARENS. GET NEXT CHAR INTO COMPILE-CODE REG.

 1F22 BD 20B3        PARSTR JSR     LPARCK    Check for (
 1F25 8D 8D                  BSR    VALSTR    Validate $-expression
 1F27 A6 A4                  LDA    0,Y       Get char
 1F29 81 75                  CMPA #$75        ')'?
 1F2B 1026 FA84              LBNE ERR37B      No. Error-Code 55
 1F2F BD 0F24                JSR    SKIPSP    Skip next Spaces and get char
 1F32 20 98                  BRA    VALST1
                     *
                     * IDENTIFY AND PROCESS $-CONSTANT
                     *
 1F34 85 01          IDSCON BITA #1           '$'?
 1F36 27 C7                  BEQ    VALST6    No. Go home
 1F38 81 A1                  CMPA #$A1        Yes. Is it in quotes?
 1F3A 25 34                  BCS    IDSTR4    <A1
 1F3C 1026 FA33              LBNE EVALV1      >A1
 1F40 E6 21                  LDB    1,Y       =A1. Get String-Length
 1F42 1F 98                  TFR    B,A       Copy it
 1F44 31 24                  LEAY 4,Y         Point to start of String
 1F46 109F 79                STY    TEMP3
 1F49 4C                     INCA
 1F4A 31 A6                  LEAY A,Y         Point to end of String
 1F4C 4F             IDSTR0 CLRA
 1F4D 9E 76          IDSTR1 LDX     INPLPT
 1F4F 8C 4897                CMPX #INPLBF+64 End-of-Buffer?
 1F52 24 19                  BCC    ERR64C    Yes. Error-Code 100
 1F54 84 7F                  ANDA #$7F        No. Mask MS nybble
 1F56 ED 02                  STD    2,X       Save String-Length
 1F58 27 08                  BEQ    IDSTR2
 1F5A DC 79                  LDD    TEMP3     Get Buf-pointer to start of String
 1F5C ED 84                  STD    0,X       and save
 1F5E 30 04                  LEAX 4,X         Bump by 4
 1F60 9F 76                  STX    INPLPT    and save back
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   89

 1F62 6F   84        IDSTR2 CLR    0,X       Clear next 2 bytes
 1F64 6F   01               CLR    1,X
 1F66 86   01        IDSTR3 LDA    #1
 1F68 97   78               STA    MODEFG    Set Mode-Flag to '$'
 1F6A 7E   0F26             JMP    SKIPS1    Skip Spaces and get char

 1F6D 7E   0D24    ERR64C JMP     ERR64A     Error-Code 100 (Expression too complex)
                   *
                   * NOT A STRING-CONSTANT
                   *
 1F70 BD   19F2    IDSTR4 JSR     CHKSUB     Check if subscripted
 1F73 DD   2E              STD    LINPOS     Save in Line-Pos
 1F75 9E   85              LDX    MSTKPT     Get pointer to M-Stack vectors
 1F77 30   1D              LEAX -3,X         dec by 3
 1F79 9F   85              STX    MSTKPT     and save back
 1F7B AE   9F 002E         LDX    [LINPOS]   Get data at Line-Pos
 1F7F 26   04              BNE    IDSTR5     Not 0
 1F81 9E   76              LDX    INPLPT     =0
 1F83 20   DD              BRA    IDSTR2

 1F85 9F   79        IDSTR5 STX     TEMP3
 1F87 9E   2E                LDX    LINPOS    Get Line-Pos
 1F89 A6   84                LDA    0,X       Test byte pointed to
 1F8B 27   04                BEQ    CHANCK    =0
 1F8D EC   02                LDD    2,X       Not 0. Get string-length
 1F8F 20   BC                BRA    IDSTR1
                     *
                     * CHECK FOR VALID CHANNEL-NUMBER
                     *
 1F91 A6   01        CHANCK LDA     1,X       Get Channel #
 1F93 27   1B                BEQ    ERR28E    =0. Error-Code 40
 1F95 81   0C                CMPA #12
 1F97 22   17                BHI    ERR28E    >12. Error-Code 40
 1F99 9F   2E                STX    LINPOS    <=12. Save Line-Pos
 1F9B A6   02                LDA    2,X       Get
 1F9D 34   02                PSHS A
 1F9F BD   274E              JSR    SELFCB    Select File's FCB
 1FA2 30   88 44             LEAX 68,X        Point to data-area of FCB
 1FA5 35   04                PULS B
 1FA7 3A                     ABX              Increment further
 1FA8 9F   79                STX    TEMP3
 1FAA 9E   2E                LDX    LINPOS    Recover Line-Pos
 1FAC E6   03                LDB    3,X
 1FAE 20   9C                BRA    IDSTR0

 1FB0 7E   2731    ERR28E JMP     ERR28A     Error-Code 40 (Bad File-Number used)
                   *
                   * EXECUTE PEEK FUNCTION
                   *
 1FB3 BD   3277    PEEK    JSR    INTTST     Test range of FP for conv to Integer
 1FB6 A6   9F 0091         LDA    [MATH0]    Get data from PEEK-addr
 1FBA 0F   91      PEEK1 CLR      MATH0      Clear MS byte of M0
 1FBC 97   92              STA    MATH0+1    Save data in next byte
 1FBE 7E   31F2            JMP    INTBFP     Convert to binary
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   90

                 *
                 * EXECUTE DPEEK FUNCTION
                 *
 1FC1 BD 3277    DPEEK JSR      INTTST    Test range of FP for conv to Integer
 1FC4 EC 9F 0091         LDD    [MATH0] Get double-byte from DPEEK-addr
 1FC8 DD 91              STD    MATH0     and save in MS 2 bytes of M0
 1FCA 7E 31E4            JMP    NMLINT    Normalise FP Integer in M0
                 *
                 * EXECUTE POS FUNCTION
                 *
 1FCD BD 3294    POS     JSR    CRANGE    Check number range and normalise it
 1FD0 DC 91              LDD    MATH0     Get Channel #
 1FD2 27 17              BEQ    POS1      =0. Terminal
 1FD4 1083 000C          CMPD #12         Not 0. 12?
 1FD8 1022 0755          LBHI ERR28A      >12. Error-Code 40
 1FDC 8E 44AB            LDX    #FCBSTK <=12, so
 1FDF 58                 ASLB             locate
 1FE0 AE 85              LDX    B,X       FCB addr
 1FE2 1027 0780          LBEQ ERR2BA      =0. Error-Code 43
 1FE6 A6 88 3F           LDA    63,X      Not 0. Get Column-position
 1FE9 20 CF              BRA    PEEK1

 1FEB 96   75        POS1   LDA    POSCTR    Get POSCTR
 1FED 20   CB               BRA    PEEK1
                   *
                   * EXECUTE FRE FUNCTION
                   *
 1FEF CC   0000    FRE     LDD    #0         init Free-Memory to 0
 1FF2 9E   41              LDX    FREPTR     Point to 1st Free-Slot
 1FF4 27   06              BEQ    FREE2      =0. No Free-Memory
 1FF6 E3   02      FREE1 ADDD 2,X            Not 0. Add size of this Slot
 1FF8 AE   84              LDX    0,X        and go to next Slot
 1FFA 26   FA              BNE    FREE1      till end of Chain
 1FFC DD   91      FREE2 STD      MATH0      All done. Save in M0
 1FFE 7E   31E4            JMP    NMLINT     Normalise FP Integer in M0
                   *
                   * EXECUTE USR FUNCTION
                   *
 2001 BD   3294    USR     JSR    CRANGE     Check number range and normalise it
 2004 DC   91              LDD    MATH0      Get 2 bytes from M0
 2006 ED   9F 0101         STD    [USRDAT]   and stash data for output
 200A AE   9F 0112         LDX    [USRVEC]   Get Vector to USR routine
 200E 27   0F              BEQ    ERR5BA     =0. Error-Code 91
 2010 34   20              PSHS Y            Not 0, so
 2012 AD   84              JSR    0,X        go to [USR routine
 2014 35   20              PULS Y
 2016 EC   9F 0101         LDD    [USRDAT]   Get return data
 201A DD   91              STD    MATH0      and save in M0
 201C 7E   31F2            JMP    INTBFP     Convert INT to FP binary

 201F 86   5B        ERR5BA LDA     #$5B      Error-Code 91 (Undefined USR call)
 2021 7E   0B6B              JMP    ERROR     Process error
                     *
                     * IDENTIFY AND EXECUTE $ FUNCTIONS >=$55 BUT <=$5D
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   91

                     *
 2024 31 21          DCDSF   LEAY   1,Y
 2026 1F 89                  TFR    A,B
 2028 BD 0F26                JSR    SKIPS1    Skip Spaces and get char
 202B C1 5D                  CMPB   #$5D      CVTF$?
 202D 1022 FCF8              LBHI   ERRFFA    Not $-function
 2031 8E 3F14                LDX    #DCDSF1   Point to Vector-Table
 2034 C0 55                  SUBB   #$55      Reduce Token by $55,
 2036 58                     ASLB             offset *2
 2037 6E 95                  JMP    [B,X]     Get addr of function, and do it
                     *
                     * EXECUTE CHR$ FUNCTION
                     *
 2039 0F   78        CHRS    CLR    MODEFG    Set MODE-Flag to 'Numeric'
 203B BD   1993              JSR    EVALPR    Evaluate expression in parens
 203E BD   2211              JSR    SB2DEC    Convert single-byte to decimal
 2041 C6   01        CHR1    LDB    #1        Bump Inp-Buf-Start
 2043 BD   2109              JSR    ADVPTR    by 1
 2046 9E   79                LDX    TEMP3
 2048 96   92                LDA    MATH0+1 Get M0+1
 204A A7   84                STA    0,X
 204C 7E   1F4C              JMP    IDSTR0
                     *
                     * EXECUTE LEFT$ FUNCTION
                     *
 204F 8D   56        LEFTS BSR      PARCHK    Validate internal $, and evaluate expression
 2051 BD   20E2      LEFTS1 JSR     LOCPNT    Locate desired point in $
 2054 27   06                BEQ    LEFTS2    =0
 2056 ED   02                STD    2,X       Not 0
 2058 6F   04                CLR    4,X
 205A 6F   05                CLR    5,X
 205C 7E   1F66      LEFTS2 JMP     IDSTR3    Set Mode-Flag to '$'. Get next char
                     *
                     * EXECUTE MID$ FUNCTION
                     *
 205F 8D   65        MIDS    BSR    VALINS    Evaluate internal expression after ','
 2061 9E   91                LDX    MATH0     Get integer from M0
 2063 30   1F                LEAX -1,X        dec
 2065 9F   91                STX    MATH0     and store back
 2067 8D   24                BSR    RIGHT1
 2069 BD   0F26              JSR    SKIPS1    Skip Spaces and get char
 206C 31   21                LEAY 1,Y         Bump pointer
 206E 81   75                CMPA #$75        ')'?
 2070 27   EA                BEQ    LEFTS2    Yes
 2072 81   72                CMPA #$72        No. ','?
 2074 26   44                BNE    ERR34L    No. Syntax Error
 2076 8D   55                BSR    VALIN1    Yes. Set pointer
 2078 8D   2F                BSR    RPARCK    Check for )
 207A 20   D5                BRA    LEFTS1
                     *
                     * EXECUTE RIGHT$ FUNCTION
                     *
 207C 8D   29        RIGHTS BSR     PARCHK    Validate internal $, and evaluate expression
 207E 9E   91                LDX    MATH0     Get # of chars to include
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   92

 2080 9F   2A                STX    AUXPTR    Save in Temp
 2082 BD   1D9B              JSR    FNDLEN    Determine String-Length
 2085 93   2A                SUBD AUXPTR      Subtract Temp
 2087 DD   91                STD    MATH0     Save # of chars to bypass
 2089 9E   91                LDX    MATH0     Get it into X
 208B 2F   CF                BLE    LEFTS2    <=0
 208D 8D   53        RIGHT1 BSR     LOCPNT    >0 Locate start-point of RIGHT$
 208F E3   84                ADDD 0,X
 2091 ED   84                STD    0,X
 2093 EC   02                LDD    2,X
 2095 93   43                SUBD STRLEN      Subtract Str-Len
 2097 ED   02                STD    2,X
 2099 9E   7B                LDX    CURLIN    Get Cur-Line addr
 209B 9C   2E        RIGHT2 CMPX LINPOS       Same as Line-Pos?
 209D 27   BD                BEQ    LEFTS2    Yes
 209F 6F   02                CLR    2,X       No. Clear String-Length
 20A1 6F   03                CLR    3,X
 20A3 30   04                LEAX 4,X         Bump to next vector
 20A5 20   F4                BRA    RIGHT2    and try again
                     *
                     * VALIDATE FORMAT OF $-EXPRESSION IN PARENTHESES
                     * ie ($,expression) AND EVALUATE EXPRESSION
                     *
 20A7 8D   1D        PARCHK BSR     VALINS    Evaluate internal expression after ','

                     * CHECK RIGHT PAREN

 20A9 BD   0F26      RPARCK JSR     SKIPS1   Skip Spaces and get char
 20AC 81   75                CMPA #$75       ')'?
 20AE 26   0A                BNE    ERR34L   No. Syntax Error
 20B0 31   21        RPAR1 LEAY 1,Y          Yes. Bump pointer
 20B2 39                     RTS
                     *
                     * CHECK LEFT PAREN
                     *
 20B3 BD   0F26      LPARCK JSR     SKIPS1   Skip Spaces and get char
 20B6 81   74                CMPA #$74       '('?
 20B8 27   F6                BEQ    RPAR1    Yes

 20BA 7E   0B61      ERR34L JMP     SYNERR    No. Error-Code 52 (Syntax Error)
                     *
                     * CHECK FOR COMMA
                     *
 20BD BD   0F26      COMMAC JSR     SKIPS1    Skip Spaces and get char
 20C0 81   72                CMPA #$72        ','?
 20C2 27   EC                BEQ    RPAR1     Yes
 20C4 20   F4                BRA    ERR34L    Syntax Error
                     *
                     * VALIDATE INTERNAL $-STATEMENT FOLLOWED BY COMMA
                     * EVALUATE EXPRESSION AFTER COMMA eg LEFT$(B$,2+I)
                     *
 20C6 8D   EB        VALINS BSR     LPARCK    Check for (
 20C8 BD   1EB4              JSR    VALSTR    Validate $-expression
 20CB 8D   F0                BSR    COMMAC    Check for comma
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   93


                     * EVALUATE EXPRESSION FOR POSITIONING $-POINTER

 20CD 0F   78        VALIN1 CLR     MODEFG    Set Mode-Flag to 'Numeric'
 20CF DC   7B                LDD    CURLIN    Stack Cur-Line addr
 20D1 34   06                PSHS D
 20D3 BD   184E              JSR    EVALUE    Evaluate expression
 20D6 35   06                PULS D           Restore Cur-Line addr
 20D8 DD   7B                STD    CURLIN
 20DA BD   2225              JSR    PRPINT    Prepare Integer for conversion to $
 20DD 9E   91                LDX    MATH0     Get Integer from M0
 20DF 2B   D9                BMI    ERR34L    Syntax Error
 20E1 39                     RTS
                     *
                     * LOCATE SPECIFIED POINT FOR CUTTING INTO STRINGS
                     *
 20E2 9E 7B          LOCPNT LDX     CURLIN    Get Cur-Line addr
 20E4 9F 2E                  STX    LINPOS    and save in Line-Pos
 20E6 CC 0000                LDD    #0
 20E9 AE 84          LOCPT1 LDX     0,X       Get vector
 20EB 27 1B                  BEQ    LOCPT3    =0. Go home
 20ED 9E 2E                  LDX    LINPOS    Not 0. Get Line-Pos
 20EF E3 02                  ADDD 2,X         Add String-Length
 20F1 1093 91                CMPD MATH0       Compare with M0
 20F4 24 06                  BCC    LOCPT2    D >= M0
 20F6 30 04                  LEAX 4,X         D < M0, so bump pointer
 20F8 9F 2E                  STX    LINPOS    and save in Line-Pos
 20FA 20 ED                  BRA    LOCPT1    then back again

 20FC 93   91        LOCPT2 SUBD MATH0        Subtract M0 from D
 20FE DD   43                STD    STRLEN    and save in Temp
 2100 EC   02                LDD    2,X       Get string-size
 2102 93   43                SUBD STRLEN      and subtract Temp
 2104 DD   43                STD    STRLEN    Save remainder
 2106 1C   FB                ANDCC #$FB       Clear Z-bit
 2108 39             LOCPT3 RTS
                     *
                     * TRANSFER INPBST TO TEMP3. BUMP INPBST BY B
                     *
 2109 9E   7D        ADVPTR LDX     INPBST
 210B 9F   79                STX    TEMP3
 210D 3A                     ABX              Bump X by B
 210E 9F   7D                STX    INPBST    and store
 2110 39                     RTS
                     *
                     * MOVE CHARACTERS TO BUFFER UNTIL NUL FOUND
                     * KEEP COUNT IN STRLEN
                     *
 2111 CC   0000      MV2NUL LDD     #0        Set 2-byte counter to 0
 2114 DD   43                STD    STRLEN    Clear Str-Len
 2116 DD   3D                STD    LSTBEG    Clear List-Beg
 2118 BD   121E      MVNUL1 JSR     CHRGET    Get char from String
 211B 27   EB                BEQ    LOCPT3    =0. Go home
 211D A7   80                STA    0,X+      Not 0. Save A
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   94

 211F 0C   44               INC    STRLEN+1 Keep count
 2121 26   F5               BNE    MVNUL1
 2123 0C   43               INC    STRLEN   Rollover. Bump hi-byte
 2125 20   F1               BRA    MVNUL1   Back for more
                     *
                     * COMPARE 2 STRINGS
                     *
 2127 CC   0000      CMPSTR LDD     #0
 212A DD   3D                STD    LSTBEG    Clear List-Beg
 212C DD   43                STD    STRLEN    Clear Str-Len
 212E BD   121E      CMPST1 JSR     CHRGET    Get char from String A into 'A'
 2131 27   0B                BEQ    CMPST2    No more chars
 2133 8D   24                BSR    CHRSTR    Char found. Get char from String B into 'B'
 2135 27   13                BEQ    CMPST3    NUL
 2137 34   04                PSHS B           Save char in Temp
 2139 A1   E0                CMPA 0,S+        Match?
 213B 27   F1                BEQ    CMPST1    Yes. Go back
 213D 39                     RTS              No. Go home
                     *
                     * FIND NON-SPACE CHARACTER IN STRING 'B'
                     * IF NUL, LEAVE WITH '=' CONDITION, ELSE WITH '<' CONDITION SET
                     *
 213E 8D   19        CMPST2 BSR     CHRSTR    Get char from String 'B'
 2140 27   16                BEQ    CMPST5    NUL. Go home
 2142 C1   20                CMPB #SPACE      Not 0. Ignore Spaces
 2144 27   F8                BEQ    CMPST2
 2146 4F                     CLRA             Non-Space char found
 2147 81   01                CMPA #1
 2149 39                     RTS
                     *
                     * FIND NON-SPACE CHARACTER IN STRING 'A'
                     * IF NUL, LEAVE WITH "=" CONDITION, ELSE WITH '>' CONDITION SET
                     *
 214A 81   20        CMPST3 CMPA #SPACE
 214C 26   06                BNE    CMPST4    No. Prepare to leave
 214E BD   121E              JSR    CHRGET    Yes. Get char from String
 2151 26   F7                BNE    CMPST3    Not 0. Back again
 2153 39                     RTS              NUL

 2154 86   01      CMPST4 LDA     #1
 2156 81   00              CMPA #0
 2158 39           CMPST5 RTS
                   *
                   * GET CHARACTER FROM STRING-B INTO 'B' AND DECREMENT STRLEN
                   *
 2159 9E   43      CHRSTR LDX     STRLEN    Get Str-Len
 215B 26   16              BNE    CHRST1    Not 0
 215D 9E   2A              LDX    AUXPTR    =0. Get Aux. Pointer
 215F AE   02              LDX    2,X       Get length
 2161 9F   43              STX    STRLEN    and save in Str-Len
 2163 AE   9F 002A         LDX    [AUXPTR] Get contents of Aux. Pointer location
 2167 9F   2C              STX    CMDPTR    and save
 2169 27   13              BEQ    CHRST2    No more to do
 216B 9E   2A              LDX    AUXPTR    Not 0. Get Aux. Pointer
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER    PAGE   95

 216D 30   04               LEAX   4,X         bump by 4,
 216F 9F   2A               STX    AUXPTR      and save back
 2171 20   E6               BRA    CHRSTR      then back again

 2173 30   1F        CHRST1 LEAX   -1,X        Dec Str-Len
 2175 9F   43               STX    STRLEN      Save in Str-Len
 2177 9E   2C               LDX    CMDPTR      Recover Pointer
 2179 E6   80               LDB    0,X+        Get char. Bump pointer
 217B 9F   2C               STX    CMDPTR      and save back
 217D 39                    RTS

 217E 30   01        CHRST2 LEAX 1,X
 2180 5F                     CLRB
 2181 39                     RTS
                     *
                     * EXECUTE STR$ FUNCTION
                     *
 2182 0F   78        STRS    CLR    MODEFG     Set MODE-Flag to 'Numeric'
 2184 BD   1993              JSR    EVALPR     Evaluate expression in parens
 2187 BD   1B4A              JSR    UNSTAK     Get Variable into M0 reg
 218A 85   04                BITA #4           '%'?
 218C 27   05                BEQ    STRNG1     No
 218E BD   336B              JSR    INTDEC     Yes. Convert to Decimal Integer
 2191 20   03                BRA    STRNG2

 2193 BD   3372      STRNG1 JSR     BINDEC    Convert FP to decimal
 2196 D6   44        STRNG2 LDB     STRLEN+1 Get # of digits from Str-Len
 2198 27   11                BEQ    STRNG4    =0
 219A BD   2109              JSR    ADVPTR    Not 0. Advance Inp-Buf pointer by String-Length
 219D 9E   79                LDX    TEMP3     Point to start of Inp-Buf
 219F CE   44DF              LDU    #NBRBUF Point to Number-Buf,
 21A2 A6   C0        STRNG3 LDA     0,U+      and transfer
 21A4 A7   80                STA    0,X+      B bytes from
 21A6 5A                     DECB             Number-Buf to Input-Buf
 21A7 26   F9                BNE    STRNG3
 21A9 D6   44                LDB    STRLEN+1 All done. Get # of digits
 21AB 7E   1F4C      STRNG4 JMP     IDSTR0
                     *
                     * CHECK FOR VALID USER-DEFINED FUNCTION, AND EVALUATE
                     *
 21AE BD   19FD      USRCHK JSR     LOCDM1    Locate Dimension on V-Stack
 21B1 34   06                PSHS D           Save its addr
 21B3 BD   0F26              JSR    SKIPS1    Skip Spaces and get char
 21B6 BD   1993              JSR    EVALPR    Evaluate expression in parens
 21B9 27   47                BEQ    ERR5AA    =0
 21BB AE   F1                LDX    [0,S++] Not 0. Recover variable's value
 21BD 27   43                BEQ    ERR5AA    =0. Error-Code 90
 21BF 9F   13                STX    XTEMP1    Not 0
 21C1 8D   78                BSR    PRPFP     Prepare FP for conversion
 21C3 BD   3629              JSR    FP2INT    Convert to Decimal
 21C6 BD   034E              JSR    STKCHK    Check for room on Stack
 21C9 DC   15                LDD    MATH7     Stack 6 bytes of M7
 21CB 9E   17                LDX    MATH7+2
 21CD 34   16                PSHS D,X
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER    PAGE     96

 21CF DC 19                 LDD     MATH7+4
 21D1 9E 97                 LDX     MATH0+6   and 2 LS bytes of M0
 21D3 34 36                 PSHS    D,X,Y
 21D5 DC 91                 LDD     MATH0     Now transfer M0
 21D7 9E 93                 LDX     MATH0+2   to M7
 21D9 DD 15                 STD     MATH7
 21DB 9F 17                 STX     MATH7+2
 21DD DC 95                 LDD     MATH0+4
 21DF 9E 97                 LDX     MATH0+6
 21E1 DD 19                 STD     MATH7+4
 21E3 9F 1B                 STX     MATH7+6
 21E5 109E 13               LDY     XTEMP1
 21E8 BD 184E               JSR     EVALUE    Evaluate expression
 21EB 1027 F6B6             LBEQ    ERR49B    =0. Error-Code 73
 21EF 35 36                 PULS    D,X,Y     Not 0. Unstack into M7
 21F1 DD 19                 STD     MATH7+4
 21F3 9F 1B                 STX     MATH7+6
 21F5 35 16                 PULS    D,X
 21F7 DD 15                 STD     MATH7
 21F9 9F 17                 STX     MATH7+2
 21FB 1C FB                 ANDCC   #$FB      Clear Z-bit
 21FD 39                    RTS

 21FE 86   4A        ERR4AA LDA     #$4A      Error-Code 74 (Argument <0 or >255)
 2200 20   02               BRA     ERRXXZ    Process error

 2202 86   5A        ERR5AA LDA     #$5A      Error-Code 90 (Undefined USR function)
 2204 7E   0B6B      ERRXXZ JMP     ERROR     Process error
                     *
                     * EVALUATE AND CONVERT SINGLE-BYTE TO DECIMAL
                     *
 2207 BD   1843      EVALSB JSR     EVALEX    Evaluate expression
 220A D6   78                LDB    MODEFG    Test Mode-Flag
 220C 27   06                BEQ    SBDEC1    Numeric

 220E 7E   1469      ERR48C JMP     ERR48A    '$'. Error-Code 72 (Mixed-Mode Error)
                     *
                     * CONVERT SINGLE BYTE TO DECIMAL
                     *
 2211 BD   1B4A      SB2DEC JSR     UNSTAK    Get Variable into M0 reg
 2214 85   04        SBDEC1 BITA #4           '%'?
 2216 26   06                BNE    SBDEC2    Yes
 2218 BD   3653              JSR    SCALDN    FP. Adjust for Scale-Factor
 221B BD   3294              JSR    CRANGE    Check number range and normalise it
 221E D6   91        SBDEC2 LDB     MATH0     Get M0 MS byte
 2220 26   DC                BNE    ERR4AA    Not 0. Error-Code 74
 2222 96   92                LDA    MATH0+1 Get decimal-digit
 2224 39             SBDEC3 RTS
                     *
                     * PREPARE INTEGER FOR CONVERSION
                     *
 2225 BD   1B4A      PRPINT JSR     UNSTAK    Get Variable into M0 reg
 2228 20   07                BRA    EVINT1
                     *
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   97

                     * EVALUATE INTEGER EXPRESSION, AND PUT -1 OR 0
                     * IN M0 ACCORDING TO ITS TRUTH-VALUE
                     *
 222A BD   1843      EVLINT JSR     EVALEX    Evaluate expression
 222D D6   78                LDB    MODEFG    Test Mode-Flag
 222F 26   DD                BNE    ERR48C    '$'. Error-Code 72
 2231 85   04        EVINT1 BITA #4           Numeric. '%'?
 2233 26   EF                BNE    SBDEC3    Yes. Go home
 2235 BD   3653              JSR    SCALDN    FP. Adjust for Scale-Factor
 2238 7E   3294              JMP    CRANGE    Check number range and normalise it
                     *
                     * PREPARE FP FOR CONVERSION
                     *
 223B BD   1B4A      PRPFP JSR      UNSTAK    Get Variable into M0 reg
 223E 20   07                BRA    EVALD1
                     *
                     * EVALUATE AND CONVERT DOUBLE-BYTE TO HEX
                     *
 2240 BD 1843        EVALDB JSR     EVALEX    Evaluate expression
 2243 D6 78                  LDB    MODEFG    Test Mode-Flag
 2245 26 C7                  BNE    ERR48C    '$'. Error-Code 72
 2247 85 04          EVALD1 BITA #4           Numeric. '%'?
 2249 1027 1406              LBEQ SCALDN      Adjust for Scale-Factor
 224D 7E 31F2                JMP    INTBFP    Yes. Convert INT to FP binary
                     *
                     * ALLOCATE BLOCK FOR VARIABLE, ARRAY, FCB, ETC
                     *
 2250 8E 0041        RSVSPC LDX     #FREPTR Get addr of Free-Slot vector
 2253 9F 59                  STX    LINADR    and save in pointer to Free-Slot
 2255 9E 41                  LDX    FREPTR    Get Free-Slot addr
 2257 27 16                  BEQ    ERR50B    =0. Error-Code 80
 2259 1083 0004              CMPD #4
 225D 24 02                  BCC    RSVSP1    >=4
 225F C6 04                  LDB    #4        <4, so set to 4
 2261 C3 0004        RSVSP1 ADDD #4           Bump by another 4

                     * SEARCH FOR SUITABLE SLOT-SIZE

 2264 10A3 02        RSVSP2 CMPD   2,X       Room available here?
 2267 23 09                 BLS    RSVSP3    Yes
 2269 9F 59                 STX    LINADR    No. Save pointer to Free-Slot
 226B AE 84                 LDX    0,X       Get Linkage to next Free-Slot
 226D 26 F5                 BNE    RSVSP2    Not 0, so check it out

 226F 7E   0349    ERR50B JMP     ERR50A    Error-Code 80 (Memory Overflow)
                   *
                   * ROOM FOUND. RESERVE IT AND ADJUST POINTERS,
                   * MEMORY-AVAILABLE THIS SLOT, ETC
                   *
 2272 9F   2E      RSVSP3 STX     LINPOS    Save Block-addr
 2274 83   0004            SUBD #4          Reduce Block-size by 4
 2277 DD   43              STD    STRLEN    and save in Block-Size
 2279 D3   2E              ADDD LINPOS      Form new Linkage-addr
 227B ED   9F 0059         STD    [LINADR] in previous Slot's linkage (or Free-Ptr if none)
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   98

 227F EC   9F 002E          LDD    [LINPOS]   Get former linkage
 2283 AE   9F 0059          LDX    [LINADR]   and move to new
 2287 ED   84               STD    0,X        Free-Slot location
 2289 9E   2E               LDX    LINPOS     Get Block-addr
 228B EC   02               LDD    2,X        Get Memory-available
 228D 93   43               SUBD   STRLEN     and subtract Block-Size
 228F AE   9F 0059          LDX    [LINADR]   Point to new Free-Slot
 2293 9F   59               STX    LINADR     Save vector to new Free-Slot
 2295 ED   02               STD    2,X        Store new Slot-Size
 2297 9E   2E               LDX    LINPOS     Get Block-addr
 2299 39                    RTS
                     *
                     * EXECUTE DIGITS STATEMENT
                     *
 229A BD   2207      DIGITS JSR     EVALSB    Evaluate single-byte to HEX
 229D 27   1D                BEQ    ERR49H    =0. Error-Code 73
 229F 81   11                CMPA #17         Not 0. Max = 17
 22A1 22   19                BHI    ERR49H    Over limit. Error-Code 73
 22A3 C6   FF                LDB    #$FF
 22A5 DD   F3                STD    DIGNBR    Save in Dig-Nbr
 22A7 BD   0F26              JSR    SKIPS1    Skip Spaces and get char
 22AA 81   72                CMPA #$72        ','?
 22AC 26   0B                BNE    DIGIT1    No
 22AE 31   21                LEAY 1,Y         Yes. Bypass it
 22B0 BD   2207              JSR    EVALSB    Evaluate single-byte to HEX
 22B3 91   F3                CMPA DIGNBR      Same as Dig-Nbr?
 22B5 22   05                BHI    ERR49H    >. Error-Code 73
 22B7 97   F4                STA    DPTNBR    <=. Save in DPT-Nbr
 22B9 7E   0284      DIGIT1 JMP     STENDC    Check Statement-Ending and continue

 22BC 7E   18A5      ERR49H JMP     ERR49B    Error-Code 73 (Illegal Expression)
                     *
                     * EXECUTE DEG STATEMENT
                     *
 22BF BD   2207      DEG     JSR    EVALSB    Evaluate single byte to HEX
 22C2 B7   48B6              STA    DEGSW     Set to degrees or radians
 22C5 7E   0284              JMP    STENDC    Check Statement-Ending and continue
                     *
                     * EXECUTE SWAP STATEMENT
                     *
 22C8 BD   1823      SWAP    JSR    INZPTR    Initialise pointers
 22CB BD   0F26              JSR    SKIPS1    Skip Spaces and get char
 22CE 2A   4F                BPL    ERR4FA    Statement. Error-Code 79
 22D0 BD   19F2              JSR    CHKSUB    Variable. Check if subscripted
 22D3 DD   68                STD    STKPTR    Save address in $-Stack pointer
 22D5 B6   48AD              LDA    TEMP15    Recover Variable-code
 22D8 84   0F                ANDA #$0F        Mask hi nybble
 22DA 97   CC                STA    VARTYP    Save Var-Type
 22DC BD   20BD              JSR    COMMAC    Check for comma
 22DF 96   ED                LDA    VRAFLG    Check Virtual Array Flag
 22E1 26   3C                BNE    ERR4FA    Set. Error-Code 79
 22E3 BD   0F26              JSR    SKIPS1    Clear. Skip Spaces and get char
 22E6 2A   37                BPL    ERR4FA    Statement. Error-Code 79
 22E8 BD   19F2              JSR    CHKSUB    Variable. Check if subscripted
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE   99

 22EB DD 8F                  STD    MATH5+7   Save address in Scratch
 22ED B6 48AD                LDA    TEMP15    Recover Variable-Code
 22F0 84 0F                  ANDA   #$0F      Mask hi nybble
 22F2 91 CC                  CMPA   VARTYP    Same as Var-Type?
 22F4 26 29                  BNE    ERR4FA    No. Error-Code 79
 22F6 D6 ED                  LDB    VRAFLG    Yes. Test Virtual Array Flag
 22F8 26 25                  BNE    ERR4FA    Set. Error-Code 79
 22FA C6 01                  LDB    #1        Integer-Code count
 22FC 85 04                  BITA   #4        '%'?
 22FE 26 07                  BNE    SWAP1     Yes
 2300 5C                     INCB             No. $-Code count
 2301 85 01                  BITA   #1        '$'?
 2303 26 02                  BNE    SWAP1     Yes
 2305 C6 04                  LDB    #4        No. Must be FP. Count = 4
 2307 34 24          SWAP1   PSHS   B,Y       Save count and Line-Ptr
 2309 9E 68                  LDX    STKPTR    Get pointer to first Variable
 230B 109E 8F                LDY    MATH5+7   Get other pointer
 230E EC 84          SWAP2   LDD    0,X       Swap them
 2310 EE A4                  LDU    0,Y
 2312 ED A1                  STD    0,Y++
 2314 EF 81                  STU    0,X++
 2316 6A E4                  DEC    0,S
 2318 26 F4                  BNE    SWAP2
 231A 35 24                  PULS   B,Y       Recover count and Line-Ptr
 231C 7E 0284                JMP    STENDC    Check Statement-Ending and continue

 231F 86   4F        ERR4FA LDA     #$4F      Error-Code 79 (Bad argument in SWAP)
 2321 7E   0B6B              JMP    ERROR     Process error
                     *
                     * EXECUTE INCH$ FUNCTION
                     *
 2324 0F   78        INCHS CLR      MODEFG    Set Mode-Flag to 'Numeric'
 2326 BD   1993              JSR    EVALPR    Evaluate Channel # in parens
 2329 BD   2211              JSR    SB2DEC    Convert single-byte to decimal
 232C 81   0C                CMPA #12         Max = 12
 232E 22   21                BHI    ERR28     Greater. Error-Code 40
 2330 97   DE                STA    INPSEL    Store in Inp-Sel
 2332 BD   274E              JSR    SELFCB    Select Channel's FCB
 2335 DC   DF                LDD    FCBTMP    Get FCB-Pointer TEMP
 2337 DD   F0                STD    FCBPTR    Save in FCB pointer
 2339 BD   2806              JSR    CHRIN     Input a char
 233C 97   92                STA    MATH0+1 Save in M0+1
 233E D6   DE                LDB    INPSEL    Get Channel #
 2340 26   0A                BNE    INCH1     Not 0
 2342 81   03                CMPA #BRK        BREAK?
 2344 26   06                BNE    INCH1     No
 2346 32   E8 16             LEAS 22,S        Yes. Adjust SP
 2349 7E   0617              JMP    BREAK1    Yes. Go to it

 234C 0F   DE        INCH1   CLR    INPSEL    Set input to TERMINAL
 234E 7E   2041              JMP    CHR1

 2351 7E   2731      ERR28   JMP    ERR28A    Error-Code 40 (Bad File #)
                     *
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 100

                     * EXECUTE DATE$ FUNCTION
                     *
 2354 C6 09          DATES LDB      #9
 2356 BD 2109                JSR    ADVPTR    Advance pointer by 9
 2359 34 20                  PSHS Y
 235B 109E 79                LDY    TEMP3     Get pointer to Input-Buf
 235E B6 CC0F                LDA    SYSDAY    Get DAY
 2361 8D 2A                  BSR    BCDASC    Convert to ASCII 2-digit decimal
 2363 ED A1                  STD    0,Y++     Store Date
 2365 C6 2D                  LDB    #'-       Store a '-'
 2367 E7 A0                  STB    0,Y+
 2369 F6 CC0E                LDB    SYSMTH    Get MONTH and compute
 236C 58                     ASLB             its address in
 236D FB CC0E                ADDB SYSMTH      Month-Table
 2370 8E 3E4B                LDX    #MNTHTB-3 Point to Month-Table,
 2373 3A                     ABX              point to Month
 2374 EC 84                  LDD    0,X       and store name of month
 2376 ED A1                  STD    0,Y++
 2378 A6 02                  LDA    2,X
 237A C6 2D                  LDB    #'-       Store a '-'
 237C ED A1                  STD    0,Y++
 237E B6 CC10                LDA    SYSYR     Get YEAR
 2381 8D 0A                  BSR    BCDASC    Convert to ASCII 2-digit decimal
 2383 ED A4                  STD    0,Y
 2385 CC 0009                LDD    #9        Count of 9
 2388 35 20                  PULS Y
 238A 7E 1F4D                JMP    IDSTR1
                     *
                     * CONVERT 2-DIGIT BCD TO 2-DIGIT ASCII AND SWAP BYTES
                     *
 238D BD   370D      BCDASC JSR     HEXDEC    Conv byte from HEX to decimal
 2390 1E   89                EXG    A,B
 2392 C3   3030              ADDD #$3030      Convert to 2-digit ASCII
 2395 39                     RTS
                     *
                     * IDENTIFY AND PROCESS CHARS IN 'PRINT USING' STRING. Enter at PRUSIN
                     *
 2396 0C   F8        PRUS0 INC      POUNDL    Process '#'. Bump Pound-to-Left count
 2398 BE   489B      PRUSIN LDX     PRUSPT    Get pointer to Print-Using String
 239B A6   80                LDA    0,X+      Get char
 239D 26   0C                BNE    PRUS1     Not NUL
 239F BE   4899              LDX    PRUSAD    NUL. Get address of Prusing-String
 23A2 BF   489B              STX    PRUSPT    and save in Prusing-pointer
 23A5 7F   4897              CLR    NO_TAB    Clear Don't-Tab Flag
 23A8 7E   245A              JMP    PRUSM     Prepare to leave
                     *
                     * ANYTHING BUT NUL. MAYBE BACKSLASH
                     *
 23AB BF   489B      PRUS1 STX      PRUSPT    Save Prusing-pointer
 23AE F6   48A0              LDB    BSLCTR    Test Back-Slash counter
 23B1 27   0A                BEQ    PRUS2     =0
 23B3 7C   48A0              INC    BSLCTR    Not 0. Bump it
 23B6 81   5C                CMPA #$5C        Final '\'?
 23B8 26   DE                BNE    PRUSIN    No. Identify next char
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER    PAGE 101

 23BA 7E   245A              JMP    PRUSM     Yes. Prepare to leave
                     *
                     * IDENTIFY ACTUAL TOKEN
                     *
 23BD 8E   3F26      PRUS2 LDX      #PRUSTB Point to Print-Using Token Table
 23C0 5F                     CLRB             Set Token to 0
 23C1 A1   84        PRUS3 CMPA 0,X           Char match?
 23C3 27   10                BEQ    PRUS5     Yes
 23C5 30   02                LEAX 2,X         No. Next Table-position
 23C7 5C                     INCB             Inc count
 23C8 6D   84                TST    0,X       End-of-Table?
 23CA 26   F5                BNE    PRUS3     No. Keep checking
 23CC D6   FA                LDB    TOKCTR    Yes. Not found. Test Token-Count
 23CE 26   7F                BNE    PRUSH
 23D0 BD   27AA              JSR    CHROUT    Output char
 23D3 20   C3                BRA    PRUSIN    Check Print-Using String
                     *
                     * TOKEN FOUND. SET FLAG AND BUMP APPROPRIATE COUNTER
                     *
 23D5 0C   FA        PRUS5 INC      TOKCTR    Token found. Bump Token-Counter
 23D7 9F   8F                STX    MATH5+7 Save Table-addr in scratch
 23D9 8E   489F              LDX    #EXCLCT Point to Counters-base
 23DC 3A                     ABX              and bump by Token-Value
 23DD 9F   2E                STX    LINPOS    Save in Line-Pos
 23DF 6C   84                INC    0,X       Bump Token-Counter
 23E1 9E   8F                LDX    MATH5+7 Recover Token-addr
 23E3 E6   01                LDB    1,X       and get Token
 23E5 27   5F                BEQ    PRUSF     =0. It's '!'
 23E7 2A   43                BPL    PRUSC     <80
 23E9 C4   7F                ANDB #$7F        >=80. Mask MS bit
 23EB 26   09                BNE    PRUS7     Not 0. ie $, *, or ,
 23ED F6   48A1              LDB    DPCNTR    =0. ie #, so get DP-counter
 23F0 27   A4                BEQ    PRUS0     =0
 23F2 0C   F9                INC    POUNDR    Not 0. Bump Pound-to-Right Counter
 23F4 20   A2                BRA    PRUSIN    Check Print-Using String
                     *
                     * CHECK WHETHER '$', '*' OR ','
                     *
 23F6 5A             PRUS7 DECB               Dec Token
 23F7 26   27                BNE    PRUSA     Not 0. It's ','

                     * PROCESS '$' OR '*'

 23F9 D6   FA                LDB    TOKCTR   =0, It's $ or *
 23FB 5A                     DECB            Dec Token-Count
 23FC BE   489B              LDX    PRUSPT   Recover Prusing-pointer
 23FF A1   84                CMPA   0,X      Char-match?
 2401 27   0E                BEQ    PRUS9    Yes
 2403 5D                     TSTB            Test Token-Count
 2404 26   45                BNE    PRUSG    Not 0

                     * OUTPUT CHARACTER $ * , -

 2406 9E   2E        PRUS8   LDX    LINPOS   Get Line-Pos
RBASIC by R. Jones   31 May 1988      4-7-4 TSC ASSEMBLER    PAGE 102

 2408 6A   84                DEC     0,X
 240A 0A   FA                DEC     TOKCTR     Dec Token-Counter
 240C BD   27AA              JSR     CHROUT     Output char
 240F 20   87                BRA     PRUSIN     Check Print-Using String

 2411 5D             PRUS9   TSTB               Match. Test Token-Count
 2412 26   37                BNE     PRUSG      Not 0
 2414 0C   F8                INC     POUNDL     Bump Pound-to-Left Counter by 2
 2416 0C   F8                INC     POUNDL
 2418 30   01                LEAX    1,X        Bump String-Pointer
 241A BF   489B              STX     PRUSPT     and save in PRUS-PT
 241D 7E   2398              JMP     PRUSIN     then back for next char
                     *
                     * PROCESS ','
                     *
 2420 F6   48A1      PRUSA LDB      DPCNTR    Get DP-counter
 2423 26   26                BNE    PRUSG     Done
 2425 D6   F8                LDB    POUNDL    Test Pound-to-Left Counter
 2427 27   DD                BEQ    PRUS8     =0. Output ','
 2429 7E   2396              JMP    PRUS0     Not 0. Check Print-Using String for more
                     *
                     * CHECK WHETHER '\' OR '-'
                     *
 242C 81 5C          PRUSC CMPA #'\           '\'?
 242E 27 0E                  BEQ    PRUSE     Yes
 2430 81 2D                  CMPA #'-         No. '-'?
 2432 1026 FF62              LBNE PRUSIN      No. Check next char

                     * PROCESS '-'

 2436 D6   F8                LDB     POUNDL     Yes. Test both Pound-Counters
 2438 DA   F9                ORB     POUNDR
 243A 27   CA                BEQ     PRUS8      =0. Output '-'
 243C 20   19                BRA     PRUSJ      Not 0. All done
                     *
                     * PROCESS '\'
                     *
 243E D6   FA        PRUSE LDB       TOKCTR     Get Token-Counter
 2440 5A                     DECB
 2441 26   08                BNE     PRUSG      Final '\'
 2443 7E   2398              JMP     PRUSIN     First '\'. Look for more
                     *
                     * PROCESS '!'
                     *
 2446 D6   FA        PRUSF LDB       TOKCTR     Get Token-Counter
 2448 5A                     DECB
 2449 27   0C                BEQ     PRUSJ      =0

                     * PRINT-USING SUBSTRING PROCESSED

 244B 6A   9F 002E PRUSG     DEC     [LINPOS]   Dec count at Line-Pos
 244F BE   489B    PRUSH     LDX     PRUSPT     Get PRUSING-pointer
 2452 30   1F                LEAX    -1,X       Dec it
 2454 BF   489B              STX     PRUSPT     and save back
RBASIC by R. Jones   31 May 1988        4-7-4 TSC ASSEMBLER   PAGE 103

 2457 BE   489B      PRUSJ   LDX    PRUSPT     Get pointer to Token in String

                     * PREPARE TO LEAVE

 245A E6   84        PRUSM   LDB    0,X        Test char in String
 245C 26   09                BNE    PRUSK      Not NUL
 245E BE   4899              LDX    PRUSAD     NUL. Point back to
 2461 BF   489B              STX    PRUSPT     start of Prusing-String
 2464 7F   4897              CLR    NO_TAB     Clear Don't-Tab Flag

                     * CHECK COUNTERS

 2467 F6   48A2      PRUSK   LDB    AROWCT     Get ^-counter
 246A 27   14                BEQ    PRUSL      =0
 246C C1   04                CMPB   #4         Not 0. 4?
 246E 26   26                BNE    ERR47A     No. Error-Code 71
 2470 B6   48A7              LDA    COMACT     Yes. Test ,-counter
 2473 26   21                BNE    ERR47A     Not 0. Error-Code 71
 2475 FC   48A5              LDD    DOLRCT     =0. Get $-counter and *-counter
 2478 26   1C                BNE    ERR47A     Not 0. Error-Code 71
 247A DC   F8                LDD    POUNDL     Test both Pound-Counters
 247C 27   18                BEQ    ERR47A     =0. Error-Code 71
 247E 03   FB                COM    TEMP11     Not 0. Indicate '^' is OK
 2480 B6   48A1      PRUSL   LDA    DPCNTR     Get DP-counter
 2483 81   01                CMPA   #1
 2485 22   0F                BHI    ERR47A     >1. Error-Code 71
 2487 96   FA                LDA    TOKCTR     <=1. Test Token-Counter
 2489 27   0B                BEQ    ERR47A     =0. Error-Code 71
 248B F6   489F              LDB    EXCLCT     Not 0. Test '!' and '\' counters
 248E FA   48A0              ORB    BSLCTR
 2491 39                     RTS

 2492 86   46        ERR46A LDA     #$46       Error-Code 70 (Data-Type mismatch)
 2494 20   02               BRA     ERRXXY     Process error

 2496 86   47        ERR47A LDA     #$47      Error-Code 71 (Illegal Format in PRINT USING)
 2498 7E   0B6B      ERRXXY JMP     ERROR     Process error
                     *
                     * EXECUTE PRINT-USING STATEMENT
                     *
 249B D6   78        USING LDB      MODEFG    Test Mode-Flag
 249D 27   02                BEQ    USING1    'Numeric'
 249F 86   01                LDA    #1        '$'
 24A1 B7   48AD      USING1 STA     TEMP15    Save in Temp
 24A4 CC   0009              LDD    #9        Count of 9
 24A7 8E   489F              LDX    #EXCLCT Point to PRINT-USING Counters
 24AA A7   80        USING2 STA     0,X+      and clear them
 24AC 5A                     DECB
 24AD 26   FB                BNE    USING2
 24AF D7   FA                STB    TOKCTR    Now clear Token-Count
 24B1 DD   F8                STD    POUNDL    Clear both Pound Counters
 24B3 DD   3D                STD    LSTBEG    Clear List-Beg
 24B5 5C                     INCB
 24B6 D7   FB                STB    TEMP11    Set ???
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 104

 24B8 F7   4897              STB    NO_TAB    and Don't Tab for ','
 24BB BD   2398              JSR    PRUSIN    Check Print-Using String
 24BE 26   1E                BNE    USING4    '!' counter or '\' counter not 0
 24C0 F6   48AD              LDB    TEMP15    Both 0. Get Temp
 24C3 C5   01                BITB #1          '$'?
 24C5 26   CB                BNE    ERR46A    Yes. Error-Code 70
 24C7 C5   04                BITB #4          No. '%'
 24C9 27   06                BEQ    USING3    No
 24CB BD   31F2              JSR    INTBFP    Yes. Convert Integer to FP binary
 24CE BD   3629              JSR    FP2INT    Convert FP to Integer
 24D1 BD   3372      USING3 JSR     BINDEC    Convert binary to decimal
 24D4 8E   44DF              LDX    #NBRBUF Point to Nbr-Buf
 24D7 96   FC                LDA    XSDIGS    Test # of excess digits
 24D9 27   15                BEQ    USING7    =0
 24DB 7E   2577              JMP    EXCESS    Not 0. Process overflow
                     *
                     * OUTPUT MAX OF 'B' CHARS, PADDING WITH SPACES IF NECESSARY
                     *
 24DE 0F   78        USING4 CLR     MODEFG    Set MODE-Flag to 'Numeric'
 24E0 BD   121E      USING5 JSR     CHRGET    Get char from String
 24E3 27   07                BEQ    USING6    NUL
 24E5 BD   27AA              JSR    CHROUT    Not NUL. Output char
 24E8 5A                     DECB             Dec count
 24E9 26   F5                BNE    USING5    back for more
 24EB 39                     RTS              All done
                     *
                     * OUTPUT 'B' SPACES
                     *
 24EC 5A             USING6 DECB              Dec count
 24ED 7E   126F              JMP    OUTSPC    Output Spaces
                     *
                     * PROCESS ',' IN NUMERIC STRING
                     *
 24F0 B6   48A7      USING7 LDA     COMACT    Test ,-counter
 24F3 27   3D                BEQ    USINGD    =0
 24F5 BD   2582              JSR    LOCDPT    Not 0. Locate position of DP
 24F8 C6   03        USING8 LDB     #3        Comma every 3rd position
 24FA 8C   44DF      USING9 CMPX #NBRBUF At start of Nbr-Buf?
 24FD 27   30                BEQ    USINGC    Yes
 24FF A6   82                LDA    0,-X      No
 2501 81   39                CMPA #'9
 2503 22   2A                BHI    USINGC    Not decimal
 2505 81   30                CMPA #'0
 2507 25   26                BCS    USINGC    Not decimal
 2509 5A                     DECB
 250A 26   EE                BNE    USING9    Check 3 digits
 250C A6   82                LDA    0,-X      Done. Check 4th digit
 250E 81   39                CMPA #'9
 2510 22   1D                BHI    USINGC    Not decimal
 2512 81   30                CMPA #'0
 2514 25   19                BCS    USINGC    Not decimal
 2516 9F   2E                STX    LINPOS    Save in Line-Pos

                     * SHIFT # LEFT ONE POSITION IN NBRBUF TO ACCOMMODATE ','
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 105


 2518 C6   2C                LDB    #',       COMMA into B
 251A E7   84        USINGA STB     0,X
 251C 1F   89                TFR    A,B
 251E A6   82                LDA    0,-X
 2520 8C   44DF              CMPX #NBRBUF At start of Nbr-Buf?
 2523 22   F5                BHI    USINGA    No
 2525 81   20                CMPA #SPACE      Yes. Space?
 2527 26   4C                BNE    USINGB    No
 2529 E7   84                STB    0,X       Yes. Save final char
 252B 9E   2E                LDX    LINPOS    Get Line-Pos
 252D 20   C9                BRA    USING8    Now do next 3 digits
                     *
                     * PROCESS '*' IN NUMERIC OUTPUT
                     *
 252F 8E   44DF      USINGC LDX     #NBRBUF Point to Nbr-Buf
 2532 B6   48A6      USINGD LDA     STARCT    Test *-counter
 2535 27   14                BEQ    USINGF    =0
 2537 C6   2A                LDB    #'*       Not 0. Put * in B
 2539 A6   84                LDA    0,X
 253B 81   20                CMPA #SPACE      Space?
 253D 26   38                BNE    EXCESS    No. Process overflow

 253F E7   80        USINGM STB    0,X+      Yes. Save B and bump pointer
 2541 A6   84               LDA    0,X       Next char
 2543 81   2D        USINGE CMPA   #'-       '-'?
 2545 27   30               BEQ    EXCESS    Yes. Process overflow
 2547 81   20               CMPA   #SPACE    No. Space?
 2549 27   F4               BEQ    USINGM    Yes

 254B B6   48A5      USINGF LDA    DOLRCT    Test $-counter
 254E 27   14               BEQ    USINGH    =0
 2550 A6   80               LDA    0,X+      Not 0. Get char
 2552 81   20               CMPA   #SPACE    Space?
 2554 26   21               BNE    EXCESS    No. Process overflow
 2556 A1   80        USINGG CMPA   0,X+      Compare
 2558 27   FC               BEQ    USINGG    Match. Keep checking till mismatch
 255A A6   1F               LDA    -1,X      No match
 255C 81   2D               CMPA   #'-       '-'?
 255E 27   17               BEQ    EXCESS    Yes. Process overflow
 2560 86   24               LDA    #'$       No. Put $ in A
 2562 A7   1E               STA    -2,X
 2564 B6   48A1      USINGH LDA    DPCNTR    Test DP-counter
 2567 26   13               BNE    OUTNBR    Not 0. Output number
 2569 8D   17               BSR    LOCDPT    =0. Locate position of DP
 256B E6   01        USINGJ LDB    1,X       Move string
 256D E7   80               STB    0,X+      to left
 256F C1   04               CMPB   #EOT      by one position
 2571 26   F8               BNE    USINGJ    Not done yet
 2573 20   07               BRA    OUTNBR    Done. Output number
                     *
                     *
                     *
 2575 E7   01        USINGB STB    1,X
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 106


                     * PROCESS OVERFLOW DIGITS

 2577 86   25        EXCESS LDA     #'%
 2579 BD   27AA              JSR    CHROUT    and output it
 257C 8E   44DF      OUTNBR LDX     #NBRBUF Point to Nbr-Buf
 257F 7E   0454              JMP    OUTST1    and output it
                     *
                     * INCREMENT POINTER TO DECIMAL-POINT
                     *
 2582 86   2E        LOCDPT LDA     #'.
 2584 A1   80        LOCDP1 CMPA 0,X+         Match? Also bump X
 2586 26   FC                BNE    LOCDP1    Keep looking
 2588 30   1F                LEAX -1,X        Adjust X
 258A 39                     RTS
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 107


                     *                                                 *
                     * FILE MANAGEME N T SE C TI O N *
                     *                                                 *
                     *
                     * CHECK FILE SPECS
                     *
 258B BD   02DC      FILCHK JSR     PARSWB  Parse Line in Work-Buf
 258E 8D   1B        FILCK1 BSR     NAM2FX  Move File-Name to FLEX Line-Buf
 2590 8E   C840              LDX    #SYSFCB Point to FCB
 2593 BD   CD2D              JSR    GETFIL  Get File-Spec
 2596 24   3D                BCC    RWFIL1  No error. Go home

 2598 86   15        ERR15A LDA     #$15      Error-Code 21 (Illegal File Spec)
 259A 7E   0B6B              JMP    ERROR     Process error
                     *
                     * SET EXTENSION TO .BAC
                     *
 259D 8D   EC        SETBAC BSR     FILCHK    Check File-Specs
 259F 86   08                LDA    #8
 25A1 7E   CD33              JMP    SETEXT    Set extension to .BAC
                     *
                     * SET EXTENSION TO .BAS
                     *
 25A4 8D   E5        SETBAS BSR     FILCHK    Check File-Specs
 25A6 86   03                LDA    #3
 25A8 7E   CD33              JMP    SETEXT    Set extension to .BAS
                     *
                     * TRANSFER FILE-NAME TO FLEX LINE-BUF, AFTER VALIDITY CHECK
                     *
 25AB BD   0F26      NAM2FX JSR     SKIPS1    Skip Spaces and get char
 25AE 2A   69                BPL    ERR34N    Statement. Syntax Error
 25B0 85   01                BITA #1          Variable. '$'?
 25B2 27   65                BEQ    ERR34N    No. Syntax Error
 25B4 BD   1843      NAM2F1 JSR     EVALEX    Yes. Evaluate expression
 25B7 96   78                LDA    MODEFG    Test MODE-Flag
 25B9 27   5E                BEQ    ERR34N    Numeric. Syntax Error
 25BB 8E   C080              LDX    #LINBUF String. Point to FLEX Line-Buf
 25BE BF   CC14              STX    LINPTR    Save in FLEX Line-Pointer
 25C1 BD   2111              JSR    MV2NUL    Build File-Name in Line-Buf
 25C4 86   0D                LDA    #CR       End with CR
 25C6 A7   84                STA    0,X
 25C8 39                     RTS
                     *
                     * READ/WRITE NEXT CHAR IN DISK-FILE
                     *
 25C9 9F   3B        RWFILE STX     TEMP2     Save in Temp
 25CB 8E   C840              LDX    #SYSFCB Point to FCB
 25CE BD   D406              JSR    FMS       Call FMS
 25D1 26   26                BNE    FCBERR    Check FCB Error
 25D3 9E   3B                LDX    TEMP2     Recover Temp
 25D5 39             RWFIL1 RTS
                     *
                     * CLOSE FILE(S)
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 108

                     *
 25D6 A6   02        CLFILE LDA     2,X       Check Activity status
 25D8 27   09                BEQ    CLFIL1    =0
 25DA 86   04        CLFIL0 LDA     #4        Not 0. Close single file
 25DC A7   84                STA    0,X
 25DE BD   D406              JSR    FMS       Call FMS
 25E1 26   16                BNE    FCBERR    Check FCB Error
 25E3 FC   D409      CLFIL1 LDD     BASFCB    Check FCB Base Pointer
 25E6 26   ED                BNE    RWFIL1    Not 0. Go home
 25E8 7E   D403              JMP    FMSCLS    Close all Files
                     *
                     * OPEN FILE FOR READ
                     *
 25EB 86   01        RFILE LDA      #1        Set for READ
 25ED A7   84        RFILE1 STA     0,X
 25EF BD   D406      RFILE2 JSR     FMS       CALL FMS
 25F2 26   05                BNE    FCBERR    Check FCB Error
 25F4 39                     RTS
                     *
                     * OPEN FILE FOR WRITE
                     *
 25F5 86   02        WFILE LDA      #2        Set for WRITE
 25F7 20   F4                BRA    RFILE1
                     *
                     * CHECK FOR FCB ERROR-CODE
                     *
 25F9 E6   84        FCBERR LDB     0,X       Get Function-Code
 25FB C1   09                CMPB #9          Read Single sector?
 25FD 25   04                BCS    FCBER1    <9
 25FF C1   0A                CMPB #10         >=9. Write Single Sector?
 2601 23   05                BLS    FCBER3    It's 9 or 10
 2603 A6   01        FCBER1 LDA     1,X       Get Error-Code
 2605 7E   0B6B      FCBER2 JMP     ERROR     Process error
                     *
                     * PROCESS FUNCTION-CODES 9 OR 10
                     *
 2608 86   09        FCBER3 LDA     #9        Preset to 'Disk-File Read error'
 260A E6   01                LDB    1,X       Get error-code
 260C C5   10                BITB #$10        16 - 31?
 260E 26   F5                BNE    FCBER2    Yes
 2610 86   10                LDA    #16       No. Preset to 'Drive Not ready'
 2612 5D                     TSTB
 2613 2B   F0                BMI    FCBER2    Illegal Token
 2615 A6   84                LDA    0,X       Get Function-Code 9 or 10 as Error-Code
 2617 20   EC                BRA    FCBER2

 2619 7E   0B61      ERR34N JMP     SYNERR   Error-Code 52 (Syntax Error)
                     *
                     * EXECUTE + COMMAND
                     *
 261C 30   01        CALDOS LEAX 1,X         Bump pointer
 261E BD   3731              JSR    IGNSPC   Ignore Spaces
 2621 BF   CC14              STX    LINPTR   Save in FLEX Line-Pointer
 2624 0F   23                CLR    HALTFG   Clear Halt-Flag
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 109

 2626 BD   045F              JSR    LINEND   Terminate Line
 2629 8E   2636              LDX    #CALL1   Save CALL1-address
 262C BF   CC16              STX    ESCRET   as ESCRET-addr
 262F 34   20                PSHS   Y
 2631 BD   CD4B              JSR    DOCMND   Execute FLEX command
 2634 35   20                PULS   Y
 2636 BD   D403      CALL1   JSR    FMSCLS   Close all files
 2639 BD   2D0B              JSR    CLFSTK   Clear FCB address Stack
 263C 4F                     CLRA            Set DP to 0
 263D 1F   8B                TFR    A,DP
 263F 7F   CC28              CLR    CMDFLG   Clear FLEX Command-Flag
 2642 7E   016E              JMP    WARMST   and back to RBASIC Warm-Start
                     *
                     * EXECUTE OPEN STATEMENT
                     *
 2645 86   01        OPEN    LDA    #1        Preset to Update
 2647 97   DC                STA    ERRFMS    via ERRFMS
 2649 BD   0F26              JSR    SKIPS1    Skip Spaces and get char
 264C 2B   0E                BMI    OPEN2     Variable
 264E 0C   DC                INC    ERRFMS    Statement. Preset to New
 2650 81   2B                CMPA #$2B        NEW?
 2652 27   06                BEQ    OPEN1     Yes
 2654 0C   DC                INC    ERRFMS    No. Preset to Old
 2656 81   2A                CMPA #$2A        OLD?
 2658 26   BF                BNE    ERR34N    No. Syntax Error
                     *
                     * OPEN FILE
                     *
 265A 31 21          OPEN1 LEAY 1,Y           Bump past OLD/NEW code
 265C BD 1843        OPEN2 JSR      EVALEX    Evaluate expression
 265F 96 78                  LDA    MODEFG    Test Mode-Flag
 2661 27 B6                  BEQ    ERR34N    Numeric. Syntax Error
 2663 8E C080                LDX    #LINBUF '$'. Point to FLEX Line-Buf
 2666 BF CC14                STX    LINPTR    and save in FLEX Line-Pointer
 2669 BD 2111                JSR    MV2NUL    Transfer File-Name to Line-Buf til NUL
 266C 86 0D                  LDA    #CR       End with CR
 266E A7 84                  STA    0,X
 2670 BD 0F26                JSR    SKIPS1    Skip Spaces and get char
 2673 81 2C                  CMPA #$2C        AS?
 2675 26 A2                  BNE    ERR34N    No. Syntax Error
 2677 31 21                  LEAY 1,Y         Yes. Bump pointer
 2679 BD 2207                JSR    EVALSB    Evaluate Channel #
 267C 81 0C                  CMPA #12         Max =12
 267E 1022 00AF              LBHI ERR28A      >12. Error-Code 40
 2682 8E 44AB                LDX    #FCBSTK <=12. Point to FCB stack
 2685 48                     ASLA             * 2
 2686 27 4E                  BEQ    OPEN0     Channel 0. Open Channel
 2688 30 86                  LEAX A,X         Not 0. Point to Channel-vector
 268A A6 84                  LDA    0,X       Already Open?
 268C 26 43                  BNE    ERR29A    Yes. Error-Code 41
 268E 9F 2A                  STX    AUXPTR    No. Save pointer
 2690 CC 0140                LDD    #320      Reserve space for FCB
 2693 BD 2250                JSR    RSVSPC
 2696 9F DF                  STX    FCBTMP    Save FCB-addr in Temp
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER    PAGE 110

 2698 6F   88 3F             CLR    63,X      Clear Column-Position
 269B C6   80                LDB    #128
 269D CE   0000              LDU    #0
 26A0 30   88 40             LEAX   64,X      Point to data-area of FCB
 26A3 EF   81        OPEN3   STU    0,X++     Clear 256 bytes
 26A5 5A                     DECB
 26A6 26   FB                BNE    OPEN3
 26A8 9E   2A                LDX    AUXPTR    Recover Channel's FCB addr
 26AA DC   DF                LDD    FCBTMP    Get FCB-pointer TEMP
 26AC ED   84                STD    0,X       Put FCB addr in Channel #
 26AE CC   0000              LDD    #0
 26B1 ED   88 1A             STD    26,X      Set 26,X to 0000
 26B4 9E   DF                LDX    FCBTMP    Get FCB-pointer TEMP
 26B6 A7   02                STA    2,X       Clear Activity
 26B8 BD   CD2D              JSR    GETFIL    Get File-Specs
 26BB 25   0D                BCS    ERR15B    Error-Code 21
 26BD 86   07                LDA    #7        Set extension to .DAT
 26BF BD   CD33              JSR    SETEXT
 26C2 96   DC                LDA    ERRFMS    Get FMS error #
 26C4 5F                     CLRB             and store in FCB,
 26C5 ED   01                STD    1,X       also clear Activity
 26C7 7E   0284              JMP    STENDC    Check Statement-Ending and continue

 26CA 7E   2598      ERR15B JMP     ERR15A    Error-Code 21 (Illegal File-Spec)

 26CD 86   1B        ERR1BA LDA     #$1B      Error-Code 27 (Command not allowed while Printing)
 26CF 20   02               BRA     ERRXX     Process error

 26D1 86   29        ERR29A LDA     #$29      Error-Code 41 (File already OPEN)
 26D3 7E   0B6B      ERRXX JMP      ERROR     Process error
                     *
                     * OPEN CHANNEL 0
                     *
 26D6 B6 CCFC        OPEN0 LDA      PSTATE    Check Printing-Flag
 26D9 26 F2                  BNE    ERR1BA    Set. Error-Code 27
 26DB 8E C840                LDX    #SYSFCB
 26DE BD CD2D                JSR    GETFIL    Get File-Specs
 26E1 1025 FF1E              LBCS FCBER1      Error.
 26E5 86 04                  LDA    #4        Set extension to .SYS
 26E7 BD CD33                JSR    SETEXT
 26EA 86 01                  LDA    #1        Set to READ
 26EC A7 84                  STA    0,X
 26EE BD D406                JSR    FMS       Call FMS
 26F1 1026 FF0E              LBNE FCBER1      Error
 26F5 CC 0000                LDD    #0
 26F8 FD CC1B                STD    LDROFF    Clear Load offset
 26FB 4A                     DECA             Set for Binary File
 26FC A7 88 3B               STA    59,X
 26FF BD CD30                JSR    LOADFL    Load File
 2702 BD CCC0                JSR    PINIT     Init Printer
 2705 8E CCE4                LDX    #POUT     Get Printer-Output address
 2708 9F E1                  STX    CHOUTV    and save in CHOUT
 270A 7E 0284                JMP    STENDC    Check Statement-Ending and continue
                     *
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 111

                     * VALIDATE OUTPUT CHANNEL #
                     *
 270D 0F   DD        VOUTCH CLR     CHANFG    Clear Channel-Flag
 270F BD   0F26              JSR    SKIPS1    Skip Spaces and get char
 2712 81   76                CMPA #$76        '#'?
 2714 26   37                BNE    CHSYN2    No. Go home
 2716 0C   DD                INC    CHANFG    Yes. Set Channel-Flag
 2718 20   0B                BRA    EVALCH    Evaluate Channel #
                     *
                     * VALIDATE INPUT CHANNEL #
                     *
 271A 0F   DE        VINPCH CLR     INPSEL    Set input to Channel 0
 271C BD   0F26              JSR    SKIPS1    Skip Spaces and get char
 271F 81   76                CMPA #$76        '#'?
 2721 26   2A                BNE    CHSYN2    No. Go home
 2723 0C   DE                INC    INPSEL    Yes. Set Input-Select

                     * EVALUATE CHANNEL # OR RECORD #

 2725 BD   0F24      EVALCH JSR    SKIPSP    Skip next Spaces and get char
 2728 BD   2207             JSR    EVALSB    Evaluate Chnnel #
 272B 97   F2               STA    CHANNO    and save
 272D 81   0C               CMPA   #12       Max = 12
 272F 23   04               BLS    CHSYNT    <=12 is OK. Check Channel syntax

 2731 86   28        ERR28A LDA     #$28      Error-Code 40 (Bad File #)
 2733 20   33                BRA    ERRXY     Process error
                     *
                     * CHECK CHANNEL-SELECT SYNTAX
                     *
 2735 8D   17        CHSYNT BSR     SELFCB    Select Channel's FCB
 2737 BD   0F26              JSR    SKIPS1    Skip Spaces and get char
 273A 2B   0C                BMI    ERR34P    Variable. Syntax Error
 273C 81   72                CMPA #$72        Statement. ','?
 273E 27   0B                BEQ    CHSYN1    Yes
 2740 81   7B                CMPA #$7B        No. Terminator?
 2742 24   09                BCC    CHSYN2    Yes. Go home
 2744 81   31                CMPA #$31        No. ELSE?
 2746 27   05                BEQ    CHSYN2    Yes. Go home
 2748 7E   0B61      ERR34P JMP     SYNERR    Error-Code 52 (Syntax Error)

 274B 31   21        CHSYN1 LEAY 1,Y          Bypass Token
 274D 39             CHSYN2 RTS
                     *
                     * SET TO SELECTED CHANNEL'S FCB
                     *
 274E 8E 0000        SELFCB LDX     #0        Initialise to Channel 0
 2751 9F DF                  STX    FCBTMP    Save in FCB-pointer TEMP
 2753 8E 44AB                LDX    #FCBSTK Point to FCB Stack
 2756 48                     ASLA             Channel * 2
 2757 26 07                  BNE    SLFCB2    Channel 1-12
 2759 96 DD                  LDA    CHANFG    Channel 0. Test Channel-Flag
 275B 1026 01BC              LBNE XFROUT      Not 0. Set char-out vector
 275F 39             SLFCB1 RTS
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 112


 2760 AE   86        SLFCB2 LDX    A,X       Get FCB Channel's vector
 2762 9F   DF               STX    FCBTMP    and save in Temp
 2764 26   F9               BNE    SLFCB1    Not 0. Go home

 2766 86   2B        ERR2BA LDA    #$2B      Error-Code 43 (File has not been opened)
 2768 7E   0B6B      ERRXY JMP     ERROR     Process error

 276B 86   2A        ERR2AA LDA     #$2A      Error-Code 42 (Must open File as NEW or OLD)
 276D 20   F9                BRA    ERRXY     Process error
                     *
                     * CHECK IF FILE OPEN AS NEW OR OLD
                     *
 276F A6   01        SLFCB3 LDA     1,X       Get error-code
 2771 81   01                CMPA #1          Update?
 2773 27   F6                BEQ    ERR2AA    Yes. Error-Code 42
 2775 81   02                CMPA #2          No. New?
 2777 27   10                BEQ    OPENW1    Yes
                     *
                     * OPEN SELECTED CHANNEL FOR READ
                     *
 2779 9E   DF        OPENR LDX      FCBTMP    Point to FCB
 277B 86   01                LDA    #1        Set for READ
 277D A7   84                STA    0,X
 277F BD   D406              JSR    FMS       call FMS
 2782 27   DB                BEQ    SLFCB1    No error. Go home

 2784 7E   2603      FCBERB JMP     FCBER1    Process error
                     *
                     * OPEN SELECTED CHANNEL FOR WRITE
                     * IF FILE ALREADY EXISTS, THEN DELETE IT FIRST
                     *
 2787 9F   DF        OPENW STX      FCBTMP    Save FCB pointer TEMP
 2789 9E   DF        OPENW1 LDX     FCBTMP    Recover FCB pointer
 278B 86   02        OPENW2 LDA     #2        Set to WRITE
 278D A7   84                STA    0,X
 278F BD   D406              JSR    FMS       Call FMS
 2792 27   CB                BEQ    SLFCB1    No error. Go home
 2794 A6   01                LDA    1,X       Get error-code
 2796 81   03                CMPA #3          File already exists?
 2798 26   EA                BNE    FCBERB    No. Check FCB error
 279A 86   0C                LDA    #12       Set to DELETE
 279C A7   84                STA    0,X
 279E BD   D406              JSR    FMS       Call FMS
 27A1 26   E1                BNE    FCBERB    Check FCB error
 27A3 A6   88 24             LDA    36,X      Restore 1st letter
 27A6 A7   04                STA    4,X       of File-name
 27A8 20   E1                BRA    OPENW2
                     *
                     * SELECT CHANNEL FOR OUTPUT
                     *
 27AA 0D   DD        CHROUT TST     CHANFG    Test Output flag
 27AC 27   08                BEQ    CHOUT2    =0
 27AE 9F   3B                STX    TEMP2     Not 0. Save pointer in Temp
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 113

 27B0 9E   F0        CHOUT1 LDX    FCBPTR    Get FCB pointer
 27B2 26   2C               BNE    CHOUT3    Not 0
 27B4 9E   3B               LDX    TEMP2     =0. Recover FCB-pointer
 27B6 81   20        CHOUT2 CMPA   #$20      Control-Code?
 27B8 25   02               BCS    OUTSEL    Yes. Output it.
 27BA 0C   75               INC    POSCTR    No. Bump Head-Position counter

                     * OUTPUT A CHARACTER TO SELECTED CHANNEL

 27BC 0D   6B        OUTSEL TST    OUTSLF    Test Output-Select Flag
 27BE 26   16               BNE    OUTSL2    Not Terminal
 27C0 7D   44A7             TST    EDITFG    Editing?
 27C3 26   05               BNE    OUTSL0    Yes
 27C5 7D   44A8             TST    MELDFG    No. Melding?
 27C8 27   0A               BEQ    OUTSL1    No
 27CA 34   10        OUTSL0 PSHS   X         Save WBuf-pointer
 27CC 9E   45               LDX    INBFPT    Get Input-Buf pointer
 27CE A7   80               STA    0,X+      Put char in Input-Buf and bump pointer
 27D0 9F   45               STX    INBFPT    Save pointer
 27D2 35   10               PULS   X         Recover original pointer
 27D4 0E   0C        OUTSL1 JMP    PUTCH     Display it

 27D6 34   10        OUTSL2 PSHS   X         Save X
 27D8 8E   C840             LDX    #SYSFCB   Go to Channel 1-12, and
 27DB BD   25EF             JSR    RFILE2    Write a char
 27DE 35   90               PULS   X,PC      Recover X and go home

 27E0 E6   02        CHOUT3 LDB     2,X       Activity-Code
 27E2 C1   02                CMPB #2          Open for WRITE?
 27E4 27   0C                BEQ    IN_OUT    Yes. Output Channels 1-12
 27E6 6D   02                TST    2,X       No. Re-test Activity
 27E8 26   17                BNE    ERR2CA    Not 0. Error-Code 44
 27EA 6D   01                TST    1,X       0. Test provisional Activity
 27EC 27   13                BEQ    ERR2CA    =0. Error-Code 44
 27EE 8D   36                BSR    INCHAN    File not Open. Select Channel
 27F0 20   BE                BRA    CHOUT1    Repeat
                     *
                     * INPUT/OUTPUT TO CHANNELS 1 - 12
                     *
 27F2 81   20        IN_OUT CMPA #$20         Control-Code?
 27F4 25   03                BCS    INOUT1    Yes
 27F6 6C   88 3F             INC    63,X      No. Bump Column-Position
 27F9 BD   D406      INOUT1 JSR     FMS       Call FMS
 27FC 26   86                BNE    FCBERB    Error
 27FE 9E   3B                LDX    TEMP2     Recover FCB-pointer
 2800 39                     RTS

 2801 86   2C        ERR2CA LDA     #$2C      Error-Code 44 (File Status error)
 2803 7E   0B6B              JMP    ERROR     Process error
                     *
                     * INPUT A CHARACTER FROM SELECTED CHANNEL
                     *
 2806 0D   DE        CHRIN TST      INPSEL    Test Inp-Sel Flag
 2808 27   08                BEQ    CHRIN2    Clear. From Terminal
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 114

 280A 9F   3B                STX    TEMP2     Set. Save FCB pointer
 280C 9E   F0        CHRIN1 LDX     FCBPTR    Get FCB pointer
 280E 26   04                BNE    CHRIN3    Not 0
 2810 9E   3B                LDX    TEMP2     =0. Recover pointer
 2812 0E   09        CHRIN2 JMP     GETCH     Input from Terminal
                     *
                     * INPUT FROM CHANNELS 1 - 12
                     *
 2814 A6   02        CHRIN3 LDA     2,X       Get Activity-Status
 2816 81   01                CMPA #1          Open for READ?
 2818 27   D8                BEQ    IN_OUT    Yes. Input Channels 1-12
 281A 6D   02                TST    2,X       No. Re-test Activity
 281C 26   E3                BNE    ERR2CA    Not 0. Error-Code 44
 281E 6D   01                TST    1,X       =0. Test provisional Activity
 2820 27   DF                BEQ    ERR2CA    =0. Error-Code 44
 2822 8D   02                BSR    INCHAN    File not Open. Select Channel
 2824 20   E6                BRA    CHRIN1
                     *
                     * SELECT INPUT CHANNEL 1 - 12
                     *
 2826 34   06        INCHAN PSHS D
 2828 DC   DF                LDD    FCBTMP    Get FCB-pointer from Temp
 282A 34   06                PSHS D           Save it
 282C 9F   DF                STX    FCBTMP    Save FCB-pointer in TEMP
 282E BD   276F              JSR    SLFCB3
 2831 35   06                PULS D           Restore FCB-
 2833 DD   DF                STD    FCBTMP    pointer in Temp
 2835 35   86                PULS D,PC        and go home
                     *
                     * EXECUTE CLOSE STATEMENT
                     *
 2837 BD   0F26      CLOSE JSR      SKIPS1    Skip Spaces and get char
 283A BD   2207              JSR    EVALSB    Evaluate Channel #
 283D 81   0C                CMPA #12         Max = 12
 283F 22   3B                BHI    ERR28B    >12. Error-Code 40
 2841 8E   44AB              LDX    #FCBSTK <=12. Point to FCB Stack
 2844 48                     ASLA             *2
 2845 26   0A                BNE    CLOSE0    Not Channel 0
 2847 BD   CD2A              JSR    RSTRIO    =0. Restore I/O vectors
 284A BE   CD13              LDX    OUTCH2+1
 284D 9F   E1                STX    CHOUTV
 284F 20   1E                BRA    CLOSE2

 2851 30   86        CLOSE0 LEAX   A,X       Point to selected FCB
 2853 EC   84               LDD    0,X       Get address of FCB
 2855 DD   DF               STD    FCBTMP    and save in TEMP
 2857 6F   84               CLR    0,X       Clear FCB's address from Stack
 2859 6F   01               CLR    1,X
 285B 8D   25               BSR    CLOSE3
 285D 9E   DF               LDX    FCBTMP    Get FCB address
 285F 27   1E               BEQ    ERR2BB    =0 Error-Code 43
 2861 A6   02               LDA    2,X       Not 0. Activity?
 2863 27   03               BEQ    CLOSE1    =0
 2865 BD   25DA             JSR    CLFIL0    Not 0. Close File
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 115

 2868 9E DF          CLOSE1 LDX    FCBTMP     Get FCB pointer
 286A CC 0140               LDD    #320
 286D 8D 27                 BSR    UNRSV      De-allocate 320 Bytes of memory
 286F BD 0F26        CLOSE2 JSR    SKIPS1     Skip Spaces and get char
 2872 81 72                 CMPA   #$72       ','?. More files to close?
 2874 1026 DA0C             LBNE   STENDC     No. Check Statement-Ending and continue
 2878 31 21                 LEAY   1,Y        Yes. Bump pointer
 287A 20 BB                 BRA    CLOSE      and go close next File

 287C 7E   2731      ERR28B JMP    ERR28A     Error-Code 40 (Bad File #)

 287F 7E   2766      ERR2BB JMP     ERR2BA    Error-Code 43 (File has not been opened)
                     *
                     * DELETE CHANNEL'S DATA FROM STACK
                     *
 2882 AE   88 1A     CLOSE3 LDX     26,X      Point to FCB Channel
 2885 27   60                BEQ    UNRSV6    =0. Go home
 2887 EC   84                LDD    0,X       Not 0. Get Linkage-addr
 2889 6F   84                CLR    0,X       Now clear linkage
 288B 6F   01                CLR    1,X
 288D 6F   03                CLR    3,X
 288F 1F   01                TFR    D,X       Point to ???
 2891 CC   0008              LDD    #8
 2894 20   08                BRA    UNRSV1    De-allocate 8 bytes
                     *
                     * DE-ALLOCATE RESERVED MEMORY-SPACE POINTED BY X
                     * # OF BYTES IN 'D'. MINIMUM OF 4
                     *
 2896 1083 0004      UNRSV CMPD #4
 289A 24 02                  BCC    UNRSV1    >=4
 289C C6 04                  LDB    #4        <4, so set to 4
 289E DD 43          UNRSV1 STD     STRLEN    Save Block-Size
 28A0 CC 0000                LDD    #0
 28A3 DD 59                  STD    LINADR    Clear Next-Free-Slot vector
 28A5 9F 7F                  STX    BLKPTR    Save pointer to Block
 28A7 9E 41                  LDX    FREPTR    Get free-memory pointer
 28A9 9F 2E                  STX    LINPOS    and save in Free-Slot addr
 28AB DC 7F          UNRSV2 LDD     BLKPTR    Recover Block-Pointer
 28AD 1093 2E                CMPD LINPOS      Same as Free-Slot addr?
 28B0 24 36                  BCC    UNRSV7    Above it

                     * BLOCK TO BE DE-ALLOCATED LIES BELOW FREE-SLOT POINTER

 28B2 D3 43                 ADDD   STRLEN     Add on Block-Size
 28B4 1093 2E               CMPD   LINPOS     Compare again
 28B7 26 12                 BNE    UNRSV3     Still not same

                     * FREE-CHAIN SLOT FOLLOWS IMMEDIATELY AFTER
                     * BLOCK TO BE DE-ALLOCATED

 28B9 EC   9F 002E          LDD    [LINPOS]   Same. Get Next-Free-Slot addr
 28BD ED   9F 007F          STD    [BLKPTR]   and store at start of Block
 28C1 9E   2E               LDX    LINPOS     Get Free-Slot addr
 28C3 EC   02               LDD    2,X        Get Memory-available
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 116

 28C5 D3   43               ADDD   STRLEN    Add Block-Size
 28C7 9E   7F               LDX    BLKPTR    Recover Block-pointer
 28C9 20   08               BRA    UNRSV4
                     *
                     * FREE-CHAIN SLOT DOES NOT IMMEDIATELY FOLLOW
                     * BLOCK TO BE DE-ALLOCATED
                     *
 28CB DC   2E        UNRSV3 LDD     LINPOS    Get Free-Slot addr
 28CD 9E   7F                LDX    BLKPTR    Recover Block-Pointer
 28CF ED   84                STD    0,X       and store as Linkage to next Free-Slot
 28D1 DC   43                LDD    STRLEN    Get Block-Size

                     * DE-ALLOCATE BLOCK

 28D3 ED   02        UNRSV4 STD     2,X       Store new Slot-Size
 28D5 DC   7F                LDD    BLKPTR    Get Block-Pointer
 28D7 9E   59                LDX    LINADR    Get free-Slot vector
 28D9 27   02                BEQ    UNRSV5    No previous free Slots
 28DB ED   84                STD    0,X       Previous Slot found. Store Block-Pointer as Linkage
 28DD 9E   2E        UNRSV5 LDX     LINPOS    Get Free-Slot addr
 28DF 9C   41                CMPX FREPTR      De-allocated Block below start of free-Chain?
 28E1 26   04                BNE    UNRSV6    No. Go home
 28E3 9E   7F                LDX    BLKPTR    Yes. Get Block-Pointer
 28E5 9F   41                STX    FREPTR    and save in free-Memory pointer
 28E7 39             UNRSV6 RTS
                     *
                     * BLOCK TO BE DE-ALLOCATED LIES AHEAD OF FREE-SLOT POINTER
                     *
 28E8 EC 02          UNRSV7 LDD     2,X       Get Slot-Size
 28EA D3 2E                  ADDD LINPOS      Add Free-Slot addr
 28EC 1093 7F                CMPD BLKPTR      Same as Block-Pointer?
 28EF 27 0A                  BEQ    UNRSV8    Yes, so it lies ahead in same Slot

                     * BLOCK LIES AHEAD IN ANOTHER SLOT. UPDATE POINTERS AND ADDRESSES

 28F1 9E   2E               LDX    LINPOS    Get Free-Slot addr
 28F3 9F   59               STX    LINADR    Save in Next-Free-Slot vector
 28F5 AE   84               LDX    0,X       Get Linkage to next Slot
 28F7 9F   2E               STX    LINPOS    Save in Free-Slot addr
 28F9 20   B0               BRA    UNRSV2    and check again
                     *
                     * BLOCK IMMEDIATELY FOLLOWS FREE-SLOT
                     * DE-ALLOCATE IT AND ADJUST FREE-SLOT SIZE
                     *
 28FB EC 02          UNRSV8 LDD     2,X       Get Slot-Size again
 28FD D3 43                  ADDD STRLEN      Add Block-Size
 28FF ED 02                  STD    2,X       and save new Slot-Size
 2901 D3 2E                  ADDD LINPOS      Add Free-Slot addr
 2903 10A3 84                CMPD 0,X         More free memory in same Slot?
 2906 26 DF                  BNE    UNRSV6    No. Go home

                     * ANOTHER BLOCK OF MEMORY AHEAD IN SAME SLOT
                     * ADJUST LINKAGE AND SLOT-SIZE
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 117

 2908 AE   84               LDX    0,X       Yes. Get Next-Free-Slot addr
 290A EC   02               LDD    2,X       Get # of bytes there
 290C DD   43               STD    STRLEN    Save in Slot-Size
 290E EC   84               LDD    0,X       Get addr of Next-free-Slot
 2910 9E   2E               LDX    LINPOS    Get Free-Slot pointer
 2912 ED   84               STD    0,X       Store address there
 2914 DC   43               LDD    STRLEN    Recover Slot-Size
 2916 E3   02               ADDD   2,X       Bump by # already stored
 2918 ED   02               STD    2,X       and save back
 291A 39                    RTS
                     *
                     * SET CHARACTER-OUT VECTOR
                     *
 291B DC   E1        XFROUT LDD     CHOUTV    Get Channel-vector
 291D 20   03                BRA    XFOUT2
                     *
                     * RESTORE CHARACTER-OUT VECTOR
                     *
 291F FC   CD13      XFOUT1 LDD     OUTCH2+1 Terminal-vector
 2922 FD   CD10      XFOUT2 STD     OUTCH+1 Current Output
 2925 39             XFOUT3 RTS
                     *
                     * BUILD FILE-NAME IN SYSFCB AND ADD .DAT EXTENSION
                     *
 2926 BD   25AB      BILDNM JSR     NAM2FX    Build File-Name in FLEX Line-Buf
 2929 8E   C840              LDX    #SYSFCB
 292C BD   CD2D              JSR    GETFIL    Get File Spec
 292F 86   07                LDA    #7        Set extension to .DAT
 2931 7E   CD33              JMP    SETEXT
                     *
                     * READ NEXT SEQUENTIAL SECTOR
                     *
 2934 9E   DF        NXTSEQ LDX     FCBTMP    Get FCB pointer
 2936 86   0F                LDA    #15       READ next seq. sector
 2938 BD   25ED              JSR    RFILE1
 293B 7E   0284              JMP    STENDC    Check statement-Ending and continue
                     *
                     * EXECUTE CHAIN STATEMENT
                     *
 293E BD   258E      CHAIN JSR      FILCK1    Check File-Specs
 2941 86   03                LDA    #3        Set ext to .BAS
 2943 D6   DB                LDB    PRGTYP    Check program-type
 2945 27   02                BEQ    CHAIN0    It's BAS
 2947 86   08                LDA    #8        Set extension to .BAC
 2949 BD   CD33      CHAIN0 JSR     SETEXT
 294C BD   D403              JSR    FMSCLS    Close all files
 294F BD   2D0B              JSR    CLFSTK    Clear FCB address Stack
 2952 CC   0000              LDD    #0
 2955 FD   48A8              STD    CHAINS    Clear Chain-Start-Line #
 2958 BD   0F26              JSR    SKIPS1    Skip Spaces and get char
 295B 2A   08                BPL    CHAIN1    Statement
 295D BD   222A              JSR    EVLINT    Variable. Evaluate Integer expression
 2960 DC   91                LDD    MATH0     Get Chain-Start addr
 2962 FD   48A8              STD    CHAINS    and save in Chain-Start
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 118

 2965 8E C840        CHAIN1 LDX     #SYSFCB Point to FCB
 2968 EC 0C                  LDD    12,X      1st 2 chars of ext
 296A 1083 4241              CMPD #$4241      BA?
 296E 26 0C                  BNE    CHAIN2    No
 2970 A6 0E                  LDA    14,X      Yes. 3rd char
 2972 81 43                  CMPA #'C         C?
 2974 1027 E02D              LBEQ BACF1       Yes. Input BAC File
 2978 81 53                  CMPA #'S         No. S?
 297A 27 06                  BEQ    CHAIN3    Yes. Input BAS File
 297C 96 DB          CHAIN2 LDA     PRGTYP    Check program type
 297E 1026 E023              LBNE BACF1       Set. Input a BAC file to Source-Buf
 2982 BD 0943        CHAIN3 JSR     BASFIN    Clear. Input a BAS file
 2985 7E 0217                JMP    RUN1      and RUN it
                     *
                     * EXECUTE KILL STATEMENT
                     *
 2988 8D 9C          KILL    BSR    BILDNM    Build File-Name in SYSFCB
 298A 8E C840                LDX    #SYSFCB
 298D 6D 03                  TST    3,X       Test Drive # in FCB
 298F 2A 02                  BPL    KILL0     +ve. Go delete it
 2991 6F 03                  CLR    3,X       -ve. Set to Drive 0
 2993 86 0C          KILL0 LDA      #12       Set to DELETE
 2995 A7 84          KILL1 STA      0,X
 2997 BD D406                JSR    FMS       Call FMS
 299A 1026 FC5B              LBNE FCBERR      Check FCB Error
 299E 7E 0284                JMP    STENDC    Check Statement-Ending and continue
                     *
                     * EXECUTE RENAME COMMAND
                     *
 29A1 8D   83        RENAME BSR     BILDNM    Build File-Name in SYSFCB
 29A3 8E   C840              LDX    #SYSFCB Point to FCB
 29A6 BD   25EB              JSR    RFILE     READ file
 29A9 BD   25D6              JSR    CLFILE    and CLOSE it
 29AC BD   20BD              JSR    COMMAC    Check for comma
 29AF BD   25AB              JSR    NAM2FX    Build File-Name in FLEX Line-Buf
 29B2 8E   C871              LDX    #SYSFCB+49 Set up for Rename Work-Buf
 29B5 BD   CD2D              JSR    GETFIL    Get File-Specs
 29B8 8E   C840              LDX    #SYSFCB Point to FCB
 29BB 86   0D                LDA    #13       Set to RENAME FILE
 29BD 20   D6                BRA    KILL1
                     *
                     * EXECUTE GET STATEMENT
                     *
 29BF BD 2B3D        GET     JSR    VFYOPN    Verify File Open
 29C2 BD 0F26                JSR    SKIPS1    Skip Spaces and get char
 29C5 2B 19                  BMI    ERR34S    Variable. Syntax Error
 29C7 81 7B                  CMPA #$7B        Statement. Terminator?
 29C9 1024 FF67              LBCC NXTSEQ      Yes. Read next sector
 29CD 81 31                  CMPA #$31        No.ELSE?
 29CF 1027 FF61              LBEQ NXTSEQ      Yes. Read next sector
 29D3 81 29                  CMPA #$29        No. RECORD?
 29D5 26 09                  BNE    ERR34S    No. Syntax Error
 29D7 31 21                  LEAY 1,Y         Yes. Bump pointer
 29D9 8D 30                  BSR    VFYREC    Validate Record #
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER    PAGE 119

 29DB 8D   4E               BSR    CLRREC      Clear Record
 29DD 7E   0284             JMP    STENDC      Check Statement-Ending and continue

 29E0 7E   0B61      ERR34S JMP     SYNERR     Error-Code 52 (Syntax Error)
                     *
                     * EXECUTE PUT STATEMENT
                     *
 29E3 BD   2B3D      PUT     JSR    VFYOPN     Verify File Open
 29E6 BD   0F26              JSR    SKIPS1     Skip Spaces and get char
 29E9 2B   F5                BMI    ERR34S     Variable. Syntax Error
 29EB 81   7B                CMPA #$7B         Statement. Terminator?
 29ED 24   11                BCC    PUT2       Yes. End-of-Statement
 29EF 81   31                CMPA #$31         No. ELSE?
 29F1 27   0D                BEQ    PUT2       Yes
 29F3 81   29                CMPA #$29         No. RECORD?
 29F5 26   E9                BNE    ERR34S     No. Syntax Error
 29F7 31   21                LEAY 1,Y          Yes. Bump pointer
 29F9 8D   10                BSR    VFYREC     Validate Record #
 29FB 8D   4A        PUT1    BSR    WRITSS     Write a single sector
 29FD 7E   0284              JMP    STENDC     Check Statement-Ending and continue

 2A00 9E   DF        PUT2   LDX    FCBTMP      Get FCB pointer
 2A02 AE   88 42            LDX    66,X        Get Record #
 2A05 30   01               LEAX   1,X         Bump it
 2A07 9F   91               STX    MATH0       and save in M0
 2A09 20   F0               BRA    PUT1
                     *
                     * VALIDATE RECORD-NUMBER
                     *
 2A0B BD 1843        VFYREC JSR     EVALEX    Evaluate expression
 2A0E D6 78                  LDB    MODEFG    Test MODE-Flag
 2A10 1026 F7FA              LBNE ERR48C      '$'. Error-Code 72
 2A14 85 04                  BITA #4          Numeric. '%'?
 2A16 27 05                  BEQ    VFREC1    No. FP
 2A18 D6 91                  LDB    MATH0     Yes. Test sign-byte
 2A1A 2B 0A                  BMI    ERR18D    -ve. Error-Code 24
 2A1C 39                     RTS              +ve. Go home

 2A1D BD 3653        VFREC1 JSR    SCALDN      Adjust for Scale-Factor
 2A20 96 91                 LDA    MATH0       Test sign-byte in Scratch
 2A22 102A 0851             LBPL   INTTST      +ve. Test range of FP for conv to Integer

 2A26 86   18        ERR18D LDA     #$18       -ve. Error-Code 24 (Non-existent RECORD #)
 2A28 7E   0B6B              JMP    ERROR      Process Error
                     *
                     * CLEAR RECORD
                     *
 2A2B DC   91        CLRREC LDD     MATH0      Get Record #
 2A2D 9E   DF        CLREC1 LDX     FCBTMP     Get FCB pointer to Channel
 2A2F 8D   6E                BSR    LOCREC     Look for it
 2A31 27   35                BEQ    WRTSS1     =0. Go home
 2A33 9E   DF                LDX    FCBTMP     Get FCB pointer to Channel
 2A35 30   88 44             LEAX 68,X         Point to Sector-Data
 2A38 CE   0000              LDU    #0
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 120

 2A3B C6   7E                LDB    #126      126 double-bytes
 2A3D EF   81        CLREC2 STU     0,X++     Clear 252 bytes
 2A3F 5A                     DECB             in Sector-data area
 2A40 26   FB                BNE    CLREC2
 2A42 9E   DF                LDX    FCBTMP    Get FCB pointer to Channel
 2A44 7E   25F9              JMP    FCBERR    Check FCB Error
                     *
                     * WRITE SINGLE SECTOR TO DISK
                     *
 2A47 9E   DF        WRITSS LDX     FCBTMP    Test FCB pointer
 2A49 A6   0F                LDA    15,X      Get File-Attribute
 2A4B 2B   1C                BMI    ERR0BA    >=80. Write-Protected
 2A4D 9F   2A                STX    AUXPTR    <80. Save Channel's data
 2A4F 8E   48B8              LDX    #RNDATA in Random-File Data-area
 2A52 8D   35                BSR    XFR252
 2A54 8D   17                BSR    CHKREC    Check record #. Extend File if nec
 2A56 8E   48B8              LDX    #RNDATA Recover Channel's data
 2A59 9F   2A                STX    AUXPTR    from
 2A5B 9E   DF                LDX    FCBTMP    Random-File FCB
 2A5D 8D   2A                BSR    XFR252
 2A5F 9E   DF                LDX    FCBTMP    Get pointer again
 2A61 86   0A                LDA    #10       Write Single Sector
 2A63 BD   25ED              JSR    RFILE1
 2A66 6F   84                CLR    0,X
 2A68 39             WRTSS1 RTS

 2A69 86   0B        ERR0BA LDA     #$0B      Error-Code 11 (File or Disk is Write-Protected)
 2A6B 20   4D                BRA    ERRXXB    Process Error
                     *
                     * CHECK FOR VALID RECORD #. EXTEND FILE-SIZE IF NECESSARY
                     *
 2A6D 9E DF          CHKREC LDX     FCBTMP    Get FCB pointer
 2A6F DC 91                  LDD    MATH0     Get Record #
 2A71 8D 2C                  BSR    LOCREC    Look for Record #
 2A73 27 F3                  BEQ    WRTSS1    =0. Go home
 2A75 A6 01                  LDA    1,X       Not 0. Get FCB Error-code
 2A77 81 18                  CMPA #$18        Non-existent Record #?
 2A79 1026 FB7C              LBNE FCBERR      No. Check FCB Error
 2A7D DC 91                  LDD    MATH0     Yes. Get Record #
 2A7F A3 88 15               SUBD 21,X        Subtract File-Size
 2A82 C3 0006                ADDD #6          +6
 2A85 8D 36                  BSR    EXTFIL    Extend File
 2A87 20 E4                  BRA    CHKREC    and back again
                     *
                     * TRANSFER 252 BYTES FROM FCB POINTED BY AUXPOINTER TO FCB POINTED BY X
                     *
 2A89 C6 7E          XFR252 LDB     #126      126 double-bytes
 2A8B 34 20                  PSHS Y
 2A8D 109E 2A                LDY    AUXPTR    Get Aux. Pointer
 2A90 31 A8 44               LEAY 68,Y        Now point to Data-Area
 2A93 30 88 44               LEAX 68,X        Point X at Data-Area of FCB
 2A96 EE A1          XF252A LDU     0,Y++     Transfer 252 bytes
 2A98 EF 81                  STU    0,X++
 2A9A 5A                     DECB
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 121

 2A9B 26   F9               BNE    XF252A
 2A9D 35   A0               PULS   Y,PC       Go home
                     *
                     * LOCATE DESIRED RECORD-NUMBER
                     *
 2A9F ED 88 20       LOCREC STD     32,X      Save in 'Desired Record #'
 2AA2 27 14                  BEQ    ERR2FA    =0. Error-Code 47
 2AA4 10A3 88 42             CMPD 66,X        Not 0. Compare with Current #
 2AA8 27 BE                  BEQ    WRTSS1    Match. Go home
 2AAA 86 15                  LDA    #$15      No match. Go to next seq. sector
 2AAC A7 84                  STA    0,X
 2AAE 7E D406                JMP    FMS

 2AB1 7E   2801      ERR2CB JMP    ERR2CA    Error-Code 44 (File Status Error)

 2AB4 86   2E        ERR2EA LDA    #$2E      Error-Code 46 (Can't extend sequential file)
 2AB6 20   02               BRA    ERRXXB    Process Error

 2AB8 86   2F        ERR2FA LDA     #$2F     Error-Code 47 (Record 0 not allowed)
 2ABA 7E   0B6B      ERRXXB JMP     ERROR    Process Error
                     *
                     * EXTEND FILE-SIZE
                     *
 2ABD DD   39        EXTFIL STD     XTEMP4   Save amount of extension
 2ABF 9E   DF                LDX    FCBTMP   Get FCB pointer TEMP
 2AC1 A6   88 17             LDA    23,X     Test File Sector Map indicator
 2AC4 27   EE                BEQ    ERR2EA   =0. Error-Code 46
 2AC6 A6   02                LDA    2,X      Not 0. Get Activity-Status
 2AC8 85   01                BITA #1         Open for READ or UPDATE?
 2ACA 27   E5                BEQ    ERR2CB   No. Error-Code 44
 2ACC EC   88 1E             LDD    30,X     Yes, so get
 2ACF ED   88 38             STD    56,X     Current Position, and store
 2AD2 E6   88 44             LDB    68,X     Test 1st byte of Data-Area
 2AD5 26   0E                BNE    EXTFL1   Not 0
 2AD7 EC   88 11             LDD    17,X     =0. Get Start-addr of file
 2ADA ED   88 1E             STD    30,X     and save in Trk-Sec location
 2ADD ED   88 38             STD    56,X
 2AE0 86   09                LDA    #9       Read Single Sector
 2AE2 BD   25ED              JSR    RFILE1
 2AE5 5F             EXTFL1 CLRB
 2AE6 C1   53        EXTFL2 CMPB #83         Count of 83?
 2AE8 27   0A                BEQ    EXTFL3   Yes. All done
 2AEA A6   88 47             LDA    71,X     No. X at NUL?
 2AED 27   05                BEQ    EXTFL3   Yes
 2AEF 5C                     INCB            No. Bump count
 2AF0 30   03                LEAX 3,X
 2AF2 20   F2                BRA    EXTFL2   and back again
                     *
                     * 'NUL' ENCOUNTERED
                     *
 2AF4 86   03        EXTFL3 LDA     #3       Calculate 3*B+4
 2AF6 3D                     MUL
 2AF7 CB   04                ADDB #4
 2AF9 EE   88 44             LDU    68,X
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 122

 2AFC A6   88 46             LDA    70,X
 2AFF 9E   DF                LDX    FCBTMP    Get FCB pointer TEMP
 2B01 EF   88 35             STU    53,X
 2B04 A7   88 37             STA    55,X
 2B07 E7   88 3A             STB    58,X
 2B0A EC   88 13             LDD    19,X      Get Trk-Sec
 2B0D ED   88 1E             STD    30,X      and save in 'Current Position'
 2B10 86   09                LDA    #9        Read Single Sector
 2B12 BD   25ED              JSR    RFILE1
 2B15 EC   88 15             LDD    21,X      Get File-Size
 2B18 83   0002              SUBD #2          reduce by 2
 2B1B ED   88 20             STD    32,X      and save in Currect Record #
 2B1E 86   02                LDA    #2        Activity-Code 2 (Open for WRITE)
 2B20 A7   02                STA    2,X
 2B22 9E   DF        EXTFL4 LDX     FCBTMP    Get FCB pointer TEMP
 2B24 86   0F                LDA    #15       Advance to Next Seq. Sector
 2B26 BD   25ED              JSR    RFILE1
 2B29 4F                     CLRA             Read-Write next byte
 2B2A BD   25EF              JSR    RFILE2
 2B2D 9E   39                LDX    XTEMP4
 2B2F 30   1F                LEAX -1,X        Dec amount of extension
 2B31 9F   39                STX    XTEMP4
 2B33 26   ED                BNE    EXTFL4    Back for more
 2B35 9E   DF                LDX    FCBTMP    Done. Get FCB pointer TEMP
 2B37 BD   2BCA              JSR    FILECL    CLOSE Fie
 2B3A 7E   25EB              JMP    RFILE     Open File for Read
                     *
                     * VERIFY IF CHANNEL IS OPEN
                     *
 2B3D BD 0F26        VFYOPN JSR     SKIPS1    Skip Spaces and get char
 2B40 81 76                  CMPA #$76        '#'?
 2B42 26 75                  BNE    ERR34U    No. Syntax Error
 2B44 BD 2725                JSR    EVALCH    Yes. Evaluate Channel #
 2B47 9E DF                  LDX    FCBTMP    Get FCB pointer
 2B49 1027 FBE4              LBEQ ERR28A      =0. Bad File #
 2B4D A6 02                  LDA    2,X       Get Activity Status
 2B4F 4A                     DECA             and dec it
 2B50 27 66                  BEQ    RANDM6    Open for READ. Go home
 2B52 E6 02                  LDB    2,X       Re-test Activity Status
 2B54 1026 FCA9              LBNE ERR2CA      Open for WRITE or UPDATE. Error-Code 44
 2B58 E6 01                  LDB    1,X       =0. Test provisional Activity
 2B5A 27 5D                  BEQ    ERR34U    =0. Syntax error

                     * READ RANDOM FILE

 2B5C 9F   2A        RANDMR STX    AUXPTR    Save in Aux. Pointer
 2B5E 8E   48B8             LDX    #RNDATA   Point to Random-File Data-area
 2B61 BD   2A89             JSR    XFR252    Transfer 252 bytes to its data area
 2B64 9E   DF               LDX    FCBTMP    Get FCB pointer to Channel
 2B66 A6   01               LDA    1,X       Now get provisional Activity
 2B68 4A                    DECA             and dec it
 2B69 27   07               BEQ    RANDM1    =0. Update
 2B6B 4A                    DECA             Dec it again
 2B6C 27   25               BEQ    RANDM3    =0. New
RBASIC by R. Jones   31 May 1988       4-7-4 TSC ASSEMBLER    PAGE 123

 2B6E 8D   4C               BSR      TESTWP    Old
 2B70 20   32               BRA      RANDM4

 2B72 8D 48          RANDM1 BSR      TESTWP    Test for Write-Prot
 2B74 9E DF                 LDX      FCBTMP    Get FCB pointer
 2B76 86 01                 LDA      #1        Open for READ
 2B78 A7 84                 STA      0,X
 2B7A BD D406               JSR      FMS       Call FMS
 2B7D 27 28                 BEQ      RANDM5    No error
 2B7F A6 01                 LDA      1,X       Error. Get code
 2B81 81 04                 CMPA     #4        File not found?
 2B83 1026 FA72             LBNE     FCBERR    Check FCB Error

                     * FILE EXISTS

 2B87 C6   0B               LDB      #11       Count of 11
 2B89 30   04               LEAX     4,X       Artificial bump
 2B8B A6   88 20     RANDM2 LDA      32,X      Transfer file-name and ext
 2B8E A7   80               STA      0,X+      from Work Area to File-Name
 2B90 5A                    DECB
 2B91 26   F8               BNE      RANDM2    Not done yet

                     * OPEN AS "NEW"

 2B93 BD   2789      RANDM3 JSR      OPENW1    Open Channel for Write
 2B96 CC   00FF             LDD      #$FF      Turn of Space-Compression
 2B99 E7   88 3B            STB      59,X
 2B9C 6C   88 17            INC      23,X      Set File Sector-Map indicator to Random-File
 2B9F BD   25EF             JSR      RFILE2    READ next byte
 2BA2 8D   26               BSR      FILECL    CLOSE File

                     * OPEN AS "OLD"

 2BA4 BD   2779      RANDM4 JSR      OPENR     Open Channel for READ

                     *

 2BA7 86   FF        RANDM5 LDA      #$FF      Turn off Space-Compression
 2BA9 A7   88 3B            STA      59,X
 2BAC 8E   48B8             LDX      #RNDATA   Point to Random-File Data-area
 2BAF 9F   2A               STX      AUXPTR    Transfer 252 bytes
 2BB1 9E   DF               LDX      FCBTMP    from Random-File FCB
 2BB3 BD   2A89             JSR      XFR252    to Channel's FCB
 2BB6 9E   DF               LDX      FCBTMP    Point to Channel
 2BB8 39             RANDM6 RTS                and go home

 2BB9 7E   0B61      ERR34U JMP     SYNERR    Error-code 52 (Syntax Error)
                     *
                     * TEST FOR WRITE-PROTECTED FILE
                     * AND CLOSE FILE
                     *
 2BBC A6   03        TESTWP LDA     3,X       Get Drive #
 2BBE 8E   C840              LDX    #SYSFCB Point to FLEX FCB
 2BC1 A7   03                STA    3,X       Store Drive #
RBASIC by R. Jones   31 May 1988       4-7-4 TSC ASSEMBLER    PAGE 124

 2BC3 86   01               LDA    #1         Put '1' at
 2BC5 A7   04               STA    4,X        start of File-Name
 2BC7 BD   25F5             JSR    WFILE      Open File for Write

                     * CLOSE SINGLE FILE

 2BCA 86 04          FILECL LDA    #4         Set for CLOSE
 2BCC A7 84                 STA    0,X
 2BCE BD D406               JSR    FMS        Call FMS
 2BD1 1026 FA24             LBNE   FCBERR     Check FCB Error
 2BD5 39                    RTS               No error

 2BD6 7E   2731      ERR28D JMP     ERR28A    Error-Code 40 (Bad File #)
                     *
                     * EXECUTE FIELD STATEMENT
                     *
 2BD9 BD   0F26      FIELD JSR      SKIPS1    Skip Spaces and get char
 2BDC 81   76                CMPA #$76        '#'?
 2BDE 26   D9                BNE    ERR34U    No. Syntax Error
 2BE0 BD   2725              JSR    EVALCH    Yes. Evaluate Channel #
 2BE3 9E   DF                LDX    FCBTMP    Get FCB pointer
 2BE5 27   EF                BEQ    ERR28D    =0. Error-Code 40
 2BE7 7F   48AA              CLR    FLDSIZ    Valid Channel #. Clear Field-Size
 2BEA 30   88 44             LEAX 68,X        Point to data-area of FCB
 2BED 9F   33                STX    FCBDAD    and save in FCB-Data-Ad

                     * COMPUTE FIELD-SIZE AND CHECK IT

 2BEF BD 1843        FIELD1 JSR    EVALEX     Evaluate expression
 2BF2 0D 78                 TST    MODEFG     Test Mode-Flag
 2BF4 1026 F616             LBNE   ERR48C     '$'. Error-Code 72
 2BF8 85 04                 BITA   #4         Numeric. '%'?
 2BFA 26 06                 BNE    FIELD2     Yes
 2BFC BD 3653               JSR    SCALDN     No. FP. Adjust for Scale-Factor
 2BFF BD 3294               JSR    CRANGE     Check number range and normalise it
 2C02 DC 91          FIELD2 LDD    MATH0      Test Field-Size
 2C04 1083 00FC             CMPD   #252       Max FIELD size = 252
 2C08 22 4D                 BHI    ERR2DA     >252. Error-Code 45

                     * FIELD SIZE OK

 2C0A 96   92               LDA    MATH0+1    Get Field-size
 2C0C 97   4A               STA    ALFNCD     and save in AlfNumCode
 2C0E BD   0F26             JSR    SKIPS1     Skip Spaces and get char
 2C11 81   2C               CMPA   #$2C       AS?
 2C13 26   A4               BNE    ERR34U     No. Syntax Error
 2C15 BD   0F24             JSR    SKIPSP     Skip next Spaces and get char
 2C18 BD   2CEB             JSR    VARCHK     Check if $ or subscripted
 2C1B BD   19F2             JSR    CHKSUB     Check if variable subscripted
 2C1E 0D   C3               TST    TEMP5
 2C20 26   97               BNE    ERR34U     Not 0. Syntax Error
 2C22 DD   68               STD    STKPTR     =0. Save in $-Stack pointer
 2C24 9E   68               LDX    STKPTR     Get it into X
 2C26 EC   02               LDD    2,X
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 125

 2C28 2F 07                 BLE    FIELD3    <=0
 2C2A AE 84                 LDX    0,X       Point to data area
 2C2C BD 2896               JSR    UNRSV     and de-allocate FCB-space
 2C2F 9E 68                 LDX    STKPTR    Get $-Stack pointer
 2C31 DC 33          FIELD3 LDD    FCBDAD    Recover FCB-Data-Adr
 2C33 ED 84                 STD    0,X       and store it
 2C35 86 80                 LDA    #$80      FP-code
 2C37 D6 4A                 LDB    ALFNCD    Recover Field-Size
 2C39 ED 02                 STD    2,X
 2C3B 9E 33                 LDX    FCBDAD    Get FCB-Data-Adr
 2C3D 3A                    ABX              Add Field-Size
 2C3E 9F 33                 STX    FCBDAD    and save back
 2C40 FB 48AA               ADDB   FLDSIZ    Add Total Field-Size
 2C43 C1 FC                 CMPB   #252      Max FIELD size = 252
 2C45 22 10                 BHI    ERR2DA    >252. Error-Code 45
 2C47 F7 48AA               STB    FLDSIZ    OK, so save back
 2C4A BD 0F26               JSR    SKIPS1    Skip Spaces and get char
 2C4D 81 72                 CMPA   #$72      ','?
 2C4F 1026 D631             LBNE   STENDC    No. Check Statement-Ending and continue
 2C53 31 21                 LEAY   1,Y       Yes. Bump Line-Pointer
 2C55 20 98                 BRA    FIELD1    Back again

 2C57 86   2D        ERR2DA LDA     #$2D      Error-Code 45 (Field spec too large) ie >252
 2C59 7E   0B6B              JMP    ERROR     Process Error
                     *
                     * STORE STRING IN FIELD AT LOCATION X
                     *
 2C5C 34   04        STOSTR PSHS B
 2C5E CC   0000              LDD    #0
 2C61 DD   3D                STD    LSTBEG    Set List-Beg to 0000
 2C63 DC   43                LDD    STRLEN    Test Str-Len
 2C65 35   04                PULS B           Recover 'B'
 2C67 27   17                BEQ    STOST3    =0. Go home
 2C69 BD   121E      STOST1 JSR     CHRGET    Get char from String
 2C6C 27   10                BEQ    STOST2    NUL. Prepare to leave
 2C6E A7   80                STA    0,X+      Not NUL. Store char,
 2C70 9F   39                STX    XTEMP4    bump pointer, and save
 2C72 9E   43                LDX    STRLEN    Get String-Length,
 2C74 30   1F                LEAX -1,X        dec it,
 2C76 9F   43                STX    STRLEN    and save back
 2C78 27   06                BEQ    STOST3    =0. Go home
 2C7A 9E   39                LDX    XTEMP4    Not 0.
 2C7C 20   EB                BRA    STOST1    Back again

 2C7E 1C   FB        STOST2 ANDCC #$FB        Clear Z-bit
 2C80 39             STOST3 RTS
                     *
                     * EXECUTE LSET STATEMENT
                     *
 2C81 8D   1A        LSET    BSR    STRCHK    Check String
 2C83 27   06                BEQ    LSET1     =0. Check Statement-Ending and continue
 2C85 8D   D5                BSR    STOSTR    Not 0. Store String at location X
 2C87 27   02                BEQ    LSET1     Done. Check Statement-Ending and continue
 2C89 8D   03                BSR    STOSP     Store Spaces
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER    PAGE 126

 2C8B 7E   0284      LSET1 JMP      STENDC    Check Statement-Ending and continue
                     *
                     * STORE SPACES AT LOCATION X, EQUAL TO STRING-LENGTH
                     *
 2C8E 86 20          STOSP LDA      #SPACE
 2C90 34 20                  PSHS Y
 2C92 109E 43                LDY    STRLEN    Get String-Length
 2C95 A7 80          STOSP1 STA     0,X+      Store Space, bump pointer,
 2C97 31 3F                  LEAY -1,Y        and dec String-Length
 2C99 26 FA                  BNE    STOSP1
 2C9B 35 A0                  PULS Y,PC
                     *
                     * CHECK VARIABLE-TYPE. PUT STRING-LENGTH INTO STRLEN
                     *
 2C9D BD   0F26      STRCHK JSR     SKIPS1    Skip Spaces and get char
 2CA0 2A   51                BPL    ERR34V    Statement. Syntax Error
 2CA2 8D   47                BSR    VARCHK    Variable.Check if '$'
 2CA4 BD   0F90              JSR    ASSIGN    Evaluate Variable-Assignment. Form Var-Type
 2CA7 0D   78                TST    MODEFG    Test Mode-Flag
 2CA9 27   48                BEQ    ERR34V    Numeric. Syntax Error
 2CAB 9E   68        STRCK1 LDX     STKPTR    '$'. Get pointer to String-Stack
 2CAD EC   02                LDD    2,X       Get String-Length
 2CAF 84   7F                ANDA #$7F        Limit to 32767 max
 2CB1 DD   43                STD    STRLEN    and save in Str-Len
 2CB3 AE   84                LDX    0,X       Get address of String
 2CB5 39                     RTS
                     *
                     * EXECUTE RSET STATEMENT
                     *
 2CB6 8D   E5        RSET    BSR    STRCHK    Check String
 2CB8 27   D1                BEQ    LSET1     =0. Check Statement-Ending and continue
 2CBA 9F   3B                STX    TEMP2     Not 0. Save pointer
 2CBC 8D   9E                BSR    STOSTR    Store String at location X
 2CBE 27   CB                BEQ    LSET1     Check Statement-Ending and continue
 2CC0 30   1F                LEAX -1,X        Dec pointer
 2CC2 9F   2A                STX    AUXPTR    and save in Aux. pointer
 2CC4 DC   43                LDD    STRLEN    Get String-Length
 2CC6 30   8B                LEAX D,X         Bump pointer by String-Length
 2CC8 34   20                PSHS Y
 2CCA 31   01                LEAY 1,X         Point to one more
 2CCC 9E   2A                LDX    AUXPTR    Recover Aux. Pointer
 2CCE 9C   3B                CMPX TEMP2
 2CD0 30   01                LEAX 1,X         Artificial bump
 2CD2 25   08                BCS    RSET2
 2CD4 A6   82        RSET1 LDA      0,-X      Get char
 2CD6 A7   A2                STA    0,-Y      and transfer it
 2CD8 9C   3B                CMPX TEMP2       to right-hand side
 2CDA 26   F8                BNE    RSET1     and back for more

 2CDC 86 20          RSET2   LDA    #SPACE
 2CDE 109F 2C                STY    CMDPTR   Save Pointer
 2CE1 35 20                  PULS   Y
 2CE3 9C 2C          RSET3   CMPX   CMDPTR   Pad left-hand side with Spaces
 2CE5 24 A4                  BCC    LSET1    Done
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 127

 2CE7 A7   80               STA    0,X+      Not yet. Store Space
 2CE9 20   F8               BRA    RSET3     and back for another
                     *
                     * CHECK IF VARIABLE IS '$', OR WHETHER SUBSCRIPTED
                     *
 2CEB 81   81        VARCHK CMPA #$81         String-Variable?
 2CED 27   1B                BEQ    AS1       Yes. Go home
 2CEF 81   91                CMPA #$91        No. Subscripted String-Variable?
 2CF1 27   17                BEQ    AS1       Yes. Go home
 2CF3 7E   0B61      ERR34V JMP     SYNERR    Error-Code 52 (Syntax Error)
                     *
                     * EXECUTE 'AS' STATEMENT
                     * CHECK IF POSSIBLY ASC(
                     *
 2CF6 E6   84        AS      LDB    0,X       Get char,
 2CF8 C4   5F                ANDB #$5F        convert to upper-case
 2CFA C1   43                CMPB #'C
 2CFC 26   0C                BNE    AS1       No. Go home
 2CFE E6   01                LDB    1,X       Yes. Get next char
 2D00 C1   28                CMPB #'(
 2D02 26   06                BNE    AS1       No. Go home. Must be 'AS C'
 2D04 86   4E                LDA    #$4E      Yes. ASC( Token into A
 2D06 30   01                LEAX 1,X         Bump pointer,
 2D08 9F   45                STX    INBFPT    and save in Input-Buf pointer
 2D0A 39             AS1     RTS
                     *
                     * CLEAR FCB-ADDRESS STACK
                     *
 2D0B 8E   44AB      CLFSTK LDX     #FCBSTK Point to FCB stack
 2D0E C6   1A                LDB    #26       Count of 26 double-bytes
 2D10 CE   0000              LDU    #0
 2D13 EF   81        CLFST1 STU     0,X++     Clear 52 bytes
 2D15 5A                     DECB
 2D16 26   FB                BNE    CLFST1
 2D18 BD   CD2A              JSR    RSTRIO    Restore I/O vectors
 2D1B BE   CD13              LDX    OUTCH2+1
 2D1E 9F   E1                STX    CHOUTV
 2D20 39             CLFST2 RTS
                     *
                     * EXECUTE CVT$% STATEMENT
                     *
 2D21 CC   8402      CVTSI LDD      #$8402    Set code to %-variable, count of 2
 2D24 20   03                BRA    STRNUM    Convert String to Number
                     *
                     * EXECUTE CVT$F STATEMENT
                     *
 2D26 CC   8008      CVTSF LDD      #$8008    Set code to FP-variable, count of 8

                     * CONVERT STRING TO INTEGER OR FP

 2D29 34   06        STRNUM PSHS   D         Save codes
 2D2B BD   1D5B             JSR    VALNST    Prepare to convert $ in parens to decimal
 2D2E 35   06               PULS   D         Recover codes
 2D30 B7   48AD             STA    TEMP15    Save in Temp
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 128

 2D33 34   10               PSHS   X
 2D35 8E   0091             LDX    #MATH0    Point to dest addr
 2D38 BD   121E      STRNM1 JSR    CHRGET    Get char from String
 2D3B 27   07               BEQ    STRNM2    NUL
 2D3D A7   80               STA    0,X+      Not NUL. Store it. Bump pointer,
 2D3F 5A                    DECB             dec count,
 2D40 26   F6               BNE    STRNM1    and back for more
 2D42 20   05               BRA    STRNM3    All done

 2D44 6F   80        STRNM2 CLR     0,X+      Pad rest of String with NULs
 2D46 5A                     DECB
 2D47 26   FB                BNE    STRNM2
 2D49 35   06        STRNM3 PULS D
 2D4B DD   7B                STD    CURLIN    Save in Cur-Line addr
 2D4D B6   48AD              LDA    TEMP15    Get Variable-Code
 2D50 85   04                BITA #4          '%'?
 2D52 26   06                BNE    STRNM4    Yes
 2D54 BD   3629              JSR    FP2INT    No. Convert FP to Integer
 2D57 B6   48AD              LDA    TEMP15    Get Variable-Code again
 2D5A 7E   1D50      STRNM4 JMP     ASC2
                     *
                     * EXECUTE CVT%$ STATEMENT
                     *
 2D5D 0F   78        CVTIS CLR      MODEFG    Set MODE-Flag to Numeric
 2D5F BD   1993              JSR    EVALPR    Evaluate expression in parens
 2D62 BD   2225              JSR    PRPINT    Prepare Integer for conversion
 2D65 C6   02                LDB    #2        2 bytes for %-variable
 2D67 20   0A                BRA    NUMSTR    Change Number to String
                     *
                     * EXECUTE CVTF$ STATEMENT
                     *
 2D69 0F   78        CVTFS CLR      MODEFG    Set Mode-Flag to 'Numeric'
 2D6B BD   1993              JSR    EVALPR    Evaluate expression in parens
 2D6E BD   223B              JSR    PRPFP     Prepare FP for conversion
 2D71 C6   08                LDB    #8        8 bytes for FP-variable

                     * CONVERT INTEGER OR FP TO STRING

 2D73 BD 2109        NUMSTR JSR     ADVPTR   Advance Inp-Buf pointer by 'B'
 2D76 34 24                  PSHS B,Y        Save # of bytes, pointer
 2D78 54                     LSRB            Bytes / 2
 2D79 F7 48A4                STB    PUNDCT   Save count
 2D7C 8E 0091                LDX    #MATH0   Point to M0
 2D7F 109E 79                LDY    TEMP3
 2D82 EC 81          NMSTR1 LDD     0,X++    Transfer contents of M0
 2D84 ED A1                  STD    0,Y++    to ???
 2D86 7A 48A4                DEC    PUNDCT   Dec count
 2D89 26 F7                  BNE    NMSTR1   Not done yet
 2D8B 35 24                  PULS B,Y        Recover pointer, # of bytes
 2D8D 7E 1F4C                JMP    IDSTR0
                     *
                     * EVALUATE RECORD #
                     *
 2D90 81   76        EVALRC CMPA #$76        '#'?
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 129

 2D92 26   09                BNE    ERR34W    No. Syntax Error
 2D94 BD   2725              JSR    EVALCH    Yes. Evaluate Record #
 2D97 96   92                LDA    MATH0+1 No. Get Record #
 2D99 97   EC                STA    RECORD    and save it
 2D9B 26   83                BNE    CLFST2    Not 0. Go home
 2D9D 7E   0B61      ERR34W JMP     SYNERR    Error-Code 52 (Syntax Error)
                     *
                     * OPEN VIRTUAL-ARRAY FILE
                     *
 2DA0 CC   0008      OPNVRA LDD     #8        Count of 8
 2DA3 BD   2250              JSR    RSVSPC    Reserve memory-space for Record info
 2DA6 9F   33                STX    FCBDAD    Save in FCB-Data-Adr
 2DA8 35   06                PULS D           Recover Dim 2
 2DAA ED   02                STD    2,X       and store,
 2DAC 35   06                PULS D           then Dim 1
 2DAE ED   84                STD    0,X
 2DB0 6F   04                CLR    4,X       Clear byte 5
 2DB2 96   4E                LDA    CODEST    Get Variable-Code
 2DB4 85   01                BITA #1          '$'?
 2DB6 27   02                BEQ    OPVRA1    No
 2DB8 6C   04                INC    4,X       Yes. Bump byte 5
 2DBA 96   EC        OPVRA1 LDA     RECORD    Get Channel #
 2DBC A7   05                STA    5,X       Save in byte 6, and
 2DBE 0F   EC                CLR    RECORD    clear original
 2DC0 9E   72                LDX    MATH6+6
 2DC2 DC   2E                LDD    LINPOS    Get Line-Pos
 2DC4 ED   84                STD    0,X       Save it, and
 2DC6 86   01                LDA    #1        set next byte
 2DC8 A7   02                STA    2,X       to 1
 2DCA C6   08                LDB    #8        Record-Size = 8
 2DCC 96   4E                LDA    CODEST    Get Variable-Code
 2DCE 85   01                BITA #1          '$'?
 2DD0 26   08                BNE    OPVRA2    Yes
 2DD2 85   04                BITA #4          No. '%'?
 2DD4 27   17                BEQ    OPVRA4    No. FP
 2DD6 C6   02                LDB    #2        Yes. Record-Size = 2
 2DD8 20   13                BRA    OPVRA4
                     *
                     * CHECK IF STRING-LENGTH ASSIGNED
                     *
 2DDA 8E   0012      OPVRA2 LDX     #18       Set Record-Size
 2DDD 9F   91                STX    MATH0     to 18 (default)
 2DDF BD   0F26              JSR    SKIPS1    Skip Spaces and get char
 2DE2 81   69                CMPA #$69        '='?
 2DE4 26   05                BNE    OPVRA3    No
 2DE6 31   21                LEAY 1,Y         Yes. Bump pointer
 2DE8 BD   2207              JSR    EVALSB    Evaluate single-byte to decimal
 2DEB D6   92        OPVRA3 LDB     MATH0+1 Get Record-Size

                     * CALCULATE NUMBER OF ELEMENTS PER SECTOR

 2DED 9E   33        OPVRA4 LDX    FCBDAD    Get FCB-Data-Adr
 2DEF E7   06               STB    6,X       Might be 2, 8, 18 or variable
 2DF1 27   3E               BEQ    ERR5EA    =0. Error-Code 94
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 130

 2DF3 5F                    CLRB
 2DF4 86   FC               LDA    #252       Divide 252 by Element-Size
 2DF6 A0   06        OPVRA5 SUBA   6,X
 2DF8 5C                    INCB              Keep count
 2DF9 24   FB               BCC    OPVRA5     Keep going

 2DFB 5A                    DECB              Adjust count
 2DFC 27   33               BEQ    ERR5EA     =0. Error-Code 94
 2DFE E7   07               STB    7,X        Save # of elements per sector
 2E00 9E   DF               LDX    FCBTMP     Get FCB pointer TEMP
 2E02 27   22               BEQ    ERR2CD     Error-Code 44
 2E04 A6   02               LDA    2,X        Get Activity-Status
 2E06 26   1E               BNE    ERR2CD     Error-Code 44
 2E08 A6   01               LDA    1,X        Test provisional Activity
 2E0A 27   1A               BEQ    ERR2CD     =0. Error-Code 44
 2E0C BD   2B5C             JSR    RANDMR     Not 0. Open File of 1 Sector
 2E0F A6   88 17            LDA    23,X       Test File Sector-Map Indicator
 2E12 27   15               BEQ    ERR30A     Error-Code 48
 2E14 86   03               LDA    #3         Set Activity to Update
 2E16 A7   02               STA    2,X
 2E18 8E   44C5             LDX    #FCBCHN    Point to Channel-Table
 2E1B D6   F2               LDB    CHANNO     Get Channel #
 2E1D 58                    ASLB              B *2
 2E1E 3A                    ABX               Point to Channel
 2E1F DC   72               LDD    MATH6+6    Get pointer to Record-vector
 2E21 ED   84               STD    0,X        and store
 2E23 7E   0284             JMP    STENDC     Check Statement-Ending and continue

 2E26 7E   2801      ERR2CD JMP    ERR2CA     Error-Code 44 (File Status Error)

 2E29 86   30        ERR30A LDA    #$30       Error-Code 48 (Must use Random File)
 2E2B 7E   0B6B      ERRORF JMP    ERROR      Process Error

 2E2E 7E   0B61      ERR34X JMP    SYNERR     Error-Code 52 (Syntax Error)

 2E31 86   5E        ERR5EA LDA     #$5E      Error-Code 94 (Bad String Length)
 2E33 20   F6                BRA    ERRORF
                     *
                     * VIRTUAL ARRAY
                     *
 2E35 DD   91        VIRTRA STD     MATH0     Save in M0
 2E37 0C   C3                INC    TEMP5
 2E39 E6   07                LDB    7,X       Get # of Elements
 2E3B 4F                     CLRA
 2E3C DD   95                STD    MATH0+4   Save in divisor
 2E3E 0F   98                CLR    MATH0+7   Clear Nbr-Sign
 2E40 BD   3B2D              JSR    INTDV1    Calculate total # of Records
 2E43 DC   91                LDD    MATH0     Get quotient
 2E45 C3   0001              ADDD #1
 2E48 FD   48AB              STD    VRASIZ    Save sector #
 2E4B A6   05                LDA    5,X       Get Channel #
 2E4D 27   DF                BEQ    ERR34X    =0. Syntax Error
 2E4F BD   274E              JSR    SELFCB    Not 0. Select Channel's FCB
 2E52 30   88 44             LEAX 68,X        Point to Data-Area
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER      PAGE 131

 2E55 9F   33               STX    FCBDAD     Save in FCB-Data-Adr
 2E57 9E   70               LDX    DIMPTR     Get DIM-Ptr
 2E59 E6   06               LDB    6,X        Get # of bytes per element
 2E5B B6   0100             LDA    REMNDR+1   Get element position within sector
 2E5E 3D                    MUL
 2E5F 9E   33               LDX    FCBDAD     Compute address of
 2E61 3A                    ABX               array item in Data-Area
 2E62 9F   33               STX    FCBDAD
 2E64 9F   35               STX    LMNTAD
 2E66 D6   F6               LDB    TEMP9
 2E68 27   01               BEQ    UPDREC     Update Record
 2E6A 39                    RTS
                     *
                     * UPDATE RECORD
                     *
 2E6B FC 48AB        UPDREC LDD     VRASIZ    Get Sector #
 2E6E BD 2A2D                JSR    CLREC1    Clear Record
 2E71 96 F6                  LDA    TEMP9
 2E73 26 35                  BNE    UPDRC4    Not 0. Go home
 2E75 9E 70                  LDX    DIMPTR    =0. Get DIM-Ptr
 2E77 E6 06                  LDB    6,X       Get # of bytes per element
 2E79 C3 0004                ADDD #4
 2E7C 34 26                  PSHS D,Y
 2E7E BD 2250                JSR    RSVSPC    Reserve memory-space
 2E81 108E 00EE              LDY    #NXLNLC   Point to Addr of FCB
 2E85 EC A4          UPDRC1 LDD     0,Y       and find empty spot
 2E87 27 04                  BEQ    UPDRC2    of program
 2E89 1F 02                  TFR    D,Y
 2E8B 20 F8                  BRA    UPDRC1    Back again

 2E8D AF A4          UPDRC2 STX    0,Y        Save X there
 2E8F 6F 80                 CLR    0,X+       Clear 2 bytes
 2E91 6F 80                 CLR    0,X+       in old line
 2E93 EC E1                 LDD    0,S++      Recover bytes per element
 2E95 ED 81                 STD    0,X++      and save
 2E97 83 0004               SUBD   #4
 2E9A 109E 33               LDY    FCBDAD     Get FCB-Data-Adr into Y
 2E9D 9F 33                 STX    FCBDAD     and save X there
 2E9F 9F 35                 STX    LMNTAD
 2EA1 A6 A0          UPDRC3 LDA    0,Y+       Move B bytes
 2EA3 A7 80                 STA    0,X+
 2EA5 5A                    DECB
 2EA6 26 F9                 BNE    UPDRC3
 2EA8 35 20                 PULS   Y
 2EAA 9E 70          UPDRC4 LDX    DIMPTR     Get DIM-Ptr
 2EAC E6 04                 LDB    4,X        String?
 2EAE 27 0F                 BEQ    UPDRC5     No
 2EB0 E6 06                 LDB    6,X        Get element-size
 2EB2 D7 38                 STB    LMNTSZ+1   and store it
 2EB4 0F 37                 CLR    LMNTSZ
 2EB6 9E 33                 LDX    FCBDAD     Yes. Get FCB's Data-area addr
 2EB8 9F 35                 STX    LMNTAD     and save
 2EBA 8E 0035               LDX    #LMNTAD    Point to addr
 2EBD 9F 33                 STX    FCBDAD     and save Address
RBASIC by R. Jones   31 May 1988    4-7-4 TSC ASSEMBLER   PAGE 132

 2EBF DC   33        UPDRC5 LDD    FCBDAD   Get FCB-Data-Adr
 2EC1 7E   19CD             JMP    UDMSP3   Update M-Stack pointer
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER     PAGE 133


                     *
                     * EXECUTE EXEC STATEMENT
                     *
 2EC4 BD   0F26      EXEC    JSR    SKIPS1    Skip Spaces and get char
 2EC7 81   72                CMPA #$72        ','?
 2EC9 26   03                BNE    EXEC1     No. Proceed
 2ECB BD   0F24              JSR    SKIPSP    Yes. Skip next Spaces and get char
 2ECE BD   25B4      EXEC1 JSR      NAM2F1    Get command
 2ED1 CC   0B69              LDD    #ERR25A Point to Error-Code 37
 2ED4 FD   CC16              STD    ESCRET
 2ED7 34   20                PSHS Y
 2ED9 BD   CD4B              JSR    DOCMND    Execute DOS command
 2EDC 35   20                PULS Y
 2EDE 4F                     CLRA             Set DP to 0
 2EDF 1F   8B                TFR    A,DP
 2EE1 7F   CC28              CLR    CMDFLG    Clear Command-Flag
 2EE4 7E   0284              JMP    STENDC    Check Statement-Ending and continue
                     *
                     * COMPARE REGISTER POINTED BY 'X' WITH M0 FOR EQUALITY +- 1LSB
                     *
 2EE7 96   91        CMPFP LDA      MATH0     Get M0 MS byte
 2EE9 A8   84                EORA 0,X
 2EEB 2B   5A                BMI    CMPFP5    -ve. Opposite signs
 2EED 96   91                LDA    MATH0     Same sign. Test sign byte again
 2EEF 2B   2E                BMI    CMPFP3    -ve. Compare for approx. equality
 2EF1 96   98                LDA    MATH0+7 +ve. Get exponent
 2EF3 27   25                BEQ    CMPFP1    =0
 2EF5 E6   07                LDB    7,X       Not 0. Get other exp.
 2EF7 27   52                BEQ    CMPFP6    =0
 2EF9 A1   07                CMPA 7,X         Not 0. Compare exps
 2EFB 26   21                BNE    CMPFP2    Not equal. Go home
                     *
                     * BOTH REGISTERS +VE
                     *
 2EFD DC 91                  LDD    MATH0
 2EFF 10A3 84                CMPD 0,X         Compare them
 2F02 26 1A                  BNE    CMPFP2
 2F04 DC 93                  LDD    MATH0+2
 2F06 10A3 02                CMPD 2,X
 2F09 26 13                  BNE    CMPFP2
 2F0B DC 95                  LDD    MATH0+4
 2F0D 10A3 04                CMPD 4,X
 2F10 26 0C                  BNE    CMPFP2    Not equal. Go home
 2F12 96 97                  LDA    MATH0+6 Get final byte (excluding exp)
 2F14 84 FE                  ANDA #$FE        Mask LS bit
 2F16 E6 06                  LDB    6,X       Same with other reg
 2F18 20 26                  BRA    CMPFP4    Compare them

                     * M0 = 0. CHECK OTHER REGISTER

 2F1A A6   07        CMPFP1 LDA    7,X       Test exponent
 2F1C 26   32               BNE    CMPFP7    Not 0.
 2F1E 39             CMPFP2 RTS
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 134

                     *
                     * BOTH REGISTERS -VE
                     *
 2F1F A6 07          CMPFP3 LDA     7,X       Compare
 2F21 91 98                  CMPA MATH0+7     exponents
 2F23 26 F9                  BNE    CMPFP2    Unequal. Go home
 2F25 EC 84                  LDD    0,X       Compare numbers
 2F27 1093 91                CMPD MATH0
 2F2A 26 F2                  BNE    CMPFP2
 2F2C EC 02                  LDD    2,X
 2F2E 1093 93                CMPD MATH0+2
 2F31 26 EB                  BNE    CMPFP2
 2F33 EC 04                  LDD    4,X
 2F35 1093 95                CMPD MATH0+4
 2F38 26 E4                  BNE    CMPFP2    Not equal. Go home
 2F3A A6 06                  LDA    6,X       and final 1 (not exp)
 2F3C 84 FE                  ANDA #$FE        Mask LS bit
 2F3E D6 97                  LDB    MATH0+6
 2F40 C4 FE          CMPFP4 ANDB #$FE
 2F42 34 04                  PSHS B
 2F44 A1 E0                  CMPA 0,S+        and compare them
 2F46 39                     RTS
                     *
                     * OPPOSITE SIGNS
                     *
 2F47 A6   84        CMPFP5 LDA     0,X       Test MS byte
 2F49 2A   05                BPL    CMPFP7    +ve. Prepare to leave
 2F4B 86   01        CMPFP6 LDA     #1        2nd number is -ve. Set A to 1
 2F4D 1C   FE                ANDCC #$FE       Clear CARRY
 2F4F 39                     RTS

 2F50 4F             CMPFP7 CLRA              Clear A, and
 2F51 81   01                CMPA #1          compare with 1
 2F53 39                     RTS
                     *
                     * SUBTRACT 2 NUMBERS
                     *
 2F54 BD   31BB      SUBTCT JSR     DESUPP    # into M4. Desuppress it and M0
 2F57 96   A1                LDA    MATH4+7   Get M4 exp
 2F59 27   16                BEQ    SUBTR1    =0
 2F5B D6   C1                LDB    M4SGN     Not 0. Get M4 sign-byte
 2F5D C8   80                EORB #$80        Invert its sign
 2F5F D7   C1                STB    M4SGN     and store in M4-sign
 2F61 D8   C0                EORB M0SGN       EOR with M0-sign
 2F63 D7   C2                STB    NBRSGN    and save in NBR-sign
 2F65 D6   98                LDB    MATH0+7   Get M0 exponent
 2F67 26   1A                BNE    JSTFY1    Not 0. Justify and subtract
 2F69 BD   3938              JSR    LOADM0    =0. Load into M0
 2F6C 96   91                LDA    MATH0     Get M0 MS byte
 2F6E 7E   3059              JMP    NORML6    Normalise M0

 2F71 96   91        SUBTR1 LDA    MATH0      Get M0 sign-byte
 2F73 D6   C0               LDB    M0SGN      Get M0-sign
 2F75 7E   305B             JMP    NORML7
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 135

                     *
                     * JUSTIFY M0 AND M4, THEN ADD/SUBTRACT
                     *
 2F78 BD 31BB        JSTIFY JSR     DESUPP    # into M4. Desuppress it and M0
 2F7B 1027 09B9              LBEQ LOADM0      Transfer # to M0
 2F7F 96 A1                  LDA    MATH4+7 Get M4 exponent
 2F81 27 EE                  BEQ    SUBTR1    =0
 2F83 90 98          JSTFY1 SUBA MATH0+7 Not 0. Subtract M0's exp.
 2F85 26 06                  BNE    JSTFY2    Not equal

                     * M4 EXP = M0 EXP

 2F87 0C   88               INC    MATH5      Equal. Bump M5 MS byte
 2F89 1A   01               ORCC   #1         Set CARRY
 2F8B 20   36               BRA    JSTFY6

 2F8D 97   88        JSTFY2 STA    MATH5      Not equal. Store difference in M5
 2F8F 24   1A               BCC    JSTFY4     M4 exp > M0 exp

                     * M4 EXP < M0 EXP

 2F91 DC   9A                LDD    MATH4     Get M4 (2 bytes)
 2F93 44             JSTFY3 LSRA              Shift M4 right
 2F94 56                     RORB
 2F95 06   9C                ROR    MATH4+2   by one bit
 2F97 06   9D                ROR    MATH4+3
 2F99 06   9E                ROR    MATH4+4
 2F9B 06   9F                ROR    MATH4+5
 2F9D 06   A0                ROR    MATH4+6
 2F9F 0C   88                INC    MATH5     Bump M5 MS byte
 2FA1 26   F0                BNE    JSTFY3    Do another shift right
 2FA3 DD   9A                STD    MATH4     Save back in M4
 2FA5 96   C2                LDA    NBRSGN    Test Nbr-Sgn
 2FA7 2A   1E                BPL    ADDFP     +ve. Add them
 2FA9 20   3E                BRA    SUBFP1    -ve. Subtract them
                     *
                     * M4 EXP > M0 EXP
                     *
 2FAB D6   A1        JSTFY4 LDB     MATH4+7   Transfer M4 exponent
 2FAD D7   98                STB    MATH0+7   to M0 exp
 2FAF DC   91                LDD    MATH0     Get 2 MS bytes of M0
 2FB1 44             JSTFY5 LSRA              and shift M0
 2FB2 56                     RORB             to the right
 2FB3 06   93                ROR    MATH0+2   until M5 exp
 2FB5 06   94                ROR    MATH0+3   equals 0
 2FB7 06   95                ROR    MATH0+4
 2FB9 06   96                ROR    MATH0+5
 2FBB 06   97                ROR    MATH0+6
 2FBD 0A   88                DEC    MATH5
 2FBF 26   F0                BNE    JSTFY5
 2FC1 DD   91                STD    MATH0     All done. Save back in M0
 2FC3 96   C2        JSTFY6 LDA     NBRSGN    Get Nbr-Sgn
 2FC5 2B   1F                BMI    SUBFP     -ve. Go subtract
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 136

                     * ADD FP NUMBERS IN M0 AND M4. RESULT IN M0

 2FC7 BD 319C        ADDFP   JSR    ADDMNT    Add mantissae of M0 and M4
 2FCA 24 14                  BCC    ADDFP1    No overflow
 2FCC 0C 98                  INC    MATH0+7 Overflow. Inc M0 exp
 2FCE 1027 0097              LBEQ ERR65A      =0. Overflow error
 2FD2 06 91                  ROR    MATH0     and divide mantissa by 2
 2FD4 06 92                  ROR    MATH0+1
 2FD6 06 93                  ROR    MATH0+2
 2FD8 06 94                  ROR    MATH0+3
 2FDA 06 95                  ROR    MATH0+4
 2FDC 06 96                  ROR    MATH0+5
 2FDE 06 97                  ROR    MATH0+6
 2FE0 96 C1          ADDFP1 LDA     M4SGN     Get M4-sign
 2FE2 97 C2                  STA    NBRSGN    and save in Nbr-Sgn
 2FE4 20 3E                  BRA    NORML3
                     *
                     * SUBTRACT FP-NUMBERS (M0 - M4). RESULT IN M0
                     *
 2FE6 49             SUBFP ROLA               Complement CARRY
 2FE7 43                     COMA
 2FE8 47                     ASRA
 2FE9 DC   96        SUBFP1 LDD     MATH0+5 Subtract M4
 2FEB D2   A0                SBCB MATH4+6 from M0
 2FED 92   9F                SBCA MATH4+5
 2FEF DD   96                STD    MATH0+5
 2FF1 DC   94                LDD    MATH0+3
 2FF3 D2   9E                SBCB MATH4+4
 2FF5 92   9D                SBCA MATH4+3
 2FF7 DD   94                STD    MATH0+3
 2FF9 DC   92                LDD    MATH0+1
 2FFB D2   9C                SBCB MATH4+2
 2FFD 92   9B                SBCA MATH4+1
 2FFF DD   92                STD    MATH0+1
 3001 96   91                LDA    MATH0
 3003 92   9A                SBCA MATH4
 3005 97   91                STA    MATH0
 3007 96   C0                LDA    M0SGN     Get M0-sign
 3009 24   17                BCC    NORML2    No overflow. Normalise result,
 300B 03   91                COM    MATH0     otherwise complement
 300D 03   92                COM    MATH0+1 M0's mantissa
 300F 03   93                COM    MATH0+2
 3011 03   94                COM    MATH0+3
 3013 03   95                COM    MATH0+4
 3015 03   96                COM    MATH0+5
 3017 03   97                COM    MATH0+6
 3019 96   88                LDA    MATH5     Test M5 MS byte
 301B 27   03                BEQ    NORML1    =0

                     * NORMALISE MANTISSA AND EXPONENT OF M0

 301D BD   383C             JSR    INCM0     Not 0. Inc M0 mantissa, and adjust exp
 3020 96   C1        NORML1 LDA    M4SGN     Get M4 sign
 3022 97   C2        NORML2 STA    NBRSGN    Store in Nbr-Sgn
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 137

 3024 0F   88        NORML3 CLR     MATH5     Clear M5 MS byte
 3026 96   91        NORML4 LDA     MATH0     Get M0 MS byte
 3028 2B   2F                BMI    NORML6    Already normalised. Suppress it
 302A 26   0F                BNE    NORML0    Mantissa still has leading zeroes. Normalise it
 302C DC   92                LDD    MATH0+1 0. Check next bytes
 302E 26   0B                BNE    NORML0    Normalise it
 3030 DC   94                LDD    MATH0+3
 3032 26   07                BNE    NORML0    Normalise it
 3034 DC   96                LDD    MATH0+5
 3036 26   03                BNE    NORML0    Mantissa <>0. Normalise it
 3038 97   98                STA    MATH0+7 Clear exp
 303A 39                     RTS
                     *
                     * MANTISSA STILL HAS LEADING ZEROES. CONTINUE NORMALISING
                     *
 303B 96   98        NORML0 LDA     MATH0+7 Get M0 exp
 303D 9A   BC                ORA    OVFLOW    OR with overflow
 303F 27   28                BEQ    ERR65A    =0. Error-Code 101
 3041 DC   91                LDD    MATH0     Not 0. Get M0 2 MS bytes
 3043 0A   98        NORML5 DEC     MATH0+7 Dec exp
 3045 27   22                BEQ    ERR65A    =0. Underflow
 3047 08   88                ASL    MATH5
 3049 09   97                ROL    MATH0+6 Multiply M0 mantissa
 304B 09   96                ROL    MATH0+5 by 2
 304D 09   95                ROL    MATH0+4
 304F 09   94                ROL    MATH0+3
 3051 09   93                ROL    MATH0+2
 3053 59                     ROLB
 3054 49                     ROLA
 3055 2A   EC                BPL    NORML5    Do again
 3057 D7   92                STB    MATH0+1

                     * ALL DONE. NOW SUPPRESS MANTISSA

 3059 D6 C2          NORML6 LDB    NBRSGN    Get Nbr-Sgn
 305B 48             NORML7 ASLA             Get rid of M0's sign-bit
 305C 58                    ASLB             Rotate out Nbr-Sgn's sign-bit
 305D 46                    RORA             and into A
 305E 97 91                 STA    MATH0     and store in M0 MS byte
 3060 0D BC                 TST    OVFLOW    Check overflow
>3062 102B 0076             LBMI   MPYFP1    Underflow. Set to 0
 3066 26 01                 BNE    ERR65A    Not 0. Error-Code 101
 3068 39             NORML8 RTS              =0

 3069 86   65        ERR65A LDA     #$65      Error-Code 101 (Over/Underflow in FP op)
 306B 7E   0B6B              JMP    ERROR     Process Error
                     *
                     * FP MULTIPLY (M0 * M4). RESULT IN M0
                     *
 306E BD   31BB      MPYFP JSR      DESUPP    # into M4. Desuppress it and M0
 3071 27   69                BEQ    MPYFP1    =0
 3073 96   A1                LDA    MATH4+7 Not 0. Test M4 exp
 3075 27   65                BEQ    MPYFP1    =0. Clear M0
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER     PAGE 138

                     * MULTIPLY FP MANTISSAE (M0 * M4). RESULT IN M0

 3077 4F                    CLRA             Not 0
 3078 BD   317F             JSR    XFM0M5    Clear M0 mantissa
 307B C6   38               LDB    #56       Count of 56
 307D F7   48A4             STB    PUNDCT    Save in Temp
 3080 96   8E        MPYMN1 LDA    MATH5+6   Get LS byte of M5 mant
 3082 44                    LSRA             and test LS bit
 3083 24   1C               BCC    MPYMN2    =0
 3085 DC   96               LDD    MATH0+5   Not 0. Inc M0 mant
 3087 D3   9F               ADDD   MATH4+5   by M4 mant
 3089 DD   96               STD    MATH0+5
 308B DC   94               LDD    MATH0+3
 308D D9   9E               ADCB   MATH4+4
 308F 99   9D               ADCA   MATH4+3
 3091 DD   94               STD    MATH0+3
 3093 DC   92               LDD    MATH0+1
 3095 D9   9C               ADCB   MATH4+2
 3097 99   9B               ADCA   MATH4+1
 3099 DD   92               STD    MATH0+1
 309B 96   91               LDA    MATH0
 309D 99   9A               ADCA   MATH4
 309F 97   91               STA    MATH0
 30A1 06   91        MPYMN2 ROR    MATH0     Rotate LS bit of
 30A3 06   92               ROR    MATH0+1   result into M5
 30A5 06   93               ROR    MATH0+2
 30A7 06   94               ROR    MATH0+3
 30A9 06   95               ROR    MATH0+4
 30AB 06   96               ROR    MATH0+5
 30AD 06   97               ROR    MATH0+6
 30AF 06   88               ROR    MATH5
 30B1 06   89               ROR    MATH5+1
 30B3 06   8A               ROR    MATH5+2
 30B5 06   8B               ROR    MATH5+3
 30B7 06   8C               ROR    MATH5+4
 30B9 06   8D               ROR    MATH5+5
 30BB 06   8E               ROR    MATH5+6
 30BD 7A   48A4             DEC    PUNDCT    Dec count
 30C0 26   BE               BNE    MPYMN1    Not done yet. Repeat

                     * ALL DONE WITH MANTISSA. CONTINUE WITH FP MULTIPLY

 30C2 4F                    CLRA
 30C3 D6 98                 LDB    MATH0+7   Add exponents
 30C5 DB A1                 ADDB   MATH4+7
 30C7 89 00                 ADCA   #0
 30C9 83 0080               SUBD   #$80
 30CC 2F 0E                 BLE    MPYFP1    Underflow. Set to 0
 30CE D7 98          MPYFP0 STB    MATH0+7   Save new exp
 30D0 97 BC                 STA    OVFLOW    Save exp overflow
 30D2 BD 3026               JSR    NORML4
 30D5 96 88                 LDA    MATH5     Round-off?
 30D7 102B 0761             LBMI   INCM0     Yes. Inc mantissa and adjust exp
 30DB 39                    RTS              No. Go home
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 139


 30DC 4F             MPYFP1 CLRA             Clear exp
 30DD 97   98               STA    MATH0+7   of M0
 30DF 7E   318F             JMP    M0M5A     and its mantissa

 30E2 86   67        ERR67A LDA     #$67      Error-Code 103 (Division by 0)
 30E4 7E   0B6B              JMP    ERROR     Process Error
                     *
                     * FP DIVIDE (M0 / M4). QUOTIENT IN M0
                     *
 30E7 BD   31BB      DIVFP JSR      DESUPP    # into M4. Desuppress it and M0
 30EA D6   A1                LDB    MATH4+7 Get M4 exp
 30EC 27   F4                BEQ    ERR67A    =0. Error-Code 103
 30EE 4D                     TSTA             Not 0. Test dividend's exp
 30EF 27   EB                BEQ    MPYFP1    =0. No division necessary

                     * DIVIDE FP MANTISSAE (M0 / M4). QUOTIENT IN M0

 30F1 4F                    CLRA             Not 0
 30F2 BD 317F               JSR    XFM0M5    Clear M0 mantissa
 30F5 C6 38                 LDB    #56       Count of 56
 30F7 F7 48A4               STB    PUNDCT    Save in Temp
 30FA DC 88          DIVMN1 LDD    MATH5     Get MS byte
 30FC 1093 9A               CMPD   MATH4
 30FF 25 2C                 BCS    DIVMN3    M5 < M4
 3101 DC 8D                 LDD    MATH5+5   M5 >= M4, so
 3103 93 9F                 SUBD   MATH4+5   subtract M4 mantissa
 3105 DD C7                 STD    MATH8+3   from M5 mantissa
 3107 DC 8B                 LDD    MATH5+3   and store difference
 3109 D2 9E                 SBCB   MATH4+4   in M8
 310B 92 9D                 SBCA   MATH4+3
 310D DD C5                 STD    MATH8+1
 310F 96 8A                 LDA    MATH5+2
 3111 92 9C                 SBCA   MATH4+2
 3113 97 C4                 STA    MATH8
 3115 DC 88                 LDD    MATH5
 3117 D2 9B                 SBCB   MATH4+1
 3119 92 9A                 SBCA   MATH4
 311B 25 10                 BCS    DIVMN3
 311D DD 88                 STD    MATH5
 311F 96 C4                 LDA    MATH8     Transfer M8 to M5
 3121 97 8A                 STA    MATH5+2
 3123 DC C5                 LDD    MATH8+1
 3125 DD 8B                 STD    MATH5+3
 3127 DC C7                 LDD    MATH8+3
 3129 DD 8D                 STD    MATH5+5
 312B 0C 97          DIVMN2 INC    MATH0+6   Count 1
 312D 7A 48A4        DIVMN3 DEC    PUNDCT    Dec bit-count
 3130 27 3C                 BEQ    DIVFP1    All done
 3132 08 97                 ASL    MATH0+6   Rotate partial result
 3134 09 96                 ROL    MATH0+5   left into M5
 3136 09 95                 ROL    MATH0+4
 3138 09 94                 ROL    MATH0+3
 313A 09 93                 ROL    MATH0+2
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 140

 313C 09   92               ROL    MATH0+1
 313E 09   91               ROL    MATH0
 3140 09   8E               ROL    MATH5+6
 3142 09   8D               ROL    MATH5+5
 3144 09   8C               ROL    MATH5+4
 3146 09   8B               ROL    MATH5+3
 3148 09   8A               ROL    MATH5+2
 314A 09   89               ROL    MATH5+1
 314C 09   88               ROL    MATH5
 314E 24   AA               BCC    DIVMN1    Not done yet. Repeat
 3150 DC   8D               LDD    MATH5+5   Overflow. Subtract M4
 3152 93   9F               SUBD   MATH4+5   from M5
 3154 DD   8D               STD    MATH5+5
 3156 DC   8B               LDD    MATH5+3
 3158 D2   9E               SBCB   MATH4+4
 315A 92   9D               SBCA   MATH4+3
 315C DD   8B               STD    MATH5+3
 315E DC   89               LDD    MATH5+1
 3160 D2   9C               SBCB   MATH4+2
 3162 92   9B               SBCA   MATH4+1
 3164 DD   89               STD    MATH5+1
 3166 96   88               LDA    MATH5
 3168 92   9A               SBCA   MATH4
 316A 97   88               STA    MATH5
 316C 20   BD               BRA    DIVMN2    and back again

                     * MANTISSA DONE. CONTINUE WITH FP DIVIDE

 316E 4F             DIVFP1 CLRA
 316F D6 98                  LDB    MATH0+7 Get DIVIDEND exp
 3171 D0 A1                  SUBB MATH4+7 Subtract DIVISOR exp
 3173 82 00                  SBCA #0
 3175 C3 0081                ADDD #$81        Adjust exp
 3178 102F FF60              LBLE MPYFP1      Underflow. Set to 0
 317C 7E 30CE                JMP    MPYFP0
                     *
                     * TRANSFER M0 MANTISSA TO M5,
                     * THEN FILL M0 MANTISSA WITH A-REG
                     *
 317F DE   91        XFM0M5 LDU     MATH0     Get M0 mantissa
 3181 DF   88                STU    MATH5     into M5 mantissa
 3183 DE   93                LDU    MATH0+2
 3185 DF   8A                STU    MATH5+2
 3187 DE   95                LDU    MATH0+4
 3189 DF   8C                STU    MATH5+4
 318B D6   97                LDB    MATH0+6
 318D D7   8E                STB    MATH5+6
 318F 97   91        M0M5A STA      MATH0     Fill M0 mantissa
 3191 97   92                STA    MATH0+1 with contents of A
 3193 1F   89        M0M5B TFR      A,B       Copy
 3195 DD   93                STD    MATH0+2
 3197 DD   95                STD    MATH0+4
 3199 97   97                STA    MATH0+6
 319B 39                     RTS
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 141

                     *
                     * ADD FP MANTISSAE (M0 + M4). RESULT IN M0
                     *
 319C DC   96        ADDMNT LDD     MATH0+5 Add LS 2 bytes
 319E D9   A0                ADCB MATH4+6
 31A0 99   9F                ADCA MATH4+5
 31A2 DD   96                STD    MATH0+5
 31A4 DC   94                LDD    MATH0+3 then rest of mantissae
 31A6 D9   9E                ADCB MATH4+4
 31A8 99   9D                ADCA MATH4+3
 31AA DD   94                STD    MATH0+3
 31AC DC   92                LDD    MATH0+1
 31AE D9   9C                ADCB MATH4+2
 31B0 99   9B                ADCA MATH4+1
 31B2 DD   92                STD    MATH0+1
 31B4 96   91                LDA    MATH0
 31B6 99   9A                ADCA MATH4
 31B8 97   91                STA    MATH0
 31BA 39                     RTS
                     *
                     * GET NUMBER POINTED TO BY X INTO M4
                     * DESUPPRESS M0 AND M4, AND SAVE SIGNS OF BOTH
                     *
 31BB 0F   BC        DESUPP CLR     OVFLOW    Clear Overflow
 31BD EC   06                LDD    6,X       Get number pointed by X
 31BF DD   A0                STD    MATH4+6 into M4
 31C1 EC   04                LDD    4,X
 31C3 DD   9E                STD    MATH4+4
 31C5 EC   02                LDD    2,X
 31C7 DD   9C                STD    MATH4+2
 31C9 EC   84                LDD    0,X
 31CB D7   9B                STB    MATH4+1
 31CD 1F   89                TFR    A,B
 31CF 97   C1                STA    M4SGN     Save in M4-sign
 31D1 8A   80                ORA    #$80      Desuppress M4
 31D3 97   9A                STA    MATH4
 31D5 96   91                LDA    MATH0     Get sign-byte
 31D7 97   C0                STA    M0SGN     and save in M0-sign
 31D9 8A   80                ORA    #$80      Desuppress M0
 31DB 97   91                STA    MATH0
 31DD D8   C0                EORB M0SGN       EOR both signs
 31DF D7   C2                STB    NBRSGN    Save in Nbr-Sgn
 31E1 96   98                LDA    MATH0+7 Get M0 exp
 31E3 39                     RTS              and go home
                     *
                     * NORMALISE FP INTEGER IN M0
                     *
 31E4 86   90        NMLINT LDA     #$90      Set M0 exp
 31E6 97   98                STA    MATH0+7 to MAX Integer range
 31E8 4F                     CLRA
 31E9 8D   A8                BSR    M0M5B     Clear M0 mant, except bytes 0 and 1
 31EB 97   BC                STA    OVFLOW    Clear Overflow
 31ED 97   C2                STA    NBRSGN    Clear Nbr-Sgn
 31EF 7E   3024              JMP    NORML3    and go normalise M0
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER     PAGE 142

                     *
                     * CONVERT INTEGER IN M0 TO BINARY FP
                     *
 31F2 8E   0091      INTBFP LDX     #MATH0    Point to M0

                     * CONVERT INTEGER POINTED BY X

 31F5 CC   0000      INTBF1 LDD     #0
 31F8 ED   02                STD    2,X        Clear all but 2 MS bytes
 31FA ED   04                STD    4,X
 31FC ED   06                STD    6,X
 31FE EC   84                LDD    0,X
 3200 27   1F                BEQ    INTBF5     =0. Go home
 3202 86   90                LDA    #$90       Set exponent
 3204 A7   07                STA    7,X        to MAX Integer range
 3206 A6   84                LDA    0,X        Test sign-byte
 3208 2A   07                BPL    INTBF2     +ve
 320A 43                     COMA              -ve, so negate 2 MS bytes
 320B 53                     COMB              of MATH0, now in D
 320C C3   0001              ADDD #1
 320F 29   06                BVS    INTBF3     Left-hand bit is '1'
 3211 6A   07        INTBF2 DEC     7,X        Normalise it
 3213 58                     ASLB
 3214 49                     ROLA
 3215 2A   FA                BPL    INTBF2     <80 Keep going
 3217 84   7F        INTBF3 ANDA #$7F          >=80. Suppress it
 3219 6D   84                TST    0,X
 321B 2A   02                BPL    INTBF4     +ve
 321D 8A   80                ORA    #$80       -ve. Set sign bit
 321F ED   84        INTBF4 STD     0,X        Save 2 MS bytes
 3221 39             INTBF5 RTS
                     *
                     * EXECUTE INT STATEMENT
                     *
 3222 8E   0091      INT     LDX    #MATH0     Point to M0
 3225 96   98                LDA    MATH0+7    Get exponent
 3227 27   F8                BEQ    INTBF5     =0. Go home
 3229 80   81                SUBA #$81         Not 0
 322B 25   24                BCS    INT2       Fractional. Set to 0
 322D 40                     NEGA              Exp >= 81. Negate it
 322E 8B   37                ADDA #55          Calculate bits to left of binary DP
 3230 2F   EF                BLE    INTBF5     <=0. Go home
 3232 97   BE                STA    BINEXP     >0. Save in Bit-Counter
 3234 DC   91                LDD    MATH0      Save M0 sign
 3236 97   C2                STA    NBRSGN     in Nbr-Sgn
 3238 8A   80                ORA    #$80
 323A BD   32D2              JSR    TRUNC      Truncate FP
 323D DD   91                STD    MATH0
 323F 96   BF                LDA    DECEXP     Check guard-digit
 3241 27   07                BEQ    INT1       =0
 3243 96   C2                LDA    NBRSGN     Not 0. Test Nbr-Sgn
 3245 2A   03                BPL    INT1       <80
 3247 BD   383C              JSR    INCM0      >=80. Inc M0 mantissa and adj. exp
 324A 86   B8        INT1    LDA    #$B8       Set exp to binary 56
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER    PAGE 143

 324C 97   98               STA    MATH0+7
 324E 7E   3024             JMP    NORML3    Normalise M0

 3251 96   91        INT2   LDA    MATH0     Get M0 sign
 3253 2B   1A               BMI    SGN1      -ve
                     *
                     * CLEAR M0 REGISTER
                     *
 3255 8E   0091      CLRM0 LDX      #MATH0    Point to M0
 3258 6F   02                CLR    2,X       and clear it
 325A 6F   03                CLR    3,X
 325C 6F   04                CLR    4,X
 325E 6F   05                CLR    5,X
 3260 6F   06                CLR    6,X
 3262 6F   07                CLR    7,X       Clear exp
 3264 6F   84        CLRM0A CLR     0,X
 3266 6F   01                CLR    1,X
 3268 39                     RTS
                     *
                     * EXECUTE SGN STATEMENT
                     *
 3269 96   98        SGN     LDA    MATH0+7 Test M0 exp
 326B 27   E8                BEQ    CLRM0     =0. Clear M0 and go home
 326D 96   91                LDA    MATH0     Not 0. Get sign byte
 326F BD   3935      SGN1    JSR    LODM01    Set M0 to 1.0
 3272 84   80                ANDA #$80        Make MATH0 into +1 or -1,
 3274 97   91        SGN2    STA    MATH0     according to A's contents
 3276 39                     RTS
                     *
                     * TEST RANGE OF FP NUMBER IN M0 FOR CONVERSION TO INTEGER
                     *
 3277 8E   0091      INTTST LDX     #MATH0    Point to M0
 327A A6   84                LDA    0,X       Get sign byte
 327C 2B   11                BMI    ERR68A    -ve. Error-Code 104
 327E 8A   80                ORA    #$80      +ve. Desuppress it
 3280 D6   98                LDB    MATH0+7 Get exp
 3282 27   D1                BEQ    CLRM0     =0. Clear M0
 3284 C0   81                SUBB #$81
 3286 25   CD                BCS    CLRM0     Fractional #. Clear M0
 3288 50                     NEGB             >80. Negate difference
 3289 CB   0F                ADDB #15         +15. Max Integer range
 328B 27   E7                BEQ    SGN2      =0. Save A in M0 and return
 328D 2A   21                BPL    RANGE2    +ve

 328F 86   68        ERR68A LDA     #$68      Error-Code 104 (Number too large to convert)
 3291 7E   0B6B              JMP    ERROR     Process Error
                     *
                     * CHECK NUMBER RANGE. IF WITHIN INTEGER RANGE,
                     * NORMALISE IT INTO M0 AND NEGATE IT
                     *
 3294 8E   0091      CRANGE LDX     #MATH0    Point to M0

                     * ENTRY-POINT FOR OTHER THAN M0
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 144

 3297 E6 07          RANGE1 LDB    7,X       Get exp
 3299 27 C9                 BEQ    CLRM0A    =0. Set M0 to 0. Go home
 329B C0 81                 SUBB   #$81      Not 0
 329D 25 C5                 BCS    CLRM0A    Fractional. Set M0 to 0 or -1. Go home
 329F 50                    NEGB             >=81. Negate difference
 32A0 CB 0F                 ADDB   #15       +15. (Max INT range)
 32A2 2B EB                 BMI    ERR68A    -ve. Error-Code 104
 32A4 26 0A                 BNE    RANGE2    +ve
 32A6 EC 84                 LDD    0,X       =0. Get MS bytes
 32A8 1083 8000             CMPD   #$8000
 32AC 27 0E                 BEQ    RANGE3    Match
 32AE 20 DF                 BRA    ERR68A    No match. Error-Code 104

 32B0 D7 BE          RANGE2 STB     BINEXP    +ve. Save in Bit-Count
 32B2 EC 84                  LDD    0,X       Get 2 MS bytes of M0
 32B4 2A 3F                  BPL    LSRM0     +ve. Go normalise it
 32B6 8D 1A                  BSR    TRUNC     -ve. Truncate it
 32B8 0D BF                  TST    DECEXP    Test Guard-Digit
 32BA 26 04                  BNE    RANGE4    Not 0
 32BC 6D 02          RANGE3 TST     2,X       Round-up?
 32BE 27 0B                  BEQ    RANGE5    No
 32C0 1083 8000      RANGE4 CMPD #$8000
 32C4 27 C9                  BEQ    ERR68A    Error-Code 104
 32C6 C3 0001                ADDD #1          Round it
 32C9 25 C4                  BCS    ERR68A    Overflow. Error-Code 104
 32CB 43             RANGE5 COMA              No overflow, so
 32CC 53                     COMB             negate
 32CD C3 0001                ADDD #1
 32D0 20 20                  BRA    SETM0A    Save D in M0 and go home
                     *
                     * TRUNCATE FP. ROTATE 1-BITS RIGHT INTO GUARD-DIGIT
                     *
 32D2 0F   BF        TRUNC CLR      DECEXP    Set Guard-Digit to 0
 32D4 44             TRUNC1 LSRA              Rotate M0 mantissa right
 32D5 56                     RORB             by BITCNT
 32D6 66   02                ROR    2,X
 32D8 66   03                ROR    3,X
 32DA 66   04                ROR    4,X
 32DC 66   05                ROR    5,X
 32DE 66   06                ROR    6,X
 32E0 24   02                BCC    TRUNC2    CARRY is clear
 32E2 06   BF                ROR    DECEXP    CARRY set. Rotate it into Guard-Digit
 32E4 0A   BE        TRUNC2 DEC     BINEXP    Dec Bit-Count
 32E6 26   EC                BNE    TRUNC1    Not done. Repeat
 32E8 39                     RTS              All done
                     *
                     * SET INTEGER IN M0 TO 0000 OR FFFF (0 or -1)
                     * ACCORDING TO 'A'
                     *
 32E9 A6 84          SETM01 LDA     0,X       Get sign byte
 32EB 102A FF75              LBPL CLRM0A      +ve. Clear 2 MS bytes
 32EF CC FFFF                LDD    #$FFFF    -ve. Load D with -1
 32F2 ED 84          SETM0A STD     0,X
 32F4 39                     RTS              Go home
RBASIC by R. Jones   31 May 1988        4-7-4 TSC ASSEMBLER   PAGE 145

                     *
                     * NORMALISE INTEGER. SAVE IN M0
                     *
 32F5 8A   80        LSRM0 ORA      #$80      Set sign bit
 32F7 44             LSRM0A LSRA              Rotate A into B
 32F8 56                     RORB
 32F9 0A   BE                DEC    BINEXP    Dec Bit-Count
 32FB 26   FA                BNE    LSRM0A    Not done. Repeat
 32FD ED   84                STD    0,X       All done. Store D
 32FF 39                     RTS
                     *
                     * EXECUTE ABS STATEMENT
                     *
 3300 08   91        ABS     LSL    MATH0     Mask sign byte
 3302 04   91                LSR    MATH0
 3304 39                     RTS
                     *
                     * EXECUTE RND STATEMENT
                     *
 3305 DC   91        RND     LDD    MATH0     Get sign byte
 3307 2B   08                BMI    RMINUS    -ve
 3309 96   98                LDA    MATH0+7 +ve. Test exponent
 330B 27   20                BEQ    RZERO     =0
 330D DC   11                LDD    RANDOM+2 Not 0. Get Rand-Store+2
 330F 20   46                BRA    RPLUS
                     *
                     * EXECUTE RND(-X)
                     *
 3311 81   80        RMINUS CMPA #$80
 3313 26   10                BNE    RMIN1
 3315 DA   93                ORB    MATH0+2
 3317 DA   94                ORB    MATH0+3
 3319 26   0A                BNE    RMIN1
 331B FC   42FF              LDD    CONS2C
 331E DD   0F                STD    RANDOM
 3320 FC   4301              LDD    CONS2C+2
 3323 20   06                BRA    RMIN2

 3325 DC   91        RMIN1   LDD    MATH0
 3327 DD   0F                STD    RANDOM   Move 4 bytes to Rand-Store
 3329 DC   93                LDD    MATH0+2
 332B DD   11        RMIN2   STD    RANDOM+2

                     * EXECUTE RND(0)

 332D D6   11        RZERO   LDB    RANDOM+2   Get RND byte 2
 332F D7   BA                STB    TRIGFG     and store
 3331 DC   0F                LDD    RANDOM     Get 2 MS bytes
 3333 08   BA                ASL    TRIGFG     Shift all 3 left by 3 bits
 3335 59                     ROLB
 3336 49                     ROLA
 3337 08   BA                ASL    TRIGFG
 3339 59                     ROLB
 333A 49                     ROLA
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER    PAGE 146

 333B 08   BA                ASL    TRIGFG
 333D 59                     ROLB
 333E 49                     ROLA
 333F 34   02                PSHS   A
 3341 96   BA                LDA    TRIGFG
 3343 98   11                EORA   RANDOM+2
 3345 97   BA                STA    TRIGFG
 3347 35   02                PULS   A
 3349 D8   10                EORB   RANDOM+1
 334B 98   0F                EORA   RANDOM
 334D 08   BA                ASL    TRIGFG
 334F 59                     ROLB
 3350 49                     ROLA
 3351 DE   11                LDU    RANDOM+2 Switch upper and lower sections
 3353 DF   0F                STU    RANDOM
 3355 DD   11                STD    RANDOM+2

                     * EXECUTE RND(+X)

 3357 BD   3255      RPLUS   JSR    CLRM0      Clear M0
 335A 84   7F                ANDA   #$7F       Mask sign bit
 335C DD   91                STD    MATH0      Save in M0
 335E 86   80                LDA    #$80       Set M0 exp
 3360 97   98                STA    MATH0+7    to 80
 3362 8E   41EF              LDX    #CONST1    Point to constant 0.5
 3365 BD   2F54              JSR    SUBTCT     Subtract 2 Integers
 3368 0C   98                INC    MATH0+7    Bump exp
 336A 39                     RTS
                     *
                     * CONVERT INTEGER TO DECIMAL # IN NUMBER-BUFFER
                     *
 336B 0F   FB        INTDEC CLR     TEMP11
 336D BD   31F2              JSR    INTBFP    Conv to FP binary
 3370 20   06                BRA    CVTDF1    then to decimal FP in Nbr-Buf
                     *
                     * CONVERT 2'S COMPLEMENT FP # TO DECIMAL FP #
                     * IN NUMBER-BUFFER
                     *
 3372 BD   3653      BINDEC JSR     SCALDN    Adjust for Scale-Factor
 3375 BD   383C              JSR    INCM0     Inc M0 mant. & adj exp
 3378 8E   44DF      CVTDF1 LDX     #NBRBUF Point to Nbr-Buf
 337B 9F   C9                STX    NBRPTR    Save in Nbr-Ptr
 337D CC   0000              LDD    #0
 3380 97   BD                STA    SCIFLG    Sci-Notation not needed
 3382 97   BF                STA    DECEXP    Clear decimal exp
 3384 DD   FC                STD    XSDIGS    Clear Excess-Digits and DPT-Pos
 3386 5C                     INCB
 3387 D7   BA                STB    TRIGFG    Set
 3389 DD   43                STD    STRLEN    Set Str-Len to 1
 338B D6   98                LDB    MATH0+7 Get M0 exp
 338D 27   3F                BEQ    CVTDF7    =0
 338F B6   48A3              LDA    DASHCT    Not 0. Get Dash-counter
 3392 27   09                BEQ    CVTDF2    =0. Convert to decimal
 3394 9A   91                ORA    MATH0     Not 0. OR with M0
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER     PAGE 147

 3396 B7   48A3             STA    DASHCT    and save in Dash-counter
 3399 08   91               LSL    MATH0     Mask M0 sign byte,
 339B 04   91               LSR    MATH0

                     * CALCULATE POSITION OF DECIMAL-POINT
                     * IN EQUIVALENT DECIMAL NUMBER
                     * Ratio 39/128      ie 2^128 = 10^39

 339D D7   BE        CVTDF2 STB     BINEXP    Save exp in Binary-exp
 339F C0   80                SUBB #$80        Find absolute
 33A1 2A   01                BPL    CVTDF3    value of
 33A3 50                     NEGB             binary exponent
 33A4 86   4E        CVTDF3 LDA     #78       Multiply B by 78
 33A6 3D                     MUL              and
 33A7 1F   89                TFR    A,B       divide by 256
 33A9 0D   BE                TST    BINEXP    Test Binary-exp
 33AB 2B   01                BMI    CVTDF4    +ve
 33AD 50                     NEGB             -ve, so neg B
 33AE 5C             CVTDF4 INCB
 33AF D7   BF                STB    DECEXP    Save in decimal exp
 33B1 BD   36E3              JSR    ASCFP4
                     *
                     * CONVERT TO DECIMAL
                     *
 33B4 8E   41F7              LDX    #CONS1A Point to constant 10.0
 33B7 96   98        CVTDF5 LDA     MATH0+7 Test M0 exp
 33B9 81   81                CMPA #$81
 33BB 24   0C                BCC    CVTDF6    >=81 (has an integer portion)
 33BD BD   306E              JSR    MPYFP     <81 (wholly fractional). Go multiply
 33C0 0A   BF                DEC    DECEXP    Dec decimal exp (Index - base 10)
 33C2 20   F3                BRA    CVTDF5    and back for more
                     *
                     * CONVERT NUMBERS >=10 TO DECIMAL
                     * Enter at CVTDF6
                     *
 33C4 BD   30E7      CVTDF0 JSR     DIVFP     >=10. FP divide
 33C7 0C   BF                INC    DECEXP    Inc decimal exp
 33C9 BD   2EE7      CVTDF6 JSR     CMPFP     Compare FP numbers
 33CC 24   F6                BCC    CVTDF0    M0 >= 10
                     *
                     * CORRECTLY FORMATTED FOR DECIMAL
                     * DECIMAL EXPONENT IN DECEXP
                     *
 33CE D6   FB        CVTDF7 LDB     TEMP11
 33D0 2E   2A                BGT    CVTDFB    >0
 33D2 27   7A                BEQ    CVTDFL    =0
                     *
                     * NUMBER < 0
                     *
 33D4 D7   BD        CVTDF8 STB     SCIFLG    Sci-Notation needed
 33D6 96   F8                LDA    POUNDL    Get # of '#'s to left of DP
 33D8 D6   91                LDB    MATH0     Get M0 MS byte
 33DA 2A   0C                BPL    CVTDF9    +ve
 33DC 4A                     DECA             -ve, so dec Pound-Left
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 148

 33DD 2B   68                BMI    CVTDFK    Originally 0
 33DF C4   7F                ANDB #$7F        1 or more. Strip sign-bit from B
 33E1 D7   91                STB    MATH0     and store
 33E3 C6   2D                LDB    #'-
 33E5 BD   35FA              JSR    DATSTO    Store '-' in Nbr-Buf
 33E8 97   FD        CVTDF9 STA     DPTPOS    Save DP-position
 33EA 96   F9                LDA    POUNDR    Get # of '#'s to right of DP
 33EC 97   FE                STA    FRACLT    Save in Fraction-Limit
 33EE 96   98                LDA    MATH0+7 Get M0 exp
 33F0 27   04                BEQ    CVTDFA    =0
 33F2 96   BF                LDA    DECEXP    Not 0. Get decimal exp
 33F4 90   FD                SUBA DPTPOS      Subtract DP-position
 33F6 4C             CVTDFA INCA              Bump A
 33F7 97   BF                STA    DECEXP    and save in decimal exp
 33F9 7E   348D              JMP    CVTDFQ
                     *
                     * NUMBER > 0
                     *
 33FC DC   F8        CVTDFB LDD     POUNDL    Get both Pound-Left and Pound-Right
 33FE D7   FE                STB    FRACLT    Save Pound-Right in Fraction-Limit
 3400 D6   91                LDB    MATH0     Test M0 sign
 3402 2A   03                BPL    CVTDFC    +ve
 3404 4A                     DECA             -ve. Dec Pound-Left
 3405 2B   40                BMI    CVTDFK    Originally 0
 3407 D6   BF        CVTDFC LDB     DECEXP    Get decimal exp
 3409 D7   FD                STB    DPTPOS    Save DP-position
 340B 2E   14                BGT    CVTDFE    >0
 340D DB   FE                ADDB FRACLT      <=0. Add Fraction-Limit
 340F 2E   06                BGT    CVTDFD    >0
 3411 D6   FE                LDB    FRACLT    <=0. Get Fraction-Limit
 3413 50                     NEGB
 3414 D7   FD                STB    DPTPOS    Save DP-position
 3416 5F                     CLRB
 3417 D7   FE        CVTDFD STB     FRACLT    Save in Fraction-Limit
 3419 4D                     TSTA
 341A 27   15                BEQ    CVTDFH    =0
 341C 0F   BA                CLR    TRIGFG    Not 0
 341E 4A                     DECA
 341F 20   06                BRA    CVTDFF
                     *
                     * PUT LEADING SPACES IN INPUT-BUF FOLLOWED BY '-' AND/OR 'NUL'
                     *
 3421 34   04        CVTDFE PSHS B            Subtract decimal-exp
 3423 A0   E0                SUBA 0,S+        from Pound-Left
 3425 2B   20                BMI    CVTDFK    Number too big
 3427 27   08        CVTDFF BEQ     CVTDFH    Exactly right
 3429 C6   20                LDB    #SPACE    Too small
 342B BD   35FA      CVTDFG JSR     DATSTO    Pad Nbr-Buf with
 342E 4A                     DECA             leading Spaces
 342F 26   FA                BNE    CVTDFG    and back again
 3431 D6   91        CVTDFH LDB     MATH0     Get M0 sign-byte
 3433 2A   09                BPL    CVTDFI    +ve
 3435 C4   7F                ANDB #$7F        -ve. Mask sign-bit in B
 3437 D7   91                STB    MATH0     and save in M0
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER    PAGE 149

 3439 C6   2D                LDB    #'-
 343B BD   35FA              JSR    DATSTO    Store '-' in Nbr-Buf
 343E D6   BA        CVTDFI LDB     TRIGFG    Test
 3440 26   4B                BNE    CVTDFQ    Not 0
 3442 BD   35FA              JSR    DATSTO    =0. Store NUL in Nbr-Buf
 3445 20   46                BRA    CVTDFQ
                     *
                     * NEGATIVE NUMBERS, OR NUMBER EXCEEDS NUMBER OF '#'s
                     *
 3447 4F             CVTDFK CLRA
 3448 97   FB                STA    TEMP11
 344A 97   BD                STA    SCIFLG    Sci-Notation not needed
 344C 0C   FC                INC    XSDIGS    Bump excess digits

                     * FILTER OFF NUMBER = 0

 344E C6   20        CVTDFL LDB     #SPACE
 3450 96   98                LDA    MATH0+7 Get exponent again
 3452 26   0C                BNE    CVTDFJ    Not 0
 3454 97   44                STA    STRLEN+1 =0. Store it
 3456 BD   35FA              JSR    DATSTO    Store Space in Nbr-Buf
 3459 5F                     CLRB
 345A BD   35F8              JSR    NBRSTO    Store 0 in Nbr-Buf
 345D 7E   35D8              JMP    ENDNBR    Finish number
                     *
                     * PUT LEADING '-' OR SPACE IN NUMBER-BUFFER, AND
                     * CHECK MAGNITUDE FOR POSSIBLE SCI-NOTATION
                     *
 3460 96   91        CVTDFJ LDA     MATH0     Test M0 sign-byte
 3462 2A   06                BPL    CVTDFM    +ve
 3464 84   7F                ANDA #$7F        -ve. Mask sign-bit
 3466 97   91                STA    MATH0     and save back
 3468 C6   2D                LDB    #'-
 346A BD   35FA      CVTDFM JSR     DATSTO    Store B in Nbr-Buf (Space or '-')
 346D 96   BF                LDA    DECEXP    Get decimal exp
 346F 91   F3                CMPA DIGNBR      and compare with Digits set
 3471 2E   43                BGT    CVTDFS    Too high. Convert to Sci-Notation
 3473 81   FA                CMPA #$FA        < -6?
 3475 2F   41                BLE    CVTSCI    Too small. Convert to Sci-Notation

                     * NUMBER WITHIN ALLOWABLE RANGE
                     * DISPLAY NORMALLY (NOT IN SCI-NOTATION)

 3477 97   FD               STA    DPTPOS      Save DP-position
 3479 D6   F4               LDB    DPTNBR      Recall Fractional-Limit
 347B 2B   0A               BMI    CVTDFO      No restrictions
 347D 4D                    TSTA               Restricted. Test decimal-exp
 347E 2A   0B               BPL    CVTIFP
 3480 DB   FD               ADDB   DPTPOS      Add DP-position
 3482 2A   07               BPL    CVTIFP      +ve
 3484 5F                    CLRB               -ve
 3485 20   04               BRA    CVTIFP
                     *
                     *
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 150

                     *
 3487 D6   F3        CVTDFO LDB     DIGNBR    Get Dig-Nbr
 3489 D0   BF                SUBB DECEXP      Subtract decimal exp
 348B D7   FE        CVTIFP STB     FRACLT    Save # of digits to right of DP
 348D 96   FD        CVTDFQ LDA     DPTPOS    Test DP-position
 348F 2E   36                BGT    CVTDFV    >0
 3491 C6   2E                LDB    #'.       <=0
 3493 BD   35FA              JSR    DATSTO    Store '.' in Nbr-Buf
 3496 4D                     TSTA             Re-check decimal-exp
 3497 27   2E                BEQ    CVTDFV    =0
 3499 5F                     CLRB             <0
 349A BD   35FA      CVTDFR JSR     DATSTO    Pad Nbr-Buf
 349D 4C                     INCA             with NULs
 349E 26   FA                BNE    CVTDFR    Not 0. Back again
 34A0 D6   FD                LDB    DPTPOS    =0. Get DP-position
 34A2 97   FD                STA    DPTPOS    Set DP-position to 0
 34A4 96   FB                LDA    TEMP11    Test Temp
 34A6 2F   1F                BLE    CVTDFV    <=0
 34A8 96   FE                LDA    FRACLT    >0. Test digits to right of DP
 34AA 26   1B                BNE    CVTDFV    Not 0
 34AC D1   BF                CMPB DECEXP      =0. DP-pos same as decimal exp?
 34AE 27   17                BEQ    CVTDFV    Yes
 34B0 5F                     CLRB             No
 34B1 BD   35FA              JSR    DATSTO    Store NUL in Nbr-Buf
 34B4 20   6E                BRA    FMTNBF
                     *
                     * NUMBER TO BE DISPLAYED HAS MORE DIGITS TO LEFT OF
                     * DECIMAL-POINT THAN ALLOWED BY DIGITS STATEMENT
                     *
 34B6 97   FC        CVTDFS STA     XSDIGS    Save in excess-digits

                     * NUMBER OUTSIDE ALLOWABLE RANGE. CONVERT TO SCI-NOTATION

 34B8 97   BD        CVTSCI STA    SCIFLG    Indicate Sci-Notation needed
 34BA C6   01               LDB    #1        Set DP-position to 1
 34BC D7   FD               STB    DPTPOS
 34BE 96   F4               LDA    DPTNBR    Recall Fractional Limit
 34C0 2A   03               BPL    CVTDFU    Restricted
 34C2 96   F3               LDA    DIGNBR    Not restricted. Get # of digits to display
 34C4 4A                    DECA             and reduce by 1

                     *

 34C5 97   FE        CVTDFU STA    FRACLT    Save in Fraction-Limit
 34C7 8E   4257      CVTDFV LDX    #CONS1N   Point to constant 1.0
 34CA 9F   CD               STX    CONSPT    and save Cons-Ptr
 34CC 96   FD               LDA    DPTPOS    Test DP-position
 34CE 26   0E               BNE    CVTDFW    <>0
 34D0 96   FE               LDA    FRACLT    =0. Test Fraction-Limit
 34D2 26   16               BNE    CVTDFX    <>0
 34D4 96   BF               LDA    DECEXP    =0. Test decimal exp
 34D6 2A   12               BPL    CVTDFX    +ve
 34D8 5F                    CLRB             -ve
 34D9 BD   35FA             JSR    DATSTO    Store NUL in Nbr-Buf
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER      PAGE 151

 34DC 20   1B               BRA    CVTDFZ
                     *
                     *
                     *
 34DE BD   3603      CVTDFW JSR    SCINOT     Derive decimal-exp for Sci-Notation
 34E1 0A   FD               DEC    DPTPOS     Dec DP-position
 34E3 26   F9               BNE    CVTDFW     Not done. Repeat
 34E5 C6   2E               LDB    #'.        Done
 34E7 BD   35FA             JSR    DATSTO     Store '.'in Nbr-Buf

                     *

 34EA 9E   CD        CVTDFX LDX    CONSPT     Recover Cons-Ptr
 34EC 96   FE               LDA    FRACLT     Get Fraction-Limit
 34EE 34   02               PSHS   A          and stack
 34F0 BD   3603      CVTDFY JSR    SCINOT     Derive decimal-exp for Sci-Notation
 34F3 6A   E4               DEC    0,S        Dec digit count
 34F5 2A   F9               BPL    CVTDFY     Not done. Repeat
 34F7 32   61               LEAS   1,S        Done. Adjust Stack
                     *
                     *
                     *
 34F9 96   FB        CVTDFZ LDA    TEMP11     Test Temp
 34FB 2E   27               BGT    FMTNBF
 34FD 96   FE               LDA    FRACLT     Test Fraction-Limit
 34FF 2B   23               BMI    FMTNBF     No restriction
 3501 CC   022E             LDD    #$022E     Restricted. count of 2 in A; '.' in B
 3504 8E   44DF             LDX    #NBRBUF    Point to Nbr-Buf

 3507 9C   C9        CVDFP0 CMPX   NBRPTR     Same as Nbr-Ptr?
 3509 24   19               BCC    FMTNBF     Can't find '.'
 350B 4C             CVDFP1 INCA
 350C E1   80               CMPB   0,X+       Search for '.'
 350E 26   F7               BNE    CVDFP0     counting in 'A'

 3510 D6   FE               LDB    FRACLT     Get Fraction-Limit
 3512 0D   BF               TST    DECEXP     Test decimal exp
 3514 2A   02               BPL    CVDFP3     +ve
 3516 D0   BF               SUBB   DECEXP     -ve. Add it to limit
 3518 5C             CVDFP3 INCB
 3519 3A                    ABX
 351A 9C   C9               CMPX   NBRPTR     Same as Nbr-Ptr?
 351C 24   06               BCC    FMTNBF     >=
 351E 9F   C9               STX    NBRPTR     <. Save X in Nbr-Ptr
 3520 9B   FE               ADDA   FRACLT     Add Fraction-Limit to digits to left of DP
 3522 97   44               STA    STRLEN+1   Save in Digit-Out

                     * CONVERT BCD DIGITS IN NUMBER-BUFFER TO
                     * EQUIVALENT ASCII ie 01,09,07 (197) to 31,39,37

 3524 9E   C9        FMTNBF LDX    NBRPTR     Get Nbr-Ptr
 3526 30   1F               LEAX   -1,X       Back by 1
 3528 9F   C9               STX    NBRPTR     Save Nbr-Ptr
 352A 0A   44               DEC    STRLEN+1   Dec Digit-Out
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 152

 352C C6   05                LDB    #5        Round-off
 352E A6   84                LDA    0,X
 3530 34   04        FMTNB1 PSHS B
 3532 AB   E0                ADDA 0,S+        A +B
 3534 19                     DAA
 3535 1F   89                TFR    A,B
 3537 C4   0F                ANDB #$0F        Convert LS nybble to ASCII
 3539 CB   30                ADDB #'0
 353B E7   84                STB    0,X       and save
 353D 1F   89                TFR    A,B
 353F 54                     LSRB             Move MS nybble to LS position
 3540 54                     LSRB
 3541 54                     LSRB
 3542 54                     LSRB
 3543 30   1F        FMTNB2 LEAX -1,X         Dec pointer
 3545 8C   44DE              CMPX #NBRBUF-1 At start of Nbr-Buf?
 3548 27   0A                BEQ    FMTNB3    Yes
 354A A6   84                LDA    0,X       No. Get char pointed
 354C 81   2E                CMPA #'.         DP?
 354E 27   F3                BEQ    FMTNB2    Yes. Back again
 3550 81   20                CMPA #$20        No. Control-Code?
 3552 25   DC                BCS    FMTNB1    Yes
 3554 5D             FMTNB3 TSTB
 3555 27   38                BEQ    DROP0     =0
 3557 CB   30                ADDB #'0         Not 0. Convert to ASCII
 3559 0D   FB                TST    TEMP11
 355B 2F   18                BLE    SHBUFR
 355D B6   44DF              LDA    NBRBUF    Get 1st char from Nbr-Buf
 3560 81   20                CMPA #SPACE
 3562 26   0F                BNE    SHBUF0    No
                     *
                     * SHIFT NUMBER-BUFFER CONTENTS LEFT BY ONE DIGIT
                     *
 3564 30   01        SHBUFL LEAX 1,X          Artificial bump by 1
 3566 A6   82        LOOP1 LDA      0,-X
 3568 E7   84                STB    0,X
 356A 1F   89                TFR    A,B
 356C 8C   44DF              CMPX #NBRBUF At start of Buffer?
 356F 22   F5                BHI    LOOP1     No. Back again
 3571 20   1C                BRA    DROP0     Yes
                     *
                     * SHIFT NUMBER-BUFFER CONTENTS RIGHT BY ONE DIGIT
                     *
 3573 0C   FC        SHBUF0 INC     XSDIGS    Bump excess digits
 3575 A6   01        SHBUFR LDA     1,X
 3577 E7   01                STB    1,X
 3579 30   02                LEAX 2,X
 357B 0C   BF                INC    DECEXP    Bump decimal exp
 357D D6   BD                LDB    SCIFLG    Sci-Notation?
 357F 26   0E                BNE    DROP0     Yes
 3581 E6   84        SHBFR1 LDB     0,X       No
 3583 A7   80                STA    0,X+
 3585 1F   98                TFR    B,A
 3587 9C   C9                CMPX NBRPTR      Same as Nbr-Ptr?
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER       PAGE 153

 3589 25   F6                BCS    SHBFR1     <. Repeat
 358B 26   02                BNE    DROP0      >
 358D 8D   6B                BSR    DATSTO     =. Store B in Nbr-Buf

                     * ADJUST POINTER AND DIGIT-COUNTER TO DROP TRAILING ZEROES

 358F 9E   C9        DROP0  LDX     NBRPTR     Get Nbr-Ptr
 3591 96   FB               LDA     TEMP11     Test Temp
 3593 26   26               BNE     FMTEXP
 3595 C6   30               LDB     #'0
 3597 0A   44        DROP00 DEC     STRLEN+1   Dec Digit-Out
 3599 E1   82               CMPB    0,-X
 359B 27   FA               BEQ     DROP00     Back again. Bypass 0s

                     * ALSO DROP DECIMAL-POINT IF FOLLOWED ONLY BY ZEROES

 359D E6   84                LDB    0,X
 359F C1   2E                CMPB   #'.        DP?
 35A1 26   04                BNE    RPLACE     No
 35A3 0A   44                DEC    STRLEN+1   Yes. Dec Digit-Out
 35A5 30   1F                LEAX   -1,X       Dec pointer

                     * CHECK FOR 'SPACE' OR '+/-0' AND REPLACE WITH '0'

 35A7 E6   80        RPLACE LDB     0,X+
 35A9 9F   C9               STX     NBRPTR     Save Nbr-Ptr
 35AB C1   20               CMPB    #SPACE
 35AD 27   08               BEQ     RPLAC1     Yes
 35AF C1   2D               CMPB    #'-        No. '-'?
 35B1 26   08               BNE     FMTEXP     No. Format exp
 35B3 C6   20               LDB     #SPACE     Yes
 35B5 E7   1F               STB     -1,X       Save Space in previous position
 35B7 C6   30        RPLAC1 LDB     #'0
 35B9 8D   3F               BSR     DATSTO     Store '0' in Nbr-Buf

                     * CHECK FOR AND FORMAT DECIMAL EXPONENT

 35BB 96   BD        FMTEXP LDA     SCIFLG     Sci-Notation?
 35BD 27   19               BEQ     ENDNBR     No
 35BF C6   45               LDB     #'E        Yes
 35C1 8D   37               BSR     DATSTO     Store 'E' in Nbr-Buf
 35C3 C6   2B               LDB     #'+
 35C5 96   BF               LDA     DECEXP     Get decimal exp
 35C7 4A                    DECA
 35C8 2A   03               BPL     FMTXP1     +ve
 35CA 40                    NEGA               -ve, so negate it
 35CB C6   2D               LDB     #'-
 35CD 8D   2B        FMTXP1 BSR     DATSTO     Store B in Nbr-Buf
 35CF BD   370D             JSR     HEXDEC     Convert byte from HEX to Decimal
 35D2 8D   24               BSR     NBRSTO     Store 10s in Nbr-Buf
 35D4 1F   89               TFR     A,B
 35D6 8D   20               BSR     NBRSTO     Store units in Nbr-Buf

                     * FORMAT FINAL SPACE OR TRAILING '-'
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 154


 35D8 96   FB        ENDNBR LDA     TEMP11    Test
 35DA 26   07                BNE    ENDNB2    Not 0
 35DC C6   20        ENDNB1 LDB     #SPACE    =0
 35DE 8D   1A                BSR    DATSTO    Store Space in Nbr-Buf
 35E0 7F   48A3              CLR    DASHCT    Clear dash-counter
 35E3 F6   48A3      ENDNB2 LDB     DASHCT    Test Dash-count
 35E6 27   09                BEQ    NBREND    =0
 35E8 2E   F2                BGT    ENDNB1    >0
 35EA C6   2D                LDB    #'-       <0
 35EC 8D   0C                BSR    DATSTO    Store '-' in Nbr-Buf
 35EE 7F   48A3              CLR    DASHCT    Clear Dash-count
 35F1 C6   04        NBREND LDB     #EOT      Terminate ASCII number
 35F3 E7   84                STB    0,X       in Nbr-Buf
 35F5 0F   FB                CLR    TEMP11
 35F7 39                     RTS
                     *
                     * STORE NUMBER IN NUMBER-BUFFER IN ASCII
                     * INCREMENT COUNT IN DIGOUT
                     *
 35F8 CA   30        NBRSTO ORB     #'0       Convert to ASCII
 35FA 9E   C9        DATSTO LDX     NBRPTR    Get pointer to Nbr-Buf
 35FC E7   80                STB    0,X+      Store char there
 35FE 9F   C9                STX    NBRPTR    Save Nbr-Ptr
 3600 0C   44                INC    STRLEN+1 Count digits in Digit-Out
 3602 39                     RTS
                     *
                     * DERIVE DECIMAL EXPONENT FOR SCIENTIFIC NOTATION
                     *
 3603 0F   8F        SCINOT CLR     MATH5+7 Clear M5 exp
 3605 8C   42E7              CMPX #CONST2 End-of-Constant 1 Table?
 3608 26   06                BNE    SCINT1    No
 360A 5F                     CLRB             Yes
 360B 8D   ED                BSR    DATSTO    Store NUL in Nbr-Buf
 360D 9E   CD                LDX    CONSPT    Get Cons-Ptr
 360F 39                     RTS
                     *
                     * CONVERT BINARY TO SCIENTIFIC NOTATION
                     *
 3610 BD   2EE7      SCINT1 JSR     CMPFP     Compare FP numbers
 3613 25   07                BCS    SCINT2
 3615 0C   8F                INC    MATH5+7 Bump M5 exp
 3617 BD   2F54              JSR    SUBTCT    Subtract 2 Integers
 361A 20   F4                BRA    SCINT1    and back again

 361C D6   8F        SCINT2 LDB     MATH5+7 Get M5 exp
 361E 8D   DA                BSR    DATSTO    Store exp in Nbr-Buf
 3620 9E   CD                LDX    CONSPT    Point to next constant
 3622 30   08                LEAX 8,X
 3624 9F   CD                STX    CONSPT
 3626 39                     RTS
                     *
                     * CONVERT ASCII NUMBER TO FP OR INTEGER
                     *
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 155

 3627 8D   35        CVT2FP BSR    ASCFPD    Convert to FP decimal

                     * CONVERT FP DECIMAL TO INTEGER DECIMAL

 3629 96   F5        FP2INT LDA     SCALFG    Check Scale-Factor
 362B 27   4D                BEQ    DPTCK1    =0. Leave in FP format
 362D 0F   BE                CLR    BINEXP    <>0. Set for multiply. Clear Binary-exp
 362F BD   36E3              JSR    ASCFP4
 3632 8E   41EF      FPINT3 LDX     #CONST1 Round off
 3635 BD   2F78              JSR    JSTIFY    Justify and add
 3638 BD   381A              JSR    XFM0M3    Transfer M0 to M3
 363B CC   0000              LDD    #0        Set M0
 363E DD   91                STD    MATH0     mantissa
 3640 DD   93                STD    MATH0+2 to
 3642 DD   95                STD    MATH0+4 0000 0000 0000 01
 3644 5C                     INCB             for
 3645 D7   97                STB    MATH0+6 last-place
 3647 BD   3024              JSR    NORML3    round-off
 364A 8E   00B2              LDX    #MATH3    Point to M3
 364D BD   2F78              JSR    JSTIFY    Justify and add
 3650 7E   3222              JMP    INT       Convert to Integer
                     *
                     * ADJUST DOWNWARDS FOR SCALE-FACTOR
                     *
 3653 96   F5        SCALDN LDA     SCALFG    Check Scale-Factor
 3655 27   23                BEQ    DPTCK1    =0. Go home
 3657 C6   FF                LDB    #$FF      Set for DIVIDE
 3659 D7   BE                STB    BINEXP    Save in Binary-exp
 365B 7E   36E3              JMP    ASCFP4
                     *
                     * CONVERT INPUTTED ASCII NUMBER TO FP
                     *
 365E BD   3255      ASCFPD JSR     CLRM0     Clear M0
 3661 4F                     CLRA
 3662 97   BC                STA    OVFLOW    Clear Overflow
 3664 97   BA                STA    TRIGFG    Clear Temp
 3666 9E   45                LDX    INBFPT    Get Input-Buf pointer
 3668 9F   53                STX    STRBEG    Save in String-Start
 366A 9F   55                STX    STREND    Save in String-End
 366C BD   373A              JSR    SGNCHK    Check sign of number
 366F D7   C2                STB    NBRSGN    and save in Nbr-sign
 3671 BD   3717              JSR    ASCBCD    Convert ASCII to BCD
 3674 24   05                BCC    ASCFPE    Numeral
 3676 81   2E                CMPA #'.         DP?
 3678 27   0A                BEQ    ASCFP0    Yes
 367A 39             DPTCK1 RTS               No

 367B BD   3772      ASCFPE JSR    ASCBIN    Numeral. Convert ASCII number to decimal
 367E 0F   BD               CLR    SCIFLG    Clear Sci-Not Flag
 3680 81   2E               CMPA   #'.       DP?
 3682 26   09               BNE    ASCFP1    No
 3684 0F   BD        ASCFP0 CLR    SCIFLG    Yes. Clear Sci-Not Flag
 3686 0C   BA               INC    TRIGFG    Bump pointer
 3688 30   01               LEAX   1,X       Bump pointer
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER     PAGE 156

 368A BD   3780             JSR    ASCBN1
 368D 84   5F        ASCFP1 ANDA   #$5F      To upper-case
 368F 81   45               CMPA   #'E       Exponent?
 3691 26   3E               BNE    ASCFP3    No

                     * PROCESS 'E' PORTION OF SCI-NOTATION

 3693 30   01               LEAX   1,X       Bump pointer
 3695 BD   373A             JSR    SGNCHK    Check sign of number
 3698 D7   BE               STB    BINEXP    Save in Binary-exp
 369A BD   3731             JSR    IGNSPC    Ignore Spaces
 369D 81   39               CMPA   #'9       9?
 369F 22   30               BHI    ASCFP3    Not decimal
 36A1 96   BD               LDA    SCIFLG    Yes. Save Sci-Not Flag
 36A3 34   02               PSHS   A
 36A5 9F   C9               STX    NBRPTR    Save pointer in Nbr-Ptr
 36A7 BD   3809             JSR    XFM0M2    Transfer M0 to M2
 36AA 9E   C9               LDX    NBRPTR    Recover Nbr-Ptr
 36AC 0C   BA               INC    TRIGFG
 36AE BD   3772             JSR    ASCBIN    Convert ASCII number to Binary
 36B1 DC   91               LDD    MATH0     Test MS bytes M0,
 36B3 26   55               BNE    ERR65B
 36B5 DC   93               LDD    MATH0+2
 36B7 26   51               BNE    ERR65B
 36B9 DC   95               LDD    MATH0+4
 36BB 26   4D               BNE    ERR65B    Not 0. Error-Code 101
 36BD 96   97               LDA    MATH0+6   =0. Get LS byte of mant
 36BF 81   28               CMPA   #40       40? (+39 is MAX)
 36C1 24   47               BCC    ERR65B    >=40 Error-Code 101
 36C3 0D   BE               TST    BINEXP    <40. Test sign of exp
 36C5 2A   01               BPL    ASCFP2    +ve
 36C7 40                    NEGA             -ve, so negate A
 36C8 BD   382B      ASCFP2 JSR    XFM2M0    Transfer M2 to M0
 36CB 97   98               STA    MATH0+7   Store in M0 exp
 36CD 35   02               PULS   A         Recover Sci-Not Flag
 36CF 97   BD               STA    SCIFLG

                     *

 36D1 96   98        ASCFP3 LDA    MATH0+7   Get exponent
 36D3 90   BD               SUBA   SCIFLG    Subtract Sci-Not Flag
 36D5 97   BE               STA    BINEXP    and save in Binary-exp
 36D7 C6   B8               LDB    #$B8      Set exp. to 56 binary
 36D9 D7   98               STB    MATH0+7
 36DB BD   3024             JSR    NORML3    Normalise M0
 36DE 96   BE               LDA    BINEXP    Get Binary-exp
 36E0 2A   01               BPL    ASCFP4    +ve
 36E2 40                    NEGA             -ve. Negate A

                     * CONVERT BETWEEN FP INTEGER AND FP DECIMAL

 36E3 81   0A        ASCFP4 CMPA   #10       10?
 36E5 23   0C               BLS    SCALIT    <=, so scale it
 36E7 8D   24               BSR    HEXDEC    Convert byte from HEX to Decimal
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 157

 36E9 34   02               PSHS   A         Save A
 36EB 1F   98               TFR    B,A
 36ED 8B   09               ADDA   #9
 36EF 8D   02               BSR    SCALIT    Scale one decimal digit
 36F1 35   02               PULS   A

                     * SCALE INTEGER UP OR DOWN DEPENDING ON BINEXP

 36F3 81 0D          SCALIT CMPA   #13       MAX multiplier position in Const 1 Table
 36F5 24 13                 BCC    ERR65B    >=. Error-Code 101
 36F7 48                    ASLA             A *2
 36F8 27 33                 BEQ    ASCBC1    =0. Go home
 36FA 48                    ASLA             Not 0. A * 4
 36FB 48                    ASLA             A *8
 36FC 8E 41EF               LDX    #CONST1   Point to Constant-Table 1
 36FF 30 86                 LEAX   A,X       Now point to required Constant
 3701 0D BE                 TST    BINEXP    Test Binary-exp
 3703 102A F967             LBPL   MPYFP     +ve. Multiply FP numbers
 3707 7E 30E7               JMP    DIVFP     -ve. Divide FP (M0/constant)

 370A 7E   3069      ERR65B JMP     ERR65A    Error-Code 101 (Over-Underflow in FP op)
                     *
                     * CONVERT HEX BYTE TO TWO DIGITS MOD-10
                     * NUMBER OF 10s IN B, REMAINDER IN A
                     *
 370D 5F             HEXDEC CLRB              Clear Counter
 370E 81   0A        HXDEC1 CMPA #10
 3710 25   1B                BCS    ASCBC1    <10. Go home
 3712 80   0A                SUBA #10         >10
 3714 5C                     INCB             Bump tens-counter
 3715 20   F7                BRA    HXDEC1    and back again
                     *
                     * CHECK FOR DECIMAL NUMBER AND CONVERT TO BCD
                     * CARRY CLEAR = DONE CARRY SET = NOT DECIMAL
                     *
 3717 9F   45        ASCBCD STX     INBFPT    Save in Input-Buf pointer
 3719 30   1F                LEAX -1,X        Dec by 1
 371B 9F   55                STX    STREND    Save in String-End
 371D 30   01                LEAX 1,X         Restore it
 371F 8D   10                BSR    IGNSPC    Ignore Spaces
 3721 81   30                CMPA #'0         0?
 3723 25   08                BCS    ASCBC1    <0. Not numeric
 3725 81   39                CMPA #'9         Numeric
 3727 22   05                BHI    ASCBC2    >9. Not numeric
 3729 84   0F                ANDA #$0F        Numeric. Convert to BCD
 372B 1C   FE                ANDCC #$FE       Clear CARRY
 372D 39             ASCBC1 RTS

 372E 1A   01        ASCBC2 ORCC #1           Set CARRY
 3730 39                     RTS
                     *
                     * SEARCH FOR FIRST NON-SPACE CHARACTER POINTED BY X
                     * LEAVE WITH CHARACTER IN A
                     *
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 158

 3731 A6   80        IGNSPC LDA     0,X+      Get char
 3733 81   20                CMPA #SPACE
 3735 27   FA                BEQ    IGNSPC    Yes. Skip it
 3737 30   1F                LEAX -1,X        No. Dec pointer
 3739 39                     RTS              Go home
                     *
                     * CHECK SIGN OF NUMBER IN INPUT-BUFFER
                     * +VE OR 0, B=00 -VE, B=FF
                     *
 373A 8D   F5        SGNCHK BSR     IGNSPC    Ignore Spaces
 373C 5F                     CLRB
 373D 81   2B                CMPA #'+         +?
 373F 27   05                BEQ    SGNCK1    Yes
 3741 81   2D                CMPA #'-         No. -?
 3743 26   03                BNE    SGNCK2    No
 3745 53                     COMB             Yes. Set B=FF
 3746 30   01        SGNCK1 LEAX 1,X          Bump pointer
 3748 39             SGNCK2 RTS
                     *
                     * CONVERT ASCII INTEGER IN NBR-BUF TO SIGNED BINARY IN M0
                     *
 3749 9E   45        CVTBIN LDX     INBFPT    Get Input-Buf pointer
 374B 8D   ED                BSR    SGNCHK    Check sign of number
 374D D7   C2                STB    NBRSGN    Save in Nbr-sign
 374F 8D   21                BSR    ASCBIN    Convert ASCII number to Binary
 3751 DC   91                LDD    MATH0     Check that 5 MS bytes = 0
 3753 26   18                BNE    ERR6AA    Not 0. Error-Code 106
 3755 DC   93                LDD    MATH0+2
 3757 26   14                BNE    ERR6AA    Not 0. Error-Code 106
 3759 96   95                LDA    MATH0+4
 375B 26   10                BNE    ERR6AA    Not 0. Error-Code 106
 375D DC   96                LDD    MATH0+5 =0. Get 1st real bytes
 375F 2B   0C                BMI    ERR6AA    -ve. Error-Code 106
 3761 0D   C2                TST    NBRSGN    +ve. Test Nbr-Sgn
 3763 2A   05                BPL    CVTBN1    +ve
 3765 43                     COMA             -ve, so negate
 3766 53                     COMB
 3767 C3   0001              ADDD #1
 376A DD   91        CVTBN1 STD     MATH0     Save in M0 2 MS bytes
 376C 39                     RTS

 376D 86   6A        ERR6AA LDA     #$6A      Error-Code 106 (Conversion Error in INTEGER input)
 376F 7E   0B6B              JMP    ERROR     Process error
                     *
                     * CONVERT ASCII NUMBER IN INP-BUF TO BINARY. MAXIMUM = 2^56
                     * COUNT # OF DIGITS IN SCIFLG. EXIT IF DIGIT NOT IN RANGE 0 - 9
                     *
 3772 4F             ASCBIN CLRA
 3773 BD   318F              JSR    M0M5A     Clear M0 mantissa
 3776 8D   9F                BSR    ASCBCD    Convert ASCII to BCD
 3778 25   CE                BCS    SGNCK2    Not numeric. Go home
 377A 30   01                LEAX 1,X         Done. Bump pointer
 377C 97   97                STA    MATH0+6 Save in M0+6
 377E 0C   BD                INC    SCIFLG    Bump Sci-Not Flag
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 159

 3780 8D   95        ASCBN1 BSR    ASCBCD    Convert ASCII to BCD
 3782 25   C4               BCS    SGNCK2    Not numeric. Go home
 3784 30   01               LEAX   1,X       Done. Bump pointer
 3786 34   02               PSHS   A         Save digit
 3788 0C   BD               INC    SCIFLG    Bump Sci-Not Flag

                     * MULTIPLY M0 BY 10

 378A DC   96               LDD    MATH0+5   Multiply M0 mantissa
 378C 58                    ASLB             by 2, and store back.
 378D 49                    ROLA
 378E DD   96               STD    MATH0+5
 3790 DD   9F               STD    MATH4+5   Also store in M4 mantissa
 3792 DC   94               LDD    MATH0+3
 3794 59                    ROLB
 3795 49                    ROLA
 3796 DD   94               STD    MATH0+3
 3798 DD   9D               STD    MATH4+3
 379A DC   92               LDD    MATH0+1
 379C 59                    ROLB
 379D 49                    ROLA
 379E DD   92               STD    MATH0+1
 37A0 DD   9B               STD    MATH4+1
 37A2 96   91               LDA    MATH0
 37A4 49                    ROLA
 37A5 25   4C               BCS    ERR6CA    Overflow. Error-Code 108
 37A7 97   91               STA    MATH0
 37A9 97   9A               STA    MATH4     All done

 37AB 08   97               ASL    MATH0+6   Now multiply M0
 37AD 09   96               ROL    MATH0+5   by 2 once more
 37AF 09   95               ROL    MATH0+4
 37B1 09   94               ROL    MATH0+3
 37B3 09   93               ROL    MATH0+2
 37B5 09   92               ROL    MATH0+1
 37B7 09   91               ROL    MATH0
 37B9 25   38               BCS    ERR6CA    Overflow. Error-Code 108

 37BB 08   97               ASL    MATH0+6   otherwise multiply
 37BD 09   96               ROL    MATH0+5   M0 by 2 again
 37BF 09   95               ROL    MATH0+4   (now * 8)
 37C1 09   94               ROL    MATH0+3
 37C3 09   93               ROL    MATH0+2
 37C5 09   92               ROL    MATH0+1
 37C7 09   91               ROL    MATH0
 37C9 25   28               BCS    ERR6CA    Overflow. Error-Code 108

 37CB BD   319C             JSR    ADDMNT    Add M0 and M4 (now * 10)
 37CE 25   23               BCS    ERR6CA    Overflow. Error-Code 108

 37D0 35   02               PULS   A         Add last-entered digit
 37D2 9B   97               ADDA   MATH0+6   to M0 mantissa
 37D4 97   97               STA    MATH0+6
 37D6 24   A8               BCC    ASCBN1    No overflow
RBASIC by R. Jones   31 May 1988    4-7-4 TSC ASSEMBLER    PAGE 160

 37D8 DC   95               LDD    MATH0+4
 37DA C3   0001             ADDD   #1
 37DD DD   95               STD    MATH0+4
 37DF 24   9F               BCC    ASCBN1    No overflow
 37E1 DC   93               LDD    MATH0+2
 37E3 C3   0001             ADDD   #1
 37E6 DD   93               STD    MATH0+2
 37E8 24   96               BCC    ASCBN1    No overflow
 37EA DC   91               LDD    MATH0
 37EC C3   0001             ADDD   #1
 37EF DD   91               STD    MATH0     All done
 37F1 24   8D               BCC    ASCBN1    No overflow. Back for another digit

 37F3 86   6C        ERR6CA LDA    #$6C      Error-Code 108 (Conversion Error. Number too large)
 37F5 7E   0B6B             JMP    ERROR     Process error
RBASIC by R. Jones   31 May 1988   4-7-4 TSC ASSEMBLER   PAGE 161


                     *                                                       *
                     * MISC        MATH-REG I S T ER        O P ER A TI O NS *
                     *                                                       *
                     *
                     * TRANSFER M0 TO M1
                     *
 37F8 9E   91        XFM0M1 LDX     MATH0   Do it
 37FA 9F   A2                STX    MATH1
 37FC 9E   93                LDX    MATH0+2
 37FE 9F   A4                STX    MATH1+2
 3800 9E   95                LDX    MATH0+4
 3802 9F   A6                STX    MATH1+4
 3804 9E   97                LDX    MATH0+6
 3806 9F   A8                STX    MATH1+6
 3808 39                     RTS
                     *
                     * TRANSFER M0 TO M2
                     *
 3809 9E   91        XFM0M2 LDX     MATH0   Do it
 380B 9F   AA                STX    MATH2
 380D 9E   93                LDX    MATH0+2
 380F 9F   AC                STX    MATH2+2
 3811 9E   95                LDX    MATH0+4
 3813 9F   AE                STX    MATH2+4
 3815 9E   97                LDX    MATH0+6
 3817 9F   B0                STX    MATH2+6
 3819 39                     RTS
                     *
                     * TRANSFER M0 TO M3
                     *
 381A 9E   91        XFM0M3 LDX     MATH0   Do it
 381C 9F   B2                STX    MATH3
 381E 9E   93                LDX    MATH0+2
 3820 9F   B4                STX    MATH3+2
 3822 9E   95                LDX    MATH0+4
 3824 9F   B6                STX    MATH3+4
 3826 9E   97                LDX    MATH0+6
 3828 9F   B8                STX    MATH3+6
 382A 39                     RTS
                     *
                     * TRANSFER M2 TO M0
                     *
 382B 9E   AA        XFM2M0 LDX     MATH2   Do it
 382D 9F   91                STX    MATH0
 382F 9E   AC                LDX    MATH2+2
 3831 9F   93                STX    MATH0+2
 3833 9E   AE                LDX    MATH2+4
 3835 9F   95                STX    MATH0+4
 3837 9E   B0                LDX    MATH2+6
 3839 9F   97                STX    MATH0+6
 383B 39                     RTS
                     *
                     * INCREMENT M0 BY 1
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER    PAGE 162

                     *
 383C DC 96          INCM0  LDD     MATH0+5    Bump 2 LS bytes
 383E C3 0001               ADDD    #1
 3841 DD 96                 STD     MATH0+5
 3843 26 2B                 BNE     INCM0B     No overflow. Go home
 3845 DC 94                 LDD     MATH0+3
 3847 C3 0001               ADDD    #1
 384A DD 94                 STD     MATH0+3
 384C 26 22                 BNE     INCM0B     No overflow. Go home
 384E DC 92                 LDD     MATH0+1
 3850 C3 0001               ADDD    #1
 3853 DD 92                 STD     MATH0+1
 3855 26 19                 BNE     INCM0B     No overflow. Go home
 3857 D6 91                 LDB     MATH0      Get MS byte into B,
 3859 1F 98                 TFR     B,A        and into A
 385B 84 7F                 ANDA    #$7F       Mask sign-bit
 385D 4C                    INCA               Inc
 385E 2A 08                 BPL     INCM0A     +ve
 3860 0C 98                 INC     MATH0+7    -ve. Inc exp
 3862 1027 FEA4             LBEQ    ERR65B     Error
 3866 84 7F                 ANDA    #$7F       and mask MS bit again
 3868 C4 80          INCM0A ANDB    #$80       Pick off sign bit
 386A 34 04                 PSHS    B
 386C AB E0                 ADDA    0,S+       Tack it onto A
 386E 97 91                 STA     MATH0      and save in M0 MS byte
 3870 39             INCM0B RTS

 3871 86   6B        ERR6BA LDA     #$6B       Error-Code 107 (Imaginary Square-Root)
 3873 7E   0B6B              JMP    ERROR      Process error
                     *
                     * EXECUTE SQR STATEMENT
                     *
 3876 96   91        SQR     LDA    MATH0      Test sign byte of M0
 3878 2B   F7                BMI    ERR6BA     -ve. Error-Code 107
 387A 96   98                LDA    MATH0+7    +ve. Get exponent
 387C 27   F2                BEQ    INCM0B     sqr0=0. Go home
 387E 97   BB                STA    TRIGFG+1   Not 0.
 3880 84   01                ANDA #1           Pick off LS bit
 3882 1F   89                TFR    A,B        Save it in B
 3884 8B   80                ADDA #$80         Bump MS bit
 3886 97   98                STA    MATH0+7    and save in M0 exp
 3888 BD   3809              JSR    XFM0M2     Transfer M0 to M2
 388B 8E   42E7              LDX    #CONST2    Point to constant 2
 388E 5D                     TSTB              Check LS bit of exp
 388F 27   03                BEQ    SQR1       Exp is an even #
 3891 8E   42FF              LDX    #CONS2C    Odd. Point to constant 2C

                     * CALCULATE 1ST APPROXIMANT

 3894 9F   CD        SQR1    STX    CONSPT     Save Const-Ptr
 3896 BD   2F78              JSR    JSTIFY     Justify and add
 3899 BD   37F8              JSR    XFM0M1     Transfer M0 to M1
 389C 9E   CD                LDX    CONSPT     Point to next constant
 389E 30   08                LEAX   8,X
RBASIC by R. Jones   31 May 1988       4-7-4 TSC ASSEMBLER   PAGE 163

 38A0 BD   3938             JSR       LOADM0    Load into M0
 38A3 8E   00A2             LDX       #MATH1    Point into M1
 38A6 BD   30E7             JSR       DIVFP     Divide FP (M0/M1)
 38A9 9E   CD               LDX       CONSPT    Point to next constant
 38AB 30   88 10            LEAX      16,X
 38AE BD   2F78             JSR       JSTIFY    Justify and add

                     * NEWTON-RAPHSON ITERATION #1

 38B1 BD   37F8             JSR       XFM0M1    Transfer M0 to M1
 38B4 BD   382B             JSR       XFM2M0    Transfer M2 to M0
 38B7 8E   00A2             LDX       #MATH1
 38BA BD   30E7             JSR       DIVFP     Divide FP (M0/M1)
 38BD BD   2F78             JSR       JSTIFY    Justify and add
 38C0 0A   98               DEC       MATH0+7   /2

                     * ITERATION #2

 38C2 BD   37F8             JSR       XFM0M1    Transfer M0 to M1
 38C5 BD   382B             JSR       XFM2M0    Transfer M2 to M0
 38C8 8E   00A2             LDX       #MATH1
 38CB BD   30E7             JSR       DIVFP     Divide FP (M0/M1)
 38CE BD   2F78             JSR       JSTIFY    Justify and add
 38D1 0A   98               DEC       MATH0+7   /2

 38D3 96   BB               LDA       TRIGFG+1 Recover original exponent,
 38D5 80   80               SUBA      #$80     subtract 80,
 38D7 47                    ASRA               divide by 2,
 38D8 9B   98               ADDA      MATH0+7 add latest exponent,
 38DA 97   98               STA       MATH0+7 and save as final exp
 38DC 39                    RTS
                     *
                     * CALCULATE INVERSE OF M0 ie 1/M0
                     *
 38DD BD   37F8      INVM0 JSR      XFM0M1    Transfer M0 to M1
 38E0 8D   53                BSR    LODM01    Load M0 with Constant 1.0
 38E2 8E   00A2              LDX    #MATH1    Point to M1
 38E5 7E   30E7              JMP    DIVFP     Divide FP (M0/M1)
                     *
                     * CALCULATE PRECISE INTEGER A^B
                     *
 38E8 96   98        POWRAB LDA     MATH0+7 Get M0 exp
 38EA 27   36                BEQ    PWRAB6    =0. Go home
 38EC EC   84                LDD    0,X       Not 0. Get index
 38EE 27   45                BEQ    LODM01    =0. Load M0 with Constant 1.0
 38F0 34   02                PSHS A           Save exp
 38F2 2A   05                BPL    PWRAB1    +ve
 38F4 43                     COMA             -ve, so negate D
 38F5 53                     COMB
 38F6 C3   0001              ADDD #1
 38F9 DD   8F        PWRAB1 STD     MATH5+7 and save
 38FB BD   37F8              JSR    XFM0M1    Copy M0 in M1
 38FE 1A   01                ORCC #1          Set CARRY
 3900 09   90                ROL    MATH5+8 Bring MS bit to left
RBASIC by R. Jones   31 May 1988       4-7-4 TSC ASSEMBLER   PAGE 164

 3902 09   8F               ROL      MATH5+7
 3904 25   0E               BCS      PWRAB4    Got it
 3906 08   90        PWRAB2 ASL      MATH5+8   Not yet. Keep going
 3908 09   8F               ROL      MATH5+7
 390A 24   FA               BCC      PWRAB2    Not yet. Keep trying
 390C 20   06               BRA      PWRAB4

                     * FORM x-SQUARE

 390E 8E   0091      PWRAB3 LDX      #MATH0    Multiply by itself
 3911 BD   306E             JSR      MPYFP
 3914 08   90        PWRAB4 ASL      MATH5+8   Now process next bit
 3916 09   8F               ROL      MATH5+7
 3918 25   09               BCS      PWRAB7    1-bit. Do x-cube
 391A DC   8F               LDD      MATH5+7   0-bit. All done?
 391C 26   F0               BNE      PWRAB3    No. Continue
 391E A6   E0        PWRAB5 LDA      0,S+      Final check for inverse
 3920 2B   BB               BMI      INVM0     -ve. Invert it
 3922 39             PWRAB6 RTS                +ve. Go home

                     * FORM x-CUBE

 3923 DC   8F        PWRAB7 LDD     MATH5+7 All done?
 3925 27   F7                BEQ    PWRAB5    Yes, so leave
 3927 8E   0091              LDX    #MATH0    Form x-square
 392A BD   306E              JSR    MPYFP
 392D 8E   00A2              LDX    #MATH1    Now x-cube
 3930 BD   306E              JSR    MPYFP
 3933 20   DF                BRA    PWRAB4    and back for next bit
                     *
                     * LOAD M0 WITH CONSTANT 1.0
                     *
 3935 8E   4257      LODM01 LDX     #CONS1N Point to Constant 1N 1.0

                     * LOAD M0 WITH CONSTANT POINTED BY X

 3938 34   02        LOADM0 PSHS     A
 393A EC   84               LDD      0,X       Get Constant and
 393C DD   91               STD      MATH0     store in M0
 393E EC   02               LDD      2,X
 3940 DD   93               STD      MATH0+2
 3942 EC   04               LDD      4,X
 3944 DD   95               STD      MATH0+4
 3946 EC   06               LDD      6,X
 3948 DD   97               STD      MATH0+6
 394A 35   82               PULS     A,PC      All done

 394C 86   69        ERR69A LDA     #$69       Error-Code 105 (Negative or zero argument for LOG)
 394E 7E   0B6B              JMP    ERROR      Process error
                     *
                     * EXECUTE LOG STATEMENT
                     *
 3951 96   91        LOG     LDA    MATH0      Check sign of number
 3953 2B   F7                BMI    ERR69A     -ve. Error-Code 105
RBASIC by R. Jones   31 May 1988    4-7-4 TSC ASSEMBLER       PAGE 165

 3955 96   98               LDA    MATH0+7    +ve. Check exponent
 3957 27   F3               BEQ    ERR69A     =0. Error-Code 105
 3959 0F   BB               CLR    TRIGFG+1
 395B 81   81               CMPA   #$81       Not 0
 395D 25   05               BCS    LOG1       <81
 395F 4A                    DECA              >=81
 3960 C6   81               LDB    #$81       Put 81 into
 3962 20   04               BRA    LOG2

 3964 0C   BB        LOG1   INC    TRIGFG+1
 3966 C6   80               LDB    #$80       Put 80 into
 3968 D7   98        LOG2   STB    MATH0+7    M0 exponent
 396A 97   8F               STA    MATH5+7    M5 Exp
 396C BD   3809             JSR    XFM0M2     Transfer M0 to M2
 396F BD   37F8             JSR    XFM0M1     Transfer M0 to M1
 3972 96   A9               LDA    MATH1+7    Bump M1 exp
 3974 8B   03               ADDA   #3         by 3
 3976 97   A9               STA    MATH1+7
 3978 8E   00A2             LDX    #MATH1     Point to M1
 397B BD   3297             JSR    RANGE1
 397E DB   BB               ADDB   TRIGFG+1
 3980 C4   0E               ANDB   #$0E       Mask high nybble and make into even #
 3982 D7   BB               STB    TRIGFG+1
 3984 D7   A3               STB    MATH1+1
 3986 BD   31F5             JSR    INTBF1     Integer to FP
 3989 96   A9               LDA    MATH1+7    Reduce M1 exp
 398B 80   03               SUBA   #3         by 3
 398D 97   A9               STA    MATH1+7
 398F BD   2F78             JSR    JSTIFY     Justify and add
 3992 BD   381A             JSR    XFM0M3     Transfer M0 to M3
 3995 BD   382B             JSR    XFM2M0     Transfer M2 to M0
 3998 8E   00A2             LDX    #MATH1     Point to M1
 399B 96   97               LDA    MATH0+6    Get LS byte of M0 mant
 399D 84   F0               ANDA   #$F0       and mask LS nybble
 399F 97   97               STA    MATH0+6
 39A1 A6   06               LDA    6,X        Similarly with M1
 39A3 84   F0               ANDA   #$F0
 39A5 A7   06               STA    6,X
 39A7 BD   2F54             JSR    SUBTCT     Subtract 2 integers
 39AA 8E   00B2             LDX    #MATH3     Point to M3
 39AD BD   30E7             JSR    DIVFP      Divide FP (M0/M3)
 39B0 BD   3809             JSR    XFM0M2     Transfer M0 to M2
 39B3 8E   00AA             LDX    #MATH2     Point to M2
 39B6 BD   306E             JSR    MPYFP      Multiply FP numbers
 39B9 BD   37F8             JSR    XFM0M1     Transfer M0 to M1
 39BC 8E   4347             LDX    #CONST4    Point to Constant 4
 39BF C6   02               LDB    #2         Count of 2
 39C1 8D   3C               BSR    APPROX     Find first approximant
 39C3 8E   00A2             LDX    #MATH1     Point to M1
 39C6 BD   306E             JSR    MPYFP      Multiply FP numbers
 39C9 8E   00AA             LDX    #MATH2     Point to M2
 39CC BD   306E             JSR    MPYFP      Multiply FP numbers
 39CF A6   07               LDA    7,X        Get M0 exp
 39D1 27   05               BEQ    LOG3       =0
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 166

 39D3 6C   07               INC    7,X        Not 0. Bump it
 39D5 BD   2F78             JSR    JSTIFY     Justify and add
 39D8 D6   BB        LOG3   LDB    TRIGFG+1   Get offset
 39DA C0   04               SUBB   #4         -4
 39DC 58                    ASLB              *4
 39DD 58                    ASLB
 39DE 8E   4367             LDX    #CONS4D    Point to required constant
 39E1 3A                    ABX               and
 39E2 BD   2F54             JSR    SUBTCT     subtract 2 integers
 39E5 BD   3809             JSR    XFM0M2     Transfer M0 to M2
 39E8 4F                    CLRA
 39E9 D6   8F               LDB    MATH5+7
 39EB 83   0080             SUBD   #$80
 39EE DD   91               STD    MATH0      Store in MS byte of M0
 39F0 BD   31F2             JSR    INTBFP     Conv to FP binary
 39F3 8E   4367             LDX    #CONS4D    Point to Constant 4D
 39F6 BD   306E             JSR    MPYFP      Multiply FP numbers
 39F9 8E   00AA             LDX    #MATH2     Point to M2
 39FC 7E   2F78             JMP    JSTIFY     Justify and add
                     *
                     * FIND FIRST APPROXIMANT TO A FUNCTION BY CHAINING THROUGH
                     * CONSTANT TABLE 'B' TIMES, DIVIDING, AND ADDING 'B-1' TIMES
                     *
 39FF 34   04        APPROX PSHS B
 3A01 9F   CD                STX    CONSPT    Save Cons-Ptr
 3A03 BD   3938              JSR    LOADM0    Load into M0
 3A06 20   09                BRA    APROX2

 3A08 9E   CD        APROX1 LDX     CONSPT    Point to next constant
 3A0A 30   08                LEAX 8,X
 3A0C 9F   CD                STX    CONSPT
 3A0E BD   2F78              JSR    JSTIFY    Justify and add
 3A11 8E   00A2      APROX2 LDX     #MATH1    Point to M1
 3A14 BD   2F78              JSR    JSTIFY    Justify and add
 3A17 BD   381A              JSR    XFM0M3    Transfer M0 to M3
 3A1A 9E   CD                LDX    CONSPT    Point to next constant
 3A1C 30   08                LEAX 8,X
 3A1E 9F   CD                STX    CONSPT
 3A20 BD   3938              JSR    LOADM0    Load into M0
 3A23 8E   00B2              LDX    #MATH3    Point to M3
 3A26 BD   30E7              JSR    DIVFP     Divide FP (M0/M3)
 3A29 6A   E4                DEC    0,S       Dec count
 3A2B 26   DB                BNE    APROX1    Not 0. Repeat
 3A2D 35   84                PULS B,PC        All done
                     *
                     * CALCULATE A^B
                     *
 3A2F 96 98          APOWRB LDA     MATH0+7   Get M0 exp
 3A31 27 6F                  BEQ    EXP2      =0. Go home
 3A33 A6 07                  LDA    7,X       Not 0. Get other exp
 3A35 1027 FEFC              LBEQ LODM01      =0. Load M0 with Constant 1.0
 3A39 34 10                  PSHS X           Not 0. Save pointer
 3A3B BD 3951                JSR    LOG       Calculate LOG of M0
 3A3E 35 10                  PULS X           Recover pointer
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER    PAGE 167

 3A40 BD   306E              JSR    MPYFP      Multiply FP numbers, and do antilog
                     *
                     * EXECUTE EXP STATEMENT
                     *
 3A43 8E   43BF      EXP     LDX    #CONS5E    Point to Constant 5E
 3A46 BD   306E              JSR    MPYFP      Multiply FP numbers
 3A49 BD   3809              JSR    XFM0M2     Transfer M0 to M2
 3A4C BD   3B78              JSR    RNDINT     Round and integerise in M0
 3A4F 96   91                LDA    MATH0
 3A51 88   80                EORA #$80         Toggle sign
 3A53 97   91                STA    MATH0      of M0
 3A55 8E   00AA              LDX    #MATH2     Point to M2
 3A58 BD   2F78              JSR    JSTIFY     Justify and add
 3A5B BD   3809              JSR    XFM0M2     Transfer M0 to M2
 3A5E 8E   00AA              LDX    #MATH2     Point to M2
 3A61 BD   306E              JSR    MPYFP      Multiply FP numbers
 3A64 BD   37F8              JSR    XFM0M1     Transfer M0 to M1
 3A67 8E   4397              LDX    #CONST5    Point to Constant 5
 3A6A C6   02                LDB    #2         Count of 2
 3A6C 8D   91                BSR    APPROX     Find first approximant
 3A6E 8E   00A2              LDX    #MATH1     Point to M1
 3A71 BD   306E              JSR    MPYFP      Multiply FP numbers
 3A74 8E   43B7              LDX    #CONS5D    Point to Constant 5D
 3A77 BD   2F78              JSR    JSTIFY     Justify and add
 3A7A 8E   00AA              LDX    #MATH2     Point to M2
 3A7D BD   2F54              JSR    SUBTCT     Subtract
 3A80 6D   07                TST    7,X        Test M2 exp
 3A82 27   02                BEQ    EXP1       =0
 3A84 6C   07                INC    7,X        Not 0. Bump it
 3A86 BD   37F8      EXP1    JSR    XFM0M1     Transfer M0 to M1
 3A89 BD   382B              JSR    XFM2M0     Transfer M2 to M0
 3A8C 8E   00A2              LDX    #MATH1     Point to M1
 3A8F BD   30E7              JSR    DIVFP      Divide FP (M0/M1)
 3A92 8E   4257              LDX    #CONS1N    Point to Constant 1N 1.0
 3A95 BD   2F78              JSR    JSTIFY     Justify and add
 3A98 D6   98                LDB    MATH0+7    Get M0 exp
 3A9A 4F                     CLRA
 3A9B D3   8F                ADDD MATH5+7
 3A9D 4D                     TSTA
 3A9E 26   03                BNE    ERR66A     Not 0. Error-Code 102
 3AA0 D7   98                STB    MATH0+7    =0. Save in M0 exp
 3AA2 39             EXP2    RTS

 3AA3 86   66        ERR66A LDA    #$66        Error-Code 102 (Argument too large)
 3AA5 7E   0B6B             JMP    ERROR       Process error
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 168


                     *                                       *
                     * INTEGER           A RI TH M E T IC *
                     *                                       *
                     *
                     * ADD TWO INTEGERS
                     *
 3AA8 DC   91        INTADD LDD     MATH0    Get 2 MS bytes of M0
 3AAA E3   84                ADDD 0,X
 3AAC DD   91                STD    MATH0    and save in M0
 3AAE 28   56                BVC    INTMP8   Overflow clear. Go home

 3AB0 7E   3069      ERR65D JMP     ERR65A    Error-Code 101 (0ver/Underflow in FP op)
                     *
                     * SUBTRACT TWO INTEGERS
                     *
 3AB3 DC   91        INTSUB LDD     MATH0     Get 2 MS bytes of M0
 3AB5 A3   84                SUBD 0,X
 3AB7 DD   91                STD    MATH0     and save in M0
 3AB9 29   F5                BVS    ERR65D    Error-Code 101
 3ABB 39                     RTS
                     *
                     * MULTIPLY TWO UNSIGNED INTEGERS
                     *
 3ABC 0F   98        MPY16B CLR     MATH0+7 Clear Nbr-sign
 3ABE EC   84                LDD    0,X       Get 2 bytes pointed to
 3AC0 DD   95                STD    MATH0+4 and save in M0
 3AC2 20   06                BRA    INTMP1    and go multiply
                     *
                     * MULTIPLY TWO SIGNED INTEGERS. RESULT IN M0
                     *
 3AC4 DC   91        INTMPY LDD     MATH0     Get Integer 1
 3AC6 27   3E                BEQ    INTMP8    =0. Go home
 3AC8 8D   3D                BSR    SIGNS     Compute resultant sign
 3ACA 27   1A        INTMP1 BEQ     INTMP4
 3ACC 96   91                LDA    MATH0     Get MS byte of M0
 3ACE 27   0E                BEQ    INTMP3    =0.
 3AD0 D6   95                LDB    MATH0+4 Not 0. Check multiplier
 3AD2 26   DC                BNE    ERR65D    Not 0. Error-Code 101
 3AD4 D6   96                LDB    MATH0+5 =0. Get LS byte of multiplier
 3AD6 3D             INTMP2 MUL               and multiply
 3AD7 4D                     TSTA             Check MS byte of result
 3AD8 26   D6                BNE    ERR65D    Not 0. Error
 3ADA 34   04                PSHS B           =0. Save partial result
 3ADC 20   10                BRA    INTMP6

 3ADE 96   95        INTMP3 LDA    MATH0+4   Get multiplier
 3AE0 27   0A               BEQ    INTMP5    =0
 3AE2 D6   92               LDB    MATH0+1   Not 0. Get LS byte of M0
 3AE4 26   F0               BNE    INTMP2    Not 0. Go multiply
 3AE6 CC   0000      INTMP4 LDD    #0        Set result to 0
 3AE9 DD   91               STD    MATH0
 3AEB 39                    RTS
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER     PAGE 169

 3AEC 34   02        INTMP5 PSHS A            Stack 0
 3AEE 96   92        INTMP6 LDA     MATH0+1 Get LS byte of M0
 3AF0 D6   96                LDB    MATH0+5 and multiply by
 3AF2 3D                     MUL              LS byte of multiplier
 3AF3 AB   E0                ADDA 0,S+        Combine partial results
 3AF5 2B   B9                BMI    ERR65D    Error-Code 101
 3AF7 DD   91                STD    MATH0
 3AF9 96   98        INTMP7 LDA     MATH0+7 Get Nbr-sign
 3AFB 2A   09                BPL    INTMP8    +ve. Go home
 3AFD DC   91                LDD    MATH0     -ve, so negate it
 3AFF 43                     COMA
 3B00 53                     COMB
 3B01 C3   0001              ADDD #1
 3B04 DD   91                STD    MATH0     Save in M0
 3B06 39             INTMP8 RTS
                     *
                     * COMPUTE SIGNS AND ADJUST MANTISSAS FOR MULTIPLY/DIVIDE.
                     * LIKE SIGNS = + UNLIKE = -
                     *
 3B07 97   98        SIGNS STA      MATH0+7 Save sign in Nbr-sign
 3B09 2A   07                BPL    SIGNS1    +ve
 3B0B 43                     COMA             -ve, so negate it
 3B0C 53                     COMB
 3B0D C3   0001              ADDD #1
 3B10 DD   91                STD    MATH0     Save back
 3B12 EC   84        SIGNS1 LDD     0,X       Get other's sign-byte
 3B14 2A   07                BPL    SIGNS2    +ve
 3B16 43                     COMA             -ve, so negate
 3B17 53                     COMB
 3B18 C3   0001              ADDD #1
 3B1B 03   98                COM    MATH0+7 and complement Nbr-sign
 3B1D DD   95        SIGNS2 STD     MATH0+4 Save in M0
 3B1F 39                     RTS

 3B20 7E   30E2      ERR67B JMP     ERR67A    Error-Code 103 (Division by 0)
                     *
                     * DIVIDE TWO SIGNED INTEGERS (M0 / X)
                     *
 3B23 DC   91        INTDIV LDD     MATH0     Get Integer 1
 3B25 27   0F                BEQ    INTDV2    =0. Go home
 3B27 97   99                STA    MATH0+8 Save M0-sign
 3B29 8D   DC                BSR    SIGNS     Compute resultant sign
 3B2B 27   F3                BEQ    ERR67B    =0. Error-Code 103

                     * DIVIDE TWO UNSIGNED INTEGERS
                     * QUOTIENT IN M0. RESIDUE IN 'REMNDR'

 3B2D DC 91          INTDV1 LDD    MATH0     Get dividend
 3B2F 27 05                 BEQ    INTDV2
 3B31 1093 95               CMPD   MATH0+4   > divisor?
 3B34 24 08                 BCC    INTDV3    Yes
 3B36 DD FF          INTDV2 STD    REMNDR    No, so save for MOD
 3B38 CC 0000               LDD    #0        also set quotient to 0
 3B3B DD 91                 STD    MATH0
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER      PAGE 170

 3B3D 39                    RTS

 3B3E C6   11        INTDV3 LDB    #17          Count of 17
 3B40 D7   97               STB    MATH0+6
 3B42 CC   0000             LDD    #0
 3B45 DD   FF               STD    REMNDR       Set remainder to 0
 3B47 0A   97        INTDV4 DEC    MATH0+6      Dec count
 3B49 08   92               ASL    MATH0+1      Prepare for division
 3B4B 09   91               ROL    MATH0        by bringing a 1-bit
 3B4D 24   F8               BCC    INTDV4       to left-hand side

                     * NOW DO ACTUAL DIVISION

 3B4F 79   0100      INTDV5 ROL    REMNDR+1     Form remainder
 3B52 09   FF               ROL    REMNDR
 3B54 DC   FF               LDD    REMNDR       Get remainder
 3B56 93   95               SUBD   MATH0+4      Subtract divisor
 3B58 25   04               BCS    INTDV6
 3B5A DD   FF               STD    REMNDR       Save new remainder
 3B5C 0C   92               INC    MATH0+1      and form quotient
 3B5E 0A   97        INTDV6 DEC    MATH0+6      Dec count
 3B60 27   06               BEQ    INTDV7       All done. Check signs
 3B62 08   92               ASL    MATH0+1      Multiply quotient by 2
 3B64 09   91               ROL    MATH0
 3B66 20   E7               BRA    INTDV5

 3B68 0D   99        INTDV7 TST    MATH0+8      Check M0-sign
 3B6A 2A   8D               BPL    INTMP7       +ve. Adjust sign of quotient
 3B6C DC   FF               LDD    REMNDR       Get residue
 3B6E 43                    COMA                -ve. and adjust it
 3B6F 53                    COMB
 3B70 C3   0001             ADDD   #1
 3B73 DD   FF               STD    REMNDR       and store it
>3B75 7E   3AF9             JMP    INTMP7       Adjust sign of quotient
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 171


                     *                                                  *
                     * TRIGONOMETRI C                F U NC T IO N S *
                     *                                                  *
                     *
                     * ROUND AND INTEGERISE NUMBER IN M0
                     *
 3B78 96   91        RNDINT LDA     MATH0     Get M0 MS byte
 3B7A 97   8F                STA    MATH5+7 and save it
 3B7C 84   7F                ANDA #$7F        mask sign bit
 3B7E 97   91                STA    MATH0     and save back
 3B80 8E   41EF              LDX    #CONST1 Point to 0.5
 3B83 BD   2F78              JSR    JSTIFY    Justify and add
 3B86 BD   3294              JSR    CRANGE    Check number range and normalise it
 3B89 DC   91                LDD    MATH0     Get 2 MS bytes of M0
 3B8B 0D   8F                TST    MATH5+7
 3B8D 2A   05                BPL    RDINT1    +ve
 3B8F 43                     COMA             -ve, so negate it
 3B90 53                     COMB
 3B91 C3   0001              ADDD #1
 3B94 DD   8F        RDINT1 STD     MATH5+7
 3B96 BD   31F2              JSR    INTBFP    Conv to FP binary
 3B99 96   8F                LDA    MATH5+7
 3B9B 84   80                ANDA #$80        Pick off MS bit
 3B9D 9A   91                ORA    MATH0     and OR with
 3B9F 97   91                STA    MATH0     MS byte of M0
 3BA1 39                     RTS
                     *
                     * COMPUTE QUADRANT (RADIANS MOD PI/2)
                     * RESIDUE IN M2. RESIDUE SQUARED IN M0 AND M1
                     *
 3BA2 BD   381A      QUDRNT JSR     XFM0M3    Transfer M0 to M3
 3BA5 8E   43C7              LDX    #CONST6 Point to Constant 6 PI/2
 3BA8 BD   30E7              JSR    DIVFP     Divide FP (M0/Cons6)
 3BAB 8D   CB                BSR    RNDINT    Round and integerise in M0
 3BAD 96   91                LDA    MATH0     Toggle sign
 3BAF 88   80                EORA #$80        of M0
 3BB1 97   91                STA    MATH0
 3BB3 8E   43C7              LDX    #CONST6 Point to Constant 6 PI/2
 3BB6 BD   306E              JSR    MPYFP     Multiply FP numbers
 3BB9 8E   00B2              LDX    #MATH3    Point to M3
 3BBC BD   2F78              JSR    JSTIFY    Justify and add
 3BBF BD   3809              JSR    XFM0M2    Transfer M0 to M2
 3BC2 8E   00AA              LDX    #MATH2    Point to M2
 3BC5 BD   306E              JSR    MPYFP     Multiply FP numbers
 3BC8 7E   37F8              JMP    XFM0M1    Transfer M0 to M1
                     *
                     * EXECUTE SIN STATEMENT
                     *
 3BCB 0F   BA        SIN     CLR    TRIGFG    Clear for SINE
 3BCD 20   04                BRA    COS1      Do SINE
                     *
                     * EXECUTE COS STATEMENT
                     *
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER     PAGE 172

 3BCF 86   01        COS    LDA    #1        Clear. Do COSINE
 3BD1 97   BA               STA    TRIGFG
 3BD3 F6   48B6      COS1   LDB    DEGSW     Radians?
 3BD6 27   06               BEQ    COS2      Yes
 3BD8 8E   449F             LDX    #RADIAN   No, so convert
 3BDB BD   30E7             JSR    DIVFP
 3BDE 8D   C2        COS2   BSR    QUDRNT    Compute quadrant
 3BE0 D6   BA               LDB    TRIGFG
 3BE2 DB   90               ADDB   MATH5+8
 3BE4 D7   90               STB    MATH5+8
 3BE6 8E   4407             LDX    #CONS6H   Point to Constant 6H
 3BE9 C5   01               BITB   #1        Test bit 0
 3BEB 26   03               BNE    COS3
 3BED 8E   43D7             LDX    #CONS6B   Point to Constant 6B
 3BF0 C6   03        COS3   LDB    #3        Count of 3
 3BF2 BD   39FF             JSR    APPROX    Find first approximant
 3BF5 8E   00A2             LDX    #MATH1    Point to M1
 3BF8 BD   306E             JSR    MPYFP     Multiply FP numbers
 3BFB 8E   4257             LDX    #CONS1N   Point to Constant 1N 1.0
 3BFE BD   2F78             JSR    JSTIFY    Justify and add
 3C01 96   90               LDA    MATH5+8
 3C03 85   01               BITA   #1        Test bit 0
 3C05 26   08               BNE    COS4
 3C07 8E   00AA             LDX    #MATH2    Point to M2
 3C0A BD   306E             JSR    MPYFP     Multiply FP numbers
 3C0D 96   90               LDA    MATH5+8
 3C0F 85   02        COS4   BITA   #2        Test bit 1
 3C11 27   0A               BEQ    COS5      =0. Go home
 3C13 96   98               LDA    MATH0+7   Not 0, so test M0 exp
 3C15 27   06               BEQ    COS5      =0. Go home
 3C17 96   91               LDA    MATH0     Not 0, so toggle
 3C19 88   80               EORA   #$80      sign bit
 3C1B 97   91               STA    MATH0     of M0
 3C1D 39             COS5   RTS
                     *
                     * EXECUTE ARCCOS STATEMENT
                     *
 3C1E 0F   32        ARCCOS CLR     ARCFLG    Reset Arc-Flag for COSINE

                     * EXECUTE ARCSIN STATEMENT

 3C20 96   91        ARCSIN LDA    MATH0     Get sign-byte
 3C22 84   80               ANDA   #$80      Pick off sign
 3C24 34   02               PSHS   A         and save it
 3C26 96   98               LDA    MATH0+7   Check exponent
 3C28 26   08               BNE    ARCSN1    Not 0
 3C2A 8E   43C7             LDX    #CONST6   =0. Point to PI/2
 3C2D BD   3938             JSR    LOADM0    and load it
 3C30 20   2B               BRA    ARCSN2    then process it

 3C32 8E   0091      ARCSN1 LDX    #MATH0
 3C35 BD   306E             JSR    MPYFP     x-squared
 3C38 BD   37F8             JSR    XFM0M1
 3C3B 96   91               LDA    MATH0     Get sign byte
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER       PAGE 173

 3C3D 88   80               EORA   #$80        and negate it
 3C3F 97   91               STA    MATH0
 3C41 8E   4257             LDX    #CONS1N     Point to 1.0
 3C44 BD   2F78             JSR    JSTIFY      Justify and subtract
 3C47 96   91               LDA    MATH0       Check sign
 3C49 2B   39               BMI    ERR60A      -ve. Out of range
 3C4B 8E   00A2             LDX    #MATH1      Point to M1
 3C4E BD   30E7             JSR    DIVFP
 3C51 BD   3876             JSR    SQR         Extract square-root
 3C54 7C   48B7             INC    ARCSNF      Set Flag
 3C57 BD   3CF1             JSR    ATN0        Compute ARCTAN
 3C5A 7F   48B7             CLR    ARCSNF      Clear Flag
 3C5D 96   32        ARCSN2 LDA    ARCFLG      ARCSIN or ARCCOS?
 3C5F 27   0E               BEQ    ARCSN3      Do ARCCOS
 3C61 0F   32               CLR    ARCFLG      Do ARCSIN
 3C63 96   91               LDA    MATH0       Get sign byte of argument
 3C65 88   80               EORA   #$80        Toggle it
 3C67 97   91               STA    MATH0       and save back
 3C69 8E   43C7             LDX    #CONST6     Point to PI/2
 3C6C BD   2F78             JSR    JSTIFY      Justify and add
 3C6F A6   E0        ARCSN3 LDA    0,S+        Recover sign
 3C71 2A   06               BPL    ARCSN4      +ve
 3C73 8E   43CF             LDX    #CONS6A     -ve. Point to PI
 3C76 BD   2F78             JSR    JSTIFY      Justify and add
 3C79 B6   48B6      ARCSN4 LDA    DEGSW       Radians?
 3C7C 27   9F               BEQ    COS5        Yes. Go home
 3C7E 8E   449F             LDX    #RADIAN     No. Convert
 3C81 7E   306E             JMP    MPYFP       to degrees

 3C84 86   60        ERR60A LDA     #$60       Error-Code 96. Bad argument in ARC
 3C86 7E   0B6B              JMP    ERROR      Process error
                     *
                     * EXECUTE TAN STATEMENT
                     *
 3C89 D6   32        TAN     LDB    ARCFLG     Check for Arc
 3C8B 26   5F                BNE    ARCTAN     Set
 3C8D F6   48B6              LDB    DEGSW      Radians?
 3C90 27   06                BEQ    TAN1       Yes
 3C92 8E   449F              LDX    #RADIAN    No. Convert
 3C95 BD   30E7              JSR    DIVFP
 3C98 BD   3BA2      TAN1    JSR    QUDRNT     Compute quadrant
 3C9B 8E   4317              LDX    #CONST3    Point to Constant 3
 3C9E C6   02                LDB    #2         Count of 2
 3CA0 BD   39FF              JSR    APPROX     Find first approximant
 3CA3 8E   4337              LDX    #CONS3D    Point to next constant
 3CA6 BD   2F78              JSR    JSTIFY     Justify and add
 3CA9 8E   00A2              LDX    #MATH1     Point to M1
 3CAC BD   306E              JSR    MPYFP      Multiply FP numbers
 3CAF 8E   433F              LDX    #CONS3E    Point to next constant
 3CB2 BD   2F78              JSR    JSTIFY     Justify and add
 3CB5 8E   00A2              LDX    #MATH1     Point to M1 again
 3CB8 BD   306E              JSR    MPYFP      Multiply FP numbers
 3CBB 8E   4257              LDX    #CONS1N    Point to Constant 1N 1.0
 3CBE BD   2F78              JSR    JSTIFY     Justify and add
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 174

 3CC1 8E 00AA               LDX    #MATH2    Point to M2
 3CC4 BD 306E               JSR    MPYFP     Multiply FP numbers
 3CC7 96 90                 LDA    MATH5+8
 3CC9 85 01                 BITA   #1        Test bit 0
 3CCB 27 1E                 BEQ    TAN2      =0. 45 deg. Go home
 3CCD 96 91                 LDA    MATH0     Not 0. Get MS byte of M0
 3CCF 88 80                 EORA   #$80      and toggle sign bit
 3CD1 97 91                 STA    MATH0     then store back
 3CD3 96 98                 LDA    MATH0+7   Get M0 exp
 3CD5 1026 FC04             LBNE   INVM0     Not 0. > 45 deg. Calculate 1/M0

                     * ANGLE < 45 DEGRESS

 3CD9 43                    COMA             =0
 3CDA 4A                    DECA
 3CDB 97   98               STA    MATH0+7   Save back
 3CDD 03   91               COM    MATH0     Complement M0 mantissa
 3CDF 03   92               COM    MATH0+1
 3CE1 03   93               COM    MATH0+2
 3CE3 03   94               COM    MATH0+3
 3CE5 03   95               COM    MATH0+4
 3CE7 03   96               COM    MATH0+5
 3CE9 03   97               COM    MATH0+6
 3CEB 39             TAN2   RTS
                     *
                     * EXECUTE ARCTAN FUNCTION
                     *
 3CEC 0F   32        ARCTAN CLR     ARCFLG    Reset Flag
 3CEE 7F   48B7              CLR    ARCSNF    Clear ArcSin-Flag
 3CF1 96   98        ATN0    LDA    MATH0+7 Get M0 exponent
 3CF3 27   F6                BEQ    TAN2      =0. Go home
 3CF5 0F   BB                CLR    TRIGFG+1 Not 0
 3CF7 D6   91                LDB    MATH0     Get M0 MS byte
 3CF9 D7   BA                STB    TRIGFG    and save
 3CFB C4   7F                ANDB #$7F        Strip sign bit
 3CFD D7   91                STB    MATH0     and store back
 3CFF BD   3809              JSR    XFM0M2    Transfer M0 to M2
 3D02 81   81                CMPA #$81        45-degrees?
 3D04 25   4B                BCS    ATN3      <45

                     * PROCESS ANGLE >= 45-DEGREES
                     * NUMBER OF 1/8s IN M5+8

 3D06 BD   3935             JSR    LODM01    Load M0 with Constant 1.0
 3D09 C6   84               LDB    #$84      Set M0 exp
 3D0B D7   98               STB    MATH0+7   to 84
 3D0D 8E   00AA             LDX    #MATH2    Point to M2
 3D10 BD   30E7             JSR    DIVFP     Divide FP (M0/M2)
 3D13 BD   3B78             JSR    RNDINT    Round and integerise in M0
 3D16 D6   98               LDB    MATH0+7   Check M0 exp
 3D18 27   04               BEQ    ATN1      =0
 3D1A C0   03               SUBB   #3        Not 0. Reduce it
 3D1C D7   98               STB    MATH0+7   by 3
 3D1E BD   37F8      ATN1   JSR    XFM0M1    Transfer M0 to M1
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 175

 3D21 8E   00AA             LDX    #MATH2     Point to M2
 3D24 BD   2F78             JSR    JSTIFY     Justify and add
 3D27 BD   381A             JSR    XFM0M3     Transfer M0 to M3
 3D2A BD   382B             JSR    XFM2M0     Transfer M2 to M0
 3D2D 8E   00A2             LDX    #MATH1     Point to M1
 3D30 BD   306E             JSR    MPYFP      Multiply FP numbers
 3D33 96   91               LDA    MATH0      Toggle sign
 3D35 88   80               EORA   #$80       of M0
 3D37 97   91               STA    MATH0
 3D39 8E   4257             LDX    #CONS1N    Point to Constant 1N   1.0
 3D3C BD   2F78             JSR    JSTIFY     Justify and add
 3D3F 96   98               LDA    MATH0+7    Get M0 exp
 3D41 81   60               CMPA   #$60
 3D43 22   02               BHI    ATN2       >60
 3D45 0F   98               CLR    MATH0+7    <=60. Clear it
 3D47 8E   00B2      ATN2   LDX    #MATH3     Point to M3
 3D4A BD   30E7             JSR    DIVFP      Divide FP (M0/M3)
 3D4D 03   BB               COM    TRIGFG+1
 3D4F 20   38               BRA    ATN6
                     *
                     * PROCESS ANGLE < 45-DEGREES
                     * NUMBER OF 1/8s IN M5+8
                     *
 3D51 8B   03        ATN3    ADDA #3
 3D53 97   98                STA    MATH0+7 Store in M0 exp
 3D55 BD   3B78              JSR    RNDINT    Round and integerise in M0
 3D58 96   98                LDA    MATH0+7 Get M0 exp
 3D5A 27   04                BEQ    ATN4      =0
 3D5C 80   03                SUBA #3          Not 0, so reduce
 3D5E 97   98                STA    MATH0+7 it by 3
 3D60 BD   37F8      ATN4    JSR    XFM0M1    Transfer M0 to M1
 3D63 8E   00AA              LDX    #MATH2    Point to M2
 3D66 BD   306E              JSR    MPYFP     Multiply FP numbers
 3D69 8E   4257              LDX    #CONS1N Point to Constant 1N 1.0
 3D6C BD   2F78              JSR    JSTIFY    Justify and add
 3D6F BD   381A              JSR    XFM0M3    Transfer M0 to M3
 3D72 BD   382B              JSR    XFM2M0    Transfer M2 to M0
 3D75 8E   00A2              LDX    #MATH1    Point to M1
 3D78 BD   2F54              JSR    SUBTCT    Subtract 2 integers
 3D7B 96   98                LDA    MATH0+7 Get M0 exp
 3D7D 81   60                CMPA #$60
 3D7F 22   02                BHI    ATN5      >60
 3D81 0F   98                CLR    MATH0+7 <=60. Clear it
 3D83 8E   00B2      ATN5    LDX    #MATH3    Point to M3
 3D86 BD   30E7              JSR    DIVFP     Divide FP (M0/M3)

                     * PROCESS ALL ANGLES

 3D89 BD   3809      ATN6   JSR    XFM0M2     Transfer M0 to M2
 3D8C 8E   00AA             LDX    #MATH2     Point to M2
 3D8F BD   306E             JSR    MPYFP      Multiply FP numbers
 3D92 BD   37F8             JSR    XFM0M1     Transfer M0 to M1
 3D95 8E   4437             LDX    #CONST7    Point to Constant 7
 3D98 C6   01               LDB    #1         Count of 1
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 176

 3D9A BD   39FF             JSR    APPROX     Find first approximant
 3D9D 8E   4447             LDX    #CONS7B    Point to next constant
 3DA0 BD   2F78             JSR    JSTIFY     Justify and add
 3DA3 8E   00A2             LDX    #MATH1     Point to M1
 3DA6 BD   306E             JSR    MPYFP      Multiply FP numbers
 3DA9 8E   444F             LDX    #CONS7C    Point to next constant
 3DAC BD   2F78             JSR    JSTIFY     Justify and add
 3DAF 8E   00A2             LDX    #MATH1     Point to M1
 3DB2 BD   306E             JSR    MPYFP      Multiply FP numbers
 3DB5 8E   00AA             LDX    #MATH2     Point to M2
 3DB8 BD   306E             JSR    MPYFP      Multiply FP numbers
 3DBB BD   2F78             JSR    JSTIFY     Justify and add

                     * COMPENSATE FOR RANGE-COMPRESSION

 3DBE D6   90               LDB    MATH5+8
 3DC0 58                    ASLB              * 8
 3DC1 58                    ASLB
 3DC2 58                    ASLB
 3DC3 8E   4457             LDX    #CONS7D    Point to Constant 7D
 3DC6 3A                    ABX               and add B to this addr
 3DC7 BD   2F78             JSR    JSTIFY     Justify and add
 3DCA 96   BB               LDA    TRIGFG+1
 3DCC 27   10               BEQ    ATN8       =0
 3DCE 96   98               LDA    MATH0+7    Not 0. Test M0 exp
 3DD0 27   06               BEQ    ATN7       =0
 3DD2 96   91               LDA    MATH0      Not 0. Toggle
 3DD4 88   80               EORA   #$80       sign bit
 3DD6 97   91               STA    MATH0      of M0
 3DD8 8E   43C7      ATN7   LDX    #CONST6    Point to PI/2
 3DDB BD   2F78             JSR    JSTIFY     Justify and add
 3DDE 96   98        ATN8   LDA    MATH0+7    Test M0 exp
 3DE0 27   10               BEQ    ATN9       =0. Go home
 3DE2 96   BA               LDA    TRIGFG     Not 0. Get sign of original exp
 3DE4 84   80               ANDA   #$80       pick off sign bit
 3DE6 98   91               EORA   MATH0      EOR it with
 3DE8 97   91               STA    MATH0      M0 sign byte
 3DEA B6   48B7             LDA    ARCSNF     Test Flag
 3DED 26   03               BNE    ATN9       Set. Doing ArcSin, so return
 3DEF 7E   3C79             JMP    ARCSN4     Check if degrees or radians

 3DF2 39             ATN9   RTS
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 177


                     *
                     * PROMPTS AND MESSAGES
                     *
 3DF3 20 61 74 20    ATLINE FCC     " at Line ",EOT
 3DF7 4C 69 6E 65
 3DFB 20 04
 3DFD 42 52 45 41    BRKMS   FCC   "BREAK",EOT
 3E01 4B 04
 3E03 20 5E 58 04    CTLXMS FCC    " ^X",EOT
 3E07 7D             DUMYCR FCB    $7D
 3E08 20 6E 6F 74    LASTMS FCC    " not deleted. FINAL LINE!",BELL,EOT
 3E0C 20 64 65 6C
 3E10 65 74 65 64
 3E14 2E 20 46 49
 3E18 4E 41 4C 20
 3E1C 4C 49 4E 45
 3E20 21 07 04
 3E23 20 5B 20 04    LBRKT FCC     " [ ",EOT
 3E27 2A 20 44 65    PDELMS FCC    "* Delete? (Y/N/CR) ",EOT
 3E2B 6C 65 74 65
 3E2F 3F 20 28 59
 3E33 2F 4E 2F 43
 3E37 52 29 20 04
 3E3B 3F 20 04       QUERYM FCC    "? ",EOT
 3E3E 20 5D 20 04    RBRKT FCC     " ] ",EOT
 3E42 52 42 41 53    READYM FCC    "RBASIC",EOT
 3E46 49 43 04
 3E49 53 54 4F 50    STOPMS FCC    "STOP",EOT
 3E4D 04
                     *
                     * TABLE OF MONTHS
                     *
 3E4E 4A 61 6E 46    MNTHTB FCC     "JanFebMarAprMayJunJulAug"
 3E52 65 62 4D 61
 3E56 72 41 70 72
 3E5A 4D 61 79 4A
 3E5E 75 6E 4A 75
 3E62 6C 41 75 67
 3E66 53 65 70 4F            FCC   "SepOctNovDec"
 3E6A 63 74 4E 6F
 3E6E 76 44 65 63
                     *
                     * VECTOR TABLE FOR COMMANDS
                     *
 3E72 0900           CMDVT FDB      SAVE
 3E74 0938                   FDB    LOAD
 3E76 0659                   FDB    MON
 3E78 0768                   FDB    PDEL
 3E7A 0697                   FDB    LIST
 3E7C 0666                   FDB    NEW
 3E7E 0203                   FDB    RUN
 3E80 0674                   FDB    CLEAR
 3E82 067F                   FDB    CONT
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 178

 3E84 0A4A                  FDB    COMPIL
 3E86 068F                  FDB    EDIT
 3E88 07C1                  FDB    SCALE
 3E8A 092F                  FDB    APPEND
                     *
                     * VECTOR TABLE FOR STATEMENTS
                     *
 3E8C 1328           STATVT FDB     GOTO
 3E8E 131E                   FDB    GOSUB
 3E90 127C                   FDB    RESUME
 3E92 229A                   FDB    DIGITS
 3E94 0F6D                   FDB    REM
 3E96 0F74                   FDB    LET
 3E98 111D                   FDB    PRINT
 3E9A 1633                   FDB    INPUT
 3E9C 22BF                   FDB    DEG
 3E9E 22C8                   FDB    SWAP
 3EA0 1387                   FDB    FOR
 3EA2 17E0                   FDB    POKE
 3EA4 0006                   FDB    DOS
 3EA6 147B                   FDB    NEXT
 3EA8 1718                   FDB    READ
 3EAA 1371                   FDB    RETURN
 3EAC 10A7                   FDB    IF
 3EAE 150C                   FDB    DIM
 3EB0 12D9                   FDB    ON
 3EB2 17EC                   FDB    DEF
 3EB4 0F62                   FDB    END
 3EB6 15D8                   FDB    STOP
 3EB8 0F6D                   FDB    DATA
 3EBA 1729                   FDB    RESTOR
 3EBC 0625                   FDB    TRACE
 3EBE 2645                   FDB    OPEN
 3EC0 2837                   FDB    CLOSE
 3EC2 293E                   FDB    CHAIN
 3EC4 2988                   FDB    KILL
 3EC6 29A1                   FDB    RENAME
 3EC8 29BF                   FDB    GET
 3ECA 29E3                   FDB    PUT
 3ECC 2BD9                   FDB    FIELD
 3ECE 2C81                   FDB    LSET
 3ED0 2CB6                   FDB    RSET
 3ED2 2EC4                   FDB    EXEC
 3ED4 17CF                   FDB    DPOKE
                     *
                     * VECTOR TABLE FOR FUNCTIONS
                     *
 3ED6 3300           FNCTVT FDB     ABS
 3ED8 3CEC                   FDB    ARCTAN
 3EDA 3BCF                   FDB    COS
 3EDC 3A43                   FDB    EXP
 3EDE 3222                   FDB    INT
 3EE0 3951                   FDB    LOG
 3EE2 3305                   FDB    RND
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 179

 3EE4 3269                  FDB    SGN
 3EE6 3BCB                  FDB    SIN
 3EE8 3876                  FDB    SQR
 3EEA 3C89                  FDB    TAN
 3EEC 1FCD                  FDB    POS
 3EEE 1FB3                  FDB    PEEK
 3EF0 2001                  FDB    USR
 3EF2 1FEF                  FDB    FRE
 3EF4 1C7C                  FDB    PTR
 3EF6 1FC1                  FDB    DPEEK
 3EF8 3C20                  FDB    ARCSIN
 3EFA 3C1E                  FDB    ARCCOS
                     *
                     * VECTOR TABLE FOR FUNCTIONS >=49 BUT <55
                     *
 3EFC 1D2E           SVCTRS FDB     PI
 3EFE 1D36                   FDB    ERR
 3F00 1D3B                   FDB    ERL
 3F02 1D40                   FDB    RESIDU
 3F04 1C78                   FDB    NAME
 3F06 1D45                   FDB    ASC
 3F08 1D6A                   FDB    LEN
 3F0A 1D70                   FDB    VAL
 3F0C 1DB9                   FDB    HEX
 3F0E 1DEE                   FDB    INSTR
 3F10 2D21                   FDB    CVTSI
 3F12 2D26                   FDB    CVTSF
                     *
                     * VECTOR TABLE FOR STRING-FUNCTIONS
                     *
 3F14 2354           DCDSF1 FDB     DATES
 3F16 2039                   FDB    CHRS
 3F18 204F                   FDB    LEFTS
 3F1A 207C                   FDB    RIGHTS
 3F1C 205F                   FDB    MIDS
 3F1E 2182                   FDB    STRS
 3F20 2324                   FDB    INCHS
 3F22 2D5D                   FDB    CVTIS
 3F24 2D69                   FDB    CVTFS
                     *
                     * PRINT-USING TOKEN TABLE
                     *
 3F26 21 00          PRUSTB FCC     "!",0
 3F28 5C 01                  FCC    "\",1
 3F2A 2E 02                  FCC    ".",2
 3F2C 5E 03                  FCC    "^",3
 3F2E 2D 04                  FCC    "-",4
 3F30 23 80                  FCC    "#",$80
 3F32 24 81                  FCC    "$",$81
 3F34 2A 81                  FCC    "*",$81
 3F36 2C 82                  FCC    ",",$82
 3F38 00                     FCC    NUL
                     *
                     * VECTOR TABLE FOR MATH FUNCTIONS
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 180

                     *
 3F39 2F78           MATHVT FDB    JSTIFY    Add FP
 3F3B 2F54                  FDB    SUBTCT    Subtract FP
 3F3D 1AA6                  FDB    MLTPLY    Multiply FP
 3F3F 1AB7                  FDB    DIVIDE    Divide FP

 3F41 3AA8                  FDB    INTADD    Add Integers
 3F43 3AB3                  FDB    INTSUB    Subtract Integers
 3F45 3AC4                  FDB    INTMPY    Multiply Integers
 3F47 3B23                  FDB    INTDIV    Divide Integers
                     *
                     * COMMAND TABLE
                     *
 3F49 53 41 56 45    CMDTBL FCC     "SAVE",NUL,1
 3F4D 00 01
 3F4F 4C 4F 41 44           FCC    "LOAD",NUL,2
 3F53 00 02
 3F55 4D 4F 4E 00           FCC    "MON",NUL,3
 3F59 03
 3F5A 50 44 45 4C           FCC    "PDEL",NUL,4
 3F5E 00 04
 3F60 4C 49 53 54           FCC    "LIST",NUL,5
 3F64 00 05
 3F66 4E 45 57 00           FCC    "NEW",NUL,6
 3F6A 06
 3F6B 52 55 4E 00           FCC    "RUN",NUL,7
 3F6F 07
 3F70 43 4C 45 41           FCC    "CLEAR",NUL,8
 3F74 52 00 08
 3F77 43 4F 4E 54           FCC    "CONT",NUL,9
 3F7B 00 09
 3F7D 43 4F 4D 50           FCC    "COMPILE",NUL,$A
 3F81 49 4C 45 00
 3F85 0A
 3F86 45 44 49 54           FCC    "EDIT",NUL,$B
 3F8A 00 0B
 3F8C 53 43 41 4C           FCC    "SCALE",NUL,$C
 3F90 45 00 0C
 3F93 41 50 50 45           FCC    "APPEND",NUL,$D
 3F97 4E 44 00 0D
 3F9B 00                     FCC    NUL
                     *
                     * STATEMENT TABLE
                     *
 3F9C 47 4F 54 4F    STATBL FCC     "GOTO",NUL,1
 3FA0 00 01
 3FA2 47 4F 53 55           FCC    "GOSUB",NUL,2
 3FA6 42 00 02
 3FA9 52 45 53 55           FCC    "RESUME",NUL,3
 3FAD 4D 45 00 03
 3FB1 44 49 47 49           FCC    "DIGITS",NUL,4
 3FB5 54 53 00 04
 3FB9 52 45 4D 00           FCC    "REM",NUL,5
 3FBD 05
RBASIC by R. Jones   31 May 1988    4-7-4 TSC ASSEMBLER   PAGE 181

 3FBE 4C 45 54 00           FCC    "LET",NUL,6
 3FC2 06
 3FC3 50 52 49 4E           FCC    "PRINT",NUL,7
 3FC7 54 00 07
 3FCA 49 4E 50 55           FCC    "INPUT",NUL,8
 3FCE 54 00 08
 3FD1 44 45 47 00           FCC    "DEG",NUL,9
 3FD5 09
 3FD6 53 57 41 50           FCC    "SWAP",NUL,$A
 3FDA 00 0A
 3FDC 46 4F 52 00           FCC    "FOR",NUL,$B
 3FE0 0B
 3FE1 50 4F 4B 45           FCC    "POKE",NUL,$C
 3FE5 00 0C
 3FE7 44 4F 53 00           FCC    "DOS",NUL,$D
 3FEB 0D
 3FEC 4E 45 58 54           FCC    "NEXT",NUL,$E
 3FF0 00 0E
 3FF2 52 45 41 44           FCC    "READ",NUL,$F
 3FF6 00 0F
 3FF8 52 45 54 55           FCC    "RETURN",NUL,$10
 3FFC 52 4E 00 10
 4000 49 46 00 11           FCC    "IF",NUL,$11
 4004 44 49 4D 00           FCC    "DIM",NUL,$12
 4008 12
 4009 4F 4E 00 13           FCC    "ON",NUL,$13
 400D 44 45 46 00           FCC    "DEF",NUL,$14
 4011 14
 4012 45 4E 44 00           FCC    "END",NUL,$15
 4016 15
 4017 53 54 4F 50           FCC    "STOP",NUL,$16
 401B 00 16
 401D 44 41 54 41           FCC    "DATA",NUL,$17
 4021 00 17
 4023 52 45 53 54           FCC    "RESTORE",NUL,$18
 4027 4F 52 45 00
 402B 18
 402C 54 52 41 43           FCC    "TRACE",NUL,$19
 4030 45 00 19
 4033 4F 50 45 4E           FCC    "OPEN",NUL,$1A
 4037 00 1A
 4039 43 4C 4F 53           FCC    "CLOSE",NUL,$1B
 403D 45 00 1B
 4040 43 48 41 49           FCC    "CHAIN",NUL,$1C
 4044 4E 00 1C
 4047 4B 49 4C 4C           FCC    "KILL",NUL,$1D
 404B 00 1D
 404D 52 45 4E 41           FCC    "RENAME",NUL,$1E
 4051 4D 45 00 1E
 4055 47 45 54 00           FCC    "GET",NUL,$1F
 4059 1F
 405A 50 55 54 00           FCC    "PUT",NUL,$20
 405E 20
 405F 46 49 45 4C           FCC    "FIELD",NUL,$21
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 182

 4063 44 00 21
 4066 4C 53 45 54           FCC    "LSET",NUL,$22
 406A 00 22
 406C 52 53 45 54           FCC    "RSET",NUL,$23
 4070 00 23
 4072 45 58 45 43           FCC    "EXEC",NUL,$24
 4076 00 24
 4078 44 50 4F 4B           FCC    "DPOKE",NUL,$25
 407C 45 00 25
 407F 52 45 43 4F           FCC    "RECORD",NUL,$29
 4083 52 44 00 29
 4087 4F 4C 44 00           FCC    "OLD",NUL,$2A
 408B 2A
 408C 4E 45 57 00           FCC    "NEW",NUL,$2B
 4090 2B
 4091 41 53 00 2C           FCC    "AS",NUL,$2C
 4095 55 53 49 4E           FCC    "USING",NUL,$2D
 4099 47 00 2D
 409C 45 52 52 4F           FCC    "ERROR",NUL,$2E
 40A0 52 00 2E
 40A3 4C 49 4E 45           FCC    "LINE",NUL,$2F
 40A7 00 2F
 40A9 54 48 45 4E           FCC    "THEN",NUL,$30
 40AD 00 30
 40AF 45 4C 53 45           FCC    "ELSE",NUL,$31
 40B3 00 31
 40B5 54 4F 00 32           FCC    "TO",NUL,$32
 40B9 53 54 45 50           FCC    "STEP",NUL,$33
 40BD 00 33
                     *
                     * FUNCTION TABLE
                     *
 40BF 46 4E 00 34            FCC    "FN",NUL,$34
 40C3 41 42 53 00            FCC    "ABS",NUL,$35
 40C7 35
 40C8 41 54 4E 00           FCC    "ATN",NUL,$36
 40CC 36
 40CD 43 4F 53 00           FCC    "COS",NUL,$37
 40D1 37
 40D2 45 58 50 00           FCC    "EXP",NUL,$38
 40D6 38
 40D7 49 4E 54 00           FCC    "INT",NUL,$39
 40DB 39
 40DC 4C 4F 47 00           FCC    "LOG",NUL,$3A
 40E0 3A
 40E1 52 4E 44 00           FCC    "RND",NUL,$3B
 40E5 3B
 40E6 53 47 4E 00           FCC    "SGN",NUL,$3C
 40EA 3C
 40EB 53 49 4E 00           FCC    "SIN",NUL,$3D
 40EF 3D
 40F0 53 51 52 00           FCC    "SQR",NUL,$3E
 40F4 3E
 40F5 54 41 4E 00           FCC    "TAN",NUL,$3F
RBASIC by R. Jones   31 May 1988    4-7-4 TSC ASSEMBLER   PAGE 183

 40F9 3F
 40FA 50 4F 53 00           FCC    "POS",NUL,$40
 40FE 40
 40FF 50 45 45 4B           FCC    "PEEK",NUL,$41
 4103 00 41
 4105 55 53 52 00           FCC    "USR",NUL,$42
 4109 42
 410A 46 52 45 00           FCC    "FRE",NUL,$43
 410E 43
 410F 50 54 52 00           FCC    "PTR",NUL,$44
 4113 44
 4114 44 50 45 45           FCC    "DPEEK",NUL,$45
 4118 4B 00 45
 411B 41 52 43 00           FCC    "ARC",NUL,$46
 411F 46
 4120 53 50 43 00           FCC    "SPC",NUL,$47
 4124 47
 4125 54 41 42 00           FCC    "TAB",NUL,$48
 4129 48
 412A 50 49 00 49           FCC    "PI",NUL,$49
 412E 45 52 52 00           FCC    "ERR",NUL,$4A
 4132 4A
 4133 45 52 4C 00           FCC    "ERL",NUL,$4B
 4137 4B
 4138 52 45 53 49           FCC    "RESIDUE",NUL,$4C
 413C 44 55 45 00
 4140 4C
 4141 4E 41 4D 45           FCC    "NAME",NUL,$4D
 4145 00 4D
 4147 41 53 43 00           FCC    "ASC",NUL,$4E
 414B 4E
 414C 4C 45 4E 00           FCC    "LEN",NUL,$4F
 4150 4F
 4151 56 41 4C 00           FCC    "VAL",NUL,$50
 4155 50
 4156 48 45 58 00           FCC    "HEX",NUL,$51
 415A 51
 415B 49 4E 53 54           FCC    "INSTR",NUL,$52
 415F 52 00 52
 4162 43 56 54 24           FCC    "CVT$%",NUL,$53
 4166 25 00 53
 4169 43 56 54 24           FCC    "CVT$F",NUL,$54
 416D 46 00 54
 4170 44 41 54 45           FCC    "DATE$",NUL,$55
 4174 24 00 55
 4177 43 48 52 24           FCC    "CHR$",NUL,$56
 417B 00 56
 417D 4C 45 46 54           FCC    "LEFT$",NUL,$57
 4181 24 00 57
 4184 52 49 47 48           FCC    "RIGHT$",NUL,$58
 4188 54 24 00 58
 418C 4D 49 44 24           FCC    "MID$",NUL,$59
 4190 00 59
 4192 53 54 52 24           FCC    "STR$",NUL,$5A
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER      PAGE 184

 4196 00 5A
 4198 49 4E 43 48           FCC    "INCH$",NUL,$5B
 419C 24 00 5B
 419F 43 56 54 25           FCC    "CVT%$",NUL,$5C
 41A3 24 00 5C
 41A6 43 56 54 46           FCC    "CVTF$",NUL,$5D
 41AA 24 00 5D
 41AD 4E 4F 54 00           FCC    "NOT",NUL,$5E
 41B1 5E
 41B2 41 4E 44 00           FCC    "AND",NUL,$5F
 41B6 5F
 41B7 4F 52 00 60           FCC    "OR",NUL,$60
 41BB 58 4F 52 00           FCC    "XOR",NUL,$61,NUL
 41BF 61 00
                     *
                     * OPERATOR TABLE
                     *
 41C1 3C 64          OPTAB FCC      "<",$64   <=
 41C3 3E 65                  FCC    ">",$65   >=
                     *                  $66   <>
 41C5 3C 67                  FCC    "<",$67
 41C7 3E 68                  FCC    ">",$68
 41C9 3D 69                  FCC    "=",$69
 41CB 5E 6B                  FCC    "^",$6B
 41CD 2F 6C                  FCC    "/",$6C
 41CF 2A 6D                  FCC    "*",$6D
 41D1 2B 6E                  FCC    "+",$6E
 41D3 2D 6F                  FCC    "-",$6F
 41D5 2C 72                  FCC    ",",$72
 41D7 3B 73                  FCC    ";",$73
 41D9 28 74                  FCC    "(",$74
 41DB 29 75                  FCC    ")",$75
 41DD 23 76                  FCC    "#",$76

                     * SHORT-FORM OF STATEMENTS

 41DF 3F 07                 FCC    "?",7      PRINT
 41E1 21 08                 FCC    "!",8      INPUT

                     * STATEMENT TERMINATORS AND SEPARATORS

 41E3 3A 7B                 FCC    ":",$7B
 41E5 5C 7B                 FCC    "\",$7B
 41E7 0D 7D                 FCC    CR,$7D
 41E9 20 7E                 FCC    " ",$7E
                     *                 $7F    Multiple SPACEs
 41EB 00 FF                 FCC    NUL,$FF    Non-existent

 41ED FFFF           MINUS1 FDB     $FFFF     Constant -1
                     *
                     * TABLE OF CONSTANTS #1 for binary/decimal conversion
                     *
 41EF 0000 0000      CONST1 FDB     $0000,$0000,$0000,$0080 0.5
 41F3 0000 0080
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 185

 41F7 2000 0000      CONS1A FDB    $2000,$0000,$0000,$0084 10^1
 41FB 0000 0084
 41FF 4800 0000             FDB    $4800,$0000,$0000,$0087 10^2
 4203 0000 0087
 4207 7A00 0000             FDB    $7A00,$0000,$0000,$008A 10^3
 420B 0000 008A
 420F 1C40 0000             FDB    $1C40,$0000,$0000,$008E 10^4
 4213 0000 008E
 4217 4350 0000             FDB    $4350,$0000,$0000,$0091 10^5
 421B 0000 0091
 421F 7424 0000             FDB    $7424,$0000,$0000,$0094 10^6
 4223 0000 0094
 4227 1896 8000             FDB    $1896,$8000,$0000,$0098 10^7
 422B 0000 0098
 422F 3EBC 2000             FDB    $3EBC,$2000,$0000,$009B 10^8
 4233 0000 009B
 4237 6E6B 2800             FDB    $6E6B,$2800,$0000,$009E 10^9
 423B 0000 009E
 423F 1502 F900             FDB    $1502,$F900,$0000,$00A2 10^10
 4243 0000 00A2
 4247 2D78 EBC5             FDB    $2D78,$EBC5,$AC62,$00C3 10^20
 424B AC62 00C3
 424F 49F2 C9CD             FDB    $49F2,$C9CD,$0467,$4FE4 10^30
 4253 0467 4FE4
 4257 0000 0000      CONS1N FDB    $0000,$0000,$0000,$0081 1.0
 425B 0000 0081
 425F 4CCC CCCC             FDB    $4CCC,$CCCC,$CCCC,$CD7D 10^-1
 4263 CCCC CD7D
 4267 23D7 0A3D             FDB    $23D7,$0A3D,$70A3,$D77A 10^-2
 426B 70A3 D77A
 426F 0312 6E97             FDB    $0312,$6E97,$8D4F,$DF77 10^-3
 4273 8D4F DF77
 4277 51B7 1758             FDB    $51B7,$1758,$E219,$6573 10^-4
 427B E219 6573
 427F 27C5 AC47             FDB    $27C5,$AC47,$1B47,$8470 10^-5
 4283 1B47 8470
 4287 0637 BD05             FDB    $0637,$BD05,$AF6C,$6A6D 10^-6
 428B AF6C 6A6D
 428F 56BF 94D5             FDB    $56BF,$94D5,$E57A,$4369 10^-7
 4293 E57A 4369
 4297 2BCC 7711             FDB    $2BCC,$7711,$8461,$CF66 10^-8
 429B 8461 CF66
 429F 0970 5F41             FDB    $0970,$5F41,$36B4,$A663 10^-9
 42A3 36B4 A663
 42A7 5BE6 FECE             FDB    $5BE6,$FECE,$BDED,$D65F 10^-10
 42AB BDED D65F
 42AF 2FEB FF0B             FDB    $2FEB,$FF0B,$CB24,$AB5C 10^-11
 42B3 CB24 AB5C
 42B7 0CBC CC09             FDB    $0CBC,$CC09,$6F50,$8959 10^-12
 42BB 6F50 8959
 42BF 612E 1342             FDB    $612E,$1342,$4BB4,$0E55 10^-13
 42C3 4BB4 0E55
 42C7 3424 DC35             FDB    $3424,$DC35,$095C,$D852 10^-14
 42CB 095C D852
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 186

 42CF 101D 7CF7             FDB    $101D,$7CF7,$3AB0,$AD4F 10^-15
 42D3 3AB0 AD4F
 42D7 6695 94BE             FDB    $6695,$94BE,$C44D,$E14B 10^-16
 42DB C44D E14B
 42DF 3877 AA32             FDB    $3877,$AA32,$36A4,$B448 10^-17
 42E3 36A4 B448
                     *
                     * TABLE OF CONSTANTS #2 for calculating SQR
                     *
 42E7 08C8 CA61      CONST2 FDB     $08C8,$CA61,$10A7,$C382 2.13725528220185995
 42EB 10A7 C382
 42EF 9ACD 0775             FDB    $9ACD,$0775,$87CB,$EC83 -4.83752797084013999
 42F3 87CB EC83
 42F7 22AA 36DB             FDB    $22AA,$36DB,$AD01,$0282 2.54163905575479999
 42FB AD01 0282
 42FF 08C8 CA61      CONS2C FDB    $08C8,$CA61,$10A7,$C383 4.27451056440371991
 4303 10A7 C383
 4307 DAEB E914             FDB    $DAEB,$E914,$85BD,$6884 -13.68259532944269986
 430B 85BD 6884
 430F 660A FBF5             FDB    $660A,$FBF5,$8B01,$CE82 3.59442042330558998
 4313 8B01 CE82
                     *
                     * TABLE OF CONSTANTS #3 for calculating TAN
                     *
 4317 B1E8 B22B      CONST3 FDB     $B1E8,$B22B,$2580,$FB85 -22.23862107952311141
 431B 2580 FB85
 431F A149 C753             FDB    $A149,$C753,$CA82,$2D83 -5.0402561794799730654
 4323 CA82 2D83
 4327 AE3A A7DA             FDB    $AE3A,$A7DA,$D0EC,$B082 -2.722330058753559436
 432B D0EC B082
 432F AA5D D918             FDB    $AA5D,$D918,$642E,$D37F -0.33274725363489002
 4333 642E D37F
 4337 11E3 2ADE      CONS3D FDB    $11E3,$2ADE,$3AB9,$956F 4.3477825184179762 E-6
 433B 3AB9 956F
 433F 2AAA AAAA      CONS3E FDB    $2AAA,$AAAA,$AAA4,$BB7F 0.3333333333333228
 4343 AAA4 BB7F
                     *
                     * TABLE OF CONSTANTS #4 for calculating LOG
                     *
 4347 F97F B4FC      CONST4 FDB     $F97F,$B4FC,$E39F,$2481 -1.94920980785467992
 434B E39F 2481
 434F 8B62 81A3             FDB    $8B62,$81A3,$9903,$C881 -1.08894367683572413
 4353 9903 C881
 4357 ACFE 0B40             FDB    $ACFE,$0B40,$5D17,$CD82 -2.70300561223518516
 435B 5D17 CD82
 435F B6FB F737             FDB    $B6FB,$F737,$5455,$6B81 -1.42956438256866689
 4363 5455 6B81
 4367 3172 17F7      CONS4D FDB    $3172,$17F7,$D1CF,$7B80 0.69314718055994531 Ln(2.0)
 436B D1CF 7B80
 436F 134B 1089             FDB    $134B,$1089,$A6DC,$A37F 0.28768207245178104
 4373 A6DC A37F
 4377 0000 0000      CONS4F FDB    $0000,$0000,$0000,$0000 0.0
 437B 0000 0000
 437F E47F BE3C             FDB    $E47F,$BE3C,$D4D1,$0D7E -0.22314355131420976
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 187

 4383 D4D1 0D7E
 4387 CF99 1F65             FDB    $CF99,$1F65,$FCC2,$607F -0.4054651081081644
 438B FCC2 607F
 438F 8F42 FAF3             FDB    $8F42,$FAF3,$8206,$8280 -0.5596157879354227
 4393 8206 8280
                     *
                     * TABLE OF CONSTANTS #5 for calculating EXP
                     *
 4397 3B5F D541      CONST5 FDB     $3B5F,$D541,$8C88,$DF88 187.37434777909299655
 439B 8C88 DF88
 439F F70C BCCF             FDB    $F70C,$BCCF,$C385,$8090 -63244.73754522332455964
 43A3 C385 8090
 43A7 2BD7 E1DF             FDB    $2BD7,$E1DF,$DAA8,$318A 687.37316128113958769
 43AB DAA8 318A
 43AF 21A9 43DB             FDB    $21A9,$43DB,$7A8F,$EE86 40.41529791770515879
 43B3 7A8F EE86
 43B7 38AA 3B29      CONS5D FDB    $38AA,$3B29,$5C17,$F182 2.88539008177792681472 2/Ln(2)
 43BB 5C17 F182
 43BF 38AA 3B29      CONS5E FDB    $38AA,$3B29,$5C17,$F181 1.44269504088896340736 1/Ln(2)
 43C3 5C17 F181
                     *
                     * TABLE OF CONSTANTS #6 for calculating SIN/COS
                     *
 43C7 490F DAA2      CONST6 FDB     $490F,$DAA2,$2168,$C281 PI/2
 43CB 2168 C281
 43CF 490F DAA2      CONS6A FDB    $490F,$DAA2,$2168,$C282 PI 3.1415926535897932384626433
 43D3 2168 C282
 43D7 B54D F011      CONS6B FDB    $B54D,$F011,$629E,$0684 -11.33152777472594286
 43DB 629E 0684
 43DF 3323 67F6             FDB    $3323,$67F6,$25F3,$3A8C 2866.2128812296319893
 43E3 25F3 3A8C
 43E7 B102 A9F3             FDB    $B102,$A9F3,$29C1,$EE87 -88.5052028645013386666
 43EB 29C1 EE87
 43EF 1518 8917             FDB    $1518,$8917,$50B5,$9090 38168.53551201279333328
 43F3 50B5 9090
 43F7 07B2 8351             FDB    $07B2,$8351,$03D5,$EC89 17369.25647747026778234
 43FB 03D5 EC89
 43FF D4D0 2A23             FDB    $D4D0,$2A23,$DA7E,$5985 -416.60164287577189814
 4403 DA7E 5985
 4407 43FA 8284      CONS6H FDB    $43FA,$8284,$2C97,$BB81 1.53108245328729519
 440B 2C97 BB81
 440F 3524 3705             FDB    $3524,$3705,$1FD4,$5B8B 1449.13171631066038003
 4413 1FD4 5B8B
 4417 9305 A0B6             FDB    $9305,$A0B6,$D2D5,$3E87 -73.51099177669186348
 441B D2D5 3E87
 441F 2C89 8222             FDB    $2C89,$8222,$D72F,$168F 22084.75417206239490043
 4423 D72F 168F
 4427 4954 97B7             FDB    $4954,$97B7,$42D9,$5488 201.33044000036291266
 442B 42D9 5488
 442F E2A1 0739             FDB    $E2A1,$0739,$21A1,$B187 -49.31450823340932921
 4433 21A1 B187
                     *
                     * TABLE OF CONSTANTS #7 for calcuating ARCTAN
                     *
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 188

 4437 24A2 7905      CONST7 FDB    $24A2,$7905,$8D0D,$3C81 2.57241654913032726
 443B 8D0D 3C81
 443F 7201 3E98             FDB    $7201,$3E98,$C458,$457E 0.23633287246146775
 4443 C458 457E
 4447 052B 98E4      CONS7B FDB    $052B,$98E4,$05AD,$897B 0.0162561403414451287
 444B 05AD 897B
 444F AAAA AAAA      CONS7C FDB    $AAAA,$AAAA,$AA81,$EE7F -0.33333333333326098
 4453 AA81 EE7F
 4457 0000 0000      CONS7D FDB    $0000,$0000,$0000,$0000 0.0                    arctan(0)
 445B 0000 0000
 445F 7EAD D4D5             FDB    $7EAD,$D4D5,$617B,$6D7D 0.12435499454676143 arctan(0.125)
 4463 617B 6D7D
 4467 7ADB AFC9             FDB    $7ADB,$AFC9,$6406,$EB7E 0.24497866312686416 arctan(0.25)
 446B 6406 EB7E
 446F 37B0 CA0F             FDB    $37B0,$CA0F,$26F7,$847F 0.35877067027057222 arctan(0.375)
 4473 26F7 847F
 4477 6D63 382B             FDB    $6D63,$382B,$0DDA,$7D7F 0.46364760900080614 arctan(0.5)
 447B 0DDA 7D7F
 447F 0F00 5D5E             FDB    $0F00,$5D5E,$F7F5,$A080 0.55859931534356245 arctan(0.625)
 4483 F7F5 A080
 4487 24BC 7D19             FDB    $24BC,$7D19,$34F7,$0980 0.6435011087932844     arctan(0.75)
 448B 34F7 0980
 448F 3805 3E2B             FDB    $3805,$3E2B,$C231,$9E80 0.71882999962162452 arctan(0.875)
 4493 C231 9E80
 4497 490F DAA2             FDB    $490F,$DAA2,$2168,$C280 PI/4                   arctan(1.0)
 449B 2168 C280
                     *
                     * TABLE OF CONSTANTS #8 for conversion between DEGREES/RADIANS
                     *
 449F 652E E0D3      RADIAN FDB     $652E,$E0D3,$1E0F,$BE86 57.2957795130823208768 180/PI
 44A3 1E0F BE86
RBASIC by R. Jones    31 May 1988       4-7-4 TSC ASSEMBLER   PAGE 189


                      *                                                          *
                      * MISCELLANEOU S      R E GI S TE R S      &    F LA G S *
                      *                                                          *
 44A7                 EDITFG RMB 1   Line-Edit Mode
 44A8                 MELDFG RMB 1   MELD lines Flag
 44A9                 HOMEFG RMB 1   Express Left/Right Flag
 44AA                 SPLITF RMB 1   Split-Line Flag
 44AB                 FCBSTK RMB 26  FCB Stack 13 x 2 Vectors to FCBs
 44C5                 FCBCHN RMB 26  FCB Channels 13 x 2
 44DF                 NBRBUF RMB 24  Number-Buffer
 44F7                 INPBUF RMB 256 Input-Buffer
 45F7                 WORKBF RMB 256 Work-Buffer
 46F7                 MSPTRS RMB 96  Math-Stack Pointers 32 x 3
 4757                 MSTACK RMB 256 Math-Stack (max 32 x 8)
 4857                 INPLBF RMB 64  Input-Line Buffer
 4897                 NO_TAB RMB 1   Don't Tab for ',' in Print-Using
 4898                 USINFG RMB 1   Print-Using Flag. Set if 'Using'
 4899                 PRUSAD RMB 2   Address of Print-Using String
 489B                 PRUSPT RMB 2   Pointer to Print-Using String
 489D                 PRULEN RMB 2   Length of Print-Using String
 489F                 EXCLCT RMB 1   Counter for '!'
 48A0                 BSLCTR RMB 1   Counter for '\'
 48A1                 DPCNTR RMB 1   Counter for '.'
 48A2                 AROWCT RMB 1   Counter for '^'
 48A3                 DASHCT RMB 1   Counter for '-'
 48A4                 PUNDCT RMB 1   Used as scratch by math operations
 48A5                 DOLRCT RMB 1   Counter for '$'
 48A6                 STARCT RMB 1   Counter for '*'
 48A7                 COMACT RMB 1   Counter for ','
 48A8                 CHAINS RMB 2   CHAIN Start Line #
 48AA                 FLDSIZ RMB 1   FIELD size
 48AB                 VRASIZ RMB 2   # of Sectors in Virtual-Array File
 48AD                 TEMP15 RMB 1   Temp for Var-Type
 48AE                 TEMP17 RMB 2
 48B0                 TEMP18 RMB 2
 48B2                 ADLMNT RMB 2   Secondary storage of element-addr in VRA Sector
 48B4                 APPNDF RMB 1   APPEND Flag        1 = Append new File
 48B5                 PDELFG RMB 1   Block-Delete Flag 1 = Prompting 2 = Prompt Off
 48B6                 DEGSW RMB  1   DEG/RAD Switch      0 = Radians Non-0 = Degrees
 48B7                 ARCSNF RMB 1   ARCSIN Flag      Set = Doing ARCSIN (Also scratch)
 48B8                 RNDATA RMB 320 Random-File Data-Storage

              49F8 SRCBUF EQU       *          Start of Source-Buffer

                             END    START

0 ERROR(S) DETECTED
RBASIC by R. Jones    31 May 1988      4-7-4 TSC ASSEMBLER   PAGE 190



SYMBOL TABLE:

ABS    3300     ADDFP 2FC7    ADDFP1 2FE0   ADDMNT 319C   ADDOFF 0063
ADJAD1 041E     ADJAD2 042B   ADJAD3 0437   ADJAD4 043A   ADJADR 0415
ADLMNT 48B2     ADVPTR 2109   ALFNCD 004A   ALFNM1 0BE6   ALFNM2 0BEE
ALFNM3 0C06     ALFNM4 0C08   ALFNUM 0BE2   AND    1C5B   ANDOR 1C41
ANDOR1 1C65     ANDPTY 1870   ANDPY1 1874   APOWRB 3A2F   APPEND 092F
APPND1 0959     APPNDF 48B4   APPROX 39FF   APROX1 3A08   APROX2 3A11
ARCCOS 3C1E     ARCFLG 0032   ARCSIN 3C20   ARCSN1 3C32   ARCSN2 3C5D
ARCSN3 3C6F     ARCSN4 3C79   ARCSNF 48B7   ARCTAN 3CEC   AROWCT 48A2
AS     2CF6     AS1    2D0A   ASC    1D45   ASC1 1D4E     ASC2 1D50
ASCBC1 372D     ASCBC2 372E   ASCBCD 3717   ASCBIN 3772   ASCBN1 3780
ASCFP0 3684     ASCFP1 368D   ASCFP2 36C8   ASCFP3 36D1   ASCFP4 36E3
ASCFPD 365E     ASCFPE 367B   ASSIGN 0F90   ATGEB1 1BD0   ATGEB2 1BE4
ATGEBT 1BBC     ATLINE 3DF3   ATN0 3CF1     ATN1 3D1E     ATN2 3D47
ATN3 3D51       ATN4 3D60     ATN5 3D83     ATN6 3D89     ATN7 3DD8
ATN8 3DDE       ATN9 3DF2     AUXPTR 002A   BACF1 09A5    BACF2 0A04
BACFIN 09A2     BACINA 0A39   BACINB 0A40   BACK1 0577    BACK2 057C
BACKSP 055A     BACLIN 09CD   BACLN1 09F1   BASFCB D409   BASFIN 0943
BCDASC 238D     BELL 0007     BILDNM 2926   BINDEC 3372   BINEXP 00BE
BLKPTR 007F     BLURB 0000    BREAK 060F    BREAK1 0617   BRK    0003
BRKERR 0BAE     BRKMS 3DFD    BS     0008   BSLCTR 48A0   CALDOS 261C
CALL1 2636      CANCEL 0496   CFPINT 101E   CH2WB1 0D1C   CH2WBF 0D0C
CHAIN 293E      CHAIN0 2949   CHAIN1 2965   CHAIN2 297C   CHAIN3 2982
CHAINS 48A8     CHANCK 1F91   CHANFG 00DD   CHANNO 00F2   CHARCT 0065
CHCMPL 0A90     CHEKGE 0CBC   CHGET1 1220   CHGET2 1236   CHGET3 1243
CHKFN 0D90      CHKPAR 0CDD   CHKREC 2A6D   CHKSUB 19F2   CHMVCT 001D
CHOUT1 27B0     CHOUT2 27B6   CHOUT3 27E0   CHOUTV 00E1   CHR1 2041
CHRGET 121E     CHRIN 2806    CHRIN1 280C   CHRIN2 2812   CHRIN3 2814
CHROUT 27AA     CHRS 2039     CHRST1 2173   CHRST2 217E   CHRSTR 2159
CHSYN1 274B     CHSYN2 274D   CHSYNT 2735   CKPAR0 0CEB   CKPAR1 0CFE
CKPAR2 0D06     CKRADD 1A6C   CKRAS1 1A26   CKRAS2 1A57   CKRASD 1A07
CKSRCE 0A41     CKSTAR 0CCE   CKSTR1 0CDB   CLDRC1 02AF   CLDRCT 02A9
CLEAR 0674      CLEFT 0104    CLFIL0 25DA   CLFIL1 25E3   CLFILE 25D6
CLFST1 2D13     CLFST2 2D20   CLFSTK 2D0B   CLINAD 0083   CLOSE 2837
CLOSE0 2851     CLOSE1 2868   CLOSE2 286F   CLOSE3 2882   CLREC1 2A2D
CLREC2 2A3D     CLRM0 3255    CLRM0A 3264   CLRREC 2A2B   CMDFLG CC28
CMDID 0C0C      CMDID1 0C0E   CMDID2 0C1C   CMDID3 0C28   CMDID4 0C35
CMDPTR 002C     CMDTBL 3F49   CMDVT 3E72    CMPEL2 110E   CMPEL3 111C
CMPEOL 1101     CMPFP 2EE7    CMPFP1 2F1A   CMPFP2 2F1E   CMPFP3 2F1F
CMPFP4 2F40     CMPFP5 2F47   CMPFP6 2F4B   CMPFP7 2F50   CMPIL1 0A62
CMPIL2 0A87     CMPLCD 006A   CMPST1 212E   CMPST2 213E   CMPST3 214A
CMPST4 2154     CMPST5 2158   CMPSTR 2127   CMPVT 1B7E    CMPVT1 1B86
CNCAT1 1F04     CNTSP0 0C91   CNTSPC 0C95   CODEST 004E   CODSP1 0CA9
CODSPC 0C9C     COLD0 012C    COLD1 0139    COLDST 0114   COMACT 48A7
COMMAC 20BD     COMPIL 0A4A   CONCAT 1F00   CONS1A 41F7   CONS1N 4257
CONS2C 42FF     CONS3D 4337   CONS3E 433F   CONS4D 4367   CONS4F 4377
CONS5D 43B7     CONS5E 43BF   CONS6A 43CF   CONS6B 43D7   CONS6H 4407
CONS7B 4447     CONS7C 444F   CONS7D 4457   CONSPT 00CD   CONST1 41EF
CONST2 42E7     CONST3 4317   CONST4 4347   CONST5 4397   CONST6 43C7
CONST7 4437     CONT 067F     COS    3BCF   COS1 3BD3     COS2 3BDE
COS3 3BF0       COS4 3C0F     COS5 3C1D     CR     000D   CRANGE 3294
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 191

CRIGHT 0105   CTLXMS 3E03   CURLIN 007B   CVDFP0 3507   CVDFP1 350B
CVDFP3 3518   CVT2FP 3627   CVTBIN 3749   CVTBN1 376A   CVTDF0 33C4
CVTDF1 3378   CVTDF2 339D   CVTDF3 33A4   CVTDF4 33AE   CVTDF5 33B7
CVTDF6 33C9   CVTDF7 33CE   CVTDF8 33D4   CVTDF9 33E8   CVTDFA 33F6
CVTDFB 33FC   CVTDFC 3407   CVTDFD 3417   CVTDFE 3421   CVTDFF 3427
CVTDFG 342B   CVTDFH 3431   CVTDFI 343E   CVTDFJ 3460   CVTDFK 3447
CVTDFL 344E   CVTDFM 346A   CVTDFO 3487   CVTDFQ 348D   CVTDFR 349A
CVTDFS 34B6   CVTDFU 34C5   CVTDFV 34C7   CVTDFW 34DE   CVTDFX 34EA
CVTDFY 34F0   CVTDFZ 34F9   CVTFS 2D69    CVTIFP 348B   CVTIS 2D5D
CVTSCI 34B8   CVTSF 2D26    CVTSI 2D21    DASHCT 48A3   DAT2WB 0B0A
DATA 0F6D     DATEND 174E   DATES 2354    DATND1 175C   DATND2 176B
DATND3 1773   DATND4 1775   DATPTR 00D1   DATST1 1790   DATST2 17A0
DATST3 17A7   DATST4 17B6   DATSTO 35FA   DATSTR 177B   DCDNS1 1CE4
DCDNS2 1CE6   DCDNS3 1CFF   DCDNSF 1CBF   DCDSF 2024    DCDSF1 3F14
DCODE1 1D23   DECEXP 00BF   DECODE 1D0A   DEF    17EC   DEFFLG 001C
DEG    22BF   DEGSW 48B6    DELBK1 02BB   DELBK2 02CA   DELBLK 02B7
DELCH 010A    DELCH1 05EE   DELCH2 05FA   DELCHR 05E6   DELETE 03EF
DESTAD 17C1   DESUPP 31BB   DIGIT1 22B9   DIGITS 229A   DIGNBR 00F3
DIM    150C   DIM1 151B     DIM2 1552     DIM3 158C     DIM4 1595
DIMPTR 0070   DIVFP 30E7    DIVFP1 316E   DIVIDE 1AB7   DIVMN1 30FA
DIVMN2 312B   DIVMN3 312D   DLETE1 03FC   DLETE2 03FE   DLETE3 040A
DOCMND CD4B   DOLINE 01BA   DOLRCT 48A5   DOS    0006   DPCNTR 48A1
DPEEK 1FC1    DPOKE 17CF    DPTCK1 367A   DPTNBR 00F4   DPTPOS 00FD
DROP0 358F    DROP00 3597   DSKERR 098C   DSKIN 095F    DSKIN1 0964
DUMYCR 3E07   EDIT 068F     EDITFG 44A7   ENCDOP 0C7A   END    0F62
ENDMEM 0101   ENDNB1 35DC   ENDNB2 35E3   ENDNBR 35D8   EOLFLG 00D0
EOT    0004   EQUTYP 1028   ERL    1D3B   ERLNBR 00E9   ERR    1D36
ERR0BA 2A69   ERR15A 2598   ERR15B 26CA   ERR18D 2A26   ERR1BA 26CD
ERR1EA 1776   ERR1FA 1713   ERR20A 1316   ERR22B 0620   ERR25A 0B69
ERR28 2351    ERR28A 2731   ERR28B 287C   ERR28D 2BD6   ERR28E 1FB0
ERR29A 26D1   ERR2AA 276B   ERR2BA 2766   ERR2BB 287F   ERR2CA 2801
ERR2CB 2AB1   ERR2CD 2E26   ERR2DA 2C57   ERR2EA 2AB4   ERR2FA 2AB8
ERR30A 2E29   ERR32A 01B5   ERR32C 0F8D   ERR33A 099F   ERR33B 0B65
ERR34B 07FC   ERR34C 129C   ERR34D 12D6   ERR34E 131B   ERR34G 1404
ERR34H 1504   ERR34J 166F   ERR34K 1820   ERR34L 20BA   ERR34N 2619
ERR34P 2748   ERR34S 29E0   ERR34T 1CBC   ERR34U 2BB9   ERR34V 2CF3
ERR34W 2D9D   ERR34X 2E2E   ERR35A 0294   ERR36A 0B5D   ERR37A 0B59
ERR37B 19B3   ERR39A 0EB1   ERR3CA 135A   ERR3DA 1382   ERR3EA 146D
ERR3FA 068A   ERR41A 0A34   ERR42A 129F   ERR43A 07FF   ERR46A 2492
ERR47A 2496   ERR48A 1469   ERR48B 1BEB   ERR48C 220E   ERR49B 18A5
ERR49C 1909   ERR49D 1D07   ERR49H 22BC   ERR4AA 21FE   ERR4CA 162E
ERR4DA 1A63   ERR4EA 1A68   ERR4FA 231F   ERR50A 0349   ERR50B 226F
ERR51 1507    ERR5AA 2202   ERR5BA 201F   ERR5EA 2E31   ERR60A 3C84
ERR64A 0D24   ERR64B 19EF   ERR64C 1F6D   ERR64D 1B47   ERR65A 3069
ERR65B 370A   ERR65D 3AB0   ERR66A 3AA3   ERR67A 30E2   ERR67B 3B20
ERR68A 328F   ERR69A 394C   ERR6AA 376D   ERR6BA 3871   ERR6CA 37F3
ERR6DA 14FF   ERRFFA 1D29   ERRFMS 00DC   ERRLIN 00E3   ERRNO 00E7
ERROR 0B6B    ERROR0 0B6D   ERROR1 0B82   ERROR2 0BB4   ERROR3 0BC5
ERROR4 0BC8   ERRORB 1A65   ERRORF 2E2B   ERRTYP CC20   ERRXX 26D3
ERRXXB 2ABA   ERRXXX 146F   ERRXXY 2498   ERRXXZ 2204   ERRXY 2768
ESCRET CC16   EVALCH 2725   EVALD1 2247   EVALDB 2240   EVALEX 1843
EVALP1 1999   EVALP2 19B0   EVALPR 1993   EVALRC 2D90   EVALSB 2207
EVALU1 1852   EVALU2 185C   EVALU3 186B   EVALU4 186F   EVALUE 184E
EVALV 1960    EVALV1 1973   EVINT1 2231   EVLINT 222A   EXCESS 2577
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 192

EXCLCT 489F   EXEC 2EC4     EXEC1 2ECE    EXP    3A43   EXP1 3A86
EXP2 3AA2     EXPDO 1ABD    EXPDO1 1AD7   EXPDO2 1AEA   EXPDO3 1AED
EXPPTY 18F1   EXPRES 0599   EXPTY1 18F5   EXPTY2 1908   EXTFIL 2ABD
EXTFL1 2AE5   EXTFL2 2AE6   EXTFL3 2AF4   EXTFL4 2B22   FALS1 1C35
FALSE 1C32    FCBCHN 44C5   FCBDAD 0033   FCBER1 2603   FCBER2 2605
FCBER3 2608   FCBERB 2784   FCBERR 25F9   FCBPTR 00F0   FCBSTK 44AB
FCBTMP 00DF   FCH1 033E     FCHAIN 0332   FDLEN1 1D9D   FDLEN2 1DA2
FDLEN3 1DB0   FF     0107   FIELD 2BD9    FIELD1 2BEF   FIELD2 2C02
FIELD3 2C31   FIELDF 00F7   FILCHK 258B   FILCK1 258E   FILECL 2BCA
FINDCR 047D   FLDSIZ 48AA   FLDVAR 0FD0   FMS    D406   FMSCLS D403
FMTEXP 35BB   FMTNB1 3530   FMTNB2 3543   FMTNB3 3554   FMTNBF 3524
FMTXP1 35CD   FNCTVT 3ED6   FNDCR0 047A   FNDLEN 1D9B   FOR    1387
FOR00 139D    FOR01 13A0    FOR02 13B4    FOR03 13BF    FOR1 13C2
FOR2 1407     FOR3 1417     FOR4 143B     FOR5 1450     FOR6 1457
FOR7 1463     FP2INT 3629   FP2WB 0AF4    FPINT3 3632   FRACLT 00FE
FRE    1FEF   FREE1 1FF6    FREE2 1FFC    FREPTR 0041   FTRUTH 1BEE
GET    29BF   GETCH 0009    GETCHR CD15   GETFIL CD2D   GOSUB 131E
GOTO 1328     GOTO1 132B    GOTO2 132D    GOTO3 133F    GOTO4 1350
GSUBFG 0026   HALTAD 00D9   HALTFG 0023   HEX    1DB9   HEX1 1DBD
HEX2 1DCE     HEX3 1DD4     HEX4 1DE1     HEXDEC 370D   HOME 0103
HOMEFG 44A9   HOMEUP 010D   HXDEC1 370E   IDSCON 1F34   IDSTR0 1F4C
IDSTR1 1F4D   IDSTR2 1F62   IDSTR3 1F66   IDSTR4 1F70   IDSTR5 1F85
IDVARS 1F13   IF     10A7   IF1    10CB   IF2    10D7   IF3    10D9
IF4    10EC   IF5    10F0   IF6    10F4   IF7    10F9   IFNEST 0074
IGNSPC 3731   IMMED 01D5    IMMEDF 0024   IN2WK1 0B22   IN2WKB 0B16
INBFPT 0045   INCH1 234C    INCHAN 2826   INCHNE D3E5   INCHS 2324
INCM0 383C    INCM0A 3868   INCM0B 3870   INDEXS 1260   INITBF 02CB
INOUT1 27F9   INPBST 007D   INPBUF 44F7   INPLBF 4857   INPLIN 15ED
INPLN1 160E   INPLN2 1619   INPLPT 0076   INPMSG 0028   INPREQ 16CE
INPRQ1 16DA   INPRQ2 16E8   INPSEL 00DE   INPTWT 0025   INPUT 1633
INPUT1 164A   INPUT2 1661   INPUT3 1669   INPUT4 1672   INPUT5 1678
INPUT6 168C   INPUT7 1695   INPUT8 169A   INPUT9 16A1   INPUTA 16AA
INPUTB 16B4   INPUTC 16C5   INPUTD 16C9   INSCH 0109    INSCH1 05D4
INSCH2 05E2   INSCHR 05D0   INSERT 0394   INSRTA 03AA   INSRTB 03B2
INSRTC 03C3   INSRTD 03C7   INSTR 1DEE    INSTR0 1E53   INSTR1 1E5A
INSTR2 1E75   INSTR3 1E9A   INSTR4 1E9F   INSTR5 1EA2   INSTR6 1EA4
INT    3222   INT1 324A     INT2 3251     INTADD 3AA8   INTBF1 31F5
INTBF2 3211   INTBF3 3217   INTBF4 321F   INTBF5 3221   INTBFP 31F2
INTDEC 336B   INTDIV 3B23   INTDV1 3B2D   INTDV2 3B36   INTDV3 3B3E
INTDV4 3B47   INTDV5 3B4F   INTDV6 3B5E   INTDV7 3B68   INTMP1 3ACA
INTMP2 3AD6   INTMP3 3ADE   INTMP4 3AE6   INTMP5 3AEC   INTMP6 3AEE
INTMP7 3AF9   INTMP8 3B06   INTMPY 3AC4   INTSUB 3AB3   INTTST 3277
INVM0 38DD    INWK1 02EF    INWK2 0310    INWK3 0318    INWK4 032E
INWKSP 02ED   INZPTR 1823   INZST1 105D   INZSTK 103C   IN_OUT 27F2
JSTFY1 2F83   JSTFY2 2F8D   JSTFY3 2F93   JSTFY4 2FAB   JSTFY5 2FB1
JSTFY6 2FC3   JSTIFY 2F78   KILL 2988     KILL0 2993    KILL1 2995
LASTMS 3E08   LBRKT 3E23    LDROFF CC1B   LEFTS 204F    LEFTS1 2051
LEFTS2 205C   LEN    1D6A   LENST1 0E5B   LENSTR 0E51   LET    0F74
LF     0106   LINADR 0059   LINBUF C080   LINCAL 0D77   LINCPL 0A97
LINE00 04AD   LINE01 04B3   LINE02 04BF   LINE03 04D2   LINE04 04C8
LINE1 04D4    LINE2 0538    LINEIN 049D   LINEND 045F   LINNBR 0051
LINOT1 080C   LINOT2 081B   LINOT3 081F   LINOT4 0804   LINOUT 0805
LINPOS 002E   LINPTR CC14   LINVAL 0368   LIST 0697     LIST2 06A4
LIST3 06B8    LIST31 06C8   LIST32 06CC   LIST4 06CE    LIST5 06D4
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 193

LIST50 06FD   LIST51 0700   LIST52 0705   LIST53 072E   LIST54 0736
LIST55 06F3   LIST56 06DD   LIST6 0757    LIST7 075F    LISTX 0744
LISTY 074E    LISTZ 0729    LMNTAD 0035   LMNTSZ 0037   LNBRFG 0047
LNCAL1 0D7D   LNCPL1 0AA8   LNCPL2 0AAA   LNCPL3 0AC4   LNCPL4 0AD4
LNEND1 0473   LNVAL1 0375   LOAD 0938     LOADFL CD30   LOADM0 3938
LOCDAT 16F0   LOCDIM 19FA   LOCDM1 19FD   LOCDP1 2584   LOCDPT 2582
LOCDT2 1708   LOCLIN 037B   LOCLNA 0386   LOCLNB 038B   LOCLNC 0391
LOCLND 0393   LOCPNT 20E2   LOCPT1 20E9   LOCPT2 20FC   LOCPT3 2108
LOCREC 2A9F   LOCVAL 0880   LOCVAR 0ED8   LOCVR0 0EDD   LOCVR1 0EEE
LOCVR2 0EF5   LOCVR3 0F03   LODM01 3935   LOG    3951   LOG1 3964
LOG2 3968     LOG3 39D8     LOOP1 3566    LOWLIN 0030   LPARCK 20B3
LSET 2C81     LSET1 2C8B    LSRM0 32F5    LSRM0A 32F7   LSTBEG 003D
LSTCHR 0049   LSTEND 003F   LSTTRM CC11   M0M5A 318F    M0M5B 3193
M0SGN 00C0    M4SGN 00C1    MATH 1AF4     MATH0 0091    MATH1 00A2
MATH2 00AA    MATH3 00B2    MATH4 009A    MATH5 0088    MATH6 006C
MATH7 0015    MATH8 00C4    MATHVT 3F39   MDPTY 18CD    MDPTY1 18D1
MDPTY2 18E2   MELD 010C     MELDFG 44A8   MELDL1 0545   MELDL2 054F
MELDLN 053F   MEMEND CC2B   MEMOVF 03E3   MEMTOP 0021   MIDS 205F
MINUS1 41ED   MLTPLY 1AA6   MNTHTB 3E4E   MODEFG 0078   MON    0659
MON1 0661     MONITR F814   MPY16B 3ABC   MPYFP 306E    MPYFP0 30CE
MPYFP1 30DC   MPYMN1 3080   MPYMN2 30A1   MSPTRS 46F7   MSTACK 4757
MSTKND 0066   MSTKPT 0085   MV2NUL 2111   MVNUL1 2118   NAM2F1 25B4
NAM2FX 25AB   NAME 1C78     NBRBUF 44DF   NBREND 35F1   NBRPTR 00C9
NBRSGN 00C2   NBRSTO 35F8   NCDOP1 0C7D   NCDOP2 0C87   NEORLE 0CAD
NEW    0666   NEWLIN 005B   NEXT 147B     NEXT0 1472    NEXT1 14C2
NEXT2 14C7    NEXT3 14CB    NEXT4 14CE    NEXT5 14D7    NEXT6 14DD
NEXT7 14F4    NMLINT 31E4   NMSTR1 2D82   NORML0 303B   NORML1 3020
NORML2 3022   NORML3 3024   NORML4 3026   NORML5 3043   NORML6 3059
NORML7 305B   NORML8 3068   NOT    1C6C   NOTCMD 01F0   NO_TAB 4897
NUL    0000   NUMSTR 2D73   NXLNAD 0081   NXLNLC 00EE   NXTSEQ 2934
NXTVAR 16EC   ON     12D9   ON1    12EE   ON2    12F5   ON3    130D
ONERR 12A4    ONERR1 12C4   ONERR2 12CD   ONERRF 00EB   OPEN 2645
OPEN0 26D6    OPEN1 265A    OPEN2 265C    OPEN3 26A3    OPENR 2779
OPENW 2787    OPENW1 2789   OPENW2 278B   OPNVRA 2DA0   OPTAB 41C1
OPVRA1 2DBA   OPVRA2 2DDA   OPVRA3 2DEB   OPVRA4 2DED   OPVRA5 2DF6
OR     1C61   OUTCH CD0F    OUTCH2 CD12   OUTLIN 0F35   OUTLN1 0F56
OUTNBR 257C   OUTOP 0843    OUTOP1 0855   OUTOP2 0858   OUTOP3 085C
OUTOP4 085F   OUTOP5 0874   OUTSEL 27BC   OUTSL0 27CA   OUTSL1 27D4
OUTSL2 27D6   OUTSLF 006B   OUTSP1 1273   OUTSPC 126F   OUTST1 0454
OUTSTR 0452   OUTVA 0891    OUTVAR 0889   OUTVB 0897    OUTVC 08A5
OUTVD 08AF    OUTVG 08B7    OUTVK 08C9    OUTVL 08CD    OUTVM 08D8
OUTVN 08DB    OUTVP 08E0    OUTVQ 08EA    OUTVR 08FA    OVFLOW 00BC
PARCHK 20A7   PARCTR 0048   PARSLN 0B23   PARSTR 1F22   PARSWB 02DC
PAUSFG CC09   PCRLF CD24    PDEL 0768     PDEL1 0771    PDEL2 078B
PDEL3 079C    PDEL4 07A6    PDEL5 07B1    PDELFG 48B5   PDELMS 3E27
PEEK 1FB3     PEEK1 1FBA    PI     1D2E   PINIT CCC0    PMPTY 18AA
PMPTY1 18AE   PMPTY2 18BF   PMPTY3 18C1   POKE 17E0     POS    1FCD
POS1 1FEB     POSCTR 0075   POUNDL 00F8   POUNDR 00F9   POUT CCE4
POWRAB 38E8   PRGTYP 00DB   PRINT 111D    PRINT1 1165   PRINT2 117C
PRINT3 1186   PRINT4 11A4   PRINT5 11C2   PRINT6 11C5   PRINT7 11CD
PRINT8 11D4   PRINT9 11E7   PRINTA 11EA   PRINTB 11EF   PRINTC 11F4
PRINTD 1200   PRINTE 1205   PRINTF 120B   PRINTG 120E   PRINTH 1215
PRNT41 11B9   PRPFP 223B    PRPINT 2225   PRSLNA 0B48   PRULEN 489D
PRUS0 2396    PRUS1 23AB    PRUS2 23BD    PRUS3 23C1    PRUS5 23D5
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 194

PRUS7 23F6    PRUS8 2406    PRUS9 2411    PRUSA 2420    PRUSAD 4899
PRUSC 242C    PRUSE 243E    PRUSF 2446    PRUSG 244B    PRUSH 244F
PRUSIN 2398   PRUSJ 2457    PRUSK 2467    PRUSL 2480    PRUSM 245A
PRUSPT 489B   PRUSTB 3F26   PSTATE CCFC   PTR    1C7C   PTR0 1C7E
PTR1 1C9F     PTR2 1CB2     PUNDCT 48A4   PUT    29E3   PUT1 29FB
PUT2 2A00     PUTCH 000C    PUTCHR CD18   PWRAB1 38F9   PWRAB2 3906
PWRAB3 390E   PWRAB4 3914   PWRAB5 391E   PWRAB6 3922   PWRAB7 3923
QUDRNT 3BA2   QUERYM 3E3B   RADIAN 449F   RANDM1 2B72   RANDM2 2B8B
RANDM3 2B93   RANDM4 2BA4   RANDM5 2BA7   RANDM6 2BB8   RANDMR 2B5C
RANDOM 000F   RANGE1 3297   RANGE2 32B0   RANGE3 32BC   RANGE4 32C0
RANGE5 32CB   RBRKT 3E3E    RDINT1 3B94   READ 1718     READ1 1720
READ2 171E    READFG 0027   READYM 3E42   RECAL1 05C4   RECALL 05BF
RECORD 00EC   RELPTY 1884   RELPY1 1888   REM    0F6D   REM2WB 0B03
REMNDR 00FF   RENAME 29A1   REPEAT 0108   RESIDU 1D40   RESTOR 1729
RESUM1 1289   RESUM2 128D   RESUM3 1292   RESUME 127C   RETRN0 135F
RETURN 1371   RFILE 25EB    RFILE1 25ED   RFILE2 25EF   RIGHT1 208D
RIGHT2 209B   RIGHTC 0585   RIGHTS 207C   RMIN1 3325    RMIN2 332B
RMINUS 3311   RND    3305   RNDATA 48B8   RNDINT 3B78   RPAR1 20B0
RPARCK 20A9   RPLAC1 35B7   RPLACE 35A7   RPLUS 3357    RPTERR CD3F
RSET 2CB6     RSET1 2CD4    RSET2 2CDC    RSET3 2CE3    RSTCS1 0601
RSTCSR 05FE   RSTOR1 174B   RSTRIO CD2A   RSVSP1 2261   RSVSP2 2264
RSVSP3 2272   RSVSPC 2250   RT1    0592   RT2    0596   RUN    0203
RUN1 0217     RUN2 0230     RUN3 0232     RUN4 0234     RUN5 0248
RUN6 025B     RUN7 025D     RUN8 0269     RUN9 026D     RWFIL1 25D5
RWFILE 25C9   RZERO 332D    SAVE 0900     SAVE1 0911    SAVE2 0924
SB2DEC 2211   SBDEC1 2214   SBDEC2 221E   SBDEC3 2224   SCALDN 3653
SCALE 07C1    SCALE1 07E4   SCALFG 00F5   SCALIT 36F3   SCIFLG 00BD
SCINOT 3603   SCINT1 3610   SCINT2 361C   SELFCB 274E   SETBAC 259D
SETBAS 25A4   SETEXT CD33   SETM01 32E9   SETM0A 32F2   SGN    3269
SGN1 326F     SGN2 3274     SGNCHK 373A   SGNCK1 3746   SGNCK2 3748
SHBFR1 3581   SHBUF0 3573   SHBUFL 3564   SHBUFR 3575   SIGNS 3B07
SIGNS1 3B12   SIGNS2 3B1D   SIN    3BCB   SKIPS1 0F26   SKIPS2 0F32
SKIPS3 0F34   SKIPSP 0F24   SKPVAR 15BB   SKVAR1 15C1   SKVAR2 15D0
SKVAR3 15D5   SLFCB1 275F   SLFCB2 2760   SLFCB3 276F   SPACE 0020
SPC    1245   SPC1 124B     SPC2 124E     SPCTAB 00CF   SPLIT 010B
SPLIT1 0491   SPLITF 44AA   SPLITL 048A   SPTEMP 00E5   SQR    3876
SQR1 3894     SRCBUF 49F8   ST2WBA 0E7D   ST2WBB 0E86   ST2WBC 0E8E
ST2WBD 0E95   ST2WBE 0EA6   ST2WBF 0EAE   ST2WKB 0E79   STACK0 1B10
STACK1 1B31   STACK2 1B35   STAKF1 0FCB   STAKF2 0FCF   STAKFP 0FBD
STAKIT 1B0E   STARCT 48A6   START 0000    STAT CD4E     STATBL 3F9C
STATID 0278   STATVT 3E8C   STEND1 0299   STENDC 0284   STKCHK 034E
STKCK1 0357   STKCK2 035B   STKCK3 0363   STKCK4 0367   STKINT 1024
STKPTR 0068   STKSTR 105E   STKVAR 0EB6   STKVR1 0ED2   STKVR2 0F07
STKVR3 0F19   STKVR4 0F1B   STOP 15D8     STOPMS 3E49   STOSP 2C8E
STOSP1 2C95   STOST1 2C69   STOST2 2C7E   STOST3 2C80   STOSTR 2C5C
STOUT 0827    STOUT1 082B   STOUT2 0834   STOUT3 0840   STR2WB 0AEE
STRASS 102E   STRBEG 0053   STRCHK 2C9D   STRCK1 2CAB   STREND 0055
STRIN1 108F   STRIN2 1099   STRIN3 10A6   STRINS 1086   STRLEN 0043
STRNG1 2193   STRNG2 2196   STRNG3 21A2   STRNG4 21AB   STRNM1 2D38
STRNM2 2D44   STRNM3 2D49   STRNM4 2D5A   STRNUM 2D29   STRS 2182
SUBFP 2FE6    SUBFP1 2FE9   SUBTCT 2F54   SUBTR1 2F71   SVCTRS 3EFC
SWAP 22C8     SWAP1 2307    SWAP2 230E    SYNERR 0B61   SYSDAY CC0F
SYSFCB C840   SYSMTH CC0E   SYSYR CC10    TAB    1251   TAN    3C89
TAN1 3C98     TAN2 3CEB     TEMP11 00FB   TEMP15 48AD   TEMP17 48AE
RBASIC by R. Jones   31 May 1988     4-7-4 TSC ASSEMBLER   PAGE 195

TEMP18 48B0   TEMP2 003B    TEMP3 0079    TEMP5 00C3    TEMP6 00D3
TEMP7 00D5    TEMP8 00D7    TEMP9 00F6    TESTWP 2BBC   TOKCTR 00FA
TOKEN 004B    TOKENV 0DA6   TOKNL1 0C47   TOKNL2 0C4F   TOKNLN 0C3A
TOKNS1 0D4A   TOKNS2 0D56   TOKNS3 0D5A   TOKNS4 0D6D   TOKNST 0D29
TOKNV1 0DAC   TOKNV2 0DC8   TOKNV3 0DCC   TOKNV4 0DD7   TOKNV5 0DDD
TOKNV6 0DE4   TOKNV7 0DF0   TRACE 0625    TRACE0 062E   TRACE1 0639
TRACE2 0658   TRACER 0633   TRCFLG 0087   TRFALS 1C1C   TRIGFG 00BA
TRUE 1C3C     TRUNC 32D2    TRUNC1 32D4   TRUNC2 32E4   TRUTH0 1C0B
TRUTH1 1BFB   TRUTH2 1C0A   TRUTH3 1C0D   TRUTH4 1C0F   TTYBE CC07
TTYBS CC00    TTYDEL CC01   TTYWD CC04    TYPCHK 0FA5   TYPCK1 0FAF
UDMSP1 19C5   UDMSP2 19C9   UDMSP3 19CD   UDMSP4 19ED   UDMSPT 19B6
UNARY1 1923   UNARY2 193A   UNARY3 195C   UNARYP 190B   UNRSV 2896
UNRSV1 289E   UNRSV2 28AB   UNRSV3 28CB   UNRSV4 28D3   UNRSV5 28DD
UNRSV6 28E7   UNRSV7 28E8   UNRSV8 28FB   UNSTAK 1B4A   UNSTK1 1B65
UNSTK2 1B79   UPDRC1 2E85   UPDRC2 2E8D   UPDRC3 2EA1   UPDRC4 2EAA
UPDRC5 2EBF   UPDREC 2E6B   USINFG 4898   USING 249B    USING1 24A1
USING2 24AA   USING3 24D1   USING4 24DE   USING5 24E0   USING6 24EC
USING7 24F0   USING8 24F8   USING9 24FA   USINGA 251A   USINGB 2575
USINGC 252F   USINGD 2532   USINGE 2543   USINGF 254B   USINGG 2556
USINGH 2564   USINGJ 256B   USINGM 253F   USR    2001   USRCHK 21AE
USRDAT 0101   USRVEC 0112   VAL    1D70   VAL1 1D7D     VAL2 1D8C
VAL2W1 0E2B   VAL2W2 0E2F   VAL2W3 0E35   VAL2W4 0E3F   VAL2WB 0E06
VALIN1 20CD   VALINS 20C6   VALNS1 1D69   VALNST 1D5B   VALST1 1ECC
VALST2 1ECF   VALST3 1ED3   VALST4 1EFB   VALST5 1EFD   VALST6 1EFF
VALSTR 1EB4   VAR2W1 0AEA   VAR2W2 0AF6   VAR2W3 0AF8   VAR2WB 0ADC
VARADR 005F   VARCHK 2CEB   VARCNT 001E   VARCOD 00CB   VAREND 0061
VARNAM 004C   VARPTR 005D   VARSTO 001F   VARTYP 00CC   VFREC1 2A1D
VFYOPN 2B3D   VFYREC 2A0B   VINPCH 271A   VIRTRA 2E35   VN     0002
VOUTCH 270D   VRAFLG 00ED   VRASIZ 48AB   WARM1 0172    WARM2 0188
WARM3 0193    WARMS CD03    WARMST 016E   WFILE 25F5    WKBFMT 0448
WKBFPT 0057   WKBMT1 0451   WORKBF 45F7   WRITSS 2A47   WRTSS1 2A68
WSTART 0003   XF252A 2A96   XFM0M1 37F8   XFM0M2 3809   XFM0M3 381A
XFM0M5 317F   XFM2M0 382B   XFOUT1 291F   XFOUT2 2922   XFOUT3 2925
XFR252 2A89   XFROUT 291B   XFWBS1 03D9   XPRES1 05AA   XPRES2 05B3
XSDIGS 00FC   XTEMP1 0013   XTEMP3 004F   XTEMP4 0039
