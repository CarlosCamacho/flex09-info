# PROMPROG

> Source: `apps/graphics-cad/LEO4 - Graphics and CAD - Documentation and Examples.zip!LEO4.DSK!PROMPROG.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

EPROM PROGRAMMER SOFTWARE FOR FLEX 1,2, and 9


by the Southern New England Flex User Group


OVERVIEW

	The	objective of this software is to provide FLEX users with
a flexible EPROM programmer utility.	PROMPROG	has	18	commands,
including	some	not found in other FLEX programmer utilities. The
program is compatible with the SWTP	MP-R	EPROM	2716	PROGRAMMER
board,	but	can	be adapted to other hardware. For those familiar
with the cassette program provided with the SWTP MP-R, the command
names have been retained. The program is provided as a source, and
was entirely written by the	users	group.	The	source	and	this
manual	are	donated	to	the	public	domain and may be copied by
anyone for non-profit usage.


FEATURES

1. Dynamic write pulse option allows writing 200 bytes per second.

2. Absolute loader for FLEX binary files.

3. Memory change, fill, and list commands.

4. EPROM read, write, verify, and unprogrammed commands.

5. Memory displayed in EPROM addresses or Program addresses.

6. 2764 mode for extended hardware (see SPECIAL HARDWARE).

7. Overwrite command checks EPROMs that are not fully erased.

8. Program can be used with 6800 or 6809 at any clock speed.

9. FLEX utility commands can be accessed from this program.


	ASSEMBLING THE SOURCE

	The source program MUST be adapted to your system before	the
program can be assembled. The source lines to be edited are marked
with "<" for easy identification. An explanation of these	options
follows:

	FLEX	usually $A000 for 6800 or $C000 for 6809
	IOBASE	usually $8000 for 6800 or $E000 for 6809

* BUFFER	default buffer address, usually $1000
* ROMSIZ	size in kilobytes, usually 2 or 8
* PORTNU	port number for board, usually 0-7
	PORSIZ	addresses per port, usually 4 ,8, or 16
* CLFREQ	clock frequency and write mode (see CLOCK)
	LSTSIZ	bytes per line for LIST command, usually 16

* These options can be changed while program is running.


---1---


	Once	the	options	have been edited into the source, you can
assemble the program with:

	ASMB PROMPROG PROMPROG.CMD +SLY


	ENTERING COMMANDS

	The	program	is	invoked	as	a	FLEX	command	file with an
optional parameter of a binary file name:

 PROMPROG [FILENAME.EXT]	(default extension .BIN)

	If the binary file exists	the	EPROM	program	will	do	the
following:

1. Fill an 8K buffer with $FF.
2. Load the file into the buffer.
3. The EPROM will be checked for being unprogrammed.

The EPROM will not be programmed until you enter a write command.

	The program will now display a help list. This list of avail-
able commands is similar to the HELP command described later.	The
program	is	ready to accept commands when the prompt ">" appears.
All commands are entered as two letters followed by return,	upper
or	lower	case	is	accepted.	FLEX	utility commands that do not
overwrite this program can be accessed with a	plus	sign	(+CAT).
All	addresses	or	data	are	entered in hexadecimal with leading
zeros optional (exception: to enter a response of zero press	zero
and	return).	When	a	prompt	of	"START	ADDRESS:" is displayed
pressing return will default to the entire buffer; pressing Q will
quit	the	command	and return to the prompt. For consistancy, all
user responses require a carriage return.


	LIST OF COMMANDS

BASE ADDRESS

	Starting	address	of memory buffer. The base can be moved
	anywhere in memory, caution should be used if placed	over
	the memory used by the EPROM programmer software.


CLOCK SPEED

	Sets software constant to	match	CPU	clock	speed.	This
	number	is	not critical, select the speed closest to your
	actual clock. This command also allows selecting	the	new
	dynamic	write	pulse width in place of the older constant
	50 msec write pulse width. See DYNAMIC WRITE	PULSE	WIDTH
	for	more	information.	As	mentioned	in	ASSEMBLING THE
	SOURCE, this letter can be defaulted; thus you seldom will
	need	this	command.	There are six possible combinations,
	enter a one letter response:


---2---


	letter	clock	write width

	A	1.0 MHZ	50 msec
	B	1.5 MHZ	50 msec
	C	2.0 MHZ	50 msec
	D	1.0 MHZ	dynamic
	E	1.5 MHZ	dynamic
	F	2.0 MHZ	dynamic


EXIT TO FLEX

	Does just that! Leaves the buffer intact, you may re-enter
	PROMPROG at the warm entry point (start of program + 3).


FILL MEMORY

	Fills all or part of the buffer with byte	entered.	Often
	used to fill unused space with $FF.


FLEX EXIT

	Same as EXIT TO FLEX. Both "EX"	and	"FL"	commands	were
	included for compatibility with other software.


HELP WITH COMMANDS

	Lists all commands to refresh your memory. Example:

		BASE ADDRESS	CLOCK SPEED
		EXIT TO FLEX	FILL MEMORY
		FLEX EXIT	HELP WITH COMMANDS
		LIST MEMORY CONTENTS
LOAD DISK FILE
		MEMORY CHANGE	NEXT MEMORY BLOCK
		OVERWRITE POSSIBLE
PORT FOR EPROM BURNER
		PROGRAM ADDRESS	READ EPROM
		SIZE OF EPROM	STATUS REPORT
		UNPROGRAM CHECK	VERIFY EPROM
		WRITE TO EPROM	


LIST MEMORY CONTENTS

	Lists the contents of the buffer 16 bytes per line in	HEX
	and	ASCII. Users of displays with less than 70 characters
	per line can shorten the listing by changing	LSTSIZ	(see
	ASSEMBLING THE SOURCE).


LOAD DISK FILE

	Loads FLEX binary file into memory. After	you	enter	the
	file name the file starting address will be determined and
	a prompt similar to the following will be displayed:


---3---


	FILE STARTING ADDRESS: 4100

	N = NORMAL FILE ADDRESS
	R = CURRENT RAM BUFFER
	4 HEX CHARACTERS = ABSOLUTE ADDRESS

	If	"N"	is	entered the file will be loaded at the binary
	file address. If "R" is entered the file	will	be	loaded
	starting	at the BASE address. If a hex address is entered
	the file will be loaded starting	at	that	address.	Note
	that this is an "ABSOLUTE" loader, not an "OFFSET" loader.

	If	the message !!! PROTECTED MEMORY !!! occurs this means
	the program would overlay the EPROM	programmer	or	FLEX.
	These areas are protected by the loader. At this point the
	file can only be loaded into the current buffer or	at	an
	absolute hex address.


MEMORY CHANGE

	Allows the buffer to be	examined	or	modified.	Operates
	similar	to	the	memory	command	in	most	monitors.	To
	maintain compatibility with most	systems	there	are	two
	keys for back, forward, and stop:

		^ or ,	move address pointer back one location
		. or escape	move address pointer forward one location
	CR or ctrl C	stop and return to command mode
		/
prompt for a new address


NEXT MEMORY BLOCK

	Moves	BASE	ADDRESS	forward in increments of the current
	EPROM SIZE. For example if you are programming a	4K	byte
	program into two 2716s and your buffer is $1000-$17FF then
	typing "NE" would advance the buffer to $1800-$1FFF.


OVERWRITE POSSIBLE

	Checks	all or part of an incompletely erased EPROM to see
	if it can be programmed with the data in	the	buffer.	If
	any	one	bits in the buffer line up with zero bits in the
	EPROM they will be reported.


PORT FOR EPROM BURNER

	Used	to	change	port	number	for board from the default
	value. Port number entered is multiplied by the number	of
	addresses	per	port	and added to IOBASE to determine new
	board address.


---4---


PROGRAM ADDRESS

	Prompts for starting address of the program in the buffer.
	Normally the commands use EPROM addresses	when	referring
	to	the	buffer; thus the first byte is address 0000. This
	command allows you to refer to the buffer by	the	address
	of	the program being written to the EPROM. For example if
	you are programming a 2716 EPROM monitor starting at $F800
	you	could	set PROGRAM ADDRESS to $F800. Then if you want
	to check the reset address of the monitor	you	would	use
	the	MEMORY CHANGE command to examine $FFFE. At first this
	may be confusing but after awhile it becomes very logical.
	All commands will accept the addresses just as they appear
	in your monitor listing. Note that for the above example:

	PROGRAM addr $FFFE = EPROM addr $07FE = MEMORY addr $17FE


READ EPROM

	Reads	all	or	part	of	EPROM	contents into the current
	buffer. Be sure the BASE	address	of	the	buffer	points
	where you want to place the data since READ will not check
	for mistakes.


SIZE OF EPROM

	Allows	changing	the	default EPROM size. Entering a size
	other than 2K will	not	magically	make	your	SWTP	MP-R
	program	an	EPROM	other	than	it	was designed for! For
	programming 8K EPROMs see SPECIAL HARDWARE. Note	size	is
	in KILOBYTES thus a 2716 is entered as 2.


STATUS REPORT

	Lists the current buffer, program address,	port	address,
	and	clock	speed.	Note:	this	is	the only command that
	reports where the data REALLY is,	other	commands	report
	either the EPROM address or the PROGRAM address. Example:


>STATUS REPORT


MEMORY LIMITS: 1000-17FF

PROGRAM ADDRESS: F800

PORT ADDRESS: 801C
	CLOCK SPEED: 2.0 MHZ	(DYNAMIC)


UNPROGRAM CHECK

	Checks	to	see	if	all	or	part	of EPROM contains $FF.
	Usually executed before WRITE to see if EPROM	is	erased.
	If	a	few	bytes	are	not erased you may want to try the
	OVERWRITE command to see if you can program anyway.


VERIFY EPROM

	Checks to see if all or part of EPROM matches buffer.


---5---


WRITE TO EPROM

	Writes all or part of buffer to EPROM. Prompts for address
	range	to	be	programmed;	as	with all commands pressing
	return will write the entire buffer. As a	precaution,	if
	you attempt to write an unchanged buffer twice you will be
	prompted for confirmation. The write command will delay	2
	seconds	as	it powers up the board. After every 256 bytes
	have been programmed a period will be displayed to let you
	know	the program is busy. After the power down delay of 6
	seconds the EPROM will be verified. If dynamic write pulse
	width	is	selected	the	LONGEST write pulse will be dis-
	played (SEE DYNAMIC WRITE	PULSE	WIDTH).	An	example	of
	programming	part of a 2716 with dynamic write pulse width
	enabled and a bad bit follows:


		>WRITE TO EPROM

		USE CR FOR ALL
		USE Q FOR QUIT

START ADDRESS: 0

END ADDRESS: 3FF

		PROGRAMMING....

		MAXIMUM WRITE TIME (MSEC): 50
		ERROR	PROM ADDR=$0234	DATA=$55	PROM=$53
		>


	DYNAMIC WRITE PULSE WIDTH

	PROMPROG supports two methods of writing EPROMs. The original
program supplied with the SWTP MP-R used a constant 50 msec	write
pulse	width.	This	is	the value recommended by INTEL for "dumb"
EPROM programmers that derive their	write	timing	from	hardware
timers.	This	method was retained for those who are uncomfortable
about trying something new! The 50 msec time was chosen	by	INTEL
to cover the worst bit of the worst byte of the worst EPROM in the
worst environment. In other words, it is an overkill. On	February
24,	1983	"ELECTRONICS"	published	an	article by engineers from
INTEL who suggested an algorithm for speeding up	the	programming
time	for large EPROMs. The EPROM is programmed with a series of 1
msec write pulses. After each pulse the byte is checked to see	if
it	programmed	correctly.	If not, it receives more 1 msec pulses
until it programs successfully. The number	of	pulses	needed	is
counted	and	a	"safety	margin"	pulse	of four times as long is
applied to the byte. Thus, if the byte programs during the first 1
msec	pulse	the	"safety margin" pulse will be 4 msec for a total
write time of 5 msec. The write time for each byte	is	determined
dynamically.

	The	program	will	give up writing a byte after 10 pulses of
one msec (50 msec including safety). The MAXIMUM WRITE TIME report
will	indicate	50	msec	if	a byte refuses to program during the
first 10 msec. Some bytes will still verify OK if they change near
the	end of the 50 msec period. These bytes will have a low safety
margin, just as they would have with the old 50 msec	fixed	write
pulse.	Experience has shown almost all bytes program successfully
on the first pulse, so usually the program reports a MAXIMUM WRITE


---6---


TIME	of	just	5	msec. At this speed a 2716 programs in about 10
seconds which is almost as fast as the time required to	power	up
and down the 25 volt supply!

	This	program	feature	has	been	in	use since 1983 and has
worked for MOST brands of EPROMS. It will	take	a	long	time	to
determine	if	the	usual	retention	time	of	ten years has been
reduced. Intel supports this method and	several	expensive	EPROM
programmers	have	appeared	using	this	algorithm.	There is one
hardware change INTEL recommends which you may want	to	implement
to	be	completely	INTEL	compatable.	They	recommend	that	the
verification be performed at a supply level of 6 volts.	This	can
be	achieved on a SWTP MP-R board by replacing the 78L05 regulator
with a 78L06 device. It is doubtful that this change is needed.


	SPECIAL HARDWARE

	This	program	was	written to allow programming 2716 or 2764
EPROMs using a board designed by members of our users	group.	Our
board	can	be assembled for either a 2716 or 2764 (but not both).
This board is a single sided adaptation of the SWTP MP-R with pro-
visions	for	a	28	pin socket. Pins on the 74273 latch that were
unused by SWTP were connected to the two additional address lines.
The	software makes additional changes (such as inverting signals)
so that the board can program a 2764 EPROM in one operation.


	CONCLUSIONS

	The	members of the Southern New England Flex User Group hope
you enjoy using this program. If you have any requests,	comments,
or suggestions please send them to:


Leo Taylor
	109 Twin Brook Road
	Hamden, Conn. 06514


---7---
