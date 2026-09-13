# DMAN-27

> Source: `misc/uncategorized/FULL - FLEX Software Archive - Program and Support Utilities - Includes DMAN-09, MACRO, DMAN-18.zip!FULL.DSK!DMAN-27.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NR X 27
.NF
.LM05
.DB
27.0.0
.DB
'SUBSDMAN'
.DB
DATAMAN SHELL
.FI
.LM55
.SP3
If you plan to write any DATAMAN programs yourself, this program 'SHELL' will make it much easier.
It is the same one I used when writing most of the program modules.
It contains the subroutines and most used program code.
To use the program 'SHELL', simply copy the 'SHELL' and rename it, then
add your main program code between lines 3601 and 7099.
Then blow away any unused subroutines and code from the 'SHELL' and renumber the program if desired.
.sp2
.lm10
.nf
27.1.0
PROGRAM CODE
.FI
.LM55
Each routine and subroutine in the program will be discussed in some detail.
The same variables are used in all other DATAMAN programs.
.sp1
The 'ERROR TRAP' routine is used to define the 'ON ERROR' target in line 7500.
The 'SYSTEM.GEN' file is also read at this point.
The subroutine is at line 11500.
This file should always be read into memory before any other program code.
.sp1
In the 'SET-UP' routine, the file 'NAME', 'PASSWORD', and 'DRIVE' number for the database to be worked on is entered.
After the information is entered, the file names are set up at a subroutine at line 8200.
Then the '.SPC' file is read into memory at subroutine line 8600.
The 'PASSWORD' is checked at subroutine 9200 and if it matches, the 'FILE HISTORY' is listed at subroutine line 9500.
.sp1
In the 'WORK DRIVE' routine, the 'DRIVE' number for the work file is entered and opened.
Most DATAMAN programs use a work file for operation.
The work file is called 'TEMP.SCR'.
.sp
The main program code goes in between lines 3601 and 7099.
This should be plenty of space for any application code.
If not, you can re-number the program, or use line numbers after the end of the 'SHELL'.
The rest of the 'SUBSDMAN' 'SHELL' is most of the subroutines you will need to make a working DATAMAN program module.
.sp
The 'ERROR MSGS' subroutine contains the most used error messages.
By keeping all the error messages in one place will keep the length of application programs down.
.sp
The subroutine 'RENAME & CLOSE FILES' is used at the end of a program to substitute the work file of the '.DAT' file.
This	subroutine will work if the work file is on the same drive as the database file.
If it is not, then you will need to make a 'SORT.SRT' file.
See Section 25.1.3 for further information.
.sp
The 'ERROR HANDLING' subroutine is used by the 'ON ERROR' trap at line 1450.
This subroutine contains all the handling of BASIC errors.
'EOF' errors are handled in this subroutine.
.sp
The 'PRINT "-"' subroutine is used as a quick way of printing a string of '-'.
To use, simply set the variable 'SC' to the number of '-' signs you want printed, then 'GOSUB' to this subroutine.
.sp
In the 'SET-UP FILE NAMES' subroutine, the names of the '.SPC' and '.DAT' files are built with the 'NAMEs' and 'DRIVE' numbers
entered in the first of the program.
.sp
The 'OPEN AND READ' subroutine opens both the '.SPC' and '.DAT' files and reads the '.SPC' file.
For more information on the '.SPC' file, see Section 25.1.1.
.sp
In the 'PASSWORD CHECK' subroutine, the name of the password entered in line 2400 is checked against the
password variable 'PS$' in the '.SPC' file.
If they match, the	subroutine 'RETURNs', if not, the program 'CHAINs' the 'MASTER MENU' at 9400.
Line 9400 is the target anytime you want to exit the program back to the 'MASTER MENU'.
.sp
In the 'PRINT FILE INFO' subroutine, the 'FILE HISTORY' is printed out.
The information is from the '.SPC' file.
Any time information is changed, added, or deleted in the '.DAT' file, the old '.SPC' file should be 'KILLed' and a new one written.
.sp
The rest of the	subroutines deal with the 'SYSTEM.GEN' file.
This file is read at lines 11500 to 11800.
Information on the use of these subroutines is given in Section 25.2.1.
.sp
.sp
.nf
.lm10
27.2.0
OTHER INFORMATION
.LM55
.FI
If you have any questions on how to handle a program problem, try looking at a DATAMAN program that does the same thing you want to do
and see how I did it.
You can use the method I used, or you might see how you can do it better.
.SP
This 'SHELL' will make writing program modules usually very easy and will take only a few minutes to complete and debug.
You most likely have a specific job or task you will be putting DATAMAN to work on.
You will find that writing a program module that acts on a specific database is much easier than trying to write a program
that will work with any database.
For instance, let's say you have a database that has the fields 'PRICE EACH', 'QUANTITY ORDERED', 'TAX', and 'TOTAL' all
of which are numeric fields.
Let's say that you enter the data in the field 'QUANTITY ORDER' and 'PRICE EACH'.
Then you write a DATAMAN program that acts on this database which first multiplies the 'QUANTITY ORDERED' by the 'PRICE EACH', then
multiplies the product by a set percentage for the 'TAX' and then adds the value of the 'TAX' and the subtotal and gets the 'TOTAL.
Then the program inserts the values of the 'TAX' and the 'TOTAL' into the database.
This is a very simple example, but this technique can be used in very complicated databases to check data and compute data fields.
.sp
.SP
.lm10
.nf
27.3.0
VARIABLES USED
.PG
.PG
