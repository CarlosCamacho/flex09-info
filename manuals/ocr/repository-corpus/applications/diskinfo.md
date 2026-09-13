# DISKINFO

> Source: `apps/tabula/CSCPRODS_2 - Tabula - Source Code and Build Files.zip!CSCPRODS_2.DSK!DISKINFO.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DM HD
:SP 2
..
.DM FT
:SP 2
:TL '	CSC DISK and BASIC UTILITIES' % 'COPYRIGHT 1983		'
:PG
..
.AT 1 HD
.AT -7 FT
.LM 5
.LT 75
.LN 70
.SP 2
.CE
FLEX DISK and BASIC UTILITIES
.sp
.ce 2
by Edgar M.\ (Bud) Pass, Ph.D.
.sp
.ce 4
Copyright (c) 1983 by
Computer Systems Consultants, Inc.
1454 Latta Lane, Conyers, GA 30207
Telephone Number 404-483-1717/4570
.sp 5
.ce
Copyright Notice
.sp
This manual and any accompanying materials described by this manual
are copyrighted and should not be reproduced in any form, except as
described here, without prior written consent of an officer
of Computer Systems Consultants, Inc. The accompanying diskette may be
duplicated for backup purposes by the original license purchaser.
Protecting the software from unauthorized use will protect your access
to new good software in the future.	Programs such as the DISK and BASIC UTILITIES
would cost each user many hours or many thousands of dollars to
develop individually.	They may be priced so low only because of the
expected large volume of sales.	So let your friends pay for their
software, too!
.sp 3
.ce
Limited Warranty Statement
.sp
Computer Systems Consultants, Inc., and its agents, makes no express
or implied warranties concerning the applicability of the DISK and BASIC UTILITIES
to a particular purpose. Liability is limited to the original license
cost.	This warranty is presented expressly in lieu of all other
warranties, expressed or implied, including those of merchantability
and fitness for use and of all other obligations on the part of
Computer Systems Consultants, Inc.\ and its agents.
.sp 3
.ce
Problems and Improvements
.sp
Users are encouraged to submit problems and to suggest or to provide
improvements for the DISK and BASIC UTILITIES. Such input will be processed on a
best effort basis. Computer Systems Consultants reserves the right to
make program corrections or improvements on an individual or wholesale
basis, as required. The company is under no obligation to provide
corrections or improvements to all users of the DISK and BASIC UTILITIES.	In the
case of specific situations requiring extensions to the DISK and BASIC UTILITIES or
major assistance in their use, consulting is available on a pre-arranged,
for-fee basis.
.pg
.ce
CAPABILITIES OF PACKAGE
.sp 2
The DISK and BASIC UTILITIES package provides the following capabilities on the
6809 under Technical Systems Consultants' FLEX:
.sp
.nf
.in 5
compare two disks
backup one disk to another
edit sectors on disk
copy file containing CRC errors
linearize free chain on disk
print disk identificaion
test disk for errors
sort and replace disk catalog
sort master directory by file name
interfile updates into master directory
select files from master directory
sort master directory updates
print paginated list of files
compare two BASIC programs
merge two BASIC programs
check BASIC sequence numbers
generate updates from two BASIC programs
compare two unsequenced files
.sp
generate disk sort
resequence BASIC program
cross-refernece BASIC program
.in 0
.fi
.sp 2
.ce
PROGRAMS IN DISK UTILITIES PACKAGE
.sp 2
The DISK UTILITIES package consists of the programs named and described
below.	The BASIC UTILITIES package is described at the end of this
document.	They are all provided in source format.
.sp
.nf
.in 5
DISKBADC.TXT copy file containing CRC errors
DISKBCOM.BAS compare two BASIC programs
DISKBMER.BAS merge two BASIC programs
DISKBORD.BAS check BASIC sequence numbers
DISKBUPD.BAS generate updates from two BASIC programs
DISKCOMP.TXT compare two disks
DISKCOPY.TXT backup one disk to another
DISKEDIT.TXT edit sectors on disk
DISKFREE.TXT linearize free chain on disk
DISKIDEN.TXT print disk identificaion
DISKLCAT.BAS print paginated list of files
DISKMDFS.BAS sort master directory by file name
DISKMDIN.BAS interfile updates into master directory
DISKMDSL.BAS select files from master directory
DISKMDUP.BAS sort master directory updates
DISKSCAT.TXT sort and replace disk catalog
DISKTEST.TXT test disk for errors
DISKUCOM.BAS compare two unsequenced files
.in 0
.fi
.sp
The programs in the list above that have names ending with
".TXT" must be assembled before use, with an appropriate assembler.
For best results, programs that have names ending with ".BAS" should
be compiled with the TSC BASIC COMPILE command before use.
.pg
.ce 3
*****************************************************************
* DISKBADC.TXT copy file containing CRC errors	*
*****************************************************************
.sp 2
DISKBADC input-file output-file
.sp 2
This program copies the contents of a disk file to another disk file,
ignoring CRC error indications returned by the disk controller.
.sp
This program should only be used as a last resort to attempt to recover
data from a random or sequential disk file known to contain CRC errors.
.sp
Random files are read sequentially, avoiding potential problems
with corrupted sector maps.	However, a file copied from a random
file will also be a random file.
.sp
If the directory is corrupted, the program will probably abort
immediately.	If the file contains "sector not found" errors,
or the successor disk links are corrupted, the program will abort
during the copy operation.	In any case, a message indicating the
failure or apparent success of the file copy operation should always
be output.	Of course, the new copy of the file must be checked
thoroughly to determine the extent of the data corruption caused
by the problems in reading the disk.
.pg
.ce 7
*****************************************************************
* DISKBCOM.BAS compare two BASIC programs	*
* DISKBMER.BAS merge two BASIC programs	*
* DISKBORD.BAS check BASIC sequence numbers	*
* DISKBUPD.BAS generate updates from two BASIC programs		*
* DISKUCOM.BAS compare two unsequenced files	*
*****************************************************************
.sp 2
These programs are coded in TSC BASIC and have no command line format.
.sp 2
This set of programs allows the user to perform the indicated operations.
All inputs and outputs are prompted.	BASIC programs analyzed by most of
these programs are assumed to be completely sequenced and in order.
.sp
The program DISKBCOM compares two BASIC programs and prints the differences.
Additions, deletions, and changes are noted.	This program is
especially useful in documenting or discovering changes made between
two versions of the same program, assuming it has not been resequenced.
.sp
The program DISKBMER merges two BASIC programs. This could be used to
interfile a large number of changes into an existing BASIC program,
such as those produced by the DISKBUPD program.
.sp
The program DISKBORD checks the sequence numbers in a BASIC program for
being in ascending order.	This is especially useful when a BASIC
program has been modified using an editor and does not seem to perform
correctly.
.sp
The program DISKBUPD generates a file of BASIC statements representing
the patches required to convert one input BASIC program to the other.
This is useful when it is necessary to make similar, although not
identical changes, to several BASIC programs.	The changes may be made
and checked out in one BASIC program.	Then DISKBUPD may be used to
derive the patch file, which can be edited and merged into another program.
.sp
The program DISKUCOM compares two files, which are not assumed sequenced,
and prints the differences.	This operation requires much attention
to perform properly.	The primary parameter which may be varied is
the comparision depth.	This depth may be set from 10 to 300 lines and
represents how far ahead into the file the program will look for a
matching record.	If it is set too shallow, potential matches will be
missed.	If it is set too deep, incorrect matches may be made.
The primary uses for this program include comparing ASCII data files,
assembler language programs, and pre-compiler BASIC programs without
sequence numbers.
.pg
.ce 4
*****************************************************************
*	DISKCOMP.TXT compare two disks	*
*	DISKCOPY.TXT backup one disk to another	*
*****************************************************************
.sp 2
.nf
DISKCOMP indrive outdrive [+tracks]
DISKCOPY indrive outdrive [+tracks]
.fi
.sp 2
This set of programs allows the user to quickly copy or compare the
contents of one disk to another.	The System Information Record (SIR)
is used to provide the maximum number of sectors per track and tracks
per diskette.	If it cannot be read, the operation is aborted.
If its contents are invalid, an incorrect copy or compare will be
attempted.	Because the user is prompted to answer several questions
before the copy or compare operation is initiated, the disk to be copied
need not contain either of the programs.
.sp
The drive parameters default to the working drive, and must be provided
if the "+tracks" parameter is used, or if "ASN W=A" has been stated.
If both drive parameters are omitted or are entered as the same drive
number, a single-drive operation will be performed, and the user will be
prompted to exchange diskettes at the appropriate times.
.sp
The "+tracks" parameter may optionally be provided to override the
track count parameter in the SIR.	It is stated in decimal, relative
to zero.	It may be used to copy or compare disks with incorrectly
stated maximum track counts; it should not be used on a normal basis.
.pg
.ce 3
*****************************************************************
* DISKEDIT.TXT edit sectors on disk
*
*****************************************************************
.sp 2
DISKEDIT [drive]
.sp 2
This program allows the user to interactively edit sectors on one or
more drives or disks.	A menu-driven, full-screen edit technique is
used to simplify the editing operation.	Either an 80 by 24 or a
51 by 24 screeen format may be chosen by selecting an assembly-time
option in the source program.
.sp
If the drive parameter is included, the program assumes that a disk
is mounted in that drive and reads its SIR to determine the maximum
track and sector counts.	No default drive is assumed.
.sp
The menu screen is composed of several parts.	The current sector
contents, is displayed in hex and ASCII at the top of the screen.
The list of valid commands is displayed just below the sector dump.
The last few lines of the screen are used for user input,
program prompts, and program messages to the user.
.sp
Following is the command menu displayed below the sector dump:
.sp
.nf
.in 5
c=chain,	d=drive, e=edit, f=file,	l=locate,
m=move,	n=next,	p=prev, q=quit,	r=read,
s=sector, t=track, x=xfer, w=write, z=zap,
1=first half of sector, 2=second half
enter 'd' or 'f' when a new diskette is mounted.
.in 0
.fi
.sp
Note that the fourth line of the menu is output only when the
51 by 24 screen is selected, as the 80 by 24 screen displays a
complete sector, not half of a sector.
.sp
Following are the commands the user may invoke by entering the first
character, as indicated above, along with brief explanations:
.sp
.nf
.in 5
chain
	move first two bytes of sector to current
	track/sector and read indicated sector

drive=d
	set current drive number to d and read the SIR
	of the disk mounted in that drive; if only a
	carriage return is entered, current drive is used

edit
	initiate full-screen edit operation of data in
	current sector buffer; in this mode, the cursor
	controls are active, and carriage return terminates
	the edit operation

file=[d.]filename[.suf]
	find file on indicated drive and read first sector;
	default drive number is work drive and default
	suffix is ".txt"

locate=$xxxxxxxxxx
	start scanning current sector for indicated string
	(an even number of hex digits, then carriage return),
	and continue reading scanning chained sectors until
	the string is located, the end of chain is found,
	or a key is struck; if only carriage return is
	entered, continue previous locate operation

move bytes in buffer from $xx to $xx for count of $xx
	move indicated bytes in work buffer;
	beware of destroying first four bytes of sector

next
	increment sector number by 1; if new sector number
	is greater than maximum sectors per track, increment
	track number by 1 and set sector number to 1;
	in any case, read new sector

previous
	decrement sector number by 1; if new sector number
	is less than 1, decrement track number by 1 and
	set sector number to 1; in any case, read new sector

quit
	return to flex

read
	read current sector

sector=$xx read (Y/N)?
	set sector number to indicated non-zero value;
	prompt for read; if carriage return is entered,
	maintain current sector number

track=$xx sector=$xx read (Y/N)?
	set track number to indicated value; prompt for
	read; if carriage return is entered, maintain
	current track number

xfer to/from buffer (T/F)?
	transfer bytes $04-$ff in current sector buffer
	to or from work area; if carriage return is
	entered, no bytes are moved in either direction

write
	write current sector

zap buffer to hex zero
	clear bytes $04-$ff of current sector buffer to zero
.in 0
.fi
.nl 20
.sp
The following parameters in the program must be modified for
various systems and terminals:
.sp
.nf
.in 5
scrnwd	16 for 80 by 24 screen, 8 for 51 by 24 screen
leadin	number of leadin control characters
lead1	leadin control character 1
lead2	leadin control character 2
maxprn	maximum printable (displayable) character
termnl	must be $4344 for and only for Data-Comp Flex
clrscn	clear-screen control sequence
homeup	home-up control sequence
upcur	up-cursor control sequence
dncur	down-cursor control sequence
lfcur	left-cursor control sequence
rtcur	right-cursor control sequence
curson	cursor-on control sequence
.in 0
.fi
.sp
Comments in the program provide additional information on the
use of these parameters.	When the parameters have been established
correctly, the program should format the screen such that the
hex scale is on the top line of the screen and the cursor movement
keys are active in the edit mode.
.pg
.ce 3
*****************************************************************
* DISKFREE.TXT linearize free chain on disk	*
*****************************************************************
.sp 2
DISKFREE [drive]
.sp 2
This program linearizes the free chain on a disk.	The drive
number defaults to the work drive.
.sp
The program first reads the SIR to determine the first sector and
the number of sectors in the free chain.	Then it follows the
free chain links, storing the track and sector numbers in a
table.	If it encounters a bad link or unreadable sector in the
free chain, or the count is incorrect, the program aborts.
.sp
If the program encounters no error conditions, it prompts the
user for permission to continue.	If such permission is given,
it rewrites the free chain (in reverse order) such that each
sector in the free chain points to the next higher-numbered
sector, then updates the SIR to point to the lowest-numbered
sector in the free chain.	In case of a write error detected
in rewriting a sector in the free chain, the condition is
noted on the terminal and the sector is dropped from the free
chain.
.pg
.ce 3
*****************************************************************
* DISKIDEN.TXT print disk identificaion	*
*****************************************************************
.sp 2
DISKIDEN [drive]
.sp 2
This program outputs the disk identification information available
in the SIR of a mounted disk. The drive number defaults to the work drive.
Optionally, the volume name and number may be modified.
.sp
The program reads the SIR and outputs the following information:
.sp
.in 5
.nf
volume name and suffix
volume number
creation date
maximum track number
maximum sector number
disk format (see below)
free sector count
first free track/sector
.fi
.in 0
.sp
Then the program asks if the volume name and number are to be changed.
If so, it prompts for the entry of volume name and suffix, then number.
.sp
Disk format (size, sides, density, track options) is output only if
the maximum track/sector combination in the SIR is in a table in the
program.	This table may be modified for new combinations, as they
become available.
.pg
.ce 3
*****************************************************************
* DISKLCAT.BAS print paginated list of files	*
*****************************************************************
.sp 2
This program is coded in TSC BASIC and has no command line format.
.sp 2
This programs reads a control file and prints a paginated version
of each file name in the list.	The control file simply consists
of the file names, one per record, with the drive number starting
in the first column.	All inputs and outputs are prompted.
.sp
It is especially useful for repetitively printing a list of files.
This list may often be desired by capturing the output of the CAT
utility program with the O command, and then editing the resulting
file.
.pg
.ce 6
*****************************************************************
* DISKMDFS.BAS sort master directory by file name	*
* DISKMDIN.BAS interfile updates into master directory
*
* DISKMDSL.BAS select files from master directory	*
* DISKMDUP.BAS sort master directory updates	*
*****************************************************************
.sp 2
These programs are coded in TSC BASIC and have no command line format.
.sp 2
This set of programs allows the user to perform the indicated operations.
The goal of this group of programs is the maintenance of a master
disk catalog list, which may be listed by disk volume and number,
sorted and listed by file name and suffix, or may be used for inquiry.
.sp
For proper operation, volume names and numbers must be unique.
The DISKIDEN program described earlier may be used to help modify
existing volume names and numbers.
The source for this data is assumed to be the DISKSCAT program,
described below.	All inputs and outputs are prompted.
.sp
The disk catalogs produced by the DISKSCAT program may be sorted
by the DISKMDUP.BAS program.	This step is unnecessary if the catalogs
are captured in ascending order of volume name and number, or if only
one catalog is on the file.
.sp
The sorted file may then be merged with an existing master disk
catalog list to produce an updated master disk catalog.
Thus, it is essential that the update file be in order.
When a catalog entry on the update file matches the master disk
catalog on volume name and number, all entries on the master disk
catalog for that volume name and number are deleted, and are
replaced by the entries from the update file.
.sp
A copy of the master disk catalog list, sorted by file name, may
be obtained thru the use of the DISKMDFS program.	Since the
master disk catalog list must be sorted by volume name and number,
the output of this program may be used for listing and analysis
purposes only; it may not be used as a master disk catalog list.
.sp
The DISKMDSL program may be used to print or display master disk
catalog list entries selectively.	This selection may be by volume
name and number and/or file name and suffix.	The input file may
be in the normal volume name and number order or it may be sorted
by file name.	The decision of which order input file to use is
dictated by the desired order of output.
.pg
.ce 3
*****************************************************************
* DISKSCAT.TXT sort and replace disk catalog	*
*****************************************************************
.sp 2
DISKSCAT [drive] [+/-]
.sp 2
This program sorts a disk catalog and optionally rewrites it in place.
Optionally, a listing of the sorted catalog may be obtained.
The drive number should be specified and must be specified if
either "+" or "-" option is used; however, it will default to the
work drive.
.sp
The "+" option specifies that the disk catalog is to be rewritten
and displayed.	The "-" option specifies that the disk catalog is
to be displayed but not rewritten.	If either option is specified,
the program will prompt the user to mount another disk in the same
drive and repeat the same operation.	In the absence of either
option, the disk catalog is rewritten but not displayed.
.sp
The O command may be used to capture the displayed disk catalog
for further analysis, including its use as input to the master disk
catalog list system, as described above.
.pg
.ce 3
*****************************************************************
* DISKTEST.TXT test disk for errors
*
*****************************************************************
.sp 2
DISKTEST [drive]
.sp 2
This program tests the contents of a disk for a valid System
Information Record (SIR), readable disk sectors, and valid link bytes.
.sp
If the SIR is invalid, the program will prompt for information
required to test the remainder of the disk; in this case, the
remainder of track 0 is not tested.	Additional entries may be made
into the table in the program to support new disk formats.
.sp
Using the maximum track and sector values derived from the SIR
or from the input prompts, the program checks all sectors on all
tracks of the diskette.	If it is unable to read a given sector,
or it encounters a sector containing bad link bytes, the program
outputs a diagnostic message to the console, but continues the
test.
.sp
On most systems, the test may be halted prematurely by keyboard input.
.pg
.ce
BASIC UTILITIES PACKAGE
.sp 2
.ce
DISK SORT GENERATOR (DISKSORT)
.sp 2
The problem of sorting large amounts of data stored on disk occurs
often enough in data processing that it is a major concern.	In many
cases, multi-linked random files may be used to reduce or eliminate
the need for sorting large volumes of data.	In many other cases,
however, the necessity exists to sort the data.	The BASIC disk sort
generator produces a TSC precompiler extended BASIC program from
user-provided parameters.	Depending upon the options specified, the
generated program may perform any of the following functions:
.nf
	1. interactively accept sort specifications and sort files,
	2. sort a file as a callable subroutine,
	3. sort a file as a free-standing program,
	4. generate a test file and sort it to test sort algorithm.
.fi
.sp
In any case, the sorting process used here is based upon an internal
sorting algorithm, used iteratively, followed by an external merging
algorithm.	The internal sorting algorithm is an implementation of
Quicksort by Richard Scowen (Algorithm 271, CACM, November, 1965).
The external merging algorithm is a simple N-way merge process.
In each iteration, as many records as will fit are brought into a
memory buffer.	The internal sort is used to rearrange the records
into the desired order.	Then the buffer is written to disk.	After
all records have been input,	the resulting groups of sorted records
are then N-way merged and are output.
.sp
Although this method of sorting is somewhat slower than TSC's Sort
Merge package (primarily because it is in BASIC, and not in machine
language), it offers several advantages over the TSC package.	The
primary one is that operator intervention is reduced and much time
is saved since BASIC remains in control.	Another advantage is that
special selection logic may be much more easily programmed than with
the TSC package, since the logic may be coded in BASIC and the code
is well-commented.
.sp
Regardless of their source, the following parameters must be provided
in order to specify the detailed sort to be performed:
.nf
	generated sort program file name,
	input file name,
	output file name,
	sort work drive number,
	maximum record length,
	maximum buffer length in records,
	lower record number desired,
	upper record number desired,
	sort key table.
.fi
.sp
For all types of sorts, the sort program file name and maximum buffer
length must be provided at generation time.	For type 1 sorts, all
other parameter definition is deferred to sort time.	For type 2
sorts, the other parameters must be provided at sort time in memory.
For type 3 sorts, all parameters are defined at generation time, and,
in addition, the program name to which to return may be specified.
For type 4 sorts, all other parameter definition is deferred to sort
time and additional code is produced to generate, sort, and check a
test file according to certain specifications.
.sp
The sort key table is composed of entries defining the sort keys
from major to minor significance.	This definition is performed by
specifying the offset and length of each key.	For descending keys,
the offset is made negative.	Ascending and descending keys may be
freely intermixed.	The last entry is denoted by a zero offset.
.sp
The drives on which the sort work files and output file are to be
placed must have enough free space to contain the entire specified
portion of the input file.	Unless an error occurs, the sort work
files will be deleted after use, so no manual cleanup is normally
required.	If a file by the same name as the output file already
exists on the same drive, it will be deleted.
.sp
If the number of input records provided to the sort is not larger than
the maximum buffer length, no sort work files will be produced and the
output file will be written directly from memory rather than being
placed in a sort work file first.
.sp
Because of a system limitation, the number of sort files is restricted
to a value of no more than ten.	If a file is so large that ten buffer
loads will not contain it, then it will have to be split into two or
more pieces before being sorted.	After each of the pieces have been
sorted, the resulting files may then be merged to form the final file.
.pg
.ce
BASIC UTILITIES PACKAGE
.sp 2
.ce
BASIC RESEQUENCER (DISKRESE)
AND CROSS-REFERENCER (DISKBASX)
.sp 2
The TSC BASIC resequencer is a TSC Extended BASIC program which
has several capabilities beyond those of the TSC-supplied resequencer.
The primary ones are as follows:
.nf
	resequences all versions of TSC BASIC including precompiler,
	resequences some or all of a program,
	optionally resequences lines with blank sequence numbers,
	checks for missing label definition definitions,
	checks for new sequence number overflow,
	aligns left program margin by adding leading zeroes,
	processes disk-to-disk rather than in memory.
.fi
It is completely interactive with the user.	Since it is written
using the TSC precompiler language for extended BASIC, the XPC
program is required to compile the program, which is delivered in
source BASIC program format.
.sp
The TSC BASIC cross-reference program is an assembler program which
runs on the 6800 or 6809 under FLEX or UNIFLEX and produces a
cross-reference listing of the variables and verbs contained in a
TSC BASIC, TSC Extended BASIC, or TSC precompiler BASIC program.
.sp
The program automatically makes adjustments for the different entry
points of FLEX 2 and FLEX 9, so the program as delivered will run
on either version.	The program is delivered in source format.	In order
to support multiple terminals, the variables CLRSC1 and CLRSC2 have
been defined in the program to represent the clear-screen cursor
control sequence, and may be modified as required.	In order to send
the output to a FLEX printer, prefix the execution of the program with
the printer driver name and a space (e.g.\	P, S, SP, ...).
