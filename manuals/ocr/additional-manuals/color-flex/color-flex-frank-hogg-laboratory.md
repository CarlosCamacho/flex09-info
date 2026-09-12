# Color FLEX (Frank Hogg Laboratory)

> Source: `manuals/color-flex/Color FLEX (Frank Hogg Laboratory).pdf`  
> Method: OCR at 200 DPI

OCR and media-decoding errors may remain.

For the TRS-80 Color Computer

. HOGG
ss LABORATORY
EE —————————E—E

BYMACUSE NY 13203 "(218474 0858

Technical Systems Consultants, Inc.
P.O. Box 2570

---

FLEX

For the TRS-80 Color Computer

FRANK
HOGG

Technical Systems Consultants, Inc.
P.O. Box 2570
West Lafayette, Indiana 47906

---

PALL
Color

[PILE X

---

READ THIS FIRST

5.0:4 Color FLEX has several new features, First put the supplied disk in
drive 0 and type RUN"FLEX . After about 30 seconds the screen will switch to
Hi-Resolution and the FHL Color FLEX logo witha date prompt will be displayed.
Answer the date prompt with today's date. In a few moments the screen will clear
and a status line will appear on the bottom of the screen with the FHL logo and
the date in it, then an example of the character set will be displayed on the
screen. Finally the three plus sign prompt will appear,

Everything that happens from the time you entered the date until the three
plus sign prompt is because of the "STARTUP" file being executed as per the
documentation. If you list the startup file, i.e. LIST STARTUP, you will see
PUTSTAT:LIST ALPHA. PUTSTAT is a trivial program that sets a status line at
the bottom of the screen and then puts the logo and the date in it. LIST ALPHA
is just that, LIST being a program that lists a file, and ALPHA being a text file
“Nat contains just exactly what you see displayed.

New features of version 5.0:4 include the DISPLAY command and an
extensive revision of the EXT command bringing with it true hardware handshaking!
Along with this, the INT command has been modified. Smooth scrolling and variable
scroll rates along with a new SETUP command to change your sereen from a white
background to green (eliminating the need to change it by manually adjusting the
VDG mode as in previous versions) are also included and explained in the "Features
of FHL Color FLEX" section of this manual. Control-W is now used to generate
Status lines instead of the Control-C used previously.

These are just some of the features of this new version, Read in the manual
about how to create your own STARTUP file and the use of commands in it.

A NOTE ABOUT STATUS LINES

When you use status lines you are changing the configuration of the terminal.
This means that if you were to run a program like our 'ED' whieh uses cursor
addressing and depends on the configuration of the terminal for proper running, then
‘ou have to reconfigure those programs, Or, before running any of these programs,
just type a CTRL D which will remove any status lines. The same can be said for
protected lines on the sereen. It's no big problem, as a matter of fact it can be
rather entertaining to see what happens when you do this. At any rate, have fun
with the new features of FLEX.

This version of FLEX for the Color Computer is the most powerful available,
with more features than any other currently available. Just wait 'till you see what
we're working on next.

FHL

---

TABLE OF CONTENTS
3 TABLE OF CONTENTS ‘

CHAPTER 2 cont.

CHAPTER © - PHL COLOR FLEX PAGE JUMP J.1.1
* LINK L.l.i
1. Introduction to FHL Color FLEX 0.1 LIS? Le2.2
2. Features of FHL Color FLEX 0.2 * MON M11
3. PHL Color FLEX Tutorial * = MOVEROM M.2.1
Appendix A References N N.1L
Appendix B Hardware Vendors * NEWDISK N.2.1
Appendix C Modifying the 32K Color Computer * NEWDISKA. N.2.1
Appendix D Software Vendors fa) O.1.1
Appendix E FHL FLEX Specifications * p Polal
Appendix F FHL PLEX System Memory Map PROT P.2.1
*  PUTBOOT.. LDR P.3.1
CHAPTER 1 - THE FLEX DISK OPERATING SYSTEM RENAME R.l.l
* ROM R.2.1
I. Introduction 1.1 SAVE S.1.1
II, System Requirements 1.2 * Spc 8.2.1
III. Getting the System Started 1.2 * SETUP 8.3.1
Iv. Disk Files and Their Names 1.3 Disk 8.3.3
Vv. Entering Commands 1.5 Memory 8.3.4
VI. Command Descriptions 1.7 Printer 8.3.5
GENERAL SYSTEM INFORMATION Terminal 8.3.6
I. Disk Capacity 1.8 STARTUP 8.4.1
II. Write Protect 1.8 * TED T.1.2
III. The 'RESET' Button 1.8 TTYSET T.2.1
Iv. Notes on the 'P' Command 1.9 VERIFY Veli
VI. System Error Nonbers 1.10 VERSION v.2.1
VII. FLEX I/O Subroutines 1 xOUT X.1.1
VIII. Booting the FLEX DOS 1.13 * XSCREENS (Hi-Res Screens) X.2.1
IX.  PRINT.SYS for Standard FLEX 1.4 Y Y.1.1
It. COMMAND SUMMARY 3.1
CBBPTER 2 ~ DISK UTILITIES
I. Utility Command Set. 2.1 CHAPTER 3 - ADVANCED PROGRAMHER'S GUIDE
APPEND Ai]
ASN A.2.1 Table of Contents iii
* BASIC C.3.1
BUILD B.1.1
CAT C.1.1 INDEX Index Page 1
* CBASIC C.2.1
COPY C.3.1
DATE D.1.1
* DBASIC D.2.1 NOTE: IF THERE 1S A 'READ-ME.TXT' FILE ON THE SUPPLIED DISK THEN
DELETE D.3.1 LIST IT OUT USING:
* DISPLAY D.4.1
EXEC E.1l.1 LIST 0.READ-ME
* EXT £.2,1
GET G.1.1
* HELP H.1.1 (*) These commands are provided by Frank Hogg Laboratory, Inc. -
I I.1.1 not TSC. Contact FHL if you have any problems with them.
* INT T.2.1
* IM 1.3.1

{*) These commands are provided by Frank Hogg Laboratory, Inc.,
not. TSC. Contact FHL if you have any problems with them.

Page -vi-
Page -v-

---

7

Revision

HANUAL REVISION HISTORY

Date

5/27/82

7/14/82
11/24/82

3/18/83
6/13/83

9/9/83

Change

Original Release, V5.0
Correct typos, add INCHNE
to Appendix E, Prog. Guide
page 53 addition.

Rewrite and update to
Version 5.0:2

Addition of ISM and TED.
Rewrite and update to
Version 5.0:4

Include omissions to
previous rewrite. Correct
typos.

---

IE

[LEEEEEEE EE

Introduction to FHL Color FLEX

i, Introduction

FHL Color FLEX, licensed from Technical Systems Consultants, Ine. by
Frank Hogg Laboratory, Inc., is an enhanced version of their FLEX Disk Operating
System, for the Radio Shack TRS-80 Color Computer. FHL Color FLEX allows
the Color Computer to be used with a wide array of hardware and software
products, far beyond the capabilities of the basic system as supplied by Radio
Shack. For a list of some of the software products available for FLEX, see
Appendix D.

The rest of Section 1 details the minimum hardware configuration required
to run FHL Color FLEX. Section 2 of this document describes some of the
features of FHL Color FLEX. Features of FLEX as supplied by TSC are not
described here; some articles are referenced in Appendix A. Section 3 provides a
tutorial on the use of some of the commands provided with FHL Color FLEX.

Minimum Hardwere Configuration.

To run FHL Color FLEX you must have a TRS80 Color Computer with Disk
Extended Color Basic and at least one disk drive. This implies that the Extended
Color Basie ROM is installed in the Color Computer. In addition, 64K dynamic
RAMs must be installed in the Color Computer, which must be configured as a 32K
Color Computer, Finally, @ small hardware modification (Revision F boards do not
require modification), is required inside the case of the Color Computer to allow
the ROMs to be disabled under software control, allowing the full 64K of RAM
(minus the top 256 bytes) to be accessed.

If you do not have a Color Computer, you may purchase one already
modified and ready to run FHL Color FLEX. Some vendors are listed in Appendix
B. Hf you have a Color Computer that does not have 32K, Radio shack will
upgrade it for you. The RAM chips used by Radio Shack will probably be full
64K RAMs, but they must be tested after performing the modification, and one or
two may need to be replaced. Alternatively, if your computer is a recent
revision (D,E or F), a 64K upgrade kit is available.

If you have a 32K Color Computer, Appendix C tells you how to perform
the modification to use the full 64K.

Running FHL Color FLEX on the modified 64K Color Computer with the
Radio Shack disk system and Disk Extended Color Basic is accomplished by inserting
the system disk in drive zero and entering:
RON "FLEX"

The disk motors should start and after about 10 seconds, the following
should appear on the terminal.

FHL COLOR FLEX Vx.x:x
DATE (MM,DD,YY)?

+44

The name FLEX identifies the operating system and the x.x:x will be the
version number of the operating system. At this time the current date should be

Page - 0.1 -

---

Features of FHL Color FLEX

entered, such as 5,26,82 or 5 26 82 or 5/26/82. The FLEX prompt is the three
plus signs (+++), and will always be present when the system is ready to accept
an operator command. The '+++! should become a familiar sight and signify that
FLEX is ready to work for you!

2. Features of FHL Color FLEX

Disk Drive Support

The disk drive supplied with the Color Computer disk system by Radio
Shack is e 35-track, single-sided, double-density drive with a stepping rate of 30
milliseconds. It is possible to purchase an 80-track, double-sided, double-density
drive with a stepping rate of 6ms. This disk will store more than four times as
much information as the Radio Shack disk, and will perform track seeking operations
five times faster. THL Color FLEX allows these high-performance drives to be
used with the Color Computer.

A section of memory in the FLEX operating system is reserved for a Drive
Configuration Table. This table contains information about each drive in the
system, up to a total of four drives. (Only three drives may be used if double~
sided drives are included.) The information about each drive in the table includes
whether or not the drive exists, whether or not it is double-sided or double-density,
how many tracks it has, and what its stepping rate is. This means that not only
may you use high-performance drives in the system, but also you may mix high-
performance drives with stunderd Racio Shack drives in any combination, Another
feature of the Drive Configuration Table allows the drive number used by FLEX
(the jogicel drive number) to be different from the drive number according to the
wiring (the physical drive number). Care must be exercised using this feature,
because the number switehing is not in effect during boot-up, and because different
logical drives may be assigned to the same physical drive and vice-versa, possibly
confusing the PLEX file management system.

FIL Color FLEX contsins another feature rarely found in FLEX systems
for five-ineh disks, A five-inch drive has no provision for telling the computer
that there is no disk in the drive, or that the door is open, This means that on
most five-ineh FLEX systems the software will hang up if you accidentally access a
drive which docs not exist, or which exists but does not contain a disk, In FRL
Color FLEX, an aecess to a nonexistent drive will immediately return an error
(because the Drive Configuration Table indicates that the drive doesn't exist.) A
time limit is imposed on accesses to existing drives so that if the drive is not
ready, an error will occur.

Another feature of the disk package in FHL Color FLEX is that the time
delay before motor shutoff occurs is adjustable.

Keyboard Features.

Every ASCH code may be generated from the Color Computer keyboard
under FIL Color FLEX. To allow for this, some of the keys must serve dual
functions. Keycodes commonly used in FLEX have been assigned so that they
may be easily genereted.

Page - 0.2 -

[EQEQGGRERERRR EEA

Features of FHL Color FLEX

If the up-arrow is struck alone, the cursor is moved up one line. However, if the
shift key is held down, the up-arrow key serves as the CTRL key. In the unshifted mode,
the break key generates an escape code. In control mode however, the break key is
another case-shifting key, called super-shift. The super-shift feature and the CTRL
feature allow all codes to be generated. Appendix E contains a list of the codes
generated by each of the keys, in each mode.

Some special function keys are worthy of note.

A shift-zero toggles the alpha-lock
function:

If alpha-lock is on, only upper-case letters are generated,

The number of times that the keyboard is scanned for debouncing purposes is
adjustable, using the SETUP command. This feature allows the debouncing operation to be
optimized for faster typists or, on the other hand, for bouncier keyboards,

Display Features

The display package included in FHL Color FLEX contains many features and
adjustable perameters to enhance the capabilities of the Color Computer display, The
user may select either a blinking block or steady underline cursor. This is done by typing
SETUP TCC. The eursor may also be disabled. Sereen color may be changed from a
white background to green by using SETUP TG. Switch back to white by SETUP TW.
See SETUP TERMINAL for more info on these and other options.

Other features of the display package include direct cursor addressing, clear end-of-
line and end-of-screen, home, cancel] line, and variable scroll rates, See Appendix E page
3.

The control-G bell is adjustable in pitch and duration,
eontrol codes for various screen operations, see Appendix E.

For information on the

A Note about Motor Shutoff

There is no means to automatically shut off the drive motors in the Color Computer
while running FLEX. Automatic motor shutoff is provided only while a program is waiting
for keyboard input. If no key is pressed for a certain time, the motors are shut off.
This time is adjustable using the SETUP command. The shutoff occurs after the cursor
has blinked a certain number of times, thus the delay is also changed by changing the
blink frequency. Note that virtual cursor blinks occur even if a non-blinking cursor is
selected.

Printer Support

The P command (used to redirect output from a program to the printer) has been
included as a memory-resident command, It redirects output to the Color Computer RS-
232 port. Several options, adjustable using the SETUP command, allows almost any ASCH
printer to be used. The baud rate is adjustable from 110 to 9600. The number of stop
bits may be changed from 1 to 255. The printer may be either an auto-linefeed printer
or a normal CR-LF printer.

Page -0.3-

---

Features of FHI Color FLEX

Other FLEX Features

You may like to make some of these options permanent installations in your
FLEX system. Of course, you could put the required SETUP command in your
STARTUP file, but this uses up some time during bootup, A better way is to
include the options right in the FLEX.SYS file. To do this you must create a
temporary file called OPTIONS.BIN perhaps, to contain the options, to do this,
type "SETUP FOPTIONS" followed by your options. Instead of affecting the options
in memory, SETUP places them in the file. Now append FLEX.SYS to OPTIONS,
ereating a new file which will become your new FLEX.SYS file once renamed, On
a single-drive system:

"APPEND FLEX.SYS OPTIONS.RBIN NEWFLEX.SYS"
"DELETE FLEX,SYS"

"RENAME NEWFLEX.SYS FLEX.SYS"

“LINK FLEX.SYS"

On a two-drive system:

"SETUP F1,OPTIONS ..."
“APPEND 0.FLEX.SYS 1.OPTIONS.BIN 1.FLEX.SYS"
“LINK I.PLEX.SYS"

Hooking up a Printer

You can attech a printer to your Color Computer and run it under FLEX very
easily. The hookup is the same as it is for using the printer under COLOR BASIC.
Serial data will come out the RS-232 Data Out pin, as long as the Data In pin is
held high.

Use the SETUP command to tell FLEX what kind of printer you have, Set
the baud rate by typing "SETUP PB1200" for a 1200 beud printer as an example.
If the printer does not perform automatic linefeeds for each carriage return, type
"SETUP PN", You may want to add more stop-bits. Typing "SETUP PS3" will give
you 3. These three commands may be combined by typing "SETUP PNS3,B1200",

On some printers it may be necessary to adjust the baud rate count by +/- six
percent to achieve reliable transmission, FLEX generates the best approximation of
the baud rate you type that it can,

You may use the printer in two different ways. If you type a CTRL-P,
everything that gocs to the sereen will also go to the printer until another CTRL-P
is sent, Also, you may use the P command, This will redirect the output from a
command:to the printer. Try "P CAT".

FLEX Tutorial

What follows is a step by step tutorial which should help those new to the
FLEX operating system with making backup copies of their FLEX disk and in
understanding FLEX in general. Once through the Tutorial, read on to the more
detailed information about FLEX features and commands, and see what applications
you can come up with. Good luck and have fun!

Page ~ 0.4 -

---

lal {L

Coior
FLEX

Tutorial

---

First you "Got Started with Color BASIC"
Then you "Went Ahead With Extended Color BASIC"
Now, "Keep On Going With FLEX!"

What exactly is "FLEX" and what will it let me do?

FLEX is a Disk Operating System (DOS) which allows your software to
interact with your hardware. You may have a computer, and you may have a
program written on a disk, but without a disk operating system you can put
your disk in the drive and wait forever—the computer won't know the
difference!! FLEX is like a bridge between the two which lets your program
be read from its disk and be loaded into the computer's memory, NOW you
can use it.

Now that I have my FLEX disk, what should I do with it?

How about trying to use it? Put it in the drive with the little white
"write protect" sticker on top. Close the drive door and type:

RUN*FLEX (ENTER)

(When you see this symbol: (ENTER) That means you are to hit the enter
key on your computer. Also, for simplicities sake, all information which you
are to actually type in will appear in BOLDFACE type.)

Your drive motor should start to hum, in about six seconds the screen will
appear like this:

FHL COLOR FLEX V5.0:2

Date <MM/DD/YY) __

Tutorial Page -1-

---

Y PRINT .SYS
STARTUP TXT
ALPHA TXT.
PUTSTAT «CHD
MON + LOW
MON -CMD
xS124W CHD
XS1Z4WB .CHD
Xe424BW .CRD
X6424NB CHD.
X64S2BW .CMD
X3Z16BW .CHD
xouT = CMD

eLIsT «CHD

cory «CHD
spc +CND

SETUP -CMD
MOVEROM .CMO
CRASIG §-CHD
BASIC
ext
INT
HELP

This is asking you for the date. Type in the numbers of the date in the
same form. (MM/DD/YY)-—don't include the parentheses! For example:

2/15/83 (ENTER)
Not too tough right? Now FLEX will come back with:

This an example of FML Color FLEX’ s
character set.

Us bee UNUUNGNORGONNU

ABCDEFGH 1 JKLMNOPGRS TUVWXYZ

abcdefghi jb lmnopar stuvwxyz

ASETAGO DARL ARE CY ~teX*

va eRcwracrs
et -cnD

© NEWDISK .CHD
NEWDISKA, CHD
Vv cat «CMD
v ASN = CMD
PUTBOOT .LDR
¥ DELETE .CHD
v RENAME CHD
* TTYSET .CMD
SAVE «CMD
APPEND .CHD
BUILD .CHD
YexeC CHD
gume CHD
DATE CHD
o CMD
VERSION .CHD
PROT .CHD
VERIFY .CHD

t =CnD
y LINK | .cHD
SAVE LOW

Nice huh.

PHD Color: PLEX 5.012". JANUARY 25,1989,

+++ means it's ready and waiting for you to tell it what to do. Well, let's
find out what is on the disk. Type in:

Ne EN NE RUN NE NOU

CAT O CNTER)
(this is the number zero, not the letter 0).
You have just "commanded" FLEX to give you a catalog of all the files that

reside on the disk in drive #0 (which is the FLEX disk of course!), So now,
what you should see on your screen is th

HELPCOCD. DIR
READ-ME TXT
MEMPATCH. TXT
RerfaTCH. BIN
DIAPATCI.TXT
DIAPATOO. TXT
DIAPATOO. BIN
DIAPATC. BIN

This an example of FHL Calor FLEX’ s
character set.

ABCDEF GH JKLMNOP ORS TUVWXYZ
SECTORS LEFTY = 321

abcde fghi ak Lanopgr stuvenye ae

TDSASS7BVO OMSL BAO)

Nice hun.

tecaT oF
CATALOG DF DATYE NUMBER Oo
DISK: CO-FLEX 8SOz

twee SIZE PRT

Very Good!! You have now used FLEX.

Trtorial Pace -2-

---

At this point, there are three items that should be clarified. First of
all, what is a "write protect" sticker you may be wondering. Well, the name
is relatively self explanatory. It "protects" the disk from being "written" on,
Therefore, if you want to change anything already written on the disk, or if
you want to save some information (write on the disk) you must "unprotect"
it--in other words, take the little sticker off! Secondly, anytime you see a 0
used in a command, or to designate a drive, it is the number zero, not the
letter O. Last, but not least, What's a drive #0 (or 1, 2, or 3 for that
matter)? Well, your drives are numbered, which makes a very convenient way
to tell FLEX which drive you want it to look in. If you only have one
drive, then that's your drive #0 and FLEX will automatically look there for
any information, With more than one drive, you have to tell FLEX which
drive contains the information you want it to use. What's nice about two
drives is that you can assign one to be your "system" drive, and the other to
be your "working" drive, Your system drive contains your system disk—FLEX.
Once you type RUN"FLEX" part of the information on your FLEX disk is
loaded right into your computer's memory. This is the information that gets
the whole system running, The rest of the information on your FLEX disk
ean be thought of as a "Dictionary" of sorts. When you tell FLEX to do
something (i.e. type a command in) it will go to the system drive and "look
up" on the disk what that particular command means it's supposed to do.
The "work" drive contains the files of information that FLEX is supposed to
"do something" to.

With a one drive system, your system and work drive are one in the
same--called drive #0. This can be a bit of a pain in the neck at times if
you want to command FLEX to do something to a file on a different disk.

Okey, now that you're just about a Pro, the next thing you'll probably
want to do is to make & back-up copy of your FLEX disk,

There are five steps to this procedure. Again, there are FIVE steps to this
procdure, so count them as you go. For simplicity's sake, we'll be assuming
this is being done on a single drive system.

Potorinl

1. Prepare a new disk to ha i i
1 ve information put on it. This is call.
sopmatting, and is done using the NEWDISK command (if you have a dowbie
si rive, you'll be using NEWDISKA instead). Here's an example of what
€ screen would look like during a typical formatting procedure:

++ONEWDISK

BRE vou SURE? Y

CH DISK IN DR: 2
DousLe sipep? NO? ¥
BOUBLE DENSITY? y

NUMBER OF TRACKS? 35
VOLUME NAME? WHATSIT
VOLUME NUMBER? 4

FORMATTING COMPLET!
€
TOTAL SECTORS = 57g

te

And here's how to Get your screen to look that way.

Put your FLEX disk in the dri
tive and "
words after typing RUN"FLEX" ete.) tye Poot

NEWDISK NED

ing up FLEX" (in other

FLEX will then come back with:

ARE YOU SURE?

Yes you are, so type: ¥

Then FLEX will ask you if you want to:

SCRATCH DISK IN DRIVE 0?

BEFO . .
RE typing Y, remove your FLEX system disk and put in a new disk

Now type: ¥
PLEX will then ask the following questions:

DOUBLE-SIDED? Do yor
2 UL i i
do then you figure it oa have a double sided drive? If not, type N. (If you

Tutorial Page -5-

---

DOUBLE DENSITY? You have a double density drive or you wouldn't have
gotten this far, so type Y.

NUMBER OF TRACKS? That depends on the number of tracks your drive
will support--on one side, Therefore, if you have a double sided drive, DO
NOT multiply the number of tracks your drive has by two. Also realize that
even though @ 35 track disk may be read in a 40 track drive, a 40 track
disk cannot be read in a 35 track (for example a Radio Shack) drive. So if
you are formatting a disk that may be used in assorted drives, keep this fact
in mind. One last note, neither 35 or 40 track disks may be read in an 80

track drive. @RTED

VOLUME NAME? Be original, why not call it DISK?

VOLUME NUMBER? This ones up to you.

Now hit return and wait, The drive motor will begin running. This is an
indication to you that formatting is taking place,

NOTE: Prior to the "FORMATTING COMPLETE" statement, you may see the
message:

TRIMMING TRACK SIZE DOUBLE D.

‘This is not ea problem--for more information on this, refer to the NEWDISK
section of the FLEX manual.

2. The next step is to use PUTBOOT.LDR on your newly formatted disk.
flere's what you'll see on your sereen efter performing this procedure:

404 PUTBOOT.LOR 0

PUT BOOT LOADER ON DRIVE 07 Y

Tutosigl Puye -6-

i |

Now here's how you do it:

Put your FLEX disk back in the drive and type:
PUTBOOT.LDR @ (the 0 tells FLEX which drive to go to).

PUT BOOT LOADER ON DRIVE 0? Now, you want to put the boot loader
on your new disk, so this is your chance to switch disks—then type: Y

3. When you previously did a catalog (CAT 0) of your system disk, FLEX
should have come back with a list of all the files it contained. In this step
you're going to copy one of those files; the FLEX.SYS file. Here's the
screen:

+++S0C 0. FLEX. SYS

INSERT SOURCE DISKETTE AND PRESS ‘ENTER’
INSERT DESTINATION DISK AND PRESS ‘ENTER’

And here's what you do:

Put your FLEX disk back in and type:

SDC O.FLEX,SYS (ENTER

Then when FLEX asks you to:

INSERT THE SOURCE DISKETTE AND PRESS ‘ENTER!

Just hit enter, since the disk which contains the file you want to copy on it
(your system disk) is already there. The destination disk is where you want
the file to be eopied to, so when FLEX asks you to:

INSERT DESTINATION DISK AND PRESS 'ENTER'

Put your new disk in and hit enter,

Tutoriel Page -7-

---

Here's an v_ample of what you should sce when you try to copy
four files from your original FLEX system disk using SDC:

4. Three steps down, two to go. Now you've got to LINK the boot loader
to the FLEX.SYS. Guess what command you're going to use? That's right,
none other than the LINK command, Here's what to look forward to from
your screen: 2

thi

++*5DC ERRORS.SYS, PRINT.SYS, STARTUP.TXT, ALPHA. TXT
ENTER SOURCE DISKETTE AND PRESS ‘ENTER’

ENTER DESTINATION DISKETTE AND PRESS ‘ENTER’

FILE COPIED

ENTER SOURCE DISKETTE AND PRESS "ENTER?

ENTER DESTINATION DISKETTE AND PRESS "ENTER

FILE COPIED

Ls

ENTER SQURCE DISKETTE AND PRESS "ENTER*
ENTER DESTINATION DISKETTE AND PRESS "ENTER™
FILE COPIED

ENTER SOURCE DISKETTE AND PRESS "EWTER™
ENTER DESTINATION DISKETTE AND PRESS "ENTER™
FILE COPIED

+44+ LINK O.FLEX. SYS

LINK "O,FLEX.SYS"? Y

eas

And here's the necessary steps:

And this is how it's done: While your original FLEX disk is in the drive, type:

SDC ERRORS.SYS, PRINT.SYS, STARTUP.TXT, ALPHA.TXT (ENT
Put your FLEX disk in and type:
Now FLEX will come back with:

; ENTER SOURCE DISKETTE AND PRESS 'ENTER'
When FLEX asks for confirmation, that's your cue to switeh disks. Then
type: ¥ Hit enter.

ENTER DESTINATION DISKETTE AND PRESS ‘ENTER’

5. The only thing left for you to do at this point is to copy the individual
files (remember all the ones that were listed out when you did a "CATalog"
of your disk?) from your original FLEX disk to your new disk. This is done
with the SDC command for a single drive system, and with the COPY
command if you have more than one drive. With SDC you must write out
cach individual command file name that you are copying, although you may
list more than one file in the same command line.

Switch disks and hit enter.
FILE COPIED

Then continue to switch the disks back and forth as FLEX repeats the
procedure for the next file, and the next file and finally the lase file.
look for that friendly little prompt;

+++

T i 3 Tutorial Page -U-
Tutorial Page -3- Tutorial Page -:

LEERERERGUQREEEE

‘first

above
Now

---

NOTE Do not attempt to copy PUTBOOT.LDR using the SDC command
because the results will not be of any use, Yes, that's right~you can't
make a copy from u copy.

ALSO. NOTE: Even though you may enter more than one file at a time in
your initial command line, FLEX will only copy the files one et a time, So
in the example above, this means that you would have to switch back and

forth between your FLEX system disk and your new disk a total of four
times.

Okay all you "Two Drive Users," here's what you'll see on your screen:

seecOPY Ot
OF LEX -SYO TO UNIVE at FILE Exists
DELETE ORIGINGL? HN

SEHRORS SVS TO DRIVE #1 COPTED
SPRINT SYS TO DRIVE #) COPIED
STARTUP TKT DRIVE #1 COPIED
ALPHA XT DRIME #1 CoPTED
-PUTSTAT .CAD DRIVE wi COPIED
ON Cow DRIVE RL COPIED
MON CMD PRIVE #2 COPIED
Pana ocr PRIVE 41 COPIED
pizawa . cep DRIVE #1 CHELED
-XeaPaRW .CAD DRIVE Wi COPIED
XOa24We CMD DRIVE #  COPLED
X64 SRW CHD DRIVE #1 COPIED
DEST IARH CHE DRIVE #1 COPIED
OUT CORD DRIVE RT CUPTED
“LIST Leet ORIVE wt COPTED
COPY crap DRIVE wt COPLED
- SpE Len DRIVE #1 CHEIED

= CMO, copies
Lost cop tin
CHD corien
CHD COPIED
eae copieo
CMD cor ieD
cep comreu
ono pa toy cop te
cr Del coe rep
ERD DRI, comes
= CHD par COPTCD
emo bret ve coe TED
PuTBoor Jone on Lu corre g
DELETE lomo pare cop ree
ROMA CHD aur comic].
Tr¥Gey Cet br ta COTO
save enn Dry CORED
Appr nD CAD To pRIVe corien
BUILD ont TO DaLey cae rep

Beecceoooonssspococ9

:

O.exec — - cro DRIVE w1 COPIED
JUMP CHD DRIVE #1 COPIED
0. DATE CRD DRIVE wi COPIED
0.0 CHO DRIVE #1 COPIED
O. VERSION CHD DRIVE #1 COPIED
o.PROT = «CHO DRIVE #1 COPIED
O.VERIFY .CHO DRIVE #1 COPIED
o.t =n DRIVE #1 COPIED
O.LINK = CHD DRIVE #1 © COPIED
O.Save —-Low DRIVE #1 COPIED
0. HELPCOCO. DIR DRIVE #1 COPIED
O.READ-ME TXT DRIVE #1 COPIED
O.MERPATCH. TXT DRIVE #1 COPJED
0. MERPATCH. BIN DRIVE #1 © COPIED
0. DIAPATCL. TXT DRIVE #1 COPIED
©. DIAPATOO. TXT DRIVE #1 COPIED
0.D1APATOO. BIN DRIVE «1 COPIED
0. D1APaTCI_BIN DRIVE #1 COPIED

This is ali you have to do:

Put your FLEX system disk in drive @ and your new disk in drive 1 and type:
COPY 0,1 (énTEA

Voila! You're all done! Now, put your master disk away in a safe place,
your new disk in the drive, your FLEX manual on your lap, and learn how to
use the darn thing!

Let's say you just bought some new software to run under FLEX (in other
words, is "FLEX compatible"), What should you do with it first?

Just to see what you actually got, do a CAT (catalog) of your new
disk. Now, realize that CAT is a FLEX command and is only found on your
FLEX disk (this is what is meant by "Disk Resident Commands"). So, if you
have a single disk drive system and pul your new disk in and type CAT, the
system will look on the disk to sce what CAT means, and guess what? It
won't be there, and your computer will come back with the message NOT
FOUND. Therefore you must copy the CAT command onto your new disk.
This is quite simple and is done by using the FLEX SDC command. Put your
FLEX disk in, type SDC CAT.CMD then hit enter. When asked for the
source diskette, hit enter. When asked for the destination diskette, take the
write protect sticker off the new disk and insert it in the drive. Hit enter.
Remove the disk after the copy is complete and put the write protect sticker
back on and then just do a catalog of the disk (CAT 0). Now you at least
know what it is you spent your money on, and you can then make a copy or
find out what the various files do as explained in the documentation that
accompanies your new software.

Tutey

-11-

---

Pil

Color

fale

D i

eX

S k

Operating

Sys

GENERAL INFORMATION |:

tem

---

Sex

THE FLEX DISK OPERATING SYSTEM

I. INTRODUCTION

The FLEX” Operating System is a very versatile and flexible operating
system. It provides the user with a powerful set of system commands to
contro} all disk operations directly from the user's terminal. The
systems programmer will be delighted with the wide variety of disk
access and file management routines available for personal use.
Overall, FLEX is one of the most powerful operating systems available
today.

The FLEX Operating System is comprised of three parts, the File
Management System (FMS), the Disk Operating System (DOS), and the
Utility Command Set (UCS). Part of the power of the overall system lies
in the fact that the system can be greatly expanded by simply adding
additional utility commands. The user should expect to see many fore
utilities available for FLEX in the future. Some of the other important
features include: fully dynamic file space allocation, the automatic
"removal" of defective sectors from the disk, automatic space
compression and expansion on all text files, complete user environment
control using the TTYSET utility command, and uniform disk wear due to
the high performance dynamic space allocator.

The UCS currently contains many very useful commands. These programs
reside on the system disk and are only loaded into memory when needed.
This means that the set of commands can be easily extended at any time,
without the necessity of replacing the entire operating system. The
utilities provided with FLEX perform such tasks as the saving, loading,
copying, renaming, deleting, appending, and listing of disk files.
There is an extensive CATalog command for examining the disk's file
directory. Several environment control commands are also provided.
Overall, FLEX provides all of the necessary tools for the user's
interaction with the disk.

* FLEX is a registered trademark of Technical systems
Consultants, Inc.

-1.l-

---

Il. SYSTEM REQUIREMENTS

FLEX requires random access memory from location 0000 through Tocation
2FFF hex (12K). Memory is also required from C000 (48K) through DFFF
hex (56K), where the actual operating system resides. The system also
assumes at Teast 2 disk drives are connected to the controller and that
they are configured as drives #0 and #1. You should consult the disk
drive instructions for this information. FLEX interfaces with the disk
controller through a section of driver routines and with the operator
console or terminal through a section of terminal I/0 routines.

Ill. GETTING THE SYSTEM STARTED

Each FLEX system diskette contains a binary loader for Toading the
operating system into RAM, There needs to be some way of getting the
loader off of the disk so it can do its work. This can be done by
either hand entering the bootstrap loader provided with the disk system,
or by using the boot provided in ROM if appropriate to FLEX.

As a specific example, suppose the system we are using has SWTPc's S=BUG
installed and we wish to run FLEX. The first step is to power on all
equipment and make sure the S-BUG prompt is present (>). Next insert
the system diskette inte drive 0 (the boot must be performed with the
disk in drive 0) and close the door on the drive. Type “D" on the
terminal if using a full size floppy system or "U" if a minifl oppy
system. The disk motors should start, and after about 2 seconds, the
following should be displayed on the terminal:

FLEX X.%
DATE (MM,DB,YY)?

ht

The name FLEX identifies the operating system and the X.X will be the
version number of the operating system. At this time the current date
should be entered, such as 7,3,79. The FLEX prompt is the three plus
signs (+++), and will always be present when the system is ready to
accept an operator command. The '+++' should become a familiar sight
and signifies that FLEX is ready to work for you!

-1.2-

[LEESEERBEHEEREERPRESH

IV. OISK FILES AND THEIR NAMES

All disk files are stored in the form of ‘sectors’ on the disk and in
this version, each sector contains 256 ‘bytes’ of information. Each
byte can contain one character of text or one byte of binary machine
information, A maximum of 340 user-accessible sectors will fit on a
single-sided mini disk or 1140 sectors on a single-sided full size
floppy. Double-sided disks would hold exactly twice that_number of
sectors. Double-density systems will hold more still. The user
powever. need not keep count, fur the system does this automatically. A
ile will always be at least one sector long and can have as many as the
maximum number of sectors on the disk. The user should not be concerned
with the actual placement of the files on the disk since this is done by
te sovniy weed system. File. deletion is also supported and all
previous 9 yset jpectors become immediately available again after a file

All fil i i
tyne on the disk have a name. Names such as the following are

PAYROLL

INVNTORY
TEST1234
APRIL-78
WKLY-PAY

Anytime a file is created, referenced, or deleted, i

> ts name must be
used. Names can be most anything but must begin with a letter (not
numbers yor symbols) and be followed by at most 7 additional characters
called ‘name characters’. These ‘name characters' can be any
conbination of the letters 'A' through 'Z' or ‘a’ through 'z', any digit
0' through ‘9 ; or one of the two special characters, the hyphen (-} or
the underscore '_', (a left arrow on some terminals).

File names must also contain an ‘extension’. The file extension furthe
defines the file and usually indicates the type of information Contained
therein. Examples of extensions are: TXT for text type files, BIN for
machine readable binary encoded files, CMD for utility command files
and BAS for BASIC source programs. Extensions may contain up to 3 "hame
characters’ with the first character being a letter. Most of the FLEX
commands assume a default extension on the file name and the user need
not be concerned with the actual extension on the file. The user may at
anytime assign new extensions, overiding the default value, and treat
sion as jus art i i
names with their oxtens ions fotlogs Te nanes Sone examples of Fie

APPEND. CMD.
LEDGER. BAS.
TEST.BIN

Note that the extension is always separated from the name by a period

.’. The period is the name 'field se ‘
; parator'. It tells FLEX to treat
the following characters as a new field in the name specification.

~1.3-

---

A file name can be further refined. The name and extension uniquely
define a file on a particular drive, but the same name may exist on
several drives simultaneously. To designate a particular drive a ‘drive
number’ is added to the file specification. It consists of a single
digit (0-3) and is separated from the name by the field separator '.'.
The drive number may appear either before the name or after it (after
the extension if it is given). If the drive is not specified, the
system will default to either the ‘system’ drive or the ‘working’ drive.
These terms will be described a little later

Some examples of file specifications with drive numbers follow:

O.BASIC
MONDAY .2
L.TEST.BIN
LIST. CMD.1

In summary, a file specification may contain up to three fields
separated by the field separator. These fields are; ‘drive’, ‘name’,
and ‘extension’. The rules for the file specification can be stated
quite concisely using the following notation

C<drive>. Knare>[.<extension> ]
or
<name>[.<extension> Jf. <drive>]

The ‘<' enclose a field and do not actually appear in the
specification, and the ‘[]' surround optional items of the
specification. The following are all syntactically correct:

O.NAME. EXT
NAME .EXT.0
RAML EXT
0. NABL
NAME. 0
NAME

Note that the only required field is the actual ‘name’ itself and the

other values will usually default to predetermined values. Studying the
above examples will clarify the notation used. The same notation will
occur regularly th. eughout the manual.

-1.4-

|
mand
ae
mea
na
mee
ad
med
a
met
eet
mad
mea
ma
od

V. ENTERING COMMANDS

When FLEX is displaying '+++', the system is ready to accept a command
line. A command Tine is usually a name followed by certain parameters
depending on the command being executed. There is no 'RUN' command in
FLEX. The first file name on a command line is always loaded into memory
and execution is attempted. If no extension is given with the file
name, ‘CMD' is the default. If an extension is specified, the one
entered is the one used. Some examples of commands and how they woutd
Jook on the terminal follow:

$447 TYSET
444+TTYSET. CMD
+++ LOOKUP. BIN

The first two lines are identical to FLEX since the first would default
to an extension of CMD. The third line would load the binary file
"LOOKUP.BIN' into memory and, assuming the file contained a transfer
address, the program would be executed. A transfer address tells the
program loader where to start the program executing after it has been
loaded. If you try to load and execute a program in the above manner and
no transfer address is present, the message, 'NO LINK' will be output to
the terminal, where 'Tink' refers to the transfer address. Some other
error messages which can occur are ‘WHAT?! if an illegal file
specification has been typed as the first part of a command line, and
"NOT THERE! if the file typed does not exist on the disk.

During the typing of a command line, the system simply accepts all
characters until a ‘RETURN' key is typed. Any time before typing the
RETURN key, the user may use one of two special characters to correct
any mistyped characters. One of these characters is the ‘back space’
and allows deletion of the previously typed character. Typing two back
spaces will delete the previous two characters. The back space is
initially defined to be a ‘control H' but may be redefined by the user
using the TTYSET utility command. The second special character is the
line ‘delete’ character. Typing this character will effectively delete
all of the characters which have been typed on the current line. A new
prompt will be output to the terminal, but instead of the usual ‘+++!
prompt, to show the action of the delete character, the prompt will be
"222". Any time the delete character is used, the new prompt will be
227", and signifies that the last line typed did not get entered into
the computer. The delete character is initially a ‘control X' but may
also be redefined using TTYSET.

-1,5-

---

fis mentioned earlier, the first mame on a command line is always
interpreted as a cormand. Following the cormand is an optional list of
names and parameters, depending on the particular command being entered,
The fields of a cormand Tine must be separated by either a space or a
comma. The general format of a cormand Tine is:

<command>[,<list of names and parameters>

A connma is shown, but a space may be used. FLEX also allows several
commands to be entered on one command Tine by use of the ‘end of line!
character. This character is initially a colon (':'}, but may be user
defined with the TIYSET utility. By ending a command with the end of
Vine character, it is cossibte to follow it immediately with another
command. FLEX will execute al} commands on the line before returning
with the '++4+' prompt. An error in any of the conmand entries will
cause the system to terminate operation of that command line and return
with the prompt. Some examples of valid command lines follow:

+H4CAT 1
++4CAT 1:ASN S=1
+44L 1ST LIBRARY: CAT I:CAT 0

As viany corinanes may be typed in one command line as desired, but the
total number of characters typed must not exceed 128. Any excess
characters will be ignored by [

One Vast syste teature to be deseribed is the idea of ‘system’ and
‘working’ drives. As stated earlier, if a file specification does not
specifically designate a drive number, it will assume a default value.
This default value will either be the current 'system' drive assignment
or the current ‘working’ drive assignment. The system drive is the
default for all command nanes, or in other words, all file names which
are typed first on a command line. Any other file name on the command
line will default Lo the working drive. This version of FLEX also
supports autoratic drive searching. When in the auto search mode if no
drive nurbers are specified, the operating system will first search
drive 0 for the file. If the file is not found, drive 1 will be
searched and so on. When the systeri is first initialized the auto drive
searching mode will be selected. At this time, all drive defaults will
be to drive 0. It is sametines convenient to assign drive 1 as the
working drive in which case all file references, except commands, wil}
automatically look on drive 1. It is then convenient to have a diskette
in drive O with all the system utility cormands on it (the 'system
drive’), and a disk with the files being worked on in drive 1 (the
‘working drive'}. If the system drive is Q and the working drive is 1,
and the command line was:

+44 057 TEXTE CLI
FLEY would go to drive U for the command LIST and to drive i for the

file TUXTFILE. The actual assignment of drives is performed by the ASN
utility. See its description for details.

~1.6-

t

pas
-
or
Pa
cas
eae
me
Lt
me
may!
wit
-
>
ee
cme!

VI. COMMAND DESCRIPTIONS

There are two types of commands in FLEX, memory resident (those which
actually are part of the operating system) and disk utility commands (those
commands which reside on the disk and are part of the UCS),

There are four memory resident commands ineluded in FHL Color FLEX:
GET, MON, ROM, and P. Even though they are not considered part of the
Disk Utility Command Set, for simplicities sake they will be discussed in the
UCS section of this manual.

-L.7-

---

: |

GENERAL SYSTEM INFORMATION
i DISK CAPACITY

Each sector of a FLEX disk contains 252 characters or bytes of user data (4 bytes
of 256 byte sector are used by the system), Thus a single-sided mini disk has 340
sectors or 85,680 characters or bytes of user information. A single-sided full size
Gisk has 1140 sectors or 287,280 bytes of user data, Double-sided disks would
contain exactly twice these amounts.

I. WRITE PROTECT

Floppy disks can usually be physically write protected to prevent FLEX from
performing a write operation. Any attempt to write to such a disk will cause an
error message to be issued, It is good practice to write protect disks which have
important files on them.

A mini disk can be write protected by placing a piece of opaque tape over the
small rectangular cutout on the edge of the disk. Full size floppys are just the
opposite. In order to write protect a full size disk, you must remove the tape from
the cutout, In other words, the notch must be exposed to write protect the disk.
Some full size disks do not have this cutout, and therefore cannot be write
protected, :

I, THE 'RESET' BUTTON

The RESET button on the back panel of your computer should NEVER BE PRESSED
DURING A DISK’ OPERATION. There should never be a need to reset the machine
while in FLEX, If the machine is reset and the system is writing data on the disk,
it is possible that the entire disk will become damaged, Again, never press 'reset!
while the drive is operating! Refer to the 'escape' character in TTYSET for ways
of stopping FLEX.

~1,8-

Iv. NOTES ON THE 'P' COMMAND

On a standard FLEX system, the ‘P' command tries to load a printer driver file
named 'PRINT.SYS' from the same disk which P itself was retrieved (after first
making sure that a driver has not already been loaded in). FHL Color FLEX
utilizes P in a different manner:

P is a memory resident command whieh simply redirects [/O to the printer port of
the Color Computer. Instead of playing the part of the hotel doorman (the function
of the standard P) calling a taxi (PRINT.SYS) for the waiting patron (the file to be
output), P in this case takes the patron directly to a location where he knows the
“hotel taxi" is waiting. This particular hotel is not serviced by any other taxis, so
the doorman (P) knows there is only one way out - the hotel taxi.

As presently is and has been the case on the Color Computer, there is only one

output port - the RS 232 port. Similar to the hotel with the "built-in" taxi, FHL

Color FLEX has a built in (memory-resident) printer driver just sitting there at the

RS232 port waiting for P to send it some data to be printed. The reason it can be

built in (memory-resident) is because there is only need for one stendard driver

oe ail data on the Color Computer is being sent out one standard port (the RS
ya

For more information on the standard FLEX PRINT.SYS file, see page 53 of the
‘Advanced Programmer's Guide."

-1L.9-

---

VI. SYSTEM ERROR NUMBERS

Any time that FLEX detects an error during an operation, an appropr fate
error message will be displayed on the terminal. FLEX internally
translates a derived error number into a plain language statement using
a look-up table called ERROR.SYS. If you have forgotten to copy this
“SYS. file onto a disk that you are using, FLEX will report a
corresponding number as shown below:

DISK ERROR #xx

where 'xx' is a decimal error number. The table below is a list of
these numbers and what error they represent.

ERROR # MEANING

ILLEGAL FMA FUNCTION CODE ENCOUNTERED
THE REQUESTED FILE IS IN USE

THE FILE SPECIFIED ALREADY EXISTS

THE SPECIFIED FILE COULD NOT BE FOUND
SYSTEM DIRECTORY ERROR-REBOOT SYSTEM
THE SYSTEM DIRECTORY IS FULL

ALL AVAILABLE DISK SPACE HAS BEEN USED
READ PAST END OF FILE

DISK FILE READ ERROR

DISK FILE WRITE ERROR

THE FILE OR DISK IS WRITE PROTECTED
THE FILE IS PROTECTED-FILE NOT DELETED
ILLEGAL FILE CONTROL BLOCK SPECIFIED
TLLEGAL DISK ADDRESS ENCOUNTERED

AN TLLEGAL DRIVE NUMBER WAS SPECIFIED
DRIVE NOT READY

THE FILE IS PROTECTED-ACCESS DENIED
SYSTEM FILE STATUS ERROR

FMS DATA INDEX RANGE ERROR

FMS INACTIVE-REBOOT SYSTEM

ILLEGAL FILE SPECIFICATION

SYSTEM FILE CLOSE ERROR

SECTOR MAP OVERFLOW-DISK TOO SEGMENTED
NON-EXISTENT RECORD NUMBER SPECIFIED
RECORD NUMBER MATCH ERROR-FILE DAMAGED
COMMAND SYNTAX ERROR-RE-TYPE COMMAND
THAT COMMAND IS NOT ALLOWED WHILE PRINTING
WRONG HARDWARE CONFIGURATION

RNA NY NN Eee eee
SRB R ONE SS BUD HEUNHDOANAATRWN

nD
fey

For more details concerning the meanings of these error messages,
consult the ‘Advanced Programmer's Guide’ (pgs. 28 - 40).

-1.10-

[HEE EEEEEREEREREERH

FLEX User’s Manual

VII. FLEX OPERATING SYSTEM INPUT/OUTPUT SUBROUTINES

In order for the FLEX 1/0 functions to operate properly, all user
program character input/output subroutines should be vectored thru the
FLEX operating system rather than the computer's monitor. Below is a
list of FLEX's 1/0 subroutines and a brief description of each All
given addresses are in hexadecimal.

GETCHR at $CD15

This subroutine is functionally equivalent to S-BUG's character input
routine. This routine will look for one character from the control
terminal (1/0 port #1) and store it in the A accumulator. Once called,
the input routine will loop within itself until a character has been
input. Anytime input is desired, the call JSR GETCHR or JSR $CD15 should
be used.

GETCHR automatically sets the 8th bit to 0 and does not check for
parity. Acatl to this subroutine affects the processor's registers as
follows: :

ACC. A loaded with the character input from the terminal
8,X,Y,U not affected

PUTCHR at $CD18

This subroutine is used to output one character from the computer to the
control port (1/0 port #1). It is functionally equivalant to the output
character routine in $-BUG.

To use PUTCHR, the character to be output should be placed in the A
accumulator in its ASCII form. For example, to output the letter 'A‘ on
the control terminal, the following program should be used:

LDA a$41
JSR $cdis

The processor's registers are affected as follows:

ACC. A changed internally
B,X,Y,U not affected

PSTRNG at $CD1E

PSTRNG is a subroutine used to output a string of text on the control
terminal. When address $CDIE is called, a carriage return and tine feed
will automatically be generated and data output will begin at the
location pointed to by the index register. Output will continue until a
hex 04 is seen. The same rules for using the ESCAPE and RETURN keys for
stopping output apply as described earlier.

The accumulator and register status after using PSTRNG are as follows:
ACC. A Changed during the operation

-111-

---

FLEX User's Manual

Acc. B Unchanged
x Contains the memory location of the last character read from
string (usually the 04 unless stopped by the ESC key)
Y,U Unchanged
NOTE: The ability of using backspace and line delete characters is a

function of your user program and not of the FLEX 1/0 routines described
above.

For additional information consult the ‘Advanced Programmer's Manual'.

STAT at $CD4E

This routine is used to determine the "status" of the input device.
That is, to see if a character has been typed on the input terminal
keyboard. Its function is to check for characters such as the ESCAPE key
in FLEX which allows breaking of the output. This routine returns an

EQual condition if no character was hit and a Not-Equal condition if a
character was hit. No registers, except for the condition codes, may be
altered.

-1.12-

Ue"

VI, BOOTING THE FLEX DISK OPERATING SYSTEM

In order to read FLEX from the system disk upon powering up your system, you
must have a short program in RAM or ROM memory. This program is called a
‘bootstrap' loader.

With FHL Color FLEX, typing in RUN"FLEX" will call the BASIC bootstrap loader
calied "FLEX".

Non-Color Computer Users should use the boot supplied with the hardware if
eompatible with FLEX. A sample boot (for the SWTPe mini system) is given here
for reference.

if the system does not boot properly, re-position the system disk in the drive and
re-execute the bootstrep loader.

0100 B6 = E018 START LDA  COMREG = TURN MOTOR ON
0103 86 90 LDA #0

0105 87 «£014 STA DRVREG

0108 8E 0000 LOX #0000

010B 3D OVR MUL DELAY FOR SPEED UP
010¢ 300 sIF LEAX -1,X

Q1OE 26 FB BNE —OVR

0110 C6 OOF LBB #$0F RESTORE

0112 F7? E018 STB. COMREG

0115 8 2B BSR RETURN

O117 F6-EO1S LOOPL LOB COMREG

OllA C5) Ol Bime #1

OlIC 26 FO BNE LOOP

QllE 86 01 LOA #1

0120 87 EOLA STA SECREG

0123 8D 1D BSR RETURN

0125 C6 8C LDB #$8C READ WITH LOAD
0127 F7 «£018 STB COMREG

012A 8D 16 BSR RETURN

012¢ 8 = C000 Lox — #$c000

O12 C5 (02 Loop2 BITB #2 DRQ?

0131 27 05. BEQ —_ LOOP3

0133 B6 = EOIB LDA DATREG

0136 A780 STA 0, X+

0138 F6 = -EGLS LOOP3 LBB COMREG

0138 C5) Ol BITB. #1 BUSY?

0130 26 «FO BNE —_ LOOP2

C13F 7E code JMp = $C000

0142 8D 00 RETURN BSR RTN

0144 39 RTN RTS

-1,13-

---

1X, REQUIREMENTS FOR THE 'PRINT.SYS' PRINTER DRIVER
(This does not apply to FHL Color FLEX. See pg. 1.9)

Standard TSC FLEX, as supplied, includes a printer driver that will work with most
parellel type printers, such as the SWTPC PR-40. If desired, the printer driver may
be changed to accomodate other types of printers, Included is the source listing
for the supplied driver. Additional information on the requirements for the
PRINT.SYS driver can be found in the "Advanced Programmer's Guide' on page 53.

1) The driver must be in a file called PRINT.SYS

2) Three separate routines must be supplied, a printer initialization
routine (PINIT at $CCCO), a check ready routine (PCHK at $CCD8),
and an output character routine (POUT at $CCE4).

When the POUT routine is called by FLEX, the character to be output
will be in the A accumulator. The output routine must not destroy
the B, xX, Y, or U registers. PINIT may destroy any registers.
PCHK may NOT alter any registers.

w

4) The routines MUST start at the addresses specified, but may he
continued anywhere in memory if there is not room where specified.
If placed elsewhere in memory, be certain they do not conflict
with any utilities or programs which will use them.

5) All three routines must end with a return from subroutine
instruction (RTS).

*

* PRINT.SYS PIA DRIVERS FOR GENERAL CASE PRINTER
*

€01C PIA EQU SEOIC PIA ADDRESS FOR PORT #7

*

* PRINTER INITIALIZATION (MUST BE AT $CCCO)

*

BERETA TAR AEE

ceca ORG © $CCCD.-«=SsMUST RESIDE AT $CCCO
CCCO 86 3A PINIT LOA 283A SELECT DATA DIRECTION REG. ff
CcC2 B7 E010 STA PIAS] ~—séBY WRITING O IN DOR CONTROL
Cech 86 OFF LDA ESFF SELECT ALL OUTPUT LINES
ccc? B7 OIC STA PIA DUT IN DATA DIRECTION REG. i=
CCEA 86 BE LDA #S3E SET UP FOR TRANSITION CHECKS
ccec B? OID STA PIASL «AND ENABLE OUTPUT REGISTER
CCCF 39 RTS |
* PRINTER READY ROUTINE :
ccoo 7) «EGIC «=~ PREADY «TST ~— PIA RESET PIA READY INDICATION
C03 73 CCL3 COM PFLAG «SET THE PRINTER READY FLAG
CCD6 39 RTS ie
-114- ae
ee

FLEX User's Manual

CCDs
ccbs
CCDB
ccbD
CCEO
CCE2

CCE3

CCE4
CcE4
CCE6
CCES
CCEB
CCEE
CCFO
CCF2
CCF4
CCF7

7D
2B
7D
2B
39

FF

8D
2A
TF
B7
86
8D
86
B7
39

CCE3
05
Eo1D
EE

F2
FC
CCE3
E01C
36
02
3E
EOID

*

* CHECK FOR PRINTER READY (MUST BE AT $CCD8)

ORG $CCD8 PRINT TEST AT $CCD8
PCHK TST PFLAG TEST FOR PRINTER READY
BMI PCHKX IF NEGATIVE, PRINTER READY
TST PIA+1 CHECK FOR TRANSITION
BMI PREADY IF MINUS, PRINTER NOW READY
PCHKX = RTS
* PRINTER READY FLAG
PFLAG FCB SFF PRINTER READY FLAG

*

* PRINTER QUTPUT CHARACTER ROUTINE (MUST BE AT $CCE4)
*
ORG $CCE4 MUST RESIDE AT $cCE4

POUT BSR PCHK TEST FOR PRINTER READY
BPL POUT LOOP UNTIL PRINTER READY
CLR PFLAG SET PRINTER FLAG NOT READY
STA PIA SET DATA IN OUTPUT REGISTER
LDA #$36 SET DATA READY, HIGH TO LOW
BSR POUTB STUFF BYTE INTO THE PIA
LDA #$3E THEN SEARCH FOR TRANSITION
POUTB STA PIA+1 OF LOW LEVEL TO HIGH LEVEL
RTS
END
-L.15-

---

SAMPLE DRIVERS FOR SERIAL PRINTER

The following listing is a sample set of drivers for a serial type printer using an

ACIA as its interface.

This would be of interest to Color Computer Users using

some type of expansion device allowing access to a printer port other than the
d This set of drivers is not supplied on disk. In order to use
these drivers, you must type in the source and assemble it.

standard RS 232 port.

arereaaey
PONE OCRYHT BWA

o

sem

NNNN NNR ee
SSARABANE

wo
=s

a
%

Bw
AAS

36

ws

38
39
40
4]

43

ecco
ceca
cece
cccs
Cec?
CCA

CCDs.
cone
copa
ccnp
CODE
CCDr
CCEO

CCE? 3

ccea
ccL4
CCE6
Cck9
CCEA
CCLB
CCED
CCEP
CCR2

a6

"6
87
3a

34
FG
56
56
56
35

34
Fo
57
57
24
35
B/
39

EOC

13
EQIC

EQIC

04
EOC

04

04
EOIe

Fo
n4
£8lp

a

* PRINT.SYS DRIVERS FOR GENERAL SERIAL PRINTER
* CHANGE ACTA EQUATE IF NECESSARY
*

ACIA EQU

*

SEQIC ACIA ADDRESS FOR PORT #7

* PRINTER INITIALIZATION (MUST BE AT $CCCO)
*

ORG
PINIT LDA
STA
LDA
STA
RTS

*

ORG
POHK PSHS
LDB
RORB
RORB
RORB.
PULS
RTS

+ ee

ORG
POUT PSHS
PouT2 LOB
ASRB
ASRB
BCC
PULS
STA
RTS

END

$ceco MUST RESIDE AT $CCCO

#813 RESET ACIA
ACIA
#$11 SET 8 BITS & 2 STOP
ACIA
RETURN

CHECK FOR PRINTER READY (MUST BE AT ScCDB)

$ccD8 PRINT TEST AT $CCDE
B SAVE B ACC.
ACIA GET STATUS
GET TDR BIT INTO
SIGN POSITION

B RESTORE B ACC.
RETURN

PRINTER OUTPUT CHARACTER ROUTINE (MUST BE AT $CCE4}

$cce4 MUST RESIDE AT $CCE4

B SAVE B ACC.
ACTA GET STATUS
GET TOR BIT
INTO CARRY

poure LOOP IF NOT READY

B RESTORE B ACC.

ACTA+1 WRITE OUT THE CHAR.
RETURN

~1.16-

---

FLEX Ge 1 Notes

DISK COMPATIBILITY

Disks created under 6809 FLEX 9.0 are compatible with those created
under 6800 FLEX 1.0 on the 8" drives or 6800 FLEX 2.0 on the 5" drives.
The reverse is also true, meaning that FLEX 9.0 can read disks created
by one of those 6800 FLEX systems. This means that transferring text
files will require nothing more than copying with the COPY command. In
fact it is not even necessary to put the files on a new disk. As Tong
as a disk is being used for work files only (no disk command files) it
may be used interchangeably. .

The one place where the disks are different is in the bootstrap loader
which the NEWDISK command places on track 0 when a disk is initialized.
Obviously the loader must be different for 6800 and 6809. This simply
means that a disk initialized with the 6809 NEWDISK command cannot be
used to boot 6800 FLEX and vice versa.

The new double-density system is an exception to all the above. It
cannot be used to read disks created by the original 6800 single-density
system. Any disks, however, created as single-density with the new
double-density version of NEWDISK (done by answering 'N' to the prompt
"Double-Sided Disk?') can be read on either a single or double density
system. This is because the new double-density NEWDISK writes FF's in
certain gap areas whereas the old single-density NEWDISK wrote 00's.
The single-density controller board (which uses the Western Digital
1771) can read either type, but the double-density board (which uses the
Western Digital 1791) can only read the type with FF's.

SOFTWARE COMPATIBILITY

6809 object code is NOT at al? compatible with 6800 object code. This
means you cannot run binary command files from a 6800 system on a 6809
system. Since 6809 FLEX can read a 6800 FLEX disk and vice versa, you
must be careful not to execute a 6800 command in a 6809 system and
again, vice versa.

Where the 6809 and 6800 ARE compatible is in the source code. Thus, if
you have the source listing for a 6800 program on disk, it can be
reassembled by the 6809 assembler to produce executable 6809 object
code. Of course if the program calls any routines from FLEX, these
addresses will have to be changed since 6809 FLEX resides at $C000 (6800
FLEX is at $A000). This is usually a matter of simply changing all
occurrences of ‘$A‘ to '$C' and all '$B8' to '$D’ with the editor.

FLEX General Notes

ADAPTING FLEX

The FLEX 9.0 disk supplied has two copies of the FLEX object code. One
is called FLEX.SYS and is ready to boot up with SWTPc disk hardware.
The second 18 called FLEX.COR which represents the CORe or_main body of
FLEX. It differs from the bootable form of FLEX in that jt does not
have any terminal or disk 1/0 routines built in. This allows the user
to modify these 1/0 drivers, if desired, to produce a customized version
of FLEX. Note that in order to produce this customized version you must
have FLEX up and running so you will need the bootable version
(FLEX.SYS). The customized terminal and disk 1/0 routines are supplied
in two packages. We will discuss them separately and then examine how
to add them onto FLEX.COR to produce a new, customized, bootable version
of FLEX.

The CUSTOM 1/0 DRIVER PACKAGE

This package allows the user to alter the functioning of the terminal
1/0 and the functioning of printer spooling. Nine routines and two
interrupt vectors are set up in this package. There is @ space reserved
for these routines beginning at location $0370 and ending at $D3E6. The
address of these 11 items must be setup in a jump table found at
Tocations $D3E7 thru $D3FB. A copy of the Custom 1/0 Driver Package
used to produce FLEX.SYS is included at the end of the General Notes
section. Use it as a guide for writing your own.

A description of each routine and vector follows.

ENCH

The address of the input character routine should be placed at SD3FB.
This routine should get one input character from the terwinal and return
it in 'A' with the parity bit cleared. It should also echo the
character to the output device. Only ‘A’ and the condition codes may be
modified.

OUTCH

The address of the output character should be placed at $03F9. This
routine should output the character found in ‘A’ to the output device.
No registers should be modified except condition codes.

STAT

The address of the STAT routine should be placed at $03F7. This routine
checks the status of the input device. That is to say, it checks to see
i# a character has been typed on the keyboard. If so, a Not-Equal
condition should be returned. If no character has been typed, an Equal
to zero condition should be returned. No registers may be modified
except condition codes.

TINT

The address of the terminal initialization routine should be placed at

$03F5. This routfne performs any necessary initialization for terminal
T/O to take place. Any register may be modified except 'S'.

---

NNR NN

aN

FLEX G al Notes

MONITR

This is the address to which execution will transfer when FLEX is
exited. It is generally the reentry point of the system's monitor ROM.
The address should be placed at _$D3F3.

TMINT

The address of the timer initialization routine should be placed at
$D3F1. This routine performs any necessary initialization for the
interrupt timer used by the printer spooling process. Any register may
be modified except ‘S‘.

TMON_

The address of the timer on routine should be placed at $03EF. This
routines "turns the timer on" or in other words starts the interval IRQ
interrupts. Any registers execpt 'S' may be modified.

TMOFF.

The address of the timer off routine should be placed at_$D3ED. This
routine “turns the timer off" or in other words stops the interval IRQ
interrupts. Any registers except ‘S’ may be modified.

IRQVEC

The, IRQ vector. is an address of a two byte location in RAM where FLEX
can Stuff the address of its IRQ interrupt handler routine. In other
words, when an IRQ interrupt occurs control should be transferred to the
address stored at the location specified by the IRQ vector. This IRQ
vector location (address) should be placed at_$D3E8.

SWIVEC

The SW!3 vector is an address of a two byte location in RAM where FLEX
can stuff the address of its SWI3 interrupt handler routine. In other
words, when an SWI3 interrupt occurs control should be transferred to
the address stored at the location specified by the SWI3 vector. This
SWI3 vector location (address) should be placed at _$D3£9.

THNOLR

The Interrupt Handler routine is the one which witl be executed when an
IRQ. interrupt occurs. If using printer spooling, the routine should
first clear the interrupt condtion and then jump to the ‘change process‘
routine of the printer spooler at $C700. If not using printer spooling,
this routine can be setup to do whatever the user desires. If it is
desirable to do both printer spooling and have IRQ's from another device
(besides the spooler clock), this routine would have to determine which
device had caused the interrupt and handle it accordingly. The address

of this routine should be placed at $0367.

“NON

Pao

FLEX General Notes

The CUSTOM DISK DRIVER PACKAGE

This package supplies all the disk functions required by FLEX. There
are eight routines in all:

READ Reads a single sector

WRITE Writes.a single sector

VERIFY Verifys a single sector

RESTORE Restores the head to track 0

ORIVE Selects the desired drive

CHECK Checks a drive for a ready condition
QUICK Same as CHECK but with no delay
iNT Initializes any necessary values

These routines and what is required of them are decribed in the Advanced
Programmer's Guide in the section titled ‘DISK DRIVERS'. There is a
jump table which contains the address of all these routines at $DE00.
This table is as follows:

DEOO JUMP READ
BEO3 UMP WRITE
DEO6 JUMP VERIFY
DEO9 JUMP RESTOR
DECC JUMP OORIVE
DEOF UMP CHECK
DE12 JUMP QUICK
DE1S JUMP INIT

Immediately following this jump table there is a space for the disk
driver routines. In the general case this space would start at $DE18
and run through $OFFF. In the SWIPc system with S-BUG installed, that
entire space is not available due to the fact that S-BUG uses RAM in the
area of $DFAQ to $OFFF for variables and stack. Thus the driver routine
area is limited in this case to $DE18 through $OFOF.

The actual source listings for the SWTPc drivers are not included, but a
skeletal Custom Disk Driver Package is included at the end of this
section which should assist you in writing your own package.

PUTTING THE CUSTOM FLEX TOGETHER

Once you have written and assembled a Custom 1/0 and Custom Disk Driver
packages, you are ready to append them to the core of FLEX (FLEX.COR) to
produce a new, bootable version. This is done with the APPEND utility
if FLEX, but before we get into that there is a very important point
which must be covered.

+8 IMPORTANT **

The copy of FLEX on disk is much like any other standard binary file.
IT MUST HAVE A TRANSFER ADDRESS IN ORDER TO WORK! It is also important
to note that unlike ether binary files FLIX can have ONLY ONE transfer
address and it MUST BF THE LAST THING IN THE FILE! The simplest way of

---

rN

C
C
C

oN

FLEX Ge al Notes

getting that transfer address into the file is by use of the END
statement in the assembler. We recommend you put a transfer address on
the END statement of the Custom I/0 Driver Package and make sure it is
the last thing in the final FLEX file.

Assuming you have put a transfer address on the Custom 1/0 Driver
Package with an end statement of the form:

END $cD00
you can now create a new version of FLEX by appending the custom disk
drivers and custom 1/0 drivers onto FLEX.COR. You should use the APPEND
command for this purpose as shown:

+44APPEND FLEX.COR DRVRS.BEN CUSTOMIO.BIN NEWFLEX.SYS

_This command assumes the object file you created for the Custom Disk

Drivers is called DRVRS.BIN and the Custom I/0 Drivers are in a file
called CUSTOMIO.BIN. The new, custom version of FLEX is called
NEWFLEX.SYS. In order to boot up this NEWFLEX.SYS you must Tink it with
the LINK command (see the FLEX User's and Advanced Progammer's Manuals).
The command would be of the form:

t+44L INK NEWFLEX.SYS

The disk containing your newly made and linked FLEX can now be booted
with the normal boot procedure.

---

TTL FLEKADR

STTL FLEX ADRESSEN

OFT FAG

PAG
* FLEX ADRESSEN
COLO EQU
WARNS EQU
RENTER EQU
INCH EQu
INCH2 EQu
OUTCH EQuU
OUTCHZ2 EQU
GETCHR EQU
FUTCHR EQU
INSUFF  EQU
PSTRNG EGU
CLASS Eau
PCRLE EQU
NXTCH EQU
RSTRIO EGU
GETFIL EQU
LOAD EQu
SETEXT EQU
ADDEX EQU
OUTDEC EQU
OUTHEX EQU
RPTERR EQU
GETHEX EQU
QUTADR EQuU
INDEC EQU
DOCMND = EQU
STAT EQU
ULH EQU
MTROFF EGU
FCTE EQU
DEBCOU EQU
BLPER EQU
MOEL EQuU
CURTYP EQU
VDGMOD EGU
BELCYC EQU
BELHLF EQU
TINCHNE, EQU
CINCHNE 4)
TINIT EQU
MONITR EQU
THINT EqQu
TMON EQU
TMGFF EGU
TRAVEC EGU
SWIVEC EQU

SCDOC
$CDN3
$CB06
SCDOP
$CDOC
$CO0F
$CD12
$CD1S
$CD18
$CD16
$CD1E
$CD21
$CD24
$O027
$CDZA
$CD2b
$CD39
$C033
$CD36
$Cb39
$CD3C
$CDSF
$CD42
$CD45
$CD43
$0048
$CDO4E

$DELE
SDE21
$DEZ4
$0301
$0303
$D305
$OSL7
$D3a09

$D3ED

$DSER

$D3E9

COLDSTART 8

WARMSTART @

RE-ENTRY POINT 8

INPUT CHARACTER

INFUT CHARACTER 9

QUTFUT CHARACTER 9

OUTFUT CHARACTER 9

GET CHARACTER 9

PUT CHARACTER ‘10

INPUT INTO LINE-BUFFER 10
PRINT STRING 10

CLASSIFY CHARACTER 11
PRINT CRLF "'

GET NEXT BUFFER CHARACTER 11
RESTORE I/O ‘VECTORS

GET FILE SPECIFICATION 12
FILE LOADER 12 °

SET EXTENSION: 13

ADD E-REG TO X-REG 13
OUTPUT DECIMAL - NUMBER 13
OQUTFUT HEX NUMBER 13
REPORT ERROR -44 5

GET HEX NUMBER~14

QUTFUT HEX ADDRESS

INPUT DECIMAL“NUMBER 15
CALL DOS AS“SUBROUTINE 15
CHECK TERMINAL INPUT STATUS 15

UNLOAD HEADS». - 4
TURN GFF DREVE MOTORS
FIND CONFIGURATEON TABLE ENTRY
DEBOUNCE COUNT *
BLINK PERIOD-- -*
MOTOR OFF BLINK’ LIMIT
CURSOR TYPE
VDG MODE
BELL TONE CYCLE: COUNT
BELL TONE HALF. PERIOD
INPUT WITHOUT ECHO CIGR

c

at
TERMINAL INZTIALIGATION 4
MONITOR REENTRY 5

TIMER INITIALISATION
TIHER OR 7

TIMER OFF

IRQ-VECTOR

SWI3-VECTOR

---

THNDLR

EQU

$0387

* DOS MEMORY MAP

LOADOFF
TREE LAG
TREAOQDR
ERRT YF

SPIDFLA
QUTSHT
INF SW

FOUTADD
FINFADD
CHNDFL
CURCOL
HEMEND
ERRVEND
FECHO

SYSCONS
PRINT

PRREADY
PROUT

% FILE MANAGEMENT SYSTEM

FMSINIT
FMSCLOS
FMSCALL
FCERASE

EQuU
£Qu
Eau
EQU
EQU
EQu
EQU
EQU
EQu
eau
EQu
EQuU
Eu
Eau
EQu
EQU
EQU
EQu
Eau
EQU
EQU
EQu
ERU
EQU
EQu
EQU
Eau
ERU
EQu
EQU
EQU
EQu
equ
EQU
EQu
EQU
Eau
EQU
EQU
EQU
EQU
EQU
EQU

E@U
Eau
EQU
EQU

$C080
$CCOG
$CCO4
$0002
$CCO3
$CCO4
$CCOS
SCCO6
$CC07
$0008
$CCO9
$CCUA
$CC0B
$Ccoc
$CCOD
$CCOE
$CCor
$CCi0
$CC1i
$CC12
$CC14
$016
$CC1E
SCC?
$CC1A
$CCLE
$CC1D
$CC1E
$CC20
$CC21
$0022
$CC23
$0024
$CCZ4
$CC28
$CC29
$CCZe
$CC25
$CC2F
$CC4E
$CCCU
$CCDS
$CCE4

$D460
$D40G
$D406
$D408

.ATY DELETE CHR ($48)
aitt' (83a)

IR-HANDLER

128 BYTE LINE BUFFER
TTY BACKSPACE CHR (468)

 ZETLENANZAHL (0)
SPALTENANZAHL (0)
NULL-COUNT (4)
iTAB-CHARACTER (0)
JBS-ECHG CHARACTER (0)
BLANK-LINES (6)

PAUSE CONTROL (FF)
ESCAPE CHARACTER ($18)
SYSTEM-DRIVE NUMBER
WORKING-DRIVE NUMBER

SYSTEM SCRATCH

SYSTEM

DATE

REGISTERS

LAST TERMIATOR

USER COMMAND TABLE ADRES
LINE BUFFER FOINTE:
ESCAPE RETURN RE
CURRENT CHARACTER f
PREVIOUS CHARACTER

CURRENT LINE NUMBER

LOADER ADDRESS OFFSET

TRANSFER FLAG

TRANSFER ADDRESS

ERROR TYPE

SFECTAL I/O FLAG

OUTFUT SWITCH

INFUT SWITCH

FILE OUTFUT ADDRESS

FILE INPUT AabDRESS

COMMAND FLAG

CURRENT QUTPUT COLOMN

MEMORY END

ERROR NAME VENDOR

FILE INPUT ECHO FLAG

SYSTEM CONSTANTS

PRINTER INETIALIZE

PRENTER READY CHECK

PRINTER GUTPUT

TER

FMS INITIALLZATION
FMS CLOSE

FMS CALL

FCE BASE FOINTER

FCBCURR EQU $D40B

* CSSADR-TXTX trex

*
Pluore
*

sstack
inbutf
startr
x

sustep
sferor
sfacty
sfdriv

sfrest
sfsedr
sfeadr
sfsize
stiscem
sfresz
afdmor
fdday
sfdyer
sflist
sfcreg
sferec
efindx
sfrirce
sfriwint
sfedir
sfdele
sfrerm
sfcamr
stautt
x
ttubse
ttudel
tiveal
ttyuder
ttuwid
ttende
ttytab
Lishee
ttyuelc
ttyreu
tivese

Shagmtt

CURRENT FCE ADDRESS
$D435 VERIFY FLAG

9 addresses and constants

eau $cl00 ve vate
eau fixore+$007f flex stack.
eau flxore+$0080 line buffer

eau flxoret+$0100 utility ares

eau flxora+$0840 feb function cade

ean flxorc+$0844 feb error status

eas flxore+$0842 feb activity status

eau flxore+$0843 feb drive :numbe

eau flxora+$0844 feb mame -- 8

eau flxora+$d84e feb extension

eau fixorea+$084f fon file. attributes

eau flxore+$0850 feb reserved...

eau flxore+$685i feb starting disk address
eeu flxore+$0853 feb ending disk address

eau flxore+$0855 feb file size - .

eau flxore+$0657 feb file sector mar indicator
eau Tlxore+$0858 feb reserved: .:.

eau flxore+$0359 feo crestion. morth

eau flxore+$085a feb creatian-day

eau flxare+$0SSb feb creation year

eau flxare+$0G5e feb list. rointer

eau flxere+$08Se feb current. rosition

eau flxcre+$0860 feb current record rumber

eau flxora+$0862 fcb deta. index

eau flxore+#0863 feb random index

eau flxore+$03864 feb name; work: buffer

eau flxara+$08é6f feb current directory address
eau fixera+$0a72 feb first deleted directory rointer
eau flxore+$0875 feb rename work ares

eau flxoret+$067b fob srace commression flee
eau flxore+$4880 feo sector, butfer

eau flxora+$0c00 ttuset backsrace

eau Tixora+stcdl ttuset delete, ..

eau fixoret+$0c0Z ttyuset end. of. line
eau flxore+#0ct3 ttyuset, derth, count
eau ore+$0c04 ttuset width, count
eau fluorat+$dctS thyuset mudd. court.
eau flxore+$0c06 ttyuset tabir.. 5.

eau flxarat+$0c07 tiyset. backsrace, echo
eau fixorat+$0c08 ttuset eJect. count
eau flucre+$0cd? ttyuset rause. control
eau flxore+$0c0sa tiyset escere: i

eau flxore+$fc6b sustem drive. number
eau flxoreat+$0cle working.drive, number
eau flxore+$0c0d use system. drive. flee

eau fixeressdege systen aggth

---

syearn eau fixora+$0c10 sustem year
lattrm eau fixore+é0c11 last terminator

coldst
warast
renter
inchar
inchaZ
outenr

vetaba
Inbute
escrtn
curchr
prvenr
curlin
loadet
trflag
tradar
errtyur
sreiof
oUteWt
inswte
foaddr
fiaddr
comfle
crotel
susscd
memercd
errvec
fiefic
sussed
susso4q
sysseos
crutur
er Zmhiz
crslow
er Sdn
cerant
certck
crioby
cetime
Crxmemn
Port ar
Ptrral
rirdey
retadr
uletia
ep omet
praindt
ertermn
prduch
Ptrout
erefils
syusscé

Bat
Bau
eau
eau
eau
eeu
eau
eal
eau
ea
eau
Bau
eau
eau
eeu
eau
eau
eal
eau
ea
eat
ets
eau
eau
eau
@Qhr
eat
eau
eau
eau
eau
eau
eau
eau
eau
ea
eet
eau
eau
eau
eau
eau
eau
eau
eeu

eau

flxore+$0ci2
flxore+$0c14
flxore+$0016
flxorets$0c18
fixaratsdci?
fixoraté0cla
flxore+t0cia
flxora+$0cid
fixorat+sdcie
Flixore+s0e20
flxora+$0e21
fixorat$0eZ2
flxorat+d0ez3
fixore+$oe24
flxoret+s$0c26
flxorat+$0e28
fixoret$0c29
fixorat$0cza
flxorats0ezin
flxoret$0e2d
fixore+$dc2er
fixore+40c36
Tixore+$de3i
fixora+$0c3Z
Lhore +8033

$a0 2mhn clock

eau flxore+$0d00 cold start
fixora+#0d03 warm start

eau fixore+$0d06 re-entry

eau flxore+$0d09 basic immut character
eau flxoret+$0d0c basic input character
eau flsore+t0d0f basic outrut character

user comand table
Line buffer rointer
escare return
current character
Previous charecter
current Line number
loader address offset
transfer flag
transfer address
error ture |

srecial i/o flea
outeut switen

inrut switch

file outeut adress
File inrut dccdress
command flag

current outeut column
sustem seretch
memory end

error name vector
file input echo flac
system seretch
sustem scratch
sustem scratch

cru ture flea

$40 wemory stretch
$20 50 he rower
$10 cru ram aveilstle

$08 6819 rte

avelleble

$04 4 addr /Prort
$02 6840 timer evailatle

$01 extended
flxoret$0c3s
flxora+$0037
fixora+$003¢
fixoret+#$dc43
flnorat$6c4?7
flxarat$bc4te
flxore+$0ccd
flxara+$0cad
flxorat$beds
flxore+$0ce4
fixoratétete
fixoratstets

hemory used

reserved rrinter ares pointer
reserved printer ares length
printer device address

docmd return sdcress
urrer/lower case flag
Fointer to promet string
erinter initialization
printer close routine
Printer ready check

erinter outeut

active sroolinge flac

sustem scretch

outeh2
setehr

eutohr
inbutt
rSstrng
clasty
erorvit
mxtehr
rstrio
setftil
loadfi
setext
addb2x
outdec
outhex
reterr
aethex
outadr
indecn
docind
etstat
x
tarrtr
tardum
setira
clrire
termine
timott
timron
timint
trmirct
trmehk.
trout
trmine
x
fmsint
fusels
fuscel
febbas
febour
verfle
x
dreadr
durite
dverfy
drstor
ddselr
dcheck,
dachek,
dgeekt
*
fuenxb
Pmeracb
fornia
froera
Fmorris

eau
eau

eau
eau
eau
eau
eay
eau
eau
eau
eau
eau
eau
eau
eau
eeu
eau
eau
eat
eau
eau

eau
eau
eau
eau
eau
eau
eau
eau
ea
eat
eat
eas

eats
eau
eau
eau
eau
eau

eGhi
eau
eau
eau
eau
eau
eau
eau

eau
eau
eat
eau
eau

fixore+$0diz
Moret Odi Ss

Tixora+$0d1is8
flxoret$0dib
flxoret+ttdie
flxorat+$0d2i
Flxoret+$od24
Flxore+$0d27
flxore+$0d2a
flxore+$d2d
flxora+$0d30
flxore+$0d33
flxorat$0d3a6
flxoare+$0d39
fixoret+$0d3c
flxoret+$0da3ar
Fixorat$od42
Tlxore+$0d45
fixore+$0d49
Flixorat$6d4n
fixoret+$0d4e

flxoret+$igde
flxoret+$ised
fixcret+$iset
flxore+$i3ed
Plxore+$13e5
flxore+$ised
flxore+$i3ef
Fixore+$1_ 3rd
flaoret+$iges
fixora+$13f7
flxoret$13r9
Plxore+$i3th

flsore+$i400
fixora+$1403
fixoret+$i1406
fixore+$1409
fixoret+$140b
flxore+$1435

flxoret$ieds
flxorathleds
flxoret+$ie0d
fixoret$ied?
fixoret+életc
flxoratslelt
flxoret$ieiz
flxorat$ieib

$00
$00
SOL
$02
$03

Get next
rut next
orem for
oren for
oren for

basic outeut character
aet character

rut character

input inte line buffer
eeink string

classify character

erick orlf

eet next buffer character
restore i/o vectors

Get file srecs

load binary file

set extension

add b to x

outrut decimal rumber
outeut hexadecimal rumber
rerort errar

Gel hexadecimal rumber
outrut hexadecimal address
ineut decimal number

call das as a suboutine
check terminal status

vector for ineut tar
dummy rhs for rm

clear ira vector

set ira vector

terminal input without echa
timer off

timer or

timer init

terminal init

terminal check

terminal outeut

termina] infut with echo

fus initialization
fas close files

fas call

feb base rointer
fcbh current address
verify flag

basic read disk

basic write disk

basic verify disk

basic restore disk

basic select drive

basic check drive ready
basic aviek drive check
basic drive. seek-to-sector

bute
bute
dneut,
Outrut
uedsete

---

fmeledi
fuclso
fmelsu
farewt
fwordi
fuseti
Fneuti

furesd
fndelt
farernn
frase
Tmrnse
fmorir
fmetrd
fmetrp
furest
taresdr
fmrecn
fuback
wm

fefunc
fceror
foacty
fedriv
foname
feextn
foeattir
feresl
fesedr
foeadr
fosize
fefsc
feres2
fedwen
feddaey
fedver
felist
feerra
feerec
foinds
fori
fonwot
feedir
fedelr
forernm
Fccomr
febutt
x

frills
frinus
frexis
frabsr

eau
eau
eau
eau
eau
eau
eau
eau
eau
eau
eau
eau
eau
eau
eau
eau
eau
eau
ea
eau
eau

eR
eau
eau
eau
eau
eas
eau
eau
eau
eau
eu
eau
eau
ecat
eau
eGis
eau
eau

eau 4

eau
eau
ecu
eau
eau
eau
eau
eau

eau
eau
eau
eau

$U4

$Ob

close for ineut

close for outrut

clase for uedste

rewind file

oren directors

Get information record

Put information record
read single sector

write single sector
reserved

delete file

rename file

reserved

get next seauential sector
oren sustem information record
set rancom bute from sectar
Fut random bute inta sector
reserved

find next drive

Position to record nm

back up ome record

fet funetion code
feo error status
feb activity status
feo drive mumber
feb name
feb extension

fet file attributes

fob reserved

feb starting disk address
feb ending disk address

feb file size

feb file sector mae indiceter
fob reserved

feb creation marth

feb creation day

fet crestion yea
fob list rointer

feb current position

feb current record number

fet data index

feb rancden index

foo name work buffer

fek current directors address

feb first deleted directory rointer
fcb rename work area

fck space compression flac

fob sector buffer

iliegal fms function code encountered
the requested file is in use

the file srecified already exists

the srecified file could not be found

frousd
frfuld
frnosr
frendt
frrder
fruter
frurer
frerot
frbofeb
frbadr
frbdry
frdrnr
frtier
frsyuss
frdtix
frfuse
frilfl
frsuse
frsmar
frorna
frofik
frsentx
frerret
froard
frondt
*

exthir:
exttst
extemd
extbes
extsys
exthak
extser
extdat
extba
extdir
extent
extout
*

K

eau
eau
eau
eau
eau
eau
eau
eau
eau
eau
eau
eau
eau
eau
eau
eau
eau
eal
eau
eau
eat
eau
eau
eau
eau

eat
eau
eau
eau
eau
eau
eau
eau
eau
eau
Gah
eau

sac

$05
$06
$07
#68
#09
$0a
$0b

sustem directory error - reboot system
the sustem directory seace is full

ail available disk srace has heen used
read rest end of file

disk file read error

disk file write error

the file or disk is write rrotected!

the file is protected ~ file not deleted
illegal file control bleck srecified
illeeal disk address encountered

an illegal drive rumber was srecified
drives not ready

the file is rrotected - access denied
sustem file status error

fas date index range error

fms inactive - reboot sustem

illecel file srecification

sustem file clase error

sector mar averflow - disk too seamented
nonexistent record number srecified
record munber match error - file damaged
command surtex error ~ reture command
that commend is mot allowed while erinting
wrong hardware configuration

undefined

sbin
ett
somd
rbas
6S
wba
scr
dat
bac
1Gie
vert
Gut
