# DMAN-23

> Source: `manuals/misc/MANVOL3 - FLEX Software Archive - Manual and Documentation Archive - Includes BACK, DMAN-08, DMAN-10.zip!MANVOL3.DSK!DMAN-23.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NR X 23
.NF
.LM05
.DB
23.0.0
.db
'STATDMAN'
.DB
STATISTICS \#1
.FI
.LM55
.SP3
This program will give statistical information on any one field of 'TYPE 2' (numeric) or 'TYPE 3' (money) data.
The field to be used must be pre-sorted in assending order, using the 'STDMAN' 'SORT' program, before this program is run.
The information can be listed on the 'SYSTEM PRINTER' or the 'SYSTEM TERMINAL'.
One line of information can be printed on the top of the report if desired.
The report printed is 80 columns wide.
.sp2
.lm10
.nf
23.1.0
PROGRAM OPPERATION
.FI
.LM55
After the database 'NAME', 'PASSWORD', and 'DRIVE' number is inputed, the 'FILE HISTORY' is listed.
The fields of the database are then listed and the field for the statistics is given.
As mentioned before, this field must be of a numeric or money data 'TYPE'.
Also, the field to be used must be pre-sorted in assending order.
If It has not been, the program will not give correct information for some of the report.
Once the data field for use has been defined, the 'RECORD CODE' coditions are promted for.
.sp
The next section has to do with the data in your database.
If the data in your database represents a 'COMPLETE POPULATION' of data you enter a '1'.
If the data is a 'SAMPLE' of the complete population, then you enter a '2'.
If your data is a 'SAMPLE', you then enter the 'SIZE' of the complete population.
This data is used when figuring the 'FINITE POPULATION CORRECTION FACTOR'.
The computer then goes to your database and loads the information needed for the report.
When the database has been loaded, the report printout information is prompted for.
.sp
The report can be listed on the system 'TERMINAL' or the system 'PRINTER'.
One line of 'HEADER' information can also be inputed if desired.
The report is then listed or printed and the 'MASTER MENU' is listed when the report is done.
.sp2
.lm 10
.nf
23.2.0
PROGRAM CODE
.fi
.lm55
This program is not as complicated as it looks at first glance.
After the needed information is inputed in lines 1210 to 1320, the database '.DAT' file is read in lines 1330 to 1375.
This section first reads the first record found that matches the 'RECORD CODE' condition set, and uses it as the 'SMALLEST SAMPLE'
in the database in line 1365.
Line 1370 counts the number of records found, the sum of the data, and the sums of the squares of the data.
When the database has been completely read, it is trapped in line 1890 and the last record found to match
the 'RECORD CODE' is considered the 'LARGEST SAMPLE' of the database.
.sp
Lines 1385 to 1410 are executed when all of the database has been read into the computer.
The calculations done are used in the print-out section.
The next section from lines 1420 to 1525 deal with finding the 'MEDIAN' od the database data.
First it is decided if the number of samples found in the database is odd or even and the number of samples into the database the
'MEDIAN' record is located.
The database is then loaded again to this record and the value of the 'MEDIAN' stored in variable 'A(12)'.
.sp
The output of the program is set-up in lines 1535 to 1595 and the actual report is printed in lines 1605 to 1850.
This section has the majority of the formulas used to find the statistical information.
.sp
The ideas for this program were gotten from a number of different sources.
If you are interested in additional information on other statistical studies possible with a DATAMAN database,
or other programs that can be converted for use with DATAMAN databases,
I can suggest two very good books published by OSBORNE/McGRAW-HILL, 630 Bancroft Way, Berkeley, CA., 94710.
They are
.ul
Some Common Basic Programs
and
.ul
Pratical Basic Programs.
.SP2
.NF
.LM10
23.3.0
VARIABLES USED
.LM55
.FI
