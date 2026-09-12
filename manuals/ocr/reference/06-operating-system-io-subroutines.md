# Operating System Input/Output Subroutines

_OCR transcription from: `Screenshot_20260912-072024.png`, `Screenshot_20260912-072037.png`_

VIII. FLEX OPERATING SYSTEM INPUT/OQUTPUT SUBROUTINES
In order for the FLEX I/0 functions to operate properly, all user
program character input/output subroutines should be vectored thru the
FLEX operating system rather than the computer's monitor. Below is a
list of FLEX's I/0 subroutines and a brief description of each. All
given addresses are in hexadecimal.
GETCHR at $CD15
This subroutine is functionally equivalent to S-BUG's character input
routine. This routine will look for one character from the control
terminal (I/0 port #1) and store it in the A accumulator. Once called,
the input routine will loop within itself until a character has been
input. Anytime input is desired, the call JSR GETCHR or JSR $CD15 should
be used.
GETCHR automatically sets the 8th bit to O and does not check for
parity. A call to this subroutine affects the processor's registers as
follows:

ACC. A loaded with the character input from the terminal

B,X,Y,U not affected
PUTCHR at $CD18
This subroutine is used to output one character from the computer to the
control port (1/0 port #1). It is functionally equivalant to the output
character routine in S-BUG.
To use PUTCHR, the character to be output should be placed in the A
accumulator in its ASCII form. For example, to output the letter 'A' on
the control terminal, the following program should be used:

LDA #$41

JSR $cD18
The processor's registers are affected as follows:

ACC. A changed internally

B,X,Y,U not affected
PSTRNG at $CD1E
PSTRNG is a subroutine used to output a string of text on the control
terminal. When address $CD1E is called, a carriage return and line feed
will automatically be generated and data output will begin at the
location pointed to by the index register. Output will continue until a
hex 04 is seen. The same rules for using the ESCAPE and RETURN keys for
stopping output apply as described earlier.
The accumulator and register status after using PSTRNG are as follows:

ACC. A Changed during the operation

ACC. B- Unchanged
x Contains the memory location of the last character read from the
string (usually the 04 unless stopped by the ESC key)
Y,U Unchanged
NOTE: The ability of using backspace and line delete characters is a
Function of your user program and not of the FLEX I/0 routines described
above.
For additional information consult the 'Advanced Programmer's Manual'.
STAT at $CD4E
This routine is used to determine the "status" of the input device.
That is, to see if a character has been typed on the input terminal
keyboard. Its function is to check for characters such as the ESCAPE key
in FLEX which allows breaking of the output. This routine returns an
EQual condition if no character was hit and a Not-Equal condition if a
character was hit. No registers, except for the condition codes, may be
altered.

