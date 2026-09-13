# MODEM68

> Source: `apps/finance/DISK103 - Finance and Accounting - Source Code and Build Files.zip!DISK103.DSK!MODEM68.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,LL 42
,CE
	***** MODEM68 ****


,SP
DISTRIBUTION RIGHTS:
,SP
I	allow	unrestricted	distribution of this software on	a	non-
profit basis.	However any commercial distribution or application
using	either the programs or documentation requires	my	written
permission in advance.
,SP
,SP

MODEM68	provides	for file transfer between two computers	using
the FLEX operating system,	or between a FLEX based machine and a
CP/M	computer.	FLEX utility commands are supported from	within
MODEM68.	The	program uses Ward Christensen's protocol for	file
transfers with Chuck Forsberg's YAM batch file transfer mode.
,SP
The Christensen protocol is widely used in micro-computer applications
and has been well documented in Byte and other journals.
The only difference for a header	block
under	YAM and a normal Christensen block is that the header	has
block number 0.	The filename is sent as it appears on the screen
in	CP/M format and may or may not have a period	and	extension.
The	filename	is	terminated by a null.	On completion	of	file
transfer(s) a null filename is sent to terminate the session. For
FLEX users,	the standard FLEX conventions apply - e.g. .ASM will
transfer	any	files	with	a	ASM	extension,	however	due	to
differences in filename conventions some CP/M filename characters
may	be translated into an alpha character for FLEX (lowercase	z
in	this	version).	Also,	any CP/M files	received	without	an
extension will default to .TXT.
,SP
Files of any size can be handled,	as there is no requirement for
them	to fit into memory.	The I/O buffer has been restricted	to
the	Christensen	protocol	block size of 128 bytes for	ease	of
implementation.	In practice this does not significantly increase
file transfer times, although it may slow things down in terminal
mode with data logging.
,SP
USAGE:
,SP
The	program	is	menu	driven and prompts	for	all	input	when
required.	To return to the main menu, (aborting a file transfer)
type a ^E (control E) from the keyboard.	All FLEX utilities obey
the same conventions they use normally - e.g.	COPY 0 1 will copy
all files from drive 0 to drive 1.
,SP
Switches	have	been	included	to	provide	for	batch	file
transmission, a means of logging all screen display to disk using
XON/XOFF protocol and also for echoplex operation. These switches
can	be viewed by use of the menu item Z,	and may be altered	if
desired. A carriage return entered in response to the prompt will
return	to the main menu without displaying the remainder of	the
switch	settings.	An	additional	switch	to	allow	for	cyclic
redundancy	checking	instead	of the normal	checksum	has	been
included	in the code but not implemented in the current version.
This switch must NOT be set.
,SP
DESCRIPTION:
,SP
The entire program is	written	in	M6800
assembler	code	to	allow	for	assembly	on	FLEX2	and	FLEX9
computers.	Cyclic	redundancy	file	checking	has	not	been
implemented in this version,	but hooks have been provided in the
code to facilitate its inclusion.
,SP

MODEM68.TXT

This	is a header file which calls in a number of library files -
MOD68-1	to	MOD68-11.
,SP

MOD68-1.TXT

This file contains all equates used. It also contains some buffer
space	on page 0 for common variables.	The soft switches are all
defaulted	to the OFF state - change these values to $ff	if	you
want them ON.
,SP

MOD68-2.TXT

This is the mainline routine. It prints an initial signon message
followed	by a menu.	All other modes (except return to FLEX) are
called	as	subroutines and return to the menu on	completion	or
after	entry	of	^X from the keyboard.	Responses	to	the	menu
prompts are independent of case.
,SP

MOD68-3.TXT

All	subroutines	used by more than one module are	contained	in
this	file.	There is also an initialisation routine for	a	6850
ACIA used as a modem port.
,SP

MOD68-4.TXT

Resets	the stack pointer and returns to FLEX.	This routine also
calls the file management system to close any files left open.
.SP

MOD68-5.TXT

This file contains all file reception stuff. It firstly checks to
see	what	mode	is	used (normal or batch)	and	then	uses	the
appropriate routine.	Normal mode is fairly	straightforward,	it
prompts	for a filename,	opens the file and then waits until the
line	is	free	to send an initial	NAK.	Batch	mode	is	mostly
concerned with the differences between FLEX and CP/M conventions.
Once	it	gets	that all sorted out it calls the	normal	receive
routines until all transfers are completed. You may wish to alter
the default compatibility character 'z',	if so you will need	to
patch subroutines first and next.
,SP

MOD68-6.TXT

This	routine	handles terminal communications mode.	If	in	log
mode,	you	will	be prompted for a filename to which all	screen
data will be logged until you return to the main menu.	This mode
uses	XON/XOFF	protocol and is useful for	capturing	data	from
bulletin boards etc.	When the buffer is nearly full,	the system
sends	an XOFF to halt output from the remote computer.	It	then
waits	for a bit to see if anything else arrives before it writes
the buffer out to disk.	After completion of the write,	it sends
an	XON to restart output from the remote computer.	At	present,
the	number of characters positions left in the buffer before	an
XOFF	is sent is 5.	This seems to work ok with an	RCPM	running
at 300bps but may need adjustment for other systems or speeds. If
this is the case, change bufend-5 in build.
,SP
If	the	ECHO	switch	is set,	all input from	the	keyboard	is
displayed	on	screen	after being sent	to	line,	and	anything
received	from line is returned.	Without echo,	only	characters
received	from	line	are displayed.	For	dialogue	between	two
systems	using	MODEM68,	one	must be in echo	mode.	Also	when
communicating with a CP/M computer running MODEM or YAM, the CP/M
machine must be in CHAT mode or the FLEX machine must be in	echo
mode.
,SP

MOD68-7.TXT

This	file	contains	the file transmission	bits.	Similarly	to
receipt,	the	mode is checked first.	Much of	MOD68-5	(receive
file)	and	MOD68-7	(transmit	file)	are	concerned	with	the
differences between FLEX and CP/M conventions.	FLEX allows alpha
characters	only	as	the first character in a	filename	and	an
extension.	It	also	requires an extension,	so	the	additional
characters allowed by CP/M are forced to an alpha character	when
in	batch	mode.	No	attempt	has been made	to	implement	file
transmission	times because FLEX uses space compression,	so	the
amount of data stored is less than that transmitted.	The batch
send routine uses FLEX filename matching conventions. The code is
based	on the TSC pdel utility,	and performs similarly for	name
matching,	however	the	filename	is accepted	from	within	the
program instead of appearing on the command line.
,SP

MOD68-8.TXT

This	routine allows any utility running in the	utility	command
space	within FLEX to be run.	It issues the normal	FLEX	prompt
when	called,	and appears to the user as if he is in	FLEX.	Any
program	that	runs in low memory must not be executed with	this
routine	- e.g.	EDIT.	When the utility has completed,	it	will
return to the MODEM68 main menu.
,SP

MOD68-9.TXT

This	routine can be used to abort file transfers from	a	remote
computer.
,SP

MOD68-10.TXT

This	is	a	routine	to	display	and/or	alter	switches.	Any
additional	switches	should appear in MOD68-1 before	endsw	and
should	have	a five letter name (including spaces)	included	in
swmsgf in MOD68-11.
,SP

MOD68-11

This	file contains the command table,	all strings and	messages
and file control blocks and buffers
,SP
ADAPTING TO YOUR SYSTEM:
,SP
If	using a FLEX2 system	with 6850 ACIAs for keyboard and	modem
ports,	the	only changes required are to patch the addresses	of
your	modem	into	aciac and keyboard into kbd	in	MOD68-1.	For
FLEX9	users,	the	base equate in MOD68-1 will also need	to	be
changed.
,SP
If	you	are	not	using	6850s	you	will	need	to	supply	the
appropriate initialisation, status and read and write routines in
MOD68-3.
,SP
IN CASE OF TROUBLE:
,SP
I welcome any suggestions or bug reports.	Also any	enhamcements
(such as CRC checking) are encouraged.
,SP

	John Moorfoot
	2 Yarrayne St
	Leopold
	Victoria 3221
	Australia
,SP

N.B.	FLEX is a trademark of Technical Systems Consultants.	CP/M
is a trademark of Digital Research.
