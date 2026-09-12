# DMAN-22

> Source: `manuals/misc/MANVOL3 - FLEX Software Archive - Manual and Documentation Archive - Includes BACK, DMAN-08, DMAN-10.zip!MANVOL3.DSK!DMAN-22.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NR X 22
.NF
.LM05
.DB
22.0.0
.DB
'FINDDMAN'
.DB
LOOK UP RECORDS
.FI
.LM 55
.SP3
This program will look-up records in a database by the 'LABLE/CONTENT' method just like in the 'EDITOR' (ETDMAN).
There is no editing possible with this program and it has been optimized for speed.
.sp2
.nf
.lm 10
22.1.0
PROGRAM OPPERATION
.FI
.LM 55
The program first gets the 'NAME', 'PASSWORD', and 'DRIVE' number for the database.
After the 'FILE HISTORY' has been listed, the program enters the 'RECORD CODE' logic section.
The program then lists the database fields and prompts for the 'LABLE NUMBER' and the field data or 'CONTENTS' for
the search.
.sp
If a match is found in the database, the record is listed on the system printer and upon hitting a 'CR' or the
'RETURN' key, the next match (if any) is found.
.sp
No work file is created in this program and the speed of the search is a function of how large your database is,
how far into the database the target record is, and how fast you disk drives are.
If this program is used often, it would be a good idea to try to sort databases in an order to allow records that are
looked up often to be in the top of the database so that the average time of a search can decrease.
.SP
When you are done looking for records, simply enter a '0,STOP' to exit the program and return to the 'MASTER MENU'.
.sp2
.lm 10
.nf
22.2.0
PROGRAM CODE
.LM 55
.FI
The 'SEARCH SET-UP' is done in lines 1205 to 1325.
The actual search is done in lines 1330 to 1365.
The rest of the code to line 1460 deals with the actual printing of the target record and 'clean-up'.
.sp2
.lm 10
.nf
22.3.0
VARIABLES USED
.LM55
.FI
