# S02INCHR

> Source: `dev/csc/CSCPRODS_4 - CSC Development - Programs, Source, and Build Files.zip!CSCPRODS_4.DSK!S02INCHR.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

Check D Flag
	D BEQ *+18
	D SBCB >svareg Subtract With Borrow
	D TFR CC,DP Save CC Register
	D TFR CC,A
	D ANDA #$02
	D STA >sevflg Set V Flag Byte
	D TFR DP,CC Restore CC Register
	D BRA *+39 Skip Decimal Mode Case
	D TFR DP,A Check C Flag
	S
*
PUTCHR EQU * PUT A CHARACTER
 PSHS D,X
 TST SECURE,PCR CHECK SECURE FLAG
 BPL PUTCH2
 LDA #$20 REPLACE WITH SPACE
PUTCH2 JSR OUTCH
 PULS D,X,PC
*
GETCHR EQU * GET A CHARACTER
 PSHS B,X
 JSR [INCHNE]
 PULS B,X
 ANDA #MASKIN MASK INPUT
 BEQ GETCHR IGound when a command is expected, the command
menu is displayed.	Because of the interdependence of many of the
commands, they should be issued in the proper sequence and at the
proper times.	The explanation below is intended to serve as a quick
guide M
 LDAB AREGST
 BRA OPCGC0
OPCDCA EQU * DEX
 DEC XREGST
 BRA OPCHC8
OPCDCB EQU *
 RTS
OPCDCC EQU * CPY EXT
 BRA OPCDC4
OPCDCD EQU * CMP EXT
 BRA OPCDC1
OPCDCE EQU * DEC EXT
 BRA OPCDC6
OPCDCF EQU *
 RTS
OPCDD0 EQU * BNE REL
 BITA #RZ Z=0
 BNE OPCED0
 Jifferences may be handled by coding interface
subroutines, by modifying the code to handle the new I/O
device in native mode, by using similar functional routines
already available in the 6809 operating system, etc.
In the worst case, the 6502 hardware`x9&94'Lm
	'=T&"0PF
]F
&?' &1?Z&sL #m!l=)O54t3d2r1RF.l.V/Z|%0	| u/X.RoLmlm@m'm
	'=T&&
lDm@.Ro"'=T'
$&.R&2D5t.Z,X%
&p0DF~
D/Z L4.V/\.\,Z%	.V/ZO5.T+=T&&s1D.\F~
/\.T'"'=T&&V
