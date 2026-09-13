# DOWNLOAD

> Source: `sourcecode/library-disks/LIB34 - FLEX Source Library - Source Code and Build Files - Includes CHDEMO, CHRSETS, CHTAB.zip!LIB34.DSK!DOWNLOAD.HLP`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

DOWNLOAD HELP	12.4.89
	
	DOWNLOAD is a program enabling the editing of whole
	download character sets. It was written for the NL-10
	printer and runs in FLEX under DBASIC. It should work with
	other EPSON or EPSON-compatible 9-pin NLQ printers.
	
	Character sets can be loaded, edited, tested and saved.
	The final output file can be generated from whichever
	portion of the set is required.
	
	The final output file can be sent to the printer using P
	ECHO. P CHTAB produces a pretty table to keep by your VDU
	of the codes and characters of the normal and alternate
	sets currently in the printer.
	
	SP-EDIT enables you to set up the USER1 attributes so that
	it will select the alternate character set. You can also
	call up ECHO at the start of the document using ,EX
	(execute flex command).
	
	DOWNLOAD.BAS calls SAVE.CMD from the system drive to
	create the output file. It holds the set in CLEARed RAM so
	if you accidentally halt the program, just type RUN, and
	no data will be lost.
	
	Files list:

DOWNLOAD.BAS	The editor

ECHO	.CMD	Downloading utility

ECHO	.TXT	Assembler source of above

CHTAB	.CMD	Character table utility

CHTAB	.TXT	Assembler source of above

MYSET	.CHR	Save file of my own set

MYSET	.NLQ	Output file for NLQ

MYSET	.DRA	Output file for draft

MYSET	.TWO	Output file for both

DOWNLOAD.HLP	This help sheet

DOWNLOAD.DOC	Editor Instructions

CHTAB2	.CMD	Alternative table

CHTAB2	.TXT	Assembler source of above

CHDEMO	.TXT	SPE character demo

CHRSETS .HLP	Further advice

NL10PRT2.ASM	Source for SPE printer config.
	
	The set designed by me at great lengths has also been
	included in various forms. It contains upper and lower
	case greek, some maths symbols, some electronics symbols
	and the odd telephone & smiley face. If you don't like it,
	make a copy of MYSET.CHR and edit it, but please call it
	something else.
	
	Acknowledgements:

Knuth, "Computer Modern Typefaces"

(info on what real alphas look like)

Jerry Palmer

(associate brew-up supplies manager)
	
	I can be contacted at:

143 Black Haynes Rd.,
	Selly Oak,
	Birmingham.	B29 4RE
	(although I won't generally be living there but at various
	other places.)

	Yours	Anthony N. Martin	(Ant. M.)
