# VALIDATE

> Source: `dev/pascal/PASC_680 - Pascal Language - Program and Support Utilities.zip!PASC_680.DSK!VALIDATE.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

PROGRAM VALIDATE (KEYBOARD,SCREEN);
(* QUICK VALIDATION TEST *)
CONST
	THREE = 3;
VAR
	SCREEN : FILE OF CHAR;
	I : INTEGER;
BEGIN
	REWRITE (SCREEN);
	WRITELN (SCREEN);
	FOR I := 1 TO THREE DO
	WRITELN (SCREEN," SYSTEM SEEMS INTACT ":30);
END.
