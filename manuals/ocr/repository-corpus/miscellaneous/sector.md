# SECTOR

> Source: `misc/uncategorized/tsc - Bootable FLEX System and Utilities.zip!tsc/Tsc_util_2.dsk!SECTOR.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

!SECTOR


	The SECTOR utility is used for display the sector arrangement of a
 file on a disk.	The display shows the starting and ending track/sector
 of contiguous blocks of the file.	Also, it can show the arrangement
 beginning at any location on the disk.	This command can be used as
 an aid to repairing a disk (i.e. an aid to the SMR utility).


 DESCRIPTION

 The general syntax of the SECTOR command is:

	+++SECTOR,<file spec>	or
	+++SECTOR,+<DTTSS>

 where the file spec defaults to a TXT extension on the working drive,
 or DTTSS specifies the actual drive, track, and sector to start on.
 Using the DTTSS mode, the first digit in the buffer is the drive number,
 and the remaining digits are right justified to supply the track and
 sector.	Examples:

	+++SECTOR,0.FLEX.SYS
	+++SECTOR,+140A
	+++SECTOR,+00F02

 The first displays the linkage of the file FLEX.SYS on drive 0.
 The second displays the linkage starting at track 04 sector 0A on drive
 1 (one). The third is drive 0 track 0F sector 02.	The linkage always
 ends with a sector linking to track/sector 00/00.
