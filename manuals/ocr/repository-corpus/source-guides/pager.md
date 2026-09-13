# PAGER

> Source: `sourcecode/library-disks/LIB41 - FLEX Source Library - Source Code and Build Files - Includes COMBOX, PAGER, ROVER.zip!LIB41.DSK!PAGER.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

**** PAGER.DOC ****
	*******************

This is a Microbox prog to enable two pages of text to be held in
screen memory simultaneously and allow switching from one to the
other under keyboard or program control.

The prog loads to the mapped ram at $E000, replacing "PRETTY".
It incorporates the same character set as "PRETTY" but this has had
to be relocated.

Mine is an early, (pre-ETI-article), version of Microbox-2 and I am
using MON09B, which is in the library. In this monitor, for no very
obvious reason, some of the locations at the tail-end of the scratch
ram were altered. If you have a different monitor, make sure that
FLASH & CFLAG are correctly equated. Also, I put my PAGE flag at
$DFFB....this location is unused in all versions of the monitor which
I have seen, but I cant voutch for the latest version. I have marked
the items which might need to be changed with "%%%" in the comment
field.

When first loaded, PAGER clears both pages and then selects page "A",
the standard text page. Note that if ram-disc is in use its capacity
will be reduced to 170 sectors. Conversely, if, after loading Pager,
you enter graphics mode or format ramdisc for 390 sectors, then text
page "B" will be over-written.

To toggle from one page to the other manually you must produce the
code $1F (US). On my keyboard "^/" does the trick, other keyboards
may differ.

PAGER was written for use with my Microbox Comm's Prog "COMBOX", which,
after many many man-hours of blood sweat and tears, is at last coming
nicely to the boil....(watch this space). So, as an example of how to
call the paging utility from a program, the following is an extract
from COMBOX.

*
SWCHA	TST	PAGE
;already on page A ?
	BEQ	SWAEND		;if so, no action
	LDA	#31
;else toggle
	JSR	PUTCHR		;
	JSR	[CLEART]	;(this would not work on page B)
	RPT	6	;
	JSR	PCRLF
;send 6 CRLF's
SWAEND	RTS	;
*
SWCHB	TST	PAGE
;already on page B ?
	BNE	SWBEND		;if so, no action
	LDA	#31
;else toggle
	JSR	PUTCHR		;
SWBEND	RTS	;
*
*
If it were neccessary to clear Page B you would have to send #12 (FF)
following #31.	CLEART is in rom and assumes that your text is in
the proper place!
Note that the calling program has to be able to read the PAGE flag.
Page	EQU	$DFFB	would be included in the equates.


My standard Startup file calls Pretty right at the begining and
Ramdisk (using text;not using graphics) near the end.
I have substituted Pager for Pretty with the result that when my
startup routine is over page "B" holds part of the ramdisc. Provided
that page "B" is not used, and in the vast majority of sessions it
wont be, this makes no difference at all. If Page "B" IS used,
ramdisc is reduced to 170 sectors although if you "CAT" it you will
find that it still thinks it has 390 sectors available. It would be
feasible to arrange matters so that the SIR was altered when the
Page Switch was first used, but I have not bothered to do this.
I fear it is a case of "it suits me fine just the way it is so two
fingers to the lot of you".
But be warned...I havent been using it long enough to state with
confidence that there are no snags.
