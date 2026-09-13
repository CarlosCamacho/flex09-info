# HELP

> Source: `utilities/system/READTEST - FLEX System Utilities - Program and Support Utilities.zip!READTEST.DSK!HELP.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

NAM HELP
	OPT PAG
*
	SETDP $C1
* HELP -- A utility command designed to
* save hours of digging through manuals
* in search of information concerning the
* syntax of various computer language
* commands and statements.
*
* COPYRIGHT (C) 1980 BY
* Frank Hogg and Dale Puckett
*
* Frank Hogg Dental Laboratory
* 130 Midtown Plaza
* 700 East Water St.
* Syracuse, New York	13210

	NAM HELP

* FLEX Subroutine Equates

WARMS EQU $CD03
GETFIL EQU $CD2D
GETCHR EQU $CD15
PUTCHR EQU $CD18
PCRLF	EQU $CD24
SETEXT EQU $CD33
RPTERR EQU $CD3F
NXTCHR EQU $CD27

* FLEX File Management Routines

FMS EQU $D406
FMSCLS EQU $D403

* Other System Equates

FCB EQU $C840
EOL EQU $CC02
SRCHAL EQU $FF

* Special Character Equates

CR EQU $0D
SPACE EQU $20

	PAG

* Actual code of HELP starts here
* Branch over temporary storage first

	ORG $C100

HELP BRA START

VERSION FCB 1 version number
IGFRIN FCB $FF Ignore first query
PFLG	RMB 1 Print Flag
FNDFLG	RMB 1 = zero when found
DOING RMB 1
WLDFLG RMB 1
TARG1	RMB 2 object of search
TARG2	RMB 2 place to look
TEMP1A	RMB 2 dup of TARG1
RESPTR	RMB 2 points after Keyword
WRDLOC	RMB 2 used by "IF" command

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
* marks all comments.	They are ignored.
*
* If it is not a comment, the character is
* checked to see if it is a ">".	If it is
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
	PAG

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

START	LDA #$C1 get direct page
	TFR A,DP set direct page register
	CLR <PFLG turn print flag off
	CLR <DOING
	CLR <WLDFLG
	JSR PCRLF
	LDX #FCB point to FCB HELPFILE.DIR is loaded
	LDA #1	open for read in FCB at startup
	STA 0,X
	JSR FMS	do it
	LBNE ERROR
	LBSR STO
HELP1	LDX #FCB	This is HELP's main loop
	LEAY LINBUF,PCR point to input buffer
	LDA #SPACE
	STA 0,Y+
HELP2	JSR FMS	get character
	STA 0,Y+ store it
	CMPA #CR was it a CR?
	BNE HELP2	no, get another
	LEAY LINBUF,PCR
	LBSR PUTSPA
HELP3	LEAY LINBUF+1,PCR
	LDA 0,Y
	CMPA #SPACE is it a space?
	BNE CHKCR no, check for CR
	TST <PFLG Yes, check print flag
	BNE PRINIT flag set, go print it
	BRA HELP1 else, go get another line

	PAG
* This routine looks for blank lines
* in the data file.	It prints them
* if the print flag is set, otherwise
* it returns to the main loop witout
* printing.

CHKCR	CMPA #CR
	BNE CHKSTR go look for remarks or commands
	TST <PFLG is CR, is print flag set?
	BEQ HELP1 no, go get another line
	JSR PCRLF yes, do carriage return
	BRA HELP1 and go get more

* This routine outputs one line of text
* plus a carriage return/line feed. It then
* returns to the main loop.

PRINIT	BSR PLINE print a line
	JSR PCRLF do a carriage return
	BRA HELP1 and go get more

* CHKSTR looks for a comment line in the
* data file.	These lines are marked with
* an asterik in the first column. If it finds
* one it returns to the main loop.	If, not
* it transfers program flow to CHKCMD.

CHKSTR	CLR <PFLG clear print flag when first
	TST <DOING have we already found one
	BNE CHKWLD
CHKST1	CMPA #'* char in line is not a space
	BNE CHKCMD if not remark, look for command line
	BRA HELP1 "*" ignore all remarks

CHKWLD	TST <WLDFLG Multiple search?
	BNE CHKST1 Yes, go
	LBRA INWRD2 no, quit

* CHKCMD looks for a ">" than sign in the first
* column.	This marks all HELP commands.	When
* HELP finds a command it searches the command
* table and jumps to the proper command routine.
* If the data files contains a command that is
* not found in the command table, an illegal
* command message is printed.

CHKCMD	CMPA #'> ">" marks a command line
	BNE HELP4 not found, go look for match
	LEAX LINBUF+2,PCR point to line buffer
	STX <TARG2
	LEAX CMDTAB,PCR point to command table
	STX <TARG1
	BSR SRCH and go look
	BNE ILLCMD no valid commands found
	JMP [,Y] execute the command
	PAG

* HELP4 compares the target word (what
* the user wants help with) with all
* words that start in the first column.
* When a match is found, the print flag
* is set and the line is printed.	It
* returns to the main loop with the print
* flag still set.	Each line that follows
* will be printed until a line comes along
* that contains a character other than a
* space in the first column.	At this time
* the print flag will be cleared.	This is
* done by CHKSTR.

HELP4	LEAX LINBUF,PCR point to line buffer
	STX <TARG2
	LEAX TARGET,PCR and target of search
	STX <TARG1 and go look
	BSR SRCH returns 0 if found
	BNE HELP1 no, get another line
	INC <PFLG a match, so set print flag
	INC <DOING and doing flag
	JSR PCRLF
	LEAY LINBUF+1,PCR point to the line
	BSR PLINE and print it
	JSR PCRLF do carriage return
	LBRA HELP1 and get another line

* tell user there is illegal command in
* his data file.

ILLCMD	LEAY ILCMST,PCR point to "illegal Command"
	BSR PLINE	message and print it
	JSR PCRLF do carriage return
	LBRA HELP1 and get next line

* Print a full line of text, up to
* but not including the carriage return,
* from the line buffer.

PLINE	LDA 0,Y+ get character
	CMPA #CR carriage return?
	BNE OUT no, print it
	RTS yes, return
OUT	JSR PUTCHR call FLEX's output routine
	BRA PLINE loop till done
	PAG

* SRCH is used by CHKCMD to find and execute
* the command called by the data file and by
* HELP4 to compare all words tha begin in
* the first column with the word the user
* is asking about.
*
* It will keep searching until it reaches
* the end of the line buffer which is
* marked with a carriage return.

SRCH	LDX <TARG2 point to buffer
	LDY <TARG1 and target
	STY <TEMP1A save it
	LDB 0,Y+ get length of target
	STB <FNDFLG save it
	CMPB #$FF marks end of table or target
	BNE SRCH1 not end, go look
SRHRET	STX <RESPTR save position in buffer
	TST <FNDFLG see if found
	RTS and return

SRCH1	BSR CPRMEM go make compare
	TST <FNDFLG found?
	BEQ SRHRET yes go return
TRYAGN	LDY <TEMP1A no try again
	LDB 0,Y+ get count
	STB <FNDFLG save it
	CMPB #$FF end?
	BNE SRCH2 no, go look
	BRA SRHRET yes, return

SRCH2	BSR CPRMEM make compare
	TST <FNDFLG found?
	BEQ SRHRET yes, return
	BRA TRYAGN else, keep trying
	PAG
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
* only.	This is used in the WILDCARD
* command processor.

CPRMEM	LDA 0,X+ get buffer character
	CMPA #CR end of buffer?
	BEQ NOTHR target is not here
	CMPA 0,Y+ compare with target
	BNE CHKQUE not equal, look for "?"
FNDQUE	DEC <FNDFLG found one, decrement count
	BNE CPRMEM and keep comparing
CPRRET	RTS till done

* Look for a question mark
* first in buffer

CHKQUE	LDA -1,Y get character in buffer
	CMPA #'? that didn't match, was it a "?"
	BNE CPRXXX no, return
	CLR <FNDFLG yes, flag a match
	INC <WLDFLG and set wild flag
	BRA CPRRET and return

* Then in Target

CPRXXX LDA -1,X get character from target
	CMPA #'? that didn't match
	BEQ FNDQUE yes, count as one character
	BRA CPRRET

* If command is not found, look
* for another.

NOTHR	LDX <TARG2 back to start of buffer
	LDY <TEMP1A get target again
	LDB 0,Y+ get count
	ADDB #2 skip over address pointer
	LEAY B,Y point to new command
	STY <TEMP1A save its location
	RTS return
	PAG
* STO gets the target word from the
* FLEX line buffer and places it in
* TARGET.	A space is added in front
* and behind the target word to resolve
* any ambiguities.

* If there is no target in the buffer,
* the print flag is set.	This causes
* a sequence of instructions to be
* printed on the terminal.

STO	LEAX TARGET+1,PCR point to target buffer
	CLRB count = 0
	LDA #SPACE
	STA 0,X+
	INCB
STOIT	JSR NXTCHR get character from FLEX
	CMPA #CR line buffer, see if CR
	BNE CHKEOL no, look for FLEX EOL marker
STO1	CMPB #1 ok, was there a target in
	BHI CLRPRT command line, go if yes
SETPRT	INC <PFLG no, set print flag
	LDA #$FF mark end of search
	STA TARGET,PCR
	BRA STORET and return

* Clear the print flag, add an
* extra space, two dummy bytes
* for compatibilitiy between command
* and word searches and mark the end
* of the target buffer with an $FF.

CLRPRT	CLR <PFLG found target, so clear print flag
	CLR <IGFRIN must ignore input prompt
	LDA #SPACE get a space
	STA 0,X+ put at end of line
	STA 0,X+ add two dummy bytes to make
	STA 0,X+ search routine work with both
	LDA #$FF command and target searches
	STA 0,X "FF" marks end of search table
	INCB count one added space as part
	STB TARGET,PCR of word length, put
	BRA STORET in target buffer and return
	PAG
* Check for the FLEX end of line character
* and exit if found.	else look for a space
* which would separate the target word from
* an optional filename (if it is in the
* command line).
*
* Else, force all characters to uppercase
* to make it easy on the user.	He may type:
* help dir or HELP DIR, both will work.

CHKEOL	CMPA EOL FLEX command separator?
	BEQ STO1 yes, exit
	CMPA #SPACE
	BEQ CHKNXT
	CMPA #'a else, lowercase?
	BLO STO2 no go store
	SUBA #$20 else, force uppercase
STO2	STA 0,X+ and store
	INCB count character
	BRA STOIT and loop till
STORET	RTS done

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

CHKNXT	JSR NXTCHR
	CMPA #'<
	BEQ CFIL we must change file
	BRA STO1
	PAG
* Get the optional filename from
* the command buffer and go move
* it to FCB.

* CFIL is entered after an alternate filename is
* found in the command line.	Since the filename
* must always follow the target, a target is assumed and
* IGFRIN must stay clear so the files prompt will not be
* used.
*
* FILCHG is entered from the IF command.	In this case a new
* file is being opened so IGFRIN is set to force HELP to
* generate a prompt for a target within the newly opened
* file.

CFIL	BSR CLRPRT
	BRA CFIL1 we know we have word--don't prompt
FILCHG	INC <IGFRIN must prompt for target in new file
CFIL1	LEAY FILBUF,PCR
	LDB #8 length of filename
FILC1	JSR NXTCHR
	CMPA #CR
	BEQ EXICHK
	CMPA EOL
	BEQ EXICHK
	CMPA #SPACE
	BEQ EXICHK
	CMPA #'a lowercase?
	BLO FILC2 it's upper, go store
	SUBA #$20 force uppercase
FILC2	STA 0,Y+
	DECB
	BNE FILC1 loop till we have eight
GOCHG	LEAX FILBUF,PCR Point to new filename
	STX <WRDLOC save it
	BRA CHGFIL go put it in FCB.

* If there are not eight characters
* in filename, pad with spaces

EXICHK	LDA #SPACE fill rest of
EXI1	STA 0,Y+ filename with spaces
	DEC B
	BNE EXI1
	BRA GOCHG

* Add an extra space at the end of
* each line in the line buffer.	This
* eliminates ambiguity.

PUTSPA	LDA 0,Y+ get character from buffer
	CMPA #CR look for carriage return
	BNE PUTSPA loop till found
	LEAY -1,Y get postion
	LDA #SPACE get space
	STA 0,Y+ and store it
	LDA #CR then get carriage return
	STA 0,Y+ and store it
	RTS return
	PAG
* Various HELP commands start here

* Turn on Print flag

PRON	INC <PFLG set print flag
	LBRA HELP1 and return to main loop

* Turn off print flag

PROFF	CLR <PFLG clear print flag
	LBRA HELP1 return to main loop

* IF compares the word in the target
* buffer with the word following the
* command ">IF".	If the word is a match,
* the old data file is closed and the word
* following ">IF" is moved into the FCB as
* a filename.	It is then open for reading.
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

IF	LDX <RESPTR point to rest of line
	STX <WRDLOC save location
	LEAX -1,X back up to space
	STX <TARG2 get ready for search
	LEAX TARGET,PCR get target
	STX <TARG1
	LBSR SRCH go look
	LBNE HELP1 not equal, back to loop
	BSR CHGFIL equal, so change files
	LBRA HELP1 and return to main loop
	PAG

* CHGFIL first closes the current file,
* then it gets the new filename which starts
* at the location WRDLOC and moves it into
* the FCB.	The file is then opened for
* reading.

CHGFIL	LDX #FCB found, close present file
	LDA #4
	STA 0,X
	JSR FMS
	LBNE ERROR
	LDX <WRDLOC point to new file name
	LDY #FCB+3
	LDA #SRCHAL get drive number
	STA 0,Y+ stuff in FCB
	LDB #11 length of filename and ext.
CHLOOP	CLR 0,Y+ clear it
	DECB
	BNE CHLOOP
	LDY #FCB+4 start of filename
	LDB #8 length of filename
MOVIF	LDA 0,X+ get character
	CMPA #SPACE is it a space
	BEQ STOZER yes, pad with zeros
	STA 0,Y+ else store character
	DECB count = count - 1
	BNE MOVIF loop till done
	BRA OPENIF then go open file

STOZER	CLRA zero goes to A-reg
STOZ1	STA 0,Y+ into FCB
	DECB count -1
	BNE STOZ1 loop till done
OPENIF	LDX #FCB point to FCB
	LDA #9 and set ext to DIR
	STA 0,X
	JSR SETEXT do it
	BNE ERROR go on error
	LDA #1 open new file to read
	STA 0,X
	JSR FMS do it
	BNE ERROR go on error
	RTS return
	PAG
* Rewind the data file to look
* for something else.

RESTORE LDX #FCB point to FCB
	LDA #5 go rewind file
	STA 0,X
	JSR FMS do it
	BNE ERROR go on error
	CLR <DOING
	CLR <WLDFLG
	LBRA HELP1 return to main loop

* Report errors through FLEX's RPTERR routine

ERROR	JSR RPTERR call FLEX error reporting
	JSR FMSCLS close all files
	JMP WARMS and return to operating system

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

INPUT	TST <IGFRIN ignore input if
	BEQ INRET <IGFRIN = 0
	LDX <RESPTR else point to rest of buffer
	LDA 0,X+ get character
	CMPA #SPACE-1 control character?
	BHI PREST no its ASCII
	LEAY WHTSTR,PCR yes, point to prompt
INWRD	LBSR PLINE and print it
	BSR GETWRD get a target word
	JSR PCRLF do a carriage return
INRET	LDA #$FF don't ignore any more
	STA <IGFRIN
	JSR PCRLF do a carriage return
	LBRA HELP1 return to main loop
	PAG
* GETWRD gets a word from the keyboard
* by calling the FLEX routine GETCHR until
* it returns a Carriage Return.	It then
* puts the word in TARGET with a format
* identical to that used by STO.	If there
* is a word, the print flag is cleared.	If
* there isn't, the print flag is set.

GETWRD	LEAX TARGET+1,PCR point to target buffer
	CLRB clear count
	LDA #SPACE
	STA 0,X+
	INCB
GET1	JSR GETCHR get character from keyboard
	CMPA #CR is it a CR?
	BEQ GETEX yes exit
	CMPA #'a else lowercase?
	BLO GSTO2 yes store
	SUBA #$20 no, force lowercase
GSTO2	STA 0,X+ put in buffer
	INCB count = count + 1
	BRA GET1 loop till done
GETEX	CMPB #1 did we get any
	BHI GCLPRT yes, go
	INC <PFLG no, set print flag
	LDA #$FF set end flag
	STA TARGET,PCR
GETRET	RTS and return

* Clear print flag and fix up TARGET buffer.

GCLPRT	CLR <PFLG got one, so clear print flag
	LDA #SPACE insert space
	STA 0,X+
	STA 0,X+ and pseudo
	STA 0,X+ address
	LDA #$FF and mark end
	STA 0,X
	INCB count added space
	STB TARGET,PCR save length
	BRA GETRET and go return

PREST	LDY <RESPTR point to rest of buffer
	BRA INWRD and go

PREST1	LDY <RESPTR point to rest of buffer
	BRA INWRD1 and go

PREST2	LDY <RESPTR point to rest of buffer
	BRA PRSR2 and go
	PAG
* INPUYN echoes the prompt following >INPUT-YN
* in the data file or generates its own.	It
* then calls FLEX's GETCHR routine.	If it gets
* a "Y" or "y" for yes, it returns to the main loop.
* If not, it closes all files and exits to
* the FLEX warm start address.

INPUYN	JSR PCRLF do carriage return
	LDX <RESPTR point to rest of buffer
	LDA 0,X+ get character
	CMPA #SPACE-1 control character?
	BHI PREST1 no its valid, go
	LEAY YSNSTR,PCR yes point to prompt
INWRD1	LBSR PLINE and print it
	JSR GETCHR get a character from keyboard
	PSHS A save it on stack
	JSR PCRLF do a carriage return
	PULS A get character back
	ORA #$60 force lowercase
	CMPA #'y did user say "yes"
	LBEQ HELP1 yes, return to main loop
INWRD2	JSR FMSCLS no close all files
	JMP WARMS and return to operating system

* PRTSRH is the routine that handles the
* >PRINT-SEARCH command in the data files.
* It also prints the data files prompt or
* defaults to yts own.	It then points to
* the TARGET buffer and echoes it to the
* terminal.	This tells the user what the
* program was searching for.	It is handy
* in the case of typos, etc.

PRTSRH	JSR PCRLF do carriage return
	LDX <RESPTR point to rest of line
	LDA 0,X+ get character
	CMPA #SPACE-1 control character?
	BHI PREST2 no its ASCII, go
	LEAY WESRST,PCR else point to prompt
PRSR2	LBSR PLINE print it
	LEAY TARGET+2,PCR point to target
PRSR1	LDA 0,Y+ get character
	CMPA #SPACE space?
	BEQ PRSREX yes exit
	JSR PUTCHR no, put it out to terminal
	BRA PRSR1 till done

PRSREX	JSR PCRLF do carrige return
	LBRA HELP1 and return to main loop
	PAG
* WLDCRD handles the >WILDCARD command.
* It looks for a match between the users
* target word and anything which follows
* ">WILDCARD".	If there is a match,
* the remainder of the line is printed.
* WLDCRD then returns to the main
* loop with the print flag set.

WLDCRD	CLR <PFLG clear print flag
	LDX <RESPTR point to rest of line
	LEAX -1,X
	STX <TARG2 for search
	LEAX TARGET,PCR point to target
	STX <TARG1
	LBSR SRCH go look
	LBNE HELP1 return if not found
	INC <PFLG else, set print flag
	INC <DOING and doing flag
	LDY <RESPTR point to rest of line
	LEAY -1,Y
WLD1	LDA 0,Y+
	CMPA #SPACE
	BNE WLD1
	LBSR PLINE and print it
	JSR PCRLF do carriage return
	LBRA HELP1 return to main loop

* This is the command table which is seached.
* Note that the end is marked by an $FF in
* the search length byte.

CMDTAB	FCC 9,/PRINT-ON /
	FDB PRON
	FCC $A,/PRINT-OFF /
	FDB PROFF
	FCC 9,/WILDCARD /
	FDB WLDCRD
	FCC 3,/IF /
	FDB IF
	FCC 8,/RESTORE /
	FDB RESTORE
	FCC 9,/INPUT-YN /
	FDB INPUYN
	FCC 6,/INPUT /
	FDB INPUT
	FCC $D,/PRINT-SEARCH /
	FDB PRTSRH
	FCB $FF
	PAG
* Strings start here

ILCMST	FCC /*** Illegal Command in File ***/,$D
WHTSTR	FCC /What can we HELP you with? /,$D
YSNSTR	FCC /Would you like more HELP ( Y or N )? /,$D
WESRST	FCC /We were looking for /,$D

TARGET	RMB 32
LINBUF	RMB 90 Could be increased but a screen
FILBUF RMB 10 is only 80 characters wide.
	ORG $C843 System FCB+3

	FCC $FF,/HELPFILEDIR/ Search all drives


	END HELP
