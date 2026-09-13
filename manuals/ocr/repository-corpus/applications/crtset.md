# CRTSET

> Source: `apps/spelling-dictionaries/DICK_B6 - Spelling and Dictionary - Documentation and Examples.zip!DICK_B6.DSK!CRTSET.MAN`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,ce 1
_C_R_T_S_E_T
,JU
,ll 75
,in 10

	A person writing a program for his terminal which utilizes some of the special built-in functions prevents another from using the same program with a different terminal without re-assembly.	CRTSET was written to try to make this complication as easy to circumvent as possible.	CRTSET contains 8 of the most common screen functions.	The idea is this; if it is desired to do cursor addressing, the example listed next might be used.

	LDD	#$1B3D	LEAR ADM-3A CURSOR POSITION CODES
	JSR	PUTCHR	OUTPUT CHAR IN 'A'
	TFR	B,A
	JSR	PUTCHR	OUTPUT SECOND CHAR
	LDD	#$2020	CO-ORDINATE CODES
	JSR	PUTCHR
	TFR	B,A
	JSR	PUTCHR	THE CURSOR IS NOW AT THE TOP LEFT POSITION

	With CRTSET used, the same routine would look like this:

	LDD	ACA	GET TERMINAL CODE FROM TABLE
	JSR	PUTCHR
	TFR	B,A
	JSR	PUTCHR
	LDD	#0432	ROW 4, COLUMN 32
	ADDD	OFFSET	ADD IN OFFSET VALUES
	JSR	PUTCHR
	TFR	B,A
	JSR	PUTCHR

	Note, the only difference is the first instruction.	Instead of an imqmediate word of data that is not easily changed, the program reads the code from the CRTSET table, which each user sets for his own particular hardware, thereby becoming hardware independent.

The syntax of the command is:

CRTSET	This displays the existing codes.
CRTSET ACA=1B3D		This sets absolute cursor address code
CRTSET ACA=1B3D EOL=1B46 ERF=1B47 HOM=1E00

	Any or all the codes may be changed at one time.	To make use of the command as simple and painless as possible, include it in your STARTUP.TXT file.	After booting, no further action is required.

Example STARTUP.TXT file:

TTYSET BE=8, WD=80:CRTSET ACA=1B3D OFF=3232 EOL=0 ERL=0 EOF=1B4A ERF=0 HOM=1B48

NOTE:	No carriage returns are allowed within the STARTUP file as this terminates the routine.	The command line may wrap-around if it is longer	than the length of your screen.

The definitions used in CRTSET are as follows:

ACA = The codes required as a lead-in to absolute cursor addressing
OFF = The offset to be added to the cursor coordinates before
	transmission to the CRT.
NOR = Normal screen display, no reverse or highlighting
REV = Reverse video or highlighted area
EOL = Erase from cursor position to end of the line
EOF = Erase from the cursor position to the end of the screen
ERF = Home the cursor and clear entire screen
HOM = Home the cursor, leaving the data on screen

If a particular funtion is not implemented on your hardware, simply set the command to 0000.	Also, if the command only requires one byte, such as a control ^, which is a hex 1E, make it 001E or 1E00.

	Listed below is an example of the codes that would be utilized for a
LEAR ADM-3 terminal, and a HEATH H-19 terminal.

	LEAR	#HEATH
	----	#-----
ACA=1B3D	ESCAPE, EQUALS
ACA=1B59	ESCAPE, 'Y'
OFF=2020	HEX 20	OFF=2020	HEX 20
NOR=0000	NOT IMPLEMENTED
NOR=1B71	ESCAPE, 'q'
REV=0000	NOT IMPLEMENTED
REV=1B70	ESCAPE, 'p'
EOL=0000	NOT IMPLEMENTED
EOL=1B4B	ESCAPE, 'K'
EOF=0000	NOT IMPLEMENTED
EOF=1B4A	ESCAPE, 'J'
ERF=001A	CONTROL Z	ERF=1B45	ESCAPE, 'E'
HOM=001E	CONTROL ^	HOM=1B48	ESCAPE, 'H'

	The functions listed above are located in memory at the below listed addresses.	To access one of the functions in a user program, simply equate the function with the listed address for that function.

ACA - $CCB0
OFF - $CCB2
EOL - $CCB4
NOR - $CCB6
REV - $CCB8
EOF - $CCBA
ERF - $CCBC
HOM - $CCBE
