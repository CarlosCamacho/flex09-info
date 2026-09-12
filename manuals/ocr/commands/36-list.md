# LIST

_Source: FLEX User’s Manual (Technical Systems Consultants), 1979 scan._

LIST

The LIST command is used to LIST the contents of text or BASIC files on
the terminal. It is often desirable to examine a files without having
to use an editor or -other such program. The LIST utility allows
examining entire files, or selected lines of the file. Line numbers may
also be optionally printed with each line.

## Description

The general syntax of the LIST command is:
LIST,<file spec>[,<line range>J[,+(options)]

where the <file spec> designates the file to be LISTed (with a default
extension of TXT),and <line range> is the first and last line number of
the file which you wish to be displayed. All lines are output if no
range specification is given. The IST command supports two additional
options. If a +N option is given, line numbers will be displayed with
the listed file. If a +P option is given, the output will be formatted
jin pages and LIST will prompt for "TITLE" at which time a title for the
output may be entered. The TITLE may be up to 40 characters long. This
feature is useful for obtaining output on a printer for documentation
purposes (see P command). Each page will consist of the title, date,
page number, 54 lines of output and a _ hex OC formfeed character.
Entering a +NP will select both options. A few examples will clarify

the syntax used:

+++LIST,RECEIPTS
++4+LIST,CHAPTER1, 30-200, +NP
+++LIST,LETTER, 100

The first example will list the file named 'RECEIPTS.TXT' without line
numbers. All lines will be output unless the 'escape character' is used
as described in the Utility Command Set introduction. The second
example will LIST the 30th line through the 200th line of the file named
"CHAPTER1.TXT' on the terminal. The hyphen ('-') is required as the
range number separator. Line numbering and page formatting will be
output because of the '+NP' option. The last example shows a special
feature of the range specification. If only one number is stated, it
will be interpretted as the first line to be displayed. All Tines
following that Tine will also be LISTed. The last example will LIST the
lines from line 100 to the end of the file. No Tine numbers will] be
output since the 'N' was omitted.


