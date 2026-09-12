# DMAN-09

> Source: `manuals/misc/MANVOL3 - FLEX Software Archive - Manual and Documentation Archive - Includes BACK, DMAN-08, DMAN-10.zip!MANVOL3.DSK!DMAN-09.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NR X 9
.NF
.LM 5
.DB
9.0.0
.DB
'BSDMAN'
.DB
CREATE NEW DATABASE
.SP3
.LM 55
.FI
This program module will create a new database either from scratch or using an exsisting database as a model.
The program creates the '.SPC' file containing information about the database and it's fields and the '.DAT' file
which contains the actual database data.
.sp2
.lm 10
.nf
9.1.0
PROGRAM OPPERATION
.FI
.LM 55
After the 'ERROR' trap has been defined, the 'SYSTEM.GEN' file has been loaded and the screen headers have been
written, the 'CREATION OPTIONS' are listed.
The first choice is the defalt.
It can be chosen with a 'CR' without inputing the choice number.
With the defalt choice, the user creates a new database from scratch.
.sp
The user first defines the disk drive for the database.
In a two drive system, this is usualy drive 1.
It can be drive '0' if there is room on the DATAMAN system disk, but this is not recomended.
The user can, of course, take out the system disk and replace it with a formated disk to put the database on.
If the user has done this the DATAMAN system disk will not be ready when the program module is done.
.sp
Using up to 8 characters, which conform to FLEX file name specifications, the user inputs the database file name.
Then the password to protect the database is given.
The password must be at least one character and not more than 10 chatacters long.
The password can contain any printable characters not including leading blanks.
The password is used to 'open' a database by other DATAMAN programs before any information can be gotten out of the database.
.sp
The 'FILE DESCRIPTION' is then prompted for.
This description allows the user up to 50 characters to describe the database.
.sp2
.LM22
.NF
9.1.1
DATABASE
FIELDS
.FI
.LM 55
At this point the number of fields in the database are prompted for.
The maximimum number of fields allowed in a database is a function of the amount of program memory installed in your
computer.
.sp
For each field, the field name, maximum characters of data, and the data type is inputed.
The field name can be of any lenth up to BASIC's input buffer limit, but should be kept under 29 characters
if at all possible.
This is because tables used to list field names in other DATAMAN programs are set up for field names under 30 characters long.
.PG
The maximum number of characters allowed in any data field is 126 characters.
This information is used when building reports in the 'RPEDMAN' program.
To figure the maximum number of characters to use for data is easy.
For Alpha data, simply count the maximum number of characters and spaces needed.
For Numeric data, determine the largest number to be used and count the number of characters (no commas allowed).
Add a space for a decimal point if used.
If negitive numbers are possible, add one more space for the minus sign.
For Money data, determine the maximum amount of money to be used as data.
Count the number of digits and add one to this number.
Add one space for the decimal point and one space for the minus sign (even
if no negitive money figures are to be used).
.sp2
.NF
.LM 22
9.1.2
DATA FIELD
TYPES
.FI
.LM 55
The 'TYPE' of data is then inputed.
There is type '1' or Alpha which can contain any printable characters except a comma.
The type '2' or numeric can contain only numbers and a '+' or '-' sign, or a decimal point.
The type '3' or money, has the same limits as the numeric or type '2'.
.sp
Here are some examples to illustrate the above points...
.SP18
Example number 3 above, looks like a Type '2' because it is a number represented in scientific notation, but the 'E' and the '-'
embeded in the number make it a Type '1'.
To make this example a Type '2' you would have to write it as '.00132'.
The '$' sign in example 4 is used to show that the number represents a money amount but the '$' sign is not used as part of the
input.
If it were, the example would be a Type '1'.
Examples 5 and 6 are both dates, but because of the '/' in example 5, it is a Type '1'.
.PG
.SP
.lm 22
.nf
9.1.3
EXSISTING DATABASE
MODEL
.LM 55
.FI
If option number '2' is chosen when in the 'CREATION OPTIONS' section, the name, drive number, and password
of the database to be used as a model in inputed.
The new name, drive number, password, and file description is then given for the new database.
The new database now has the same number of fields, the same field lables, data types, and data lenths as the database used as the
model.
.sp2
.lm 22
.nf
9.1.4
BUILD PROGRAM
MENU
.FI
.LM 55
This menu allows the user to look at the new database fields by choosing the 'SUMMATION'.
The menu also allows the user to enter the 'EDITOR'.
One can also 'STOP', which returns the user back to the main DATAMAN 'MASTER MENU'.
If you 'CONTINUE', you enter the data input section.
.sp2
.lm 22
.nf
9.1.5
FIELD EDITOR
.LM 55
.FI
The field editor allows the user to edit any one of the 'FIELD LABLES', 'TYPE', or 'LENTH' of data, but does not allow the
changing the number of fields in the database.
This editing can be done both on new databases built from 'scratch' or new databases built from a 'model' database.
It is important to note that if you have built a new database from a 'model' database, you might not want to
change any field information.
This is because if you do change any field information, you
.ul
will not
be able to use the 'PACKDMAN' program module to merge data between the new database and the old 'model' database.
Also, if you use the 'EDITOR' to change the order of any fields, any 'FORMAT' files written by the 'RPWDMAN' program
.ul
will not
work properly with the new database even though both the old 'model' and the new database have the same fields.
.sp2
.lm22
.nf
9.1.6
DATE/TIME
INPUT
.LM 55
.FI
The time and date is now inputed.
This will be the time and date of 'FILE CREATION'.
This information will also be used as the 'LAST EDIT' time and date untill the database is edited by a DATAMAN program
module.
.sp2
.lm 22
.nf
9.1.7
DATA ENTRY
.FI
.LM 55
When building a new database, at least one record must be inputed so the '.DAT' file can be built.
Up to this point, the '.SPC' file information has been prompted for.
.sp
For each 'FIELD LABLE', the data is now inputed.
A series of 'TYPE' prompts are printed equal to the maximum number of characters allowed in the field.
If the 'TYPE' is a '1' or alpha, a '@' is used to tell the user the type of data expected.
Any printable characters are permited to be used in alpha data.
.sp
If the data expected is a 'TYPE' '2' or numeric, a '\#' sign is used.
Any number '0' through '9', a decimal point, or a '-' sign can be used in numeric data.
If negative data is to be inputed, the '-' sign needs to precede the data.
.sp
Money data uses a '$' sign as the prompt.
This 'TYPE' expects the same data as the 'TYPE' '2' or numeric.
.ul
Do not
use a '$' sign as part of the data!
The dollar sign and any commas will automaticaly be inserted when reports are printed by the 'RPWDMAN' program.
.sp
Data input is checked to make sure that no commas are used and that data does not excede the maximum characters defined
for the field data being inputed.
There is no error checking done at this time for alpha charaters insereted in numeric or money fields.
This error checking is done in the 'VERIFY DATABASE' program module.
.sp
There are times when no data is to be inputed for a field in a record.
DATAMAN allows empty fields by simply hitting a 'CR' without any data.
Data
.ul
will be
entered into the database field however.
If the empty field is a 'TYPE' '1' or alpha, a 'NA' will be automaticaly inserted into the data field by DATAMAN.
If the empty field is a 'TYPE' '2', a '0' will be inserted.
A 'TYPE' '3' or money field will cause a '.00' to be entered for a blank or empty input.
Also if the data is a 'TYPE' '3', and say a '123' is entered, a '123.00' will be automatically entered into the file.
If in the above example, the maximum number of characters allowed were 4, an overflow error would occur.
This is because 6 character spaces are needed for '123.00'.
.sp
If an error is made when inputing data before the 'CR' is hit, use the backspace character defined ('CTRL H').
If an error is made and you catch it after the 'CR' has been hit and you are ready to input the next field data,
simply hit a 'CTRL C' and you will back up to the last field of data.
You can't back up into a previous record, only within the record you are presently working.
When you have inputed all the data fields in a record, you will be given the chance to edit the last field.
If you wish to continue to the next record, simply hit a 'RETURN' or 'CR'.
.sp
Any time you type 'STOP' for a data field (usually the first field of a record) all data input will stop and you will return to the
DATAMAN 'MASTER MENU'.
Only complete records are saved to the disk, so if you use the 'STOP' in any data field other than the first field
of a record, any data inputed to that record will of course be lost.
.PG
.SP
.LM 10
.NF
9.2.0
PROGRAM CODE
.FI
.LM 55
This program is rather straight forward and the listing is documented well enough to make it easy to follow.
There are, however, a few items worth mentioning.
.sp
The first part of the program is a little different from other DATAMAN programs, in part to the fact that the
program creates a database while most of the other program modules act on exsisting databases.
The section starting at line 1060, 'OLD/NEW DATABASE', uses the same input lines for both 'CREATION' options.
This is done by using the file drive set-up, name, and password as one subroutine and the file description as another.
.sp
You will note that the maximum number of characters in field data is limited to 126 characters instead of the 127 characters
allowed by BASIC.
An example of this is in line 1320.
It was found that under some conditions that BASIC came up with some strange errors when 127 characters were allowed.
.sp
The 'TIME/DATE' routine at line 2015 uses the variable 'QT$'.
This complete routine can be changed to use a hardware time/date card.
You could also use the FLEX/BASIC 'DATE$' for the date, but I found that sometimes it was conveniante to
define the date independent of the FLEX date.
For more information, see section 25.
.sp
There are some items to mention in the 'DATA INPUT' section starting at line 1705.
Quite a little thought went into this section and it is almost identical with the 'FILE APPEND' section of the 'ETDMAN' module
starting at line 1605 through 1780.
If any changes in either one of these sections of these two programs, the change should be made in the other program.
.sp
You will note that the variable 'J$(X)' is used for all 'TYPES' of field data (alpha, numeric, and money).
Because this was done, it is very hard to check for alpha data in a numeric field.
One can convert this string variable to a numeric variable using the 'VAL(J$(X))' statement then checking
if the value is a '0', but this will
not check all data possiblities.
The only sure check I came up with was the one in the program module 'VERYDMAN'.
This works fine, but if the numeric field is over about 16 characters long, the time of the check could be over one second.
This delay was felt to be too long for a data input section where a fast 'key punch' opperator could easly over-run the
program without knowing it.
If you feel that you can come up with a better error check or can live with the slow check speed, then you can insert the
checking code after line 1795.
If you do this, make the same change in the 'ETDMAN' program module and you can forget about using the 'VERYDMAN' program.
.sp
One easy way of getting around this whole problem would be to use a numeric variable like 'J(X)' for numeric and money field data and
'J$(X)' for alpha data and then simply use the 'ERROR TRAP' and BASIC error \#30 to check for the mismatch.
Extended BASIC has the nasty habit of changing any number greater than 6 characters long into 'Scientific Notation'.
A serial number of '12345678' makes little sense as '1.2345678E+7'!
Getting around this is much more trouble than it's worth.
.sp
Durring feedback from test sites, the suggestion was made to allow commas in alpha data.
One could use a comma for a name ('Jones, Tim').
Since an 'INPUT LINE' statement is used at line 1795 and the check for a comma at line 1800 could be skipped
for 'TYPE' 1 data, it seemed like a good suggestion.
This will work.
If you wish to make this change however, you will have to change all the input statements from disk files in
all DATAMAN program modules.
The new input statement would be similar to the one in the 'RPWDMAN' program at line 1170.
Other changes might also be nessecary.
.sp
Before making any changes to the DATAMAN program system, it would be a good idea to first read section 25 on
'CUSTOMIZING DATAMAN'.
.SP2
.lm 10
.nf
9.3.0
VARIABLES USED
.FI
.LM 55
