# S05NEG

> Source: `dev/emulators/SIM68051 - Emulator Tools - Documentation and Examples.zip!SIM68051.DSK!S05NEG.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

***************************************************
*	MUL -- signed multiply
*	Entry-

*	Exit -	ACC0= ACC0*ACC1
*	ACC1= |ACC1|
*	ACC2= 0
*
*	NO CHECK FOR	OVERFLOW		! ! ! ! !!!
*
*
SIGNS= -1,0,+1 if ACC0/ACC1=
*	both +, opposite, both -
*
TEM1= 0
*
TEM2= 0
****************************************************

MUL BSR MULINT setup SIGNS, & accumulators

 LDAI 8*PREC
 STAZ TEM2 loop count

*	MAIN LOOP
MUL1 BSR ASL00 shift product left

 LDXI ACC2 shift multiplier left
 BSR ASLXP

 BCC MUL2 if carry set, product+multiplicand
 BSR ADD01

MUL2 DECZ TEM2 loop count
 BNE MUL1
*	END	MAIN LOOP
 BRCLR 0,SIGNS,NEG00 fix sign

 RTS
