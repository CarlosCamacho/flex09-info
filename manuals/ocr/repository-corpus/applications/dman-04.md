# DMAN-04

> Source: `apps/dataman/DATAMAN - DataMan Database - Documentation and Examples.zip!DATAMAN.DSK!DMAN-04.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NR X 4
.LM 05
.NF
.DB
4.0.0
.DB
AN OVERVIEW OF THE
.DB
DATAMAN PROGRAMS
.FI
.LM 55
.SP3
This section gives the new user a quick idea of how DATAMAN is put together.
DATAMAN is written in modules that allow the end user to use any or all the modules to suit the application.
For special applications customized modules can be written using the program 'SUBSDMAN'.
This program is a DATAMAN module 'shell'.
It contains most of the needed subroutines needed to write a DATAMAN module.
More information is given in the 'CUSTOMIZING DATAMAN'.


All DATAMAN programs compile to drive '0' where all needed system programs used by DATAMAN are also stored.
Drive '1' is usually used for the database, and any other available drives are used for work files and/or additional databases.
A system with two mini drives will work fine except when using very large data files.


DATAMAN is menu driven with all programs returning to the menu when finished or exited cleanly.
The menu has a cold start which can set up any user system conditions or any time/date routines.
The warm start is the program return target for most application programs.


The limited graphics of most any 80 X 24 CRT can be	used to format each screen to include the program module name
and action header.
The action header tells the operator what general information is being asked for, what information
is being displayed, or what the computer is doing.
This information is on the screen almost all the time making use of programs less confusing.


The control characters used by the system terminal and printer are kept in a file on the system disk called 'SYSTEM.GEN'.
This allows the user to easily change periphials without having to change any program code.
Two different programs are supplied with DATAMAN to create this 'SYSTEM.GEN' file.
This file can also be used to set up special system requirements or pass data between DATAMAN programs.
More information on the creation and uses of the 'SYSTEM.GEN' file is given later.


The source programs of DATAMAN are written in a structured, easy to follow form.
Remarks are always in column 1 of code and program statements begin in column 5.
This method allows easy spotting of line overflow which can be confused with line numbers.


The first versions of DATAMAN used sequential files because they were run under the BASIC supplied with the original DOS.
When full random files were offered I was tempted to convert to random files.
I didn't for a number of reasons.
First, of course, sequential files are easy to use.
By using the TSC Sort/Merge package I felt I had sorting speed that would surpase any Basic program using KEY files.
KEY files in an ISAM structure are hard to keep track of for inexperienced operators and the KEYS must be updated
whenever file maintenance is done.
With random files you are limited to 252 bytes in each record without file expansion blocking and a lot of magic.
File space would be wasted on databases with small records without compression blocking and more magic.


For DATAMAN there are only two areas where random files would increase the speed of DATAMAN.
First, when running file maintenance on a medium or large file, random files would increase the speed and eliminate
the file disk space overhead for '.SCR' work files.
We have found that we can speed up file maintenance greatly by careful sorting of the database and pre-sorting the source
documents to be entered.
If DATAMAN is to be used in an environment such as an on-line inventory system where records are
accessed and changed, DATAMAN could be too slow.
The second place where random files could increase the execution speed is in the 'MRGDMAN' program.
A more detailed explanation is given in 'MRGDMAN' description.
A byproduct of the sequential file structure in DATAMAN is that the number of fields in a record
are limited only by core memory.


.LM 10
.NF
4.1.0
DATAMAN MENU
(DATAMAN)
.FI
.LM 55
To enter the DATAMAN system, BASIC is loaded and the program '0.DATAMAN.BAC' is 'RUN'.
The menu 'CHAINs' the other programs by number.
Changing the menu to add or delete modules is easy to do.
As delivered, DATAMAN modules chain back to the menu's 'warm start' target.


.LM 10
.NF
4.2.0
DATABASE CREATE
(BSDMAN)
.FI
.LM 55
To create a database this program is loaded.
The user can either create a new database from scratch or use an exsisting database as a model.
The database name (8 letters or less), the drive number, and password are loaded.
A short description of the database is then entered.
Some DATAMAN programs allow changing this description and it has proven very useful in cutting down
errors of the 'time consuming' variety.
DATAMAN then prompts for the number of fields desired, then each of the field lables are entered.
For each field lable two pieces of information are entered.
First, the type of data is entered.
The type can be alpha, numeric, or money (dollars and cents).
Second, the maximum number of characters to be used is entered.


After the above information has been entered it may be reviewed, edited, or the program may be continued.
If continued, at least one record must be put into the database.
Data input is continued until 'STOP' is typed for the first field of a record.


Each database in DATAMAN uses two files of the same name.
One has a '.DAT' extension, the other has a '.SPC' extension.
The '.SPC' or specifications file contains all the field header information as well as the password
and the date and time the file was created and last updated.
This leaves the '.DAT' a pure data file that can be used by the TSC Sort/Merge package.
Along with all the data, the '.DAT' file includes a record code flag.
This flag is initially set to '1' or 'selected'.
A '2' in the record code flag means 'deleted'.


.LM 10
.NF
4.3.0
FILE MAINTENANCE
(ETDMAN)
.FI
.LM 55
File maintenance or data editing is done with this program.
As with most DATAMAN programs the database file name, drive number, and password are entered.
Once the '.SPC' file has been loaded and the password checked, a 'file history' is displayed giving the file name
, description, date and time of file creation, and the date and time of the last file edit.
As delivered, DATAMAN prompts for the current time and date.
It is easy to add a time/date card to take care of this.
Sample code and information is given in the section 'CUSTOMIZING DATAMAN'.


Also, as with most DATAMAN programs, the file maintenance program will act on all records in a database, only selected records,
or only deleted records.
The work file can always be put on any drive in the system giving the operator complete control of disk space.


First, editing can be done by a record search by field.
In this mode, each record that matches the field target is listed and any or all of the field data can
be changed.
Second, all records can be examined and/or edited by a global command.
Third, additional records can be added to the database by an 'APPEND' command.
When all file maintenance has been completed, the program is exited and the menu is 'CHAINED'.


.LM 10
.NF
4.4.0
VERIFY DATABASE
(VERYDMAN)
.FI
.LM 55
This DATAMAN program checks database data to make sure that all numeric data fields contain only numeric information.
This is useful to quickly check database files either written by DATAMAN or user written modules.


When a record is found to have bad data, it is flagged as 'deleted'.
Records that pass are flagged as 'selected'.
This allows the user to use the file maintenance program 'ETDMAN' keyed to 'deleted' records to change bad data.
.PG
.LM 10
.NF
4.5.0
DATA DUMP
(DPDMAN)
.FI
.LM 55
The data dump program is used to dump database fields and contents in a vertical format.
This program not only lists the fields and their contents, but also prints the 'record code flag'.
This program is used primarily to check data input against source documents by a secretary when low error
databases are needed.
It also gives the operator quick dumps of data on the tube or printer to check the effects of other
DATAMAN programs like 'SRFDMAN'.
Data can be displayed on the screen with or without the 'pause'.
Data is printed either in real time or dumped to disk for later printing.


.LM 10
.NF
4.6.0
TSC SORT EDITOR
(STDMAN)
.FI
.LM 55
In the original versions of DATAMAN, I used sorts of all kinds written in BASIC.
Some were slow...others were very slow.
If a database of over 400 records were to be sorted on multiple keys, I would start the sort before going home at night and
hope it would be finished the next morning!
Then came the TSC Sort/Merge package.
Sorting is now fast and is used to save time in other programs such as File Maintenance.


Once the database has been chosen for sorting and the 'File History' has been displayed, all the
field lables are displayed.
The operator is asked how many keys to sort on (up to 20).
On the primary key and each secondary key the operator is prompted for the field and has a choice
of ascending or descending order.
The name of the new sorted database, drive number, password, and description are entered (STDMAN will
also sort without making a new database).
When all information has been entered the operator can either redefine the sort perimeters continue the sort, or exit the program.
After the sort is finished, the DATAMAN menu is 'CHAINED'.
It is worth noting that at no time does the operator apppear to drop into FLEX.
I have left the TSC Sort/Merge messages active to give the operator an idea of where the program is.


.LM 10
.NF
4.7.0
SELECT/DELETE
PROGRAM
(SRFDMAN)
.FI
.LM 55
This stand alone program does all the delete/select action.
Deleted files are flagged in the record code flag as a '2'.
The program leads the user through the logic descisions to delete and select records for use
by other programs.
The logic is set up in the begining of the program as 'and' or 'or' logic and can be re-entered
for multiple 'and/or' logic.
I have tried to keep the program as simple to use as possible without reducing the logic available.
.PG
.LM 10
.NF
4.8.0
LOOKUP PROGRAM
(FINDDMAN)
.FI
.LM 55
This program allows the user to find data in a DATAMAN database in the same way that file maintenance does
except that no editing is done.
This allows the user a quick and easy way to lookup information in a database.
The results are displayed on the system terminal or CRT.


.LM 10
.NF
4.9.0
RESTORE SELECT
FLAG PROGRAM
(RESTDMAN)
.FI
.LM 55
For one reason or another it is often necessary to reset the record code flag of every record in a database
to 'selected'.
This program does this.


.LM 10
.NF
4.10.0
REMOVE DELETED RECORDS
(PACKDMAN)
.FI
.LM 55
This program actually removes 'deleted' records from a database.
This program is often thought of as simply a program to 'blow away' unused records.
It can do this of course, but it is more often used to move records from one database to another.
This program will also create a new database to move 'deleted' records to.


.NF
.LM 10
4.11.0
MERGE DISSIMILAR
DATABASES
(MRGDMAN)
.FI
.LM 55
To merge two dissimilar databases into one new database, the 'MRGDMAN' program is used.
This program uses a field from a primary file to key records from a secondary file.
For instance, if the primary file has names, S.S. number, and YTD salary, and the secondary file has the S.S. number, address,
and phone number, you can make a new file containing the employee name and S.S. number from the primary file
and by using the S.S. number as the key, add the city and phone number from the secondary file.
The new file will have as many records as the primary file.
If the key target was not found in the secondary file, a 'NA' will be inserted, a message will appear on the
CRT, and the record will be flagged as 'deleted'.


This program will run fastest when using a one for one merge as in the example and both the primary
database and the secondary database have been pre-sorted on the common key field.
If however the primary file key is the city and the secondary file contains a list of cities and
the county code for each city, then it is very possible that there will be many more records in the primary
database than in the secondary database.
The time of execution, even with sorting, is likley to take much more time if the two databases are large.


.LM 10
.NF
4.12.0
REPORT EDITOR
(RPEDMAN)
.FI
.LM 55
To write a report in DATAMAN this program is run to set up the report format.
Because most reports are used more than once, a file containing the report format is created.
This report format or '.FOR' file is used by the 'RPWDMAN' program to actually print the report.


The editor prompts for the file to be printed then leads the operator thru a series of decisions as to what data is to be printed
in the report.
The report editor supports horizontal reports for both 80 and 132 column printers.
The user has control over page headings, column headings, and statistical information.
The report editor uses information in the database '.SPC' file to help format the report.
When the user is satisfied with the format, the file name for the '.FOR' is given.


.LM 10
.NF
4.13.0
REPORT WRITER
(RPWDMAN)
.FI
.LM 55
This program loads format files created by the report editor and either prints the report or dumps it to disk for later printing.
Two lines of page headings are defined when running the report editor and a third line can be added
when running the report writer.


.LM 10
.NF
4.14.0
LABLE PRINTER
(LABDMAN)
.FI
.LM 55
This program prints lables on standard size address lables.
It supports multiple fields on a line so that city, state, and zip code can be put on one line.
The program has three print drivers for three different lable sets.
As delivered, two of the three drivers are supplied.
Adding or changing a print driver is very easy.
This program module will print at time of execution or it will dump the lables to disk for later printing.


.lm 10
.nf
4.15.0
STATISTICS PACKAGE #1
(STATDMAN)
.FI
.LM 55
This program module allows the user to do statistical analysis on any one database field.
The database must be pre-sorted by 'STDMAN' before program execution.
The program supplies up to 25 different statistical values.
The results can be listed on the system terminal/CRT or printer.
.PG
.LM 10
.NF
4.16.0
TEXT PROCESSOR
DATA TRANSLATOR
(PRDMAN)
.FI
.LM 55
This program is a combination editor/translator which links DATAMAN data to the form that is accepted by
the TSC Text Processor.
The program promps for the number of PR data lines and the DATAMAN field for each line.
The program allows using a field more than once in a PR file.
The standard field delimiter, '>', and the '>>' as the EOR code are supported.


I use this program in conjunction with the Marketing System database to print personalized letters.
This program can also be used in conjunction with the Text Processor for report writing, invoice printing,
or any other kind of form printing that would not be possible with the report printing programs.


.LM 10
.NF
4.17.0
DATABASE DIRECTORY
(DRDMAN)
.FI
.LM 55
This program module uses the FLEX 'CAT' utility to list DATAMAN database files, format files, output files, etc.


.LM 10
.NF
4.18.0
OTHER INFORMATION
.FI
.LM 55
The structure of DATAMAN allows the operator to deal with one set of decisions at one time which
allows the user to check the results of his actions by using the 'Dump' program.
This can keep problems from being found after a long and complex prompting session, inherent in some
data management systems.
If there are operations that must be done to DATAMAN files on a regular basis, the JOB CONTROL PROGRAM or 'JCP'
sold by FRANK HOGG
.NF
LABORATORY, INC. can be used to automate procedures.
