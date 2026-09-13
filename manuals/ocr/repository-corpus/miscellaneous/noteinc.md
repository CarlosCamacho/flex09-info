# NOTEINC

> Source: `misc/uncategorized/NEWB_634 - FLEX Software Archive - Source Code and Build Files - Includes JAN-80, BED, BED1.zip!NEWB_634.DSK!NOTEINC.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.SP 16
.CE 3
I N C O M E / E X P E N S E	L E D G E R
By Roger L. Smith
Adapted to TSC's FLEX2tm Disk BASIC
.SP 8
.DM HD
:SP 4
.IF E .TL 'INCOME/EXPENSE NOTES'''
.IF O. TL '''INCOME/EXPENSE NOTES'
:SP 2
.NS
.OS
..
.AT 1 HD
.DM FO
:SP 2
.TL ''%''
:PG
..
.AT -9 FO
.CE
=== OPERATION NOTES ===
.SP 4
.SI 3
This program by Roger L. Smith is designed to operate
with any FLEX2tm compatible 6800 microcompter system.
It uses TSC's FLEX2tm Disk Extended BASIC. As such almost all
current 6800 microcomputer systems, including the
6809, may run this program. Hardware should include
a 2 drive minifloppy disk system, a printer, if
desired, and a terminal. Since FLEX2tm Disk Extended BASIC
uses about 16K RAM, 28K RAM is necessary to run
this program. The source code uses just over 9K
bytes; data storage may be adjusted by the DIM
statements as necessary.
.SI 3
Your INCOME/EXPENSE LEDGER is self-prompting.
Each question may be answered with a [ Y ]
or [ N ], for "yes" and "no".	Some Commands
within the program may need additional comments
to clairify their operation.
.SI 3
Since valuable data is stored on your disks it
is suggested you use a quality medium. Of course
you may have your own proven disks. If you do not
know what disks may be best we suggest DYSAN
minifloppy disks. We have found that other popular
disks tend to have read errors. Sometimes the
entire data may not be written to the disk. Again,
please temper our suggestions with your own
experience.
.SP 2
.CE
Comments on TSC's FLEX2tm Disk BASIC
.SP 2
.SI 3
Your disk contains two editions of the program.
The first is the source code. It is recorded as
"INCOME.BAS". The second edition is a compiled
version of the source code called "INCOME.BAC"
When you run the program call the compiled version,
If you have specific questions about FLEX2tm or
TSC's FLEX2tm Disk BASIC please refer to the
manuals provided with TSC's software.
Call the program by entering:
.NF
.SP
	+++BASIC, INCOME
.SP
.FI
.LN 65
.JU N
which will load the complied edition of the program.
.SI 3
The disk also contains the text of this documentation
in the TSC Text Editor/Processor format. This
allows access to the source of the documentation
for your convience. Remember, Federal Law allows
you to make back-up copies of both the source
and compiled editions of the programs as well as
this documentation provided that such back-up
copies are for your own use. Please honor the
copyrighted material as if it were your own.
We will do the same with your software.
.SI 3
Ofcourse we have spent effort in debugging the
INCOME/EXPENSE LEDGER, but we are no better
than others regarding potential weird events.
If you find errors please let us know.
.SP 2
.CE
Disk Storage
.SP 2
Roger Smith's INCOME/EXPENSE LEDGER uses sequential
disk files. The contents of any files you create
may be examined by typing "+" while in TSC's
Disk BASIC and entering "LIST XXXXXXXX.DAT", with
XXXXXXXX being a maximum 8 position file name.
Each file is reduced to the first 3 letters of
a given month. The files contain not only the
current month's data but year-to-date data
as well.
.SP 2
.CE
Program Operation
.SP 2
.SI 3
We're sorry, but you will have to do a little work
before running this program. As much as we would
like to be able to provide you with a program ready
to enter drive one and start working, it is
necessary to ask you to provide your own specific
detail as for name and account identification.
.SI 3
Although a printed source listing is not provided
key alteration areas have been printed. If you are
not familiar with BASIC please use care as to alter
the correct line numbers. To make sure save your
altered source code under the name "LEDGER.BAS".
Then make a trial run of the program. It is strongly
recommended that you do not save the program under
the name "INCOME.BAS" as it will forever destroy
the provided source code.
.SI 3
The 18 expense accounts
shown in DATA statements (lines 70-110) should
be labeled as you like. If you don't need all 18
the excess titles may be deleted. Likewise for
the 8 income titles.
If you decrease the expense items, you will also need
to change line 1390 (FOR I=1 TO 18) to the smaller value.
.SI 3
The last alteration is to enter your name at
line 1220.
.SP
.CE
Commands
.SP
.SI 3
Each of the program commands is self-prompting.
Please note that 2 commands cause the disk files
to be created and each command is used for a
different reason. If you are working within a
given month period, say you are entering income
and checks (expenses) for a week at a time, use
the "END" Command. The writes a file that then
may be re-called during the month. At the end
of the month, or when all data has been entered,
use the "CLOSE" Command. Not only is the month's
data written to the disk, but a new file for
the following month is created and current year
to date data is recorded in the new file. An
error in selection at this point could cause
incorrect data being recorded in the new
month's file.
.SP
.SI 3
It is very easy to alter the number of checks
the program will accept during a given month.
Currently the program accepts 40 checks. This
may be increased if you have more RAM, or
decreased if you have less RAM. This may
be done by changing the DIM statements for
variables E, C$, A, D, C and U. The remaining
variable should not be altered. Finally, the
variable "R1" should be set to the number
used in the DIM statement plus 1. For example,
if 100 checks are to be allowed:
.SP
.NF
.NJ
	DIM E(100), C$(100), A(100), D(100), C(100)
	DIM G(15), Y(30), H(30), U(100)
	R1=101:FOR X9=1 TO 3:PRINT:NEXT X9
.SP
.FI
.LN 65
.JU N
.SI 3
The program will put the checks in order by date,
and all expenses are grouped and added together
as accounts.
.SI 3
This program is also available on other media.
An 8K SWTPC v 2.0 cassette edition is available
as is a miniFLEXtm SWTPC Disk BASIC v 3.0. All
disk media is 5 1/4"; all cassette is Kansas
City Standard. An open reel-to-reel version at
7 1/2 ips Kansas City Standard in either 8K
BASIC or any disk editions. This allows the
transfer of disk programs using the popular
KCS 300 baud system for 8" or other disk hardware
combinations.
.SP 2
.CE 2
FLEXtm and miniFLEXtm are registered trademarks of
Technical Systems Consultants, Inc.
