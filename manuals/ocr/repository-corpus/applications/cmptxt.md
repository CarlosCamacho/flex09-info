# CMPTXT

> Source: `apps/stylograph/PT69-HD - Stylograph Word Processor - Bootable Hard-Disk FLEX System and Utilities.zip!PT69-HD.DSK!CMPTXT.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

(CMPTXT


The CMPTXT utility compares the contents of two disk text files.

The result of the comparison will be displayed on the terminal or

it can be output to a disk file using the O utility.


DESCRIPTION


The general syntax of the CMPTXT command is:

	CMPTXT,<file spec 1>,<file spec 2>


where the file specs default to a .TXT extension and to the

working drive.	File 1 will be read and compared against file 2

one character at a time.	Starting at the differing characters

the lines will be displayed to the carriage return with the first

line from file 1 and the second line from file 2.	Then the

comparison will resume at the next line in each file.	If further

differences are found a blank line will be inserted between each

pair of lines.	At the end a message will be displayed showing

whether the files do not match or are identical.


Example:
+++CMPTXT,REPORT.TXT,REPORT.BAK


This command line will display the differences between an old

file and the new version.


created August 28, 1984
