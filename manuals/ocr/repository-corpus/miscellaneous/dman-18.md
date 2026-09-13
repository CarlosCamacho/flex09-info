# DMAN-18

> Source: `misc/uncategorized/FULL - FLEX Software Archive - Program and Support Utilities - Includes DMAN-09, MACRO, DMAN-18.zip!FULL.DSK!DMAN-18.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NR X 18
.LM05
.NF
.DB
18.0.0
.DB
'PACKDMAN'
.DB
REPACK DATABASE FILE
.LM55
.FI
.SP3
This program is the only one in the DATAMAN system capable of actually removing data from a database.
Removed records can be 'blown away' or simply destroyed, they can be put into an 'EXISTING' database, or a new database can be created
to move these 'REMOVED' records to.
.sp2
.lm10
.nf
18.1.0
PROGRAM OPERATION
.LM55
.FI
'REPACKING' is the term given to the action of removing 'FLAGGED' records from a database.
The database for repacking is entered into the program by 'NAME', 'PASSWORD', and 'DRIVE' number.
After the 'FILE HISTORY' is listed, the 'RECORD CODE' flag to be used for deleting records from the database
is prompted for.
Usually 'DELETED' records are 'REMOVED', but the program will also remove 'SELECTED' records.
.sp
The next section deals with the disposition of 'REMOVED' records.
The first choice of 'BLOWN AWAY' will simply remove the records from the database.
These 'REMOVED' records are destroyed.
This is the simplest of the three choices.
.sp
.sp
.lm22
.nf
18.1.1
BLOWN AWAY
RECORDS
.LM55
.FI
When 'REMOVED' records are to be 'BLOWN AWAY' the program asks the user for the 'DRIVE' number to be used for the
work file.
This work file will be the size of the new 'REPACKED' database which will almost always be smaller than the '.DAT' file of the
original database.
The program then removes the records.
When done, the 'DATE/TIME' for the 'LAST EDIT' in the 'FILE HISTORY' of the database is prompted for.
The program then checks to see if the entire database has been 'BLOWN AWAY'.
This would happen if all the records in the database were flagged 'DELETED' and 'DELETED' records were
chosen for removal.
If the database is empty, a message is given to that effect, and the database is completely 'DELETED'.
.sp
.sp
.lm22
.nf
18.1.2
MERGE INTO
'LIKE'
DATABASE
.LM55
.FI
In this mode of operation, the records 'REMOVED' from a database are 'MERGEd' into an existing database which has the same number
of fields, with the same field labels, of the same length, and are of the same data type.
The best way to create this database is to use selection '3' of the 'REMOVED' menu in this program or the
program 'CREATE NEW DATABASE' (BSDMAN) using a 'MODEL' to create a database.
.sp
The 'TARGET' database or the database for the 'REMOVED' records to be put is now defined with it's 'NAME',
'PASSWORD', and 'DRIVE' number.
This database is checked to make sure the fields are exactly the same as the original database.
If they are not, an error message will come up and operation will be stopped.
You will then be able to start the program over or exit to the 'MASTER MENU'.
The work drives are now defined.
.sp
There are two work drives needed in this mode.
The first one is for the original database and contains the records that
.ul
are not
'REMOVED'.
The size of this first work drive is the same size as the original '.DAT' database file if no records are found
to be 'REMOVED', and smaller if records are found to be 'REMOVED'.
The second work file (\#2) is used to put all the records of the 'EXISTING' database which will receive the 'REMOVED'
records plus the 'REMOVED' records themselves.
The size of this work file will be the size of the '.DAT' file of the 'EXISTING' database plus any 'REMOVED'
records from the original database.
This program mode needs the most core computer memory of variable storage and the most work files.
If the size of the '.DAT' files of the two databases you are using requires them to take over half of the
disk space on a drive and you have only two drives in your system, you will not
be able to use this program mode.
If you need to save the 'REMOVED' records, you will need to use the third mode or 'PUT INTO A NEW DATABASE'.
.sp
When the work drives have been defined, the program 'RUNS'.
When done, the 'DATE/TIME' is inputed for use as the 'LAST EDIT' in both 'FILE HISTORYs'.
If all the records in the original database have been removed, the original database will be empty of data and
it will be 'DELETED'.
A message to this effect will come up.
.sp2
.lm22
.nf
18.1.3
'NEW'
DATABASE
.LM55
.FI
In this mode, a new database will be created to put the 'REMOVED' records in.
The 'NAME', 'PASSWORD', 'DRIVE' number, and 'DESCRIPTION' of the 'NEW' database is now inputed.
The fields will be the same as the original database.
.sp
The program runs and the 'DATE/TIME' is then inputed. This will be used as the 'CREATED' data in the 'NEW' database and the 'LAST EDIT'
in the original databases 'FILE HISTORY'.
It is possible that no records are removed from the original database.
If this is the case, the 'NEW' database can't be created and a message to that effect will come up.
It is also possible that all records from the original database have been 'REMOVED'.
The original database will be 'DELETED' as before and a message to that effect will appear.
.PG
.SP
.lm10
.nf
18.2.0
PROGRAM CODE
.LM55
.FI
This program is really three programs in one with common operations.
The three programs are run according to the 'MENU' selection in lines 1265 to 1355.
If the 'BLOWN AWAY' program is chosen ('Q2=1'), then the program starts at line 1440.
.sp
The work file specs are gotten in the code at 1195 first.
This program uses lines 1365 to 1395 to read a record from the original database.
This record is checked in lines 1475 and 1480 and if found not to be a 'REMOVED' record, the code at lines
1405 to 1435 are used to write to the work file.
When the 'EOR' error is found, the clean-up section at lines 1500 to 1560 are run.
.sp
If 'MENU' selection '2' is chosen ('Q2=2'), the program starts at line 1625.
First the code at 2730 is run which gets the database for the 'REMOVED' records to be put.
This database is checked in lines 1675 to 1685.
If the two databases do not have the same field information, the code at 2090 is run.
The program continues with the work drive set-up.
The contents of the '.DAT' file of the target database are put into work file \#2 in the code at 2050.
Then the original file is read and 'REMOVED' records are put into work file \#2 at line 2050 and
non-removed records are put into work file \#1 at line 1405.
When done, the error trap runs the clean-up at lines 1800 to 1845.
.sp
For 'MENU' selection '3' ('Q2=3') a new database needs to be set-up.
The program starts at line 1855.
The name for the information for the new database is gotten at lines 2730 to 2855.
The original database is read in at lines 1365 to 1395 and the new database written at lines 1405 to 1435.
When trapped by the error trap, the program clean-up is executed at lines 1915 to 1985.
.sp
One more note.
You will see that in each 'CLEAN-UP' section there is a strange bit of code like at lines 1932 and 1934
where a file is 'OPENed', the file is read for one variable ('FL') and then 'CLOSEd'.
This is to check for the existence of the file and is used in conjunction with an error trap (in this case at line 2265).
.ul
Nothing
is done with variable 'FL'.
Also, 'SORT.SRT' files are created when needed by this set of programs.
For further information on 'SORT.SRT' files, see section 25.1.3.
.PG
.SP
.lm10
.nf
18.3.0
VARIABLES USED
.LM55
.FI
.PG
.PG
