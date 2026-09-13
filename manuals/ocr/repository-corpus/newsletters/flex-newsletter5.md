# Flex Newsletter5

> Source: `newsletters/Flex_Newsletter5.pdf`  
> Method: OCR with deskewing

OCR and media-decoding errors may remain.

FLEX™ NEWSLETTER NO. 5
September 1981

Copyright (c) 1981 by Technical Systems Consultants, Inc.
P.O. Box 2570, West Lafayette, Indiana 47906

Here's issue number 5! We are quite late with this issue, but we've got
lots of good material for you. . Thanks for your patience. It might be
well to remind you to check the number in the upper right-hand corner of
the mailing label on this newsletter. That number is the last issue
number you will receive under your current subscription. If it is a
"5", you will have to re-subscribe in order to continue receiving the
FLEX Newsletter. No subscription renewal notices will be mailed.

1) FLEX™ News

Our base of FLEX users continues to grow.e We have experienced
phenomenal sales of FLEX and related software outside the U.S. in the
past several months. Several of our foreign dealers are really pushing
FLEX. SMT of France licensed 6800 FLEX quite some time ago for a
personal computer system they were developing called the "Goupil". They
recently started delivery of the system and sent us some copies of their
sales literature. They have a broad range of configurations ranging
from a small cassette based system to a 20 Megabyte hard disk system.
Another new licensee of 6809 FLEX is Adtek of Japan. They manufacture
and distribute a 6800 and 6809 system aimed primarily at industry and
system development. They have translated the FLEX manual set into
Japanese.

Speaking of Japan, we see a large potential market there for the 68XX
family of microprocessors. Many of you are probably already aware of
the Hitachi MB-6890 personal computer based on the 6809 which is already
being marketed there. Fujitsu is readying a 6809 based personal
computer called the Micro 8. Both these systems have color graphics
capabilities. Neither are marketed in the U.S. at this time, but the
possibilities for such are very strong. The FLEX Operating System will
most likely be available for both these machines.

Another version of 6809 FLEX will be made available soon to users of the
SWTPc S/09 system who have their hardware setup to run UniFLEX.
Currently, those users must power the system down, remove the UniBUG
ROM, insert an S-BUG ROM, and reconfigure the DMF-2 disk controller
card. The new FLEX will boot directly on the UniFLEX hardware
configuration. Details will be sent to UniFLEX licensees.


---

FLEX Newsletter No. 5

2) New Products

Two new products to announce this time: 6809 Pascal and a 68000 Cross
Assembler which runs under 6809 FLEX. For further information, see the
descriptions printed at the end of this newstetter. Both are available
now, on either 8 or 5 inch disks. One point should be made regarding
Pascal on 5 inch disks. The compiler is very large and consequently
must be supplied on two single-sided, single-density diskettes. If your
system supports double-sided, double-density, or double track density
diskettes, you can simply copy the programs over to a higher density
disk and have no problems. If you are running single-sided,
single-density only, there are some special considerations. First, you
will have to have two drives. Second, the programs which comprise the
compiler portion of the Pascal almost completely fill a single-sided,
single-density disk. This implies that to perform a compilation, you
must place your source file on a disk in drive 1, remove your normal
system disk from drive 0, and insert the Pascal compile disk, before
typing the compile command. When the compilation is complete, you must
switch back to your system disk in order to run the program you just
compiled. Remember, these considerations are not a problem on 8 inch
disks or on higher density 5 inch disks.

Three other 6809 FLEX software packages are nearing completion and
should be available in the coming two or three months. First is a 6809
Relocating Assembler and Linking Loader package. This is a product we
have been lacking for a long time, but will soon have. Second is a
Fortran 77 compiler. This project has been “under wraps" for quite a
while, but we now feel it's far enough along to let you know about it.
This is an ANSI Fortran 77 compiler and will be available for FLEX and
UniFLEX. The third product forthcoming is our C Programming Language
compiler. This compiler has been delayed several times, but has been
given high priority of Tate. We'll let you know when these products are
ready to go.

3) UniFLEX™ News

We know this newsletter is called the “FLEX Newsletter", but many of you
subscribers are either current or potential UniFLEX users and are
interested in its status. For those of you who don't know, UniFLEX is
our multi-user, multi-tasking operating system. The 6809 version of
UniFLEX has been in the field for a full year now and it is doing
beautifully. We must admit there were a few bugs in the early versions,
as in any operating system of this complexity, but these have all been
repaired and the system now seems to be solid as a rock. We recently
introduced a version which operates on all Gimix hardware (including
their new DMA disk controller). The previous version was/is for the
SWTPe S/09 system, of course. Our line of Support software now
includes: BASIC, BASIC Precompiler, Pascal, Text Processor, Sort/Merge,
an’ a 68000 Cross Assembler. Soon to come is an Enhanced Printer
Spooler Package. The new products coming for FLEX (Relocating
Assembler, Linking Loader, Fortran 77, and C) will also be available

-2-


---

FLEX Newsletter No. 5

under UniFLEX.

We are very proud of the UniFLEX package. Very few 16-bit micro
operating systems are as good, and you won't find any 8-bit operating
system that is a match for UniFLEX. If you read any computer magazines,
you have undoubtedly seen a lot of excitement over the UNIX™ (trademark
of Bell Labs) operating system and the various versions of it (such as
Microsoft's XENIX™). Well, 6809 UniFLEX is almost identical to that
system, is available now, and runs on Tess expensive 8-bit hardware.
And we dare you to find an operating system with the features of UniFLEX
that even comes close to it in cost. OK... enough bragging. We'll
leave it up to you to see for yourself.

4) Current Versions

Due to the high demand for publication of current software version
numbers, we'll probably make this a regular section in the FLEX
Newsletter. Our update policy for FLEX software is as follows: If you
have owned a package for under two months an update is free. Beyond two
months there is a $10.00 updating fee. To obtain an update you must
supply proof of purchase and return the original disk, or supply proof
of purchase and an additional $10.00 for us to supply a new disk. The
following version numbers are current as of September 1, 1981.

Program Name 6809 Version 6800 Version
6809 Pascal 3 -
Extended BASIC 19 7
Extended BASIC Precompiler 4 2
BASIC 15 13
BASIC Precompiter 3 2
Text Editing System 2 n/a
Assembler 2 n/a
Text Processing System 4 n/a
Sort/Merge 3 3
Debug 17 n/a
6809 Cross Assembler - 2
68000 Cross Assembler 1 -

5) FLEX Based Products from Other Firms

We love to see outside support of the FLEX Disk Operating System.
That's what makes it such a useful system. It is impossible for
Technical Systems Consultants Inc. to write all the software necessary
for any application. We provide all the systems level tools that we
can, but must rely on other firms to publish application software. One
such firm is selling a whole line of FLEX application software. If you
haven't heard of them, you haven't been paying attention to the 68XX
industry. The company its called "Frank Hogg Laboratory, Inc." and
specializes strictly in support software for the 68XX family of

73-


---

FLEX Newsletter No. 5

processors, mostly under FLEX. Their lead product is a data base
management system that is called "Dataman". It is written in 6800 or
6809 Extended BASIC under FLEX. An add-on package, “Datarand", allows
the system to access the database randomly, providing much faster access
to large databases. Frank Hogg Laboratory is also selling a 6809 Pascal
compiler from Dynasoft, a FLEX compatible FORTH called "X-FORTH", a job
control program, disassembler, cross assemblers, extended utilities, and
lots more. Most programs include source code, and this outfit is
dedicated to providing execellent support to its customers. You can
check them out at:

Frank Hogg Laboratory, Inc.
130 Midtown Plaza

Syracuse, NY 13210

Phone: (315) 474-7856

6) FLEX™ Tips

Here's a quick tip and some information that may save you some time.
A) Supplying Parameters on MON Command Line

Often it may be desirable to supply some parameters on the command
Tine with the "MON" command such that even though you had exited
FLEX to your system's ROM monitor, the parameters would still be
available in the input buffer. This can certainly be done and two
specific examples will demonstrate just how.

First, let's assume the user wished to run the assembler, but
wanted to try a patch in it before it ran. Of course there are
many ways to do this, but most would require you to write a
modified assembler copy to the disk and run it. In our case, we
don't want to have to write a modified copy to the disk (this is
the only time we'll run this patched assembler). The ideal
situation would be to load the assembler into memory, exit FLEX
with the "MON" command, make the necessary patches to the
assembler code in memory with the system monitor, and then jump to
the starting location in the assembler. There is just one problem
with this procedure: the assembler will try to get the filename to
be assembled and options from the command line, and they won't be
there. The solution? It's simple. When you type the "MON"
command to exit FLEX, also type the necessary parameters on that
command as if you had typed "ASMB" instead of "MON". For example,
if the file to be assembled was called “COPIER" and we wanted no
listing or symbol table, the command line typed to exit FLEX
before patching the assembler might look like:

++4+MON COPIER +LS

After patching the assembler and then jumping to its starting
location the assembler would look for the filename and options in

~4.


---

B)

FLEX Newsletter No. 5

the FLEX input buffer and sure enough, they will be there!

Another common case arises where a user wishes to copy a file from
one disk to another but does not have the COPY command resident on
either disk. Now the solution here is a little tricky, but can be
used effectively. Let's assume disk A has a file called
"INVNTRY.DAT" which we wish to copy to disk B. Further assume
that "INVNTRY.DAT" is so large that it uses every available sector
on the disk. If we only have 2 drives in the system, there is a
problem: neither disk. can have room to hold the COPY command.
Here's the solution. First, put your normal system disk (which
contains a copy of the file "COPY.CMD") in drive 0. Second, get
the COPY command into memory but without executing it by typing
the command:

+4+4+GET 0.COPY.CMD

Third, exit FLEX with the MON command, but put the desired
parameters after "MON" which would have been on a normal COPY
command line:

t+++MON 1. INVNTRY.DAT 0

You should now be in your system's ROM monitor. Fourth, remove
your system disk from drive 0, put disk A in drive 1 and disk B (a
freshly formatted, empty disk) in drive 0. Fifth, use the jump
command in your ROM monitor to jump to the starting Jocation of
the COPY command which was loaded earlier. For 6809 FLEX that
location is $C100; for 6800 FLEX it is $A100. When the copy is
complete, you may remove disk B from drive 0 and re-insert the
system disk.

You should exercise a fair amount of caution when performing the
above operations. It is not normally advised to remove or swap
diskettes at any time other than when the FLEX prompt is
displayed, but with caution the above operations produce no
problems and can be extremely helpful. One final point. In order
to find the starting address of a program (such as the assembler
or copy command), you should use the "MAP" command included in the
additional utility set available for FLEX.

Integers vs. Floating Point in Extended BASIC

In Extended BASIC the user may use either integer
variables/constants or floating point variables/constants. A
great deal of confusion has arisen from the use of integers and
the mixing of integers and floating point. Integer arithmetic
will always work in whole numbers; no fractions are used as in
floating point. Therefore, the results of integer arithmetic may
be different than expected. For example, one may assume that 5/2
would yield 2.5; however, in integer arithmetic the .5 is
truncated to leave only the whole part, 2. This means that

5/2 *2 is 4.


---

FLEX Newstetter No. 5

The answer is 4 because the 5/2 is 2 (not 2.5 in integer
arithmetic!) and 2*2 is 4! The expression 10/3 is equal to 3 (not
3.333333...}); however, 10./3. is 3.333333... This brings into the
discussion the mixing of floating point and integer
variables/constants. The computer calculates the result of
arithmetic expressions by grouping the operands and operators into
groups of three, based on the precedence of the operator, moving
from left to right. That is, in A*B+C/D the A*B is calculated
first, C/D second, and the addition of the two sub-results last.
The type (integer or floating point) of the two operands (or
sub-results) determines the type of the result. If one of the
operands is floating point, then the result of the operation wil]
be floating point. For example:

5./2 + 5/2 is 4.5.

Because 5./2 is 2.5, and 5/2 is 2, the final answer is 4.5. If
using values with only whole numbers, the integer type will be
faster and requires less .space (only 2 bytes). The user is
advised to experiment with the differences in floating point and
integer arithmetic and the mixing of the two.

7) Problem Reporting

The number of technical calls we receive at Technical Systems
Consultants, Inc. is staggering. You would be amazed at the percentage
of time our technical staff spends answering technical phone calls.
Many of these calls are justified, many are not. Most could probably be
avoided. To relieve some of the burden from our technical programming
staff, we have limited the time in which problematic technical calls
will be accepted. This time period is between the hours of 10 and 12 am
West Lafayette, Indiana time. If you are experiencing difficulties with
a FLEX program, we recommend the following procedure:

1) Do everything possible to convince yourself that the problem is in
the software. Keep in mind that problems can be in your hardware
and/or operator induced. Don't always immediately blame the
software. PLEASE, read the manual carefully about the area from
which the problem seems to be arising.

2) If convinced the problem is in the software, attempt to produce
the smallest test case possible which will generate the error.
This .is extremely helpful in locating the problem. For example,
if the problem is arising in a 400-line BASIC program, try to
delete any portion of the program that you can and still
repeatedly obtain the error. A 10-line BASIC program which fails
in the same way as the 400-line program is much easier to debug.

3) Determine the version number of the software in question. Run the
"VERSION" command on the program to determine which version you
have. If we are to help you with a program, we must know exactly
which program it is. Along the same lines, when making a problem

-6-


---

FLEX Newsletter No. 5

report, always specify the program as fully as possible. For
example, "a problem in BASIC" tells us nothing. What we need to
hear is "a problem in version 16 of 6809 Extended BASIC on 8 inch
FLEX". You would make things much, much easier for our technical
staff if you would conform to the latter.

4) At this point you have two options. One is to call, the other is
to write. Often times a call may have to be followed up by
writing anyway. If we know about a problem when you call, we may
be able to immediately help you over the phone. Chances are,
however, problem reports will have to be mailed to us so that we
can reproduce the problem here. Also, when you call, there may
not be anyone available who can help with your specific problem.
When you write, on the other hand, we can always route the problem
report to the correct individual for efficient processing. In
either case, supply as much information about your problem as
possible, with at least the complete program description and
version number, a description of your system, a description of the
problem, and if possible a short sample case that repeatedly
fails. You'd be surprised how much more quickly and pleasantly we
respond to properly documented problems.

8) Free FLEX™ Utility!

In issue number 4 of the FLEX Newsletter we provided a utility called
“SIDUMP", to dump a FLEX binary file in the Motorola S1/S9 coded record
format. Shortly after mailing that newsletter, we received a letter
from Douglas Beck of Los Altos, California, with a copy of the
antithesis of SIDUMP, called "SILOAD". As you might guess, it reads a
FLEX text file containing an $1/S9 dump (such as would be produced by
SIDUMP with the FLEX "0" command) and places the decoded binary data in
memory. These two programs are very useful for exchanging binary data
between a FLEX system and a non-FLEX system (if there still are any)!

In his letter, Mr. Beck also pointed out that the "SIDUMP" utility needs
a slight modification to produce an S1/S9 dump which can be loaded by
the Motorola EXORciser "EXBIN.CM" command under MDOS. That change is in
the string called "S9". It should be changed to look like this:

S9 FCC 'S9030000FC’
FCB 4

Our thanks to Mr. Beck for this utility. His original was in 6800
assembler, we translated it into 6809. It is a simple matter for a user
to translate it back to 6800 since we did not use any non-6800
registers. Neither Mr. Beck nor Technical Systems Consultants,
Inc. make any guarantees on this code and shall not be held responsible
for any possible damages resulting from its use.

The assembled source listing follows.


---

FLEX SALOAD UTILITY TSC ASSEMBLER PAGE i

*
* SALOAD
* BY DOUGLAS kK. BECK
ae
* THIS UTILITY LOADS A FILE IN THE $4-’S9 RECORD FORMAT
* INTO THE PROPER LOCATIONS IN MEMORY. THE SYNTAX Is:
* +++51L0AG <CFTLENAME>
* WHERE THE DEFAULT DRIVE IS THE WORKING DRIVE ANG THE
* DEFAULT EXTENSION IS ". DUT" CFOR FILES CREATED BY THE
* SAIBUMP UTILITY IN CONJUNCTION WITH THE "O" COMMAND »
* EMRUATES

Coes WRRAS EQU SCOO3

C845 FCB EQuU $0345

COep GETFIL EU $Cbet
Cb23 SETEXT ER $OO33
COZF RPTERR Eau #CDar
CD1E PSTRNG ERQU #CD1E
C452 FMSCLS EU SD4B3

P4096 FMS Eau $0406

*
C198 ORG $0186

*
C188 88 B4 SiLOAD BRA SLOOL
CiBe BL MIM FOB 1 VERSION 4.4

*

* VARIABLES
01iB3 BYTECT RMB 4
4184 ADBR RMB 2

* FLEX FILE SETUP SEQUENCE
C406 BE ce4o SLOBL LBX #FCB
Cips BE Coen JSR GETFIL GET FILE FROM CMNG. LINE
CiBe 24 a3 BCC SLOBS
C4IBE 7E Caine IMP ERROR
Ciii 86 BB SLope LDA #46 DEFAULT EXT = . OUT
i132 Bo Coss JSR SETEAT
C116 SE te4e LOX #FCE
C1419 86 61 LDR #1 OPEN FOR READ
CiiB A? 84 STA a8
4110 Bo 466 JSR FMS
CLee e7 63 BEQ SLOBS
Cieze 7E cine JtMP ERROR
C4125 86 Fr SLODS LBA #4FF SPRCE COMPERSSION OFF
Cie? A? 88 3B STA So.

* PROCESS "S" FORMAT DRTA: TEST FOR SOF RND EOF
C1éeA 8b 7F SLODG4 BSR REARE

cie@c B41 53 CMPA #°S FIND THE "S"


---

FLEX SLLOAD UTILITY

C12E
C1i30
tise
C134
C136
C138

C1i3A
CLIB
CL26
CisF

cide

CL44
caidé
C149
Ci4e
C14E
C158
casa
Ci5z
C4155
CLS?
CASA

case
CisrF

C164
ciée
C164
C167
Ci6A

C16
CA6F
tive
card
CLT?

Ci7e
Ci7R

26
8p
81
2?
81
26

SF
oD
36
B?

8D

SC
2?
BE
Bo
7E

8D
B?
st
B?
39

34
8b

FA
79
393
34
34
Fo

3B
Be
C183

29

32
C163
16
cia4
o4

B4
a?
B1
c164
eo

cice
66

C6

Cape
COLE
C1AS

99
c1is4
a4
C185

b4
1B

BNE SLODE

BSR READ
CMPA #°9
BEQ EXITL
cMPA #74

BNE SLOD4

* READ BYTE COUNT

CLRE
BSR INBYTE
SUBA #2

STA BYTECT

* READ LOAD ADDRESS
BSR INADGR

* MAIN DATA SAVE LOOP
SLOooS BSR INBYTE

BEC BYTECT
BEQ ERRORS

LEX ADDR
STA B,#
NOP

CMPA a,8
BNE ERROR
INS

STX ADDR
BRA SLODs

*

ERRORL LDX #ERSTRA
BRA ERR21

TSC ASSEMBLER PAGE
NINE IS END OF FILE

ONE IS START OF RECORD

CLEAR CHECKSUM
GET ONE BYTE

SAVE COUNT

GET LOAD ADDRESS

FETCH A BYTE
CECREMENT COUNT
DON’T STORE CHECKSUM
SAVE IT

OID IT STORE?

LOOP TIL DONE

* LAST BYTE READ Is 1°S COMPLEMENT CHECKSUM
* B HOLDS SUMMATION OF DRTA AND CHECKSUM
* ADDING ONE TO CONTENTS SHOULD EQUAL ZERO

ERROR2 INCE
BEQ SLOD4
LDX #ERSTRE

ERReL JSR PSTRNG

EXITL JMP EXIT

* SUBROUTINES

INRDDR BSR IN6YTE
STA ROGER
BSR INBYTE
STA ADDR+4
RTS

cd

INBYTE PSHS B
BSR INHE 3

GO FOR ANOTHER RECORD

SAVE B REGISTER


---

FLEX SiLORD

Circ
C417o
CLv7e
CLTF
cisa
C183
cies
C189
C186
Cisp
CAad
Caia4
C196

CLa?
Cisa
rise
C1ot
CLF
CAAL

none
CLAS
cane

CLARE
CALRE
Cab4

CARS

Cib4
QiLBbs
t4ips
CLBR
Cibo
CABE

Cacea
C1bg
Cab
C41be

48
43
48
438
IF
8D
34
35
34
34
iF
35

33

8D
au
St
2F
ao
29

Bt
18)
FE

BE
ED
26

39

35
35
RE
S41
a6
2B

42
a4
43
a4

UTILITY

B94

ie

84 RABES
64

be

94 RBEQ
Boab

Be

Le
38
Bo
be
B7

CDSF
G4o3
CBS

cede
C406
B4

Be
ge
Bi
B83
Ed
ES

@ ERROR(S? DETECTED

ASLA
ASLA
ASLA
ASLA
TAS

BSR

RBA

PULS 8
PSHS A
RBA

TAB

PULS A
RTS

INHES

* GET CHAR FROM FILE,

TSC ASSEMBLER PAGE 2

DATR MOVED TO M.S. POSITION

RDD THE TWO HALF BYTES
RESTORE CHECKSUM

SAVE BYTE

MAKE NEW CHECKSUM

PUT INTO & REGISTER
GRAB BYTE AND RETURN

MAKE INTO HEX DIGIT

REMOVE ASCII OFFSET

2a?

CORRECT

REPORT ERROR
CLOSE FILE
RETURN TO BOS

FIX STACK
GET ERROR NUMBER
EOF? (MEVER HAPPENS3

IMHEX BSR REAL
SUBA #930
CMPA #O
BLE INHER
SUBA #7
INHEXL RTS
* ERROR ROUTINE
ERROR JSR RPTERR
EXIT JSR FHMSCLS
JtP WARMS
* READ CHARACTER FROM FILE
READ LOX #FCB
JSR FMS
BNE READ,
RTS
2
REAGL PULS A
PULS A
LBA 1:8
CHPA #5
BNE ERROR
BRA EXIT

* STRINGS

ERSTRL FCC

FCB 4
ERSTREe FCC

FCB 4

END SALOAG

“BYTE WILL NOT STORE”

“CHECKSUM ERROR-


---

6809 NATIVE-CODE PASCAL COMPILER for FLEX™

The demand for a higher level language that produces fast and efficient code has prompted Technical
Systems Consultants, Inc, to develop a 6809 Native-code Pascal Compiler. This Pascal compiler
produces actual 6809 assembly language mnemonics, uniike many of the other Pascal "compilers" which
only produce interpretive "P-Code", Because of this native-code production, programs developed with
the Native-code Pascal Compiler may run from 5 to 10 times faster than those compiled using an
interpretive compiler. The specification for the syntax and semantics of Pascal for this compiler
are based on the Jensen and Wirth User Manual; the compiter implements nearly ali of the features
defined in the User Manual. The few exceptions of major features that our Native~code Pascal
Compiler does not support includes GOTO statements and labels, procedures and functions used as
parameters, the nesting of procedures and functions without the use of FORWARD, and the procedures
DISPOSE, PACK and UNPACK, Both Integer and floating point math are supported, The floating point
arithmetic is double precision containing up to 16.8 digits of accuracy from 1,0 E-38 to 1.0 E+38.
This compiler supports the standard trigonometric, exponential and square root functions afong with
a random number generator for statistical and simulation programming. Integers range from ~32768 to
+32767, using 16 bits for each Integer. Al! of the ASCI! characters from 0 to 127 may be used and
written in Pascal programs, Variable names are unique to 160 characters allowing the users greater
creativity in programming. PACKED arrays and records are allowed in the syntax; however, a PACKED
array or record is no different than an unpacked array or record. Pascal sets may contaln up to 128
elements; however, the ordinal value of these elements must be from 0 to 127, Therefore, sets of
real numbers. are not implemented, but a set of characters is easily accommodated. The Native-code
Pascal Compiler al tows the users to read the command line in FLEX through a record structure cal led
PARAM. In this way the user may pass parameters from the command line to the user's Pascal program.
The passing of file names and options is a common application of this parameter passing feature.
Furthermore, the Native-code Pascal Compiler allows the users to redefine the standard Pascal input
and output files as external files residing on the diske The Native-code Pasca! Compiter supports
dynamic storage allocation using the standard procedure NEW and procedures MARK and RELEASE for
dynamic deallocation of storage. Pointer type variables are fully supported; therefore, true file
1/0 using file buffer pointers and the procedures GET and PUT fs Implemented. FLEX Pasca! files are
all sequential! access, The Native-code Pascal! Compiler allows a Pascal program to cal! other
separately written and compiled Pascal programs or assembly language programs, Furthermore,
parameters may be passed to these other programs in the same fashion that parameters are passed from
the command line. Additional procedures exist for the users to interface with the operating system
itself. These routines include SYSTEM DRIVE and WORK DRIVE, BUFFER and UNBUFFER for single
character input, and various other routines tied to FLEX, ‘Thstructions for trimming the run-time
package for the FLEX version of Pascal are included. Trimming the run-time package may be helpfut
if a program does not need many of the functions but requires a great amount of memory for
execution. By trimming the run-time package, a program may be able to reclaim the memory space
allotted to the useless run-time procedures, Overall, the 6809 Native-code Pasca! Compiler produces
very fast and efficient code. Pascal requires a 56K system in order to function. The FLEX version
on miniftoppies requires two diskettes, The package include our user's manual, a copy of the Pascal
User Manual and Report, by Jensen and Wirth, the compiler and run-time object code’ programs and

about ten example Pascal programs in source form,

FLEX 6809 Native-code Pascal Compiler $200.00
Manual onty - $40.00

68000 CROSS ASSEMBLER

This is a full 68000 assemb!er which runs on a 6809 microcomputer under the FLEX™ operating system.
{t accepts all of the standard Motorola instruction mnemonics with the exception of certain
"varlations't to standard root mnemonics, Those root mnemonics are ADD, AND, CMP, EOR, MOVE, OR, and
SUB. Our 68000 Cross Assembler does not allow the programmer to explicitly append the addressing
suffix on these Instructions. Instead, the assembler infers the- correct type of instruction or
opcode to generate from an analysis of the operand. The suffixes not permitted are A (address), Q
(quick), and | (immediate). Note that the X (extended) suffix is still permitted. This feature
makes programming somewhat easier as the programmer need not be concerned with the variation - the
68000 Cross Assembler does that work for him. Labels may be of any fength with eight characters
significant. Expressions may contain decimal, octal, hexadecimal, or ASCI| constants and permit the
following operators: add, subtract, muitiply, divide, AND, OR, NOT, shift right, shift left, and

relational operators. All expresslons are evaluated to a full 32 bits before any required
truncation. Numerous directives or options permit page formatting, tittes, subtitles, listing
controt, object code output control, sorted symbol table fisting, |ine numbering, auto field

formatting, warnings, command I1ne parameters, inclusion of separate source files, and setting of
even word boundaries. The . 68000 Cross Assembler also supports conditional assembly and macros.
Object code is output in Motorota $1/$2/88/S9 records of ASCI! hexadecimal data, The 68000 Cross
Assembler is available on efther 5 or 8 Inch disk. The manual fully describes the use of the
assembler, but assumes the user Is already familiar with the standard Motorola 68000 assembler
instruction set as defined In the "MC68000 16-Bit Microprocessor Userts Guide™ published by Motorola
Semiconductor Products, Inc.

68000 Cross Assembler for 6809 FLEX $250.00
