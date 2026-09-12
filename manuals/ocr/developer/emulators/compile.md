# COMPILE

> Source: `dev/emulators/JXP6809 - Emulator Tools - Program and Support Utilities.zip!JXP6809.DSK!COMPILE.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

*
*	TRY AND DELETE OLD FILES
*
ONERROR CONT
DELETE,%1.ASM,%1.BIN
:YYYY
*
*	SET TRAP, CALL THE COMPILER AND
*	ENTER INPUT AND OUTPUT SPECS.
*
ONERROR BREAK
SDCOM
%1
%1
*
*	CALL THE ASSEMBLER AND ENTER
*	THE INPUT AND OUTPUT SPECS.
*
SDASM
%1

%1

*
*	FINISHED WITH THE COMPILER'S
*	OUTPUT, SO DELETE IT.
*
DELETE,%1.ASM
:YY
*
*	SET P#2 IF NOT NULL
*
IFN %2=
%2=I,%2,
ELSE
*
*	GET THE RUNTIME PACKAGE
*	AND EXECUTE THE PROGRAM
*
*	PUT BREAKN STATEMENT HERE
*	FOR MANUAL DATA INPUT
*
%2SDRUN,%1
*
*	IF NOT USING THE FLEX I CMMD, THEN
*	PUT DATA HERE FOR AUTO INPUT
*
END
