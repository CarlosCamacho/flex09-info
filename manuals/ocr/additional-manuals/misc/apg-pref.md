# APG-PREF

> Source: `manuals/misc/TSC_MAN - FLEX Software Archive - Manual and Documentation Archive - Includes APG-MAC, APG-PREF, APG1.zip!TSC_MAN.dsk!APG-PREF.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.sr
.ln 72
.lt 72
.dm fo
.tl ''-%-''
:pg
:st
..
.rs
.sp 53
.ce 5
Copyright (C) 1979 by
TECHNICAL SYSTEMS CONSULTANTS, INC.
P.\ O.\ Box 2574
West Lafayette, Indiana 47906
.sp
All Rights Reserved
.pg
:st
.at -3 fo
.rs
.sp 20
.ce
COPYRIGHT NOTICE
.sp
The FLEX~ Operating System and all of its associated
documentation are provided for personal use and enjoyment by the
purchaser.
The entire program and all documentation, including this manual
are copyrighted by Technical Systems Consultants, Inc.,
and reproduction by any means is strictly prohibited.
Use of the FLEX Operating System and/or its documentation,
or any part thereof, for any purpose other than single end use
is strictly prohibited.
.sp 30
FLEX~ is a trademark of Technical Systems Consultants, Inc.
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
        Comments About Commands/18
        Examples of DOS Calls/19

 III. File Management System/21
        File Control Blocks/22
        FMS Entry Points/26
        FMS Global Variables/27
        FMS Function Codes/28
        Random Files/37
        Error Numbers/38

  IV. Disk Drivers/41

   V. Disk Structures/43
        Diskette Initialization/43
        Directory Sectors/44
        Data Sectors/44
        Binary Files/45
        Text Files/46

  VI. Writing Utility Commands/47
        Example Program/49

 VII. The DOS LINK Utility/51

VIII. Printer Routines/53
        The P Utility/54

  IX. General Information/57
        Interrupts in FLEX/57
        System Memory Map/57
.pg
.rs
.pg
.rs
.fi
.sp 12
.ce
Preface
.sp 2
The purpose of the Advanced Programmer's Manual is to provide
the assembler language programmer with the information
required to make effective use of the available system routines
and functions.
This manual applies to the 6809 version of FLEX.
The programmer should keep this manual close at hand while learning
the system.
It is organized to make it convenient as a quick reference
guide as well as a thorough reference manual.
The manual is not written for the novice programmer
and assumes the user to have a thorough understanding
of assembler language programming techniques.
.pg
.rs
.pg
