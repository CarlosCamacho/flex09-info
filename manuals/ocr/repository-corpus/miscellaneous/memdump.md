# MEMDUMP

> Source: `misc/uncategorized/tsc - Bootable FLEX System and Utilities.zip!tsc/Tsc_util_2.dsk!MEMDUMP.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

#MEMDUMP


	The MEMDUMP utility is used to dump out the content of system memory
	to the terminal.	A starting address, and an optional ending address,
	are specified on the command line to define the area of memory to
	be dumped.	If the ending address is not specified, 16 bytes of
	memory will be dumped starting at the sepcified starting address.
	If the ending address is specified, then memory will be dumped starting
	at the start address, and ending at least at the end address.


	DESCRIPTION

	The general syntax of the MEMDUMP command is:

		MEMDUMP,<start>[,<end>]

	Where <start> is a hexadecimal address specifying the location that
	the dump is to begin at, and <end> is an optional hex address
	specifying where the dump is to finish.	If <end> is not specified,
	then 16 bytes will be dumped beginning at the starting address.
	The utility will always dump an even multiple of 16 bytes, regardless
	of the specified ending address.	For example:

		+++MEMDUMP,C100,C102

	will dump from $C100 through (and including) $C10F.

	If a non-hex address is specified, the message:

		INVALID HEX ADDRESS.

	will be displayed.	If a parameter is omitted, the program will
	display:

		MISSING ADDRESS.

	and, finally, if the starting address is greater than the ending
	address,

		END ADDRESS .LT. START ADDRESS.

	will be output.	In the case of all the error messages mentioned
	above, control will be returned to FLEX command mode.

	Each line of the dump will contain the address of the first byte in
	the line, then 8 WORDS of memory content, followed by the ASCII
	interpretation of each byte with unprintable characters printing as
	periods (.).

		Examples:

		+++MEMDUMP,0,15

		MEMORY DUMP FROM $0000 TO $001F.

		0000	0142 4344 4546 4748 494A 4B4C 4D4E 4F50	.BCDEFGH IJKLMNOP
		0010	3132 3334 3536 FFFF 3738 3912 1416 1820	123456.. 789....


		+++MEMDUMP,0

		MEMORY DUMP FROM $0000 TO $000F.

		0000	0143 4344 4546 4748 494A 4B4C 4D4E 4F50	.BCDEFGH IJKLMNOP


		+++

	VERSION 2	-	04/82	RICK BENSENE

	Non-commercial license granted by author.	This utility may be
	freely copied by any hobbyist so long as credit to the author is
	given.
