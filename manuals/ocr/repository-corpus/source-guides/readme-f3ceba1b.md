# README

> Source: `sourcecode/library-disks/LIB25 - FLEX Source Library - Source Code and Build Files - Includes AMERICAN, CHASE, DANISH.zip!LIB25.DSK!README.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

Microbox ][ Graphics Utilities from Silicon Fen Software
	--------------------------------------------------------

	Release R0.1 7/2/85.

	These	utilities	provide	interactive graphics facilities, a character
	set	editor and a set of predefined character sets. The programs are mainly
	written	using the Silicon Fen Software small-C compiler which is available
	from	Micro Concepts for 35 pounds plus VAT and delivery. The C source code
	is	provided	and	users who have the compiler can modify or extend most of
	the utilities.
	Please	remember	to use a small ramdisk when running graphics programs
	to	prevent	corruption	as	none of these programs check to see if a large
	ramdisk is using the graphics ram.
	Thanks to Dave Rumball for PGRAPH.CMD, S_PRINT.BIN, SGET.C and SSAVE.C.

	Programs provided are:

	IG.TXT	This program is written in assembler but it uses the
	IG.CMD	Microbox ][ graphics library provided with small-C.
	IG stands for Interactive Graphics. This program extends
	the FLEX memory resident command table and allows graphics
	commands to be typed to the FLEX prompt. It resides in
	memory permanently (until FLEX is rebooted) just above
	the PRETTY character set from E900 to EFFF. The graphics
	commands are checked so that they do not draw off the edge
	of the graphics screen and corrupt the ramdisk and text
	error messages are output. A help command gives a summary
	of the available commands which are also shown when the
	program is first loaded.

	GWORD.C	This program is used with IG. There is not enough room in
	GWORD.CMD	ig to handle drawing text on the graphics screen so GWORD
	is used. IG's current cursor position is picked up by GWORD
	and text is drawn on the graphics screen as it is typed.
	The text zoom is passed to GWORD on the command line e.g.

	+++GWORD 1	this gives 22 by 16 double size characters

	The zoom can be between 0 and 15. Typing backspace causes
	the previous character to be deleted. If a character won't
	fit on the screen then an error message is generated and
	GWORD exits. Typing return causes GWORD to exit but doesn't
	switch back to the text screen. Type T to IG to get back
	when GWORD has finished. The top left corner of the first
	character will be positioned at the current IG position.
	GWORD uses the replace pen type but does not affect the
	current IG pen type.


	LINE.C	Line is also used with IG. All of LINE's operations are
	LINE.CMD	performed by calling FLEX with IG commands using the system
	function provided with small-C. If IG is not present when
	LINE is used then LINE tries to invoke IG first. LINE
	contains a help message which details all possible commands
	but the basic principle is that a visible cursor can be
	moved around the graphics screen and lines can be drawn
	by planting one end then 'rubber banding' the line from
	that position interactively until it is positioned
	correctly. LINE also allows the user to flip between the
	text and graphics screens and will report the current
	cursor coordinates. LINE can be invoked in three ways:

	!Silicon Fen Software


	Typing +++LINE sets up the program to draw one line then
	finish. Typing +++LINE 1 (i.e. a single parameter) causes
	the program to loop and draw multiple lines until ESC is
	typed. These two modes start the cursor in the centre of
	the screen. (the cursor is a small circle). The third mode
	is invoked with two parameters e.g. +++LINE 1 1 and it
	continues after LINE has been aborted by picking up the
	current IG cursor position and drawing multiple lines.
	LINE sets IG's pen type to complement.


	SSAVE.C	These programs use an extension of the small-C graphics
	SSAVE.CMD	library which reads and writes blocks of screen ram. This
	SGET.C	means that they cannot be recompiled with the current
	SGET.CMD	version of small-C. They allow the graphics screen to be
	MAP.BIN	saved to a binary disk file with blank areas compressed to
	save disk space. They were written by Dave Rumball.
	MAP.BIN is an SSAVE'd still from the Microbox ][ demo.

	PGRAPH.TXT	To complete this package these programs allow graphics
	PGRAPH.CMD	screens to be dumped to an Epson FX-80, Taxan or Canon
	S_PRINT.BIN printer. S_PRINT.BIN is a version of the standard
	Microbox ][ serial printer driver which passes 8 bit values
	through without clearing the eighth bit and producing a
	striped picture. It is not known whether the parallel
	printer driver suffers from the same problem.
	+++GET S_PRINT should be typed before using +++PGRAPH.


	CHASE.C	CHASE stands for CHAracter Set Editor. This program allows
	CHASE.CMD	the user to interactively modify the character set pixel
	AMERICAN.CHS by pixel and save the modified character set to a file.
	ENGLISH.CHS Character set files can be loaded with the editor by typing
	FRENCH.CHS	+++CHASE CHARSET.CHS or the current character set can be
	DANISH.CHS	used by typing +++CHASE on its own. A character set file
	can be loaded without using CHASE with +++GET CHARSET.CHS
	and a .CHS file consists of a binary dump of the character
	set portion of the standard Microbox PRETTY.CMD. While
	using CHASE the screen can be printed using a FLEX call to
	PGRAPH which records the current character set.
	Chase uses a screenful of graphics that was designed using
	the above interactive graphics programs. LINE was used to
	position the cursor then GWORD was used to create the text.
	When complete the screen was saved using SSAVE and later,
	using SGET it was restored, printed using PGRAPH, and
	digitised using the report current cursor facility in LINE.
	When the positions of the objects on the screen had been
	noted on the printout it was coded using small-C functions
	directly.
	Some character sets are provided which correspond to the
	foreign character fonts of the Epson FX-80. A switch in
	the Epson selects the nationality and the characters seen
	on the screen will be reproduced on the printer as long as
	the right settings are used for the right character set.
	The main problem is remembering which key on the keyboard
	generates the required symbol. The AMERICAN.CHS character
	set is just a slightly improved version of PRETTY as this
	is the usual set for programming in C.


	!Silicon Fen Software
