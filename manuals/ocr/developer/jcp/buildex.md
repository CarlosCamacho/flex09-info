# BUILDEX

> Source: `dev/jcp/JCPFS - JCP Development - Program and Support Utilities.zip!JCPFS.DSK!BUILDEX.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

*
*	CHECK FOR NULL P#2
*
IF %2=
EON
*	NO FILES ENTERED
END
ELSE
*
*	TRY AND DELETE OLD EXEC FILE
*
ONERROR CONT
PDEL,JCPEX
:Y
*
*	SET TRAP & CALL THE BUILD COMMAND
*
ONERROR END
BUILD,JCPEX
*
*	CHECK P#2 FOR A NULL VALUE
*	IF NULL, QUIT BUILD AND EXEC FILE
*	IF NOT NULL, ENTER LINE & LOOP
*
. LOOP
IFN %2=
CALL ENTER
GOTO LOOP
ELSE
%2=#
%2
EXEC,JCPEX
*
*	ROUTINE TO ENTER LINES
*	AND SHIFT PARAMETERS
*
. ENTER
%9=JCP,WORDCNT+'%1'%2
%9
%2=%3
%3=%4
%4=%5
%5=%6
%6=%7
%7=%8
%8=
RETURN
