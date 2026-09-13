# UM-PREF

> Source: `manuals/misc/TSC_MAN - FLEX Software Archive - Manual and Documentation Archive - Includes APG-MAC, APG-PREF, APG1.zip!TSC_MAN.dsk!UM-PREF.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.ln 72
.lt 72
.nr b 6
.dm hd header
:st
:sp 2
:sp 2
.au 1
.nr x 0
.nr w 0-#b
.if #v .fz
.ns
..
.dm fo footer
.nr v 0
.if #x .xf
.ch fo -#b
:pg
..
.dm bo bottom
.tl ''-%-''
..
.dm fn begin footnote
.da ft
.ev 1
.if !#+x-1 .fs
..
.dm ef end f
.br
.ev 0
.di
.nr w -#v
.ch fo #w
.if #n-#p-#w .ch fo #n+1
..
.dm fs
--------------------
.br
..
.dm fz
.fn
.nf
.fy
.fi
.ef
..
.dm fx
.di fy
..
.dm xf
.ev 1
.nf
.ft
.rm ft
.di
.ev 0
..
.dm pp
.sp 1
.nl 3
..
.at 0 hd
.at -#b fo
.at -4 bo
.ch fo 70
.at -#b fx
.ch fo -#b
.ev 1
.au 1
.ln 65
.ju
.ev 0
.sr
.sp 16
.ce
FLEX User's Manual
.sp 30
.ce 6
Copyright ^ 1979 by
Technical Systems Consultants, Inc.
PO Box 2574
West Lafayette, Indiana  47906
.sp
All Rights Reserved
.pg
.rs
.sp 20
.ln 55
.lm 8
.ce
COPYRIGHT NOTICE
.sp 2
This entire manual and documentation
is provided for personal use and enjoyment by the
purchaser.
The entire contents have been copyrighted by
Technical Systems Consultants, Inc., and
reproduction by any means is prohibited.
Use of this manual, or any part thereof, for any purpose
other than single end use is strictly prohibited.
.br
.lm 0
.ln 72
.pg
.rs
.sp 8
.ce
PREFACE
.sp 2
The purpose of this User's Guide is to
provide the user of the FLEX Operating System
with the information required to make effective use
of the available system commands and utilities.
This manual applies to FLEX 9.0 for full size
and mini floppy disks.
The user should keep this manual close at hand while becoming
familiar with the system.
It is organized to make it convenient as a quick reference guide,
as well as a thorough reference manual.
.pg
.rs
.pg
.rs
.ce
TABLE OF CONTENTS
.sp 2
.ta 62
.in 5
.nf
.tc /
/Page
.si -5
CHAPTER 1
I.    Introduction/1.1
II.   System Requirements/1.2
III.  Getting the System Started/1.2
IV.   Disks Files and Their Names/1.3
V.    Entering Commands/1.5
VI.   Command Descriptions/1.7

.si -5
CHAPTER 2
I.   Utility Command Set/2.1
      APPEND/A.1
      ASN/A.2
      BUILD/B.1
      CAT/C.1
      COPY/C.2
      DATE/D.1
      DELETE/D.2
      EXEC/E.1
      I/I.1
      JUMP/J.1
      LINK/L.1
      LIST/L.2
      NEWDISK/N.1
      O/O.1
      P/P.1
      PRINT/P.2
      PROT/P.3
      QCHECK/Q.1
      RENAME/R.1
      SAVE/S.1
      STARTUP/S.2
      TTYSET/T.1
      VERIFY/V.1
      VERSION/V.2
      XOUT/X.1

.SI -5
CHAPTER 3
I.    Disk Capacity/3.1
II.   Write Protect/3.1
III.  The 'RESET' Button/3.1
IV.   Notes on the P Command/3.1
V.    Accessing Drives Not Containing a Disk/3.1
VI.   System Error Numbers/3.2
VII.  System Memory Map/3.3
VIII.\ FLEX Input\/Output Subroutines/3.4
IX.   Booting the FLEX Disk Operating System/3.6
X.    Requirements for 'PRINT.SYS' driver/3.7

.si -5
CHAPTER 4
I.    Command Summary/4.1
