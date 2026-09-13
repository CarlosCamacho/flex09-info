# BACKUP

> Source: `misc/uncategorized/tsc - Bootable FLEX System and Utilities.zip!tsc/Tsc_util_2.dsk!BACKUP.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

BACKUP
	
	
	The BACKUP command is used to archive files onto a backup
	disk.	Backups can be performed on a single file, a
	matchlist of files, or all of the files on a disk.	If
	the files already exist, the dates are used in determining
	whether or not to produce the backup.	BACKUP need not be on
	either disk.
	
	
	DESCRIPTION
	
	The general syntax of the BACKUP command is:
	

BACKUP,<source>,<dest>[,<match list>][,+(options)]
	
	where <source> and <dest> are the respective drive numbers,
	<match list> is the optional set of name and/or extension
	characters to be matched against names in the source
	directory.	The date of the source file is maintained in the
	destination file. (The Backup utility will function better
	if the COPY program used also preserved dates.)	The optional
	date tells from when backups can be made if the source and
	destination files have the same date.
	
	Backups are performed according to these rules:
	

1. Destination file does not exist - copy it

2. Copy is of older date than source - delete and copy

3. Copy is of newer date than source - no copy made -WARNING

4. Copy is of same date - no copy made
	(unless same as or later than optional date)
	
	The options are:
	

mm,dd,yy - The date after which all same date files are
	copied.
	

T - The short form of today's date (the date entered at
	bootup).
	
	EXAMPLES
	
		+++BACKUP,0,1
		+++BACKUP,0,1,A.Z,B,+08,30,82
		+++BACKUP,1,0,.CMD,.TXT,+T
	
	The first example would copy all files from drive 0 to drive 1
	except those which already exist on 1, having the same date.
	The second example would copy only those files which begin
	with A and whose extension begins with Z, and those files
	which begin with B.	Of those files, any with the same date
	of 8/30/82 and later will be copied.	The third example would
	copy all files with extensions of .CMD and .TXT including
	any whose dates are the same and equal to today.
	Files are NEVER copied if the destination date is later than
	the source date!
	
	Normal output from this command is as follows:
	
	0.FILE1	.EXT	30-Aug-82	29-Jul-82	COPIED
	0.FILE2	.EXT	25-Aug-82	1-Sep-82	NOT COPIED - BACKUP NEWER
	0.FILE3	.EXT	4-Jul-82	4-Jul-82	NOT COPIED
	
	With the date option set:
	
	0.FILE3	.EXT	4-Jul-82	4-Jul-82	SAME DATE - COPIED
	
	
	
	All Flex error handling and conventions are supported including
	ignoring files that are catalog protected and excluding the
	TTYSET DP count.	The handling of the line buffer, matchlist,
	and directory searching is performed by the position independent
	subroutine MTCHLIST.
	
	Version 1.0	AUG 82	John Higley and Ken Smith
	
	Non-commercial license for this version is granted by the authors.
	This utility may be freely copied by any hobbyist so long as
	credit to the authors is given, and this restriction is included.
