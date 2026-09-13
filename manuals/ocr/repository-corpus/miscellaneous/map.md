# MAP

> Source: `misc/uncategorized/tsc - Bootable FLEX System and Utilities.zip!tsc/Tsc_util_2.dsk!MAP.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

$MAP


	The MAP utility is used to display the load and transfer addresses of
 binary files.	This command is useful in conjunction with the SAVE
 command.


 DESCRIPTION

 The general syntax of the MAP command is:

	MAP,<file spec>

 where the file spec defaults to a CMD extension and to the working
 drive.	The beginning and ending addresses of each block of object
 code will be printed on the terminal.	If a transfer address is
 contained in the file, it will be printed at the end of the list
 of addresses.	If more than one transfer address is found in a file,
 only the effective one (the last one encountered) will be displayed.
 An example will demonstrate the use of MAP.

	+++MAP,0.FLEX.SYS
	+++MAP,MONITOR

 The first example would cause the load and transfer addresses of the
 file FLEX.SYS on drive 0 to be displayed.	The second would be
 MONITOR.CMD on the working drive.
