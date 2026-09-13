# INSTRUC

> Source: `misc/uncategorized/S09-010 - PL9 Development.zip!S09-010.DSK!INSTRUC.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

DISKEDIT av Allen Clark, U.S.A

	Diskedit is a FLEX utility that is written to provide the
user with the ability to edit the data on a diskette irrespective
of the file structure that exists on the diskette. A description
of the features of this utility and how to access those features
follows.

	This utility was originally written by Lawrence Strickland,
an instructor at St. Pete Jr. College. However, it was modified
from FLEX2.0 to FLEX9 by Allen Clark, a senior hardware design
engineer to provide the following additional capabilities....

	1. Relocatability
	2. A "HELP" menu
	3. Auto cursor positioning in the modify mode
	4. Automatic adjustment for disk size
	5. String search capability
	6. Direct execution of any FLEX command


Since this utility makes use of the programmable features of the
SWTPCo CT-82 terminal it is only compatible with that terminal
or the new 8212 or 8209 terminals from SWTPCo.	However, the
program automatically adjusts itself to track/sector structure
of the users disk system and therefore it will work with small
or large disks. With some effort by an experienced assembly
language programmer this program could be modified for other
intelligent programmable terminals.

	The command file is executed like any standard FLEX command
file and since the program is fully re-locatable, it may be
loaded wherever the user desires with the RUN command. For
example entering...

	RUN,1000 0.DISKEDIT.CMD

	( "0" and "CMD" optional )

	...on the FLEX command line will load the file at location
$1000 and then prompt for the number of the disk drive that contains
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
	(CURSOR) RIGHT, LEFT, UP, DOWN
	(HOME).	SET BYTE POSITION
	(ESC).	TOGGLE HEX/ASCII MODE
	S. SEARCH FOR HEX/ASCII STRING ON DISK
	T. SPECIFY NEW TRACK/SECTOR
	X. EXECUTE A FLEX COMMAND
	Z. ZERO CURRENT TRACK/SECTOR
	>. FORWARD TO NEXT SEQUENTIAL TRACK/SECTOR
	<. BACKWARD TO LAST SEQUENTIAL TRACK/SECTOR
	?. PRINT OPERATOR "PROMPT" MENU

	From this point the user may select any of the above commands
and enter the single key that defines that command.

	Once the editing session begins the user may access the disk
sector(s) to be edited in several modes. If the user does not
know the track/sector location of the data to be altered he may
enter "S" for seacrh and then using the up-arrow or down-arrow to
select the HEXADECIMAL or ASCII data entry mode.
The user may now enter the string to be located in intermixed HEX and
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
The "ESC" may toggle between HEX or ASCII mode.
The user may use the cursor keypad arrows to select the
specific byte position he wishes to alter. At this point he simply
enters the data.
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

	To futher simplify the usefulness of this program a feature
is provided that allows the users to call FLEX as a subroutine
and hence any FLEX command may be executed from this program
as required. Typical use of this feature would be to call programs
such as SLIST to get a track/sector list of a file, SEARCH to
find a HEXADECIMAL or ASCII string within a file, or DIR to
see what files reside on the disk being edited.


F|rb{ttringar och {ndringar i DISKEDIT av ]ke Sten{ng, Bankeryd.

1. "M" Modify sector mode: Mark|ren kan nu flyttas i alla fyra
	riktningarna. Efter varje {ndring(ar), Y(es) eller N(o) blir
	sk{rmen uppdaterad f|r att kontroll ska kunna ske.

2. "S" Search mode kan nu {ven anv{ndas i t.ex FLEX 2.8:1, double
	density. S|kningen startar d{r anv{ndarfilerna b|rjar i sp}r/
	sektor $0101.

3. Vid val av n{sta sekventiella sektor eller "F" / "B" kommandona
	g}r nu inte huvudet till sp}r 0 varje g}ng f|r att sedan skriva
	ut DISKINFO (Name, Ext, Vol, Free sectors, Date), utan denna
	information f|rs |ver till minnet vid start av DISKEDIT och
	{ndras vid eventuellt "D" kommando (New drive).

4. En del av SWTPC:s CT-82 styrsekvenser har tagits bort f|r att
	g|ra det l{ttare att f} andra terminaler anpassade till DISKEDIT.
	Vissa terminal sekvenser som fanns i tidigare version var on|diga
	och kan lika bra ers{ttas med n}gon allm{nnare sekvens.

	En liten lista f|ljer nu p} de st{llen i DISKEDIT som m}ste
	anpassas om en annan terminal anv{nds (terminalen m}ste klara
	80 tecken/rad och minst 20 rader):

	
	CT-82 control characters i b|rjan av k{lltexten {ndras till
	l{mpliga styrtecken.

	I programmet f|rekommer CRT,PCR	KEYCUR,PCR	KEYP,PCR	och dessa
	st{ller CT-82 vid in/ut och kan tas bort, eller ers{ttas med annan
	l{mplig in/ut styrning.

	P} olika st{llen f|rekommer COL (kolumn) och ROW (rad) och dessa
	m}ste ev {ndras till aktuellt tal.

	SET rutinen st{ller mark|ren p} ett visst st{lle p} sk{rmen enligt
	X,Y och denna rutin m}ste {ndras.

	Sist m}ste de olika talen f|r mark|ren {ndras i "STRINGS" delen
	av k{lltexten.
