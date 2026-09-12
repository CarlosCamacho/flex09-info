# CAT

_OCR transcription from: `Screenshot_20260912-070202.png`, `Screenshot_20260912-070218.png`_

CAT

The CATalog command is used to display the FLEX disk file names in the
directory on each disk. The user may display selected files on one or
multiple drives if desired.
## Description
The general syntax of the CAT command is:

CAT[,<drive list>][,<match list>]
where <drive list> can be one or more drive numbers separated by commas,
and <match list> is a set of name and extension characters to be matched
against names in the directory. For example, if only file names which
started with the characters 'VE' were to be cataloged, then VE would be
in the match list. If only files whose extensions were 'TXT' were to be
cataloged, then .TXT should appear in the match list. A few specific
examples will help clarify the syntax:

+++CAT

+++CAT,1,A.T,DR

+++CAT,PR

+++CAT,0,1

+++CAT,0,1, «CMD, «SYS
The first example will catalog all file names on the working drive or on
all drives if auto drive searching is selected. The second example will
catalog only those files on drive 1 whose names begin with 'A' and whose
extensions begin with 'T', and also all files on drive 1 whose names
start with 'DR'. The next example will catalog all files on the working
drive (or on all drive if auto drive searching is selected) whose names
start with 'PR'. The next line causes all files on both drive 0 and
drive 1 to be cataloged. Finally, the last example will catalog the
files on drive 0 and 1 whose extensions are CMD or SYS.
During the catalog operation, before each drive's files are displayed, a
header message stating the drive number is output to the terminal. The
name of the diskette as entered during the NEWDISK operation will also
be displayed. The actual directory entries are listed in the following
form:

NAME. EXTENSION SIZE PROTECTION CODE
where size is the number of sectors that file occupies on the disk. If
more than one set of matching characters was specified on the command
line, each set of names will be grouped according to the characters they
match. For example, if all .TXT and .CMD files were cataloged, the TXT
types would be listed together, followed by the CMD types.
In summary, if the CAT command is not parameterized, then all files on
the assigned working drive will be displayed. If a working drive is not
assigned (auto drive searching mode) the CAT command will display files

on all on line drives. If it is parameterized by only a drive number,
then all files on that drive will be displayed. If the CAT command is
parameterized by only an extension, then only files with that extension
will be displayed. If only the name is used, then only files which
start with that name will be displayed. If the CAT command is
parameterized by only name and extension, then only files of that root
name and root extension (on the working drive) will be displayed. Learn
to use the CAT command and all of its features and your work with the
disk will become a little easier.
The current protection code options that can be displayed are as
follows:

D File is delete protected (delete or rename prohibited)

W File is write protected (delete, rename and write prohibited)

(blank) No special protection

