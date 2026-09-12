# DMAN-20

> Source: `manuals/misc/MANVOL3 - FLEX Software Archive - Manual and Documentation Archive - Includes BACK, DMAN-08, DMAN-10.zip!MANVOL3.DSK!DMAN-20.TXT`  
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
LABLE PRINTER
.FI
.LM 55
.SP3
This program will print standard 5 line lables from data in a database.
The program has three 'LABLE DRIVERS' which allow the use of three different lable sets to be available for use.
Because lables are used primarily for address lables, the fifth line of a lable can include the 'CITY',
'STATE', and 'ZIP CODE' on this one line if desired.
This program can be used, of course, for any kind of lable printing from price lables to bin tags.
.sp2
.lm10
.nf
20.1.0
PROGRAM OPPERATION
.FI
.LM 55
The 'NAME', 'PASSWORD', and 'DRIVE' of the database to be used to make the lables is first inputed.
After the 'FILE HISTORY' is listed, the fields of the database are given.
The user then defines which field is to be used for which line on the lables.
If a blank line is desired, a '0' is inputed for the 'FIELD NUMBER'.
The user can also define the last of fifth line of each lable to include three fields of a database for 'CITY', 'STATE', and
'ZIP CODE'.
Commas are automatically inserted on the fifth line of the lable if this option has been selected.
.sp
One should be carefull that the lenth of the field data used for a line of a lable is not longer than what the
lable hes is using will hold.
This is not checked by the program and it is up to the user to check for.
More on this latter.
.sp
The user is next given the choice of 'EXITing' the program, starting the program over again, or he may 'CONTINUE'.
If the user chooses to go on, the program prompts for the 'LABLE DRIVER' to be used to print the lables.
There are many different kinds of lables availabe for use.
The program assumes that lable of the size to hold 5 lines of data is used.
This is the 15/16" by 3" to 4" variety.
Two 'DRIVERS' are already defined and one is empty.
Information on changing these drivers is given latter.
.sp
The first driver is set up for lables that are 2 accross and on a 9 1/2" carrier.
This is the type used for 'fixed platen' printers like the Centronics 730/737 and others.
The second dirver is for copy machine lables.
This is a very inexpensive and fast way of making lables if you have access to a copy machine.
Avery and other supply companies make paper for copy machines that are realy lables.
These lables are put in the copy machine instead of copy paper.
This driver will print out lables that are three accross that will fit most of these copy machine lables.
The user prints the lables on standard computer paper, then puts the printout on the copy machine and
the lables are printed by the copy machine.
Not only are copy machine lables ususaly much cheaper than computer lables, but the user can make more than
one copy of each lable sheet faster than a micro-computer printer can print them!
The third driver is blank and the procedure for adding this driver as well as changing the first two are
given latter.
.sp
The user is now given the choice of printing the lables 'NOW' or dumping them to a '.OUT' file for latter or
off-line printing.
If the user chooses to dump the lables to disk, the file 'NAME' and 'DRIVE' number for this '.OUT' file is
prompted for.
.sp
The 'RECORD CODE' for output is now prompted for and the computer prints the lables.
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
As delevered, the program is set up for the ability to print lables up to 4 accross.
This can be increased if desired.
In lines 1055 and 2060 are 'DIM' statements.
By changing the '4' to the number of lables accross desired in these 'DIM' statements the programer can
accomidate any number of lables providing you don't run out of core memory.
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
To change a driver, the programer must first change the menu for the driver being changed.
Next one must change the actual driver.
Three things must be included in the driver.
First, the variable 'E' must be set equal to the number of lables accross.
Look at the first driver on line 1525 as an example.
This driver is for two lables accross.
Second, the 'TAB' variables ('TB(1 to E)') must be set, one for each lable position defined by 'E'.
In the example, two tab possitions are defined.
One at column 6 and the second one at column 42.
The third thing to be incuded in the driver is a 'GOTO 1570' which
.ul
must be the last statement in the driver.
.sp2
.lm22
.nf
20.2.2
PRINTING
LABLES
.FI
.LM 55
In lines 1795 to 1830 a complete row of raw lable data is inputed from the database '.DAT' file.
Line 1805 includes a routine to change any blank alpha data ('NA') to a blank line ('" "').
You will note that
.ul
anytime
a blank line is to be printed, a space is outputed with a 'PRINT' statement and not just a 'PRINT'.
This is because some versions of XBASIC have problems writting a blank line to a disk file.
The remainder of the code checks the 'RECORD CODE' set-up.
.sp
Lines 1840 to 1910 make up the actual guts of the program.
Lines 1850 to 1865 congegate the fifth line of the lable if the flag 'F2' has been set to '1' in line 1350.
The lables are printed in lines 1870 to 1895.
This code also puts a blank line between each lable set which is standard on all lables I have seen of the
15/16" variety.
.sp
The 'ERROR' traps at lines 1940 to 1950 are also inportant to the lable printing process.
They set the flags if all raw lable data has been inputed, but a complete row of lable data has not yet been
printed.
.sp
I have not had problems with blank lines of data being written to disk inside a lable.
If you do, try adding the following line of code.
.sp2
.lm45
.nf
1878	IF U(X\%)=0 THEN R$(Y\%,U(X\%))="	"
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
