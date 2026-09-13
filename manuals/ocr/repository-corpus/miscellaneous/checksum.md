# CHECKSUM

> Source: `misc/uncategorized/tsc - Bootable FLEX System and Utilities.zip!tsc/Tsc_util_2.dsk!CHECKSUM.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

CHECKSUM
	
	
	The CHECKSUM command is used to compute a 24 bit checksum
	for disk files.	The checksum can be used to verify file
	and disk integrity.	A single file, matchlist of files, or all
	the files on one or more disks can be done.	File copying,
	archiving, and verifing PROM programmer results are some of the
	most useful applications.
	
	
	DESCRIPTION
	
	The general syntax of the CHECKSUM command is:
	

CHECKSUM[,<drive list>][,<match list>][,+(options)]
	
	where <drive list> can be one or more drive numbers separated by
	commas/spaces.	<match list> is a set of name and/or extension
	characters to be matched against names in the disk directory.
	For example, if only file names which started with the characters
	'VE' were to be checksummed, then VE would be an entry in the match
	list.	If only files with 'TXT' extensions were to be done, then
	.TXT should be used in the match list.	Two options are also
	supported.	If a +B option is given, then all binary and
	command files will have the checksums calculated on the data
	areas of the file only (no load information, transfer addresses ...)
	The checksum can then be used to check the result of most PROM
	programmers (calculated by straight binary addition).	A +S
	option will print the Sum of all files calculated during
	execution.	Saves comparing effort when copying many files.
	
	EXAMPLES
	
		+++CHECKSUM
		+++CHECKSUM,1,A.Z,B
		+++CHECKSUM,0,1,A,A.CMD,.CMD,+BS
	
	The first example will calculate a checksum for all file names on
	the working drive or on all drives if auto drive searching is set.
	The second example will do drive 1 for all files that begin with
	A and have first extension character of Z, and all files that
	have a B for the first character.	The last example will use the
	same matchlist for each drive.	Files having an A as first
	character, first character A and extenstion of .CMD, and .CMD
	files will have a checksum calculated.	The options will cause
	binary files to have data only added and a summation of all
	the above files listed.	A complete matchlist is done for a
	disk before going on to the next disk.	Since each matchlist
	entry is independent, it is possible to calculate a file more than
	once.	ABC.CMD would have been done three times.
	
	
	All Flex error handling and conventions are supported including
	ignoring files that are catalog protected.	The handling of the
	line buffer, matchlist, directory searching and returning of a valid
	file name was written as a position independent subroutine which
	could be of use in other programs.
	
	Version 1.0	JUN 82	Ken Smith and John Higley
	
	Non-commercial license for this version is granted by the authors.
	This utility may be freely copied by any hobbyist so long as credit
	to the authors is given, and this restriction is included.
