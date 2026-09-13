# NEWSUBS

> Source: `sourcecode/library-disks/LIB40 - FLEX Source Library - Source Code and Build Files - Includes NEWSUBS, SEERAM, TREES.zip!LIB40.DSK!NEWSUBS.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

!+++ NEWSUBS.CMD +++
	7Last update 26th Feb.'87
	This	an attempt by C. G. Lindsay to make it possible to use the
	extended	Graphics	Ram	by modifing some of the normal monitor graphics
	routines to allow use of address bits 16 & 17
	The routines are modified versions of SETPAR ( ZETPAR ) : SETCRG
	(ZETCRG	)	:	GETCRG	(	GETGCR	)	: ARC ( XARC ) : CIRCLE (ZIRCLE) in
	addition there are eight routines to set up graphic screens called
	SCRN1 ; SCRN2 etc to SCRN8
	these use all eighteen bits of the address
	They were written for use with an unmodified ver. 4.5 monitor
	If problems-
	check	that	the	equate	addresses	agree	with	your	monitor
	addresses
	* SYSTEM EQUATES
	GCOM	EQU $F653	* Send GDC command.
	GPRM	EQU $F665	* Send GDC parameter.
	GPRMI	EQU $F674	* Read parameter byte from GDC.
	MASK	EQU $F67F	* Set mask
	SETPEN EQU $F691	* Define line profile and 'pen' type.
	SETPAT EQU $F6A8	* Set up graphics pattern in parameter ram.
	*	* X points to eight bytes in ram.
	FIGSF	EQU $F6BB	* Set up figs command using parameter set in ram
	FIGSG	EQU $F6E0	* Set figs command for graphics.
	OFF	EQU $F80E	* Switch off display.
	ON	EQU $F81A	* Switch on display.
	SYNC	EQU $F75B	* Specify format
	MODE	EQU $F841
	DDUMMY EQU $F336
	XTEMP	EQU $DF92	YTEMP	EQU $DF94
	XCOORD EQU $DFB7	YCOORD EQU $DFB9
	PART1	EQU $DFBB	PART2	EQU $DFBF
	GFIGS	EQU $DFCD	DC	EQU $DFCE
	D	EQU $DFD0	D2	EQU $DFD2
	D1	EQU $DFD4	DM	EQU $DFD6
	CONST	EQU $DFD8
	*
	If ORG $B000 then:-
	PGSTOR EQU $BOO3	PAGE STORE	00 01 02 or 03
	PASTOR EQU $B004/5	PARTITION ADDRESS STORE

(NORM = 5E00 for the graphics screen)
	CPAGE	EQU $B006	Used when getting cursor addresses MS 2 bits
	CPART	EQU $B007/8	Middle and lower cursor address
	*
	Use	the	JUMP	TABLE	and	indirect addressing this will allow
	improvments to be added if required.
	When using these routines in a programme remember to set up

PGSTOR with the page No $XX	and PASTOR with the partition $XXXX
	* JUMP TABLE
	$B009 ZETPAR	Set partition
	$B00B ZETCRG	Set graphics cursor
	$B00D GETGCR	Get the graphics cursor
	$B00F ZGRAPH	Set to graphics screen
	$B011 XCLEAR	Clear the specified screen area
	$B013 XARC	Draw an arc
	$B015 ZIRCLE	Draw a circle
	$B017 SCRN1	The original screen at 00 5E 00
	$B019 SCRN2	Set up graphics screen No 2
	$B01B SCRN3	Set up graphics screen No 3
	$B01D SCRN4	Set up graphics screen No 4
	$B01F SCRN5	Set up graphics screen No 5
	$B021 SCRN6	Set up graphics screen No 6
	$B023 SCRN7	Set up graphics screen No 7
	$B025 SCRN8	Set up graphics screen No 8


	*
	* Other associated programmes are SEERAM.CMD , XX.CMD ,and XGSAMPLE

	+++SEERAM
	This will cause the entire graphics ram to float up your screen,
	it	is	interesting	to see the formatted Ramdisk and the text screen in
	graphics format.

	$+++ XX.CMD +++


Another aid to the use of extra ram.
	XX.CMD	can	be	used to clear fixed graphics screen areas or to
	move data between the areas ( approximatly two seconds per screen )
	This	command	assumes	the 512k memory map to be divided into a
	170	sector	ramdisk,	the	normal graphics screen, the text screen, and
	seven more	graphics screens.
	The	seven	extra	screens	form	a	continous strip of graphics
	screen,	the	object being to enable quick changes of vision or apparent
	movement of background.

	The partition addresses are as follows:-
	No.	Page	Partition (PASTOR)	Note
	1	$00	$5E00	The original area but it has a slight overlap on the
	2	$01	$0000	text screen	to move it would be good, but it would
	3	$01	$6C00	lose compatiblity with some of the existing graphics
	4	$01/2 $D800	programmes and require routines in the monitor to be
	5	$02	$4400	changed from $5E00 to a new value.
	6	$02/3 $B000
	7	$03	$1C00	Screens 2-3-4-5-6-7-8 form a continous strip
	8	$03	$8800	this leaves a small area $03 F3FF to $03 FFFF spare

	To use just type XX (return) and the rest is self prompting


+++	XGSAMPLE.CMD	+++

	This needs	+++NEWSUBS
	followed by +++XGSAMPLE

If	you	have	a	fully	operational	extended graghics ram and the
	correct version of monitor (ver. 4.5) you should see the normal graphics
	screen cleared and a design put in it.
	After a short pause to admire it the remaining seven screens are
	in	turn cleared of their stripes and given a pattern then the programme
	returnes to the FLEX prompt.
	If	this failes to happen check the list of equates against your
	version of the monitor, it works on both my MB2s


+++	HEADER.TXT	+++
	This	is	an aid to writing extended graphics programmes for use
	with	NEWSUBS.CMD,	I	should have written a 'lib' but was in a hurry to
	get somthing working.
	These	are my first working programmes for use with the new area
	of	ram	and they must be capable of improvement please send me any such
	efforts for including in the library
	/Chris. G. Lindsay
