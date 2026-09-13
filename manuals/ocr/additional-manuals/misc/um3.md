# UM3

> Source: `manuals/misc/TSC_MAN - FLEX Software Archive - Manual and Documentation Archive - Includes APG-MAC, APG-PREF, APG1.zip!TSC_MAN.dsk!UM3.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.pg 1
.dm bo
.tl ''-L.1.%-''
..
.sp 4
.ce
LINK
.sp 2
The LINK command is used to tell the bootstrap loader
where the FLEX operating system file resides on the disk.
This is necessary each time a system disk is created
using NEWDISK.
The NEWDISK utility should be consulted for complete details
on the use of LINK.
.sp 2
DESCRIPTION
.pp
The general syntax of the LINK command is:
.bx
LINK,<file spec>
.sx
where <file spec> is usually FLEX.
The default extension is SYS.
Some examples of the use of LINK follow:
.bx
+++LINK,FLEX
+++LINK,1.FLEX
.sx
The first line will LINK FLEX.SYS on the working drive,
while the second example will LINK FLEX.SYS on drive 1.
For more advanced details of the LINK utility, consult
the "Advanced Programmers Guide".
.pg 1
.dm bo
.tl ''-L.2.%-''
..
.sp 4
.ce
LIST
.sp 2
The LIST command is used to LIST the contents of text or BASIC
files on the terminal.
It is often desirable to examine a files without having
to use an editor or other such program.
The LIST utility allows examining entire files, or selected
lines of the file.
Line numbers may also be optionally printed with each line.
.sp 2
DESCRIPTION
.pp
The general syntax of the LIST command is:
.bx
LIST,<file spec>[,<line range>][,+(options)]
.sx
where the <file spec> designates the file to be LISTed
(with a default extension of TXT),and
<line range> is the first and last line number of the file
which you wish to be displayed.
All lines are output if no range specification is given.
The LIST command supports two additional options.
If a +N option is given, line numbers will be displayed
with the listed file.
If a +P option is given,
the output will be formatted in pages
and LIST will prompt for "TITLE"
at which time a title for the output
may be entered.
The TITLE may be up to 40 characters long.
This feature is useful for obtaining output
on a printer for documentation purposes (see P command).
Each page will consist of the title, date, page number,
54 lines of output and a hex 0C formfeed character.
Entering a +NP will select both options.
A few examples will clarify the syntax used:
.bx
+++LIST,RECEIPTS
+++LIST,CHAPTER1,30-200,+NP
+++LIST,LETTER,100
.sx
The first example will list the file named 'RECEIPTS.TXT'
without line numbers.
All lines will be output unless the 'escape character' is used
as described in the Utility Command Set introduction.
The second example will LIST the 30th line through the
200th line of the file named 'CHAPTER1.TXT' on the terminal.
The hyphen ('-') is required as the range number separator.
Line numbering and page formatting will be output because of the '+NP' option.
The last example shows a special feature of the range specification.
If only one number is stated, it will be interpretted as the first
line to be displayed.
All lines following that line will also be LISTed.
The last example will LIST the lines from line 100
to the end of the file.
No line numbers will be output since the 'N' was omitted.
.pg 1
.dm bo
.tl ''-N.1.%-''
..
.sp 4
.ce
NEWDISK
.sp 2
Newdisk is used to format a new diskette.
Diskettes as purchased will not work with FLEX
until certain system information has been put on them.
The NEWDISK utility puts this information on the diskette,
as well as checking the diskette for defective sectors
(bad spots on the surface of the disk which may cause
data errors).
.sp 2
DESCRIPTION
.pp
The general syntax of the NEWDISK command is:
.bx
NEWDISK,<drive>
.sx
where <drive> represents a single digit drive number and
specifies the drive to be formatted.
After typing the command, the system will ask
if you are sure you want to NEWDISK, and if the
disk to be initialized is a scratch disk.
Type 'Y' as the response to these questions if you are
sure the NEWDISK command should continue.
Certain versions of
NEWDISK will also ask you if you have a double-sided
or double-density disk installed.
If so, type 'Y', otherwise type 'N'.
NEWDISK then prompts for a volume name and number.
This gives you the ability to "name" the diskette for future reference.
.pp
The NEWDISK process takes approximately five
minutes to initialize a disk, assuming there are no bad spots
on it.
Defective sectors will make NEWDISK run even slower,
depending on the number of bad sectors found.
As bad sectors are detected, a message will be output to
the terminal such as:
.bx
BAD SECTOR AT xxyy
.sx
where 'xx' is the disk track number (in hex) and 'yy'
is the sector number, also in hex.
NEWDISK automatically removes bad sectors from the
list of available sectors, so even if a disk has several
bad spots on it, it is still usable.
When NEWDISK finishes, FLEX will report the number of
available sectors remaining on the disk.
If no defective sectors were detected, the total should be 340 or
1140 for single-sided mini or full size disks respectively.
A double-sided disk would yield twice that number.
.pp
Sometimes during the NEWDISK process, a sector will be
found defective in an area on the disk which is required by
the operating system.
In such a case, NEWDISK will report:
.bx
FATAL ERROR - FORMATTING ABORTED
.sx
and FLEX will regain control.
You should not immediately assume the disk to be
useless if this occurs, but instead,
remove the disk from the drive,
re-insert it, and try NEWDISK again.
If after several attempts the formatting is still aborted,
you should assume the disk is unusable.
.pg
CREATING SYSTEM DISKETTES
.pp
A system disk is one from which the operating system can be loaded.
Normally the system disk will also contain the Utility Command Set (UCS).
The following procedure should be used when preparing system disks.
.pp
.in 6
.si -3
1.\ Initialize the diskette using NEWDISK as described above.
.pp
.si -3
2.\ COPY all .CMD files desired to the new disk.
.pp
.si -3
3.\ COPY all .SYS files to the new disk.
It should be noted that steps 2 and 3 can be done with one command;
'COPY,0,1,.CMD,.OV,.LOW,.SYS', assuming you are copying from 0 to 1 and all command files and
their overlays are desired. (the .OV copies overlay files and
\.LOW copies the utility 'SAVE.LOW').
.pp
.si -3
4.\ Last it is necessary to LINK the file FLEX.SYS to the system
using the LINK command.
.pp
.in 0
A very convenient way to get the above process performed without having
to type all of the commands each time is to create a command file
and use the EXEC command.
Consult the EXEC documentation for details.
.pp
It is not necessary to make every disk a system diskette.
It is also possible to create 'working' diskettes,
disks which do not have the operating system on them,
for use with text files or
BASIC files.
Remember that a diskette can not be used for booting
the system unless the operating system is contained on it
and it has been linked.
To create a working disk,
simply run NEWDISK on a diskette.
It will now have all of the required information to enable
FLEX to make use of it.
This disk, however, does not contain the disk operating system
and is not capable of booting the system.
.pg 1
.dm bo
.tl ''-O.1.%-''
..
.sp 4
.ce
O
.sp 2
The O (not zero) command can be used to route
all displayed output from a utility to an output file
instead of the terminal.
The function of O is similar to P (the printer command)
except that output is stored in a file
rather than being printed on the terminal or printer.
Other TSC software may support this utility.
Check the supplied software instructions for more details.
.sp 2
DESCRIPTION
.pp
The general syntax of the O command is:
.bx
O,<file spec>,<command>
.sx
where <command> can be any standard utility command line and
<file spec> is the name of the desired output file.
The default extension on <file spec> is .OUT.
If O is used with multiple commands per line
(using the 'end of line' character ':')
it will only have affect on the command it immediately precedes.
Some examples will clarify its use.
.bx
+++O,CAT,CAT
               writes a listing of the current disk directory into
               a file called CAT.OUT
.sp
+++O,BAS,ASMB,BASIC.TXT
               writes the assembled source listing of the text
               source file 'BASIC.TXT' into a file called 'BAS.OUT'
               when using the assembler
.sx
.pg 1
.dm bo
.tl ''-P.1.%-''
..
.sp 4
.ce
P
.sp 2
The P command is very special and unlike any
others currently in the UCS.
P is the system print routine and will allow the output of any
command to be routed to the printer.
This is very useful for getting printed copies of the CATalog
or used with the LIST command will allow the printing
of FLEX text files.
.sp 2
DESCRIPTION
.pp
The general syntax of the P command is:
.bx
P,<command>
.sx
where <command> can be any standard utility command line.
If P is used with multiple commands per line (using the 'end of line'
character), it will only have affect on the command it immediately preceeds.
Some examples will clarify its use:
.bx
+++P,CAT
+++P,LIST,MONDAY:CAT,1
.sx
The first example would print a CATalog of the directory
of the working drive on the printer.
The second example will print a LISTing of the text file
MONDAY.TXT and then display on the terminal a CATalog
of drive 1 (this assumes the 'end of line' character is a ':').
Note how the P did not cause the 'CAT,1' to go to the printer.
Consult the 'Advanced Programmer's Guide' for details concerning
adaption of the P command to various printers.
.pp
The P command tries to load a file named PRINT.SYS
from the same disk which P itself was retrieved.
The PRINT.SYS file which is supplied with the system
diskette contains the necessary routines to operate
a SWTPC PR 40 printer connected through a parallel
interface on PORT 7 of the computer.
If you wish to use a different printer configuration,
consult the 'Advanced Programmer's
Guide' for details on writing your own printer driver
routines to replace the PRINT.SYS file.
The PR 40 drivers, however, are compatible with many
other parallel interfaced printers presently on the market.
.pg 1
.dm bo
.tl ''-P.2.%-''
..
.sp 4
.ce
PRINT
.sp 2
FLEX has the ability to output file stored data to a printer
at the same time that it is performing other tasks.
This feature is especially useful when it is necessary
to print a long listing without tying up the computer.
This method of printing is called PRINTER SPOOLING.
In order for the printer spooling function to work,
a SWTPC MP-T interrupt timer board must be installed
in I/O position \#4 on the computer's mother board.
.sp 2
DESCRIPTION
.pp
The general syntax of the PRINT command is as follows:
.bx
PRINT,<file spec>[,+<repeat \#>]
.sx
where <file spec> is the name of the file to be printed.
The default extension on <file spec> is .OUT.
<Repeat \#> is the number of additional copies of the file
you wish to be printed.
.pp
For example, say that your disk had a very large number
of files on it and a printer catalog listing was desired.
A file containing the output information should first
be created by using the O command such as:
.bx
+++O,CAT.OUT,CAT.CMD    or    +++O,CAT,CAT
       (see the description of the O command)
.sx
when printer output is desired the command
.bx
+++PRINT,CAT.OUT    or    +++PRINT,CAT
.sx
should be entered.
.pp
At this time the file CAT.OUT is stored in a buffer called a
print queue (waiting list).
If another PRINT command is issued before the first is finished,
the second file will be in the next available location in the
print queue.
.pp
After the file name to be printed has been stored in the print queue,
control will return to the FLEX operating system.
At this time you may perform any disk operation you want,
such as deleting files, copying disks, etc.
While you are using FLEX, PRINT will be outputting the desired
file to the printer.
PRINT will automatically wait for the printer to become ready
(power up) even after the file has been entered into the print queue.
.pp
After printing the first file,
the second file in the queue will be printed
(if there is one), etc.
The print queue may be examined or modified at any time
by using the QCHECK utilty.
.pp
.nl 10
NOTE:  There are several things that the user should be aware
of when using the printer spooling:
.in 3
.NF
.sp
 1)  Any file that is in the print queue may not be deleted,
     renamed, or changed in any way until it has been printed
     or removed by the QCHECK print queue manager utility.
.sp
 2)  Disks which contain the files in the print queue should
     not be removed while the files are still in the queue.
.sp
 3)  The P command should not be used while files are waiting
     in the print queue.
.sp
 4)  Any paper or cassette tape load or any other operation
     which requires that the computer accept data at precise
     time intervals should not be executed during a printer
     spooling operation.
.FI
.in 0
.pg 1
.dm bo
.tl ''-P.3.%-''
..
.sp
.ce
PROT
.sp 2
The PROT command is used to change a protection code
associated with each file.
When a file is first saved,
it has no protection associated with it
thereby allowing the user to write to, rename,
or delete the file.
Delete or write protection can be added to a file
by using the PROT command.
.sp 2
DESCRIPTION
.pp
The general syntax of the PROT command is:
.bx
PROT,<file spec>[,(option list)]
.sx
where the <file spec> designates the file
to be protected and
(option list) is any combination of the following options.
.sp
.NF
D   A 'D' will delete protect a file. A delete protected file cannot be
    affected by using the DELETE or RENAME Commands, or by the delete
    functions of SAVE, APPEND, etc.
.sp
W   A 'W' will write protect a file.  A write protected file cannot be
    deleted, renamed or have any additional information written to it.
    Therefore a write protected file is automatically delete protected
    as well.
.sp
C   A 'C' will Catalog protect a file.  Any files with a C protection
    code will function as before but will not be displayed when a
    CAT command is issued.
.sp
X   An 'X' will remove all protection options on a specific file.
.fi
.sp 2
Examples:
.bx
+++PROT CAT.CMD,XW   Remove any previous protection on the CAT.CMD
                     Utility and write protect it.
+++PROT CAT.CMD,X    Remove all protection from the CAT.CMD utility.
+++PROT INFO.SYS,C   Prohibit INFO.SYS from being displayed in a
                     catalog listing.
.sx
.pg 1
.dm bo
.tl ''-Q.1.%-''
..
.sp 4
.ce
QCHECK
.sp 2
The QCHECK utility can be used to examine the contents
of the print queue and to modify it contents.
QCHECK has no additional arguments with it.
Simply type QCHECK.
QCHECK will stop any printing that is taking place
and then display the current contents of the print
queue as follows:
.bx
+++QCHECK
       POS       NAME      TYPE     RPT
        1        TEST.     .OUT      2
        2        CHPTR.    .OUT      0
        3        CHPTR2.   .TXT      0
   COMMAND?
.sx
.pp
This output says that TEST.OUT is the next file to be printed
(or that it is in the process of being printed) and that 3 copies
(1 plus a repeat of 2)
of this file will be printed.
After these three copies have been printed,
CHPTR.OUT will be printed and then CHPTR2.TXT.
The COMMAND? prompt means QCHECK is waiting for one of the
following commands:
.sp
.nf
    COMMAND       FUNCTION
.pp
(carriage return) Re-start printing, return to the FLEX command mode.
.pp
       Q          A Q command will print the queue contents again.
.pp
     R,\#N,X       An R command repeats the file at position \#N X times.
                  If X is omitted the repeat count will be cleared.
                  Example: R,\#3,5
.pp
     D,\#N         A D command removes the file at queue position \#N.
                  If N=1, the current print job will be terminated.
                  Example: D,\#3
.pp
       T          A T command will terminate the current print job.
                  This will cause the job currently printing to quit
                  and printing of the next job to start.  If the
                  current files RPT count was not zero, it will
                  print again until the repeat count is 0.  To
                  completely terminate the current job use use the
                  D,\#1 command.
.pp
     N,\#N         A N command will make the file at position \#N the
                  next one to be printed after the current print job
                  is finished.  Typing Q after this operation will
                  show the new queue order.
                  Example: N,\#3
.pp
       S          An S command will cause printing to stop.  After
                  the current job is finished, printing will halt
                  until a G command is issued.
.pp
       G          A G command will re-start printing after an S
                  command has been used to stop it.
.pp
       K          A K command will kill the current print process.
                  All printing and queued jobs will be removed from
                  the queue.  The files are not deleted from disk.
.fi
.pg 1
.dm bo
.tl ''-R.1.%-''
..
.sp 4
.ce
RENAME
.sp 2
The RENAME command is used to give an existing file a new
name in the directory.
It is useful for changing the actual name as well as changing the
extension type.
.sp 2
DESCRIPTION
.pp
The general syntax of the RENAME command is:
.bx
RENAME,<file spec 1>,<file spec 2>
.sx
where <file spec 1> is the name of the file you wish to RENAME
and <file spec 2> is the new name you are assigning to it.
The default extension for file spec 1 is TXT and the default drive
is the working drive.
If no extension is given on <file spec 2>, it defaults to that of
<file spec 1>.
No drive is requird on the second file name, and if one is
given it is ignored.
Some examples follow:
.bx
+++RENAME,TEST1.BIN,TEST2
+++RENAME,1.LETTER,REPLY
+++RENAME,0.FIND.BIN,FIND.CMD
.sx
The first example will RENAME TEST1.BIN to TEST2.BIN.
The next example RENAMEs the file LETTER.TXT on drive
1 to REPLY.TXT.
The last line would cause the file FIND.BIN on drive 0 to
be renamed FIND.CMD.
This is useful for making binary files created by an
assembler into command files (changing the extension from BIN
to CMD).
If you try to give a file a name which already
exists in the directory, the message:
.bx
FILE EXISTS
.sx
will be displayed on the terminal.
Keep in mind that RENAME only changes the file's
name and in no way changes the actual file's contents.
.pp
One last note of interest.
Since utility commands are just like any other file, it
is possible to rename them also.
If you would prefer some of the command names to be shorter,
or different all together, simply use RENAME and
assign them the names you desire.
