# LIFE

> Source: `dev/forth/T4THCPY - FORTH Language - Bootable FLEX System and Utilities.zip!T4THCPY.DSK!LIFE.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

( THE GAME OF LIFE) FORTH DEFINITIONS FORGET TASK : TASK ;
( adapted from Dr. Dobbs Journal of Computer Calisthenics &)
	( Orthodontia, No. 25, p. 21 )
 (	see also	the DEC 1978 issue of BYTE )
DECIMAL
15 CONSTANT XLEN	15 CONSTANT YLEN
 0	VARIABLE GEN#
: NEW ' ! ;	( change constant by e.g.	40 NEW XLEN )
: HOMEUP 12	EMIT	; ( form feed)
: ARRAY <BUILDS *	ALLOT DOES> SWAP XLEN	* + +	;
	( creates	user-definied variable type ARRAY of bytes -- 2 D )
XLEN	YLEN	ARRAY UNIVERSE	( get	I J byte by	I J UNIVERSE)

(	check and normalize apply the rules of life )
: CHECK DUP 3 = IF DROP	2+ ELSE 2 = 0= IF 4 + THEN THEN ;
: NORMALIZE	YLEN 0 DO	XLEN 0 DO
		I J UNIVERSE DUP C@	DUP 3 >
		IF DROP 0 ELSE DUP 1 >
	IF DROP 1 THEN THEN SWAP C!
	LOOP	LOOP ;
( these apply the	rules for changing each	element)

(	to clear display	CLEAR )
: CLEAR YLEN 0 DO	XLEN 0 DO 0 I J UNIVERSE C! LOOP LOOP	;
( to set and reset elements E.G. to set 3 4 ALIVE,	3 4 SET	)
: SET	UNIVERSE	1 SWAP C! ;
: RESET	UNIVERSE	0 SWAP C! ;
(	to DISPLAY	the UNIVERSE )
: DISPLAY HOMEUP	XLEN 0 DO	." _" LOOP	GEN#	@ ." GEN #" .	CR

YLEN 0 DO	XLEN 0 DO
	I J	UNIVERSE C@ IF ." *" ELSE SPACE THEN

LOOP	CR	LOOP ;
( the following does loop over universe and applies rules )
:	GENERATE	YLEN 0	DO	XLEN	0 DO	0 ( init count)
	J 2+ YLEN MIN	J 1- 0 MAX	DO	( settin up 3x3 loop)
	J 2+ XLEN MIN	J 1- 0 MAX	DO
		I J	UNIVERSE C@ 1 AND + ( count # with 1st bit on)	LOOP LOOP
		I J	UNIVERSE C@ 1 AND ( get IJ 1st bit) SWAP OVER -
	( top of stack has number of neighbors, second is IJ 1st bit)
	CHECK	I J	UNIVERSE C!
LOOP LOOP	;

: GENERATIONS	0 DO 1 GEN# +! DISPLAY GENERATE NORMALIZE LOOP

1 GEN# +!	DISPLAY ;
: D DISPLAY ; : G GENERATIONS ;	( abbreviations for these )
: S SET ; : R RESET ;
