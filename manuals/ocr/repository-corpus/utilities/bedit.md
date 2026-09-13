# BEDIT

> Source: `utilities/system/F_BAR_1 - FLEX System Utilities - Documentation and Examples.zip!F_BAR_1.DSK!BEDIT.MAN`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,ll 78
,ju

	BEDIT - BASIC LINE EDITOR FOR TSC BASIC

	The purpose and intent of this program is to provide the BASIC user with a means of making changes in his or her programs, a line at a time, without the need to re-type the entire line.	Anyone who has used TSC BASIC with any regularity knows how frustrating it can be to enter a line and then realize there exists an error in the second last character position of a 128 character line.	Of course, the entire line must be re-typed, with the possibility of making another error along the way that will not be detected until the carriage return is hit.	Also, having to exit BASIC to use an editor when making many changes can also be a tedious and time-consuming chore.	This package allows the user to enter into the edit mode with a selected line number, make the required changes, and send the line back to BASIC without ever leaving BASIC.	The normal method of using the editor is to append it to BASIC and have both programs load and run con-currently.	The editor is completely transparent until the correct key sequence calls it into use.	The only requirement is for FLEXS' memend location to contain a valid address, which should be the case anyway.

	The user should have a terminal capable of at least the following functions:
	HOME CURSOR
	HOME CURSOR & CLEAR SCREEN
	MOVE CURSOR RIGHT
	MOVE CURSOR LEFT
	WRAP LINE AROUND AT END OF LINE TO NEXT LINE

	Upon loading BASIC, assuming BEDIT is appended, the editor reads the memend location, determines where it can be executed, reserves some room at the top of memory, changes FLEXS' memend pointer, and re-locates itself.	At this time, the EDITOR begins execution and another routine searches thru BASIC to locate the I/O vectors.	As it finds each one, it changes the address to point to a routine in the editor package.	Upon exiting BASIC, the editor re-allocates the memory it saved for itself, restoring memend to it's original value.
	For the users with the source code, refer to the tables in the beginning of the program if it is desired to change the key codes, port address or editor command codes for their own preferences.	The user without the source code can also make these changes by following the instructions listed below.

	The editor is origined at HEX 8000 to provide room for BASIC to load.	Do a GET BEDIT.BIN to load the editor into memory.	Exit FLEX and using some type of display memory command, dump the first 50 HEX bytes starting at HEX 8000.	The beginning of the table can be located by being preceded with four (4) bytes of HEX FF.	The end of the table terminates also with four (4) bytes of HEX FF.

	The following table is defined as follows.
1 - # of byte/function, 2 - function name, 3 - original value, 4 - allowed to be changed.

(1)	(2)	"(3)		(4)
---------------------------------------------------------
 2	control port address	$E004	Yes
 2	terminal cursor right command	$1B43	Yes
 2	terminal cursor left command		$1B44	Yes
 2	terminal home cursor & clear screen	$1B45	Yes
 2	terminal home cursor	$1B48	Yes
 2	terminal enable wrap-around at EOL	$1B76	Yes
 2	terminal Re-set command	$1B7A	Yes
 1	lead in char to enter edit mode	$1B		Yes
 1	user move cursor right key
'R	Yes
 1	user move cursor left key
'L	Yes
 1	user insert key	'I	Yes
 1	user delete key	'D	Yes
 1	user overlay key	'O	Yes
 1	user change string key	'C	Yes
 1	user re-print line key	'P	Yes
 1	user abort edit mode key
$18		Yes
 1	user update BASIC key	'X	Yes
 1	user terminate command key
$3	Yes
 1	user done with edit key	$1B		Yes
 1	user backspace key	$8	Yes
 1	user terminal line size	80	Yes
 1	user Enter edit mode 2nd key		'E	Yes

	It is suggested that the original codes be retained until the user becomes thoroughly familiar with the program and realizes the consequences of changing these codes.	The EDITOR may be used without appending to BASIC with this sequence of commands:	GET BASIC.CMD, BEDIT.BIN.	No key codes are illegal as set, except for the key sequence of ESC E, to enter the editor.	These keys may be sent from a BASIC program, but not to a BASIC program, as the editor will be invoked.	This single compromise was made due to the fact that the editor is in no way tied into BASIC, and therefore, the EDITOR should work with any version of TSC BASIC including the first TBASIC.	Once becoming familiar with the workings and limitations of the EDITOR, it will become a quick and simple matter to make corrections to the program in memory.

	A sample session with the EDITOR may be as follows:

LIST

	10 FOR A=1 TO 5
	20 PRINT "NOW IS TEH TIME FRR ALL GOOD MEN TO COME TI THE AID OF ME"
	30 NEXT A
	40 END

READY

RUN

NOW IS TEH TIME FRR ALL GOOD MEN TO COME TI THE AID OF ME
NOW IS TEH TIME FRR ALL GOOD MEN TO COME TI THE AID OF ME
NOW IS TEH TIME FRR ALL GOOD MEN TO COME TI THE AID OF ME
NOW IS TEH TIME FRR ALL GOOD MEN TO COME TI THE AID OF ME
NOW IS TEH TIME FRR ALL GOOD MEN TO COME TI THE AID OF ME


READY

(Now to make corrections to line 20, Type ESC E)
LIST 20

(The screen will clear & the cursor will home, then)

	20 PRINT "NOW IS TEH TIME FRR ALL GOOD MEN TO COME TI THE AID OF ME"

(Each new line listed is assumed to be on the top of the page)

(type C)

	20 PRINT "NOW IS TEH TIME FRR ALL GOOD MEN TO COME TI THE AID OF ME"

C/TEH/THE/

	20 PRINT "NOW IS THE TIME FRR ALL GOOD MEN TO COME TI THE AID OF ME"

(type R until the cursor is positioned under the first R in FRR, and type O)
(now type O & ^C to terminate the command)

	20 PRINT "NOW IS THE TIME FOR ALL GOOD MEN TO COME TI THE AID OF ME"

(type R to move the cursor under the I in TI, and type O & ^C)

	20 PRINT "NOW IS THE TIME FOR ALL GOOD MEN TO COME TO THE AID OF ME"

(all errors in the line have now been fixed. Note that the CHANGE command was used for one error and the OVERLAY command for the others.	There may often be several ways of correcting the error.	It makes no difference which is used.
Now we will insert some new characters into the line)

	20 PRINT "NOW IS THE TIME FOR ALL GOOD MEN TO COME TO THE AID OF ME"

(type L to move the cursor under the F in FOR, and type I.	Then type the new characters)

	20 PRINT "NOW IS THE TIME &FOR ALL GOOD MEN TO COME TO THE AID OF ME"
	20 PRINT "NOW IS THE TIME & FOR ALL GOOD MEN TO COME TO THE AID OF ME"
	20 PRINT "NOW IS THE TIME & DFOR ALL GOOD MEN TO COME TO THE AID OF ME"
	20 PRINT "NOW IS THE TIME & DAFOR ALL GOOD MEN TO COME TO THE AID OF ME"
	20 PRINT "NOW IS THE TIME & DATFOR ALL GOOD MEN TO COME TO THE AID OF ME"
	20 PRINT "NOW IS THE TIME & DATEFOR ALL GOOD MEN TO COME TO THE AID OF ME"
	20 PRINT "NOW IS THE TIME & DATE FOR ALL GOOD MEN TO COME TO THE AID OF ME"

(now type ^C to terminate the command.
it can be seen that as each character was typed, the remainder of the line moved over one place to the right and the new character appeared.	Now to delete characters, move the cursor to the M in MEN, and type D, 4 times)

	20 PRINT "NOW IS THE TIME & DATE FOR ALL GOOD EN TO COME TO THE AID OF ME"
	20 PRINT "NOW IS THE TIME & DATE FOR ALL GOOD N TO COME TO THE AID OF ME"
	20 PRINT "NOW IS THE TIME & DATE FOR ALL GOOD	TO COME TO THE AID OF ME"
	20 PRINT "NOW IS THE TIME & DATE FOR ALL GOOD TO COME TO THE AID OF ME"

(now to update the line in BASIC, type ESC X. when the READY prompt appears, the line has been sent back to BASIC and control has been returned to BASIC.	Note that if an error exists in the line, BASIC will report it and reject the line just as though the line had been typed in at the keyboard.)

	While in the insert or change mode, an error may be corrected by typing the predefined backspace key, normally a ^H (08 HEX).	The previous entry will be deleted and the cursor backed up one position.	Once the seperator character has been typed in the change mode, all preceding data is fixed and cannot be changed.	If an error needs to be corrected, a ^X may be typed to terminate the mode and start over.

	The above example should give an indication of the capabilities of the EDITOR. There are many other ways the changes could have been made and using all possibilities to gain familiarity with them is recommended.

	The available commands are as follows:

R - Move the cursor right one character position
	Single key command

L - Move the cursor left one character position
	Single key command

D - Delete the character over the cursor
	Single key command

I - Insert in front of the character the cursor is positioned under
	Enters mode until ^C or CR typed

O - Overlay new characters over the old character the cursor is under
	Enters mode until ^C or CR typed, ^X will abort command

P - Re-print the entire line.	Useful if the original becomes tainted in order
	to see exactly what the line in the buffer looks like.	The line pointer
	and cursor will be started over at the beginning of the line.
	Single key command

C - Change a string to another string or delete the entire string.
	(Many possibilities, essentially the same as TSC'S EDITOR)
	(The first character typed after the 'C will be used as the seperator
	and must be used to seperate both strings and optionally the end sequence)

	(Each string may be up to 32 characters long)

	(Typing C/OLD-STRING//	will delete the entire string)

	(Typing C/OLD-STRING/NEW-STRING/ terminates the command with the cursor
	remaining where it previously was.)

	(Typing C/OLD-STRING/NEW-STRING<cr> terminates the command with the cursor
	on the beginning of the line)

	(Typing C,OLD-STRING,NEW-STRING, used the comma instead of slash as a
	terminator character.)

^X - Will in the command mode, aborts the edit session, returning to BASIC
	with no changes being made.

ESC X - Sends the edited line to BASIC, and exits, returning control to BASIC.

	A few hints on some of the other things that may be done with the EDITOR follows:
	Entering the edit mode with an ESC E, LIST 20 will put line number 20 into the buffer to be worked on.	Using the CHANGE or OVERLAY command to change the line number will cause a new line to be created in BASIC with the given line number.	This function can be utilized to duplicate existing lines.
	Entering the edit mode with an ESC E, LIST XX, where XX is a non-existant line, can be used to create new lines.	When the EDITOR is entered, the word READY will appear on the screen.	Enter the insert mode using 'I, type a line number and the data and then exit the insert mode with a ^C.	Then, using the 'D, delete command, delete the word READY and type ESC X.	The new line will be sent to BASIC and appear in the program.

	If at any time, the cursor position becomes lost due to some problem, simply typing a CR will restart the pointer at the beginning of the line buffer and put the cursor on the beginning of the displayed line, thereby starting fresh.

	The command key code is not echoed to the screen.	After the command key is typed, all other data until a ^C or <cr> is typed will appear on the screen.

	If for any reason, the user has lost track of what he is doing, such as what mode he is in or even if he is in a command mode, typing <cr> will terminate whatever is going on, and re-start in the command mode.

	Hearing the bell ring during an edit session normally indicates an error was made.	Possible error could be the line buffer is full, as a maximum of 128 characters are allowed.

	Do to the fact that the EDITOR is not tied into BASIC in any way, it was not possible to be able to work on consecutive line numbers without exiting the EDITOR and calling the next line.	This is only a slight inconvience and the possible uses of the EDITOR far outweigh this fact.

	
