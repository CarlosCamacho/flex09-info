# BUGMAP2

> Source: `dev/debuggers/BUGS - Debugger Tools - Program and Support Utilities.zip!BUGS.DSK!BUGMAP2.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

MCLOFF FCB $13
MCL FCB $D,$A,$15,0,0,0
 FCB PROMPT,4
*
SAVEGET STX XTEMP
 LDX PORTADR
 RTS
*
INEEE BSR INCH8
 ANDA #$7F
 RTS
*
INCH8 PSHB
 BSR SAVEGET
ACIAIN LDAA	0,X
 ASRA
 BCC ACIAIN
 LDAA 1,X
 LDAB ECHFLG
 BNE RET
ACIAOUT LDAB 0,X
 ASRB
 ASRB
 BCC DAA	0,X
	CMPA	#$3F
	BNE	CLRED
	STAB	0,X
	LDX	TEMP16
	CLR	0,X
	CLR	1,X
CLRED	RTS
*
SWISRCH LDX	#BREAKPT
SSRCH1	STX	TEMP16
	CMPA	0,X
	BNE	SSRCH2
	CMPB	1,X
	BEQ	SSRCH3
SSRCH2	BSR	SWINXA
	BNE	SSRCH1
	SEC
SSRCH3	RTS
*
SWINXA	BSR	WAITDI
WAITB	LDAB	COMREG
		BITB	#$01
		BNE	WAITB
		RTS
*
RESTOR	LDAA	#$0B
		STAA	COMREG
		BSR	WAITDI
		BSR	WAITB
		RTS
*
* ERROR MESSAGE
*
ERROR	FCB	$D,$A,$15
		FCC	/DRIVE NOT READY /
		FCB	4
*
		END
