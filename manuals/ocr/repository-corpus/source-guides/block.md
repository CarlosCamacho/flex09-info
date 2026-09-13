# BLOCK

> Source: `sourcecode/library-disks/LIB24 - FLEX Source Library - Source Code and Build Files - Includes ALLOCATE, BALL, BLOCK.zip!LIB24.DSK!BLOCK.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

BLOCK.CMD is a programme by Mark Willis intended for
	use when programming 27256 eproms from a single density disc
	for the MB2 Promdisk.

The 'block' is a selected 32k block of data from the
	disc	in	drive	1 which is transfered to memory at $0000 to
	$7FFF. In my case it was then transferred to the 27256 via a
	eprom programmer fitted to the expansion port.

W-BLOCK.CMD	yes	you	have	guessed it, this is the
	reverse of the above and will put the contents of the memory
	at $0000 to $7FFF back to a disc in drive 1.

These	programmes	only work on single density discs
	as	the number of sectors is set to 10 per track. The second
	programme	was	done to allow the repair of a defective disc
	directory,	the	first	32k	block	was	copied	from	the
	unreadable	disc	modified and put on to another identically
	formatted disc to test for readability.

Block and W_Block have also been used to copy a disc
	of ten sectors per track but not in Flex format.

Although	limited	to	my	specific requirement they
	seemed worth passing on.
	C. G. Lindsay
	Syntax is-
	+++BLOCK	( it will ask you which block you require )
	+++W-BLOCK ( be more careful this writes to the disc
	in drive 1 after you have selected a block)
