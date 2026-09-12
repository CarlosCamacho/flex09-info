# FLEX-AP

> Source: `manuals/misc/TSC_MAN - FLEX Software Archive - Manual and Documentation Archive - Includes APG-MAC, APG-PREF, APG1.zip!TSC_MAN.dsk!FLEX-AP.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

are modified to point to the next sector in the file, not the next sector in
the free chain.  The sectors in the diskette directory on track 0
also have linkage bytes similar to those in the free chain and data
files.
.pp
A FLEX diskette is not initiaet to zero (Read/Write Next Byte Function)
in anticipation of I/O on the file.
.sp
Example:
.sp
.in 10
.nf
LDX   \#FCB    Point to the FCB
[ Set up file spec in FCB ]
LDA   \#1      Set open function code
STA   0,X     Store in FCB
JSR   FMS     Call F the slowing down
of file read times, because of the increased number of
head seeks necessary while reading the file.
.pg
.ce
THE FILE CONTROL BLOCK (FCB)
.pp
The FCB is the heart of the FLEX File Management System (FMS).
An FCB is a 320 byte long blocd by the programmer in memory.
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
