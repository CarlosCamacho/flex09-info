# GUIDE

> Source: `misc/archive-series/disk/DISK18 - FLEX Archive Disk - Source Code and Build Files - Includes C09, SAMPLE, SLIB.zip!DISK18.DSK!GUIDE.MAN`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

"- 1 -


	_B_a_s_i_c _t_e_r_m_s


The terms, mode, command, special character, prompt line,
	cursor, the current line, and the buffer are used
	extensively in this documentation.	You will learn about the
	screen editor more easily if you become familiar with these
	terms.	Let's look at each in turn.


The screen editor is comprised of several _m_o_d_e_s.	You can
	switch between modes, but the editor can't be in two modes
	at the same time.	The editor behaves differently in each
	mode, so you use each mode to do a particular type of
	editing.


There are three modes: edit mode, command mode and insert
	mode.	You use edit mode for making small changes in many
	different lines.	Command mode is used for making larger
	(hence potentially more dangerous) changes to the whole file
	you are editing.	You must be in command mode to do anything
	that will change files on the disk.	You use insert mode for
	making a series of insertions into the text.	First drafts
	are often entered in this mode.


You use _c_o_m_m_a_n_d_s to make things happen in each mode.
	Which commands you can use depends on what mode you are in.
	Do not confuse the terms "commands" and "command mode".
	Every mode has a set of commands which you can use in that
	mode.	Command mode has its own set of commands.


_S_p_e_c_i_a_l _c_h_a_r_a_c_t_e_r_s are one-letter commands.	Special
	characters must be control keys, so you can use these
	commands in places where the editor might not otherwise
	expect a command.


The _p_r_o_m_p_t _l_i_n_e is the top line of the screen.	It tells
	you things like what line you are editing and what mode you
	are in.	If you get confused about what mode you are in you
	can always glance at the prompt line and get your bearings.


Several edit-mode commands consist of two or more
	letters.	These edit-mode commands are called _e_x_t_e_n_d_e_d
	_c_o_m_m_a_n_d_s.	After you type the first letter of such a
	command, but before you type the last letter, the prompt
	line will indicate that you must type one more letter to
	finish the extended command.	For example, after you type an
	"s" to enter the edit-mode search command the prompt line's
	mode field will contain


The _c_u_r_s_o_r is a distinctive character on the screen.	On
	most video terminals this marker is a character shown with
	reverse video.	In command mode you always type commands on


	"- 2 -


	the bottom line so the cursor is always on the bottom line.
	In edit mode and insert mode the cursor is always on the
	current line.


The _c_u_r_r_e_n_t _l_i_n_e is the only line you can edit.	In
	command mode the current line may not be shown on the
	screen, but in edit and insert modes the current line is
	shown and it contains the cursor.	If you want to make a
	change to a line you must first move the cursor to that
	line.


The _b_u_f_f_e_r is a part of the computer's storage which
	holds the file you are editing.	In order to edit a disk
	file, you must first read the disk file into the buffer
	using the load command.	As you edit the file the changes
	you make are made only to the buffer, not to your disk file.
	Before you end your editing session you must copy the buffer
	back to a disk file using the save or resave commands.	The
	editor keeps track of whether you have done this; it won't
	let you forget to save your work.


The _w_i_n_d_o_w is a part of the screen which shows a portion
	of the buffer.	In edit and insert modes the window fills
	all of the screen except the prompt line.	You can think of
	the file as a scroll of parchment which unwinds under the
	window as you move the cursor.	The window is not shown in
	command mode.


Now let's look more closely at the editor's commands.
	We'll start with special characters, which are commands that
	may be used in either insert or edit modes.	Then we will
	look at other commands which are unique to a particular
	mode.

	_S_p_e_c_i_a_l _C_h_a_r_a_c_t_e_r_s


Special characters act the same in all modes.	Special
	characters must be control characters so that the editor may
	always distinguish special characters from regular text.


There are 14 special characters; all 14 may be used in
	either edit mode or insert mode.	Only a few may be used in
	command mode.


You can use the configuration program to choose which
	keys on your keyboard to use for each special character.
	Thus, I won't be able to be specific about what key on your
	keyboard you will actually hit in order to type, for
	instance, the down key.	I'll often refer to special
	characters as special keys; for example, I'll call the down
	special character the down key.


	"- 3 -


The _l_e_f_t _a_n_d _r_i_g_h_t _k_e_y_s just move the cursor.	They do
	not cause changes to lines.	These keys are always
	"anchored" to the current line; you can't move off the
	current line by using these keys.	If you hit the right key
	while the cursor is at the right margin, nothing will
	happen.	Similarly, nothing will happen if you hit the left
	key while the cursor is at the left margin.


The _u_p _a_n_d _d_o_w_n _k_e_y_s move the cursor up and down on the
	screen.	You can't move the cursor above line 1 of the file,
	nor can you move the cursor below the last line of the file.
	Both these keys also switch the editor to edit mode.


The _i_n_s_e_r_t _u_p _k_e_y inserts a blank line above the current
	line while the _i_n_s_e_r_t _d_o_w_n _k_e_y inserts a blank line below
	the current line.	Both these keys also switch the editor to
	insert mode.


The _d_e_l_e_t_e _c_h_a_r_a_c_t_e_r _k_e_y deletes the character to the
	left of the cursor.	This key is anchored to the current
	line; nothing is deleted if the cursor is at the left
	margin.	The _d_e_l_e_t_e _l_i_n_e _k_e_y deletes the entire line on
	which the cursor rests.


The _u_n_d_o _k_e_y always undoes whatever editing you have done
	on the current line since the last time the cursor came to
	the current line.


The _i_n_s_e_r_t _k_e_y switches the editor to insert mode.
	Similarly, the _c_o_m_m_a_n_d _k_e_y switches the editor to command
	mode and the _e_d_i_t _k_e_y switches the editor to edit mode.


The _s_p_l_i_t _k_e_y splits the current line into two pieces.
	Everything to the left of the cursor stays right where it
	is.	All other characters are moved from the current line to
	a new line which is created below the original line.


The _j_o_i_n _k_e_y is the opposite of the split key; it
	combines two lines into one line.	The join key appends the
	current line to the line above it, then deletes the lower
	line.

	_E_d_i_t _M_o_d_e


Edit-mode commands are normal letters; you don't need to
	use special keys.	This speeds typing.	You can, however,
	use the special keys in edit mode if you want to.


Besides the special characters you can use the following
	one-letter edit-mode commands: space, b, c, d, e, g, i, k,
	s, u, and x.	These letters stand for begin, command, down,


	"- 4 -


	end, go, insert, kill, search, up, and eXchange.	Note that
	all these commands may be typed either in upper case or in
	lower case.	Letters which are neither edit-mode commands
	nor special keys are simply ignored.	The following
	paragraphs explain what these commands do in greater detail.


The _s_p_a_c_e _b_a_r moves the cursor right one column.	Nothing
	happens if the cursor is already on the rightmost column of
	the screen.


The _b _c_o_m_m_a_n_d puts the cursor at the beginning (left hand
	margin) of the line.


The _c _c_o_m_m_a_n_d switches the editor to command mode.


The _d _c_o_m_m_a_n_d causes the cursor to move down rapidly.
	The cursor keeps moving until it reaches the last line of
	the file or until you type any key.


The _e _c_o_m_m_a_n_d moves the cursor to the right end of the
	line.


The _i _c_o_m_m_a_n_d switches the editor to insert mode.


The _g _c_o_m_m_a_n_d moves the cursor to another line.	The g
	command is an extended command; after you type the g the
	cursor will move to the prompt line.	The prompt line will
	show 'edit: goto:' Now type a line number followed by a
	carriage return.	The cursor will move to the line whose
	number you typed.	If you do not type a valid number the g
	command does nothing.	Leading blanks or minus signs are not
	allowed.	The cursor will move to the last line of the
	buffer if the number you type is larger than the number of
	lines in the buffer.


The _k _c_o_m_m_a_n_d is a two-letter command.	The second letter
	you type (the first character after the k) is a search
	character.	The k command deletes from the cursor up to but
	not including the next occurence of the search character to
	the right of the cursor.	Everything from the cursor to the
	end of the line is deleted if the search character does not
	appear to the right of the cursor on the current line.
	After you hit the k and before you hit the search character
	the prompt line will show If you wish to cancel the k
	command you can hit any control character.	The k command
	will be stopped and no deletion will be made.


The _s _c_o_m_m_a_n_d is another two-letter command.	The second
	character you type (the first character after the s) is a
	search character.	The s command moves the cursor to the
	next occurence of the search character which appears to the


	"- 5 -


	right of the cursor.	The cursor moves to the end of the
	current line if the search character does not occur to the
	right of the cursor.	After you hit the s and before you hit
	the search character the prompt line will show


The _u _c_o_m_m_a_n_d moves the cursor up rapidly.	The cursor
	keeps moving until it reaches the first line of the file or
	until you hit any key.


The _x _c_o_m_m_a_n_d is another two-letter command.	The second
	character you type replaces the character under the cursor.
	The prompt line will show 'edit: eXchange' until you hit the
	second character.	If you hit a control character no change
	is made and the x command is cancelled.

	_i_n_s_e_r_t _m_o_d_e


Use insert mode to insert many lines of text at once.	In
	insert mode anything you type (except special keys) will be
	inserted into the text to the left of the cursor.	You may
	use special keys in insert mode exactly as in edit mode.

	_c_o_m_m_a_n_d _m_o_d_e


You use command mode to do potentially dangerous things
	like making multiple changes to the buffer or like updating
	your files.	For this reason, all command-mode commands
	require you to type several characters with a carriage
	return at the end.


The editor starts off in command mode after you invoke it
	from your operating system.


You may use either the edit key or the insert key to exit
	from command mode.	You can also use the g command-mode
	command or the find command-mode command to leave command
	mode.	When the editor leaves command mode the screen is
	redrawn to show the current line.


The cursor is on the bottom line of the screen whenever
	the editor is in command mode.	This line is called the
	command line.	As you type commands, what you type will be
	shown on this line.	Use either the delete character key or
	the right key to delete the last character you typed.	Use
	the undo key to delete the entire command line.


Several command-mode commands take arguments.	There are
	three types of arguments: range arguments, file names and
	line numbers.	In the description below, range arguments
	will be denoted by <line range>, file name arguments will be
	denoted by <filename> and line numbers will be denoted by


	"- 6 -


	<n>.


Range arguments denote the range of lines in the buffer
	for which a command will take effect.	For example,

	list 25 50

	means list all lines from line 25 to line 50 inclusive,

	list

	means list all the lines of the buffer, and

	list 300

	means list line 300 and all following lines.	Range
	arguments, if present, must be nonnegative integers.	If two
	numbers are entered, the first must be no larger than the
	second.	0 is equivalent to 1.	A number larger than the
	largest line number is equivalent to the largest line
	number.


Filename arguments are the name of a file to be used in a
	command.	For example,

	load myfile.doc

	causes the file myfile.doc to replace whatever is in the
	buffer.	Note that no quotation marks are used around
	filename arguments.	Filename arguments optionally may be
	preceded by disk drive names.	For example,

	load b:myfile.doc

	loads the buffer from the file myfile.doc which must be
	found on drive b.


The editor protects you from destroying the buffer
	unintentionally.	If a command would cause the buffer to be
	erased and you have not already saved the buffer on a disk
	file the editor will ask:

	buffer not saved.	proceed ?

	If you type y or Y the command will be done and the buffer
	will be erased.	If you type anything else no change will be
	made to the buffer and the message 'cancelled' will be
	printed on the screen.	Note however, that the delete
	command does _n_o_t protect you in this way.	Use the delete
	command with caution.


	"- 7 -


You may interrupt or cancel the change, find, list and
	search commands.	If you type any character _e_x_c_e_p_t a blank
	the command will be cancelled immediately.	If you type a
	blank the command will be temporarily suspended.	Type
	another blank to continue or any other character to cancel
	the command.


The following paragraphs discuss all the command-mode
	commands.

	append <filename>


The append command inserts the named file into the buffer
	after the current line.	In other words, the position of the
	cursor affects where the file will be inserted.	This
	command adds to the buffer; it does not delete what is
	already there.

	change <line range>


The change command searches all lines in <line range> for
	an instance of a search mask.	If the search mask is found
	it is replaced by the change mask.	After you type	change
	<line range> the command will ask:

	search mask ?

	At this point type the pattern you are searching for,
	followed by a carriage return.	Then you will be asked:

	change mask ?

	Now you type the pattern you want the search mask to be
	replaced by.	For example,

	change 100 300
	search mask ?	abc
	change mask ?	xyz

	will change	abc to xyz in all lines from 100 to 300.	Thus,
	the line:

	know your abc's.

	would be changed into:

	know your xyz's.

	Only the first instance of abc on each line would be
	changed.	The line:


	"- 8 -


	know your abc's.	The abc's are very important.

	would be changed to:

	know your xyz's.	The abc's are very important.


Question marks may be used in both the search mask and
	the change mask.	A question mark in the search mask matches
	any character at all.	The search mask:

	12?34

	will match any string of five characters which starts with
	12 and ends with 34.	A question mark in the change mask
	matches the letter that matched the corresponding question
	mark in the search mask.	For example:

	change 99 109
	search mask ?	trailing?
	change mask ?	?leading

	would change the line:

	trailingA

	into the line:

	Aleading

	The question mark in the search mask matched the 'A', so the
	quesion mark in the change mask became an 'A'.	You can use
	as many question marks as you like, but there must be at
	least as many question marks in the search mask as there are
	in the change mask.	As another example:

	change
	search mask ?	wh??e
	change mask ?	fath??

	would change the line:

	where is here.

	to the line:

	father is here.


If the first character of the search mask is an up arrow
	(^), the search mask is anchored to the start of the line.
	In other words, the search mask will only match patterns
	which start at column 0.	For example, the search mask


	"- 9 -


	^abc

	will only match lines that contain abc in columns 0, 1 and
	2.	Anchoring the search mask dramatically increases the
	speed of the change command.


An up arrow which is not the first character of the
	search mask is treated as a regular up arrow.	An up arrow
	in the change mask never has any special significance.

	clear


The clear command erases the entire buffer.	If you have
	not saved the buffer you will be asked whether you want to
	proceed.

	delete <line range>


The delete command erases all lines in the line range.
	Care must be used with this command because no check is made
	to see whether the buffer has been saved.

	dos


The dos command exits the editor and returns to the
	operating system.	If the buffer has not been saved, this
	command makes sure that you really wanted to exit without
	saving the buffer.

	find


The find command searches for the next occurence of a
	search mask.	If the search mask is found, the editor
	switches to edit mode and the cursor is set to the start of
	the pattern.	If the search mask is not found the editor
	remains in command mode.


You specify the search mask exactly as in the change
	command.

	g <n>


The g command exits to edit mode.	Line <n> is drawn on
	the top line of the window and becomes the current line.
	Typing g without the <n> is the same as typing the edit key.

	list <line range>


The list command lists all lines in the line range to the
	current list device, i.e., the printer.	Lines are formatted
	just as they are on the screen, but the length of the print


	"- 10 -


	line, not the width of the screen, determines where lines
	will be truncated if they are too long.	Listing may be
	stopped at any time by typing any key.

	load <filename>


The load command replaces whatever is in the buffer by
	the contents of the named file.	If the buffer has not been
	saved on disk when the load command is given, the editor
	makes sure you really wanted to erase the previous contents
	of the buffer.	If the named file exists, then <filename>
	becomes "the current file" and <filename> is shown on the
	prompt line.	This file becomes the file used in the save
	and resave commands.	The current file name does not change
	if the named file does not exist.


After the file has been completely read from the disk
	into the buffer the screen is redrawn to show the first
	several lines of file.

	name <filename>


The name command sets the name of the file that will be
	used in the save and resave commands.	This command is not
	often used because the load command is the usual way to set
	this file's name.	The name command does not cause any
	action immediately; it simply affects which file the save
	and resave commands will use.

	resave


The resave command saves the entire buffer in the current
	file.	The current file is set by either the load or name
	commands and always appears on the prompt line.	Note that
	this command does _n_o_t take any arguments.	All arguments to
	this command are ignored.


The resave command requires that the current file already
	exist; if the file does not exist a warning is printed and
	nothing happens.

	save


The save command works just like the resave command
	except that the file must _n_o_t exist for the command to work.
	If the file does exist a warning is printed and nothing
	happens.	This protection insures that files can not be
	overwritten inadvertantly.

	search <line range>


	"- 11 -


The search command prints on the screen all lines in
	<line range> which contain an instance of the search mask.
	As soon as the search command is typed the editor will ask:

	search mask ?

	Now type the search mask.	Just as in the change command, a
	question mark matches any character and a leading up arrow
	anchors the search mask to the start of the line.

	tabs <n>


The tabs command controls how lines are listed on the
	screen and on the printer.	Specifically, the tabs command
	sets tab stops every <n> columns.	<n> must be an integer.
	tabs 0 is equivalent to tabs 1.


sjt:
