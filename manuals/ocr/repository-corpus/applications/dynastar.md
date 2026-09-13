# DYNASTAR

> Source: `apps/dynastar/DYNAS23 - DynaStar Word Processor - Source Code and Build Files.zip!DYNAS23.DSK!DYNASTAR.MAN`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.ma ns
.cp 4
.me
.sp 13
.he "	DynaStar 2.2 User's Manual
.fo "
Copyright (c) 1982, Dynasoft Systems Limited
	DynaStar 2.2

	A High Speed Screen Editor

for the
	OS9 and FLEX 9 Operating Systems


	User's Manual


	by

	Allan G. Jost

	DYNASOFT SYSTEMS LIMITED
	P.O. Box 51
	Windsor Junction, Nova Scotia
	Canada B0N 2V0
.sp 6

This	document	and the DynaStar Program	are

protected	under International Copyright laws

and may not be reproduced in any form without

the	written	permission	of	the	copyright

owner.	Permission is hereby granted to bona

fide	purchasers	to make two copies	of	the

Program, in machine-readable form, for backup

and archive purposes only.

OS9 is a trademark of Microware Systems Corp. and Motorola, Inc.
FLEX is a trademark of Technical Systems Consultants, Inc.
.bp 1
.fo "	Copyright (c) 1982, Dynasoft Systems Limited	Page #
	^U1.0 INTRODUCTION^U
.dxc 1.0	Introduction

	DynaStar was written for all those microcomputer users	who,
like myself,	have	high speed video terminals and are	tired	of
editors designed for 110 baud teletypes.

	DynaStar	is dedicated to the idea that text editors	should
be	easy	to	use,	easy to learn,	and easy to adapt to	a	wide
variety	of terminals.	We have tried to produce a program which
meets all of these criteria, and we hope the menu system provided
will	help	you	to make effective use of	its	features	without
constantly	thumbing	through the manual.	If we have failed,	we
would appreciate your comments.

	DynaStar	was	designed	to meet the needs of both the word-
processing user and the programmer.	For use as a word-processor,
it	contains	several	features	which are	intended	to	support
facilities	in the companion DynaForm print formatter,	available
separately.	These	features are only mentioned briefly in	this
manual and are explained in detail in the DynaForm User's Manual.


	^U1.1 A Guided Tour^U
.dxc 1.1	A Guided Tour
.dxi self-initialization

	The best way to learn about DynaStar is to use it.	Refer to
Chapter	5 to install it on your system, then just type "Ds"	and
use	the menus to guide your experimentation and	familiarization
with	the	many	features	it	provides.	If	you	have	not	yet
installed	a	"gotoxy"	module,	it	will	configure	itself
automatically,	asking	you only to tell it how to get to	"home"
position	(by	typing	the	appropriate	keys)	during	its
initialization	sequence. It will also ask for a key sequence	to
clear	to end-of-line.	If your terminal can't do this, just type
a	carriage return.	This procedure will be eliminated later when
you have installed your "gotoxy" module.

	If	all	has	gone	well, you should	be	presented	with	a
copyright	message and a menu (the "files" menu) offering several
options.	For	now just type the letter "N" to start a New	edit
session.	On the top line of the screen you will be asked for	a
file	name.	Pick one that is not already on your disk, and	type
it	in, followed by a carriage return.	After a brief pause,	you
should be presented with a new menu (the main editing menu).

	Before	doing anything else, sit back and get familiar	with
the	organization	of the information at the top of	the	screen.
The	very	top line should contain the name of the file you	have
just	established,	and a word at the right hand end telling	you
that	you are in "INSERT" mode.	This line is called the "status"
line,	and its main purpose is to constantly remind you what file
.dxi status line
.ns
you	are	working	on, and what "modes" you are in.	It	is	also
where	most operator prompts will appear when required by certain
commands,	and where you should look for error messages when your
terminal "beeps" at you.

.dxi ruler line
	The	next five lines contain a menu of commands available to
you for editing text, and below this will be a line full of minus
signs	and	exclamation marks.	This is the	"ruler" line	which
serves the dual purpose of separating the text editing area	from
the menu area, and telling you where your margins and tabs are.

	To learn how to edit text, you must have text to edit.	Type
in a few lines of anything you like, just pretending the keyboard
is a standard typewriter.	Fill the whole screen if you like.

	After	you have enough on the screen to make it interesting,
sit	back	and	have a look at the menu.	It will tell	you	very
briefly	about	a lot of single letter commands you can	give	to
manipulate	the	text you have just typed.	Most of	the	command
letters have a "^" in front of them.	What this tells you is that
you	must	hold the "ctrl" key down while typing that	letter	in
order to convert it from a "typable" letter to an editor command.
The first two lines of the menu tell you how to move	the	cursor
around.	To get the feel of it, try typing ^E ("control" E)	and
watch	the cursor.	It should move straight up.	Then try	typing
^S,	^D, and ^X (any order) and watch which way the cursor	goes.
Note	that	these	four keys are arranged on the	keyboard	in	a
diamond	pattern	which reflects the cursor movement they	cause.
Learn to know and love this diamond.	You will use it a lot.

	You will notice that the cursor will not move to where there
is no text.	This is one of the fundamental rules of this editor.
The	cursor can only be placed over characters which are actually
in	your	text buffer.	To get it past the last character in	the
buffer,	you	must type in more characters.	To get it	past	the
last	character in a line, you must type more characters into the
line.	When	it is apparently sitting on an empty space	at	the
extreme	right	end	of	a line, it is	actually	sitting	on	an
invisible carriage return character.	If you type more characters
while	it	is	sitting on a carriage return, it will	insert	the
characters in the line, pushing the carriage return ahead of it.

	Now	look on the fourth line of the menu (look for the	word
"DELETE").	Place	the cursor over any character on your	screen
and	type ^G.	The character should disappear and the line should
close	in	from	the right.	Now press the key marked	"DEL"	(or
"RUBOUT"	or	"BKSP" if you can't find a "DEL").	The	character
immediately	to the left of the cursor should disappear, and	the
cursor	should	back up one position.	Place the cursor over	the
first	character	of	any word and type ^T.	You should	get	the
idea.	Now	retype the word that just disappeared and	watch	it
being	put back where it came from.	For your last trick, get the
cursor	over	the very last character of a line (it should be	an
.dxi splitting lines
.dxi merge lines
invisible	carriage	return)	and delete it with a ^G.	Now,	to
split those two lines apart again, type a carriage return.

.cp 2
	That	should	be enough to get you started.	Play	with	the
other commands on the menu to see what they do.

.ns
	You	will observe on the last line of the menu that you	can
call	up additional menus by typing ^B, ^K, ^P or ^Q. Try	typing
^Q	and watch the menu area.	You will be presented with a	whole
new	list of commands.	To execute one of these commands you will
have to type another letter. (For the second character it doesn't
matter	if	you hold down the "CTRL" key.) ^B, ^K, ^P and ^Q	are
"prefix"	commands, meaning they are actually the first letter of
a	two-keystroke command.	If you don't want to try any of	these
commands just now, press the space bar.

	To	wrap up your first lesson, make sure you are on the main
editing	menu and type ^N (the menu calls this one "doNe").	You
should find yourself back on the "files" menu, which is where you
started	in	the first place.	Type the letter "D".	After a	few
seconds,	you	should	see a listing of the file	names	in	your
current data directory.	One of them should start with "SCRATCH".
Now	type	"X"	(for "eXit").	You should get the	your	standard
system	prompt.	Type "dir" (OS9) or "cat" (FLEX).	Notice	that
"SCRATCH" has disappeared, but that there is now a new file there
with	the	name	you	picked way back at the	beginning	of	this
exercise.

	DynaStar	is written entirely in Dynasoft Pascal, which is a
p-code	implementation	of	an integer subset	of	Pascal.	Many
people	believe	that	p-code is too slow for	applications	like
screen editors.	Judge for yourself.

.fi Chap2.txt
.fi Chap2A.txt
.fi Chap2B.txt
.fi Chap3.txt
.fi Chap4.txt
.fi Chap56.txt
.fi Appendix.txt
