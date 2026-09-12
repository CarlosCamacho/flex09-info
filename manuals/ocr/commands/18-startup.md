# STARTUP

_OCR transcription from: `Screenshot_20260912-071332.png`, `Screenshot_20260912-071345.png`_

STARTUP
STARTUP is not a utility command but is a feature of FLEX. It is often
desirable to have the operating system do some special action or actions
upon initialization of the system (during the bootstrap loading
process). As an example, the user may always want to use BASIC
immediately following the boot process. STARTUP will allow for this
without the necessity of calling the BASIC interpreter each time.
## Description
FLEX always checks the disk's directory immediately following the system
initialization for a file called STARTUP.TXT. If none is found, the
three plus sign prompt is output and the system is ready to accept
user's commands. If a STARTUP file jis present, it is read and
interpreted as a single command line and the appropriate actions are
performed. As an example, suppose we wanted FLEX to execute BASIC each
time the system was booted. First it is necessary to create the STARTUP
e:
+++BUILD, STARTUP
=BASIC
=H

++
The above procedure using the BUILD command will create the desired
file. Note that the file consisted of one line (which is all FLEX reads
from the STARTUP file anyway). This line will tell FLEX to Toad and
execute BASIC. Now each time this disk is used to boot the operating
system, BASIC will also be loaded and run. Note that this example
assumes two things. First, the disk must contain FLEX.SYS and must have
been LINKed in order for the boot to work properly. Second, it is
assumed that a file called BASIC.CMD actually exists on the disk.
Another example of the use of STARTUP is to set system environment
paramters such as TTYSET parameters or the assigning of a system and
working drive. If the STARTUP command consisted of the following line:

TTYSET, DP=16,WD=60:ASN,W=1:ASN:CAT,O
each time the system was booted the following actions would occur.
First, TTYSET would set the 'depth' to 16 and the 'width' to 60. Next,
assuming the 'end of line' character is the ':', the ASN command would
assign the working drive to drive 1. Next ASN would display the
assigned system and working drives on the terminal, Finally, a CATalog
of the files on drive 0 would be displayed. For details of the actions
of the individual commands, refer to their descriptions elsewhere in
this manual.
As it stands, it looks as if the STARTUP feature is limited to the
execution of a single command line. This is true but there is a way
around the restriction, the EXEC command. If a Tonger list of
operations is desired than will fit on one line, simply create a command

file containing all of the commands desired. Then create the STARTUP
file placing the single line:

EXEC,<file name>
where <file name> would be replaced by the name assigned to the command
file created. A little imagination and experience will show many uses
for the STARTUP feature.
By directing STARTUP to a file that does not have a return to DOS
command it is possible to lockout access to DOS. You can correct the
problem by hitting the RESET button and beginning execution at address
$CD03. The STARTUP file may then be deleted and if desired, modified.
Directing execution to CD03, the DOS warm start address, bypasses the
DOS STARTUP function.

