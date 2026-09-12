# DISPLAY

> Source: `dev/debuggers/BUGS - Debugger Tools - Program and Support Utilities.zip!BUGS.DSK!DISPLAY.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

r
?n- \? 0=bG
 Q
~ 
$
"


N  Na
~`~=`G=b`N

~


`
$zaP? ':' 
'
^&		
 T0%
:%
A%G%
9=`,=`W'!'~`?=b
9a
1
: ~
9
97
q&G${&v
&fWW$z'3~ 9aQD7
Q} ''g
*| (7
F6w
F>w
 Q} (+
}
*}
s (9:7
7
	PDATA1
*
	ORG	$E139
CHANGE	JSR	BADDR
MEMLOC	JSR	PCRLF
	LDX	#INXMSB
	BSR	OUT4HS
	LDX	INXMSB
	BSR	OUT2HS
	DEX
EATLSP	BSR	INEEE
	BSR	ALTER
	BCC	EATLSP
	CMPA	#$20
	BEQ	NEXADX
	CMPA	#PROMPT
	BEQ	NOTHEX
	CMPA	#$0D
	BEQ	NOTHBSR	WAITDI
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
