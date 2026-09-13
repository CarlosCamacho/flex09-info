# CHAP2B

> Source: `apps/dynastar/DYNAS23 - DynaStar Word Processor - Source Code and Build Files.zip!DYNAS23.DSK!CHAP2B.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.bp
	^U2.4 ^K Formatting and Tab Commands^U
.dxc 2.4	^K Formatting and Tab Commands
.dxi ^K prefix
.dxi formatting

	The	^K	menu	contains commands relating to	the	automatic
formatting of text and the setting and clearing of tabs.

.dxk ^KC	Center current line
.dxi centering
^KC	Center line	Centers	the printable characters of the line
	containing	the	cursor between the left	and
	right	margins, leaving the cursor at the end
	of	the	centered	string.	Note	that	the
	presence	of "print control" characters in	a
	line	will effect the centering of the	line:
	if	you wish to place control characters in a
	centered	line,	center	it	first	and	^Uthen^U
	insert the control characters.

.dxk ^KW	Word Wrap on/off
.dxi word wrap
^KW	Word Wrap	Turns word wrap ON if it is OFF, or OFF if it
	on/off		is	ON.	If word wrap is ON, the word	"WRAP"
	appears	on the status line.	When word	wrap
	is	active,	an	attempt	to	type	past	the
	current	right	margin	(with	the	cursor
	"pushing"	a single carriage return ahead	of
	it) will result in an automatic movement to a
	new	line.	If the word being typed does	not
	fit	on the original line, the entire word is
	moved	down	to the next line to ensure	that
	the	original	line	will	fit	within	the
	margins.	If	the wrap margin has	been	set
	(see	below) to the right of the left margin,
	the new line is automatically indented to the
	wrap margin, otherwise the new line starts at
	the	left	margin.	Word	Wrap	permits	the
	typing	of entire paragraphs without the	use
	of	the	RETURN key, while ensuring that	the
	text	will	fit	within	the	currently	set
	margins.	Turning Wrap OFF also turns Justify
	OFF (see below).

.dxk ^KJ	Justify mode on/off
.dxi justify
^KJ	Justify	Turns	Justify mode ON if it is OFF, and	OFF
	on/off		if	it is ON.	Turning Justify ON also	turns
	Word	Wrap ON, and shows the words	"JUSTIFY"
	and	"WRAP" on the status line.	When Justify
	mode	is	active,	automatic	word	wrap
	operations	will	also pad lines	with	extra
	spaces	between	the words so that the	lines
	will	always end exactly at the current right
	margin,	producing	a "clean" rather	than	a
	"ragged"	right	edge.	In	performing	the
	expansion of lines, spaces are never inserted
.ns
	to	the left of the wrap margin, so that	the
	edge	under	the	wrap margin	will	also	be
	uniform.	This	feature was used to	produce
	the	paragraph	you	are	now	reading.	The
	presence	of "print control" characters in	a
	justified	line will make the line appear too
	long	on the screen, but the line will print
	correctly,	since	DynaStar	correctly
	compensates for their presence.

.ns
.dxk ^KD	auto-inDent mode on/off
.dxi indent, auto
^KD	inDent on/off	Turns	auto-indent	mode	ON or	OFF.	Auto-
	indent	mode is designed as a convenience for
	programmers	writing	code	in	structured
	languages	such as Pascal.	When indent	mode
	is	ON,	typing a carriage return	in	INSERT
	mode	will automatically indent the next line
	to	the	position	of	the	first	non-blank
	character	on the line above, preserving	the
	indentation	of	structured	code.	At	this
	point, the indentation can be increased using
.ns
	the	space	or tab keys, decreased using	the
	DEL key, or maintained by simply typing away.
	Turning indent mode ON turns WRAP and JUSTIFY
	OFF.

.ns
.dxi adjust paragraph
.dxk ^KA	Adjust (reform) paragraph to margins
^KA	Adjust		Readjusts	the text from the cursor	location
	paragraph	to	the end of the next paragraph to	conform
	to	the currently set margins.	This	process
	involves	the stripping of existing	carriage
	returns and excess blanks which may have been
	inserted	by	a previous word wrap or	margin
	justification	operation.	When	stripping
	blanks,	an attempt is made to leave at least
	one	blank between words and two blanks after
	periods,	question	marks,	and	exclamation
	marks.	A	word	wrap	operation	is	then
	performed	to	make the text conform	to	the
	current	margins,	including	automatic
	indentation	to the wrap margin.	If	JUSTIFY
	mode	is	ON, the text is also	justified	to
	produce a clean edge at the right margin.	If
	there	is text to the left of the wrap margin
	on	the	first	line	of	the	section	being
	readjusted,	it is not altered.	However, all
	text	on lines below the first is reformed by
	the	operation, regardless of its position on
	a	line.	The operation is stopped at the end
	of	the current paragraph, as defined for the
	^QP	command,	and the cursor is left on	the
	first	character of the first non-empty	line
	past	this	point.	This	makes	it	very
	convenient	to repeat the Adjust operation on
	the next paragraph in sequence.

.cp 5
.dxk ^K TAB Set tab stop
.dxk ^KI	Set tab stop
.dxi tab set
.dxi set tab
^K TAB
or
^KI	set tab	Sets a tab in the column corresponding to the
	current	cursor	position.	This is	visually
	indicated	by placing an exclamation mark	in
	the	ruler	line	at the position	above	the
	cursor.	If	the	wrap	margin	is	at	this
	location, it is converted to a tab.

.ns
.dxk ^K-	Clear tab stop
.dxk ^KM	reMove tab stop (same as ^K-)
.dxi tab clear
.dxi clear tab
^K-
or
^KM	reMove tab	Clears	the tab directly above the cursor	in
	the	ruler	line by replacing it with	a	"-"
	sign.	This	command	can also	be	used	to
	remove the wrap margin.

.ns
.dxk ^KV	Set wrap margin at cursor
.dxi wrap margin
^KV	set wrap	Sets	the wrap margin at the cursor column by
	margin		displaying	the letter "W" in the ruler	line
	directly	above	the	cursor.	Word	wrap
	operations	will	automatically	indent	new
	lines	to	this	margin.	Tab	operations
	consider	the wrap margin to be equivalent to
	a standard tab.

.ns
.dxk ^KR	set Right margin at cursor
.dxi right margin
^KR	set right	Defines the current right margin to be at the
	margin		column	corresponding to the cursor location,
	and	truncates	or extends the ruler line	as
	required.	If the ruler line is extended	by
	this	operation, standard tabs are	generated
	every	five columns (at columns 1, 6, 11, 16,
	etc.).	It is not possible to define a right
	margin	beyond the width of the screen.	The
	right margin setting is used only by the word
	wrap and margin justification operations.

.dxk ^KK	Kill all tabs
.dxi clear all tabs
^KK	Kill all tabs	Removes ALL tabs fom the ruler line.	If this
	is	done	accidentally,	the fastest	way	to
	regenerate standard tabs is to move the right
	margin	to	column one, and then	extend	the
	ruler	line by moving the margin back to	its
	original column.
.bp
	^U2.5 ^P Print Control Commands^U
.dxc 2.5	^P Print Control commands
.dxi print control characters
.dxi ^P prefix

	The	^P prefix is used to insert print control characters in
text,	and	to bring up a series of menus summarizing	the	"dot"
commands for the DynaForm print formatter.

	Typing a letter after the ^P prefix results in the insertion
of	a	special	character	pair	at	the	cursor	location.	The
character	pair consists of a special form of the character	"^",
followed	by	the capital of the letter typed.	The "^" is ^Unot^U	a
standard	"^" but is in fact a "^" with the high order (sign) bit
set to distinguish it from the ordinary form.	(It will generally
display	as	a standard "^".) The DynaForm print formatter	takes
special	action when this sequence is found in a file.	The pairs
"^D",	"^B",	and "^U" have special meaning described below;	any
other pair results in the sending of a standard control character
to	your	printer in the place of the pair.	This feature can	be
used to activate special features of certain printers such as the
Epson.

.dxp ^P.	Display "dot" command summary
.dxi dot commands
	As	with	the other prefix menus, typing a space after a	^P
will	abort the supplementary command and return you to the	main
editing	menu.	In	addition to this, however, typing	a	period
(".")	after a ^P will display special menus containing a summary
of the dot	commands for the DynaForm print formatter.	There are
approximately	5 of these special menus, and you can see them	in
turn	by typing additional periods, or return to the main editing
menu by typing any other character.

	The	following	^P sequences are interpreted by DynaForm	to
provide special effects at print time:

.dxp ^PB	Boldface on/off
.dxi boldface
^PB	Boldface	Turns ^UBoldface^U ON or OFF.	Any text between a
	on/off		pair	of	these sequences will be printed	in
	boldface.	The	method	of	producing	the
	boldface	effect on a printer will vary,	but
	in	general	it	results	in	multistriking,
	sometimes	with a small shift between	passes
	to	produce a heavy effect, depending on	the
	printer used.

.dxp ^PD	Double strike on/off
.dxi double strike
^PD	Double-strike	Turns	^UDouble-strike^U	ON	or OFF.	Any	text
	on/off		between	a	pair of these sequences	will	be
	printed	twice	(with	no	shift),	generally
	resulting	in	crisper type without the	bold
	effect caused by ^PB.

.dxp ^PU	Underline on/off
.dxi underline
^PU	Underline	Turns	^UUnderline^U	ON or OFF.	Text between	a
	on/off		pair	of these sequences will be	underlined.
	Only non-blank characters will be underlined.

.cp 5
	The	effect of any of the three above commands can span more
than	one line, remaining in effect until another sequence	turns
the feature off again.	The effects can also be combined: you can
underline	sections of boldface text, for instance, although only
the ^Utext^U will be boldface in this case, but not the underlining.

	You	will	notice	if	editing with JUSTIFY	ON	that	print
control characters will cause extension of lines containing them,
appearing	to	disrupt the justified right margin.	These	lines
will	print	correctly, however, because the	control	characters
have	"zero width" on a printer.	DynaStar automatically	adjusts
its formatting to compensate for the extra width used up by these
characters when displayed on a terminal.
