# APG2

> Source: `manuals/misc/TSC_MAN - FLEX Software Archive - Manual and Documentation Archive - Includes APG-MAC, APG-PREF, APG1.zip!TSC_MAN.dsk!APG2.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.ce
USER-WRITTEN COMMANDS
.pp
The programmer may write his own commands for DOS.  These
commands may be either disk-resident as disk files with a CMD
extension, or they may be memory-resident in either RAM or ROM.
.pp
MEMORY-RESIDENT COMMANDS:
.pp
A memory-resident command is a program, already in memory, to
which DOS will transfer when the proper command is entered from
the keyboard.
The command which invokes the program, and the entry-point of the
program, are stored in a User Command Table created by the programmer in memory.
Each entry in the User Command Table has the following format:
.bx
.nf
FCC  'command'  (Name that will invoke the program)
FCB  0
FDB  entry address (This is the entry address of the program)
.fi
.sx
The entire table is ended by a zero byte.  For example, the following
table contains the commands DEBUG (entry at $3000) and PUNT
(entry at $3200):
.bx
.nf
FCC   'DEBUG'       Command Name
FCB   0
FDB   $3000         Entry address for DEBUG
FCC   'PUNT'        Command name
FCB   0
FDB   $3200         Entry address for PUNT
FCB   0             End of command table
.fi
.sx
The address of the User Command Table is made known to DOS
by storing it in the User Command Table Address locations
(See Memory Map).
.pp
The User Command Table is searched before the disk directory, but after DOS's
own command table is searched.  The DOS command table contains
only the GET and MON commands.  Therefore, the user may not
define his own GET and MON commands.
.pp
Since the User Command Table is searched before the disk directory,
the programmer may have commands with the same name as those on the disk.
However, in this case, the commands on the disk will never be executed
while the User Command Table is known to DOS.  The User Command
Table may be deactivated by clearing the User Command Table Address
locations.
.pg
.ce
DISK-RESIDENT COMMANDS
.pp
A disk-resident command is an assembled program, with a transfer address,
which has been saved on the disk with a CMD extension.  The ASMB
section of the FLEX User's Guide describes the way to assign a
transfer address to a program being assembled.
.pp
Disk commands, when loaded into memory, may reside anywhere in the
User RAM Area; the address is determined at assembly time by using an
ORG statement.  Most commands may be assembled to run in the Utility Command
Space (see Memory Map).  Most of the commands supplied with FLEX
run in the Utility Command Space.  For this reason, the SAVE command
cannot be used to save information which is in the Utility Command
Space or System FCB space as this information would be destroyed
when the SAVE command is loaded.  The SAVE.LOW command is to be
used in this case.
The SAVE.LOW command loads into memory at location
$100 and allows the saving of programs in the $C100 region.
.pp
The System FCB area is used to load all commands from the disk.
Commands written to run in the Utility Command Space must not
overflow into the System FCB area.  Once loaded, the command itself
may use the System FCB area for scratch or as an FCB for its own
disk I/O.
See the example in the FMS section.
.pg
.ce
GENERAL COMMENTS ABOUT COMMANDS
.pp
User-written commands are entered by a JMP instruction.  On
completion, they should return control to DOS by jumping (JMP
instruction) to the Warmstart Entry Point (see Memory Map).
.pp
Processing Arguments.
.pp
User-written commands are required to process any arguments entered
from the keyboard.  The command name and the arguments typed are in the
Line Buffer area (see Memory Map).  The Line Buffer Pointer,
on entry to the command, is pointing to the first character of the
first argument, if one exists.  If there are no arguments, the Line Buffer
Pointer is pointing to either an end-of-line character or a carriage
return.  The DOS routines NXTCH, GETFIL, and GETHEX should
be used by the command for processing the arguments.
.pp
Processing Errors.
.pp
If the command, while executing, receives an error status from
either DOS or FMS of such a nature that the command must be
aborted, the program should jump to the Warmstart Entry Point
of DOS after issuing an appropriate error message.  Similarly,
if the command should detect an error on its own, it should issue a
message and return to DOS through the Warmstart Entry Point.
.pg
.ce
EXAMPLES OF USING DOS ROUTINES
.pp
.pp
1. Setting up a file spec in the FCB
can be done in the following manner.
This example assumes the Line Buffer Pointer
is pointing to the first character of a file specification,
and the desired resulting file spec should default to
a TXT extension.
.bx
.nf
LDX   \#FCB    Point to FCB
JSR   GETFIL  Get file spec into FCB
BCS   ERROR   Report error if one
LDA   \#1      Set extension code (TXT)
JSR   SETEXT  Set the default extension
.sx
The user may now open the file for the desired
action, since the file spec is correctly set up in
the FCB.
Refer to the FMS examples for opening files.
.sp 2
2. The following examples demonstrate some simple uses
of the basic I/O functions provided by DOS.
.bx
.nf
LDA   \#'A     Setup an ASCII A
JSR   PUTCHR  Call DOS out character

LDX   \#STRING Point to string
JSR   PSTRNG  Print CR & LF + string
.sx
The above simple examples are to show the basic mechanism
for calling and using DOS I/O routines.
.pg
.rs
.pg
.ce
THE FILE MANAGEMENT SYSTEM
.pp
The File Management System (FMS), forms the communication
link between the DOS and the actual Disk Hardware.
The FMS performs all file allocation and removal on the
disk.
All file space is allocated dynamically, and the space used
by files is immediately reusable upon that file's deletion.
The user of the FMS need not be concerned with
the actual location of a file on the disk, or how many sectors
it requires.
.pp
Communication with the FMS is done through File Control
Blocks.
These blocks contain the information about a file, such as its name
and what drive it exists on.
All disk I/O performed through FMS is "one character at a time"
I/O.
This means that programs need only send or request a single
character at a time while doing file data transfers.
In effect, the disk looks no different than a computer terminal.
Files may be opened for either reading or writing.
Any number of files may be opened at any one time, as long
as each one is assigned its own File Control Block.
.pp
The FMS is a command language whose commands are
represented by various numbers called Function Codes.
Each Function Code tells FMS to perform a specific
function such as open a file for read, or delete a file.
In general, making use of the various functions which
the FMS offers, is quite simple.
The index register is made to point to the File Control
Block which is to be used, the Function Code is
stored in the first byte of the File Control
Block, and FMS is called as a subroutine (JSR).
At no time does the user ever have to be concerned
with where the file is being located on the disk,
how long it is, or where its directory entry is located.
The FMS does all of this automatically.
.pp
Since the file structure of FLEX is a linked structure,
and the disk space is allocated dynamically, it is possible
for a file to exist on the disk in a set of
non-contiguous sectors.
Normally, if a disk has just been formatted, a file
will use consecutive sectors on the disk.
As files are created and deleted, however, the disk
may become "fragmented".
Fragmentation results in the sectors on the disk
becoming out of order physically, even though logically
they are still all sequential.
This is a characteristic of "linked list" structures
and dynamic file allocation methods.
The user need not be concerned with this fragmentation,
but should be aware of the fact that files may exist
whose sectors seem to be spattered all over the disk.
The only result of fragmentation is the slowing down
of file read times, because of the increased number of
head seeks necessary while reading the file.
.pg
.ce
THE FILE CONTROL BLOCK (FCB)
.pp
The FCB is the heart of the FLEX File Management System (FMS).
An FCB is a 320 byte long block of RAM, in the
user's program area, which is used by programs to communicate with
FMS.  A separate FCB is needed for each open file.  After
a file has been closed, the FCB may be re-used to open another file or to perform
some other disk function such as Delete or Rename.  An FCB may
be placed anywhere in the user's program area (except page zero)
that the programmer wishes.  The memory reserved for use as an FCB
need not be preset or initialized in any way.  Only the parameters necessary to perform
the function need be stored in the FCB; the File Management
System will initialize those areas of the FCB needed for its use.
.pp
In the following description of an FCB, the byte numbers are
relative to the beginning of the FCB; i.e. byte 0 is the first
byte of the FCB.
.sp 3
DESCRIPTION OF AN FCB
.pp
Byte 0   Function Code
.bx
The desired function code must be stored in this byte by the user
before calling FMS to process the FCB.
See the section describing FMS Function Codes.
.sx
Byte 1   Error Status Byte
.bx
If an error was detected during the processing of a function, FMS
stores the error number in this byte and returns to the user with
the CPU Z-Condition Code bit clear, i.e. a non-zero condition
exists.  This may be tested by the BEQ or BNE instruction.
.sx
Byte 2  Activity Status
.bx
This byte is set by FMS to a "1" if the file is open for read,
or "2" if the file is open for writing.
This byte is checked by several FMS function processors to
determine if the requested operation is legal.  A Status
Error is returned for illegal operations.
.sx
The next 12 bytes (3-14) comprise the "File Specification"  of
the file being referenced by the FCB.    A "File Specification"
consists of a drive number, file name, and file extension.  Some
of the FMS functions do not require the file name or extension.
See the documentation of the individual function codes for details.
.pp
Byte 3   Drive Number
.bx
This is the hardware drive number whose diskette contains the
file being referenced.  It should be binary 0 to 3.
.sx
.sp 3
The next 24 bytes (4-27) comprise the "Directory Information"
portion of the FCB.  This is the exact same information which is
contained in the diskette directory entry for the file being referenced.
.pp
Bytes 4-11 File Name
.bx
This is the name of the file being referenced.
The name must start with a letter and contain only
letters, digits, hyphens, and/or underscores.
If the name is less than 8 characters long, the remaining bytes
must be zero.
The name should be left adjusted in its field.
.sx
Bytes 12-14 Extension
.bx
This is the extension of the file name for the file being referenced.
It must start with a letter and contain only letters, digits,
hyphens, and/or underscores.  If the extension is less than 3
characters long, the remaining bytes must be zero.  The extension should be left adjusted.
Files with null extensions should not be created.
.sx
.pp
Byte 15  File Attributes
.bx
At present, only the most significant 4 bits are defined
in this byte.
These bits are used for the protection status bits and
are assigned as follows:
.sp
.in +5
.nf
BIT 7 = Write Protect
BIT 6 = Delete Protect
BIT 5 = Read Protect
BIT 4 = Catalog Protect
.sp
.fi
.in -5
Setting these bits to 1 will activate the appropriate
protection status.
All undefined bits of this byte should remain 0!
.sx
Byte 16   Reserved for future system use
.pp
Bytes 17-18   Starting disk address of the file
.bx
These two bytes contain the hardware track and
sector numbers, respectively, of the first sector of the file.
.sx
Bytes 19-20  Ending disk address of the file
.bx
These two byes contain the hardware track and sector numbers,
respectively, of the last sector of the file.
.sx
Bytes 21-22   File Size
.bx
This is a 16-bit number indicating the number of sectors in the file.
.sx
.nl 10
Byte 23  File Sector Map Indicator
.bx
If this byte is non-zero (usually $02), the file has been
created as a random access file and contains a File Sector Map.
See the description of Random Files for details.
.sx
Byte 24  Reserved for future system use
.pp
Bytes 25-27  File Creation Date
.bx
These three bytes contain the binary date of the files
creation.
The first byte is the month, the second is the day,
and the third is the year (only the tens and ones digits).
.sx
.pp
Bytes 28-29   FCB List Pointer
.bx
All FCBs which are open for reading or writing are chained together.
These two bytes contain the memory address of the FCB List
Pointer bytes of the next FCB in the chain.  These bytes are zero if
this FCB is the last FCB in the chain.  The first FCB in the chain is
pointed to by the FCB Base Pointer.  (See Global Variables).
.sx
Bytes 30-31    Current Position
.bx
These bytes contain the hardware track and sector numbers, respectively,
of the sector currently in the sector buffer portion of the FCB. If
the file is being written, the sector to which these bytes point has not yet been
written to the diskette; it is still in the buffer.
.sx
Bytes 32-33   Current Record Number
.bx
These bytes contain the current logical Record Number of the
sector in the FCB buffer.
.sx
Byte 34    Data Index
.bx
This byte contains the address of the next data byte to be fetched
from (if reading) or stored into (if writing) the sector buffer.
This address is relative to the beginning of the sector, and is
advanced automatically by the Read/Write Next Byte function.
The user program has no need to manipulate this byte.
.sx
Byte 35   Random Index
.bx
This byte is used in conjuction with the Get Random Byte From
Sector function to read a specific byte from the sector buffer
without having to sequentially skip over any intervening bytes.
The address of the desired byte, relative to the beginning of
the sector, is stored in Random Index by the user, and the Get
Random Byte From Sector function is issued to FMS.  The
specified data byte will be returned in the A-register.
A value less than
4 will access one of the linkage bytes in the sector. User
data starts at an index value of 4.
.sx
Bytes 36-46 Name Work Buffer
.bx
These bytes are used internally by FMS as temporary storage
for a file name.  These locations are not for use by a user
program.
.sx
Bytes 47-49  Current Directory Address
.bx
If the FCB is being used to process directory information with
the Get/Put Information Record functions, these three bytes
contain the track number, sector number, and starting data index of
the directory entry whose content is in the Directory Information
portion of the FCB.  The values in these three bytes are updated
automatically by the Get Information Record function.
.sx
Bytes 50-52   First Deleted Directory Pointer
.bx
These bytes are used internally by FMS when looking for a free entry
in the directory to which to assign the name of a new file.
.sx
Bytes 53-63   Scratch Bytes
.bx
These are the bytes into which the user stores the new name and
extension of a file being renamed.  The new name is formatted the
same as described above under File Name and File Extension.
.sx
Byte 59    Space Compression Flag
.bx
If a file is open for read or write, this byte indicates if space
compression is being performed.  A value of zero indicates that
space compression is to be done when reading or writing the data.
This is the value that is stored by the Open for Read and Open
for Write functions.  A value of $FF indicates that no space
compression is to be done.  This value is what the user must store
in this byte, after opening the file, if space compression is not
desired.  (Such as for binary files).  A positive non-zero value in
this byte indicates that space compression is currently in progress;
the value being a count of the number of spaces processed thus far.
(Note that although this byte overlaps the Scratch Bytes described
above, there is no conflict since the Space Compression Flag
is used only when a file is open, and the Scratch Bytes are
used only by Rename, which requires that the file be closed).
In general, this byte should be 0 while working with text
type files, and $FF for binary files.
.sx
Bytes 64-319  Sector Buffer
.bx
These bytes contain the data contained in the sector being read or
written.  The first four bytes of the sector are used by the system.  The remaining
252 are used for data storage.
.sx
.pg
.ce
FILE MANAGEMENT SYSTEM - Entry Points
.pp
$D400 - FMS Initialization
.bx
This entry point is used by the DOS portion of FLEX to initialize
the File Management System after a coldstart.  There should be no
need for a user-written program to use this entry point.  Executing an
FMS Initialization at the wrong time may result in the destruction of data files,
necessitating a re-initialization of the diskette.
.sx
$D403 - FMS Close
.bx
This entry point is used by the DOS portion of FLEX at the end of
each command line to close any files left open by the command processor.
User-written programs may also use this entry point to close all open
files; however, if an error is detected in trying to close a file,
any remaining files will not be closed.  Thus the programmer is
cautioned against using this routine as a substitute for the good
programming practice of closing files individually.  There are no
arguments to this routine.  It is entered by a JSR instruction as
though it were a subroutine.  On exit, the CPU Z-Condition code
is set if no error was detected
(i.e. a "zero" condition exists).
If an error was detected, the CPU Z-Condition code bit is
clear and the X-register contains the address of the FCB causing the
error.
.sx
$D406 - FMS Call
.bx
This entry point is used for all other calls to the File Management
System.  A function code is stored in the Function Code byte of
the FCB, the address of the FCB is put in the X-register, and
this entry point is called by a JSR instruction.  The function codes
are documented elsewhere in this document.  On exit from this entry point, the
CPU Z-Condition code bit is set if no error was detected in processing
the function.  This bit may be tested with a BEQ or BNE instruction.
If an error was detected, the CPU Z-Condition code bit is cleared
and the Error Status byte in the FCB contains the error number.
Under all circumstances, the address of the FCB is still in the
X-register on exit from this entry point.  Some of the functions
require additional parameters in the A and/or B-registers.  See
the documentation of the Function codes for details.
The B,X,Y and U registers are always preserved with a call to FMS.
.sx
.pg
.ce
GLOBAL VARIABLES
.pp
This section describes those variables within the File Management
System which may be of interest to the programmer.  Any other
locations in the FMS area should not be used for data storage by user
programs.
.pp
$D409 - $D40A   FCB Base Pointer
.bx
These locations contain the address of the FCB List Pointer
bytes of the first FCB in the chain of open files.  The address
in these locations is managed by FMS and the programmer should
not store any values in these locations.  A user program
may, however, want to chain through the FCBs of the open files for some
reason, and the address stored in these locations is the proper
starting point.  Remember that the address is that of the FCB
List Pointer locations in the FCB, not the first word of the FCB.
A value of zero in these locations indicates that there are no open
files.
.sx
$D40B - $D40C   Current FCB Address
.bx
These locations contain the address of the last FCB processed by
the File Management System.  The address is that of the first
word of the FCB.
.sx
$D435    Verify Flag
.bx
A non-zero value in this location indicates that FMS will check each
sector written for errors immediately after writing it.  A zero value
indicates that no error checking on writes is to be performed.  The
default value is "non-zero".
.sx
.pg
