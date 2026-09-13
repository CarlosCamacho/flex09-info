# DISMANT

> Source: `sourcecode/library-disks/LIB34 - FLEX Source Library - Source Code and Build Files - Includes CHDEMO, CHRSETS, CHTAB.zip!LIB34.DSK!DISMANT.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

DISMANT is short for dismantle,which is English for disassemble,which
is American for "let's take it to pieces and see how it works".

1. On entry you will be asked for a start address,this must be 4 Hex
	characters,(ie. leading zeros are required where appropriate).
	If you supply a null address,just <CR>,you will be returned to Flex
	with a message "To re-enter Dismant JUMP xxxx".

2. Next you will be asked for an end address.You may either supply an
	adrress,(4 Hex characters),or not,(<CR>).

3. At this point the prompt "correct ?	(Y/N)" appears. If you reply N
	we go back to point 1 and start again. If Y we continue as under.

4a.If an end address was supplied at 2 the code from start to end will
	be disassembled and sent to a file called DISMANT.OUT on the
	working drive. On completion the program jumps back to 1 at which
	point you can 'dismant' another chunk or exit to Flex as required.

4b.If no end address was supplied at 2 the output is sent to the VDU,
	halting at the end of each screenful in the usual Flex manner.
	While halted 3 keys are valid------
		ESC steps thro' one screen at a time to infinity.
		N,(new),returns to point 1. (eg to find the start of a module
	&after a block of embedded data).
		F exits to Flex.


	Comments.

	1. I have not trapped start > end. Nothing disasterous happens,it
	just stops after the first line.

	2. The prog is NOT PIC. If you need to move it you must recompile.
	(I made two versions which live at the top and bottom of user ram.
	So far I have never had to use DISMANT.LOW).

	3. You cant use backspace to correct errors when entering addresses.
	Any non-hex character will land you back in Flex. I just type
	in zeros until 'correct?' then answer No. This is somewhat inelegant
	but I did not think it worth altering.

	4. The title of the output file is always the same,so each chunk must
	be 'Renamed' before the next arrives.
