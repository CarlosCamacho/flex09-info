# GEM

> Source: `utilities/system/LEO3 - FLEX System Utilities - Documentation and Examples.zip!LEO3.DSK!GEM.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

GEMINI/STAR PRINTER SET UP FOR FLEX 1,2 and 9

	Leo Taylor and Bill Summers


OVERVIEW

GEM.CMD is a program which runs in the FLEX utility space and is
used to set the options in a GEMINI or STAR printer. It supports
print type, print pitch, lines per inch, and left margin. Other
options (top margin, tab stops, etc.) can be set if you type the
HEX codes for the command. The program has been tested with both
GEMINI 10X and STAR SG-10 printers, other printers with similar
command sets should work with a minimum of changes.


	PRINTER SWITCH SETTINGS

The program always resets the printer to power up switch settings
before sending additional escape sequences. This manual will
assume the printer switches are set for normal print, STAR mode,
10 CPI, download enabled. The program may work with other switch
settings, but this has not been tested.


	ASSEMBLING THE SOURCE

GEM is provided as a source file that can be assembled by the
FLEX assembler for 6800 or 6809 processors. The only changes that
need be made are the lines:

	FLEX	EQU $A000	START OF FLEX
	GEMFLG EQU 0	0=STAR SG-10	1=GEM 10X

Locate these lines using your favorite editor and confirm that
they match the FLEX and printer you are using. The FLEX starting
address should be $A000 for 6800 or $C000 for 6809. Note only ONE
CHARACTER in the FLEX EQU need be changed, you do not need to do
a global change of a lot of addresses. The GEMFLG must be set to
one of three numbers:

	GEMFLG EQU 0	STAR SG-10	or
	GEMFLG EQU 1	GEMINI 10X	or
	GEMFLG EQU $FF	NO SLASH ZERO

This flag is only used to decide which escape sequence to send to
the printer to add a slash to the number zero. This is the only
incompatibility we found between the GEMINI and STAR printers
that required different escape sequences (GEMINI will ignore STAR
sequences it doesn't support). If you don't want a slashed zero
(maybe too computerese?), set the flag to $FF and the program
will not output either slash zero sequence.


	PARAMETER FIELDS

The command line options are entered in four fields. Print pitch
and type style are set with letters. There are ten letters sup-
ported, five control the pitch and five control the type style.
Lines per inch and left margin are entered as decimal numbers.
HEX codes are only used to set options not supported by the
program. The command line fields are:


	1

FIELD 1 is for option letters. The letters may be in any order:
	'GEM MDE' will select emphasized, double strike print
	with elete pitch. Option letters will be serviced in
	alphabetical order no matter how they are entered.

FIELD 2 is the number of lines per inch. The program computes
	the line spacing to nearest 1/144 inch. If the number
	entered is not an even factor of 144, the result will be
	rounded to the nearest available line feed size.

FIELD 3 is the left margin and is entered as the number of full
	character positions.

FIELD 4 is used to output hex strings that are not provided by
	the program, such as the bottom margin (1B 4F 03).


	ENTERING THE OPTIONS

GEM.CMD scans the command line for four fields of parameters. The
fields are all parsed and checked for syntax errors before any
escape sequences are sent to the printer. Thus, if you make an
error, the help menu will be displayed and the printer will
remain unchanged. Any or all the fields can be skipped, eg. you
do not have to enter a letter option if you only want to set
lines per inch. Fields to the left of the desired field are
skipped over by entering the SKIP character, usually set to '*'
(called star or asterisk). Fields to the right can be skipped
with the '*' or left empty. Though all this sounds confusing,
some examples will show the numerous option combinations
possible:

 GEM	- DISPLAYS HELP LIST
 GEM C	- CONDENSED PITCH (17 CPI)
 GEM EI	- ELETE (12 CPI), ITALICS
 GEM IE	- SAME AS ABOVE, ORDER IGNORED
 GEM ie	- SAME AS ABOVE, LOWER CASE ACCEPTED
 GEM PM,8
- PICA, EMPHASIZED, 8 LINES PER INCH
 GEM,PM 8
- SAME AS ABOVE, COMMAS EQUAL SPACES
 GEM D,8,5
- DOUBLE, 8 LPI, LEFT MARGIN=5
 GEM D,8,5,1B 52 03	- SAME AS ABOVE PLUS TOP MARGIN=3
 GEM *,6,5
- SKIP LETTERS, 6 LPI, MARGIN=5
 GEM *,*,5
- SKIP OVER FIELDS TO MARGIN
 GEM *	- RESET PRINTER TO SWITCH SETTINGS

Option letters:

	C	CONDENSED PITCH (17 CPI)
	D	DOUBLE STRIKE
	E	ELITE PITCH (12 CPI)
	I	ITALICS
	L	LETTER QUALITY (SG-10 only)
	M	EMPHASIZE
	P	PICA PITCH (10 CPI)
	S	SUBSCRIPT
	V	VARIABLE PITCH (proportional spacing SG-10 only)
	X	EXPANDED PITCH (5,6,8.5 CPI)


	2

	ERROR DETECTION


In most cases if an unrecognized command is found by the parser,
the program will display the help menu. The program has flags for
all 26 letters, those not implemented are accepted and ignored.
The program checks to see if a printer driver is loaded at $ACE4
for 6800 or $CCE4 for 6809 before running, if not it will output
the message 'NO PRINTER DRIVER'. There must be a printer driver
loaded there even if only a jump to a driver at another address.
GEM.CMD does not get involved with loading a driver, usually the
driver can be loaded with "GET 0.PRINT.SYS". Most of us have
modified FLEX to load the driver when booting the system. Due to
a weakness in FLEX (and the 6820 PIA) there is no system call to
determine if the printer is connected and on line. The TSC
parallel printer driver always starts up ready, even if the port
is not connected. Consequently, GEM.CMD will hang if the printer
is not ready to accept data.


	CONFLICTING OPTIONS

There a so many illegal combinations of options it was beyond the
scope of the program to check them all. A few of the highlights:

GEM PEC - The printer can only be in one pitch at a time! The

letters are serviced alphabetically, this example will

result in PICA pitch.

GEM XEC - EXPANDED pitch on the other hand, can co-exist with any

other pitch. This example will result EXPANDED ELETE

pitch (6 CPI).

GEM VCX - The STAR SG-10 accepts VARIABLE pitch (proportional

spacing). Unfortunately the hardware allows this option

to overide PICA, ELETE, and COMPRESSED, but will allow

it to co-exist with EXPANDED. This example will produce

EXPANDED PROPORTIONAL pitch.

GEM LMD - The STAR SG-10 strikes again, NEAR LETTER QUALITY will

override ALL print styles and pitchs. In fact if you

have a STAR printer and enter the entire alphabet as

options the printer will only honor LETTER QUALITY!

GEM I	- The GEMINI 10X has a problem with our method of down-

loading a slash zero into font memory and also printing

italics. The program checks for this condition and will

not slash the zero if GEMFLG=1 and IFLAG=1. The STAR

SG-10 has a command for slash zero and does not exhibit

the problem with italics.


	SUGGESTIONS

There are several unusual facts about using GEM.CMD that may be
of interest to you:

1. Emphasized print looks very similar to double strike but
	prints 1.4 times faster.

2. Subscript can be used as a small character set. To label an
	IC or DIP switch use GEM S 10 to print a readable label that
	matches 100 mil pc board spacing.

	3

3. Compressed print is actually slower than PICA even though the
	head travels a shorter distance. Most other brands of printers
	achieve a faster rate with denser print. The same is true for
	increased lines per inch: shorter travel takes longer!

4. You can conserve paper by using GEM * 9. The assembler can be
	patched to print 99 lines per page resulting in a one third
	reduction in paper consumption.

5. You can eject the printer to the top of a page with a command
	of: GEM * * * 0C. To easily tear off at the middle of the next
	page try: GEM * * * 0C 1B 61 21.

6. The following all reset the printer: GEM *, GEM * * *, GEM P,
	GEM R. Though Reset isn't supported, the letter is ignored.

7. The program sends a beep to the printer after all of the
	escape sequences. This informs you of a successful transfer.


	CONCLUSION

The manual seems long for such a short program! Actually, it took
us a long time to write GEM.CMD and GEM.DOC due to the idiosyn-
crasys of the two printers and the parsing of the four parameter
fields. We hope you will enjoy the program, and send us any
suggestions you may have. In particular, we are interested in any
other printers that will work with GEM without a major rewrite.


	PRINT SPEED

Now that you can select numerous print styles and sizes, you may
be interested in what speed they print at. For example it is
useful to know that EMPHASIZED looks similar to DOUBLE but prints
much faster. Printer speed tests are often debated among scholars
but most agree that throughput is more important than characters
per second. The following table is for the time to print this
manual (including line feeds). Printing was done with the command
P LIST GEM.DOC using a RAMDISK. Results are converted to Lines
per Minute and Characters per Second (including spaces). Since
the test uses lines of 65 characters, the speed is lower than
claimed by the manufacture. This is not intended to be an
official benchmark, just a guide to which print pitches and
styles are faster.


	STAR SG-10	GEMINI 10X

COMMAND	LPM	CPS	LPM	CPS

GEM *	114	79	___	___

GEM * 9	108	75	___	___

GEM E	102	71	___	___

GEM C	92	64	___	___

GEM M	65	45	___	___

GEM V	65	45	-	-

GEM CX	58	40	___	___

GEM D	46	32	___	___

GEM S	46	32	___	___

GEM DM	31	21	___	___

GEM L	31	21	-	-


	4
