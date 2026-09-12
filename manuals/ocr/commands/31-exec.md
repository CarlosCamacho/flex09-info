# EXEC

_Source: FLEX User’s Manual (Technical Systems Consultants), 1979 scan._

EXEC

The EXECute command is used to process a text file as a list of
commands, just as if they had been typed from the keyboard. This is a
very powerful feature of FLEX for it allows very complex procedures to
be built up as a command file. When it is desirable to run this
procedure, it is only necessary to type EXEC followed by the name of the
command file. Essentially all EXEC does is to replace the FLEX keyboard
entry routine with a routine which reads a line from the command file
each time the keyboard routine would have been called. The FLEX
utilities have no idea that the line of input is coming from a file
instead of the terminal.

## Description
The general syntax of the EX command is:
EXEC,<file spec>

where <file spec> is the name of the command file. The default
extension is TXT. An example will give some ideas on how EXEC can be
used. One set of commands which might be performed quite often is the
set to make a new system diskette on drive 1 (see NEWDISK). Normally it
is necessary to use NEWDISK and then copy all .CMD and all .SYS files to
the new disk. Finally the LINK must be performed. Rather than having
to type this set of commands each time it was desired to produce a new
system diskette, we could create a command file called MAKEDISK.TXT
which contained the necessary commands. The BUILD utility should be
usee to create this file. The creation of this file might go as
ollows:

++4+BUILD,MAKEDISK
=NEWDISK,1
=COPY,0,1,.CMD,.0V,.LOW,.SYS
=LINK,1.FLEX
=#

+++

The first line of the example tells FLEX we wish to BUILD a file called
MAKEDISK (with the default extension of .TXT). Next, the three
necessary command lines are typed in just as they would be typed into
FLEX. The COPY command will copy all files with CMD, OV, LOW, and SYS
extensions from drive 0 to drive 1. Finally the LINK will be performed.
Now when we want to create a system disk we only need to type the

following:
+++£ XEC ,MAKEDISK

We are assuming here that MAKEDISK resides on the same disk which
contains the system commands. EXEC can also be used to execute the

STARTUP file (see STARTUP).



There are many applications for the EXEC command. The one shown is
certainly useful but experience and jmagination will lead you to other
useful applications.

IMPORTANT NOTE: The EXEC utility is loaded into the very upper 'end of
user memory. This is done by first loading EXEC into the utility file
space, then calculating the proper starting address so that it will
reside right up against the end of the user memory space. Next EXEC is
moved to that location and a new end of memory is set to just below
EXEC. When the EXEC file is finished, if the user has not further
changed the memory end location, EXEC will reset it to the original

value.


