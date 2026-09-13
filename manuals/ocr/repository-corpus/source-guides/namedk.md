# NAMEDK

> Source: `sourcecode/library-disks/LIB14 - FLEX Source Library - Source Code and Build Files - Includes ALIGN, ANADEX, COPYNEW.zip!LIB14.DSK!NAMEDK.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

NAME:	NAMEDK
PURPOSE:	This command places information about the owner of the disk

in the system information record.
FILES:	NAMEDK.TXT	NAMEDK.CMD
LANG:	Assembly
HARD:	SWTP6800,INFOTON 100:Control characters in use!!!
USAGE:	The command takes the form:
	NAMEDK 0 or NAMEDK 1 (where 0 or 1 is the drive no.)
	The program prompts for owner's name and course/dept.
	This information is then placed in the system information
	record and can be retrieved using IDENTIFY.CMD
