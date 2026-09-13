# UM2

> Source: `manuals/misc/TSC_MAN - FLEX Software Archive - Manual and Documentation Archive - Includes APG-MAC, APG-PREF, APG1.zip!TSC_MAN.dsk!UM2.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.pg 1
.dm bo
.tl ''-B.1.%-''
..
.sp 4
.ce
BUILD
.sp 2
The BUILD command is provided for those desiring to create
small text files quickly (such as STARTUP files, see STARTUP)
or not wishing to use the optionally available FLEX
Text Editing System.
The main purpose for BUILD is to generate short text files
for use by either the EXEC command or the STARTUP facility
provided in FLEX.
.sp 2
DESCRIPTION
.pp
The general syntax of the BUILD command is:
.bx
BUILD,<file spec>
.sx
where <file spec> is the name of the file you wish to be created.
The default extension for the spec is TXT and the drive defaults
to the working drive.
If the output file already exists the question
"MAY THE EXISTING FILE BE DELETED?" will be displayed.
A Y response will delete the existing file
and build a new file while a N response will
terminate the BUILD command.
.pp
After you are in the 'BUILD' mode, the terminal will
respond with an equals sign ('=') as the prompt character.
This is similar to the Text Editing System's prompt for text input.
To enter your text, simply type on the terminal the desired characters,
keeping in mind that once the 'RETURN' is typed, the line is in the file
and can not be changed.
Any time before the 'RETURN' is typed, the backspace character
may be used as well as the line delete character.
If the delete character is used, the prompt will be '???'
instead of the equals sign to show that the last line was deleted and not entered into the file.
It should be noted that only printable characters
(not control characters) may be entered into text files using the
BUILD command.
.pp
To exit the BUILD mode, it is necessary to type a pound sign ('\#')
immediately following the prompt, then type 'RETURN'.
The file will be finished and control returned back to FLEX
where the three plus signs should again be output to the terminal.
This exiting is similar to that of the Text Editing System.
.pg 1
.dm bo
.tl ''-C.1.%-''
..
.sp 4
.ce
CAT
.sp 2
The CATalog command is used to display
the FLEX disk file names in the directory on each disk.
The user may display selected files on one or multiple drives
if desired.
.sp 2
DESCRIPTION
.pp
The general syntax of the CAT command is:
.bx
CAT[,<drive list>][,<match list>]
.sx
where <drive list> can be one or more drive numbers seperated by commas,
and <match list> is a set of name and extension characters to
be matched against names in the directory.
For example, if only file names which started with the characters
'VE' were to be cataloged, then VE would be in the match list.
If only files whose extensions were 'TXT' were to be cataloged,
then .TXT should appear in the match list.
A few specific examples will help clarify the syntax:
.bx
+++CAT
+++CAT,1,A.T,DR
+++CAT,PR
+++CAT,0,1
+++CAT,0,1,.CMD,.SYS
.sx
The first example will catalog all file names on the working drive
or on all drives if auto drive searching is selected.
The second example will catalog only those files on drive 1
whose names begin with 'A' and whose extensions begin with 'T',
and also all files on drive 1 whose names start with 'DR'.
The next example will catalog all files on the working drive
(or on all drive if auto drive searching is selected)
whose names start with 'PR'.
The next line causes all files on both drive 0 and drive 1 to be cataloged.
Finally, the last example will catalog the files on drive 0 and 1
whose extensions are CMD or SYS.
.pp
During the catalog operation, before each drive's
files are displayed, a header message stating the drive number is output to
the terminal.
The name of the diskette as entered during the
NEWDISK operation will also be displayed.
The actual directory entries are listed in the following form:
.bx
NAME.EXTENSION    SIZE PROTECTION CODE
.sx
where size is the number of sectors that file occupies
on the disk.
If more than one set of matching characters was specified
on the command line, each set of names will be grouped according
to the characters they match.
For example, if all .TXT and .CMD files were cataloged,
the TXT types would be listed together, followed by the CMD types.
.pp
In summary, if the CAT command is not parameterized, then all
files on the assigned working drive will be displayed.
If a working drive is not assigned
(auto drive searching mode)
the CAT command will display files on all on line drives.
If it is parameterized by only a drive number, then all files on that
drive will be displayed.
If the CAT command is parameterized by only an extension,
then only files with that extension will be displayed.
If only the name is used, then only files which start with that name
will be displayed.
If the CAT command is parameterized by only name and extension, then
only files of that root name and root extension (on the working drive)
will be displayed.
Learn to use the CAT command and all of its features
and your work with the disk will become a little easier.
.pp
The current protection code options that can be displayed
are as follows:
.bx
D     File is delete protected (delete or rename prohibited)
W     File is write protected (delete, rename and write prohibited)
.si -3
(blank)  No special protection
.sx
.pg 1
.dm bo
.tl ''-C.2.%-''
..
.sp 4
.ce
COPY
.sp 2
The COPY command is used for making copies of files on a disk.
Individual files may be copied, groups of name-similar
files may be copied, or entire disks may be copied.
The copy command is a very versatile utility.
The COPY command also re-groups the sectors of a file
in case they were spread all over the old disk.
This regrouping can make file access times much faster.
It should be noted that before copying files to a new disk,
the disk must be formatted first.
Refer to NEWDISK for instructions on this procedure.
.sp 2
DESCRIPTION
.pp
The general syntax of the COPY command has three forms:
.bx
a. COPY,<file spec>,<file spec>
b. COPY,<file spec>,<drive>
c. COPY,<drive>,<drive>[,<match list>]
.sx
where <match list> is the same as that described in
the CAT command and all rules apply to matching names and extensions.
When copying files, if the destination
disk already contains a file with the same name as
the one being copied,
the file name and the message, "FILE EXISTS DELETE ORIGINAL?"
will be output to the terminal.
Typing Y will cause the file on the destination disk to be deleted
and the file from the source disk will be copied to the destination
disk.
Typing N will direct FLEX not to copy the file in question.
.pp
The first type of COPY allows copying a single file
into another.
The output file may be on a different drive but if on the
same drive the file names must be different.
It is always necessary to specify the extension of the input
file but the output file's extension will default to that of
the input's if none is specified.
An example of this form of COPY is:
.bx
+++COPY,0.TEST.TXT,1.TEST25
.sx
This command line would cause the file TEST.TXT on drive 0
to be copied into a file called TEST25.TXT on drive 1.
Note how the second file's extension defaulted to TXT, the
extension of the input file.
.pp
The second type of COPY allows copying a file from one drive
to another drive with the file keeping its original name.
An example of this is:
.bx
+++COPY,0.LIST.CMD,1
.sx
Here the file named LIST.CMD on drive 0
would be copied to drive 1.
It is again necessary to specify the file's extension in the file
specification.
This form of the command is more convenient than the previous form
if the file is to retain its original name after the copying process.
.pg
The final form of COPY is the most versatile and the most powerful.
It is possible to copy all files from one drive to another,
or to copy only those files which match the match list characters given.
Some examples will clarify its use:
.bx
+++COPY,0,1
+++COPY,1,0,.CMD,.SYS
+++COPY,0,1,A,B,CA.T
.sx
The first example will copy all files from drive 0 to drive 1
keeping the same names in the process.
The second example will copy only those files on drive 1
whose extensions are CMD and SYS to drive 0.
No other files will be copied.
The last example will copy the files from drive 0
whose names start with 'A' or 'B' regardless of extension,
and those files whose names start with the letters 'CA' and
whose extensions start with 'T'.,to the output drive which is drive 1.
The last form of copy is the most versatile because it will allow
putting just the command (CMD) files on a new disk, or just
the SYS files, etc., with a single command entry.
During the COPY process, the name of the file which
is currently being copied will be output to the terminal,
as well as the drive to which it is being copied.
.pg 1
.dm bo
.tl ''-D.1.%-''
..
.sp 4
.ce
DATE
.sp 2
The DATE command is used to display or change an internal FLEX
date register.
This date register may be used by future programs and FLEX utilities.
.sp 2
DESCRIPTION
.pp
The general syntax of the DATE command is:
.bx
DATE[,<month,day,year>]
.sx
where 'month' is the numerical month, 'day' is the numerical day and 'year'
is the last two digits of the year.
.bx
+++DATE 5,2,79  Sets the date register to May 2, 1979
.sx
Typing DATE followed by a carriage return will return the last
entered date.
.bx
Example:
        +++DATE
        May 2, 1979
.sx
.pg 1
.dm bo
.tl ''-D.2.%-''
..
.sp 4
.ce
DELETE
.sp 2
The DELETE command is used to delete a file from the disk.
Its name will be removed from the directory and its sector space will
be returned to the free space on the disk.
.sp 2
DESCRIPTION
.pp
The general syntax of the DELETE command is:
.bx
DELETE,<file spec>[,<file list>]
.sx
where <file list> can be an optional list of file specifications.
It is necessary to include the extension on each file specified.
As the DELETE command is executing it will prompt you with:
.bx
DELETE "FILE NAME"?
.sx
The entire file specification will be displayed, including
the drive number.
If you decide the file should be deleted, type 'Y';
otherwise, any other response will cause that file to remain
on the disk.
If a 'Y' was typed, the message 'ARE YOU SURE?' will
be displayed on the terminal.
If you are absolutely sure you want the file deleted from the disk,
type another 'Y' and it will be gone.
Any other character will leave the file intact.
ONCE A FILE HAS BEEN DELETED, THERE IS NO WAY
TO GET IT BACK!
Be absolutely sure you have the right file before answering the
prompt questions with Y's.
Once the file is deleted, the space it had occupied on the disk
is returned back to the list of free space for future use by other files.
Few examples follow:
.bx
+++DELETE,MATHPACK.BIN
+++DELETE,1.TEST.TXT,0.AUGUST.TXT
.sx
The first example will DELETE the file named MATHPACK.BIN
from the working drive.
If auto drive searching is selected,
the file will be deleted from the first drive it is found on.
The second line will DELETE the file TEST.TXT from drive 1,
and AUGUST.TXT from drive 0.
.pp
There are several restrictions on the DELETE command.
First, a file that is delete or write protected may not
be deleted without first removing the protection.
Also a file which is currently in the print queue
(see the PRINT command)
can not be deleted using the DELETE command.
.pg 1
.dm bo
.tl ''-E.1.%-''
..
.sp 4
.ce
EXEC
.sp 2
The EXECute command is used to process a text file as a list
of commands, just as if they had been typed from the keyboard.
This is a very powerful feature of FLEX for it allows
very complex procedures to be built up as a command file.
When it is desirable to run this procedure, it is only necessary
to type EXEC followed by the name of the command file.
Essentially all EXEC does is to replace the FLEX keyboard
entry routine with a routine which reads a line from the
command file each time the keyboard routine would have been called.
The FLEX utilities have no idea that the line of input is coming from a
file instead of the terminal.
.sp 2
DESCRIPTION
.pp
The general syntax of the EX command is:
.bx
EXEC,<file spec>
.sx
where <file spec> is the name of the command file.
The default extension is TXT.
An example will give some ideas on how EXEC can be used.
One set of commands which might be performed quite often
is the set to make a new system diskette on drive 1 (see NEWDISK).
Normally it is necessary to use NEWDISK and then copy
all .CMD and all .SYS files to the new disk.
Finally the LINK must be performed.
Rather than having to type this set of commands
each time it was desired to produce a new system diskette,
we could create a command file called MAKEDISK.TXT which
contained the necessary commands.
The BUILD utility should be used to create this file.
The creation of this file might go as follows:
.bx
+++BUILD,MAKEDISK
  =NEWDISK,1
  =COPY,0,1,.CMD,.OV,.LOW,.SYS
  =LINK,1.FLEX
  =\#
+++
.sx
The first line of the example tells FLEX we wish to
BUILD a file called MAKEDISK (with the default extension of .TXT).
Next, the three necessary command lines are typed in just as they
would be typed into FLEX.
The COPY command will copy all files with CMD, OV, LOW,
and SYS extensions from drive 0 to drive 1.
Finally the LINK will be performed.
Now when we want to create a system disk we only need to type
the following:
.bx
+++EXEC,MAKEDISK
.sx
We are assuming here that MAKEDISK resides on the same disk
which contains the system commands.
EXEC can also be used to execute the STARTUP file (see STARTUP).
.pp
There are many applications for the EXEC command.
The one shown is certainly useful but experience and imagination
will lead you to other useful applications.
.pp
IMPORTANT NOTE:  The EXEC utility is loaded into
the very upper end of user memory.  This is done by first
loading EXEC into the utility file space, then
calculating the proper starting address so that it
will reside right up against the end of the user
memory space.
Next EXEC is moved to that location and a new
end of memory is set to just below EXEC.
When the EXEC file is finished, if the user
has not further changed the memory end location,
EXEC will reset it to the original value.
.pg 1
.dm bo
.tl ''-I.1.%-''
..
.sp 4
.ce
I
.sp 2
The I command allows a utility to obtain input characters
from a disk file rather than the terminal.
.sp 2
DESCRIPTION
.pp
The general syntax of the I command is:
.bx
I,<file spec>,<command>
.sx
where <file spec> is the name of the file containing
the characters to be used as input
and <command> is the FLEX utility command that will be
executed and that will receive that input from <file spec>.
The default extension on <file spec> is .TXT.
.pp
For example,
say that on a startup you always wanted the file
DATA.DAT deleted from the disk without having to
answer the "ARE YOU SURE?" questions.
This could be done in the following manner:
.bx
+++BUILD,YES
=YY
=\#
.sx
The first Y will answer the "DELETE 0.DATA.DAT?" question while
the second Y will answer the "ARE YOU SURE?" question.
.bx
+++BUILD,STARTUP
=I,YES,DELETE,DATA.DAT
=\#
.sx
Upon booting the disk,
FLEX will execute the STARTUP file and perform the following operation:
delete the file DATA.DAT receiving all answers to any questions
from the input file YES.TXT rather than from the terminal.
.pp
See the description of the STARTUP command for more information
on STARTUP.
.pg 1
.dm bo
.tl ''-J.1.%-''
..
.sp 4
.ce
JUMP
.sp 2
The JUMP command is provided for convenience.
It is used to start execution of a program already
stored in computer RAM memory.
.sp 2
DESCRIPTION
.pp
The general syntax of the JUMP command is:
.bx
JUMP,<hex address>
.sx
where <hex address> is a 1 to 4 digit hex number representing
the address where program execution should begin.
The primary reason for using JUMP is if there
is a long program in memory already
and you do not wish to load it off of the disk again.
Some time can be saved but you must be sure the
program really exists before JUMPing to it!
.pp
As an example, suppose we had a BASIC interpreter
in memory and it had a 'warm start' address of 103 hex.
To start its execution from FLEX we type the following:
.bx
+++JUMP,103
.sx
The BASIC interpreter would then be executed.
Again, remember that you must be absolutely sure
the program you are JUMPing to is actually present in memory.
