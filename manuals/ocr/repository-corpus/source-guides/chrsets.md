# CHRSETS

> Source: `sourcecode/library-disks/LIB34 - FLEX Source Library - Source Code and Build Files - Includes CHDEMO, CHRSETS, CHTAB.zip!LIB34.DSK!CHRSETS.HLP`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

CHARACTER SET HELP	23.1.90

This file gives further advice on the use
of ECHO, CHTAB and character sets.


ECHO

Echo simply reads a binary (.CMD or .BIN)
format file and sends the data bytes
directly to the driver for the standard
output channel. The other parts of the
file are stripped out, ie. the load
address and transfer address. The data is
output in the order it is placed in the
file with no reference to the addresses
for loading the records.

These methods will maintain the integrity
of the character set data produced by
DOWNLOAD in RAM and saved using SAVE.

The ECHO command is usually invoked with
"P ECHO (filename)". .BIN is the default
extension. Echo can be called up in an
SP-EDIT document using the ,EX command to
download a character set at print-time.

Other uses of ECHO include sending binary
files to the printer which provides a Hex
Mode facility, resulting in a dump of the
actual data.

Note that appending character set output
files has the expected effect, ie. that
the two download character commands are
sent to the printer in order. Therefore
appending different ranges of the download
sets will work. Also, the definitions can
be overlaid so that one or two characters
can be redefined as required.

Normal usage eg. +++P ECHO MYSET.NLQ


CHRTAB

There are two versions of this routine,
one which prints a "widthwise" table and
one which prints "lengthwise". The program
outputs a chart of character codes and
their character on the standard output
channel. It is necessary to redirect this
to print it using P CHRTAB. There are no
parameters.

The table gives (i) the chr code in hex,
	(ii) the normal ascii chr,
	(iii) the alternate chr.
The format is intended for 80 col. Draft
or NLQ printing. You should use this as a
reference table when working with your
alternate character sets, and it can be
used for testing them. The character set
should first be downloaded using ECHO or
the alternate set will print as gibberish!

Normal usage eg. +++P ECHO MYSET.NLQ
	+++P CHTAB


MORE NOTES ABOUT CHR SETS

If you need to download more than one
range of the character set, this is
possible by joining separate sets in the
downloadable files using APPEND.

The downloading of NLQ sets with the
printer in Draft mode or vice versa is
likely to yeild spurious results. This is
because the printer only knows how much
data to expect for each character from the
mode that it is in at the time. If it is
in Draft mode, it expects 11. If you send
NLQ, you give it 47 and some will be left
over which the printer will interpret in
whatever spasmodic jibbering it wishes!
Conversely, if the printer receives too
few bytes, it will interpret the next
piece of text to arrive as the missing
part of the download character. Not to
mention the fact that the printer and data
get horribly out of sync. Not quite as
intended.

I strongly suggest the option of including
the printer mode setting commands in the
output file.

Also, my printer was noted to be unable to
store both NLQ and Draft sets at the same
time. If your printer has more RAM it may
behave otherwise.

The manual of my printer tells me that it
is unable to change sets mid-line
"on-the-fly". Nevertheless, the printer
responds to such commands with the
expected output. The print head has to
make several passes to complete the line
however, and as a result a visible
misalignment may occur between normal and
alternate characters. This may be
eliminated by specifying that the printer
use unidirectional printing. Yes, this
makes things slower but printout is great!

Remember that your printer may be able to
print the download set in Bold, Condensed,
Enlarged, Expanded, Superscript,
Subscript, Emphasized, Double-size, Quad-
size etc. Ever tried NLQ Double-size? My
printer has a completely different ROM
set for italics though, so it looks like
you will have to design an italics set if
you need it. The lower case greek are an
italic typeface, so in MYSET they are
designed as such.

If you have SP-EDIT, it is suggested that
one of the user attributes is set for
alternate character set. The codes for
enabling and disabling the download set
should be found in the printer manual. The
printer configuration source file that I
use with SPE is included on the disk. To
include a download character, type its
equivalent, normal one and attribute it.

I have also set the other user attribute
for a half-line shift, by adding the
printer commands for "forward feed a bit"
and "reverse feed a bit". This means that
I can do fair equations. Another
suggestion is to add the selection of
condensed to the Super and Sub control
codes. This makes Supers and Subs that are
not "stretched-out". I have included a
Demo for SPE set up with the alternate
characters on ctrl-Z.


PRINTERS

The big crunch - will it work on your
printer! The NL-10 has pretty good EPSON
emulation short of the plastic badge on
the front. Having read the manual of an
EX800/EX1000 it appears that the download
character commands are the same. This
leads me to the conclusion that all users
of EPSONs or compatible printers should
get some mileage out of these character
sets. (Given that the printer is capable
of 9-pin download sets.) I haven't tried
any other printers yet - If anyone else
does, please let me (us) know. I have no
conclusions on printers with more than 9
pins or with ink jets!


GOODBYE

I hope that these bytes of data have been
decoded and well received by interested
parties.

	Ant.M.
