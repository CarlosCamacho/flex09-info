# DMAN-24

> Source: `manuals/misc/MANVOL3 - FLEX Software Archive - Manual and Documentation Archive - Includes BACK, DMAN-08, DMAN-10.zip!MANVOL3.DSK!DMAN-24.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NR X 24
.NF
.LM05
.DB
24.0.0
.DB
'VERYDMAN'
.DB
VERIFY DATABASE
.FI
.LM55
.SP3
This program is used to check that no alpha characters are present in 'TYPE 2' (numeric) or 'TYPE 3' (money) data fields
in a database.
If any records are found to contain errors, the record is flagged 'DELETED'.
At the end of the program, the number of records found to have errors (if any) is given.
.sp2
.nf
.lm10
24.1.0
PROGRAM OPPERATION
.LM55
.FI
This program first gets the database 'NAME', 'PASSWORD', and 'DRIVE' number.
The 'FILE HISTORY' is then listed.
A work file is needed for this program and the drive number is prompted for.
This work file will be of the same size as the database '.DAT' file.
.sp
The program will then give a list of instructions as to what the program does.
Basicaly, the program looks at all 'TYPE 2' and 'TYPE 3' data fields and checks for any alpha charaters except for '+', '-', and '.'
signs.
Any records containing bad data are flagged 'DELETED' in the 'RECORD CODE'.
It is then just a matter of using the 'ETDMAN' program to edit all records that are deleted.
An example of this is given on page 7-11 of Section \#7.
.sp
When the program is done, the number of records containing bad data is given.
The number of errors in a record is not available, so be aware that a 'DELETED' record can contain more than one error.
.sp2
.nf
.lm10
24.2.0
PROGRAM CODE
.LM55
.FI
The main part of the program is the error checking code located in lines 1290 to 1370.
Basically each line of data from a database that is not a 'TYPE 1' (alpha) is checked.
First, the lenth of the data is found and if it is over 15 characters in lenth, it goes to the seperate character
check.
If under 16 characters, the data is subjected to a fast check.
This check is on line 1340.
This line first checks to see if a '0' is returned when converting the data string variable 'J$(X\%)'
to a numeric variable.
A '0' as the data would return a '0' for the conversion, so a second check is made to make sure that when the string
is converted, it is the lenth of a non-convereted string plus 2 (the leading and trailing space of a numeric variable in
BASIC).
Data of '123FG4' would be returned as '123' after conversion by the 'VAL' function and would be found by this line as
having a problem.
.sp
If the data does not pass this test, or if the data string is over 15 characters (the precission of BASIC), then
a character by character check is made in lines 1345 to 1370.
If the data still does not pass the check, the 'RECORD CODE' variable 'J' is set to '2' or 'DELETED'.
.sp
Line 1390 adds the number of 'DELETED' records to be used by the message at the end of the program.
In line 1455 the number of 'DELETED' records (T\%) is used to decide if the work file needs to be substituted for the
database '.DAT' file.
If a database was found to have no errors, there would be no need to flag any of the records so there would be no need
to use the 'TEMP.SCR' work file.
.sp
The error checking code could be made more complex if desired, but this check will find most all data errors.
It will not check to make sure that any '+' or '-' signs are before data and not trailing data, nor does
it check for multiple signs or decimal points in data.
.sp
For more information on the subject of error checking see Section 9.2.0.
.sp2
.lm10
.nf
24.3.0
VARIABLES USED
.LM55
.FI
