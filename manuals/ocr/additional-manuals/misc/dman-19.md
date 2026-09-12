# DMAN-19

> Source: `manuals/misc/MANVOL3 - FLEX Software Archive - Manual and Documentation Archive - Includes BACK, DMAN-08, DMAN-10.zip!MANVOL3.DSK!DMAN-19.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NR X 19
.NF
.LM 05
.DB
19.0.0
.DB
'PRDMAN'
.DB
BUILD "PR" FILE
.SP3
.LM 55
.FI
This program will build a data file which is compatable with the TSC 'TEXT PROCESSOR'.
This will allow the user to use a DATAMAN database to create form letters, report, form printing, and other kinds of report printing
not possible with the report writters of DATAMAN.
This can be a very powerful program for a small business.
.sp2
.lm 10
.nf
19.1.0
PROGRAM OPPERATION
.FI
.LM 55
As with other DATAMAN programs, the first step is to get the database to be used.
The 'NAME', 'PASSWORD', and 'DRIVE' the database is on is entered.
After the 'FILE HISTORY' is listed, the user defines the 'RECORD CODE' type for use in building the 'PR' file.
.sp
The fields of the database are listed and the number of 'LINES' in the 'PR' file are prompted for.
The 'PR' file can contain more lines than there are fields in the database.
This is because some data might be used more than one time in a 'PR' text.
An example of this is given in the 'PR' example in section \#7.
For each 'PR' 'LINE' a 'FIELD NUMBER' is given from the database.
When all the 'LINES' are defined, the user can 'EXIT' which takes him back to the 'MASTER MENU',
or he can 'CONTINUE'.
.sp
The 'NAME' of the 'PR' data file and the 'DRIVE' it is to be put on, is now inputed.
After this information is given, the computer creates a '.TXT' file on the drive specified.
.sp
The size of the 'PR' data file is a function of how many 'LINES' of data it contains.
It is possible for this '.TXT' file to be larger than the '.DAT' file because of the possibility of using a field
of data from the DATAMAN database more than once.
.sp
The standard 'EOF' character ('>') and 'EOR' character ('>>') is used for complete compatability with the
'PR' processor.
.sp2
.lm10
.nf
19.2.0
PROGRAM CODE
.LM55
.FI
The main code for this program is between lines 1280 and 1610.
The 'EOF' character is defined in line 1595 and the 'EOR' character is defined in line 1605.
These can be changed if defined differently in the 'PR' processor.
.sp2
.lm 10
.nf
19.3.0
VARIABLES USED
.LM 55
.FI
