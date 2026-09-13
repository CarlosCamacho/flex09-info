# README

> Source: `sourcecode/library-disks/LIB43 - FLEX Source Library - Source Code and Build Files - Includes DISASM48, ELWYN1, ELWYN2.zip!LIB43.DSK!README.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

The files on this disk support the article entitled
'AN INTRODUCTION TO PL/9'
in the January 1987 issue of Microcosm (vol 4 no. 2)

The main program is 'DISASM48.CMD',an MCS48 family disassembler.
It was written in PL/9 of which the source code 'DISASM48.PL9'
is also included for reference with the aforementioned article.
It should be possible to modify this program to handle a
different microprocessor without too much trouble (I think!).

DISASM48 is a stand-alone utility which takes 8048 binary files
and re-generates the original source code either a screen listing
or text file with the option of symbolic labels.Invoke by :-

	DISASM48 filename [+][L][O]
where
	filename is the 8048 binary data on disk
	+ marks the optional parameter list
	L enables symbolic addressing using pseudo labels
	O creates a text file for subsequent re-assembly

e.g.
	DISASM48 VALVES.BIN +LO will make a new output file on disk
(automatic prompt for name during program) which contains 8048
mnemonics plus labels.

Hope this is of use or interest to someone.Best wishes
	Huw Jones	(0443) 229491	May 1987
