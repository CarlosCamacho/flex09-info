# DMAN-25

> Source: `misc/uncategorized/FULL - FLEX Software Archive - Program and Support Utilities - Includes DMAN-09, MACRO, DMAN-18.zip!FULL.DSK!DMAN-25.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NF
.NR X 25
.LM 05
.DB
25.0.0
.DB
CUSTOMIZING DATAMAN
.FI
.LM 55
.SP3
The DATAMAN system can be used to fulfill a number of application needs.
First, DATAMAN can be used as delivered in a database environment.
With very few, if any, changes DATAMAN can be an effective tool in day to day database operation.
Second, DATAMAN can be used in conjunction with user written application programs to enhance DATAMAN operation.
For instance, an 'Invoice Writer' could be written using the DATAMAN 'shell' program 'SUBSDMAN'.
This program might act on a database, with pre-defined fields, to not only print invoices, but also modify the source database.
Third, the DATAMAN system approach can be used to build mini database systems.
Using only the DATAMAN program modules needed, and 'CHAINing' them together, the user can write application programs quickly and easily.
This section will give you the needed information to understand the file structure used in the
DATAMAN system, the system logic, and an overview of the program logic.
With this information, a user can customize the DATAMAN system to the extent he feels necessary.


There is nothing 'sacred' about either the DATAMAN system design or program logic.
Certain decisions were made to keep the system as universal as possible without affecting its straightforward 'punch'.
For instance, if you are going to use DATAMAN with CRT's only, you might want to change the prompts to a different form.
Instead of having the input line below a string of 'type/number' prompts like this...
.nf
.sp
.lm 65
**	INPUT FILE NAME
**	@@@@@@@@
.SI 3
?
.SP
.fi
.lm 55
you could simply backspace after writing the '@@@@@@@@' prompt to the first position.
Remember, if changing a program will make it easier to use in your particular application, it will usually mean fewer operation errors.


One more thing.
Before making any changes to DATAMAN programs, you should ask yourself these questions.
First, if you make hardware changes to your system, will the modified software be able to run on it without a lot
of additional modifications?
Second, will a modification to one DATAMAN program module affect the operation of other modules?
If so, is it worth changing the other modules?


.PG
.LM 10
.NF
25.1.0
DATAMAN FILES
.FI
.LM 55
DATAMAN uses a number of special files to hold data and transfer data between DM program modules.
Understanding these files and how they operate is important if you are doing any modification.
The information in each DATAMAN database is contained in two files.
The files must be on the same physical drive and have the same name.
One has a '.DAT' extension.
This file holds the database data.
The other file has a '.SPC' extension and it contains information about the database,
and a 'Field Label' for each record.


.lm 22
.nf
25.1.1
THE '.SPC' FILE
.FI
.LM 55
This file contains all the information about a DATAMAN database.
It is loaded into a DATAMAN program module
before any information is loaded from the '.DAT' file.
The layout of the '.SPC' file is given below...
.sp
.nf
.lm 65
F6$,FL,D6$,PS$
MS$
FL$(X),L(X),T(X)
.SP1
F6$ = DATE & TIME OF DATABASE CREATION
FL = NUMBER OF FIELDS IN EACH RECORD
D6$ = DATE & TIME OF LAST EDIT OF DATABASE
PS$ = PASSWORD OF DATABASE
MS$ = DATABASE DESCRIPTION
FOR X=1 TO FL
FL$(X) = FIELD LABEL
L(X) = LENGTH OF DATA
T(X) = DATA TYPE
.LM55
.FI
.SP
This information is used by each DATAMAN module and is created initially by the 'BSDMAN' program.
Each time a new database is created this file is either created or copied.


F6$ and D6$ are prompted for by program modules when needed.
It is also possible to use a time/date hardware card like the MICROTME board.
Further information on using a time/date card is given later in this chapter in the section
'USING TIME/DATE HARDWARE'.


The password protects access to a database and is limited to 10 printable characters.
DATAMAN does not code this password in any way.


The database description can be up to 50 characters long.
It is used to keep track of and label databases.


The variable 'FL' is the number of fields in each database minus the Record Flag'.
For each of the records, the variable 'FL$' is the 'Field Label' and can be any length up to 126 characters
but should be kept to under 30 characters.
The length of data variable, 'L(X)', can be any length under 126 characters.
T(X) is the data type and is a '1' (alpha), '2' (numeric), or '3' (money).
The 126 character limit is a function of the BASIC input buffer.


.lm 22
.nf
25.1.2
THE '.DAT' FILE
.FI
.LM 55
This file is a pure data file with a 'Record Code' and data.
Once a DATAMAN module loads the '.SPC' file, checks the password, and prints the 'FILE HISTORY' this file is eventually loaded one
record at a time.
The format of this file is...
.sp
.lm65
.nf
J
J$(X)
.SP1
J = RECORD CODE
FOR X=1 TO FL
J$(X) = FIELD DATA
.FI
.LM 55
.SP
The 'Record Code' variable 'J' can be a '1' if the record is selected or '2' if deleted.
The 'Record Code' is initially set to '1' or 'SELECTED'.


For each of the 'FL' fields, there is a J$(X) data field.
The maximum length of the data field is set by the variable L(X) in the '.SPC' file.
Because this file can be of any length, module programs load the '.DAT' file until the 'END OF FILE' error is trapped.


.LM 22
.nf
25.1.3
THE '1.SORT.SRT' FILE
.fi
.lm 55
This is a special work file which is always put on drive number 1.
During the operation of a DATAMAN program module it is sometimes necessary to use the FLEX utility 'COPY.CMD'.
This program uses memory which is occupied by BASIC.
Unlike the FLEX utility 'TTYSET.CMD' which runs in high memory, 'COPY.CMD' cannot be used with the
BASIC 'EXEC' command.
This is because since the 'COPY.CMD' wipes out BASIC, there is nothing to come back to after the
utility is done.
The addressed target has no BASIC to run!
This is where the 'SORT.SRT' file comes in.


DATAMAN creates this file as a FLEX 'EXEC' file instead of a BASIC 'EXEC' line of code.
As an example, let's look at what a 'SORT.SRT' file looks like when LISTed.
.sp
.lm65
.nf
COPY 2.TEMP.SCR,1.TEST.DAT
DELETE 2.TEMP.SCR
XBASIC 0.DATAMAN.BAC
.FI
.LM 55
.SP
Now after we write this file to drive number 1, we execute this line of code...
.sp
.lm65
.nf
2200	EXEC,"EXEC 1.SORT.SRT"
.FI
.LM55
.SP
What this line does is to use the BASIC 'EXEC' command to execute the FLEX 'EXEC' command on the file '1.SORT.SRT'.


The first 'EXEC' on the line is used to execute the FLEX command.
The return target address, as well as the command itself, is lost when the FLEX 'EXEC' command gets to the
third line of the 'SORT.SRT' which loads BASIC and the DATAMAN menu.


This same technique is used in the DATAMAN sort editor 'STDMAN'.
The file '1.SORT.SRT' contains a 'CSORT' command line.
When this file is executed, the TSC 'CSORT' editor is loaded and the command line is executed.
The last line of the 'SORT.SRT' file contains a command to load BASIC and the DATAMAN menu.
The 'SORT.SRT' file is never deleted.
I keep it for error checking when debugging new DATAMAN programs.
It could easily be deleted by inserting a line in the DATAMAN menu 'Cold Start' area...
.sp
.nf
.lm 65
1090	KILL "1.SORT.SRT"
.FI
.LM 55
.SP
You would also need to add an error trap in case the file did not exist.
.sp
.lm 65
.nf
1665	IF ERR=4 AND ERL=1090 THEN RESUME 1170
.SP
.LM 55
.FI
This technique can be used anytime a machine language program overwrites BASIC.
Try using this trick on any 8080 machine and see how far you get!


.nf
.lm 22
25.1.4
THE 'TEMP.SCR' FILE
.fi
.lm 55
This file is used by a number of DATAMAN programs.
The drive number is always user defined and it is 'DELETED' or 'KILLed' when its no longer needed.
The file contains record data and it's size depends on the program.
This file will be discussed in the program module sections that use it.


.NF
.LM 22
25.1.5
THE '.FOR' FILE
.LM 55
.FI
This is called a 'Format' file and is created by the DATAMAN Report Editor/Writer (RPEDMAN & RPWDMAN).
This file is discussed in the 'RPEDMAN' section.


.nf
.lm 22
25.1.6
THE '.OUT' FILE
.fi
.lm 55
This file extension is for 'OUTPUT' files written by a number of DATAMAN programs.
These files are text files which can be 'LISTed' or 'PRINTed' by FLEX.
.PG
.LM 10
.NF
25.2.0
'SYSTEM.GEN' SYSTEM
ENVIRONMENT FILE
.FI
.LM 55
When DATAMAN was designed, I wanted to make the system compatible with a variety of system terminals and
system printers.
I wanted to use DATAMAN with a CRT at the office and also be able to use a modem at night and use my thermal printer
at home over the phone line.
I also had at the time three printers,
a Centronics 101 which was fast and could print 132 column reports, an old IBM for letters, and a quiet but slow
NCR thermal printer.
I also had an old tube that I was going to get rid of.
I wanted to make sure that I wouldn't have to modify the DATAMAN programs every time I changed terminals or printers.
I designed a simple but effective way of letting the DATAMAN programs know what my complete computer system
'looked like'.
This is done through a file called 'SYSTEM.GEN' which is loaded by each DATAMAN program module.
The file contains information on the system terminal/CRT, the system printer, the number of disk drives active, and
room for additional system information.


I have since gotten rid of most of my old equipment.
I now use a Televideo TVI-920B CRT for my main system terminal and a Centronics 737-1 printer.
I still use a modem with a thermal printer terminal on the phone lines.
I have several of these 'SYSTEM.GEN' files that I load on my DATAMAN system disk depending on the hardware I am using.
The understanding of how this file works and it's potential in an advanced database system is important to anyone
interested in custom program work on
DATAMAN.


The 'SYSTEM.GEN' file is a sequential file containing a 45 variable array 'S(X)' and a 5 string array 'S$(X)'.
Not all DATAMAN programs use all the information contained in this file, but the complete file is
.ul
always
loaded into each DATAMAN program module.
Some of the data in this file is undefined at the present time.


.nf
.lm 22
25.2.1
SYSTEM TERMINAL
CODES
.FI
.LM 55
The majority of this file contains information on the system terminal or CRT.
This file can be set up to run almost any system terminal whether it be a thermal printer terminal or TELETYPE
with no cursor control,
a CRT with limited cursor controls, or a 'smart' CRT with a 'directly addressable' cursor and all sorts of screen displays like
dual intensity, inverse video, etc.


A typical DATAMAN 'screen' is made up of three data 'zones'.
In the upper left hand side of the display is a 'program header'.
This contains the DATAMAN program module name, the version number, and the date of the last revision.
On the upper right hand side of the display is the 'action header'.
This contains information on what is being displayed on the rest of the screen, what general information is being asked for by a
program, or what the computer is doing.
The header information gives the operator a quick way of seeing where he is and what is going on in every DATAMAN program.
The rest of the screen is devoted to input and output information.
This header information stays on the screen the majority of the time.


On system terminals that have no cursor control, the same information is available to the user, but is printed line by line.
The tutor section 7.0.0 was printed on a thermal printer terminal with no cursor controls.


Below is a section of a typical DATAMAN program showing how the code from the 'SYSTEM.GEN' file is used to contol the
cursor on the system terminal/CRT.
.sp31
Program lines 2190, 2195, and 2200 are used to 'home up' the cursor, clear the screen and set up any special screen modes.
The first 12 variables from the 'SYSTEM.GEN' file is used in this area.


Lines 2205, 2210, 2215, and 2220 are used to print the 'program header'.
Line 2225 is used to turn off any special screen modes that were used to set up the header information.


Lines 2250 and 2255 are used to position the cursor in the right hand side of the screen for the 'action header'.
The cursor needs to be on the second or third line from the top of the screen and 44 spaces from the left.
If cursor addressing is available, line 2250 contains the 'X,Y' address code (X=3, Y=44).
In this mode a null (0) is used in line 2255.
If direct addressed control is not used, line 2250 contains a 'home up' followed by three line feeds and line 2255 contains the code
for a space.


Lines 2275 and 2280 are used to position the cursor below the header information (X=7, Y=1).
Terminals with direct addressing use line 2275 for this code and a null is used in line 2280.
For other CRT's a 'home up' is used in line 2275 and the code for a line feed is inserted in 2280.


Lines 2300 and 2305 are used to position the cursor using lines 2275 and 2280 and use the 'erase to end of screen' code in line
2305.
This is used to print information on the bottom of the screen without having to rewrite the header information.


When using a system terminal with no cursor control (like a TELETYPE) or a CRT with a 16 X 64 screen,
.ul
all
the codes used above are nulls.
The same information is printed out, but with no cursor positioning.


.nf
.lm 22
25.2.3
SYSTEM PRINTER
CODES
.FI
.LM 55
Dataman supports the new printers that have the ability to print different character sizes.
While some have many sizes available, DATAMAN only uses 4.
These printers usually use 9 1/2" pin feed paper to print 80 columns at 10 cpi and 132 columns at about 16.7 cpi.
DATAMAN also supports the 'elongated' print of these two type sizes.
This elongated print is twice as wide in each of the two sizes above.
These are the codes which come from the 'SYSTEM.GEN' file and are used in the code below.
.sp19
Line 2325 is used to send code to the printer to turn on the 16.7 cpi or 132 column mode.
Line 2350 is for the 10 cpi or 80 column code.
If you are using a printer that doesn't have these features, then nulls are inserted in these lines.
If your printer can only print one size with 80 columns of data, then you cannot use the 132 column reports of the
REPORT WRITER/EDITOR.
If your printer has only one character size but can use paper wide enough to print 132 columns, then you can use both the
80 and 132 column reports but you will have to remember to change your paper.
DATAMAN was not designed to use printers with less than 80 columns, but it should not be too difficult to modify
programs that use printer output.
I have seen DATAMAN modified to run a TELETYPE with 72 columns, but anyone with a printer with 40 columns or less is
really going to have problems!


The code on line 2375
.ul
starts
elongated or double width print.
The only programs that support this are the REPORT EDITOR/WRITER.
Most printers I have seen turn off this mode when sent a 'CR/LF' and do not support mixed character sizes on one line.
DATAMAN uses these conventions.
There are, however, some printers that stay in the elongated printing mode until it is reset.
DATAMAN also supports these printers (the ones I have seen).
If you have problems with the elongated print not being reset, check section 15 on the 'REPORT WRITER'.


All the codes for both your system terminal/CRT and printer are to be found in their manuals.
There seems to be no industry standards for most of these codes.


.lm22
.nf
25.2.3
DISK DRIVE
NUMBERS
.FI
.LM55
Dataman uses an error checking routine anytime a drive number is asked for.
The routine checks to make sure that the drive number entered existes in your system.
The 'SYSTEM.GEN' file supports code for up to 4 drives.
A sample of how the drive number code is used is given below.
.sp6
The actual drive numbers from the file is compared to that entered.
The data for a two drive system would be '0,1,0,0', a three drive system would be '0,1,2,0', etc.
I don't know of any systems with more than 4 drives.
If there are, I'm sure I'll hear about it and have a bulletin available with ideas on a fix!


.lm 22
.nf
25.2.4
SPARE DATA CODES
.FI
.LM 55
There are presently 7 numeric arrays and all 5 string arrays that are 'user definable'.
These could be used to pass further information to DATAMAN programs about the system environment.
You might need more code to set up your terminal/CRT the way you want it.
You could use one of the strings for a 'message of the day' to be printed on reports.
If you use two print drivers (PRINT.SYS & PRINT1.SYS) you could pass them to your programs and add a prompt to
select which one you want to use.
I am sure you can think of many useful ideas.


While DATAMAN doesn't directly support this concept, here is something to think about.
Since all DATAMAN programs load the 'SYSTEM.GEN' file, you could use this file to pass data between programs.
One easy and useful idea is to input the name, drive number, and password of a database you are going to work on
when you run the menu.
This information is in three of the unused arrays.
If you used this option you could also use one array as a 'flag'.
If it were set, then programs would get the information from the 'SYSTEM.GEN' file.
If the flag was not set, the programs would prompt for the information as usual.
While this example might not work for everyone, the concept is used often by system programmers.


For information on the programs that create the 'SYSTEM.GEN' file, see the sections on 'SYS-AUTO' and
'SYS01-01'.
This file can also be created with your FLEX text editor, another BASIC or machine program, or whatever.
The two programs included in the DATAMAN package are just two ideas for creating this file.
Use your imagination when thinking about the 'SYSTEM.GEN' file.
It is a very powerful tool.
.SP2
.LM10
.NF
25.3.0
'SUBSDMAN'
PROGRAM
.LM55
.FI
This program is the subroutine package for DATAMAN.
It is a 'SHELL' of a working program module with many of the routines needed to make a working DATAMAN program.
Using this 'SHELL' will make the writing of custom modules much easier.
This program is discussed in Section \#27.
