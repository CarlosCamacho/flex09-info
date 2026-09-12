# DMAN-08

> Source: `manuals/misc/MANVOL3 - FLEX Software Archive - Manual and Documentation Archive - Includes BACK, DMAN-08, DMAN-10.zip!MANVOL3.DSK!DMAN-08.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NF
.NR X 8
.LM 05
.DB
8.0.0
.DB
'DATAMAN'
.DB
MASTER MENU PROGRAM
.SP3
.LM 55
.FI
This program is the 'MASTER MENU' of the DATAMAN system.
The menu allows the user to pick from the program modules available and load and run these programs by menu number.
The menu is easy to modify to add or remove program modules from the system.
.sp 2
.lm 10
.nf
8.1.0
PROGRAM OPPERATION
.FI
.LM 55
Once the menu has been printed on the 'SYSTEM TERMINAL', the user picks the number of the program module desired.
This number is entered followed by a 'CR'.
At this time, the name of the program to be loaded from disk is displayed in the 'ACTION' header.
.sp
If the program module is not found, an error message is displayed, and the menu is printed again.
If the user wishes to exit the menu into BASIC, he should type a 'CR' without any number selection for the
'MENU NUMBER' prompt.
.sp2
.nf
.lm 10
8.2.0
PROGRAM CODE
.LM 55
.FI
There are some common conventions used in all DATAMAN programs that are used in this program module.
First, the first line of all programs in DATAMAN start with line '1000'.
This line defines the variable 'VR$' which gives the version number and the date of the last revision.
This information helps you keep track of programs you have modified.
Each time you change a program module, you should at least change the revision date.
This line is also used in the 'PROGRAM HEADER' as the second line.
.sp
Second, the 'ERROR' trap line number is given.
This 'ERROR' trap target is never changed within the DATAMAN program modules.
.sp
Thirdly, the 'SYSTEM.GEN' file is loaded from the DATAMAN system disk (DMUNIVC) on drive 0.
In the menu, this is done in line 1200.
.sp
The last common point in this program is the 'PROGRAM HEADER' and 'ACTION HEADER' set-up.
The headers are always set-up with two 'GOSUBs' followed by the message for the 'ACTION HEADER' ended by a final 'GOSUB'.
In the menu, lines 1210, 1220, and 1230 show this header set-up.
Further information on this feature is to be found in the section on 'SUBSDMAN'.
.sp
Lines 1250 to 1350 prints the menu on the 'SYSTEM TERMINAL'.
Line 1360 prompts for the menu choice and after error checking, the program module name is found in the subroutine at line
1460 and 'CHAINed' in line 1440.
.pg
Adding program modules to the menu is quite easy.
First, add the description of the program in line 1340 after '17...'.
Second, change the error check in line 1380 to 'Q1>17' and last,
add the name of the program module in a 'DATA' statement after the last 'DATA' statement in line 1650.
One important note.
The 'DATA' statements must be in the same order as the program discriptions.
In other words, menu selection number 5 (MERGE DATABASES), must be the description for the fifth 'DATA' statement program name
(MRGDMAN).
.sp
Removing program modules from the menu is the reverse of the above example.
.sp 2
.lm 10
.nf
8.3.0
VARIABLES USED
.FI
.LM 55
