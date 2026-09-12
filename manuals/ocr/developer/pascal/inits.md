# INITS

> Source: `dev/pascal/PASWORD - Pascal Language - Program and Support Utilities.zip!PASWORD.DSK!INITS.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

TTL	INITS - GET THE PASSWORD PROGRAM FROM SECTOR 4	26 JAN 81
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
MON	EQU	$F814

	ORG	$C100

START	BRA	START1

VN	FCB	1
VDATE	FCB	1,26,81

START1 LDX	#FCB
	LDD	#0004	READ SECTOR 4
	STD	30,X
	LDA	#9	PUT TO FCB
	STA	X
	CLR	3,X	MUST BE DRIVE 0
	JSR	FMS
	BNE	MONEX
	LDX	#FCB+64
ST1	LDA	,X+
	CMPX	#FCB+321
	BEQ	MONEX
	CMPA	#$16	SEARCH FOR KEY TO PASSWORD
	BNE	ST1
	CMPA	X
	BNE	ST1
	JMP	FCB+64 FOUND THE PASSWORD PROGRAM
MONEX	JMP	MON	DID NOT FIND IT

FCB	RMB	320

	END	START
