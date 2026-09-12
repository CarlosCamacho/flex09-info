# S05BTD

> Source: `dev/emulators/SIM68052 - Emulator Tools - Documentation and Examples.zip!SIM68052.DSK!S05BTD.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

PAG
***************************************************
*	BTD -- binary to decimal conversion
*
*	NO CHECK FOR OVERRANGE ! ! !
*
*	Entry	ACC0 = quantity to convert
*
*	range : -[(10**(BCDPRC-1)) -1] TO [(10**BCDPRC) -1]
*	(BCDPRC-1 digits for minus,BCDPRC digits for plus)
*
*	Exit	BCDPRC digits planted in DSPBUF
*	msd in DSPBUF overwritten w/ $A	for minus
*	ACC0= |INT(ACC0/(10**BCDPRC)|
*	ACC1= 10:	ACC2= (10**BCDPRC) digit
*	TEM2=0 : TEM3=0 : TEM4= # BCDPRC-1
*	BCDSGN= 0 / -1	IF	minus / plus
*
*	X= # BCDPRC : A= $A
*
*	H= 0 : N= 0 : Z= 0 : C= 0
****************************************************

BTD LDAI -1 save sign
 BRCLR 7,ACC0+PREC-1,BTD1
 BSR NEG00
 CLRA
BTD1 STAZ BCDSGN

 LDXI ACC1 ACC1= 10
 BSR CLRXP
 LDAI 10
 STAZ ACC1

 CLRX loop counter

*	MAIN	LOOP
BTD2 STXZ TEM4
 BSR DIV
 LDXZ TEM4
 LDAZ ACC2
 STAZ DSPBUF,X
 INCX
 CPXI BCDPRC
 BNE BTD2

* END	MAIN LOOP

 LDAI $A
 BRSET 0,BCDSGN,BTD3
 STAZ DSPBUF+BCDPRC-1

BTD3 RTS
