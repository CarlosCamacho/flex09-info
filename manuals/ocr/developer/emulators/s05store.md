# S05STORE

> Source: `dev/emulators/SIM68051 - Emulator Tools - Documentation and Examples.zip!SIM68051.DSK!S05STORE.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

PAG
***************************************************
*	STORE.SBR	store ACC0 @ X
*	Entry- X points to lsd (low address)
*
of destination
*	Exit -
*
*	X= ACC0+PREC
*	A= last moved
*	H= H
*	N= 0
*	Z= 1
*	C= C
*	TEM1= 0	TEM2,3= destination+PREC
*	TEM4,5= ACC0+PREC-1
****************************************************

***************************************************
* MOVE.SBR	move PREC bytes
*	Entry- X points to lsd (low address)
*
of source;
*
TEM2,3 points to lsd of destination
*
*	Exit -
*
*	X= X+PREC
*	A= last moved
*	H= H
*	N
*	Z= 1
*	C= C
*	TEM1= 0	TEM2,3= destination+PREC
*	TEM4,5= -1+X @ exit
****************************************************

STORE STXZ TEM2
 LDXI ACC0

MOVE LDAI PREC
 STAZ TEM1

MOVE1 STXZ TEM4
 LDA ,X

 LDXZ TEM2
 STA ,X
 INCX
 STXZ TEM2

 LDXZ TEM4
 INCX
 DECZ TEM1
 BNE MOVE1

 RTS
