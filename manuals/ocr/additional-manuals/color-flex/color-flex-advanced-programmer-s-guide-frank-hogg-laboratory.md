# Color FLEX Advanced Programmer's Guide (Frank Hogg Laboratory)

> Source: `manuals/color-flex/Color FLEX Advanced Programmer's Guide (Frank Hogg Laboratory).pdf`  
> Method: OCR at 200 DPI

OCR and media-decoding errors may remain.

FLEX

For the TRS-80 Color Computer

ADVANCED
PROGRAMMER’ S
GUIDE

FAANK
HOGG
LABORATORY

---

FLEX

For the TRS-80 Color Computer

ADVANCED
PROGRAMMER’ S

GUIDE

Technical Systems Consultants, Inc.
P.O. Box 2570
West Lafayette, indiana 47906

---

PLEASE NOTE: The following documentation pertains to Standard TSC FLEX. In
adapting FLEX to run on the Color Computer, the following changes were made.
Please be aware of these differences when reading the following documentation.

1. The 'P' command in FHL Color FLEX has a different meaning than that
referenced in the following section. See 'Notes on the P Command! page 1.9.

2. Printer Spooling is not supported.

3. Interrupts are not used.

---

: TABLE OF CONTENTS i
TABLE OF CONTENTS f }
CHAPTER 2 cont.

CHAPTER 0 ~ FEL OGLOR FLEX PAGE JUMP 3.1.1
* LINK L.1.1
l. Introduction to FHL Color FLEX 0.1 LIST L.2.1
2. Features of FHL Color FLEX 0,2 * MON M12
3. PHL Color FLEX Tutorial *  MOVEROM M.2.1
Appendix A References N N.1.1
Appendix B Hardware Vendors *  NEWDISK N.2.1
Appendix C Modifying the 32K Color Computer * NEWDISKA N.2.1
Appendix D Software Vendors io) 0.1.1
Appendix E FHL FLEX Specifications * p Pil.
Appendix F FHL FLEX System Memory Map PROT P.2.1
*  PUTBOOT. LDR P.3.1
CHAPTER 1 - THE FLEX DISK OPERATING: SYSTEM RENAME R11
* ROM R.2.1
I, Introduction 11 SAVE S.1.1
TI. System Requirements 1.2 * SDC 8.2.1
Ill. Getting the System Started 1.2 * SETUP 8.3.1
Iv. Disk Files and Their Names i.3 Disk 8.3.3
V. Entering Commands 1.5 Memory 8.3.4
VE. Command Descriptions 1.7 Pr inter 8.3.5
GENERAL SYSTEM INFORMATION Terminal S.3.6
I. Disk Capacity 1.8 STARTUP 8.4.1
Il. Write Protect 1.8 * TED T.l.l
III. The 'RESET' Button 1.8 TIYSET T.2.1
Iv. Notes on the 'P' Conmand 1.9 VERIFY Vel.
VI. System Error Numbers 1.10 VERSION V.2.1
VII. FLEX I/O Subroutines 11) XOUT X.1.1
VIII. Booting the FLEX DOS 1.13 * XSCREENS (Hi-Res Screens) X.2.1
IX.  PRINT.SYS for Standard FLEX 1.14 y Y.1.1
qr. COMMAND SUMMARY 3.1
CHAPTER 2 — DISK UTULITIES
I. Utility Command Set 2.1 CHAPTER 3 ~— ADVANCED PROGRAMMER'S GUIDE
APPEND A.1.1
ASN A.2.1 Table of Contents ili
* BASIC C.3.1
BUIID B.1.1
CAT C.1.1 INDEX Index Page 1
*  CBASIC C.2.1
COPY C.3.1
DATE D.1.1
* DBASIC D.2.1 NOrE: IF THERF IS A 'RGAD-ME.TXT' FILE ON THE SUPPLIED DISK THEN
DELETE D.3.1 LIST IT OUT USING:
* DISPLAY D.4.1
EXEC E.1.1 LIST 0.READ-ME
* EXT E.2.1
GET G.1.1
* HELP H.1.1 (*) These commands are provided by Prank Hogg Laboratory, Inc. -
I I.l.1 not TSC. Contact FHL if you have any problems with them.
* INT 1.2.1
* IM T.3.1

(*) These commands are provided by Frank Hogg Laboratory, Inc.,
not. TSC. Contact FHL if you have any problems with them.

Page -vi-
Page -v-

---

CONTENTS
Preface

. A I. Introduction
The purpose of the Advanced Programmer‘s Manual is to provide the

assembler language programmer with the information required to make Il, Disk Operating System
effective use of the available system routines and functions. This DOS Memory Map

manual applies to the 6809 version of FLEX. The programmer should keep User Callable Routines
this manual close at hand while learning the system. It is organized to User Written Commands
make it convenient as a quick reference guide as well as a thorough Disk Resident Commands
reference manual. The manual is not written for the novice programmer Comments About Commands
and assumes the user to have a thorough understanding of assembler Examples of DOS Calls

language programming techniques.

Ell. Fite Management System
File Control Blocks
FMS Entry Points
FMS Global Variables
FMS Function Codes
Random Files
Error Numbers

Iv. Disk Drivers

Vv. Disk Structures
Diskette Initialization
Directory Sectors
Data Sectors
Binary Files
Text Files

VI. Writing Utility Commands
Example Program

VII. The DOS LINK Utility

VIII. Printer Routines
The P Utility

IX. General Information
Interrupts in FLEX
System Memory Map

~fli-

---

EEEERE

Introduct ton

The FLEX Operating System consists of three main parts: the Disk
Operating System (DOS) which processes commands, the File Management
System (FMS) which manages files on a diskette, and the Utility Command
Set, which are the user-callable commands. The Utility Command Set is
described in the FLEX User's Guide. Details of the Disk Operating
System and File Management System portions of FLEX are described in this
manual, which is intended for the programmer who wishes to write his
own commands or process disk files from his own program.

When debugging programs which use disk files and the File Management
System, the user should take the following precautions:

1. Write-protect the system diskette by exposing or covering the
write-protect cutout on the diskette. See the FLEX User's Guide for
further details on this operation. This wil} prevent destruction of the
system disk in case the program starts running wild.

2. Use an empty scratch diskette as the working diskette to which your
program will write any data files. If something goes wrong and the
diskette is destroyed, no valuable data will have been lost.

3. Test your program repeatedly, especially with “special cases" of
data input which may not be what the program is expecting. Well-written
programs abort gracefully when detecting errors, not dramatically.

A careful programmer, using the information in this manual, should be
able to make the fullest use of his floppy disk system.

-1-

---

FLEX Advanced Programmer's Guide

NISCLAIMER

This product is intended for use only as described in this document and
the FLEX User's Guide. Technical Systems Consultants will not be
responsible for the proper functioning of features or parameters. The
user is urged to abide by the warnings and cautions issued in this
document lest valuable data or diskettes be destroyed.

PATCHING "FLEX"
It is not possible to patch FLEX. Technical Systems Consultants cannot

be responsible for any destructive side-effects which may result from
attempts to patch FLEX.

=2-

FLEX Advanced Programmer's Guide

THE DISK OPERATING SYSTEM

The Disk Operating System (DOS) forms the communication link between the
user (via a computer terminal) and the File Management System. All
commands are accepted through DOS. Functions such as file specification
parsing, command argument parsing, terminal I/0, and error reporting are
all handled by DOS. The following sections describe the DOS globa
variable storage locations (Memory Map), the DOS user callable
subroutines, and give examples of some possible uses.

DOS MEMORY MAP

The following is a description of those memory locations within the DOS
portion of FLEX which contain information of interest to the programmer.
The user is cautioned against utilizing for his own purposes any
locations documented as being either "reserved" or "system scratch", as
this action may cause destruction of data.

$CO80-$COFF - Line Buffer

The line buffer is a 128 byte area into which characters typed at
the keyboard are placed by the routine INBUF. All characters
entered from the keyboard are placed in this buffer with the
exception of control characters. Characters which have been
deleted by entering the backspace character do not appear in the
buffer, nor does the backspace character itself appear. The
carriage return signaling the end of the keyboard input is,
however, put in the buffer. This buffer is also used to hold the
STARTUP file during a coldstart (boot) operation.

$CCOO - TTYSEY Backspace Character
This is the character which the routine INBUF will interpret as the
Backspace character. It is user definable through the TTYSET DOS
Utility. Default = $08, a Control-H (ASCII BS).

$CCOl - TTYSET Delete Character
This is the character which the routine INBUF will interpret as the
line cancel or Delete character. It is user definable through the
TTYSET 00S Utility. Default = $18, a control-x (ASCII CAN).

$CCO2 - TTYSET End of Line Character
This is the character DOS recognizes as the multiple command per
line separator. [It is user definable through the TTYSET Utility.
Default = $3A, a colon (:).

$CCO3 - TTYSET Depth Count
This byte determines how many lines DOS will print on a page before
Pausing or issuing Ejects. It may be set by the user with the
TTYSET command. Default = 0.

$CCO4 - TTYSET Width Count
This byte tells DOS how many characters to output on each Tine. If
zero, there is no limit to the number output. This count may be
set by the user using TTYSET. Default = 0.

---

FLEX Advanced Programmer's. Guide

$ccoS - TTYSET Nut? Count
This byte informs DOS of the number of null or pad characters to be
output after each carriage return, Tine feed pair. This count may

be set using TTYSET. Default = 4.

$cco6 - TTYSET Tab Character
This byte defines a tab character which may be used by other
programs, such as the Editor. DOS itself does not make use of the

Tab character. Default = 0, no tab character defined.

$cco7 - TTYSET Backspace Echo Character

This is the character the routine INBUF will echo upon the receipt

of a_ backspace character. If the backspace echo character is set
to a $08, and the backspace character is also a $08, FLEX will
output a space ($20) prior to the outputting of the backspace echo

character. Default = 0.

$ccog - TTYSET Eject Count
The Eject Count instructs DOS as to the number of blank lines to be

output after each page. (A page is a set of lines equal in number
to the Depth Count). If this byte js zero, no Eject lines are
output. Default = 0.

scCO$ - TIYSET Pause Control

The Pause byte instructs DOS what action to take after each page

is output. A zero value indicates that the pause feature is
disabled. A non-zero value indicates that the pause is enabled.
Default = $00, pause Cisabled.

$CCOA - TTYSET Escape Character
The Escape character causes DOS to pause after an output Tine.

Default = $18, ASCII ESC.

$ccoB ~ System Drive Number
This is. the number of the disk drive from which commands are

loaded. If this byte is SFF, both drives 0 and 1 will be searched.
Default = drive #0.

$ccoc - Working Drive Number
This is the number of the default disk drive referenced for

non-command files. If this byte is $FF, both drives 0 and 1 will
be searched. Default = drive #0.

$CCOD - System Scratch

$CCOE-$CC1O - System Date Registers
These three bytes are used to store the system date. It is stored
in binary form with the month in the first byte, followed by the
day, then the year. The year byte contains only the tens and ones

digits.

-4-

FLEX Advanced Programmer's Guide

secu) = Last Terminator
is location contains the mo:

0 n st recent non-alphan i
encountered in processing the line buffer. apeeaieabtar a

routines NXTCH i ion "
Routines", and CLASS in the section "User-Callable System

seci2-Sc013 - User Command Table Address
The programmer may store into these locations the address of a
e of his own construction. See the section called

“User-Written Commands" i
is" fo
command table is defined. y details. Default = 0000, no user

Seci4-sccs ~ Line Buffer Pointer
ress cet ons contain the address of the next character in the
LU BUEE aXToH e processed. cea a aa of the routines
i > . and DOCMI i i
User-Callable System Rout ines" Fat inctances ef ite use seerton

$cC16-8CC17 - Escape Return Register
typed locations contain the address to which to jump if a RETURN is
the FLEX. U output has been stopped by an Escape Character. See
processing See Suide, rnasers for information on Escape
wot e documentatio i 5
the section called "User-Callable System More inece routine PCRLF in

$CC18 - Current Character
This location contains the most recent character taken from the

Line Buffer by the NXTC i i
routine for addtional Teh routine. See documentation of the NXTCH

$CC19_- Previous Character
This location contains the previous character taken from the Line

Buffer by the NXTCH i .
routine for additional details. See documentation of the NXTCH

SCCIA = Current Line Number
his location contains a count of the number of lines currently on

the page. This value is
age. com i
determine if a full page has peered, the Line Count value to

ScciB-ScC1C,- Loader Address Offset
ese locations contain the 16-bit bias
0 . to be added to th
aes on Restine LORS Toaded From the disk. See sSecuneatation
or i i
used as scratch by some system cette. These Tocatians are alse

$CC1D - Transfer Flag
After a program has bi
. een loaded from the di
Soot e rpodene ne is non-zero if a rancher adiness ues
ng process. i i i
scratch by some system routines. This Tocetion is also used 2s

-5-

---

FLEX Advanced Programmer's Guide

SCCIE-$CCIF - Transfer Address
If the Transfer Flag was set non-zero by a Toad from the disk (see
LOAD documentation}, these locations contain the last transfer
address encountered. If the Transfer Flag was set zero by the disk
load, the content of these locations is indeterminate.

$cc20 - Error Type
This location contains the error number returned by several of the

File Management System functions. See the "Error Numbers" section
of this document for an interpretation of the error numbers.

$CC21 - Special 1/0 Flag
If this byte is non-zero, the PUTCHR routine will ignore the TTYSET

Width feature and also ignore the Escape Character. The routine
RSTRIO clears this byte. Default = oO

$CC22 - Output Switch
If zero, output performed by the PUTCHR routine is through the

routine QUTCH. If non-zero, the routine QUTCH2 is used. See
documentation of these routines for details.

$CC23 - Input Switch
If zero, input performed by GETCHR is through the routine INCH, If
it is non-zero, the routine INCH2 is used. See documentation of
these routines for details.

$CC24-$CC25 - File Output Address
These bytes contain the address of the File Control Block being
used for file output. If the bytes are zero, no file output is
performed. See PUTCHR description for details. These locations are
set to zero by RSTRIO.

$cC26-$CC27 - File Input Address
These bytes contain the address of the File Control Block being
used for file input. If the bytes are zero, no file input is
performed. The routine RSTRIO clears these bytes. See GETCHR for
details.

$CC28 - Command Flag
This location is non-zero if DOS was called from a user program via

the DOCMND entry point. See documentation of DOCMND for details.

$cc29 - Current Output Column
This location contains a count of the number of characters
currently in the Tine being output to the terminal. This is
compared to the TTYSET Width Count to determine when to start a new
line. The output of a control character resets this count to zero.

$CC2A - System Scratch

-6-

TeRPCCRR ESS S ce cco

FLEX Advanced Programmer's Guide

$CC2B-$CC2C ~ Memory End
These two bytes contain the end of user memory. This location is

set during system boot and may be read b: iri i
set ung iy ead by programs requiring this

$CC20-$CC2E - Error Name Vector
If these bytes are zero, the routine RPTERR will i
; use the file
ERRORS.SYS as the error file. If they are non-zero, they are
assumed to be the address of an ASCII string of characters (in
directory format) of the name of the file to be used as the error
file. See the description of RPTERR for more details.

$CC2F - File Input Echo Flag
If this byte is non-zero (default) and in, i i
h ; put is being done through
a file, the character input will be echoed to the output channel.
If this byte is zero, the character retrieved will not be echoed.

$CC30-$CC4D - System Scratch
$CC4E-SCCBF - System Constants
$CCCO-SCCD7 - Printer Initialize
This area is reserved for the overlay of the system printer

initializization subroutine.

$CCD8-$CCE3 - Printer Ready Check

This area is reserved for the overlay of th "
i es
printer ready" subroutine. ¥ ystem “check for

$CCE4-SCCF7 - Printer Output

This area is reserved for the overla, i
e y of the system printer output
character routine. See Printer Routine descriptions for Getasls.

$CCF8-SCCFF - System Scratch

---

changed except where noted otherwise. Often a value or status is a
routine normally uses INCH but may be instructed to use INCH2 by
$CDOO (COLDS) Coldstart Entry Point
The BOOT program loaded from the disk jumps to this address to

returned in one of these registers.
setting the “Input Switch" non-zero (see Memory Map). The user's
program may change the jump vector at the INCH address to refer to
some other input routine such as a routine to get a character from
paper’ tape. The INCH2 address should never be altered. The
initialize the FLEX system. Both the Disk Operating System (DOS) Warmstart Entry Point resets the INCH jump vector to the same
portion and the File Management System portion (FMS) of FLEX are routine as INCH2 and sets the Input Switch to zero. RSTRIO also
initialized. After initialization, the FLEX title line is printed resets these bytes. User programs should use the GETCHR routine,
and the STARTUP file, if one exists, is loaded and executed. This documented below, rather than calling INCH, because INCH does not
entry point is only for use by the BOOT program, not by user check the TTYSET parameters.
programs. Indiscriminate use of the Coldstart Entry Point by user
programs could result in the destruction of the diskette.
Documentation of this routine is included here only for
completeness.

SCDOF (OUTCH) Output Character
$CD12 (OUTCH2) Output Character

On entry to each of these routines, the A-register should contain
the character being output. Both of these routines output the
character in the A-register to an output device. The OUTCH routine
usually does the same as OUTCH2; however, OUTCH may be changed by
programs to refer to some other output routine. For example, OUTCH
may be changed to drive a line printer. OUTCH2 is never changed,
and always points to the output routine in the Custom I/O package.
This address may not be patched to refer to some other output
routine. The routine PUTCHR, documented below, calls one of these
two routines, depending on the content of the tocation “Output
Switch" (see Memory Map). The Warmstart Entry Point resets the
OUTCH jump vector to the same routine as OUTCH2, and sets the

input from the keyboard. If, however, DOS was called fron a user
program through the DOCMND entry point, control will be returned to i Output Switch to zero, RSTRIO also resets these locations. User

$CDO3 (WARMS) Warnstart Entry Point

FLEX Advanced Programmer's Guide
FLEX Advanced Programmer's Guide
USER-CALLABLE SYSTEM ROUTINES
$CD09 (INCH) Input Character
Unless specifically documented otherwise, the content of all registers $CDOC (INCH2) Input Character
should be presumed destroyed by calls to these routines. All routines, .
unless otherwise indicated, should be called with a JSR instruction. In Each of these routines inputs one character from the keyboard,
the 6809 version of FLEX the Y and U registers are preserved across all returning it to the calling program in the A-register. The address
the following routines. The A,B and X registers should be considered portion of these entries points to a routine in the Custom 1/0
package. They may be altered by changing that package. The GETCHR
This is the main re-entry point into DOS from user programs. A UMP
instruction should be used to enter the Warmstart Entry Point. At
this point, the main loop of DOS is entered. The main loop of BOS
checks the Last Terminator location for a TTYSET end-of-line
character. If one is found, it is assumed that there is another
command on the line, and DOS attempts to process it. if no
end-of-line is in the Last Terminator location DOS assumes that the
current command line is finished, and looks for a new line to be
the user program when the end of a command Tine is reached. routines should use PUTCHR rather than calling OUTCH or OUTCH2
directly since these latter two do not check the TTYSET parameters.
$CDO6 (RENTER) DOS Main Loop Re-entry Point
$CD15 (GETCHR} Get Character
This is a direct entry point into the DOS main loop. None of the
Warmstart initialization is performed. This entry point must be
entered by a UMP instruction. Normally, this entry point is used
internally by DOS and user-written programs should not have need to
use it. For an example of use, see "Printer Driver" section for
details.

This routine gets a single character from the keyboard. The
character is returned to the calling program in the A-register
The Current Line Number location is cleared by 2 call to GETCHR.
Because this routine honors the TIYSET parameters, its use is
preferred to that of INCH. If the location “Input Switch" is
non-zero, the routine INCH2 will be used for input. If zero, the
j byte at "File Input Address” is checked. If it is non=zero, the
address at this location is used as a File Control Block of 4
previously opened input file and a character is retrieved from the
file. If zero, a character is retreived via the INCH routine. The
X and B registers are preserved.

~8-

---

FLEX Advanced Programmer's Guide
FLEX Advanced Programmer's Guide

$CD18 (PUTCHR) Put Character
$CD21 (CLASS) Classify Character

This routine outputs a character to a device, honoring all of the
TTYSET parameters. On entry, the character should be in the
A-register. If the "Special 1/0 Flag" (see Memory Map) is zero, the
column count is checked, and a new line is started if the current
line is full. If an ACIA is being used to controt the monitor
terminal, it is checked for a TTYSET Escape Character having been
typed, If so, output will pause at the end of the current line.
If the location "Output Switch" is non-zero, the routine OUTCH2 is
used to send the character. If zero, the location File Output
Address is checked. If it is non-zero the contents of this
location is used as a address of a File Control Block of a
previously opened for write file, and the character is written to
the file. If zero, the routine OUTCH fs catled to process the
character. Normally, OUTCH sends the character to the _terminal
The user program may, however, change the address portion of the
QUTCH entry point to go to another character output routine. The X
and 8 registers are preserved.

$CD1IB (INBUFF) Input into Line Buffer

This routine inputs a line from the keyboard into the Line Buffer.
The TTYSET Backspace and Delete characters are checked = and
processed if encountered. All other contro? characters except
RETURN and LINE FEED, are ignored. The RETURN is placed in the
buffer at the end of the Tine. A LINE FEED is entered into the
buffer as a space character but is echoed back to the terminal as a
Carriage Return and Line Feed pair for continuation of the text on
anew line. At most, 128 characters may be entered on the line,
including the final RETURN. If more are entered, only the first
127 are kept, the RETURN being the 128th. On exit, the Line Buffer
Pointer is pointing to the first character in the Line Buffer.
Caution: The command Tine entered from the keyboard is kept in the
Line Buffer. Calling INBUF from a user program wilt destroy the
command line, including all unprocessed commands on the same Tine.
Using INBUF and the Line Buffer for other than DOS commands may
result in unpredictable side-effects.

$CDIE (PSTRNG) Print String

This routine is similar to the PDATA routine in SWTBUG and DISKBUG.
On entry, the X-register should contain the address of the first
character of the string to be printed. The string must end with an
ASCII EOT character ($04). This routine honors all of the TIYSET
conventions when printing the string. A carriage return and line
feed are output before the string. The B register is preserved.

-10-

This routine is used for testing if a character is alphanumeric
(i.e. a letter or a number). On entry, the character should be in
the A-register. If the character is alphanumeric, the routine
returns with the carry flag cleared. If the character is not
alphanumeric, the carry flag is set and the character is stored in
the Last Terminator location. All registers are preserved by this
routine.

$CD24 (PCRLF) Print Carriage Return and Line Feed

In addition to printing a carriage return and line feed, this
routine checks and honors several TTYSET conditions. On entry,
this routine checks for a TTYSET Escape Character having been
entered while the previous line was being printed. If so, the
routine waits for another TTYSET Escape Character or a RETURN to be
typed. If a RETURN was entered, the routine clears the Last
Terminator location so as to ignore any commands remaining in the
command line, and then jumps to the address contained in the Escape
Return Register locatfons. Unless changed by the user's program,
this address is that of the Warmstart Entry Point. If, instead of
a RETURN, another TTYSET Escape Character was typed, or it wasn't
necessary to wait for one, the Current Line Number is checked, If
the last line of the page has been printed and the TTYSET Pause
feature is enabled, the routine waits for a RETURN or a TTYSET
Escape Character, as above. Note that all pausing is done before
the carriage return and line feed are printed. The carriage return
and line feed are now printed, followed by the number of nulls
specified by the TTYSET Null Count. If the end of the page was
encountered on entry to this routine, an “eject” is performed by
issuing additiona} carriage return, line feeds, and nulls until the
total number of blank lines is that specified in the TTYSET Eject
Count. The X register is preserved.

$CD27 (NXTCH) Get Next Buffer Character

The character in lecation Current Character is placed in location
Previous Character. The character to which the Line Buffer Pointer
points fs taken from the Line Buffer and saved in the Current
Character location. Multiple spaces are skipped so that @ string
of spaces looks no different than a single space. The Line Buffer
Pointer jis advanced to point to the next character unless the
character just fetched was a RETURN or TTYSET End-of-Line
character. Thus, once an end-of-line character or RETURN is
encountered, additional calls to NXTCH will continue to return the
same end-of-Tine character or RETURN. NXTCH cannot be used to
cross into the next command in the buffer. NXTCH exits through the
routine CLASS, autenatically classifying the character. On exit,
the character is in the A-register, the carry is clear if the
character is alphanumeric, and the 8-register and X- register are
preserved,

---

FLEX Advanced Programmer's Guide

$CD2A (RSTRIO) Restore I/0 Vectors

This routine forces the OUTCH jump vector to point to the same
routine as does the OUTCH2 vector. The Output Switch location and
the Input Switch location are set to zero. The INCH jump vector is
reset to point to the same address as the INCH2 vector. Both the
File Input Address and the File Output Address are set to zero
The A-register and B-register are preserved by this routine.

$CD2D (GETFIL) Get File Specification

On entry to this routine, the X-register must contain the address
of a File Control 8lock (FCB), and the Line Buffer Pointer must be
pointing to the first character of a file specification in the Line
Buffer. This routine will parse the file specification, storing
the various components in the FCB to which the X-register points.
If a drive number was not specified in the file specification,
the working drive number will be used. On exit, the carry bit will
be clear if no error was detected in processing the file
specification. The carry bit will be set if there was a format
error in the file specification. if no extension was specified in
the file specification, none is stored. The calling program should
set the default extension desired after GETFIL has been called by
using the SETEXT routine. The Line Buffer Pointer is Teft pointing
to the character immediately beyond the separator, unless the
separator is a carriage return or End of Line character. If an
error was detected, Error number 21 is stored in the error status
byte of the FCB. The X register is preserved with a call to this
routine.

$CD30 (LOAD) File Loader

On entry, the system File Control Block (at $C840) must contain the
name of a file which has been opened for binary reading. This
routine is used to load binary files only, not text files. The
file is read from the disk and stored in memory, normally at the
load addresses specified in the binary file itself. It is possible
to load a binary file into a different memory area by using the
Loader Address Offset locations. The 16-bit value in the Loader
Address Offset locations is added to the addresses read from the
binary file. Any carry generated out of the most significant bit
of the address is lost. The transfer address, if any is
encountered, is not modified by the Loader Address Offset. Note
that the setting of a value in the Loader Address Offset does not
modify any part of the content of the binary file. It does not
act aS a program relocator in that it does not change any
addresses in the program itself, merely the location of the progran
in memory. If the the file is to he loaded without an offset, be
certain to clear the Loader Address Offset locations before calling
this routine. On exit, the Transfer Address Flag is zero if no
transfer address was found. This flag is non-zero if a transfer
address record was encountered in the binary file, and the Transfer
Address locations contain the last transfer address encountered.
The disk file is closed on exit. If a disk error is encountered,

~12-

FLEX Advanced Programmer's Guide

an error message is issued and control is returned to DOS at the
Warmstart Entry Point.

$CD33 (SETEXT) Set Extension

On entry, the X-register should contain the address of the FCB into
which the default extension is to be stored if there is not an
extension already in the FCB. The A-register, on entry, should
contain a numeric code indicating what the default extension is to
be. The numeric codes are described below. If there is already an
extension in the FCB (possibly stored there by a call to GETFIL),
this routine returns to the calling program immediately. If there
is no extension in the FCB, the extension indicated by the numeric
code in the A-register is placed in the FCB File Extension area.
The legal codes are:

- BIN
- TXT
- CMD
- BAS
- SYS
BAK
- SCR
- DAT
- BAC
- DIR
10- PRT
11- OUT

COUN DGEWNHHES
1

Any values other than those above are ignored, the routine
returning without storing any extension. The X register is
preserved in this routine.

$CD36 (ADDBX) Add B-register to X-register

The content of the B-register is added to the content of the
X-register. This routine is here for compatibility with 6800 FLEX.

$CD39 (OUTDEC) Output Decimal Number

On entry, the X-register contains the address of the most
significant byte of a 16-bit (2 byte), unsigned, binary number.
The B-register, on entry, should contain a space suppression flag-
The number will be printed as a decimal number with leading zeroes
suppressed. If the B-register was non-zero on entry, spaces will
be substituted for the leading zeroes. If the B-register is zero
o entry, printing of the number will start with the first non-zero
igit.

$CD3C (OUTHEX) Cutput Hexadecimal Number

On entry, the X-register contains the address of a single binary
byte. The byte to which the X-register points {is printed as 2
hexadecimal digits. The B and X registers are preserved.

-13-

---

FLEX Advanced Programmer's Guide .
FLEX Advanced Programmer's Guide

S$CD3F (RPTERR) Report Error
$CD48 (INDEC) Input Decimal Number
On entry to this routine, the X-register contains the address of a
File Control Block in which the Error Status Byte is non-zero. The
error code in the FCB is stored by this routine in the Error Type
location. A call to the routine RSTRIO is made end location Error
Vector is checked. If this location is zero, the file ERRORS.SYS
is opened for random read. If this location is non-zero, it is
assumed to be an address pointing to an ASCII string (containing
any necessary null pad characters) of a Tegal File name plus
extension (string should be 11 characters Tong). This user
provided file is then opened for random read. The error number is
used in a calculation to determine the record number and offset of
the appropriate error string message in the file. Each error
message string is 63 characters in length, thus allowing 4 messages
per sector. If the string is found, it is printed on the terminal.
If the string is not found (due to too large of error number being
encountered) or if the error file itself was not located on the
disk, the error numberis reported to the monitor terminal as part
of the message:

This routine gets an unsigned decimal? number from the Line Buffer.
On entry, the Line Buffer Pointer must point to the first character
of the number in the Line Buffer. On exit, the carry bit is
cleared if a valid number was found, the B-register is set
non-zero, and the X-register contains the binary value of the
number. The Line Buffer Pointer is left pointing as described in
the routine GETHEX. If the first character examined in the buffer
is a Separator character (such as a comma), the carry bit is still
cleared, but the B-register is set to zero indicating that no
actual number was found. In this case, the number returned in X is
zero. The number in the Line Buffer may be of any length but the
result is truncated to 16 bit precision.

$CD4B (DOCMND) Call DOS as a SubrouLine

This entry point allows a user-written program to pass 4a command
string to DOS for processing, and have DOS return control to the
user program on completion of the commands. The command string
must be placed in the Line Buffer by the user program, and the Line
Buffer Pointer must be pointing to the first character of the
command string. Note that *this will destroy any as yet unprocessed
parameters and commands in the Line Buffer. The command string
must terminate with a RETURN character ($D hex). After the
commands have been processed, DOS wil? return control to the user's
program with the B-register containing any error code received
from the File Management System. The B-register will be zero if no
errors were detected. Caution: do not use this feature to load
programs which may destroy the user program in memory. An example
of a use of this feature of DOS is that of a program wanting to
save a portion of memory as a binary file on the disk. The program
could build a SAVE command in the Line Buffer with the desired file
name and parameters, and call the DOCMND entry point. On return,
the memory will have been saved on the disk.

DISK ERROR #nnn

Where “nnn” is the error number being reported. A description of
the error numbers is given elsewhere in this document.

$CD42 (GETHEX) Get Hexadecima? Number

This routine gets a hexadecimal number fron the Line Buffer. On
entry, the Line Buffer Pointer must point to the first character of
the number in the Line Buffer. On exit, the carry bit is cleared
if a valid number was found, the B-register is set non-zero, and
the X-register contains the value of the number. The Line Buffer
Pointer is left pointing to the character immediately following the
separator character, unless that character is a carriage return or
End of Line. If the first character examined in the Line Buffer is
a separator character (such as a comma), the carry bit is stil
cleared, but the B-register is set to zero indicating that no
actual number was found. In this case, the value returned in the
X-register is zero. If a mon-hexadecimal character is found while
processing the number, characters in the Line Buffer are skipped
until a separator character is found, then the routine returns to
the caller with the carry bit set. The number in the Line Buffer
may be of any length, but the value is truncated to between © and
SFFFF, inclusive.

$CD4E (STAT) Check Terminal Input Status

This routine may be called to check the status of the termina
input device (to see if a character has been typed on the
keyboard). If a character has been hit, the Z condition code wil
be cleared on return (a not-equal condition). If no character has
been hit, the Z condition code will be set (an equal condition).
No registers, other than the CC-register, are altered.

$CD45 (OUTADR) Output Hexaecimal Address
Qn entry, the X register contains the address of the most

significant byte of a 2 byte hex value. The bytes to which the X
register points are printed as 4 hexadecimal digits.

“14e

---

FLEX Advanced Programmer's Guide

USER-WRITTEN COMMANDS

The programmer may write his own commands for DOS. These commands may
be either disk-resident as disk files with a CMD extension, or they may
be memory-resident in either RAM or ROM.

MEMORY -RESIDENT COMMANDS:

A memory-resident command is a program, already in memory, to which DOS
will transfer when the proper command is entered from the keyboard. The
command which invokes the program, and the entry-point of the program,
are stored in a User Command Table created by the programmer in memory.
Each entry in the User Command Table has the following format:

FCC ‘command’ (Name that will invoke the program)
FcaB OO
FOB entry address (This is the entry address of the program)

The entire table is ended by a zero byte. For example, the following
table contains the commands DEBUG (entry at $3000) and PUNT (entry at
$3200):

FCC 'DEBUG' Command Name

FCB OO

FOB $3000 Entry address for DEBUG
FCC *PUNT' Command name

FCB OQ

FDB $3200 Entry address for PUNT
FcR OO End of command table

The address of the User Command Table is made known to DOS by storing it
in the User Command Table Address locations (See Memory Map).

The User Command Table is searched before the disk directory, but after
DOS's own command table is searched. The DOS command table contains
only the GET and MON commands. Therefore, the user may not define his
own GET and MON commands.

Since the User Command Table is searched before the disk directory, the
programmer may have commands with the same name as those on the disk.
However, in this case, the commands on the disk will never be executed
while the User Cormand Table is known to DOS. The User Command Table
may be deactivated by clearing the User Command Table Address locations.

-16-

RE B REE ERE REREBEESE EEE!

FLEX Advanced Programmer's Guide

DISK-RESIDENT COMMANDS

A disk-resident command is an assembled program, with a transfer
address, which has been saved on the disk with a CMD extension. The
ASMB section of the FLEX User's Guide describes the way to assign a
transfer address to a program being assembled.

Disk commands, when loaded into memory, may reside anywhere in the User
RAM Area; the address is determined at assembly time by using an ORG
statement. Most commands may be assembled to run in the Utility Command
Space (see Memory Map). Most of the commands supplied with FLEX run in
the Utility Command Space. For this reason, the SAVE command cannot be
used to save information which is in the Utility Command Space or System
FCB space as this information would be destroyed when the SAVE command
is loaded. The SAVE.LOW command is to be used in this case. The
SAVE.LOW command loads into memory at Tocation $100 and allows the
saving of programs in the $C100 region.

The System FCB area is used to load all commands from the disk.
Commands written to run in the Utility Command Space must not overflow
into the System FCB area. Once loaded, the command itself may use the
System FCB area for scratch or as an FCB for its own disk I/0. See the
example in the FMS section.

-17-

---

FLEX Advanced Programmer's Guide

GENERAL COMMENTS ABOUT COMMANDS

User-written commands are entered by a JMP instruction. On completion,
they should return control to DOS by jumping (JMP instruction) to the
Warmstart Entry Point (see Memory Map).

Processing Arguments.

User-written commands are required to process any arguments entered from
the keyboard. The command name and the arguments typed are in the Line
Buffer area (see Memory Map). The Line Buffer Pointer, on entry to the
command, is pointing to the first character of the first argument, if
one exists. If there are no arguments, the Line Buffer Pointer js
pointing to either an end-of-line character or a carriage return. The
DOS routines NXTCH, GETFIL, and GETHEX should be used by the command for
processing the arguments.

Processing Errors.

If the command, while executing, receives an error status from either
DOS or FMS of such a nature that the comsand must be aborted, the
program should jump to the Warmstart Entry Point of DOS after issuing an
appropriate error message. Similarly, if the command should detect an
error on its own, it should issue a message and return to DOS through
the Warmstart Entry Point.

-18-

FLEX Advanced Programmer's Guide
EXAMPLES OF USING DOS ROUTINES

1. Setting up a file spec in the FCB can be done in the following
manner. This example assumes the Line Buffer Pointer is pointing to the
first character of a file specification, and the desired resulting file
spec should default to a TXT extension.

LOX = #FCB Point to FCB

JSR GETFIL Get file spec into FCB
BCS ERROR Report error if one

LDA #1 Set extension code (TXT)
JSR  SETEXT Set the default extension

The user may now open the file for the desired action, since the file

spec is correctly set up in the FCB. Refer to the FMS examples for
opening files.

2. The following examples demonstrate some simple uses of the basic 1/0
functions provided by DOS.

LDA #'A Setup an ASCIT A
JSR PUTCHR Call DOS out character

LDX  #STRING Point to string
JSR  PSTRNG Print CR & LF + string

The above simple examples are to show the basic mechanism for calling
and using DOS 1/0 routines.

-19-

---

FLEX Advanced Programmer's Guide

-20-

FLEX Advanced Programmer's Guide

THE FILE MANAGEMENT SYSTEM

The File Management System (FMS), forms the communication link between
the DOS and the actual Disk Hardware. The FMS performs all file
allocation and removal on the disk. All file space is allocated
dynamically, and the space used by files is immediately reusable upon
that file's deletion. The user of the FMS need not be concerned with
the actual location of a file on the disk, or how many sectors it
requires.

Communication with the FMS is done through File Control Blocks. These
blocks contain the information about a file, such as its name and what
drive it exists on. AY? disk I/0 performed through FMS is “one
character at a time" 1/0. This means that programs need only send or
request a single character at a time while doing file data transfers.
In effect, the disk looks no different than a computer terminal. Files
may be opened for either reading or writing. Any number of files may be
opened at any one time, as long as each one is assigned its own File
Control Block.

The FMS is a command language whose commands are represented by various
numbers called Function Codes. Each Function Code tells FMS to perform
a specific function such as open a file for read, or delete a file. In
general, making use of the various functions which the FMS offers, is
quite simple. The index register is made to point to the File Control
Block which is to be used, the Function Code is stored in the first byte
of the File Control Block, and FMS is called as a subroutine (JSR). At
no time does the user ever have to be concerned with where the file is
being located on the disk, how Tong it is, or where its directory entry
is located. The FMS does all of this automatically.

Since the file structure of FLEX is a linked structure, and the disk
space is allocated dynamically, it is possible for a file to exist on
the disk in a set of non-contiguous sectors. Normally, if a disk has
just been formatted, a file will use consecutive sectors on the disk.
As files are created and deleted, however, the disk may become
"fragmented". Fragmentation results in the sectors on the disk becoming
out of order physically, even though logically they are still all
sequential. This is a characteristic of “linked list" structures and
dynamic file allocation methods. The user need not be concerned with
this fragmentation, but should be aware of the fact that files may exist
whose sectors seem to be spattered all over the disk. The only resutt
of fragmentation is the slowing down of file read times, because of the
increased number of head seeks necessary while reading the file.

---

FLEX Advanced Programmer's Guide

THE FILE CONTROL BLOCK (FCB)

The FCB is the heart of the FLEX File Management System (FMS). An FCB
is a 320 byte long block of RAM, in the user's program area, which is
used by programs to communicate with FMS. A separate FCB is needed for
each open file. After a file has been closed, the FCB may be re-used to
open another file or to perform some other disk function such as Delete
or Rename. An FCB may be placed anywhere in the user's program area
{except page zero) that the programmer wishes. The memory reserved for
use as an FCB need not be preset or initialized in any way. Only the
parameters necessary to perform the function need be stored in the FCB;
the File Management System will initialize those areas of the FCB needed

for its use.

In the following description of an FCB, the byte numbers are relative to
the beginning of the FCB; i.e. byte 0 is the first byte of the FCB.

DESCRIPTION OF AN FCB

Byte 0 Function Code

The desired function code must be stored in this byte by the user
before calling FMS to process the FCB. See the section describing
FMS Function Codes.

Byte 1 Error Status Byte

If an error was detected during the process tng of a function, FMS
stores the error number in this byte and returns to the user with
the CPU Z-Condition Code bit clear, i.e. @ non-zero condition
exists. This may be tested by the BEQ or BNE instruction.

Byte 2 Activity Status

This byte is set by FMS to a "|" Gf the file is open for read, or
“on Gf the file is open for writing. This byte is checked by
several FMS function processors to determine if the requested
operation is legal. A Status Error is returned for illegal
operations.

The next 12 bytes (3-14) comprise the “File Specification" of the file
being referenced by the FCB. A "File Specification" consists of 4a
drive number, file name, and file extension. Some of the FMS functions
do not require the file name or extension. See the documentation of the
individual function codes for details.

pyte 3 Drive Number

This is the hardware drive number whose diskette contains the file
being referenced. It should be binary 0 to 3.

=22-

FLEX Advanced Programmer's Guide

The next at bytes (4-27) conpr ise the "Directory Information" portion of
h + 1 ; ct same information which i i 1
diskette direccory entry for the file being reterenced nee wn tne

Bytes 4-11 File Name

ms is the name of the file being referenced. The name must start
nonly letters, digits, hyphens d.
underscores. If the name is less than 8 characters jong. ior

remaining byt
its fleld. yytes must be zero. The name should be Teft adjusted in

Bytes 12-14 Extension

This is the extension of i
the file name for the file bein
eae baphens  shdjoe ennlane a letter and contain only Tetters,
> > erscores. If the extension is le! h
3 characters long, the remaining bytes must be zero. The Beencion

should be left j i 4
created. adjusted. Files with null extensions should not be

Byte 15 File Attributes

At present, only the most significant 4 bits are defined in this

byte. These bits i
tec igned ae fouls: used for the protection status bits and are

BIT 7 = Write Protect
BIT 6 = Delete Protect
BIT 5 = Read Protect
BIT 4 = Catalog Protect

Setting these bits to l wi i

i will activate the a i
status. All undefined bits of this byte shout d ocean ol protection
Byte 16 Reserved for future system use

Bytes 17-18 Starting disk address of the file

These two bytes contain
t the hardware tr.
respectively, of the first sector of the ie and sector nunberss

Bytes 19-20 Ending disk address of the file

These two byes contain the h

; ardware t
respectively, of the last sector of the Hie. and sector numbers»
Bytes 21-22 File Size

This is bi oye ge
file. a 16-bit number indicating the number of sectors in the

-23-

---

FLEX Advanced Programmer's Guide

Byte 23 File Sector Map Indicator

the file has been created

If this byte is non-zero (usually $02), See the

as a random access file and contains a File Sector Map.
description of Random Files for details.

Byte 24 Reserved for future system use

Bytes 25-27 File Creation Date

contain the binary date of the files creation.

These three bytes Fines eee hard

i i id is the day,
The first byte is the month, the second
is the year’ (only the tens and ones digits).

Bytes 28-29 FCB List Pointer

i i iting are chained

which are open for reading or wr

AN thors These two bytes contain the memory adress, ot bytes ihe
i Pointer bytes of the next FCB in the . e

wit if this FCB fs the last FCB in the chain. The first ra at

the chain is pointed to by the FCB Base Pointer. (See Glo

variables).

Bytes 30-31 Current Position

i d sector numbers,
rt contain the hardware track ani
reese tively. of the sector currently in the sector butter ornich
FCB. If the file is being written, t \
Shee. bytes point has not yet been written to the diskette; it 1s
still in the buffer.

Bytes 32-33 Current Record Number

These bytes contain the current logical Record Number of the sector
in the FCB buffer.

Byte 34 Data Index

i data byte to be fetched
i e contains the address of the next ‘
Fron OF reading) or stored into Gif weitiog) othe sector bute
i dress is relative to the beginning ors
rs cad automatically by the Read/Write Next Byte function. The
user program has no need to manipulate this byte.

Byte 35 Random Index

This byte is used in conjuction with the Get Random Byte tor
i ific byte from je 0

Sector function to read a speci y h oF ue

i i kip over any interven g by
without having to sequentially $ erve bytes.
i lative to the beginning ©

The address of the desired byte, re ging Rando
i i Index by the user, an the Ge

sector, 1S stored jn Random | nee ren cpecitied data

From Sector function 1s issued to .
wee will be returned in the A-register. A value less than 4 will

~24-

FLEX Advanced Programmer's Guide

access one of the linkage bytes in the sector. User data starts at
an index value of 4.

Bytes 36-46 Name Work Buffer

These bytes are used internally by FMS as temporary storage for a
file name. These locations are not for use by a user program.

Bytes 47-49 Current Directory Address

If the FCB is being used to process directory information with the
Get/Put Information Record functions, these three bytes contain the
track number, sector number, and starting data index of the
directory entry whose content is in the Directory Information
portion of the FCB. The values in these three bytes are updated
automatically by the Get Information Record function.
Bytes 50-52 First Deleted Directory Pointer
These bytes are used internally by FMS when looking for a free
entry in the directory to which to assign the name of a new file.
Bytes 53-63 Scratch Bytes
These are the bytes into which the user stores the new name and
extension of a file being renamed. The new name is formatted the
same as described above under File Name and File Extension.
Byte 59 Space Compression Flag
If a file is open for read or write, this byte indicates if space
compression is being performed. A value of zero indicates that
space compression is to be done when reading or writing the data.
This is the value that is stored by the Open for Read and Open for
Write functions. A value of $FF indicates that mo space
compression is to be done. This value is what the user must store
in this byte, after opening the file, if space compression is not
desired. (Such as for binary files). A positive non-zero value in
this byte indicates that space compression is currently in
progress; the value being a count of the number of spaces processed
thus far. (Note that although this byte overlaps the Scratch Bytes
described above, there is no conflict since the Space Compression
Flag is used only when a file is open, and the Scratch Bytes are
used only by Rename, which requires that the file be closed). In
general, this byte should be 0 while working with text type files
and $FF for binary files.

Bytes 64-319 Sector Buffer
These bytes contain the data contained in the sector being read or

written. The first four bytes of the sector are used by the
system. The remaining 252 are used for data storage.

-25-

---

FLEX Advanced Programmer's Guide
FLEX Advanced Programmer's Guide

FILE MANAGEMENT SYSTEM - Entry Points
GLOBAL VARIABLES

$0400 - FMS Initialization ;

This section describes those variables within the File Management System
This entry point is used by the DOS portion of FLEX to initialize which may be of interest to the programmer. Any other locations in the
the File Management System after a coldstart. There should be no FMS area should not be used for data storage by user programs.

need for a user-written program to use this entry point. Executing
an FMS Initialization at the wrong time may result in the $D409 - $D40n

destruction of data files, necessitating a re-initialization of the

diskette. These locations contain the address of the FCB List Pointer bytes
of the first FCB in the chain of open files. The address in these

$0403 ~ FMS Close Tocations is managed by FMS and the programmer should not store any

values in these locations. A user program may, however, want to

This entry point is used by the DOS portion of FLEX at the end of chain through the FCBs of the open files for some reason, and the

each command line to close any files left open by the command address stored in these locations is the proper starting point.

processor. User-written prograris may also use this entry point to Remember that the address is that of the FCB List Potnter locations

close all open files; however, if an error is detected in trying to in the FCB, not the first word of the FCB. A value of zero in

close a file, any remaining files wil) not be closed. Thus the these locations indicates that there are no open files

programmer is cautioned against using this routine as a substitute

for the good programming practice of closing files individually. $0408 - $D40c

There are no arguments to this routine. It is entered by a JSR
instruction as though it were a subroutine. On exit, the CPU These locations contain the address of the last FCB processed by

2-Condition code is set if no error was detected (i.e. a “zero” the File Management System. The address is that of the first word
condition exists). If an error was detected, the CPU Z-Condition of the FCB.

code bit is clear and the X-register contains the address of the

FCB causing the error. $0435 Verify Flag

FCB Base Pointer

Current FCB Address

$0406 - FMS Call A non-zero value in this location indicates that FMS will check

each sector written for errors immediately after writing it. A

This entry point is used for all other calls to the File Management zero value indicates that no error checking on writes is to be
system. A function code is stored in the Function Code byte of the performed. The default value is “non-zero”.

FCB, the address of the FCB is put in the X-register, and this
entry point is called by a JSR instruction. The function codes are
documented elsewhere in this document. On exit from this entry
point, the CPU Z-Condition code bit is set if no error was detected
in processing the function. This bit may be tested with a BEQ or
BNE instruction. If an error was detected, the CPU Z-Condition
code bit is cleared and the Error Status byte in the FCB contains
the error number. Under all circumstances, the address of the FCB
is still in the X-register on exit from this entry point. Sone of
the functions require additional parameters in the A and/or
Beregisters. See the documentation of the Function codes for
details. The B,X,Y and U registers are always preserved with a call
to FMS.

~26-
27+

---

FLEX Advanced Programmer's Guide

FMS FUNCTION CODES
The FLEX File Management System is utilized yen Oy through feet
oper function code number 1s P : >
fonction Code byte of the File Control Block (FCB) before, cag rs
. FMS should be called by a JSR to .

ea ins, the X-register show's Contain, the ares nen error
i Condition c| .

os reed nd re ces Oe the function. This bit may be tested by

the BNE and BEQ instructions. Note: In the following examples, the !1ne
"JSR FMS" is referencing the FMS Cal] entry at $0406

Function 0 - Read/Write Next Byte/Character

If the fite is open for readin the next byte 1s fern ee the
file and returned to the calling program re we
i i iti tent of the A-register on entry
file is open for writing, the con b Teer on ites
i the buffer as the next byte to be wri
Pa eSmpression Mode Flag must contain the proper wae (ee
i i
matic space compression to take place, i
automat tion oF the FCB, Compression Mode Flag for, oer con
« vai ang
exit, this function code remains unchang r m code
, 3 tive read/writes may be per
byte of the FCB; thus, consecu Hts code When
i having to repeatedly store the ful 0 n
weeing an End-of File error is returned when all date in the file
has been read. When the current sector being read is empty t
next sector in the file is prepared for processus ees
i ny action being required 0 he user. >
witing full sectors are automatically written to the disk without

user intervention.
Example:

reading -
tox “arc Point to the FCB
JSR FMS Call FMS
BNE ERROR Check for error
The character read is now in A.

If writing -

LDA CHAR Get the character
LOX #FCB Point to the FCB

JSR FMS Cal) FMS

BNE ERROR Check for errors
The character in A has been written

-28-

FLEX Advanced Programmer's Guide

Function 1 - Open for Read

The file specified in the FCB is opened for read-only access. If
the file cannot be found, an error is returned. The only parts of
the FCB which must be preset by the programmer before issuing this
function are the file specification parts (drive number, file name,
and file extension) and the function code. The remaining parts of
the FCB will be initialized by the Open process. The Open process
sets the File Compression Mode Flag to zero, indicating a text
file. If the file is binary, the programmer should set the File
Compression Mode Flag to $FF, after opening the file, to disable
the space compression feature. On exit from FMS, after opening a
file, the function code in the FCB is automatically set to zero
{Read/Write Next Byte Function) in anticipation of 1/0 on the file,

Example:

LDX — #FCB Point to the FCB

{ Set up file spec in FCB J

LDA #1 Set open function code
STA Q,X Store in FCB

JSR FMS Call FMS

BNE ERROR Check for errors

The file is now open for text reading

To set for binary - continue with the following
LOA o#$FF Set FF for sup. flag
STA 59,X Store in suppression flag

Function 2 - Open for Write

This is the same as Function 1, Open for Read, except that the file
must not already exist in the diskette directory, and it is opened
for write-only access. <A file opened for write may not be read
unless it is first closed and then re-opened for read-only. The
space compression flag should be treated the same as described in
"Open for Read". A file is normally opened as a sequential file
but may be created as a random file by setting the FCB location
File Sector Map byte non-zero immediately foltowing an open for
write operation. Refer to the section on Random Files for more
details. The file wil? be created on the drive specified unless the
drive spec is $FF in which case the file will be created on the
first drive found to be ready.

Example:

LDX = #FCB Point to FCB

[ Setup file spec in FCB J

LDA #2 Setup open for write code

STA 0,X Store in FCB

JuSR EMS Call FMS

BNE ERROR Check for errors

File is now open for text write.

For binary write, follow example in Read open.

-29-

---

“FLEX Advanced Programmer's Guide

Function 3 - Open for Update

i i he file
he file for both read and write. Tl
ot nthe specified drive. If the

drive spec is SFF, all drives will be searched. ence the fe has
been opened for update, four operations may be performed meats
sequential read, 2, random read, 3. random wri , a ae close
file. Note that it is not possible to do sequentia wr es te to
file open for update. This implies that it is not p

increase the size of 3 file which is open for update.

This function opens
must not be open and must exist oO

Function 4 - Close File

i i ly removes the FCB

file was opened for reading, 4 close mere e
Hon the chain oF open files. If the file was opened for writin
any data remaining in the buffer is First ween te actor is 3

i i if necessary, to .
bsvae wn ad for writ itten upon, the name of the

i ened for writing but never written upon, ; t

fie We renoved from the diskette directory since the file contains

no data.
Example:

LOX #F CR Point to FCB

LDA #4 Setup close code
STA 0,% Store in FCB

JsR FMS Catt FMS

BNE ERROR Check for errors
File has now been closed.

Function 5 - Rewind Fite

i i d may be rewound. On exit
files which have been opened for reat _0 x
fron EMS the function code in the FCB is set to FeO end a
A i i r wisi
d operation on the file. If the programme
file which is open for writing so that it may now be read, the
file rust first be closed, then re-opened for reading.

Example:

Assuming the file is open for read:
LDX —-#FCB Point to FCB

LOA #5 Setup rewind code

STA 0,X Store in FCB

JSR FMS Call FMS

BNE ERROR Check for errors

File is now rewound & ready for read

~30-

Oe rs |

FLEX Advanced Programmer's Guide

Function 6 - Open Directory

This function opens the directory on the diskette for access by a
program. The FCB used for this function must not already be open
for use by a file. On entry, the only information which must be
preset in the FCB is the drive number; no file name is required.
The directory entries are read by using the Get Information Record
function. The Put Information Record function is used to write a
directory entry. The normal Read/Write Next Byte function will not
function correctly on an FCB which is opened for directory access.
It is not necessary to close an FCB which has been opened for
directory access after the directory manipulation is finished. The
user should normally not need to access the directory.

Function 7 - Get Information Record

This function should only be issued on an FCB which has been opened
with the Open Directory funcion. Fach time the Get Information
Record function is issued, the next directory entry will be loaded
into the Directory Information area of the FCB (see Description of
the FCB for details of the format of a directory entry). All
directory entries, including deleted and unused entries are read
when using this function. After an entry has been read, the FCB is
said to “point” to the directory entry just read; the Current
Directory Address bytes in the FCB refer to the entry just read.
An End-of-File error is returned when the end of the directory is
reached.

Example:

To get the 3rd directory entry -

LOX  #FCB Point to FCB

LDA DRIVE Get the drive number

STA 3,X Store in the FCB

LDA #6 Setup open dir code

STA 0,X Store in FCB

JSR FMS Call FMS

BNE ERROR Check for errors

LOB #3 Set counter to 3
LOOP LDA #7 Setup get rec code

STA 90,X Store in FCB

JSR FMS Call FMS

BNE ERROR Check for errors

DECB Decrement the counter

BNE LOOP Repeat til finished

The 3rd entry is now in the FCB

~31e

---

FLEX Advanced Programmer's Guide
FLEX Advanced Programmer's Guide

i = PY fan i rm :
Function & ut infarmation Recard Function 11 ($0B hex) - Reserved for future system use
This function should only be issued on an FCB which has been opened
with the Open Directory function. The directory information is
copied from the Directory Information portion of the FCB into the
directory entry to which the FCB currently points. The directory
sector just updated jis then re-written automatically on the
diskette to ensure that the directory is up-to-date. A user
program should normally never have to write into a directory.
Careless use of this function can lead to the destruction of data
files, necessitating a re-initializetion of the diskette.

Function 12 ($0C hex) - Delete File

This function deletes the file wh ificati
s e ose specification is 7 he FCB
ferive numbers, file rane, and extension). The sectors used by the
ed to the system for re-use. The file sh
open when this function is issued. Th fi ification tn the
FCB is altered during the delete process. "Te specification in the

Example:

LOX = #FCB Point to FCB

C setup file spec in FCB ]

LDA #12 Setup function code
STA 0,X Store in FCB

JSR FMS Call FMS

BNE ERROR Check errors

File has now been deleted

Function 9 - Read Single Sector

This function is a low-level interface directly to the disk driver
which permits the reading of a single sector, to which the Current
Position bytes of the FCB point, into the Sector Bufffer area of
the FCB. This function is normally used internally within FLEX and
a user program should never need to use it. The Read/Write Next
Byte function should be used instead, whenever possible. Extreme
care should be taken when using this function since it does not
conform to the usual conventions to which most of the other FLEX
functions adhere.

Function 13 ($0D hex) - Rename File

On entry, the file must not be oj

n > the Tem pen, the old name must be 7 the
rive poPeci fication area of the FCB. and the new name and extension
must be in the Scratch Bytes area of the FCB. The file whose

Example: _be . S
specification is in the FCB is renamed
+ to the name and si
Lox Point to FCB stored in the FCB Scratch Bytes area. Both the new name an the
LDA Get track number on patension must be specified; neither the name nor the extension
STA Set current track lefaulted.

LDA SECTOR Get sector number
STA 31,X Set current sector
LDA go Setup function code
STA 0,% Store in FCB

JSR FMS Call FMS

BNE ERROR Check for errors
The sector is now in the FCB

Example:

LOX = #FCB Point to FCB

[ setup both file specs in FCB J
LDA #13 Setup function code
STA 0,X Store in FCB

JSR FMS Call FMS

BNE ERROR Check for errors
File has been renamed

Function 10 (SGA hex) - Write Single Sector

This function, like the Read Single Sector function, is a low-level
interface directly to the disk driver which permits the writing of
a single sector. As such, it requires extreme care in its use.
This function is normally used internally by FLEX, and @ user
prograr: should never need to use it. The Read/Write Next Syte
function should be used whenever possible. Careless use of the
Write Single Sector Function may result in the destruction of date,
necessitating the re-initialization of the diskette. The disk
address being written is taken from the Current Position bytes of
the FCB; the data is taken from the FCB Sector Buffer, This
function honors the Verify Flag (see Global Variables section for a
description of the Verify Flag), and will check the sector after
writing it if directed to do so by the Verify Flac.

Function 14 (SQE hex) - Reserved for future system use,

~32-
~33-

EREER EEE

---

FLEX Advanced Programmer's Mside
FLEX Advanced Programmer's Guide

Function 16 {SOF hex} = St Syne Secor

Function 18 2 - i

On entry the file should be open for either reading or writing (not 18 ($12 hex) ~ Put Random Byte in Sector

update}. If the file is open for reading, this function code will The file ; ;

cause al? of the ning (yet unread} deta bytes in the current Random Byte excent ene char eres the fh  sceusutanon ye to bet
written

sector to be skippe ty do the data pointer will be positioned at
the first data byte of the next sequential sector of the file. If te eon The Rondon the data location specified by Random Index of
the file is oper write, this operation will cause the remainder system data andon Index Should not be less than 4 since only
of the current sr to be zero filled and written out to the resides in the first 4 bytes of the sector
disk. The next character written to that file will be placed in the Example:
first available dat Tocatior in the next sequential sector. It
should be noted that all cails to this function code will be .
ignored unless at Teast one byte of seta bas either been written or [or ite into the 54th data byte of the current sector-
read from the current sector. LDA #5448 Set to Stee ee
Function 16 ($10 hex) - Open System Information Record oA 3 Setun eae Random Index
on Code
On entry, only the drive nurter need he specified in the FCB; there te Oke dtore in FCB ;
is no file neve essociated with this function. The FCB must not be JSR FMS CATT Eng ee” CO be written
open for use by a file. This function accesses the System BNE ERROR all FMS
Information Record for the diskette whese drive number is in the Character h Check for errors
FCB. There are no separate functions for reading or changing this cter has been written
sector. All refererces to the deta contained in the System
Infonnation Pecord must be made by manipulating the Sector Buffer
directly. This funct is used internally within FLEX; there :
should be no need for a user-written progren to change the Systen Function 19 ($13 hex) - Reserved for future system use
Information Recora. foing so may result in the destruction of
data, necessitating the re-init:alization of the diskette. There Function 20 ($14 hex) - Find Next Dri
- xt Drive

is no need to close the FCE when finished,
his Function js used to find the next online drive which is in the
oF ayy state. Due to hardware limitations, the minifloppy version
performs this command differently than the full size floppy

Function 17 (Sil hex} - Get Sandor Byte From Sector . 1s C
follove. re functioning of the full size floppy version is as

On entry, the file should be apen for reading or update. Also, the dri are the drive number in the FCB is hex FF, the search for
desired byte's number should be stored in the Random’ Index byte of thes “ h start with drive 0. If the drive number is 0, 1, or 2,

the FCB. This byte runber is relative to the beginning of the ready deren titi start with drive 1, 2, or 3 respectively. If a
sector buffer. Or ex iu byte whose number is stored in the drive nunbe Te cours its drive number will be returned jin the
Randor: laces is re o the callirg program in the A-register. : no weady deve ce of the re and the carry bit will be cleared. If

P : 5 fonat b 5 a si i it wi
The Randor: Index should not be Tess than ¢ since there is no user (Drives Not Ready) MTT be Sen” bit will be set and error #16

data in the first four bytes of the sector
The minifloppy version functi
e . ons as follows. If called with a
ortye Nuniber in the FCB of hex FF, the function will return with 0
ened ive number in the FCB. If called with a 6, it will return
oh retin rive number set to 1. In both cases the carry is cleared
urn. If called with a drive number of 1 or higher, the drive

number is left unchanged, t it i
#16 torives oe Renney ae sre carry bit is set on return and error

Example:

To read the 54th date byte of the current sector -
LDX = #F CR Point te the FCB

LDA #5444 Set to iten + 4

STA 35,% Put it in random index

LOA #17 Setup function code
STA Q,* Store in FCB
JSR FMS Call FMS

BNE ERROR Check for errors
Character is now in acc. A

~34-
~35-

---

FLEX Advanced Programmer's Guide

Function 21 ($15 hex) - Position to Record N

i ided for random file
is i the 2 function codes provl
This is ores sector. The desired record number to be accessee
should be stored in the FCB location Current Recon une e (a te
bit binary value). The file must be open for read ; ed ¢ before
ing this function code. The first data recor of On Sinst
record number one. Positioning to record 0 will mean re en
ile Sector Map. fter a succe S

sector on ‘the feet character read with a sequential read wit be
the first data byte of the specifier records enor ene moe
iti nexistent record will. e + For mre

pos ior on on randon files, see the section titled ‘Random Files

Example:

sition to record #6 -
tox #FCB Point to the FCB
LDA #6 Set position
STA 33,% Put in FCB
CLR = 32,X Set M.S.B to 0
LDA #21 Setup Function Code
STA 0,% Store in FCB
JSR EMS Call FMS
BNE ERROR Check for errors
Record ready to be reed

Function 22 ($16 hex) - Backup One Record
file accessing. This function takes

i aA
the Current Record Number in the FCB and decrenents it by aan of
Position to the new record is perro, it the sthe ect

i 11 record, for ex > if, ;
back Spectro red the Backup One Record Function 15 perfor. the
i iti read the first byte of #15.
fie woe Be POS oe read or update before this function may be

iy . Vs.
used. See ‘Random Files’ section for more detail

This is also used for random

-36-

FLEX Advanced Programmer's Guide

RANDOM FILES

FLEX version 9.0 supports random files. The random access technique
allows access by record number of a file and can reach any Specified
sector in a file, no matter how large it is, in a maximum of two disk
reads. With a small calculation using the number of data bytes in a
sector (252}, the user may also easily reach the Nth character of a file
using the same mechanism.

Not all files may be accessed in a random manner. It is mecessary to
create the file as a random file. The default creation mode is
sequential and is what all of the standard FLEX Utilities work with.
The only random file in a standard FLEX system is the ERRORS.SYS file.
FLEX uses a random access technique when reporting error messages. A
file which has been created as a random access file may read either
randomly or sequentially. A sequential file may only be read
sequentially.

To create a random file, the normal procedure for opening a file for
write should be used. Immediately following a successful open, set the
File Sector Map location of the FCB to any non-zero value and proceed
with the file's creation. It only makes sense to create text type files
in the random mode. As the file is built, the system creates a File
Sector Map. This File Sector Map (FSM) is a map or directory which
tells the system where each record (sector) of the file is Jocated on
the disk. The FSM is always two sectors in length and is assigned
record number 0 in the file. This implies that a data file requiring 5
sectors for the data will actually be 7 sectors in length. The user has
no need for the FSM sectors and they are automatically skipped when
opening a file for read. The FMS uses them for the Position and Backup
function code operations.

The directory information of a file states whether or not a file is a
random file. If the File Sector Map byte is non-zero, the file is
random, otherwise it is sequential only. . It should be noted that random
files can be Copied from one disk to another without losing its random
properties, but it can not be appended to another file.

-37-

---

FLEX Advanced Programmer's Guide

FLEX ERROR NUMBERS

1 - ILLEGAL FMS FUNCTION CODE ENCOUNTERED
FMS was called with a function code in the Function Code byte of
the FCB that was too large or illegal.

2 ~ THE REQUESTED FILE IS IN USE
An Open for Read, Update, or Write function was issued on an FCB
that is already open.

3 - THE FILE SPECIFIED ALREADY EXISTS
a. An Open for Write was issued on an FCB containing the
specification for a file already existing in the diskette
directory.
b. A Rename function was issued specifying a new name that was the
same as the name of a file already existing in the diskette
directory.

4 - THE SPECIFIED FILE COULD NOT BE FOUND
An Open for Read or Update, a Rename, or a Delete function was
requested on an FCB containing the file specification for a file
which does not exist in the diskette directory.

5 - SYSTEM DIRECTORY ERROR - REBOOT SYSTEM
Reserved for future system use.

6 - THE SYSTEM DIRECTORY SPACE IS FULL
This error should never occur since the directory space is self
expanding, and can never be filled. Only disk space can be filled
(error #7).

7 - ALL AVAILABLE DISK SPACE HAS BEEN USED
All of the available space on the diskette has been used up by
files. If this error is returned by FMS, the last character sent to
be written to a file did not actually get written.

8 ~ READ PAST END OF FILE
A read operation on a file encountered an end-of-file. All of the
data in the file has been processed. This error will also be
returned when reading a directory with the Get Information Record
function when the end of the directory is reached.

9 ~ DISK FILE READ ERROR
A checksum error was encountered by the hardware in attempting to
read a sector. DOS has already attempted to re-read the failing
sector several times, without success, before reporting the error
This error may also result from illegal track and sector addresses
being put in the FCB.

~38-

10

il

12

13

14

15

V7

18

19

20

21

‘

FLEX Advanced Programmer's Guide

LE WRITE ERROR

IR oheck sun error was detected by the hardware in attempting to
write a sector. DOS has already tried several times, without
success, to re-write the failing sector before reporting the error.
This error may also result from illegal track and sector nunbers
being put in the FCB. A write-error status may also be returned

a read error was detected by DOS in attempting to update the
diskette directory.

THE FILE OR DESK IS WRITE PROTECTED

An attempt was made to write on a diskette which has been
write-protected by use of the write-enable cutout in the diskette
or to a file which has the write protect bit set

THE FILE IS PROTECTED - FILE NOT DELETED .
The file attempted to be deleted has its delete protect bit set and

can not be deleted.

ILLEGAL FILE CONTROL BLOCK SPECIFIED
An attempt was made to access an FCB from the open FCB chain, but
it was not in the chain.

ILLEGAL DISK ADDRESS ENCOUNTERED
Reserved for future system use.

AN ILLEGAL DRIVE NUMBER WAS SPECIFIED
Reserved for future system use.

DRIVES NOT READY ; this
The drive does not have a diskette in it or the door is open.
message cannot be issued for mini floppys since there is no meens
of detecting such a state.

THE FILE IS PROTECTED - ACCESS DENIED
Reserved for future system use.

SYSTEM FILE STATUS ERROR . ;
a. Aread or Rewind was attempted on a file which was

open for write access.
b. A write was attempted on a file which was closed, or open for

read access.

closed, or

FMS DATA INDEX RANGE ERROR . .
The Get Random Byte from Sector function was issued with ¢ Randor

Byte number greater than 255.

FMS INACTIVE - REBOOT SYSTEM
Reserved for future system use.

ILLEGAL FILE SPECIFICATION

A format ttror was detected in a file name specification. The nane
must begin with a letter and contain only letters, digits, hyphens,
and/or underscores. Similarly with file extensions. File names
are limited to 8 characters, extensions to 3.

---

FLEX

22 -

23 -

24 ~

26 -

27 -

28

Advanced Programmer's Guide

SYSTEM FILE CLOSE ERROR
Reserved for future system use.

SECTOR MAP OVERFLOW - DISK TOO SEGMENTED

An attempt was made to create a very large random access file on a
disk which is very segmented. All record information could not fit
jn the 2 sectors of the File Sector Map. Recreating the file ona
new diskette will solve the problen.

NON-EXISTENT RECORD NUMBER SPECIFIED .
A record number larger than the last record number of the file was

specified in a random position access.

RECORD NUMBER MATCH ERROR - FILE DAMAGED .
The record located by the FMS random search is not the correct

record. The file is probably damaged.

COMMAND SYNTAX ERROR ~ RETYPE COMMAND
The command line just typed has a syntax error.

THAT COMMAND IS NOT ALLOWED WHILE PRINT ING
The command just entered is not allowed to operate while the system

printer spooler is activated.

WRONG HARDWARE CONFIGURATION . ; ;
This error usually implies insufficient memory installed in the

computer for a particular function or trying to use the printer
spooler without the hardware timer board installed.

-40-

FLEX Advanced Programmer's Guide

DISK DRIVERS

The following information is for those users who wish to write their own
disk drivers to interface with some other disk configuration than is
supplied by the vendor. Technical Systems Consultants is not ina
position to write disk drivers for other configurations, mor do they
guarantee the proper functioning of FLEX with user-written drivers.

The disk drivers are the interface routines between FLEX and the
hardware driving the floppy disks themselves. The drivers released with
the FLEX System are designed to interface with the Western Digital 1771
or 1791 Floppy Disk Formatter/Controller chip.

The disk drivers are located in RAM at addresses $DE00 - $DFAQ. Al
disk functions are vectored jumps at the beginning of this area. The
disk drivers need not handle retries in case of errors; FLEX will call
them as needed. If an error is detected, the routines should exit with
the disk hardware status in the B-register and the CPU Z-Condition code
bit clear (issue a TST B before returning to accomplish this), FLEX
expects status responses as produced by the Western Digital 1771
Controller. These statuses must be simulated if some other controller
is used. All drivers should return with the X,Y and U registers
unchanged. All routines are enterd with a JSR instruction.

$DEO0 - Read

Entry - (X) = FCB Sector Buffer Address

(A) = Track Number

(B) = Sector Number

The sector referenced by the track and sector numbers is to be read
into the Sector Buffer area of the indicated FCB.

$DE03 - Write

Entry - (X) = FCB Sector Buffer Address

(A) = Track Number

(B) = Sector Number

The content of the Sector Buffer area of the indicated FCB is to be
written to the sector referenced by the track and sector numbers.

$DE06 - Verify
Entry - (No parameters)
The sector just written is to be verified to determine if there are
CRC errors.

$DE09 - Restore
Entry - (X} = FCB Address
Exit - CC, NE, & B=$B if write protected
CS, NE, & B=$F if no drive
A Restore Operation {also known as a Seek to Track 00) is to be
performed on the drive whose number is in the FCB.

-41-

---

FLEX Advanced Programmer's Guide

$pe0C - Drive Select add
Entry - (x) = ress .
Entry vs hase number is in the FCB is to be selected.
SpEOF - Check Drive Ready
Entry - (x) = FCB Address
Exit - NE & CS if drive not ready

£9 & CC if drive ready G .
This routine is setup for FLEX systens where it is poss ipre te
check the drive whose number is in the FCB for a ready statu after
selecting that drive and delaying rae} enough Or ane oesible or

speed (approx. seconds). . i

£0 Ce eee on cue to hardware limitations. In this cases
this routine should not delay and should simply return a grive
ready status if the drive number in the FCB is 0 or 1 or a dr

not ready status for any other drive number.

= Quick Check Drive Ready
sere et outine is the same as Drive Check Ready except the 2 second
delay is not done. This assumes the drive motor 1s already up to

ini i i ifference in the two
. For minifloppy versions there is no di .
ye Moutine. can simply be a jump to the Check Drive Ready

routine.

-42-

FLEX Advanced Programmer's Guide

Diskette Initialization

The NEWDISK command is used to "initialize" a diskette for use by the
FLEX Operating System. The initialization process writes the necessary
track and sector addresses in the sectors of a “soft- sectored" diskette
such as is used by FLEX. In addition, the initialization process links
together all of the sectors on the diskette into a chain of available
sectors.

The first track on the diskette, track 0, is Special. None of the
sectors on track 0 are available for data files, they are reserved for
use by the FLEX system. The first two sectors contain a "boot" program
which is loaded by the "D" command of the SBUG monitor or by whatever
comparable ROM based bootstrap is in use. The boot program, once
loaded, then loads FLEX from the diskette. Another sector on track 0 is
the System Information Record. This sector contains the track and
sector addresses of the beginning and ending sectors of the chain of
free sectors, those available for data files. The rest of track 0 is
used for the directory of file names.

After initialization, the free tracks on the diskette have a common
format. The first two bytes of each sector contain the track and sector
number of the next sector in the chain. The next two bytes are used to
store the logical record number of the sector in the file. The
remaining 252 bytes are zero. Initially, al] record number bytes are
zero. When data is stored in a file, the two linkage bytes at the
beginning of each sector are modified to point to the next sector in the
file, not the next sector in the free chain. The sectors in the
diskette directory on track 0 also have linkage bytes similar to those
in the free chain and data files.

A FLEX diskette is not initialized in the strict IBM standard format.
In the standard format, the sectors on the diskette should be physically
in the same order as they are logically, i.e. sector 2 should follow
sector 1, 3 follow 2, etc. On a FLEX diskette, the sectors are
interleaved so that there is time, after having read one sector, to
process the data and request the next sector before it has passed under
the head. If the sectors are physically adjacent, the processing time
must be very short. The interleaving of the sectors allows more time
for processing the data. The phenomena of missing a sector because of
long processing times is called “missing revolutions", and results in
very slow running time for programs. The FLEX format reduces the number
of missed revolutions, thus speeding up programs.

~43-

---

F
LEX Advanced Programmer's Guide
FLEX Advanced Programmer's Guide

DESCRIPTION OF A DIRECTORY SECTOR

Each sector j i
in the directory Portion of a FLEX diskette contains 10

directory entries
+ Each entr f i
each ee ; Y refers to one file i
ond the tore ie first four bytes contain the sector 1h ae in
tes are not used. When reading informatia ron tke
W 0 nn from the
» these 16 byte
‘ad; the user need not be

DESCRIPTION OF A BINARY FILE

A FLEX binary file may contain anything as data; al? ASCII characters
are allowed. Each binary file is composed of one or more binary
records. There may be more than one binary record in a single sector.

a
°
et

A binary record 10:
start of the record, not the beginning of a sector)
Byte 0 Start of record indicator ($02, the ASCII! STX)
Byte 1 Most significant byte of the load address
Byte 2. Least significant byte of the load address
Byte 3 Number of data bytes in the record
Byte 4-n The binary data in the record

Each entry j i

Stored , "the Fee etory contains the exact same information th i

Block (FCB) f ytes 4-27. See the descripts Mle Cotte:
‘or more details, ption of the File Control

A di .
oF ene tony entry which has never been used has a
lettrest bine A directory entry which has

negatice), @ name set (i.e.

The load address portion of a binary record contains the address where
the data resided when it was written to the file with the FLEX SAVE
command. When the file is loaded for execution or use, it will be put

in the same memory areas from which it was SAVED.

zero in the first byte
a been deleted has the
e first byte of the name is

A binary file may also contain an optional transfer address record.
This record gives the address in memory of te entry point of a binary
program. The format of a transfer address record is as follows:

Byte 0 Transfer Address Indicator ($16, ASCII ACK)

Byte 1 Most significant byte of the transfer address

Byte 2 Least significant byte of the transfer address

DESCRIPTION OF A DATA SECTOR

Every sector ona F i

following forene LEX diskette (except the two BOOT
Bytes 0-1 Link to th
Bytes 2-3 File Logi aT Record Non
Bytes 4.966 Dots: cal Record Number

sectors) has the

If a file contains more than one transfer address record (caused by
appending binary files which contain transfer addresses), the last one
encountered by the load process is the one that is used, the others are
ignored.

When reading or writing a binary file through the File Management System
from a user program, the calling program must process the record
indicator bytes and load addresses itself; FLEX does not supply or

process this information for the user.

If a file occupi
a pies more than on i
portion contes le sector, the "Ti “
Sector sc tras the track and sector numbers, respectivene “Ot the hoxe
indicating that ae°y Se bytes are zero in the ] ‘ Te
ore data follon Ns ast sector of a fil]

user shi Ss (an "end-of ~ iti he
ould never manually change the linkage bytes er Sree raat
re ese

c ; .
oncerned at all with sector linkage informaesst? the user need not be

~44-
~45-

---

FLEX Advanced Programmer's Guide

DESCRIPTION GF A TEXT FILE

A text file (also called an "ASCII file" or “coded file") contains only
printable ASCII characters plus a few special-purpose control
characters. There is no "load address" associated with a FLEX text file
as there is with FLEX binary files. It is the responsibility of the
program which is reading the text file to put the data where it belongs.

The only control character which FLEX recognizes and processes in a FLEX
text file are:

$0D (ASCII CR or RETURN)
This character is used to mark the end of a line or record in the

file.

$00 (ASCII NULL)
Ignored by FLEX; if encountered in the file, it is not returned to

the calling program.

$18 (ASCII CANCEL)
Ignored by FLEX; if encountered in the file, it is not returned to

the calling program.

$09 (ASCII HT or HORIZONTAL TAB)

This is a flag character which indicates that a string of spaces
has been removed from the file as a space-saving measure. The next
byte following the flag character is a count of the number of space
removed (2-127). The calling program sees neither the flag
character nor the count character. The proper number of spaces are
returned to the user program as successive characters are requested
by the Read Next Byte function. When writing a file, the spaces
are automatically deleted as the user program sends them to the
File Management System using the Write Next Byte function. The
data compression is, therefore, transparent to the calling program.
{The above discussion is only valid if the file is open for Text
operations. If open for Binary, the compression flag and count get
passed exactly as they appear in the file.)

~6-

FLEX Advanced Programmer's Guide
WRITING UTILITY COMMANDS

Utility commands are best prepared by the use of an assembler. FLEX
reserves a block of memory in which medium size utilities may be placed.
This memory starts at hex location $C100 and extends through location
$COFF. The system FCB at location $C840 may also be used in user written
utilities for either FCB space or temporary storage. No actual code
should reside in this FCB space since it would interfere with the
Toading of the utility (FLEX is using that FCB while loading utilities).

An example will be given to demonstrate some of the conventions and
techniques which should be used when writing utilities. The example,
which can be found on the following pages, is a simple text file listing
utility. Its syntax is:

LIST, [<FILE SPEC>]

The default extension on the file spec is TXT. The utility will simply
display the contents of a text file on the terminal, line for line.

The following is a section by section description of the LIST utility.
The first section of the source listing is a set of EQUATES which tell
the assembler where the various DOS routines reside in memory. These
equates represent the addresses given in this manual for "User Callable
DOS System Routines”.

The next two sections are also equates, the first to the FMS entry
points, and the second references the system FCB. The actual progrem
finally starts with the ORG statement. In this program, we will make
peor re Utility Command space located at $Ci00, therefore, the ORG is
to .

One of the conventions which should be observed when writing DOS
utilities is to always start the program with a BRA instruction.
Following this instruction should be a ‘VN FCB 1' which defines the
version number of the utility. The 1 should of course be set to
whatever the actual version number is. In this example, the version
number is 1, This convention allows the FLEX VERSION Utility to
correctly identify the version number of a command.

Moving down the program to the label called 'LIST2', the program needs
to retrieve the file specification and get it into the FCB. Pointing X
to the FCB, we can make use of the DOS resident subroutine called
‘GETFIL' to automatically parse the file spec, check for errors, and set
the name in the FCB correctly. If a11 goes well in GEIFIL, the carry
should be clear, otherwise there were errors in the file spec and this
fact needs reported. If the carry is set, control is passed to the Vine
with the label 'LIST9'. At this point, the error message is reported
and control is returned to FLEX.

If the file spec was correct, and the carry was clear after the return

from GLTFIL, we want to set a default file name extension of TXT. The
OOS subroutine named SETEXT will do exactly that. First it is necessary

-47-

---

FLEX Advanced Programmer's Guide
FLEX Advanced Programmer's Guide

*

to put the code for TXT in the A accumulator (the code is 1). XK needs
; SIMPLE TEXT FILE LIST UTILITY

to be pointing to the FCB which it still is. The ‘1' is also put in the
FCB for the future open operation. The call is made to SETEXT and the
file name is now correctly set up in the FCB. Note that no errors can

be generated by a cal? to SETEXT. * COPYRIGHT (C) 1979 BY
; q

Now that we have the file spec, it is necessary to open the requested

file for read. X is still pointing to the FCB so it is not necessary to * TECHNICAL SYSTEMS CONSULTANTS, INC.
reset. The FMS Function Code for ‘open a file for read' is 1 which was
previously put in the FCB location 0. A call to FMS is now made in an
attempt to open the file. Upon return, if the Z-condition code is set,
there were no errors. If there was an error, the 'BNE LIST9' will take
us to the code to report the error. This section of code is the desired
way to handle most FMS caused disk errors. The first thing to do js
call the 00S routine RPTERR which will print the disk error message on
the monitor terminal. Next, all open disk files should be closed. This
can be easily accomplished by a cal? to the FMS close entry (FMSCLS).
Finally, return contro? back to DOS by jumping to the WARM START entry.
If the file opened successfully, control will be transfered to the line
with the label ‘LIST4'. At this time it is desirable to fetch
characters one at a time from the file, printing them on the monitor
terminal as they are received. Since line feeds are not stored in text
files (carriage returns mark the end of lines, but the next line will
follow immediately), each carriage return received from the file is not
is, but instead a call to the DOS routine 'PCRLF' is made to

* DOS EQUATES

CD03 WARMS  £QU $CD03 DOS WARMS START ENTRY
CD2D GETFIL EQU $cp2p GET FILE SPECIFICATION
CD18 PUTCHR EQU $C018 PUT CHARACTER ROUTINE
aye center EQu $co24 PRINT CR & LF

EQU $CD33 SET DEFAULT NAME EXT
CD3F RPTERR EQU SCD3F REPORT DISK ERROR

* FMS EQUATES

D406 FMS EQU $0406
0403 FMSCLS EQU $0403

* SYSTEM EQUATES
C840 FCB EQu $840 SYSTEM FCB

Output 4s
print a carriage return and a line feed. As each character is received
fron the file (by a cal] to FMS at label LIST4), the error status is
checked. If an error does occur, control is transferred to '‘LIST6’. * LIST UTILITY STARTS HERE
Since FLEX does not store an End of File character with a file, the only c100
mechanism for determining the end of a file is by the End of File error ORG $c100
generated by FMS. At 'LIST6', the error status is checked to see if it
is 8 (end of file status). If it is not an 8, control is transfered to £100 20 01 LIST BRA LIST2 GET AROUND TEMPS
the error handling routine described above. If it is an End of File, we C102 01 VN
are finished listing the file so it must now be closed. The FMS FOR OL VERSION NUMBER
Function Code for closing a file is 4. This is loaded into A and stored
in the FCB. Calling FMS will attempt to close the file. Upon return, oig3 ef cae LIST2 LOX FCB POINT TO FCB
errors are checked, and if none found, control is transfered back to DOS (109 25 34 oee ret he FILE SPEC
by the jump to 'WARMS'. C10B 86 (Oh LDA #l Set oP cone
This example illustrates many of the methods used when writing foe HA 0433 STA 0,x SAVE FOR READ OPEN
utilities. Many of the DOS and FMS routines were used. The basic idea Ci12BD D408 JSR SETEXT SET TXT EXTENSION
of file opening and closing were demonstrated, as well as file 1/0. The C115 26 28 JSR FMS CALL FMS - DO OPEN
methods of dealing with various types of errors were also presented. C117 BE ce40 Lista BNE LIST CHECK FOR ERROR
Studying this exemple until it is thoroughly understood will make CHA BD 0406 LOX #FCB POINT TO FCB
writing your own disk commands and disk oriented programs an easy task. Clin 26 oF oer rete rahbaees ~ GET CHAR
C1IF 82 0D CMPA  #8D IS CHAR A CR?
C121 26 «05 BNE LISTS
C123 BD CD24 JSR PCRLE OUTPLT CR & LF
€126 20 EF BRA LIST4 REPEAT
€128 8D =cnla LIST5 JSR PUTCHR OUTPUT THE CHARACTER
C128 20, EA BRA LIST4 REPEAT SEQUENCE
ae 49

---

FLEX Advanced Programmer's Guide

C120 AG
C12F 81
C131 26
C133 86
C135 A7
C137 BD
C13A 26
C13C 7E

C13F BD
C142 BD
C145 7€

01
08
oC
04
84
D406
03
CD03

CD3F
D403
C003

LIST6

LIST?

LDA
CMPA
BNE
LDA
STA
JSR
BNE
UMP

JSR
JSR
JUMP

END

1,x
#8
LIST9
#4
0,x
FMS
LIST9
WARMS

RPTERR
FMSCLS
WARMS

LIST

-50-

GET ERROR STATUS
IS IT EOF ERROR?

CLOSE FILE CODE

STORE IN FCB

CALL FMS - CLOSE FILE
ERRORS?

RETURN TO FLEX

REPORT ERROR
CLOSE ALL FILES
RETURN TO FLEX

PESEER ERR E RE ESERSSE SS

FLEX Advariced Programmer's Guide
THE DOS LINK UTILITY

The LINK Utility provided with FLEX is a special purpose command, Its
only function is to inform the "disk boot", which is on track 17, where
the program resides which is to be loaded during the boot operation.
Normally, LINK is used to set the pointer to the DOS program. Since DOS
may reside anywhere on the disk, LINK takes the starting disk address of
the file and stores it in a pointer in the boot sector. When the boot
program is later executed, it simply takes this disk address, and loads
the binary file which resides at that location. The Toad process is
terminated upon the receipt of a transfer address record. At this time,
control is transferred to the program just loaded by jumping to the
address specified in the transfer address record. If the 'linked'
program is ever moved on the disk, then it must be re-linked so the boot
knows the new disk address.

LINK may be used in some specialized applications. One jis the
development of custom operating systems. The user may write his own
operating system, link it to the boot, and use it exactly as FLEX is
used now. It may also be desirable for special disks to boot in
specialized programs rather than the operating system. If this is done,
remember that unless the DOS is loaded during the boot process, there
will not be any disk drivers or File Management System resident in
memory.

51.

---

FLEX Advanced Programmer's Guide

-52-

FLEX Advanced Programmer's Guide
PRINTER ROUTINES

There are two printer related programs provided with FLEX. One is the P
Utility, the other is the PRINT.SYS file which is the actual set of
printer drivers (initialize printer and output character). The P
command source listing is provided on the following pages and should be
self explanatory. Below you will find the requirements of the PRINT.SYS
file. No source listing is provided here since one is given in the
“FLEX User's Manual".

"PRINT.SYS' FILE REQUIREMENTS

The PRINT.SYS file needs to provide the system with three basic printer
routines, one for printer port initialization, one for printer status,
and one for output character to printer routine. The P routine and the
system printer spooler use these routines to communicate with the
printer. A source listing of the provided routines are included in the
"FLEX User's Manual” and will not be duplicated here. The three
routines and their requirements are listed here.

PINIT ($CCCO-CCD7) This routine should initialize the printer port.
No registers need be preserved.

PCHK ($CCD8-CCE3) This routine should check to see if the printer can
accept another character. Return Negative CC status if can
accept, Plus if can not. Preserve A, B, X, Y, and U.

POUT ($CCE4-CCF7) This routine should output the character in A after
calling PCHK to verify the printer can accept the character.
Preserve B, X, Y, and U.

THE SYSTEM PRINTER SPOOLER

FLEX contains a printer spooler module. It requires the installation of
an interval timer board for operation. Essentially, the spooler is a
multi-tasking system, with the output to printer function being a low
priority task. Any requested disk service will cause the printer task
to temporarily halt until the disk has been used. It should be noted
that the SWI3 CPU vector is adjusted in this task scheduler. The PRINT
command is used to activate the spooler which in turn prints the files
{if any) in the print queue. Exact details of the spooling operation
are not available at this time.

Printer spooling is not supported in this version of FLEX.

-53-

---

FLEX Advanced Programmer's Guide
FLEX Advanced Programmer's Guide

*
* “p™ UTILITY COMMAND
* C120 B6  CCES LOA POUT GET 1ST BYTE OF SPACE
* THE P COMMAND INITIALIZES A PORT AND eo CMPA #839 IS IT RTS?
* CHANGES THE OUTCH JUMP VECTOR IN FLEX 14 BNE = P15 IF NOT - THEN LOADED
* C127 8E C840 LOX AF CB POINT TO FCB
clk 86 01 UDA #l OPEN FILE FOR READ
* COPYRIGHT (C) 1979 BY crec AP 84 STA 0,X
* C12zz BD D406 JSR FMS. CALL FMS
* TECHNICAL SYSTEMS CONSULTANTS, INC. Ci31 26 14 BNE 2 CHECK FOR ERRORS
133 86 OFF LDA SFE SET FOR BINARY READ
EQUATES €135 A788 38 STA 59, X SET COMPRESSION FLAG
C138 BD cD30 JSR LOAD, CALL FLEX'S LOADER
ced FCB EQU — $C840 C138 BD CCCO PIS JSR PINIT GO INITIALIZE PORT
C30 LOAD «EQU —~$CD30 C13e BE CCE4 LOX #POUT GET OUTPUT ADDRESS
D406 FMS EQU —-$D406 cial BF CD10 SIX OUTCH+1 «STUFF IN FLEX
D403 FMSCLS EQU  $b403 c144 7E CD06 UMP = RENTER RETURN TO FLEX
CD06 RENTER EQU  $CD06
p04 NFER EQU 4 C147 AG OL P2 LDA 1,X GET ERROR CODE
Cl09 PAUSE EQU  $cC09 " Chae gL 04 CMPA  #NFER IS IT "NO SUCH FILE"?
CDIE PSTRNG EQU  SCDIE C14 03 BNE 3
CIF RPTERR EQU $CD3F 30 8D 0014 LEAX NOPST,PCR POINT TO MESSAGE
CD03 WARNS EQU — §CD03 cish BD CDIE P25 JSR PSTRNG ~=—-GO- PRINT IT
CCll LSTTRM EQU  $CC1l 20 03 BRA P4
cco2 EOL Equ — $ccoz
ceco PINIT EQU — SCCCO C156 BD CO3F P3 JSR —-RPTERR ~—- REPORT ERROR
CcE4 POUT  EQU SCCE4 C159 BD 0403 Pa JSR -FMSCLS == CLOSE ALL FILES
Cor OUTCH EGU §CDOF CISC 7E CD03 UMP WARMS RETURN TO FLEX
CCFC PRI EQU — SCCFC
Q CI5F 30 aD 0018 Pg LEAX ERSTR,PCR POINT TO STRING
100 orc —-$C100 C163 20 EC BRA P25 GO PRINT IT
C165 22 50 52 49 NOPST FCC '“PRINT.SYS" '
¢100 20 Ol P BRA PL BRANCH AROUND TEMPS CIR Od Fee sys" NOT FOUND
102 02 WN FcR VERSION NUMBER C17B 22 50 22 20 ERSTR FCC  '"P" MUST BE FOLLOWED BY A COMMAND
cise 04 FcR O4
C103 86 CCFC PL LDA PRL CHECK SYSTEM PROCESS REG .
C106 2709 BEQ P12 1S IT BUSY? THE FOLLOWING CODE IS LOADED INTO
Clos 8c cB40 LOX «FCB POINT TO FCB * THE SYSTEM FCB WEEN THE P COMMAND 1S
clOB C6 1B LpB. #27 SET BUSY ERROR * LOADED INTO MEMORY
C100 £7 Ol STB 1% STUFF IN FCB IT PRESETS THE FILE NAME IN THE FCB
C1OF 20 45 BRA P3 GO REPORT ERROR cena
C111 86 CC11 P12 LDA LSTTRM)=—s GET LAST TERMINATOR ORG — $C843
2
ae 8 a ca re
C118 81 ccoz cCMPA EOL 1S IY EOL CHARACTER? C844 50 52 49 4E FCC PRINT
C1IB 27 42 BEQ PS teee oo 88 FCB. 00,0
C1ID 7F  CCO9 CLR PAUSE. ~=—=s«DTSABLE. THE PAUSE FEATURE € 53 59 53 Fcc 'SYS*
- continued - END P
-54-

-55-

---

FLEX Advanced Programmer's Guide

-56-

LREERER ER RE RE R Re ee

FLEX Advanced Programmer's Guide

INTERRUPTS IN FLEX

FLEX makes extensive use of interrupts during printer spooling. Anytime
there are files in the PRINT Queue (as a result of using the PRINT
command) the timer board (MP-T in 1/0 slot #4) is activated. This board
is initialized to output interrupts every 10 milliseconds. These are
IRQ type interrupts and FLEX sets the IRQ vector to point to its IRQ
routine. When the PRINT Queue is empty, the timer is shut off and no
interrupts are generated. The SWI3 instruction is also used quite
extensively in FLEX. The SWI3 vector in RAM is set by FLEX to point to
its SWI3 routine. Because of the SWI3 and IRC use, the MON command wil]
not permit leaving FLEX while there is a file in the PRINT Queue.

All FLEX utilities, the Editor, the Assembler, the Text Processor, and
BASIC are interruptable programs. When writing your own programs, if
they are to be used while printing with the PRINT command (files in the
print queue), they should be written to be interruptable as well. At no
time should the IRQ or SWI3 vectors be changed in a utility which is to
be run while printing. In general, good programming practice will yield
interruptable programs.

SYSTEM MEMORY MAP

The following memory map shows the location of user RAM and several
major sections of the FLEX operating system. All addresses are in
hexadecimal.

ADDRESS DESCRIPTION

0COO - BFFF User RAM {Some of the lower end of this area is used
by certain utilities such as NEWDISK.)

cco0o - co7F Stack Area (SP is initialized to CO7F)

C080 - COFF Input Buffer

€100 - C6FF Utility Command Area

C700 ~ C83F Scheduler & Printer Spooter

C840 - CO7F System FCB

C960 - CBFF System Files Area

CCOO ~ D3FF DOS

D400 - DDFF FMS

DEOO - DFFF Disk Drivers

-57-

---

SSVIGNAddV

sl Us

104109

Tis!

---

Appendix A ~ FHL Color FLEX References

Appendix A - references

1. Frank Hogg, "32K RAM FOR FREE!!!" Color Computer News, February 1982 (No. 6
p.23. How to modify the Color Computer for full use and test the memory,

2. Dale Puckett, "FLEX: An Operating System for the 6809," MICRO - The 6502/68(
Journal, April 1982 (No. 47), p.61. Introduction to FLEX,

3, Seott Norman, "FLEX Your Color Computer," '80 Micro, Mareh 1983 (No. 38) p. 10
Review

4, Dr. Laurence Preble, "A Tale of Three Flexes," The RAINBOW, July 1983 VoLI (N:
12), p.240. Review and comparison to other versions of FLEX.

5. E.M, Pass, Ph.D., "FLEX and OS/9, An Inside View," The Color Computer Magezin:
Cetober 1983 Vol.1 (No. 8), p.110, Comparison of FLEX and O89,

6. Frank Hogg, "64K KOLUMN," Color Computer News, Ongoing column about the 64
Color Computer. Additional information about 64K and FLEX,

APPENDIX A Page - 1 -

---

Appendix C, Modifying the 32K Color Computer, |

Appendix B - Hardware Vendors
The following steps will transform a 32K Color Computer (containing 64K

RAMs, not the piggybacked 16K rams) into a 64K Color Computer capable of
running FLEX.
FRANK HOGG LABORATORY, Inc.
The Regency Tower
770 James Street
Syracuse, New York 13203
(315) 474-7856

1. Obtain a new 74L802 and a new 7418138.

2. Remove the top of the case from the Color Computer and remove the RF
shield.

3, Locate U28 and U11 (a 74LS02 and a 74LS138) inside the shield, located in the

64K Color Computer with warranty. Disk systems with high-performance drives. .
corner of the shielded area near the center of the keyboard.

Complete packaged systems for:

4, Remove U29 and U1} and store them in a safe place. If you have trouble with
your Color Computer in the future, you can easily remove the modification and
replace these chips, and it will be undetectable that the Color Computer was

modified,

SOFTWARE DEVELOPMENT
BUSINESS
WORD PROCESSING

5. On you new 741802, carefully bend pins 4, 5 and 6 so they point straight up in

Computer Plus ‘
the air, Do the same for pin 5 on the 74LS8138.

245A Great Road

Littleton, MA 01460
(617) 486-3193 6. Plug the modified 74LS02 in as U29, Plug the modified 74LS138 in as U11.

7, You must now make three connections using 30-gauge tinned solid copper wire.
You will need a wirewrap tool to wrap the ends of the wire around the pins.
For maximum reliability, you should solder the wire to the IC leads, However,
do not do this unless you are confident that you can do it without shorting
the pins or dropping solder onto the cireuit board. The following connections
must be made:

64K Color Computers. Racio Shack disk systems, 64K RAMS,

U29 pin 6 to U29 pin 8
U29 pin 4 to U11 pin 5
U28 pin 5 to TPL,

TP1 is located in the diagonally opposite corner of the shielded area, DO
NOT SOLDER TO TP1! A simple wire wrap should be sufficient here, and can
be easily removed so the modification is reversible.

8, Turn on the computer and see if it initializes properly before replacing the
shield and case. Color Basie should work as it did before.

9. Run the following program to test the RAM. The program will take about a
minute to set up, then it will say OK if the memory is good. Otherwise it
will report the address of the error, what was read, and what was expected.
The following table indicates what kind of error corresponds to which RAM,
Chances are everything is OK, but if not probably only one or two of the
RAMS need to be replaced. Use 4164 64K Dynamic RAMs,

APPENDIX B Page -1- APPENDIX C Page - 1 -

AREEREEEEEEEEESSEEEE

---

Appendix C. Modifying the 32K Color Computer. Appendx C. Memory Test i
Error Culprit 4 This test is from the October 1982 issue of Color Computer News, page
01 U20 i 68. It is patterned after a program published by FHL in the February issue of Color
02 U2i ae Computer News. This program was written by Jim Brown, 31 Richie Drive, Pleasant
04 U22 . Hill, CA 94523,
08 U23 i Basic initialization and machine code load require about 3 seconds, Full
10 U24 ae range test time for good RAM takes less than 3 seconds.
20 U25
40 U26 . 16 ' TEST MEMORY IN MODIFIED 590 PRINT "LOWEST,HIGHEST:";
80 U27 20 ' 32K TRS80 COLOR COMPUTER 600 PRINT "3000,FEFF"
30 ' FOR FULL 64K ADDRESSING 610 PRINT os PER BOUND";
i pe 40 ' RANGE WHEN MAP TYPE=1 620 INPUT I$,J
Revision '¥" Board i 50 1 630 BT=VAL(H$ +MID$(I$,1,2))
The Revision 'F' board is very simple to upgrade. If you i i 60 CLEAR 50,&H3600 640 POKE SA,BT
Revision 'F' board then all you have. to do ierun the test program because the 80 B=&HIDO0: " =RELOCATION BASE 650 BT=VAL(H§ +MIDS(I$,3,2))
board has the 64K Mod in it from Radio Shack! 100 | MACHINE CODE: 660 POKE SA+1,BT
120 ' SETUP & CLR MEM 670 BT=VAL(H$+MID§(J$,1,2))
Upgrading a 16K Revision 'F' board to 64K: 130 DATA 34011LA50B7FFDF4F 680 POKE EA,BT
140 DATA AE8CEBA780AC8CE8 690 BT=VAL(H$+MID$(J$,3,2))
Remove these capacitors near the memory ehips: 150 DATA 23F943 700 POKE EA+1,BT
C58, C60, C62, C64, C66, C68, C70, C72 1606 ' WAIT FOR REFRESH 720 ' TEST MEMORY SEGMENT
Add a jumper to the left of PIA 6821 170 DATA 8E02A0301F26FC 740 X=USR0(0)
Move the jumpers labeled 16/64 from 16 to 64 180 DATA 8E02A0301F 26FC 760 ' PRINT TEST RESULTS
Install 8 64K chips, 190 ' MAIN LOOP 780 WD=PEEK(DA):RD=PEEK(DA+1)
200 DATA AE8CD26384A184 ten IF wOEEK( Te3 960 ( )
You still need Extended i 210 DATA 27028D1F6380 0 FA=PEEK(X A)*256+PEEK(XA+1
“The Solution® Color Basic to run FLEX unless you have 220 DATA AC8&8CC723F J1F 894D 810 PRINT"AD DRESS#";HEXS(F A);
230 DATA 271A 820 PRINT"WROTE";HEXS(WD);
246 ' MID LOOP 830 PRINT"READ";HEX$(RD);
250 DATA AES8CBB4F A1842702 850 ' RESUME TESTING
260 DATA 8D096380AC8CB1 870 X=USR1(0)
270 DATA 23F320C8 890 ' LOOP BACK FOR REPORTING
280 ' EXIT SEQUENCE 910 GOTO 780
290 DATA £6843540EF8CAC 930 ' END OF CURRENT TEST
300 DATA ED8CATAF8CA2 940 ' ALLOW FURTHER TESTING
310 DATA B7FFDE3581 960 PRINT"TEST COMPLETED"
320 ' RESUME SEQUENCE 970 PRINT
330 DATA 34011A50B7FF DF 980 GOTO 590
340 DATA EE8C9TAE8C90
350 DATA A68CBF6EC4 For loop testing,
374 ' DEFINE CONSTANTS replace 980 with:
390 H$="&H" 980 GOTO 780
400 SA=B+&H00!'START ADDR Hold <BREAK> key for about 6
410 EA=B+&H02:'END ADDR seconds to break the test loop,
420 XA=B+&H04:'EXIT ADDR
430 DA=B+&H06:'RD/WR DATA

APPENDIX C Page - 2 -

440
450
460
470
490
510
520
530
540
550
570

E0=B+&HOA:'START ENTRY
E1=B+&H67:'RESUME ENTRY
LA=B+&H78:'LAST CODE BYTE
DEF USRO=E0:DEFUSR1=E1

' LOAD MACHINE CODE
FOR A=E0 TO LA

IF HX$=" THEN READ HX$
POKE A,VAL(H$+LEFTS(HX$,2))
HX$=MID§(HX$,3,255)

NEXT A

' INPUT LAST MEM TEST BOUNDARIES

APPENDX C Page - 3 -

---

1

3.

Appendix D. Software Vendors

Computer Systems Center

13461 Olive Blvd.

Chesterfield, MO 63017 ’
* Dynacale, an electronic spreadsheet. Dynamite disassembler.
Computerware

4403 Manchester Ave., Suite 103

Encinitas, CA 92024

* Business and Accounting packages.

Frank Hogg Laboratory, Inc.
The Regency Tower

770 James Street

Syracuse, NY 13203

(315) 474-7856

°
* FHL Coler FLEX, Editor and Assembler (ED/ASM), Dynastar and Stylograph Word
Processors, FORTH, Dynasoft PASCAL (p-eode system), Dyna-C (C-language subset).

CRASMB Cross Assembler for various micros, Super Sleuth” and Dynamite+*

Disassemblers, Autotask procedure file executor, Programmer's toolkit; Basie toolkitt
spelling-checker, Data-Base systems, Business and Accounting packages, Mailing and

Correspondence systems, JCP Job Control Program, many more.

introl Corp.

647 West Virginia St.
Milwaukee, WI 53204
* A full 'C' Compiler,

Lucidata Ltd,

P.O, Box 128

Cambridge CB2 5EZ ENGLAND

* Lucidata PASCAL, a p-code system with floating point.”

Omegasoft

P.O. Box 70265

Sunnyvale, CA 94086 -
* PASCAL native code compiler.”

Technical Systems Consultants, Inc.

111 Providence Road

Chapel Hill, NC 27514 e >

* Native code Pascal Compiler, Text Editor, Assembler, 68000 Cross-Assembler,
XBASIC Extended Basic? Sort/Merge, Utilities, Debug.’

Universal Data Research Inc.

2457 Wehrle Dr.

Buffalo, NY 14221

* Business and Accounting Packages.

Washington Computer Service

3028 Silvern Lane

Bellingham, WA 98225

* RMS Record Management System.

*
OST OF THE ABOVE SOFTWARE IS AVAILABLE FROM FRANK HOGG LABS

APPENDIX D Page - 1 -

REQHEREE

Appendix E - FHL Color FLEX Specifications.

These specifications are in addition to the normal FLEX
specifcations, as documented in the FLEX User's Manual and FLEX
Programmer's Manual,

1. Disk System.
User Callable Routines
$DE1E (ULH) Unload Heads

This routine causes all of the selected drive to be
deselected, It still remains the current drive, and if the
motor was running it remains running, but the heads are
unloaded. Uses no registers.

$DE21 (MTROFF) Turn Off Drive Motors

This routine causes the currently selected drive to be
deselected, and the drive motors to be turned off. The
current drive remains the current drive. Uses no registers.

ULH and MTROFF should be ealled instead of eecessing the Drive
Register directly. This is because the disk drivers keep a local copy
of the Drive Register, which must be kept up to date.

$DE24 (FCTE) Find Configuration Table Entry

This routine returns the address of the Drive Configuration
Table Entry for the current drive in X. If the current
drive is not 0, 1, 2, or 3, a "Drive Not Ready” error will
be returned in B and a Z will be 0. Otherwise, no
registers are used.

The following entries are defined for the Drive Configuration Table,

hoo eos
ei ep

whee

Offset Function

0 =1 if drive exists

1 =1 if double sided

2 =1 if double density

3 Stepping rate: 0=6ms, 1=12ms, 2=20ms, 3=30ms

4 Physical drive 0-3 selection code: 1=0, 2=1, 4=2, 64=3
5 Track to start precompensation at

6 Sectors/track single density

7 Sectors/track double density

8 Maximum track number (no. of tracks minus one)
9 Seek time limit [(no.tracks*step rate +1)] *60
10,11 variables (reserved)

The physical drive selection code may be used to cause a
drive wired with a certain physical drive number to behave as if it
had a different logical drive number. Do not use more than one
physical drive number for any logical drive number, or vice versa;
also, do not use physical drive number 3 (selection code 64) if the
system has any double sided drives.

APPENDIX FE Pare - 1 -

---

Appendix E - FHL Color FLEX Specifications.
Console I/O specifications

User settable options in the Console I/O package

These addresses are vectors which point to the address where the
actual option resides,

$D3D1 Debounce count
This is the number of times the keyboard is scanned before
a key is registered.

$D3D3 Blink Period
The reciprocal of the cursor blink frequency, on a relative
seale.

$D3D5 Motor Off Blink Limit
After this many blinks the motors shut off, whether the
blinks are visible are not,

$D3D7 Cursor Type
$00 = underline cursor

$FF = blinking block cursor

$D3D9 VDG Mode
The upper five bits of this word set the VDG mode.

$D3DB Reserved for future system use.
$D3DD Reserved for future system use.

$D3DF Reserved for future system use.

SD3E1 Bell Tone Cycle Count.
The length of the Control-G tone, in half-cycles.
(Frequency dependent.)

$D3E3 Bell Tone Half Period
The reciprocal of the frequency of the Control-G tone on
a relative scale,

$D3E5 INCHNE Get e character from the keyboard without echo.
Used in the form JSR [$D3E5]}.

jbos

APPENDIX E Page - 2 -

LEER GGEE

Appendix E - FEL Color FLEX Specifications,

Output Character Control Functions and Displays

Holding down the shift and up arrow key is the control key, We refer to the
control key in this table by the '*', Therefore, “B means to hold down the shift,
up arrow and the 'B' key.

02 “B Home and Clear screen (including protected areas).
03 “Cc NOT USED
04 “D Remove all status lines,
05 *E Erase cursor to end of line.
06 “F Put line cursor is on in reverse video
07 «“G Bell tone
08 “H Cursor left, non-destructive.
09 “I Cursor right.
jo “J Cursor down (LF), initializes beginning of line
pointer if in first column.
ll *K Cursor up.
12 “L # Used to fleg Protected areas.
13° °M CR
14 °N Erese all Unprotected areas.
15 *O Home cursor.
16 “P Toggle printer on and off.
17 *Q NOT USED
2 18 “*R NOT USED
» 19 *S Erase cursor to end of sereen, shang Bs
4 20 °T Cursor addressing, “T,row,column., “T,32,32 = home an
where 32 refers to the decimal equivilant of the Aviu
actual character typed.
* 21 7U Unprotects all lines.
2 22 WV Variable scroll rates, Follow with a “A - “F,
, 23 “W * Allocate status line(s) at bottom of screen.
2 24 *X Cancel line.
ww 25 WY Erase entire line,
5 2 7% Toggle cursor between underline and block,

(#) Place the cursor on a line and type “L then move cursor to another line
and type “L again. The lines between will now be protected, Use cursor
addressing to put text into the protected lines.

(*) Each time the “W is typed, another status line will be added to the bottom

of the screen. The number of status lines is limited to four. Use cursor
addressing to put text into the lines,

APPENNTIX F Pace —t-

---

Appendix E ~ FHL Color FLEX Specifications,
APPENDIX F - System Memory Map

KEY FUNCTIONS
The following is a brief list of the RAM space required by the FHL Color FLEX

1 Shift functions Operating System. All addresses are in Hex.
shift "shift!
Shift-* "etrl' (abbrev *) 0000 - B7FF User RAM
Shift-“-break _ 'super-shift' *Note: Some of this space is used by
Shift-*-0 Toggle 'Alpha-lock' NEWDISK, COPY and other utilities.
Alpha is on when first booted up. B800 ~ BFFF Hi-Res Screen Drivers and character tables,
2. Normal Key Functions C000 - ESFF Disk Operating System
E600 - FDFF Hi-Res Screen Memory
KEY NORMAL NORMAL, Alpha-loct. Shift CTRL Super-Shift. FEOQO ~ FEFF Misc. routines
8 g sane . fw FS ($10) COTF System Stack
Az az AZ AZ MA-AZ
4 Cursor Up sane "CTRL" ta Wa C100 ~- C6FF Utility Command space
y LF " LF LF UF
sca BS " X DEL (7F) 6S($1D) cp00 FLEX cold start entry address
* TAE (HT) " * nothing RS ($1E)
CD03 FLEX warm start entry address
space spare " space space space
0 0 " see(1) sane
1 ! " ! ' ; ;
a8 fa " fas shown or keyboard) For a more detailed memory map, consult the 'Advanced Programmer's Guide.'
6 é " fas shown on keyboard)
7 7 " (as shown on keyboard)
8 g " { C t
9 9 " ) 1 3
1 ! ” x x x
: ' “ = . uscs1F)
. . " 4A > a
/ / " 2
enter Cr " CR CK Ck
BREAK ESC " n/a super-shift ta

APPENDIX E Page - 4 - APPENDIX F Page - 1 -

---

Index Abbreviations:

APG : Advanced Programmer's Guide
AP(): Appendix
TUT : Tutorial

Add B-Register to X-Register (ADDBX)
APPEND A.l.1

ASN A.2.1 - A.2.2

Automatic Drive Searching 1.6

Backspace T.2.1, APG 3
Backspace Echo T,.2.2, APG 4
BASIC C.2.1

Bell Tone AP({E) 3

Bell Tone Cycle Count AP(E) 2
Bell Tone Half Period AP(E) 2
Binary Files APG 45

Blink Period AP(E) 2

BUILD B.1.1

APG 13

Call] DOS as a Subroutine (DOCMND) APG 15

Cancel Line AP(E) 3
Carriage Return AP{E) 3
cat TuT 2, C.1.1 - C.1.2
CBASIC C.2.1

Check Terminal Input Status (STAT) APG 15

Classify Character (CLASS) APG ll
CLOADM C.2.1

Coldstart Entry Point (COLDS) APG 8
Command Descriptions 1.7
Command Flag APG 6

Command Summary . 3.1

Commands, entering of 1.5 -1.6
Computer Plus AP(B) 1

Computer Systems Center AP(D) 1
Computerware AP(D) 1

Control Key 0.3, AP(E) 3

COPY C.3.1 - C.3.2

Current Character APG 5

Current Line Number APG 5
Current Output Colum APG 6
Cursor Addressing AP(E) 3
Cursor Down AP(E) 3

Cursor Left AP(E) 3

Cursor Toggle, underline and block
Cursor Type AP(E) 2

Cursor Up AP(E) 3

Data Sectors (Descp) APG 44
DATE D.1.1

Index Page ~ 1 -

AP(E) 3

---

Index Abbreviations:

APG : Advanced Programmer's Guide
AP(): Appendix
TUT : Tutorial

Date Registers APG 4

DBASIC D.2.1 - D.2.3

Debounce Count AP(E) 2

Delete Character T.2.2, APG 3

Depth Count (Terminal) T.2.2, APG 3
Directory Sectors (Descp) APG 44

Disk Capacity 1.8

Disk Drive Support 0.2

Disk Drivers APG 41 - 42

Disk Error Numbers 1.10

Disk Files and their Names 1.3 -1.4

Disk Operating System (DOS), General info 1.1
Disk Operating System (DOS), Standard FLEX APG 1-7
DOS Main Loop Re-entry Points (RENTER) APG 8
DOS Routines, Examples APG 19

Disk Resident Commands 1.7, APG 17
Diskette Initialization APG 43

DISPLAY D.4.1

Display Features 0.3

DOCMND APG 15

Drive Configuration Table 0.2, AP(E) 1

Eject Count APG 4

Eject Line Count (Terminal) T.2.3

End of Line (BOL) Character 1.6, 1.2.2, APG 3
End of Page Pause Feature T.2.3

Entry Points (FMS) APG 26

Erase Cursor to End of Line AP(E) 3

Erase Cursor to End of Screen AP(E) 3
Erase Line AP(E) 3

Erase Unprotected Areas AP(E) 3

Error Messages 2.1

Error Name Vector APG 7

Error Numbers 1.10, APG 38 - 40

Error Type APG 6

ERROR.SYS 1.10

Escape Character T.2.4, APG 4

Escape Return Register APG 5

EXEC C.2.1, E.1l.1 - £.1.2, S.4.1 - 8.4.2
EXT E.2.1 - E.2.2

Extensions (for files) 1.3 - 1.4

Features of FHL Color FLEX 0.2 - 0.4

Field Separator 1.3
File Management System See FMS

Index Page - 2 -

---

Index Abbreviations:

APG : Advanced Programmer's Guide
AP(): Appendix
TUT : Tutorial

File Input Address APG 6

File Input Echo Flag APG 7

File Loader (LOAD) APG 12

File Output Address APG 6

Find Configuration Table Entry AP(E) 1-4
FLEX, General Information 1.1

FLEX References AP(A) 1

FLEX Specifications, FHL Color FLEX AP(E) 1- 4
FMS 1.1, APG 1, APG 21 - 40

FMS Entry Points APG 26

FMS File Control Blocks APG 21,22

FMS Function Codes APG 21,28 - 36

FMS Global Variables APG 27

Formatting TUT 5 - 6

Frank Hogg Laboratory, Inc. AP(D) 1

General Information, FLEX 1.1

GET G.1.1

Get Character (GETCHR) 1.11, APG 9
Get File Specification (GETFIL) APG 12
Get Hexadecimal Number (GETHEX) APG 14
Get Next Buffer (NXTCH) APG 11

Halting Output 2.1

Hardware Vendors AP(B) 1
HELP H.1.1

HELPCOCO. DIR H.1.1

Hi-Res Screens X.2.1

Home and Clear Screen AP(E) 3
Home Cursor AP(E) 3

I I.l.1

INCHNE AP(E) 2

Initialize Printer APG 7

Input Character (INCH) (INCH2) APG 9
Input Decimal Number (INDEC) APG 15
Input into Line Buffer (INBUFF) APG 10
I/O Subroutines 1.11

Input Switch APG 6

INT I.2.1

Interrupts 57

Introl Corporation AP(D) 1

ISM I.3.1 - 3.11

JUMP J.1.1

Index Page - 3 -

---

Index Abbreviations:

APG : Advanced Programmer's Guide
AP(): Appendix
TUT : Tutorial

Key Functions 0.2 - 0.3, AP(E) 4

Last Terminator APG 5

Line Buffer APG 3

Line Buffer Pointer APG 5
LINK APG 51, L.1.1, TUT 8
LIST L.2.1

LOAD, file loader APG 12
Loader Address Offset APG 5
Lucidata Ltd. AP(D) 1

Memory End APG 7

Memory Map, FHL Color FLEX AP(F) 1
Memory Map, Standard FLEX APG 3 ~ 7,57
Memory Resident Commands 1.7, APG 16
Memory Test for 64K AP(C) 3

Minimum Hardware Configuration 0.1
Modification for 64K AP(C) 1 - 2

MON M.1.1

Motor Off Blink Limit AP(E) 2

Motor Shut-off 0.3, AP(E) 1

MOVEROM M.2.1

N N.1.1

NEWDISK N.2.1, TUT 5 - 6
NEWDISKA N.2.1, TUT 5 - 6
Null Count 7.2.3, APG 4
NXTCH APG 11

fe) 0.1.1

Omegasoft AP(D) 1

Output Character (OUTCH) (OUTCH2) APG 9

Output Character Control Functions and Displays AP(E) 3
Output Decimal Number (OUTDEC) APG 13

Output Hexadecimal (OUTHEX) APG 13

Output Hexadecimal Address (OUTADR) APG 14

Output Switch APG 6

P 1.9, P.1.1

Pl P.1.1

Pause Control T.2.3, APG 4
PCHK 1.14

PINIT 1.14

POUT 1.14

Previous Character APG 5

Index Page - 4 -

---

Index Abbreviations:

APG : Advanced Programmer's Guide
AP(): Appendix
TUT : Tutorial

Print Carriage Return and Line Feed (PCRLF) APG ll
Print Spooling APG 53

Print String (PSTRNG) 1.11, APG 10
Printer, Hooking-up 0.4

Printer, Toggle on and off AP(E) 3
Printer Driver 1.9

Printer Driver Sample, Serial 1.16
Printer Initialize APG 7

Printer Output APG 7

Printer Ready Check APG 7

Printer Routines APG 53 - 55
Printer Support 0.3

PRINT.SYS 1.9, P.l.1, APG 53
PROT P.2.1

Protected Area Flag AP(E) 3

PSTRNG 1.11, APG 10

Put Character (PUTCHR) APG 10
PUTBOOT. LDR 3.1, TUT 6-7, 10
PUTCHR 1.11

Random files APG 37

Remove Status lines AP(E) 3

RENAME R.1.1

RENTER, DOS Main Loop Re-entry Point APG 8
Report Error (RPTERR) APG 14

Reset 1.8

Restore I/O Vectors (RSTRIO) APG 12
Reverse Video (line) AP(E) 3

ROM M.1.1, R.2.1

RIF D.2.3

SAVE S.1.1

SAVE. LOW 8.1.2

Screen, Hi-res X.2.1

Scroll Rates AP(E) 3

SDC TUT 7-9, S.2.1

Sectors 1.3, 1.8

Serial Printer Driver, Sample 1.16
Set Extension (SETEXT) APG 13
SETUP 0.4, 8.3.1 - S.3.6

Single Drive Copy TUT 7 - 9, S.2.1
Software Vendors AP(D) 1

Special I/O Flag APG 6

Spooling, printer APG 53

STARTUP S.4.1 - S.4.2

Index Page - 5 -

---

Index Abbreviations:

APG : Advanced Programmer's Guide
AP(): Appendix
TUT : Tutorial

STAT, Check Terminal Input Status 1.12, APG 15
Status lines AP(E) 3

Summary of Commands 3.1

Super-shift 3

System Constants APG 7

System Date Registers APG 4

System Drive 1.6

System Drive Number APG 4

System Memory Map, FHL Color FLEX AP(F) 1
System Requirements, General FLEX 1.2
System Routines, User Callable APG 8
System Scratch APG 4,6,7

TAB Character T.2.3, APG 4

Technical Systems Consultants, Inc. AP(D) 1
TED T.1.1 - T.1.5

Terminal Depth Count 7.2.2

Terminal Width Count 7.2.3

Terminator APG 5

Text files (Descp) APG 46

Transfer Address 1.5, S.1.1, APG 6
Transfer Flag APG 5

TSC, Inc. AP(D) 1

TTYSET 1.1, 1.5, 1.6, 1.2.1 - 7.2.4
Turn off Drive Motors AP(E) 1
Tutorial, FHL Color FLEX 0.4 - TUT ll

uUCcS 1.1, 2.1, A.1.1- Y.1.1

Universal Data Research Inc. AP(D) 1

Unload Heads (Drives) AP(E) 1

Unprotect all lines AP(E) 3

User Callable Routines, FHL Color FLEX AP(E) 1
User Callable System Routines APG 8

User Command Table APG 16 - 18

User Command Table Address APG 5

User Written Commands APG 16, 47 ~ 50

Utility Command Set (UCS) 1.1, 2.1, A.1.1 - Y.1.1

Variable Scroll Rates AP(E) 3
VDG Mode AP(E) 2

Vendors, Hardware AP(B) 1
Vendors, Software AP(D) 1
VERIFY V.1.1

VERSION V.2.1

Index Page - 6 -

---

~ Index Abbreviations:

APG : Advanced Programmer's Guide
AP(); Appendix
TUT : Tutorial

Warmstart Entry Point (WARMS) APG 8

Washington Computer Service AP(D) 1

Width, Terminal 7.2.3, APG 3

Work Drive 1.6 :
Working Drive Number APG 4
Write Protect 1.8, APG 1

Xcommands %.2.1
XOUT X.1.1

Y Y.1.1

- Index Page ~ 7 -
