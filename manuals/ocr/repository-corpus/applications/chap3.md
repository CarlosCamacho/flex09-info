# CHAP3

> Source: `apps/dynastar/DYNAS23 - DynaStar Word Processor - Source Code and Build Files.zip!DYNAS23.DSK!CHAP3.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.bp
	^U3.0 KEYBOARD MACROS^U
.dxc 3.0	Keyboard Macros
.dxi macros

	DynaStar	contains a facility which permits the user to	re-
define	any	control	character	to	mean	virtually	any	other
character	or sequence of characters.	This permits the	complete
remapping	of the control functions on the main editing menu, and
it	permits	the	building of special complex	commands	such	as
global	search	and replace.	At a simpler level, macros	can	be
used	to	perform "boiler plate" operations such as	inserting	a
copyright notice with a single keystroke.

	Once	a	macro	has been assigned to	a	control	character,
typing	that control character will ^Ualways^U cause execution of the
macro	^Uregardless	of the context^U.	This will	sometimes	require
special	care.	As an example, suppose the control character	^Y
has been redefined as a macro:	you would then have to be careful
not	to answer a "y/n?" prompt with the CTRL key pressed, because
inadvertent	typing	of a ^Y would trigger the macro	instead	of
giving an affirmative response to the prompt.

	In	general, a macro is simply an expansion of the effect of
a	control key, sending a predefined string of characters to	the
editor	in the place of the keystroke invoking the macro.	If you
define	the ^L key to be a macro containing the character	string
"abc", then every time you subsequently type a ^L the editor will
act as if you had typed "abc".

	Macros are defined by entering "macro learn" mode, which can
be	done from both the "files" menu and the main editing menu	by
typing	ESC	(or	BRK on the Color Computer).	At this	time	the
message	"Macro learn" will appear on the status line.	The	next
character	you	type should be the control character you wish	to
define as a macro (or else another ESC to cancel macro learn mode
if	you got there by accident).	If you type a control character,
it	will	be echoed on the status line in the usual form used	on
menus:	as	a	capital letter preceded by a caret (^).	At	this
point you can now type in the characters which are to be the body
of	the	macro.	You can type virtually any	characters	into	a
macro,	including	other control characters, which will again	be
displayed in the standard "caret" form.	The only character which
cannot	be	part of a macro is the ESC character.	Typing an	ESC
terminates	a	macro definition, at which time it will	disappear
from	the	status	line.	The number of	characters	in	a	macro
definition	is	arbitrary, but the total number of characters	in
all of your macros combined cannot exceed 400.

.dxi display macros
	You	can view your macros from the "files" menu with the "L"
command.	This command asks you whether you want to see a list of
your	currently	defined macros (answer "?" for this option),	or
you	want	to see the ^Ucontents^U of a particular macro (answer	the
prompt with the key corresponding to the desired macro).	You can
.ns
also redefine any macro by simply defining it again; in this case
you should bear in mind that the previous definition space is not
actually	reclaimed,	and	if you do this too often in	a	single
session you will overflow the macro definition area.

	Macros	are	best	explained	with the aid	of	an	example.
Suppose	you	wanted to "move a command up" from one of the	two-
keystroke	menus	to the main menu:	A good example would be	the
"find/replace	Again"	command	(^QA),	since	there	are	many
occasions when it would be convenient to invoke this command with
a	single	keystroke.	The following	keystroke	sequence	would
assign the ^L key to this function:

	ESC ^L ^Q A ESC

	After	defining this macro, you can execute the ^QA	command
at	any	time	from	the main menu by	typing	^L.	Be	careful,
however,	about	typing	^L from other menus, because	you	might
cause	strange	results.	Macros	are dangerous	and	should	be
treated with respect.

	As a simpler example, let's just redefine one control key to
be	equivalent	to another.	We'll do something silly:	swap	the
meaning	of	the	^S and ^D keys so they move the cursor	in	the
opposite direction.	The macro definition sequences required are:

	ESC ^S ^D ESC
	ESC ^D ^S ESC

	The	result of the above definitions will probably be	total
confusion,	since these cursor movement commands will now work in
an	unnatural way, but the example serves to illustrate one	more
important	point:	macros	cannot invoke macros.	If	a	control
character	is contained in a macro, and that control character is
itself	a	macro,	this	fact is ignored and the	effect	of	the
control	character is defined by its original function as defined
in	this manual.	If you think about it, this is the only way	it
would	be possible to actually redefine the entire set of control
commands.

	There	are two control characters which have special meaning
within	macros.	The	first is ^U.	Whenever ^U	is	encountered
during	execution	of a macro, the editor accepts	^Uone	character^U
from	the	keyboard in the place of the ^U.	The	second	special
character	is	^\.	When a macro execution encounters a	^\,	the
macro	restarts	at the first character in the macro	definition.
It	is sort of like a GO TO statement, and in the same way as the
infamous	GO	TO	statement,	it is ^Uvery dangerous^U	and	must	be
used carefully.

.dxi global replace macros
	We	will	finish the discussion of macros with a	couple	of
useful	examples: two forms of a global search and replace macro.
The	first is a global replace command of the type that	searches
the	entire	edit	buffer	for a	particular	match	string,	and
replaces	each instance of the match string with something	else,
.ns
but subject to confirmation from the operator at each occurrence.
The macro definition is as follows:

	ESC ^U ^Q A ^U ^\ ESC

	To	use this macro you first execute a standard ^QL	replace
command so that the ^QA ("Again") command will repeat it.	Then,
instead	of using ^QA to repeat the replace, type ^U.	This	will
cause execution of a ^QA command, prompt for confirmation, accept
the user's response in place of the ^U imbedded in the macro, and
then	loop	back and do it again automatically.	This	brings	up
.dxi macro termination
another	question:	how do you stop a looping macro?	The	answer
is	that	a macro aborts whenever an error message is	generated,
which	will	happen	in	the above example as soon as the	search
reaches	the	end	of the edit buffer and causes	a	"NOT	FOUND"
message.	The other way to terminate a macro is to type ESC at a
point	in the macro where a ^U causes the editor to read from the
keyboard.	In the above example, you would answer the	"replace?
(y/n)"	prompt	with	"Y" to do the replace, "N"	to	reject	the
replace, or "ESC" to abort the macro.

	Macros	also	terminate when a cursor move out of	the	edit
buffer is attempted.

	The	last	example	is	a global	replace	^Uwithout^U	operator
confirmation.	The macro definition is:

	ESC ^O ^Q A Y ^\ ESC

	This macro is executed the same way as the previous example:
by	first	using	a	standard repLace	command	(^QL),	and	then
repeating	it automatically by typing ^O.	In this case the macro
executes	the ^QA ("Again") command as before, but ^Ualways^U gives a
"Y"	response	to the confirmation prompt, and then	repeats	the
process	until the end of the buffer is reached.	There is ^Uno way^U
to	terminate	this	macro	from the keyboard: it	must	run	its
course.

	Several	control	characters	have	deliberately	been	left
unassigned	in DynaStar to make keys available for use as macros:
these	are	^L, ^O, and ^U.	There are also	four	non-alphabetic
keys	which	can generate valid control characters	suitable	for
macro	use: ^\, ^], ^^, and ^_.	The character ^[ is not	useable
because	it	is	equivalent	to ESC, and ^M should	not	be	used
because	it	is	really a CR.	DEL is not actually	a	control
character and it cannot be used as a macro.

	As	a	final note, you will probably find macros tedious	to
use if "help" is enabled, because a lot of time will be wasted by
the	editor displaying menus for any prefix commands contained in
your	macros.	The	short answer to this complaint is	that	you
should	not	attempt	to	use macros	until	you	are	thoroughly
familiar	with	the operation of DynaStar, and by that	time	you
will probably be operating with help OFF anyway.
