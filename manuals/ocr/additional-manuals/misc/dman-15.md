# DMAN-15

> Source: `manuals/misc/MANVOL3 - FLEX Software Archive - Manual and Documentation Archive - Includes BACK, DMAN-08, DMAN-10.zip!MANVOL3.DSK!DMAN-15.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NR X 15
.NF
.LM5
.DB
15.0.0
.DB
'RPWDMAN'
.DB
REPORT WRITER
.FI
.LM55
.SP3
This program prints out reports using the format file created by the 'REPORT EDITOR' program.
The user can use the database that was used to create the '.FOR' file, or can use any other database as long as
it has the same fields as the origional.
The program can either print the report or dump the report to disk for later printing.
.sp2
.lm10
.nf
15.1.0
PROGRAM OPPERATION
.LM55
.FI
Before using this program, the user must first create a '.FOR' or format file for the database report desired.
Once this file has been created, it can be used to print out a report.
The 'NAME' and 'DRIVE' of the format file is first inputed.
The program gives the database name the format file was writen for.
The user can then either use this database or request one of another name as long as the databases have
identical field lables in the same order.
The user is then prompted for the 'DRIVE' and 'PASSWORD' of the database.
The 'FILE HISTORY' is then listed.
.sp
The user then chooses if he wishes to print the report now, or dump the report onto disk for later printing.
If he selects to dump to disk, the 'NAME' and 'DRIVE' for the '.OUT' file to hold the report is prompted for.
The 'RECORD CODE' set-up is then defined.
.sp
When making the dormat file, the user defined the top two lines of the report 'HEADING'.
At this time the third line of heading is defined.
The line can be 'DOUBLE WIDTH' if the printer used will support this feature.
.sp
The report is then printed.
Each page of the report includes the three lines of heading, the page number, the database name used for the report data,
and the FLEX date.
The last page of the report has the 'TOTALS' of any fields requested for totaling in the 'REPORT EDITOR'.
A sample output page is shown on page 7-26.
.sp2
.nf
.lm10
15.2.0
PROGRAM CODE
.LM 55
.FI
Since this program only prints reports, it is realy quite simple to follow.
Lines 1145 to 1265 gets the '.FOR' file and reads it.
If an alternate database is used for the report, the name and drive is gotten in line 1275 to 1300.
The database is loaded and the third line of the report heading is defined in line 1310 to 1630.
.sp
The program uses a 'PRINT USING' statement for any 'TYPE 3' or money data field.
The immage data is located at line 1640 to 1665.
Up to 13 digits of money data can be formated.
If more digits are needed, simply add on to the 'DATA' statements at line 1665.
.sp
Lines 1760 to 1855 prints the data on the report.
Line 1835 replaces the 'NA' of blank 'TYPE 1' data fields to a blank line when printing.
The page heading is a subroutine at line 2390.
The summation 'TOTALs' page is at lines 1865 to 1910.
.sp
.sp
.lm22
.nf
15.2.1
EXPANDED
PRINT
.LM55
.FI
Every printer manufacturer seems to have their own idea of what expanded print is and how it is handled.
Once expanded print is set up on a CENTRONICS printer, it is turned off when the printer 'sees' a 'CR'.
On a CENTRONICS printer, the expanded print is set up with one code regardless of what type width it is in.
When in the 80 column mode, the expanded print is 40 columns or 5cpi.
When 132, the expanded print is 66 columns.
Some printers stay in the expanded print mode untill reset with another type size.
DATAMAN code should take care of these conditions.
.sp
The problem arrises when the expanded print is always 40 columns or 5cpi regardless of the print size in use by the printer.
This will cause a problem when the 'HEADER' information size prompt is printed.
In this program it occures at line 1605.
To solve this problem you could change line 1590 to read...
.sp
.nf
.lm45
1590	IF H3=2 THEN I1=40 ELSE I1=LL
.SP
.FI
.LM55
A simular change would be made in the 'RPEDMAN' program.
Line 2550 is a reset routine that could be changed if you need to send a special code to your printer to stop the
elongated print.
.sp2
.lm 10
.nf
15.3.0
VARIABLES USED
.LM55
.FI
