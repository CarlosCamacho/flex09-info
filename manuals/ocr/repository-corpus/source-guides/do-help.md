# DO HELP

> Source: `sourcecode/library-disks/LIB31 - FLEX Source Library - Source Code and Build Files - Includes DO HELP, ERRPATCH, SPR FIL.zip!LIB31.DSK!DO_HELP.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

DO replaces EXEC with many enhancements.
The file called by DO uses .MIC as EXTN.
Up to 10 parameters may be used (A to J).
SYNTAX is DO (file name) paraA,paraB,etc to J.
Control A	ABORTS at end of current CMD.
!	Signifies a comment line. O/P to VDU only.
+	At start of line means a CMD. eg+CAT.
+& Prevents DO aborting frm CMD; but not frm DO
'	Followed by A-J invokes param substitution
	from command line. (A is 1st param).
,	Is parameter seperator in cmd line.
@	Makes next char loose special meaning.
	eg @@ is OK !
Unused I/P lines between CMDS are ignored.
Insufficient information in file resorts to
VDU queries for response.
One DO file may call another S.O.A.I.
EXAMPLE file (To make NEWDISK).
ND.MIC file holds:-
! 'A is disk name, 'B is disk number.
+NEWDISK 1
YYN'A
(answers + name)
'B
(disk number)
+CAT 1		(do CAT.CMD)
! Finished	(Tells you)
USE :-
+++DO ND (disk name),(disk number).
