# DMAN-13

> Source: `manuals/misc/MANVOL3 - FLEX Software Archive - Manual and Documentation Archive - Includes BACK, DMAN-08, DMAN-10.zip!MANVOL3.DSK!DMAN-13.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NR X 13
.NF
.LM05
.DB
13.0.0
.DB
'MRGDMAN'
.DB
MERGE DATABASES
.FI
.LM55
.SP3
This program will merge two unlike databases into one database containing information from both databases.
A data field from each database is chossen as a 'KEY' to link databases together.
.sp2
.nf
.lm10
13.1.0
PROGRAM OPPERATION
.FI
.LM55
In Section \#7 starting on page 7-34 is the sample run of this program.
The sample run will give you a good idea of how the program is set-up and run.
.sp
First, the 'PRIMARY' database is entered and the 'FILE HISTORY' listed.
It is called the 'PRIMARY' database because when the program is run, for each 'PRIMARY' database record 'KEY',
the 'SECONDARY' database records are searched for the 'KEY' match.
The first match found in the 'SECONDARY' database is used as the 'MERGE' record.
As a rule, the 'PRIMARY' database should have more records or have the same number of records as the 'SECONDARY' database.
The 'SECONDARY' database is then specified and it's 'FILE HISTORY' listed.
.sp
.sp
.lm22
.nf
13.1.1
FIELD DATA
AND 'KEYS'
.LM55
.FI
At this point the fields of the 'PRIMARY' database are listed.
The number of fields for the 'NEW' database from the 'PRIMARY' database is inputed.
Then the fields are identified by 'NUMBER'.
The last input is the 'KEY'.
The 'KEY' is used as the link between the two databases.
When the data in the 'KEY' field of the 'PRIMARY' database matches the 'KEY' data in a record in the 'SECONDARY' database,
the two records are 'MERGEd' together and the records desired from both orginal databases are then put into the 'NEW' database.
The 'SECONDARY' database fields are then listed and the same process as in the 'PRIMARY' section is gone through.
.sp
It should be noted that any or all fields from either database can be defined for the 'NEW' database.
If the 'KEY' field is to be used as data in the 'NEW' database, it should only be included once in either
the 'PRIMARY' database specifications or the 'SECONDARY' specifications, but not in both.
If the 'KEY' were specified twice, it would occure twice in the new database and would cause problems in using the 'NEW' database.
.sp2
.lm22
.nf
13.1.2
THE 'NEW'
DATABASE
.FI
.LM55
The file for the 'NEW' database is now set up.
The 'NAME', 'PASSWORD', 'DESCRIPTION', and 'DRIVE' number for the 'NEW' database is now inputed.
As with other DATAMAN programs the 'RECORD CODE' set-up is inputed.
This allows the user to define the 'RECORD CODEs' to be used for both the 'PRIMARY' and 'SECONDARY'
database searches.
.sp
The next section has to do with 'RESETing' the 'SECONDARY' database.
To understand what this means you must first know how the program works.
The first record of the 'PRIMARY' database that meets the 'RECORD CODE' logic is loaded into the program.
Then the 'KEY' data is found in this first record.
The 'SECONDARY' database is then loaded one record at a time and each record is checked and each
'KEY' is found in records that match the 'RECORD CODE' logic set.
The 'KEY' form the 'PRIMARY' database and the 'KEY' from each 'SECONDARY' database are compared (the data in each 'KEY')
and if a match is found, a 'NEW' database record is created.
Then the next 'PRIMARY' database record 'KEY' is found.
Now if the 'RESET' is 'YES', then the 'SECONDARY' database will be 'RESTOREd' just like in a BASIC program with
'DATA' statements.
In other words, the search for the next 'KEY' in the 'SECONDARY' database will start with the first record
in the 'SECONDARY' database.
If the 'RESET' is 'NO', then the search in the 'SECONDARY' database will start with the
.ul
last
'KEY' found and continue to the end of the 'SECONDARY' database.
This can save a lot of time if there are a lot of 'PRIMARY' databases with the same 'SECONDARY' 'KEY' and
both databases are sorted on the 'KEY' in the same order.
When in doubt, it is best to set the 'RESET' to 'YES'.
.SP
The 'DATE/TIME' for the 'NEW' database date and time of 'CREATION' is now prompted for.
After the program is done, the 'MASTER MENU' is brought back up.
.sp
The 'NEW' database with both it's '.SPC' and '.DAT' files has now been created.
The 'NEW' database contains as many records as the origional 'PRIMARY' database
(that is the number that met the 'RECORD CODE' conditions).
Any records in the 'NEW' database that did not have matches found in the 'SECONDARY' database are flagged 'DELETED'.
These records will contain all the fields, but the fields that came from the origional 'SECONDARY' database
will be empty of data.
These records can be edited and data inserted manualy.
You might want to write a DATAMAN program module that would take these records and put a 'NA', '0', or '.00' in the empty data fields
automatically.
No data from the origional databases has been changed or deleted.
The 'NEW' database will be in the same record order as the origional 'PRIMARY' database.
.sp2
.lm 10
.nf
13.2.0
PROGRAM CODE
.FI
.LM55
The main code for this program is located in lines 1195 to 1880.
This code is more 'compressed' than the other code in DATAMAN programs.
The majority of the program is envolved in getting the database files, listing the fields, getting the field and 'KEY'
data, and getting the information for the 'NEW' database.
.sp
The actual guts of the program are in lines 1615 to 1840.
Lines 1615 to 1640 reads and checks the 'RECORD CODE' of the 'PRIMARY' database.
Line 1650 is used to skip the reading of a new 'SECONDARY' database record if the 'RESET' is 'N' and a 'NEW' record
has just been written.
Lines 1655 to 1675 load	and check the 'SECONDARY' database.
You will note that lines 1680 to 1700 do the actual 'KEY' checking.
'TYPE' 2 and 3 data are compared by their 'numerical' values while
'TYPE' 1 data is compared as 'STRING' data.
This was done to keep problems in using the program at a minimum.
.sp
For example, if in one database you used 'TYPE' 2 data to store a 'PART NUMBER' of '00123' and in the other one you didn't include the
leading '00', the two would still match as 'KEYS'.
The problem with this is with numeric or money data longer than 15 digits.
The 'precision' of BASIC would not always make matching these large numbers correctly.
In this case you would be better off matching by the method of 'STRINGS' as in line 1695.
If this is going to be a problem in your application of DATAMAN, simply get rid of lines 1680, 1685, and 1690 or
write a new line of code at line 1682 that looks like this...
.sp2
.nf
.lm45
1682	IF LEN(FK$(KP))>15 OR LEN(SK$(KS))>15 THEN GOTO 1695
.FI
.SP2
.LM55
The 'NEW' records are written in lines 1705 to 1725 and subroutine 1825.
.sp
The 'NEW' '.SPC' file is written next at lines 1730 to 1765.
Lines 1785 to 1810 are used if no match is found in the 'SECONDARY' database.
It sets all the 'SECONDARY' data to blanks, sets the 'RECORD CODE' to 'DELETED' (N9), and increments the delete counter (N8).
This section also resets the 'SECONDARY' database in line 1805.
.sp2
.lm10
.nf
13.3.0
VARIABLES USED
.LM55
.FI
