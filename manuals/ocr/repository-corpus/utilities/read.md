# READ

> Source: `utilities/system/ECSUTIL - FLEX System Utilities - Documentation and Examples.zip!ECSUTIL.DSK!READ.ME`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

C Tools is shipped with the following files:

	ascii.com	print ascii code chart
	cbc.com		curly brace checker
	ccref.com	'c' crossreference program
	cmp.com		compare binary files
	cthelp.com	help for C tools
	cthelp.hlp	actual help messages used by cthelp
	cutil.com	filter program
	diff.com	text file comparision
	docmake.com	document generator
	fchart.com	flow chart 'c' programs
	grep.com	global regular expression parser
	pp.com
pretty print
	prnt.com	text formatter for printing files

Also provided are:

	xarc.com	pkxarc compatible dearcing program
	ezm.com		modem program (will work with TV950 terminal)
	ezmplus.com	same modem program for herc compatible controller

	herc.dvr	herc driver
	herc.txt	source for herc driver

	msread.com	read MSDOS 360K and 720K diskettes on PT68K
	mswrite.com	write MSDOS 360K and 720K diskettes on PT68K
	msdir.com	list directory of MSDOS 360K and 720K diskettes


note:	mswrite will accept wildcards (msdir and msread don't).
	Be sure filename do not already exist on MSDOS diskette
	when using mswrite. It does not delete existing files.

The following 2 programs accept a filename as input and output to the console
They both accept redirection of the output to a file .

	listunix.com	list a text file that is in UNIX format to stdout
	listcpm.com	list a text file that is in CP/M format to stdout

NOTE:	SK*DOS 2.5 required for C tools. Will not run with pre 2.5
	version of SK*DOS.


	example of usage of listcpm:


listcpm foo.bar<cr>

	will list the CPM formatted file (with tabs and crlf sequences) to
	the console.


listcpm foo.bar >foo.txt<cr>

	will list the CPM formatted file (with tabs and crlf sequences) to
	the file foo.txt. If foo.txt exists, it will be replaced with the
	new file. If it does not exist it will be created.


	The files ZOOMHC.DVR and ZOOMHC.TXT are the driver and source for the
ZOOMHC internal modem for the IBM-PC. This modem will work as COM1 in the
PT68K if the -5 volts is connected to the 62 pin buss. Some other internal
HAYES compatible modems may also work, but this driver has only been tested
on the ZOOMHC. It can be purchased through ads in the COMPUTER SHOPPER for
about $140.00. The one I have will only communicate to a few BBS at 2400.
It works great at 1200 though. I may just have a lemon, but you may want to
verify with the vendor about 2400 compatibility. The BBS that I call at 2400
seem to be OK, but there are some that will not work.
