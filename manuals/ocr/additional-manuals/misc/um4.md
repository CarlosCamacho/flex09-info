# UM4

> Source: `manuals/misc/TSC_MAN - FLEX Software Archive - Manual and Documentation Archive - Includes APG-MAC, APG-PREF, APG1.zip!TSC_MAN.dsk!UM4.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.pg 1
.dm bo
.tl ''-S.1.%-''
..
.sp 4
.ce
SAVE
.sp 2
The SAVE command is used for saving a section of memory on the disk.
Its primary use is for saving programs which have been loaded
into memory from tape or by hand.
.sp 2
DESCRIPTION
.pp
The general syntax of the SAVE command is:
.bx
SAVE,<file spec>,<begin adr>,<end adr>[,<transfer adr>]
.sx
where <file spec> is the name to be assigned to the file.
The default extension is BIN and the default drive is the working drive.
The address fields define the beginning and ending addresses of
the section of memory to be written on the disk.
The addresses should be expressed as hex numbers.
The optional <transfer address> would be included
if the program is to be loaded and executed by FLEX.
This address tells FLEX where execution should begin.
Some examples will clarify the use of SAVE:
.bx
+++SAVE,DATA,100,1FF
+++SAVE,1.GAME,0,1680,100
.sx
The first line would SAVE the memory locations 100 to 1FF hex
on the disk in a file called DATA.BIN.
The file would be put on the working drive and no
transfer address would be assigned.
The second example would cause the contents of memory locations
0 through 1680 to be SAVEd on the disk in file GAME.BIN
on drive 1.
Since a transfer address of 100 was specified as a parameter,
typing 'GAME.BIN' in response to the FLEX
prompt after saving would cause the file to be loaded back into memory
and execution started at location 100.
.pp
If an attempt is made to save a program under a file name
that already exists,
the prompt "MAY THE EXISTING FILE BE DELETED?"
will be displayed.
A Y response will replace the file with the new data
to be saved while a N response will terminate the save operation.
.pp
Sometimes it is desirable to save noncontiguous segments of memory.
To do this it would be necessary to first SAVE each segment as a separate
file and then use the APPEND command to combine them into one file.
If the final file is to have a transfer address, you should assign
it to one of the segments as it is being saved.
After the APPEND operation, the final file will retain that
transfer address.
.pg
SAVE.LOW
.pp
There is another form of the SAVE command resident in the UCS.
It is called SAVE.LOW and loads in a lower section of memory
than the standard SAVE command.
Its use is for saving programs in the Utility Command Space where SAVE.CMD is loaded.
Those interested in creating their own utility commands
should consult the 'Advanced Programmer's Guide' for further details.
.pg 1
.dm bo
.tl ''-S.2.%-''
..
.sp 4
.ce
STARTUP
.sp 2
STARTUP is not a utility command but is a feature of FLEX.
It is often desirable to have the operating system do some special
action or actions upon initialization of the system (during
the bootstrap loading process).
As an example, the user may always want to use BASIC
immediately following the boot process.
STARTUP will allow for this without the necessity
of calling the BASIC interpreter each time.
.sp 2
DESCRIPTION
.pp
FLEX always checks the disk's directory immediately following
the system initialization for a file called STARTUP.TXT.
If none is found, the three plus sign prompt is output and the system
is ready to accept user's commands.
If a STARTUP file is present, it is read and interpreted as
a single command line and the appropriate actions are performed.
As an example, suppose we wanted FLEX to execute BASIC
each time the system was booted.
First it is necessary to create the STARTUP file:
.bx
+++BUILD,STARTUP
  =BASIC
  =\#
+++
.sx
The above procedure using the BUILD command will create the desired file.
Note that the file consisted of one line (which is all FLEX reads
from the STARTUP file anyway).
This line will tell FLEX to load and execute BASIC.
Now each time this disk is used to boot the operating system,
BASIC will also be loaded and run.
Note that this example assumes two things.
First, the disk must contain FLEX.SYS and must have been LINKed
in order for the boot to work properly.
Second, it is assumed that a file called BASIC.CMD actually exists on the disk.
.pp
Another example of the use of STARTUP is to set system environment paramters
such as TTYSET parameters or the assigning of a system and working drive.
If the STARTUP command consisted of the following line:
.bx
TTYSET,DP=16,WD=60:ASN,W=1:ASN:CAT,0
.sx
each time the system was booted the following actions would occur.
First, TTYSET would set the 'depth' to 16 and the 'width' to 60.
Next, assuming the 'end of line' character is the ':', the ASN
command would assign the working drive to drive 1.
Next ASN would display the assigned system and working drives on
the terminal.
Finally, a CATalog of the files on drive 0 would be displayed.
For details of the actions of the individual commands, refer to
their descriptions elsewhere in this manual.
.pp
As it stands, it looks as if the STARTUP feature is limited to the
execution of a single command line.
This is true but there is a way around the restriction, the EXEC
command.
If a longer list of operations is desired than will fit on one line,
simply create a command file containing all of the commands desired.
Then create the STARTUP file placing the single line:
.bx
EXEC,<file name>
.sx
where <file name> would be replaced by the name assigned to the command file created.
A little imagination and experience will show many uses for the STARTUP feature.
.pp
By directing STARTUP to a file that does not have a return
to DOS command it is possible to lockout access to DOS.
You can correct the problem by hitting the RESET button
and beginning execution at address $CD03.
The STARTUP file may then be deleted and if desired,
modified.
Directing execution to CD03,
the DOS warm start address, bypasses the DOS STARTUP function.
.pg 1
.dm bo
.tl ''-T.1.%-''
..
.sp 4
.ce
TTYSET
.sp 2
The TTYSET utility command is provided so the user may control the
characteristics of the terminal.
With this command, the action of the terminal on input
and the display format on output may be controlled.
.sp 2
DESCRIPTION
.pp
The general syntax of the TTYSET command is:
.bx
TTYSET[,<parameter list>]
.sx
where <parameter list> is a list of 2 letter parameter names,
each followed by an equals sign ('='), and then by the
value being assigned.
Each parameter should be separated by a comma or a space.
If no parameters are given, the values of all of the TTYSET parameters
will be displayed on the terminal.
.pp
The default number base for numerical values is the base most
appropriate to the parameter.
In the descriptions that follow, 'hh' is used for parameters
whose default base is hex;
'dd' is used for those whose default base is decimal.
Values which should be expressed in hex are displayed
in the TTYSET parameter listing preceded by a '$'.
Some examples follow:
.bx
+++TTYSET
+++TTYSET,DP=16,WD=63
+++TTYSET,BS=8,ES=3
.sx
The first example simply lists the current values of all
TTYSET parameters on the terminal.
The next line sets the depth 'DP' to 16 lines and the
terminal width, 'WD' to 63 columns.
The last example sets
the backspace character to the value of hex 8,
and the escape character to hex 3.
.pp
The following fully describes all of the TTYSET parameters
available to the user.
Their initial values are defined, as well as any special
characteristics they may possess.
.sp 2
BS=hh     BackSpace character
.pp
This sets the 'backspace' charcter to the character having the
ASCII hex value of hh.
This character is initially a 'control H' (hex 08),
but may be defined to any ASCII character.
The action of the backspace character is to delete
the last character typed from the terminal.
If two backspace characters are typed, the last two characters
will be deleted, etc.
Setting BS=0 will disable the backspace feature.
.sp 2
.nl 5
BE=hh     Backspace Echo character
.pp
This defines the character to be sent to the terminal
after a 'backspace' character is received.
The character printed will have the ASCII hex value of hh.
This character is initially set to a null but can
be set to any ASCII character.
.pp
The BE command also has a very special use that will be of
interest to some terminal owners, such as SWTPC CT-64.
.pp
If a hex 08 is specified as the echo character,
FLEX will output a space (20) then another 08.
This feature is very uesful for terminals which
decode a hex 08 as a cursor left but which do not
erase characters as the cursor is moved.
.bx
Example:  Say that you mis-typed the word cat as shown below:
          +++CAY
.sx
typing in one CTRL-H (hex 08) would position the cursor
on top of the Y and delete the Y from the DOS input buffer.
FLEX would then send out a space ($20) to erase the Y and
another 08 (cursor left) to re-position the cursor.
.sp 2
DL=hh     DeLete character
.pp
This sets the 'delete current line' character to the hex value hh.
This character is initially a 'control X' (hex 18).
The action of the delete character is to 'erase' the current input
line before it is accepted into the computer for execution.
Setting DL=0 will disable the line delete feature.
.sp 2
EL=hh     End of Line character
.pp
This character is the one used by FLEX to separate multiple
commands on one input line.
It is initially set to a colon (':'), a hex value of 3A.
Setting this character to 0 will disable the multiple
command per line capability of FLEX.
The parameter 'EL=hh' will set the end of line character
to the character having the ASCII hex value of hh.
This character must be set to a printable character (control
characters not allowed).
.sp 2
DP=dd     DePth count
.pp
This parameter specifies that a page consists of dd (decimal)
physical lines of output.
A page may be considered to be the number of lines
between the fold if using fan folded paper on a hard copy
terminal, or a page may be defined to be the number of lines
which can be displayed at any one time on a CRT type terminal.
Setting DP=0 will disable the paging (this is the initial value).
See EJ and PS below for more details of depth.
.sp 2
WD=dd     WiDth
.pp
The WD parameter specifies the (decimal) number of
characters to be displayed on a physical line at the terminal (the
number of columns).
Lines of text longer than the value of width will be 'folded'
at every multiple of WD characters.
For example, if WD is 50 and a line of 125 characters is to
be displayed, the first 50 characters are displayed on a physical line
at the terminal, the next 50 characters are displayed on the next
physical line, and the last 25 characters are displayed on the third
physical line.
If WD is set to 0, the width feature will be disabled,
and any number of characters will be permitted on a physical line.
.sp 2
NL=dd     NuLl count
.pp
This parameter sets the (decimal) number of non-printing
(Null) 'pad' characters to be sent to the terminal at
the end of each line.
These pad characters are used so the terminal carriage
has enough time to return to the left margin before the
next printable characters are sent.
The initial value is 4.
Users using CRT type terminals may want to set NL=0
since no pad characters are usually required on this type
of terminal.
.sp 2
TB=hh     TaB character
.pp
The tab character is not used by FLEX but some of the utilities
may require one (such as the Text Editing System).
This parameter will set the tab character to the character
having the ASCII hex value hh.
This character should be a printable character.
.sp 2
EJ=dd     EJect count
.pp
This parameter is used to specify the (decimal) number of
'eject lines' to be sent to the terminal at the bottom of each page.
If Pause is 'on', the 'eject sequence' is sent to the
terminal after the pause is terminated.
If the value dd is zero (which it is by default), no 'eject
lines' are issued.
An eject line is simply a blank line (line feed) sent to the
terminal.
This feature is especially useful for terminals with fan fold paper
to skip over the fold (see Depth).
It may also be useful for certain CRT terminals to be able to
erase the previous screen contents at the end of each page.
.sp 2
PS=Y   or   PS=N   PauSe control
.pp
This parameter enables (PS=Y) or disables (PS=N) the
end-of-page pause feature.
If Pause is on and depth is set to some nonzero value,
the output display is automatically suspended at the end of each page.
The output may be restarted by typing the 'escape' character (see
ES description).
If pause is disabled, there will be no end-of-page pausing.
This feature is useful for those using high-speed CRT
terminals to suspend output long enough to read the page of text.
.sp 2
ES=hh     EScape character
.pp
The character whose ASCII hex value is hh is defined to be
the 'escape character'.
Its initial value is $1B, the ASCII ESC character.
The escape character is used to stop output from being displayed,
and once it is stopped, restart it again.
It is also used to restart output after Pause has stopped it.
As an example, suppose you are LISTing a long text file
on the terminal and you wish to temporarily halt the output.
Typing the 'escape character' will do this (this feature is
not supported on computers using a Control Port for
terminal communications).
At this time (output halted), typing another 'escape character'
will resume output, while typing a RETURN key will cause
control to return to FLEX and the three plus sign prompt
will be output to the terminal.
It should be noted that line output stopping always happens at the
end of a line.
.pg 1
.dm bo
.tl ''-V.1.%-''
..
.sp 4
.ce
VERIFY
.sp 2
The VERIFY command is used to set the File Management
System's write verify mode.
If VERIFY is on, every sector which is written to
the disk is read back from the disk for verification (to make sure
there are no errors in any sectors).
With VERIFY off, no verification is performed.
.sp 2
DESCRIPTION
.pp
The general syntax of the VERIFY command is:
.bx
VERIFY[,ON]
   or
VERIFY[,OFF]
.sx
where ON or OFF sets the VERIFY mode accordingly.
If VERIFY is typed without any parameters, the current
status of VERIFY will be displayed on the terminal.
Example:
.bx
+++VERIFY,ON
+++VERIFY
.sx
The first example sets the VERIFY mode to ON.
The second line would display the current status (ON or OFF)
of the VERIFY mode.
VERIFY causes slower write times, but it
is recommended that it be left on for your protection.
.pg 1
.dm bo
.tl ''-V.2.%-''
..
.sp 4
.ce
VERSION
.sp 2
The VERSION utility is used to display the version number
of a utility command.
If problems or updates ever occur in any of the utilities, they may be
replaced with updated versions.
The VERSION command will allow you to determine which version of a
particular utility you have.
.sp 2
DESCRIPTION
.pp
The general syntax of the VERSION command is:
.bx
VERSION,<file spec>
.sx
where <file spec> is the name of the utility you wish to check.
The default extension is CMD and the drive defaults to the
working drive.
As an example:
.bx
+++VERSION,0.CAT
.sx
would display the version number of the CAT command (from drive 0)
on the terminal.
.pg 1
.dm bo
.tl ''-X.1.%-''
..
.sp 4
.ce
XOUT
.sp 2
XOUT is a special form of the delete command which deletes
all files having the extension .OUT.
.pp
DESCRIPTION
The general syntax of XOUT is:
.bx
XOUT[,<drive spec>]
.sx
where <drive spec> is the desired drive number.
If no drive is specified all, .OUT files on the working
drive will be deleted and
if auto drive searching is enabled,
all .OUT files on drives 1 and 2 will be deleted.
XOUT will not delete any files which are delete protected
or which are currently in the print queue.
.bx
Example:
+++XOUT
+++XOUT 1
.sx
