# DOWNLOAD

> Source: `sourcecode/library-disks/LIB34 - FLEX Source Library - Source Code and Build Files - Includes CHDEMO, CHRSETS, CHTAB.zip!LIB34.DSK!DOWNLOAD.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

DOWNLOAD DOCUMENTATION	11.2.90

DOWNLOAD is a program enabling the editing
of whole download character sets. It was
written for the NL-10 printer and runs in
FLEX under DBASIC. It should work with
other EPSON or EPSON-compatible 9-pin NLQ
printers.

Character sets can be loaded, edited,
tested and saved. The final output file
can be generated from whichever portion of
the set is required.

The final output file can be sent to the
printer using P ECHO.

DOWNLOAD calls SAVE.CMD from the system
drive to create the output file.


THE MAIN MENU

On running the program the main menu will
be displayed. There are 9 options:
	(1) LOAD CHARACTER SET
	(2) EDIT DRAFT CHARACTER
	(3) EDIT NLQ CHARACTER
	(4) PRINT CHARACTER SET DRAFT
	(5) PRINT CHARACTER SET NLQ
	(6) SAVE CHARACTER SET
	(7) PRODUCE USEFUL FILE
	(8) CLEAR CHARACTER SET
	(9) EXIT

After selecting and performing any of the
options except EXIT, you will be returned
this main menu. No prizes for guessing
what EXIT does!

LOAD CHARACTER SET will retrieve a set
previously saved with option 6. You will
be prompted for the filename. All sets
are saved using the .CHR extension so no
extension should be given.

SAVE CHARACTER SET will store all of the
data for the whole of the DRAFT and NLQ
sets in memory on disk as one file. The
filename used is as above. You will be
prompted to enter the filename.

CLEAR CHARACTER SET - naturally, this
option wipes the set clean. All character
set bits are set to 0, which is white
paper. You must reply "y" or "Y" to the
prompt or the operation is aborted.

EDIT DRAFT CHARACTER takes you to the
editing screen. You will be prompted for
the code of the character to edit. This
must be entered as hex digits. Only
characters $21 - $7E may be edited, and
these are the only ones stored and
processed by DOWNLOAD. The DRAFT form of
the chosen character will be displayed
as the EDIT character, and the NLQ form
will be displayed as the DISPLAY
character. More about editing later.

EDIT NLQ CHARACTER works as above,
except, you guessed it, the EDIT
character is the NLQ one and the DISPLAY
character is the DRAFT one. Note that the
characters edited or displayed can be
changed from within the EDIT screen. See
more on editing later.

PRINT CHARACTER SET allows you to view
your masterpieces of calligraphy from
within DOWNLOAD. It dumps the chosen set
(NLQ or DRAFT) to the printer. You must
select the range to be dumped when asked
by entering the first and last ascii
codes as hex separated by a comma (,).
Nothing is actually printed at this stage;
the printer is just prepared.
Nevertheless, the printer must be put on-
line before selecting (4) or (5). It must
remain on-line until the return to the
main menu, So don't take your pretty page
of characters out of it until you're
through.

You will then be presented with a list of
7 options. These give tests which will
help you to check the correctness of the
characters you have designed. If the
characters must appear in-line with the
standard ones it is important that you
get the position whthin the character
grid correct.

The effect of the options here are quite
self-apparent. The first two print the
download set interspersed with the normal
one in different ways. The third prints
the download set only. The forth, Type-
writer" mode, will print any characters
typed on the keyboard, but in the new
character set. The fifth option simply
sends a command to the printer switching
it to DRAFT or NLQ. It does not download
the data of the respective set. It is
useful if you want to see how your
printer will respond to this. The sixth
option allows you to set double-size text
if your printer permits it. All the
better to see your characters with! And
if you are bored with all this, you can
return to the main menu with the last
option.

PRODUCE USEFUL FILE acts rather like a
compiler. It composes the selected part
of your set and forms the output file
on disk. This is a binary dump of RAM
whose contents reflect the codes to be
sent to disk. This method is used to
circumvent the FLEX text file limitation
of being unable to pass certain character
codes. The output file can be sent to the
printer using the ECHO.CMD utility
provided with DOWNLOAD. The output file
is a different animal to the .CHR files
which are for storeage and editing only.
No means has been provided for recovering
the output files into .CHR files.

You will be prompted to select from NLQ
or DRAFT sets. You will also be asked for
a range of characters to be dumped. You
should give the ascii codes of the first
and last characters in hex. separated by
a comma (,). Only one range is allowed,
but if you need more, generate separate
output files and APPEND them.

The program will add some additional
printer control sequences if you want
them. A command can be added to select
DRAFT or NLQ printing, as appropriate
to the set being saved. Or the command to
select unidirectional printing may be
included - this was found necessary on
the author's printer in order to get the
download and resident characters to line
up properly when interspersed. This is
because the head habitually printed the
two sets in opposite directions of travel
otherwise.

You must give the output file a filename.
You may specify the extension, the
default is .BIN if you don't. The file
will be generated (if it already exists,
a prompt allows you to replace or not).


MORE ABOUT THE EDITING SCREEN

This screen operates in the usual Dragon
FLEX Hi-res screen mode and thereby
combines text with graphics. There are
two main windows and a menu at the top.

The left window displays a the EDIT
character on a grid of lines. This can be
an NLQ or DRAFT character, and the grid
will change pitch to reflect this. Black
blobs are placed on this grid to indicate
the positions where the printhead pins
must strike. The cursor (an X) may be
moved at will using the cursor keys and
the spacebar removes or adds a blob.
You may need to read your printer manual
for additional information on designing
download characters. It is necessary to
avoid placing two dots right next to each
other horizontally. This is due to the
physical restrictions on the rate of fire
of the printhead pins. The dots are
normally placed at alternate points when
drawing a horizontal line.

The right window displays any other
character. It can again display NLQ or
DRAFT characters. It is there for the
user to refer to and is also used as the
source for copy and exchange operations.
It has no cursor and is never edited,
this is why it is the DISPLAY character.
If the DISPLAY character is set the same
as the EDIT character, be aware that the
DISPLAY window will not be updated to
reflect edited changes in RAM.

Below each window is a line of status
info. This gives the character code which
is displayed, DRAFT or NLQ, and the
status of the ascender/descender bit.
To explain, there are 9 pins on the print
head. The download character can only
define 8 of them, the other being left as
white paper. You can select the top or
bottom 8 pins to program in your
character by setting the ascender/
descender status bit. Simple, isn't it?
Naturally, a character with an ascender
will not need the bottom pin so you
program your character for the top 8
pins and set "ascender". A character with
a descender will not need the top pin so
you program your character for the lower
8 pins and set "descender". Note that the
usual draft characters use the top 7
pins, the 8th being left white (except
for descender tails) and the 9th is
used by the underline.

The options in the menu at the top of the
screen allow you to toggle the descender
and to change the EDIT or DISPLAY
characters. There is an option to clear
the EDIT character when you can't quite
get the curly bit right on the lower case
zeta and you get so frustrated you could
scream! There are also options for
copying characters and exchanging them.
I found it necessary to include a request
for a confirmatory "Y or N" in some of
the options after I discovered how easy
it was to wipe out the character I just
finished by hitting the wrong key. In
copying or exchanging, if the DISPLAY
and EDIT characters are of dissimilar
types, ie. NLQ and DRAFT, the program
will do its best. This may result is some
loss of information in the conversion,
but it'll try! The option is given to
quit the editing session and return to
the main menu.


I hope no more bugs remain in this final
issue - all the best with the character
sets. I have provided mine along with
DOWNLOAD as an example of what can be
achieved. With an ordinary NLQ printer
some astonishing output can be achieved
which can produce excellent technical
text without going to the dizzy heights
of dedicated technical wordprocessors.
Alternatively you may want to use the
characters for fun, like telephone
symbols, patterned boxes etc. Or maybe
you wish you could print the Russian
alphabet. I have plans for characters
which will enable me to print Polish
properly. Or you might want to do
graphics. If so, the limitation on the
control of 8 pins will mean that you
will have to reset your line spacing to
make the characters butt up vertically.


Regards,


Ant. M.	(A.N. Martin)
