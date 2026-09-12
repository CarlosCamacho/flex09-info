# S05DIV

> Source: `dev/emulators/SIM68052 - Emulator Tools - Documentation and Examples.zip!SIM68052.DSK!S05DIV.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

PAG
***************************************************
*	DIV -- signed divide
*	Entry- ACC0= dividend ;	ACC1= divisor ;
*	ranges are +/- ((2**prec) -1) ;
*	divisor non-zero .
*	Exit -	ACC0= signed quotient
*	ACC1= |divisor|
*	ACC2= remainder
*	TEM2= 0	TEM3= 0
*	SIGNS= -1/ 0 /+1 if ACC0, ACC1 were
*	both + / one + / both -
*
*	ENDLESS LOOP IF : divide by zero or minus full-scale.
*	NO CHECK FOR ENTRY CONDITIONS
****************************************************

DIV BSR MULINT setup signs

* insert test for overrange here	!!!

* left justify divisor & setup loop count
 CLRZ TEM3

DIV1 INCZ TEM3

* insert test for divisor= 0 here
* ( loop count too large )

 LDXI ACC1
 BSR ASLXP

 BRCLR 7,ACC1+PREC-1,DIV1

 LDAZ TEM3 copy loop count
 INCA
 STAZ TEM2
 PAG
*	MAIN	LOOP
DIV2 BSR CMP21
 BHS DIV3 if remainder < divisor
 CLC clear carry
 BRA DIV4

DIV3 BSR SUB21 remainder= remainder-divisor
 SEC & set carry

DIV4 BSR ROL00 rotate carry into quotient

 DECZ TEM2 check loop count
 BEQ DIV5

 LDXI ACC2 shift remainder left
 BSR ASLXP

 BCS DIV3 if carry set, repeat from DIV3

 BRA DIV2 repeat main loop
*	END	MAIN	LOOP
 PAG
* loop to restore binary points
DIV5 LDXI ACC2 right shift remainder
 BSR LSRXP

 BSR LSRXP right shift divisor

 DECZ TEM3 loop count
 BNE DIV5

 BRCLR 0,SIGNS,NEG00 fix sign of quotient

 RTS
