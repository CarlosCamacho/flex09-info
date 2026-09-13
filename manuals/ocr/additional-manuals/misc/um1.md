# UM1

> Source: `manuals/misc/TSC_MAN - FLEX Software Archive - Manual and Documentation Archive - Includes APG-MAC, APG-PREF, APG1.zip!TSC_MAN.dsk!UM1.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.dm bo
.tl ''-1.%-''
..
.br
.sp 8
.ce
FLEX USER'S MANUAL
.sp 3
I. INTRODUCTION
.pp
The FLEX~ Operating System is a very versatile
and flexible operating system.
.fn
* FLEX is a registered trademark of Technical Systems
Consultants, Inc.
.ef
It provides the user with a powerful set of system commands
to control all disk operations directly from the user's
terminal.
The systems programmer will be delighted with the wide variety
of disk access and file management routines available for
personal use.
Overall, FLEX is one of the most powerful operating
systems available today.
.pp
The FLEX Operating System is comprised of three parts,
the File Management System (FMS), the Disk
Operating System (DOS), and the Utility Command Set (UCS).
Part of the power of the overall system lies in the fact that
the system can be greatly expanded by simply adding additional
utility commands.
The user should expect to see many more utilities available
for FLEX in the future.
Some of the other important features include: fully dynamic
file space allocation, the automatic "removal" of defective sectors
from the disk, automatic space compression and expansion on all text files,
complete user environment control using the TTYSET utility command,
and uniform disk wear due to the high performance dynamic space
allocator.
.pp
The UCS currently contains many very useful commands.
These programs reside on the system disk and are only
loaded into memory when needed.
This means that the set of commands can be easily extended
at any time, without the necessity of replacing
the entire operating system.
The utilities provided with FLEX perform such tasks as the
saving, loading, copying, renaming, deleting,
appending, and listing of disk files.
There is an extensive CATalog command for examining
the disk's file directory.
Several environment control commands are also provided.
Overall, FLEX provides all of the necessary tools
for the user's interaction with the disk.
.pg
II. SYSTEM REQUIREMENTS
.pp
FLEX requires random access memory
from location 0000 through location 2FFF hex (12K).
Memory is also required from C000 (48K) through DFFF hex (56K), where
the actual operating system resides.
The system also assumes at least 2 disk drives are
connected to the controller and that they are
configured as drives \#0 and \#1.
You should consult the disk drive instructions for
this information.
FLEX interfaces with the disk controller through a section
of driver routines and with the operator console or terminal
through a section of terminal I/O routines.
.sp
.pp
III. GETTING THE SYSTEM STARTED
.pp
Each FLEX system diskette contains a binary loader
for loading the operating system into RAM.
There needs to be some way of getting the loader
off of the disk so it can do its work.
This can be done by either hand entering the bootstrap
loader provided with the disk system,
or by using the boot provided in ROM if appropriate to FLEX.
.pp
As a specific example, suppose the system we are using
has SWTPc's S-BUG installed and we wish to run FLEX.
The first step is to power on all equipment and make
sure the S-BUG prompt is present (>).
Next insert the system diskette into drive 0 (the boot
must be performed with the disk in drive 0) and close the door
on the drive.
Type "D" on the terminal if using a full size floppy system
or "U" if a minifloppy system.
The disk motors should start, and after about 2 seconds,
the following should be displayed on the terminal:
.bx
FLEX X.X
DATE (MM,DD,YY)?

+++
.sx
The name FLEX identifies the operating system and
the X.X will be the version number of the operating system.
At this time the current date should be entered,
such as 7,3,79.
The FLEX prompt is the three plus signs (+++), and will
always be present when the system is ready to accept an operator command.
The '+++' should become a familiar sight and signifies that FLEX
is ready to work for you!
.pg
IV. DISK FILES AND THEIR NAMES
.pp
All disk files are stored in  the form of 'sectors' on the disk and in
this version, each sector contains 256 'bytes' of information.
Each byte can contain one character of text or one byte of
binary machine information.
A maximum of 340 user-accessible sectors will fit on a single-sided mini
disk or 1140 sectors on a single-sided full size floppy.
Double-sided disks would hold exactly twice that number
of sectors.
Double-density systems will hold more still.
The user, however, need not keep count, for the system does this automatically.
A file will always be at least one sector long and can have as many as
the maximum number of sectors on the disk.
The user should not be concerned with the actual placement
of the files on the disk since this is done by the
operating system.
File deletion is also supported and all previously used
sectors become immediately available again after a file has been deleted.
.pp
All files on the disk have a name.
Names such as the following are typical:
.bx
PAYROLL
INVNTORY
TEST1234
APRIL-78
WKLY-PAY
.sx
Anytime a file is created, referenced, or deleted, its name
must be used.
Names can be most anything but must begin with a letter
(not numbers or symbols)
and be followed by at most 7 additional characters, called
'name characters'.
These 'name characters' can be any combination of the letters
'A' through 'Z' or 'a' through 'z', any digit '0' through '9', or one of the two
special characters, the hyphen (-) or the underscore '_', (a left arrow on some terminals).
.pp
File names must also contain an 'extension'.
The file extension further defines the file and usually
indicates the type of information contained therein.
Examples of extensions are: TXT for text type files,
BIN for machine readable binary encoded files,
CMD for utility command files,
and BAS for BASIC source programs.
Extensions may contain up to 3 'name characters' with the
first character being a letter.
Most of the FLEX commands assume a default
extension on the file name and the user need not be concerned
with the actual extension on the file.
The user may at anytime assign new extensions, overiding the
default value, and treat the extension as just part of the file name.
Some examples of file names with their extensions follow:
.bx
APPEND.CMD
LEDGER.BAS
TEST.BIN
.sx
Note that the extension is always separated from the name
by a period '.'.
The period is the name 'field separator'.
It tells FLEX to treat the following characters as a new
field in the name specification.
.pp
A file name can  be  further refined.
The name and extension uniquely define a file on a particular
drive, but the same name may exist on several drives simultaneously.
To designate a particular drive a 'drive number' is added
to the file specification.
It consists of a single digit (0-3) and is separated
from the name by the field separator '.'.
The drive number may appear either before the name or after it
(after the extension if it is given).
If the drive is not specified, the system will default to
either the 'system' drive or the 'working' drive.
These terms will be described a little later.
.pp
Some examples of file specifications with drive numbers follow:
.bx
0.BASIC
MONDAY.2
1.TEST.BIN
LIST.CMD.1
.sx
In summary, a file specification may contain up to
three fields separated by the field separator.
These fields are; 'drive', 'name', and 'extension'.
The rules for the file specification can be stated quite concisely
using the following notation:
.bx
[<drive>.]<name>[.<extension>]
  or
<name>[.<extension>][.<drive>]
.sx
The '<>' enclose a field and do not actually appear
in the specification, and the '[]' surround optional items
of the specification.
The following are all syntactically correct:
.bx
0.NAME.EXT
NAME.EXT.0
NAME.EXT
0.NAME
NAME.0
NAME
.sx
Note that the only required field is the actual 'name' itself
and the other values will usually default to predetermined values.
Studying the above examples will clarify the notation used.
The same notation will occur regularly throughout the manual.
.pg
V. ENTERING COMMANDS
.pp
When FLEX is displaying '+++', the system is ready to
accept a command line.
A command line is usually a name followed by certain parameters
depending on the command being executed.
There is no 'RUN' command in FLEX.
The first file name on a command line is always
loaded into memory and execution is attempted.
If no extension is given with the file name, 'CMD' is
the default.
If an extension is specified, the one entered is the one used.
Some examples of commands and how they would look on the terminal follow:
.bx
+++TTYSET
+++TTYSET.CMD
+++LOOKUP.BIN
.sx
The first two lines are identical to FLEX since the first
would default to an extension of CMD.
The third line would load the binary file 'LOOKUP.BIN'
into memory and, assuming the file contained a transfer
address, the program would be executed.
A transfer address tells the program loader where to
start the program executing after it has been loaded.
If you try to load and execute a program in the above manner
and no transfer address is present, the message, 'NO LINK'
will be output to the terminal, where 'link' refers to
the transfer address.
Some other error messages which can occur are 'WHAT?' if an
illegal file specification has been typed as the first
part of a command line, and 'NOT THERE' if the file
typed does not exist on the disk.
.pp
During the typing of a command line, the system simply
accepts all characters until a 'RETURN' key is typed.
Any time before typing the RETURN key, the user may use one of
two special characters to correct any mistyped characters.
One of these characters is the 'back space' and allows
deletion of the previously typed character.
Typing two back spaces will delete the previous two characters.
The back space is initially defined to be
a 'control H' but may be redefined by the user using the
TTYSET utility command.
The second special character is the line 'delete' character.
Typing this character will effectively delete all of the characters
which have been typed on the current line.
A new prompt will be output to the terminal, but instead of the usual
'+++' prompt, to show the action of the delete character,
the prompt will be '???'.
Any time the delete character is used, the new prompt will be '???',
and signifies that the last line typed did not get entered
into the computer.
The delete character is initially a 'control X' but may also
be redefined using TTYSET.
.pg
As mentioned earlier, the first name on a command
line is always interpreted as a command.
Following the command is an optional list of names and parameters,
depending on the particular command being entered.
The fields of a command line must be separated by either
a space or a comma.
The general format of a command line is:
.bx
<command>[,<list of names and parameters>]
.sx
A comma is shown, but a space may be used.
FLEX also allows several commands to be entered on one
command line by use of the 'end of line' character.
This character is initially a colon (':'), but may be user
defined with the TTYSET utility.
By ending a command with the end of line character, it is possible
to follow it immediately with another command.
FLEX will execute all commands on the line before returning with the
'+++' prompt.
An error in any of the command entries will cause the system to
terminate operation of that command line and return with the prompt.
Some examples of valid command lines follow:
.bx
+++CAT 1
+++CAT 1:ASN S=1
+++LIST LIBRARY:CAT 1:CAT 0
.sx
As many commands may be typed in one command line as desired,
but the total number of characters typed must not exceed
128.
Any excess characters will be ignored by FLEX.
.pp
One last system feature to be described is the idea of
'system' and 'working' drives.
As stated earlier, if a file specification does not specifically
designate a drive number, it will assume a default value.
This default value will either be the current 'system' drive
assignment or the current 'working' drive assignment.
The system drive is the default for all command names,
or in other words, all file names which are typed first on a command line.
Any other file name on the command line will default to the
working drive.
This version of FLEX also supports automatic drive searching.
When in the auto search mode if no drive numbers are specified,
the operating system will first search drive 0 for the file.
If the file is not found, drive 1 will be searched and so on.
When the system is first initialized
the auto drive searching mode will be selected.
At this time, all drive defaults will be to drive 0.
It is sometimes convenient to assign drive 1 as the working
drive in which case all file references, except commands, will
automatically look on drive 1.
It is then convenient to have a diskette in drive 0 with all
the system utility commands on it (the 'system drive'),
and a disk with the files being worked on in drive 1
(the 'working drive').
If the system drive is 0 and the working drive is 1,
and the command line was:
.bx
+++LIST TEXTFILE
.sx
FLEX would go to drive 0 for the command LIST and
to drive 1 for the file TEXTFILE.
The actual assignment of drives is performed by the
ASN utility.
See its description for details.
.pg
VI. COMMAND DESCRIPTIONS
.pp
There are two types of commands in FLEX,
memory resident (those which actually are part of
the operating system) and disk utility commands (those commands
which reside on the disk and are part of the UCS).
There are only two resident commands, GET and MON.
They will be described here while the UCS is described in the
following sections.
.sp
GET
.sp
The GET command is used to load a binary file into memory.
It is a special purpose command and is not often used.
It has the following syntax:
.bx
GET[,<file name list>]

where <file name list> is: <file spec>[,<file spec>] etc.
.sx
Again the '[]' surround optional items.
'File spec' denotes a file name as described earlier.
The action of the GET command is to load the file
or files specified in the list into memory for later use.
If no extension is provided in the file spec, BIN is assumed,
in other words, BIN is the default extension.
Examples:
.bx
GET,TEST
GET,1.TEST,TEST2.0
.sx
where the first example will load the file named 'TEST.BIN'
from the assigned working drive, and the second example
will load TEST.BIN from drive 1 and TEST2.BIN from drive 0.
.sp
.pp
MON
.pp
MON is used to exit FLEX and return to the hardware
monitor system such as S-BUG.
The syntax for this command is simply MON followed
by the 'RETURN' key.
.pp
NOTE: to re-enter FLEX after using the MON command,
you should enter the program at location CD03 hex.
.pg 1
.dm bo
.tl ''-2.%-''
..
.sp 3
.ce
UTILITY COMMAND SET
.sp 2
The following pages describe all of the utility commands
currently included in the UCS.
You should note that the page numbers denote the first letter
of the command name, as well as the number of the page for a
particular command.
For example, 'B.1.2' is the 2nd page of the description
for the 1st utility name starting with the letter 'B'.
.sp
COMMON ERROR MESSAGES
.pp
Several error messages are common to many of
the FLEX utility commands.
These error messages and their meanings include the following:
.sp
     NO SUCH FILE. This message indicates that a file referenced
in a particular command was not found on the disk specified.
Usually the wrong drive was specified (or defaulted), or
a misspelling of the name was made.
.sp
     ILLEGAL FILE NAME. This can happen if the name or
extension did not start with a letter, or the name or extension
field was too long (limited to 8 and 3 respectively).
This message may also mean that the command being
executed expected a file name to follow and one was not provided.
.sp
     FILE EXISTS. This message will be output if you try
to create a file with a name the same as one which currently
exists on the same disk.
Two different files with the same name are not
allowed to exist on the same disk.
.sp
     SYNTAX ERROR. This means that the command line just typed
does not follow the rules stated for the particular command used.
Refer to the individual command descriptions for syntax rules.
.sp 2
GENERAL SYSTEM FEATURES
.pp
Any time one of the utility commands is sending output to the
terminal, it may be temporarily halted by typing the
'escape' character (see TTYSET for the definition of this character).
Once the output is stopped, the user has two choices:
typing the 'escape' character again or typing 'RETURN'.
If the 'escape' character is typed again, the output will resume.
If the 'RETURN' is typed, control will return to
FLEX and the command will be terminated.
All other characters are ignored while output is stopped.
.pg 1
.dm bo
.tl ''-A.1.%-''
..
.sp 4
.ce
APPEND
.sp 2
The APPEND command is used to append or concatenate
two or more files, creating a new file as the result.
Any type of file may be appended but it only makes sense
to append files of the same type in most cases.
If appending binary files which have transfer addresses
associated with them, the transfer address of the last file
of the list will be the effective transfer address of the resultant file.
All of the original files will be left intact.
.sp 2
DESCRIPTION
.pp
The general syntax for the APPEND command is as follows:
.bx
APPEND,<file spec>[,<file list>],<file spec>
.sx
where <file list> can be an optional list of the specifications.
The last name specified should not exist on the disk
since this will be the name of the resultant file.
If the last file name given does exist on the disk,
the question "MAY THE EXISTING FILE BE DELETED?"
will be displayed.
A Y response will delete the current file
and cause the APPEND operation to be completed.
A N response will terminate the APPEND operation.
All other files specified must exist since they are the ones
to be appended together.
If only 2 file names are given, the first file will be copied
to the second file.
The extension default is TXT unless a different
extension is used on the FIRST FILE SPECIFIED, in which
case that extension becomes the default for the rest of the command line.
Some examples will show its use:
.bx
APPEND,CHAPTER1,CHAPTER2,CHAPTER3,BOOK
APPEND,FILE1,1.FILE2.BAK,GOODFILE
.sx
The first line would create a file on the working drive
called 'BOOK.TXT' which would contain the files
'CHAPTER1.TXT', CHAPTER2.TXT', and 'CHAPTER3.TXT' in that order.
The second example would append 'FILE2.BAK' from drive 1
to FILE1.TXT from the working drive and put the result
in a file called 'GOODFILE.TXT' on the working drive.
The file GOODFILE defaults to the extension of
TXT since it is the default extension.
Again, after the use of the APPEND command, all of the
original files will be intact, exactly as they were
before the APPEND operation.
.pg 1
.dm bo
.tl ''-A.2.%-''
..
.sp 4
.ce
ASN
.sp 2
The ASN command is used for assigning the 'system' drive
and the 'working' drive or to select automatic drive searching.
The system drive is used by FLEX as the default for command
names or, in general, the first name on a command line.
The working drive is used by FLEX as the default on all
other file specifications within a command line.
Upon initialization, FLEX assigns drive \#0 as both the system
and working drive.
An example will show how the system defaults to these
values:
.bx
APPEND,FILE1,FILE2,FILE3
.sx
If the system drive is assigned to be \#0 and the working drive is assigned to drive \#1,
the above example will perform the following operation:
get the APPEND command from drive \#0 (the system drive),
then append FILE2 from drive \#1 (the working drive) to
FILE1 from drive \#1 and put the result in FILE3 on drive \#1.
As can be seen, the system drive was the default for APPEND
where the working drive was the default for all other file specs listed.
.pp
Automatic drive searching causes FLEX to automatically
scan the ready drives for the file specified.
Hardware limitations prevent the mini floppy versions from
searching for "ready" drives.  For this reason, FLEX has
been setup to ALWAYS assume drive 0 and 1 are ready.
Thus if a mini floppy version of FLEX attempts to search a drive which does not have a
disk loaded, it will hang up until a disk is inserted and
the door closed.  Alternatively, the system reset could
be hit and a warm start executed (a jump to address $CD03).
The full size floppy version CAN detect a ready condition and
will not check drives which are out of the ready state during
automatic drive searching.
.pp
Automatic drive searching causes FLEX to first check drive
\#0 for the file specified.  If not there (or if not ready
in the full size version), FLEX skips to drive \#1.
If the file is not found on drive \#1 in the mini floppy
version, FLEX gives up and a file not found error results.
In the full size version FLEX continues to search on drives
\#2 and \#3 before reporting an error.
.sp 2
DESCRIPTION
.pp
The general syntax for the ASN command is as follows:
.bx
ASN[,W=<drive>][,S=<drive>]
.sx
where <drive> is a single digit drive number or the letter A.
If just ASN is typed followed by a 'RETURN',
no values will be changed, but the system will output
a message which tells the current assignments of the
system and working drives, for example:
.bx
+++ASN
THE SYSTEM DRIVE IS \#0
THE WORKING DRIVE IS \#0
.sx
.pg
Some examples of using the ASN command are:
.bx
ASN,W=1
ASN,S=1,W=0
.sx
where the first line would set the working drive to 1
and leave the system drive assigned to its previous value.
The second example sets the system drive to 1 and the working drive to 0.
Careful use of drive assignments can allow the operator
to avoid the use of drive numbers on file
specifications most of the time!
.pp
If auto drive searching is desired,
then the letter A for automatic,
should be used in place of the drive number.
.bx
Example:
ASN W=A
ASN S=A, W=1
ASN S=A, W=A
.sx
