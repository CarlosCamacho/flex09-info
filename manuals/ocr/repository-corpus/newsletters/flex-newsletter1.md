# Flex Newsletter1

> Source: `newsletters/Flex_Newsletter1.pdf`  
> Method: OCR with deskewing

OCR and media-decoding errors may remain.

FLEX NEWSLETTER NO. 2
February 1979

Copyright (c) 1979 by Technical Systems Consultants, Inc.
P.O. Box 2574, West Lafayette, Indiana 47906

Here's the first edition of the FLEX Newsletter. We've got some helpful
tips on using FLEX, some fixes for FLEX utilities, news on the latest
TSC software, and more.

First of all Tet us tell you about some of our new offerings for the
FLEX operating system. Later in this newsletter there is a reprint of a
recent ad showing most of our new software. The first item listed is a
new version of FLEX for owners of the SWTPc MF-68 disk system and for
Smoke Signal disk system owners. This version, called FLEX 2.0, is
EXACTLY like the version of FLEX SWTPc includes with their 8" DMAF-1
system (called FLEX 1.0) except for the disk driver routines. In order
to avoid confusion, let us reiterate on some nomenclature.

mini FLEX
This is the version which SWTPc includes with the 5" MF-68
disk system. It is located at $7000.

FLEX 1.0
This is the version which SWTPc includes with the 8" DMAF~1
disk system. It is located at $A000.

FLEX 2.0
This is a new version which can be implemented on the MF-68.
It is software equivalent to FLEX 1.0 except for the disk
drivers. It is located at $A000 hex.

The only drawback to FLEX 2.0 besides laying. out another $75.00 is the
fact that the software for mini FLEX will not be compatible with FLEX
2.0. This is, of course, due to the fact that they are located at
different memory addresses. Thus calls to routines in mini FLEX would
have to be changed to the addresses in FLEX 2.0 in order to function.
If you have the source listing of a program which references mini FLEX
on disk, you could edit the source and reassemble. This is the case
with the mini FLEX utilities, for example. You could edit the source,
changing the equates at the beginning of each utility to point to FLEX
2.0 instead of mini FLEX and reassemble. Then load this binary and save
it out in FLEX 2.0 with the SAVE.LOW command.

There will be a utility available to convert text files from mini FLEX
to FLEX 2.0. This is possible because both operating systems can be in
memory at once. Any binary files which do not have jumps or calls to
FLEX can be converted with this utility or can be loaded into memory
from mini FLEX and saved back out under FLEX 2.0. Note that FLEX 2.0
includes the TSC Text Editing System and the TSC Mnemonic Assembler so
there will be no need to upgrade these programs. They do not, however,
include the source listing. It. can be purchased separately at the


---

FLEX Newsletter No. 1 Page 2

normal price as listed in the latest TSC software catalog.

The Sort/Merge package is an extremely powerful tool for use with any
type of data file you wish to have sorted. The short description in the
ad does no justice to the completeness of the package. The 70 page
manual was written with the non-computerist in mind and smoothly guides
the operator through the use of the Sort/Merge package with many
examples.

TSC BASIC is finally getting near! The first version will be a cassette
version and will be available around March Ist. It is part number
AP68-11C and sells for $39.95. There is no source listing included in
this package. It is about 9K in length and VERY fast! In fact, it's
the fastest floating point BASIC for ANY micro. It will be comparable
in command scope to the latest Microsoft 8K BASIC. It includes such
features as six digit floating point math, full transcendental
functions, unlimited string length, IF/THEN/ELSE construct, logical
operators, and two-dimensional arrays (including string arrays}. In all
there are over 50 commands and functions. There will be FLEX versions
available around April ist. The FLEX 1.0 and FLEX 2.0 versions will
have random access file capabilities while the mini FLEX version will
have only sequential. Note that there will be no upgrade policy for
those who purchase the cassette version and then wish to purchase a disk
version. Also in the works is a 6809 version and a business version
which will have 12 digit math capability and extended output formatting
such as is required by business applications.

1) USE OF THE "P" COMMAND

There seems to be much confusion among beginning user's of FLEX
regarding the use of the “P"“ command or about sending data to the line
printer device in general. This section is intended to clear up this
confusion and get you on your way to full use of FLEX's output
versatility.

When FLEX is booted up, ANYTHING which is output is sent to the command
terminal or console. If, for example, you do a “LIST” of some text
file, you will see the contents of that file printed on the terminal.
If you perform an assembly with the TSC Mnemonic Assembler, the output
(if selected) will be sent to the terminal or console. Suppose we
wanted the output of the assembly sent to the printer instead. How
would we go about doing that? It's really very easy. You simply
precede the assemble command with a “P" command. For example, instead
of the command:

ASMB PROG] +BG
You would enter the command:
P ASMB PROG1 +BG

The "P" command simply says to FLEX that anything output during the
following command should go to the printer instead of the terminal.


---

FLEX Newsletter No, 1 Page 3

This works for ANY command. Thus we could "LIST" a file called
"TEXTFILE" and have the result printed on the Tine printer rather than
the CRT or terminal by simply entering the command:

P LIST TEXTFILE

You see how simple it really is? ANYTHING which normally goes to the
“CRT screen through FLEX 1/0 routines (like PUTCHR & GETCHR) can be
routed to the line printer by preceding the command with a "P" command.

There is, of course, a catch. The "P" command requires a couple of
driver routines in order to know how and where to output characters so
that they go to the printer. These driver routines cannot be supplied
by the distributor of FLEX as he has no way of knowing what your printer
requires in the way of drivers nor where it is located in the address
Space. For this reason, you (the user) must supply your own driver
routines. They should be placed in a file called "PRINT.SYS" as
explained in the FLEX User's Manual and Advanced Programmer's Guide.
Usually FLEX is supplied with a sample PRINT.SYS file which has driver
routines for a parallel port on port #7 which will operate a standard
Centronics interface printer (such as the SWTPc PR40 or the Okidata
model 22). As we have received many requests from people who were
unable to develop their own drivers for a serial port, a sample set of
drivers for an ACIA is listed in section 5 of this newsletter.

Now, how does the "P" command perform this magic? It's really quite
simple also. The "P" command simply changes the output character
routine in FLEX from that of your terminal to that of the printer driver
which is supplied in PRINT.SYS. Then it sets the command buffer to
point to the next thing on the command line and continues to read the
command as if it had not even seen the “P" which preceded it.

Now if that was all there was to it, you can see that we would never get
anything printed on the terminal again unless we went back in and
changed the output character routine address back to that of the
terminal. FLEX does that for us, automatically. FLEX always keeps the
address of the terminal output routine at OUTCH2. Everytime a warm
start is executed (usually indicated by the 3 plus signs), the output
character routine address is always reset to the terminal's output
routine. Thus the "P" command will only be in effect during execution
of the command which it preceded.

There is one more trick which can be made use of by a FLEX programmer.
It allows you to send data to BOTH the printer and the terminal during
execution of a particular program or utility. An example of this is in
the TSC Assembler where there are prompts to the user such as "DELETE
EXISTING BINARY (Y/N)?". These should obviously be sent to the terminal
even though the output has been routed to the printer via the "P"
command. This is done by use of the OUTPUT SWITCH flag. If this flag is
set to some non-zero value, anything output via the PUTCHR routine will
be sent to the terminal regardless of whether the "P" command has been
typed or not. If the OUTPUT SWITCH is zero, output will be sent through
the normal OUTCH routine which will be to the printer if the "P" command
was typed. Note again that a warm start will clear this OUTPUT SWITCH
to zero.


---

FLEX Newsletter No. 1 Page 4

One final point to consider. There is nothing special about the "P"
utility itself. It is listed in full in the Advanced Programmer's
Guide. There is no reason a user cannot write another command similar
to the "P" command which would send the output to a paper tape punch,
cassette, or even a second printer. Simply call the new routine "PT",
"CAS", "P2", or whatever you Tike. The new routine will also require a
new file similar to PRINT.SYS which contains the appropriate driver
routines. You would have to call the new driver routine something
different such as "PRINT2.SYS".

2) DRIVE AND EXTENSTON DEFAULTS

Another commonly misunderstood feature of FLEX is that of drive number
and filename extension defaulting. To FLEX, a file specification
consists of three parts, the drive number, the filename, and the
extension. Refer to the FLEX User's Manual for further details on these
specifications. All specifications of files, whether it be in a command
line or within the operation of some program (such as when the TSC
Editor asks you for a filename when you perform a READ from disk) can
have all three of these parts. It is often possible to omit two of
these parts when typing a file specification. These are the drive
number and the extension. Note that these values are still supplied to
FLEX for operation on that file, it's just that they will take on some
default value so that the user doesn't have to type so much. Note that
the filename portion of the file spec must ALWAYS be supplied.

Let’s start with the drive number. If you type "O.NAME.TXT", FLEX will
look on drive #0 for a file named "NAME.TXT". If you just type
"NAME.TXT", a default drive number will be used. This default number
can be one of two values. If the file is specified as a command file
(the first filename given on a command line) the default drive number
will be set to the assigned system drive (see the ASN command
description in FLEX). ANY OTHER file specification without a drive
number will default to the assigned working drive. Thus as an example,

EDIT NAME. TXT

would go to the assigned system drive to get the editor and would go to
the assigned working drive to get the file “NAME.TXT".

Now on to the extension defaults. It is not always necessary to include
the extension in a file specification. If it is omitted, some default
extension will be assumed. The actual extension used as the default can
vary. If the file specification is a command file specification (again,
the first on a command line) the default extension will be ".CMD". Thus
in the edit example given directly above, FLEX would go to the system
drive and look for a file named "EDIT.CMD".

For file specifications other than those which are first on a command
line, you will have to consult the description of the particular command
or program in order to determine what the default extension will be.
For example, the TSC Text Editing System always assumes a default of
".TXT" for files being edited. Thus if you don't specify an extension


---

FLEX Newsletter No. 1 Page 5
it will always use ".TXT". Our most recent example could have been
equivalently entered as:

EDIT NAME
Some other common defaults are:

Command Default Extension

APPEND TXT
LIST TXT
SAVE BIN
ASMB TXT for filel ~ BIN for file2

Note that in the TSC Assembler there can be two files specified on the
command Jine and they have different defaults for the extensions. Some
commands, such as DELETE, don't allow defaults. It is necessary that
you specifically enter an extension when using the DELETE command and
you will be prompted for such if not included.

3) FULL DIRECTORY PROBLEM IN MINI FLEX

There is a problem in mini FLEX (the version supplied with the MF-68
disk system from SWTPc) which does not occur often, but is not too
pleasant when it does. It occurs when you have filled the directory of
a disk (exactly 75 files), then delete one or more of those files, and
then try to write another file to the disk. This will crash the
directory on the disk and thus cause you to lose data. Unfortunately,
there is no simple patch to fix this problem. The best solution js to
just be aware of it and not get into such a situation. If you get a
directory full error, be SURE not to attempt to delete a file. The disk
will be OK to use for reading files, but cannot be used for any other
purpose since trying to write to it will give you a directory full error
and trying to delete a file will give you the fatal opportunity to write
to the disk which will cause the directory to be lost. It's best not to
perform a delete at all. As stated, if you only wish to read from the
disk, there is no problem and the disk could be used. for such purposes
forever. However, to make things safer (so that you don't
unintentionally perform a delete and write) you should copy the files
from the disk to two other disks (so that their directories aren't full)
and then reformat or "NEWDISK" the one with the full directory. If you
don't need all the files on the disk with a full directory, simply copy
those you want to a single other disk and then reformat the filled one.

This problem does not exist in FLEX 1.0 or FLEX 2.0. In fact, the
number of files in these versions is not limited to 75.


---

FLEX Newsletter No. 1 Page 6

4) FIXES FOR BUGS IN FLEX UTILITIES (UV1-6)

Four bugs have been reported in the additional utilities (volumes 1-6)
for the mini FLEX operating system. Two of these are also in the
utilities for the 8" FLEX 1.0. The fixes for these bugs follow.

A) The FIND Utility - Volume 1, Number 1

The find utility does not always perform an FMS close function before
returning to warm start. This can cause problems if using the FIND
utility in an EXEC command. The problem is in both the mini FLEX and 8"
FLEX-1.0 versions. The fixes are not the same in both cases. First for
the mini FLEX version: .

Change the instruction at $01B7 from FIND35 UMP WARMS
to FIND35 JMP ERROR&

For the large disk FLEX 1.0:

Change the instruction at $A17F from JMP WARMS
to JUMP FIND35

Then change the instruction at $A195

from FIND35 JMP WARMS

to FIND35 JSR FMSCLS

followed by JMP WARMS

B) The MAP Utility - Volume 3, Number 1

The mini FLEX version of MAP has a bug which can be fixed by replacing
the routine called "PRTEND” at $01F5 thru $0201 with the following:

PRTEND LDX PREV GET ADDRESS
(DEX DECREMENT IT
‘STX PREV SAVE BACK OUT
LDX = #PREV GET PREVIOUS ADDRESS
JSR OUTHEX OUTPUT IT
INX
JSR OUTHEX
RTS

This change has already been made in the 8" FLEX 1.0 version of MAP.

C) The TEST Utility - Volume 3, Number 6

The TEST Utility in the mini FLEX version has a call to a routine called
QUTADR which is non-existant in mini FLEX. OUTADR is in FLEX 1.0 so the
TEST utility for that DOS is OK. The mini version can be fixed as
follows:



---

FLEX Newsletter No. 1 Page 7

Replace the instruction at $7635 (JSR OUTADR)
with the following instructions

JSR OUTHEX

INX

JSR OUTHEX

D) The PDEL Utility - Volume 5, Number 2

This problem is in both versions of the utilities and the fix is the
same for each:

Change the instruction at $029B in the mini FLEX
version or $A29E in the 8" FLEX 1.0 version
from BEQ DODLRS

to BNE DODLR6

5) "PRINT.SYS" ROUTINES FOR A SERIAL PORT

The following routines may be used as a guide to assembling your own
PRINT.SYS file for a serial port. You should read the instructions in
the FLEX User's Manual and the FLEX Advanced Programmer's Guide to learn
just where to place these routines and in the mini FLEX version where to
place the calling addresses for these routines. Note that the "PCHK"
routine given is not needed for the mini FLEX version.

Before using the routines below, you will have to set up the proper
value for the ACIA output port you wish to use. This is done with an

equate statement. For example to output via an ACIA on port 7 you
should use:

ACIA EQU $801C

The output character routine (OUTCHR or POUT) should look Tike this:

OUTCHR PSH B SAVE B ACC.

OUTCH2 LDA B ACIA GET STATUS
ASR B GET TDR BIT:
ASR B INTO CARRY
BCC QUTCH2 LOOP IF NOT READY
PUL B RESTORE B ACC.
STA A ACIA+1] WRITE OUT THE CHAR.
RTS RETURN

The initialization routine (INIT or PINIT) should Took like:

INIT LDA A #$13 RESET ACIA

STA A ACIA

LDA A #$11 SET 8 BITS & 2 STOP
STA A ACIA

RTS RETURN

If using FLEX 1.0 or FLEX 2.0 you'll need a printer check routine (PCHK)


---

FLEX Newsletter No. 1 Page 8

like this:

PCHK PSH B SAVE B ACC.
LDA B ACIA GET STATUS
ROR B GET TDR BIT INTO
ROR B SIGN POSITION
ROR B
PUL B RESTORE B ACC.
RTS RETURN

Recall that if using mini FLEX you'll have to setup the proper addresses
with statements like:

ORG $0010
FDB INIT SETUP INITIALIZATION ADDR.

ORG $7100
FDB OUTCHR SETUP OUTPUT CHAR. ADDR.

6) BASIC RENUMBER UTILITY by Ron Anderson

It is not our intention to distribute free software through the FLEX
Newsletter. Under certain circumstances we might do so, however, with
user-submitted utilities. That is the case in this issue. Ron Anderson
of Ann Arbor, Michigan, submitted this BASIC Renumber Utility for which
we have seen much interest. We are reprinting it here for FLEX
Newsletter subscribers exactly as Ron sent it to us. Although we have
run the program several times with no problems whatsoever, we make no
guarantees on its operation and will not support technical calls
regarding the utility. Instructions for use are included in the source
listing and as you can see, Ron has done extensive commenting of the
source code.

Ron Anderson, an avid computerist who has written several articles for
Kilobaud magazine, is very much into the use of FLEX. In fact, he is
starting a FLEX User's Group which will be dedicated to distributing
user-submitted programs for essentially the cost of copying and
distribution. According to Ron, there will be about 12 issues per year.
If you are interested in joining this group, write to the following
address for more information:

The FLEX User's Group
Attn: Ron Anderson
3540 Sturbridge Court
Ann Arbor, MI 48105

The assembled source listing for the BASIC Renumbering Utility is
included at the end of this newsletter.


---

Technical Systems Consultants, Inc.

TSC, Technical Systems Consultants, is
the software company for all the newest,
most innovative ideas in computer
software, TSC builds a variety of pro-
grams, packages and games so you can
get down to business or just some fun.

Li

oO UT ge
Can ent

FLEX for SWTPc and SSB

Now owners of Smoke Signal Broad-
casting’s BFD-68 or LFD disk systems
can enjoy ail the power and convenience
of the FLEX disk operating system.
SWTPc MF-68 owners can step up to an
enhanced version of FLEX. The SWTPc
MF-68 comes with a version called “mini
FLEX", while the SWTPc DMAF-1 comes
with “FLEX 1.0". There are three new
versions, all identical to FLEX 1.0 except
for the disk drivers. They are FLEX 1,0
for the SSB LFD, FLEX 2.0 for the SSB
BFD-68 and FLEX 2.0 for the SWTPce
MF-68. The new FLEX’s require 8K of
RAM at location $A000. This means all
FLEX based software can now be run on
a Smoke Signal system.
Some of FLEX's features are:

¢ Simple command structure

* Dynamic file allocation

* Automatic space compression

e Extensive software support
Enhancements to FLEX 1.0 & 2.0:

* Full 32K available to user

« Printer Spooling (requires timer)

* Random Access files

© Input/Output file capability

¢ File protection and dating
More data per disk
Included are an object code disk with
FLEX, the utility command set, the TSC
Text Editing System, and the TSC
Mnemonic Assembler, the FLEX User's
Manual, FLEX Advanced Programmer's
Guide, Text Editor manual, and
Assembler manual (no source listings
included}.
FLEX 1.0 for SSB LFD
FLEX 2.0 for SSB BFD-68
FLEX 2.0 for SWTPc MF-68

$100.00
$ 90.00
$ 75.00

SORT/MERGE Package

This FLEX compatible package allows

any size and type file to be sorted

according to parameters you specify.

Written in 6800 assembly language, it is

extremely fast. Sort parameters may be

supplied in three ways: as part of the

command line, through use of a

“parameter editor”, or through an

existing parameter file. The package is

a full-disk sort/merge meaning that files

too large to fit in memory will be broken

into multiple, temporary work files which

are individually sorted and then merged

into one. The final output file may be

routed to disk, CRT, or printer. Features

include:

¢ Fixed or variable length records

Fixed or variable length fields

Definable record & field terminators

Accepts multiple input files

Up to 20 input or output keys

Sort key up to 250 characters

Ascending or descending keys

Right or left justified keys

Select/exclude capability

Non-ASCII collating sequences

Sorts upper case equal to lower

* Merge-only capability

Includes extensive user’s manual and

object code diskette. No source listing

is included. Specify FLEX 1.0, FLEX 2.0,

or mini FLEX.

AP68-10 6800 Sort/Merge Package $75.00
Manual Only fe. $15.00

ereeeeeeeoe

FLEX Software

TSC plans full support of the FLEX disk
operating system. Several software
packages are already available as listed
below. Watch our ads for FLEX
compiler BASIC available soon!

TSC Text Processing System

SL68-29D with Mini FLEX disk $ 40.00
SL68-29F1 with FLEX 1.0 disk $ 75.00
SL68-29F2 with FLEX 2.0 disk  $ 65.00

TSC 6800 Debug Package

SL68-30D with Mini FLEX disk $ 43.00
SL68-30F1 with FLEX 1.0disk  $ 55.00
SL68-30F2 with FLEX 2.0 disk $ 50,00

36 Additional Disk Utility Commands

UV1-6D with Mini FLEX disk $ 99.95
UV1-6F1 with FLEX 1.0 disk $124.95
UV1-6F2 with FLEX 2.0 disk $119.00

FLEX Newsletter

Published irregularly (about 4 per year)
with latest news, hints, and user
feedback. $4.00 for four issues.

Alt orders should include check or
money order. Add 3% for postage (8%
foreign) and for orders under $10,
please add $1 handling. Send 25¢ fora
complete software catalog.


---

BASIC RENUMBER UTILITY

9620

9020
a922
age4
BA26
go238
ouen
O02E
e0eF
6030

7740
71GF
7ii2
71418
7120
7806
7883
7103
7139
vier

a6
Ba
66

BUFPTR
TABPTR
FSTLIN
INCR
OLOLIN
ASCII
NFLG
PCN
PCD

* SYSTEM EQUATES CFLEA*

FCB
GETCHR
PUTCHR
PSTRNG
SETEXKT
FHS
FMSCLS
WARMS
OUTHES
GETFIL

THEN,

THIS IS AR
OPERATING

INCREMENT Is
ALTERED SIMILARLY AS CESTRED

GOSUB,

FOLLOWING

ORG

RMB
RMB
RME
RMB
RMB
RMB
FCB
FCB
FOR

Emu
ER
EGU
EQu
Eau
Eau
Eau
Eau
Eau
Eau

SYSTEM,

THE COMMAND FORMAT Is:
START AND INCREMENT CEFAULT TO 16.10

CHANGEC AS DESTRECD,
STARTING LINE 168

2-3-79 TSC ASSEMBLER PAGE 4

UTILITY PROGRAM FOR THE SWTPC TSC FLEX
IT WILL RENUMBER A BASIC PROGRAM FILE
WITH THE STARTING LINE NO. ANG THE INCREMENT SPECIFIEG

RENUM, FILENAME, START. INCREMENT

START IS IN LOC #8165 AND #9166. NOW @O1a. MAY BE
Te. SET TO 190 TO DEFAULT TO

IN LOC #016F AND $01CG AND MAY BE

THE DEFAULT EXTENSION IS . BAS. ONLY BASIC FILES WILL
BE RENUM*B

START ANG INC. NEED NOT HAYE LEADING

ZEROES INCLUDED

“THEN”.

*
qT

26

OOo hm WM Fo fo

S774
S740F
e7ide
triie
71a
s7eae
$7803
$7103
$7139
t7 L127

THE FILE TO BE RENUMBERED NEED NOT
HAYE 4 DIGIT LINE NO“S OR 4 DIGIT REF’S FOLLOWING
AND GOTO.
FOLLOWED BY A STATEMENT. BUT WILL CHANGE A LINE NUMBER
RENUM DOES CHECK TO SEE IF

LINE NUMBERS ARE INCREMENTED BEYOND 93999

RENUM VERZ DELETES ALL LEADING ZEROES FROM

LINE NO’S IN THE RENUM‘D FILE. THE ORIGINAL FILE IS
SAVED AS CPILEWAME?. BAK. THE NEW FILE RETAINS THE
ORIGINAL CFILENAME>. BAS

RENUM WILL IGNORE A THEN

BUFFER POINTER

LINE NUMBER TABLE POINTER

FIRST LIWE NUMBER STORAGE
INCREMENT

OLG LINE NUMBER

USED BY HEX ASCII CONVERSION
FLAG TO CONTROL PADDING OF NO’S
PREV. CHAR. WAS NO. IF NOT @
PREY CHAR. WAS DEC. PT

FILE CONTROL BLOCK

GET CHARACTER

PUT CHARACTER

FRINT STRING

SET EXTENSION

FILE MANAGEMENT SYSTEM

CLOSE FILES ON ERROR

FLEX WARMSTART

DUTPUT HEX NUMBER

GET FILE SPEC FROM LINE BUFFER


---

BASIC

?L3F
713C

6188
4190
o1¢2

a1az
9106
a1es
819A
G18B
8120
@10E
@4i1
143
6115
8147
Bi1A
@i4ic
@414F
122
a125
e129
a12A
e12D
a12F
g132
9125
aize
813A
a13c
@13E
e144
a142
@144
B145
8147
6149
8146
@140
@14F
a154
0154
B156
8159
B15B
O15d
@15F
164

RENUMBER UTILITY

ea
83

CE
Ccé
6F
4s
SA
26
CE
cé
Er
E?
Bb
86
CE
BD
CE
BD
26
CE
DF
vF
CE
Bo
27
E6
C1
27
26
DE
16
Ci
2?
20
cé
D7
26
BD
25
rat)
26
C6
OC?
Ccé
E?

61

77
ag
e4

FR
ve
61
ES)
a3
71
a3
7?
7a
77
78
63
BA
2g
7?
°?
78
83
B41
ae
36
Si
fad)

2E
ez
a6
FF
2E
49
aL
1B
aa
ar
FF
2E
3a
aa

4a

40

a7

468
éb
460
a6

4a
40
a6

99

2E

GETHEX Eau
RPTERR EGU

ORG
START BRA
VER Foe

S713F
$7130

#106
BEGIN
3

39-79 TSC ASSEMBLER PAGE 2

GET HEX NUMBER FROM LINE BUFFER
REPORT ERROR

VERSION # OF UTILITY PROGRAM

* ROUTINE TO GET FILE TO BE RENUMBERED FROM
* DISK INTO MEMORY STARTING AT LOCATION

* “BUFFER”

BEGIN LOX
LDA
CLEAR CLR
INS
DEC
BNE
Low
LDA
STA
STA
JSR
DONFIL LDA
LDA
JSF
LD#
JSR
BNE
LOX

—
STA

cLR
READ LDS
JSR
BEG
LDA
CMP
BEG
BRA
CONTIN LDA
TAB
CMP
BER
BRA
CONT4 LDA
STA
BRA
CONT JSF
ecs
TST
BNE
LDA
STA
LDA
STA

B

nom

oom a

#FCE
#8
4,8

CLEAR
#FCB
#1

a.
B18
GETFIL
#3
#FCB
SETERXT
#FCB
FMS
ERROR
#BUFFER
BUFPETR
FCB
#FCB
FMS
CONTIN
1.8

#8
CLOSE
ERROR
BUFPTR

#32E
CONT4
CONTS
#3FF
NFLG
CONT2
NUMBER
CONTL
NFLG
CONTe2
#EFF
NFLG
#S2G

B.%

POINT AT FCB
SET UP CLEAR

CLEARED FILENAME SPACE IN FCR

OPEN FOR READ CODE
ORIVE NUMBER
FILENAME FROM CMD LINE TO FCB

SET EXT. TO . BAS IF NOT GIVEN

60 OPEN FILE

HANDLE ERROR FLAG

POINT AT BUFFER STARTING Loc.
SAVE POINTER

NO ERROR DETECTED

GET ERROR TYPE

Is IT ENG OF FILE?

END OF FILE

ANOTHER ERROR TYPE

HAVE FIRST BYTE OF FILE IN ACCA
PUT IN ACCE FOR TESTING

DECIMAL POINT?

Y. DONT PAG NOS. FOLL. WITH as
NO. CONTINUE TESTS

SET NFLG AS THO PAD ZEROS
-~--HERE ALREADY ABCED

NO MORE TESTS REQ‘D

TEST FOR NUMBER

ALREADY PADDED?
FES, DONE TESTING
SET NFLG

PAD NO. We’S LEADING @°S


---

BASIC

O162
9164
O166
O167
G169
616A
616éC
@16D
GIEF
O174
B174

O176
e172
917A
e170
BA7F
e124
g183
a186
e188

@1SA
6180
a196

g193
Bigé6

S199
6198
6190
BLOF
@1AL
o1Re
G1AZ
@1A4

BLAS
OLAS
@1AA
91iRG
GLAF
61B2
@1B4
GiB?
@1B9
GiBC
@1BE

RENUMBER UTILITY

as
E?
es
EV?
as
A?
6s
DF
20
CF
28

DE
86
A?
CE
86
RA?
BD
26
26

BD
Bo
7E

BD
7E

C1
@E
Ci
2F
6c
39
oD
39

CE
DF
cE
OF
Bo
26
CE
DF
BD
26
CE

6a
6a
68

26
C1
aa
F4

2o
1A
9a
ve
a4
aa
7s
8B
16

74
73
71

v4
Gi

39
a6
2E
g2

OR
26
a4
22
Fi
@3
oa
24
74
82
6a

ee

40

18
93
Bs

3c
t=18)

Ba

Ba

3F

18

SF

18

INA
STA
IN®
STA
INA
CONT2 STA
INA
ST
BRA
CONTL CLR
BRA

a8
a4
8.8
BUFPTE
READ

NFLG
CONTa

* FILE NOW IN BUFFER

CLOSE Loe
LDA
STR
LDA
LOA
STA
BR
BNE
BRA

BUFPTR
HELA
BO. %
#FCE
#4

G. &
FMS
ERROR
GETINE

2-9-7929 TSC ASSEMBLER PAGE 3

STORE NO. AFTER PAD

SAVE BUFFER PTR
GET ANOTHER CHARACTER
CHAR. WAS NOT NO.

GET END OF FILE LOC

MARK END GF FILE

SET UP CLOSE FILE COMMAND

bo IT

HANDLE ERROR

GO GET LINE AND INCREMENT INFO

* ROUTINE FOR ERROR HANGLING

EREATIT JSR
EREX1L JSR
JME

ERROR JSR
JMP

NUMBER CMP
BGT
CMP
BLE
CLo
RTS
NOT SEC
RTS

GETINF LDx
STA
LDS
STA
JSF
BNE
LDA
GETL STA
JSR
BNE
LOH

PSTRNG
FMSCLs
WARMS

RPTERR
EREX4

#E39
NOT
#$2E
NOT

#BUFFER
BUFPTR
#TABLE
TABPTR
GETHEX
GETi
#216
FSTLIN
GETHEX
GETé
#710

PRINT ERROR MESSAGE
CLOSE FILES
EXIT TO bos

SAVE POINTER

POINT AT NUMBER TABLE START
SAYE POINTER

GET FIRST LINE NO

VALID IF NOT ZERO

CEFAULT FIRST LINE NUMBER
HEX LINE NUMBER


---

BASIC

@1CL

6103
6105
@1C38
@1CB
61CD
G1ICF
@1D4
@1LDS
6405
@1D?7
g1ips
6109
@1DA
6108
810b
G1EB
G@LE2
@1E5
GLE
a2e9
822A
B2aC
@2BE
G@20F
O2i41
a243
0215
GeL17
9219
G21e8
6210
O2iF
B224

B222
6225
B226
e229
@2e2R
B22
e220
S220
Q22E
G22F
a232
Ges2

RENUMBER UTILITY @-9-79 TSC ASSEMBLER PAGE 4

DF

DE
BD
BD
DF
DE
Dé
E?
bé
E?
a8
68
ee
638
DF
8c
26
CE
7vE
5a
o4
DE
R6é
g8
81
26
AG
S41
27
20
DE
86
AT
2a

Cé
37
BD
48
48
48
43
16
a8
BD
1B
33

26

29

22
aA BG
2s

@1E
a4

wo
Dw

r=43)
aa

aD
F9
ae
4A
a2
RA
22
FF
aa
25

O14

62 43

B2 43

GETé STX INCR INCRENEMT

* NOW SEARCH FILE FOR OLE LINE NUMBERS. THE FIRST IS
* THE FIRST NUM. ASCII CHARACTERS IN BUFFER. THE REST
* FOLLOW CARRIAGE RETURN ¢#@D>

LINNO LOX BUFPTR FOINT AT FIRST LINE NUMBER
LINNOL JSR SETPTR ADJ PTR TO 4TH NO. FROM RT.
JSF ASHES GO CONVERT ASCII TO HEX
STA BUFPTR SAYE POINTER FOR FURTHER SEARCH
LOX TABPTR POINT AT FIRST LOC. IN TABLE
LOA B OLDLIN HAS HEX LINE NO. FROM ASHES
STA B OH PUT IN TABLE
LOR B OLDLIN+L LOW ORDER DIGITS
STA B 4.8
THA
INK SKIP @ LOCS. FOR NEW NUMBER
INS
INS
STH TABPTR SAVE POINTER
CPRH #OUFFER
BNE LINNGE
LOX #hsGe CTABLE TOG SMALL FOR PROGRAM
JMe EREXIT
MNSGe FCC “PROGRAM TOO LONG - 384 LINES MAK. ¢
Fre 4
LINNG2 LEX BUFPTR CONT. SERRCH FOR MEXT LINE NO.
SEARCH LOR A 8. #
INH
CMP A #00 IS IT CARRIAGE RETURN?
BNE SEARCH NO. GET NEXT CHAR
LOR A Os VES. TEST NEXT CHAR
che A HEA SEE IF END OF FILE
BEQ ENDFIL
BRA LINNOL NOT EQF, FOUND NEXT LINE NO
ENGFIL LO&x TRABPTR EOF. MARK END OF NUMBER TABLE
LOA A #3FF
STA A a4 EOF HARK

BRA NEWNUTS

* ASCILT TO HEX SUBROUTINES

ASHES LOR B #1 BYTE COUNTER
PSH B SAVE IT
ASHEXL JSR CONYT
ASL A GOT FIRST DIGIT
ASL A SHIFT IT LEFT TO PACK
ASL A
ASL A
TAB SAVE IT IN ACCB
IN« POINT AT SECOND ASCII DIGIT
JSR CONYT
AER PUT TWO DIGITS TOGETHER

PUL 6 GET BYTE COUNTER


---

BASIC RENUMBER UTILITY 2-93-79 TSC ASSEMBLER PAGE Ss

B2e24 SE TST 8 HAVE WE GONE RROUND BEFORE?
@235 27 er BER Low IF $0. LOW ORDER DIGITS
G237 97 29 STA A OLOGLIN HIGH ORDER DIGITS CONVERTED SAVE
6239 SA CEC 6B COUNT

G23AR 37 PSH B SAVE AGAIN

8238 68 INA

@23C 20 ES BRA RSHEXL GET LOW ORDER DIGITS

G23E 97 29 LOW STA A OLOLIN+L THIS TIME. LOW ORDER

0246 88 INK

6241 6c CLO

G242 39 RTS

243 AG GA CONYT LOA A A ASCII CHARACTER

@245 84 GF AND A #¢@F THROW RWAY 7 3¢

e247 39 RTS

* NOW HAVE TABLE OF ALL OLD LINE NUMBERS
* NEXT FILL THE SPACES IN THE TABLE WITH THE NEW
* ONES CALCULATED FROM FSTLIN AND INCR

Be4¢8 CE 44 BB NEWNUM LDH #TABLE

B24P 68 MEWNUD INK

G24C o8 INK POINT AT FIRST NEW LINE NO. LOC
O24D DE 24 LDA B FSTLIN HIGH ORO. TWO DIG. IN PACKED BCD
Be4F EF aa STA B a. %

G251 a8 INK

@252@ D6 25 LOA B FSTLINtL

0254 E7 86 STA B Gx

g256 ag INS NOW POINTS AT SEC. LIN. OLD NO
B257 E6 2a LDR B 6%

259 Ci FF CMP B #4FF END OF TABLE?

9e5B eae? 37 BEQ CHNUM IF sd, EXIT TO CHANGE ROUTINE
Be5p 96 25 LOA A FSTLIN+L NOT DONE. CALC. NEXT NO

@25F 9B 27 : ADC A INCR+L ADD LOW ORDER DIGITS

O261 419 GAA DECIMAL ADJUST

B262 97 25 STA A FSTLIN+L SAVE LOW ORDER

B264 24 ES BCC NEWNUL DONE IF NO CARRY

Q266 96 24 LDA A FSTLIN

62628 SB 1 ADD A #41 CARRY 1

G26A 19 CAR HIGH ORD. DIG. DEC. ADJUST
S26B 25 86 bcs OFLO

BRED 97 24 STR A FSTLIN SAVE HIGH ORGER

@2é6rF E& BG LDA B G4

9271 28 DS BRA NEWNUS CONT. GEN, NEW NO. “S IN TABLE
8273 CE 82 79 OFLO LOA MSGi

6276 7E 64 8A JMP EREAIT

B2?79 4E MSG1 FCC “NEW LINE NO’S EXCEED 9999, 7

Ba93 G4 FCB 4

* NOM REPLACE OLO LINE NO*S WITH NEW

8294 CE @4 BB CHNUM LDx #TABLE
G29? DF 22 STA TREPTR SET UP POINTER FOR TABLE
299 CE BA BA LDS #BUPFER


---

BASIC RENUMBER UTILITY : @-9-79 TSC ASSEMBLER PAGE 6

@29C DF 26 CHNUML STx BUFPTR SET UP POINTER FOR BUFFER
B929E DE 22 LDA TABPTR

@2AB BD 92 CD JSR HEAS CONVERT FIRST NEW NO. TO ASCIT
@2AZ DF 22 STA TABFTR SAVE POINTER FOR NEXT NUMBER
G2A5 DE 26 LBS BUFPTR

@eAr BO @3.Ce JSR SETPTR PT AT 4TH OIG FRM RT

B2AR D& 2A LOR B& ASCII PUT MEW NUMBER IN BUFFER
@2eAC Er aoa STA B 81%

B2RE 88 IMs

B2AF D6 2B LOR B ASCII+1

B2B1 E7 OB STA B @.%

G2B2 68 IN#

B2e4 06 2c LOA B ASCIIT+E

B2B6 E? 68 STA B Gx

B2Be 88 INK

B2e9 Dé 2b LOA B ASCII+3

BeEB EF ea STA BO Gx

G2BD 98 INA

O2BE E6 46 CHNUME LDA EB & #

62Ce 88 INS

@2C1 Ci BD CrP B ##00 LOOK FOR ENO OF LINE

G2C3 26 FS BNE CHALIMNG KEEP LOOKING

9205 £6 a6 LOA BO Ga

Bec? Ci 1A CMP B #417 SEE IF END OF FILE

B2C9 @7 2c BEG CHREF IF SO GO CHANGE REFERENCES
@2CB 2a CF BRA CHNUMA TF NOT GO CHANGE MORE NUMBERS

* HEX TO ASCIT CONVERSION SUBROUTINE

Beck C6 a1 HEAS LOA BO #1 COUNTER

Gecr 438 INK

G2be as HEAS1 INK NOW POINTING AT NEW NUMBER
geb1 AG 8S LDR A Bx GET FIRST DIGITS

203 84 Fa AND A #3FR MASK OFF LOW ORDER

geps 44 LSE A SHIFT HI ORDER TQ RIGHT
S2ed6 44 LSR A

Seer 44 LSR A

@2bpe 44 LSE A

S209 SA 38 ORA A ##30 MAKE IT ASCII

G2DeB SE TST B COUNTER

Beoc ee? aD BED HEAS2

G2DE 97 2A STA A ASCIT FIRST DIGIT

B2EB AG Ba LOR A Br GET PAIR AGAIN

G2E2 84 OF AMD A #S0F THIS TIME MASK OFF HI ORD
G@2E4 BA 3a ORA A #336 MAKE IT ASCII

G2E6 Or 2B STA A ASCIT+1L SAVE SECOND DIGIT

@ZES SA DEC & COUNT

@2E9 20 ES BRA HEASL 00 SEC. DIGIT PAIR

G@2EB 97 2C HEAS2 STA A ASCIT+2 THIRO OTGIT

G2ED AG OA LOR A a.

G2EF 84 OF ANG RO #$8F

BeF1 SA 3a ORA A ##26 MASK

@2F3 97 2b STA A ASCIT+3 LAST DIGIT

B2eF5 68 INS


---

BASIC

B2F6

gerr
B2FA
@eFc
G2FE
G2FF
e304
8383
a206
a308
Q3GR
63eC
O@3GE
6218
O3414
0313
@345
G317
B312
631A
B31C
Q31E
@34aF
O2eL
G323
0325
e327
6329
6328
63e2C
O32E
Q3308
a332
a333
G335
@2337
B339
O33B
G33C
G33E
6348
6342
6342
6345
B34?
6349
B34A
B34C

RENUMBER UTILITY

39

CE
DF
AG
98
61
26
7E
61
27
81
26
AG
a8
B41
26
Ré
as
e1
26
AG
68
e1
26
ea
81
26
AG
a8
oi
26
AG
ao
et
a6
28
AG
6S
e414
a6
AG
a3
61
26
A6
as
81
e6

BA BG

2a
aa

1A
o3
@3
S4
2F
47
EE
a8

4F
E?
aa

54
a9
aa

4F
be
29
53
Da
aa

55
Be

42
cs
45
ae

48
ec
a0

45
BS
aa

4E
RE

Fe

#* 4%

CHREF

CHREFL

CHREIS

THENS

RTS

FIND GOTO,
THEN MATCH NUMBER TO OLD NUMBER IN TABLE AND REPLACE
WITH NEW NUMBER NEXT IN TABLE,

LoS
STX
LDA
INK
CHP
BNE
JMP
CMP
BEQ
CHP
BNE
LDA
INS
CMP
BNE
LDA
INK
CMe
BNE
LOA
INH
CMP
BNE
BRA
CMP
BNE
LDA
INS
CMF
BNE
LOR
INA
CrP
BNE
BRA
LOA
IN
CMP
BNE
LOA
Ine
CMP
BNE
LDA
INK
CMP
BNE

NOW CHANGE REFERENCES

2-9-7939 TSC ASSEMBLER PAGE ?

GOSUB, AND THEN FOLLOWED BY LINE NUMBER

#BUFFER
BUFPTR
Gk

#31/A
CHRELS
WRITE
#°T
THENS
#°G
CHREFL
aw

#70
CHREFL
a,%

#°T
SUBSER
G,%

#70
CHREF 2
CHREFE
#°S
CHREF 4
Gm

#°U
CHREF 2
Ba

#°E
CHREFL
CHREF2
a,x

#°H
CHREF4
a8

#°E
CHREF 4.
aa

#°N
CHREFA

SET UP TO SCAN BUFFER
GET CHARACTER

EQr

CONE FIXING REFERENCES
It’s AT. SEE IF “THEN”

NOT “T’ MAYBE “G’
IF NO MATCH START AGAIN

G MATCHED, SEE IF “O° NEAT

ETC.
IF NOT “GOTO” MAYBE “GOSUB”

IjT*s A “GoTO’

IT’S A GOSUB

INK


---

BASIC

O34E
9350
@351
e353
8255
a35é
a3538
935A
O35C
635F
9362
azed
O36?
6369
B36B
G360
B36F
gare
B375
aare
6378
G379
837A
@37B
B270
8288
a382
a3e5
8287
938A
638C
G38F
9392
B294
8396
6398
a23A
a2gc
B39D
@29E
B39F
G3AB
B3R2
Q@3BF
@3Ca
G2C1
B2C3
Q3C6
B3C3
B3C9
@3CR
83CB
B2cc
S3co

RENUMBER UTILITY

AS
a3
B1
e7
6g
84
81
26
BD
BD
DF
CE
OF
A6
81
26
CE
Bo
DE
69
69
ag
a9
AG
BD
AG
BD
AG
BD
Ré
Bo
rE
94
26
R6
OL
27
as
68
B83
88
2g
52
a4
63
EG
=i)
24
ag
a9
a9
B9
39g
BD

oa

2a
FS

Fa
30
AG
a3
a2
2a
ad
22
88
FF
23
a3
a
2a

3)
v1
QL
re
ae
74.
a3
P44
61
23
a6
O61
29
341

Cr

6B
a1
Fe

be

ca
23

22)

Re
13

42

12

1é

12

8b

co

CHREFe

CHREF2

FING

FINGAL

NEAT

MsG

SETPTR

SETPTL

REPLAC

LOA
IN
CMP

' BEG

DES
AND
CMP
BNE
JSR
JSR
STH
LDA
STA
LOA
CMP
BNE
LOR
JSR
LEA
BEX
GER
DEX
DEN
LOA
JSR
LOA
JSR
LOA
ISR
LDA
JSR
IMP
CMP
BNE
LDA
CMP
BEQ
THs
INA
INK
IN}
BRR
FCC
FCB
INS
LOA
ISR
BCC
DEX
DEX
DEX
DEA
RTS
JSR

2-93-79 TSC ASSEMBLER FAGE 3

@.%

#28
CHREF2

#EFQ
#570
CHREF 4
SETPTR
ASHEX
BUFPTR
#TRELE
TRBPTR
a. x
#2FF
FINDA
€MSG
PSTENG
BUFPTR

GK
PUTCHR
dak
PUTCHR
2.%
PUTCHR
3.8
PUTCHR
ERERL
OLDLIN
NEXT
1s
OLBLIN+L
REPLAC

FIND

WHAT’S NEXT CHAR

IF SPRCE IGNORE IT
IGNORE SPACES

BACK UF

SEE IF iT°S ASCII NUNBER

NO. CONTINUE SEARCH

YES. GET HEX EQUIV. FOR MATCH
SAVE POINTER

SET UP TABLE SEARCH

FINO MATCH

END OF TABLE ?

NO. TRY AGAIN

TABLE END ERROR

PRINT MESSAGE

GET REF. LINE NO. NOT FOUND
BACK UP POINTER

OUT. LINE NO. AFTER MESSAGE

REF PUT HERE BY ASHEX
GCOESNT MATCH

MATCH. REPLACE OLD WITH NEW

LOOK AT NEXT OLD NO

“REFERENCED LINE NOT FOUND, # ¢

4

B,%
NUMBER
SETPTR
NOW

HERS

BACK UP 4 GIGITS

CONY. MEM TO ASCII


---

B30
O3be2
4303
@304
8305
G3D6
a3b9
630A
@30bB
@3Db
G3DF
63Ea
B3E2
G@3E4
BZE5
aZE?
G3ZE9
@3EA
B3EC
B3ED
@3EF
@3F1
B3F4

O3F7
O3FA
G3FC
G3FE
6468
G4a2
6485
6489
@4GAR
84ac
G4GE
646F
O411
64123
O415
b416
6418
e419
9418
@41D
O441F
6422
6425
6427
a42R
O42C
O42E
6430

RENUMBER UTILITY

DE
ag
99
ag
89
Bé
E?
a8
bé
E7
a8
Dé
E?
as
Dé
E?
ee
A6
68
81
26
vE
7E

CE
cé
E?
Cé
CE
DF
CE
BF
DE
Ré
ae
OF
DE
Ar
a3
OF
SA
26
26
A?
CE
BD
26
CE
86
A?
cé
E?

2a

2A
ao

2B
a6

ec
aa

20
a6

a0

ec
a3
a3
62

CF
@D
oa
aA
e?
2g
??
26
es
68

ee
26
a@

a6

EF
4B
ea
?7
78
4F
77
53
@E
ee
ae

4E
FC

4a

44

75

40
a6

40

CH1

LDX
CEX
DES
DEX
DEX
LOA
STA
INX
LGA
STA
ING
LDR
STA
INX
LOA
STA
Ink
LDA
INK
CMP
BNE
JMP
JMP

BUFPTR

ASCIT
Be

ASCII+1
G4
ASCIT+e
a.a
ASCII+3
B. #
a.%

#°,
CHL
CHREF2
CHREFL

2-93-79 TSC ASSEMBLER PAGE

SACK UP TO START GF OLD REF
REPLACE WITH NEW NUMBER

LOOK FOR MORE REFS ON N GOTO
IF SO. CHANGE NEXT REF. TOO

IF NOT. FIND NEXT REF

* NOW DONE CHANGING REFERENCES. SAVE RENUMBERED FILE

WRITE

MOFILE

LDX
LDA
STR
LEA
LDS
ST
LOX
ST#
LOY
LOA
INS
STH
LOK
STR
INS
STX
DEC
BNE
LOA
STA
LOX
JSR
BNE
LOX
LDA
STA
LOA
STA

moo

mw DD

#FCB
#00
a4

#16
#FCB+4
OLDLIN
#FCB+53
INCR
OLDLIN
aX

OLOLIN
INCR
a,

INCR

MOFITLE
#°K
O.%
#FCE
FMS
ERRORL
#FCB
#°S
14.%
#2

Gx

RENAME CODE

SET UP MOVE TO RENAME BUFFER
START OF NAME IN FCB

USE AS XTEMP FROM

USE AS XTENP Ta

CHANGE EXT FROM BRS TO BAK

RENAME ORIGINAL FILE

SET UP NAME FOR NEW FILE

OPEN FOR WRITE CODE


---

BASIC

8432
6425
6437
643A
6430
Q43F
6442
4445
a442
9448
8446
6440
G44F
e451
a454
6456
e453
645A
$45D
G45F
9462
B464
O466
o468
846A
B46B
O46E
6479
4472
B474
0476
84793
8470
B47E
8438
6482
6484
6456
a4e9
9488
B48E
8498
6493
6495
a4qa3
a498
@49D
G49F
@4At
B4A4
64R6
B4A8
@4AB
B4AD

RENUMBER

BD
26
?F
CE
DF
7F
7F
TF
DE
es
DF
Ae
ES
Bo
25
g4
26
7D
26
7D
26
cé
D7?
28
46
BD
25
cé
Dr?
26
7E
?F
S41
26
cé
D7
20
7F
26
7F
20
7D
26
CE
BD
26
81
26
cE
86
A?
BD
27
7E

78
SF
?7
aA
28
212)
98
ae
228

20
ae
a1
a4
3F
2a
34
aa
34
ae
Za
FF
2
ae

Bs
a3
FF
2F
be
841
aa
2E
6
FF
28
ce
aa
BD
aa
as
aa
D5
?7
73
bs
1A
ce
77
a4
88
72
ao
74

96

408
AF

2F

2E
30

99

eF

30

93
2F

3a

2E

2E

UTILITY

WRLOP

TSTNUM

SETPCN

ERRORL
CLRPCN

CLRDPT
CNF
TSTNFL

WRLOPE

BONWR

JSR
BNE
CLR
LDS
STA
CLR
CLR
CLR
LE
IN®
STS
LDA
LDA
JISk
BCS
CMP
BNE
TST
BNE
TST
BNE
LDA
STA
BRA
TRAE
JSR
Bcs
LDA
STA
BRA
JMP
CLR
CMP
BNE
LOR
STA
BRA
CLR
BRA
CLR
BRA
TST
BNE
LDX
JSR
BNE
CMP
BHE
LDx
LGA
STA
ISR
BER
IMF

FMS
ERRORL
FCe

@-9-79 TSC ASSEMBLER PAGE 14

od IT

#BUFFER~-21 FOINT AT START OF FILE

BUFPTR
PCN
NFLG
PCD
BUFPTR

BUFPTR
aA
1.4

HUMBER

WRLOP2
##20
CNF
PCN
TSTNFL
PCD
WRLOP2
#$FF
NFLG
SETPCN

NUMBER
CLRPCN
#$FF
PCN
WRLOP
ERROR
PCN
a.
CLRDPT
aSFF
PCD
WRLOP
PCD
WRLOP
NFLG
WRLOPE@
NFLG
TSTNUM
#FCR
FMS
ERRORS
#5141
TSTNUM
#FCB
#4

B. >
EMS
DONIR
WARMS

FLGS USED TO STRIP LEADING a’s
~--ZEROS BUT LEAVE N=a,
~~TRND €@>. ETC

GET CHARACTER TO WRITE
FREVIEWN NEAT CHAR.

Is IT A NUMBER

NO. WRITE PRESENT ONE
PRESENT CHAR. ZERO?

NO. CLR NFLG

PREY CHAR. A NUMBER?

VES

WAS PREY. CHAR. A GEC. PT. 7
NO. WRITE IT

“% SET NMFLG SO DON’T STRIP
~~-ZERO’S AFTER DB. PT

IF WE GOT HERE CHAR. IS NO
SET UP TEST FOR NUMBER

IF Cur. CHAR. IS NO
wwe SET PCN

GET RNOTHER CHARACTER
JMP FOR TOO LONG BRA

Is IT BEC PT.
NO. CLEAR FLAG
VY SET FLG FOR NEXT CHAR.

GET NEXT CHAR
CHAR, NOT AG. PT
GET NEXT CHAR

GO WRITE CHAR

SEE IF NUMBER
POINT AT FCB
WRITE CHARACTER

END OF FILE?
IF NOT CONTINUE WRITING

SET UP CLOSE FILE CODE

NO ERROR
EXIT PROGRAM


---

BASIC RENUMBER UTILITY

6489

BRED

GRABS

* DEFINE TABLE AND BUFFER START ADORESSES

TABLE RMB 1

* TABLE BIG ENOUGH FOR 384 LINE PROGRAM
ORG TRABLE+2606

BUFFER RMB 4
END START

NO ERRORCS) DETECTED

SYMBOL TABLE:

ASCII
BUFPTR
CHRELS
CLEAR
CONTL
CONYT
EREXIT
FINGAL
GET2
HERS
LINNOL
MSG1
NFLG
OUTHES
READ
SETPCN
TABLE
VER

@e2R
a8ea
6306
6108
b1724
O242
a1s8A
6392
6101
G2eco
g1cs
B279
SB2E
7139
9132
6476
o4Ba
6102

ASHEX 0223 ASHES 6226 BEGIN 9183 SUFFER
CH41 O3F4 CHNUM. 294 CHNUMS B29C CHNUM2
CHREF @2F? CHREFA B2FC CHREF2 @34E CHREFS
CLOSE 6176 CLROPT 6486 CLRPCN 8479 CNF
CONTe2 416A CONT3 @454 CONT4 G148 CONTIN
DONFIL @14A CONWR 84AD ENDFIL 0218 EREX4.
ERROR 6193 ERROR 0476 FCe 7748 FIND
FMS 7886 FMSCLS eas FSTLIN @624 GET1
GETCHR 710F GETFIL 7127 GETHEX ?713F GETINF
HEASi G2eDa HEAS2 82Ee INCR anes LINNO
LINNO2 620A LOW @23E MOFILE 040A MSG
MSG2 B1E2 NEWNUL B24 NEWNUM @242 NEXT
NOT G1A3 NUMBER 8199 OFLO G2r3 OLDLIN
PCD 6920 PCN @62F PSTRNG 74112 PUTCHR
REPLAC @3CD RPTERR 7430 SEARCH 92@C SETERT
SETPT4 @ace SETPTR 9300 START 9108 SUBSER
TABPTR 6822 THENS 8339 TSTNFL 6496 TSTNUM
WARMS 7103 WRITE @3F7 WRLOP M449 WRLOP2

2-9-79 TSC ASSEMBLER PAGE

OABG
G@2BE
@255
8438
a142
aiep
@369
GLB?
@1A5
@1C3
@3R2
o29C
eo238
7iie2
iad
Q325
@46A
8435

aa


---

TECHNICAL SYSTEMS
CONSULTANTS, INC.

PO. BOX 2574 WEST LAFAYETTE, INDIANA 47906

wy Michael Holley

Lynes Inc.
= 4520 148th Avenue, N.E.
S Rédmond; WA 98052
