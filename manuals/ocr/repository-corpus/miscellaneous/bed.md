# BED

> Source: `misc/uncategorized/NEWB_634 - FLEX Software Archive - Source Code and Build Files - Includes JAN-80, BED, BED1.zip!NEWB_634.DSK!BED.HLP`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

BED.BAS HELP FILE

BED IS A BASIC INPUT AND EDIT PROGRAM RUN FROM BASIC
IT'S PURPOSE IS TO EASE THE JOB OF TYPING IN A BASIC
PROGRAM

IT CONVERTS LOWER CASE INPUT LETTERS TO UPPER CASE
AND USES UPPERCASE AND 'ESC' SEQUENCE LETTERS AS
ONE LETTER VERBS.

FILENAMES DEFAULT TO .TXT AND 'BED' RENAMES FILE
ON DISK WITH .BAK EXTENSION

 I HAVE TRIED TO MAKE THIS COMPATABLE AS MUCH AS
POSSIBLE WITH TSC EDIT.

		COMMANDS

>>+'FLEX COMMAND' SENDS FLEX COMMAND TO FLEX

>>A	'AUTO LINE NUMBER' (CTRL 'A' WHILE IN INSERT MODE)
>>A100,10 'THIS IS THE DEFAULT VALUE'
>>A	'WITH NO NUM TOGGLES THE FLAG'

'A' WILL GO INTO INSERT MODE FROM COMMAND LINE
'a' IS THE SAME AS 'A'

>>C@string1@string2@	'CHANGES 'ALL' STRING1 TO STRING2'

>>D1 OR >>D1,5 OR >>D1-5 'DELETES 1 OR 1,2,3,4,5 LINES

>>E3 OR >>E3,5	'EDITS LINE(S) 3 OR 3,4,5'

>>F@string@	'FINDS AND PRINTS ALL LINES WITH 'string'

>>I2	'INSERT AFTER LINE 2'	>>I	INSERT AFTER END LINE

>>P1,4	OR >>P1,4 +P	'PRINTS LINES 1-4 (OPTIONAL TO PRINTER)'

>>S	'SAVE TO DISK'

>>'UPPERCASE CHARACTER'=STRING	CHANGES THE DEFAULT
	VALUE OF THAT CHARACTER TO STRING
>>'UPPERCASE CHARACTER'@=STRING CHANGES THE DEFAULE
	VALUE OF THE 'ESC','CHAR' TO THAT STRING.

>>T	THIS WILL ALLOW CHANGING THE TAB COLUMNS

>>P=<STRING>	'SETS UPPERCASE P EQUAL TO <STRING>'
>>PE=<STRING> 'SETS 'ESC' P EQUAL TO <STRING>'

	EDIT NOTES

	The edit function is very powerful and easy to
use, It uses the 'ESC' key and some special 'CTRL'
characters.

	After entering the command 'BED' will print the
line to edit and prompt you with the line # like so.

1 = THIE IS A TEST LINE

1 =

	Lets say you wanted to correct the misspelled word
THIE and then chop off the last word LINE.
First type 'ESC' key and then 'E'

1 = THIE

	Now type a backspace to eliminate the 'E' and type a
'S' to correct it. Now type 'ESC' and 'T'

1 = THIS IS A T

	Now type another 'ESC' and another 'T'

1 = THIS IS A TEST

 Now type a 'LINFEED' and you've done it!
This sounds complex but once you've played with it
awile you will see the ease of it.

OTHER COMMANDS AND WHAT THEY DO WHILE IN EDIT MODE

CONTROL CHARACTER COMMANDS ARE TYPED WHILE HOLDING THE
'CTRL' KEY DOWN

'D' DELETES ALL 'ALPHA' CHARACTERS TO THE LEFT OF THE
	CURSOR UNTIL A NON-ALPHA CHARACTER IS INCOUNTERED.

'E' POSITIONS THE CURSOR AT THE END OF LINE FOR APPENDING
	TO THE LINE.

'X' EXIT'S WITHOUT CHANGING ANYTHING

'F' MOVES CURSOR ONE POSITION FORWARD IN LINE
'B' MOVES CURSOR BACK ONE POSITION

	The above two are not implemented yet.

'ESC' SEQUENCE CHARACTERS - TYPE 'ESC' THEN

'TAB' POSITIONS CURSOR 8 CHARACTERS FROM CURRENT
	POSITION.

'BACKSPACE' MOVES CURSOR BACK ONE POSITION

	OTHER THINGS IT WILL DO

AT ANY TIME YOU MAY TYPE IN MORE CHARACTERS

'BACKSPACE' WILL DELETE ONE CHARACTER TO THE LEFT
'LINEFEED' WILL TERMINATE THE LINE AT THE CURSOR POSITION
'CARRAGE RETURN' WILL PRINT TO THE END OF THE LINE AND
 EXIT
'TAB' WILL INSERT 8 SPACES (TAB TO COLUMN WILL BE ADDED)

	NOTES ON INSERT

 While in insert mode many things can be done.

'CTRL' 'A' AT THE PROMPT WILL PROMPT WITH 'A='
 THIS ALLOWS YOU TO TOGGLE THE AUTO LINE MODE OR
 CHANGE THE VALUE(S) OF THEM. <CR> ALONE TOGGLES
 'A=250,45' WILL CHANGE THE LINE TO 250 AND THE INCREMENT
 TO 45.

	Many UPPERCASE letters have BASIC verbs defined for them
and the 'ESC' sequence also have BASIC verbs defined for
them.
 They are set by DATA statements in the program.

THE UPPERCASE VERBS AND 'ESC' VERBS ARE

A=ASC(	A=ABS(
B=	B=
C=CHR$(	C=CLOSE
D=DATA	D=DIGITS
E=ELSE	E=EXEC
F=FOR	F=FRE(0)
G=GOTO	G=GOSUB
H=HEX	H=
I=INPUT	I=INCH$(0)
J=	J=
K=KILL	K=
L=LEFT$(	L=LEN(
M=MID$(	M=
N=NEXT	N=NOT
O=ON ERROR GOTO
O=OPEN
P=PRINT	P=PEEK
Q=	Q=
R=RIGHT$(	R=RETURN
S=STR$(	S=STEP
T=THEN	T=TAB(
U=USING	U=USR(
V=VAL	V=
W,X,Y,Z=	W,X,Y,Z=

 All of these can be changed while in comand mode.

	It is easy to forget your terminal is in lowercase
as all the characters are echoed back in uppercase.
But if you want to use any of these single keystroke
or double keystroke verbs all you do is type either
a uppercase letter or 'ESC' then a letter (note 'esc'
does not have to be followed by a uppercase letter)
If you make a error in your selection 'CTRL' D will
erase all 'alpha' characters to the left or use backspace

	Tab will space out to the next tab column (default to
8,16,24 ect). 'CTRL' X canceles everything and
reissues the prompt.

 I've probaly forgotten something so look at the listing
if you have any questions. I am also going to rewrite
this to correct the bugs ang hopefully make it run faster
but you can delete the REM lines and then COMPILE it
and you get 2000 more bytes and it runs much faster.

One final note

When it askes if you are in uppercase you have
to answer with a 'Y' and when it askes if you are in
lowercase you have to answer with a 'y'

Frank Hogg Dental Laboratory
130 Midtown Plaza
700 East Water Street
Syracuse,NY 13210
315-474-7856	315-469-4811
