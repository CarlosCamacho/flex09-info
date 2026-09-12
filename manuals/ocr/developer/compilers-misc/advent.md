# advent

> Source: `dev/compilers-misc/CPROGS9 - Compiler Tools - Source Code and Build Files.zip!CPROGS9.DSK!advent.doc`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

Notes about ADVENT

	Advent was written and compiled under BDS C ver 1.3x and
was later modified to BDS C ver 1.4 by L.C. Calhoun of Lebanon,
Ohio. The original Advent is from the BDSCUG the files I got
were the ones modified by L.C. Calhoun, I got the programs from
the CNODE in Andover, Mass and modified them for Introl C ver 1.5.

Notes about making this ADVENTURE game work in Introl C ver 1.5

	To start with the following files did not need modification
	ITVERB.C	TURN.C	VERB.C	ENGLISH.C	to Introl C since
they are or seem to be standard C. The ADVENT.H file only edited
to remove a BDS C struct and a EOF define for CP/M. These were not
needed for Introl C. The DATABASE.C file was modified only to change
the way BDS C handles files to the way standard C ( K & R ) handles
files also a substitute a different way to seek in a file ( Introl C
does not have a seek function when running on a FLEX system ). I
used Introls rewind function to rewind the file in question to the
beginning of the file and read until the offset was reached.
The ADVENT.C file was changed to handle standard (K & R) file
handling. I did add BDS C's functions initb, initw, getval, srand,
rand and a replacement for setmem which set a specified memory
array to a specified value. I also added the EADVENT.C file to
ADVENT.C so when compiled there would only be one runtime file,
BDS C has 3 runtime files chained together.
The SAVEADV.C file was also changed to standard (K & R) file
handling.

The modified files were compiled and run on a Southwest
Technical Products /09 computer with 116K memory and 5"DSDD
disks. The ADVENT.CMD (runtime file) was approx. 25K in size.
Using the program:
	The program has 2 options set at runtime they are:
	ADVENT -r	this allows you to resume a previously saved
game.
	ADVENT -d	this plays a demo game(I have not tryed this
option).
	ADVENT	this starts a normal game from the beginning.

The mods and this file were done by:
	Joseph M Aulicino
	2014 - 59th street
	Bklyn, N.Y. 11204


P.S.
CNODE has the complete library of the C Users Group online
for download. 1-617-470-2548....
This is being added at a later date than the above was written.
I noticed that Introl C uses a ERROR return from fopen() while
standard C uses NULL. This means that you better check your
fopen() function and see what it returns on error and change
the advent source if needed...
End of notes file.....
