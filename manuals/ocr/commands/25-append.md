# APPEND

_Source: FLEX User’s Manual (Technical Systems Consultants), 1979 scan._

APPEND

The APPEND command is used to append or concatenate two or more files,
creating a new file as the result. Any type of file may be appended but
it only makes sense to append files of the same type in most cases. If
appending binary files which have transfer addresses associated with
them, the transfer address of the last file of the list will be the
effective transfer address of the resultant file. All of the original
files will be left intact.

## Description
The general syntax for the APPEND command is as follows:
APPEND, <file, spec>[,<file list>],<file spec>

where <file list> can be an optional list of the specifications. The
last name specified should not exist on the disk since this will be the
name of the resultant file. If the last file name given does exist on
the disk, the question "MAY THE EXISTING FILE BE DELETED?" will be
displayed. A Y response will delete the current file and cause the
APPEND operation to be completed. A N response will terminate the
APPEND operation. All other files specified must exist since they are
the ones to be appended together. If only 2 file names are given, the
first file will be copied to the second file. The extension default is
TXT unless a different extension is used on the FIRST FILE SPECIFIED, in
which case that extension becomes the default for the rest of the
command line. Some examples will show its use:

APPEND, CHAPTER1, CHAPTER2Z, CHAPTER3, BOOK
APPEND ,FILE1,1.FILE2.BAK,GOODFILE

The first line would create a file on the working drive called
"BOOK. TXT' which would contain the files 'CHAPTERI.TXT', CHAPTER2.TXT',
and 'CHAPTER3.TXT' in that order. The second example would append
'FILE2.BAK' from drive 1 to FILE1.TXT from the working drive and put the
result in a file called 'GOODFILE.TXT' on the working drive. The file
GOODFILE defaults to the extension of TXT since it is the default
extension. Again, after the use of the APPEND command, all of the
original files will be intact, exactly as they were before the APPEND

operation.

-A.l.1-

