# S02XIORT

> Source: `dev/csc/CSCPRODS_4 - CSC Development - Programs, Source, and Build Files.zip!CSCPRODS_4.DSK!S02XIORT.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

m
.sp
The full screen sales analysis system has been made as simple to use
as possible.	When the primary program is run, it prompts for a
sales analysis file name.	If the file name entered is not found, the
program terminates with an error message.	ALL CONTROL SEQUENCES MUST END WITH $FF
CONT00 FCB $15,$FF back field input
CONT01 FCB $09,$FF forward field input
CONT02 FCB $0D,$FF carriage return input
CONT03 FCB $1E,$FF home up input
CONT04 FCB $1A,$FF clear screen input
CONT05 FCB $0C,$FF cursorU $7E MAX PRINTABLE CHAR
ACIADR EQU $8004 PORT ADDR
SCRNWD EQU 16 SCREEN WIDTH IN BYTES
TERMNM FCC "(TVI-9XX)"
 FCB $04
TERMNL EQU $5456 TV
**
CLRSCN FCB $1A,$80,$80,$80
HOMEUP FCB $1E,$00,$00,$00
UPCUR FCB $0B,$00,$00,$00
DNCUR FCB $0A,$00,$00,$00
LFCed on a
best effort basis. Computer Systems Consultants reserves the right to
make program corrections or improvements on an individual or wholesale
basis, as required. The company is under no obligation to provide
corrections or improvements to all us Y, and other modes, respectively.
.sp
The second portion provides the macro expansion body.	The lines
are in a fixed format.	The first position must be blank.	The
second thru fourth positions contain zero to three option names.
The values of the muy cause difficulties in terms of addresses,
parameters, and functions.
The address problems are usually the simplest to solve, since
these generally involve merely changing addresses in EQU
statements.
The parameter-passing problem encompasses addresse
