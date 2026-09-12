# WORDS

> Source: `dev/dynasoft-pascal/DYNASOFT - Dynasoft Pascal - Program and Support Utilities.zip!DYNASOFT.DSK!WORDS.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

PROGRAM WORDS;
CONST N=10;CR=13;(*CARRAGE RET.*)
VAR I:INTEGER; C:CHAR;
A:ARRAY[1..N] OF CHAR;
PROCEDURE PRINT;
VAR J:INTEGER;
BEGIN FOR J:=1 TO I DO WRITE(A[J]);
WRITELN
END;
PROCEDURE SWITCH(I,J:INTEGER);
VAR TEMP:CHAR;
BEGIN TEMP:=A[I];A[I]:=A[J];A[J]:=TEMP
END;
PROCEDURE MIX(K:INTEGER);
VAR I:INTEGER;
BEGIN
IF K=1 THEN PRINT ELSE
BEGIN MIX(K-1);
FOR I:=1 TO K-1 DO
BEGIN SWITCH(I,K);
MIX(K-1);
SWITCH(I,K)
END
END
END;
BEGIN
REPEAT I:=0;
WRITE('TYPE UP TO ',N:2,'LETTERS:');
REPEAT READ(C);
IF C<>CR THEN BEGIN I:=I+1;A[I]:=C END
UNTIL (C=CR) OR (I=N);
WRITELN;
IF I>0 THEN MIX(I)
UNTIL I=0
END.
