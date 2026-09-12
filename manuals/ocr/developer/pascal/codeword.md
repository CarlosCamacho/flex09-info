# CODEWORD

> Source: `dev/pascal/PASWORD - Pascal Language - Program and Support Utilities.zip!PASWORD.DSK!CODEWORD.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

TTL	CODEWORD - WRITE NEW PASSWORD	26 JAN 81
*
*	Copyright 1981 by Dick Bartholomew
*	and
*
*	Frank Hogg Laboratory, Inc.
*	130 Midtown Plaza
*	Syracuse, NY 13210
*	315-474-7856	9am to 5pm EST
*

FMS	EQU	$D406
WARMS	EQU	$CD03
GETCHR EQU	$CD15
PCRLF	EQU	$CD24
PUTCHR EQU	$CD18

	ORG	$C100

VER	FCB	$20
	FCB	VEREND-*
	FCB	$82,'.,$82,$D,$A
VEREND EQU	*-1

	ORG	$C100

START	BRA	START1

VN	FCB	2

START1 LDX	#FCB
	LDD	#0005	TRACK 0, SECTOR 5
	STD	30,X
	LDA	#9	READ SECTOR
	STA	X
	CLRA
ONLY WORKS ON SYSTEM DRIVE
	STA	3,X	DRIVE 0
	LBSR	FMS
	LBNE	WARMS
S4	LDX	#FCB+68
	LBSR	PCRLF	BYTES OF BOOTSTRAP
	LDA	#'>
	LBSR	PUTCHR
	LDB	#8	MAXIMUM OF 8 CHARS
S1	LBSR	GETCHR
S3	CMPA	#$D	DONE?
	BEQ	FINI
	CMPA	#$20
	BLO	ERR
	CMPA	#$7F
	BHS	ERR
	ASLA
	EORA	#$FF
	LSRA
	STA	,X+
	DECB
	BNE	S1
FINI	TSTB
	BEQ	FINI1
S2	CLR	,X+	FILL WITH ZEROES IF NOT 8
	DECB
	BNE	S2
FINI1	LDX	#FCB
	LDD	#0005	RE-WRITE SECTOR 5, TRK 0
	STD	30,X
	LDA	#10
	STA	X
	CLRA
	STA	3,X
	LBSR	FMS	GO WRITE PASSWORD BACK
	LBRA	WARMS
ERR	LDA	#'?
	JSR	PUTCHR
	BRA	S4

FCB	RMB	320

	END	START
