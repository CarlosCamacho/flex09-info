# SUMMRY

> Source: `misc/archive-series/disk/DISK18 - FLEX Archive Disk - Source Code and Build Files - Includes C09, SAMPLE, SLIB.zip!DISK18.DSK!SUMMRY.MAN`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

"- 1 -


	_s_p_e_c_i_a_l _c_h_a_r_a_c_t_e_r_s


All special characters may be used in edit and insert
	modes, but only the command, edit, insert, undo and delete
	character keys may be used in command mode.	The function of
	each special character is given below:

	up key: (default is line feed)

	Move the cursor up one line unless the cursor is
	already at the top line of the file.	Enter edit
	mode.

	down key: (default is carriage return)

	Move the cursor down one line unless the cursor is
	already at the bottom line of the file.	Enter
	edit mode.

	right key: (default is control-r)

	Move the cursor right one character.

	left key: (default is back space)

	Move the cursor left one character.

	insert up key: (default is control-u)

	Insert a new line above the current line and enter
	insert mode.

	insert down key: (default is control-d)

	Insert a new line below the current line and enter
	insert mode.

	delete character key: (default is del)

	Delete the character to the left of the cursor.

	delete line key: (default is control-z)

	Delete the line on which the cursor rests.

	insert key: (default is control-n)

	Enter insert mode.

	command key: (default is escape)


	"- 2 -


	Enter command mode.

	edit key: (default is control-e)

	Enter edit mode.

	Undo key: (default is control-x)

	Undo any editing done since the cursor last came
	to the current line.

	Split key:	(default is control-s)

	Split the current line into two lines.

	Join key:	(default is control-p)

	Append the current line to the line above it.
	Then delete the lower line.

	_e_d_i_t _m_o_d_e


The following are the edit mode commands:

	<space>

	Move the cursor right one character.

	b	(beginning)

	Move the cursor to the beginning of the current
	line.

	c	(command)

	Enter command mode.

	d	(scroll down)

	Scroll the cursor down rapidly.	Hit any key to
	stop scrolling.

	e	(end)

	Move the cursor to the end of the line.

	g <line #>	(go to line)

	Move the cursor to the start of the indicated
	line.


	"- 3 -


	i	(insert)

	Enter insert mode.

	k <char>	(kill up to <char>)

	Delete from the cursor up to, but not including
	<char>.	Delete to the end of the line if <char>
	does not appear to the right of the cursor.	Do
	not delete anything if <char> is a special
	character.

	s <char>	(search for <char>)

	Move cursor to the next occurence of <char> to the
	right of the cursor.	Move cursor to the end of
	the current line if <char> does not appear to the
	right of the cursor.

	u	(scroll up)

	Scroll the cursor up rapidly.	Hit any key to
	stop.

	x <char>	(eXchange one character)

	If <char> is not a special character then <char>
	replaces the character under the cursor.

	anything else (ignored)

	If <char> is neither a special character nor an
	edit mode mode command it is completely ignored.

	_i_n_s_e_r_t _m_o_d_e


Use insert mode to enter multiple lines of text into the
	buffer.	All characters which are not special characters are
	simply inserted into the buffer.

	_c_o_m_m_a_n_d _m_o_d_e


Use command mode to load or save files or to do things
	which might cause drastic changes to the edit buffer.	Here
	is a list of the command mode commands and what they do:

	append <filename>

	Append the file <filename> to	the main buffer at
	the current cursor postion.


	"- 4 -


	change <line range>

	Change the first instance of <search mask> on each
	line in the line range to <change mask>.

	Question marks match any character in <search
	mask>.	Question marks in <change mask> match the
	character that the corresponding question mark
	matched in <search mask>.

	A leading up arrow (^) anchors the search mask to
	the start of the line.

	clear

	Erase the entire buffer.

	delete <line range>

	Delete all lines with numbers in <line range>.

	dos

	Return to the operating system (exit from the
	editor).

	find

	Search for the next occurance of <search mask>.
	Enter edit mode if <search mask> is found.
	Otherwise, stay in command mode.	The '?' and '^'
	characters are treated just as in the change
	command.

	g <n>

	Enter edit mode and set the cursor on line <n>.
	If you do not type <n>, the current line is used
	for <n>.

	list <line range>

	List all lines with numbers in <line range> on the
	list device (printer).

	load <filename>

	Erase the buffer, then load it with the file named
	by <filename>.	<filename> becomes the current
	file name which is used by the save and resave
	commands.


	"- 5 -


	name <filename>

	Make <filename> the current file name for use by
	the save and resave commands.

	resave

	Save the buffer in the file named in the load or
	name commands.	The file must already exist.

	save

	Save the buffer in the file named in tahe load or
	name commands.	The file must _n_o_t already exist.

	search <line range>

	Print all lines on the display which contain an
	instance of <search mask>.	The '?' and '^'
	characters are treated just as in the change
	command.

	tabs <number>

	Cause tabs to be printed as <number> blanks on the
	screen and on the list device.


sjt:
