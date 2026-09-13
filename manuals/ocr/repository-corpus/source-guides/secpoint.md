# SECPOINT

> Source: `sourcecode/library-disks/LIB14 - FLEX Source Library - Source Code and Build Files - Includes ALIGN, ANADEX, COPYNEW.zip!LIB14.DSK!SECPOINT.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

NAME:	SECPOINT
PURPOSE: Utility program to alter sector pointers on a disk
FILES:	SECPOINT.TXT	SECPOINT.CMD
LANG:	Assembler
USAGE:	The syntax of this command is

SECPOINT	(RETURN)
		The utility then prompts for:

DRIVE?	(1 character input - no C/R)

TRACK?	(2 hex characters input - no C/R)

SECTOR?	(1 hex character input - no C/R)
		The track and sector numbers for a specified file may be
		obtained using the FILEMAP utility.
		The utility will then print the pointers which are held
		as part of the specified sector,
	e.g. "POINTERS ARE 01 05 00 04" is displayed.
		"01 05" is an indication of the position of the next part of
		the file. "01" is a pointer to the next track in sequence
		and the "05" points to a sector on that track.
		The "00 01" part gives the logical record number of this
		part of the file.
		The utility then prompts for the new track and sector
		numbers to be input:-

POINT TO TRACK?

POINT TO SECTOR?
		Finally the utility prompts:

ARE YOU SURE?
		Answering N will return to FLEX and the pointers will remain
		unchanged.
