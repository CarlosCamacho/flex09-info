# Color FLEX Disk Operating System (Frank Hogg Laboratory)

> Source: `manuals/color-flex/Color FLEX Disk Operating System (Frank Hogg Laboratory).pdf`  
> Method: OCR at 200 DPI

OCR and media-decoding errors may remain.

The
FLEX
Disk

Operating
System

GENERAL INFORMATION

---

THE PLEX DISK OPERATING SYSTEM

T. INTRODUCTION

The FLEX™ Operating System is a very versatile and flexible operating
system. It provides the user with a powerful set of system commands to
control all disk operations directly from the user's terminal. The
systems programmer will be delighted with the wide variety of disk
eccess and file management routines available for personal use.
Overall, FLEX is one of the most powerful operating systems available

today.

The FLEX Operating System is comprised of three parts, the File
Management System (FMS), the Disk Operating System (DOS), and the
Utility Command Set (UCS). Part of the power of the overall system lies
in the fact that the system can be greatly expanded by simply adding
edditional utility commands. The user should expect to see many more
utilities available for FLEX in the future. Some of the other important
features include: fully dynamic file space allocation, the automatic
"removal" of defective sectors from the disk, automatic space
compression and expansion on al? text files, complete user environment
control using the TTYSET utility command, and uniform disk wear due to
the high performance dynamic space allocator.

Tne UCS currently conteins many very useful commands. These programs
reside on the systen disk and are only loaded into memcry when needed.
This means that the set of commands can be easily extended at eny time,
without the necessity of replacing the entire operating system. The
utilities provided with FLE¥ perforr such tasks as the saving, loading,
copying, renaming, deleting, appending, and listing of disk files.
There is an extensive CATalog command for examining the disk's file
directory. Several environment control commands ere also provided.
Overall, FLEX provides all of the necessary tocls for the user's
interaction with the disk.

* FLEX is a registered trademark of Technical Systems
Consultants, Inc.

-l.l-

---

1. SYSTEM REQUIREMENTS

FLEX requires random access menory from location 0000 through location
2FFF hex (12K). Merory is also required from COOQ (48K) through DFFF
hex (56K), where the actual operatince system resides. The system also
a:sumes at least 2 disk drives are connected to the controller and that
they are configured as drives #0 and #1. You should consult the disk
drive instructions for this information. FLEX interfaces with the disk
controller through ea section of driver routines and with the operator
console or terninal through a section cf terminal 1/0 routines.

III. GETTING THE SYSTEM STARTED

Each FLEX system diskette contains a binary loader for loading the
operating system into RAM. There needs to be some way of getting the
loader off of the disk so it can do its work. This can be done by
either hand entering the bootstrap Icacer provided with the disk system,
or by using the boot provided in ROM if apcropriate to FLEX.

As a specific exarple, suppose the syste~ we are using has SWTPc's SeBUG
installed and we wish to run FLEX. The first step ig to power on all
equipment anc eke Sure the S-8UG rrocrt is present (>). Next insert
the system diskette into drive 0 (the Sect rust be performed with the
disk in drive ©) and close the coor cn the drive. Type "D" on the
termine] if uging e full size florpy syste- or "U" if a = minifloppy
system. The disk motors should stert, and after about 2 seconds, the
following should be displayed on the terc‘ral:

FLEY ¥.%
DATE (MM,DD,YY)?

+44

The mame FLEX identifies the operetinc system and the X.X will be the
version number of the operating syste. 7 this time the current date
should be entered, such as 7,3,79. The FLEX prompt is the three plus
signs (+++), and will always be presert wren the system is ready to
accept an operator command. The ‘+++' should become a familiar sight
and signifies thet FLEX is ready to werk “cr you!

-1.2-

---

IV. DISK FILES AND THEIR NAMES

All disk files are stored in the form of ‘sectors’ on the disk and in
this version, each sector contains 25€ ‘bytes’ of information. Fach
byte can contain one character of text or one byte of binary machine
information. A maximum of 340 user-accessible sectors will fit on a
single-sided mini disk or 1140 sectors on a single-sided full size
floppy. Double-sided disks would hold exactly twice that number of
sectors. Double-density systems will held more still. The user,
however, need not keep count, fur the system does this automatically. A
file will always be at least one sector long and can have as many as the
maximum number of sectors on the disk. The user should not be concerned
with the actual placement of the files on the disk since this is done by
the operating system. File deletion jis also supported and all
previously used sectors become immediately available again after a file
has been deleted.

All files on the disk have a name. Names such as the following are
typical:

PAYFOLL

INVER TORY
TESTI234
APRiLe7E
WKLY-PAY

Anytime a2 file is created, referencec, or deleted, its name must be
used. Rames can be most anything but must becin with a Tetter (not
numbers or symbols) and be followed by at rost ? additional characters,
called ‘rame characters'. These ‘nave cheracters' can be any
combinaticn of the letters 'A' through 'Z' or ‘a’ through ‘z', any digit
‘O' threuch 'S', or one of the two specie! cherecters, the hyphen (-) or
the underscore '_', (a left arrow on some terminals).

File nares rust also contain an ‘extension’. The file extension further
defines the file and usually indicates the type of information contained
therein. Examples of extensions are: TXT “or text type files, BIN for
machine readable binary encoded files, C“D for utility command files,
and BAS for BASIC source procrams. Extensions may contain up to 3 ‘name
characters’ with the first character be‘rc a letter. Most of the FLEX
commands assune a default extension on the file name and the user need
not be concerned with the actual extension on the file. The user may at
anytime assign new extensions, overiding the default value, and treet
the extension as just part of the file rare. Some examples of file
names with their extensions follow:

APPEND. CMD
LEDGER. BAS
TEST.BIN

Note that the extension is always separatec from the name by a period

',', The period is the name ‘field separator’. It tells FLEX to treat
the following characters as a new field in the name specification.

-1.3-

---

A file nave cen be further refined. The name and extension uniquely
define 2 file on a particular drive, but the same mame may exist on
several drives simultaneously. To designate a particular drive a ‘drive
number’ is added to the file specification. It consists of a single
digit (0-2) and is separated from the name by the field separator ‘.'.
The drive number may appear either before the name or after it (after
the extension if it is given). If the drive is not specified, the
systen will default to either the ‘systen' drive or the ‘working’ drive.
These terms will be described a little leter.

Some exarpies of file specifications with drive numbers follow:

O.BASIC
MONDAY .2
1.TEST.BIM
LIST.CMD.1

In summary, a file specification may contain up to three fields
separated by the field separator. These fields are; ‘drive’, ‘'name',
and ‘extersion'. The rules for the file specification can be stated
quite conc‘sely using the following nctetion:

i<drive>. }<nare>l. <extension> 3
or
<name>’. <extension> ][.<drive>]

The '<>' enclose a field and do not actually appear in the
specificeticn, and the ‘[J' surround optional items of the
specificetion. The following are a} syntactically correct:

OMANI EXT

NA? T.

hat

C.NA

KAM
NAME
Note that the only required field is the actual ‘name’ itself and the
other values will usually default to predetermined values. Studying the
above exetrles will clarify the notation used. The same notation will
occur recularly throughout the manual.

-1.4-

---

V. ENTERING COMMANDS

When FLEX is displaying ‘++#', the system is ready to accept a command
line. A command Jine is usually a name followed by certain parameters
depending on the command being executed. There is no 'RUN' command in
FLEX. The first file mame on a command line is always loaded into memory
and execution is attempted. If no extension is given with the file
name, ‘CMD’ is the default. If an extension is specified, the one
entered is the one used. Some examples of commands and how they would
look on the terminal follow:

+44TTYSET
++4+TTYSET.CMD
+++ LOOKUP.BIN

The first two lines are identical to FLEX since the first would default
to an extension of CMO. The third line would Joed the binary file
"LOOKUP.BIN' into memory and, assuming the file contained a transfer
address, the program would be executed. Atransfer address tells the
procrar loader where to start the procram executing after it has been
loaded. If you try te lead and execute a program in the above manner and
no transfer eddress iS present, the messege, ‘NC LI'K' will be output to
the terminal, where 'link' refers to the transfer address. Some other
error messages which can occur are 'WHAT?' if an illegal file
specification has been tynec as the first part of a command line, and
"NOT THERE’ if the file typed dces not exist on the disk.

During the tycing of a comrenc line, the system simply accepts all
characters until a ‘RETUZN' key is tyred. Any time before typing the
RETURN key, the user mey use one of two special characters to correct
any mistyped characters. One of these characters is the ‘back space’
and allows deletion of the previously tysed character. Typing two back
spaces will delete the crevious twe characters. The back space is
initially defined to be 2a ‘control H' but may be redefined by the user
using the TTYSET utility command. The second special character is the
line ‘delete’ character. Tyring this character will effectively delete
all of the characters which have been typed on the current line. A new
promst will be output to the terminal, but instead of the usual "44!
prompt, to show the action of the delete character, the prompt will be
'222'. Any time the delete character is used, the new prompt will be
'222', and signifies that the last line typed did not get entered into
the computer. The delete character is initially a ‘contro? X' but may
also be redefined using TTYSET.

=1.5-

---

As mentioned earlier, the first nare on a command line is always
interpreted as 2 command. Following the conrand is an optional list of
Maries and parameters, depencing cn the particular command being entered.
The fields of e@ conrand line must be separated by either a space or a
comme. The general format of a command line is:

<conmand>[,<list of names and parameters>]

A conma is shown, but a Spece may be used. FLEX also allows several
conmands to be erterec on cre command line by use of the ‘end of line'
character. This character is initially a colon (':'), but may be user
defined with the TTYSET utility. By ending a command with the end of
line cheracter, it is possibie to fellow it immediately with another
command. FLEX will execute all commands on the line before returning
with the ‘+++’ promot. An error in any of the command entries will
cause the system te terminate operation of that command line and return
with the prompt. Sore examples of valid command lines follow:

+4+4047 1
+4tCRT DIASN Si
+44 LEST LISPAZY:ICA™ 1:CFT O

AS many ccocmencs mey be tyfec in cre command line as desired, but the
total mucber of cherecters ‘typed must not exceed 128. Any excess
characters will be ignored ty FLEA.
One lest systen feature ‘te be described is the idea of ‘system’ and
‘workine' drives. 4&5 stetec earlier, if a file specification does not
specificaetly desicnate a crive number, it will assume a default value.
This defeult valve will either be the current ‘system’ drive assignnent
or the current ‘weriing' drive essignnent. The system drive is the
default for 211 commend names, or in other words, all file names which
are typed first cn @ comrend line. Any other file name on the command
line will default tc the workinc drive. This version of FLEX also
Supports autometic drive seerching. When in the auto search mode if no
drive numbers are specified, the operating system will first search
drive O for the file. If the file is not found, drive 1 will be
searched anc sc on. Wher the svsten is first initialized the auto drive
searching mode will be selected. At this time, all drive defaults will
be to drive 0. It is sometimes convenient to assign drive 1 as the
working drive in which case all file references, except commands, will
automatically look on drive 1. It is then convenient to have a diskette
in drive Q with all the syster utility commands on it (the ‘system
drive’), and é disk with the files being worked on in drive 1 (the
‘working drive'}. If the system drive is 0 and the working drive is 1,
and the conmend Tine was:

+44L IST TEXTFILE

FLEX would go to drive 0 for the conmand LIST and to drive 1 for the
file TEXYTFILE. The actual assiannent of drives is performed by the ASN
utility. See its description for details.

-1.6-

---

VI. COMMAND DESCRIPTIONS

There are two types of commands in FLEX, memory resident (those which
actually are part of the operating system) and disk utility commands (those
commands which reside on the disk and are part of the UCS).

There are four memory resident commands included in FHL Color FLEX:
GET, MON, ROM, and P. Even though they are not considered pert of the
Disk Utility Command Set, for simplicities sake they will be discussed in the
UCS section of this manual.

-L7-

---

GENERAL SYSTEM INFORMATION
I DISK CAPACITY

Each sector of a FLEX disk contains 252 characters or bytes of user date (4 bytes
of 256 byte sector are used by the system) Thus a single-sided mini disk has 340
Sectors or 85,680 characters or bytes of user information. A single-sided full size
cisk has 1140 sectors or 287,280 bytes of user data. Double-sided disks would
contain exactly twice these amounts.

Il, WRITE PROTECT

Floppy disks can usually be physically write protected to prevent FLEX from
performing a write operation. Any attempt to write to such a disk will cause an
error message to be issued. It is good practice to write protect disks which have
important files on them.

A mini disk can be write protected by placing a piece of opaque tape over the
smell rectangular cutout on the edge of the disk. Full size floppys are just the
opposite. In order to write protect a full size disk, you must remove the tape from
the cutout. In other words, the notch must be exposed to write protect the disk.
Some full size disks do not have this cutout, and therefore cannot be write
protected.

Nl. THE 'RESET'’ BLTTON

The RESET button on the back panel of your computer should NEVER BE PRESSED
DURING A DISK OPERATION. There should never be a neec to reset the machine
while in FLEX. If the mechine is reset and the system is writing data on the disk,
it is possible that the entire disk will become damaged. Again, never press 'reset'
while the drive is operating! Refer to the ‘escape’ character in TTYSET for ways
of stopping FLEX.

-1.8-

---

IV. NOTES ON THE 'P’ COMMAND

On e@ standard FLEX system, the 'P' command tries to load a printer driver file
named 'PRINT.SYS’ from the same disk which P itself was retrieved (after first
making sure that a driver has not already been loaded in). FHL Color FLEX
utilizes P in a different manner:

P is @ memory resident command which simply redirects I/O to the printer port of
the Color Computer. Instead of playing the part of the hotel doorman (the function
of the standard P) ealling a texi (PRINT.SYS) for the waiting patron (the file to be
output), P in this case takes the patron directly to a location where he knows the
*hotel taxi” is waiting. This particular hotel is not serviced by any other taxis, so
the doorman (P) knows there is only one way out - the hotel taxi.

As presently is and has been the case on the Color Computer, there is only one
output port - the RS 232 port. Similar te the hotel with the "built-in" taxi, FHL
Color FLEX has a built in (memory-resident) printer driver just sitting there at the
RS232 port waiting for P to send it some date to be printed. The reason it can be
built in (memory-resident) is because there is only need for one standard driver
ae all dats on the Color Computer is being sent out one standard port (the RS
232).

For more information on the standard FLEX PRINT.SYS file, see page 53 of the
‘Advanced Programmer's Guide.'

-1.9-

---

Vi. SYSTEM ERROR NUMBERS

Any time that FLEX detects an error during an operation, an appropriate
error message will be displayed on the terminal. FLEX internally
translates a derived error number into a plain language statement using
a lookeup table called ERROR.SYS. If you have forgotten to copy this
SYS file onto a disk that you are using, FLEX will report a
corresponding number as shown below:

DISK ERROR #xx

where ‘xx' is a decimal error number. The table below is a list of
these numbers and what error they represent.

ERROR # MEANING
1 ILLEGAL FMA FUNCTION CODE ENCOUNTERED
2 THE REQUESTED FILE IS IN USE
3 THE FILE SPECIFIED ALREADY EXISTS
4 THE SPECIFIED FILE COULD NOT BE FOUND
5 SYSTEM DIRECTORY ERROR-REBOOT SYSTEM
€ THE SySTEM MTRECTORY TS FULL
7 ALL AVAILABLE DISK SPACE HAS BEEN USED
8 READ PAST END OF FILE
9 DISK FILE READ ERROR
10 DISK FILE WRITE ERROR
ll THE FILE OR DISK IS WRITE PROTECTED
12 THE FILE 18 PROTECTED-FILE NOT DELETED
13 ILLEGAL FILE CONTROL BLOCK SPECIFIED
14 ILLEGAL DISK ADDRESS ENCOUNTERED
5 AN ILLEGAL DRIVE NUMBER WAS SPECIFIED
16 DRIVE NOT READY
17 THE FILE IS PROTECTED-ACCESS DENIED
18 SYSTEM FILE STATUS ERROR
19 FMS DATA INDEX RANGE ERROR
20 FMS INACTIVE*REBOOT SYSTEM
21 ILLEGAL FILE SPECIFICATION
22 SYSTEM FILE CLOSE ERROR
23 SECTOR MAP OVERFLOW-DISK TOO SEGMENTED
24 NONeEXISTENT RECORD NUMBER SPECIFIED
25 RECORD NUMBER MATCH ERROR-FILE DAMAGED
26 COMMAND SYNTAX ERROR-RE-TYPE COMMAND
2? THAT COMMAND IS NOT ALLOWED WHILE PRINTING
28 WRONG HARDWARE CONFIGURATION

For more details concerning the meanings of these error messages,
consult the "Advanced Programmer's Guide’ (pgs. 38 ~ 40).

-1,10-

---

FLEY User's Manual

VII. FLEX OPERATING SYSTEM INPUT/OUTPUT SUBROUTINES

In order for the FLEX 1/0 functions to operate properly, all user
program character input/output subroutines should be vectored thru the
FLEX operating system rather than the computer's monitor. Below {s a
list of FLEX*s 1/0 subroutines and a brief description of each. All
given addresses are in hexadecimal.

GETCHR at $CD15

This subroutine is functionally equivalent to S-BUG's character input
routine. This routine will Took for one character from the control
terminal (1/0 port #1) and store it in the A accumulator. Once called,
the input routine will loop within itself until a character has been
input. Anytime input is desired, the call JSR GETCHR or JSR $CD15 should

be used.

GETCHR automatically sets the 8th bit to 0 and does not check for
parity. A call to this subroutine affects the processor's registers as

follows: ’

ACC. A loaded with the character input from the terminal
B,X,Y,U not affected

PUTCHR at $CD18
This subroutine fs used to output one character from the computer to the

control port (1/0 port #1). It is functionally equivalant to the output
character routine in S-BUG.

To use PUTCHR, the character to be output should be placed in the A
accumulator in its ASCII form. For example, to output the letter ‘A‘ on
the control terminal, the following program should be used:

LDA #$41
JSR $CD18

The processor's registers are affected as follows:

ACC. A ehanged internally
B,X,Y,U not affected

PSTRNG at $CDIE ;
PSTRNG is a subroutine used to output a string of text on the control

terminal. When address SCDIE is called, a carriage return and line feed
will automatically be generated and data output will begin at the
location pointed to by the index register. Output will continue until a
hex 04 is seen. The same rules for using the ESCAPE and RETURN keys for

stopping output apply as described earlier.
The accumulator and register status after using PSTRNG are as follows:

ACC. A Changed during the operation

-i.11-

---

FLEX User's Manual

ACC. B Unchanged

x Contains the memory location of the last character read fron the

string (usually the 04 unless stopped by the ESC key)
Y,U Unchanged

NOTE: The ability of using backspace and line delete characters is a
function of your user program and not of the FLEX 1/0 routines described
above.

For additional information consult the ‘Advanced Programmer's Manual’.

STAT at $CD4E

This routine is used to determine the “status” of the input device.
That is, to see if a character has been typed on the input terminal
keyboard. Its function is to check for characters such as the ESCAPE key
in FLTY which allows breextne of the output. This routine returns an
EQual condition if no character wes hit and a Not-Equal condition if a
character was hit. No registers, except for the condition codes, may be
altered.

-1,12-

---

VOl. BOOTING THE FLEX DISK OPERATING SYSTEM

In order to read FLEX from the system disk upon powering up your system, you
must have a short program in RAN or ROM memory. This program is called a
‘bootstrap’ loader.

With FHL Color FLEX, typing in RUN"FLEX" will call the BASIC bootstrap loader
ealled "FLEX".

Non-Color Computer Users should use the boot supplied with the hardware if
compatible with FLEX. A sample boot (for the SWTPc mini system) is given here
for reference.

If the system does not boot properly, re-position the system disk in the drive and
re-execute the bootstrap loader.

0100 B& = =ECIE START = LDE COvREG TURN MOTOR ON

ern? ce a0 tne 88

Olts BS eis S7A DR ARES

O10g ef o00e Loy = #9090

0105 32 OVR MUL DELAY FOR SPEED uP
o1cc 3C oF LEAX = -3,%

Q10E 2€ FB BRE OV

clic cé OF LOB BSCE RESTORE
cligF?  ecie STE CONREG

CLIE ED 2B 2S2 0 RETURN

O117 Fé—ECIE LOOP] LEB CCVREG

ClIA cS 01 8173 #l

Olle 26 FQ BNE LP OPA

O11lE &€ = OL Lee et

0120 B7  ECIA STA SECREG

0123 £2 «1D BSR. RETURN

0125 CE 8 LDeB = #SEC READ WITH LOAD
0127 F7.-ECIS STB CLYREG

O12@A ED «OE BS2.- RETURN

012c 8 ©ceoe LDyY - #SC000

Ol2F C5 02 LOOP2 BITS #2 DRO?
0131 27. 05 BEC —- LCOP3

0133 BE EOIE LDA © DATREG

0136 A780 STA oO, ¥+

0138 FE E018 LOOP3 LDR —-COMREG

0138 C5 (Ol BITB ll BUSY?
013D 2€ FO Bkz  LOQP2

C13F 7E  cQ00 ump $000

0142 gp 00 RETURN BSR RTN

0144 39 RTN RTS

-1.13-

---

TX. REQUIREMENTS FOR THE 'PRINT.SYS' PRINTER DRIVER

(This does not apply to FHL Color FLEX. See pg. 1.9)

Standard TSC FLEX, as supplied, includes a printer driver that will work with most
parallel] type printers, such as the SWTPC PR-40. If desired, the printer driver may
be changed to accomodate other types of printers. Included is the source listing
for the supplied driver. Additional information on the requirements for the
PRINT.SYS driver can be found in the ‘Advanced Programmer's Guice' on page 53.

1) The driver must be in a file called PRINT.SYS

2) Three separate routines must be supplied, a printer initialization
routine (PINIT at $CCCO), a check ready routine (PCHK at $CCD8),
and an output character routine (POUT at $CCE4).

3) Wnen the POUT routine is called by FLEX, the character to be output
will be in the A accumulator. The output routine must not destroy
the B, xX, Y, or U registers. PINIT may destroy any registers.
PCHK may NOT alter any registers.

S\ The reutines “UST start at the edzresses specified, but may be
continued anywhere in mesory if there is not room where specified.
If placed elsewhere in menory, be certain they do not conflict
with any utilities or programs which will use then.

5) AY three routines must end with a return fror subroutine
instruction (RTS}.

*

® PRINT.SYS PIA DRIVERS FOR GENERAL CASE PRINTER

*

FOIC PIA EGU SEGIC PIA ADDRESS FCR PORT #7

*

* PRINTER INITIALIZATION (MUST BE AT SCCCO}

*
ccco ORG SCCCO MUST RESIDE AT SCCCO
cccO 66 =A PIN! LDA #53A SELECT DATA DIRECTION REG.
ccc2 B7 = EID STA PIA+] BY WRITING O IN DDR CONTROL
ccc5 €6 OFF LDA #SFF SELECT ALL OUTPUT LINES
ccc? B? EOIC STA PIA PUT IN DATA DIRECTION REG.
CCCA 86 3E LDA #S83E SET UP FOR TRANSITION CHECKS
CCCC B? £010 STA PIA+] AND ENABLE OUTPUT REGISTER
CCCF 39 RTS

* PRINTER READY ROUTINE
ccD0 7D~—SCE OIC PREADY TST PIA RESET PIA READY INDICATION
CCb3 73 © «=CCE3 COM PFLAG SET THE PRINTER READY FLAG
CCD6 39 RTS

~1.14-

---

FLEY User's Manuel

CODE
ccbe
CCDB
CCDD
CCEO
CCE2

CCE3

CCE4
CCE4
CCE6
ccee
CCEB
CCEE

reen
eee

CCF2
CCF4
CCF7

75
28
7D
28
39

FF

85
2A
7F
B?

a8)
g€
B?
39

CCE3

EOD
EE

F2

CCE3
EOIC
3€
cc
3E
EQ1D

we

us eet erties aan ction

* CHECK FOR PRINTER READY (MUST BE AT $CCDE)
*

ORG
PCHK TST
BMI
TST
BM]
PCHKX RTS

$ccD8
PFLAG
PCHKX
PIA+]
PREADY

* PRINTER READY FLAG

PFLAG FCB

&

$FF

PRINT TEST AT $CCO8

TEST FOR PRINTER READY

IF NEGATIVE, PRINTER READY
CHECK FOR TRANSITION

IF MINUS, PRINTER NOW READY

PRINTER READY FLAG

* PRINTER OUTPUT CHARACTER ROUTINE (MUST BE AT $CCE4)

*

ORG
POUT BSR
BPL
CLR
STA
LDA
BSR
LDA
POUTB = STA
RTS

END

SCCE4
PCHK
POUT
PFLAG
PIA
#$36
POUTB
#$3E
PIA+]

-L15-

MUST RESIDE AT $CCE4

TEST FOR PRINTER READY

LOOP UNTIL PRINTER READY
SET PRINTER FLAG NOT READY
SET DATA IN OUTPUT REGISTER
SET DATA READY, HIGH TO LOW
STUFF BYTE INTO THE FIA
THEN SEARCH FOR TRANSITION
OF LOW LEVEL TO HIGH LEVEL
