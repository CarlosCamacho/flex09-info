# DNSTAR23

> Source: `apps/dynastar/DYNAS23 - DynaStar Word Processor - Source Code and Build Files.zip!DYNAS23.DSK!DNSTAR23.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

Addition	to section 2.1 Basic Cursor Motion Commands.	

Insert after ^I paragraph.

^U	tab left	Move	the cursor left to the previous tab stop.
	In	OVERTYPE	mode	this	is	a	simple	cursor
	movement.	In INSERT mode this command deletes
	all characters to get to the previous tab stop.
	This	command	is	most	useful	in	writing
	structured	programs,	to	un-indent	after	a
	block of code is completed.
	
Addition to section 2.4 ^K Formatting and Tab Commands

REPLACE ^KK paragraph

^KK Kill all	Removes	ALL tabs from the ruler line.	If this
	tabs	done	accidentally,	the	fastest	way	to
	regenerate	standard	tabs	is	with	the	^KL
	command and a value of 5.

^KL n Set tab	Sets	tabs	to the selected interval.	Enter	a
	interval	number	to	select the desired spacing of	tabs
	for	the	entire	ruler	line.	The	standard
	spacing of tabs is 5.

Addition to section 4.0	The "Files" Menu

REPLACE the D directory list paragraph

D	List	The	D	command will prompt for a drive	number
	Directory	from	0	to	3 and produce a	listing	of	that
	drive's directory.

Insert after L List Macros

S	Scratch	The S command will prompt for a file name to be
	file	scratched.	Extreme	care should be used	with
	this	command	as it is possible to delete	the
	files	that are in use.	The principle	purpose
	of	this	command is to aid in the recovery	of
	disc full problems.

===============================================================
This	is	a	list of the bugs that have been	fixed	with	this
release

1.	GOTOXY.SYS	maybe on system drive with DS files.	It is	no
	longer	required to be on the "0" drive.

2.	DS	will now recover from a disc full error during ^BW,	M,
	X,	and W commands.	Before each disc write a check is made
	of	the amount of remaining free space to determine if	the
	buffer to be written will fit.	If there is not enough room
	a message "Insufficent Disc space xxx sectors required." is
	displayed	and the disc write is aborted.	Due to the	text
	compression	action of FLEX this estimate of the number	of
	sectors	required	will	usually	be high by	10%	or	more
	depending	on the amount of blanks in the buffer.	The user
	has several courses of action:
	a. Abandon the	file.	
	b.	Write	the	file to another disc if	possible.	
	c.	Scratch	sufficient	files to free up the	required

sectors	on	the target disc so that the	new	file

will	fit.	Care should be taken not to scratch the

input	file	or	the	output	file	(called

"SCRATCH.TXT") as this will cause a crashed disc.

4.	Generate	and error prompt when there is no more text to be
	formated by "^KA".

6.	"^J" will behave the same with auto-indent on or off.

===============================================================
