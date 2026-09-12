# READ-ME

> Source: `dev/pascal/PL9_42 - Pascal Language - Program and Support Utilities.zip!PL9_42.DSK!READ-ME.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

PL/9 VERSION 4.XX
	=================


	BEFORE YOU DO ANYTHING WITH THIS	PACKAGE	YOU	SHOULD
	FORMAT	A BLANK DISK AND THEN COPY ALL FILES FROM THIS
	DISK TO THE FRESHLY FORMATTED DISK. THIS	DISK	SHOULD
	THEN	BE	PUT	IN A SAFE PLACE AND ALL SUBSEQUENT WORK
	CARRIED OUT USING THE COPY!

	DO NOT LOOSE THIS DISK. IF YOU EVER	WANT	TO	UPGRADE
	THIS COPY OF PL/9 FOR A LATER VERSION YOU MUST, REPEAT
	MUST, RETURN IT TO US TO BE ELIGIBLE FOR THE	LOW-COST
	UPGRADE SERVICE. A


	* * * * * * * * * * * * * * * * * * * * * * * * * * *
	*	3*
	*	COMPLETE AND RETURN THE REGISTRATION FORM NOW!	*
	*	3*
	* * * * * * * * * * * * * * * * * * * * * * * * * * *


The	following	files	are the PL/9 compiler itself and must all
exist on your system drive:

 1. PL9	.CMD	This	is	the	compiler	itself. It runs at
	$0000 - $3FFF.

 2. PL9_TD	.CMD	This is the PL/9 tracer. It	is	called	by
	the	compiler	and	runs	in	the	FLEX TCA
	between $C100 - $C6FF.

 3. PL9	.ERR	This is a random access file very much like
	the	FLEX	'ERRORS.SYS'	and is used by the
	compiler	for	error	reporting	during
	compilation.


The	following file is the PL/9 configuration program. Generally
speaking you only need to run it once. It should	be	copied	to
your	system	disk, run, and then deleted if you have no further
use for it:

 4. SETPL9	.CMD	This command will enable you	to	configure
	you	copy	of	PL/9	to	match	your system
	hardware configuration.

 5. SETPL9	.PL9	This is the PL/9 source file for the above.
	It is supplied just in case you have a very
	unusual system configuration. If you	alter
	it you must	re-compile	it	using	a	FLEX
	command line call, viz:

	+++PL9,0.SETPL9.PL9,O=0.SETPL9.CMD<CR>

	Note:	TRUFALSE.DEF and	FLEX.LIB	must	be

present on drive #0 to compile	this

program.


The	following	are	the	PL/9	libraries	which	are	generally
'INCLUDEd' in PL/9 programs when they are required.	These	need
not	be	present	on	your	system	disk for the compiler to run
unless the program being compiled 'INCLUDEs' any of	them.	They
may	be	placed	on	your	system	disk	(space permitting) or a
selection of them may be placed on specific work disks.

 6. TRUFALSE.DEF	TRUE, FALSE and MEM definitions.

 7. HEXGLOBL.DEF	HEXIO error flag definitions.

 8. IOSUBS	.LIB	A selection of low-level I/O drivers.

 9. TERMSUBS.LIB	Intelligent terminal drivers.

10. HEXIO	.LIB	HEX input and output routines.

11. BITIO	.LIB	BINARY input and output routines.

12. HARDIO	.LIB	PEEK and POKE for those who like BASIC!

13. STRSUBS .LIB	Low-level string handlers.

14. BASTRING.LIB	BASIC syntax string handlers.

15. FLEX	.LIB	FLEX interface routines.

16. SCIPACK .LIB	Scientific functions (for REALs).

17. REALCON .LIB	REAL -> ASCII and ASCII -> REAL.

18. REALIO	.LIB	REAL input and output routines.

19. NUMCON	.LIB	INTEGER input and output routines.

20. SORT	.LIB	Low-level sort routine.


21. READ-ME .TXT	This file!


-- O --


If you have any comments about this product or its documentation
please direct them to:


WINDRUSH MICRO SYSTEMS LIMITED
Attn: William C. Dickinson
Worstead Labs
North Walsham, Norfolk
ENGLAND	NR28 9SA

TEL: (0692) 404086 from the UK.	Or 44 (692) 404086 from the US.
TLX: 975548 WMICRO G
