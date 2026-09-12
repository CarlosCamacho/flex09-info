# FREEMAP

_Source: FLEX User’s Manual (Technical Systems Consultants), 1979 scan._

FREEMAP

The FREEMAP command is used to check the list of available sectors
(free chain) on a FLEX formatted disk (floppy or hard) to
determine the amount of fragmentation that exists.

## Description
The general syntax of the FREEMAP command is:

FREEMAP, <drive>

FREEMAP then scans all the sectors in the free chain of the disk
in the designated drive, and lists on the console all the groups
of continuous sectors found. The total number of such groups
(called segments) is displayed at the end. By examining this
list, the user can determine the degree of fragmentation of the
disk, and decide whether to run UNSNARL on it, or copy the files
on it to a new disk. Example:

FREEMAP, 1
READING FREE CHAIN
0908-1012
0706-0708
1120-1306
2208-2209
220C-220C

SEGMENTS MAPPED: 5

The segment count is printed in decimal. The output from this
program can be routed to the printer or to a file with the Por 0

. commands.

See the UNSNARL command for more information.


