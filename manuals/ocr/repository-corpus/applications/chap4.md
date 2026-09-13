# CHAP4

> Source: `apps/dynastar/DYNAS23 - DynaStar Word Processor - Source Code and Build Files.zip!DYNAS23.DSK!CHAP4.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.bp
	^U4.0 THE "FILES" MENU^U
.dxc 4.0	The "Files" Menu
.dxi FILES menu

	The	"files"	menu should perhaps have been discussed	first
instead of last since it is the first menu you see when you enter
DynaStar.	It	is, however, also the last menu you use when	you
are	finished editing a file, and you must return to it from	the
main	editing	menu	by typing ^N ("doNe").	It	is	tempting	to
regard	it as another "prefix" menu with the "prefix" ^N, but	it
is	not	really a true prefix menu, since you	must	deliberately
execute	commands	to	get OFF it again.	It consists	mainly	of
utility commands such as specifying a new file to edit, moving on
to	the	next section of a file, and cleaning up at the end of	a
session.	The	"files" menu is the only part of	DynaStar	where
there	is	a	noticeable difference	between	the	OS9	and	FLEX
versions.

.dxi file name
.dxf N	edit New file
N	edit New file	This command is used to establish the name of
	a	file to be edited, and initiate editing of
	that file.	It prompts for the name of a file
	on	the status line, and attempts to open	an
	existing	file by that name from the	current
	working directory.	If the open is successful
	it	reads text into the edit buffer until	it
	is	approximately 5/6 full or end-of-file	is
	reached,	and	then enters the	main	editing
	menu	with the cursor on the first	character
	in	the file.	The file name is displayed	on
	the	status	line	as	a	reminder	to	the
	operator.	If	the	open	operation	is
	unsuccessful,	DynaStar assumes that you want
	to	create	a new file, and sends you to	the
	main	editing menu with an empty buffer.	In
	both	cases,	it creates an output	"SCRATCH"
	file	to	contain the fruits of your	editing
	efforts	until you decide whether you want to
	keep or discard what you have done.

.dxf O	edit Old file
O	edit Old file	This	command is similar to the "N"	command,
	except	that	the desired file	must	already
	exist for the command to be successful.

.dxi write file
.dxf W	Write edit buffer & update file
W	Write file	This	command	is used to tell DynaStar	that
	you	are	finished with the current file	you
	are working on and would like to Write it out
	to	your directory but would like to stay	in
	the	editor so you can work on another	file.
	If	the current file is a new one, it	simply
	writes out the contents of the text buffer to
	the	SCRATCH file, closes it, and renames	it
	to	the	name you specified on the	last	"N"
	command.	If	you were editing	an	existing
	file,	it	writes	out the	contents	of	the
	buffer	to	the	SCRATCH	file,	copies	any
	unprocessed	part	of	the original	file	to
	"SCRATCH", deletes your old file, and renames
	"SCRATCH"	as above.	It then clears the text
	buffer and waits for a new command.

.ns
	If	an	"output	file"	error	arises	during
	operation	of this or the "More" command, the
	SCRATCH	file	will	be in	an	indeterminate
	state, and it would be wise to abandon it and
	return	to the original file.	The error	may
	have	resulted	from a disk overflow, and	it
	might	be possible to remedy the situation by
	deleting	unneeded	files	using	the	Shell
	command (OS9 version only).	However, it will
	not	be	possible to repeat the "W"	command,
	and	the	only way of recovering the text	in
	the	text buffer is to use the write	command
	from the ^B block menu.

.dxi terminate editor
.dxf X	eXit editor (Writes if file active)
.dxi exit
X	write and eXit This	command	performs the same function	as
	the	Write	command, except that when	it	is
	finished	it	exits to the	operating	system
	instead	of remaining in the editor.	It	can
	also	be	used	when	no file	is	active	to
	terminate	the	editor	and	exit	to	the
	operating system.

.dxi abandon file
.dxf A	Abandon edit buffer without changing file
A	Abandon file	This	command	is used when you	have	really
	fouled	up	your edit and want to go back	to
	where	you were before you started.	It first
	prompts	you to make sure you are really sure
	you	want to throw away all the work you have
	just	done.	If the answer is "Y"	(yes)	it
	deletes	the SCRATCH file and clears the edit
	buffer.	If you were editing an old file you
	will	still have it the way it was before you
	started,	and if you were creating a new file
	it will be gone.

.dxf E	reEnter editing mode
E	re-Enter	This	command	is used to re-enter	the	main
	editing	menu to continue an editing	session
	if	you have temporarily entered the	"files"
	menu	to	do some utility operation	such	as
	change	the "help" state or examine or	clean
	up	some files.	It can also be used to enter
	the	edit	mode	when	no	file	has	been
	established	to	experiment or to do a	short
	item	which	you intend to print	right	away
	directly from the editor.	In this situation,
	if you decide you want to save your text, you
	can	use the write command from the ^B	block
	menu.

.cp 2
.dxi directory
.dxi file directory
.dxf D	Directory
D	Directory	Displays	the	names	of the	files	in	your
	current disk directory.

.ns
.dxi menu suppression
.dxi help mode
.dxf H	Help on/off
H	Help on/off	Turns	HELP mode on or off.	When HELP is ON,
	menus	are displayed at the top of the screen
	to	tell	you what commands are available	to
	you at all times.	When HELP is OFF, all menu
	displays	are	suppressed except the	"files"
	menu,	so	that	you will have most	of	your
	screen	area	available for editing.	H is	a
	toggle command that alternately turns HELP ON
	and	OFF	if you execute it repeatedly.	You
	get	no	indication of the state of the	help
	flag except the presence or absence of menus.
	HELP defaults to ON.

.dxi shell command
.dxf S	execute Shell command
S	Shell command	This powerful (and dangerous) command prompts
	(OS9 only)	you	for	a one-line shell command	and	then
	executes	it, returning to the editor when it
	is	finished.	Any edit currently in progress
	is	undisturbed.	It is possible to	execute
	the	shell command as a concurrent process by
	ending	the	command line with	an	ampersand
	("&").	This is especially useful if you want
	to	make	a listing of a file you	have	just
	finished	editing while you continue	editing
	another.	It is also possible to temporarily
	exit	from DynaStar and enter an	interactive
	session	with	shell by answering the	prompt
	with an empty command line.	This will result
	in	the	standard system prompt and	you	can
	then use any commands you like provided there
	is	enough	free memory available to	execute
	them.	When you want to return to your	edit
	session,	answer	an	"OS9:" prompt	with	an
	end-of-file character (normally ESC).

	It	is	possible to use the Shell command	to
	reinitiate	DynaStar	to edit a	second	file
	while	you are still in the middle of an edit
	session.	DynaStar	will	create	a	unique
	SCRATCH	file for the new session because the
	new	incarnation will have a new process	id.
	When	the	second	invocation	of	DynaStar
	terminates,	you	will	be returned	to	your
	original	session with everything , including
	the cursor position, the way you left it.

	When	executing	shell	commands	from	the
	editor,	there are several things you	should
	be	^Uextremely^U	careful	about.	It	is	very
	important	that	you do not tamper	with	the
	SCRATCH	file if one is active, and that	you
	do	not	alter any file which you are in	the
	middle	of	editing.	It would also	be	very
	dangerous	to	remove	or	swap	the	disk
	containing	your	working	directory,	since
	there	are	probably	files open on	it,	and
	indescribable	damage	could result to	these
.cp 2
	files or to other files if you re-entered the
	editor with the wrong disk mounted.

.cp 6
	The	DynaForm formatting program should	not
	be	run as a concurrent task if the	document
	to	be	printed	contains	operator	prompts.
	Such	prompts	would	interfere	with	proper
	screen	updating	if	an	edit	is	also	in
	progress.

.ns
.dxi FLEX command
.dxf F	execute FLEX command
F	FLEX command	This ^Uvery dangerous^U command prompts you for a
	(FLEX only)	one-line	FLEX command and then executes	it,
	returning	to	DynaStar when it is	finished.
	This	command is disabled when a file is open
	for	editing.	It	should be	used	only	to
	execute	standard FLEX commands which execute
	completely	from the "command" area at $C100.
	^UExecuting	any command which loads in or uses
	the	"user"	RAM area could	have	disastrous
	results.^U	This	command will be most	useful
	for	doing	minor housekeeping tasks such	as
	deleting or renaming a file.

.ns
.dxi change working directory
.dxf C	Change working directory
C	Change		This	command	prompts you for a new	working
	directory	directory	name,	and then re-assigns	it	as
	(OS9 only)	your	current	directory for the duration	of
	your edit session.	You should not do this in
.ns
	the middle of a file edit, because the editor
	would	lose track of its files.	Note that it
	is	^Unot^U possible to use the Shell command	to
	change the directory.

.dxf M	More: get next file section
M	More
This command is used when you have run out of
	space	in the edit buffer or want to move	on
	to	a new section of the file you are working
	on	which	has	not yet been	read	into	the
	buffer.	It writes out all of the text buffer
	up	to but not including the line the	cursor
	is	on and then reads in as much more of your
	old	file	as	is	possible,	setting	aside
	approximately 1/6 of the buffer to leave room
	to insert text from the keyboard.	This makes
	it	possible	to	edit very	large	files	in
	sections.	Note that with both this	command
	and	the New command it is possible that	the
	last	line in the edit buffer might not	have
	been	completely	read	in, and	it	is	wise
	in this situation to refrain from editing the
	incomplete	line until it has been completely
	read in by the next More command.

.ns
.dxf P	Print edit buffer
.dxi print edit buffer
P	Print buffer	This	command	invokes	the	DynaForm	print
	(OS9 only)	formatter	to print the contents of the	edit
	buffer.	It requires that you have DynaForm,
	and	it is implemented using a "pipe", so	it
	will	only	work on OS9 systems with	a	pipe
	processor.	It is most useful to do a	quick
	proof	of	a	short	document	or	for	the
	production	of	letters without bothering	to
	save	them	on disk first.	The	"P"	command
	should	not	be	used if the	document	being
	printed	contains	DynaForm	"dot"	commands
	requiring	an operator response.	Note that a
	document	can	also	be	printed	by	calling
	DynaForm via the Shell command, provided that
	the	document	has first been saved on	disk,
	and	the	above restriction would	not	apply
	then.
	
.cp 3
.dxf ESC Enter/Leave macro learn mode
.dxi macro learn
ESC	macro learn	Typing	ESC	from	the	"files"	menu	enters
	"macro	learn" mode.	This is described fully
	in Chapter 3: ^UKeyboard Macros^U.

.cp 8
.dxf L	List current macros
.dxi list macros
L	List macros	The	"L" command is used to display a list of
	currently defined keyboard macros, or to list
	the	contents of a particular macro.	When	L
	is typed, a prompt is displayed on the status
	line.	To display a particular macro, answer
	by	typing the appropriate control character.
	To	display	a	list	of	active	macro
	definitions, type "?".
