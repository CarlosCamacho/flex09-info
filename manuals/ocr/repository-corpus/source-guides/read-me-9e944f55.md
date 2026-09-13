# READ-ME

> Source: `sourcecode/library-disks/LIB02 - FLEX Source Library - Source Code and Build Files - Includes DISKEDIT, INSTRUCT, PRMOD.zip!LIB02.DSK!READ-ME.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

DISKEDIT.MB2 is a modification of the DISKEDIT program on Library
disk # 2.	The original version works only with the SWTPc CT-82
range of terminals, making use of the latter's screen control
characters. As these are (mostly) not available on the Microbox
and the [move cursor] function is different, several
modifications	were found necessary in order to run the program.
I think it has been worth the effort.
	There may be some bugs in the program, although the one of
which I am aware is present also in the original - sometimes
there are remnants of previous (ASCII) display corrupting the
spaces between a subsequent HEX display. If this does occur, it
can be cured by entering "?" as a command, to list the help menu:
on exit from that menu, a screen clear is performed. (This is a
modification that I found necessary for the Microbox.)
	The original program also used the cursor control pad on the
CT-82 terminal.	I have altered the codes to suit a very basic
keyboard, but if a more capable keyboard is used, then the
program could be altered again to suit.
