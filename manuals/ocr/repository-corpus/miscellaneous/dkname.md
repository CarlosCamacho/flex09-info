# DKNAME

> Source: `misc/uncategorized/tsc - Bootable FLEX System and Utilities.zip!tsc/Tsc_util_2.dsk!DKNAME.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

DKNAME


	The DKNAME command is used to read or change the disk name and volume
 number.	It allows for the use of disk extensions in the name.


 DESCRIPTION

 The general syntax of the DKNAME command is:

	DKNAME[,<drive>]

 where <drive> is the number of the drive containing the disk you wish
 to change.	The default is the working drive.	Example:

	+++DKNAME,1

 The command will display the current name and volume number of the
 disk.	It will then prompt for the new name.	A carriage return will
 cause the program to exit without changing the disk.	The new name
 is entered as:	SOURCE 2.BAK
 The volume number is then entered as a number (0-65535).

 The name allows up to eight characters including spaces (no periods),
 and the extension allows up to three characters.
