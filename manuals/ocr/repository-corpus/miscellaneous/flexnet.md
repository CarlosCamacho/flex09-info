# FLEXNET

> Source: `misc/work-disks/WORK14 - FLEX Software Archive - Bootable FLEX System and Utilities - Includes BCDBINT, BINBCD, BINBCDT.zip!WORK14.DSK!FLEXNET.HLP`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

CONNECT

 TUE 7/12/83 12:49:31 PM

Welcome to flexnet, the network for 6800 & 6809 users.
If you have any suggestions, please address them to
either Roger Walton, R.L. Hilbun or Bill Holland.

Check out the new commands sent by Kent Meyers:
	NEWFILES and LISTNEW

For instructions on how to use this system, type:
	HELP


flexnet- HELP


When listing anything from flexnet:
Press control-S to pause, control-Q to resume, or
control-C to return to flexnet.

When entering commands:
To backup, press BACKSPACE or control-H.
To cancel the command, press control-X.

To disconnect from flexnet, type:
	BYE

For help on available commands, type:
	HELP COMMANDS

For help on the functions of flexnet, type:
	HELP FUNCTION


flexnet- HELP COMMANDS


For help on how to use any of the following commands, type:
	HELP
followed by the filename of the desired command.	Example:
	HELP LIST

command	description
-------	-----------
FILES	catalog of disk files
CAT	catalog of disk files
NEWFILES	catalog of disk files dated later than a given date
OLDFILES	catalog of disk files dated before a given date
LIST	list a text file to the crt
LISTNEW	list files dated later than a given date
LISTOLD	list files dated before a given date
BUILD	create a text file
DELETE	deletes a file
APPEND	joins files together
CHECK	compares the contents of two files
SYSOP	talk to system operator
PROMPT	changes prompt
TTYSET	adjust flexnet to your terminal
FREE	# of available sectors
TIME	current time & date
ET		program execution elapsed time
BYE	disconnect from flexnet


flexnet- HELP FUNCTION


For help on any of the following functions, type:
	HELP
followed by the filename of the desired function.	Example:
	HELP MAIL
Note: The following are NOT commands!

subject	description
-------	-----------
DIR	flexnet directory structure
MAIL	leave mail for another user
PROGRAMS	list of programs available from flexnet
SUBMIT	submit a program to flexnet
FILEXFER	transfer files between flexnet and your system
SEND	send file
RECEIVE	receive file


flexnet- HELP PROGRAMS


To see a list of programs available from flexnet, type:
	LIST PROGRAMS.DIR
Assembly language programs have an
extension of .TXT while basic programs have an
extension of .BAS.	Some assembly language programs
may have a corresponding binary (extension .BIN) or
command (extension .CMD) file.	Any of these files
may be downloaded to your system using SEND and
RECEIVE.


flexnet- LIST PROGRAMS.DIR


LIST any of the following directory files.

directory	description
---------	-----------
COMM	.DIR	communications programs
UTILITY .DIR	utilities
ORGANIZE.DIR	organizational programs
GRAPHIC .DIR	graphic programs for Bill Holland's color video board
MISC	.DIR	misc. programs

listing of MAIN.DIR / PROGRAMS.DIR


flexnet- LIST COMM.DIR


For a further description of any of these programs type
LIST <filename> where filename is the program of interest.
Or try LIST <filename.DOC>.

program	description
-------	-----------
TERM-ACW	terminal emulator for ACW SMASHBUG users
TERMBUGE	terminal emulator for SBUG-E users
MODEM2	combination of TERMBUGE, SEND2, & RECEV2
SSBMOD2	MODEM2 for Smoke Signal users
SEND2		send file
SEND2C	send file (for Color Computer users)
RECEV2	receive file
RECEV2C	receive file (for Color Computer users)

listing of MAIN.DIR / PROGRAMS.DIR / COMM.DIR


flexnet- LIST UTILITY.DIR


For a further description of any of these programs type
LIST <filename> where filename is the program of interest.
Or try LIST <filename.DOC>.

program	description
-------	-----------
DBUG
for debugging utilities (SBUG-E)
HOLD
load utility then swap diskettes before execution
VOLSET	change diskette volume name and/or number
SDCOPY	single drive copy
COPY
COPY.CMD with many xtras
	COPY.DOC	manual for COPY
DMP
dump binary file in record format
MEMMAP	dump binary file in memory map format
BINCPY	packs a binary file
SQUEEZE	packs a binary file
GETOFF	offset loads a binary file
CAT
replaces CAT, DIR, FILES with one utility
	CAT.DOC	manual for CAT
CLEANUP	remove characters, change case, etc. in text file
DATE
display date, change date of file, change volume info
DISKEDIT	edit disk by file or track & sector
DSKALIGN	exercise disk for hardware testing
FIND
find string in text or binary file
LOWERCAS	intelligent lower case conversion
SAVE
save memory as binary or text file
TEST
high speed disk test
WORDSWAP	substitutes words in text file
RESIDENT	allows some utilities to be memory resident
	RESNORMP.LIB	library file for RESIDENT
	RESNORMG.LIB	"
	RESBUGEP.LIB	"
	RESBUGEG.LIB	"
	RESPROMP.LIB	"
	RESIDENT.DOC	manual for RESIDENT
INIT
universal disk formatter
	INIT.LIB	instructions for INIT
DRIVERS	disk drivers
MOVE
converts mini-flex files to flex 2.0 files
C
display comments on terminal
CRT
definable TTYSET

listing of MAIN.DIR / PROGRAMS.DIR / UTILITY.DIR


flexnet- LIST ORGANIZE.DIR


For a further description of any of these programs type
LIST <filename> where filename is the program of interest.
Or try LIST <filename.DOC>.

program	description
-------	-----------
INDEX		generate diskette index
	INDEX.DOC	manual for INDEX
TEXTORG9.BAS	text organizer program
DIRALL	directory of all diskettes

listing of MAIN.DIR / PROGRAMS.DIR / ORGANIZE.DIR


flexnet- LIST GRAPHIC.DIR


For a further description of any of these programs type
LIST <filename> where filename is the program of interest.
Or try LIST <filename.DOC>.

program	description
-------	-----------
DRAW
draw schmatics, flow charts, etc; has pattern storage

listing of MAIN.DIR / PROGRAMS.DIR / GRAPHIC.DIR


flexnet- LIST MISC.DIR


For a further description of any of these programs type
LIST <filename> where filename is the program of interest.
Or try LIST <filename.DOC>.

program	description
-------	-----------
RESISTOR.BAS	resistive divider
HISTO	.BAS	histogram
SQROOT	.BAS	square root game
YAHTZEE .BAS	game
SURFPLOT.BAS	surface plotting
DAYOFWK .BAS	day of week
BASIC9	6809 BASIC from Dr. Dobbs Journal
ETCH
etch-a-sketch
HEXCHRS	identifies keyboard characters in hex
DT
development terminal program
	DT.DOC	application notes for DT

listing of MAIN.DIR / PROGRAMS.DIR / MISC.DIR


flexnet- HELP FILES

for a catalog of the disk files type FILES	-	to get all files that
start with the letter A, type FILES A	-	for all files that start
with HELP type FILES HELP	-	for all files with an extension of
.TXT type FILES .TXT	-	for files on drive one type FILES 1	-
for files on drive one that start with HELP type FILES 1 HELP	-
for all files that start with R and have an extension that
starts with W (as in mail for Roger Walton) type FILES R.W	-
you got the idea now?

flexnet- HELP CAT

for a catalog of the disk files type CAT	-	to get all files that
start with the letter A, type CAT A	-	for all files that start
with HELP type CAT HELP	-	for all files with an extension of
.TXT type CAT .TXT	-	for files on drive one type CAT 1	-
for files on drive one that start with HELP type CAT 1 HELP	-
for all files that start with R and have an extension that
starts with W (as in mail for Roger Walton) type CAT R.W	-
you got the idea now?

flexnet- HELP HEWFILES

THE SPECIFIED FILE COULD NOT BE FOUND

flexnet- HELP NEWFILES


NEWFILES <mm dd yy> will give a catalog of all the files dated
on or after the date you specify.	Example:
	NEWFILES 5 3 83
will display a catalog showing all the files dated 5/3/83 or later.


flexnet- HELP OLDFILES


OLDFILES <mm dd yy> will give a catalog of all the files dated
on or before the date you specify.	Example:
	OLDFILES 5 3 83
will display a catalog showing all the files dated 5/3/83 or earlier.


flexnet- HELP LIST

LIST <filename> will list the contents of a text file to the crt
(like TYPE in cpm).	if no extension is put on the filename,
it will default to .TXT.


flexnet- HELP LISTNEW


LISTNEW <mm dd yy> will list all the files dated on or after
the date you specify.	Example:
	LISTNEW 5 3 83
will list all files dated 5/3/83 or later.	This command will
prompt you before listing each file and will allow you to
bypass any files or abort a file in progress, going on to the
next file.


flexnet- LIST    HELP LISTOLD


LISTOLD <mm dd yy> will list all the files dated on or before
the date you specify.	Example:
	LISTOLD 5 3 83
will list all files dated 5/3/83 or earlier.	This command will
prompt you before listing each file and will allow you to
bypass any files or abort a file in progress, going on to the
next file.


flexnet- HELP BUILD


You can create a text file for mail or any other purpose by
typing BUILD <filename> where filename is the name of the file
that the text will assume on disk.	If the file does not already
exist, an equals prompt will appear (=) which means build is
ready to accept your text input.	Type your message or text
formatted as you wish along with carriage returns.	Be sure to
include a carriage return every 80 characters or less; otherwise
the buffer will overflow and you will lose text.

When you are finished, start a new line with a pound sign (#) as
the first and only character on the line.	Now press CARRIAGE
RETURN.	This will cause the message you've typed to be saved
on disk and return you to flexnet.


flexnet- HELP DELETE


DELETE <filename> deletes the specified file, unless protected.


flexnet- HELP APPEND


APPEND <source1> <source2> .... <sourceN> <destination>
where source and destination signify filenames.	joins
the source files together in the specified order to form
the destination file.


flexnet- HELP CHECK

'CHECK IS A FLEX UTILITY USED TO COMPARE 2 DISK FILES. THE RESULTS
WILL BE REPORTED TO THE TERMINAL.
THE GENERAL SYNTEX IS:
CHECK,<FILE SPEC 1>,<FILE SPEC 2>
THE REPORT IS WHETHER THEY ARE IDENTICAL OR NOT IDENTICAL.

flexnet- HELP SYSOP


you can talk to the system operator (if he is home, which is seldom) by typing
SYSOP which ties your keyboard to his crt and his keyboard to your crt.	you
can get his attention by repeatedly typing CONTROL-G (this triggers his crt
bell) after typing SYSOP.	to get back to flexnet, press the ESCAPE key.


flexnet- HELP PROMPT

you can change the prompt from "flexnet" to anything you want by
typing PROMPT <anything> where anything is the prompt you desire.

flexnet- HELP TTYSET


The TTYSET command is provided
so the user may control the
'flexnet' output format to be
compatible with the user's
terminal. Additionally certain
terminal input characters to
'flexnet' may be specified by
the user so that 'flexnet'
will recognize them as desired
for compatibility with the
user's terminal.

TTYSET,BS=hh backspace char.
Sets the backspace char. to
the char. having the ASCII
hex value of 'hh'. Usually
set as 'control H'(hex 08),
but may be defined as any
ASCII character.

TTYSET,BE=hh backspace echo
char. Defines the char to be
sent to the terminal after a
'backspace'char. is received.

TTYSET,DL=hh delete character.
Sets the 'delete current line'
char. to the hex value 'hh'
Initially a 'control X'(hex18).
Erases the current input line
before it is accepted into the
computer for execution.

TTYSET,EL=hh end-of-line char.
Used by FLEX to separate mult-
iple commands on one input line.
Initially set to a colon(':'),
hex value of 3A. Must be set to
a printable char. (control char
not allowed.)

TTYSET,DP=dd depth count-decimal
Specifies number of lines to be
output to terminal before paus-
ing. See EJ and PS below for
more details of depth.

TTYSET,WD=dd width. specifies
the number (decimal) of chars.
to be displayed on a line at
user's terminal.(i.e.-number
of columns wide).

TTYSET,NL=dd null count. Sets
the (decimal number) of non-
printing (NULL) 'pad' chars to
be sent to the terminal at the
end of each line. Used to allow
enough time for the users term-
inal to return to the left mar-
gin before receiving the next
printable chars, so they will
not be lost. CRT terms usually
don't need any so set at '0'.

TTYSET,TB=hh tab character.Not
used by FLEX but some of the
utilities may require one.
This char should be a printable
character.

TTYSET,EJ=dd eject count.
Specifies the (decimal) number
of 'eject lines' to be sent to
the terminal at the bottom of
each page. If pause is 'on',
the 'eject sequence' is sent
to the terminal after the pause
is terminated. An eject line is
simply a blank line (line feed)
sent to the terminal.

TTYSET,PS=Y or TTYSET,PS=N
Enables or disables the end-of-
page pause feature.If Pause is
on and Depth is set to some non
-zero value, the output display
is automatically suspended at
the end of each page. May be
restarted by typig the 'escape'
char. (see ES description).

TTYSET,ES=hh escape character.
The char. whose ASCII hex value
is defined to be the 'escape'
char..Used to stop and restart
output to terminal and restart
after a Pause. After halting
output with the 'escape' char.,
further output may be termin-
ated by typing a RETURN key.

examples:
TTYSET
will display all current settings

TTYSET,DP=16,WD=63
will set depth to 16 lines and
column width to 63.

Note:multiple settings allowed.

TTYSET,BS=0,DL=0,DP=0,WD=0,EJ=0
all features in above command
line may be set to '0' to dis-
able them.
	THE END

flexnet- HELP FREE

For a report on the number of available sectors on the diskette
type FREE [drive spec] where drive spec is the drive number (0
or 1).

flexnet- HELP TIME


Time gives the current time and date type 'TIME'

flexnet- HELP ET

You can time the execution of a flexnet command (we're not sure
what for) by preceeding the command with ET.	Examples:
ET HELP
ET LIST MODEM


flexnet- HELP BYE


Simply type:
	BYE
when you are finished with flexnet.
Flexnet will drop the modem carrier
and terminate the phone line connection.


flexnet- HELP DIR


To allow catagorizing of files, flexnet has an inverted tree
directory structure.	Most permanent files do not show up in
the directory produced by the FILES or CAT command.	Instead
they are listed in the directory structure with a brief
description of their content.

The directory structure is simply a collection of text files
called directory files (extension of .DIR).	The top level
directory file is called MAIN.DIR which list other directory
files by subject.	Since each directory file is really a
text file, there is no directory command associated with the
directory structure.	To examine any directory file the LIST
command must be used.	For example, to examine the top level
directory, type:
	LIST MAIN.DIR
It will give you a list of other directory files with a short
description of the content of each one.	You then LIST one of
these directory files to go on.

Note that the last line of each directory file tells which
directorys you had to go thru to get to where you are (this
makes it easier to go backwards thru the directorys).


flexnet- HELP MAIL

Flexnet will allow you to leave mail on the disk for another
user to read.	Sorting of the mail is handled by filename.
Use the name of the person you are sending the mail to as the
filename (filename = first name, extension = first three letters
of last name).	This makes it easy for any user to see if he/she
has any mail.	For example, suppose we send some mail to
Ron Hilbun.	Mail for Ron should be addressed to RON.HIL or
if that filename is taken, make it RON1.HIL or RON2.HIL etc.
If a person's first name takes eight characters or more then
you will need to truncate letters from the end of the name to
add digit(s) for filename purposes.	Ron can see if he has any
mail by typing CAT RO.H which will show him all the files that
start with RO and have an extension that starts with H.
For more information on CAT type:
	HELP CAT

You can create mail by using the build command of flexnet or
you can create mail on your own system and then send it to
flexnet using send and receive.	Help is available for each
of these commands.

Please delete any mail addressed to you, after you read it.


flexnet- HELP SUBMIT

If you wish to submit a program to flexnet, we ask that you
provide documentation with it.	We prefer the documentation
to be included in the front of the program listing, however
if it is too massive for that, you can send it as a seperate
file with the same name as the program but with an extension
of ".DOC".

If the program is written in BASIC and is in the form of an
encoded listing (such as the Color Computer Basic produces),
please save the program on disk as a non-encoded ascii
listing (using the ",A" option) before submitting it to
flexnet.	Example:
	SAVE "PROGRAM.BAS",A

We will take care of getting the program into
the index of programs on this end.	For information on
sending a file to flexnet, type HELP FILEXFER.


flexnet- HELP FILEXFER


Flexnet has the ability to transmit files to your system or
receive files from your system with error checking and automatic
retry on error.	However, your system must have the utilities
SEND2 and RECEV2.	If you do not have these utilities type
HELP BOOT.	For more information on getting a file from flexnet
type HELP SEND.	For more information on putting a file on
flexnet type HELP RECEIVE.


flexnet- HELP BOOT

We are in the process of creating a boot program that will
automatically transfer the receive program to your system.
However, it is not ready yet.	If you can't wait you will
have to list RECEV2, then type it in on your system using
the editor and assemble it.	This will be a lot easier if
your terminal program supports your printer.	If it doesn't,
you may want to use our terminal program.	Try LIST TERMBUGE
or LIST TERM-ACW etc.	Once you have RECEV2 you can use it
to receive SEND2.

flexnet- HELP SEND


Type SEND2 <filename> to transmit a file from flexnet to
you're system.	Wait for a message that says PROCEED and
then regain control of you're own operating system (if you're
using TERMINAL, type control-@).	Now from you're operating
system type RECEV2 <filename> and the file transfer should
take place automatically.	When it is done, you're system will
return to its operating system.	At that time you can hang up
or execute you're terminal program to regain control of flexnet
(after you type TERMINAL, type a carriage return to get the
flexnet prompt).


flexnet- HELP RECEIVE


Type RECEV2 <filename> for flexnet to receive a file from
you're system.	Wait for a message that says PROCEED and
then regain control of you're own operating system (if you're
using TERMINAL, type control-@).	Now from you're operating
system type SEND2 <filename> and the file transfer should
take place automatically.	When it is done, you're system will
return to its operating system.	At that time you can hang up
or execute you're terminal program to regain control of flexnet
(after you type TERMINAL, type a carriage return to get the
flexnet prompt).


flexnet- LIST TERMBUGE

 NAM TERMINAL

*	12-23-82	12:00


* WRITTEN BY ROGER WALTON
* THIS PROGRAM COUPLES THE COMPUTER TERMINAL THRU TO THE MODEM FOR
* USE IN TIMESHARE ACTIVITIES.

* FOR USE WITH SWTPC SBUG-E MONITOR ROM

 OPT PAG


BREAK EQU 0 (NULL) TYPING THIS CHARACTER WILL RETURN CONTROL TO FLEX


MPORT EQU $E000 MODEM PORT

INCHEK EQU $F808
INCH EQU $F804
OUTCH EQU $F80A

PINIT EQU $CCC0 PRINTER INITIALIZE ROUTINE
PCHK EQU $CCD8 PRINTER CHECK ROUTINE
POUT EQU $CCE4 PRINTER OUTPUT ROUTINE
FLEX EQU $CD03


 ORG $C100

START BRA TERM
VN FCB 2 VERSION NUMBER

TERM
 LDA A #%00000011
 STA A MPORT RESET MODEM PORT ACIA
 LDA A #%00001101 7 BITS, ODD PARITY, 1 STOP BIT, RTS ENABLED
 STA A MPORT SETUP MODEM PORT
 JSR PINIT INITIALIZE PRINTER

LOOP
 JSR CHECKM CHECK MODEM
 BCC SKIP BRA IF NO CHARACTER READY
 JSR MI GET CHARACTER
 JSR [OUTCH] SEND CHARACTER TO CONSOL
 LDA B #0 CLEAR SIGN FLAG IN CASE PRINTER ROUTINES NOT LOADED
 JSR PCHK CHECK PRINTER
 BPL SKIP SKIP IF BUSY
 JSR POUT OTHERWISE SEND CHARACTER TO PRINTER
SKIP
 JSR [INCHEK] CHECK CONSOL
 BEQ LOOP BRA IF NO CHARACTER READY
 JSR [INCH] GET CHARACTER
 CMP A #BREAK
 BEQ QUIT BRA IF BREAK CHARACTER
 JSR MO SEND CHARACTER TO MODEM
 BRA LOOP

QUIT
 JMP FLEX RETURN TO FLEX


MO
 PSH B
MO1
 LDA B MPORT GET STATUS
 ROR B
 ROR B
 BCC MO1
 STA A MPORT+1 SEND CHARACTER
 PUL B
 RTS


MI
 LDA A MPORT GET STATUS
 ROR A
 BCC MI
 LDA A MPORT+1 GET CHARACTER
 RTS


CHECKM
 LDA A MPORT CHECK MODEM FOR CHAR
 ROR A
 RTS


 END START

flexnet-
