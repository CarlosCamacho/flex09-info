# FULLINFO

> Source: `dev/csc/CSCFL_S2 - CSC Development - Documentation and Examples.zip!CSCFL_S2.DSK!FULLINFO.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

CSC FULL SCREEN DISPLAY PACKAGE
	

I.	General Information

The CSC full screen display package consists of a set of programs coded
primarily in TSC Extended BASIC.	The programs run on the 6809 and support
any serial terminal with cursor control and memory-mapped video displays.
The programs may be made to run on a 6800 with 56K of user memory.	The
package substantially extends the screen input/output capabilities of
XBASIC programs by providing a simple, table-driven method of describing
and using full screen displays.	These table entries are easy to set up and
maintain, and are normally stored on disk and read as required.	A simple,
interactive means of generating the forms and the data field definitions is
provided.	The field tables may also be dynamically modified by the user
program to create even more sophisticated and interactive displays.	Field
level editing is provided thru a subroutine called as each field is completed.
Automatic skipping to the next field is controlled by a program switch.	A
user-initiated screen abort sequence is also provided.

Because of their memory and processor time requirements, the programs in the
package and most application programs should be run in compiled form.


II.	Subroutines

There are five subroutines in the example programs of usual programmer
interest.	They perform the following functions:

	initialization,
	screen output,
	screen input,
	field-level edit,
	abort.

The initialization subroutine should be called as early as possible in the
program.	It reads the parameter file which provides much of the necessary
hardware information for the terminal or video display being used.	It also
reads the field table for that program from the disk file in which it is
stored.	It sets up the user function vector and performs other required
tasks to prepare for full screen display and editing.

The screen input and output subroutines are the high-level functions which
cause the full-screen display to be created and the data to be read from
the keyboard when the cursor is correctly positioned.	The subroutines
extract information from the field tables, based upon a defined range of
screen numbers, so that multiple screen formats may be defined in the same
program and used as required.	Normally, this facility is used to define
the background, or constant, portion of a screen display as a given number
and the variable portions of a display as other numbers (usually sequentially
and higher than the background).	Then the variable portion of a display may
be blanked prior to data entry without affecting the fixed portion.	The
actions of the subroutines are also controlled by several other switches,
providing the selective ability to control automatic skipping to the next
field, erasing all unprotected fields,	performing input-only operations for
correcting data entry errors, and setting the cursor to a desired field after
display or before input.	The screen input subroutine returns the final
cursor position, simplifying many data entry operations by allowing the data
entry clerk to point to a field with the cursor to select among several
options.	The subroutines perform extensive error-checking of the elements
in the field table,	assisting in program development and debugging.	Some
of the relevant external control parameters for the screen input and output
subroutines are as follows:

	QA%-QZ%	screen number range,
	QA$="A"	automatic skip to next field,
	QE$="E"	erase unprotected fields before display,
	QE$="I"	perform input-only operation,
	QC%,QR%	set cursor to column QC%, row QR% before data entry,
	QX%,QY%	start of last field entered during data entry.

The field-level edit subroutine is called when any field on the screen is
completed.	The programmer thus has a control point at which to inspect the
contents of the field just completed and thus to perform immediate editing
and data conversion (such as checking and reformatting dates).	This
subroutine returns a condition code, indicating the following actions to
the screen input subroutine:

	0	normal, continue,
	1	error, reset to start of current field,
	2	change field contents, continue.

The screen input subroutine then performs the indicated actions.

The abort subroutine is called when the data entry clerk strikes a specific
key (such as CTRL-C).	The programmer can then decide how to handle the
abort request.	Normally, the action will be STOP; however, if RETURN is
coded, the abort request will be ingored.

III.	Field Table

The field table is composed of a number of entries each of which defines
a field in a screen format.	The screen input and output subroutines scan
this table sequentially, displaying or editing data as requested by each
entry.	The order of entries in the table determines the order of screen
display and editing.	Related entries should be grouped in the table to
minimize the time required to scan the table.

Each field table entry contains the following data:

	screen number (base 1, zero for last entry in table),
	row number of first character of field (base 1),
	column number of first character of field (base 1),
	length of field in bytes (base 1),
	pointer to field contents table (base zero),
	input type (numeric, alphanumeric, protected),
	field attributes (blinking, gray, dark, reverse, underline, etc.),
	special actions (clear screen, clear field, set cursor).

The screen number is used to separate screen formats.	As noted before, this
subentry provides the capability to selectively process multiple screen
formats by defining them with multiple screen numbers.	The screen input
and output subroutines are controlled by a range of screen numbers, so
related screens are normally numbered sequentially, with the background
screen number as the lowest in the range.

The row, column, and length subentries locate the field on the screen.	
Fields are not allowed to wrap-around from one line to the next.	Also the
last character on a row may not be defined as a part of a field.	These
restrictions may be removed by changing the subroutines.	However, they
were included because of the highly-variable handling of these situations
across a large number of terminals.	They should not present major problems.

The pointer to the field contents table provides the location of the data
to be placed into or input into the field on the screen.	It is simply a
subscript to a string array.	Normally, the forms generator assigns the
pointers sequentially as fields are defined, after reserving the first few
numbers for the background screen definition.	For those fields which are
all blank and are not intended for input, -1 may be specified as the pointer.
If the fields on a screen are defined in a logical manner, the pointers will
be assigned sequentially, perhaps simplifying the programming task by
allowing the use of repetitive code to access the data contents.

The input type subentry specifies the type of input allowed into the field.
A specification of 'protected' indicates that the field is output-only.
A specification of 'numeric' indicates that only the digits, plus, minus,
and period are allowed to be input to the field.	A specification of
'alphanumeric' allows the entry of any non-control character into the field.
When the data entry clerk is inputting data, the cursor is allowed to be
placed only in unprotected fields.	Forward and backward tabbing moves
the cursor to the beginning of the next unprotected field.

Additional field attribute codes may easily be added for those features of
a given terminal not supported by the subroutines as delivered.	Field
attributes may be combined for those cases supported by a given terminal
or display.	The dark attribute is handled by the screen input and output
subroutines and need not be present in a given terminal or display to work
properly.

The special actions subentry designates actions to be performed either
before or after the display and input is performed.	Clear screen and clear
field are performed before and set cursor is performed after.

The field table entries are normally read from disk into memory in the
initialization process.	They may remain constant or be modified to make
the display more sophisticated and interactive.	Usually, the forms generator
program would be used to create and maintain the field table.	However, the
programmer may also edit the table entries on disk or after input to create
special situations not supported by the forms generator.

IV.	Customizing

The full screen display subroutines are delivered as parts of two example
programs, for serial terminals and for memory-mapped video displays.	The
package is designed to be as flexible as practical.	Many hardware-dependent
items are kept in two parameter files, to simplify changing to new terminals,
displays, or computers.	A program is provided which is capable of modifying
terminal or display configuration characteristics in the parameter files.
This will usually provide only a partial conversion in many cases, however,
and program code in the screen input and output subroutines will probably
also require modification.	The following table provides the default values
for the input control keys as provided in the initial parameter file:

	CTRL-U	back field
	CTRL-I	forward field
	RETURN	enter screen
	CTRL-^	home up
	CTRL-Z	clear screen
	CTRL-L	cursor right
	CTRL-H	cursor left
	ESCAPE	erase eof
	CTRL-O	insert character
	CTRL-P	delete character
	CTRL-N	current field
	CTRL-C	break
	CTRL-R	restore field
	CTRL-A	define field
	CTRL-D	delete field
	CTRL-E	end field
	CTRL-X	insert field
	CTRL-J	cursor down
	CTRL-K	cursor up

User function code (contained in the parameter files) is written for the
6809 with a serial port at $E004.	The sources for the versions of the
user functions for the 6809 and 6800 are included in another file.	The
user function code may easily be modified or replaced by changing the
object code on the parameter files.	Because of memory requirements, the
conversion to a 6800 will probably work only if 56K of contiguous user
memory is available.

The first problem usually encountered when interfacing a new serial terminal
concerns the setting of the cursor.	If the terminal has a "set cursor"
function, the changes will probably be minor and involve the parameter file
and the set-cursor subroutine.	If it does not have such a function, the
programmer will probably have to change the set-cursor subroutine to issue
"home cursor" and the proper number of "cursor down" and "cursor right"
control characters.

Adding new field attributes, such as variable intensity and colors, to serial
terminals requires assigning new control table locations on the parameter
file and adding corresponding code to the set/reset option subroutine.	This
will probably be fairly simple, as the new code will usually be similar to
existing code in the parameter file and subroutines.	The forms generator
will support additional attributes assuming that the field table mnemonic
is alphabetic or numeric.

Conversion to support a new memory-mapped display will probably be the most
complicated.	The subroutines now support the Thomas 16 by 64 video board.
In this case, each character occupies one memory position and reverse
video is designated by the high-order bit being turned on.	Extensive
comments in the example program should assist in any required conversion.


V.	Screen Generation and Maintenance

In addition to the example programs containing the full screen display and
edit subroutines, the package also contains three programs designed to assist
in the development and maintenance of screen formats.	Two of these programs
create and maintain background screens and data field table entries, and
the third program produces terminal or printer output to document the
screen formats generated by the other programs.	All are self-instructive.
With the assistance of these programs, the developer can construct, modify,
maintain, and document field tables in a straightforward manner.	These
screen formats are normally stored on disk and read into memory as required.
Because the format generator programs allow only one background screen to
be defined per disk file, most application programs will have only one major
screen.	However, through the use of the CHAIN command in BASIC, multiple
program modules may be linked together in a structured fashion, producing
potentially almost unlimited power and flexibility for the screen displays.


VI.	Opening the Package

The full screen display package contains the following programs and files:

	FULLTERM.BAS	example program for serial terminals,
	FULLVIDO.BAS	example program for video displays,
	FULLGENT.BAS	format generator for serial terminals,
	FULLGENV.BAS	format generator for video displays,
	FULLPRIN.BAS	format documentor,
	FULLCHNG.BAS	modify parameter files,
	FULLUSER.TXT	source text for user functions,
	FULLCMPR.BAS	print differences between two BASIC programs,
	FULLRESQ.TXT	resequence parts of BASIC programs,

	FULLEXAT.DAT	example screen format file for serial terminals,
	FULLEXAV.DAT	example screen format file for video displays,
	FULLPART.TXT	parameter file for serial terminals,
	FULLPARV.TXT	parameter file for video displays,
	FULLINFO.TXT	information file for full screen display package.

The format documentor program and parameter file modification program do not
load the parameter files and are insensitive to display details.	Thus the
example screen format files may be reviewed and the parameters file may be
modified for a new terminal or display.	The example program should then be
reviewed and any modifications required should be performed.	Then the example
program can be run to demonstrate many of the capabilities of the system.	In
order to demonstrate the utility of the field-level edits, the first field on
the example screen must contain a "-" in the seventh position to be accepted.
