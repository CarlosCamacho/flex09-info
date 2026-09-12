# DMAN-12

> Source: `manuals/misc/MANVOL3 - FLEX Software Archive - Manual and Documentation Archive - Includes BACK, DMAN-08, DMAN-10.zip!MANVOL3.DSK!DMAN-12.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NR X 12
.NF
.LM 5
.DB
12.0.0
.DB
'STDMAN'
.DB
SORT DATABASE
.LM 55
.FI
.SP3
This program not realy a sort program, rather it is an editor which sets up a 'procedure' file that is used by
the TSC 'SORT/MERGE' package.
Up to 20 keys can be defined from a DATAMAN database to be sorted.
Both assending and desending sorting orders are supported.
.sp2
.lm 10
.nf
12.1.0
PROGRAM OPPERATION
.FI
.LM 55
To sort a database the 'NAME', 'PASSWORD', and 'DRIVE' number of the database is inputed.
After the 'FILE HISTORY' is given, the user is prompted for the 'WORK DRIVE' number for a work file.
This work file is not a DATAMAN work file as explained in section 10.1.1.
It is a work file used by the TSC 'CSORT.CMD' program.
Further information on this file is found in the 'SORT/MERGE' manual.
.sp
The database fields are then listed and the user inputs the number of 'KEYS' he wishes to sort on.
The program then inputs the 'FIELD \#' for each of the 'KEYS' and the order that 'KEY' is to be sorted (assending or desending).
The order of these 'KEYs' is important.
.sp
The first 'KEY' is the primary key and each additonal 'KEY' is a secondary key.
Sorting and 'KEYS' are fully explained in the 'SORT/MERGE' manual.
.sp
When the sort 'KEYS' have been defined, the user then gives the 'NAME' and 'DRIVE' number for the sorted database.
If you give the sorted database 'NAME' a different name from the name of the database, a new database will be
created, complete with both a '.DAT' and a '.SPC' file, on the drive specified.
The old database will not be changed in any way.
If the name given for the new sorted database is the same name as the old database and is given the same drive number as the
old database, the old database will be replaced by the sorted database.
In any case, a sorted database will be the same size as the orginional database.
Also, the complete database is sorted, no matter what the 'RECORD CODE' of each record is.
.sp
The program then gives you the option of 'EXITing' the program, which will end all opperations and take you
back to the 'MASTER MENU'.
You can 'REDEFINE' the sort, which takes you all the way back to the begining of the program.
If you decide to 'SORT' the actual sorting process will begin.
.sp
When sorting has begun, the TSC 'SORT/MERGE' header will appear on the system printer beneath the DATAMAN headers.
The TSC 'SORT' messages will tell you how many records are being sorted.
Any time error messages occure under the TSC header, they are TSC 'SORT/MERGE' error messages.
These error messages can be found in	the TSC 'SORT/MERGE' manual.
If you have defined the 'SORTED' database to replace the origional database, a message will appear asking if you want to
delete an 'exsisting' file.
Answere 'Y' to this prompt.
It is also possible that the TSC 'SORT/MERGE' package will ask you if you wish to 'DELETE' a backup file.
Further information on this backup or '.BAK' file is given in the 'SORT/MERGE' manual, but you must answere 'Yes' to this prompt
for the sort to continue.
.sp
When all sorting is done, the 'MASTER MENU' is written.
.sp
The speed of the sort is a function of how large the database is, how many fields it contains, how many 'KEYS' are defined
and how fast your disk drives are.
While the TSC package is written in machine language and is much, much faster than any BASIC sort, the speed of the
sort is usualy limited by the speed of the disk drives on your system.
.sp2
.lm10
.nf
12.2.0
PROGRAM CODE
.LM 55
.FI
This program is an interesting example of how a BASIC program can use the FLEX 'EXEC' command to
run a machine language program, execute some FLEX utilities, the re-load BASIC and run a BASIC program.
The real guts of this program is located in lines 1545 to 1685.
.sp
After the database fields are choosen for the sort 'KEYS', a 'CSORT' command line is built which will
do the actual sorting.
A file called '1.SORT.SRT' is built.
This file will be used as a FLEX procedure file.
Further information on this file and how it works is given in section 25.1.3.
.sp
All input keys in the 'CSORT' command line are right justified.
This allows the DATAMAN alpha, numeric, and money fields to be sorted correctly.
It should be noted that the TSC package is a pure ASCII sort and not a numerical order sort.
.sp2
.lm 10
.nf
12.3.0
VARIABLES USED
.LM 55
.FI
