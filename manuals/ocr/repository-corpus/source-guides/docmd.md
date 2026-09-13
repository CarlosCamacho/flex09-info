# DOCMD

> Source: `sourcecode/library-disks/LIB07 - FLEX Source Library - Source Code and Build Files - Includes ABSPRO, ASCHEX, DOCMD.zip!LIB07.DSK!DOCMD.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

LIB FORMAT
 LIB MODULE.MAC
 LIB LDRDEF
 LIB FCBDEF
 TTL DOCMD
 PAG 10
 MODULE 'DOCMD - RLOAD Vers 3.0 '
* * * * * * * * * * * * * * * * * * * * * *
*
* Process loader directives.
*
* Input	rX = link file FCB
* Output Affects system globals RAMBPT, ROMBPT, and
*	WRFCB
*
*	Directive
Meaning
*
*	:NAME <corefile> - Assign <corefile> as output of loader
*	:CODE <start addr> - Begin code section at <start addr>
*	:DATA <start addr> - Begin data section at <start addr>
*		<start addr> is one to four hex digits
*
* Note that the angle brackets merely denote that the item
* so enclosed should be replaced with a real value.
* Also, the directive must follow the 'command' character, the
* colon, without any intervening commas or carriage returns.
* RLOAD has no mechanism at this time to check the number of
* the parameters, only the validity. A missing parameter in
* the :NAME directive will cause problems that may be hard to
* find. Only the first letter in the directive is used.
*
* The name directive is ignored after the first occurrence,
* but the code and data directives may be used to fragment
* those sections if you really want to.
* * * * * * * * * * * * * * * * * * * * * *
*REV3.0 Changed EXT syntax
* * * * * * * * * * * * * * * * * * * * * *
 ENT DOCMD
*
 EXT ASCHEX
 EXT FLEX
 EXT GETTOK
 EXT PSTRNG
 EXT ZCOPY
 EXTDAT RAMBPT
 EXTDAT RAMPTR
 EXTDAT ROMBPT
 EXTDAT ROMPTR
 EXTDAT WRFCB
*
DOCMD EQU *
*
* Read the next token
*
 BSR GETTOK	*REV3.0
 LDA ,Y
 CMPA NAMDIR,PCR
 BEQ NAMPRO
 CMPA RAMDIR,PCR
 BEQ RAMPRO
 CMPA ROMDIR,PCR
 BEQ ROMPRO
 BRA ERROR
*
* Process name directive (but only once)
*
NAMPRO EQU *
 BSR GETTOK Get output file name	*REV3.0
 LDA #OK
 CMPA NAMFLG,PCR
 BEQ EXIT
 STA NAMFLG,PCR
 LDB #11 Maximum token length
 LDX WRFCB,PCR
 LEAX FNAME,X Point rX to output FCB name area
 BSR ZCOPY	*REV3.0
 BRA EXIT
*
* SET RAM BASE
*
RAMPRO EQU *
 LDY RAMBPT,PCR
 PSHU Y
 BRA REXIT
*
* SET ROM BASE
*
ROMPRO EQU *
 LDY ROMBPT,PCR
 PSHU Y
*
REXIT EQU *
 BSR GETTOK Get address	*REV3.0
 BSR ASCHEX Convert from ASCII to hex	*REV3.0
 PULU X
 STD ,X++
 STD ,X++
 STD ,X
*
EXIT EQU *
 RTS
*
ERROR EQU *
 LEAX ERRMSG,PCR
 BSR PSTRNG	*REV3.0
 JMP [FLEX,PCR]
*
ERRMSG FCC EOL,'Error in loader directive, '
	FCC ' DOCMD',EOS
NAMFLG FCB 0
NAMDIR FCC 'N'	Name directive
RAMDIR FCC 'D'	Data directive
ROMDIR FCC 'C'	Code directive
 ENDMOD
 END
