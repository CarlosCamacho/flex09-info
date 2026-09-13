# INSTRUC

> Source: `sourcecode/library-disks/LIB02 - FLEX Source Library - Source Code and Build Files - Includes DISKEDIT, INSTRUCT, PRMOD.zip!LIB02.DSK!INSTRUC.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

DISKEDIT

	Diskedit is a FLEX utility that is written to provide the
user with the ability to edit the data on a diskette irrespective
of the file structure that exists on the diskette. A description
of the features of this utility and how to access those features
follows.

	This utility was originally written by Lawrence Strickland,
an instructor at St. Pete Jr. Collage. However, it was modified
from FLEX2.0 to FLEX9 by Allen Clark, a senior hardware design
engineer, to provide relocatability, a help menu, auto cursor
positioning in the modify mode, automatic adjustment for disk
size, and the ability to search for a string. Comments regarding
useability and suggestions for enhancements would be appreciated.

Since this utility makes use of the programmable features of the
SWTPCo CT-82 terminal it is only compatible with that terminal
or the new 8212 or 8209 terminals from SWTPCo.	However, the
program automatically adjusts itself to track/sector structure
of the users disk system and therefore it will work with small
or large disks.

	The command file is executed like any standard FLEX command
file and since the program is fully re-locatable, it may be
loaded wherever the user desires with the RUN command. For
example entering...

	RUN,4F0C 0.DISKEDIT.CMD

	( "0" and "CMD" optional )

	...on the FLEX command line will load the file at location
$4F0C and then prompt for the number of the disk drive that contains
the diskette that the user wishes to edit. Entering the drive
number will cause the CT-82 terminal to display a HEX/ASCII dump
of track 0, sector 3 and the disk directory information. In addition
the message "HELP = ?" is displayed. This message is intended as
a prompt to the user to remind him that entering a "?" (question
mark) will provide him with a command prompting menu in case he does
not know the available options and their command keys.

	At this point the operator may enter a command or a "?". If the
operator enters a question mark the following menu will be displayed.

	B. AUTO-LINK BACK TO PREVIOUS TRACK/SECTOR
	D. GET NEW DRIVE #
	E. EXIT TO FLEX
	F. AUTO-LINK FORWARD TO NEXT TRACK/SECTOR
	M. MODIFY CURRENT SECTOR
	<.	STEP BACK THRU SECTOR
	>.	STEP AHEAD THRU SECTOR
	(HOME).	SET BYTE POSITION
	v.	SELECT HEX DATA ENTRY MODE
	^.	SELECT ASCII DATA ENTRY MODE
	(ESC).	TOGGLE HEX/ASCII MODE
	S. SEARCH FOR HEX/ASCII STRING ON DISK
	T. SPECIFY NEW TRACK/SECTOR
	Z. ZERO CURRENT TRACK/SECTOR
	>. FORWARD TO NEXT SEQUENTIAL TRACK/SECTOR
	<. BACKWARD TO LAST SEQUENTIAL TRACK/SECTOR

	From this point the user may select any of the above commands
and enter the single key that defines that command.

	Once the editing session begins the user may access the disk
sector(s) to be edited in several modes. If the user does not
know the track/sector location of the data to be altered he may
enter "S" for seacrh and then using the up-arrow, down-arrow, or
"ESC" keys select the HEXADECIMAL or ASCII data entry mode. The
user may now enter the string to be located in intermixed HEX and
or ASCII followed by a carriage return. The system will then report
all track/sector occurances of the user defined string. Once the
user knows the track/sector locations he may use the "T" command
which prompts for the track and sector the operator wishes displayed
to the CRT in HEX and ASCII. Alternately the user may use the right
or left arrow keys to step forward or backward to the desired track
sector, or he may use the "F" or "B" keys to step forward or backward
through a file (the program uses the sector linkage bytes at the
beginning of each sector to determine which linked sector to display
next). Note, because the linkage structure is saved on a linkage
stack by the utility while stepping forward with the "F" command
the "B" command is limited to accessing only those linked sectors
that have been previously accessed with the "F" command.

	Once the sector is accessed (displayed on the CRT) the user
may enter the "M" (modify mode) and alter the data for that sector.
Note that the user may use the cursor keypad arrows to select the
specific byte position he wishes to alter. At this point he simply
enters the data in the format he selected for entry (HEX or ASCII).
The cursor will then automatically position itself to the next byte
position. Since the data is handled in a buffered entry mode the
user may make as many changes to the displayed sector as he so
chooses before entering a carriage return to exit the modify mode.
At this point the user will be queried as to whether or not he
desires the modified sector to be written to the disk. A response
of NO will leave the sector un-altered on the disk and the system
will await a new command.

	This utility is very friendly to the user and once he becomes
familiar with it he will see that its usefulness extends from
the recovery of crashed disks all the way to the creation of
unique disk structures for custom applications.

	BY: Allen Clark
