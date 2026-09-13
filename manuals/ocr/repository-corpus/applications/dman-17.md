# DMAN-17

> Source: `apps/dataman/DMANMAN2 - DataMan Database - Documentation and Examples.zip!DMANMAN2.DSK!DMAN-17.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NR X 17
.NF
.LM 5
.DB
17.0.0
.DB
'RESTDMAN'
.DB
RESTORE RECORDS
.LM 55
.SP3
.FI
This program resets the 'RECORD CODE' on all records of a database to 'SELECTED'.
.SP2
.LM 10
.nf
17.1.0
PROGRAM OPERATION
.FI
.LM 55
After the database file information has been entered, the 'FILE HISTORY' is given.
If the user continues with the program, the 'WORK DRIVE' is given.
This is for the work file which will be the same size as the '.DAT' file.
.sp
The program then removes any 'DELETED' record code flags and sets them to 'SELECTED'.
After the program is done, the 'MASTER MENU' is written.
.sp2
.LM 10
.nf
17.2.0
PROGRAM CODE
.FI
.LM 55
The main part of this program is very short and starts with line 1270 and continues to line 1330.
Each record in the database is entered, then output to the work file with the record code set to 'SELECTED' or '1'.
.sp
The program could be easily changed to change all records to 'DELETED' by changing line 1310 to 'FL$(1)="2"'.
.sp2
.lm 10
.nf
17.3.0
VARIABLES USED
.LM55
.FI
.PG
.PG
