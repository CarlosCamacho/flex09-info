# SCAN

> Source: `apps/spelling-dictionaries/DICK_B6 - Spelling and Dictionary - Documentation and Examples.zip!DICK_B6.DSK!SCAN.MAN`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,ce 1


~S~C~A~N~ ~A~ ~T~E~X~T~ ~F~I~L~E
,ju
,ll 70
,in 10

	SCAN is a text type file list program with many refinements and enhancements designed to provide the user with the versatility he needs when looking thru a file.	SCAN provides the user with the ability to page thru the file one screen full at a time, back up a page, scroll a line at a time, backup a half page, run thru the file like LIST and also stop running.	The ability to jump to the top or bottom of the file from any point within the file is also supported.

	In order to achieve this kind of versatility, it was necessary to enter the editor, which took too long, and really was unnecessary just to take a look at a particular item.

	Note that there are three SCAN files on the disk.	SCANS is a scrolling version for those terminals that do not have cursor addressing.	SCANP is a page oriented version for the more intelligent terminals.	SCANNEW is also a page oriented program, however, the ability to scan thru files up to 1000 sectors long has been added.	The former two versions are limited to files of about 250 sectors.	This was done to allow these programs to be called from BASIC or wherever else the need arose.	The first two programs use no memory below C000 whereas the third uses memory in the B000 area.	Keep this in mind when deciding which version to select as the primary file.

The syntax of the command is:	SCAN,<DRV #>.<FILENAME>[.<EXT>]

	The extension is optional as SCAN assumes .TXT.	After SCAN loads, the prompt	# of lines on the screen will appear.	Answer with the total number of vertical character lines your terminal is capable of displaying.	Note, however, that when listing a BASIC file, many lines may be longer than the line width of your screen.	When this happens, the line will wrap around and effectively add another line of display to the screen.	This will cause the first displayed line to scroll off the top before the text is thru being displayed.	If it is suspected that this may occur, simply answer the # of lines prompt with a few lines less than are actually on the display.	Ex:	If there are 24 lines on the screen, answer with 16 or 20 or some number less than 24.
	SCAN follows the space compression rules and will expand spaces when displaying.	Also, line numbers are displayed which will generally match the line numbers displayed when in the editor.	There are occasions when the sequence may not match exactly.

	For the user with non-standard I/O addresses, note in the listing that port 1, E005, is used in a polling routine.	If necessary, change the address and re-assemble.

Commands:

F - PAGE FORWARD ONE SCREEN FULL
B - PAGE BACKWARD ONE SCREEN FULL
1 - SCROLL ONE LINE FORWARD
0 - PAGE ONE/HALF PAGE BACKWARD
T - JUMP TO THE TOP OF THE FILE
E - JUMP TO THE END OF THE FILE
R - RUN THRU THE FILE STOPPING ONLY AT THE END; MAY TEMPORARILY STOP WITH	
	0FLEXS' PAUSE KEY.
S - STOP A RUN AT NEXT PAGE BOUNDARY
X - EXIT BACK TO FLEX
