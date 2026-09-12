# INDEX

> Source: `dev/pascal/PL4 - Pascal Language - Documentation and Examples.zip!PL4.DSK!INDEX.DOC`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

This file contains a short description of each of the
Tektronix public domain utilities contributed by the various
FLEX users at Tek.	Each entry contains the name of the source,
who wrote it, what system it runs on, and a short description and
example of the use of the program.


NAME:	BACKUP
AUTHOR:	John Higley and Ken Smith
FLEX VSN:	FLEX09
DESCRIPTION: This command is used to archive files onto a backup

disk.	Backups can be performed on a single file, a matchlist of

files, or all of the files on a disk.	If the files already exist

the dates are used in determining whether or not to produce the

backup.	BACKUP need not be on either disk.

NAME:	CHECKSUM
AUTHOR:	Ken Smith and John Higley
FLEX VSN:	FLEX 6809
DESCRIPTION: This utility is used to compute a 24 bit checksum for

disk files.	The checksum can be used to verify file and

disk integrity.	A single file, matchlist, or all the

files on one or more disks can be done.	File copying,

archiving, and verifing PROM programmer results are some

of the most useful applications. Command form is
	+++CHECKSUM[,<drive list>][,<match list>][,+(options)]

NAME:	DIR
AUTHOR:	BILL PFEIFER
FLEX VSN:	FLEX 6809
DESCRIPTION: This is a system command similar to CAT.	Unlike

CAT, DIR displays information pertaining to the

physical location on the disk as well as the date

the file was created.	DIR observes TTYSET limits.

NAME:	DKCOPY
AUTHOR:	BILL PFEIFER
FLEX VSN:	FLEX 6809
DESCRIPTION: This is a utility which allows one to copy entire

disks with a minimum of 'clicking'.

NAME:	DKDIFF
AUTHOR:	Ken Smith
FLEX VSN:	FLEX09
DESCRIPTION: This command tells which files exist on one disk

but not on another.	Two options allow the comparison

to include the creation date and file size.

Form of the call is <DKCOPY,Source,Destination>.

NAME:	DKNAME
AUTHOR:	JOHN HIGLEY, DON VANBEEK(original)
FLEX VSN:	FLEX09
DESCRIPTION: Allows the user to rename a disk.	DKNAME supports

FLEX disk extensions and allows any character (except

dot) in the name.

Form of the call is	DKNAME[,<drive>].

NAME:	FIXCHAIN
AUTHOR:	JOHN HIGLEY
FLEX VSN:	FLEX09
DESCRIPTION: This program maps the sector arrangement of the FREE

CHAIN on the disk.	The user is then asked if he wants

to have the chain reordered from the outside of the disk

into the center.	This operation changes the linkage and

results in fewer non-contiguous blocks of disk space.

Form of the call is	FIXCHAIN[,<drive>].

NAME:	FREEMAP
AUTHOR:	KEN S SMITH
FLEX VSN:	FLEX 09 (6809)
DESCRIPTION: The FREEMAP command is used to display graphically the

location and status (free or used) of all the sectors

on a disk, and check the structure of the freechain for

errors.	Form of the command is	FREEMAP[,<drive>]

default is working drive.

NAME:	GETEXT
AUTHOR:	FERROUS STEINKA
FLEX VSN:	FLEX II (6800)
DESCRIPTION: GETEXT is a utility that allows the user to GET a TEXT

file from the disk and roll it into memory at a specified

starting address.	All error possibilities are checked

for and reported if encountered.	No upper memory limit

is imposed so it is possible to over-write FLEX with a

large text file.	Form of the call is:
	GETEXT,<FILENAME>,<START ADDRESS>

Default extension is .TXT, and address must be hex.

NAME:	HELP
AUTHOR:	Walt Catino
FLEX VSN:	Flex/9
DESCRIPTION: This utility will search the system drive and the work drive

for text files with the extension ".HLP".	Upon locating

the file, HELP will print the file to the terminal obeying

all of the TTYSET parameters.

The form of the call is: "HELP<,filename><.drive>".

If "HELP" alone is called, information about how to

use the Help command will be output.

If "HELP,filename" is typed, the system drive and the work

drive will be searched for a file with that filename and a

'.HLP' extension.	If the file is not found, a message

indicating such will be output to the terminal.

If the drive containing the filename is known, adding

a ".drivenumber" will limit the search to that drive alone.

All flex errors are handled and the escape-return sequence

for large listings is allowed.

NAME:	MAP
AUTHOR:	JOHN HIGLEY
FLEX VSN:	FLEX09
DESCRIPTION: This program reads a FLEX binary file and displays

its load and transfer addresses.

Form of the call is	MAP,<filename>	

Default extension is .CMD.

NAME:	MEMDUMP
AUTHOR:	RICK BENSENE
FLEX VSN:	FLEX/09
DESCRIPTION: This utility is used to dump the contents

of memory to the system console.	The user specifies

a starting and ending address with the command.	The

content of memory will be dumped in hexadecimal, along

with ASCII interpretation of each byte.	The output

format is very similiar to the DDT 'Q' dump.

NAME:	OLOAD9S
AUTHOR:	BILL PFEIFER
FLEX VSN:	FLEX 6809
DESCRIPTION: This utility allows one to load a binary file at an

address other than the one specified in its 'ORG'

statement. It was written to do the same as FLEX's

OLOAD in their utility package. Since it was written

here at TEK, it does not carry a copyright.

NAME:	OSAVE
AUTHOR:	RICK BENSENE
FLEX VSN:	FLEX 6809
DESCRIPTION: This utility performs the complement of the 'OLOAD'

utility.	It allows one to save data in ram, so that

the resulting binary file will load at different

address than the original ram copy.	This is useful

along with OLOAD for making customized versions of

FLEX, by using OLOAD to load FLEX at a low memory area,

modifying it using DDT or similiar, then saving

the modified binary with OSAVE, with an offset so that

the binary will load where FLEX is supposed to load.

The format of the call is:
	OSAVE,<FILE>,<START-ADD>,<END-ADD>,<OFFSET>[,<XFER-ADD>]
	The <OFFSET> added to the addresses.	the <XFER-ADD> is

is optional, and works similiar to the 'SAVE' command.

Note that this program does not re-locate anything.

It just makes a binary that will load at a different

place.	It does not guarantee that it will run there!

For more information, see the source for documentation.

NAME:	SAVTEXT
AUTHOR:	FERROUS STEINKA
FLEX VSN:	FLEX II (6800)
DESCRIPTION: SAVTEXT is a utility that allows the user to SAVE a TEXT

file from memory to the disk on a specified file name.

All error possibilities are checked for and reported to

the user if encountered.	Form of the call is:
	SAVTEXT,<FILENAME>,<START ADDRESS>,<END ADDRESS>

Default extension is .TXT, and addresses must be hex.

NAME:	SECTOR
AUTHOR:	JOHN HIGLEY
FLEX VSN:	FLEX09
DESCRIPTION: This program displays the sector arrangement of

a file on disk.	Also a chain of sectors starting

at a specific point can be displayed.

Form of the call is	SECTOR,<filename> for a file

or	SECTOR,<+DTTSS> where D is the

disk drive number, and TT is the starting track, and

SS is the starting sector.	First digit of the specification

is always used as the drive number, and the remaining

digits of the specification are right justified to determine

the starting track and sector.
