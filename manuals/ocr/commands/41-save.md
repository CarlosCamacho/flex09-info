# SAVE

_Source: FLEX User’s Manual (Technical Systems Consultants), 1979 scan._

SAVE

The SAVE command is used for saving a section of memory on the disk.
Its primary use is for saving programs which have been loaded into
memory from tape or by hand.

## Description
The general syntax of the SAVE command is:
SAVE,<file spec>,<begin adr>,<end adr>[,<transfer adr>]

where <file spec> is the name to be assigned to the file. The default
extension is BIN and the default drive is the working drive. The
address fields define the beginning and ending addresses of the section
of memory to be written on the disk. The addresses should be expressed
as hex numbers. The optional <transfer address> would be included if
the program is to be loaded and executed by FLEX. This address tells
FLEX where execution should begin. Some examples will clarify the use
of SAVE:

+++SAVE DATA, 100, 1FF
+++SAVE,1.GAME,0,1680,100

The first line would SAVE the memory locations 100 to IFF hex on the
disk in a file called DATA.BIN. The file would be put on the working
drive and no transfer address would be assigned. The second example
would cause the contents of memory locations 0 through 1680 to be SAVEd
on the disk in file GAME.BIN on drive 1. Since a transfer address of
100 was specified as a parameter, typing 'GAME.BIN' in response to the
FLEX prompt after saving would cause the file to be loaded back into
memory and execution started at location 100.

If an attempt is made to save a program under a file name that already
exists, the prompt "MAY THE EXISTING FILE BE DELETED?" will be
displayed. A Y response will replace the file with the new data to be
saved while a N response will terminate the save operation.

Sometimes it is desirable to save noncontiguous segments of memory. To
do this it would be necessary to first SAVE each segment as a separate
file and then use the APPEND command to combine them into one file. If
the final file is to have a transfer address, you should assign it to
one of the segments as it is being saved. After the APPEND operation,
the final file will retain that transfer address.



SAVE. LOW

There is another form of the SAVE command resident in the UCS. It is
called SAVE.LOW and loads in a lower section of memory than the standard
SAVE command. Its use is for saving programs in the Utility Command
Space where SAVE.CMD is loaded. Those interested in creating their own
utility commands should consult the 'Advanced Programmer's Guide' for
further details.


