# Flex Newsletter2

> Source: `newsletters/Flex_Newsletter2.pdf`  
> Method: OCR with deskewing

OCR and media-decoding errors may remain.

FLEX NEWSLETTER NO. 2
October 1979

Copyright {c) 1979 by Technical Systems Consultants, Inc.
P.Q. Box 2574, West Lafayette, Indiana 47906

We have some exciting news for you in this issue. In particular, our
first 6809 products are already on the market! But more on that later
because we've also got news on extended BASIC, tips on using the 6800
Text Processing System, fixes for a couple of utilities, and more.

1) FLEX NEWS

It seems that FLEX is really catching on - almost all 6800 disk systems
have the ability of running FLEX. Of course FLEX is available for the
SWTPc hardware; we sell a version which runs on the Smoke Signal
Hardware; a company called Great Plains Computer Company (P.0. Box 916,
Idaho Falis, ID 83401) sells a version for the TANO Outpost 11 computer;
Midwest Scientific Instruments is offering a version for their hardware
(their hard-sectored disks cannot be read on other soft-sectored disk
systems and our soft-sectored disks cannot be read on their system);
SWTPc is selling a conversion kit which allows Percom disk users to
upgrade their hardware to the FLEX operating system and Percom is now
offering a program which allows a user to read FLEX disks and to convert
FLEX 2.0 to run on their hard-sectored disk systems; and a few other
companies offer disk controller boards which they claim to be capable of
supporting FLEX. This essentially leaves out only two groups... the
Motorola Exorcisor system and homebrew or custom disk systems. Well,
we're working on them too! There are no completion dates available at
this time, but we have work in progress on a version of FLEX which will
run with the Exorcisor hardware and another for general use which will
allow the user to write his own driver routines for practically any type
of soft-~sectored floppy disk hardware he may have. We'll be letting you
know about these products when they are available.

We have received numerous calls and letters from users of Percom disk
systems who want to run FLEX, TSC BASIC, Sort/Merge, and other
FLEX-based software. In response, SWTPc and TSC have prepared a
conversion kit which will allow Percom disk owners to do just that!
This kit is available from Southwest Technical Products, Inc., 219
W. Rhapsody, San Antonio, TX 78216, for $149.95. It contains a4
controller board (assembled and tested), cable connector, FLEX 2.0, a
copy of SWTPc BASIC 3.5, and a full set of manuals. You simply replace
the Percom controller board and cable with the SWTPc ones, place 8K of
memory at $A000, and you're ready to boot up FLEX! A very versatile yet
fool-proof single drive copy routine is also included since most Percom
systems contain only one drive.


---

FLEX Newsletter No. 2

Another method of running FLEX on Percom disks has just been announced
by Percom. They sel] a program which will read a soft-sectored FLEX 2.0
disk and copy it to a hard~sectored Percom format disk. This copy
method requires two disk drives. Another program is included which will
copy FLEX 2.0 itself onto a Percom disk and convert the FLEX drivers to
operate with their hard-sectored disk controller. Thus you can run FLEX
on the Percom disk system even though it is hard-sectored. Now the FLEX
2.0 disks we sell will not be directly compatible, but the program
Percom sells to copy FLEX disks can be used to copy the software over to
a standard Percom hard-sectored disk. This new disk can be used with
the Percom version of FLEX while the original TSC disk can be kept as an
archival copy.

2) 6809 SOFTWARE

It's finally here! The 6809 chip is no longer a thing of the future and
neither is 6809 software. We now have in stock six 6809 programs with
more coming soon. The six are 6809 FLEX Disk Operating System, Text
Editing System, Macro Assembler, Debug Package, 6809 Standard BASIC, and
6809 Extended BASIC. These are all disk based (under the FLEX operating
system) for either 5" or 8" SWTPc disk systens. This software will
undoubtedly be available for other disk systems as the manufacturers
firm up their 6809 plans.

The 6809 FLEX Disk Operating System (FLEX 9.0} is identical to the 6800
version from a user or programmer viewpoint except for the fact that
FLEX 9.0 is located at $C000 instead of $A000. In other words, all
calls to FLEX are performed in exactly the same manner except that the
addresses must be in the $CO000 to $DFFF range instead of the $A000 to
BFFF. range. Thus existing 6800 programs which are FLEX based can be
converted to 6809 by simply adding $2000 to all addresses in 6800 FLEX,
changing any ORG statements if necessary, and reassembling with the 6809
assembler since it can accept 6800 mnemonics and produce 6809 code.
Changing the addresses can be done quite simply in the editor with two
instruction:

TC/$A/$C/!*
TC/$B/$D/!*

You must be careful, however, that every place in the source which has a
$A or $B is the start of an address and not an eight bit value. Of
course this conversion will not take full advantage of the 6809
instruction set, but it is a quick means of getting going in 6809 until
you have time to re-write the software. Another advantage to keeping
FLEX 9.0 compatible is that the disks are also compatible so that text
files prepared under 6800 FLEX can be directly read under 6809 FLEX. On
5" systems this only applies to FLEX 2.0.


---

FLEX Newsletter No. 2

The text editor and assembler are included with the FLEX package but may
be purchased separately. The editor is an improved version of the
ubiquitous TSC 6800 Text Editing System. It is line and content
oriented with character string, local, and global instructions. The
resident 6809 assembler supports macros and conditional assembly. It
accepts 6809, 6800, and 6801 mnemonics so that existing software can be
immediately reassembled to produce 6809 object code.

The standard BASIC is a very fast interpreter with 6-digit precision in
its binary floating point math package. Features include random access
files via record 1/0 and virtual arrays, unlimited string length,
if/then/else construct, TRACE, ON ERROR GOTO, two-dimensional arrays,
and a renumber facility. Also supported is a COMPILE command which
places an unreadable, compressed form of the source on disk which can
only be executed by a RUN command. This permits the distribution of
proprietary BASIC programs.

The Extended BASIC has all the features of the standard BASIC plus
17-digit precision on floating point math, complete  PRINT-USING
facilities, integer variables (indicated by a % suffix like the $ suffix
for string variables), INSTRing for finding an occurrence of one string
within another, SWAP for swapping the value of two variables, INCH$ to
get a single character without waiting for a carriage return, double
peek and poke (DPEEK and DPOKE) for 16 bit values, and more.

The debug package is a powerful tool for assembly Janguage program
debugging capable of simulating all functions of the 6809 CPU including
interrupts and I/0 operations. Multiple breakpoints may be user-defined
and may be conditional on several criteria. Tracing is possible as is
single or multiple stepping. A "traceback" feature allows the listing
of the previous 255 executed instructions. Memory protection may be
enabled for multiple blocks of the address space. General features
include a mini-assembler, disassembler, memory examine and change, hex
calculator, and a machine states counter.

Except for FLEX, all code is fully reentrant and position independent.
Cassette versions (with restricted features) are available for the
editor, assembler, debug, and standard BASIC. Prices are as follows:

6809 FLEX w/ edit. & asmb. $90.00

Text Editing System $35.00
6809 Assembler $40.00
Debug Package $75.00
Standard BASIC $65.00
Extended BASIC $100.00

No source listing is included at these prices. If you wish to order, be
sure to specify 8 or 5 inch disks.

-3-


---

FLEX Newstetter No. 2

3) BASIC News

By now you may have also heard the news of our new Extended BASIC's for
6800 and 6809. As mentioned above under 6809 software, the Extended
BASIC features 17-digit precision, PRINT USING, integer’ variables, and
much more. This is a very accurate and still remarkably fast BASIC for
any commercial or high precision scientific work. The only drawback is
its size - approximately 19K. We recommend at 32K of user memory to
make proper use of the software.

A copy of a recent ad for the BASIC is included later in this
newsletter. In it you will also notice mention of a "BASIC Precompiler”
for both the standard and extended BASIC's. This precompiler allows you
to edit BASIC programs (requires an external editor) in a non-standard
BASIC form. By non-standard we mean that you can use any length
variable names (up to 255 characters), you don't have to put line
numbers on Tines, where you do need a Tine number (for GOTO, GOSUB, or
other purposes) you can use an alphanumeric label instead of a number if
desired. This results in BASIC programs that are much more easily
written, read, and modified. The output of the precompiler jis the
compressed source format that our BASIC's can execute via the RUN
command.

4) SOFTWARE PROBLEMS

No matter how hard we try, a few software "bugs" seem to slip by us now
and then. When you are developing programs of the length and complexity
of some of our latest releases it is almost inevitable. Here are some
fixes to problems which have been reported.

6809 ASSEMBLER ~ Resident disk version
Early versions of the assembler will hang up if you have an illegal
mnemonic of over 5 characters in length. The fix is simple: At location
$07BF or $07D4 (depending on your version), change the "16 00 7E" to "16
oc 14". Page 57 of the first 6809 assembler manuals shipped describes
the steps to manually setup the tables. An important note was Teft out
at the bottom of that page and is printed here:
NOTE: The assembler uses a large stack area to maintain all
its temporary variables and buffers. This stack requires 0720
hex bytes of RAM starting at FLEX's MEMEND and growing down
from there. This implies two things: if manually setting up
the tables you must leave this space free and if you want to
move where the stack resides, you must set MEMEND accordingly
as the assembler will always place its stack so that it sets
up against MEMEND.


---

FLEX Newsletter No. 2

6809 EXTENDED BASIC

Version #1 of 6809 Extended BASIC has a problem with certain mixed
arithmetic and string operands. This can be corrected by changing the
byte at $21BB from $1E to $1D.

6809 DEBUG PACKAGE

The following errors have been discovered in the 6809 Debug Package.

The version currently being shipped has al] of the problems corrected.
1) The mini-assembler cannot force Tong (using ">") on indexed
instructions having a zero or 5-bit offset. No patch is
available.
2) The disassembler prints a 5-bit offset of -16 as "-$6". No
patch available.
3) The "X" command does not preserve the U-register. Patch as

follows:
Address Old value New value
~ $5968 $AF $34
$596C $8 $50
$5977 $AE $35
$5978 $c8 $50

4) Disassembling an indexed instruction with an illegal offset
of $FO causes Debug to hang. Change the byte at $687F from
$c6 to $C8.

TEST UTILITY - 6800 FLEX 2.0

The TEST utility will always report an error for track 0, sector 1 and
for all sectors of tracks above track $22. Change the "SECTOR FCB 0" at
$A104 to "SECTOR FCB 1" and change the " CMP A #76" at $A180 to " CMP A

#34",

RECOVER UTILITY - All versions
Replace the " CLR 34,X" at $A14B with " JSR FIX". Then at the end of
the code insert the following. code:

FLEX 2.0 or 8" FLEX 1.0 miniFLEX version
FIX CLR” 34,X FIx LDAA #$80—
LDAA #$FF STAA 34,X
STAA #FCB+59 LDAA  #$FF
STAA #FCB2+59 STAA #FCB+59
RTS STAA #FCB2+59
RTS

5


---

FLEX Newsletter No. 2

5) PRINT.SYS for an ACIA device

We printed some hints on using the "P" command and the "PRINT.SYS"
routines in the last newsletter. However, we receive so many calls from
people who can't write a PRINT.SYS routine for a serial printer
(connected to an ACIA) that we are re-printing a sample of such code
here. This code is for 6800 FLEX 2.0 or 8" FLEX 1.0. You will have to
modify the addresses if working with 6809 FLEX or with miniFLEX.

Before using the routines below, you will have to set up the proper
value for the ACIA output port you wish to use. This is done with an
equate statement. For example to output via an ACIA on port 7 you
should use:

ACIA EQU $801C
The output character routine (POUT) should look Tike:

ORG $ACE4 MUST START AT $ACE4

POUT PSH B SAVE B ACC.

POUT2 LDA B ACIA GET STATUS
ASR B GET TDR BIT
ASR B INTO CARRY

BCC POUT2 LOOP IF NOT READY

PUL B RESTORE B ACC.
STA A ACEA+] WRITE OUT THE CHAR.
RTS RETURN

The initialization routine (PINIT) should Took like:

ORG $ACCO MUST START AT $ACCO
PINIT LDA A #$13 RESET ACIA

STA A ACIA

LDA A #$11 SET 8 BITS & 2 STOP
STA A ACIA

RTS RETURN

The printer check routine (PCHK) should be:
ORG $ACD8 MUST START AT $ACD8

PCHK PSH B SAVE B ACC.
LDA B ACIA GET STATUS
ROR B GET TOR BIT INTO
ROR B SIGN POSITION
ROR B
PUL B RESTORE B ACC.
RTS RETURN


---

FLEX Newsletter No. 2

6) POTPOURRI

Technical Calls

If you have technical questions or problems and feel a need to call TSC,
you must do so between 10 and 12 o'clock EST on Monday through Friday.
A software technician should always be on call during those hours and
those hours only. Chances are about 1 in 100 of getting through at any
other time. The major reason for limiting the times we can accept calls
is that it is usually a waste of time trying to debug a software problem
over the telephone. If you do experience trouble, first check very
carefully to be sure it is really a software problem and not a_ cockpit
error. If you find you are using the software properly, next check your
hardware. You would be surprised how many times we get reports of
problems that we cannot duplicate in-house. Then we begin to tear our
hair out looking for the problem only to receive a call from the same
person confessing he found a memory problem or a flakey solder joint on
his motherboard or that he was not following instructions found in the
manual. Even when it is a problem or bug in the software, chances are
nil that we can work it out over the phone. You will get much better
response by thoroughly documenting the problem and mailing it to us.
That way we can make sure it is routed to the correct people and we have
a hard copy of your problem on file to compare to others we may receive.
So please, don't call with software problems ... document them and mail
them in!

Alphabetized Directory Listing

Ted Wolff of New York City wrote to us with a suggestion for obtaining
an alphabetized directory listing. Ted says to use the BUILD command to
create an EXEC file consisting of the following single Tine:

CAT,A,B,C,D,E,F,G,H,1,0,K,L.M,N,O,P,Q,R,5,7T,U,V,W,X,¥5Z

This file could be called ALPHACAT.TXT or something similar. Now to
obtain an alphabetized listing of the directory simply type
"EXEC,ALPHACAT". The same procedure could be used for the DIR utility
also. Thanks, Ted!

An Improved Command Processor

John Jordan of Oak Ridge, Tennessee, sent us a copy of a program he has
written for FLEX called EX. For various reasons we are not able to add
the program to our product line, but it is such a well thought-out and
well documented (over 35 pages) piece of software that we wanted to let
you know about it. If you're interested you might contact John and let
him know. If he gets enough response he may duplicate and sell copies.
The "EX" program is a command processor which John says is "kind of like
a mini job control language for FLEX". To the beginner it could be used
much like the EXEC command supplied with FLEX (in fact it is upward
compatible with EXEC). The major advantage over EXEC, however, comes in
the ability to pass arguments to the EX procedure file from the calling
command Jine. Other options include dynamic variable definition, user
prompting, conditional branching, and a trace feature for debugging an



---

FLEX Newsletter No. 2

EX file under development. If you are interested, contact John at the
following address:

John K. Jordan
103 Elliott Circle
Oak Ridge, TN 37830

There is no guarantee that John will want to distribute the program, and
that will probably depend on how much response he gets.

The '68' Micro Journal

Some time ago in our TSC Newsletter we mentioned a new magazine
dedicated to the 6800 family of microprocessors. Since that time we
have received several issues and find it to be a good investment. It's
called the "'68’ Micro Journal”, is about 50 pages in Tength (at this
time), printed on excellent quality paper, and is always full of nothing
but 6800/6809 related programs, reviews, tips, new product releases, and
other goodies. Their turn-around time on new product releases has got
to be the fastest of any widely distributed microprocessor related
monthly in the country. The eight issues printed to date have included
numerous FLEX related items. If you want to keep up-to-date on the
Jatest happenings in the world of FLEX and the 6800 family of micros in
general, we suggest you check this magazine out. A one year
subscription is $14.50 and can be obtained from:

'68' Micro Journal
3018 Hamil] Rd.

PO Box 849

Hixson, TN 37343

MiniFLEX Software Discontinued

Technical Systems Consultants will be fading out its MiniFLEX line of
support software by the end of the year. MiniFLEX is the original
version of FLEX supplied by SWTPc for their MF-68 floppy disk system.
Since that time, we came out with a new version of FLEX for the MF-68
called FLEX 2.0. This version is much improved and is compatible with
the 8" FLEX which SWTPc distributes and the FLEX which all other systems
run (see section #1 of this newsletter). FLEX 2.0 disks are also
compatible with 6809 FLEX disks. You can be assured that TSC will
continue its support of FLEX 2.0 for a long time.

6809 Cross Assembler on 6800

We are selling a 6809 cross assembler which runs on a 6800. Thus it
accepts 6809 instructions (as well as 6800 and 6801) and produces 6809
object code. It has macros and conditional assembly just like our
resident 6809 assembler. A manual and object code disk (FLEX 2.0 or 8"
FLEX 1.0) sell for $100.00.



---

~ FLEX Newsletter No. 2

7) TIPS ON USING THE TEXT PROCESSING SYSTEM

Until BASIC came out, we probably received more calls and letters on the
text processor than any other program we sell. It is an extremely
complex piece of software and not something the casual user can expect
to master in a couple of days or even weeks. The almost unlimited
combinations of commands and macros which can be setup can cause much
confusion. Our strongest suggestion to users is to READ THE MANUAL.
When you have done that, read it a couple of more times. Then when you
have problems, refer to it freely. We feel that manual is one of the
best we have written in terms of explaining the use of a complex program
in as concise a form as possible. It's quite vexing when a user calls
up with a problem whose solution is clearly stated in the manual.

As with any manual, however, there are certain points which could use
further clarification. We will go over a few of those points here.

Getting a Header on Page 1

If you have ever run a document with a header macro which was to be
executed at the top of each page (via a ".AT 0 HD" type command), you
may have noticed that the header did not get executed at the top of the
first page of the document. The text processor does this on purpose,
since in many applications you want to have a special title at the top
of the first page (see the first page of this newsletter for example).
If, however, you do want the normal header macro to execute at the top
of the first page, it can be easily accomplished. Simply insert a break
command (.BR) after the AT command which specifies where the header
should occur and before any text which will be output on the first page.

Stopping Output for Paper Change

When working with paper that is non-continuous (ie. separate sheets), it
is necessary to stop the output of the text processor at the end of each
page such that a new sheet of paper can be inserted into the typewriter.
As you have found in the manual, this can be done with a stop command
(.ST) which will stop output, waiting for the user to hit any key before
continuing. What might be unclear is just where to place the ST
command. We have found that the best place is in the header macro and
NOT the footer macro. It may seem more logical to stop output in the
footer after doing a page eject, but sometimes the text processor will
attempt to execute the header macro before it sees the stop. Putting
the stop in the header works perfectly. If you do put a stop command in
your header, be sure to use a colon instead of a period so that you will
not cause a break and the associated buffer flushing. In fact, you
should be certain that NO command in the header or footer causes a
break.


---

FLEX Newsletter No. 2

Diversions

There seems to be a fair amount of confusion about diversions. They are
really quite simple. When a diversion is initiated, the text processor
merely routes the characters that would normally be going to the printer
into the diversion storage area in memory. Thus instead of seeing the
output on the printer, it is diverted and stored in memory IN THE EXACT
FORMAT THAT WOULD HAVE BEEN PRINTED. This last point is very important.
For example, if you divert some text with justification turned on and
then read that diversion back with justification turned on, you might
get some wierd Jlooking results. In general you should divert with
justification off and read the text back in with justification on or
vice versa.

Another cause of confusion with diversion js that terminating a
diversion with a .DI command does not automatically flush the buffer.
As we found earlier, when diverting we are doing normal text processor
output, but the characters are sent to the diversion storage area rather
than the printer. When performing output of this nature with the fill
mode on, there is an output line buffer in which the words read from the
input file are placed until the line is full. At that point the buffer
is "flushed" or all printed at once. When printing it looks like a
continuous stream of output characters because the filling of this
buffer is very fast compared to the time it takes to print the line.
The same buffer is used when doing diversion with the fill mode turned
on. Let's assume we are doing a diversion with two short words. It
might Took like this:

di nm
John Doe
di

The words "John Doe" would be stuffed into the output Tine buffer for
flushing when filled. But now we end the diversion before the output
line buffer is filled. Since no break occurred to cause a flush of the
buffer (as seen in the manual, ".DI" does NOT cause a break), nothing
gets output to the diversion area. The words John Doe are left in the
line buffer.

The simple solution to this ts to perform a break before terminating the
diversion. This will cause whatever happens to be in the output line
buffer to be flushed. In the case of our example, that means "John Doe"
will be sent out to the diversion area. The input text would Took like:

-dionm

John Doe

«br THIS IS THE KEY!
di

Note that if the fill mode is not on this break is not necessary. That
is because in the no~fill mode, the text processor simply reads a line
of input into the output line buffer and immediately outputs it without
waiting for the buffer to be full.

-10-


---

FLEX Newstetter No. 2

Numbered Paragraphs

There is often a need to have a set of paragraphs or blocks of text
indented and numbered. An example of this format is shown here with
nonsensical text for the three paragraphs:

1) This is paragraph number 1. It is simply a couple of
meaningless sentences for the purpose of filling up space. As
you can see, it is indented and right justified.

2) This is paragraph number 2. It is simply a couple of
meaningless sentences. for the purpose of filling up space. As
you can see, it is indented and right justified.

3) This is paragraph number 3. It is simply a couple of
meaningless sentences for the purpose of filling up space. As
you can see, it is indented and right justified.

There are several ways to accomplish this format, but let's look at the
one we've found to be quite easy. The basic idea is to set an indent as
desired for the paragraphs. Then before each paragraph is started we do
a single-indent command in a minus direction. For example:

ein 10
-Sp
Si -3

1)\ This is paragraph number 1.
It is simply a couple of meaningless sentences for
the purpose of filling up space.
As you can see, it is indented and right justified.

There is one tricky thing about this sample which deserves our
attention. That is the backslash-space combination just after the
paragraph number. The backslash makes the space a non-paddable space
character so that when padding occurs to justify the line, we can be
sure that no additional spaces will be added between the parend and the
first character of the first line of the paragraph. This ensures an
even column for the left side of the paragraph.

-11-


---

FLEX Newsletter No. 2

Some of the excess typing involved in doing this sort of layout can be
obviated by the use of macros as shown here.

«dm bp (Begin Paragraph macro definition)

»Sp
.si -3

ein 10

»bp

1)\ This is paragraph number 1.

It is simply a couple of meaningless sentences for
the purpose of filling up space.

As you can see, it is indented and right justified.
«bp

2)\ This is paragraph number 2.

It is simply a couple of meaningless sentences for
the purpose of filling up space.

As you can see, it is indented and right justified.
-bp

3)\ This is paragraph number 3.

It is simply a couple of meaningless sentences for
the purpose of filling up space.

As you can see, it is indented and right justified.

°Sp
-in 0

Sometimes it may be a name or word which should be in the indent field
and not a number-parend as above. If the words are not the same length,
you would have to use the correct number of unpaddable space characters
(backslash-space combination) to space over from the end of the word to
the beginning column of the indent field. An easier method is to use
tabs. For example, look at the following layout:

ONE This is paragraph number 1. It is simply a couple of
meaningless sentences for the purpose of filling up space. As
you can see, it is indented and right justified.

TWO This is paragraph number 2. It is simply a couple of
meaningless sentences for the purpose of filling up space. As
you can see, it is indented and right justified.

THREE This is paragraph number 3. It is simply a couple of
meaningless sentences for the purpose of filling up space. As
you can see, it is indented and right justified.

The input text file to produce the above layout looks like this:

.dm bp
«sp
«Si -#i
etc
eta Tl

~12-


---

FLEX Newstetter No. 2

«in 10

-bp

ONE This is paragraph number 1.

It is simply a couple of meaningless sentences for
the purpose of filling up space.

As you can see, it is indented and right justified.
-bp

TWO This is paragraph number 2.

It is simply a couple of meaningless sentences for
the purpose of filling up space.

As you can see, it is indented and right justified.
«bp

THREE This is paragraph number 3.

It is simply a couple of meaningless sentences for
the purpose of filling up space.

As you can see, it is indented and right justified.
ind

There are two important things to note about this technique. First we
used a ",si ~#i" for the single ident in the begin paragraph macro.
This means to single indent in a minus direction (to the left) by the
value found in number register "i". Now if you check the manual you
will find that number register "i" contains the current indent amount.
So what we are doing is indenting to the left by the same amount that we
are currently indenting to the right. This effectively cancels the
current indent for that single line or in other words puts us at the

left margin.

The second point is to note the apparent difference between the indent
amount and the tab column setting. That is because the tab column
setting is the actual column number in which to start printing (in this
case column number 11) while the indent amount is the number of column
positions to indent or skip over. Thus an indent of 10 means we will
skip over 10 columns and thus be ready to print in column 11. This is
something to watch out for.

Making the ESCAPE Key Work Consistently

You may have noticed that the disk version of the text processor doesn't
always stop the output when an ESCAPE or CTRL-C key is hit. This occurs
because of a colision between the text processor and FLEX. The text
processor is looking for a CTRL-C to stop output while FLEX is Tooking
for an ESCAPE. If you hit an ESCAPE and the text processor happens to
look for a CTRL-C before FLEX looks for an ESCAPE, your ESCAPE character
will be lost when the processor finds it is not a CTRL-C. The simple
solution is to disable one of the two checks and it is easiest to
disable the CTRL-C check in the text processor. This simply means you
will have to use the ESCAPE key instead of the CTRL-C to stop output.
The point to patch in the text processor is the instruction with the
label "TSTBRK". This should be at $1594 in the 8" FLEX 1.0 or 5" FLEX
2.0 version or at. $1595 jin the miniFLEX version. Change this
instruction to an RTS ($39).

-13-


---

FLEX Newsletter No. 2

8) A "DUMP and REPAIR" UTILITY

We've got another FLEX utility for you in this newsletter. It was
submitted by some folks who work at the Collins Avionics Department of
Rockwell International in Cedar Rapids, Iowa. These people have done a
Jot of work with FLEX and have generously donated their "Dump and
Repair" Utility. As you will see from the documentation, this utility
lets you read any sector on the disk by supplying an absolute disk
address (track and sector number). If desired the sector can be
modified and written back out. This is a very useful utility to have
around but jis also quite deadly if not used properly! Make sure you
know exactly what you are doing when you modify the data in a_ sector.
We are printing the assembled source listing of the FLEX 2.0 version
exactly as we received it. It can be modified for 6809 FLEX or miniFLEX
if desired. We have run the utility and experienced no problems
whatsoever, but we make absolutely no guarantees on its operation and
will not support technical calls regarding the utility.

-14-


---

DUMP AND REPAIR UTILITY - DR

The Dump & Repair utility ie an interactive disk sector read. display
and modify routine displaying 16 lines each af 16 bytes of data in hex
and ASCII. Any data with values between $28 and $7E “printable? are shown
as the printable character. Other values are represented as periods. In
the Repair mode» changes are made in the RAM sector buffer and only made
on the disk with the Write directives. All input is solicited with wrong
responses producing a menu of acceptable responses.

DESCRIPTION The syntax of the DOR command is simply DR

Valid inputs are: two digit drive, track, and sector numbers

N riext

FP previous

R repair

WW urite

i) return to DOS

L last

SP hext in file

Est restart

RET return to read-write mode ¢from repair?

EXAMPLE

++i he
DRIVE? O41
TRACK? 84
SECTOR? a?
8407
O@ 2408800044554 050S044454D4FES96R08.... DUMP DENO..
410 27128116265 F6S001B72407S8DCCRredaa’. a... BS
PO FES4O76ESR80C236SURF S3B7240AF rad. $m... 8. 8. S
34 G9SDR616E7DEZPSDBUEZSFELIO9ATOORS....°.7..3 8...

40 FFES4Q95R2EFS2OC4O9GGFEG1O9GLOOF?. $ 2h. 2.1...
5@ Beene sseGageseoggRensaBegneeaesa................
64 BSF R2ed29ngRgR0 CoBRRaBHaAsaAANaAA .".. 2... Lee.
7H BSAGGRGEBOG9RGNGHSGRERHRORFOHGOSD...............-.-
BA GBGHGGHHSSGGGOSGHSGOGHGHHHROATRUGHSS................
90 BOFBS2S2600RG012HEbEGRORRHBNGRGG.."....... 6. wee
AG sHGogsoeeosagGOssnAegagaAsaGHSG............-..-
Ba OOFBeeazenaagaLlenaaanagagaaeaage.."..........-5.
CO saGagRgeeseGaQRGGHHHRonORasHGBABH................
DG GBGsonaGeGRRgggBERBHEBeaRRaBGHBG.............-...
E@ SBFBSob2sgeagal 2aneeouRsendEeaes.. ".............
Fe S989eR0G8R0R0590R09RREOERRIRH0RRG....,...........
?

NOTE: Since this utility sllows the user to actually alter the
information recorded on the disk. it is imperative that the
user have a full understanding of what is being done or an
unrecaverable file or a totally destroyed disk may result!


---

OUMP & REPAIR UTILITY

8984

ACL4
ADs
ABLS
ADAP
Abad
ADGF
ADSF
B4a6

Eid
E@7TE

BaBF
6858

6008
6aa2

6802
6086
69409
68ec
606F
6442
6845
6812
5016

13]
a1

cE
FF
CE
BD
BD
BO
B?
cE
FF

a4

6a
63
62
Ea
AD
61
63
68
63

Be
rE
39
7E
1B
4E
83
13
TE

bd
“
oa

*
T
o
G
G
f
o
R
F
a
Ba
Ba
i)
Fe
a

eon

b

TSC ASSEMBLER PAGE 41

ERNQ Eu 1 VERSION NUMBER

THIS IS THE INTERACTIVE DISK DUMP & REPAIR FROGRAM
FOR FLEXCTM? & & INSTRUCTIONS

FOR USE ARE COVEREC IN GETAIL IN A SEPERATE DOCUMENT

BASIC FUNCTION IS: REAL A SINGLE SECTOR INTO A
BUFFER. OITSPLAY THE BUFFER IN HEX AND ASCII, ALTER
THE BUFFER DATA ¢LIKE MEMORY EXAMINE-CHANGE >,
REDISPLAY THE BUFFER. AND THEN “IF DESIRED>.
REWRITE THE SINGLE SECTOR, * USER BEWARE! »*

WRITTEN BY RJ. TONNESON - ROCKWELL INTERNATIONAL
CEDAR RAPIOS. TOWA 32406

UNCONDITIONAL PERMISSTON FOR NON COMERCIAL USE IS
HEREBY GIVEN TO THE FLEX NEWSLETTER AND USER GROUP

EXTERNAL REFERENCES - GO3

N&FPT EG $AC14 LINE BUFFER FOINTER
os Emu #ADGS WARM START ENTRY POINT

ETCHR Ell $ADL5 GET 1 CHR FROM KBG. RET. IT IN A

ETLIN Eu FACLB GETS A COMMAND LINE

CRLF Eau #AD24 PRINTS CRLF. KEEPS TTYSET HAPPY

UTFLX EQU #ADGF OUTPUTS CHAR IN A TO CONSOLE
PTERR EU #AGSF REPORT CISkK ERROR #NN
MS El E406 MAIN ENTRY POINT

EXTERNAL REFERENCES ~ MONITOR

UTEEE Eau FELL OUTPUTS CHAR IN A TO CONSOLE
GATAL Eau SEQrTE OUTPUTS STRING TQ CONSOLE
Tze Eau 45 BYTES CISPLAYEDALINE

ORG $6008
TART BRA STARTL

FCE VERNO
SOLICIT GCRIVE. TRACK. SECTOR. THEN HAVE AT IT
TARTL LOS #STRRT

STA ERRORS

LD #ORVMSG

JSR PDATAL

JSR GETLIN

JSF INEYTE

STA RO FCE+3 DRIVE NUMBER
SPa5 LOS #DSPB5

STH ERRORS


---

DUMP & REPAIR UTILITY

6O1E
6021
6024
6927
662A
602d
6020
6633
6036
6839
663C
603F

6442
6045
6047
6849
6840
604E

6054
6054
6856
6859
6@5C
605E
6060
6862
6064
6066
6668
696A
6860
686E
6978
6872
6874
6076
607s
607A
687°C
687°F
6482
6885

6887
688A

608d
66398
6093

CE
ED
BD
BD
6?
cE
FF
CE
BD
BD
BD
a7

CE
86
A?
BD
26
Bb

BD
86
BD
BD
81
27
81
27
S41
27
81
27
84
e7
81
27
e1
27
S21
27
CE
BD
BD
20

rE
7E

FE
FF
20

62
EG
AD
61
63
60
63
62
E@
RD
61
63

63
ag
aa
B4
39
61

62

3F
62
AD
4E
35
58
46
52
53
1B
94
28
4D
44
33
4c
Dé
57
@E
62
Ea
62
cR

61
61

63
63
AD

44
7E
4B
4£
SE
2p
7E
4F
7E
46
4E
oF

3a

SB
FE
23

39

3F

ce
SE

LDN
JSR
JSR
JSR
STA A

DSPia = LD
STx
LDX
ISR
ISR
ISR
STA A

*

* CALL FMS FOR

*

CSP3@ = LDX
LEA A
STA A
ISR
BNE

DSP49 JSR

* PROMPT THEN

DSPS@ JSR
LOA A
JSR
JSR
CMP A
BEG
CMF A
BEG
CMF A
BEQ
CMF OR
BEG
CMF A
BEQ
CMP A
BEQ
CMP A
BEG
CMP A
BEQ
LDX
JSR
JSR
BRA

a

DERROR IMP

WRIT2 JMP

* PREP TO READ

NEXTF = LDK
STH
BRA

* PREP TO READ

TSC ASSEMBLER PAGE

#TREMSG
POATAL
GETLIN
INBYTE
FCB+38 CURRENT TRACK POSITION
#D9P198
ERRORX
#SCTMSG
FDATAL
GETLIN
INBYTE
FCB+34 CURRENT SECTOR POSITION

SINGLE SECTOR READ

#FCE
#9
4.4
FNS
DERROR
BSPSCT
GET NEST TASK
CRLF
#°?
OUTCH
GETCHR
#°N
NEST
#°P
PREY
#°R
REPAIR
#318
START
##208
NEXTF
#°D
DOSES
#°L
DSP48
#°W
WRIT
#INVASG
PDATAL
CRLF
DSPS@

SAYERR
WRITE

THE MEXT SECTOR IN THE FILE
FCB+64 BEGINING OF CATA
FCB+30

CSP3B

THE NEXT LOGICAL SECTOR


---

CUMP & REPAIR UTILITY

6B85
69s
6939
6838
690
60A8
6eaAe
6a@A5

6OR7

6a@AA
69AD
Sane
68bB
68B3
6BES
6088

6088
é6QBE
6oc1
6acd
6ac?
68CA
66CD
6b!
683
6abe
607
6atA
680d
68ES

EBES
6GES
6HE9
6HEC
6BEF
6BFe
6BFS
6ar?
6ara
6BFE
eBFE
GOFF
6101
6103
6185
6168
619B

6180
6118

Bs

4c

B1

26
ro
$6
B?
29

FE

Bé
4A
26
7A
Be
Br
FE

cE
EF
CE
BD
BD
BD
CE
FF
BF
5F
BB
FQ
F?
B?

BD
CE
BD
FE
Bo
BD
a1
27

e1 :
2? i

84
27

Si

27
cE
BD
2a

cE
FF

63

SF

3E

SE

oF
42

BE
TE
Ec
FE
1B
4£
ca
ee
r4

D

iy eas a af

to

29
v4
1é
rc
12

45

Fa
7E

ab
FE

NEXT LOA
INc
CMF
BNE
ING
LOA

NEXTL STA
BRA

a

COSES IMP

* PREP TO REAC

DoD

TS ASSEMBLER
FCE+341

#F11
NEXTAL
FCe+30
#F1
FITB+34
DSP2B

BOs
THE PREVIOUS LOGICAL SECTOR

PREV LOR A FCB+21
CEC A
BNE PREVA
CEC FCB+38
LOA A #210

PREVA STA A FCB+34
IMP CSP 25

* ALTER FAM SECTOR - GET STARTING LOCATION

REPAIR LOX #REPALRE
STs ERRORK
Low #0FFMNSG
JSR FORTAL
JSR GETLIAW
ISe THBYTE
LES #FCR+64
STH SAVE
STA A SAVER
CLE B
AGG A SAVER +.
ADT B SAVE
STA B SAVEX
STA A SAVER+L

* DISPLAY PRESENT DATA - GET NEXT TASK

REPL Isk CRLF
LOS #5AVER
ISR OUTEHS
LON SAVEX
JSR BUTeHS
Jak GETCHR
CMP RO #°N
bE INC
CMP RO #°P
BE LAST
CMP A #0
BEa CONE
CMP A #Eo8
GEQ REPS
LD #REPHSG
JSR POATAL
BRA REF A

* CHANGE THE CATA ANG INCREMENT THE LOCATION

REPS LD #REPS
STH ERROR

PAGE


---

DUMP & REPAIR

6143
6116
61419
6110
614E
6121
6122
6125
6128

612A
6120
612E
6131

6133
6136

6139
613¢

613F
6142
6144
6146
61493
6146

614E
6151
6152
6153
6154
6155
6156
6153
6159

615A
6150
6145F
6161
6162
6165
6167
6169
6166
6160
616F
6179
6173
6176
6179

BD
BD
FE
A?
FE
es
7c
FF
28

FE
a9
vA
29

BD
7E

i=18)
PE

CE
86
A?
BD
26
7E

BD
49
43
438
48
16
8b
16
39

BD
86
2e
81
er
81
26
84
eE
86
393
CE
BD
FE
6E

AD
61
63
66
63

63
63
BS

62

63
Fe

62
68

AD
66

63
aR
80
B4
EE
68

641

ae

62
38
GF
69
GA
14
ar
16
83
a7

62
Ee
63
aa

UTILITY TSC ASSEMBLER
1B JSR - GETLIN
4E JSR INBYTE
7c Low SAVEX

STA A B&R
7O ONC LOX SAVER
INK
74 INC SAYVEA
7C =REP2 ST# SAVEX
BRA REPL
* BACK UP ONE LOCATION
7c LAST LDA SAVER
DES
r4 DEC SAVYEA
BRA REF2
* NO MORE CHANGE
29) DONE ISR CRLF
4E IMF CSP48
ok
3F SAYERR JSR RPTERR
Sa IMP DSP56a
* CALL FMS TO WRITE A SINGLE SECTOR
86 WRITE LOX #FCE
LOA A #416
STA A BA
46 JSR FMS
BNE SAYERR
Si JMF DSP58
* GET TWO HEX OIGITS ANG FORM A BYTE
5A INBYTE JSR INHE#
ASL A
ASL A
ASL A
ASL A
TAB
ESR INHEX
ABA
RTS
* GET HEX CONLY> CHARACTER FROM THE CONSOLE
@F INHEX ISR GETCRT
SUB A #938
EMT HEXERR
CMP A #209
BLE GOTHES
CMP A #811
BNI HEXERR
CMP RO #816
BGT HEXERR
SUB A ORF
GOTHEX KTS
DB HEXERR LDX #NHAMSG
7E JSR POATAL
7E Cox ERRORS
JMP B,%

* DISPLAY THE

CURRENT SECTOR BUFFER

PAGE

4


---

PUMP &@ REPAIR UTILITY TSC ASSEMBLER PAGE 5

6178 BO AD 24 OSPSCT JSR DCRLF
617E CE 63 9E Los #FCB+30
6191 Be 61 EF JSR OUT 4HE
6134 4F CLE A
6185 B? 63 76 STA A KBYTEL
61928 BY 63 77 STA AO ABYTEe
6LSB CE 62 Ca LOK #FCB+E4 BEGINING OF CATA
61i8E FF 63 79 STA BFPTR
6491 FF 63 YA STH BFPTRe
6194 Bo 61 AB PSP4L JSR DOLINE PROC THE DATA & TEST FOR DONE
6197 B6 63 76 LOR A MEYTEL
619R 26 FS BNE OSPL « e557
619C BD AD e4 JSR DCRLF
619F 39 RTS
* PROCESS OME LINE OF THE BUFFER
S1A6 BD AD 24 COLINE JSR CCRLF
641A3 CE 63 76 LDA #ABYTEL
61A6 86 2a LOA A ##28
61A2 BO 61 FL JSF OUTEDE
61AB BD 62 85 JSR OUTCHE
61AE FE 63 78 GOLINe LOS BFPTRA C0 IT IN HES
61B1i AG 46 LOW A sx
64B3 Bb 64 FF JSR OUTHLD
S166 AG 8 LOR A ae
6163 BD 61 FE JSR OUTHRE
61BB 63 INS
61BC FF 63 78 STA BFPTRA
64BF 70 63 7 INC SBYTEL COUNTER
61C2@ B6 63 76 LOR A XBYTEL
6105 @4 OF AND A #5IZE
6107 @6 ES BNE BOLING
6409 FE 63 7A GOLINS LOX BFPTRE NOW IN ASCIT
61CC ARé BA LDA A Bs
Sick 84 4F CMP A #E4F IF NON PRINTING
6108 2E Be 6GT COLIN
6102 86 GE LOA A #”. SUBSTITUTE A PERIOD
6104 BD 62 95 POLING JSF OUTCHE
6107 a8 THe
6108 FF 63 7A STH BFPTRE
610B 7C 63 77 INC SBYTES
610E Bé 63 77 LDA A XBYTES
61E1 84 GF RAND A #STZE
61E3 26 E4 BNE DOLINS
61E5 39 RTS

* OFTEN COPIEG ROUTINES TO GUTPUT HEX DATA
* THESE GO THRU OOS FOR USE WITH P. CMD

61E6 AG OO QUTZHD LDA A BH
61E8 8b 3D BSP BUTHLE
G1iER AG BB LOA A BR
61EC oe THs

61ED 26 @C BRA QUTHRE
GIEF 8D FS QUT4HD BSR OUTEHD
61F1 8D F3 OuUTZ6D BSR OUTEHD

61F3 86 26 OQUTSD LDR A #eEa


---

DUMP & REPAIR UTILITY

61F5

61F?
sire
61F9
61FA
61FE
61FD
64FF
6261
6263
6265

6288
628A
6260
620E
6210
6a12
6214
6e16

6213
6219
621A
6218
6210
G2L1E
6228
6222
6224
6226

6229
62ecr

622F
6232
6234
6235
62338

6239
623C
6243
6244
6247
624E
624F
6252
625A
6256

20

44
44
44
44
84
8B
84
23
8B
7E

AGB
ri)
AG
26
8D
8D
86
28

44
44
44
44
84
8B
84
23
3B
7E

CE
7E

FE
AG
as
FF
39

ac
44
a4
aD
54
a4
ao
53
a4
ap

gE

GF
34
39
62
ar
AD

aa
ac
ao
ac
Fé
F4
20
GE

GF
3a
39
ge
o7
E14

63
Es

AC
bt)

AC

BF

bt.

r4:]
7E

14

14

*
OUTHLE

OUTHRE

OQUTCHE
* THESE

BRA

LSk
LSR
LSK
LSr
AND
ADD
CMP
BLS
AGG
JMP
ARE

BPPBDIDH

A

IGCENTICAL GUT KEEP THE CHIT-CHAT

OUTCHE

#2F
#$3a
#39
QUTCHE
#37
BUTFLE

* OFF THE PRINTER

* COULD
OUTZH

OUT4HS
OUTEHS
OUTS

*
QUTHL,

OUTHR

QUTCH
*

CRLF

*
GETCRT

USE
LDA
BSR
LDA
BRA
65R
BSR
LEA
BRA

LOR
LSR
LSR
Lor
AND
ADD
CMF
BLS
AbD
IMP

LDS
IMF

LOS
LOR
INS
STA
RTS

* STRINGS

BRYMNSG

TREMSG

SCTMSG

INYMSG

FCB
FCC
FCe
FCR
Fee
FCs
FCE
Fee
FCB
FCB

OUTPUT

A

A

DDD DDD

=

aK
OUTHL
Bes
OUTHR
OUT2H
OUT2H
#$25
OUTICH

#5F
#$30
#E39
OUTCH
HFT
OUJEEE

#CRLFMS
PORTAL

INBFPT
G8

INGFPT

$b. $A. 8
“DRIVE?
4

$b. $A. 8
“TRACK?
4

$0. $A, 8
“SECTOR?
4

$0. $8.6

SHITCH

s

°

TSC ASSEMBLER

PAGE

6


---

OUMP & REPAIR UTILITY TSC ASSEMBLER PAGE 7

625& 56 e“VALIC INFUTS ARE“
626— oC $0. $A, 8
Ser. 4E oN - NEXT
sera ab $0. $A. 8
serc 5a oF ~ PREVIOUS
62828 ot #0. $A, 8
6e8B 52 “Ro - REPAIRS
6295 of #0. #0
6298 57 “Wo - WRITE“
62Ai BD $l. $A. @
62A4 44 “Oo - boas
62AB ab $0. $A. 8
6eRE 40 ek - LASTA
62B6 O80 #0. $A. a
62B3 52 “SP - NEST IN FILES
62CA Bo $b. $A. 8
6e@Ceh 45 “ESC ~ RESTARTS
620A B84 4
62DB Bt HHSMSG FCB #0. €A, 2
620E 49 Foo INPUT MOT NE.”
6cEB o4 FCB 4
62EC aD OFFMNSG FCE $0. €A. O
B2@EF 4F FOR “OFFSET?
62F? O4 FOB 4
62F8 6b REPHSG FITE $b. $A. G
62FB 56 FCC “VALIOG INFUTS ARES
620k BE FCE $b. $A, 8
63GE 4E For ON = NEXT
6316 md FCB $0. $A, 8
6313 50 FCC “Po - PREVIOUS,’
6325 ob FCB #D. $A, 8
64328 53 Fee SP ~ CHANGECFOLLOWED BY TWO HEX CHARA
6340 Ob FCB #0. #A. 8
6358 32 Fcc “RET - RETURN TO REAC-WRITE MODES
636F G4 FCR 4
6378 aD CRLFMS FCB £D, $7. 8. 4

+
6374 SAVEA RMB 1
6375 SAVEB RHE 1
6376 SBYTEL RMB 1
6377 “BYTE RMB 4
6373 EFPTR1 RMB fa
637A BFPTR2 RMB fd
6370 SAVES RMB 2
637E ERRORX FMB fos
6388 FCB RNB 328

ENC START

HO ERROR<CS) DETECTED


---

Something New on the Horizon
rom
Technical Systems Consultants

Extended BASIC for 6800 and 6809

BASIC Precompiler

Finally, a BASIC for serious business
applications or scientific programming is
available. All the features of our regular BASIC
are supported—and more. Floating point
calculations are carried out to an internal
accuracy of 17 digits. Most math functions are
accurate to 16 digits with a minimum accuracy
of 13.5 digits. Integer variables have been
included to allow fast execution of control loops
and array indexing. Even with the double
precision math package, this BASIC is still one
of the fastest around.

The business programmer will appreciate the
versatile PRINT-USING capabilities which
include dollar and asterisk fill, trailing minus
sign, imbedded commas, and scientific
notation. New string functions have been
added for siring searching (INSTR) and for
creating a string which is the date (DATES$).
DPEEK and DPOKE are 16-bit peek and poke
type functions. The SCALE command has
been included to eliminate the round-off errors
typically encountered in binary math packages.
The INCH$.function allows single-character
input from the terminal. Programmer control of
contrat C breaks iS also included.

Overall, the Extended BASIC is the most
complete BASIC offered for micro users and is
only available on FLEX™ disk. A system with at
least 32K of user space is recommended.
Specify 8” or 5” media (5” 6800 is FLEX™ 2.0)
and either the 6800 or 6809 version when
ordering.

AP68-12 6800 Extended BASIC $100
SP09-6 6809 Extended BASIC $100

This program allows the creation of BASIC
programs without the use of line numbers or
restrictive two-character variable names.
Alphanumeric line and subroutine labels may
be used, as well as variable names of any
length. Comment lines are marked with non-
alphanumerics for easy readability. The output
of the precompiler is in the standard BASIC
compiled form. This allows applications
programs to be written, precompiled, and then
distributed in a non-source form. The
precompiler can only be used with one of
Technical Systems Consultanis’ BASICs.
Specify 8” or 5” (5" 6800 is FLEX™ 2.0) when
ordering.

AP68-13 Single Precision

6800 Precompiler $40
AP68-14 Double Precision

6800 Precompiler $50
SP09-7 Single Precision

6809 Precompiler $40
SP09-8 Double Precision

6809 Precompiler $50

FLEX is a registered trademark of Technical
Systems Consultants, Inc.

technical systems
consultanty, inc.

Box 2570, West Lafayette, IN 47906
(317) 463-2502
