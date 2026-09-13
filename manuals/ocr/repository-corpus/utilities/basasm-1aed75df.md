# BASASM

> Source: `utilities/system/UTILITY1 - FLEX System Utilities - Program and Support Utilities.zip!UTILITY1.DSK!BASASM.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

%BASASM

a BASIC "assembler"

	This	program called BASASM is what we call a BASIC assembler.	Since there
is no such thing as a BASIC assembler, just remember that this program	converts
text	files	(without line numbers) to BASIC files (with line numbers).	It also
allows the use of labels instead of	line	numbers	(much	like	an	assembler).	
Because of the way the file is formatted, we chose to call it a BASIC assembler.
Just as in a regular assembler, if you have no label then	you	must	press	the
space bar once before typing the rest of the line.	If you do have a label, then
the label comes first (without a space in front) and you must	space	after	the
label as well, then proceed with the rest of the line.

	Since	this	program	is designed to work with TSC's FLEX, TEXT EDITOR, and
BASIC, you should be sure that you have them or have re-written	the	source	to
work	with other EDITOR's and BASIC's.	As an example, Smoke Signal Broadcasting
has an EDITOR almost identical to TSC's, and so it should work with	the	proper
changes.	We may possibly offer a version for SSB systems in the future.

	Use the following basic rules:

	1.	No line numbers or labels need be used.	However, if a jump or a GOTO
	is needed, then a label using 2, 3, or 4 letters	or	numbers	should	be
	used.	A	minimum	of	2 characters is required!	Anything longer than 4
	characters will default to the first 4 characters anyway.

	2.	If no label is used, a space must be inserted at	the	first	of	the
	line.

	3.	To	conserve memory, all spaces may be omitted except for the one in
	rule number 2 and one space required right after	a	label.	On	a	GOTO	#
	statement	be sure to use a space before the label, such as GOTO xxx, not
	GOTOxxx.


	4.	ON ERROR GOTO statements are okay as long as the	GOTO	is	not	line
	zero.

	5.	When	using ON xxx GOTO xxx,yyy,zzz	be sure to use the format shown
	here with no spaces between, only the comma.

Here is an example of a typical EDITOR program:

NEW FILE:
	1.00= REM THIS IS A TEST FILE
	2.00=STRT GOSUB CLRS
	3.00= PRINT "(1) NEW RECORD"
	4.00= PRINT "(2) FIND CUSTOMER"
	5.00= PRINT "(3) DELETE RECORD"
	6.00= PRINT "(4) CHANGE RECORD"
	7.00= PRINT "(5) EXIT PROGRAM"
	8.00= INPUT "ENTER YOUR CHOICE",X
	9.00= IF X<1 OR X>5 THEN GOTO STRT
	10.00= ON X GOTO NEWR,FNDC,DELR,CNGR,EXIT
	11.00=NEWR PRINT"THIS IS TO ENTER A NEW RECORD IN THE SYSTEM"
	12.00= REM ***OPEN FILE, ETC ****
	13.00= GOTO STRT
	14.00=FNDC PRINT "THIS IS TO FIND A CUSTOMER RECORD"
	15.00= GOTO STRT
	16.00=DELR PRINT	"THIS IS TO DELETE A CUSTOMER RECORD"
	17.00= GOTO STRT
	18.00=CNGR PRINT "THIS IS TO CHANGE A CUSTOMER RECORD"
	19.00= GOTO STRT
	20.00=EXIT END
	21.00=CLRS REM THIS IS A CLEAR SCREEN ROUTINE FOR Z-19/H-19 TERMINALS
	22.00= PRINT CHR$(27)+"E"
	23.00= RETURN

Most of the rules mentioned are here in the example, but you only	need	to	try
this one or a few of your own to get the idea.

	The	main purpose of using the EDITOR to write your programs is so that you
have the flexiblity of correcting	errors	in	the	whole	program	without	re-
entering	the program or correcting a line at a time.	Also, many other features
of the EDITOR are very useful in making corrections to programs.	Once a program
has	been	converted	to	BASIC,	you	may make all the normal changes in BASIC.
However, we suggest to keep the TEXT file on the disk and make all changes to it
and just use BASASM again to "assemble" it into BASIC.

	After	your	program	is	written	using	the EDITOR, save it in the normal
fashion.	Then use the BASASM command by saying:	BASASM,filename,start#,incre#	
The term start# means the starting number for line numbers in the BASIC program,
(just like RENUMBER.CMD) and incre# is	the	increment	number	(also	like	the
RENUMBER.CMD program).	The default is starting with line 10 and incrementing by
10.	If you would like to have it start at 50 and increment by	20,	just	type:	
BASASM,filename,50,20
If there are errors found, they will be	reported.	Otherwise,	all	should	be
fine.	There is an option to save the program even if errors are found.

	A	few words about errors.	If you get a "SYMBOL NOT FOUND" error, it means
that a label was used somewhere but not defined.	This could also be	a	problem
if	you	use	"IF A=5 THEN PRINT" when you have a label called 'PRIN', since the
program assumes 'PRINT' and 'PRIN' are the same.	Sometimes it is just easier to
say "IF A=5 THEN GOTO xxx".

	Once you have tried to write program this way, you will find it much easier
to do than the standard method.	Also, it will prepare you for	such	things	as
BASIC09 and PASCAL!!!


GOOD LUCK AND HAVE FUN!!
