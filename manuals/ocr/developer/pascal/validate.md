# VALIDATE

> Source: `dev/pascal/PASC6800 - Pascal Language - Program and Support Utilities.zip!PASC6800.DSK!VALIDATE.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

PROGRAM VALIDATE (MESSAGE);
(* QUICK VALIDATION TEST *)
CONST
	THREE = 3;
VAR
	MESSAGE : FILE OF CHAR;
	I : INTEGER;
BEGIN
	REWRITE (MESSAGE);
	WRITELN (MESSAGE);
	FOR I := 1 TO THREE DO
	WRITELN (MESSAGE," SYSTEM SEEMS INTACT ":30);
END.
