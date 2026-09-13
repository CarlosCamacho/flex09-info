# DIRECT

> Source: `sourcecode/library-disks/LIB14 - FLEX Source Library - Source Code and Build Files - Includes ALIGN, ANADEX, COPYNEW.zip!LIB14.DSK!DIRECT.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

NAME:	DIRECT
PURP:	This command provides certain information
	about the files on drive 0 or 1.
FILES:	DIRECT.TXT	DIRECT.CMD	TODAY.TXT	TODAY.BIN
LANG:	Assembly
HARDWARE:	SWTP6800,CT82 or INFOTON 100
USAGE:	The command takes the form:
	DIRECT 0	or DIRECT 1	{where 0 or 1 is the drive no.}
	The following information is printed:-
	SEPTEMBER 22, 1980
	DISK NAME :COACH
	DISK NUMBER : 1
	DIRECTORY SECTOR INFORMATION : DRIVE 1

NAME	EXT	PROTECT	START ADDRESS	END ADDRESS	SECTORS	MAP	DATE
	WDRC	TRACK	SECTOR	TRACK SECTOR

COPY	.CMD	0000	1	1	1	5		5	N	22/9/80
CAT	.CMD	0000	1	6	1	8		3	N	22/9/80
GETB	.BAK	0000	1	9	3	9	21	N	22/9/80

		In order to assemble the TEXT file, the following procedure should
		be adopted.
		1)	Assemble the file DIRECT.TXT to give DIRECT.BIN
		2)	Assemble the file TODAY.TXT to give TODAY.BIN
		3)	Use the GET command to put DIRECT.BIN into memory
		4)	Save the contents of memory back on disk with a transfer
	address of A100 as a .CMD file using the SAVE.LOW command
		5)	Append the file TODAY.BIN to this file to give the file
	DIRECT.CMD
