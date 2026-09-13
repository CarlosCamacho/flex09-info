# DEMO

> Source: `flex-09/distributions/FL_504T - FLEX 5.04 System with FHL Tools.zip!FL_504T.DSK!DEMO.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,ll 70
,lm 7
,ju


,CE
DEMO


This is the documentation for the basic program 'DEMO'. Demo uses a file called 'DEMO.DAT' which is a standard text file. You also have the option of using an alternate file upon running the program.

All the commands must begin in column one with a '@'. Lines that begin with a '*' will be considered comment lines and will be ignored. All other lines will be passed through and printed.

Commands are 4 letters long and may have arguments. Arguments must follow the EXACT format listed here. All commands must be in upper case.

The commands are as follows;
,nj

@EXEC <string>	Where <string> is a standard flex command
@EXEC ASN

@CURS LN CL	Where 'LN' is the line and 'CL' is the column number.
@CURS 01 05	Would put the cursor on line 1 column 5.

@PRIN nn	Where 'nn' is the number of lines to print.
@PRIN 5		Would print 5 line feeds.

@WAIT nn	Where 'nn' is the number of seconds to wait.
@WAIT 10	Would wait 10 seconds.

@CLEA
Clears the screen.

@SMOO a		Where 'a' is a capital letter from 'A' to 'G'.
@SMOO A		Would set the smoothest scrool rate.
@SMOO F		Would set for fast jump scrooling.

@STAT NO or YES Assigns a status line at the bottom of the screen.
@STAT YES	Sets a status line.
@STAT NO	Clears ALL status lines.

@HOME
Homes the cursor.

@LOCK SL EL	Locks lines from 'SL' to 'EL'.
@LOCK 03 06	Locks lines 3 thru 6.
@LOCK U		Unlocks any locked lines.

@GREE
Toggles from buff to Green screen and back.

@BLIN
Toggles from underline to blinking block cursor.

@REVE LN	Reverse toggles line 'LN'.

@BELL
Rings terminal bell.

@STOP
Stops and waits for a <return> to be hit.

@ERAS P or A	Erase from cursor to end of page.
	A=All, P=All but rotected.
