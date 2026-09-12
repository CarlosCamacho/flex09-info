# COMPARE

> Source: `dev/debuggers/BUGS - Debugger Tools - Program and Support Utilities.zip!BUGS.DSK!COMPARE.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

LDAA	#$5B
		STAA	COMREG
		BSR	WAITDI
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
