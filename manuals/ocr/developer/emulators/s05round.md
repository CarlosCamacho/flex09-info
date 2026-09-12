# S05ROUND

> Source: `dev/emulators/SIM68052 - Emulator Tools - Documentation and Examples.zip!SIM68052.DSK!S05ROUND.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

PAG
***************************************************
*	ROUND
*	Entry- ACC1, ACC2 non-negative

*	Exit - ACC2= 2*ACC2
*
*	if (ACC2=>ACC1) AND (ACC0=>0) , increment ACC0
*
*	if (ACC2> ACC1) AND (ACC0<0) , decrement ACC0
*
*
*
*	TEM1 destroyed
*
****************************************************

ROUND LDXI ACC2 double the remainder
 BSR ASLXP

 BSR CMP21 compare (ACC2-ACC1)

 BLO ROUND2

 LDXI PREC check for equality
ROUND1 LDAZ ACC1-1,X
 SUBZ ACC2-1,X
 BNE ROUND3
 DECX
 BNE ROUND1
 BRCLR 7,ACC0+PREC-1,INC00 here if equal
ROUND2 RTS

ROUND3 BRCLR 7,ACC0+PREC-1,INC00
 BRA DEC00
