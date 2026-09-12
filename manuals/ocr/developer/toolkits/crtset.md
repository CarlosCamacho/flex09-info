# CRTSET

> Source: `dev/toolkits/TOOLKIT2 - Programming Toolkit - Program and Support Utilities.zip!TOOLKIT2.DSK!CRTSET.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

JSR	[NXTCHR,PCR]
	JSR	[NXTCHR,PCR]
	CMPA	#'3	ONLY SEARCH FOR 2 CHARS VALID
	LBHS	CMDLOP
	CMPA	#'0	MUST BE AT LEAST ONE
	LBLS	CMDLOP
	STA	SCNT,U
	JSR	[NXTCHR,PCR]
	JSR	[GETHEX,PCR]	GET CHAR TO SEARCH FOR
	LBCS	CMDLOP
	TSTB
	LBEWO
	LEAX	SPECMG,PCR	ASK FOR FILE SPEC
	LBSR	PDATA
	JSR	[INBUFF,PCR]
	LDD	ERF
	LBSR	PUTTWO
	JSR	[DOCMND,PCR]
	JSR	[GETCHR,PCR]
	LBRA	THALL3
*
THALL	LDD	#$1600
	LBSR	SETCUR
	LEAX	CMDSTR,PCR
	LBSR	PDATA
	LDD	#$1700
	LBSR	SETCUNX EQU	64
INDEX INTO FCB FOR DATA
SYSINF EQU	3	SYS-INFO SECTOR NUMBER
*
* FLEX SUBROUTINE LINKAGES
*
FLEX	EQU	$CD00
*
* FCB INDICES (X)
*
FUNC	EQU	0
ERR	EQU	1
DRIVE	EQU	3
FILNAM EQU	4
EXT	EQU	12
ATTRIB EQU	15
STARTA EQU	17
ENDADR EQU	.~0D_=M9m
~
*9L)0
%d0G&J	H4+`0
0l&=M!,=M04_=M950,=M_=M9L
c0
l
&bDL4'WF,
Z&d@'DF,
N&d 'RF,
B5'C=ML2
&0
<
bmM'0
? 0
@
RL

0
@
G0N~ME4|L0
5sL2=M~M|L>
s=M$0LG$
A$9#
4=M$&d=M5  6  7  8  9  A  B  C  D  E  F <HEX/ASC> 0123456789ABCDEF
=============================================================================REF\WAD, WRITE, DISPLAY, CHANGE, SEARCH, STEP, NEXT, EXIT
UNIT, RESTART, EMPTY, PREVIOUS, A
