# YEAR

_OCR transcription from: `Screenshot_20260912-071658.png`_

YEAR

The YEAR command is used to display or change the year in the
internal FLEX date register. This command is used when FLEX is
patched to load the current day and month from the Time-of--Day
clock on the GIMIX 6809 CPU board (see the section on patching
FLEX to use the Time-of-Day clock). The YEAR command should be
included in the STARTUP file to set the year when the system is
booted.
## Description
The general syntax of the YEAR command is:

YEAR[,YY]
Where YY is the last two digits of the current year. If no year
is entered the current year in the FLEX system date area will be
printed.
To use the YEAR command type the following:

+++YEAR
or

+++YEAR,81
The first example prints the year in the FLEX date register. '
The second example sets the year to 1981.
The error message =

INVALID YEAR IN INPUT LINE
Indicates that an illegal value was entered for the year [YY}.

