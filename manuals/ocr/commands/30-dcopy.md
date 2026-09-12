# DCOPY

_Source: FLEX User’s Manual (Technical Systems Consultants), 1979 scan._

DCOPY

The DCOPY command is used to copy from one disk to another all
files which were created on or after a given date. This permits
convenient backup of only those files which are new.

## Description
The general syntax of the DCOPY command is:
DCOPY,<drive>,<drive>, [<month>],[<day>],[<year>][,R]

where the first drive number is the drive to be copied from, the
second drive number is the drive to be copied to. R is an option
to replace existing files on the destination disk with the files
being copied. <month>, <day>, and <year> indicate a date; only
files created on or after this date will be copied. If any part
of the the date is left out, DCOPY defaults to the value in the

corresponding FLEX date register. For example
DCOPY,2,1,6,1,R

would copy from drive 2 to drive 1 all files created after June 1
of the current year, replacing existing copies on drive l.

DCOPY,0,3,,,81

would copy from drive 0 to drive 3 all files created after today's
date in 1981 which were not already on the disk in drive 3.

DCOPY,1,0,R

would copy from drive 1 to drive 0 all files which were created
today, replacing existing copies of these files on drive 0.

DCOPY logs each file copied on the console with the message
n.filnam.ext TO DRIVE én

These messages may be redirected to the printer or to a file with
the P and O commands to provide a record of operations.

If the R option is selected, files on the destination disk with
the same names as files to be copied will be deleted, and replaced
by the copied files, unless the date of the destination disk file
is more recent than that of the source disk file. In that case,
DCOPY will print

DEST FILE IS NEWER ~ NOT COPIED

and go on to the next file. This prevents the user from "backing
up" an out-of-date file onto the current file.

NOTE: the date of a random-access file is the day it was created.
FLEX does not change this date when the file is accessed. The
GIMIX-supplied UPDATE utility command can be used to update the
date of a random-access file.


