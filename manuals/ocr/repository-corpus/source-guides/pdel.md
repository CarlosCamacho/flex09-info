# PDEL

> Source: `sourcecode/library-disks/LIB32 - FLEX Source Library - Source Code and Build Files - Includes FCLOCK, HEXDEC, MAPUP.zip!LIB32.DSK!PDEL.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,ll 65 ,cs 10 ,ju ,ce PDEL

The PDEL command is	a	prompting	delete	utility.	Either	all
files or only files matching a specified match-list are displayed
by name, one at a time, giving the option of deleting the file or
keeping it.	This command is very convenient for quickly removing
a lot of no-longer-needed files from a disk.
DESCRIPTION
The general syntax of the PDEL command is:

	+++PDEL[,<drive-list>][,<match-list>]
where	drive-list and match-list are the same as described in the
CAT command.	The default drive is the	Work-Drive.	An	example
follows:

	+++PDEL 1 .TXT
Upon execution of	PDEL,	each	file-name	on	Drive	1	with	an
extension	of	.TXT	will be printed at the terminal along with a
delete request:

	DELETE "FILE-NAME.EXT" (Y/N/P/CR)?
at	which time several responses are valid.	If "N" is typed, the
file will be left intact and the next name will be displayed.	If
"Y"	is	typed, that file will be deleted.	This utility does NOT
ask if you are sure you want the file deleted, so make	sure	the
first time!
If "P" is typed, the (Y/N/P/CR) prompt will be	turned	off,	and
the	remaining	files	that	fit	the	match-list will be deleted
without waiting for your response.	This is a WILDCARD DELETE and
will	erase files very quickly.	Look at the first file carefully
and be sure you have the right drive-number before pressing	"P".
It	thus	represents	a	more	versatile form of the XOUT command
(and others of the form X---)	and	also	replaces	the	old	ZAP
command.	Remember	that once "Y" or "P" is typed to the prompt,
that file is gone forever!	A CARRIAGE-RETURN in response to	the
prompt	will	terminate	PDEL	and	return	control	to	FLEX.	A
response other than one of those above causes the delete	request
to be repeated.
If, after typing "P", you wish to change your mind DO	NOT	RESET
THE COMPUTER!	Aborting in the middle of a DELETE could have dire
consequences - at worst you could	lose	the	entire	disk.	The
correct	way	to	stop a wildcard delete is to press "ESCAPE" (or
its equivalent on your system).	PDEL will then pause at the	end
of	the	current file, at which time you may press RETURN to exit
to FLEX.
