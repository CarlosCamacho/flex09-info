# Color FLEX Utility Command Set (Frank Hogg Laboratory)

> Source: `utilities/system/Color FLEX Utility Command Set (Frank Hogg Laboratory).pdf`  
> Method: OCR with deskewing

OCR and media-decoding errors may remain.

The
COMMAND



---

UTILITY COMMAND SET

The following pages describe all of the utility commands currently
included in the UCS. You should note that the page numbers denote the
first letter of the command name, as well as the number of the page for
@ particular command. For example, ‘B.1.2' is the 2nd page of the
description for the lst utility name starting with the letter ‘B’.

COMMON ERROR MESSAGES

Several error messages are common to many of the FLEX utility commands.
These error messages and their meanings include the following:

NO SUCH FILE. This message indicates that a file referenced in a
particular command was not found on the disk specified. Usually the
wrong drive was specified (or defaulted), or a misspelling of the name
was made.

ILLEGAL FILE NAME. This can happen if the name or extension did
not start with a letter, or the name or extension field was too long
(limited to & and 3 respectively). This message may also mean that the
covcmind being executed expected e file name to follow anc one was not

Eroviced,.

FILE EXISTS. This message will be output if you try to create a
file with a name the same as one which currently exists on the sane
disk. Two different files with the sare name are not allowed to exist on

the seme disk.

SvNTAY ERPOP, This means that the command line just typed does not

follow the rules stated for the particular command used. Refer to the
individual command descriptions for syntax rules.

GENERAL SYSTEM FEATURES

Any time one of the utility commands 1s sending output to the terminal,
it may be terporarily halted by typing the ‘escape’ character (see
TIYSET for the definition of this character). Once the output is
stopped, the user has two choices: typing the ‘escape’ character again
or typing ‘RETURN’. If the ‘escape’ character is typed again, the
output will resume. If the 'RETURN' is typed, contro? will return to
FLEY and the command will be terminated. All other characters are

ignored while ovtput is stopped.

~2ele


---

Po nn

APPEND

The APPEND command is used to append or concatenate two or more files,
creating a new file as the result. Any type of file may be appended but
it only makes sense to append files of the same type in most cases. If
appending binary files which have transfer addresses associated with
them, the transfer address of. the last file of the list will be the
effective transfer address of the resultant file. All of the original
files will be left intact.

DESCRIPTION
The general syntax for the APPEND command is as follows:
APPEND,<file spec>([,<file list>],<file spec>

where <file Jlist> can be an optional list of the specifications. The
last name specified should not exist on the disk since this will be the
name of the resultant file. If the last file name given does exist on
the disk, the question "MAY THE EXISTING FILE BE DELETED?" will be
displayed. A Y response will delete the current file and cause the
APPEND operation to be completed. A Nh response will terminate the
APPEND operation. All other files specified must exist since they are
the ones to be appended together. If only 2 file names are given, the
first file will be copied to the second file. The extension default is
TXT unless a different extension is used on the FIRST FILE SPECIFIED, in
which case that extension becores the default fer the rest of the
command line. Some examples will show its use:

APPEND, CHAPTER], CHAPTER2, CHAPTER3, BOCK
APPEND FILE1,1.FILE2. BAK, GOODEILE

The first line would create a file on the working drive called
"BOO. TXT' which would contain the files ‘CHAPTER1.TXT', CHAPTER2.TXT',
and ‘CHAPTER3.TXT' in that order. The second example would append
'FILE2.BAK’ from drive 1 to FILEI.TXT fron the working drive and put the
result in a file called ‘GOODFILE.TXT' on the working drive. The file
GOODFILE defaults to the extensior of TXT since it is the default
extension. Again, after the use of the APPEND command, al} of the
original files will be intact, exactly as they were before the APPEND

operation.

-A.lo1-


---

ASK

The ASK command is used ‘or assigning the ‘system’ drive and the
"working’ drive or to select automatic drive searching. The system
drive is used by FLEX es z*e default for command names or, in general,
the first name on a conranc “‘ne. The working drive is used by FLEX as
the default on ail cther file specifications within a command line.
Upon initialization, FLEX ass‘cns drive #0 as both the system and
working drive. An exancle will show how the system defaults to these
values: ;

APPEND FILE] ,FILE2, FILES

If the systen drive is assicred to be #0 and the working drive js
assigned to drive #1, tre above example will perform the following
operation: get the APPEND co--and from drive #0 (the system drive), then
append FILE2 fror drive =. (the working drive) to FILE] from drive #1
and put the result in FILE c- drive #1. As can be seen, the system
drive wags the default for 4°=°2ND where the working drive was the default
for all other file specs listed.

Lutoratic drive searchinc causes FLEX to automatically scan the reedy
drives for the file specif*e:. Hardware limitations prevent the mini
floppy versions from searcring for "ready" drives. For this reason,
FLEX has been setup te ALwt*! assure drive O and 1 are ready. Thus if a
mini floppy version of FLEY attempts to search a drive which does not
have a disk loadec, it will ceng up until a disk is inserted and the
door closed. Alternative’., the system reset could be hit and a warm
start executed (@ jump tc ac7vess $2903). The full size floppy version
CAN detect a ready corz‘tic> and will not check drives which are out of
the ready state during euto7zcic drive searching.

Automatic drive searching causes FLEX to first check drive #0 for the
file specified. If not treve (cr if mot ready in the full size
version), FLEX skips to cr.2 #1. If the file is not found on drive #1
in the mini florcy version, =-£X gives up and a file not found error
results. In the full size -e7sion FLEX continues to search on drives #2

and <3 before reporting en error.

sf

DESCRIPTICh
The general syntex for the +3 conmand is as follows:
ASHE ,We<drive>J[,S=<er*.2>]

where <drive> is a single ¢°:‘t drive number or the Tetter A. If just
ASN is typed followed by é ‘SEJURN', no values will be changed, but the
system will output @ messece which tells the current assignments of the

system and working drives, “77 exarole:

+44ASh
THE SYSTEM DRIVE IS #°
THE WORKING DRIVE IS #7

oAs2ol=


---

FLEX User's Manue?

Some examples of using the ASN command are:

ASK Wel
ASN,S=],W=0

where the first line would set the working drive to 1 and leave the
system drive assigned to its previous value. The second example sets
the system drive to 1 and the working drive to 0. Careful use of drive
assignments can allow the operator to avoid the use of drive numbers on
file specificetions most of the time!

If auto drive searching is desired, then the letter A for automatic,
should be used in place of the drive number.

Example:
ASN W=A
ASN SsA, We
ASN S=A, we

]
A

Awes 2-


---

BUILD

The BUILD command is provided for those desiring to create small text
files quickly (such as STARTUP files, see STARTUP) or not wishing to use
the optionally available FLEX Text Editing System. The main purpose for
BUILD is to generate short text files for use by either the EXEC command

or the STARTUP facility provided in FLEX.

DESCRIPTION
The general syntax of the BUILD command is:

BUILD,<file spec>

where <file spec> is the name of the file you wish to be created. The
default extension for the spec is TXT and the drive defaults to the
working drive. If the output file already exists the question "MAY THE
EXISTING FILE BE DELETED?" will be displayed. A Y response will delete
the existing file and build a new file while a N response will terminate

the RUTLOA command.

after you are in the ‘BUILD’ mode, the tervinal will respond with an
equals sign (‘=') as the prompt character. This is similar to the Text
Editing System's prompt for text input. To enter your text, simply type
on the terminal the desired characters, keeping in mind that once the
"RETURK' is typed, the line is in the file and can not be changed. Any
tine before the 'RETURN'’ is typed, the beckspace character may be used
as well as the line delete character. If the delete character is used,
the promzt will be '???' instead cf the equals sign to show that the
last line was deleted and not entered intc the file. It should be noted
that only printable characters (not control characters) may be entered

into text files using the BUILD command.

To exit the BUILD mode, jit is necessary to type a pound sign ('#')
immediately following the prompt, then type 'RETURN'., The file will be
finished and control returned back to FLEX where the three plus signs
should again be output to the terminal. This exiting is similar to that

of the Text Editing Systen.

t . a . :
For longer files and additional editing capabilities, see the
section on TED (Tiny EDitor).

-B.1.1-


---

CAT

The CATalog command is used to display the FLEX disk file names in the
directory on each disk. The user may display selected files on one or
multiple drives if desired.

DESCRIPTION
The general syntax of the CAT command is:
CATL,<drive list>J[,<match list>]

where <drive list> can be one or more drive numbers seperated by commas,
and <match list> is a set of name and extension characters to be matched
against mames in the directory. For example, if only file names which
started with the characters ‘VE' were to be cataloged, then VE would be
in the match list. If only files whose extensions were 'TXT' were to be
cataloged, then .TX%T should appear in the match list. A few specific
examples will hele clarify the syntex:

tr7U-

++4ChT 1,A.T, OF
+4407, PR

++4Ch7 0,1

+4407 7,0,1,.0MD, SYS

The fiest example will catalog all file nemes on the working drive or on
all drives if auto drive searching is selected. The second example wil]
catalog oriy those files on drive 1 whose names begin with "A' and whose
extensions begin with 'T', and also all files on drive 1 whose names
start with 'DR'. The next example will catalog all files on the working
drive (or on all drive if auto drive searching is selected) whose names
start with ‘PR’. The next Tine causes all files on both drive 0 and
drive 1 te be cataloged. Finally, the last exarrcle will catalog the
files on drive Q and i whose extensions ere CMD or SYS.

During the catalog operation, before each drive's files are displayed, a
header message steting the drive number is outfut to the terminal. The
name of the diskette as entered during the NEWDISK operation will also
be displayed. The actual directory entries are listed in the following

form:

NAME. EXTENSTON SIZE PROTECTION CODE

where size is the number of sectors that file occupies on the disk. if
more than one set of matching characters was specified on the command
line, each set of names will be grouped according to the characters they
match. For example, if all .TXT and .CMD files were cataloged, the TXT

types would be listed together, followed by the CMD types.
In summary, if the CAT command is not parameterized, then all files on

the assigned working drive will be displayed. If @ working drive is not
assigned (auto drive searching mode) the CAT command will display files

-~C.l.l-


---

FLEX User's Manual

on all or line drives. If it is parameterized by only a drive number,
then all files on that drive will be displayed. If the CAT command is
parameterized by only an extension, then only files with that extension
will be displayed. If only the name is used, then only files which
start with that name will be displayed. If the CAT command is
parameterized by only name and extension, then only files of that root
name anc root extension (on the working drive) will be displayed. Learn
to use the CAT commend and all of its features and your work with the

disk will become a little easier.

The current protection code options that can be displayed are as
follows:

D File ig delete protected (delete or rename prohibited)
Ww File is write protected (delete, rename and write prohibited)
(blank} No special protection

-C.1.2=


---

CBASIC

The CBASIC command is used to run Redio Shack Extended COLOR BASIC
{but not Disk Extended COLOR BASIC) without erasing FLEX from memory.

DESCRIPTION
The general syntax of the CBASIC command is:

CBASIC

This command copies the Radio Shack COLOR BASIC and Exended COLOR
BASIC from RON to RAM at the same address (see MOVEROM). CBASIC then
makes some changes to the initialization code of COLOR BASIC so that it will run
in RAM. These changes ere detailed below.
The user may return to FLEX by typing
EXEC

provided the EXEC pointer of COLOR BASIC has not been changed, for example by
_using CLOADM. Uf the EXEC pointer was changed, the user must type

EXEC &HC1i00
whiet is the accreas of the routing usec te restart FLEX,

This program does not set up COLOR BASIC to use FLEX VO. CBASIC
uses its own keyboard input and screen output routines. The routine at $C100
reinitializes the FLEX display screen.

The areas of COLOR BASIC changed are as follows:

ADDRESS DATA FUNCTION
$A055 $0D # of SAM locations to reconfigure
$A066 $20 Disable reconfiguring of memory size
$A084 $8E Disable memory test
$AG85 $7F
$A086 $FE
$A087 $7E
$A088 $A0
$A0839 $93
$A11B $Cl Set up EXEC pointer
$A11C $00
BASIC

BASIC is the same as CBASIC, but it only moves the 8K RS BASIC from
ROM to RAM. The advantage is that you now have 39K for program storage.

~C.2.1-



---

Cory

The COPY command is used for making copies of files ona disk.
Individual files may be copied, groups of name-similar files may be
copied, or entire disks may be copied. The copy command is a very
versatile utility. The COPY command also re-groups the sectors of a
file in case they were spread all over the old disk. This regrouping
can make file access times much faster. It should be noted that before
copying files to a new disk, the disk must be formatted first. Refer to
NEWDISK for instructions on this procedure.

DESCRIPTION
The general syntax of the COPY command has three forms:

a. COPY,<file spec>,<file spec>
b. COPY,<file spec>,<drive>
c. COPY,<drive>,<drive>[,<match list>]

where <metch léist> is the sare es that cescribed in the CAT command and
~ 7 riots eric te ae teomaent aed e.tangteane, then cor vine Files,

if tne destiration ¢*sk already contains a file with the same neme as
the one be‘nc copied, the file name anc the message, "FILE EXISTS DELETE
ORIGINAL?" will be output to the terctinal. Typing Y will cause the file
on the destination disk to be deleted and the file from the source disk
will be coriec to the destination disk. Typing N will direct FLEX not

to cory the file in question

The first tyne of CO5Y ellows copyine e sinate file into another. The
output file may be on a different drive but if on the same drive the
file names rust be different. It is always necessary to specify the
extension of the inrut file but the output file’s extension will default
to that cf the input's if none is snecified. An example of this form of
COPY is:

+44COP 7, C.TEST.TXT,1.7EST25

This commend line would cause the file TEST.TXT on drive 0 to be copied
into a file called TEST25.TXT on drive 1. Note how the second file's
extension defaulted to TXT, the extensicn of the input file.

The second tyre of COPY allows copyino a file from one drive to another
drive with the file keeping its original name. An example of this is:

++4COPY C.LIST.CMD,1

Here the file namec LIST.CMD on drive C would be copied to drive 1. It
is again necessary to specify the file's extension in the file
specification. This form of the command is more convenient than the
previous form if the file is to retain its original name after the

copying process.

C.3.1-


---

FLEX User's Manua’

The fine) form of COPY 1s the most versatile and the most powerful. It
is possible to copy all files from one drive to another, or to copy only
those files which match the match list characters given. Some examples
will clarify its use:

+++COPY,0,1
#++COPY,1,0, CMD, SYS
+++COPY,0,1,A,8,CA.T

The first example will copy all files from drive 0 to drive 1 keeping
the same names in the process. The second example will copy only those
files on drive 1 whose extensions are CMD and SYS to drive 0. No other
files will be copied. The last example will copy the files from drive 0
whose names start with ‘A' or ‘B' regardless of extension, and those
files whose names start with the letters ‘CA’ and whose extensions start
with 'T'.,to the output drive which is drive 1. The last form of copy
is the most versatile because it will allow putting just the command
(CMD) files on anew disk, or just the SYS files, etc., with a single
command entry. During the COPY process, the name of the file which is
currently being copied will be output to the terminal, as well as the
drive to which it is beine copied.

-C.3.2-


---

DATE

The DATE command is used to Cisplay or change an internal FLEX date register. This
date register may be used by future programs and FLEX utilities.

DESCRIPTION

The general syntex of the DATE command is:
DATEL, <month,day, year>]

where 'month' is the numerical month, ‘day’ is the numerical day, and ‘year’ is the last
two digits of the year.

+++DATE 9,5,83 Sets the date register to September 5, 1983.

-) Typing DATE followed by @ carriage return will return the last entered date.
Exemple:

++4+DATE
September 5, 1983

-~D.1.1-


---

Fo cater eee Fe peo mm ER GN ea le nba SESE cht a

DBASIC for FHL Color FLEX
(Optional at @ eost of $40.00)

DBASIC is ea command for the Frank Hogg Laboratories implementation of
FLEX for the Radio Shack TRS-80 Color Computer. It will not work with other
versions of FLEX. It allows the use of the standard Disk Extended Color Basic
under FLEX, All disk input and output operations are done through FLEX and are
completely compatible with the normal FLEX utilities. This means that files and
programs written to disk by DBASIC may be manipulated by FLEX editors,
sort/merge, ete. It also means that these files are not compatible with standard
Disk Color Basie files. However, the cassette files are compatible.

All of the BASIC language components described in the Radio Shack
manuals are implemented, with the following exceptions: ‘

1. Random files are not supported. Since you cannot open a random file, all of
the commands that require a random file such as FIELD, LSET, RSET ete. will be
of no use.

2. BACKUP, COPY, and DSKINI are not implemented and will give syntax
errors. Use the equivalent FLEX utilities instead.

3. DIR is implerented differently, The output of DIR gives filename, extension,
file size in sectors, and creation date. The two columns which give file type
information under stendard Color Basic are missing under DBASIC. That information
is not stored in a FLEX directory. You must determine the file type by the
extension. The file size is given in sectors, not granules.

4, FREE returns the number of free sectors, not granules.

5. DRIVE effects FLEX's default working drive. If you change it while in
DBASIC, it will remain changed when you return to FLEX. Likewise, when DBASIC
is started up, its default drive is the FLEX working drive.

6. VERIFY affects FLEX's verify flag. This should normally always be left ON.

7. LOC will return the current relative sector number of a file. This is not of
great value for a sequential file.

8. LOF will return the file size of a file in sectors.

9. A new BASIC command called FLEX has been implemented. FLEX will
terminate DBASIC and return to FLEX.

10. DSKI¢ and DSKO$ are completely implemented. DSKO$ should not be used
unless you a very familiar with the structure of ae FLEX disk. You can crash a
FLEX disk if you do not maintain the linkage bytes in every sector. See the
PROGRAMMERS section of the FHL Color FLEX manual.

11. The disk driver entry point at $C004 (DSKCON) for machine language
programs is not implemented. Calis to this routine will return with no action.
Assembly Language subroutines called from DBASIC should not do disk I/O, even
with e@alls to the FLEX FMS drivers. There is a conflict in the use of interrupts
between BASJC and the FHL FLEX v5.0 disk drivers which will cause @ system
erash.

~D.2.1-


---

7 ee ee eee socliewn 8 litera Tinrveducsidis Bie Pee a ST Riccar camry, tos ade a pasate

FILE RAMES AND DBASIC

DBASIC uses the same file name syntex as regular Radio Shack Disk Basic.
This differs slightly from the way file names are specified under FLEX. In
particular, under DBASIC the drive number, if specified, must be separated from the
rest of the file name by @ eolon (:). Both DBASIC and regular R.S. Disk Basic

accept either a period or @ slash as the separator between the filename and
extension.

Valid file specifications:

"PROGRAM" Default drive and extension
"PROGRAM/BAS" Default drive number.
"PROGRAM.BAS" Period as separator is OK,
"1:PROGRAM.BAS" Drive number specified.
"0:PROGRAM/BAS" The way Radio Shack likes it.

Invalid file specification:

"],RPROGRAM.BAS" DBASIC will not accept e period after
the drive number.

FILE TYPES AND DBASIC

Standard Disk Extended Color Basic maintains two bytes in the directory
entry of each file. The first byte is a number from 0 to 3 depending on whether
the file is a BASIC program, BASIC date file, machine language file, or an editor
source file. The second byte says whether the file is ASCH or Binary. Standard
Disk Basie checks these file types whenever you use a file.

There are no equivalent bytes in the directory of a standard FLEX disk.
Therefore, DBASIC neither checks nor sets the file types, and it is possible to
LOAD a file which is not a program. You must be careful.

The cefault extension for @ basic program is .RAS whether it is saved as a
binary (tokenized) file or an ASCII file. An ASCTI file is crested by adding ",A™ to
the stve command (see the SAVE command in your Color Computer Disk System
manual). It is impossible to tell the difference from the directory unless you name
them with unique extensions. A suggested method which is compatible in name only
with other FLEX BASICS is to name the binary files .BAC.

The LOAD command determines whether & file is ASCII or binary by
examining the first byte of the file, and will load either one. Binary
(tokenized) BASIC programs load faster but cannot be processed by standard FLEX
utilities.

INSTALLING DBASIC ON YOUR FLEX SYSTEM

DBASIC consists of two binary disk files, DBASIC.CMD and DBASIC.SYS.
Both files must be present on the same disk to run. If you have purchased DBASIC
along with FHL FLEX, both files should be on your system disk. If you have
purchased it separately, copy both files to your system disk.

-D.2 of -


---

DBASIC for FHL Color FLEX

EXECUTING DBASIC

To execute DBASIC just type DBASIC at the +++ prompt from FLEX. If, for
some reason you have DBASIC on another drive than your current system drive, you
must of course specify the drive number in the standard FLEX fashion.

DBASIC may only be run from a non-32x16 Hieres mode with MEMEND unchanged.
The error message is "CANNOT BE RUN FROM THIS MODE,"

HOW IT WORKS

DBASIC moves the code of the BASIC interpreter from ROM memory to the
upper half of RAM, relocating some of it to avoid destroying FLEX. Only portions
of the Disk Besic ROM are copied due to space limitations, It then reads in the
changes necessery to run under FLEX in the new location. These changes are
contuinec in the DBASIC.SYS§ file. DBASIC does not contain any of the original
BASIC code which is copyrighted by TANDY and MICROSOFT.

‘SAVING DBASIC

Sove cf you mev est “Eow cer I save the combination of the ROM code with
DBASIC.SYS &s & Single binary file?” The answer is: You shouldn't and it won't
do eny good anvwey. It woulc take longer to load than the present method. And,
most importantly, it wouldn't work, There is no time when all of the code
necessery for DBASIC to work exists in memory at the same time.

TF - Radio Sheck to FLEX eapy program

RTF was written in DBASIC anc will copy files from a Radio Shack disk to a
FLEX disk. The program will work with single drive systems if you answer the
prompts with the same drive number (0 in this case), In addition it will give a RS
directory or a FLEX directory of a disk.

Although RTF will eopy envy R& disk file, a mechine language file will be of
little use when copied. This is pecause RTF does not mocify the file to make it
loadable with FLEX. There is a difference in the way RS and FLEX store ML
code on the cisk. RTF just does a byte for byte eopy and this is the problem.
Perhaps it is something better done efter the file has been copied to a FLEX disk.
However, all other files will copy and work ok, even BASIC BIN files.

RUN "O:RTF"
anc then just answer the prompts.
Note: RTF will only copy ASCII files properly.
Also Notes LOADM requires a transfer address, even if not needed by the program.

This is not a problem with files saved with SAVEM, but with files generated with
an assembler.

-D.2.37


---

DELETE

The DELETE cormand is used to delete a file from the disk. Its name
will be removed from the directory and its sector space will be returned
to the free space on the disk.

DESCRIPTION

The general syntax of the DELETE command is:

DELETE,<file spec>[,<file list>]

where <file list> can be an optional list of file specifications. It is
necessary to include the extension on each file specified. As the
DELETE command is executing it wil? prompt you with:

DELETE “FILE NAME"?

The entire file specification will be displayed, including the drive
number. If you decide the file should be deleted, type "y's otherwise,
any other resr-rse will cause thet file to remain cr the disk. If a 'y'
wes tyrec, the messace ‘ARE Yeu SURE?’ will se displayed on the
terminal. If ycu ere absolutely sure you want the file deleted fron the
disk, type ancther ‘'Y' and it will be gone. Any cther character will
leave the file ‘rtact. ONCE A FILE HAS BEEN DELETED, THERE IS NO WAY TO
GL TT Les! ze abs liutely sure your have the right file before
answering the crorot cuesticns with Y's. Once the file is deleted, the
scace it hac occuciec on the disk is returned back cc the list of free
space for future use by other files. Few exanples “cllow:

444DELETE,MATHPACK.BIN

ELETE, 1. TEST. TXT,O. AUGUST. TXT
The first exarr’e will DELETE the file namec M-"4PACK.BIN fron the
wore ng Crive. "£ acto dy .i searching is selected, the file wili be
deleted fron the first drive it is found on. The second Jine will
DELETE the file TEST-TXT from drive 1, and AUGUST.T/T from drive 0.

There are several restrictions on the DELETE commend. First, a file
that is delete or write protected may not be celeted without first
removing the protection. Also a file which is currently in the print
queue (see the PRINT command) can not be deleted using the DELETE

conmand.

-D.3.1-


---

DISPLAY

The DISPLA: comzmens is uced te send etrings of characters. 29 the
terminal or: printcr. These characters can be either hex, decimal
Or ascii.

ESCRIPTIC?:

The general syntax of the DISPLAY command is:

PISPLLY <Lisec>
were <list> is 2 list of characters or hex cr decimal valees to
send to the terminal or printer.
DISFLAY £$14,$20,$20 Will send an Ctri T anG 2 spaces
DISPLAY 22, 32, 32 will dao the same thing
DISELAY "Pelle" will sead the string <Kello>
DISPLAY $02,'= will cenad 2 anc an <=>

Tnese Car be intermixed on the same line:

DISPLAY S$1E,'=,"AB","Bclio There",27,'=
Nex characters must be preceded by a '$', single Ascii characters
woot be precegeca by a "'", ond strings of cheracters must be
encleseée with '"'. Decimal numbers must not be preceded by
anything. Speces or commas must seperate characters. A error will
be printrea if 2 bed hex nunber is encountered and a syntax error
for overything else.

This commanc can ve used in the startup file to preset your
terminal er if preceded dy the 'P' comuand will send those
characters te the printer. DIEPLAY reciges in the UCS anc can be
callel frer programs like Stylo to change the serell rete of the
SCIrfacie

WMA TTT T

scroll

Change to
tc th sercll

ju
Chance ex

o-
mp
ANS
26

of

Clear screen and print MESSASE in the center of the screen.

aa

ESSAGE IN THD STATUS LINE",22,6

a

DISPLAY 4,2,514, 56, 40,7
Kill status lines (4), clear screen (2), print the meesage on the
24th line ($14,56,40), set a status line end meke it inverted (23
and 6).

~D.4.i-


---

A eos se miRNA she tae by cee

EXEC

The EXECute command is used to process a text file as a list of
commands, just as if they had been typed from the keyboard. This is a
very powerful feature of FLEX for it allows very complex procedures to
be built up as a command file. When it is desirable to run this
procedure, it is only necessary to type EXEC followed by the name of the
command file. Essentially all EXEC does is to replace the FLEX keyboard
entry routine with a routine which reads a line from the command file
each time the keyboard routine would have been celled. The FLEX
utilities have no idea that the line of input is coming from a file
instead of the terninal.

DESCRIPTION
The general syntax of the EX command is:
EX£C,<file spec>

where <file spec> is the name of the command file. The default
extensior is 7x7. An example will give some ideas on how EXEC can be
used. One set of commands which richt be performed quite often is the
set to make a new system diskette on crive 1 (see NEWDISK). Normally it
is necessery to use NEWDISK and then cory all .CMD and all .SYS files to
the mew cis:.  Firatiy the LIN rust te performed. Setter ther havire
to tyre this set of commands each time it was desired to produce 4 new
syster diskette, we could create a command file called MAKECISK.TXT
which corteined the necessary corrends. The BUILD utility should be
used to create this file. The creation of this file might go as
follows:

#4++B UILD,MAKEDISK
NowDISh,1
Mee ey LOW, SYS

3 2

t
»

q
d

H ton fe
WT
ae
Pad
wow
be
es

“ry
f+
mr
Sport

++4

The first line of the example tells FLEX we wish to BUILD a file called
MAKEDISK (with the default extens‘on of .TXT). Next, the three
necessary command lines are typed in just as they would be typed into
FLEX. The COPY command will copy all files with CMD, OV, LOW, and SYS
extensions from drive 0 to drive 1. Finally the LINK will be performed.
Now when we want to create a system disk we only need to type the
following:

444E XEC,MAKEDISK

We are assuming here that MAKEDISK resides on the same disk which
contains the system commands. EXZC can also be used to execute the

STARTUP file (see STARTUP).

-E,l.l-


---

LEY User's Manual

There ere rary applications for the EYEC command. The one shown is
certainty useful but experience and imagination will lead you to other

useful applications.

IMPORTANT NOTE: The EXEC utility is loaded into the very upper end of
user memory. This is done by first loading EXEC into the utility file
space, then calculating the proper starting address so that it will
reside right up against the end of the user memory space. Next EXEC is
moved tc that location and a new end of memory is set to just below
EXEC. When the EXEC file is finished, if the user has not further
changed the menory end location, EXEC will reset it to the original

value.

-E.1.2-


---

fe ee ies A ng gree seme ne Sa oti ne NS a

EXT
External Termina] Utility

Ext will allow a@ standard serial terminal such as a TVI 910, to be hooked to
the RS232 port of the Radio Snack Color Computer. Additionally, a printer may be
hooked to the terminal. EXT uses the baud rate as set for the printer with
SETUP. EXT also frees the 2K used by FLEX at the top of memory (B7FF-BFFF)
by moving it to screen memory, and it too resides there.

This utility will eontro] the capability built into the terminal that turns the
terminal's printer port on and off.

DESCRIPTION

The general syntax of the EXT commance is:
EXT,n,p1,P2,...PN,M,q]1,q2,...qQm,ec

where

n (decimal) is the number of characters in the sequence to diseble printer pass-
through on the terrrinal.

pl-pn (hex) are the charecters in the sequence to disable printer pass-through. This
sequence is also sent when EXT is run to initialize the terminal.

mr (ure@inel) is the numbe: of Giiatécters in the sequence to enable printer pass-
through on the terminal.

ql-qm (hex) are the charecters in the sequence to enable printer pass-through.

ec (hex) is the character genereted by the input routine if @ transition on the
input line is detected by the stetus routine. If ec is 0, no character will be
generated, although the true status will be returned.

A maximum of 12 characters may be supplied for each sequence.

The default calling sequence (for Televideo 910 terminals) is :
EAT,3,1B,61,0£,3,1B,60,1B

If any of the defaults are changed, all the parameters must be entered.

Note the "OE" added to the default disable sequence. This code disables the

XON/XOFF software handshaking on the 910. The new EXT is sensitive to any

transition on the input line for the purpose of interrupting printing (it is no longer

necessary to use the BREAK key), and the XOFF generated when the buffer is full

would interrupt output, requiring an ESCAPE to be input.

Also Note that EXT will not run if MEMEND is not B7FF. This condition applies if

in a 32x16 mode, if already in EXT, or if MCOMMAND or something that changes
MEMEND has been run. EXT prints the error message "CANNOT BE RUN FROM

THIS MODE®,

~Ee2elm


---

EXT
Extended Terminal Utility

INSTALLATION

The terminal is connected to the CC vie the RS-232 port (serial 1/0) on the
back of the CC. This is a four connector DIN connector numbered 1,2,3 and 4.
This is connected via cable to a DB25 connector. Pin 2, called "RD" and
previously used for RS232 input, should now be connected to the DTR lead from
the terminal. EXT uses this signal to implement true hardware handshaking.

Pin 1 of the DIN goes to Pin 2 of the DB25
Pin 2 of the DIN goes to Pin 20 of the DB25
Pin 3 of the DIN goes to Pin 7 of the DB25
Pin 4 of the DIN goes to Pin 3 of the DB25

The Microline 82A _ printer is connected to the terminal via a cable with two
DB25 connectors.

Pir. 1 of the @24 DB25 goes tc Pin 1 cf the 910
Pin 3 of the 82A DB25 goes to Pin 3 of the 910
Pin 7 of the 82A DB25 goes to Pin 7 of the 910
Pin 11 of the 82A DB25 goes to Pin 20 of the 910

The baud rate of the TVI 910 and the 862A are both set to 9600 baud, The
SETUP command is usec to set FLEX's baud rate at 9600 also. i.e: SETUP
PB9600

Then the command EXT is executed and the '+++' will appear on the terminal.
If you type 'P CAT 0’ a catalog of drive zero should appear on the printer anc the
prompt shoule appear back on the terminal after the catalog is done.

The INT command is usec to return to the Color Computer keyboard and
display.

If your terminal cannot send characters to the printer without also sending
them to the terminal (like the ADDS viewpoint), you can use the extra characters
(up to 12) sent to the terminal after printing is done to reset the terminal (clear
screen, set cursor, ete.) before continuing. This may need to be done if control
codes are sent to the printer that may foul up the terminal.

There ere many different hardware combinations (terminel/printer) that will
probably work with EXT. But because of this great variety it is very hard to
predict whether any particular set will work. We have included all the things in
EXT that we could think of to make this job easier and will be very happy to
modify and add to EXT whatever is necessary, if practical, to enhance it. If you
have problems implementing EXT then send us, by mail, as much information about
your problem as you cen. Pleese don't call about this because you probably will
not get someone that could help over the phone anyway. Things of this nature
take time to consider and Ma Bell doesn't need your money that bad. Besides, you
should be spending it on more software.

Good luck and enjoy this amazing and very useful program,

~Eedee-


---

mn me ST RN 9 ate emai Se Ee SE Ae it LEM eg

GET

The GET eommand is not a Disk Utility Command. It is a memory resident
command (See page 1.7 in the FLEX User's Manual section). However, since many
people expect it to be in the Utility Command section of this manual, we are
including it here.

The GET command is used to load a@ binary file into memory. It is a@ special
purpose command and is not often used.
DESCRIPTION
The general] syntax of the GET command is:
GETI,<file name list>]
where <file name list> is: <file spec>[,<file spec>] etc.
The action of the GET commanc is to load the file or files specified in the list

into memory for later use. If no extension is provided in the file spec, BIN is
assumed. In other words, BIN is the default extension.

Examples:

+++CET,TEST
+++GET,1.TEST,TEST2.0

where the first example will load the file named 'TEST.BIN' from the assigned
working drive, anc the second example will load TEST.BIN from drive 1 and
TEST2.BIN from drive 0.

-G.1.1-


---

The HELP command is an online help utility of the type usually found on
large computers. It reads text from a file called HELPCOCO.DIR. This file is a
stendard FLEX text file and as such can be acded to or modified by any standard
editor.

DESCRIPTION
The general syntax of the HELP command is:
HELP[,<search string><?>]

where <search string> is a string of characters (up to 8) in the same format as a
FLEX command. HELP will look thru the file HELPCOCO.DIR for a match. HELP
only looks at lines that begin with a printable character and when it finds a match
it will print ell lines that begin with & space, until it hits ea line thet begins with a
non-spaece charecter, et which point it will stop and return to FLEX.

If <seerch string> ends with @ <?> then ali metches thet begin with those
charecters will be printed.

EXAMPLE
HELP CAT

This will print information about the CAT commanc,
HELP D?

This will print information about anything that begins with a 'D', such as DIR,
DUMP and CELETE.

Making changes to the HELPCOCO.DIR can be cone with any FLEX editor.
Remember thet the first cheracter in the line is importent. Look at the supplied
file to understand the format.

You coulc, for example use this utility to find names in a name and
address file, or parts in a part number file etc.

HELP for the TRS&-80 color computer is ea scaled down version of the more
complete HELP utility written by Dele Puckett that Frank Hogg Laboratory, Inc.
sells. The program is written in 6809 assembly language. ASM or ASMB is required
for assembly. The larger HELP hes such things as WILDCARD characters, optionel
file names, additional file names, and search string prompt. It woulc make @ very
fast mini database program. The cost is $29.95 for object only and $49.95 for the
source included on the disk.

-H.1.1-


---

The 1 command allows a utility to obtain input characters from a disk
file rather than the terminal.

DESCRIPTION
The general syntax of the ] canmand is:
I,<file spec>,<command>

where <file spec> is the name of the file containing the characters to
be used as input and <command> is the FLEX utility command that will be
executed and that will receive that input from <file spec>. The default
extension on <file spec> is «TXT.

For example, say that on a startup you always wanted the file DATA.DAT
deleted from the disk without having to answer the "ARE YOU SURE?"
questions. This could be done in the following manner:

++4+BUILD, YES
=Y¥Y

#

f fF

The first Y will answer the "DELETE O.DATA.OAT?"” question while the
second Y will answer the "ARE YOU SURE?" question.

+448UTLD, STARTUP
ES DELETE, DATA. DAT

7

bea

-Q
oY

"on

Te

Upor booting the disk, FLEX will execute the STARTUP file and perform
the following operation: delete the file DATA.DAT receiving all answers
to any questions from the input file YES.TXT rather than from the

terminal.

See the description of the STARTUP conmand for more information on
STARTUP.

el.l.le


---

INT
Return from EXT
INT is used after EXT to return to the Color Computer.
DESCRIPTION
The general syntax of the INT command is:
INT

INT will move code previously saved in high memory and reset FLEX vectors to
point to the CC keyboard and screen.

INT will not run if MEMEND is not equal to BFFF. This will occur if
MCOMMAND, ete. is run from EXT. The error message is "CANNOT BE RUN -
MEMEND CHANGED".

=J.2,1>


---

ISM by Lloyd 1/0

FLEX VERSION 1
JANUARY 1983

COPYRIGHT NOTICE

This entire manual and the associated software is copyrighted by LLOYD 1/0.
The reproduction of this document or associated software for any reason other than
archiveler backup purposes for or on the computer for which the original copy was
acquired is strictly prohibited.

PRODUCT WARRANTEE INFORMATION

The ISM (written by Frank Hoffman of LLOYD I/O) user manual, and object
code software is supplied AS JS and without warrantee. Reasonable care has been
taken to insure that the software does function as described in this manual. If you
find a situation where the assembler coes not function as the manual cescribes,

then contact your dealer or LLOYD 1/0. An attempt will be made to correct any
errors brought to our attention, however we make no guarantee to do so.

Note: The following "full blown" assemblers from LLOYD YO are available
from your deeler. "ASM" is @ standard 6809 macro assembler for FLEX and is
available in a package with the "ED" text editor for $69.95, or alone for $50.00.
"OSM" is a larger 6809 macro assembler available for OS9 or FLEX for $99.00.
The cross assembler "CRASMB" is a larger assembler which allows cross assembling
to other CPU's. It will handle programs for the 6800, 6801, 6805, 6809, 6502,
1802, 8080-8085, and Z80. It is available for FLEX or OS9 for $200 with a choice
of one free CPU personality module (OS9 versions receive the 6809 module free).
Each additional “CPM" (CPU Personality Module) is available for $35 (with source -

$70).

Tracemerk Notices

FLEX is a trademark of Technical Systems Consultants, Inc., 111 Providence
Road, Chapel Hill, NC 27514. OS9 is a trademark of Microware Systems
Corporation, 5835 Grand Avenue, Box 4865, Des Moines, Iowa $0304.


---

Ss by LEOY! 10
Flex User Manus]

INTFCDUCTION

ISM is a interactive asseztler, It assembles cirectly to memory. Therefore, take
care when usirg it se you don't Inacvertently erase parts of memory that must be
left intect.

IS will assemble any 6809 instruction using the stencerd Motcrole syntex. You
shoulg use @ guide te €509 assembly language programming to help you learn and
use the €&CS assembly language instruction set.

IS‘! fulfills twe needs, One is te let you learn assembly language for the 6809 in a
quick and responsive way. JE assembles one line et © time just after you type it
into the computer and then tells you if you mace a mistake or not. Also it Ccispleys
the machine coce genereted from the line just assembled. Second, ISM allows you to
rake quick changes to memory using the seven Cirectives and the 680°© instruction
set.

You may type the whole word "HELP" to get a list of the seven directives when
you ere using the assembler.

There gre severé!] things to kecp ir: mind when reading this manual. Items enclosed
vithin the greater-less then signs ( '<' '>' ) are requirec, and items enclosed within
brackets ( '[' ']}' ) are opticnal, that is they may be omitted.

INVOKING THRE ASSE™BLER

The irvohing systex for the essex bler is:

This will cause the assembler to loac and execute. Then typing ‘A' will print e
hexececimel nur.ber follcwed by @ space, The number is the current address where
object coce (bytes generatcd) will be storad. This mumber jis referrod te as the
PPOCRAM COUNTER, You may now type in any of the seven assembler
gn

4 at
direetivessss er any $209 instrueticn (mnemonic).

If vou type in invalid mnemonics (directives or instructions) (pronounced "new-mon-
iks") you will get error messages, Once the line is assembled, the code generated
is displayed following the starting adcress cf the code to the last byte of the code.

-[,3.1-


---

ISM by LLOYD 1/0
Flex User Manual

The next PROGRAN COUNTER position is displayed (in hexadecimal) and you may
type In another mnemonic.

You must always refer to other memory locations by their actual edcress. Full
blown asser.blers sllow you to cefine a memory location as a SYMBOL. Some
programs can have huncrecs or thousands of symbols. Using symbols mekes it easy
to write programs because the assembler can use the velue of a symbol to
automatically generate the right eddresses for such things as jurp anc branch to
subroutine instructions. Ir IS‘) you CANNOT use symbols. This is because it woulc
require a lerger assembler, symbol stcrage space, and two passes of ell the lines of
the progrem.

Fowever FS"! supports 12 "“dursniy” symbols which ere seme of the more commonly
usec FLEX systems calls. These ere predefinec and are a permenent part of ISV.
Full blewn essemblers allow you to define eny symbol name you want, to any value
you wart with @ meximur muicber of 30 echerecters for the LLOYD I/7 assemblers,

This tenuel will eontein definitions of the 12 symbols, the seven directives, and
exarrics of how to use them,

-],3.2-


---

wera NER Set

Ist by LLOYD Vo
Flex User “tanual

ASSEMBLER DESCRIPTION

This assembler was written to accept standard assembler free formset syntay. It
follows then that the user must be familiar with assembly language format, and
more particularly, with the Motorole formet.

ISN accepts source coce lines one at € time from the control port. The allowable
cheracters are between $2C through ¢7E. Typing ‘return’ ends the input and allows
the assembler to assemble the line you just typed. If you make a mistake while
typing ir instructions you may back-space by using your FLEX 'BACK-SPACE'
charecter whieh is normally e control H (“H). If you want to delete the whole line
you may type the FLEX "DELETE! character which is normally a control X (“X).

Each line mey be & meximium of 127 charecters followed by a earriage return ($0D),
Two fielcs ere recognizec by the assembler as valic code to process. These consist
of (from left te right) the the OPERATOR (mremonie), and the OPERAND, Fielcs
are seperetec by one or more space cheracters ($20). Form:

<operator> [operand]
The restrictions enc optiens for etch fielc are as follows;
OPERATCH FIELE

1, The operctor is one te six characters of the
letters 'A' to 'z', 'at to fz’, anc 'C' to 'S',
and are followed by € space (€20).

2. Lower cese letters are convertec to upper cese.

3. “inencnies that use € register specifier may delete
the sepereting space.

4, “lust stert in the first position in the line.

OPERANE FIPLD

1, AU cperends are generally ccnsiderec an expression

2. The operands are evelueted for the expression value and the addressing mode
USEC,

3. Some instructions co not require an
operand sc in thet case, this fielc is omitted.

-1.3.3-


---

IS! by LLOYD Yo
Flex User “Manual

EXPROSSICNS

Expressicus eonsist of combirations cfnurnbers or lebels separated by the operators,
The arithmetic is done in 16 bit integers. Fight bit results are taken from the
least significant 8 bits. Expressions must not contcir spaces, anc the expression is
terminetec when @ space, carriage return, or an illegal character is found.

Expressions are evaluated according to the following list of operator precedence.
More then one operetor of the seme type withcut parenthesis are evaluated left to
right.

Parenthesizec expressions

Unary plus and minus (+,-)

Shift operators (>>,<<)

Multiziy and divice (*,/)

Adcitien and subtraction (+,-)
Relational operetors (<,>,<=,>=,<>,=)
logical NOT operstor (!)

Logicel AND and CN operators, (2,2)

os ©

02 2D OS WN

NUMBERS

There cre five types cf numbers allowed. These are decimal (default), binary,
octel, hexacecimel,and ASCII This is & summary of the allowec formats for
numer:

BASE PREIS CSTFi> ALLOWED CHARACTERS
Decime nonce none 0-9
Binary °3 not ellowec 0-3
Cetal é net ellowed 0-7
HNexacccinal $ not ellowec o-°,4-F,(e-f)
ASCH ‘ not ellowes $20-E7F

-1,3.4-


---

SYMBOLS

Symbols are names of veles.
first cherseter riust de in the
oefinec by the character '*'.
cheracters,

type

math

logical

rélaticré]

SYMBOL EVALUATION

The following symbol
permeénent pert of IS’ and no cthers ~ay be deflired.

ge?
WARNS’
'CGETCER!
‘PUTCER'
TIN BUFF!
'PSTRNG!
"PCRLF!
"2 TCHR!
'OUTDEC'
‘CUTHEX?
'GETRES!
TOUTATR!
INDEC'

raries anc their valves are recegrize’ by IS,

IS by ELOY VO
Flex User Manure}

Operators
operation operator form
edd + value+value
subtract - valuevalve
multiply * valre* value
civide / vaite/velue
anc & valveévelue
cr ! valvetvalue
not ! tvalue
shift right >> value>>count
stift left << value<<count
equel = velue=vélue
less than < value<valve
greeter than > velue>valie
less than or equal <= velue<=valve
greeter then or ecunl >= value>=valve
net ecucl <> velue<>velue

Trey Fay Se 2 sy The
ASCH range of CA-Z,e+7) The current PC velue is
Vprer ease chareeters ARE equivelent to lewer case

“sbolie valve or the PC velue.
é
we

Trese ere @

The current progrim ecounter's valve

$CDI6 FLEX warn start entry point

$CD1i [LES mair irput character subroutine

SCDIE FLEX main output character sub-outine
$CDI™ FLIX input inte line buffer

$CD1" FLFA print e string of ehareeters

$CD2- FLEX print carriege return, lire feed

SCD27 FLEX get the next cherecter from input line
SCD3o FLEX print @ decimal number

$CN3C FLEX prirt a byte as e hexadeciz-.al number
SCM4c FLUX get & hex nuvber fror: input tuffer
SCDI& FLIES print en address as € hexacecimel rur-ber
$CDif FLEX get c decime) number froin input buffer

~1.8,5-

Ae praca Aca


---

IS by LLOYT: YO
Flex User “anue]

ORJECT CODE FCRMAT

This assembler generates object code which is stored cirectly inte menrory et the
current PROGRAM COUNTER's value, Therefore take care when uSing ISM because
it can erase parts of memory you had no intenticn of cestroying.

~].2,6-


---

ISM by LLOYD YO
Flex User Manual

ASSEMBLER DIRECTIVES

ISM supports the following directives or pseudo operetors.

SUMMARY

FCC form constant cheracter(s)

FCB form constant byte

FDB form double byte

ORG define a new origin (*)

an Signal end of assembly

RiB reserve memory bytes

RUN execute & program at a specified address
FCC

The funeticn of FCC is to create character strings for messages, or tables. The
cheracter string 'text' is brcken down to ASCII, with one character per byte. The
format is:

label FCC delimiter text same delimiter
where the celimiter is usec to define the starting and encing areas of the string. A
maximum ef 256 charecters mey be defirec, There is another form for this
cirective, It is for example:

FCC "THIS IS TEAXT",$OD,&0A,4
This veriation allows strings to be set up for printing without Faving to use theform
FCC,FCR. Commas may be usec withir the delimiters. There may be multiple strings
as ir. this exemple:

FCC /This is text/,$0D,$0A,"This is another line",4

or
FCC /This, however is a line with a comma which is legal/,4

The only expressions recognized ere cecimal or hexadecimal, or an expression
sterting with a symbol,

-I,3 PY fo


---

ISM by LLOYD 1/0
Flex User Vianual

FCB
FCB is used to evaluate an expression and use the results for an eight bit result.
Multiple expressions are separated only by @ comma, and may generate up to 256
bytes of cbject code. The format is:

label FCB expression l,expression 2,...expression N
PDB
The directive FDB is the same as the FCB directive, however, 16 bit results are
used rather than 8 bit.
ORG
The ORG directive causes a nev’ origin accress (PC) for the subsequent code that
follows, The format is:

CRC expression
Tne cdefeult origin is zero (6000). This directive is usec when you want to assemble
code to e new location.

END

This cirective causes the assembler tc quit. The format is:

ENT
When you are done usirg the assembler this directive must be used to eause IS to
stop getting input anc return tc the monitor or FLFX.
RMB
This directive is used to 'Reserve Memory Bytes’, It is a reletive originate
cirective. It simply acds the velue of the expression which follows to the current
PROGR2AN COUNTER and creates & nev. velue for the PROGRA* COUNTER. The
format is:

RMB <expression>
RUN

This directive allows you to start a program runnirg. Jt actually passes control to
the address specifed. Format:

RUN <adcress>

“T.3.8-


---

Address
if you w

ISM by LLOYD Yo
Flex User Vanual

is any legal expression, Contre] is pessed to it as a subroutine. Therefore
rite & stort progran. to do something it shoulc end with a "KTS" (return

from subroutine) or "J\MP" to another location such as the FLEX "WARMS" address.

EXAMPLES

The following short progrem illustrates the use of the directives anc some 680s
MmnEMOrICS.

0000

annn

ORG $4000

2000 LEAX $48C0,PCR

4004
4007

JSR OUTALDR
LEAX $4602,PCR

) 40D JER PSTENC
A00E FETS
400F CRG $4800

&8C0
4802
4825
E26

PDB *4+2
FCC / THAT IS TEE ADDRESS OF THIS STRING/
FCB $

RMB 20

HOA RUN $4000
485A END

Remerbe
prints the

y)

ISM suppa

vr the nnenonie must stert in the first eolur:n of each line, The assembler
current PROCRAN COUNTER velue anc one space,

ERROR MESSAGES

rts the following error messeres,
o

1, UNDEFINED SYMBOL
2. ILLEGAL CHARACTER(S)

3. UNRECOGNIZABLE MNENMCNIC
4, RELATIVE BRANCE TOO LONG
-« ILLEGAL ADDRESSING "10DE
» ILLEGAL REGISTER SPECIFIED

» ILLECAL EXPRESSION

)
6
7, ABORTING.. MEMORY OVERFLCW
8
$

UNSALANCED PARENTHESIS IN EXPRESSION

~1.3,9-


---

IS! by LLOYD 1/3
Flex User iMeénucl

The following mnemonics are supported to aic inconverting any 6800 programs tc
the 6809.

ABA — STAB ,-S;ADD A ,S+
CBA — STAB ,-S;CMP A ,S+
CLC — ANDCC #§FE

CLF — ANDCC é$EF

CLI — ANDCC #8EF

CLV — ANDCC #$FD

CLZ — ANDCC #$FB

CPA — CMPX

DES — LEAS -1,8

DEX — LEAX -1,X

mS — LEAS 1,8

INX  — LEAX 1X

SBA — STAB ,-S;SUB A ,S+
SEC — CRCC #£01

SEF — CRCC #$40

SF] — CRCC #£10

SEV — ORCC HEO0

SEZ  — CRCC #804

TAB — TFR A,R ; TSTA
TAP — TFR A,CC

TBA — TFR BA; TSTA
TPA — TFRCC,A

TSX  — TER SX

TAS — TFR X,§

Wil  — CWAl #$EFr

SFTRP — SET THE DIRECT PAGE VALUE AND FLAG

SETIP <EXNPRESSION> or SETDP ON or SETDP CIF

Exarcles of SETDP:

SETDP 0
SETDP $F0
SETDP LON

The SETDP Girective is used to allow: the essembler to make the choice of whether
or not to used direct page or extenced addressing moces.

Lxtended and direct addressing modes may be forced by preceding the operand
expression with an indicating cheracter. Use the '>' greeter than sign to force
extended addressing and use the '<' less than sign to force direct addressing modes.

As in:

STD >$00forees extended addressing
LDA <$EE23forces direct adcressing

~[.3.1 0-


---

ISM by LLOYD YO
Flex User Manual

If neither mode is foreec the asserMer trys to use direct, by comparing the upper
byte of the operand expression value to the current SETDP value. If they ere not
equal, or the SETDP is off, extended addressing modes are selected.

Some instructions allow for the form of:

STA A, STA B, STAA, STAB, STA, and STB. These include ST, OR, anc LD. Also
rinemonies that call for a register specification character(s) mey be followed by a
space before the register name. These types of mnemonics usually will have the
register neme printed where the normal position of acc, A or B was for the 6800

asseribler.

Some instructicns require an acdressing mode which may be indexed. Most cf these
ere inciected by the use of e comma (,)within the operand expression.For example
"PCR" will not work for a 0,PCR value, itmust be ",PCR" or "0,PCR",

Auto inecrement-decrement is done as 0, X+ 0, K++, N+, X++ or 0, -K OC, —X, -
X, —%.

-[.3.] i-


---

Sno ETE te ear ato

JUMP

The JUMP command is provided for convenience. It is used to Start
execution of a program already stored in computer RAM memory.

DESCRIPTION
The general syntax of the JUMP command is:
JUMP,<hex address>

where <hex address> is a 1] to 4 digit hex number representing the
address where program execution should begin. The primary reason for
using JUMP is if there is a long program in memory already and you do
not wish to load it off of the disk again. Some time can be saved but
you must be sure the program really exists before JUMPing to it!

As an example, suppose we had a BASIC interpreter in memory and it had a
‘warm start’ address of 103 hex. To start its execution from FLEX we

type the following:
4++4+J0 UMP, 103

The BASIC interpreter would then be executed. Again, renember that you
must be absolutely sure the progrem you are JUMPing to is actually
present in menory.

-J.l.1-


---

LINE

The LINK command is used to inform the boot loader ("FLEX/BAS") where
the FLEX operating system resides on the disk. It is necessary to run LINK to
make a disk usable for booting FLEX.

DESCRIPTION
The general syntax of the LINK command is
LINE, <file spec>

where <file spec> is usually FLEX. The default extension is SYS, LINK asks for
confirmation of the command, allowing the disk to be changed if necessary.

An example of the operation of the LINK command foliows:

+++LINK FLEX
LINK "0.FLEX.SYS"? Y

-L.1.1-


---

LIST

The LIST command is used to LIST the contents of text or BASIC files on
the terminal, It is often desirable to examine a files without having
to use an editor or other such program. The LIST utility allows
examining entire files, or selected lines of the file. Line numbers may
also be optionally printed with each line.

DESCRIPTION
The general syntax of the LIST command is:
LIST,<file spec>[,<line range>J[,+(options)]

where the <file spec> designates the file to be LISTed (with a default
extension of TXT),and <line range> is the first and last line number of
the file which you wish to be displayed. All lines are output if no
range specification is given. The LIST command supports two additional
options. If a +h option is given, line numbers will be displayed with
the listed file. If a +P option is given, the output will be formatted
in pages and LIST will prompt for "TITLE" at which time a title for the
output may be entered. The TITLE may be up to 40 characters long. This
feature is useful for obtaining output on a printer for documentation
purposes (see P command). Each page will consist of the title, date,
page number, 54 lines of output and a hex OC formfeed character.
Entering 2 +NP will select both options. A few examples will clarify

the syntex used:

++4LIST,RECEIPTS
444 LIST, CHAPTER], 30-2C0, +NP
#+4L IST, LETTER, 100

The first example will list the file named ‘RECEIPTS.TXT' without line
numbers. All lines will be output unless the ‘escape character’ is used
as described in the Utility Command Set introduction. The second
example will LIST the 30th line through the 200th line of the file named
"CHAPTERI.TXT' on the terminal. The hyphen (‘-') is required as the
range number separator. Line numbering and page formatting will be
output because of the ‘+NP' option. The last example shows a special
feature of the range specification. If only one number is stated, it
will be interpretted as the first line to be displayed. All lines
following that line will also be LISTed. The last example will LIST the
lines from line 100 to the end of the file. No line numbers will be
output since the 'N' was omitted.

-L.2el-


---

MON

FHL Color FLEX contains a machine language monitor. The name of the
monitor is 'MON', Typing 'MON' will invoke the monitor while typing "ROM' will
return to RS Basic. If you are like me and have gotten used to typing 'MON' to
return to RS Basic, then you will find the “QG command useful. “Q will return to
RS Basie from 'MON’,

MON is a machine language monitor. The commands available are:

C.. Compare two blocks of memory.
D.. Display memory in HEX.
F.. Fill a block of memory with a value
J. Jump to a user program (Break to exit).
M.. Memory examine and change
Space to advance ~ Backspace to go back.
“D.. Displey memory in ASCII
R.. Replece one byte with another within a range.
W.. Warm jump back to FLEX.
S.. Search a block for a byte.
T.. Transfer a block of memory.
X. Register dump.
H.. Help list.
“x.. Change register.
“Q.. Quit and goto RS Basic.

The '*' means for you to hole the CTRL key (Shift and up arrow) while typing the
character.

Remember that RS Basic is not in memory, so if you try to jump to it form

MON you will probably go off into the ether, never to return, unless you hit the
reset key - and that may not even work.

-“M.1.1-


---

MOVEROM

The MOVEROM command is used to copy Radio Shack COLOR BASIC and
Extended COLOR BASIC from ROM to RAM. Because of memory eonflies,
MOVEROM can only be used with an externa] terminal and the EXT utility.

DESCRIPTION
The general syntax of the MOVEROM command is

MOVEROM

This command will make an exact copy of the COLOR BASIC and Extended
COLOR BASIC ROM's in RAM, at the exact same address, The user may then use
other FLEX commands to study or modify the BASIC interpreter as desired.

NV o2el>


---

N

The N (No) utility allows you to predetermine how e yes/no prompt from another
utility will be answered.

DESCRIPTION
The general syntex of the N command is:

N,<COMMAND>
where the command is any applicable utility command file.
This command might be used when copying entire disks where some of the files
being copied already exist on the destination disk and you don't wish them to be
deleted. An example of this would be:

+¢4N,COPY 0,1

This will answer "NO" to a possible question of "FILE EXISTS. DELETE
ORIGINAL?"

As you can probably see, you should exercise care in using this utility.

-N.1.1-

NH 1 Sots aah ea th a!


---

NEW DISK

The NEWDISK command is usec to initialize a new or damaged disk for use
with FLEX. NEWDISK is different from the Disk Extended COLOR BASIC DSKINI
command, although the basic function performed is the same.

DESCRIPTION
The general syntax of the NEWLCISK command is:
NEWDISK <drive number>

where <drive number> is the number of e disk drive into which the disk to be
formatted will be placed. NEWDISK requests confirmation of the command from
the user twice; if any answer but "¥" or "y" is given, NEWDISK will abort
immediately.

NEWDISK then prompts the user for the following specifications: the
number of sides, the density, and the number of tracks. If any reponse is
incompatible with the disk drive (as indicated by the Drive Configuration Table),
the command is aborted.

Finally, NEWDISK requests 6 Volume Name and Volume Number for the
disk. At this time formatting of the cisk begins.

NEWDIEK mey Ciscover that the desired number of sectors (18 in double
density, 10 in single) will not fit on the track. This is because NEWDISK uses a
larger gap between the sectors than Disk Extended COLOR BASIC, for more
reliable data storage. The exact track length varies from drive to drive. If the
desirec number of sectors will not fit, NEWDISK automatically reduces this number
and reports "TRIMMING TRACK SIZE ...”.

If NEWDISK does not trim the first track it formats but finds that
trimming is requirec on a later track, formatting will be aborted. In this case the
command will probably run correctly if issued again.

Note that all FLEX disks are single Censity on track 0.
An example of NEWDISK operation follows:

+4+4+NEW DISK 0

ARE YOU SURE? Y

SCRATCH DISK IN DRIVE 0? Y
DOUBLE SIDED DISK? N
DOUBLE DENSITY DISK? Y
NUMBER OF TRACKS? 35
VOLUME NAME? MYDISK
VOLUME NUMBER? 42182
FORMATTING COMPLETE
TOTAL SECTORS = 612

NEW DISKA

NEWDISKA is the same as NEWDISK but uses a smaller gap between sectors and
should be used with 40 or 80 track, single or double-sided drives. Using it will
guarantee the full 18 sectors per track but could cause a problem if your drives
are not up to snuff. Test it first. For the most part, 40 or 80 track drives are
of a high enough quality that using NEWDISKA to format will not eause a problem.

-N eee 1-


---

The O {not zero) command can be used to route all displayed output from
a utility to an output file instead of the terminal. The function of 0
is similar to P (the printer command) except that output is stored in a
file rather than being printed on the terminal or printer. Other TSC
software may Support this utility. Check the supplied software
instructions for more details.

DESCRIPTION
The general syntax of the 0 command is:
0,<file spec>,<command>

where <command> can be any standard utility command line and <file spec>
is the name of the desired output file. The default extension on <file
spec> is .OUT. If O is used with multiple commands per line (using the
"enc of line’ character ':') it will only have affect on the command it
immediately precedes. Some examples will clarify its use.

$440 ,CAT, CAT
writes a listing of the current disk directory into
a file called CAT.OUT

+++0 BAS, ASMB,BASIC.TXT
writes the assembled source listing of the text
source file 'BASIC.TXT' intc a file called ‘BAS.OUT'
when using the assembler

0. lle


---

The P command is @ memory resident command, It is very special, and unlike any
of the cammands currently in the UCS. P is the system print routine and will
allow the output of any command to be routed to the printer. This is very useful
for getting printed copies of the CATalog, or if used with the LIST command to
print out copies of a FLEX text file.

DESCRIPTION
The general syntax of the P command is:
P,<eommend>

where <command> can be any standard utility command line. If P is used with
multiple commands per line (using the ‘end of line' character), it will only affect
the command it immediately precedes. Some examples will clerify its use:

+44+P,CAT
++4+P,LIST,MONDAY:CAT,1

The first example would print a CATalog of the directory of the working drive on
the printer. The second example will print a I.ISTing of the text file
MONDAY.TXT and then displey on the terminal a CATalog of drive 1 (this assumes
the 'end of line' character is a ':'!), Note how the P did not cause the 'CAT,1' to
go to the printer. Comsult the 'Advanced Programmer's Guice’ for details
concerning the adaptation of the P commanc to various printers.

Pl end PRINT.SYS

FHL Color FLEX has a@ built in (memory-resident) printer driver as opposed to
the standard cisk-resident driver called ‘PRINT.SYS' normally found with FLEX.
Some standard FLEX programs may reference or call the PRINT.SYS file from disk
by running the 'P' commanc (different than the one explained above ~ and included
with FHL Color FLEX under the filename 'P1'.

For the sake of compatibility with FLEX programs that expect a PRINT.SYS file to
reside on disk, a "dummy’ PRINT.SYS file has been included on disk.

For more information on this, see page 1.9.

-P 1.1 ~


---

reo)

The PROT command is used to change a protection code associated with
each file. When a file is first saved, it has no protection associated
with it thereby allowing the user to write to, rename, or delete the
file. Delete or write protection can be added to a file by using the

PROT command.

DESCRIPTION

The general syntax of the PROT command is:
PROT, <file spec>[, (option list)]

where the <file spec> designates the file to be protected and (option
list) is any combination of the following options.

D A 'D'’ will delete protect a file. A delete protected file cannot be
affected by using the DELETE or RENAME Commands, or by the delete
functions of SAVE, APPEND, etc.

WwW oA ‘RK’ will write protect a file. A write protected file cannot be
deleted, renamed or have any additional information written to it.
Therefore a write protected file is automatically delete protected
as well.

C & 'C' will Catalog protect a file. Any files with a C protection
code will function as before but will not be displayed when a
CAT command is issued.

X An 'X' will remove all protection options on a specific file.

Examples:

+44PROT CAT.CMD,XW Remove any previous protection on the CAT.CMD
Utility and write protect it.

+++PROT CAT.CMD,X Remove all protection from the CAT.CMD utility.

++4PROT INFO.SYS,C Prohibit INFO.SYS from being displayed in a
catalog listing.

-P .2.J-


---

PUTBOOT.LDR

The PUTBOOT.LDR command is used to make @ newly initialized disk
useble to boot FLEX. The PUTBOOT.LDR command can not be copied from the
original disk.

DESCRIPTION
The general syntax of the PUTBOOT.LDR command is
PUTBOOT.LDR <drive number>

where <drive number> is the number of a drive into which a newly formatted disk
(see NEWDISK) will be placed. PUTBOOT.LDR asks for confirmation of the
commanc (allowing the disk to be changed) after which it takes the necessary steps
to plece the Disk Extended COLOR BASIC file "FLEX/BAS" on the disk and
prevent this file from being destroyed by FLEX.

If the disk is not newly formatted, or if it does not have 19 tracks, or if
some critical sectors were found defective by NEWDISK, PUTBOOT.LDR aborts.

An example of the operation of PUTBOOT.LDR follows:

+++PUTBOOT.LDR 0
PUT BOOT LOADER ON DRIVE 0? Y

You can make as many booteble as you need. We suggest that you make
several in cease you damage your master. If you do damage the master you can have
it replaced for only $10.00. Send your original disk along with proof of purchase
and $10.00.

-P .3,1i-


---

RENAME

The RENAME command jis used to give an existing file a new name in the
directory. It is useful for changing the actual name as well as changing
the extension type.

DESCRIPTION
The general syntax of the RENAME command is:
RENAME, <file spec 1>,<file spec 2>

where <file spec 1> is the name of the file you wish to RENAME and <file
spec 2> is the new name you are assigning to it. The default extension
for file spec 1 is TXT and the default drive is the working drive. If
no extension is given on <file spec 2>, it defaults to that of <file
spec 1>. No drive is recuir¢ on the second file name, and if one is
given it is ignored. Some examples follow:

++4RENAME ,TESTI.BIN,TEST2

+e4DENRUD TL LETTER CES

+4++RENAME COFIND. BIN FIND. CMe
The first example will RENAME TESTI.BIN to TEST2.BIN. The next example
RENAMSS the file LETTER.TXT on drive 1 to REPLY.TXT. The last line
would cause the file FINCD.BIN on drive 0 to be renavec FIND.CMD. This
is useful for making binary files created by an assenbler into command
files (changing the extersicn frem SIN to CMD). If you try to give a
file ae name which already exists ‘n the cirectory, the message:

FILE EXISTS

will be displayed on the tervinal. Keep in rind that RENAME only
chances the file's name and im no way changes the actual file's
contents.

One last note of interest. Since utility commands are just like any
other file, it is possible to rename them also. if you would prefer
some of the command names tc be shorter, or different all together,
simply use RENAME and assign ther the names you desire.

-R.1l.1-


---

ROM
ROM is a memory resident as opposed to disk resident command. It is included in
this section of the manual since most poeple tend to look for it here.
Rom is used to exit FLEX and return to Racio Shack Disk Extended BASIC.
DESCRIPTION
The general syntax of the ROM command is:
ROM

followed by the 'ENTER' key.

NOTE: To re-enter FLEX after using the ROM command, you have to re-boot
FLEX. If you wish to use Radio Shack Basic and be able to return to FLEX, then
use either CBASIC, BASIC or the optional DBASIC.

oR .2.1-


---

SANE
we

The SAVE command is used for savine a section of memory on the disk.
Its primary use is for saving programs which have been loaded into
menory from tape or by hand.

DESCRIPTION
The general syntax of the SAVE command is:
SAVE,<file spec>,<begin adr>,<end adr>[,<transfer adr>]

where <file spec> is the name to be essigned to the file. The default
extension is BIN and the default drive is the working drive. The
address fields define the beginning enc ending addresses of the section
of memory to be written on the disk. The addresses should be expressed
as hex numbers. The optional <transfer address> would be included if
the program is to be loaded and executed by FLEX. This address tells
FLEX where execution should begin. Sone examples will clarify the use
of SAVE:

+++SAVE DATA, 100, 1FF
+4+4+SAVE,1.GAME,0,16€0, 100

The ‘first line would SAVE the meccry locations 100 to 1FF hex on the
disk in a file called DATA.SIN. The file would be put on the working
drive and no transfer address would be assigned. The second example
would cause the contents cf memory locations 0 through 1680 to be SAVEd
on the disk in file GAME.BIN on drive 1. Since a transfer address of
100 was specified as a parameter, typing ‘GAME.BIN' in response to the
FLEX prompt after saving would cause the file to be loaded back into
menory and execution startec et JTocation 100.

If an attempt is made to save a procram under a file name that already
exists, the prompt “MAY THE EXISTING FILE BE DELETED?" will be
displayed. A Y response will replace the file with the new data to be
saved while a N response will terminate the save operation.

Sometimes it is desirable to save noncontiquous segments of menory. To
do this it would be necessary to first SAVE each segment as a separate
file and then use the APPEND command to combine them into one file. If
the final file is to have a transfer address, you should assign it to
one of the segments as it is being saved. After the APPEND operation,
the final file will retain that transfer address.

-S.l.le-


---

FLEY User's Manuel

SAVE.LOW

There is another form of the SAVE command resident in the UCS. It is
called SAVE.LOW and loads in a lower section of memory than the standard
SAVE command. Its use is for saving programs in the Utility Command
Space where SAVE.CMD is loaded. Those interested in creating their own
utility commands should consult the ‘Advanced Programmer's Guide’ for
further details.

=S. 1. go


---

SDC

The Single Drive Copy command is used to copy files from one disk to
another, when only a Single disk drive is available.

DESCRIPTION
The general syntex of the SDC command ts
SDC, <file spee>[,<file list>]
where <file list> is <file spee>[,<file spec>] ete.

For each file, SDC will ask the user to insert the source disk (the disk
containing the file to be copied) into the drive, after which as much of the file
will be copied into memory as possible. Then the user is asked to insert the
destination disk (to which the file is to be copied) into the drive. This process is
repeated, if necessary, until the entire file is copied, after which SDC reports FILE
COPIED. The entire process is repeated for each file, and then the message SDC
COMPLETE appears and the command terminates.

The file must not already exist on the destination drive, or SDC will abort.
An example of SDC operation follows:

+++SDC 0.FLEX.SYS

*INSERT SOURCE DISK THEN HIT KEY
INSERT DESTINATION DISK THEN HIT A KEY
FILE COPIED

SDC COMPLETE

* The 'SOURCE DISK‘ is the one that the file you want to copy is on, while the
"DESTINATION DISK' is the disk where you want the file to go to.

~S.2.1-


---

SETUP

The SETUP command is used to set up various options within the FLEX
operating system, or to generete a binary file to be appended to FLEX.SYS which
changes the setting of various options.

DESCRIPTION
The general syntax of the SETUP command is:
SETUP <option field> [<option field> ... ]

where <option field> = <key character><options>. The option field must not
contain spaces, and the option fields must be separated by spaces, The key
character determines how the options in each option field are interpreted,

The descriptions of option fields for the terminal (key character=T), for the
printer (key character=P), for memory (key character=M), and for the disk system
(key character=0,1,2, or 3) are described on separate pages. The option field for
binary file generation (key character=F) is described below. The following basic
syntax rules apply:

1. All alphabetic characters must be UPPER CASE.

2. Only valid characters (no extra separators or spaces) may eppeer in
option fields.

3. Spaces must separate option fielcs.

4. <dee> is a decimal number, which must be terminated by ea comma.

5.  <hex> is a hexadecimal number, which must be terminated by a comma.

Rules 4 and 5 are very important. The number scanning routine (internal
to FLEX) used by SETUP will skip over alphabetic characters that come after a
number, if the number is not terminated. Undesired results will occur if the comma
is left out.

For example, the string

PB1i10S3, (see SETUP-PRINTER)
would be interpreted as

PB1103,
which is not as desired.

Also note that numeric characters serve as key characters or option
characters in some places. These characters are given explicitly in the SETUP
documentation, and must NOT be terminated by a comma. Only numbers given as
<dee> or <hex> in the documentation get terminetors.

SETUP will parse all options before taking action. If en error is
detected, none of the options specified will be implemented. Instead, SETUP will
reprint the command line up to and including the character which caused the error,
indicating "ERROR ENCOUNTERED AT THIS POINT."

Normally, SETUP will implement the options in memory before terminating.
If the F key character is used, the options will be placed in a binary file instead

of in memory. The F option field must be the first option field if used. the
syntax of the F option field is:

F <filespec>

-§.3.1-


---

GETUOP cont.

The file must not already exist.
The file extension defaults to BIN.

Some examples of the use of SETUP follow. (See the sections on the
specific option fields of SETUP.)

Make the screen green, make the cursor @ blinking block and install drive one
which is @ double-sided 40 track drive with @ 6 millisecond stepping rete:

4++4+SETUP TGCC 1DT40,6
Make @ new FLEX.SYS on drive 1 which contains the above options:

++4SETUP F1.FLEXMODS.BIN TGCC 1DT40,6
+44+APPEND 0.FLEX.SYS 1.FLEXMODS.BIN 1.FLEX.SYS

~$.3.2-


---

set Wa ata EAE SORTS SECIS ENE wernt sor ite eget ner 2 ALI ae OMS EAT AEE See BE PRE acl eS osname ETERS tL

SETUP DISK

The disk option field of the SETUP command is used to change parameters
in the Drive Configuration Table, which FLEX uses to control disk operations.
The Drive Configuration Table should reflect the actual drives wired into the
system.

DESCRIPTION
The general syntax of the SETUP command with the drive option is:

SETUP [<other option fields>] <drive number><drive options> [<other option fields>]
where <drive number>=0-3 and <drive options> are described below. See the
section on SETUP for more information.

Using SETUP with a drive option will cause all Configuaration Table
entries for thet drive to be reset to the defaults, except for entries mentioned in
the option field.

The drive options are as follows:

OPTION DESCRIPTION DEFAULT

D Double-siced (two-head) drive double *

§ Single-density drive double

6 6ms track-to-track step rete no

1 12ms track-to-track step rate no

2 20ms track-to-track step rete no

3 30ms track-to-track step rate yes

Tc<dee>, Set number of tracks drive can access 40
<dee>=1-255

W<dee> begin write precompensation at track <dec> 22

p<dee> Set physical (harcware) drive number of same as
this drive to <dece> (<dee>=0-3), logical

(This option allows FLEX references to a drive to actually access a
different drive. Note that FLEX must be booted in physical drive 0.)

CAUTION: No two logical drive numbers should share the same physical
drive number, .

Examples:
Add 3 Radic Sheck Drives, 1,2 and 3: +4+SETUP 17T35,2T35,3T35

Add 3 40 Track Irives, 1,2 and 3: ++4SETUP 1 2 3
Swap references to drives 2 and 3:
+++SETUP 2P3, 3P2,
Make drive 3 e double-sided, 80-track, 6ms-step drive:
+4+4SETUP 3DT80,6P2,

Note that the P2 was repeated, otherwise it woulc have defaulted
back to P3.

* SETUP 0' will set up your drive as single siced.

~§.3.3-


---

SETUP MENORY

The Memory option field of the SETUP command may be used to examine
or ehange memory locations. It is provided with FHL COLOR FLEX because the
TRS-80 COLOR COMPUTER does not have a built-in monitor program.

DESCRIPTION
The general syntex of the SETUP command with the M option is:

SETUP [<other option fields>] M<memory options> [<other option fields>]

where <memory options> are described below. See the section on SETUP for more
information.

No separating characters of eny kind may be typed between the options.

The M options are as follows:
OPTION DESCRIPTION
E<hex>, Exemine location <hex>

NOTE: The use of the F option (see SETUP) has no effect on the ME option.
S<hex>,<hex>, Set location <hexl> to <hex2>

Exermples:

++4+SETUP ME1A0,E1Al,
01A0 4B

01Al 6D

++4+SETUP MS1A0,2C,E1A0,
01A0 4B

++4SETUP FJUNK.BIN ME1A0,S1A1,35,
Q1A0 2C

+++SETUP MEA],

01A1 6D

++4CET JUNK.BIN
++4+SETUP MEJAI,

01A1 35

Note that all Examines are done before any Sets, regardless of the order
in which they are inputted. Also note that the F option works for Set but not
for Examine.

~§.3.4-


---

SETUP PRINTER

The Printer option field of the SETUP command is used to change certain
parameters in the FLEX printer output software.

DESCRIPTION
The general syntax of the SETUP command with the P option is:
SETUP [<other option fields>] P<printer options> [<other option fields>]

where <printer options> are described below. See the section on SETUP for more
information.

The printer options have certain defaults which are the values of the
options in the FLEX.SYS file on the originel] FHL COLOR FLEX disk. Using the
P option field does not reset any options to the defaults, unless the option is
mentioned specifically in the field.

No separating characters of any kind may be typed between the options.
The P options are as follows:

OPTION DESCRIPTION DEFAULT
B<dee>, Set baud rate (110-9600) 600

NOTE: The SETUP command chooses the value to give the best possible
approximation of any baud rate in the software. Since the baud rate cannot be
set exactly, some printers may not function correctly when the baud rate is initially
set. If errors are observed on the printer, try adjusting the baud rate by +/-6%.
Also try adding more stop bits (see below).

N Normal (sends line feeds through) . Ro
RB Radio Shack (assumes auto-if) yes

NOTE: When using Radio Shack-style printers, output carriage return- line
feed as you would to a normal printer. With SETUP PR, the printer output
routine transietes er-lf to er, and translates extra if's to er's.

S<deo>, Set stop bit count (1-255) Default=1

For example, to setup for a 2400-baud, normal printer that likes its data a little
slow:

+++S5ETUP PB2200,N
To cut the Gete transfer rate in half without changing the baud rate:

++4+SETUP PS10,

~§.3.5-



---

SETUP TERMINAL
The Terminal Option Field of the SETUP command is used to change certain parameters in
the FLEX keyboerc input/output software.
DESCRIPTION
The general syntex of the SETUP command with the T option is:
SETUP [<other option fields>] T<terminal options> [<other option fields>]

where <terminal options> are described below, See the section on SETUP for more
information on the other option fields,

The terminal options have certain defaults which are the values of the options in the
FLEX.SYS file on the original FHL COLOR FLEX disk. Using the T option does not
reset eny options to the defaults, unless the option is mentioned specifically in the field.

NOTE; Do not type any separating characters between the options.

Tne T options are as follows:

OPTION DEFAULT DESCRIPTION

B 40 Set time between cursor blinks (relative scale)

cc NO Blinking block cursor

CI NO Non-blinking uncerline cursor

D<dec>, 7 Set number of key scans for debouncing

F<dec>, 300 Set pitch of Ctril-G tone (higher number yields lower tone)

G NO Set terminal screen to green background

L<dee>, 30 Set length of Ctrl-G tone (it is also dependant on the pitch)

ee M<dee>, 20 Set number of blinks before motors turn off (even if a non-

blinking cursor is used, the blinks are still counted at the se7
rate and used as a basis for turning off the motors.)

W YES Set terminal screen to white background

-S.3.6-


---

STARTUP

STARTUP is not a utility command but is a feature of FLEX. It is often
desirable to have the operating system do some special action or actions
upon initialization of the system (during the bootstrap loading
process). As an example, the user may always want to use BASIC
immediately following the boot process. STARTUP will allow for this
without the necessity of calling the BASIC interpreter each time.

DESCRIPTION

FLEX always checks the disk's directory immediately following the systen
initialization for a file called STARTUP.TXT. If none is found, the
three plus sign prompt is output and the system is ready to accert
user's commands. If a STARTUP file is present, it is read and
interpreted as a sincle command line and the appropriate actions are
performed. As an example, suppose we wanted FLEX to execute BASIC each

time the systen wes booted. First it is necessary to create the STARTUP
file:

+4+4BUILD, STARTUP
=BASIC
=#

+++

The ebove precedure using the BUILD command will create the desirec
file. Note that the file consisted cf one Tine (which is al} FLEX reacs
from the STASTUP file anvwey). This Tine will tell FLEX to Toad and
execute BASIC. Now each time this disk is used to boot the operating
system, BASIC will also be loaded and run. Note that this example
assumes two things. First, the disk must contain FLEX.SYS and must have
been LINKed in order for the boot tc work properly. Second, it is
assumed that a file called BASIC.CMED actually exists on the disk.

Another example of the use of STARTUP is to set system environment
paratters such as TTYSET parameters or the assigning of a system and
working drive. If the STARTUP commanc consisted of the following line:

TTYSET, DP=16,W0=60: ASK, Wel: ASN: CATO

each time the syster was booted the following actions would occur.
First, TTYSET would set the ‘depth’ to 16 and the ‘width’ to 60. Next,
assuming the ‘end of line’ character is the ':’, the ASN command would
assign the working drive to drive 1. Next ASN would display the
assianed system and working drives on the terminal. Finally, a CATalog
of the files on drive O would be displayed. For details of the actions
of the individual commands, refer to their descriptions elsewhere in

this manual.

As it stands, it looks as if the STA®TUP feature is limited to the
execution of a single command line. This is true but there is a way
around the restriction, the EXEC command. If a longer list of
operations is desired than will fit on one line, simply create a command

=§.4.1-


---

file containing all of the conmands desirec. Ther create the STARTUP
file placing the single line:

EXEC,<file name>

where <file name> would be replaced by the neme assigned to the command
file created. A little imagination and experience will show many uses

for the STARTUP feature.

By directing STARTUP to a file that does not have a return to DOS
conmand it is possible to lockout access to DOS. You Can correct the
problem by hitting the RESET button and beginning execution at address
$cDO3. The STARTUP file may then be delecec and if desired, modified.
Directing execution to CD03, the DOS warm start address, bypasses the

DCS STARTUP function.

-S.4.2-


---

ET the Beata agai IES RD bE

TED
Tiny Editor

TED is a editor for FLEX. It works with standard FLEX text (TXT) files.
The only limitations are that of 255 lines and 128 characters per line.

TED edits and/or creates files that can be used by any FLEX program that
needs standerd ASCUI files. TEDs files are compatible with all other known editors
available for FLEX,

The syntax for TED is:
++4+TED

TED will prompt for the filename you wish to edit. The default drive is
the working drive and the default extension is '.TXT', If you have set drive 1 as

the working drive, then an answer of '1L.TEST.TXT' for the filename would be the
same as answering 'TEST',

TED will then try to reed in a file by the name you have given it. If the
file is too large to fit into TED's buffer then TED will tell you that and exit back
to FLEX.

If the file does fit then TED will read it in to its buffer and display the
menu. If the file does not exist, (a new edit) then TED will just display the menu
and put you into Commanc mode. Command mode is when the TED prompt 'TED:' is
displayed. This means that TED is waiting for you to tell it what to do from one
of the menu selections below.

Here is what the menu will look like;

- List the file in memory.
~- Save the file in memory to disk.
- Find a string of characters in the file.
- Delete the current line.
- Edit the current Line.
Insert after the current line.
~ New, erase all lines in memory.
~ Goto ao line number.
ENTER = Display current line.
UP ARROW = Goto line 1
DN ARROW ~- Goto last line
LF ARROW = Backup one line.
RT ARROW ~-+ Forward one line,
H ~ Display this menu

QZ ho mar

In addition to the above menu commands, there is also:

A ~- Abort the file
P - Print (n) lines
CONTROL X (shift, up arrow X) - which will cancel any string being entered.

-T.l.i-


---

TED (Tiny Editor)

Some of the above are obvious, while others need some explanation. Here
is ae rundown of what these commands do. I suggest that you play with TED for
awhile before you try to use it for anything serious.

List
List (L) will prompt for the range or lines to list. It will
only list as many lines as are in the file. The maxium number of
lines is 255.

SAVE

Save (S) the file in memory to disk under the name you
had typed in the beginning. If the file was on the disk then
TED will ask if you wish to save this file under a different
name. If you answer no (N) then TED will delete the file on the
disk and then save the file in memory and return to FLEX. You
can also exit TED without saving anything to disk by aborting.
This lest is useful for learning how TED works.

FIND

Find (F) a string of characters. Find will prompt for the
string to search for. Type it in, ending it with a (ENTER). Find
will stop at the first occurence of the string and make the line
that the string was in, the current line. Find will cisplay the
line then return to the commend nioge. Then, just typing an FP
and hitting enter again will cause TED to find the first
oceurance of that string in successive lines.

DELETE
Delete (D) will delete the current line. Caution, delete
does not prompt you to verify that this is what you really want
to do. Typing a (D) will delete the line!

PRINT
Print (P) lines. Typing P in the command mode will cause
TED to ask you how many lines of your file you would like to
have printed on your screen. Just hitting enter will print out
the next ten lines of your file.

ABORT
Abort (A) a file. Typing A while in the command mode will
cause the current file to be erased from memory and control
returned to FLEX.
Note: The same result may be achieved by using Save (S) which
will ask if you want to save to disk or abort.

-T.1.2-


---

TED (Tiny Editor)

EDIT
Edit (E) will put you into the edit mode for the current
line, Edit will display the current line and then print the line

number and wait for your input. At this point you have several
options,

l.. You can type in any characters you wish. They will be
inserted before the character in the line.

2.. YOu can type a UP ARROW character followed by any
other printable character and the line will be printed to
the first occurance of that character.

Note: You may use either the BREAK key or the up
arrow interchangeably with TED. This is a noteworthy
feature if you're using the EXT command with FLEX
Since the up arrow on a terminal is generated by a
Control K and could prove to be a bit of a pain in the
neck to use.

3.. You can type a left arrow, which will delete the
character to the left of the cursor.

Using the above three commands will allow you to move
very quickly thru the line to get to the place you want to edit,
If for instence you wanted to get to the 'p'’ in the word ‘pool’
below. You would type 'BREAK' then 'p' which would get you
to the ‘p’ in plece, then 'BREAK' and 'p' again would get you
to the 'p’ in ‘pool’.

‘Pick the place where you want the pool to go.'
Here are the rest of the commands and their uses:

4.. If you type a ENTER, you will exit the edit mode
with all changes made,

5.. If you type @ DOWN arrow, then the line will be
chopped off at the cursor and you will exit the edit mode
with all changes made.

6.. If you type a RIGHT arrow you will got to the end of

the line without exiting the edit mode. This is useful for
adding things to the end of the line.

-T.1 oom


---

INSERT

NEW

GOTO

ENTER

Up arrow

Down arrow

Left arrow
Right arrow
Hi

Well that's it. TED is a small but powerful editor thet can be put to good
use for FLEX, TED was not meant to replace a full size editor like FHL ED or
FHL DynaSter ect. However TED is indeed a very useful editor and will serve you

well.

TED was written using the A/BASIC compiler from FHL. The source listing

TED (Tiny Editor)

Insert (1) AFTER the current line. This will put you into
insert mode. Type a @ in the first column to exit the insert
mode.

If the current line number is 23 then the line number will
be 24,..on in the insert mode. Line numbers are internal to TED
and are only used for reference. Insert will not delete any lines,
they will only have their internal line numbers changed. The line
limit is 128 characters and TED will truncate anything after
that.

New (N) will erase all lines in memory. It is similar to the
NEW command of Basic.

Goto (G) @ line number. Goto will prompt for the line
number to go to. Goto will) make that line the current line.

Typing the ENTER key in command mode will display the
eurrent line.

Typing an up arrow will make line 1 the current line and
put you at the beginning or top of the file.

Typing an down arrow will make the last line of text the
current line and put you at the end or bottom of the file.

Typing a left arrow will back up one line and make that
the current line.

Typing a right arrow will advance one line and make that
the current line.

Typing an 'H' will display the menu again.

For the curious,

is only four pages long. Text is stored in memory in a string array 255 X 128.

=-T.1.4=


---

TED (Tiny Editor)

I gave some thought to making TED more powerful by adcing several
features. However as usual I was getting carried away. We created TED so that
new users of FLEX would not have to buy a full blown editor like ED.

Several of these new users had mentioned that their use of an editor was
only ocassionel and they coula't justify the cost of one for that use. TED was
created to serve that need. A small, easy to use editor for the ocassional user.

I've had a lot of fun writing TED, and I hope that you will have as much
fun using it.

If you have any suggestions for improving TED please send them in.
However, remember that TED is not meant to replace a full editor or for that
matter, to become one.

Thank You

Frank Hogg

-T.1 or


---

TTYSET

The TTYSET utility command is provided so the user may control the
characteristics of the terminal. With this command, the action of the
terminal on input and the display format on output may be controlled.

DESCRIPTION
The general syntax of the TTYSET command is:
TTYSET[L <parameter list>]

where <parameter Jist> is a list of 2 letter parameter names, each
followed by an equals sign (‘='), and then by the value being assigned.
Each parameter should be separated by a comma or @ space. If no
parameters are given, the values of all of the TTYSET parameters will be
displayed on the terminal.

The default number base for numerical values is the base most
appropriate tc the parameter. In the descriptions that follow, ‘hh’ is
used for parameters whose default base is hex; 'dd' is used for those
whose default base is decime?. Values which should be expressed in hex
are displayed in the TTYSET parameter listing preceded by a ‘$'’. Some
examples follow:

+447 TYSET
+44 TTYSET DPH1E,KO=E3
+4+4TTYSET,BS2S,ES=3

The first example simply lists the current values of al] TTYSET
parameters on the terminal. The next line sets the depth ‘DP’ to 16
lines and the terminal width, 'WD' to 63 columns. The last example sets
the backspace character to the value of hex 8, and the escape character
to hex 3.

The following fully describes all of the TTYSET parameters available to
the user. Their initial values are defined, as well as any special
characteristics they may possess.

BS=hh BackSpace character

This sets the ‘backspace’ charcter tc the character having the ASCII hex
value of hh. This character is initially a ‘control H' (hex 08), but
may be defined to any ASCII character. The action of the backspace
character is to delete the last cheracter typed from the terminal. If
two backspace characters are typed, the last two characters will be
deleted, etc. Setting BS=0 will disable the backspace feature.

-T.2.1 -


---

TTYSET cont.

Biehh Backspace Echo character

This defines the character to be sent to the terminal after a
"backspace’ character is received. The character printed will have the
ASC]] hex value of hh. This character is initially set to a null but
can be set to any ASCII character.

The BE command also has a very special use that will be of interest to
sone terminal owners, such as SWTPC CT-64.

1f a hex O& is specified as the echo character, FLEX will output a space
(20) then another 0& This feature is very uesful for terminals which
decode a hex O08 as a cursor left but which do not erase characters as
the cursor is moved.

Example: Say that you mis-typed the word cat as shown below:
+++CAY

typing in one CTRL-H (hex 0&) would position the cursor on top of the Y
arc delete the Y from the DOS input buffer. FLEX would then send out a
scace ($20) to erase the Y and enother Of (cursor left) to re-position
tre curser.

beenh LeLete cheracter

This sets the ‘delete current lire’ character to the hex value hh. This
character is initially 2a ‘contro’ X' (hex 1€). The action of the delete
character is to ‘erase’ the currert ingut line before it is accepted
into the comruter for executicr. Setting DL=Q will disable the line
deiete feature.

ELehh End of Line character

This character is the one usec by FLEX to separate multiple commands on
one input line. It is initially set to a colon (':'), a hex value of
3A. Setting this character to 0 will disable the multiple command per
line capability of FLEX. The parameter ‘EL=hh' will set the end of line
character to the character having the ASCII hex value of hh. This
cheracter must be set to a printable character (control characters not
allowed).

DP =dd DePth count

This parameter specifies that a page consists of dd (decimal) physical
lines of output. A page may be considered to be the number of lines
between the fold if using fan folded paper on a hard copy terminal, or a
page may be defined to be the number of lines which can be displayed at
any one time on a CRT type terminal. Setting DP=0 will disable the
peging (this is the initial value). See EJ and PS below for more
details of depth.

~T.2.2-


---

cee ete een emee ef etn

TTYSET cont.

wDede¢ WiDth

The WD parameter specifies the (decimal) number of characters to be
displayed on a physical line at the terminal (the number of columns).
Lines of text longer than the value of width will be ‘folded’ at every
multiple of WD characters. For example, if WD is 50 and a line of 125
characters is to be displayed, the first 50 characters are displayed on
a physical line at the terminal, the next 50 characters are displayed on
the next physical line, and the last 25 characters are displayed on the
third physical line. If WD jis set to 0, the width feature will be
disabled, and any number of characters will be permitted on a physical

line.

hLedd NuL? count

This parameter sets the (decimal) number of non-printing (Null) ‘pac’
characters to be sent to the terminal at the end of each line. These
pad characters are used so the terminal carriage has enough time to
return to the left marcin before the next printable characters are sent.
The iritial value is 4. Users using CR? type terminals may want to set
NL=O since no pad characters are usually required on this type of
tervinal.

TRehb Taf character

The ceh character is rot used by FLEX but some of the utilities may
recuire one (such as the Text Editing Systen}. This parameter will set
the +ab character to the character having the ASCII hex value hh. This

cheracter should be a printable character.

Elzedd FJect count

This parameter is used to specify the (decimal) number of ‘eject lines’
to be sent to the terminal at the bottom of each page. If Pause is
'on', the ‘eject sequence’ is sent to the terminal after the pause is
terminated. If the value dd is zero (which it is by default), no ‘eject
lines’ are issued. An eject line is simply a blank line (line feed)
sent to the terminal. This feature is especially useful for terminals
with fan fold paper to skip over the fold (see Depth). It may also be
useful for certain CRT terminals to be able to erase the previous screen
contents at the end of each page.

PS=¥ or DS=n PauSe control]

This parameter enables (PS=Y) or disables (PS=N) the end-of-page pause
feature. If Pause is on and depth is set to some nonzero value, the
output display is automatically suspended at the end of each page. The
output may be restarted by typing the ‘escape’ character (see £S
description). If pause is disabled, there will be no_ end-of-page
pausing. This feature is useful for those using high-speed CRT terminals

“T.2.3-


---

TTYSET cont.

te suspend output Tong enough to read the page of tex:.

ESehh EScape character

The character whose ASCII hex value is hh is defined to be the ‘escape
character’. Its initial value is $1B, the ASCII ESC character. The
escape cheracter is used to stop output from being displayed, and once
it is stopped, restart it again. It is also used to restart output
efter Pause has stopped it. As an example, Suppose you are LISTing a
long text file on the terminal and you wish to temporarily halt the
output. Typing the ‘escape character’ will do this (this feature is not
supported on computers using a Control Port for terminal
communications). At this time (output halted), typing another ‘escape
character’ will resume output, while typing a RETURN key wiil cause
control te return to FLEX and the three plus sign prompt will be output
to the terminal. It should be noted that line output stopping always

heppens at the end of a line. ;

~T.2.4-


---

DEER teat nett Sn Ss nea tl cate een nC toe a ae EGD 2 RRR DE SARS Teo

VERIFY

The VERIFY command is used to set the File Management System's write
verify mode. If VERIFY is on, every sector which is written to the disk
ig read back from the disk for verification (to make sure there are no
errors in any sectors). With VERIFY off, no verification is performed.

DESCRIPTION
Tne general syntax of the VERIFY conmand is:
VERIFY[,ON]
or
VERIFY[, OFF]

where CN or OFF sets the VERIFY mode accordingly. If VERIFY is typed
without any parameters, the current status of VERIFY will be displayed
on the terminal. Example:

+4+4+VERIFY,OK
+4++VERIFY

The first example sets the VERIFY mode to ON. The second line would
display the current status (ON or OFF) of the VERIFY mode. VERIFY
causes slower write times, but it is recommended that it be left on for
your protection.

-V.1.1-


---

VERSION

The VERSION utility 1s used to display the version number of a utility
command. If problems or updates ever occur in any of the utilities, they
may be replaced with updated versions. The VERSION command will allow
you to determine which version of a particular utility you have.

DESCRIPTION
The general syntax of the VERSION command is:
VERSION, <file spec>

where <file spec> is the name of the utility you wish to check. The
default extension is CMD and the drive defaults to the working drive.

As an example:
++4VERSTON,O.CAT

would disrlay the version number of the CAT command (fror drive 0) on
the terring).

~V.2.1-


---

XOUT

xOUT is a special form of the delete command which deletes all] files
having the extension .OUT.

DESCRIPTION The general syntax of XOUT is:
XOUT[ ,<drive spec>]

where <drive spec> is the desired drive number. If no drive is
specified al], .OUT files on the working drive will be deleted and if
auto drive searching is enabled, all .OUT files on drives 1 and 2 will
be deleted. XOUT will not delete any files which are delete protected
or which are currently in the print queue.

Example:

+4+XOUT
++4XOUT 1

-X.lol-


---

YY

43124BW
X5124WB
X6424BW
X6424WB
X6432BR
X3216BW

High resolution output sereens

Annnnzz is used to invoke the different Hi-res screens
DESCRIPTION
The general syntax of the Xnnnnzz command is:

X5124BW

The variations are:

X5124BW = 51 columns by 24 lines, black characters on white.
AS124WB = $1 columns by 24 lines, white characters on black.
X6424BW = 64 columns by 24 lines, black characters on white.
X6424WB = 64 columns by 24 lines, white characters on black.
X6432BW = 64 columns by 32 lines, black characters on white,
A3216BW = 32 columns by 16 lines, black characters on white.

The default is X5124BW. You can append any of these to FLEX and have

it come up in the type thet you prefer. See the SETUP command under the 'F'
option for how to append things to FLEX,

Ail ef these screens use the hi-res screen. Some of them (6424 and 6432)
may only be readable on a monitor. Your individual TV will make the difference, A
Baw TV is better than a color set. But if you turn the color down on your color
set the cheracters gre easier to read.

NOTE: Hi-Res screen mode cannot be changed by using an Xcommand unless you
are in a Color Computer Screen mode (not EXT). Also, MEMEND must not be
changed, The error message is "CANNOT BE RUN IN THIS MODE."

“K.2e1-


---

Y

The Y (Yes) utility allows you to determine how a yes/no prompt from another
utility wil) be answered,
DESCRIPTION
The general syntax of the Y command is:

Y,<COMMAND>
where the command is any spplicable utility command file.
An example of this {s:
++4Y,DELETE,BADFILE.TXT

This will answer "Yes" to the "DELETE BADFILE.TXT?" and then yes again to
"ARE YOU SURE?"

As you can probably see, you should exercise care in using this utility.

-Y.1.1-


---

COMMAND SUMMARY

APPEND, <file spec>[,<fle Hst>},<file spec>
Default extension: .TXT
Description page: A.1.1

ASN[,W=<drive>],S=<drive>]
Default: W=0,S=0
Description page: A.2.1

BASIC
Description page: C.3.1

BUILD, <file spee>
Default extension: .TXT
Description page: B.1.1

CATI,<erive list>],<match list>]
Description page: C.1.1

CBASIC
Description page: C.2.1

COPY,<file spec>,<file spec>

COPY, <file spec>,<drive>

COPY, <cdrive>,<drive>[,<mateh list>]
Description page: C.3.1

DATEL, <MM,DD,YY>)
Description page: 0.1.1

DBASIC
Description page: 0D.?2.1

DELETE, <file spee>[,<file list>]
Description page: D.3.)

DISPLAY, <list>
Description page: D.4.1

EXEC,<file spee>
Default extension: .TXT
Description page: E.1.1

EXT 2
Description page: £E.2.1

GET, <file spec>[,<file list>]
Description page: 1.7

HELP
Description page: H.1

- Bek -.


---

COMMAND SUMMARY

1,<file spec>,<command>

Default extension:

Description page:

INT
Description page:

ISM
Description page:

JUMP,<hex address>
Description page:

LINK, <file spee>

Defeult extension:

Description page:

LIST,<file spee>[,<line range>],N]
Default extension:

Description page:

MON
Description page:

MOVEROM
Description page:

N,<command>
Description page:

NEWDISK, <drive>
Description page:

NEWDISK A, <drive>
Description page:

eT XT
1.1.

1.2.1

SYS
Lelel

oF XT
L.2.1

Node]
NM.2.1
BK .2.1]
N.1.1

N.J.]

O,<file spec>,<command>

Default extension:

Description pege:

P,<command>
Description page:

OUT
O.1.1

P.1.]

PROT,<file spee>[,<options>]

Description page:

PUTBOOT.LDR,<drive number>

Description page:

RENAME,<file spee 1>,<file spec 2>
Default extension:

Description page:

P.2.]

P.3.]

oT XT
R.1.1



---

COMMAND SUMMARY

ROM
Description page: R.2.1

SAVE,<file spee>,<begin adr>,<end adr>[,<transfer adr>]
Default extension: .BIN
Description page: §&.1.1

SDC
Description page: S&.2.1

SETUP,<option field>[,<option field>...]
Description page: §&.3.1

STARTUP
Description page: §&.4.1

TED
Description page: 1.2.1

TTYSETI, <parameter list]
Description page: T.1.]

VERIFYI[,<file spec>]
Default extension: .CMD
Description page: V.1.1

VERSION, <file spec>
Default extension: .«CMD
Description page: V.2.1

XOUT(,<drive spec>]
Description page: X.1.]

Xsereens
Description page: X.2.]

Y,<command>
Description page: Y.1.1

-~ 33°


---

FLEX

FLEX .ors
HRRORS ,SY¥5S
PRINT ors
STARTUP ,TAT
ALPHA LAT

CAP = OWMD
sETUP 2 ChiD
MON LOW
MON » GMD

X3216BW , CMD
X512A4BW . CMD
X5124WB ,CMD
X6424WB .CMD
X6424BW .CMD
X6432BW , amd

2UT CMD
LISt 2 CMD
COPY 2 CMD
SDC » CMD

PUTSTAT » CHD
MOV EROM
GBASIC
BASIC
ExT
INT Oli D
HELP CMD
PI * CMD i
N BWDISE , CHD
NEWDESKA ,CMD
ASN CHD
DELETE .CHD
RENAME ,CMD
TEYSET CME
‘AVE CMD
meh MD
LD «CHD

oo
Knead

Y Cy bel td

Ca pS
bl
[)

URL?
DATE * outp
0 ey GND
VERSION ,Cud
FRO? » CHD
VERIFY CMD
tT CMD

LINK » GMD
SAVE »LOW

HELPCOCO, DIR
README .TXT
MEMPATCH TXT
MEMPSTOH, BED K
DIAPATCI ,TKT
DIAPATS@.
JTAPAT g. BIN
DIAPATOT BI i
¥ .CMD

mit

wo mk and

web ek eS GA La ST DD CAD nat mt ek et es PO RD Ee le ee Os LO L100 ss

Awe!

SYS TEM

DISKETTE

N

TED

Ish
PHLO GO
DISPLAY
DBASIC
DBASIC
RTP

INDEX

2D 4
CHD 36
CHD 40
cup 8
CM 2
~OND 3
SYS &
BAS 27
