# BUILD

_Source: FLEX User’s Manual (Technical Systems Consultants), 1979 scan._

BUILD

The BUILD command is provided for those desiring to create small text
files quickly (such as STARTUP files, see STARTUP) or not wishing to use
the optionally available FLEX Text Editing System. The main purpose for
BUILD is to generate short text files for use by either the EXEC command
or the STARTUP facility provided in FLEX.

## Description
The general syntax of the BUILD command is:
BUILD,<file spec>

where <file spec> is the name of the file you wish to be created. The
default extension for the spec is TXT and the drive defaults to the
working drive. If the output file already exists the question "MAY THE
EXISTING FILE BE DELETED?" will be displayed. A Y response will delete
the existing file and build a new file while a N response will terminate
the BUILD command.

After you are in the 'BUILD' mode, the terminal will respond with an
equals sign ('=') as the prompt character. This is similar to the Text
Editing System's prompt for text input. To enter your text, simply type
on the terminal the desired characters, keeping in mind that once the
"RETURN' is typed, the line is in the file and can not be changed. Any
time before the 'RETURN' is typed, the backspace character may be used
as well as the line delete character. If the delete character is used,
the prompt will be '???' instead of the equals sign to show that the
last line was deleted and not entered into the file. It should be noted
that only printable characters (not control characters) may be entered
into text files using the BUILD command.

To exit the: BUILD mode, it is necessary to type a pound sign ('#')
immediately following the prompt, then type 'RETURN'. The file will be
finished and control returned back to FLEX where the three plus signs
should again be output to the terminal. This exiting is similar to that
of the Text Editing System.


