# TERMLIB

> Source: `flex-09/distributions/255X32 - Unix Kermit C Source and Terminal Library - 4 MiB Disk Image.zip!255X32.DSK!TERMLIB.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.h1 TERMLIB 3U "UNIX Programmer's Manual
.h2 termlib - terminal independent operation routines
.f1 Page#
.br
tgetent, tgetnum, tgetflag, tgetstr, tgoto, tputs
.nf
char PC;
char *BC;
char *UP;
short ospeed;

tgetent(bp, name)
char *bp, *name;

tgetnum(id)
char *id;

tgetflag(id)
char *id;

char *
tgetstr(id, area)
char *id, **area;

char *
tgoto(cm, destcol, destline)
char *cm;

tputs(cp, affcnt, outc)
register char *cp;
int affcnt;
int (*outc)();
.sp
.fi
.ce
DESCRIPTION
.sp
These functions extract and use the capabilities from the
terminal capability data base
.ul
termcap(5U)

.ul
Tgetent
extracts the entry for terminal
.ul
name
into the buffer at
.ul
bp.
.ul
Bp
should be a character buffer of size BUFSIZ (i.e. 512) and must
be retained through all subsequent calls to
.ul
tgetnum, tgetflag,
and
.ul
tgetstr.	Tgetent
returns -1 if it cannot open the
.ul
termcap
file, 0 if the terminal name given does not have an entry,
and 1 if all goes well.	It will look in the environment for
a TERMCAP variable and use its value as a path name rather
than
.ul
/etc/termcap
if one is found; this can be used to debug new terminal
descriptions or to make one for your terminal if you can't
write the file
.ul
/etc/termcap

.ul
Tgetnum
gets the numeric value of capability
.ul
id,
returning -1 if is not given for the terminal.
.ul
Tgetflag
returns 1 if the specified capability is present in the
terminal's entry, 0 if it is not.
.ul
Tgetstr
gets the string value of capability
.ul
id,
placing it in the buffer at
.ul
area,
advancing the
.ul
area
pointer.	It decodes the abbreviations for this field
described in
.ul
termcap(5U).

.ul
Tgoto
returns a cursor addressing string decoded from
.ul
cm
to go to column
.ul
destcol
in line
.ul
destline.
It uses the external variables UP (from the up capability)
and BC (if bc is given rather than bs) if necessary to avoid
placing \t, \n, ^D or ^@ int the returned string.	If a %
sequence is given which is not understood, then
.ul
tgoto
returns 'OOPS'.

.ul
Tputs
decodes the leading padding information of the string
.ul
cp; affcnt
gives the number of lines affected by the operation, or 0
if this is not applicable,
.ul
outc
is a routine which is called with each character in turn.
The external variable
.ul
ospeed
should contain the output speed of the terminal as encoded
by
.ul
stty
(2).	The external variable PC should contain a pad character
to be used (from the pc capability) if a null (^@) is
inappropriate.
.sp 2
.ce
CAPABILITIES
.sp
.nf

(P) indicates padding may be specified
(P*) indicates that padding may be based on no. lines affected

Name	Type	Pad?	Description
ae	str	(P)	End alternate character set
al	str	(P*)	Add new blank line
am	bool	Terminal has automatic margins
as	str	(P)	Start alternate character set
bc	str		Backspace if not ^H
bs	bool	Terminal can backspace with ^H
bt	str	(P)	Back tab
bw	bool	Backspace wraps from column 0 to last column
CC	str		Command character in prototype if terminal settable
cd	str	(P*)	Clear to end of display
ce	str	(P)	Clear to end of line
ch	str	(P)	Like cm but horizontal motion only, line stays same
cl	str	(P*)	Clear screen
cm	str	(P)	Cursor motion
co	num		Number of columns in a line
cr	str	(P*)	Carriage return, (default ^M)
cs	str	(P)	Change scrolling region (vt100), like cm
cv	str	(P)	Like ch but vertical only.
da	bool	Display may be retained above
dB	num		Number of millisec of bs delay needed
db	bool	Display may be retained below
dC	num		Number of millisec of cr delay needed
dc	str	(P*)	Delete character
dF	num		Number of millisec of ff delay needed
dl	str	(P*)	Delete line
dm	str		Delete mode (enter)
dN	num		Number of millisec of nl delay needed
do	str		Down one line
dT	num		Number of millisec of tab delay needed
ed	str		End delete mode
ei	str		End insert mode; give ":ei=:" if ic
eo	str		Can erase overstrikes with a blank
ff	str	(P*)	Hardcopy terminal page eject (default ^L)
hc	bool	Hardcopy terminal
hd	str		Half-line down (forward 1/2 linefeed)
ho	str		Home cursor (if no cm)
hu	str		Half-line up (reverse 1/2 linefeed)
hz	str		Hazeltine; can't print ~'s
ic	str	(P)	Insert character
if	str		Name of file containing is
im	bool	Insert mode (enter); give ":im=:" if ic
in	bool	Insert mode distinguishes nulls on display
ip	str	(P*)	Insert pad after character inserted
is	str		Terminal initialization string
k0-k9	str		Sent by "other" function keys 0-9
kb	str		Sent by backspace key
kd	str		Sent by terminal down arrow key
ke	str		Out of "keypad transmit" mode
kh	str		Sent by home key
kl	str		Sent by terminal left arrow key
kn	num		Number of "other" keys
ko	str		Termcap entries for other non-function keys
kr	str		Sent by terminal right arrow key
ks	str		Put terminal in "keypad transmit" mode
ku	str		Sent by terminal up arrow key
l0-l9	str		Labels on "other" function keys
li	num		Number of lines on screen or page
ll	str		Last line, first column (if no cm)
ma	str		Arrow key map, used by vi version 2 only
mi	bool	Safe to move while in insert mode
ml	str		Memory lock on above cursor.
ms	bool	Safe to move while in standout and underline mode
mu	str		Memory unlock (turn off memory lock).
nc	bool	No correctly working carriage return (DM2500,H2000)
nd	str		Non-destructive space (cursor right)
nl	str	(P*)	Newline character (default \n)
ns	bool	Terminal is a CRT but doesn't scroll.
os	bool	Terminal overstrikes
pc	str		Pad character (rather than null)
pt	bool	Has hardware tabs (may need to be set with is)
se	str		End stand out mode
sf	str	(P)	Scroll forwards
sg	num		Number of blank chars left by so or se
so	str		Begin stand out mode
sr	str	(P)	Scroll reverse (backwards)
ta	str	(P)	Tab (other than ^I or with padding)
tc	str		Entry of similar terminal - must be last
te	str		String to end programs that use cm
ti	str		String to begin programs that use cm
uc	str		Underscore one char and move past it
ue	str		End underscore mode
ug	num		Number of blank chars left by us or ue
ul	bool	Terminal underlines even though it doesn't overstrike
up	str		Upline (cursor up)
us	str		Start underscore mode
vb	str		Visible bell (may not move cursor)
ve	str		Sequence to end open/visual mode
vs	str		Sequence to start open/visual mode
xb	bool	Beehive (f1=escape, f2=ctrl C)
xn	bool	A newline is ignored after a wrap (Concept)
xr	bool	Return acts like ce \r \n (Delta Data)
xs	bool	Standout not erased by writing over it (HP 264?)
xt	bool	Tabs are destructive, magic so char (Teleray 1061)
.in -5
.nf
.sp 2
.ce
FILES
.sp
/usr/lib/libterm.a	-ltermlib library
.br
/etc/termcap	data base
.ce
"SEE ALSO"
ex(1U), termcap(5U)
----- AUTHOR
William Joy
---- BUGS
The terminal independent cursor motion optimization routines
of
.ul
ex
should be placed in the library also.
ast it
ue	str		End underscore mode
ug	num	
