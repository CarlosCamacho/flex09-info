# DMAN-07A

> Source: `apps/dataman/DATAMAN - DataMan Database - Documentation and Examples.zip!DATAMAN.DSK!DMAN-07A.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NR X 7
.PG 53
.SP24
.LM 55
.FI
When the program is done, the 'MENU' is 'CHAINEd' and run.
The report printed by this program is shown below.
.PG
.NF
.LM 5
.DB
'PR' FILE BUILD
.LM 55
.FI
.SP3
One of the features of DATAMAN which makes it very usefull in a business is this program module.
This program converts data from DATAMAN databases into data which can be used by the TSC TEXT PROCESSOR.
.sp
To show how this program works, we will use the database 'SOLD' which containes the data on the two houses sold.
A TEXT PROCESSOR data file will be created containing data to be used in a letter to the past owners.
.sp
The 'MENU' number '11' is used to call this program.
.PG
.sp15
At this time the 'PR' file is defined.
Note that a DATAMAN field can be used more than once if needed.
.PG
The program now prompts for the name of the 'PR' file and the drive number.
The file created has a '.TXT' extension.
.sp20
When the program is done, the 'MENU' is 'CHAINEd' and run.
.pg
.SP1
This is the 'PR' source file for the letter using the file 'LETTERS' we just built.
.sp
This 'PR' program was written for a CENTRONICS 737 printer in the 'PROPORTIONAL' character set.
The '.DB' is used for 'ELONGATED' print.
.pg
.sp1
These are the two letters printed using the 'PR' source program and the data file 'LETTERS.TXT'.
.PG
.NF
.LM 5
.DB
REPACK DATABASE 'SOLD'
.FI
.LM 55
.SP3
It is also possible with the 'REPACK' program module to merge 'like' databases together.
The two databases to be merged together must have identical '.SPC' files.
In other words, they must both have the same number of fields, the same field lables, etc.
.sp
For an example we will merge the database 'SOLD' back into the database 'HOUSES'.
.PG
.SP41
Since we have removed all the records from database 'SOLD', the database is deleted.
.sp4
When the program is done, the 'MENU' is 'CHAINEd' and run.
.PG
.NF
.LM 5
.DB
DISK DIRECTORY
.FI
.LM 55
.SP3
At this time it might be a good idea to look at the files on disk drive 1.
You will notice that both the '.DAT' and '.SPC' files for the database 'SOLD' are gone.
You should be able to tell what the files listed in the 'DIRECTORY' are.
.sp
The '.SPC' and '.DAT' files are databases, the '.OUT' file is a report, the '.TXT' file is the 'PR' data file, and the two '.FOR'
files are the 'FORMAT' files created by the 'REPORT EDITOR'.
.PG
.NF
.LM 5
.DB
LABLE PRINTER
.FI
.LM 55
.SP3
Any good database program has a 'LABLE PRINTER'.
This program is usualy used to print 'mailing' lables, but can be used to print up to five lines of data from a database.
.sp
In our example, we will print lables from the database 'HOUSES' which now has five records in it.
This program is called by a '12' in the 'MENU'.
.PG
.SP26
The 'LABLE DRIVER' is the type of lables used in your printer.
There are many kinds of lables used.
The program allows the user to have drivers for three types in the program.
For more information, see section 20 of this manual.
.sp21
After the program is done, the 'MENU' is 'CHAINEd' and run.
.pg
.sp1
These are the lables that were printed by this program.
.PG
.NF
.LM 5
.DB
SEARCH PROGRAM
.FI
.LM 55
.SP3
The 'SEARCH' program is a quick and easy way to look up information in a database.
The program is much like the 'EDITOR' program's 'LABLE/CONTENT' edit, but no editing is done.
.sp
In this example, we will search the database 'HOUSES' for all the records that have a 'ZIP CODE' of '52103'.
A menu selection of '14' loads this program from the 'MENU'.
.PG
.SP41
At this time, the 'LABLE/CONTENT' can be changed to look for more information in the database or you can 'EXIT' back to the 'MENU'.
.PG
.sp 17
When the program is done, the 'MENU' is 'CHAINEd' and run.
