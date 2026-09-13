# DMAN-07

> Source: `apps/dataman/DATAMAN - DataMan Database - Documentation and Examples.zip!DATAMAN.DSK!DMAN-07.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NF
.NR X 7
.LM 5
.DB
THE DATAMAN SAMPLE RUN
.FI
.SP3
.LM55
This section leads the user through a step by step sample run of the DATAMAN system.
Each program module is used at least once and sample 'printouts' are included.
The example database is a continuation of the example in section 6.


This section can be used in a number of different ways.
First, the new user can follow a sample run and begin to discover the potential of the DATAMAN system.
Second, the section can be used in conjunction with a live computer run.
The user can build database files, manipulate and move data, and print reports in the same order, using the
data, as in this section.
This will give the user a real 'hands on' session using this section as a 'tutor'.
Third, the user is encouraged to experiment with the programs.
Try to change the output of reports and data manipulation programs like the 'SELECT/DELETE' program.
Also, this section can also give you some ideas of how to use the system in applications you hadn't considered before.


This section
.ul
does not
include all the information about each program module.
In most cases only one or two parts of a program module is used.
Further and more detailed information is given on each program module in sections 8 through 25.
Since the DATAMAN system is 'self prompting', most of the programs can be used without reading these sections.
This is one of the beauties of this system.
The new user should be able to construct complicated database procedures almost immediately.
There are no complicated 'command lines', as in other systems, to remember and look up.


Before you get started, I have a few comments about this section.
It was decided to use a 'thermal printer' as the system terminal for this session.
You, on the other hand, will probably be using a CRT as the system terminal.
Since the printer has limited cursor control, all the system terminal codes in the 'SYSTEM.GEN' file are nulls or '0's.
Your 'screens' will look different if you defined these codes.
The information on your CRT screen and in this section will be the same, just in a little different form.
Second, there is the possibility that you have a slightly different version of some of the program modules.
This is because everyone connected with the DATAMAN project is looking for ways to improve DATAMAN.
Any changes from this sample section will be minor.
Major changes will have new manual pages added or changed.
Thirdly, this session and the databases built are for illustration purposes only.
The number of fields in each database were kept to a minimum.
In a 'real world' application, a database might have 50 fields per record or even more.
Only five records were used in the primary database example.
In a 'real world' environment, this number could be 1000 or more.
.PG
.NF
.LM05
.DB
DATAMAN MENU
.LM55
.FI
.SP3
Once you have built your DATAMAN system disk 'DMUNIVC', created
the 'SYSTEM.GEN' file on it, and placed the disk in drive '0',
you are ready to start.
In my system, I always use the 'ASN' command before starting.
If the 'ASN' command is not used, problems could crop up later.
Load the TSC Extended Basic and 'RUN' DATAMAN.


You will notice that some prompting and menu choices will have a '\#' sign before one choice.
This means that you can make this 'defalt' selection by simply hitting the 'RETURN' key.
This can save time and reduce errors.
Durring this session, I will try to remember not to use this feature so that the prompting choices are clear to the user.
.SP33
The program 'BSDMAN' is now being loaded into memory and will automatically run when loading is finished.
.PG
.PG
.NF
.LM 05
.DB
BUILDING A NEW DATABASE
.FI
.LM 55
.SP3
We are now going to create the database from section 6 called 'HOUSES'.
The program first prompts for information to create the database files.
.SP29
With the file information completed, the database fields are now defined.
You will notice that the field name No. 6 is misspelled.
This will be corrected later.
.pg
.SP22
At this point, a menu is printed.
We will first do a 'SUMMATION', then 'EDIT' to correct the spelling error in field 6, then do another 'SUMMATION' before
'CONTINUING'.
.pg
.LM 55
After the names of the two DATAMAN files created are given,	the date and time are prompted for.
This information will be used for the 'Time of Creation' of the database.
.sp17
At this time, at least one record must be entered.
DATAMAN will allow empty fields (entering a 'CR' without any data).
When this is done, a 'NA' is put in the field data for a type 1 or alpha field, a '0' for a type 2 or
numeric field, and a '.00' for a type 3 or money field.
.sp
Four records will be entered now.
In the first record, too many characters are entered for the 'STATE' and an error is given.
In the second record, the 'ZIP CODE' was found to be wrong after a 'CR' was entered.
A 'CTRL C' was used to go back to the 'ZIP CODE'.
In the forth record, an alpha character got into a numeric field ('ZIP CODE').
This error will be picked up in the next DATAMAN program module run.
.pg
.PG
.sp36
Once a 'STOP' is inputed, the data input is stopped and the DATAMAN menu is 'CHAINED' and run.
.PG
.NF
.LM 05
.DB
VERIFY DATABASE
.LM 55
.FI
.SP3
This program module checks a database for alpha characters in type 2 or 3 data fields.
This program can be run any time information in a database needs to be checked.
The error found in this case will be the alpha character in the 'ZIP CODE' in the forth record that was entered
in the last program.
.pg
.SP31
The program is now done and the DATAMAN menu is 'CHAINED' and run.
.PG
.LM 5
.NF
.DB
EDIT A DATABASE
.FI
.LM 55
.SP3
The DATAMAN editor allows the user to edit a database by adding records to it (APPEND) or by changing data in
records that already exsist (LABLE/CONTENT).
As in most program modules, you can work on the complete file, only 'SELECTED' records or only 'DELETED' records.
In the last program, one record was found to have an error and it was flaged as 'DELETED'.
After getting the database, we will find this record and correct it.
.sp
As with all DATAMAN programs, the editor is chosen by menu selection.
From now on, the menu will not be shown to save space.
To bring up the editor, a '2' is selected in the menu.
.pg
.PG
.SP18
You will notice that after a 'CR' to the 'LABLE NUMBER TO EDIT' prompt, you are asked if you want to 'REDEFINE' the 'LABLE/CONTENT'.
This allows quick editing of a database if it has been pre-sorted.
This feature is explained in section 10.1.0.
.sp
To give you another example, let's say
that the 'ADDRESS' in the record with 'JOHN ANDERSON' as the 'NAME' needs to be changed.
By using the 'LABLE/CONTENT' search, the record is found and the 'ADDRESS' field edited.
.pg
.PG
.SP2
The editor can also add records to a database or 'APPEND'.
One more record will be added to bring the total number of records in the database 'HOUSES' to 5.
The 'APPEND' portion of the editor is identical to the field data input section of the 'CREATE NEW DATABASE' program module shown
earlier.
.PG
.SP2
When all editing is done, you 'EXIT' the editor.
This brings up the 'DATE/TIME' prompt which is used for the date and time of the 'LAST EDIT'.
.sp
Once this information is inputed, the DATAMAN menu is 'CHAINED' and run.
.PG
.LM 05
.NF
.DB
VERTICAL DATABASE DUMP
.FI
.LM 55
.SP3
With a menu selection of '3', the 'DUMP DATABASE' program module is loaded and run.
This program can be used for a number of different tasks.
.sp
First, because the dump includes the 'RECORD CODE', the program can be used to check the effect of other programs
like the 'DELETE/SELECT' module on the database.
It can also be used to list a complete database for error checking against 'source documents'.
.pg
.PG
.LM 5
.NF
.DB
SORT EDITOR
.FI
.LM 55
.SP3
To run the DATAMAN 'SORT PROGRAM', a '4' is chosen in the menu.
This program module is realy not a complete sort program, but a 'sort editor' for the T.S.C.
.ul
'SORT/MERGE'
package.
.sp
In this case we want to sort the database 'HOUSES' on the field 'ASKING PRICE' in assending order.
.PG
.sp2
The program gives you the option of creating a new database file which is identical to the original database file (only sorted),
or you can name the sorted database file created the same as the original database file.
We will chose the latter.
.sp 16
When the program module is done, it loads the T.S.C.
.ul
'SORT/MERGE'
package.
The package will keep you posted as to what it is doing.
.sp13
Once the sorting is done, the DATAMAN menu will be loaded and run.
.PG
.LM 5
.NF
.DB
REPORT EDITOR
.FI
.LM 55
.SP3
The 'REPORT EDITOR' is number '6' in the menu.
It is used to generate a 'FORMAT' file which is used by the 'REPORT WRITER' to print reports from information contained
in DATAMAN database files.
.sp00
Once the database to be used for the 'FORMAT' file is chosen, the column width of the report is prompted for.
The user can then define two lines of report headings.
A third line is defined when the 'REPORT WRITER' is run.
If you want a heading line to be blank, simply type a 'CR'.
.pg
.sp16
The 'REPORT LAYOUT' is now defined.
The user can use any or all of the data fields in the report and in any order.
In this example we will use all 8 data fields in the report.
.sp
As each report column is defined, the width of the column, the width remaining on the report, and a comparison of the width of
the field lable and the data lenth is given.
The two '*' after the 'HEADING' represent the two spaces between each report column.
The user can then change the 'HEADING' if he chooses.
In the example, the 'HEADING' in column '7' is changed from 'ZIP CODE' to 'ZIP'.
More information on how to use this program module is given in section 14.1.0.
.pg
.PG
.SP31
The name and drive number for the 'FORMAT' file is now prompted for.
After the program has written the file, the menu is 'CHAINED' and run.
.PG
.NF
.LM 5
.DB
REPORT WRITER
.FI
.SP3
.LM 55
The 'REPORT WRITER' is menu selection number '7'.
By using the 'FORMAT' file created by the 'REPORT EDITOR' and a database, a report is printed.
.sp
The name of the 'FORMAT' file created by the 'REPORT EDITOR' was 'LISTING'.
This file along with the database 'HOUSES' is loaded, the type of output is selected, and a third heading line is prompted for.
.pg
.SP16
The report is now printed on the 'System Printer'.
Notice the effect of the sort done ealier on the database.
The report totals (if any) are given on the last page of the report.
.PG
.LM5
.NF
.DB
DIRECTORY OF DISK
.FI
.LM 55
.SP3
Number '13' in the menu allows the user to look at the DATAMAN files on a disk.
This program uses the FLEX utility 'CAT'.
.sp
So far the disk contains the '.DAT' and '.SPC' files of the database 'HOUSES' and the 'FORMAT' file 'LISTING'.
.PG
.LM 5
.NF
.DB
STATISTICS
.FI
.LM 55
.SP3
Menu selection '15' is the DATAMAN statistics package.
This program gives information on any one field of type 2 (numeric) or type 3 (money) data.
The database must be sorted in assending order on the field to be used before this program is run or some of the data given
in the statistics report will be wrong.
.sp
In this example, we will use the database 'HOUSES' and run the program using the field 'ASKING PRICE' as the target field.
This field was sorted earlier in assending order.
.pg
.SP 30
When this program is done, the menu is 'CHAINED' and run.
The output from this program is given on the next page.
.PG
.PG
.NF
.LM 5
.DB
CREATING ANOTHER DATABASE
.FI
.LM 55
.SP3
So far we have taken and built a sample database, done some editing, sorted it, and used two types of output programs , the 'DATA DUMP'
and the 'REPORT EDITOR/WRITER'.
In the next series of examples we will see how you can combine two different databases into a third that contains information from
both.
.sp
There are four 'NEIGHBORHOODS' in our town of Wacoville.
We want to build a database containing information on each of these four 'NEIGHBORHOODS'.
For each 'NEIGHBORHOOD', data on the 'SCHOOLS', 'TAXES', and the availability of 'BUS' service
will be given.
.sp
Program selection '1' in the menu brings up the 'FILE BUILD' program module.
.pg
.PG
.SP53
The menu is now 'CHAINED' and run.
.PG
.LM 5
.NF
.DB
MERGE UNLIKE DATABASES
.SP3
.FI
.LM 55
We now have two databases we want to 'MERGE' together.
The first one called 'HOUSES' is the 'primary' database and 'HOODS' is the 'secondary' database.
.sp
Looking at the fields of these two databases, you will notice that both contain the 'FIELD LABLE' 'NEIGHBORHOOD'.
Also notice that this field is defined as a type 1 (alpha) and has a lenth of 15 characters in both databases.
This field will be the 'KEY' to link the two databases together into a new one called 'COMBO'.
A more information on using this program can be found in section 13.1.0.
.sp
The first step to 'MERGE' our two databases is to load them into the program module which is number '5' in the 'MENU'.
.pg
.SP16
It is now time to define the fields from the 'PRIMARY' database to be included in the new database 'COMBO'.
The 'KEY' or common field between the two databases 'HOUSES' and 'HOODS' is given.
.sp28
The field information of the 'SECONDARY' database 'HOODS' is now given.
In this example, all the fields from this database will be included in the new database 'COMBO'.
The field 'NEIGHBORHOOD' is chosen as the 'KEY' as it was in the 'PRIMARY' database.
.pg
.SP27
You will notice that in defining the fields for the new database, the field 'NEIGHBORHOOD' was included when defining the fields to be
included from the 'SECONDARY' database.
It could have been defined when in the 'PRIMARY' section.
It is a common error to include this field in both the 'PRIMARY' and 'SECONDARY' section.
If it were, the field would be included twice in the new database.
This condition would cause confusion and errors when using the new database.
Also, the 'KEY' does not have to be included as a field in the new database as it has been in this example.
.sp
The new database 'COMBO' is now set-up.
.PG
.SP20
The next prompt has to do with the resetting of the 'SECONDARY' database during the actual 'MERGE' process.
This is a feature to speed the 'MERGE' process.
If both the 'PRIMARY' and 'SECONDARY' database has been sorted on the 'KEY' field in assending order, the 'RESET' prompt can be
answered 'N'.
This will speed up program execution time especially if the 'SECONDARY' database is rather large.
Since our two databases were not sorted as described above, the 'RESET' prompt will be 'Y'.
A more detailed explanation is given in section 13.1.
.sp4
The date and time is then prompted for.
.sp13
When the program is done, any records in the new database that were not 'MERGED' because the 'KEY' was not found in the
'SECONDARY' database are flaged as 'DELETED' in the new database.
The number of these 'DELETED' records in the new database is also given.
.PG
.SP10
The 'MENU' is now 'CHAINED' and run.
.PG
.LM5
.NF
.DB
REPORT EDITOR FOR DATABASE 'COMBO'
.FI
.LM 55
.SP3
At this time, we want to create a report using the new database 'COMBO'.
This report will be used to list the information on the neighborhood for each house for sale.
.sp
This will be an 80 column report with the second heading line blank.
A 'MENU' selection number '6' will load and run this program module.
.pg
.PG
.SP22
The 'FORMAT' file name and drive number is now given.
The 'FORMAT' file name will be 'LCOMBO'.
.sp12
When the program is done, the 'MENU' is 'CHAINED' and run.
.PG
.NF
.LM 5
.DB
REPORT WRITER
.LM 55
.FI
.SP3
The database 'COMBO' will now be printed using the 'FORMAT' file 'LCOMBO'.
A third report heading line will be defined.
A 'MENU' selection of '7' will load and run this program.
.PG
.SP 14
After the program is done, the 'MENU' is 'CHAINED' and run.
.sp
Since the report was put in an 'OUTPUT' file named 'COMBOP', the file can be printed anytime by dropping into FLEX and using the
'LIST' command or the 'PRINT' command to print this '.OUT' file.
When printed, the report looks like this.
.PG
.NF
.LM 5
.DB
SELECT/DELETE PROGRAM
.FI
.SP3
.LM 55
We have seen how the use of the 'record code' set to 'DELETED' can be used to 'flag' records in a database with problems or errors.
The 'record code' can also be set by using this program module which is number '8' in the 'MENU'.
.sp
Let's say that we have sold two of the houses in the database 'HOUSES'.
The first house was the one with the 'OWNERS NAME' of 'JOHN DOE'.
We can't remember the name of the owner of the second house, but we know that the 'ASKING PRICE' was '31200.90'.
.SP
First we get the database 'HOUSES'.
.PG
.SP1
The next section of the program sets up the logic.
First, the program needs to know if 'AND' or 'OR' logic is to be used.
'AND' logic means that for the 'RECORD CODE' to be set, all logic conditions must be 'true'.
'OR' logic means that if any of the logic conditions set are true, then the 'RECORD CODE' will be set.
For our example, we want 'OR' logic.
If we set only 1 condition, it makes no difference which logic is used.
.sp
Next we need to know if we want records that are 'SET' (meet the logic conditions) to be 'SELECTED' or 'DELETED'.
For our example we will use 'DELETED'.
.sp
Next, the number of conditions is set.
For our example, we have two logic conditions to look for.
.sp8
Now the logic conditions are selected.
.PG
.SP37
When the program is done, the 'MENU' is 'CHAINed' and run.
.PG
.NF
.LM 5
.DB
DUMP OF 'DELETED' RECORDS
.FI
.LM 55
.SP3
Using 'MENU' selection '3', the 'DUMP DATABASE' program is loaded.
We will use this program to check the action of the 'SELECT/DELETE' program just run.
Only the 'DELETED' records will be dumped.
.PG
.SP
This is the 'DUMP' of database 'HOUSES'.
The 'RECORD CODE' of the houses sold are both '2' or 'DELETED'.
.sp27
When the program is done, the 'MENU' is 'CHAINed' and the program run.
.PG
.NF
.LM 5
.DB
REPACK DATABASE
.FI
.LM 55
.SP3
Now that we have 'DELETED' the two records in the database 'HOUSES', we will remove these two records and put them
into a new database called 'SOLD'.
To run this program, use '10' in the 'MENU'.
.PG
.SP
Because the database 'SOLD' is new, the program prompts for the file information.
The date and time is also needed for the date and time of 'CREATION'.
.sp40
When the program is done, the 'MENU' is 'CHAINed' and run.
.PG
.NF
.LM 5
.DB
RESTORE RECORD CODE
.FI
.SP3
.LM 55
There are times when you will want to 'RESTORE' all the 'RECORD CODEs' in a database to 'SELECTED'.
This program will do this.
.sp
We will 'RESTORE' the database 'SOLD' which containes two records which are both 'DELETED'.
To run this program module a '9' is selected in the 'MENU'.
.sp32
When the program is done, the 'MENU' is 'CHAINed' and run.
.PG
.NF
.LM 5
.DB
REPORT WRITER
.FI
.LM 55
.SP3
At this time we want to print a report of the database 'SOLD' which containes the two sold houses.
Because the database 'SOLD' was created by the 'REPACK' program module from the database 'HOUSES', any 'FORMAT' files
created to print reports for the database 'HOUSES' will also print reports for the database 'SOLD'.
The report 'FORMAT' called 'LISTING', which was created earlier, will be used.
Also note that because we just 'RESTOREd' this database, printing 'ALL RECORDS' or 'ONLY SELECTED RECORDS' would yield the
same result.
.sp
A '7' in the 'MENU' will bring up this program.
