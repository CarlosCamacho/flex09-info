# TIME

_OCR transcription from: `Screenshot_20260912-071543.png`_

TIME
The TIME command is provided so that the user may read
the time on the Time-of-Day clock on the GIMIX 6809 PLUS
CPU CARD with the Time-of-Day clock option installed.
## Description
The general syntax of the TIME command is:
TIME
TIME takes no parameters and prints the time as read
from the clock.
To use the TIME command merely type the following:
+++TIME
The computer output will have the following format:
FRIDAY SEPTEMBER @5, 69:44:41 AM
If the computer responds:
ERROR READING TIME, CLOCK NOT SET
It means that the program detected an invalid value from
the clock and the clock needs to be set. To set the
time use the SETTIME command.
This command uses the FLEX output routines and therefore
the output can be re-directed with any of the FLEX
output re-direction command (i.e. 'P', 'O', etc.).
If there is no Time-of-Day clock installed in your
system this program may cause the CPU to loop
infinitely. If this happens the only way to exit the
loop is to press the 'RESET' button on the front panel.

