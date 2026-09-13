# PG READ

> Source: `sourcecode/library-disks/LIB25 - FLEX Source Library - Source Code and Build Files - Includes AMERICAN, CHASE, DANISH.zip!LIB25.DSK!PG_READ.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

********	PRINTOUT of MICROBOX II GRAPHICS	********
	******** GRAPHIC PRINTING PROGRAMMES FOR use with ********
	********	the KAGA TAXAN KP-810 and other dot	********
	********	matrix printers with the same control	********
	********
codes		Dec.'85
********

	A modificaion by C. G. Lindsay of David Rumball's 'GPRINT'
		giving a high density printing of a graphics display.

	PG6.CMD	is	a	multipass version with both horizontal and vertical
dot displacement to ensure solid black areas, unfortunatly the printer has
a double start for the horizontal offset. If a smoother method is found to
obtain a half dot offset, please let me know.
	The	target	is a quality adequate for pcb printing. The product of
PG6 is to the same scale in both the vertical and horizontal axis.

	PG.CMD is smoother, but has vertical offset only resulting in black
areas with good vertical lines, but dotted horizontal lines.

Method of use
	Set	up	the	required graphics display it can be saved on disc by
the use of '+++ SSAVE name '	and recovered by 'SGET name'.
	Get your printer routine, in my case '+++ GET P '
	Then use-
	+++ PG6
	The	screen	should	first	display the graphics and a few moments
later	the	printout	should start. Six passes are made for each eight bit
strip	containing	data,	with	a slight offset for each pass so it is not
quick.
	The actual time in minutes depends upon the data.
