# DMAN-20

> Source: `apps/dataman/DMANMAN2 - DataMan Database - Documentation and Examples.zip!DMANMAN2.DSK!DMAN-20.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NR X 20
.NF
.LM 05
.DB
20.0.0
.DB
'LABDMAN'
.DB
LABEL PRINTER
.FI
.LM 55
.SP3
This program will print standard 5 line labels from data in a database.
The program has three 'LABEL DRIVERS' which allow the use of three different label sets to be availabel for use.
Because labels are used primarily for address labels, the fifth line of a label can include the 'CITY',
'STATE', and 'ZIP CODE' on this one line if desired.
This program can be used, of course, for any kind of label printing from price labels to bin tags.
.sp2
.lm10
.nf
20.1.0
PROGRAM OPERATION
.FI
.LM 55
The 'NAME', 'PASSWORD', and 'DRIVE' of the database to be used to make the labels are first entered.
After the 'FILE HISTORY' is listed, the fields of the database are given.
The user then defines which field is to be used for which line on the labels.
If a blank line is desired, a '0' is entered for the 'FIELD NUMBER'.
The user can also define the last of fifth line of each label to include three fields of a database for 'CITY', 'STATE', and
'ZIP CODE'.
Commas are automatically inserted on the fifth line of the label if this option has been selected.
.sp
One should be careful that the length of the field data used for a line of a label is not longer than what the
label he is using will hold.
This is not checked by the program and it is up to the user to check.
More on this later.
.sp
The user is next given the choice of 'EXITing' the program, starting the program over again, or he may 'CONTINUE'.
If the user chooses to go on, the program prompts for the 'LABEL DRIVER' to be used to print the labels.
There are many different kinds of labels availabe for use.
The program assumes that label of the size to hold 5 lines of data is used.
This is the 15/16" by 3" to 4" variety.
Two 'DRIVERS' are already defined and one is empty.
Information on changing these drivers is given later.
.sp
The first driver is set up for labels that are 2 across and on a 9 1/2" carrier.
This is the type used for 'fixed platen' printers like the Centronics 730/737 and others.
The second dirver is for copy machine labels.
This is a very inexpensive and fast way of making labels if you have access to a copy machine.
Avery and other supply companies make paper for copy machines that are really labels.
These labels are put in the copy machine instead of copy paper.
This driver will print out labels that are three across that will fit most of these copy machine labels.
The user prints the labels on standard computer paper, then puts the printout on the copy machine and
the labels are printed by the copy machine.
Not only are copy machine labels usually much cheaper than computer labels, but the user can make more than
one copy of each label sheet faster than a micro-computer printer can print them!
The third driver is blank and the procedure for adding this driver as well as changing the first two are
given later.
.sp
The user is now given the choice of printing the labels 'NOW' or dumping them to an '.OUT' file for later or
off-line printing.
If the user chooses to dump the labels to disk, the file 'NAME' and 'DRIVE' number for this '.OUT' file is
prompted for.
.sp
The 'RECORD CODE' for output is now prompted for and the computer prints the labels.
.sp2
.lm10
.nf
20.2.0
PROGRAM CODE
.FI
.LM55
This program uses the same structure as most other DATAMAN program modules.
The code is a little more complex in this programs actual working code.
.sp
As delivered, the program is set up for the ability to print labels up to 4 across.
This can be increased if desired.
In lines 1055 and 2060 are 'DIM' statements.
By changing the '4' to the number of labels across desired in these 'DIM' statements the programmer can
accomodate any number of labels providing you don't run out of core memory.
.sp2
.nf
.lm22
20.2.1
CHANGING
DRIVERS
.FI
.LM 55
Changing the print drivers is quite easy.
The three drivers are located at lines 1515, 1535, and 1555.
The menu for the drivers is located at lines 1445 to 1490.
.sp
To change a driver, the programmer must first change the menu for the driver being changed.
Next one must change the actual driver.
Three things must be included in the driver.
First, the variable 'E' must be set equal to the number of labels across.
Look at the first driver on line 1525 as an example.
This driver is for two labels across.
Second, the 'TAB' variables ('TB(1 to E)') must be set, one for each label position defined by 'E'.
In the example, two tab positions are defined.
One at column 6 and the second one at column 42.
The third thing to be included in the driver is a 'GOTO 1570' which
.ul
must be the last statement in the driver.
.sp2
.lm22
.nf
20.2.2
PRINTING
LABELS
.FI
.LM 55
In lines 1795 to 1830 a complete row of raw label data is entered from the database '.DAT' file.
Line 1805 includes a routine to change any blank alpha data ('NA') to a blank line ('" "').
You will note that
.ul
anytime
a blank line is to be printed, a space is output with a 'PRINT' statement and not just a 'PRINT'.
This is because some versions of XBASIC have problems writing a blank line to a disk file.
The remainder of the code checks the 'RECORD CODE' set-up.
.sp
Lines 1840 to 1910 make up the actual guts of the program.
Lines 1850 to 1865 concatenate the fifth line of the label if the flag 'F2' has been set to '1' in line 1350.
The labels are printed in lines 1870 to 1895.
This code also puts a blank line between each label set which is standard on all labels I have seen of the
15/16" variety.
.sp
The 'ERROR' traps at lines 1940 to 1950 are also important to the label printing process.
They set the flags if all raw label data has been entered, but a complete row of label data has not yet been
printed.
.sp
I have not had problems with blank lines of data being written to disk inside a label.
If you do, try adding the following line of code.
.sp2
.lm45
.nf
1878	IF U(X\%)=0 THEN R$(Y\%,U(X\%))="	"
.LM55
.FI
.SP2
This should take care of the problem.
.SP2
.LM10
.NF
20.3.0
VARIABLES USED
.FI
.LM 55
.PG
.PG
