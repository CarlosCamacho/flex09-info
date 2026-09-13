# BACKUP

> Source: `utilities/system/F_BAR_1 - FLEX System Utilities - Documentation and Examples.zip!F_BAR_1.DSK!BACKUP.MAN`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,ju
,ll 78
	BACKUP - MAKE A MIRROR IMAGE OF A DISK

	BACKUP is a program to create a mirror image of one diskette onto another diskette.	It allows copying from any one drive to any other drive or doing a single disk copy to the same drive.
	Upon executing BACKUP, the program prompts for the drive number to copy data from.	Enter a number from 0 - 3.	Next, the prompt asks for the drive number to copy the data to.	Again, enter a number from 0 - 3.	The same drive number may be entered as the from drive number and the operator will be prompted to change diskettes when needed.
	BACKUP works by reading the SYS INFO record on track 0, sector 3 of the two diskettes to determine if 5 or 8 inch, the number of tracks on the disk and the number of sectors per track.	A comparison is made between the two diskettes and an abort is executed if both diskettes are not formatted the same.	If allowed to copy a 5 to an 8 inch or visa versa, the links would not be correct on the copied-to diskette, hence that mode is illegal.
	BACKUP does all copying using the FLEX read and write single sector calls.	Each sector on any one track is read individually, saved in a track buffer in memory and re-written, a track at a time, to the 'to' diskette.
	An error condition will occur if the 'to' diskette has any sectors removed from the link table due to a bad format.	Since backup reads each sector individually and writes the same sectors back out, a missing sector will cause an error.
	The finished copy will produce a copy of the original disk, track for track, sector for sector.	No re-formatting of the diskette is made and the copy will contain the same segmentation as the original.
	BACKUP copies a track in about 1 second, and hence, the copy time for a single sided, single density 8 inch disk is about 1 minute, 20 seconds.	The inprovement over using the copy command to backup an entire diskette is obvious.
	Write verification is turned off to improve the speed of the process.	It made be re-enabled by removing the CLR VRFY instruction in the source.
