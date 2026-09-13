# CHAP2

> Source: `apps/dynastar/DYNAS23 - DynaStar Word Processor - Source Code and Build Files.zip!DYNAS23.DSK!CHAP2.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.bp
	^U2.0 DESCRIPTION OF EDITING COMMANDS^U
.dxc 2.0	Description of Editing Commands

	All	of	the commands available in the DynaStar	Editor	are
described	below.	They are covered a menu at a time, in	approx-
imately the order they should be learned by the beginning user.

	We	will	start	with	the main editing	menu.	Most	basic
editing can be done from this menu.

.dxi INSERT mode
	It	is	first necessary to explain the two	basic	operating
modes	of DynaStar.	When you first start an editing session, the
editor	is in "INSERT" mode, which you can verify from the	right
end	of	the status line.	In this mode, any printable	character
you	type	is inserted in your text buffer at the current	cursor
location,	"pushing" any text to the right of the cursor ahead as
it goes.	It is possible to operate all of the time in this mode,
since	text can be replaced by deleting old text and then	typing
in new text to replace it.

.dxi OVERTYPE mode
	The	other basic mode is "OVERTYPE".	You can put the editor
in	this	mode	by typing the sequence ^QO (this	notation	means
"hold	the	CTRL key down while pressing the letter Q, then	type
the	letter	O").	The word "OVERTYPE" will appear on the end	of
the	status	line	when	you do this.	In	this	mode,	printable
characters	that	you	type	are typed	"over"	and	replace	the
characters	that were there before.	However, OVERTYPE mode	will
not	replace	a carriage return character:	if you "overtype"	to
the end of a line so that the cursor reaches an existing carriage
return,	the carriage return will be pushed ahead, permitting the
line to be extended as if the editor was in INSERT mode.

	OVERTYPE	mode	is	most useful to correct	simple	spelling
errors	in text.	The biggest problem is that you tend to	forget
you are in OVERTYPE mode, which sometimes leads to confusion.	It
is	just as easy to correct isolated spelling errors from	INSERT
mode by first deleting the offending character and then typing in
the correction, and this method usually involves fewer keystrokes
than	entering OVERTYPE mode, typing a one character	correction,
and	then	re-entering	INSERT mode.	At Dynasoft we	rarely	use
OVERTYPE	for this reason. ^QO is a "toggle" command: it switches
back	and	forth between OVERTYPE and INSERT mode each	time	you
type it.

.dxi wide line
	It is possible in either "INSERT" or "OVERTYPE" mode to type
past	the	right	edge of your screen.	When	this	happens,	the
cursor will move down to the beginning of the line below, and you
can continue typing this "line extension" on the new screen line.
No	carriage return is entered into the text buffer, and the line
will	print correctly if listed on a printer capable of	printing
lines wider than the screen.	Inserting or deleting characters in
a	line occupying more than one screen line will shift characters
in	any	extension lines as required.	In this	sense,	"logical"
lines	are	distinct	from	"screen"	lines.	However,	for	the
purposes	of	the cursor movements described below, it is	screen
.ns
lines which are significant, and vertical movements of the cursor
will	not	distinguish	between logical and screen lines.	In	a
similar	manner, the line delete functions ^Y and ^QY operate	on
screen lines, not logical lines.

.cp 31
	^U2.1 Basic Cursor Motion Commands^U
.dxc 2.1	Basic Cursor Motion Commands

	Most	of	the	control	keys on the main	editing	menu	are
arranged	in	a	geometric pattern at the left	of	the	keyboard
which	reflects	the	function performed by each	command.	This
pattern	is centered around the basic cursor motions of up, down,
left and right, which are arranged in a simple diamond pattern.
.dxi control diamond
.dxi cursor motion commands


	/\
	_________/	\__________
	|	W	/	E \	R	|
	| line	/ char \ screen |
	|	up	/	up	\	up	|
	___|_____/__________\______|___
	|	A	/	S	|	D \	F	|
	| word	/ char	| char \	word	|
	| left	\ left	| right/	right |
	|________\______|_____/_________|
	|	Z \	X	/	C	|
	| line \	char	/screen |
	| down	\ down /	down	|
	|________\	/_________|

\	/
	\/


	The	keys	adjacent	to the four basic	cursor	motion	keys
perform	functions	related to the basic motions.	For	instance,
while	^S	moves the cursor left one character, ^A moves it	left
one	word.	Similarly, ^D moves right one character and ^F	moves
right	a	word.	On	the top line, ^E moves the	cursor	up	one
character	(to	the line above), and ^R moves up	one	screenful.
On	the	other	side of E, ^W does not move the	cursor,	but	it
scrolls	upward one line in the file (the screen actually scrolls
down).	In the same way, on the bottom line, ^X moves the cursor
down one character, ^C moves down a screenful, and ^Z scrolls one
line downwards.

.dxi deletion
	In addition to the cursor motion keys there are several keys
for	deleting	text.	^G deletes the character under the	cursor.
DEL	(or	BKSP	or ^H) deletes the character to the left	of	the
cursor.	^T	deletes the ^Uword^U to the right of the cursor, and	^V
deletes	the word to the left (useful when entering text to	back
up	and	retype	a	mispelled word).	The	sequence	^QY	deletes
everything on the line to the right of the cursor, and ^Y deletes
the entire line.

	Prefixing	any of the four basic motion keys	(^E,^S,^D,^X)
with	a ^Q moves the cursor as far as it will go on the screen in
the	direction corresponding to the basic key.	Prefixing ^R	and
^C	with a ^Q moves the cursor to the very top and bottom of	the
edit buffer respectively.

.dxi prompt, response to
	Some	commands	prompt for additional input if necessary	on
the	status	line of the display.	Commands requiring	a	single-
letter	response continue as soon as the letter is typed, and	do
not	care	if	the reply is typed in upper or lower	case.	Some
commands	require	a multiple-character response such as	a	file
name or search string.	The response to these prompts can usually
be	up to 40 characters in length, and is terminated by	pressing
the	RETURN	key	(which is not considered part of	the	response
string).	During the typing of such responses, typing errors can
be	corrected by using either the DEL, ^S, ^H, or BACK SPACE keys
to	back	up	to	the offending	character.	Typing	an	"empty"
response	(just a RETURN) to one of these prompts will	generally
cancel the command.

.dxi error escape
	Error	conditions	detected during operation of any	of	the
editing	commands will usually result in an error message on	the
status	line,	in	conjunction	with an	audible	beep	from	the
terminal.	The	ESC	key must be pressed to exit from	an	error
condition.	Pressing any other key will result in another	beep.
(On the Radio Shack Color Computer the BRK key is used instead of
the ESC key.)

.cp 7
.dxi main editing menu
	Descriptions	of	the editing commands on the	main	editing
menu follow:

^S	cursor left	Moves the cursor one character to the left if
.dxi cursor moves
.dxs ' ^S	Cursor left
	possible,	moving	it	to	the	end	of	the
	previous	line and scrolling the screen	down
	if either action is necessary.

^D	cursor right	Moves	the cursor right one character, moving
.dxs ' ^D	Cursor right
	to	the	beginning	of	the	next	line	if
	necessary, and scrolling the screen up if the
	cursor is on the last line of the screen.

^A	left word	Moves	the cursor left to the first letter of
.dxs ' ^A	Cursor left word
.dxi word boundary
	the	preceding	word.	For purposes	of	this
	command	and	others	involving	"word	boun-
	daries",	the cursor also stops on all	punc-
	tuation marks and at the beginning and end of
	logical lines.

^F	right word	Moves the cursor to the beginning of the next
.dxs ' ^F	Cursor right word
	word to the right, as described above.

.ns
.dxs ' ^I	Tab right (same as TAB)
.dxs TAB	Tab right (inserts spaces in INSERT mode)
^I
or
TAB	tab right	Move	the cursor right to the next tab	stop.
	In	OVERTYPE	mode, this is a	simple	cursor
	movement.	In	INSERT	mode	this	command
	inserts	blanks to get to the next tab	stop,
	pushing	any text ahead of the cursor over in
	the	process.	(On	the Color	Computer	the
	"right arrow" (->) is used as a TAB key.)

.ns
.dxs ' ^E	Cursor up
^E	cursor up	Moves	the	cursor up to the line	above	its
	current	location.	The screen	is	scrolled
	down if necessary to allow this.	If the line
	above	ends	to	the	left	of	the	cursor
	location, the cursor is moved left to the end
	of that line.

.cp 3
.dxs ' ^X	Cursor down
^X	cursor down	Moves	the cursor down to the same	location,
	if	possible,	on the line below its	current
	location, as described above.

.ns
.dxi scroll
.dxs ' ^R	Up screenful
^R	up screen	Scrolls	upward	in	the	text	buffer	one
	"screenful",	leaving	two lines	of	overlap
	with	the	old display.	If the cursor is	in
	the	overlap region, it remains over the same
	character, otherwise it will land on the last
	character displayed on the new screen.

.cp 2
.dxs ' ^C	Down screenful
^C	down screen	Scrolls	downward	in	the	text	buffer	one
	screenful, as described above.

.cp 2
.dxs ' ^Z	Scroll up
^Z	scroll up	Scrolls	the screen up one line, leaving	the
	cursor over the same character if possible.

.cp 2
.dxs ' ^W	Scroll down
^W	scroll down	Scrolls the screen down one line, leaving the
	cursor over the same character if possible.

.cp 2
.dxi delete
.dxs ' ^G	Delete character under cursor
^G	delete char	Deletes	the	character	under	the	cursor,
	closing in the line from the right.

.cp 5
.dxs DEL	Delete character left
.dxs BKSP	Delete character left
.dxs ' ^H	Delete character left (same as BKSP)
BKSP
or
DEL	delete left	Deletes the character immediately to the left
	of	the	cursor,	backing up the	cursor	and
	closing	in the line in the process.	(On the
	Color Computer, this is the "left arrow" (<-)
	key.)

.ns
.dxs ' ^V	Delete word left
^V	delete word	Deletes	the	characters to the left	of	the
	left
cursor,	up	to	and	including	the	first
	character	of the current word.	This command
	is most useful for correcting a word that has
	just	been	typed, if it would be quicker	to
	retype	the	word	than	to back	up	to	the
	character(s)	in error and then space back to
	where you were.

.cp 2
.dxs ' ^T	Delete word right
^T	delete word	Deletes the characters in the current word to
	right
the right of the cursor.

.cp 2
.dxs ' ^Y	Delete line
^Y	delete line	Deletes	the entire screen line on which	the
	cursor is sitting.

.ns
.dxs ' ^J	(same as line feed)
.dxs LF	Insert cr after cursor
.dxi insert line
^J
or
LF	line insert	Inserts	a	carriage	return	at	the	cursor
	location,	and leaves the cursor just	before
	the	CR.	Any text to the right of or	below
	the	cursor is pushed down one line.	If this
	is	issued	when	the cursor is on	the	left
	margin it has the effect of inserting a blank
	line into which new text can be typed.	If it
	is	issued in the middle of a line, it splits
	the	line,	leaving the cursor on the end	of
	the top piece.

.cp 3
.dxs ' ^Q	Prefix: supplementary commands
^Q	supplementary	Prefix	command	bringing up a	supplementary
	prefix		menu	containing	additional cursor	movement
	and find/replace commands.

.cp 2
.dxs ' ^B	Prefix: Block commands
^B	block prefix	Prefix	command	bringing	up	the	block
	operations menu.

.cp 2
.dxs ' ^K	Prefix: Format and Tab commands
^K	formatting	Prefix command bringing up the formatting and
	prefix		tab setting menu.

.cp 5
.dxs ' ^P	Prefix: Print control
^P	Print control	Prefix	command	for inserting print	control
	prefix		characters	for the DynaForm Print Formatter.
	The	sequence	"^P." is	used	to	display
	additional menus summarizing DynaForm's "dot"
	commands.

^N	doNe
Return to the "files" menu.
.dxs ' ^N	doNe: Return to "files" menu

.cp 5
.dxi macro learn
.dxs ESC	Enter/terminate macro learn mode
ESC	macro learn	This	key	is used to enter or	leave	"macro
	or
learn	mode".	Keyboard	macros	are	fully
	error escape	explained	in the chapter "KEYBOARD	MACROS".
	The	ESC key is also used to exit from	error
	conditions.	(On the Color Computer, this is
	the BRK key.)
