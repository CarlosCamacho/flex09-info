# EQU68

> Source: `dev/forth/X-forth.zip!x4th8cor.zip!x4th8cor.dsk!EQU68.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

* EQU68
*
CPU     EQU    6800

* 6800 CODE ORIGIN

CODBEG  EQU    $100

* FLEX2 REFERENCES

BSCHR   EQU    $AC00
DELCHR  EQU    $AC01
TTYWID  EQU    $AC04
BSECHO  EQU    $AC07
BUFPTR  EQU    $AC14
ESCRET  EQU    $AC16
SWITCH  EQU    $AC22
CURCOL  EQU    $AC29
CMDFLG  EQU    $AC28
MEMEND  EQU    $AC2B

WARMS   EQU    $AD03
INCH    EQU    $AD0A
INCH2   EQU    $AD0D
OUTCH   EQU    $AD10
GETCHR  EQU    $AD15
PUTCHR  EQU    $AD18
PSTRNG  EQU    $AD1E
PCRLF   EQU    $AD24
RSTRIO  EQU    $AD2A
FGEFIL  EQU    $AD2D
SETEXT  EQU    $AD33
ADDBX   EQU    $AD36
RPTERR  EQU    $AD3F
DOCMND  EQU    $AD4B

FMSCLS  EQU    $B403
FMSCAL  EQU    $B406

FACIA   EQU    $8004

PRINIT  EQU    $ACC0
POUTCH  EQU    $ACE4

* 6800 PAGE 1 STORAGE

        ORG    $C0

TEMPS   EQU    *
FREDIR  RMB    2
LSTFIL  RMB    2
SECTRK  RMB    1
DRIVE   RMB    1
RECORD  RMB    2

FCBBUF  RMB    2
MEM     RMB    8


* THESE TEMPS ARE UNIQUE TO 6800
STEMP   RMB    2
XTEMP   RMB    2
YTEMP   RMB    2

        ORG    $E0

W       RMB    2         INSTRUCTION REG
IP      RMB    2         INSTRUCTION PTR
RP      RMB    2         RETURN STACK POINTER
N       EQU    *


* END OF FILE
