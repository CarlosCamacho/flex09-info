# INSTRUCT

> Source: `apps/forms/UTIL84 - Forms Management - Source Code and Build Files.zip!UTIL84.DSK!INSTRUCT.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,LM 7
,LL 66
,JU
,HD


PALM BEACH SOFTWARE	PREPARE INCOME TAX PROGRAM


,,
,FT
,LL 66


,CE
PAGE ##


,,
,PG
INTRODUCTION

,SI 5
PFIT is a computer program to assist a knowledgable Income Tax preparer with the typing, math and filing of Federal Income Tax Forms.	This program will not make decisions or interpet complex rules.	This is the domain of the professional preparer.


OVERVIEW

,SI 5
There are 75 routines on the Program Disk which work on the data bases, created on the Data Disk.	20 client's records for 1 year can be stored on a single 5 inch disk.	The general procedure is to create a client record either from a personal interview or from an input sheet.	If the data is complete and correct the Forms can be printed immediately.	Usually more information is required and you would mark the incomplete Forms or Schedules.	An Index & Summary would be printed and the data saved.	When more information is available the client's record is recalled and the new information entered.	When the Summary is complete and acceptable the Forms are printed.


GETTING STARTED

,SI 5
The Program Disk is created by Formatting a disk and extending the directory with EXTEND18. Now copy FLEX.SYS, ERRORS.SYS, PRINT.SYS, CAT.CMD, COPY.CMD, SAVE.CMD and any other utilities you want.	Now Link this disk.	If you have a second and a third printer their drivers must be installed as PRINT2.SYS and PRINT3.SYS.	Put this disk in Drive 0 and the PFIT master disk in drive 1 and Call 1.SETPFIT.CMD.	See the section on Installation for more details.

,SI 5
Put the PFIT master disk away in a safe place and insert the newly prepared PROGRAM disk in drive 0.	Now a DATA disk is to be prepared by placing a scratch disk in drive 1 and calling PFIT. The first screen will ask for preparer selection, just EXIT this screen to get to the Master Selection Menu.	Now move the cursor to the "Utility Program selections" with the cursor up & down keys and select GOTO.	The Utility Menu will be displayed, move the cursor to "Make a Data Disk" and select GOTO.	When the DATA disk is completed you will be returned to the DOS prompt.

MENU AND PROGRAM SELECTION

,SI 5
The PFIT program is controlled by a series of menus.	When a menu is displayed on the screen the first line is the name of the menu, the second line is a list of the commands that are available, and the third line is a status and bulletin line for special reports or error messages.	The actual menu selections start on the fifth line.	A wide cursor of reverse video indicates the selected item.	This cursor can be moved up or down with the up arrow or down arrow keys.	If the menu is longer than can be displayed on the screen then the menu can be scrolled up or down by moving the cursor to the bottom or top item and depressing the down or up arrow key.

,SI 5
After a menu item has been selected, the command line indicates what can be done with the selection.	A typical command line might be "(C)reate - (E)dit - (P)rint - EXIT". Entering the letter in parenthesis would execute the function on the selected item.	EXIT is a special key that was selected during the installation procedure and will return to the previous menu or command level.	Other commands are (L)oad and (G)oto.

SCREENS

,SI 5
Communications with the Data Base is through a Screen.	A typical Screen is from 10 to 20 lines of the selected form displayed on the CRT in low intensity.	The data, either money or messages goes into special holes created on the screen.
