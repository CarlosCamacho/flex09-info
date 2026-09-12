# DMAN-14

> Source: `manuals/misc/MANVOL3 - FLEX Software Archive - Manual and Documentation Archive - Includes BACK, DMAN-08, DMAN-10.zip!MANVOL3.DSK!DMAN-14.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NR X 14
.NF
.LM 05
.DB
14.0.0
.DB
'RPEDMAN'
.DB
REPORT EDITOR
.FI
.LM55
.SP3
This program sets up the format of reports printed by DATAMAN.
The reports can be either 80 or 132 column and are horizontal with
automatic page numbering, headings, and report information on each line.
A final and seperate 'TOTALS' page is used to give grand totals of selected fields.
.sp2
.lm10
.nf
14.1.0
PROGRAM OPPERATION
.FI
.LM55
This program creates a format or '.FOR' file which is used by the 'REPORT WRITER' (RPWDMAN) to print reports.
The program begins by inputing the 'NAME', 'PASSWORD', and 'DRIVE' number of the database file to be used
for the report format.
After the 'FILE HISTORY' is listed, the column 'LENTH' is prompted for.
The reports can be either 80 or 132 columns wide depending, of course, on the printer you are using.
.sp
The next section of the program defines two of the three lines of page 'HEADER' information.
These two lines of information will be printed at the top of each page of the report and can be 'DOUBLE WIDTH' if your
printer supports it.
If a line is not desired, simply type a 'CR' or 'RETURN' instead of data for the line you want blank.
.sp
The 'REPORT LAYOUT' is defined next.
After the fields of the database are listed, the field number for each column is inputed.
See page 7-22 for an example.
Each time a new column is defined, it's position on the report, the width needed, and the width left on the
report is given.
Also a representation of the 'FIELD HEADING' and the space the data will take underneath it is given.
Two spaces are used to seperate the columns from oneanother.
Because the 'FIELD HEADING' is sometimes longer than the data it represents, the 'HEADING' can be changed if desired.
Also any 'TYPE 2' (NUMERIC '\#') or 'TYPE 3' (MONEY '$') data fields can be totaled at the end of the
report if desired.
.sp
When you have defined all the columns for your report, a '0' is entered for the 'FIELD NUMBER'.
Then you can 'CONTINUE', 'EXIT' back to the 'MASTER MENU', or you can start the program all over again.
.sp
The '.FOR' or format file is now defined.
The 'NAME' and 'DRIVE' for the file is prompted for and the file is writen to disk for later use by the 'RPWDMAN' program.
.sp2
.lm10
.nf
14.2.0
PROGRAM CODE
.FI
.LM55
The main code for this program is located at line 1205 to 1875.
The report width and page headings are at line 1205 to 1365.
The fields are printed by lines 1375 to 1445.
The actual report is formated in lines 1455 to 1640.
The lenth of the 'HEADING' is figured in line 1505 and is compared with the maximum lenth of the data for that
field in line 1515.
The lenth used for the 'WIDTH' is 2 spaces longer than the longer of the data of heading.
If the field is a 'TYPE 3' or money data, the data lenth is figured in lines 2275 to 2305.
This is because a '$' sign and commas and a space for a '-' sign will be added when printing this data.
The information is printed and line 1560 gives the user the chance to change the 'HEADING' if desired.
.ul
No
check is made to make sure that the user has not gone over the 80 or 132 column width, so reports longer than the
maximum width are possible.
This could be changed if desired by checking the variable 'L6' and printing an error message after line 1525
for instance.
.sp
.SP
.LM22
.NF
14.2.1
THE '.FOR'
FILE
.LM55
.FI
The '.FOR' file is writen to disk in lines 1795 to 1875.
The file format is as follows...
.sp1
.lm 65
.nf
PT,LL
H1$
H1
H2$
H2
F$,CL
TB(X),C$(X),FL(X),TL(X),TP(X)
.SP
PT = NOT DEFINED
LL = REPORT WIDTH
H1$ = LINE \#1 HEADING
H1 = LINE \#1 PRINT MODE
H2$ = LINE \#2 HEADING
H2 = LINE \#2 PRINT MODE
F$ = DATABASE NAME
CL = NUMBER OF COLUMNS
.SP
FOR X = 1 TO CL
TB(X) = TAB FOR COLUMN
C$(X) = HEADING NAME
FL(X) = FIELD TARGET
TL(X) = TOTAL FLAG
TP(X) = DATA TYPE FLAG
.SP
.LM 55
.FI
The variable 'PT' has been left as 'user definable' and was included ifa programer decides to add another program
that creates a '.FOR' file that is used for another purpose.
This variable could be used as a flag to tell the program which '.FOR' file it is.
It could also be used for a 'PRINT PASSWORD' to keep unauthorized users from using the '.FOR' file to print reports.
.pg
.sp
.lm10
.nf
14.3.0
VARIABLES USED
.LM55
.FI
