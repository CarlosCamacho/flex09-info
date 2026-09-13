# ANIMATE

> Source: `sourcecode/library-disks/LIB23 - FLEX Source Library - Source Code and Build Files - Includes ANIMATE, ANIMATE3, BIRDS.zip!LIB23.DSK!ANIMATE.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

********* ANIMATE.CMD	BIRDS.PIC	*******
	&by C. G. Lindsay	May '86
	These	programmes	are	intended	not	to corrupt the viewer but
purely	to	illustrate	the	use of SETPAR as a means of animating a set
display .
	To use them-
	+++ SGET BIRDS.PIC
	+++ ANIMATE3
	or if you wish to see more movement use
	+++ ANIMATE
	To Quit use the 'Q' key
Note
	When	trying	modifications remember that the address increments
the screen sideways in 16 bit words (the graphics ram is 120K from $0000
to $FFFF )
	ie	$30 change of address is one line of the screen.

	The normal start for the Graphics screen is $5E00
	which is track $12 sector $09 byte 00 of the Ramdisk
