# APG1

> Source: `manuals/misc/TSC_MAN - FLEX Software Archive - Manual and Documentation Archive - Includes APG-MAC, APG-PREF, APG1.zip!TSC_MAN.dsk!APG1.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.ce
Introduction
.pp
The FLEX Operating System consists of three main parts:  the Disk
Operating System (DOS) which processes commands, the File Management
System (FMS) which manages files on a diskette, and the Utility Command
Set, which are the user-callable commands.  The Utility Command Set
is described in the FLEX User's Guide.  Details of the Disk Operating
System and File Management System portions of FLEX are described in this
manual, which is intended for the programmer who wishes to write his own
commands or process disk files from his own program.
.pp
When debugging programs which use disk files and the File Management
System, the user should take the following precautions:
.pp
1.  Write-protect the system diskette by exposing
or covering the write-protect
cutout on the diskette.
See the FLEX User's Guide for further details on this operation.
This will prevent destruction of the system disk in case the
program starts running wild.
.pp
2.  Use an empty scratch diskette as the working diskette to which
your program will write any data files.  If something goes wrong and
the diskette is destroyed, no valuable data will have been lost.
.pp
3.  Test your program repeatedly, especially with "special cases"
of data input which may not be what the program is expecting.
Well-written programs abort gracefully when detecting errors, not
dramatically.
.pp
A careful programmer, using the information in this manual,
should be able to make the fullest use of his floppy disk system.
.pg
.sp 6
.ce
DISCLAIMER
.pp
This product is intended for use only as described in this document
and the FLEX User's Guide.  Technical Systems Consultants
will not be responsible for the proper functioning of
features or parameters.   The user is urged to abide by the warnings
and cautions issued in this document lest valuable data or diskettes
be destroyed.
.sp 8
.ce
PATCHING "FLEX"
.pp
It is not possible to patch FLEX.  Technical Systems Consultants
cannot be responsible for any destructive side-effects which may result
from attempts to patch FLEX.
.pg
.dm bx
.in 5
.nl 3
..
.ce
THE DISK OPERATING SYSTEM
.pp
The Disk Operating System (DOS) forms the communication
link between the user (via a computer terminal) and the
File Management System.
All commands are accepted through DOS.
Functions such as file specification parsing, command
argument parsing, terminal I/O, and error reporting
are all handled by DOS.
The following sections describe the DOS global variable storage
locations (Memory Map), the DOS user callable subroutines,
and give examples of some possible uses.
.pp
.ce
DOS MEMORY MAP
.pp
The following is a description of those memory locations within the
DOS portion of FLEX which contain information of interest to the
programmer.  The user is cautioned against utilizing for his own
purposes any locations documented as being either "reserved" or
"system scratch", as this action may cause destruction of data.
.pp
$C080-$C0FF - Line Buffer
.bx
The line buffer is a 128 byte area into which characters typed
at the keyboard are placed by the routine INBUF.  All characters
entered from the keyboard are placed in this buffer with the exception of control characters.
Characters which have been deleted by entering the backspace character
do not appear in the buffer, nor does the backspace character itself
appear.  The carriage return signaling the end of the keyboard
input is, however, put in the buffer.  This buffer is also used
to hold the STARTUP file during a coldstart (boot) operation.
.sx
$CC00 - TTYSET Backspace Character
.bx
This is the character which the routine INBUF will
interpret as the Backspace character.
It is user definable through the TTYSET DOS Utility.
Default = $08, a Control-H (ASCII BS).
.sx
$CC01 - TTYSET Delete Character
.bx
This is the character which the routine INBUF will interpret
as the line cancel or Delete character.
It is user definable through the TTYSET DOS Utility.
Default = $18, a control-X (ASCII CAN).
.sx
$CC02 - TTYSET End of Line Character
.bx
This is the character DOS recognizes as the multiple
command per line separator.
It is user definable through the TTYSET Utility.
Default = $3A, a colon (:).
.sx
$CC03 - TTYSET Depth Count
.bx
This byte determines how many lines DOS will print on
a page before Pausing or issuing Ejects.
It may be set by the user with the TTYSET command.
Default = 0.
.sx
$CC04 - TTYSET Width Count
.bx
This byte tells DOS how many characters to output on
each line.
If zero, there is no limit to the number output.
This count may be set by the user using TTYSET.
Default = 0.
.sx
$CC05 - TTYSET Null Count
.bx
This byte informs DOS of the number of null or pad
characters to be output after each carriage return,
line feed pair.
This count may be set using TTYSET.
Default = 4.
.sx
$CC06 - TTYSET Tab Character
.bx
This byte defines a tab character which may be used by other
programs, such as the Editor.
DOS itself does not make use of the Tab character.
Default = 0, no tab character defined.
.sx
$CC07 - TTYSET Backspace Echo Character
.bx
This is the character the routine INBUF will echo
upon the receipt of a backspace character.
If the backspace echo character is set to a $08,
and the backspace character is also a $08, FLEX will
output a space ($20) prior to the outputting of the
backspace echo character.
Default = 0.
.sx
$CC08 - TTYSET Eject Count
.bx
The Eject Count instructs DOS as to the number of blank
lines to be output after each page.
(A page is a set of lines equal in number to the
Depth Count).
If this byte is zero, no Eject lines are output.
Default = 0.
.sx
$CC09 - TTYSET Pause Control
.bx
The Pause byte instructs DOS what action to take
after each page is output.
A zero value indicates that the pause feature is enabled; a
non-zero value, pause is disabled.
Default = $FF, pause disabled.
.sx
$CC0A - TTYSET Escape Character
.bx
The Escape character causes DOS to pause after an output line.
Default = $1B, ASCII ESC.
.sx
$CC0B - System Drive Number
.bx
This is the number of the disk drive from which commands are
loaded.
If this byte is $FF, both drives 0 and 1 will be searched.
Default = drive \#0.
.sx
$CC0C - Working Drive Number
.bx
This is the number of the default disk drive referenced for
non-command files.
If this byte is $FF, both drives 0 and 1 will be searched.
Default = drive \#0.
.sx
$CC0D - System Scratch
.pp
$CC0E-$CC10 - System Date Registers
.bx
These three bytes are used to store the system date.
It is stored in binary form with the month in the first
byte, followed by the day, then the year.
The year byte contains only the tens and ones digits.
.sx
.nl 8
$CC11 - Last Terminator
.bx
This location contains the most recent non-alphanumeric
character encountered in processing the line buffer.  See
commentary on the routines NXTCH and CLASS in the section
"User-Callable System Routines".
.sx
$CC12-$CC13 - User Command Table Address
.bx
The programmer may store into these locations the address of a command
table of his own construction.  See the section called
"User-Written Commands" for details.
Default = 0000, no user command table is defined.
.sx
$CC14-$CC15 - Line Buffer Pointer
.bx
These locations contain the address of the next character
in the Line Buffer to be processed.  See documentation of the
routines INBUFF, NXTCH, GETFIL, GETCHR, and DOCMND in
the section "User-Callable System Routines" for instances
of its use.
.sx
$CC16-$CC17 - Escape Return Register
.bx
These locations contain the address to which to jump if a RETURN
is typed while output has been stopped by an Escape Character.
See the FLEX User's Guide, TTYSET, for information on
Escape processing.  See also the documentation for the routine
PCRLF in the section called "User-Callable System Routines".
.sx
$CC18 - Current Character
.bx
This location contains the most recent character taken from the
Line Buffer by the NXTCH routine.
See documentation of the NXTCH routine for additional details.
.sx
$CC19 - Previous Character
.bx
This location contains the previous character taken from the
Line Buffer by the NXTCH routine.   See documentation of
the NXTCH routine for additional details.
.sx
$CC1A - Current Line Number
.bx
This location contains a count of the number of lines currently on the
page.  This value is compared to the Line Count value to determine
if a full page has been printed.
.sx
$CC1B-$CC1C - Loader Address Offset
.bx
These locations contain the 16-bit bias to be added to the load
address of a routine being loaded from the disk.  See documentation
of the System Routine LOAD for details.  These locations are also
used as scratch by some system routines.
.sx
$CC1D - Transfer Flag
.bx
After a program has been loaded from the disk (see LOAD documentation),
this location is non-zero if a transfer address was found during the loading process.
This location is also used as scratch by some system routines.
.sx
.nl 10
$CC1E-$CC1F - Transfer Address
.bx
If the Transfer Flag was set non-zero by a load from the disk
(see LOAD documentation), these locations contain the last transfer
address encountered.  If the Transfer Flag was set zero by the
disk load, the content of these locations is indeterminate.
.sx
$CC20 - Error Type
.bx
This location contains the error number returned by several of the
File Management System functions.  See the "Error Numbers"
section of this document for an interpretation of the error numbers.
.sx
$CC21 - Special I/O Flag
.bx
If this byte is non-zero, the PUTCHR routine will ignore the
TTYSET Width feature and also ignore the Escape Character.
The routine RSTRIO clears this byte.
Default = 0.
.sx
$CC22 - Output Switch
.bx
If zero, output performed by the PUTCHR routine is through the
routine OUTCH.  If non-zero, the routine OUTCH2 is used.  See
documentation of these routines for details.
.sx
$CC23 - Input Switch
.bx
If zero, input performed by GETCHR is through the routine INCH.
If it is non-zero, the routine INCH2 is used.
See documentation of these routines for details.
.sx
$CC24-$CC25 - File Output Address
.bx
These bytes contain the address of the File Control
Block being used for file output.
If the bytes are zero, no file output is performed.
See PUTCHR description for details.
These locations are set to zero by RSTRIO.
.sx
$CC26-$CC27 - File Input Address
.bx
These bytes contain the address of the File Control
Block being used for file input.
If the bytes are zero, no file input is performed.
The routine RSTRIO clears these bytes.
See GETCHR for details.
.sx
$CC28 - Command Flag
.bx
This location is non-zero if DOS was called from a user program
via the DOCMND entry point.  See documentation of DOCMND for
details.
.sx
$CC29 - Current Output Column
.bx
This location contains a count of the number of characters currently
in the line being output to the terminal.  This is compared to the
TTYSET Width Count to determine when to start a new line.  The
output of a control character resets this count to zero.
.sx
$CC2A - System Scratch
.pp
.nl 10
$CC2B-$CC2C - Memory End
.bx
These two bytes contain the end of user memory.
This location is set during system boot and may be read
by programs requiring this information.
.sx
$CC2D-$CC2E - Error Name Vector
.bx
If these bytes are zero, the routine RPTERR will use the
file ERRORS.SYS as the error file.
If they are non-zero, they are assumed to be the address of
an ASCII string of characters (in directory format) of the name
of the file to be used as the error file.
See the description of RPTERR for more details.
.sx
$CC2F - File Input Echo Flag
.bx
If this byte is non-zero (default) and input is being done
through a file, the character input will be echoed to the output channel.
If this byte is zero, the character retrieved will not be echoed.
.sx
$CC30-$CC4D - System Scratch
.pp
$CC4E-$CCBF - System Constants
.pp
$CCC0-$CCD7 - Printer Initialize
.bx
This area is reserved for the overlay of the system printer
initializization subroutine.
.sx
$CCD8-$CCE3 - Printer Ready Check
.bx
This area is reserved for the overlay of the system "check
for printer ready" subroutine.
.sx
$CCE4-$CCF7 - Printer Output
.bx
This area is reserved for the overlay of the system printer
output character routine.
See Printer Routine descriptions for details.
.sx
$CCF8-$CCFF - System Scratch
.pg
.dm bx
.sp
.in 5
.nl 3
..
.ce
USER-CALLABLE SYSTEM ROUTINES
.pp
Unless specifically documented otherwise, the content of all registers
should be presumed destroyed by calls to these routines.  All routines,
unless otherwise indicated, should be called with a JSR instruction.
In the 6809 version of FLEX the Y and U registers are preserved
across all the following routines.
The A,B and X registers should be considered
changed except where noted otherwise.
Often a value or status is returned in one of these registers.
.pp
$CD00 (COLDS) Coldstart Entry Point
.bx
The BOOT program loaded from the disk jumps to this address to
initialize the FLEX system.  Both the Disk Operating System
(DOS) portion and the File Management System portion (FMS)
of FLEX are initialized.  After initialization, the FLEX title line
is printed and the STARTUP file, if one exists, is loaded and
executed.  This entry point is only for use by the BOOT program,
not by user programs.  Indiscriminate use of the Coldstart Entry
Point by user programs could result in the destruction of the diskette.
Documentation of this routine is included here only for completeness.
.sx
$CD03 (WARMS) Warmstart Entry Point
.bx
This is the main re-entry point into DOS from user programs.  A
JMP instruction should be used to enter the Warmstart Entry Point.
At this point, the main loop of DOS is entered.
The main loop of DOS checks the Last Terminator location for
a TTYSET end-of-line character.  If one is found, it is assumed
that there is another command on the line, and DOS attempts to
process it.  If no end-of-line is in the Last Terminator location
DOS assumes that the current command line is finished, and looks
for a new line to be input from the keyboard.  If, however,
DOS was called from a user program through the DOCMND entry
point, control will be returned to the user program when the end of a
command line is reached.
.sx
$CD06 (RENTER) DOS Main Loop Re-entry Point
.bx
This is a direct entry point into the DOS main loop.  None of
the Warmstart initialization is performed.  This entry point
must be entered by a JMP instruction.  Normally, this entry
point is used internally by DOS and user-written programs
should not have need to use it.
For an example of use, see "Printer Driver" section for details.
.sx
.pg
$CD09 (INCH) Input Character
.br
$CD0C (INCH2) Input Character
.bx
Each of these routines inputs one character from the keyboard, returning it
to the calling program in the A-register.  The address portion
of these entries points to a routine in the Custom I/O package.
They may be altered by changing that package.
The GETCHR routine normally uses INCH but may be instructed
to use INCH2 by setting the "Input Switch" non-zero (see Memory
Map).
The user's program may change the jump vector at the INCH
address to refer to some other input routine such as a routine
to get a character from paper tape.
The INCH2 address should never be altered.
The Warmstart Entry Point resets the INCH jump vector to
the same routine as INCH2 and sets the Input Switch to zero.
RSTRIO also resets these bytes.
User programs should use the GETCHR routine, documented below, rather than
calling INCH, because INCH does not check the TTYSET parameters.
.sx
$CD0F (OUTCH) Output Character
.br
$CD12 (OUTCH2) Output Character
.bx
On entry to each of these routines, the A-register should contain the character being output.
Both of these routines output the character in the A-register to an
output device.  The OUTCH routine usually does the same as OUTCH2;
however, OUTCH may be changed by programs to refer to some other
output routine.  For example, OUTCH may be changed to drive a line
printer.  OUTCH2 is never changed, and always points to the
output routine in the Custom I/O package.  This address
may not be patched to refer to some other output routine.  The
routine PUTCHR, documented below, calls one of these two routines,
depending on the content of the location "Output Switch" (see
Memory Map).  The Warmstart Entry Point resets the OUTCH jump vector
to the same routine as OUTCH2, and sets the Output Switch to zero.
RSTRIO also resets these locations.
User routines should use PUTCHR rather than calling OUTCH or
OUTCH2 directly since these latter two do not check the TTYSET
parameters.
.sx
$CD15 (GETCHR) Get Character
.bx
This routine gets a single character from the keyboard.
The character is returned to the calling program
in the A-register.  The Current Line Number location is cleared
by a call to GETCHR.  Because this routine honors the TTYSET
parameters, its use is preferred to that of INCH.
If the location "Input Switch" is non-zero, the routine INCH2
will be used for input.
If zero, the byte at "File Input Address" is checked.
If it is non-zero, the address at this location is used
as a File Control Block of a previously opened input file and
a character is retrieved from the file.
If zero, a character is retreived via the INCH routine.
The X and B registers are preserved.
.sx
.pg
$CD18 (PUTCHR) Put Character
.bx
This routine outputs a character to a device, honoring all of the TTYSET
parameters.  On entry, the character should be in the A-register.
If the "Special I/O Flag" (see Memory Map) is zero,
the column count is checked, and a new line is started if the current
line is full.  If an ACIA is being used to control the monitor
terminal, it is checked for a TTYSET Escape Character having been
typed.  If so, output will pause at the end of the current line.  If
the location "Output Switch" is non-zero, the routine OUTCH2 is
used to send the character.  If zero,
the location File Output Address is checked.
If it is non-zero the contents of this location is used as a
address of a File Control Block of a previously opened for write
file, and the character is written to the file.
If zero, the routine OUTCH is called
to process the character.  Normally, OUTCH sends the character to
the terminal.  The user program may, however, change the address
portion of the OUTCH entry point to go to another character
output routine.
The X and B registers are preserved.
.sx
$CD1B (INBUFF) Input into Line Buffer
.bx
This routine inputs a line from the keyboard into the Line Buffer.
The TTYSET Backspace and Delete characters are checked and processed
if encountered.  All other control characters except RETURN
and LINE FEED, are
ignored.  The RETURN is placed in the buffer at the end of the line.
A LINE FEED is entered into the buffer as a space character
but is echoed back to the terminal as a Carriage Return and
Line Feed pair for continuation of the text on a new line.
At most, 128 characters may be entered on the line, including the
final RETURN.  If more are entered, only the first 127 are kept,
the RETURN being the 128th. On exit, the Line Buffer Pointer
is pointing to the first character in the Line Buffer.
Caution:  The command line entered from the keyboard is kept in the Line
Buffer.  Calling INBUF from a user program will destroy the command
line, including all unprocessed commands on the same line.  Using
INBUF and the Line Buffer for other than DOS commands may
result in unpredictable side-effects.
.sx
$CD1E (PSTRNG) Print String
.bx
This routine is similar to the PDATA routine in SWTBUG and
DISKBUG.  On entry, the X-register should contain the address
of the first character of the string to be printed.  The string
must end with an ASCII EOT character ($04).  This routine
honors all of the TTYSET conventions when printing the string.
A carriage return and line feed are output before the string.
The B register is preserved.
.sx
.pg
$CD21 (CLASS) Classify Character
.bx
This routine is used for testing if a character is alphanumeric
(i.e. a letter or a number).  On entry, the character should
be in the A-register.  If the character is alphanumeric, the
routine returns with the carry flag cleared.  If the character is not
alphanumeric, the carry flag is set and the character is stored in
the Last Terminator location.  All registers are preserved by this
routine.
.sx
$CD24 (PCRLF) Print Carriage Return and Line Feed
.bx
In addition to printing a carriage return and line feed, this routine
checks and honors several TTYSET conditions.  On entry, this routine
checks for a TTYSET Escape Character having been entered while the previous line
was being printed.  If so, the routine waits for another TTYSET Escape Character or
a RETURN to be typed.  If a RETURN was entered, the routine clears the Last Terminator
location so as to ignore any commands remaining in the command line,
and then jumps to the address contained in the Escape Return Register
locations.  Unless changed by the user's program, this address is
that of the Warmstart Entry Point.  If, instead of a RETURN,
another TTYSET Escape Character was typed, or it wasn't
necessary to wait for one, the Current Line Number is checked.
If the last line of the page has been printed and the TTYSET
Pause feature is enabled, the routine waits for a RETURN or a
TTYSET Escape Character, as above.  Note that all pausing is
done before the carriage return and line feed are printed.  The
carriage return and line feed are now printed, followed by the
number of nulls specified by the TTYSET Null Count.  If the
end of the page was encountered on entry to this routine, an
"eject" is performed by issuing additional carriage return, line
feeds, and nulls until the total number of blank lines is that
specified in the TTYSET Eject Count.
The X register is preserved.
.sx
$CD27 (NXTCH) Get Next Buffer Character
.bx
The character in location Current Character is placed in
location Previous Character.
The character to which the Line Buffer Pointer points is taken
from the Line Buffer and saved in the Current Character location.
Multiple spaces are skipped so that a string of spaces looks
no different than a single space.
The Line Buffer Pointer is advanced to point to the next character unless
the character just fetched was a RETURN or TTYSET End-of-Line
character.  Thus, once an end-of-line character or RETURN is
encountered, additional calls to NXTCH will continue to return
the same end-of-line character or RETURN.  NXTCH cannot be used
to cross into the next command in the buffer.  NXTCH exits
through the routine CLASS, automatically classifying the character.
On exit, the character is in the A-register, the carry is clear
if the character is alphanumeric, and the B-register and X-
register are preserved.
.sx
.nl 10
$CD2A (RSTRIO) Restore I/O Vectors
.bx
This routine forces the OUTCH jump vector to point to the same routine
as does the OUTCH2 vector.  The Output Switch location
and the Input Switch location are set to zero.
The INCH jump vector is reset to point to the same address
as the INCH2 vector.
Both the File Input Address and the File Output Address
are set to zero.
The A-register and B-register are preserved by this routine.
.sx
$CD2D (GETFIL) Get File Specification
.bx
On entry to this routine, the X-register must contain the address
of a File Control Block (FCB), and the Line Buffer Pointer
must be pointing to the first character of a file specification
in the Line Buffer.  This routine  will parse the file
specification, storing the various components in the FCB to
which the  X-register points.  If a drive number was not
specified in the file specification,  the working drive number will
be used.  On exit, the carry bit will be clear if no error was
detected in processing the file specification. The carry bit will be set if there
was a format error in the file specification.  If no extension was
specified in the file specification, none is stored.  The calling
program should set the default extension desired after GETFIL has
been called by using the SETEXT routine.
The Line Buffer Pointer is left pointing to the character
immediately beyond the separator, unless the separator is
a carriage return or End of Line character.
If an error was detected, Error number 21 is stored in
the error status byte of the FCB.
The X register is preserved with a call to this routine.
.sx
$CD30 (LOAD) File Loader
.bx
On entry, the system File Control Block (at $C840) must contain
the name of a file which has been opened for binary reading.
This routine is used to load binary files only, not text files.
The file is read from the disk and stored in memory, normally
at the load addresses specified in the binary file itself.  It is possible to load a binary
file into a different memory area by using the Loader Address Offset
locations.  The 16-bit value in the Loader Address Offset
locations is added to the addresses read from the binary file.  Any
carry generated out of the most significant bit of the address is lost.
The transfer address, if any is encountered, is not modified by
the Loader Address Offset.  Note that the setting of a value in the Loader
Address Offset does not modify any part of the content of the binary
file.   It does not act as a program relocator in that  it does not
change any addresses in the program itself, merely the location of
the program in memory.
If the the file is to be loaded without an offset, be certain
to clear the Loader Address Offset locations before calling
this routine.
On exit, the Transfer Address Flag is
zero if no transfer address was found.  This flag is non-zero
if a transfer address record was encountered in the binary file,
and the Transfer Address locations contain the last transfer
address encountered.  The disk file is closed on exit.  If a
disk error is encountered, an error message is issued and control is
returned to DOS at the Warmstart Entry Point.
.sx
$CD33 (SETEXT) Set Extension
.bx
On entry, the X-register should contain the address of the FCB
into which the default extension is to be stored if there is not an
extension already in the FCB.  The A-register, on entry, should
contain a numeric code indicating what the default extension is to
be.  The numeric codes are described below.  If there is already an
extension in the FCB (possibly stored there by a call to GETFIL),
this routine returns to the calling program immediately.  If there
is no extension in the FCB, the extension indicated by the numeric
code  in the A-register is placed in the FCB File Extension
area.  The legal codes are:
.sp
.in 10
.nf
0 - BIN
1 - TXT
2 - CMD
3 - BAS
4 - SYS
5 - BAK
6 - SCR
7 - DAT
8 - BAC
9 - DIR
10- PRT
11- OUT
.bx
.fi
Any values other than those above are ignored, the routine returning
without storing any extension.
The X register is preserved in this routine.
.sx
$CD36 (ADDBX) Add B-register to X-register
.bx
The content of the B-register is added to the content of the
X-register.
This routine is here for compatibility with 6800 FLEX.
.sx
$CD39 (OUTDEC) Output Decimal Number
.bx
On entry, the X-register contains the address of the most
significant byte of a 16-bit (2 byte), unsigned, binary number.
The B-register, on entry, should contain a space suppression flag.
The number will be printed as a decimal number with leading
zeroes suppressed.  If the B-register was non-zero on entry,
spaces will be substituted for the leading zeroes.
If the B-register is zero on entry,
printing of the number will start with the first non-zero digit.
.sx
$CD3C (OUTHEX) Output Hexadecimal Number
.bx
On entry, the X-register contains the address of a single
binary byte.  The byte to which the X-register points is
printed as 2 hexadecimal digits.  The B and X registers are preserved.
.sx
.nl 10
$CD3F (RPTERR) Report Error
.bx
On entry to this routine, the X-register contains the address of a
File Control Block in which the Error Status Byte is non-zero.
The error code in the FCB is stored by this routine in the Error
Type location.
A call to the routine RSTRIO is made and location Error Vector
is checked.
If this location is zero, the file ERRORS.SYS is opened for
random read.
If this location is non-zero, it is assumed to be an address
pointing to an ASCII string (containing any necessary null pad
characters) of a legal File name plus extension (string
should be 11 characters long).
This user provided file is then opened for random read.
The error number is used in a calculation to determine the
record number and offset of the appropriate error string message
in the file.
Each error message string is 63 characters in length, thus
allowing 4 messages per sector.
If the string is found, it is printed on the terminal.
If the string is not found (due to too large of error number
being encountered) or if the error file itself was not located
on the disk,
the error numberis reported to the monitor terminal as part of the
message:
.sp
.in 10
DISK ERROR \#nnn
.bx
Where "nnn" is the error number being reported.  A description of
the error numbers is given elsewhere in this document.
.sx
$CD42 (GETHEX) Get Hexadecimal Number
.bx
This routine gets a hexadecimal number from the Line Buffer.
On entry, the Line Buffer Pointer must point to the first character of the number in the Line Buffer.
On exit, the carry bit is cleared if a valid number was found,
the B-register is set non-zero, and the X-register contains the
value of the number.
The Line Buffer Pointer is left pointing to the character
immediately following the separator character, unless that character
is a carriage return or End of Line.
If the first character examined in the
Line Buffer is a separator character (such as a comma), the
carry bit is still cleared, but the B-register is set to zero
indicating that no actual number was found.
In this case, the value returned in the X-register is zero.
If a non-hexadecimal character is found while processing the
number, characters in the Line Buffer are skipped until
a separator character is found, then the routine returns to
the caller with the carry bit set.  The number in the Line
Buffer may be of any length, but the value is truncated to
between 0 and $FFFF, inclusive.
.sx
$CD45 (OUTADR) Output Hexaecimal Address
.bx
On entry, the X register contains the address of the most
significant byte of a 2 byte hex value.
The bytes to which the X register points are printed as
4 hexadecimal digits.
.sx
.nl 10
$CD48 (INDEC) Input Decimal Number
.bx
This routine gets an unsigned decimal number from the Line Buffer.
On entry, the Line Buffer Pointer must point to the first character
of the number in the Line Buffer.
On exit, the carry bit is cleared if a valid number was found,
the B-register is set non-zero, and the X-register contains the binary
value of the number.
The Line Buffer Pointer is left pointing as described
in the routine GETHEX.
If the first character examined in the buffer is a separator
character (such as a comma), the carry bit is still cleared,
but the B-register is set to zero indicating that no actual
number was found.
In this case, the number returned in X is zero.
The number in the Line Buffer may be of any length but the
result is truncated to 16 bit precision.
.sx
$CD4B (DOCMND) Call DOS as a Subroutine
.bx
This entry point allows a user-written program to pass a command
string to DOS for processing, and have DOS return control
to the user program on completion of the commands.  The command
string must be placed in the Line Buffer by the user program, and the Line
Buffer Pointer must be pointing to the first character of the command string.
Note that this will destroy any as yet unprocessed parameters and
commands in the Line Buffer.  The command string must terminate
with a RETURN character ($D hex).
After the commands have been processed, DOS will return control
to the user's program with the B-register containing any error
code received from the File Management System.  The
B-register will be zero if no errors were detected.
Caution:  do not use this feature to load programs which may destroy the
user program in memory.  An example of a use of this feature of
DOS is that of a program wanting to save a portion of memory as a binary
file on the disk.  The program could build a SAVE command in the
Line Buffer with the desired file name and parameters, and call the
DOCMND entry point.  On return, the memory will have been saved on
the disk.
.sx
$CD4E (STAT) Check Terminal Input Status
.bx
This routine may be called to check the status of the
terminal input device (to see if a character has been
typed on the keyboard).
If a character has been hit, the Z condition code will
be cleared on return (a not-equal condition).
If no character has been hit, the Z condition code will
be set (an equal condition).  No registers, other
than the CC-register, are altered.
.sx
.pg
