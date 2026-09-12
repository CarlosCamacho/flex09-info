# WAITSECS

> Source: `dev/pascal/PASC6800 - Pascal Language - Program and Support Utilities.zip!PASC6800.DSK!WAITSECS.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

PROGRAM WAITSECS ( INPUT,OUTPUT ) ;
VAR
	NSECS : INTEGER ;
PROCEDURE WAIT ( N : INTEGER ) ;
CONST
	NTIMES = 800 ;
	(* WITH A 1 M-HZ PROCESSOR,
	AND WITH THE PASCAL SYSTEM NOT IN PAGING MODE,
	THE VALUE OF 800 WILL GIVE A 1 SEC DELAY	*)
VAR
	LOOP,DUMMY,SECONDS : INTEGER ;
BEGIN
	FOR SECONDS:=1 TO N DO
	FOR LOOP	:=1 TO NTIMES DO DUMMY:=DUMMY;
END;
BEGIN
	REPEAT
	WRITE(" HOW MANY SECONDS DELAY ? ");
	READLN(NSECS);
	WAIT ( NSECS ) ;
	UNTIL NSECS=0 ;
END.
