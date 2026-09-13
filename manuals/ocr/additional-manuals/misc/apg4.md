# APG4

> Source: `manuals/misc/TSC_MAN - FLEX Software Archive - Manual and Documentation Archive - Includes APG-MAC, APG-PREF, APG1.zip!TSC_MAN.dsk!APG4.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.ce
RANDOM FILES
.pp
FLEX version 9.0 supports random files.
The random access technique allows access by record number of a file
and can reach any specified sector in a file, no matter how
large it is, in a maximum of two disk reads.
With a small calculation using the number of data bytes
in a sector (252), the user may also easily reach the Nth
character of a file using the same mechanism.
.pp
Not all files may be accessed in a random manner.
It is necessary to create the file as a random file.
The default creation mode is sequential and is what
all of the standard FLEX Utilities work with.
The only random file in a standard FLEX system is the ERRORS.SYS
file.
FLEX uses a random access technique when reporting error messages.
A file which has been created as a random access file may read
either randomly or sequentially.
A sequential file may only be read sequentially.
.pp
To create a random file, the normal procedure for opening
a file for write should be used.
Immediately following a successful open, set the File
Sector Map location of the FCB to any non-zero value
and proceed with the file's creation.
It only makes sense to create text type files in the random
mode.
As the file is built, the system creates a File Sector Map.
This File Sector Map (FSM) is a map or directory which tells
the system where each record (sector) of the file is located on
the disk.
The FSM is always two sectors in length and is assigned
record number 0 in the file.
This implies that a data file requiring 5 sectors for the
data will actually be 7 sectors in length.
The user has no need for the FSM sectors and they are automatically
skipped when opening a file for read.
The FMS uses them for the Position and Backup function code
operations.
.pp
The directory information of a file states whether or not a file
is a random file.
If the File Sector Map byte is non-zero, the file is random,
otherwise it is sequential only.
It should be noted that random files can be Copied from one
disk to another without losing its random properties, but it can not
be appended to another file.
.pg
.dm bx
.in 5
.nl 3
..
.ce
FLEX ERROR NUMBERS
.pp
1 - ILLEGAL FMS FUNCTION CODE ENCOUNTERED
.bx
FMS was called with a function code in the Function Code byte
of the FCB that was too large or illegal.
.sx
2 - THE REQUESTED FILE IS IN USE
.bx
An Open for Read, Update, or Write function was issued on an FCB
that is already open.
.sx
3 - THE FILE SPECIFIED ALREADY EXISTS
.bx
a.  An Open for Write was issued on an FCB containing the
specification for a file already existing in the diskette
directory.
.br
b.  A Rename function was issued specifying a new name that was the
same as the name of a file already existing in the diskette directory.
.sx
4 - THE SPECIFIED FILE COULD NOT BE FOUND
.bx
An Open for Read or Update, a Rename, or a Delete function was requested on
an FCB containing the file specification for a file which does not
exist in the diskette directory.
.sx
5 - SYSTEM DIRECTORY ERROR - REBOOT SYSTEM
.bx
Reserved for future system use.
.sx
6 - THE SYSTEM DIRECTORY SPACE IS FULL
.bx
This error should never occur since the directory
space is self expanding, and can never be filled.
Only disk space can be filled (error \#7).
.sx
7 - ALL AVAILABLE DISK SPACE HAS BEEN USED
.bx
All of the available space on the diskette has been used up by files.
If this error is returned by FMS, the last character
sent to be written to a file did not actually get written.
.sx
8 - READ PAST END OF FILE
.bx
A read operation on a file encountered an end-of-file.
All of the data in the file has been processed.  This error will
also be returned when reading a directory with the Get Information
Record function when the end of the directory is reached.
.sx
9 - DISK FILE READ ERROR
.bx
A checksum error was encountered by the hardware in attempting to
read a sector.  DOS has already attempted to re-read the failing sector
several times, without success, before reporting the error.  This error
may also result from illegal track and sector addresses being put in
the FCB.
.sx
.nl 10
10 - DISK FILE WRITE ERROR
.bx
A checksum error was detected by the hardware in attempting to write
a sector.  DOS has already tried several times, without success, to
re-write the failing sector before reporting the error.  This error
may also result from illegal track and sector numbers being put in
the FCB.  A write-error status may also be returned if a read error
was detected by DOS in attempting to update the diskette directory.
.sx
11 - THE FILE OR DISK IS WRITE PROTECTED
.bx
An attempt was made to write on a diskette which has been
write-protected by use of the write-enable cutout in the
diskette or to a file which has the write protect bit set.
.sx
12 - THE FILE IS PROTECTED - FILE NOT DELETED
.bx
The file attempted to be deleted has its delete protect
bit set and can not be deleted.
.sx
13 - ILLEGAL FILE CONTROL BLOCK SPECIFIED
.bx
An attempt was made to access an FCB from the open FCB chain,
but it was not in the chain.
.sx
14 - ILLEGAL DISK ADDRESS ENCOUNTERED
.bx
Reserved for future system use.
.sx
15 - AN ILLEGAL DRIVE NUMBER WAS SPECIFIED
.bx
Reserved for future system use.
.sx
16 - DRIVES NOT READY
.bx
The drive does not have a diskette in it or the door is open.
This message cannot be issued for mini floppys since there is
no means of detecting such a state.
.sx
17 - THE FILE IS PROTECTED - ACCESS DENIED
.bx
Reserved for future system use.
.sx
18 - SYSTEM FILE STATUS ERROR
.bx
a. A read or Rewind was attempted on a file which was closed,
or open for write access.
.br
b. A write was attempted on a file which was closed, or open for
read access.
.sx
19 - FMS DATA INDEX RANGE ERROR
.bx
The Get Random Byte from Sector function was issued with a Random
Byte number greater than 255.
.sx
20 - FMS INACTIVE - REBOOT SYSTEM
.bx
Reserved for future system use.
.sx
21 - ILLEGAL FILE SPECIFICATION
.bx
A format error was detected in a file name specification.  The name
must begin with a letter and contain only letters, digits, hyphens,
and/or underscores.  Similarly with file extensions.  File names
are limited to 8 characters, extensions to 3.
.sx
22 - SYSTEM FILE CLOSE ERROR
.bx
Reserved for future system use.
.sx
23 - SECTOR MAP OVERFLOW - DISK TOO SEGMENTED
.bx
An attempt was made to create a very large random access file
on a disk which is very segmented.
All record information could not fit in the 2 sectors
of the File Sector Map.
Recreating the file on a new diskette will solve the problem.
.sx
24 - NON-EXISTENT RECORD NUMBER SPECIFIED
.bx
A record number larger than the last record number of the file
was specified in a random position access.
.sx
25 - RECORD NUMBER MATCH ERROR - FILE DAMAGED
.bx
The record located by the FMS random search is not the
correct record.
The file is probably damaged.
.sx
26 - COMMAND SYNTAX ERROR - RETYPE COMMAND
.bx
The command line just typed has a syntax error.
.sx
27 - THAT COMMAND IS NOT ALLOWED WHILE PRINTING
.bx
The command just entered is not allowed to operate
while the system printer spooler is activated.
.sx
28 - WRONG HARDWARE CONFIGURATION
.bx
This error usually implies insufficient memory installed
in the computer for a particular function or trying to
use the printer spooler without the hardware timer board installed.
.sx
.pg
.ce
DISK DRIVERS
.pp
The following information is for those users who wish to write their own
disk drivers to interface with some other disk configuration
than is supplied by the vendor.  Technical
Systems Consultants is not in a position to write disk drivers for
other configurations, nor do they guarantee the proper
functioning of FLEX with user-written drivers.
.pp
The disk drivers are the interface routines between FLEX and the
hardware driving the floppy disks themselves.  The drivers released with
the FLEX System are designed to interface with the Western Digital
1771 or 1791 Floppy Disk Formatter/Controller chip.
.pp
The disk drivers are located in RAM at addresses $DE00 - $DFA0.
All disk functions are vectored jumps at the beginning of this area.
The disk drivers need not handle retries in case of errors; FLEX
will call them as needed.  If an error is detected, the routines should
exit with the disk hardware status in the B-register and the CPU
Z-Condition code bit clear (issue a TST B before returning to accomplish this).
FLEX expects status responses as produced by the Western Digital
1771 Controller.  These statuses must be simulated if some other controller
is used.  All drivers should return with the X,Y and U registers unchanged.
All routines are enterd with a JSR instruction.
.sp
.pp
$DE00 - Read
.bx
.nf
Entry - (X) = FCB Sector Buffer Address
        (A) = Track Number
        (B) = Sector Number
.fi
The sector referenced by the track and sector numbers is to be
read into the Sector Buffer area of the indicated FCB.
.sx
$DE03 - Write
.bx
.nf
Entry - (X) = FCB Sector Buffer Address
        (A) = Track Number
        (B) = Sector Number
.fi
The content of the Sector Buffer area of the indicated FCB is
to be written to the sector referenced by the track and sector numbers.
.sx
$DE06 - Verify
.bx
.nf
Entry - (No parameters)
.fi
The sector just written is to be verified to determine if there are CRC
errors.
.sx
$DE09 - Restore
.bx
.nf
Entry - (X) = FCB Address
Exit -  CC, NE, & B=$B if write protected
        CS, NE, & B=$F if no drive
.fi
A Restore Operation (also known as a Seek to Track 00) is to
be performed on the drive whose number is in the FCB.
.sx
.nl 20
$DE0C - Drive Select
.bx
Entry - (X) = FCB Address
.br
The drive whose number is in the FCB is to be selected.
.sx
$DE0F - Check Drive Ready
.bx
.nf
Entry - (X) = FCB Address
Exit - NE & CS if drive not ready
       EQ & CC if drive ready
.fi
.br
This routine is setup for FLEX systems where it is possible to
check the
drive whose number is in the FCB for a ready
status after selecting that drive and delaying long enough
for the drive motor to come up to speed (approx. 2 seconds).
This is not possible in the minifloppy version
due to hardware limitations.  In this case,
this routine should not delay
and should simply return a drive ready status
if the drive number in the FCB is 0 or 1 or a
drive not ready status for any other drive number.
.sx
$DE12 - Quick Check Drive Ready
.bx
This routine is the same as Drive Check Ready except
the 2 second delay is not done.
This assumes the drive motor is already up to speed.
For minifloppy versions, there is no difference
in the two and this
routine can simply be a jump to the Check Drive Ready routine.
.sx
.pg
.ce
Diskette Initialization
.pp
The NEWDISK command is used to "initialize" a diskette for use by
the FLEX Operating System.  The initialization process writes
the necessary track and sector addresses in the sectors of a "soft-
sectored" diskette such as is used by FLEX.
In addition,
the initialization process links together all of the sectors on the
diskette into a chain of available sectors.
.pp
The first track on the diskette, track 0, is special.  None of the
sectors on track 0 are available for data files, they are reserved for
use by the FLEX system.  The first two sectors contain a "boot"
program which is loaded by the "D" command of the SBUG
monitor or by whatever comparable ROM based bootstrap is in use.
The boot program, once loaded, then loads FLEX from the
diskette.  Another sector on track 0 is the System Information Record.
This sector contains the track and sector addresses of the beginning
and ending sectors of the chain of free sectors, those available for data
files.  The rest of track 0 is used for the directory of file names.
.pp
After initialization, the free tracks on the diskette have a common
format.  The first two bytes of each sector contain the track and
sector number of the next sector in the chain.  The next two bytes are
used to store the logical record number of the sector in the file.
The remaining 252 bytes are zero.
Initially, all record number bytes are zero.
When data is stored in a file, the two linkage bytes at the beginning
of each sector are modified to point to the next sector in the file, not the next sector in
the free chain.  The sectors in the diskette directory on track 0
also have linkage bytes similar to those in the free chain and data
files.
.pp
A FLEX diskette is not initialized in the strict IBM standard
format.
In the standard format, the sectors on the diskette should be physically in the same
order as they are logically, i.e. sector 2 should follow sector 1, 3
follow 2, etc. On a FLEX diskette, the sectors are interleaved so that there is time,
after having read one sector, to process the data and request the next sector before it has passed under the head.  If
the sectors are physically adjacent, the  processing time must be
very short.  The interleaving of the sectors allows more time for
processing the data.  The phenomena of missing a sector because of long processing
times is called "missing revolutions", and results in very slow running
time for programs.  The FLEX format reduces the number of missed
revolutions, thus speeding up programs.
.pg
.ce
DESCRIPTION OF A DIRECTORY SECTOR
.pp
Each sector in the directory portion of a FLEX diskette contains 10
directory entries.  Each entry refers to one file on the diskette.  In
each sector, the first four bytes contain the sector linkage information
and the next 12 bytes are not used.  When reading information from
the directory using the FMS Get Information Record function,
these 16 bytes are skipped automatically as each sector is read; the
user need not be concerned with them.
.pp
Each entry in the directory contains the exact same information
that is stored in the FCB bytes 4-27.  See the description of the
File Control Block (FCB) for more details.
.pp
A directory entry which has never been used has
a zero in the first byte of the file name.  A directory entry which has been
deleted has the leftmost bit of the name set (i.e. the first byte of the
name is negative).
.sp 3
.ce
DESCRIPTION OF A DATA SECTOR
.pp
Every sector on a FLEX diskette (except the two BOOT sectors)
has the following format:
.bx
Bytes 0-1 Link to the next sector
.br
Bytes 2-3 File Logical Record Number
.br
Bytes 4-255 Data
.sx
If a file occupies more than one sector, the "link to the next
sector" portion contains the track and sector numbers, respectively,
of the next sector in the file.  These bytes are zero in the last
sector of a file, indicating that no more data follows (an  "end-of-file"
condition).
The user should never manually change the linkage bytes
of a sector.
These bytes are automatically managed by FMS.
In fact, the user need not be concerned at all with sector linkage
information.
.pg
.ce
DESCRIPTION OF A BINARY FILE
.pp
A FLEX binary file may contain anything as data; all ASCII
characters are allowed.  Each binary file is composed of one or more binary
records.  There may be more than one binary record in a single sector.
.pp
A binary record looks as follows:  (byte numbers are relative to the
start of the record, not the beginning of a sector)
.bx
Byte 0   Start of record indicator ($02, the ASCII STX)
.br
Byte 1   Most significant byte of the load address
.br
Byte 2   Least significant byte of the load address
.br
Byte 3   Number of data bytes in the record
.br
Byte 4-n  The binary data in the record
.sx
The load address portion of a binary record contains the address
where the data resided when it was written to the file with the
FLEX SAVE command.  When the file is loaded for execution or
use, it will be put in the same memory areas from which it was
SAVED.
.pp
A binary file may also contain an optional transfer address record.
This record gives the address in memory of te entry point of a binary
program.  The format of a transfer address record is as follows:
.bx
Byte 0  Transfer Address Indicator ($16, ASCII ACK)
.br
Byte 1  Most significant byte of the transfer address
.br
Byte 2  Least significant byte of the transfer address
.sx
If a file contains more than one transfer address record
(caused by appending binary files which contain
transfer addresses), the last
one encountered by the load process is the one that is used, the
others are ignored.
.pp
When reading or writing a binary file through the File Management
System from a user program, the calling program must process the record indicator
bytes and load addresses itself; FLEX does not supply or process
this information for the user.
.pg
DESCRIPTION OF A TEXT FILE
.pp
A text file (also called an "ASCII file" or "coded file")  contains only
printable ASCII characters plus a few special-purpose control characters.
There is no "load address" associated with a FLEX text file as there
is with FLEX binary files.  It is the responsibility of the program
which is reading the text file to put the data where it belongs.
.pp
The only control character which FLEX recognizes and processes in
a FLEX text file are:
.pp
$OD (ASCII CR or RETURN)
.bx
This character is used to mark the end of a line or record in the file.
.sx
$00 (ASCII NULL)
.bx
Ignored by FLEX; if encountered in the file, it is not returned to
the calling program.
.sx
$18 (ASCII CANCEL)
.bx
Ignored by FLEX; if encountered in the file, it is not returned to
the calling program.
.sx

$09 (ASCII HT or HORIZONTAL TAB)
.bx
This is a flag character which indicates that a string of spaces has been removed from the file as a
space-saving measure.  The next byte following the flag character is
a count of the number of space removed (2-127).  The calling program
sees neither the flag character nor the count character.  The proper
number of spaces are returned to the user program as successive
characters are requested
by the Read Next Byte function.  When writing a file, the spaces are
automatically deleted as the user program sends them to the File
Management System using the Write Next Byte function.  The
data compression is, therefore, transparent to the calling program.
(The above discussion is only valid if the file is open for Text
operations.
If open for Binary, the compression flag and count get passed
exactly as they appear in the file.)
.sx
.pg
.ce
WRITING UTILITY COMMANDS
.sp 2
Utility commands are best prepared by the use of an assembler.
FLEX reserves a block of memory in which medium size utilities
may be placed.
This memory starts at hex location $C100 and extends through
location $C6FF.
The system FCB at location $C840 may also be used
in user written utilities for either FCB space
or temporary storage.
No actual code should reside in this FCB space since
it would interfere with the loading of the utility
(FLEX is using that FCB while loading utilities).
.pp
An example will be given to demonstrate some of the
conventions and techniques which should be used when
writing utilities.
The example, which can be found on the following pages,
is a simple text file listing utility.
Its syntax is:
.dm bx
.sp
.in 5
.nf
.nl 4
..
.bx
LIST,[<FILE SPEC>]
.sx
The default extension on the file spec is TXT.
The utility will simply display the contents of a text file
on the terminal, line for line.
.pp
The following is a section by section description
of the LIST utility.
The first section of the source listing is a set of
EQUATES which tell the assembler where the various
DOS routines reside in memory.
These equates represent the addresses given in this
manual for "User Callable DOS System Routines".
.pp
The next two sections are also equates, the first to the
FMS entry points, and the second references the system FCB.
The actual program finally starts with the ORG statement.
In this program, we will make use of the Utility
Command space located at $C100, therefore, the ORG is
to $C100.
.pp
One of the conventions which should be observed
when writing DOS utilities is to always start
the program with a BRA instruction.
Following this instruction should be a 'VN FCB 1'
which defines the version number of the utility.
The 1 should of course be set to whatever the actual version
number is.
In this example, the version number is 1.
This convention allows the FLEX VERSION Utility
to correctly identify the version number of a command.
.pp
Moving down the program to the label called 'LIST2',
the program needs to retrieve the file specification
and get it into the FCB.
Pointing X to the FCB, we can make use of the DOS
resident subroutine called 'GETFIL' to automatically
parse the file spec, check for errors, and set the name
in the FCB correctly.
If all goes well in GETFIL, the carry should be
clear, otherwise there were errors in the file
spec and this fact needs reported.
If the carry is set, control is passed to the line
with the label 'LIST9'.
At this point, the error message is reported and control
is returned to FLEX.
.pp
If the file spec was correct, and the carry was clear
after the return from GETFIL, we want to set a default
file name extension of TXT.
The DOS subroutine named SETEXT will do exactly that.
First it is necessary to put the code for TXT in the
A accumulator (the code is 1).
X needs to be pointing to the FCB which it still is.
The '1' is also put in the FCB for the future open operation.
The call is made to SETEXT and the file name
is now correctly set up in the FCB.
Note that no errors can be generated by a call to SETEXT.
.pp
Now that we have the file spec, it is necessary to open the
requested file for read.
X is still pointing to the FCB so it is not necessary to reset.
The FMS Function Code for 'open a file for read' is 1
which was previously put in the FCB location 0.
A call to FMS is now made in an attempt to open the file.
Upon return, if the Z-condition code is set, there were no
errors.
If there was an error, the 'BNE LIST9' will take us to
the code to report the error.
This section of code is the desired way to handle most
FMS caused disk errors.
The first thing to do is call the DOS routine
RPTERR which will print the disk error message
on the monitor terminal.
Next, all open disk files should be closed.
This can be easily accomplished by a call to the
FMS close entry (FMSCLS).
Finally, return control back to DOS by jumping to
the WARM START entry.
If the file opened successfully, control will be transfered
to the line with the label 'LIST4'.
At this time it is desirable to fetch characters one at a time
from the file, printing them on the monitor terminal as
they are received.
Since line feeds are not stored in text files
(carriage returns mark the end of lines, but the next line
will follow immediately), each carriage return received from
the file is not output as is, but instead a call to the DOS
routine 'PCRLF' is made to print a carriage return and
a line feed.
As each character is received from the file (by a call
to FMS at label LIST4), the error status is checked.
If an error does occur, control is transferred to 'LIST6'.
Since FLEX does not store an End of File character
with a file, the only mechanism for determining the end
of a file is by the End of File error generated by FMS.
At 'LIST6', the error status is checked to see
if it is 8 (end of file status).
If it is not an 8, control is transfered to the error
handling routine described above.
If it is an End of File, we are finished listing the file
so it must now be closed.
The FMS Function Code for closing a file is 4.
This is loaded into A and stored in the FCB.
Calling FMS will attempt to close the file.
Upon return, errors are checked, and if none found,
control is transfered back to DOS by the jump to 'WARMS'.
.pp
This example illustrates many of the methods used
when writing utilities.
Many of the DOS and FMS routines were used.
The basic idea of file opening and closing were demonstrated,
as well as file I/O.
The methods of dealing with various types of errors were
also presented.
Studying this example until it is thoroughly
understood will make writing your own disk commands
and disk oriented programs an easy task.
.pg
.nf
                    *
                    * SIMPLE TEXT FILE LIST UTILITY
                    *

                    * COPYRIGHT (C) 1979 BY
                    *
                    * TECHNICAL SYSTEMS CONSULTANTS, INC.

                    * DOS EQUATES

              CD03  WARMS   EQU    $CD03     DOS WARMS START ENTRY
              CD2D  GETFIL  EQU    $CD2D     GET FILE SPECIFICATION
              CD18  PUTCHR  EQU    $CD18     PUT CHARACTER ROUTINE
              CD24  PCRLF   EQU    $CD24     PRINT CR & LF
              CD33  SETEXT  EQU    $CD33     SET DEFAULT NAME EXT
              CD3F  RPTERR  EQU    $CD3F     REPORT DISK ERROR

                    * FMS EQUATES

              D406  FMS     EQU    $D406
              D403  FMSCLS  EQU    $D403

                    * SYSTEM EQUATES

              C840  FCB     EQU    $C840     SYSTEM FCB

                    * LIST UTILITY STARTS HERE

 C100                       ORG    $C100

 C100 20   01       LIST    BRA    LIST2     GET AROUND TEMPS

 C102 01            VN      FCB    1         VERSION NUMBER

 C103 8E   C840     LIST2   LDX    \#FCB      POINT TO FCB
 C106 BD   CD2D             JSR    GETFIL    GET FILE SPEC
 C109 25   34               BCS    LIST9     ANY ERRORS?
 C10B 86   01               LDA    \#1        SET UP CODE
 C10D A7   84               STA    0,X       SAVE FOR READ OPEN
 C10F BD   CD33             JSR    SETEXT    SET TXT EXTENSION
 C112 BD   D406             JSR    FMS       CALL FMS - DO OPEN
 C115 26   28               BNE    LIST9     CHECK FOR ERROR
 C117 8E   C840     LIST4   LDX    \#FCB      POINT TO FCB
 C11A BD   D406             JSR    FMS       CALL FMS - GET CHAR
 C11D 26   0E               BNE    LIST6     ERRORS?
 C11F 81   0D               CMPA   \#$D       IS CHAR A CR?
 C121 26   05               BNE    LIST5
 C123 BD   CD24             JSR    PCRLF     OUTPUT CR & LF
 C126 20   EF               BRA    LIST4     REPEAT
 C128 BD   CD18     LIST5   JSR    PUTCHR    OUTPUT THE CHARACTER
 C12B 20   EA               BRA    LIST4     REPEAT SEQUENCE
.pg
 C12D A6   01       LIST6   LDA    1,X       GET ERROR STATUS
 C12F 81   08               CMPA   \#8        IS IT EOF ERROR?
 C131 26   0C               BNE    LIST9
 C133 86   04               LDA    \#4        CLOSE FILE CODE
 C135 A7   84               STA    0,X       STORE IN FCB
 C137 BD   D406             JSR    FMS       CALL FMS - CLOSE FILE
 C13A 26   03               BNE    LIST9     ERRORS?
 C13C 7E   CD03             JMP    WARMS     RETURN TO FLEX

 C13F BD   CD3F     LIST9   JSR    RPTERR    REPORT ERROR
 C142 BD   D403             JSR    FMSCLS    CLOSE ALL FILES
 C145 7E   CD03             JMP    WARMS     RETURN TO FLEX

                            END    LIST
.fi
.pg
.ce
THE DOS LINK UTILITY
.sp 2
The LINK Utility provided with FLEX is a special purpose
command.
Its only function is to inform the "disk boot", which
is on track 0, where the program resides
which is to be loaded during the boot operation.
Normally, LINK is used to set the pointer to the
DOS program.
Since DOS may reside anywhere on the disk, LINK
takes the starting disk address of the file and stores it
in a pointer in the boot sector.
When the boot program is later executed, it simply takes this
disk address, and loads the binary file which resides
at that location.
The load process is terminated upon the receipt of
a transfer address record.
At this time, control is transferred to the program just
loaded by jumping to the address specified in the transfer
address record.
If the 'linked' program is ever moved on the disk, then
it must be re-linked so the boot knows the new disk address.
.pp
LINK may be used in some specialized applications.
One is the development of custom operating systems.
The user may write his own operating system,
link it to the boot, and use it exactly as FLEX is used now.
It may also be desirable for special disks to boot in
specialized programs rather than the operating system.
If this is done, remember that unless the DOS is
loaded during the boot process, there will not be any disk
drivers or File Management System resident in memory.
.pg
.rs
.pg
.rs
.ce
PRINTER ROUTINES
.sp 2
There are two printer related programs provided with FLEX.
One is the P Utility, the other is the PRINT.SYS file
which is the actual set of printer drivers (initialize
printer and output character).
The P command source listing is provided on the following pages
and should be self explanatory.
Below you will find the requirements of the PRINT.SYS
file.
No source listing is provided here since one is
given in the "FLEX User's Manual".
.sp 2
'PRINT.SYS' FILE REQUIREMENTS
.pp
The PRINT.SYS file needs to provide the system with three
basic printer routines, one for printer port initialization,
one for printer status, and one for output character to printer
routine.
The P routine and the system printer spooler use these
routines to communicate with the printer.
A source listing of the provided routines are included
in the "FLEX User's Manual" and will not be duplicated here.
The three routines and their requirements are listed here.
.pp
.in 8
.si -8
PINIT\ \ \ ($CCC0-CCD7) This routine should initialize the
printer port.
No registers need be preserved.
.br
.si -8
PCHK\ \ \ \ ($CCD8-CCE3) This routine should check to see if the
printer can accept another character.
Return Negative CC status if can accept, Plus if can not.
Preserve A, B, X, Y, and U.
.br
.si -8
POUT\ \ \ \ ($CCE4-CCF7) This routine should output
the character in A after calling PCHK to verify the printer
can accept the character.
Preserve B, X, Y, and U.
.in 0
.sp 2
THE SYSTEM PRINTER SPOOLER
.pp
FLEX contains a printer spooler module.
It requires the installation of an interval timer board
for operation.
Essentially, the spooler is a multi-tasking system,
with the output to printer function being a low priority
task.
Any requested disk service will cause the printer task to
temporarily halt until the disk has been used.
It should be noted that the SWI3 CPU vector is adjusted
in this task scheduler.
The PRINT command is used to activate the spooler which
in turn prints the files (if any) in the print queue.
Exact details of the spooling operation are not
available at this time.
.pg
.nf
                    *
                    * "P" UTILITY COMMAND
                    *
                    * THE P COMMAND INITIALIZES A PORT AND
                    * CHANGES THE OUTCH JUMP VECTOR IN FLEX
                    *

                    * COPYRIGHT (C) 1979 BY
                    *
                    * TECHNICAL SYSTEMS CONSULTANTS, INC.

                    * EQUATES

              C840  FCB     EQU    $C840
              CD30  LOAD    EQU    $CD30
              D406  FMS     EQU    $D406
              D403  FMSCLS  EQU    $D403
              CD06  RENTER  EQU    $CD06
              0004  NFER    EQU    $4
              CC09  PAUSE   EQU    $CC09
              CD1E  PSTRNG  EQU    $CD1E
              CD3F  RPTERR  EQU    $CD3F
              CD03  WARMS   EQU    $CD03
              CC11  LSTTRM  EQU    $CC11
              CC02  EOL     EQU    $CC02
              CCC0  PINIT   EQU    $CCC0
              CCE4  POUT    EQU    $CCE4
              CD0F  OUTCH   EQU    $CD0F
              CCFC  PR1     EQU    $CCFC

 C100                       ORG    $C100

 C100 20   01       P       BRA    P1        BRANCH AROUND TEMPS

 C102 01            VN      FCB    1         VERSION NUMBER

 C103 B6   CCFC     P1      LDA    PR1       CHECK SYSTEM PROCESS REG
 C106 27   09               BEQ    P12       IS IT BUSY?
 C108 8E   C840             LDX    \#FCB      POINT TO FCB
 C10B C6   1B               LDB    \#27       SET BUSY ERROR
 C10D E7   01               STB    1,X       STUFF IN FCB
 C10F 20   45               BRA    P3        GO REPORT ERROR
 C111 B6   CC11     P12     LDA    LSTTRM    GET LAST TERMINATOR
 C114 81   0D               CMPA   \#$D       IS IT A CR?
 C116 27   47               BEQ    P8
 C118 B1   CC02             CMPA   EOL       IS IT EOL CHARACTER?
 C11B 27   42               BEQ    P8
 C11D 7F   CC09             CLR    PAUSE     DISABLE THE PAUSE FEATURE

                           - continued -
.pg
 C120 B6   CCE4             LDA    POUT      GET 1ST BYTE OF SPACE
 C123 81   39               CMPA   \#$39      IS IT RTS?
 C125 26   14               BNE    P15       IF NOT - THEN LOADED
 C127 8E   C840             LDX    \#FCB      POINT TO FCB
 C12A 86   01               LDA    \#1        OPEN FILE FOR READ
 C12C A7   84               STA    0,X
 C12E BD   D406             JSR    FMS       CALL FMS
 C131 26   14               BNE    P2        CHECK FOR ERRORS
 C133 86   FF               LDA    \#$FF      SET FOR BINARY READ
 C135 A7   88 3B            STA    59,X      SET COMPRESSION FLAG
 C138 BD   CD30             JSR    LOAD      CALL FLEX'S LOADER
 C13B BD   CCC0     P15     JSR    PINIT     GO INITIALIZE PORT
 C13E 8E   CCE4             LDX    \#POUT     GET OUTPUT ADDRESS
 C141 BF   CD10             STX    OUTCH+1   STUFF IN FLEX
 C144 7E   CD06             JMP    RENTER    RETURN TO FLEX

 C147 A6   01       P2      LDA    1,X       GET ERROR CODE
 C149 81   04               CMPA   \#NFER     IS IT "NO SUCH FILE"?
 C14B 26   09               BNE    P3
 C14D 30   8D 0014          LEAX   NOPST,PCR POINT TO MESSAGE
 C151 BD   CD1E     P25     JSR    PSTRNG    GO PRINT IT
 C154 20   03               BRA    P4

 C156 BD   CD3F     P3      JSR    RPTERR    REPORT ERROR
 C159 BD   D403     P4      JSR    FMSCLS    CLOSE ALL FILES
 C15C 7E   CD03             JMP    WARMS     RETURN TO FLEX

 C15F 30   8D 0018  P8      LEAX   ERSTR,PCR POINT TO STRING
 C163 20   EC               BRA    P25       GO PRINT IT

 C165 22 50 52 49   NOPST   FCC    '"PRINT.SYS" NOT FOUND'
 C17A 04                    FCB    4
 C17B 22 50 22 20   ERSTR   FCC    '"P" MUST BE FOLLOWED BY A COMMAND'
 C19C 04                    FCB    4

                    * THE FOLLOWING CODE IS LOADED INTO
                    * THE SYSTEM FCB WHEN THE P COMMAND IS
                    * LOADED INTO MEMORY.
                    * IT PRESETS THE FILE NAME IN THE FCB.

 C843                       ORG    $C843

 C843 FF                    FCB    $FF
 C844 50 52 49 4E           FCC    'PRINT'
 C849 00 00 00              FCB    0,0,0
 C84C 53 59 53              FCC    'SYS'

                            END    P
.fi
.pg
.rs
.pg
.ce
INTERRUPTS IN FLEX
.pp
FLEX makes extensive use of interrupts during printer spooling.
Anytime there are files in the PRINT Queue (as a result of
using the PRINT command) the timer board (MP-T in I/O slot \#4)
is activated.  This board is initialized to output interrupts
every 10 milliseconds.
These are IRQ type interrupts and FLEX sets the IRQ vector to
point to its IRQ routine.  When the PRINT Queue is empty, the
timer is shut off and no interrupts are generated.  The SWI3
instruction is also used quite extensively in FLEX.  The SWI3
vector in RAM is set by FLEX to point to its SWI3 routine.
Because of the SWI3 and IRQ use, the MON command will not
permit leaving FLEX while there is a file in the PRINT Queue.
.pp
All FLEX utilities, the Editor, the Assembler, the Text Processor,
and BASIC are interruptable programs.  When writing your own
programs, if they are to be used while printing with the PRINT
command (files in the print queue), they should be written to
be interruptable as well.  At no time should the IRQ or SWI3
vectors be changed in a utility which is to be run while printing.
In general, good programming practice will yield interruptable
programs.
.sp 3
.ce
SYSTEM MEMORY MAP
.pp
The following memory map shows the location of user RAM and
several major sections of the FLEX operating system.  All
addresses are in hexadecimal.
.pp
.nf
ADDRESS          DESCRIPTION
0000 - BFFF      User RAM (Some of the lower end of this area is used
                           by certain utilities such as NEWDISK.)
C000 - C07F      Stack Area (SP is initialized to C07F)
C080 - C0FF      Input Buffer
C100 - C6FF      Utility Command Area
C700 - C83F      Scheduler & Printer Spooler
C840 - C97F      System FCB
C980 - CBFF      System Files Area
CC00 - D3FF      DOS
D400 - DDFF      FMS
DE00 - DFFF      Disk Drivers
.fi
