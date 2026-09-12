# NAME

_Source: FLEX User’s Manual (Technical Systems Consultants), 1979 scan._

NAME

The NAME utility enables the user to change the name, extension,
volume number and date in the system information sector of a disk.

## Description
The general syntax of the NAME command is:
NAME[, dn]

Where 'dn' is an optional drive number. If no drive is specified
NAME will use the work drive. If the work drive is set to 'ALL'
an error message is printed. Some examples follow:

+++NAME
+++NAME, 2

The first example will change the information on the disk in the
work drive, assuming that the work drive is not set to all. The
second example will change the information on the disk in drive
#2.

NAME prints the current disk name, extension, volume number and
date and then prompts for the new name. The new name and
extension should be entered, followed by a carriage return.
Entering only a carriage return will retain the old name. NAME
then prompts for the new volume number. The new volume number
should be entered , followed by a carriage return. Entering only
a carriage return will retain the original volume number. After
the new name and volume number have been entered, NAME prompts:

CHANGE DATE ('Y' OR 'N')?
Entering 'Y' changes the date on the disk to the "current date",
Entering 'N' retains the old date.
NAME can generate the following error message:

ILLEGAL DRIVE NUMBER

Legal drive numbers are QO, 1, 2, and 3. A drive number must be
specified if the work drive is set to 'ALL'.

NOTE: If NAME is used in a command line with multipe commands, it
must be the last command on the line.


