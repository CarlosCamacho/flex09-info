# UC

> Source: `flex-09/distributions/255X32 - Unix Kermit C Source and Terminal Library - 4 MiB Disk Image.zip!255X32.DSK!UC.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

uc - Version 1.0 - UNIX-to-CP/M File Transfer Tool

UC is a file	transfer	tool	which	runs	under	UNIX.	It,	in
conjunction	with	a	CP/M-based	MODEM	communications	program,
allows the user to transfer both binary and	text	files	between
UNIX and CP/M.

UC is based on ideas from	UMODEM	3.5.	UC	is	a	totally	new
design, including many features of similar function but different
implementation and adding many new	features	and	both	a	menu-
driven and command-completion user interface.

Usage:	uc c[o] [filename]

where 'c' MUST be One of the Following Commands --
	C -- CRC Check on Binary File (filename required)
	c -- CRC Check on Text File (filename required)
	f or F -- File Status (filename required)
	R -- Receive Binary File (filename required)
	r -- Receive Text File (filename required)
	S -- Send Binary File (filename required)
	s -- Send Text File (filename required)
	z or Z -- Enter Command Mode (filename NOT required)

and Additional Options 'o' Include --
	1 -- Select File Transfer Protocol 1
	7 -- Select 7-Bit Transfer
	a or A -- Enable ARPA Net Communication
	b or B -- Override 'c', 's', or 'r' to Binary
	l or L -- Turn Off Log Entries
	t or T -- Override 'C', 'S', or 'R' to Text

Examples:
	uc S myfile -or- uc sb myfile	<-- Send Binary File
	uc s7l myfile	<-- Send Text File with 7 Bits and No Log


	UC is a file transfer tool which runs on UNIX.	It allows
the	user to transfer files between UNIX and CP/M systems, verify
the integrity of transferred files via	Cyclic	Redundancy	Check
(CRC)	value	computation,	and perform other functions useful in
file transfer.

	UC implements the following communications protocols:

	1) "CP/M User's Group XMODEM" protocol	developed
	by Ward Christensen (checksum only)

	2) TERM II/TERM	III	File	Transfer	Protocol	1
	developed by Richard Conn

	UC supports 7- or 8-bit transfers	(7	or	8	significant
bits/byte) for text files and 8-bit transfers for binary files.

There is currently no batch file transfer capability.

The program writes logging data to a	file	in	the	user's	home
directory	called	uc.log.	This	file contains a transaction of
activity	since	the	invocation	of	the	program,	and	this
transaction includes data on file transmissions (error log).

The program's defaults can be initialized	for	each	user	by	a
setup	file called .ucsetup (note the leading dot, so .ucsetup is
hidden from normal directory displays).	.ucsetup is a text	file
which	contains initialization options for uc.	It can be created
by using any editor under UNIX.

The program will do a protocol file transfer with error	checking
to or from a CP/M system running Ward Christensen's program MODEM
or one of its	derivatives	(MODEM7	or	APMOD777	etc.)	or	any
program	that	uses	the	same	protocols (e.g. ZPRO or TERM II).
Note that executable and squeezed files must use the -sb	or	-rb
options.	If a file named .ucsetup is present in the user's home
directory, then uc will load this	file	and	interpret	commands
from	it.	These commands, which are similar to the command line
and command mode options, establish default	conditions	for	uc.
If	.ucsetup is not present in the user's home directory, then uc
will configure itself with its default values.

The following are	the	characters	which	may	be	placed	in	a
.ucsetup file to establish working conditions for uc:


Char	Function
 !	Comment, extending from "!" to end of line
 1	Select FTP 1
 3	Select FTP 3 (CP/M User's Group Protocol)
 7	Select 7-Bit Transmission
 8	Select 8-Bit Transmission
a/A	Turn on ARPA Net Communication
l/L	Turn on Logging to uc.log
m/M	Turn on Menu Display for uc Command Mode
 -	Negate Effect of a/A, l/L, or m/M: -a/-A, -l/-L, or -m/-M

If a command is omitted or the .ucsetup file is not found in	the
user's home directory, then the following defaults apply:

 3	FTP 3 (CP/M User's Group Protocol)
 8	8-Bit Transmission
-A	No ARPA Net Communication
 L	Activity Log uc.log is Generated
-M	No Menu Display for uc Command Mode

The following is a sample (and complete) .ucsetup file:


!	UC Configuration File for Richard Conn
3	!	Use FTP 3 (since 3 is default, this is not necessary)
8	!	Use 8 Bits
-a !	No ARPA Net Communication
-m !	No Menu
L	!	Log File

The following options are supported under the command mode of uc:

	UC Command Summary

	------- Major Function -------	-- File Xfer Options --
	c <file>	CRC Value of File	1 or 3	Select FTP
	r <file>	Receive File
7 or 8	Select Bits
	s <file>	Send File	a or A	Toggle ARPA Net
	%e or E	Display Environ

	------- UNIX	Function -------	-------- Notes --------
	d <dir/file> Display Directory	Major Fct - if caps(C),
	f <file>	File Size Info	binary file; if not(c),
	l <dir>	Log Into Dir		text file
	m
Toggle Menu
	x
Exit to UNIX		UNIX Fct - either case
	z
UNIX Command

A sample	session	which	illustrates	the	command	mode	of	uc
follows.	Comments are inserted into the session; these comments
are preceeded by '<--' and continue to the end of the line.

$ uc z
	<-- Invoke uc in command mode
UC Version 1.0 - UNIX-to-CP/M File Transfer Tool
UC Configuration File /user/rxc/.ucsetup
UC Command Mode -- Type 'h' for Help
UC Command?
	<-- You can type h, H, ?, or / to receive online doc
UC Command? Directory of (dir or file spec)
	<-- I typed "d" and <CR> (<CR> selects all files)
	-- Filename --	- Size -	-- Filename --	- Size -
	comhex.1
810	menu.1	8571
	comhex.man
1448	menu.man
10706
	cpmunix.1
825	skeleton
146
	cpmunix.man		1490	type.1	1575
	cpmutl7.doc
766	type.man
2239
	crck.1	1553	uc.1	7743
	crck.man
2189	uc.man	9338
	dir.1	5542	umodem.1
4751
	dir.man
5744	umodem.man
6440
	man.1	3968	unixcpm.1
617
	man.doc
14827	unixcpm.man		1284
	man.menu
784

-- 23 Entries Displayed, 93356 Bytes --
UC Command? Login (directory) /user/rxc/.c
	<-- I typed "l" and "/us..."
/user/rxc/.c	<-- uc showed new dir
UC Command? Directory of (dir or file spec)
	<-- I typed "d" and <CR>
	-- Filename --	- Size -	-- Filename --	- Size -
	dir.c	7485	uc.c	30629

-- 2 Entries Displayed, 38114 Bytes --
UC Command? Directory of (dir or file spec) /user/rxc/.man
	-- Filename --	- Size -	-- Filename --	- Size -
	comhex.1
810	menu.1	8571
	comhex.man
1448	menu.man
10706
	cpmunix.1
825	skeleton
146
	cpmunix.man		1490	type.1	1575
	cpmutl7.doc
766	type.man
2239
	crck.1	1553	uc.1	7743
	crck.man
2189	uc.man	9338
	dir.1	5542	umodem.1
4751
	dir.man
5744	umodem.man
6440
	man.1	3968	unixcpm.1
617
	man.doc
14827	unixcpm.man		1284
	man.menu
784

-- 23 Entries Displayed, 93356 Bytes --
UC Command? UNIX Command Line (command line) pwd
/user/rxc/.c

UC Command? File Status of (file name) dir.c
	<-- I typed "f" and "dir.c"
File Size of dir.c is 26K, 201 Blocks
UC Command? File Status of (file name) uc.c
File Size of uc.c is 27K, 216 Blocks
UC Command? CRC of Text File (file name) uc.c
	<-- I typed "c" and "uc.c"
CRC of uc.c is 72EE
UC Command? CRC of Binary File (file name)
	<-- typing "C" gives binary, and striking <CR> usually aborts
UC Command? Send Text File (file name) dir.c
	<-- I typed "s" and "dir.c"
UC Sending File: dir.c
File Size of dir.c is 26K, 201 Blocks
FTP 3, 8-Bit Transfer Selected
Ready to Send File

<-- Detail Left Out -->
UC Command? Exit

 uc.c	<-- source code
 uc.log	<-- activity log file
 .ucsetup	<-- user-specific setup options
 dir.c	<-- source code to directory display program
 dir	<-- binary file executed by uc for directory displays

	UC uses another program, dir, to	provide	its	directory
displays.	This	program	should	be	placed	by	the	user in a
directory along his command search path	(as	identified	by	the
PATH shell variable).

	Creation and installation of the setup file, .ucsetup, is
not mandatory.	If the user desires this, .ucsetup must be placed
in his HOME directory (as identified by the HOME shell variable).

DIR (1)

	UC has been tested extensively except for	the	ARPA	Net
interface.	This	interface	is	believed to work correctly, but
problems may exist which are unknown at this tim.

Richard Conn


DDN Addresses: rconn@brl, rconn@simtel20


UC is based on ideas from UMODEM 3.5, where UMODEM was originally
written	by	Lauren	Weinstein,	and was mutated by Richard Conn,
Bennett Marks, Michael Rubenstein, Ben Goldfarb,	David	Hinnant,
and	Lauren	Weinstein	into	version	3.5.	UC is a totally new
design, including many features of similar function but different
implementation	and	adding	many	new	features and both a menu-
driven and command-completion user interface.
