# ved

> Source: `sourcecode/examples/VEDSRC - VED Screen Editor C Source Disk and User Guide.zip!ved.txt`  
> Method: archive text extraction

OCR and media-decoding errors may remain.

VED Screen Editor

ved [-tn] [file]

VED is a screen oriented text editor written in C for use with the Aztec C65 system. The source to
VED is included in the archive "VEDSRC.ARC". VED is not a particularly fast or smart editor, but it
does get the job done. If VED is invoked with a file name, that file will be loaded into the memory
buffer, otherwise it will be empty. VED does all its editing in memory and is thus limited in the size
of files that it will edit. In VED, the memory buffer is never completely empty. There will always be
at least one newline in the buffer.

The "-t" option specifies that a different tab size should be used. Normally VED will use the
current system value, but this may be overridden with this option, as in:

ved -t8 file.a65

which is useful since C programs work well with a tab size of four, but assembly language works better
with a tab size of eight.

VED has a 1000 character limit on the size of a line. If a line is longer than the width of the
screen, it will wrap to the next line. If a line starts at the bottom of the screen, and is too wide to fit,
the line will not be displayed Instead, the '@' character will be displayed. Likewise, at the end of the
file, all lines beyond the end will consist only of a single ,-, on each line.

A number of commands take a numeric prefix. This prefix is echoed on the status line as it is
typed.

The normal mode of VED is command mode. During command mode, there are a number of ways
to move the cursor around the screen and around the whole file.

newline       move to the beginning of the next line.
-             move to the start of the previous line.
space         move to the next character of the line.
backspace     move to the previous character.
0             move to the first character of this line.
$             move to the last character of this line.
h             move to the top line of the screen.
l             move to the bottom line of the screen.
b             move to the first line of the file.
g             move to the n'th line of the file.
/string       move to the next occurrence of 'string'.

When the cursor is in the appropriate spot, there are two commands used to delete existing text.

x             delete the n character under the cursor up to but not including the newline.
dd            delete n lines starting with the current line.

Note that deleting the last character on the line (newline character) causes the following line to be
appended to the current line.

To add new text, hitting the 'i' key will cause the top line of the screen to indicate that you are
now in <INSERT> mode. To exit insert mode, type ESCAPE (unless the CAPS LOCK mode is
enabled, in which case type control Q). To insert a control character which means something special to
VED into a text file, first type control-v followed by the control character itself. Control characters are
displayed as '^X', where X is the appropriate character.

Typing 'o' will cause a new line to be created below the current line, and the cursor will be placed
on that line and the editor placed into <INSERT> mode.

There are three commands used for moving text around. These commands make use of a 1000
character yank buffer. The contents of this buffer is retained across files.

yy   yank n lines starting with the current line into the yank buffer.
yd   yank n lines starting with the current line and then delete them.
p    "put" the lines in the yank buffer after the current line. The yank buffer is not modified.

The 'z' command redraws the screen with the current line in the center of the screen. The 'r'
command replaces the character under the cursor with the next character typed.

Whcn in command mode, if the ':' key is hit, a ':' will be displayed on the status line. At this point,
a number of special file-related commands may be given.

:f          displays info about the current file.
:w file     writes the buffer to the specified file name.
:w          writes the buffer to the last specified file.
:e file     clears the buffer and reads the named file.
:e! file    clears the buffer and reads the named file even if the file was modified
:r file     reads the named file into the buffer.
:q          exits the editor.
:q!         exits editor even if the file was modified

As can be seen VED protects from accidentally destroying the work being edited by preventing
exiting or editing another file if the current file has been modified. If the file has been written using
the ":w" command, the modified flag will be cleared.

VED will only edit Apple text files. Binary files will not be edited.
