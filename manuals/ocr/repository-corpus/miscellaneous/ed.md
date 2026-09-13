# ED

> Source: `misc/archive-series/disk/DISK18 - FLEX Archive Disk - Source Code and Build Files - Includes C09, SAMPLE, SLIB.zip!DISK18.DSK!ED.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

This directory contains the source and object code for a screen oriented
editor that runs under OS9 level one or level two.	The program given here
is essentially identical to the one published in Dr. Dobb's Journal in the
January 1982 issue (Volume 7, Issue 1, Number 63).	This program is in the
public domain and may be distributed and modified in any way you see fit.
Author Edward K. Ream is to be congratulated for producing a fine, well
structured program that in itself is a good example of how C can be used
effectively for large programming tasks.

A copy of the article in Dr. Dobb's should be used as a user's manual for
this editor.	If anyone would like to write a supplimentary or replacement
manual,	I'd be happy to send it with this package.

The source files on this disk (those files with ".c" and ".h" appended to
their names) contain embedded tab characters (ASCII 9).	This has been done
to reduce the size of the source files.	A utility program has been provided
("tab") that will read the standard input and send the output with tabs
expanded to the standard output.	The source code for the tab utility is given
in "tab.c".

The editor as supplied in this directory is given in three forms:

	1. In C source form. (The .c and .h files)
	2. In Introl-C linkable binary form. (The .o files)
	3. In executable form. (The file "ed")

As distributed, the editor is configured for the ADDS Viewpoint/3A Plus
terminal.	To change terminals, you'll need to edit the file ed6.c to match
the characteristics of your terminal.	The file should then be compiled.
You can use the command file "edbuild" to link all the previously compiled
object modules from the rest of the editor to your new ed6.o file to produce
a new executable editor. (That's why I sent the object code for the rest
of the editor: it takes a LONG time to compile the whole thing!).

There have been a few modifications made to the editor:

	1. static variables have been used instead of externals to

hold module variables.

	2. The editor will ask for memory from OS9 as it needs it, rather

than taking all the free space under OS9 (as it could under CP/M)

	3. The screen output routines have been modified slightly to

improve performance.

	4. Some of the control structures have been changed from the original

small-C while() and if...then...else to for() and switch() state-

ments, where appropriate.

	5. The list function has been removed from the editor.

	6. A shell "escape" mechanism has been built into the editor command

mode:	any non-resident command may be used in response to

the editor command mode prompt ("ed:") by preceeding the command

line with an exclamation point character ("!").	This results

in the editor forking a new version of the shell and passing it

the command line (minus the "!").	The editor will then wait for

the forked shell to terminate.	For example, to get a directory

listing while using the editor, respond to the "ed:" prompt in

the editor command mode by typing "!dir".

	ed:!dir


The directory lising will be given and control will return to

the editor.

	7. The editor disables the keyboard interrupt and keyboard abort

keys so that they can be used as control codes for the editor.

The keys are restored to their original values when the editor

terminates.

I'd be interested in hearing about any extensions and/or modifications that
you make to the editor, some ideas:

	Automatic indenting
	Ability to edit files larger than memory
	Ability to configure editor for different terminals without having

to re-compile (maybe with a terminal configuration file)
	Block Moves
	Automatic editing of erroneous C program files using the line numbers

output by the compiler (I'd be willing to modify the compiler

to optionally send the error messages to a file and perhaps

invoke the editor).	Wouldn't it be nice to have the editor

automatically load a C source file, position its cursor on

a line that has an error in it, display the error message,

and allow you to edit the line?	A simple keystroke or command

could then position the cursor at the next line containing an

error.

If you have any questions about the editor, I'd be happy to help but I can't
spend alot of time with it.	I'd prefer phone calls to letters since it seems
to be much quicker and more useful.

Rich Pennington
(Introl Corp.)
647 W. Virginia St.
Milwaukee, WI
	53204
(414) 276-2937
