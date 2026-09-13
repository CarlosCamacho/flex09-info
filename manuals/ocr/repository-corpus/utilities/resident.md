# RESIDENT

> Source: `utilities/system/LEO5 - FLEX System Utilities - Documentation and Examples.zip!LEO5.DSK!RESIDENT.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

RESIDENT COMMAND LOADER FOR FLEX 1,2, and 9

	program and manual by Leo Taylor
	hardware modifications by Joe Mardo


PURPOSE


	RESIDENT will load one or more FLEX	transient	utility	com-
mands	into	a reserved area of memory and extend the FLEX command
table to include them as memory resident	commands.	The	commands
can	then	be	used	normally and will be quickly transferred from
reserved memory to their normal address. The commands	will	func-
tion	just as they would if loaded from disk, but they will appear
'built in' just like the commands GET and MON	that	are	provided
resident in FLEX. Operation is transparent to the operator.


INDEX

PURPOSE .................... overview of operation ............ 1
INDEX ...................... list of sections ................. 1
TERMINOLOGY ................ buzz words explained ............. 2
RESERVED MEMORY ............ definition and location .......... 2
ASSEMBLING THE SOURCE ...... how to get RESIDENT running ...... 2
USING RESIDENT ............. how to operate RESIDENT .......... 4
EXAMPLE .................... output of actual usage ........... 5
STATUS MESSAGES ............ explanation of display ........... 5
USING WITH STARTUP ......... loading during boot-up ........... 6
RESERVING USER MEMORY ...... loading below MEMEND ............. 6
USING WITH EPROM ..... ..... generating programmer files ...... 7
HINTS AND SUGGESTIONS ...... helpful notes .................... 8
COMPARISON WITH V-DISK ..... advantages and disadvantages ..... 8
HARDWARE MODIFICATIONS ..... adding RAM to processor .......... 9


---1---


	TERMINOLOGY

FLEX ................. operating system by TSC.
RESIDENT.CMD ......... name of this program
USER COMMAND TABLE ... extended FLEX command table.
RESERVED MEMORY ...... area set aside for RESIDENT commands.
LOADER SECTION ....... transient section loaded in utility area.
RUN TIME SECTION ..... resident section loaded in reserved memory.


	RESERVED MEMORY

	Before	RESIDENT	can	be	put to use you must set aside some
memory that will be reserved for the run time section of RESIDENT,
the	user	command table, and the commands that will be loaded in.
The minimum useful memory is 2K ($800) bytes which will	hold	the
largest	command	that will fit in the FLEX utility command space.
The number of commands that will fit in 2K will vary depending	on
the	sizes; 2 or 3 would be typical. An 8K reserved area will hold
about 10 typical commands. There are a variety of 'holes'	in	the
FLEX address map where memory can be added. Some additions involve
simply plugging in an IC, others	require	modifying	boards.	You
must	be	SURE	that the memory is reserved for RESIDENT commands.
The following memory areas are suggested:

1. 6800 systems have 8K of space between $C000 and $DFFF.	An	old
memory	board	can	be	addressed	in that space. Note: if you are
using MSI FLEX use $D000-$DFFF only.

2. 6800 systems have 4K of space	between	$E800	and	$F7FF.	See
HARDWARE MODIFICATIONS to add RAM to a SWTP MP-A2.

3.	6809 systems have 4K of space between $E800 and $F7FF (less if
DMA disk controller	is	used).	See	HARDWARE	MODIFICATIONS	for
adding RAM to SWTP MP-09.

4.	680X	systems can support extended addressing using the SS-50C
buss system. This method is difficult to implement due to the wide
variety	of	addressing	systems used by different CPU boards, but
results in up to 64K of reserved memory.

5. As a last resort user memory below the FLEX MEMEND can be used.
This	will	reduce	the space available to other programs (such as
BASIC), but the RESOFF command will release the space	if	needed.
This	is	similar	to the method used to load resident commands in
multi-user operating systems. See RESERVING	USER	MEMORY	if	you
must use this method.


	ASSEMBLING THE SOURCE

	The source file MUST be edited	before	assembly.	There	are
seven	equates (EQU) near the start of the source that must be set
properly or RESIDENT will not run. The first equate is	the	start
of FLEX which should be $A000 for 6800 and $C000 for 6809. This is
the only change needed to switch from one CPU to another. The next
pair	of equates are BEGPRG and ENDPRG. These should be set to the
addresses of the reserved memory area. The next	pair	of	equates
are	BEGCMD	and	ENDCMD.	If	you	only have one reserved area of
memory these addresses should be set to	zero.	If	you	have	two
reserved	areas	set these addresses to the second reserved memory
area. The next equate is called MIXFLG. Set this flag	to	one	to


---2---


allow the commands loaded in to share the reserved space with	the
run	time	section.	This	flag	MUST	be set if there is only one
reserved memory area, otherwise, you will not have any	space	for
the commands to load in! Set MIXFLG to zero if you do not want the
commands to share the program space	(e.g.	extended	addressing).
The final equate is called USRMEM and is only set if you are using
memory below the FLEX MEMEND address (see RESERVING USER	MEMORY).
A few examples will clarify these options:

	6800 system with 12K reserved memory:

	FLEX EQU $A000 START OF FLEX

	BEGPRG EQU $C000 RESERVED PROGRAM RAM
	ENDPRG EQU $DFFF RESERVED PROGRAM RAM
	BEGCMD EQU $E800 RESERVED COMMAND RAM
	ENDCMD EQU $F7FF RESERVED COMMAND RAM

	MIXFLG EQU 1 1=MIX PROG AND CMDS
	USRMEM EQU 0 1=PROG IN USER AREA


	6809 system with 2K reserved memory:

	FLEX EQU $C000 START OF FLEX

	BEGPRG EQU $E800 RESERVED PROGRAM RAM
	ENDPRG EQU $EFFF RESERVED PROGRAM RAM
	BEGCMD EQU $0000 RESERVED COMMAND RAM
	ENDCMD EQU $0000 RESERVED COMMAND RAM

	MIXFLG EQU 1 1=MIX PROG AND CMDS
	USRMEM EQU 0 1=PROG IN USER AREA


	6809 system with 32K extended memory:

	FLEX EQU $C000 START OF FLEX

	BEGPRG EQU $E800 RESERVED PROGRAM RAM
	ENDPRG EQU $EFFF RESERVED PROGRAM RAM
	BEGCMD EQU $0000 RESERVED COMMAND RAM
	ENDCMD EQU $7FFF RESERVED COMMAND RAM

	MIXFLG EQU 0 1=MIX PROG AND CMDS
	USRMEM EQU 0 1=PROG IN USER AREA


	The final change that you may need to make before assembly is
the name of the library files to	communicate	with	the	reserved
memory. Most applications will use these two files:

	LIB RESNORMP.LIB put into normal memory
	LIB RESNORMG.LIB get from normal memory

	These files are used for 'normal' memory and contains	simply
load and store indexed instructions. Other library files available
are used for the following purposes:


---3---


	LIB RESBUGEP.LIB	put into SBUG-E extended memory
	LIB RESBUGEG.LIB	get from SBUG-E extended memory
	LIB RESLBUGP.LIB	put into LEOBUG extended memory
	LIB RESLBUGG.LIB	get from LEOBUG extended memory
	LIB RESPROMP.LIB	put into EPROM binary files

	After making the needed changes to	the	source	program	you
assemble the file with the following command:

	ASMB RESIDENT RESIDENT.CMD +SL


	USING RESIDENT

	Once the RESIDENT is assembled it is easy to put it to use. A
typical command for loading commands into reserved memory may be:

	RESIDENT CAT LIST MAP PDEL RENAME etc.

	The defaults are SYSTEM drive and command files, these can be
overridden on the command line. The utilities will be loaded	into
the	reserved	memory along with the run time section of RESIDENT.
After this the commands can be used normally, the only change	you
will	notice	is they will load 'instantly' without accessing your
system disk. The commands will remain resident until	replaced	by
another	RESIDENT	command, turned off by RESOFF, or the system is
rebooted. RESIDENT is often called during boot-up (see USING	WITH
STARTUP)	and	seldom called after that. The user must decide what
commands are most useful to have resident based	on	frequency	of
use and size.

	If	a different selection of commands is desired (perhaps for
a repetitive job) RESIDENT is	used	to	load	in	a	new	set	of
commands.	Note	that	each	invocation of RESIDENT will erase any
commands that are currently loaded in reserved memory.

	RESIDENT has	two	'built	in'	commands	called	RESCAT	and
RESOFF. If you want a listing of the commands that are resident in
memory, RESCAT will display the user command	table.	RESOFF	will
disable the user command table. This can be useful if you need the
reserved memory for another purpose.

	There is an option in RESIDENT that allows reading	the	list
of commands from a text file. This is useful when you have a large
number of files you want resident, perhaps more	files	than	will
fit	in	a	FLEX command line. The list of commands should be in a
text file with each command separated by a	space	or	return.	In
other words the list can be one name per line or a few long lines.
RESIDENT will open the list file and read the names as if the were
entered	on	the	command	line.	To invoke this option insert "+"
before the file name:

	RESIDENT + CMDLIST or
	RESIDENT+CMDLIST

	Finally,	if you forget the syntax of the command you can get
example command lines by typing RESIDENT without any parameters.


---4---


EXAMPLE

	The following examples of RESIDENT and RESCAT were run	on	a
FLEX-2	system	with 4K of reserved memory. Several improper files
were attempted to demonstrate the error messages.	User	input	is
bracketed.

	[RESIDENT CAT 2.SOURCE.TXT 1.PDEL.CMD SAVEFILE.BIN ASMB LIST]

	BYTES AVAILABLE: $0F1F

	CAT	LOADED
	SOURCE	NOT BINARY
	PDEL	LOADED
	SAVEFILE	NO TRANSFER ADDRESS
	ASMB	WON'T FIT
	LIST	LOADED

	BYTES REMAINING: $0370

	[RESCAT]

	RESOFF	RESCAT	CAT	PDEL	LIST


	STATUS MESSAGES

	There	are	several	messages that will be displayed to guide
you in the use of this program:

BYTES AVAILABLE is the space	reserved	for	commands	and	tables
(commands	only	if	MIXFLG is zero). This number is determined by
the assembler and will not change.

BYTES REMAINING is the space left	over	after	the	commands	are
loaded.	This	number	can	be	helpful	in determining if another
command could have fit in.

LAST TABLE ADDR is the last byte of the command table.	This	mes-
sage	only appears when MIXFLG is zero and can be used as the last
address to save when making a RESAV file (see next section).

LOADED indicates to you that the file was successfully loaded into
reserved memory.

WON'T	FIT	instructs	you	the file was too big for the remaining
reserved memory. The file was ignored and RESIDENT continued.

NOT BINARY means that RESIDENT	was	looking	for	a	marker	byte
(0,2,$16)	and	found something else. This usually means you tried
to load a text file. The file was ignored and RESIDENT continued.

NO TRANSFER ADDRESS tells you the file does not	have	a	starting
address (marker $16). The file was ignored and RESIDENT continued.

TABLE	OVERFLOW	communicates	to you that there isn't enough room
for another table entry. This rarely appears and is fatal.

FATAL ERROR - PROGRAM ABORTED informs you that something	terrible
has	happened. This occurs after most operating system errors such
as FILE NOT FOUND or DRIVE NOT READY. RESIDENT	did	not	continue
and	the	command	table was not extended. Commands already LOADED


---5---


were discarded.

ILLEGAL	MARKER	BYTE	- PROGRAM DAMAGED enlightens you that some-
thing has corrupted the reserved memory. A large chunk of reserved
memory	has	to	be	destroyed before this error will be detected.
This is the only error message contained in the run time section.


	USING WITH STARTUP

	Most	users	of	RESIDENT	will	find they develop a favorite
selection of commands that they use most of the time. You can have
these	commands made resident on boot-up by adding a RESIDENT com-
mand to your STARTUP file. RESIDENT	has	provisions	for	another
method	of	loading a group of files that works much faster. After
loading in your favorite selection of commands you	can	save	the
reserved	area	(including	run	time section) using the FLEX SAVE
command. For example a 4K 6800 system could be saved as follows:

	RESIDENT CAT LIST MAP PDEL TTYSET

	SAVE RESAV.CMD C000 CFFF C000

	Using the command RESAV will load in the	run	time	section,
tables,	and	all	five	resident commands in one operation. Using
RESAV in your STARTUP file will save time when booting the system.
Be	sure to save all the reserved memory; if you have two reserved
areas you must save both of them and	APPEND	them	together.	The
starting	address	of RESAV.CMD will be the address you put in the
source file at the label BEGPRG.


	RESERVING USER MEMORY

	User	memory	below the FLEX MEMEND can be reserved for resi-
dent utilities if no other choice is available. A typical	example
of how to set up the equates for a 6809 system:

	6809 system with 4K reserved memory:

	FLEX EQU $C000 START OF FLEX

	BEGPRG EQU $B000 RESERVED PROGRAM RAM
	ENDPRG EQU $BFFF RESERVED PROGRAM RAM
	BEGCMD EQU $0000 RESERVED COMMAND RAM
	ENDCMD EQU $0000 RESERVED COMMAND RAM

	MIXFLG EQU 1 1=MIX PROG AND CMDS
	USRMEM EQU 1 1=PROG IN USER AREA


	The above example will take away 4K of user memory from BASIC
and	other	programs. The RESIDENT or RESAV command MUST be called
before you use any other command that alters MEMEND such as	EXEC,
USEMF,	or	extended printer drivers. Note that the 6800 EXEC com-
mand will not work with this method.


---6---


	USING WITH EPROM

	RESIDENT	can	be	used	to	create a "FIRM-DISK" by creating
files that can be programmed into EPROM. With extended	addressing
it	is	posible to put most of the FLEX utilities in EPROM freeing
your system	disk	for	better	purposes.	The	put	library	file
RESPROMP.LIB	can be used along with the get library file for your
version of extended addressing.	The	following	example	sets	up
RESIDENT for a 6809 LEOBUG system with 56K of 2764 EPROM:

	FLEX EQU $C000 START OF FLEX

	BEGPRG EQU $E800 RESERVED PROGRAM RAM
	ENDPRG EQU $EFFF RESERVED PROGRAM RAM
	BEGCMD EQU $0000 RESERVED COMMAND RAM
	ENDCMD EQU $DFFF RESERVED COMMAND RAM

	MIXFLG EQU 0 1=MIX PROG AND CMDS
	USRMEM EQU 0 1=PROG IN USER AREA

	LIB RESPROMP.LIB put subroutine
	LIB RESLBUGG.LIB get subroutine

	ROMSIZ EQU $1FFF
	BASADR EQU $1000

	The	BASE	address	is	the	start	of the EPROM programmer's
buffer area. The ROM	SIZE	is	usually	the	size	of	the	EPROM
(including	address	zero);	but	may	be	several	EPROMS	if the
programmer's buffer can handle them. The files will be	output	to
the	work	disk	and named sequentially: RESC000.BIN, RESA000.BIN,
RES8000.BIN, etc. The address is the starting address of where the
EPROM must be located when operating. Old binary files of the same
name must be deleted before RESIDENT is	run.	Regardless	of	the	
file's name, the binary will load into the programmer's buffer. Be
sure to save the program space since	this	contains	the	command
table for the EPROMS.


---7---


	HINTS AND SUGGESTIONS

a. Resident commands do not have any drive number or extension. If
CAT is resident you can enter 3.CAT.XYZ and it will work normally.

b. The approximate memory space required for a command is:

	(number of sectors * 252)-128

c. The following types of BASIC operations will run faster if	the
commands are resident:

	+CAT .BAS
	10 EXEC, "TTYSET PS=N"

d. If you have a special operation	you	are	doing	repetitively,
such as testing a large number of disks, use RESIDENT to load TEST
in memory. When the testing is done use RESAV to	return	to	your
normal set of resident commands.

e. If you get: BYTES AVAILABLE: $0000, you may have equated ENDCMD
and MIXFLG to zero. Re-read ASSEMBLING THE SOURCE.

f. Some FLEX users have already extended the	command	table	with
short	commands	such	as	PAUSEON	or	PAUSEOFF.	To retain these
commands you can add the name and address of the commands	to	the
source	of RESIDENT just after the line "FDB RESCAT". The code for
the commands can either remain where it was or	can	be	added	to
RESIDENT after the subroutine "PDATA".

g.	Don't	forget	you can get help by typing RESIDENT without any
parameters.


	COMPARISON WITH V-DISK

	Most FLEX users will want to compare RESIDENT with a virtual
disk program such as V-DISK by James Arbuckle. Both programs have
their advantages and could be used together. The following list
will point out their differences:

1. RESIDENT does not require extended memory and will be useful
with as little as 2K of reserved memory.

2. RESIDENT is provided as a 6800 source program thus may be
assembled on any 680X system.

3. RESIDENT may be used on FLEX systems that have 4 disk drives.

4. RESIDENT commands are on line regardless of what drive is
assigned as the system drive.

5. V-DISK will load commands at about the same speed as RESIDENT
if they are prepared with V-COPY.

6. V-DISK can be used to save and load text and data files,
whereas RESIDENT is only a command loader.

7. V-DISK can be used with system files such as PRINT.SYS and
ERRORS.SYS.


---8---


	HARDWARE MODIFICATIONS

	RESIDENT does not require modifications to	the	hardware	to
operate,	but	to	gain	full benifit of the limited address space
available it is posible to add additional RAM in	the	'holes'	in
the	address	space.	A	6800	system will have the most available
space since many FLEX users have old 8K boards they can put in the
$C000-$DFFF	area.	If	you	don't have any boards available it is
posible to add 2016/6116 RAM to the SWTP	MP-A2	board	with	some
cuts	and	jumpers.	The	following	instructions add 4K of RAM at
$C000-$CFFF:

1. Make four cuts on the top side of the board labeled in the
board photo as A,B,C,D (the sockets do not need to be removed).

2. Make four cuts on the back side of the board labeled E,F,G,H.

3. Connect IC24 pin 21 to IC3 pin 16. This becomes R/W.

4. Ground IC23/24 pin 20. This is output enable.

5. Connect IC23 pin 18 to IC13 pin 12. Connect IC24 pin 18 to IC13
pin 11. These are chip select.

6. Ground IC25 pin 18. This will also ground IC26 pin 18. These
are chip select.

	It	would seem unlikely to need modifications to add RAM to a
SWTP MP-09	board	but	unfortunately	there	are	several	memory
conflicts. If you are satisfied with 2K RAM, the board has jumpers
for adding RAM at $E800 to $EFFF without modification. To add more
RAM	requires	modification of the CPU, motherboard, and DMAF disk
controller (if used). The modifications will allow 6K RAM at $E100
to	$EFFF	and	$F100	to	$F7FF.	First	the	CPU will need to be
modified to allow on-board memory in the I/O area. Piggy-back	one
74LS04 and two 74LS32s. Leave switches for new RAM open.

	A10
	A9	*TO IC16 PIN 2

	A8
	*A7	FROM IC7 PIN 11
	/TO IC16 PIN 5
	* optional	FROM IC7 PIN 9

	The	older	motherboards	will	need	modification to prevent
conflict with the MP-09 only if more than	2K	RAM	is	used.	The
older MP-B will require a piggy-back 74LS02.

		MP-B2	MP-B

	A12
	A15	IC5
	VMA
IC6
A11	IC6

	A11	A9

IC5	ICP	A10
	A10	A8
	IC4	IC4
	A9	A7

IC5	ICP
	A8	VMA


---9---
