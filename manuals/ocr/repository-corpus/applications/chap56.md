# CHAP56

> Source: `apps/dynastar/DYNAS23 - DynaStar Word Processor - Source Code and Build Files.zip!DYNAS23.DSK!CHAP56.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.bp
.dxc 5.0	Installation and Terminal Requirements

^U5.0 INSTALLATION AND TERMINAL REQUIREMENTS^U


	^U5.1 OS9 Installation^U
.dxc 5.1	OS9 Installation
.dxi installation, OS9
.dxi PINTERP

	The DynaStar distribution disk contains at least two program
modules.	There is a module "DS" which is the actual editor, and
a	module	"PINTERP"	which	is a copy	of	the	Dynasoft	Pascal
p-interpreter	(the editor itself is in p-code).	If the DynaForm
print	formatter has been purchased with the package, there	will
also	be a module called "DF", which is also in p-code.	Each of
these	files	should	be	copied	to	your	standard	execution
directory.	If you already have a copy of Dynasoft Pascal on your
system,	you	should replace your "PINTERP" module with	the	one
from	the DynaStar disk.	The new interpreter is required to	run
Version	II	of	DynaStar, and it will run	any	p-code	programs
generated	by Dynasoft Pascal Release 1.5 or earlier. The	editor
automatically loads the interpreter when it is run.	The best way
to	install	a	gotoxy	module	is to put	it	in	the	execution
directory	separately	and include a command to load it	in	your
startup	file.	It is also possible to include it in your copy of
the file "DS" if you wish.

	^U5.2 FLEX Installation^U
.dxc 5.2	FLEX Installation
.dxi installation, FLEX

	The	FLEX distribution disk contains up to four files	which
must	be	copied to your "system" disk.	Three of these	^Umust^U	be
installed;	the	fourth	is optional but	desirable.	The	three
required files are DS.CMD, DYNASTAR.SYS, and INTERP15.SYS.	These
are the base command file, the editor itself (in p-code), and the
Dynasoft	Pascal p-code interpreter.	DS.CMD is the program which
you	call from the command line, and it contains the input/output
interface	and code to load and run the p-code for the editor and
the	interpreter.	The programs load in low memory	starting	at
$0100, and all remaining user RAM from the end of the programs to
MEMEND	is	used for a text buffer and work variables.	DynaStar
requires at least 24K of RAM to run.

	The	distribution disk also contains a series of files	with
names	like	ADM3.TXT	and ADM3.GXY.	These are	the	source	and
object code respectively for "gotoxy" modules for several popular
terminals.	DynaStar can operate without them, but will work much
better	if	you install an appropriate "gotoxy" module	for	your
terminal.	If one of the supplied modules supports your terminal,
all	you	have	to do is rename the appropriate	".GXY"	file	to
"GOTOXY.SYS"	and	copy it to your system disk.	If one does	not
fit,	you	will have to write your own.	The source code for	all
the	supplied	modules is provided in case one of them is	close,
and to provide examples for guidance.	For further information on
writing a "gotoxy" module, see section 5.4.

	^U5.3 Terminal Requirements^U
.dxc 5.3	Terminal Requirements
.dxi terminal requirements

	DynaStar	requires a video terminal which displays at	least
64	characters on a line, and it should preferably be capable	of
operating at 9600 baud.	It must have at least rudimentary cursor
addressing	(the	ability	to "home" the cursor to the	top	left
corner	will do).	To operate in the self- configuring mode,	the
OS9	"terminal	descriptor"	or	FLEX	"ttyset"	parameters	must
correctly	state	the	exact number of lines displayable	on	the
screen,	and the terminal must "scroll" the screen upwards when a
line	feed is issued from the bottom line.	If the terminal has a
command	to erase from the cursor to end-of-line it will	greatly
speed	up screen updating. DynaStar can handle screen formats	as
large as 132 characters by 48 lines.
.bp
.dxc 5.4	The Gotoxy Module
	^U5.4 The Gotoxy Module^U

.dxi gotoxy module
	DynaStar	uses	a module called 'gotoxy' find out how to	do
cursor	addressing and establish other parameters of the terminal
being	used	with	it.	This module must be	a	6809	subroutine
module, and the organization is as follows:

2 bytes (entry)	bra gtxy
1 byte
fcb lines-per-page
1 byte
fcb chars-per-line
1 byte
fcb scroll (1 if terminal scrolls, 0 if not)
1 byte
fcb length1 (of clear-to-end-of-line sequence)
length1 bytes	clear-to-end-of-line-sequence
1 byte
fcb length2 (of initialization sequence, or 0)
length2 bytes	terminal initialization sequence if needed
0 or more bytes	editor "startup" string
1 byte
fcb 0	(null to terminate startup string)
gtxy	(actual code for the gotoxy function)

	The	main	entry is passed the desired x position in	the	x
register,	and	the	y position in register b.	The	upper	left
corner of the screen is (1,1).

.dxi non-scrolling terminal
	The	byte	at entry+4 is a flag to indicate if the	terminal
scrolls when a line feed is issued on the bottom line.

.dxi clear-to-end-of-line
	The	byte string at entry+6 is used by the editor to clear a
line	from	the	cursor position to	end-of-line.	This	greatly
speeds	up	the screen display routines.	If your terminal	lacks
this function, the byte at entry+5 must be set to 0.

.dxi terminal initialization
	The	byte just after the clear-to-end-of-line sequence is	a
byte	count	for	an optional initialization sequence	which	the
editor	is	to send to the terminal when it is first started	up.
If no initialization is required, it should be set to zero.

.dxi startup string
	The	"editor	startup	string"	is	an	optional	string	of
characters,	terminated	by	a null ($00), which if	included	is
passed	to DynaStar as initial input as if it was typed from	the
keyboard.	Use of this string makes it possible to automatically
pre-define	keyboard macros, re-map the main editing keyboard, or
set	up special modes such as margin justification.	If a startup
string	is not included, at least one null must be placed here to
indicate an empty string.

.cp 6
	If	no	gotoxy module is found, DynaStar executes the	self-
configuration	routine and prompts for the home-cursor and clear-
to-end-of-line	sequences.	It	checks the	terminal	descriptor
(OS9)	or	ttyset parameters (FLEX) to find	lines-per-page.	If
this	is 16 it assumes a 64 character line, otherwise it	assumes
an 80 character line.

.cp 8
	Gotoxy	modules for several common terminals are included on
the distribution disk, in both source and object format.	If your
terminal	is	not included in this set, you may find	the	source
code	for one of the others helpful in writing your own.	If	you
write	a	gotoxy	module	for	a terminal	not	included	on	the
distribution	disk,	we	would	appreciate seeing it	so	we	can
include it on future disks to save other customers the trouble of
writing their own.

	When	running	under	the OS9 operating system,	the	gotoxy
module	must be loaded into memory prior to running Ds.	This can
be	accomplished	at boot time by including an	appropriate	load
command	in the startup file, or it can be accomplished by making
a new "Ds" file containing both the modules "Ds" and "gotoxy".

	Under	FLEX,	the	gotoxy	module	must	be	a	file	called
"GOTOXY.SYS"	on the system drive.	If you have to write your own
gotoxy,	you	must	use the program "SAVESYS.CMD"	(also	on	the
distribution	disk) to generate the executable copy, since it	is
in	a	special	relocatable format.	Note that you have	no	idea
where	DynaStar	will load your gotoxy module in memory,	so	you
^Umust^U	write	it in position-independent code.	Use	the	supplied
source	code examples for guidance.	Once you have assembled your
module	(to	a	".BIN" file), note the first and	last	assembled
addresses,	and	use	the sequence below to install	it	on	your
system disk.	(The example assumes that the module assembled from
$0100 to $0132):


GET 1.GOTOXY.BIN

SAVESYS 0.GOTOXY.SYS 0100 0132
.bp
	^U6.0 RUNNING DYNASTAR^U

.dxc 6.0	Running DynaStar
.dxi command line, OS9
.dxc 6.1	Running under OS9
	^U6.1 Running under OS9^U

	DynaStar is called from OS9 by typing a command of the form:

	Ds [ initial-file ]	[ :alternate-gotoxy ]	[ #memsize ]

.dxi gotoxy, alternate
	The parameters on this command line are optional.	The first
is	the	name	of	an initial file to edit.	If	provided,	this
parameter will be processed as if it was entered as part of a ^UN^Uew
command from the "files" menu, and is simply a short cut to speed
up	initialization.	The	second	parameter is the	name	of	an
optional	alternate gotoxy module which is to be used instead	of
the	standard	one.	This	feature is	provided	for	multi-user
systems to permit operation of more than one terminal type on the
same	system.	If,	for example, you are	running	a	multi-user
system	with	mostly	SWTPC	terminals,	but	you	wanted	to
occasionally	run	DynaStar	with	an ADM3	terminal,	you	could
install	a second gotoxy module called "adm3" and invoke DynaStar
with the command:

	Ds :adm3

	The third parameter is the usual OS-9 memory size parameter.
If	it is omitted, DynaStar allocates a memory area of 8K	bytes,
which	provides	about 6K of space for the text buffer,	adequate
for	small edits only. DynaStar can use up to 32K bytes of memory
space,	but	on	a	typical 56K single-user system,	25K	is	the
practical limit.	A typical command line would probably be:

	Ds #25k

	If	too	much memory is requested, it is possible	that	the
editor	would work just fine until an attempt is made to save	an
edit	file,	at	which time it might fail because	there	is	not
enough memory to rename the SCRATCH file.	If this happens, it is
possible	to	recover	by leaving the editor	and	executing	the
rename operation from the keyboard.	Ask for a little less memory
the next time.

	DynaStar	is re-entrant and the same copy of the editor	can
be	shared	by several users on a multi-user system,	subject	to
memory	availability.	On the typical 56K system, two users	can
operate with approximately 12K of memory each.

.cp 3
	If	you	intend	to use the DynaForm	print	formatter	from
DynaStar	you must leave an additional 13k of memory to load	and
run the "DF" program.

.bp
.dxi command line, FLEX
.dxc 6.2	Running under FLEX
	^U6.2 Running under FLEX^U

	DynaStar	is	called	from FLEX with a command line	of	the
form:

	Ds	[ initial-file ]

	The	parameter is optional.	If supplied, it is processed by
DynaStar	as if it was entered as part of a standard ^UN^Uew	command
from	the	"files" menu, and it simply specifies the name of	the
first file to be edited.


---------------------------------------

	When	editing large files, it is wise to be conscious of the
amount	of free space left on your working disk.	There should be
at	least as much space as the size of the file you want to edit,
since DynaStar creates a SCRATCH file of the same size during the
course	of an edit.	This implies that it is impossible to edit a
file	larger than 1/2 of the capacity of a disk.	When	preparing
a large document to be formatted with DynaForm, you will find	it
helpful	to organize it as a series of smaller sub-files, and tie
them	together at print time using the DynaForm .FI (file insert)
command.
