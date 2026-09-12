# SETTIME

_OCR transcription from: `Screenshot_20260912-071402.png`_

SETTIME

The SETTIME command is provided so that the user may set
the time on the Time-of-Day clock on the GIMIX 6809 PLUS
CPU BOARD with the Time-of-Day clock option installed.
## Description
The general format of the SETTIME command is:

SETTIME
SETTIME takes no parameters and prompts the user for all
pertinent information needed to set the clock.
To use the SETTIME command merely type the following:

+++SETTIME
The computer will then respond like this:

MINUTES (1 - 59)?
The user then types in the minutes to be set to. The
program then proceeds to prompt the user for hours, day
of the week, day of the month and month.
If the computer responds to any of the prompts with this
message?

INVALID INPUT, PLEASE RE-TRY.
It means that you did not enter a valid input for that
prompt.
This program uses the FLEX line buffer to enable the
user to delete or backspace his entry before carriage
return is typed. To correct an error after carriage
return has been typed the user must re-execute the
SETTIME command.
After the time has been entered and the following line
is showing:

TYPE ANY CHARACTER TO START THE CLOCK?
The time on the clock will stay where it has been set to
until a character is typed on the keyboard.
Since this command uses the FLEX line buffer it cannot
be use in multiple statement lines unless it is the last
statement on the line.

