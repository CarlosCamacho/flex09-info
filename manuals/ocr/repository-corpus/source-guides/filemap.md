# FILEMAP

> Source: `sourcecode/library-disks/LIB14 - FLEX Source Library - Source Code and Build Files - Includes ALIGN, ANADEX, COPYNEW.zip!LIB14.DSK!FILEMAP.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

NAME:	FILEMAP
PURPOSE:	Maps out sectors occupied by a given file.
FILES:	FILEMAP.TXT	FILEMAP.CMD
LANGUAGE:	Assembly
USAGE:	The syntax of this command is:
	FILEMAP filename

where filename defaults to a specified TXT file on the work drive.

The final sector in the map -00 00 merely indicates that the previous

sector is not linked to any other sector and is therefore an end of

file condition.
