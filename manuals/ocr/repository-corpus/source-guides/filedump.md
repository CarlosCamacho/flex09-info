# FILEDUMP

> Source: `sourcecode/library-disks/LIB14 - FLEX Source Library - Source Code and Build Files - Includes ALIGN, ANADEX, COPYNEW.zip!LIB14.DSK!FILEDUMP.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

NAME:	FILEDUMP
PURP:	Displays contents of a file in hex
FILES:	FILEDUMP.CMD	FILEDUMP.TXT
LANG:	Assembly
HARD:
USAGE:	The FILEDUMP utility dumps the contents of a file one sector at a time
		in hex characters. The general syntax of the command is:

FILEDUMP,<file spec>
		where	<file spec> specifies the file to be dumped and defaults to a
		BIN file on the working drive.
		For a BIN file the following information is printed:

FILE DUMP FOR :	filename
		02 A1 00 FF 20 01 01 CE A8 40 BD AD 2D 25 51 86 00 BD AD 33
		A6 03 8B 30 B7 A2 etc.........................
		where in the first line 02 is the start of record indicator
		A1 00 is the start address of the data following
		FF is the no. of bytes in this section of the file
		At the end of the file the following is printed:
		16 A1 00 00
		where 16 is the transfer address indicator and A1 00 is the entry point.
		See Page 26 of the Advanced Programmers Guide
