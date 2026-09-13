# HELPDOC

> Source: `utilities/system/READTEST - FLEX System Utilities - Program and Support Utilities.zip!READTEST.DSK!HELPDOC.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

* HELP -- A utility command designed to
* save hours of digging through manuals
* in search of information concerning the
* syntax of various computer language
* commands and statements.
* Clear the print flag and
* Open HELPFILE.DIR the default
* data file.
*
* Then, store the target (the word the
* user wants help with).
*
* HELP1 is the main program loop.
* It reads a line from the text and then
* looks at the first character in the line.
*
* If the character is a space it checks the
* print flag (PFLG) and if it is set, calls
* PRINIT to print the line.
*
* If the first character is not a space, it
* is checked to see if it is an asterik which
* marks all comments.  They are ignored.
*
* If it is not a comment, the character is
* checked to see if it is a ">".  If it is
* then the line is a command line and it is
* processed accordingly.
*
* If it is not a command line then it must
* be a KEYWORD because of the way the data
* file is defined.
*
* Each line with a keyword is compared to the
* word the user wants.
*
        PAG

* Data file lines look like this:
*
* DIR <format and definition of DIR>
*
* or
*
* >INPUT <a command processed by HELP>
*
* or
*
* <space> this can be any text.
*

* This routine looks for blank lines
* in the data file.  It prints them
* if the print flag is set, otherwise
* it returns to the main loop witout
* printing.

CHKCR   CMPA #CR
* CHKSTR looks for a comment line in the
* data file.  These lines are marked with
* an asterik in the first column. If it finds
* one it returns to the main loop.  If, not
* it transfers program flow to CHKCMD.
* CHKCMD looks for a ">" than sign in the first
* column.  This marks all HELP commands.  When
* HELP finds a command it searches the command
* table and jumps to the proper command routine.
* If the data files contains a command that is
* not found in the command table, an illegal
* command message is printed.

* HELP4 compares the target word (what
* the user wants help with) with all
* words that start in the first column.
* When a match is found, the print flag
* is set and the line is printed.  It
* returns to the main loop with the print
* flag still set.  Each line that follows
* will be printed until a line comes along
* that contains a character other than a
* space in the first column.  At this time
* the print flag will be cleared.  This is
* done by CHKSTR.

* SRCH is used by CHKCMD to find and execute
* the command called by the data file and by
* HELP4 to compare all words tha begin in
* the first column with the word the user
* is asking about.
*
* It will keep searching until it reaches
* the end of the line buffer which is
* marked with a carriage return.
* CPRMEM is a straight forward memory
* compare routine with two exceptions.

* 1. A question mark "?" in the TARGET
* (word being looked for), if reached
* will automatically cause a match.
* Thus PR? would signal a match for
* both PRINT and for PROT.

* 2. A question mark in the line buffer
* (read in from the data file) will
* cause a match with that character
* only.  This is used in the WILDCARD
* command processor.

* STO gets the target word from the
* FLEX line buffer and places it in
* TARGET.  A space is added in front
* and behind the target word to resolve
* any ambiguities.

* If there is no target in the buffer,
* the print flag is set.  This causes
* a sequence of instructions to be
* printed on the terminal.

* Clear the print flag, add an
* extra space, two dummy bytes
* for compatibilitiy between command
* and word searches and mark the end
* of the target buffer with an $FF.

* Check for the FLEX end of line character
* and exit if found.  else look for a space
* which would separate the target word from
* an optional filename (if it is in the
* command line).
*
* Else, force all characters to uppercase
* to make it easy on the user.  He may type:
* help dir or HELP DIR, both will work.

* When a space is found in command
* line, look for a "<" which tells
* HELP to open the file following the
* "<" instead of HELPFILE.DIR.
*
* Example:
*
* HELP PEEK <BASIC
*
* will look for PEEK in the file
* named BASIC.DIR
* Get the optional filename from
* the command buffer and go move
* it to FCB.

* CFIL is entered after an alternate filename is
* found in the command line.  Since the filename
* must always follow the target, a target is assumed and
* IGFRIN must stay clear so the files prompt will not be
* used.
*
* FILCHG is entered from the IF command.  In this case a new
* file is being opened so IGFRIN is set to force HELP to
* generate a prompt for a target within the newly opened
* file.

* IF compares the word in the target
* buffer with the word following the
* command ">IF".  If the word is a match,
* the old data file is closed and the word
* following ">IF" is moved into the FCB as
* a filename.  It is then open for reading.
*
* EXAMPLE:
*
* >IF PASCAL
*
* If the user typed "HELP PASCAL" or
* answered a prompt with "PASCAL", the
* line above would cause the old data
* file to be closed and PASCAL.DIR to
* be opened for reading.


* Input issues a prompt which follows the command,
* ie, >INPUT What do you want help with now? and
* then calls a routine to enter the word into
* TARGET.
*
* If there is no prompt line, ie, >INPUT,
* the routine will issue a default prompt pointed
* to by WHTSTR.

* INPUT always checks IGFRIN, "Ignore first Input,"
* and does just that if the flag has been cleared
* by STO.
*
* This avoids insulting the user by asking him
* what he wants when he just told you in the
* command line.

* GETWRD gets a word from the keyboard
* by calling the FLEX routine GETCHR until
* it returns a Carriage Return.  It then
* puts the word in TARGET with a format
* identical to that used by STO.  If there
* is a word, the print flag is cleared.  If
* there isn't, the print flag is set.

* INPUYN echoes the prompt following >INPUT-YN
* in the data file or generates its own.  It
* then calls FLEX's GETCHR routine.  If it gets
* a "Y" or "y" for yes, it returns to the main loop.
* If not, it closes all files and exits to
* the FLEX warm start address.

* PRTSRH is the routine that handles the
* >PRINT-SEARCH command in the data files.
* It also prints the data files prompt or
* defaults to yts own.  It then points to
* the TARGET buffer and echoes it to the
* terminal.  This tells the user what the
* program was searching for.  It is handy
* in the case of typos, etc.

* WLDCRD handles the >WILDCARD command.
* It looks for a match between the users
* target word and anything which follows
* ">WILDCARD".  If there is a match,
* the remainder of the line is printed.
* WLDCRD then returns to the main
* loop with the print flag set.
