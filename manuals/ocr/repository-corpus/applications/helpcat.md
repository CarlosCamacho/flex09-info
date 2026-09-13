# HELPCAT

> Source: `apps/spelling-dictionaries/DYNASPELLDOC - Spelling and Dictionary - Program and Support Utilities.zip!DYNASPELLDOC.DSK!HELPCAT.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,cs 10
,ps
,ll 37
,pl 66
,sp 12
,ce 3
 HELP
A Data Retrieval Utility
By Dale L. Puckett

	HELP is a data retrieval utility command designed to save your time.	No longer will you need to spend hours digging through system manuals trying to learn the syntax of the many BASIC and FLEX commands.

	It was written by Dale L. Puckett, a well-known writer whose work appears in InfoWorld, Micro and the '68 Micro Journal.	It is shipped with two data files compiled by the Frank Hogg Laboratory.	One data file covers every FLEX command and another all TSC BASIC and EXTENDED BASIC commands.	Since HELP resides entirely in the FLEX utility command area, it may also be called from other programs.

	Here is an example of HELP's usefulness.	Imagine you are writing an article about the FLEX operating system and you forget how to divert the output of a command from the terminal to a printer.	Since this is information you need for your article it would sure be nice to find it without looking through a manual.	If you are using an editor like DYNASTAR or STYLOGRAPH which allows you to execute FLEX commands, you need only go to the command mode and type +HELP P (CR).	The	information you need will appear on the screen.

	Here's another example.	Suppose you are writing a BASIC program and you forget the syntax of the PEEK command.	Simply type, +HELP PEEK <BASIC (CR) and you will have that information on the screen.

	In addition to retrieving information from the two supplied data files, HELP also contains an interpreter which recognizes commands within the data files.


,ce
USING HELP

	There are three ways to call HELP from FLEX or another program.	Typing HELP (CR) will cause the program to print a screen full of information which tells you how to use HELP.	It then asks you which command or statement you need HELP with?

	Typing HELP MEMEND (CR) will cause HELP to search the default data file, HELPFILE.DIR for an occurence of MEMEND.	It will then print a definition of the command and give an example of the syntax you should use.	Typing HELP PEEK <BASIC (CR) will cause HELP to open the data file, BASIC.DIR and search for PEEK.	The desired information will then be printed on the terminal.

	If you remember the first letter or two of a command but can't remember the entire command name you need only use HELP's wildcard option.	For example, if you know your command starts with PR and can't remember the rest, you can type HELP PR?	HELP will respond by giving you information about PR, PRINT and PROT, or any other command that begins with PR.	Similarly, HELP P? would print information about every command that starts with a "P."

,ce
HELP DATA FILES

	It is easy to prepare personalized data files that contain the information you need to have at your finger tips.	In fact, we hope you will share any data files you create with other HELP owners.	With the new double-sided, double-density disks now on the market and a little typing from a few HELP users, we could all have a many valuable data bases at our finger tips.

,ce
HELP COMMAMDS

	HELP recognizes the following commands within a data file:	IF, INPUT, INPUT-YN, PRINT-SEARCH, WILDCARD, PRINT-ON, PRINT-OFF and RESTORE.

	IF compares the word in a target buffer with the word following the command ">IF" in the data file.	If the word is a match, the old data file is closed and the word following ">IF" is use as a filename and the file is opened for reading.

 EXAMPLE:	>IF PASCAL

	If you type "HELP PASCAL" or answer a prompt with "PASCAL" and the the line above is in the data file, it will cause the old data file to be closed and PASCAL.DIR to be opened for reading.

	INPUT issues a prompt.	For example, ">INPUT What do you want HELP with now?" would echo the prompt, "What do you want HELP with now?" to the terminal and then call a routine to enter your reply into the program's target buffer.

	INPUT-YN echoes a prompt and calls FLEX's GETCHR routine.	If it gets a "Y" or "y" for yes, it prompts the user for another word.	If not, it closes all files and exits to FLEX or the calling program.

	PRINT-SEARCH is a routine that tells you what HELP has been looking for when a match is not found.	It is handy in the case of typos.

	WILDCARD looks for a match between your target word and anything which follows it in the same line of the data file.	If there is a match, the remainder of the line is printed.	WILDCARD then returns to the main loop with the print flag set.	
	
	PRINT-ON allows the author of a data file to set HELP's print flag.	He can then print any messages he deems necessary.	PRINT-OFF does just the opposite and clears the print flag within HELP.

	RESTORE is a command which allows you to rewind or go to the beginning of the file.	It is usually used at the end of a data file and allows HELP to read through a file as many times as required.

	HELP is available for both the 6809 and 6800 from FRANK HOGG LABORATORY, INC., 130 Midtown Plaza, 700 East Water St., Syracuse, NY 13210.	Phone: 315-474-7856.	The object code only sells for $29.95.	The assembly language source code and object code both may be purchased for $49.95.
