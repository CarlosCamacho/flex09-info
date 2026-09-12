# CSCINSZP

> Source: `dev/csc/CSC - CSC Development - Documentation and Examples.zip!CSC.DSK!CSCINSZP.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.




CSC 680X PROGRAM DEVELOPMENT SYSTEM NOTES
	- CSC super-zapper
	

by Bud Pass
	Computer Systems Consultants
	1454 Latta Lane
	Conyers, Georgia	30207


The CSC super-zapper has been designed to run on the 680X series
of Motorola microprocessors under FLEX*.	When assembled and run on a
6809, it makes the necessary address changes to itself to run under
FLEX* 9.	The object file it analyzes may reside on a FLEX* disk or in
main memory.	The object file it produces may be sent to a FLEX* disk.
The CSC super-zapper is essentially self-instructive and has two
levels of help files.	It provides an object file editing capability.

The CSC super-zapper is designed for session-oriented use.	A session
normally begins when the program is executed, but may also begin when
the 'R' (restart) command is issued by the user.	All indicators are
reset to their default values, as indicated below.	The user may then
issue various commands.	All CSC super-zapper commands are capital
letters.	If any other input is found when a command is expected, the
command menu is displayed.	Because of the interdependence of many of
the commands, they should be issued in the proper sequence and at the
proper times.	The explanation below is intended to serve as a quick
guide to elementary operation of the CSC super-zapper.

The CSC super-zapper is capable of processing 6800, 6801, and 6809
programs.	By default, it assumes that the program is a 6800 program,
unless the CSC super-zapper has been assembled for and is running on a
6809, in which case it assumes that the program is a 6809 program.
The 'M' command may be used at any time to set the cpu mode.

The user may need to determine the current indicator settings and con-
trol table contents.	The 'L' command may be used at any time to list
the indicators and tables.

If the user desires to process a program on disk or to direct the
output file to disk, the 'S' command may be used.	'S' will request
an input file name and/or an output file name.	If either file is not
to be used, the RETURN key (only) should be hit.	If an input file has
already been established, another will not be requested.	The only way
in which to change or eliminate an input file, once established, is to
issue the 'R' (restart) command.	Since the 'S' command resets many
indicators and tables, it should be issued near the beginning of a
session.

One command which should be used before an 'S' command, if desired, is
the 'O' command.	This command provides an offset value which is added
to each address in the program being processed.	If the program is
to be processed from disk, the offset value is applied when the map
is created (when the input file name is specified).	If the program is
to be processed from main memory, the offset value may be changed as
often as desired, since the offset value is applied during the actual
process of acquiring the data from memory.

If the program is being processed from disk, the starting and ending
addresses will be set automatically.	The transfer address will be set
if it is present in the file.	In any case, the 'N' command may be used
to set or change the start, end and transfer addresses.	The 'X' command
may be used to set or change the transfer address.	If the transfer
address is set to FFFF, no transfer address will be generated in the
output file.	If an output is attempted and no start, end, or transfer
address has been provided, they will be requested.	

At any point after start and end addresses have been defined, the 'Q'
command may be used to format the program and display it on the terminal.
Each page of the display shows 256 bytes of the program.	The first page
of the display begins at the address represented by the starting address
with the low-order byte zeroed.	Then the display may be paged forward,
backward, set to an arbitrary 256-byte sector of memory, or terminated.
Each page of the display may also be modified in a full-screen edit
manner.	Data may be entered in either hexadecimal or alpha format,
depending upon the area of the screen to which the cursor is pointing.
The displayed data represents the true resolved contents of the object
program in main memory or on disk.	If the input program file is
composed of multiple redefinitions or the 'Q', 'Z' or 'T' command has
been used to change the value of the byte at a given address,
only the last definition of a particular byte will be displayed.

The 'D' command is used to request a listing of the program code
between the then-defined starting and ending addresses.	This
listing is produced in instruction, FCB, FCC, and FDB formats.	The
readability of the listed program code may be improved substantially
in many cases thru the 'typing' of memory ranges.	By default, memory
is decoded as instructions and the ASCII equivalent of each byte is
output next to each instruction to assist in the location of printable
strings of characters.	The 'Q' command may also be used to help split
memory into ranges of instructions, constants, ignored areas, etc.

Once an area of memory has been 'typed', the following commands may be
used to improve the disassembly listing (and output file):
	A-FDB address range
	C-FCC address range
	H-FCB address range
	I-instruction address range
	J-instruction+ASCII address range
	K-ignored address range
Each command will request a start and end address for the given type
of memory.	The last definition of a given byte is used in each case.

The 'Z' command may be used to examine and change program code.	When
a 'Z' is entered, a starting address is requested.	The program code
byte at this location is displayed.	If the user desires to change the
byte to another value, the new value may be entered.	In this case,
and in most other cases, the byte at the next location is displayed.
If '^' is entered, the byte at the previous location is displayed.
If carriage-return is entered, the command is terminated.

The 'T' command may be used to fill an entire range of program
addresses with the same one-byte hex string.	When this command is
entered, the starting and ending addresses and one-byte hex string
are requested.

The 'Y' command is used to scan for a hex string of bytes between
a given range of addresses.	The beginning addresses of the matching
strings are printed in response. When the 'Y' command is entered,
the starting and ending addresses and matching string are requested.
A carriage return may be used to terminate the matching string.

The 'W' command is used to output the resulting object program to a
disk file.	If no output file name has been defined, one is requested
and if one is not given the second time, the request is terminated.
If the start, end and transfer addresses have not been provided, they
are requested.	The output file reflects only that program code
between the start and end addresses, exclusive of ignored address
ranges.	Ignored address ranges may be generated explicitly, thru the
'K' command, or implicitly, by not being defined in an input file.
After the revised program code has been written to the output file,
the transfer address is output if it is not equal to FFFF.

Although most of the CSC super-zapper commands are simple, entry of a
large number of them may become tedious and time-consuming, especially
when a large program is being processed in an iterative fashion.	The
'G' command allows the user to store commands such as 'A','C','H','I',
'J','K','T','Z' in a text file and input them to the CSC super-zapper.
It may be used whenever the '?' prompt is displayed.	Any errors
detected in the input text file cause the immediate termination of
the reading of the file and return control to the terminal.

The 'F' command may be used to return to FLEX*.

For ease of customizing the CSC super-zapper in situations other than
for FLEX* 2.0 and 9.0, all external addresses are kept in a table at
the beginning of the assembler program.	Initialization code may also
need modification in some cases.	For ease of interfacing to various
terminals, symbolic values such as MAXPRN, CLRSC1, and CLRSC2 have been
defined.	MAXPRN provides the maximum printable character value for
the terminal.	CLRSCN1 and CLRSC2 provide the screen clear character
string; unused character positions should be set to $80.	Similarly,
HOMEU1 and HOMEU2 provide the cursor home-up character string.	Also,
CLCUR and HMCUR provide the input character values to indicate cursor
home-up and UPCUR, DNCUR, LFCUR, and RTCUR provide the character
values for the other cursor movements.

	* FLEX is a trademark of Technical Systems Consultants.
