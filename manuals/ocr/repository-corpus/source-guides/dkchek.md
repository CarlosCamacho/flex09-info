# DKCHEK

> Source: `sourcecode/library-disks/LIB14 - FLEX Source Library - Source Code and Build Files - Includes ALIGN, ANADEX, COPYNEW.zip!LIB14.DSK!DKCHEK.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

NAME:	DKCHEK
PURPOSE:Check disk for bad sectors
FILES:	DKCHEK.CMD	DKCHEK.TXT
LANGUAGE: Assembly
HARD:
USAGE:	The general syntax of the utility is:

DKCHEK (drive no.)
		The utility attempts to read the sectors on the disk and
		reports any bad sectors.
		An attempt is made to read the sector three times before a
		bad sector is reported.
