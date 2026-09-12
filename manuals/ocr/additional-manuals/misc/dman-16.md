# DMAN-16

> Source: `manuals/misc/MANVOL3 - FLEX Software Archive - Manual and Documentation Archive - Includes BACK, DMAN-08, DMAN-10.zip!MANVOL3.DSK!DMAN-16.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NR X 16
.NF
.LM05
.DB
16.0.0
.DB
'SRFDMAN'
.DB
DELETE/SELECT RECORDS
.FI
.LM55
.SP3
This program will set the 'RECORD CODE' flag according to the instructions given the program.
It's logic can be 'AND' or 'OR' and can be re-entered for multiple logic searches.
The 'RECORD CODE' flag set by this program is used by other DATAMAN programs to control data flow.
.sp2
.lm10
.nf
16.1.0
PROGRAM OPPERATION
.LM55
.FI
The program uses the standard database input for the 'NAME', 'PASSWORD', and 'DRIVE' for the database being flaged.
After the 'FILE HISTORY' has been listed, the user inputs the 'WORK DRIVE' number for the work file.
This file will be the same size as the '.DAT' file of the target database.
.sp
The 'RECORD CODE' conditions are set for this program.
Usualy, the user will want to act on the 'COMPLETE' database.
But if a user has run this program before and has set the 'RECORD CODE' flag to 'DELETED'
for any record meeting the main logic set, the user can re-run the program and deal with these 'DELETED' records only or the
'SELECTED' records that did not meet the main logic by setting this input flag screen.
.sp
The user next sets the action taken by the program to the 'RECORD CODE' flag.
First the logic type is set.
'AND' logic means that
.ul
all
conditions set in the main logic section must be satisfied or 'TRUE' for the 'RECORD CODE' flag
to be set.
'OR' logic will set the 'RECORD CODE' flag if any of the conditions set are satisfied or true.
The next prompt deals with how the 'RECORD CODE' will be set if the above logic conditions are set.
A record can either be set to 'SELECTED' or 'DELETED'.
I find that setting 'TRUE' records to 'SELECTED' is less confusing when running other DATAMAN programs.
The 'NUMBER' of conditions is now set for the main logic section.
Up to four conditions can be set.
.sp2
.lm22
.nf
16.1.1
MAIN LOGIC
SECTION
.FI
.LM55
For each of the logic 'CONDITIONS' set, the program first lists the fields of the database.
The user then inputs the 'FIELD NUMBER' for the logic test.
An example of this action starts on page 7-45.
If the user picks a field that is 'TYPE 1' or alpha data, two possible logic conditions are given.
The user then chooses the one which he wants to use.
For alpha data fields, the user can make the condition 'TRUE' if the data in each record matches the data given for comparison
(choice \#1) or 'TRUE' if the data does not match the data given for comparison (choice \#2).
.sp
Page 7-46 gives an example of the set up for a 'TYPE' '2' or '3' data field.
These are the conditions possible to set for numeric searches.
Number '3' allows the user to choose a range for data to be 'TRUE'.
This can be very usefull when dealing with Zip Codes.
.sp
In the example, the logic was set for 'OR' logic and any record that had data that met either or both the two
logic conditions set, the 'RECORD CODE' flag would be set to 'DELETED'.
.sp2
.nf
.LM22
16.1.2
COMMON
ERRORS
.LM55
.FI
There are some common errors made when using this program.
First, it should be noted that if you chose only 1 'CONDITION TO SET', it dosn't matter if you use 'AND' or 'OR' logic.
The results will be the same for either.
.sp
One problem crops up when the user is in the 'AND' logic mode.
If you have choosen 2 conditions to set in 'AND' logic and you choose the same data field for both conditions,
.ul
the 'RECORD CODE' flag will never be set.
Remember that 'AND' logic means that all conditions must be 'TRUE' for the 'RECORD CODE' flag to be set.
Another problem seems to be the use of negative logic.
When you choose a condition to be 'NOT EQUAL TO' some data, be very careful.
Many times the results are not what you wanted.
.sp
When dealing with multiple 'AND' and 'OR' logic searches, you must do the 'AND' conditions together.
For instance let's say you have a the database in the example used on page 7-45.
You want records to be 'SELECTED' if the 'ZIP CODE' is between 52110-52119
.ul
'AND'
the 'ASKING PRICE' is more than 12000.00
.ul
'OR'
the 'ZIP CODE' is 52112
.ul
'AND'
the 'ASKING PRICE' is less than 14000.00.
To run this through the program, you would first run the first 2 'AND' conditions.
You would set the 'RECORD CODE' to 'SELECTED' if 'TRUE'.
Now once you have run this, your database would have any records which met the first 2 'AND' conditions set to 'SELECTED'.
Next, you would run the program again, screening the records used in the program to 'ONLY DELETED' ones.
You would then set the last 2 'AND' conditions for 'SELECTED' if 'TRUE'.
When done, the database would contain records flaged 'SELECTED' for any record that met either of these two
sets of 'AND' logic conditions.
The point of this example is that you always run the 'AND' logic together and the 'OR' logic takes care
of itself by multiple program runs.
.sp
You should use the 'DUMP' (DPDMAN) program module to check the action of this program.
If you have problems with getting the answeres you are looking for, try building a 'logic table' to check the action
desired.
.sp2
.nf
.lm10
16.2.0
PROGRAM CODE
.LM55
.FI
This type of program can be very confusing to a programer who is not well versed in logic.
One small change in the program which seems to work, might very well not work for all possible logic cases.
The use of a 'logic table' can be very helpful.
.sp
The 'WORK DRIVE' is set up in lines 1195 to 1245 ant the master conditions are set up in lines
1255 to 1335.
The 'MAIN LOGIC' is set-up in lines 1345 to 1405.
.sp
If the data is alpha, lines 1415 to 1505 is used to set the actual conditions and input of comparison data.
For numeric and money data, lines 1515 to 1640 is used.
This comlete 'MAIN LOGIC' set-up is in a 'FOR/NEXT' loop starting at line 1355.
This loop is set by the variable 'CN' which is defined in line 1325.
.sp
fter all the 'CN' conditions are set, the actual sata from the '.DAT' database file is loaded and checked
in lines 1650 to 1715.
The 'TYPE' 1 conditions are checked in lines 1725 to 1760 and 'TYPE' 2 and 3 data are
checked in lines 1770 to 1950.
.sp
The 'TEMP.SCR' file is writen in lines 1960 to 2045.
This section decides on the 'RECORD CODE' flag to be used for each record
depending on the flag's 'TRUE' set-up ('Q7'), the 'AND/OR' conditions ('Q4'), and the
program condition flags and counter ('W', 'NF', and 'NW').
.sp2
.lm22
.nf
16.2.1
PROGRAM
CHANGES
.LM55
.FI
There are a number of changes that can be made to this program.
First, the number of conditions is set a a maximum of '4'.
This can be increased if desired by changing the code in lines 1325 to 1335.
The 'DIM' statements in line 1035 will also have to be changed.
.sp
One might also desire to use data in a database field as the comparison string rather than input from the user as in lines 1480,
1610, and 1630.
An example of this would be if you had a database with the fields 'PARTS ON HAND' and 'MIN NUMBER FOR REORDER'.
If you could use a data field as a comparison value, you could set up a logic search that would 'DELETE'
records that had the 'PARTS ON HAND' less than the 'MIN NUMBER FOR REORDER'.
The trick to this change would be to set the varialble 'CS$(X)' equal to the value
of the data field desired in each record in the section between lines 1650 to 1715.
.sp
One more thing to keep in mind.
Remember that the maximum precision of BASIC is about 16 digits and numeric and money data will not always
be compared with the correct results if over 15 digits are used in a data field.
I don't see this as a problem as I have never seen a numeric field longer than 15 digits long and a money field would have to be about
$1,000,000,000,000.00 to cause problems.
.pg
.sp
.lm10
.nf
16.3.0
VARIABLES USED
.FI
.LM55
