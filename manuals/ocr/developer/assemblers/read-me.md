# READ-ME

> Source: `dev/assemblers/mace/MACE 6809 Assembler.zip!MACE09.DSK!READ-ME.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

MACE/XMACE/ASM05
	================

	BEFORE YOU DO ANYTHING WITH THIS	PACKAGE	YOU	SHOULD
	FORMAT	A BLANK DISK AND THEN COPY ALL FILES FROM THIS
	DISK TO THE FRESHLY FORMATTED DISK. THIS	DISK	SHOULD
	THEN	BE	PUT	IN A SAFE PLACE AND ALL SUBSEQUENT WORK
	CARRIED OUT USING THE COPY!

	DO NOT LOOSE THIS DISK. IF YOU EVER	WANT	TO	UPGRADE
	THIS	SOFTWARE	FOR	A	LATER VERSION YOU MUST, REPEAT
	MUST, RETURN IT TO US TO BE ELIGIBLE FOR THE	LOW-COST
	UPGRADE SERVICE.


	* * * * * * * * * * * * * * * * * * * * * * * * * * *
	*	3*
	*	COMPLETE AND RETURN THE REGISTRATION FORM NOW!	*
	*	3*
	* * * * * * * * * * * * * * * * * * * * * * * * * * *


	 NOTE
	 ====

	Before running the 'SETMACE', 'SETXMACE' or 'SETASM05'
	program	you	should turn the pause function of TTYSET
	off thus: +++TTYSET,PS=N<CR>. If you fail to	do	this
	strange	stoppages	may	occur	whilst the prompts are
	issued.


	RECENT CHANGES
	==============

	The	SETMACE,	SETXMACE	and	SETASM05	configuration
	programs	will	now	accept	drive	assignments	of	0
	through	7	for	compatibility	with	Windrush's
	implementation of FLEX. This extended drive	table	is
	only available in WMS FLEX version 6.6 onwards. If you
	have an older release of FLEX	only	drive	numbers	0
	through 3 will be valid.

	The	'R'	and	'W'	commands	now	default to the file
	defijed	by	SETXMACE,	SETXMACE	or	SETASM05
	(1.SCRATCH.SCR	as	supplied) at all times except when
	you specifically	direct	these	commands	to	another
	drive	or	file.

	The	changes	mean	that when you use 'R' or 'W' alone
	output will always be directed	to	1.SCRATCH.SCR	(or
	however	you	define	it).	If	'R' or 'W' are used to
	direct	input/output	to	a	specified	file	the
	re-direction	is valid for a single command only, i.e.
	the default file name is not altered.

	This has been done to prevent the commom accident that
	'R' is used to read in a library file specified by the
	user	and then 'W' is subsequently used to write out a
	few lines to a temporary file. Unfortunately	the	'W'
	command would have written on top of the users library
	file instead.


-- O --

If	you	have	any	comments	about	this	product	or	its
documentation please direct them to:


WINDRUSH MICRO SYSTEMS LIMITED
Attn: William C. Dickinson
Worstead Labs
North Walsham, Norfolk
ENGLAND	NR28 9SA


TEL: (0692) 404086 from the U.K.

	or

	44 (692) 404086 from the U.S.

TLX: 975548 WMICRO G
