# UM2

> Source: `manuals/misc/TSC_MAN - FLEX Software Archive - Manual and Documentation Archive - Includes APG-MAC, APG-PREF, APG1.zip!TSC_MAN.dsk!UM2.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

ts.  The directory
     sector  just  updated  is  then  re-written  automatically  on  the
     diskette  to  ensure  that  the  directory  is  up-to-date.  A user
     program should normally never  have  to  write  into  a  directory.
     Careless 7 - Printer Initialize
.bx
This area is reserved for the overlay of the system printer
initializization subroutine.
.sx
$CCD8-$CCE3 - Printer Ready Check
.bx
This area is reserved for the overlay of the system "check
for printer ready" subroutine.
.sx
ector Map (FSM) is a map or directory which tells
the system where each record (sector) of the file is located on
the disk.
The FSM is always two sectors in length and is assigned
record number 0 in the file.
This implies that a data file requiring 5 sne to close any files left open by the command processor.
User-written programs may also use this entry point to close all open
files; however, if an error is detected in trying to close a file,
any remaining files will not be closed.  Thus the programe desired resulting file spec should default to
a TXT extension.
.bx
.nf
LDX   \#FCB    Point to FCB
JSR   GETFIL  Get file spec into FCB
BCS   ERROR   Report error if one
LDA   \#1      Set extension code (TXT)
JSR   SETEXT  Set the default extension
ssembler language programming techniques.
.pg
.rs
.pg
