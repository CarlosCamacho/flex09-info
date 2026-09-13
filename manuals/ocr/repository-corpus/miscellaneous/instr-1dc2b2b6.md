# INSTR

> Source: `misc/archive-series/disk/DISK20 - Small-C Compiler Source, Libraries, and Examples.zip!DISK20.DSK!INSTR.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,e
,j
,G:34
,s
,c
Appendix A

,c
Pat Control Functions

1. Cursor motions:
	^E up one line
	^C down one line
	^S left one character
	^F right one character
	^D toggles top and bottom of screen
	^] cursor toggles beginning - end of current line
	^G tab right - tab to tab col in AMODE, next word in PMODE
	^A tab left	- Ditto.

2. ^H Backspace erases previous character. It is possible to
	backspace past the start of a line.

3. ^P to toggle insert mode.

4. ^I insert a blank line above the cursor line.

5. ^K Delete cursor line.	The line is saved to the Delete
	Buffer.

6. ^O Inserts a line (like ^I) and then fills it with the
	contents of the delete buffer.

7. ^L Saves a line to the Delete buffer without deleting it.

8. ^J To delete current character and move rest of line left.

9. ^Q formats a paragraph.	Action is different depending on
	whether Justify mode is on or off.	See ESC commands below.

9. ^Z Search for next occurrence of a string defined using
	ESC (string) ^Z	See below.

10. ^X Replace present occurrence of a string just found by
	using ^Z with the string defined by using ESC string^X.
	See below.

11. ^W Global change.	After using ^Z and ^X, if you want all
	occurrences of the string changed, type ^W. This will repeat
	the search and replace to the bottom of the file.	The
	status line will show the current progress of the replace,
	by indicating current line and column in the file.	At the
	finish, the screen is rewritten with the cursor at the
	last changed item.

12. window motions
	^T top of file
	^R up one screen
	^Y up 1/3 screen
	^E up a line moves screen if used on top line and not tof.
	^B bottom of file
	^V down one screen
	^N down 1/3 screen
	^U move cursor line (and cursor) to top of screen.
	^C down one line if cursor is on bottom line. If bottom of
	file is on screen and screen fills, CR or ^C while in
	PMODE will cause screen down 16 lines.

13. ESCAPE commands	(all below preceded by ESC key)
,m:13
,w:55
,h:0
,i:-6
,p
n^L - set (L)ine length to n - for automatic word wrap.
,i:-6
,p
^P - toggles (P)MODE - When on, words automatically wrap to next
line when line is full, even when inserting, provided the insert
is not "pushing" text ahead of it.
,i:-6
,p
^Q - toggles JUSTIFY MODE- When on, formatting a paragraph will
also cause spaces to be inserted to justify the right margin,
and the first line will be indented.	When off, formatting a
paragraph will remove the extra spaces and "unindent" the first
line.	It will fit as many words on each line as will fit
within the current margin.
,i:-6
,p
^C - toggles (C)aps lock - for some terminals that have no CAPS
lock or have a SHIFT lock (UGH).
,i:-6
,p
^A - toggles (A)MODE - Auto indent mode.	CR causes cursor to go
to next line and align itself under the first non blank on the
previous line.	Used with forward and back tabs for programming
or outlines.
,i:-6
,p
n^T - set (T)abs, if preceded by n sets every n columns.
otherwise use cursor to set tabs... space = no tab anything else
= tab. Displays tabs on top line.	Any key returns to active
edit mode.
,i:-6
,p
^S - (S)plit line at cursor.	All to right of cursor and under
cursor moved to next line.
,i:-6
,p
^J - (J)oin lines at end of first line with warning if text
won't fit.	Cursor position on line does not matter.
,i:-6
,p
x^^ (Control up-arrow) for exit and save files. Parameters (x):
,i:-3
,p
Q - for (Q)uit.	closes input file and exits wihout saving files
If a large file is being edited and the output file has been
partially written, this form of exit is not recommended.	It
will leave a partial file with the extension .SCR which must be
deleted manually.
,i:-3
,p
None - save file with backup.
,i:-3
,p
N - save file above cursor.	Move (N)ew file in from input file.
,i:-3
,p
D - save - does same as no parameter for compatibility with PIE
renames old input file to .BAK and writes new file with original
name
,i:-6
,p
n^I - to (I)nsert n blank lines at cursor.
,i:-6
,p
n^G - to (G)oto line n.
,i:-6
,p
string^Z - Go to next occurrence of search string.	Searches
down from present cursor position plus 1.	Repeated ^Z will
maintain present search string for repeated searches for same
string.
,i:-6
,p
repl^X replaces string found by ESC Z command with repl.	Cursor
must be at first character of found string for replacement to
take place. ^X will allow re-use of previous replace string.
,i:-6
,p
n^K - delete n lines starting at cursor.	If n is larger than
the number of lines remaining in the file, delete will be to the
bottom of the file.
,i:-6
,p
T<cr> - mark (T)op line of block for deletion, copy or move.
current cursor line is marked. T=nn is displayed on the status
line when marked.
,i:-6
,p
B<cr> - mark (B)ottom line of block. B=nn displayed.
,i:-6
,p
U<cr> - (U)nmark presently marked (or partially marked) block.
,i:-6
,p
D<cr> - (D)elete marked block (and unmark). Will give error if
top and bottom of block are not marked.
,i:-6
,p
C<CR> - (C)opy marked block above present cursor line. Does not
unmark automatically.	If only top is marked will copy one line
of text.
,i:-6
,p
M<cr> - (M)ove marked block above present cursor line. i.e. copy
and then delete from where it was. If only top is marked will
move one line.
,i:-6
,p
>FILENAME.EXT.DR <cr> - Write marked block to file. Does not
automatically unmark block.	EXT default is .TXT and DR defaults
to working drive.
,i:-6
,p
<FILENAME.EXT.DR <cr> - Read file into edit buffer at cursor
line. Same defaults as above.
,i:6
,p
+FLEX COMMAND <cr> - Do a FLEX command and then return to the
editor.	When FLEX command is finished will wait for any key
before rewriting the screen with the current edit page.	USE
CAUTION.	SOME UTILITIES CLOSE ALL FILES INCLUDING YOUR OUTPUT
FILE.	OTHERS MAY USE LOW MEMORY AND OVERWRITE THE EDITOR PROGRAM
OR YOUR TEXT IN THE EDIT BUFFER. TEST UTILITIES WHILE EDITING A
NON-CRITICAL FILE BEFORE USING WHILE DOING SERIOUS EDITING.
,i:-6
,p
^E - erase from cursor to (E)nd of line.
