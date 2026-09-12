# DATE

_Source: FLEX User’s Manual (Technical Systems Consultants), 1979 scan._

DATE

The DATE command is used to display or change an internal FLEX date
register. This date register may be used by future programs and FLEX
utilities.
## Description
The general syntax of the DATE command is:

DATE[,<month,day,year>]

where 'month' is the numerical month, 'day' is the numerical day and
'year' is the last two digits of the year.

+++DATE 5,2,79 Sets the date register to May 2, 1979

Typing DATE followed by a carriage return will return the last entered
date.

Example:
+4++DATE
May 2, 1979


