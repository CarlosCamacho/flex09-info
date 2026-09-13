# READ-ME

> Source: `misc/archive-series/bb/BB168 - PL9 Development.zip!BB168.DSK!READ-ME.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

PL/9 VERSION 4.XX
	=================


	BEFORE YOU DO ANYTHING WITH THIS	PACKAGE	YOU	SHOULD
	FORMAT	A BLANK DISK AND THEN COPY ALL FILES FROM THIS
	DISK TO THE FRESHLY FORMATTED DISK. THIS	DISK	SHOULD
	THEN	BE	PUT	IN A SAFE PLACE AND ALL SUBSEQUENT WORK
	CARRIED OUT USING THE COPY!

	DO NOT LOOSE THIS DISK. IF YOU EVER	WANT	TO	UPGRADE
	THIS COPY OF PL/9 FOR A LATER VERSION YOU MUST, REPEAT
	MUST, RETURN IT TO US TO BE ELIGIBLE FOR THE	LOW-COST
	UPGRADE SERVICE. NO ORIGINAL DISK ... NO UPGRADE!


	* * * * * * * * * * * * * * * * * * * * * * * * * * *
	*	3*
	*	COMPLETE AND RETURN THE REGISTRATION FORM NOW!	*
	*	3*
	* * * * * * * * * * * * * * * * * * * * * * * * * * *


The	following	files	are the PL/9 compiler itself and must all
exist on your system drive:

 1. PL9	.CMD	This	is	the	compiler	itself. It runs at
	$0000 - $43FF.

 2. PL9_TD	.CMD	This is the PL/9 tracer. It	is	called	by
	the	compiler	and	runs	in	the	FLEX TCA
	between $C100 - $C6FF.

 3. PL9	.ERR	This is a random access file very much like
	the	FLEX	'ERRORS.SYS'	and is used by the
	compiler	for	error	reporting	during
	compilation.


The	following file is the PL/9 configuration program. Generally
speaking you only need to run it once. It should	be	copied	to
your	system	disk, run, and then deleted if you have no further
use for it.

	 NOTE
	 ====

	Before	running	the	'SETPL9' program you should turn
	the	pause	function	of	TTYSET	off	thus:
	+++TTYSET,PS=N<CR>.	If	you	fail	to do this strange
	stoppages will occur whilst the prompts are issued.


 4. SETPL9	.CMD	This command will enable you	to	configure
	you	copy	of	PL/9	to	match	your system
	hardware configuration.

 5. SETPL9	.PL9	This is the PL/9 source file for the above.
	It is supplied just in case you have a very
	unusual system configuration. If you	alter
	it you must	re-compile	it	using	a	FLEX
	command line call, viz:

	+++PL9,0.SETPL9.PL9,O=0.SETPL9.CMD<CR>

	Note:	TRUFALSE.DEF and	FLEX.LIB	must	be

present on drive #0 to compile	this

program.


The	following	are	the	PL/9	libraries	which	are	generally
'INCLUDEd' in PL/9 programs when they are required.	These	need
not	be	present	on	your	system	disk for the compiler to run
unless the program being compiled 'INCLUDEs' any of	them.	They
may	be	placed	on	your	system	disk	(space permitting) or a
selection of them may be placed on specific work disks.

 6. TRUFALSE.DEF	TRUE, FALSE and MEM definitions.

 7. HEXGLOBL.DEF	HEXIO error flag definitions.

 8. IOSUBS	.LIB	A selection of low-level I/O drivers.

 9. TERMSUBS.LIB	Intelligent terminal drivers.

10. HEXIO	.LIB	HEX input and output routines.

11. BITIO	.LIB	BINARY input and output routines.

12. HARDIO	.LIB	PEEK and POKE for those who like BASIC!

13. STRSUBS .LIB	Low-level string handlers.

14. BASTRING.LIB	BASIC syntax string handlers.

15. FLEX	.LIB	FLEX interface routines.

16. SCIPACK .LIB	Scientific functions (for REALs).

17. REALCON .LIB	REAL -> ASCII and ASCII -> REAL.

18. REALIO	.LIB	REAL input and output routines.

19. NUMCON	.LIB	INTEGER input and output routines.

20. SORT	.LIB	Low-level sort routine.


21. READ-ME .TXT	This file!


	NEW COMPILE OPTION ADDED
	========================

A new compile option has been added since the documentation	for
this	product was finalised. It is the letter 'F' meaning 'FULL'
and is used	when	obtaining	terminal	listings	(A:T,F),	when
obtaining	printouts	(A:P,F)	or	when	producing	output files
(A:L,F). Normally PL/9 will not print the contents of 'included'
files.	When	the	'F'	option	is	used	the	contents	of each
'included' file will be printed as it is encountered. The option
also works with the command line call of PL/9 thus:

+++PL9,1.SOURCE.PL9,P,F <CR>

NOTE: If the 'C' (show code) option is	invoked	in	conjunction
	with	the 'F' command code for the included libraries will
	not be shown. Only the code for the main program	will	be
	output.


PL/9 may now be called	from	within	'EXEC'	files,	a	feature
missing from earlier releases.


	CHANGES IN PL/9
	===============

Recent	improvements	in	PL/9	have	resulted	in	the compiler
growing beyond its original 16K limits. This means you will have
approximately	1K less room in the edit buffer and that the edit
buffer pointers will have moved. Page 36 in the 'PL/9	REFERENCE
MANUAL'	describes the technique by which you may recover a file
in memory. You should change the edit buffer pointer	references
in the manual as follows:

$4000/1	is now	-> $4400/1
$4002/3	is now	-> $4402/3


	RECENT CHANGES
	==============

The	SETPL9	configuration	programs	will	now	accept	drive
assignments of 0 through 7	for	compatibility	with	Windrush's
implementation	of	FLEX.	This	extended	drive	table	is only
available in WMS FLEX version 6.6 onwards. If you have an	older
release of FLEX only drive numbers 0 through 3 will be valid.

The	'R'	and	'W'	commands	now default to the file defined by
SETPL9 (1.SCRATCH.SCR as supplied) at all times except when	you
specifically direct these commands to another drive or file.

The	changes mean that when you use 'R' or 'W' alone output will
always be directed to 1.SCRATCH.SCR (or however you define it in
SETPL9).	If	'R'	or	'W'	are used to direct input/output to a
specified file the re-direction is valid for	a	single	command
only, i.e. the default file name is not altered.

This	has	been	done to prevent the common accident that 'R' is
used to read in a library file specified by the	user	and	then
'W' is subsequently used to write out a few lines to a temporary
file. Unfortunately the 'W' command would have written on top of
the users library file instead.


	PL/9 'LONGS' NOW AVAILABLE
	==========================

A special version of PL/9 called 'PL9L' has been	developed	for
applications	which	require	a	32-bit	long integer in lieu of
floating point numbers (reals). Typical applications are numeric
control and robotics. PL/9 LONGS has been developed specifically
for these applications. The	only	difference	between	the	two
compilers	is	that	the	standard	version	supports	a	32-bit
floating point REAL and the	LONGS	version	supports	a	32-bit
signed	long	integer	instead.	Please	note	that	due to very
limited demand for PL9 longs we have not produced a	manual	for
it	...	the	normal	PL/9	manual	is	supplied	with	a	brief
description of the differences between the	two	products.

PL/9 LONGS is only available direct from Windrush and sells	for
the same price as the standard PL/9 compiler with REALS.


	PL/9 UTILITIES PACKAGES
	=======================

The manual you have received should be accompanied	by	a	flyer
which describes the following PL/9 utilities packages:

1. FLEX utilities
2. Standard I/O package for PL/9
3. Adventure game generator
4. Term-FLEX
5. Software tools in PL/9

These	packages are a gold mine of working PL/9 programs and can
be freely used in target	applications	by	end	users.	If	the
literature just described is missing call and ask us for another
set.


-- O --


If you have any comments about this product or its documentation
please direct them to:


WINDRUSH MICRO SYSTEMS LIMITED
Attn: William C. Dickinson
Worstead Labs
North Walsham, Norfolk
ENGLAND	NR28 9SA

TEL: (0692) 404086 from the UK.	Or 44 (692) 404086 from the US.
TLX: 975548 WMICRO G
