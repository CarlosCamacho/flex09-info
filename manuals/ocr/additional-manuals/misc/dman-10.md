# DMAN-10

> Source: `manuals/misc/MANVOL3 - FLEX Software Archive - Manual and Documentation Archive - Includes BACK, DMAN-08, DMAN-10.zip!MANVOL3.DSK!DMAN-10.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NR X 10
.NF
.LM 5
.DB
10.0.0
.DB
'ETDMAN'
.DB
EDIT/APPEND
.SP3
.LM 55
.FI
The DATAMAN editor is used for 'file mainatinance'.
Field data can be found and changed and records can be added to a database.
As delevered, this program can not delete or remove entire records from a database.
To do this the 'SELECT/DELETE' program 'SRFDMAN' is used.
.SP2
.lm 10
.nf
10.1.0
PROGRAM OPPERATION
.LM 55
.FI
As with all these operation sections, it is a good idea to refer to the 'SAMPLE RUN', section \#7, when reading this text.
Look for the parts where this program was run and follow the descriptions given.
.sp
After the database 'NAME', 'PASSWORD', and 'DRIVE' number are inputed and the 'FILE HISTORY' is given, the 'WORK DRIVE' is
prompted for.
.SP2
.LM 22
.NF
10.1.1
WORK FILES
.FI
.LM 55
In DATAMAN, a work file is created to store information.
The size of this 'work file' is important because it is quite possible that it will not fit on the same disk that
contains your database.
To determine the present size of your database, you will need to look at your disk with the 'DIRECTORY OF DISK' program.
Look to see how large the '.DAT' file of your database is and how much room remains on the disk.
If you will be simply editing data in your database and not adding records to it, the size of the 'work file' will
most probably be just one or two sectors longer than the '.DAT' file.
If you will be adding to a database with this program, the size of the 'work file' could be much larger than your '.DAT' file.
It all depends how many records you are going to add and how much data is in each record.
.sp
It is not to hard to get a rough guess of the size.
If your database now has 100 records in it, for example, and the '.DAT' file is 40 sectors long, then adding
50 records to it would require the 'work file' to be about 60 sectors.
If you had 75 sectors left on the disk with your database on it, you could probably feel safe using it as the 'WORK DRIVE'.
If there is not enough room for the 'work file' on your database disk, there are a number of things you can do.
.sp
First, you could delete unwanted files on your database disk to make room for the 'work file'.
Second, you could move the database to an empty, but formated, disk.
If you do this, make sure you move both the '.SPC' and the '.DAT' files of your database.
Use the FLEX 'COPY' and then use the FLEX 'DELETE' to remove the two files from the old disk.
.sp
There is the possibility that your database is so large that there is no way to fit the 'work file' on the same disk as
your database.
In this case you must define the 'WORK DRIVE' as a different drive from the drive which your database disk is on.
If you have 3 or 4 drives in your system, this is no problem.
If your DATAMAN system disk (DMUNIVC) is in drive \#0 and your database is on a disk in drive \#1, then put a disk with
enough room for the 'work file' on drive \#2 and define the 'WORK DRIVE' as drive \#2.
If you have only two drives in your system, here is what to do.
.sp
You will need to make a 'work disk'.
To do this, format a disk with the FLEX 'NEWDISK' command.
When I do this, I call the newdisk 'DMANWORK'.
Put the FLEX programs 'COPY.CMD' and 'DELETE.CMD' on this disk.
Now, when you are running DATAMAN with the DATAMAN system disk (DMUNIVC) in drive \#0 and your database disk in
drive \#1 and you need to use the disk 'DMANWORK' to hold your 'work file', simply remove the DATAMAN system disk from drive \#0 and
insert the work disk ('DMANWORK') into drive \#0.
You then define the 'WORK DRIVE' as drive \#0.
This work disk can be used any time you need extra work space.
.SP
If you use this 'work disk' in a two drive system, there is one more thing to mention.
When the 'EDIT/APPEND' program is done, an attempt will be made to load and run BASIC from drive \#0.
The reason for this is that the 'work file' on the work disk on drive \#0 is copied with the FLEX 'COPY.CMD' to the database disk on
drive \#1, takes the name of the database and is given a '.DAT' extension.
This opperation is explained further in section 25.1.3.
Since BASIC is not on the work disk in drive \#0, the computer drops into FLEX.
At this point, remove the work disk and insert the DATAMAN system disk (DMUNIVC), reload BASIC, and load the 'MASTER MENU'.
.sp
Any time you define the 'WORK DRIVE' to be a different drive from the drive the database is on in this program, two
things will happen.
First, a number of FLEX prompts will occure asking if files can be 'DELETED'.
If no disk error messages have shown up, answere 'YES' to all these prompts.
If error messages have been given, it is a good idea to answere these prompts with a 'NO' so that no work files are
deleted untill the cause of the disk errors are known.
Because DATAMAN uses these work files, it is very rare that a complete database gets distroyed for any reason.
The second thing to note is that only one edit opperation will occure before the editor loads the 'MASTER MENU' program.
In the example in section 7, you will not that it is possible to do a 'LABLE/CONTENT' edit, then do an 'APPEND' edit, another
'LABLE/CONTENT' edit, etc.
This is only possible when the 'WORK DRIVE' and the database drive are the same number.
.sp2
.lm 22
.nf
10.1.2
LABLE/CONTENT
EDIT
.LM55
.FI
This editing mode is quite straight forward.
In this mode, you look for a certain record to edit by giving the program the field lable number and the data contents of that field.
If the record is found, it is listed, and the user can change any or all the data in that record.
When you are done editing that record simply type a 'CR' and the next record (if any) which matches the lable number and data
will be listed and be available for editing.
.sp
After each record has been edited, a prompt will occure asking if you wish to 'REDEFINE' the 'LABLE/CONTENT' search.
This can save a lot of time when a lot of editing is to be done.
Here is how it works.
.sp
Let's say you have a database with the 'LAST NAME' as one of the field lables.
Another field in the database is called 'LAST PURCHASE'.
You have 100 records of 100 different names in the database.
Today you need to change the 'LAST PURCHASE' field data for 12 of names.
.sp
You would first sort the database with the 'SORT DATABASE' program on the field 'LAST NAME' in assending order.
You would also sort the 12 names you need to change in assending order.
Now let's say that the 'LAST NAME' is the first field in the records.
The first of the 12 names (when sorted) are 'ALBERT', 'CAPPER', and 'GIBSON'.
When you are asked for the first 'LABLE/CONTENT' for editing, you would type '1,ALBERT'.
When the record with 'ALBERT' as the 'LAST NAME' is found, you change the 'LAST PURCHASE' data.
Then you type a 'CR' to go to edit the next record.
When the 'REDEFINE' prompt comes up, you type 'Y'.
When the 'LABLE/CONTENT' prompt comes up again, you type '1,CAPPER'.
This record is found and editied.
You continue to redefine the 'LABLE/CONTENT' untill all 12 names are found and the records are edited.
This will save a lot of time when editing database that are large because the same work file is used for the
entire edit.
If you answered 'N' to the 'REDEFINE' prompt, the entire work file would be rebuilt each time a new name was inputed for the
'LABLE/CONTENT' search.
.sp
You can also look at all the records in a database by typing a '1,!!' for the 'LABLE/CONTENT' prompt.
You can then edit any or all of the data fields in all the records of the database.
.sp
In the 'LABLE/CONTENT' editing mode you can restrict the search to only records that have the 'RECORD CODE FLAG' set 'SELECTED',
'DELETED' or you can search all records regardless of the 'RECORD CODE FLAG'.
.sp2
.lm22
.nf
10.1.3
APPEND
RECORDS
.LM55
.FI
If you choose to 'APPEND' or add additional records to a database, the opperation is the same as when you added records
in the 'CREATE NEW DATABASE' program.
The procedure is given in section 9.1.7.
.sp2
.nf
.lm22
10.1.4
DATE/TIME
INPUT
.LM55
.FI
When you exit the 'EDITOR' program, you input the date and time.
This is used as the 'LAST EDIT' information in the 'FILE HISTORY'.
This can be very usefull when you have a number of databases to update and you can't remember when they were last
updated.
By writting this date and time on source documents used while editing, you can create a good 'audit trail'
to reconstruct any database which has been made invalid for one reason or another.
.sp
.sp
.lm10
.nf
10.2.0
PROGRAM CODE
.LM55
.FI
The 'ETDMAN' program is basicaly broken into four parts.
The first section from line 1055 to 1260 sets up the database to be edited and defines the 'WORK DRIVE'.
This section is very simalar to othe DATAMAN program modules.
.sp
The user can choose to edit the database by two methods.
If you choose the 'LABLE/CONTENT' edit mode, program lines 1270 to 1450 are used to set up the edit and lines
1460 to 1595 contain the actual editing.
.sp
For the file 'APPEND' mode, lines 1605 to 1780 are used to add records to a database.
In the 'APPEND' mode, the complete database '.DAT' file is copied to the work file called 'TEMP.SCR'.
Then the new records added are added to the work file.
When the 'APPEND' mode is exited, the database file is replaced by the work file and the work file is renamed to the
'.DAT' database file.
.sp
The final major section is the file 'clean-up' and the writting of a new '.SPC' file on the database disk.
This new file is the same as the old one except the variable 'QT$' is inserted for the 'LAST EDIT' date/time in line
1845.
.sp2
.lm 22
.nf
10.2.1
PROGRAM
CHANGES
.FI
.LM55
One change to this program that warrents some consideration is the addition of a 'RECORD CODE' edit.
This would allow the 'RECORD CODE' to be edited while in the 'LABLE/CONTENT' mode.
The only program that allows the user to change the 'RECORD CODE' is the 'SRFDMAN' program module.
If this feature were added to this program, it might be very usefull under some conditions.
The change to the 'ETDMAN' program would be to add this code.
.sp2
.lm 45
.nf
1527	PRINT : PRINT "** RECORD CODE IS";J
1528	PRINT "DO YOU WANT TO CHANGE (Y) OR \#(N)";:INPUT LINE Q5$
1529	IF Q5$="Y" AND J=1 THEN J=2 ELSE IF Q5$="Y" AND J=2 THEN J=1
.pg
.LM 55
.FI
You will also need to change the 'GOTO 1530' in line 1515 to a 'GOTO 1527'.
This change will allow the user to change the 'RECORD CODE' of any record found in the 'LABLE/CONTENT' search.
.sp
Changes in the 'FILE APPEND' section begining at line 1605 is discussed in section 9.2.0.
.sp2
.nf
.lm 10
10.3.0
VARIABLES USED
.LM 55
.FI
