# PRIMES

> Source: `dev/pascal/PASC6800 - Pascal Language - Program and Support Utilities.zip!PASC6800.DSK!PRIMES.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

PROGRAM PRIMES ;

	(* A PROGRAM TO COMPUTE AND TABULATE
	THE FIRST N PRIME NUMBERS .	*)

CONST
	NPRIMES = 400 ;
	SQRTNP	=	20 ; (* SQUARE ROOT OF NO OF PRIMES *)

VAR
	PRIME : BOOLEAN ;
	I,J,K,LIM,X,SQUARE : INTEGER ;
	P : ARRAY [ 1..NPRIMES ] OF INTEGER ;
	V : ARRAY [ 1..SQRTNP	] OF INTEGER ;

FUNCTION MODFN ( NUMBER,MODULO : INTEGER ) : INTEGER ;
	BEGIN
	MODFN:=NUMBER - (NUMBER DIV MODULO) * MODULO ;
	END;

BEGIN
	P[1]:=2; X:=1; LIM:=1; SQUARE:=4;
	FOR I:= 2 TO NPRIMES DO
	BEGIN
	REPEAT
		X:=X+2;
		IF SQUARE <= X THEN
		BEGIN

V[LIM]:=SQUARE;

LIM:=LIM+1;

SQUARE:=P[LIM]*P[LIM]
		END;
		K:=2 ; PRIME:=TRUE;
		WHILE PRIME AND ( K < LIM ) DO
		BEGIN

IF V[K] < X THEN V[K]:=V[K]+P[K];

PRIME:=( X <> V[K] ) ;

K:=K+1
		END
	UNTIL PRIME;
	P[I]:=X;
	IF MODFN(I,10) = 0 THEN
	BEGIN
		WRITELN;
		FOR J:= I-9 TO I DO WRITE(P[J]);
	END;
	END;
END.
