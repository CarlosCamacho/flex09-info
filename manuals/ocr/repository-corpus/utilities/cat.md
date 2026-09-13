# CAT

> Source: `utilities/system/LEO1 - FLEX System Utilities - Documentation and Examples.zip!LEO1.DSK!CAT.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

A NEW CAT UTILITY FOR FLEX 1, 2 and 09

	Bruno D. Puglia and Leo E. Taylor


	START BY ASSEMBLING THE SOURCE


The user can assemble the CAT Program and run it on FLEX 1 or 2.0 (6800)
or FLEX 09 (6809) systems. CAT is compatible with the old	CAT	but	has
features	and	options	never available to the FLEX user. It can replace
the old CAT, DIR and FILES programs.

Before doing the assembly, you can save your	old	CAT	by	renaming	it
CATOLD.	You can now assemble the new CAT program. Since CAT is provided
as a source file, you can assemble it with the TSC	FLEX	assembler	for
your	6800	or 6809 processor. You will have to change one letter in one
line in order to select the type of processor used:

	FLEX EQU $A000 for 6800	FLEX EQU $C000 for 6809
	-	'-
There are width equates which must be set for your display and	printer.
If	these	devices	have	auto return (CR), set the width count one less
than the maximum line length. An 80 character terminal with	auto-return
on the 80th character should be defaulted to 79 in the source.

There	are other options to set at this time. The page length is set for
66 lines and this value will be correct for printers with form feed	and
11	inch paper. The form-feed character is set to $0C, but it can be set
to the user's character. If your printer can't	form	feed,	adjust	the
lines per page upward by two.

COCO	NOTES:	For	Color	Computers with 51 characters per line the best
results will be attained with TWIDTH set to 52.	Also,	delete	the	two
lines marked with "<<<" to so that the Max option will fit on screen.


INITIAL SURPRISES

CAT will accept commands in the same format as the original CAT, but its
display	format	is	done in multiple columns across the screen. Another
surprise is yet to come! As you start to use	the	various	options	the
number	of	columns	across	the	display	or printer will automatically
change depending on what options you have selected.


OPTION LETTERS


There are several option letters supported in CAT which make it	a	very
powerful	utility	and maybe a bit overwhelming at first. As you use CAT
you will begin to learn what the options are and how to use them	effec-
tively.	After	you learn what each option letter does, you may elect to
go back and select your own set of default options in	the	source.	All
options are entered on the command line. If you have trouble remembering
what the letters do, the CAT help list can be displayed	by	entering	a
command of CAT +.


	 page 1


Entering a command line with options : CAT +SDF1 1

If	an	unimplemented	option	letter is used, CAT will display the HELP
list. CAT uses positive option logic. Entering an option letter	on	the
command	line	will turn the option on. All others are turned OFF so you
must enter ALL options you want if you enter any at all.


DEFAULT OPTIONS

CAT	has	default	options	which	are used whenever there are no option
letters entered on the command	line.	The	source	has	provisions	for
setting	your own set of default options. The user can disable or enable
an option by placing an EQU 'N (OFF) or EQU 'Y (ON) in the source option
list.	After	the	assembly	of	CAT,	the user can check the options by
typing CAT +. CAT's HELP list will display	which	options	are	enabled
with	a	Y	in front of the option letter. In dealing with defaults, you
must remember that if any option is entered	on	the	command	line	all	
defaulted	options	are	turned	off	and all desired options have to be
entered.

	CAT +	will display CAT's HELP list :


- Display -
- Comments -

	Usage:CAT +DF 1 .CMD AB	typical command line

	N	A Alpha	Alpha A,B,C type listing
	N	D Date	Display file Date
	N	F File #	Display DIR File number
	N	M Maxi-DIR	DIR full listing
	N	N Non-existant
Display Deleted files with (-)
	N	P Paging	Paging with printer column width
	N	R Repeat	Repeat CAT as listed on command line
	Y	S Size	Display file sector Size
	N	T Time	Display file creation Time


	EXPLANATION OF OPTION LETTERS

A	CAT IN ALPHABETICAL GROUPS

The	"A"	option will group the listing by the first letter. This simple
form of alphabetical CAT must scan the entire directory for each	letter
and	this will take time. We do not feel this option should be defaulted
on. When the "A" option is	used	you	cannot	use	any	match	strings.
Additional	information	will	be	found in the FEATURES section of this
manual.


D	DISPLAY FILE CREATION DATE

The "D" option will display the file's creation date. Not all FLEX users
use real dates when first booting up FLEX so if the	month	is	zero	or
over	12,	CAT will display the month as "BAD". Dates can be very useful
with our programs so the user will find it advantageous to	use	current
dates.


	 page 2


F	LIST THE DIRECTORY FILE NUMBER

The	"F" option will list the actual directory entry number. This number
can be used with COPY by file number.


M	MAXIMUM DIR TYPE LISTING

The	"M"	option	turns CAT into a DIR type program. The "M" option will
provide information on track-sector	data	and	the	protect	file	code
information.	The	"M"	option	turns	on	the	D,F,S and T options plus
routines needed for the header, track and sector, and protect codes. You
can still add option letters to enhance the DIR type listing.


N	LIST NON-EXISTING FILES ON THE DISK [ DELETED FILE IN THE DIR ]

The "N" option was chosen as "NON	EXISTING"	because	it	will	display
deleted	file	entries	that exist in the directory. The actual file may
not exist on the disk, it may have been over-written when it was part of
the	list	of	free	sectors. You cannot assume a deleted file is intact
unless you know it was recently deleted and you have not written	enough
new files on the disk to reuse the deleted file's sectors. In the disk's
directory a deleted file will have the first letter	of	the	file	name
changed	to	a	$FF. CAT will display the $FF as a dash (-) as the first
character of the file name. It is not a good practice to use one or	two
character	file	names	since	the first letter is deleted from the name
when a file is deleted. When the "N" option is	combined	with	the	"M"
option	the	DIR	type	listing	will get you the starting sector of the
deleted files in the directory.

P	PROVIDE A PAGED LISTING and USE PRINTER WIDTH EQUATE

The "P" option will enable a paging	subroutine.	It	will	place	blank
lines	on	the	top and bottom of the page. This is handy when listing a
disk with a large number of files. The printer width equate is picked up
and used to calculate the number of columns allowed for each form of the
printed listing.


R	REPEAT OF CAT USING THE EXISTING COMMAND LINE

The	"R"	option allows CAT to re-start. A prompt will appear at the end
of each CAT; enter "E" to exit to FLEX, or	hit	any	other	key	to	do
another	CAT	as originally listed on the command line. This option will
allow you to change disks and do a CAT without re-entering the	data	on
the	command	line.	If	the "R" option is combined with FLEX's O.CMD, a
disk file of several disks can be made. The user can select CAT	options
to control the type of information listed in the disk file.

S	DISPLAY FILE SECTOR SIZE

The "S" option will enable the sector size of files to be displayed.

T	DISPLAY FILE CREATION TIME

The	"T"	option	will	the	file's creation time. If the FLEX operating
system that created the file was modified to encode the	time	into	the
directory, that time will be displayed in 24 hour format.


	 page 3


	 EXAMPLES

CAT	List all files on the ASN-ed work drive using
	the default options set up in the source.

CAT 0,1 C .BAS
List all files starting with the letter C and
	all .BAS files on drive 0. After drive zero is
	done list drive 1. Since no options were given
	defaulted options will be used.

CAT +	Display HELP list showing options and defaulted
	options with a "Y" or "N" next to option letter.

CAT +2 1	Display listing of the file names only for drive
	1 in two columns. You may overide the automatic
	column count by entering an option of 1-9.

CAT +MA	Display a DIR-type listing including the file
	number, name.ext, size, starting and ending
	track and sectors, date, time, and protect codes
	using alpha groups of A B C etc.

CAT +DT	Display a listing of all files with the date and
	time of creation. If a file does not have a time
	encoded, that column will be filled with spaces.

P CAT +MNP	Print a DIR-type directory including all deleted
	files and page the listing.

O CATFILE CAT +RSDF1	Make a diskfile "CATFILE" with Size, Date, File
	number of the working drive. The catalog will be
	one column wide. When a cat is complete, the E
	prompt is displayed. When any key, except the
	"E", is pressed the CAT will repeat. "E" would
	return to FLEX and close CATFILE. This file
	could then be edited or spooled to the printer
	using PSP or PRINT commands.

P CAT +ASDFP
Print Alpha grouped listing to printer with the
	file number, name.ext, size and date.


MEMORY USAGE

Before	discussing	the	features in CAT please accept the fact that CAT
was a large program to begin with and we were committed to writing a CAT
program	that	would fit into the utility space provided for by FLEX. We
have attempted to squeeze in as many features as possible in the limited
memory	space.	Many	'tricks'	were	used in the program to save space.
Though the "tricks" resulted in poor structure, most are well commented.


	 page 4


SAMPLE CATALOG

CAT	includes	information	not	found in the original FLEX utility. The
following sample catalog will be used as an example:

	CAT +M 0 C E

	DRIVE:0	VOLUME:FLEXU-9	4 CREATED:28-Dec-85

	FILE#	NAME	TYPE BEGIN	END	SIZE	DATE	TIME	PRT

		1 CLIB	/LIB 01-01 02-16	150	1-Nov-85	WDC
	15 CSTART	.R	06-4F 06-51	3	8-Aug-85

	44 CAT	.CMD 12-41 12-47	7	31-Dec-85 11:48	
	59 COPY	.CMD 09-54 09-65	18	24-Nov-85 18:42	
	62 CAT120	.TXT 17-75 18-31	61	31-Dec-85 17:12	
		9 ERRORS	/SYS 06-17 06-1F	9	4-Jan-81

	72 EXEC	.CMD 0B-63 0B-63	1	4-Nov-82


	FILES=145	LARGEST=150	TOTAL=302/2230	FREE=330

DRIVE:	The drive number that was cataloged.

VOLUME:	The disk volume name and number.

CREATED:	The date the disk was initialized.

FILE#	Sequential number of the file in the directory. This catalog

only shows files starting with C or E. If all files were

cataloged then the numbers would count up from one.

NAME/TYPE	File name and extension. When a slash "/" appears in CAT as a

separator the file was created as a random file. This marking

is for display purposes only; when accessing a FLEX file

extensions are always separated by a period.

SIZE	Length of file in sectors.

BEGIN/END	Starting and ending disk sectors for file. These are the only

numbers that are in HEX. The large sector numbers shown are

for a winchester drive.

DATE	The date file was created or edited. Yes, I am modifying CAT

on New Year's Eve!

TIME	The time file was created or edited. Note that files written

before I modified FLEX do not have creation times.

PRT	The three FLEX protect codes are indicated by letters. The

catalog protect bit is not honored by this CAT.


C-catalog protect	D-delete protect	W-write protect

FILES=	Total number of files in the disk directory.

LARGEST=	Largest file on the disk.

TOTAL=	Total number of sectors displayed followed by the total

number of sectors used on the disk.

FREE=	Sectors remaining for use.


	 page 5


	 FEATURES

A	simple A B C type alpha type sort was included in CAT for those disks
which are not already alphabetized.	Since	the	scan	process	will	go
through	the	entire	directory	for each letter A thru Z, the "A" alpha
option takes a great deal of time. It would not be wise	to	enable	the
"A"	option	when	setting up CAT defaults unless you really need it and
were ready to accept the extra time	required.	If	alphabetizing	is	a
major	concern	for	the user, then use our COPY program which will do a
full alphabetize when a disk is copied.

We did not pick our options letters with keyboard	letter	placement	in
mind	but	it so happens the commonly used option letters fall in a line
on the keyboard. A S D F = ALPHA SIZE DATE and FILE number. You may find
this handy when typing in the option letters.

We	have	elected to use the "+" sign for options since it is consistent
with other FLEX programs. The addition of having HELP built into CAT	is
required	when	several	option letters are used. Automatic selection of
the number of columns for both the display terminal and the printer make
this CAT unique.


	CONCLUSION

The programmers who wrote	CAT	hope	you	will	enjoy	using	this	new
utility.	As far as we know CAT is bug free. It is possible that you may
locate a bug or make improvements to our CAT. We hope you	would	inform
us if you make any changes. As you look over the source and use CAT look
beyond CAT and consider the	compatibility	aspects	of	FLEX.	CAT	was
written to be compatible with all FLEX systems that use 680X processors.
By using standard FLEX vectors and	adaptable	6800-6809	code	we	have
produced	a	program	which	can be used by most FLEX users. There is no
advantage to writing a major utility for	just	one	type	FLEX	system.
Optimizing	a	utility	like CAT to a given processor gains little if we
have to give up compatibility. If you're thinking	about	adapting	this
code	to	a	6809	only, forget it. CAT was written to be compatible for
both the 6800 and the 6809 so please let it stay that way.

FLEX users cannot afford to be split up	into	small	little	system	or
processor	groups. The FLEX system compatibility must be kept intact and
should be utilized with more compatible programs like this CAT	and	our
COPY.	If	you	feel	as	we do, then speak out and say so! If you write
programs, think about the compatibility.

This program came to you in source form at "NO CHARGE" so feel	free	to
pass them along to other FLEX users on the same "NO CHARGE" basis.


Bruno D. Puglia	 Leo E. Taylor
27 Maitland Ave.	109 Twin Brook Road
Randolph, Mass. 02368	Hamden, Conn. 06514
1 617 961-3548	Weekends

last manual revision: Dec 31,1985


	 page 6
