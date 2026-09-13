# BLITZDOC

> Source: `misc/work-disks/WORK17 - Adventure Game - Program and Support Utilities.zip!WORK17.DSK!BLITZDOC.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

!B L I T Z

	A Screen Oriented Text Editor for the SWTP 6800/6809 and the CT-82 Terminal

BLITZ is an easy-to-use "window" type editor. The screen is a movable window on
the text file. All additions and corrections are made on the text line displayed
at the bottom of the	screen, and	are	reflected immediately	on the screen as
they are made.	If the entire text file is too large to reside in memory, then
BLITZ loads a portion at a time and, when requested by the user,the next portion
is rolled into memory.


DISTRIBUTION INFORMATION

BLITZ is supplied in object form for the 6800 or 6809 for $50. Source and object
together are available for $100.	If you purchase the object only, you may	
later purchase the source for an additional $60.	It can be supplied on either
size SWTP diskette ( 5 or 8 inch ).	BLITZ source and object are copyrighted by
MicroPi and are supplied for single end use only. All other use is strictly
prohibited.


CUSTOMIZATION INFORMATION

BLITZ begins at location zero and occupies about 2K.	The remainder of the user
memory is used for a text buffer.	As supplied, this extends to 3FFF (16K).	If
you have less memory than this, or have more and wish to use it, you can patch
the "end of memory" location in BLITZ.	This is found at location $0012, its
current value is $3FFF. The subsequent location ($0014) must also be set. It
contains the "fill-up" point.	It should be set about half way between $0800
and the value you put in loc $0012.	Its current value is $2800. The closer it
is to the "memory end" value, the more text is loaded from the file and the less
room there is for new text before memory fills and ESC must be used.


INSTRUCTIONS ON USING BLITZ

To run BLITZ enter the following command:

+++BLITZ	filespec

The filespec may be preceded by a drive number and may be followed by a file	
type.	If no file type is given then ".TXT" is assumed.	If the given file name
is not found then the message "NEW FILE" is displayed for a few moments then the
screen goes blank and you may begin entering text. If the file is found then the
previous backup file (file.BAK) is deleted and the current file is renamed to be
the new backup file.	In this way one level of backup file is always kept auto-
matically.	The screen will then be cleared and the first line of the text will
be displayed at the screen bottom.

All functions are controlled by the appropriately marked keys on the CT-82 ter-
minal. In general the cursor is moved to the desired location then text can be
added or changed by just typing on the keyboard.	The terminal will "beep" if
an invalid function is attempted.	The available functions are described on the
reverse side.	Note that all functions are typomatic keys that repeat as long as
they are depressed.


	BLITZ	COMMAND	KEY	SUMMARY


	KEY	ACTION TAKEN
--------------------------------------------------------------------------------
RETURN	Moves the text up one line and displays the next line of text; if at
		the text end then a blank line is added to the text end.

BACK	Backs up the cursor and erases a character; used to fix typing errors.
SPACE

SCROL	Moves the text up 1 line and displays the next line of text; if at the
UP	text end then the bell sounds. (UP ARROW is equivalent to this key.)

SCROL	Moves the text down 1 line on the screen; if at the text start then
DOWN	the bell sounds. (The DOWN ARROW is equivalent to this key.)

<--	(LEFT ARROW) Moves the cursor left 1 position, if in column 1 then
		the bell sounds.

-->	(RIGHT ARROW) Moves the cursor right 1 position; if at the line end
		then the bell sounds.

INSERT	Moves the text,from the cursor to the end of the line,one space to the
		right, and pops a blank into the line, under the cursor; if the line
		already has 80 characters on it, then the bell sounds.

DELETE	Removes the character under the cursor, and moves the remainder of the
		line left one space to close the gap.	If the line is empty, and the
		cursor is in column 1 when DELETE is pressed then the empty line is
		removed and the subsequent lines are moved up one to close the gap.

LINE	Inserts a blank line above the line containing the cursor; this is
FEED	done by moving the bottom line down one (off the screen) to make
		room to type in a new line.

HOME	Moves to the start of the text currently in memory.	

ESC	Rolls out all the text above the cursor, from memory to the disk file,
		and rolls in the next portion of the text (if there is any).	This
		key controls what piece of the text file is available for editing in
		the case where the entire file is too large for memory.	As the run
		proceeds you can pass from one end of the large file to the other
		making whatever changes are necessary along the way. Note that if
		the available memory becomes full, then the bell will sound whenever
		an attempt is made to add	more text.	At this point use the ESC key.

FORM	Reverses the sense of the shift key; to start with,the keyboard is in
		upper case with SHIFT to lower case.

XMIT	Ends the editing run by writing out all remaining text and closing
		the disk file.


MICROPI	2445 N NUGENT	LUMMI ISLAND, WA 98262
