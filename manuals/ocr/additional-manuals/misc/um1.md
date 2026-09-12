# UM1

> Source: `manuals/misc/TSC_MAN - FLEX Software Archive - Manual and Documentation Archive - Includes APG-MAC, APG-PREF, APG1.zip!TSC_MAN.dsk!UM1.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

-26-





                                        FLEX Advanced Programmer's Guide


                            GLOBAL VARIABLES

This section describes those variables within the File Managespace Echo Character
.bx
This is the character the routine INBUF will echo
upon the receipt of a backspace character.
If the backspace echo character is set to a $08,
and the backspace character is also a $08, FLEX will
output a space ($20) prior to thd Number is 16 and
the Backup One Record function is performed, the file
would be positioned to read the first byte of record \#15.
The file must be open for read or update before this function
may be used.
See 'Random Files' section for more details.
on Flag
.bx
If a file is open for read or write, this byte indicates if space
compression is being performed.  A value of zero indicates that
space compression is to be done when reading or writing the data.
This is the value that is stored by the Opennes.
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
All file space is allocated dd by the programmer in memory.
Each entry in the User Command Table has the following format:
.bx
.nf
FCC  'command'  (Name that will invoke the program)
FCB  0
FDB  entry address (This is the entry address of the program)
.fi
.sx
The entire table is es, Inc.
.pg
.rs
.sp 5
.ce
CONTENTS
.sp 2
.nf
.tc /
.ta 58
   I. Introduction/ 1

  II. Disk Operating System/ 3
        DOS Memory Map/ 3
        User Callable Routines/ 8
        User Written Commands/16
        Disk Resident Commands/17
        Comme
