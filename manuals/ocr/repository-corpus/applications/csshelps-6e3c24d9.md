# CSSHELPS

> Source: `apps/spelling-dictionaries/NEWSLEUTH_1_BACK - Spelling and Dictionary - Program and Support Utilities.zip!NEWSLEUTH_1_BACK.DSK!CSSHELPS.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.pl 66
.lm 5
.ln 70
.dm hd
:sp
..
.dm ft
:sp
:pg
..
.at 1 hd
.at -5 ft
.sp 2
.ce
SUPER SLEUTH
.sp
.ce
A PROGRAM ANALYSIS AND DEBUGGING TOOL
.sp
.ce 4
by Edgar M.\ (Bud) Pass, Ph.D.
Computer Systems Consultants, Inc.
1454 Latta Lane, Conyers, GA 30207
Telephone Number 404-483-1717/4570
.sp 2
SUPER SLEUTH is a set of programs which enables the user to examine
and/or modify object program files on disk or in memory on 6800/1/2/3/8/9
systems running under FLEX* or UNIFLEX*.	Programs may be disassembled
into source code format and the source may be displayed, printed, or
saved on disk.	Labels produced by SLEUTH can be changed to labels
of the user's preference.	Cross-reference listings of labels in any
Motorola assembler-formatted source file may be produced to aid in
debugging or modifying the program.	Programs in ROM may be "altered"
with the revised program being saved on disk; the resultant program
could then be used to program a new ROM.	Object code for 6800, 01,
02, 03, 05, 08, 09, or 6502 may be processed.	6800, 01, 02, 08, 09
object code may be easily converted to 6809 position-independent code.
A detailed operating manual is included.	All programs are supplied in
source form on disk - assembly is required.	The system is available
on 5" or 8" diskette for FLEX* or 8" diskette for UNIFLEX*.
The operating system must be specified when SLEUTH is ordered.
.sp
.ce
SLEUTH
.sp
SLEUTH has been designed to run under either FLEX* or UNIFLEX*.
The object program it analyzes may reside on diskette or
in memory.	The output files it produces may be sent to diskette.
Programs in FLEX* or UNIFLEX* format may be analyzed by the UNIFLEX*
version of the program; the same format is output as was input.
SLEUTH is self-instructive and has two levels of help files,
in addition to a printed manual.	It is a disassembler and object file
editor for 6800, 01, 02, 03, 05, 08, 09, and 6502 CPU's.
.sp
SLEUTH has been designed for session-oriented use.	All indicators are
reset to their default values, as indicated below.	The user may then
issue various commands.	All SLEUTH commands are single letters.
If any other input is found when a command is expected, the command
menu is displayed.	Because of the interdependence of many of the
commands, they should be issued in the proper sequence and at the
proper times.	The explanation below is intended to serve as a quick
guide to elementary operation of the SLEUTH. A more complete
explanation may be found in the printed manual.
.sp
SLEUTH is capable of processing 6800, 01, 02, 03, 05, 08, 09, and 6502
programs.	By default, it assumes that the program is a 6809 program.
The 'Z' command may be used at any time to set the CPU mode.
.sp
The user may need to determine the current indicator settings and
control table contents.	The 'L' command may be used at any time to
list the indicators and tables.
.sp
If the user desires to process a program currently on disk, the 'S'
command may be used.	'S' will prompt for an input file name.	Since
the 'S' command resets many indicators and tables, it should be
issued only near the beginning of a session.	If 'S' is not issued,
or 'S' is issued but no file name is entered, then SLEUTH assumes
that the object program resides in memory.
.sp
One command which should be used before an 'S' command, if desired, is
the 'O' command.	This command provides an offset value which is added
to each address in the program being processed.	If the program is
to be processed from disk, the offset value is applied when the map
is created (when the input file name is specified).	If the program is
to be processed from main memory, the offset value may be changed as
often as desired, since the offset value is applied during the actual
process of acquiring the data from memory.	The offset
value is ignored during loading of segmented UNIFLEX* programs.
.sp
If the program is being processed from disk, the starting and ending
addresses will be set automatically.	The transfer address will be set
if it is present in the file. In any case, the 'N' command may be used
to set or change the start, end and transfer addresses.	The 'X'
command may be used to set or change the	address.	If the transfer
transfer address is set to FFFF, no transfer address will be
generated in the output file.	If an output is attempted and no start,
end, or transfer address has been provided, they will be requested.
The transfer address of a segmented UNIFLEX* program is always 0000.
.sp
Labels are usually placed on the same line as the assembler code.
If a label is to be placed other than at the beginning of a line of
code, it is entered in one of the following formats:
.nf
	label EQU *	or
	label EQU *+n where n=1,2,3,4
.fi
The 'E' command may be used to flip a switch which will force those
labels normally printed on the same line as the code to be printed in
the format as specified above.
.sp
Normally, the disassembled code is generated such that the reassembled
code will resemble as closely as possible the original object file.
The 'B' command assists in producing such code by flagging all short
address instructions with '<' and all long address instructions with
'>'.	The 'P' command specifies the generation of 6809 position-
independent source code from 6800, 01, 02, 03, 08, or 09 object code.
In the latter case, no particular attempt is made to produce code
corresponding to the original object program.	The 'B'
(cross-assembler) switch is set by default and the 'P'
(position-independent) switch is reset by default.
.sp
At any point after start and end addresses have been defined, the 'Q'
command may be used to format the program and display it on the
terminal.	Each page of the display shows up to 256 bytes of the program.
The first page of the display begins at the address represented by the
starting address with the low-order byte zeroed.	Then the display may
be paged forward, backward, set to an arbitrary 256-byte sector of
memory, or terminated.
Each page of the display may also be modified in a full-screen edit
manner.	Data may be entered in either hexadecimal or alpha format,
depending upon the area of the screen to which the cursor is pointing.
The displayed data represents the true resolved contents of the object
program in main memory or on disk.	If the input program file is
composed of multiple redefinitions or the 'Q', 'M' or 'T' command has
been used to change the value of the byte at a given address,
only the last definition of a particular byte will be displayed.
.sp
The 'V' command is used to request a listing of the program code
between the then-defined starting and ending addresses.	This listing
is produced in instruction, FCB, FCC, FDB, and RMB formats.	The
readability of the listed program code may be improved substantially
in many cases thru the 'typing' of memory ranges.	The 'Q' command may
be used to help determine how to split memory into contigous ranges
of instructions, constants, ignored areas, etc.
.sp
The 'D' command is used to perform a disassembly.	If a start, end,
or transfer address has not already been provided, they are requested.
The user is requested for an output file name for the generated source
program.	If no file name is entered, no output disk file is created.
A reassembleable source file (with labels) is generated and output
as requested.	All memory changes and memory types specified are
honored.	Thus, the interpretation of memory ranges as instructions
may be overridden and FCB's, FDB's, FCC's, etc. may also be generated.
.sp
If a FLEX* printer driver name is provided when the SLEUTH program is
executed, the user will be asked if output is to be sent to printer,
in addition to display and disk, when the 'D' and 'V' commands
are specified.
.sp
Once an area of memory has been 'typed', the following commands may be
used to improve the output display, printout, and disk source file:
.nf
	A-FDB address range
	C-FCC address range
	H-FCB address range
	I-instruction address range
	J-instruction+ASCII address range
	K-ignored address range
	R-RMB address range
.fi
Each command above will request a memory range for the given type
of memory.	The last definition of a given byte is used in each case.
.sp
The 'M' command may be used to examine and change program code.	When
a 'M' is entered, a starting address is requested.	The object code
byte at this location is displayed.	If the user desires to change the
byte to another value, the new value may be entered.	In this case,
and in most other cases, the byte at the next location is displayed.
If '^' is entered, the byte at the previous location is displayed.
If carriage-return is entered, the command is terminated.	Since the
specified memory location is not actually changed, object programs
from any source (even disk or ROM) may be logically altered.
.sp
The 'T' command may be used to fill an entire range of program
addresses with the same one-byte hex string.	When this command is
entered, the starting and ending addresses and one-byte hex string
are requested.
.sp
The 'Y' command is used to scan for a hex string of bytes between
a given range of addresses.	The beginning addresses of the matching
strings are printed in response. When the 'Y' command is entered,
the starting and ending addresses and matching string are requested.
A carriage return is used to terminate the matching string.
.sp
The 'W' command is used to output the resulting object program to a
disk file.	If no output file name has been defined, one is requested.
If the start, end and transfer addresses have not been provided, they
are requested.	The output file reflects only that program code
between the start and end addresses, exclusive of ignored address
ranges.	Ignored address ranges may be generated explicitly (thru the
'K' command) or implicitly by not being defined in an input file.
After the revised program code has been written to the output file,
the transfer address is output if it is not equal to FFFF.
.sp
Although most of the SLEUTH commands are simple, repeated entry of a
large number of them may become tedious and time-consuming, especially
when a large program is being processed in an iterative fashion.	The
'G' command allows the user to store commands such as 'A', 'C', 'H', 'I',
'J', 'K', 'R', 'T', 'M' in a text file and input them later to SLEUTH.
It may be used whenever the '?' prompt is displayed.	Any errors
detected in the input text file cause the immediate termination of
the reading of the file and return control to the terminal.	The state
of SLEUTH at a given time may thus be saved for a later execution.
.sp
The 'U' command may be used to execute a FLEX* or UNIFLEX* command
while in SLEUTH.	Any command which does not interfere with SLEUTH may
be used.	No check is made to determine whether a command is valid.
.sp
The 'F' command may be used to return to FLEX* or UNIFLEX*.
.sp
.ce
NAME CHANGER
.sp
The name-changer program is essentially a word substitution program.
A table of words and substitutes is read into memory and the input
file is read.	All words in the input file are checked against the
substitution table and, if a match is found, the appropriate change
is made.	The principal use of this facility lies in changing the
machine-generated labels produced by SLEUTH into more mnemonic names.
.sp
The format of each record in the substitution file is as follows:
.nf
	/old-string/new-string/
.fi
where '/' may be any delimiter not in either string, new-string may
be null, and old-string may not be null.
.sp
Several substitution files are included on the program disk.	They are
intended to be used with SLEUTH to help in the commenting of programs
initially running under various versions of FLEX*.	Associated with
each control file is an equate file providing standard names and
comments for the corresponding version of FLEX*.	By using the control
file for one version of FLEX* and the equate file for another, most
references may be automatically changed.	The files are as follows:
.nf
	CSSCHGF1	CSSCHGE1	- MINI-FLEX*
	CSSCHGF2	CSSCHGE2	- FLEX* 2
	CSSCHGF9	CSSCHGE9	- FLEX* 9
.fi
.sp
.ce
CROSS-REFERENCER
.sp
The cross-reference program processes an assembly language source file
and produces an alphabetically-sorted list of labels in that file,
the line number where each label is defined, and all line numbers on
which that label appears.	Any source program formatted according to
the Motorola assembler source code format may be processed.
LIB calls may be optionally expanded or ignored, as required.
.sp
.sp
.nf
	* FLEX and UNIFLEX trademarks of Technical Systems Consultants.
.PG

.IN 0
.CE
COMMAND SUMMARY
.SP 2
.nf
OPERATIONAL COMMANDS
.SP
.IN 5
D--Perform full disassembly
F--Exit to FLEX or UNIFLEX
Q--Object code dump/screen editor
M--Query/modify object code
T--Fill address range with hex value
U--Execute FLEX or UNIFLEX command
V--View object code & perform absolute disassembly
W--Write new object code file
Y--Find hex string in object code
.sp
.in 0
ADDRESS RANGE COMMANDS
.SP
.IN 5
A--Classify as FDB
C--Classify as FCC
H--Classify as FCB
I--Classify as Instruction
J--Classify as Instruction & ASCII
K--Classify as Ignored address range
R--Classify as RMB
.sp
.in 0
MODE CHANGE COMMANDS
.sp
.in 5
B--Flip cross-assembler switch
E--Flip separate-label switch
P--Flip position-independence switch
Z--Select CPU mode
.sp
.in 0
MISCELLANEOUS COMMANDS
.sp
.in 5
G--Specify auxiliary input/output file
L--List control information
N--Set new disassembly range
O--Set offset load value
S--Specify input file name
X--Set transfer address
.fi
