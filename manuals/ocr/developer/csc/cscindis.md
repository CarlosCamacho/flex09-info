# CSCINDIS

> Source: `dev/csc/CSC - CSC Development - Documentation and Examples.zip!CSC.DSK!CSCINDIS.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.




CSC 680X PROGRAM DEVELOPMENT SYSTEM NOTES
	- CSC disassembler
	

by Bud Pass
	Computer Systems Consultants
	1454 Latta Lane
	Conyers, Georgia	30207


The CSC disassembler has been designed to run on the 680X series
of Motorola microprocessors under FLEX*.	When assembled and run on a
6809, it makes the necessary address changes to itself to run under
FLEX* 9.	The object program it analyzes may reside on a FLEX* disk
or in main memory.	The source file it produces may be sent to a FLEX*
disk or console or both.	The CSC disassembler is essentially self-
instructive and has two levels of help files.

The CSC disassembler is designed for session-oriented use.	A session
normally begins when the program is executed, but may also begin when
the 'R' (restart) command is issued by the user.	All indicators are
reset to their default values, as indicated below.	The user may then
issue various commands.	All CSC disassembler commands are capital
letters.	If any other input is found when a command is expected, the
command menu is displayed.	Because of the interdependence of many of
the commands, they should be issued in the proper sequence and at the
proper times.	The explanation below is intended to serve as a quick
guide to elementary operation of the CSC disassembler.

The user may need to determine the current indicator settings and con-
trol table contents.	The 'L' command may be used at any time to list
the indicators and tables.

The CSC disassembler is capable of disassembling 6800, 6801, and 6809
programs.	By default, it assumes that the program is a 6800 program,
unless the CSC disassembler has been assembled for and is running on a
6809, in which case it assumes that the program is a 6809 program.
The 'M' command may be used at any time to set the cpu mode.

If the user desires to disassemble a program on disk or to direct the
output file to disk, the 'S' command may be used.	'S' will request
a binary file name and/or a text file name.	If either file is not
to be used, the RETURN key (only) should be hit.	If a binary file has
already been established, another will not be requested.	The only way
in which to change or eliminate a binary file, once established, is to
issue the 'R' (restart) command.	Since the 'S' command resets many
indicators and tables, it should be issued near the beginning of a
session.	

One command which should be used before an 'S' command, if desired, is
the 'O' command.	This command provides an offset value which is added
to each address in the program being disassembled.	If the program is
to be disassembled from disk, the offset value is applied when the map
is created (when the binary file name is specified).	If the program is
to be disassembled from main memory, the offset value may be changed as
often as desired, since the offset value is applied during the actual
disassembly process.

If the program is being disassembled from disk, the starting and ending
addresses will be set automatically.	The transfer address will be set
if it is present in the file.	In any case, the 'N' command may be used
to set or change the start, end and transfer addresses.	The 'X' command
may be used to set or change the transfer address.	If the transfer
address is set to FFFF, no transfer address will be generated in the
text file.	If a disassembly is attempted and no start, end, or transfer
address has been provided, they will be requested.	

The 'T' command may be used to flip the switch which controls output of
the text file to the console.	If a disassembly is attempted and the
output is not sent to the disk, the console switch is automatically
turned on.

A label is normally placed on the line with the instruction or constant.
If a label is to be placed before the start address, after the end
address, or within an instruction, it is entered in on of the following
formats:
	label EQU *	or
	label EQU *+n	n=1,2,3
The 'E' command may be used to flip a switch which controls the printing
of labels which would normally be printed with the instruction or
constant in the latter format.

Normally, the disassembled code is generated such that the re-assembled
code will resemble as closely as possible the original binary program.
However, the 'P' command may be used to flip the switch which controls
the generation of 6809 position-independent code from possibly non-
position-independent code.	Position-independent code may be generated
from 6800, 6801, or 6809 programs.	In this case, no particular attempt
is made to generate direct or extended addressing code corresponding
to the binary program.

At any point after start and end addresses have been defined, the 'Q'
command may be used to format the program and display it on the terminal.
Each page of the display shows 256 bytes of the program.	The first page
of the display begins at the address represented by the starting address
with the low-order byte zeroed.	Then the display may be paged forward,
backward, set to an arbitrary 256-byte sector of memory, or terminated.
The displayed data represents the true resolved contents of the object
program in main memory or on disk.	If the binary program file is
composed of multiple redefinitions, only the last definition of a
particular byte will be displayed.

The 'D' command is used to perform a disassembly.	If a start, end, or
transfer address has not been defined, they are requested.	If output
is not to be sent to disk, the console switch is turned on.	Two passes
are made at the object program.	In the first pass, all absolute memory
addresses are determined and placed into a table.	In the second pass,
label definitions are made, instructions are decoded, constants are
defined, and the disassembled source text program is generated.	The
quality of the generated source program may be improved substantially
in many cases thru the 'typing' of memory ranges.	By default, memory
is decoded as instructions and the ASCII equivalent of each byte is
output next to each instruction to assist in the location of printable
strings of characters.	The 'Q' command may also be used to help split
memory into ranges of instructions, constants, ignored areas, etc.

Once an area of memory has been 'typed', the following commands may be
used to improve the generated source text file:
	A-FDB address range
	C-FCC address range
	H-FCB address range
	I-instruction address range
	J-instruction+ASCII address range
	K-ignored address range
Each command will request a start and end address for the given type
of memory.	The last definition of a given byte is used in each case.

Although most of the CSC disassembler commands are simple, entry of a
large number of them may become tedious and time-consuming, especially
when a large program is being disassembled in an iterative fashion.
The 'G' command allows the user to store commands such as 'A','C','H',
'I','J' and 'K' in a text file and input them to the CSC disassembler.
It may be used whenever the '?' prompt is displayed.	Any errors
detected in the input text file cause the immediate termination of
the reading of the file and return control to the terminal.

The 'F' command may be used to return to FLEX*.

For ease of customizing the CSC disassembler in situations other than
for FLEX* 2.0 and 9.0, all external addresses are kept in a table at
the beginning of the assembler program.	Initialization code may also
need modification in some cases.	For ease of interfacing to various
terminals, symbolic values MAXPRN, CLRSC1, and CLRSC2 have been
defined.	MAXPRN provides the maximum printable character value for
the terminal.	CLRSCN1 and CLRSC2 provide the screen clear character
string; unused character positions should be set to $80.

	* FLEX is a trademark of Technical Systems Consultants.
