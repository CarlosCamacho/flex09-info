# S05MULIN

> Source: `dev/emulators/SIM68051 - Emulator Tools - Documentation and Examples.zip!SIM68051.DSK!S05MULIN.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

PAG
***************************************************
*	MULINT -- setup accumulators for multiply & divide

*	Exit - ACC2= |ACC0|, ACC1= |ACC1|, ACC0= 0
*	SIGNS= -1/0/+1 if ACC0,ACC1 are
*	both+ /opposite signs / both-.
*	X= -1
*	A= ls byte of new ACC2
*	H= H
*	N= 1
*	Z= 0
*	C
*
*
****************************************************

MULINT LDAI -1
 STAZ SIGNS

 BRCLR 7,ACC0+PREC-1,MULIN1
 INCZ SIGNS
 BSR NEG00

MULIN1 BRCLR 7,ACC1+PREC-1,MULIN2
 INCZ SIGNS
 LDXI ACC1
 BSR NEGXP

MULIN2 LDXI PREC-1

MULIN3 LDA ACC0,X
 STA ACC2,X
 CLR ACC0,X
 DECX
 BPL MULIN3

 RTS
