# DMAN-26

> Source: `misc/uncategorized/FULL - FLEX Software Archive - Program and Support Utilities - Includes DMAN-09, MACRO, DMAN-18.zip!FULL.DSK!DMAN-26.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NR X 26
.NF
.LM05
.DB
26.0.0
.DB
'SYSTEM.GEN'
.DB
GENERATION PROGRAMS
.LM55
.FI
.SP3
In Section 25.2.0 the 'SYSTEM.GEN' file was discussed.
This file contains the information on the System Terminal or CRT and the System Printer as well as other information
used by each DATAMAN program module.
This file can be created in a number of different ways.
Two programs are included in the DATAMAN system to do this.
.sp2
.lm10
.nf
26.1.0
'SYS-AUTO'
PROGRAM
.LM55
.FI
This program is designed for quick and easy creation of the 'SYSTEM.GEN' file.
The user is prompted for the decimal values of various CRT and Printer control codes as well as the unit numbers
of the disk drives in the computer system.
Once all the questions asked by the program are answered, the 'SYSTEM.GEN' file is created on the DATAMAN system disk
on drive \#0.
A complete session using this program is given in Section 5.1.0.
The program is documented so that any changes to it are quite easy.
.sp2
.lm10
.nf
26.2.0
'SYS01-01'
PROGRAM
.lm55
.fi
This program also is used to create the 'SYSTEM.GEN' file but it uses 'DATA' statements which include the decimal information.
.sp
The name of this program specifies the type of terminal and the type of printer for which the program has been
written.
The first '01' stands for a TELEVIDEO 920 CRT.
The second '01' denotes a CENTRONICS 737 printer.
If both numbers are '0' as in 'SYS00-00' the program is set up with all nulls for a completely 'dumb' CRT and Printer.
One such program is on the disk supplied with the DATAMAN system.
This file will create a 'SYSTEM.GEN' file which can be used by anyone immediately.
It can also be used with a thermal printer over a modem.
Section \#7 was printed by a thermal printer using the program 'SYS00-01' to set up the 'SYSTEM.GEN' file for
a 'dumb' system terminal and a CENTRONICS printer.
Other 'SYS' programs will be included on your DATAMAN source disk defining other CRT's and Printer's used by the people
now running the DATAMAN system.
.sp
The extra code which is defined in the 'SYSXX-XX' program, allows the user to define extra code to make the
'PROGRAM HEADER' and 'ACTION HEADER' more interesting and attractive.
One example is the one used for the TELEVIDEO CRT.
This CRT has the ability to display half intensity reversed video and full intensity reverse video under software
control.
These features were used in the 'SYS01-01' file to have the 'PROGRAM HEADER' in a block of reversed half intensity video,
and the 'ACTION HEADER' in a block of full intensity reversed video.
This display is very attractive and makes the 'HEADERS' stand out from the rest of the DATAMAN prompts and information.
This makes the system easier to use and creates much less confusion for the novice user, making operation errors
less of a problem.
.sp
If you decide to build graphic 'HEADERs' for your CRT, use a unique number for the 'SYSXX-XX' program and send it to
FRANK HOGG LABS so that we can share it with others who have the same CRT.
.sp
The program is documented and the variables and how they are used are discussed in Section 25.2.0.
When all the 'DATA' statements have been defined, the program is the 'RUN'.
It will create a 'SYSTEM.GEN' file on drive '0' where your DATAMAN system disk (DMUNIVC) should be put.
If you make a mistake or want to change some code, change the 'DATA' statements involved and simply re-run the
program as before.
.sp2
.lm10
.nf
26.3.0
OTHER CREATION
METHODS
.FI
.LM55
There are other ways to create the 'SYSTEM.GEN' file.
One could use the TSC 'TEXT EDITOR' for instance.
Simply enter the decimal value, one on each line, for the 45 control variables ('S(1)' to 'S(45)') and the five
string variables ('S$(1)' to 'S$(5)').
The five string variables are not used in DATAMAN at present and are defined as 'NA' for now.
.sp
You could also write a BASIC program similar to the ones given.
