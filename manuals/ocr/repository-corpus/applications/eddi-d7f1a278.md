# EDDI

> Source: `apps/dynacalc/FLXDMA_A - DynaCalc Spreadsheet - Programs and Utility Collection.zip!FLXDMA_A.DSK!EDDI.HLP`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

INSTRUCTION AND COMMAND LIST


CLEAR ALL Display this menu
CLEAR EOP Delete from cursor to the end of the screen
CLEAR EOL Delete from cursor to the end of the line
INS LINE	Insert text at cursor to limit of memory
DEL LINE	Delete line containing the cursor
INS CHAR	Insert 1 space at cursor position
DEL CHAR	Delete 1 character at cursor position
SCROLL UP Display the next 23 lines of text
SCROLL DN Display the last 23 lines of text
PREV	Display the previous line of text
NEXT	Display the next line of text
HOME	Move cursor to home position
TAB	Move cursor to next tab setting
BK TAB	Insert (,SI 5)
<--	Move cursor left 1 space
-->	Move cursor right 1 space
UP ARROW	Move cursor up 1 line
DN ARROW	Move cursor down 1 line
ESC	Stop and return to command mode
^TEST	Set line length
^FIRST	Display first 24 lines of text
^LAST	Display last 23 lines of text
^DELET	Delete word at cursor position
^LOCAT	Find and display requested string
^LOAD	Continue with a file larger than available memory
^PRINT	Print the text
^ADD	Enter edit mode
^REPL	Move beginning marker thru ending marker to destination marker
^EXIT	Return to DOS saving the text
^B	Set beginning marker
^C	Copy beginning marker to ending marker at destination marker
^D	Set destination marker
^E	Set ending marker
^F	Execute a DOS command
^G	Set a ghost hyphen
^I	Insert a disk file at cursor position
^N	Locate and display line #
^O	Set left margin for printer
^P	Preview text
^Q	Exchange <string 1> with <string 2>
^R	Display current line number
^S	Save on disk from beginning marker to ending marker
^T	Set a tab stop at cursor position
^U	Display marker addresses
^V	Clear all markers
^W	Set maximum line length
^X	Abort
^Y	Clear all tab stops
^Z	Delete from beginning marker to ending marker
^]	Report free bytes of memory left
^RUB	Toggle c/r display


FORMATTING COMMANDS

 ,CE nn	Center nn lines
 ,RJ nn	Right justify nn lines
 ,JU	Justify
 ,NJ	No justify
 ,LL nn	Line length
 ,IN nn	Indent nn spaces
 ,SI nn	Indent 1 line nn spaces
 ,PL nn	Page length nn lines
 ,PG	New page
 ,PN nnnn	Page number
 ,HD	Define Header
 ,FT	Define Footer
 ,FN	Define Footnote
 ,,	End definition
 ,LM nn	Set left margin nn spaces
 ,SS nn	Set spacing per line
 ,CS nn	Set character width
 ,VS nn	Set vertical height per line
 ,OF nn	Odd page margin offset
 ,PC nn	Printer commands

	EPSON	DAISYWRITER

0 - Normal print		Normal print

1 - Condensed print	17 chars per inch

2 - Wide print
Wide printing

3 - Double print		Enhanced printing

8 -	Auto prop. spacing

9 -	Prop spacing off

10 -	10 chars per inch

12 -	12 chars per inch

15 -	15 chars per inch


^B	()	CONTROL B to start and stop Boldface printing

(Emphasized on Epson)

^E	()	CONTROL E to start and stop Shadow printing

(Italic on Epson)

^_	()	CONTROL UNDERLINE to start and stop underlining.

^z	()	CONTROL Z to stop all above special efects.

^\	(
)	CONTROL \	to halt printer.

^^	(
)	CONTROL UP ARROW to start and stop superscripting.

^N	()	CONTROL N to start and stop subscripting.
