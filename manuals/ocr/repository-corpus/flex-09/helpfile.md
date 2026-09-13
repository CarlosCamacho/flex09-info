# HELPFILE

> Source: `flex-09/distributions/LAB_SYS1 - FLEX Operating System - Programs and Utility Collection.zip!LAB_SYS1.DSK!HELPFILE.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

The HELP command prints	out	helpful	documentation	on	various
 system features.	The command:

+++HELP
 Will print out this message.

+++HELP <NAME>
 Will look for, and print out the info about	the	system	feature
 named in <NAME>, for example.

+++HELP DIR
 Will print out info on the DIRECTORY command.
 Only the first 8 characters of the argument are looked	at,	they
 must be A-Z, a-z, or 0-9.


$Would you like more information on something. ( Y or N ) ?
*
&What would you like information on ( <CR> for all ) ?

 HELP is available for the following:

	The following is a list of various commands
 and files on the system drive (usually #0)
 with a brief description of what they do.

	.CMD is a command
	.TXT is a text file
	.SYS is a system file
	.LOW is a command that runs in low memory
	.BAK is a backup file
	.DAT is a data file
	.BAS is a basic file in ASCII
	.BAC is a basic file compiled
	.BIN is a binary file
	.OUT is a file for spooling

	Please refer to the FLEX users guide or
 the manual for more information.

$ * USE INTERNAL PROMPT
 NAME	TYPE - COMMENTS

APPEND	.CMD - +++APPEND,<file spec>[,<file list>],<file spec>
@
	This is used to append or concatenate two or more files,
 creating a new file as the result.
ASMB	.CMD - +++ASMB,<file spec>,[<file spec>],+[options]
@
	This is the TSC assembler, see the TSC manual for more info.
ASN	.CMD - +++ASN[,W=<drive>],[,S=<drive>
@
	Where <drive> is a single digit drive number or the letter A.
 'A' refers to ALL drives.
BASIC	.CMD - +++BASIC [<file spec>]
@
	Where <file spec> defaults to the .BAC extension and
 the work drive.
BUILD	.CMD - +++BUILD <file spec>
@
	Where <file spec> defaults to .TXT and the work drive.
 This is a simple text input with no editing. the # is
 used to exit like EDIT.
CAT	.CMD - +++CAT [<drive>],[<matchlist>]
@
	Where drive defaults to the work drive and matchlist will
 list all that match.
CHECK	.CMD - +++CHECK <file spec 1>,<file spec 2>
@
	This is used to compare two disk files. Results reported
 on the terminal.
CMPMEM	.CMD - +++CMPMEM <file spec>
@
	This compares the contents of a binary file and memory
 where it should be loaded. It reports the differences
 on the terminal.
COLD	.CMD - +++COLD
@
	This jumps to $200 which is the cold start address of
 ASMB and EDIT and also PR. It saves reloading.
CONCAT	.CMD - +++CONCAT <file spec list>
@
 This allows the listing and concatenation of several files
 either to the disk (If O.CMD used) or the output device.
CONFIG	.CMD - +++CONFIG <LOGICAL DRIVE>=<PHYSICAL DRIVE><#>
@
	This is a MULTFLEX command to CONFIGure the different actual
 drives to the four flex logical drives.
	+++CONFIG 0=F0,1=F1,2=M0
	This would make FLEX drive 0 talk to MSI FD-8 drive 0 and
 drive 1 talk to FD-8 drive 1 and drive 2 talk to mini drive 0
 Drive letters equal;

F=FD-8

M=MFD-8

H=HD-8

U=UNASSIGNED
CONTIN	.CMD - +++CONTIN
@
	This is used with EXEC to CONTINue execution of the file.
 It will prompt for a YES or NO answer.
COPY	.CMD - +++COPY <file spec>,<file spec>
COPY
+++COPY <file spec>,<drive>
COPY
+++COPY <drive>,<drive>[,<match list>]
@
	SEE THE FLEX USERS GUIDE PAGE C.2.1
COPYNEW .CMD	+++COPYNEW <file spec>,<file spec>
COPYNEW	+++COPYNEW <file spec>,<drive>
COPYNEW	+++COPYNEW <drive>,<drive>[,<match list>]
@
 SEE COPY.CMD IN THE FLEX MANUAL PAGE C.2.1
CSORT	.CMD - TSC COMMAND SORT - SEE TSC SORT/MERGE MANUAL
$
DATE	.CMD - +++DATE <month,day,year>
@
	This either reads or sets the system date. Where month and
 day are two diget numbers and year is the last two digits.
DDIR	.HLP - INSTRUCTIONS FOR DDIR - +++LIST 0.DDIR.HLP
DDIR	.CMD - DIRECTORY OF DISKS - +++LIST 0.DDIR.HLP
DEBUG	.CMD - TSC DEBUGGER - REFER TO THE TSC DEBUG MANUAL
DEDIT	.CMD - +++DEDIT <file spec>,<record #>-<record #>
@
	This allows a direct edit of any file and prompts for
 all information needed.
DELETE	.CMD - +++DELETE <file spec>[,<file list>]
@
	This is used to delete a file or files from the disk. You must
 include the extension for each file to be deleted. It will prompt
 before any deletion.
DIR	.CMD - +++DIR [,drive list][,<match list>]
@
	This makes a DIRectory of a disk using drive list and match list
 if included. If just DIR then a complete DIRectory of the working
 drive is produced.
DSMB	.CMD - +++DSMB <start address>,<end address>
@
	Thsi produces a disassembley from start to end address.
DUMP	.CMD - +++DUMP <file spec>
@
 This dumps the contents of a file in hex and ascii.
DUP	.CMD - +++DUP <drive #>,<drive #>
@
	This lists the file names contained on one disk which are
 not on another one.
ECHO	.CMD - +++ECHO <string>
@
	This ECHOs strings to the terminal.
EDIT	.CMD - +++EDIT <file spec>
@
	This is TSC's text editor, please see the manual for more information.
EXEC	.CMD - +++EXEC <file spec>
@
	This EXECutes file spec as if it were entered from the terminal.
 Please refer to page E.1.1 of the FLEX users manual.
FILES	.CMD - +++FILES [<drive list>],[<match list>]
@
	This is simular to CAT but uses a more compact listing.
FILTYP	.CMD - +++FILTYP,<file spec>
@
	This tells the type of file either binary or txt.
FIND	.CMD - +++FIND <file spec>,<string>
@
	This finds all occurances of string in file spec.
FREE	.CMD - +++FREE,<drive #>
@
	This returns the number of free sectors on drive #.
$
FUCK IS NOT PERMITTED HERE!
HECHO	.CMD - ECHO A HEX STRING eg A,B,C,D
HELP	.TXT - THIS FILE
I	.CMD - GET INPUT FOR COMMAND FROM DISK FILE
INTEG	.CMD - TESTS THE UNUSED SECTORS OF THE DISK
JUMP	.CMD - JUMP TO MEMORY LOCATION
LBASIC	.CMD - TSC 6 DIGIT BASIC
LINK	.CMD - LINK BOOT TO FLEX OR WHATEVER
LINKMF	.CMD - LINK MF-68 DISK
LIST	.CMD - LIST A ASCII FILE
LOOKUP	.CMD - DATABASE PROGRAM
LRENUM	.CMD - TSC 6 DIGET BASIC RENUMBER
MAP	.CMD - MEMORY MAP OF A FILE
MEMAP	.CMD - MAPS MEMORY OF ALL NON 0 AREAS
MEMDUMP .CMD - DUMP IN HEX AND ASCII MEMORY
MEMEXAM .CMD - MEMORY EXAMINE
MEMFILL .CMD - FILL MEMORY WITH A CONSTANT
MEMOVE	.CMD - MOVE MEMORY
MEMTEST .CMD - MEMORY TEST
MERGE	.CMD - TSC MERGE
$
MSIMTEST.BIN - MEMORY TEST FROM MSI
MSITEST .BIN - MEMORY TEST FROM MSI
NEWFD8	.CMD - FORMAT DISK FOR FD-8 DRIVES
NEWMF68 .CMD - FORMAT FOR MF-68 ON MSI
NO	.TXT - NN ANSWER TO I.CMD
O	.CMD - TRANSFER OUTPUT TO DISK
OLOAD	.CMD - OFFSET LOAD FILE TO MEMORY
P	.CMD - TRANSFER OUTPUT TO PRINTER
PDEL	.CMD - PROMPT DELETE FOR MATCHLIST
PMERGE	.CMD - TSC PARAM MERGE
PR	.CMD - TSC TEXT PROCESSOR
PRINT	.SYS - PRINTER ROUTINE
PRINT	.CMD - SPOOLER COMMAND
PROT	.CMD - PROTECT A FILE ECT.
PSORT	.CMD - TSC PARAM SORT
QCHECK	.CMD - SPOOLER QUE CHECK AND CHANGE
RECOVER .CMD - RECOVERS FILE WITH BAD DIRECTORY
RENAME	.CMD - RENAMES A FILE
RENUMBER.CMD - BASIC RENUMBER
$
RESTORE .CMD - RESETS MEMEND TO 9FFF AFTER A JCP RUN
RPT	.CMD - REPEATS A COMMAND LINE n TIMES
SAVE	.CMD - SAVE MEMORY TO DISK
SDC	.CMD - SINGLE DRIVE COPY COMMAND
SEARCH	.CMD - SEARCH MEMORY FOR ASCII OR HEX STRING
SGEN	.CMD - SOURCE GENERATOR
SORT	.CMD - TSC SORT
SRTMRG	.SYS - TSC SORT-MERGE
TEST	.CMD - TESTS ALL SECTORS OF DISK FOR CRC ERRORS
TOP	.CMD - RESETS TOP OF PAGE COUNTER FOR PRINTER
TTYSET	.CMD - TERMINAL PARAMENTERS
TYPOS	.CMD - COUNTS ALL WORDS IN A TEXT FILE
VERIFY	.CMD - FMS WRITE TO DISK VERIFY FLAG SETTER
VERSION .CMD - TELLS WHAT VERSION OF FILE
WORDS	.CMD - TOTAL WORD AND LINE COUNT OF A TEXT FILE
XBAK	.CMD - NON-PROMPT DELETE OF .BAK FILES
XOUT	.CMD - NON-PROMPT DELETE OF .OUT FILES
YES	.TXT - YY ANSWER TO I.CMD
% *STOP LOOKING AND GOTO FLEX
* END OF LIST
* THIS '*' PREVENTS PRINTING
* THIS '$' WILL ASK FOR MORE (Y OR N) UNLESS THERE IS
* SOMETHING ON THE LINE AFTER IT. IN WHICH CASE THAT
* WILL BE PRINTED INSTEAD.
* THIS '&' WILL PROMPT FOR A MATCH STRING UNLESS LIKE '$'
* THERE IS SOMETHING ON THE LINE.
* THIS '%' IS A FORCED RETURN TO FLEX
