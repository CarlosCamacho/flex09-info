# CMPBIN

> Source: `apps/stylograph/PT69-HD - Stylograph Word Processor - Bootable Hard-Disk FLEX System and Utilities.zip!PT69-HD.DSK!CMPBIN.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

(CMPBIN


The CMPBIN utility compares the contents of two disk binary

files.	The result of the comparison normally will be displayed

on the terminal.


DESCRIPTION


The general syntax of the CMPBIN command is:

	CMPBIN,<file spec 1>,<file spec 2>


where the file specs default to a .BIN extension and to the

working drive.	First the load addresses of both files will be

read and displayed.	Then file 1 will be read and compared

against file 2 one byte at a time.	If differing bytes are found

the address in file 1 will be displayed and then the bytes from

file 1 and file 2.	Then the comparison will resume at the next

byte in each file.	If there is one or more transfer address in

each file, they will all be displayed for first file 1 and then

file 2.


At the end a message will be displayed showing whether the files

are identical or do not match.	Also if only the load or transfer

address is different a message will be displayed indicating this.

The same message will also be displayed if all of the bytes in

each file are identical but the binary disk records they are

stored in are of differing lengths.	If other than binary files

are compared the first byte of the first file not being a hex $02

will cause printing of the message that the files do not match.


Example: +++CMPBIN,ROM1.BIN.1,ROM2.BIN.1


This command line will display the differences between two

versions of a rom that were read with an EPROM programmer.


This utility must be used rather that the CMPMEM utility when the

files being compared would load in the utility command area at

$C100.


created September 11, 1984
