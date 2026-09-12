# DEMO

> Source: `dev/forth/T4THCPY - FORTH Language - Bootable FLEX System and Utilities.zip!T4THCPY.DSK!DEMO.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

( This is the file "DEMO.TXT", a FLEX TXT file containing a series of)
(	demonstration exercises to show how to use 68'FORTH
)
( First the word .cr is defined to do nothing so that it can be	)
(	typed in to show the place where the carriage return goes.	)
(	Anything printed after the .cr is output from the computer.	)
: .cr ;	.cr	( The word which issues a real carriage return is CR	)
( Some simple exercises doing math and using the variable stack	)
( addition		) 2 2 + . .cr
( subtraction	) 5 3 - . .cr
( multiplication	) 2 3 * . .cr
( division		) 9 2 / . .cr
( modulus
)	13 3 MOD	.		.cr
( modulus	neg #	) -13 3 MOD	.		.cr
( slash mod	) 13 3 /MOD	.	.	.cr
( absolute		) -44 ABS .
.cr
( minus
) -44 MINUS .
.cr
( base change	) HEX 2F DECIMAL .	.cr
( non-std base	) 3 BASE ! 11 DECIMAL . .cr
( Stack manipulation words	*)
( duplicate top item		)	2 DUP . .	.cr
( show two top items		)	1 2 . .		.cr
( swap two top items		)	1 2 SWAP . .	.cr
( move 2nd up over to top	)	1 2 OVER . . .	.cr
( show top three items	)	1 2 3 . . .	.cr
( show result of rotation	)	1 2 3 ROT . . . .cr
( Colon definitions	0)
: 2AV	+ 2 / ; .cr
100 150 2AV . .cr
: .2AV 2AV . ;	.cr
100 150 .2AV .cr
( mix long set of words )
2 3 *	5 8 *	+	55 2AV	60 2AV	.	.cr
( example of a DO-LOOP	- the upper limit for loop is input param )
: SHOWOFF	0 DO I . I 2 * . 3 SPACES LOOP ;	.cr
2 SHOWOFF .cr
4 SHOWOFF .cr
( define another SHOWOFF using BEGIN-UNTIL	)
: SHOWOFF	5	BEGIN CR DUP . DUP 3 * .	1- UNTIL ; .cr
SHOWOFF .cr
( now get the EDITOR - which uses the DISK-UTILITIES	-
)
(	and the documentation TOOLS	")
EDITOR TOOLS .cr
( get index of the SCReens from 40 to 45	)
40 45 INDEX .cr
( look at the contents of disk BLOCK number 4 which is down	)
( in the FLEX directory on disk in drive 0	)
4 V	.cr
( invoke EDITOR vocabulary )	EDITOR .cr
( COPY a screen someplace safe so that can EDIT it as demo	)
43 70 COPY .cr
( list it)	70 LIST	.cr
( type line 8	)	
8 T .cr
( now lets delete the parentheses around 57 LOAD	)
X (
( the real carriage return came immediately after the parentheses )
F )
( now the cursor is positioned after the parenthesis - delete back)
Z
( now lets exercise various EDITOR commands on this line
)
( find next occurance of AYS)
F AYS
( move back over the characters in the PAD, i.e. AYS	)
B
( find next occurance of text in PAD)
N
( replace characters with TEXT QWQW )
^R QWQW
( insert characters ZKZK	)
^I ZKZK
( note the difference between ^R and ^I )
( look at next line )
9 T
( lets replace the whole thing)
9 P THIS IS NAEW LINE
( oops, lets go back and fix that )
9 T
X A
( now list the current SCReen )
L
( Now at this point SCR 70 has been changed in the buffers but not)
( on the disk - - the buffers have had flags set by the EDITOR	)
( executing the word UPDATE each time a buffer was changed.	)
( We could go on and in the usual course of things FORTH would	)
( want to reuse those buffers and write them out to disk.	To be	)
( sure that some mistake doesn't cause us to lose the new stuff,	)
( we will force the buffers to be written.	)
FLUSH	.cr
( The stuff just edited is now junk -	to get rid of it --	)
70 CLEAR	.cr
6 P HERE IS A NEW LINE 6
70 LIST	.cr
( At this point the CLEAR has causee the memory and disk to be)
( cleared = set to blanks = and then line 6 has been modified )
( in the buffer only.	The buffer has had its UPDATE flag set )
( so eventually this new line 6 will be written out to disk.	)
( To prevent that, one can clear the buffer only, including	)
( the UPDATE flag by =	')
EMPTY-BUFFERS
