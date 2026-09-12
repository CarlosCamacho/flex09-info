# DMAN-11

> Source: `manuals/misc/MANVOL3 - FLEX Software Archive - Manual and Documentation Archive - Includes BACK, DMAN-08, DMAN-10.zip!MANVOL3.DSK!DMAN-11.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NR X 11
.NF
.LM 5
.DB
11.0.0
.DB
'DPDMAN'
.DB
DUMP DATABASE
.SP3
.LM 55
.FI
This program outputs a database in a vertical report format.
The program dumps all field lables with the field data in the same format as the database was created.
It also gives the 'RECORD CODE' for each record.
The output of the program can be listed on the 'SYSTEM TERMINAL' the 'SYSTEM PRINTER' or written to a disk for
latter printing.
This program gives a quick an easy way of outputing a database.
.sp2
.lm10
.nf
11.1.0
PROGRAM OPPERATION
.FI
.LM55
After the database 'NAME', 'DRIVE', and 'PASSWORD' is inputed the user
chosses the type of records to be dumped in the 'DUMP SPECIFICATIONS'.
The user then chooses the target of the output.
.sp
If the system 'TERMINAL' is choosen, the user is given the option of having the FLEX 'PAUSE' set.
The output is sent to the terminal in a non-page format.
The user can stop the output at any time by using the 'ESC' key and restart it again by hitting the 'ESC' key again.
.sp
If the user decides to have the dump on the system 'PRINTER', the output is paged with the name of the database, FLEX date, and
page number on the top of each page.
.sp
If the 'DISK' is choosen as the output method, the drive number and name to be given the '.OUT' file is prompted for.
The output is paged in the same manor as with the 'PRINTER' output.
.sp
At the end of the program, the 'MASTER MENU' is 'CHAINed'.
.sp2
.lm 10
.nf
11.2.0
PROGRAM CODE
.FI
.LM 55
This program is realy quite simple with the main action of the program in lines 1420 to 1570.
.sp2
.lm 10
.nf
11.3.0
VARIABLES USED
.FI
.LM 55
