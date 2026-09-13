# CHAP2A

> Source: `apps/dynastar/DYNAS23 - DynaStar Word Processor - Source Code and Build Files.zip!DYNAS23.DSK!CHAP2A.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.bp
	^U2.2 The ^Q Supplementary Prefix^U
.dxc 2.2	The ^Q Supplementary Menu
.dxi ^Q prefix

	^Q	is a prefix command which may be thought of as the first
character	of	a two-character command sequence.	To execute	the
command	a	second	character must be typed after	the	^Q.	The
second	command letter can be typed with or without the CTRL	key
and	in	upper	or	lower	case.	If	the	prefix	was	typed
accidentally,	it	may	be cancelled by pressing the	space	bar.
Most of the ^Q commands are supplementary cursor moves.

.dxq ^QE	Cursor to top of screen
^QE	top of screen	Moves	the	cursor	to	the	first	character
	location	on	the screen: (i.e. to the	upper
	left corner).

.dxq ^QX	Cursor to bottom of screen
^QX	bottom screen	Moves the cursor to the last character on the
	screen.

.dxq ^QR	Cursor to beginning of text buffer
^QR	top of buffer	Moves	the	cursor to the first character	in
	the	text buffer, re-displaying the screen if
	necessary.

.dxq ^QC	Cursor to end of text buffer
^QC	bottom buffer	Moves the cursor to the last character in the
	text	buffer,	re-displaying	the	screen	if
	necessary.

.dxq ^QS	Cursor to left margin
^QS	left margin	Moves	the	cursor to the left margin on	the
	current line.

.dxq ^QD	Cursor to right end of line
^QD	right end	Moves the cursor to the last character on the
	current line.

.dxi paragraph boundary
.dxq ^QP	Cursor to next paragraph
^QP	next Paragraph Moves	the	cursor	to the beginning	of	the
	first	word	of	the next paragraph.	A	new
	paragraph	is	recognized	by	any	of	the
	following conditions:
	1) one or more blank lines.
	2) a line indented past the "wrap margin".
	3) a line ^Ubeginning^U with a period (a DynaForm
	"dot" command).

.dxq ^QT	Cursor to Top of block
^QT	top of block	Moves	the	cursor to the first character	of
	the	currently	marked block, if a	block	is
	still	active.	Block marking	is	discussed
	under the ^B block prefix menu.

.dxq ^QB	Cursor to Bottom of block
^QB	bottom block	Moves the cursor to the last character of the
	currently marked block, if a block is active.

.ns
.dxi search and replace
.dxq ^QF	Find string
^QF	find string	Prompts	for	a search string on	the	status
	line	(up	to 40 characters, terminated by	a
	carriage	return)	and	searches	the	text
	buffer, from the cursor location forward, for
	a string matching the search string.	If such
	a string is found, the cursor is moved to the
	first	character of the found string, and the
	screen	is re-displayed if necessary.	If the
.ns
	string	is not found, the message "NOT FOUND"
	is displayed on the status line, and pressing
	the	ESC	key will return the cursor	to	its
	original position.

.ns
.dxq ^QL	repLace string
^QL repLace string	Prompts	for a search string as in the "find"
	command, and then prompts for a second string
	which	is	to replace the next occurrence	in
	the	text	buffer	of a string	matching	the
	search string.	It first performs a search in
	the	same	manner	as	the	"find"	command,
	producing the same "NOT FOUND" message if the
	string	is	not found.	If a match ^Uis^U	found,
	the	message "Replace? (y/n)" is displayed on
	the	status line, and the cursor is placed on
	the first character of the found string.	(If
	the	editor	is operating without a	"gotoxy"
	module,	the	cursor	will be on	the	status
	line.)	At this point, if "y" or "Y" or	"^Y"
	is	typed,	the found string will be	deleted
	and	replaced	with the	replacement	string,
	otherwise	the	replace is cancelled and	the
.ns
	cursor	is	left on the found	string.	This
	command	can	be used to delete a	string	by
	providing	an	"empty"	(RETURN	only)
	replacement string.

.dxq ^QA	Again: repeat last find/replace
^QA	Again
Repeats	the	last	"find"	or	"replace"
	operation	without	re-prompting	for	the
	search/replacement	strings.	The same	error
	messages	may	result,	and	confirmation	is
	requested	before	any	replacement	is
	performed.

.dxq ^QY	Delete line right
^QY	delete line	Deletes all characters in the current line to
	right
the right of the cursor.

.ns
.dxq ^QO	Overtype mode on/off
^QO	Overtype	Turns OVERTYPE mode on if currently in INSERT
	on/off		mode;	turns	INSERT mode on if currently	in
	OVERTYPE mode.
.bp
	^U2.3 ^B Block Commands^U
.dxc 2.3	^B Block Commands
.dxi ^B prefix
.dxi block operations
.dxi block marks

	The	^B prefix activates a set of commands for	manipulating
blocks	of	text.	To	perform a block	operation	it	is	first
necessary	to "mark" a block of characters by placing the	cursor
over the first and last characters and "marking" these characters
as	either "top" or "bottom".	When either the top or bottom of a
block	has been marked, but not the other end, the message "BLOCK
PARTLY	MARKED"	temporarily replaces the mode reminders	on	the
right	end of the status line, and when both ends of a block	are
marked,	the message "BLOCK MARKED" appears in the same area.

	It	is	not	possible	to	perform	normal	editing	(i.e.
inserting	or	deleting)	when	block markers are	set,	and	any
attempt	to	do	so	will result in an error	message.	This	is
because the markers are kept as offsets into the text buffer, and
these	offsets	would	be	altered	by	inserting	or	deleting
characters	in	the buffer. Normal operation can be	restored	by
carrying	through	the intended block operation, if it is a	type
which	results in the "unmarking" of the block, or by	explicitly
issuing an "Unmark" command.

.dxi BLOCK PARTLY MARKED
	It	is	possible to place the "top" and "bottom" markers	in
the wrong sequence in the text buffer ("bottom" above "top").	If
this	is done, the "BLOCK PARTLY MARKED" message will appear,	as
if	only one of the markers was set, and any attempt to execute a
block	operation will result in an error message.	The	condition
can	be	corrected by re-setting either one of the markers.	The
^QT	and ^QB commands can be used to verify the location of block
markers.

	Although	the "Insert from file" command is included in	the
^B	menu because of its similarity to other block operations,	it
does not require that a block be marked to operate.

.dxb ^BT	Mark Top of block
^BT	mark Top	"Marks"	the	current cursor location as	the
	beginning	of a block.	The status line	will
	show	either "BLOCK MARKED" or "BLOCK	PARTLY
	MARKED" depending on whether the other end of
	the	block	has been correctly	marked.	The
	editor	will not insert or delete text	while
	block markers are active.

.dxb ^BB	Mark Bottom of block
^BB	mark Bottom	"Marks"	the	current cursor location as	the
	end of a block, as described above.

.dxb ^BU	Unmark block
^BU	Unmark block	Removes	the	current	block	markers	and
	restores	normal	operation	of	insert	and
	delete functions.

.ns
.dxi copy block
.dxb ^BC	Copy block to cursor
^BC	Copy block	A	copy of the text block currently marked is
	inserted	in	the text buffer at the	current
	cursor	location,	leaving the original	text
	block	and its markers intact.	This	command
	is used to replicate a block of text at other
	locations	in	the buffer.	The	markers	are
.ns
	left intact so that the text may be copied to
	additional	locations	if	desired.	If	the
	block markers are no longer needed, they must
	be explicitly Unmarked.

.dxi move block
.dxb ^BM	Move block to cursor
^BM	Move block	The	text	block currently marked is	deleted
	from	its	original location and inserted	at
	the	current	cursor	position.	The	block
	markers are discarded.

.dxi delete block
.dxb ^BK	Kill block
^BK	Kill block	The	text	block currently marked is	deleted
	from	the	text buffer, and the	markers	are
	cancelled.

.dxi write block
.dxb ^BW	Write block to file
^BW	Write block	Prompts for a file name, attempts to create a
	to file	new	output	file with that name, and	copies
	the text in the currently marked block to the
	output	file.	The file is then closed.	The
	original	text is left unaltered, and remains
	marked.

.dxi insert file
.dxb ^BI	Insert file at cursor
^BI	Insert from	Prompts for a file name, attempts to open the
	file
file for input, and reads the contents of the
	file	into the text buffer, inserting at	the
	current	cursor location.	If the contents of
	the file will not fit in the space available,
	an error message is printed and the operation
	aborted.
