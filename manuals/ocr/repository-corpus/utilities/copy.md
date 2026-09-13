# COPY

> Source: `utilities/system/LEO2 - FLEX System Utilities - Documentation and Examples.zip!LEO2.DSK!COPY.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

A NEW COPY UTILITY FOR FLEX 1,2 and 9

	Leo Taylor and Bruno Puglia


	GETTING STARTED

COPY can be run by any FLEX user without reading this manual. How
can such a claim be possible? COPY is compatible with the command
syntax of the copy program supplied with FLEX, thus if you can use
FLEX you can use this program. You are urged to assemble the source
program provided and start using COPY even before you read past this
page of the manual. Though you will be using only a part of COPY's
capability you will have many hidden advantages such as error check-
ing, alphabetizing, and date retention. When you have time to read
the remainder of this manual you will learn how to use the many
options supported by COPY.


	ASSEMBLING THE SOURCE

COPY is provided as a source file that can be assembled by the FLEX
assembler for 6800 or 6809 processors. The only change that need be
made for CPU is one character in the line:

	FLEX EQU $A000

Locate this line using your favorite editor and confirm that it
matches the FLEX you are using. The FLEX starting address should be
$A000 for 6800 or $C000 for 6809. Note only ONE CHARACTER need be
changed, you do not need to do a global change of a lot of addres-
ses. This is the only change that MUST be made, there are optional
changes that will be explained later. COPY can now be assembled and
the object should be named COPY.CMD. You may want to retain your old
copy program under a different name (such as COPYOLD) until you gain
confidence in the new program. It won't be long before you are con-
vinced that this program can do everything the old copy program can.

Users of DATA-COMP FLEX should delete all SEI and CLI instructions
before assembling. These lines are marked in the source with %%.


	INITIAL SURPRISES

COPY will accept commands in the same format as the original copy,
but you will immediately notice differences in how the program per-
forms. There will be changes in timing, such as pauses when sorting
the directory and half as many head loads per file copied. You will
notice files are copied in alphabetical order. The original creation
date of the file being copied will be used for the destination file.
If your disks have bad files you may get some unfamiliar error mes-
sages. COPY has a lot of error checking which will uncover problems
you may not be aware of. The most common error is:

	BAD DATE: FILENAME.EXT	SIZE	DATE
	ALLOW BAD DATES (Y/N)?

Later in the manual there will be a section on correcting file
dates, for now you can overide the bad date by pressing "Y" when the
prompt appears.


	!1


TERMINOLOGY

Throughout this manual these terms will be used often:

COPY	the new program
OLD COPY
the program provided with FLEX
SOURCE
the file being copied from (any type of file)
DESTINATION	the file being written to
OPTION LETTERS	command line letters used to enable options
MATCH LIST		list of starting characters (see below)

It will be assumed that you are familiar with the syntax of the copy
command provided with FLEX. All FLEX users know that the old copy
program supports a match string list for copying multiple files that
match the letters in the list. The command:

	COPY 0 1 AB X .CM

will copy from drive zero to drive one all files that start with
"AB" or "X" or have extensions that start with "CM". This is the
most common syntax you will use with COPY.

Many FLEX users do not know that the old copy program supports a
useful syntax for copying a single file. If you want to copy just
the file "P.CMD" without including other command files starting with
"P" you will find a match list copy unsuitable. The command:

	COPY 1.P.CMD 2

will copy ONLY ONE FILE from drive one to drive two. A variation of
this single file copy is used to copy one file and change the name:

	COPY 0.FLEX2.SYS 1.FLEXNEW.SYS

In entering any COPY command either a comma or a space can be used
to separate parameters.


	OPTION LETTERS

There are over a dozen option letters supported in COPY which makes
it very powerful and a bit overwhelming. It is important to know
that you do not need to understand all of the options to use COPY
effectively; in fact there are some options you may not WANT to use.
If you can't remember the letter for the option you need you can
type "COPY" without any parameters and the program will display a
HELP list of option letters with a short explanation of each. Option
letters are included on the command line after the word COPY and
before any drive number or file name:

	COPY LDN 0,1 A.TXT

Any number of	letters may be used in any order. If an unimplimented
letter is used COPY will display the HELP list of options. Options
are positive; that is using the letter will enable the option. This
contrasts with the confusion of the FLEX assembler which has some
negative options. You may recall that assembler options +NS means
YES include line numbers but NO do not include symbol table. Much of
the confusion with this otherwise excellent assembler is due to the
ambiguous method of handling option letters. It was decided to avoid
ambiguity by having all option letters enable the desired option. If
a letter is accidently used twice the option is still enabled.

	!2


	DEFAULT OPTIONS

COPY has default options which will take effect whenever there are
no option letters on the command line. The most common default
option will be "A" which enables sorting of the source directory
before files are copied. COPY has provisions for changing the
default options in the assembler source program for those users who
want other options defaulted. For example one could default only
option "U" and COPY will emulate the old copy by using the current
FLEX date on the destination file. If the user must change the
default options there is a table near the start of COPY which
contains the default option bytes. Each byte is FCB 0 if the option
is not defaulted and FCB 1 if it is defaulted. If the user needs to
verify which options are defaulted, typing COPY without parameters
will display an example followed by all the options. The defaulted
options will be marked with "YES":

	Example: COPY ADNL 0,1 .CMD A

	YES	A	copy in Alphabetical order
	NO	C	allow Corrupt files to be copied
	NO	D	copy files with newer Date
	NO	E	delete Existing destination file
	NO	F	copy by File number (alpha not allowed)
	NO	K	Kill duplicate file on source
	NO	L	List files without copying
	NO	M	Make random file
	NO	N	copy files Not on destination
	NO	O	turn Off defaults
	NO	P	Prompt before copying file
	NO	R	Recover from track-sector
	NO	S	makes Second copy of file (.CPY ext)
	NO	T	Track zero protection overide
	NO	U	Use current FLEX date
	NO	W	Wait for disk change
	NO	Z	Zap source file after copying


	EXPLANATIONS OF OPTION LETTERS

A	COPY IN ALPHABETICAL ORDER

The "A" option enables a sort subroutine that will alphabetize the
source directory before files are selected to be copied. Most users
will have this as a default option so the files will be in order
when cataloged. If you enter any option on the command line all
defaults are turned off. If option "A" was defaulted and you want to
alphabetize you must add "A" to the options you enter.


C	ALLOW CORRUPT FILES TO BE COPIED

The "C" option will enable you to copy a file that is damaged by a
CRC error or record sequence error. This is a slightly dangerous
option which should only be used if you don't have an alternate copy
of a file.

D	COPY FILES WITH A NEWER DATE

The "D" option will find files that are on both disks and compare
their creation dates. If the source file is newer it will be copied
as a replacement for the older destination file.

	!3


E	DELETE EXISTING DESTINATION FILE

The "E" option is used when you want to replace a file on the des-
tination disk. This option will suppress the prompt for whether you
wish to delete the existing file. It will often be used along with
"D" to update a disk with newer versions of programs.

F	COPY BY FILE NUMBER

The "F" option changes copy's parameters from a match string list to
a list of file numbers. Follow the drive numbers with a list of file
numbers for those files that you want to copy. File numbers can be
found with a utility such as DIR.CMD. A group of files can be
specified as a starting and ending number separated by a dash. The
command "COPY F 0,1 5 13-18 9" will copy file five, files thirteen
through eighteen, and file nine.

K	KILL DUPLICATE FILE ON SOURCE

The "K" option is VERY dangerous. This command isn't really a copy,
rather it uses the directory compare routines to delete files from
the source disk that appear on the destination. This allows you to
clear off extra copies of programs not needed on the source disk. It
operates very fast and will clear off a number of files faster than
you can hit reset. As with all dangerous options it is protected
with an "ARE YOU SURE" prompt. "COPY K 1,0" is most effective in
killing files on drive 1 when they exist on drive 0. "COPY KD 1,0"
will kill the file on drive 1 when it is older than the file on
drive 0. Use COPY KDL 1,0 to preview what files will be deleted.

L	LIST WITHOUT COPYING

The "L" option disables the file copy subroutine. This is used to
display a list of files that WOULD have been copied if you hadn't
used option "L". This can be used with other options to check disks
for duplicate files, newer dates, bad files, etc.

M	MAKE RANDOM FILE

The "M" option can be used to convert a FLEX serial file into a
random file. This option is also used with "R" to recover a random
file by track and sector. NOTE: this option is not used for normal
file copying, if the source file is random COPY will make the
destination file random.

N	COPY FILES NOT ON DESTINATION

The "N" option is used to copy the files on the source disk that are
not already on the destination disk. This can be used to add all new
files to a backup disk.

O	TURN OFF DEFAULT OPTIONS

The "O" option is a dummy character used to turn off all default
options if you do not want any options. If used with any other
option letters it has no effect.


	!4


P	PROMPT BEFORE COPYING

The "P" option enables this prompt: "Prompt off (P):FLEX (F):copy
(Y/N)?". You should respond with "P" if you want to continue copying
without the prompt or "F" to return to FLEX or "Y" to copy this
file. "N" or any other character will skip to the next file. This is
useful for scanning through a disk copying only certain files.
Another use is skipping down to a certain file on a disk and copying
all files after that.

R	RECOVER FROM TRACK-SECTOR

The "R" option is used to read a file without using the directory.
If the directory of a disk has been destroyed but the user knows the
the file's starting address, the file can be recovered. The command
"COPY R 1 2B 5 0.NEWFILE" will read from drive 1, track $2B, sector
5 until encountering an end of file or a record out of sequence. The
write file extension will default to .SCR. A second use for this
option is to recover a deleted file. The first sector of a deleted
file can be found with the new CAT.CMD. If the file has not been
over-written, COPY can recover it. Record sequence checking
eliminates the restriction that the file be the last file deleted.
Provision was made to start copying in the middle of a file. This is
a somewhat dangerous option since it allows the user to overide the
FLEX File Manager. The command must be typed as shown with three
numbers and a file name. Only a few other options can be used with
"R". See "M" if the original file was random.

S	MAKE SECOND COPY OF A FILE

The "S" option is used when you want two copies of a file to be
written. The second copy will have the same name as the first with
the extension of ".CPY". This is useful when sending a program to a
friend whose drive may have difficulty reading your disks. By send-
ing two copies there is a much higher chance that the file will be
readable.

T	TRACK ZERO PROTECTION OVERIDE

The "T" option is used only for those systems that store data files
on track zero. COPY normally prevents a file from linking to track
zero. Some virtual disk systems include track zero as part of their
free sector chain.

U	USE CURRENT FLEX DATE

The "U" option is used when you want the destination file to have
the present FLEX date rather than the date of the source file being
copied. This may be useful if you know the source file has an
erroneous date.

W	WAIT FOR DISK CHANGE

The "W" option eliminates the need to copy COPY.CMD onto the source
disk so that you may remove your system disk to insert the destin-
ation disk. When "W" is used on the command line COPY will wait for
a key to be pressed before accessing any directories.

Z	ZAP SOURCE FILE AFTER COPYING

The "Z" option is somewhat dangerous. It is used to delete the file
from the source disk after it is copied. Essentially the file is
moved from one disk to the other.
	!5


EXAMPLES

Often options can be combined to perform tasks that previously were
impossible or required a separate command utility. Some examples:

COPY C 0.BAD.TXT 1	Copies one file that has a CRC error, including
	whatever data	is readable from the bad sector.
	Replaces the utility RAWCOPY.CMD.

COPY DN 0,1
Updates the destination with all files from the
	source that are not on the destination or	have
	an older date	on the destination. Replaces the
	utilities COPYNEW and ARCHIVE.

COPY EZ 0.P.CMD 2	Moves file P.CMD	from source to destination no
	matter what. Replaces the utility MV.CMD.

COPY F 2,0 1-16	Useful for copying	from one large drive to two
COPY F 2,1 17-52	smaller ones. Copies 16 files to drive zero and
	the remainder to drive one. This is VERY diffi-
	cult to accomplish with the old copy.

COPY KD 1,0
Kill the file on drive 1	when it is older than
	the file on drive 0.

COPY LNA 2,1		Alphabetically lists those files	on the source
	that are not on the	destination.	Replaces the
	utility DUP.CMD and is much faster.

COPY M 2.FOO.DAT 3	Make a serial file FOO.DAT into a random file.
	Replaces the utility COPYR.

COPY P 0,1
Prompt before each file is copied to allow user
	to select which files are desired. Replaces the
	utility PCOPY.

COPY R 2 4 6 1.FOO	Recover a file on drive 2	that does not appear
	in the directory. Reading will begin at track 4
	sector 6	and the file will be written to drive
	1 with the name	FOO.SCR.	Replaces the utility
	RECOVER.CMD.

COPY W 0,1 .CMD	After COPY	is loaded the user is prompted with
	"Change disk-press key". The system disk may be
	removed and another disk inserted.


	!6


	DANGEROUS OPTIONS

A few option letters enable dangerous functions such as killing the
original file on the source drive. These options should only be used
by an "Experienced Copier" and are protected with this prompt:

dangerous option selected
are you sure (Y/N)?

If you accidently stumble on a dangerous option type "N" and you
will be returned to FLEX. With proper use these options can be quite
useful.


	ERROR DETECTION

COPY has many error checks that are not found in other FLEX util-
ities. Many FLEX users have found that disk problems often surface
when using the old copy, often with disastrous results. One error
COPY traps is files with a size of zero sectors. These files usually
result from pressing reset while doing file operations. Novice FLEX
users do not realize that if they reboot FLEX after aborting with
reset a defective file is left on the disk. When a program like the
TSC EDIT.CMD opens a file, FLEX creates a directory entry with zero
sectors. If the program is aborted with reset or the disk is removed
the zero sector file remains in the directory. Later, when the disk
is copied, the defective file will result in the entire free space
of the disk being copied. This copy "runaway" results in the desti-
nation disk being clobbered. Another problem which is eliminated
with COPY results from a bad link in the source file causing it to
intersect with another file. A third error solved by COPY is a bad
link on the destination disk causing the file to overwrite the
directory. A time wasting error in the old copy was it would try to
copy a file that wouldn't fit in the available space on the disk.
COPY will catch this error and report "file will not fit".

COPY has several of the common FLEX error messages built in. These
were included since many users of two drive systems will need to
remove their system disk to copy files. This results in FLEX
reporting errors by number since the file ERRORS.SYS will not be
found on the system drive. Also for convenience the drive associated
with the error is reported along with the offending track and
sector. This is useful for such errors as CRC which could occur on
either the source or destination drive, and in the file or the
directory.

It is important to realize that if you get an error while writing a
file to the destination disk the new file may be defective. The file
may appear in the directory but usually it is incomplete.

The most common error message reported by users of COPY is "DATE
BAD". This occurs when the user does not enter a valid date when
FLEX is booted or by failure of a hardware clock when used for
setting the FLEX date. COPY will check the date on all files when it
reads the disk directory and report any dates outside a reasonable
range. This reduces the chance that a bad date will be passed on to
the new file. There are two alternatives when the "BAD DATE" message
appears. You can answer "Y" indicating that you approve of bad dates
or answer "N" and not copy the file. After returning to FLEX you can
re-enter COPY using option "U" which will assign the current FLEX
date to the file or use the new DATE command to set the file date to
the day the file was made.

	!7


	SPEED

COPY was not written with the intention of speeding up file dupli-
cation. FLEX write speed is inherently slow and can not be improved
without deviation from the normal FMS operation. On the average,
COPY is comparable in speed to the old copy. A few operations are
faster such as match list searching and copying short files. A few
operations are slower such as reading the directories. As with the
old copy it is faster to do a single file copy than a match string
copy with only one match. For example use "COPY 0.DIR.CMD 2" rather
than "COPY 0,2 DIR". The sorting overhead will be reduced as time
passes since more of your disks will be sorted. The sort chosen for
COPY is optimized for directories that are sorted except for a few
new files at the end. Examination of this table will show that for
most cases the differences in speed between COPY and old copy are
negligible.


COPY TIMES

Files copied	size	old COPY	new COPY	new sorted	Ratios

one file	5	7		8
8	+10%	+10%
entire disk	5	211	200
201	- 6%	- 5%

first file	8	10	14
19	+40%	+90%
last file	8	14	19
23	+40%	+64%
entire disk	8	1313	1245		1250	- 5%	- 5%

Five inch system disk with 32 FLEX utilities.
Eight inch data disk with 250 random 1 sector files.


MEMORY USAGE

COPY is several times longer than the old copy, but requires less
disk space than the sum of the utilities COPY eliminates (see the
examples). COPY uses 4-5K bytes of memory starting in base page for
variables, program, messages, and file control blocks. The direct-
ories are loaded into memory after the FCBs and require 16 bytes per
file. This puts a limit on the maximum number of files at 1600 for
6800 or 2600 for a full size 6809 system. This should not be a
limitation for most FLEX users. The remaining user memory (less $800
bytes reserved for EXEC) is used as a buffer for the file being
copied.


	!8


	NON-STANDARD FLEX ROUTINES

Considerable care was made to determine that COPY would work on all
FLEX systems. All accesses to the disks were made through the File
Manager System to avoid compatibility problems with user written
disk drivers. Still, it was necessary to use a few tricks in order
to make the program more useful. The FMS does not provide a means
for determining if a disk is protected or even if it exists without
attempting to write on it. This is the FIRST thing a program should
do so the user doesn't waste time answering prompts only to find the
program aborts later. COPY reads the SIR (sector 3) of the destin-
ation disk then duplicates it on sector 4. This is an unused sector
on all systems tested. If the disk is protected or not ready the
program will exit immediately. COPY shuts off interrupts when acces-
sing track zero to avoid problems with the spooler. COPY checks the
next to the last byte ($FE) of the SIR for an extended directory
flag. This byte is set non-zero by some users to indicate the
catalog has been extended to include all of track 1. If this flag is
set COPY will protect track one as well as track zero. Finally the
file date is inserted into the destination file FCB before the file
is closed. This is done to keep the original date on the new file.
None of these "tricks" have produced any problems for the FLEX users
who have tested COPY; they are only mentioned in case someone has a
problem with COPY that appears to be compatibility.


	PRINTING and SPOOLING

Occasionally one may want to keep a log of the files being copied,
perhaps for unattended operation. The command "P COPY 0,1" will
print the file specifications as the files are copied. A duplicate
of each line will appear on the terminal, along with all prompts.
The command "O OUTFILE COPY 0,1" will do the same for a disk file.
Since the "OUTFILE" will be open when COPY reads the directory do
not be alarmed if it is reported as a BAD FILE.


	COMMENTS on DATES and FILE NAMES

Many FLEX users are lax in entering the correct date when booting
their system. Part of the responsibility for this lies in the old
copy program which used the current FLEX date when copying a file,
thus rendering the file date almost useless. With this new COPY
utility the date takes on new significance since the date reflects
when the file was originally created.

To use the alphabetizing feature of COPY to its full advantage one
should assign similar file names to similar files. For example, a
assembler library file should have a name as close as possible to
the assembler file it goes with. A documentation file could have the
same name as the program it is documenting with an extension of
".DOC". This will keep the files together when copied.


CONCLUSION

The programmers who wrote COPY hope you will enjoy using this FLEX
utility. COPY is written to be compatible with FLEX systems that use
any 680X processor and any disc controller. There is no advantage in
writing FLEX utilities that are optimised for a select few systems;
this only results in dividing up the FLEX users.


	!9
