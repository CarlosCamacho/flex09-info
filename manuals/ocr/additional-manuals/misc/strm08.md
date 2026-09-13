# STRM08

> Source: `manuals/misc/REFERENC - Manual and Documentation Archive.zip!REFERENC.DSK!STRM08.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                          TECHNICAL REFERENCE MANUAL

                         SCREDITOR III ERROR MESSAGES


.DHE
%TECHNICAL REFERENCE MANUAL                          SCREDITOR III WORD PROCESSOR

                         SCREDITOR III ERROR MESSAGES


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                        PAGE 8-%%%%
.DFE
"
 PAGE 8-%%%%                                        (C) 1982, ALFORD & ASSOCIATES
 SCREDITOR III is designed to be as user-friendly as possible. In that  interest,
 there  are  no  numeric error messages posted with the exception of those errors
 returned from DOS.

 When SCREDITOR III posts any message, it  does  so  by  erasing  the  TAB/MARGIN
 display  line,  displaying  the  error message on that line, ringing the bell on
 your terminal, and then waits for you to read the message. Once  you  have  read
 it,  you  may  clear  it  by hitting the space bar. When the message is cleared,
 control always returns to SCREEN EDIT MODE. The  following  paragraphs  describe
 each message used by SCREDITOR III.


* SCREDITOR III VSN 1.10 * Copyright 1982, Alford and Associates *

 This message  is  displayed  when  SCREDITOR  III  starts  up.  The  message  is
 automatically cleared in about one second.


ILLEGAL SYNTAX

 Something  was  wrong  in  the  way  you entered the COMMAND which returned this
 error. This error is used when no specific error exists for what you did wrong.


ILLEGAL COMMAND

 A two-character command name which does not exist  was  entered  during  COMMAND
 MODE.


ILLEGAL MODE

 If  you  attempt  to  split a line using the SPLIT OPERATOR, or attempt to put a
 paragraph back together using the MELD OPERATOR, this message will be displayed.
 An  attempt  to use any COMMAND or OPERATOR which is not active during a certain
 mode will cause this error to be posted.


ILLEGAL OPTION

 An illegal option character was entered in a COMMAND. For instance, only B, E or
 O may be entered as option characters with the DEFINE HEADER or FOOTER COMMAND.


ILLEGAL TYPE

 The  type character for a target was incorrect for the COMMAND with which it was
 entered. For instance, the 'to-the-end' type character, an asterisk, may not  be
 entered with the SKIP READ-IN COMMAND.


ILLEGAL TARGET

 A zero was entered for any target value (zero is never legal), or a target value
 which could be determined to be too big or small was entered.


ILLEGAL TERMINATOR

 Most often, a character other than (EOL) or (EOC) followed an otherwise  legally
 entered  COMMAND. Occasionally, a string-oriented COMMAND such as FIND or CHANGE
 will return this error when an entire field is left out.


DELIMITER MISSING

 A leading or trailing delimiter in a string-oriented COMMAND  was  missing.  For
 instance,  three  delimiters  are  required to complete the syntax of the CHANGE
 COMMAND. If you leave one off, this error will occur.


BUFFER FULL

 If the situation occurs during text entry that  the  current  buffer  fills  all
 available  space, this message will be posted. When this occurs, you will not be
 able to leave the current line until at least one line is either saved to a file
 or deleted from the buffer.


TOP OF BUFFER

 An  attempt was made to move the cursor closer to the start of the file, and the
 cursor was already on the first line in the current buffer.


BOTTOM OF BUFFER

 An attempt was made to move the cursor closer to the end of the  file,  and  the
 cursor was already on the last line in the current buffer.

 This  error  is also returned when the FIND or CHANGE COMMAND hits the bottom of
 buffer without finding an occurrence of a target string.


TARGET NOT REACHED

 A target was specified which could not be reached. This error will  be  returned
 when  it cannot be determined whether or not the target is out of range when the
 COMMAND begins execution, and a subsequent target error occurs.  A  page  number
 never  reached  by  a PRINT COMMAND is a good example of this, or a READ-IN to a
 line number beyond the end of a file.


NO ROOM FOR MULTI-INSERT

 This error will be returned when an insert or  delete  operation  could  not  be
 completed in MULTI-COLUMN MODE due to extreme text-tear.


DISK I/O ERROR #nnn

 An  error  occurred during a call to DOS. The number displayed after the message
 is the error number returned by DOS, and is displayed decimally.


NO SUCH FILE

 An illegal file name was entered.


NOTHING TO SAVE

 The SAVE COMMAND was entered with the cursor on the first line of the buffer (no
 lines before the current line).


FCB IN USE

 The  work  FILE  CONTROL  BLOCK  is  being  used by another COMMAND, or has been
 disabled due to a previous MISCELLANEOUS DISK COMMAND error.


FILE NOT OPEN

 The COMMAND which returned this error requires an open file,  and  no  file  was
 open. For instance, you must use the OPEN READ-IN COMMAND before you can use the
 INSERT READ-IN COMMAND.


NO FILES OPEN

 An attempt was made to do a NEW or SAVE without an output file open.


ILLEGAL FILE TYPE

 The LOAD PRINTER DATA COMMAND or the LOAD SYMBOLS COMMAND was given a file which
 was  not of the type required by the COMMAND. These files have unique characters
 written at the start of the file to  identify  the  file  type  to  the  COMMAND
 attempting to load it.


TALLY ACTIVITY ERROR

 An attempt was made to insert a tally total when none existed.


CANNOT INSERT

 There was insufficient room to insert the tally total.


ILLEGAL TALLY DELIMITER

 The  number  to which the cursor was pointing did not have a dollar sign, a plus
 sign, a minus sign or a blank before it, or was not followed by a plus  sign,  a
 minus sign or a blank.


ILLEGAL TALLY FIELD

 The  character  to  which  the  cursor  is pointing is not a number or a decimal
 point.


MARGIN OVERRUN

 An attempt was made to set the left or right margin onto the wrong side  of  the
 other margin.


OUTSIDE CURRENT MARGINS

 The  word  you  just  tried to delete extends past the left or right margin, and
 therefore could not be deleted.


ILLEGAL SYMBOL

 A symbol name outside the range of A-Z (or a-z) was entered.


SYMBOL LENGTH OVERFLOW

 There is not enough room in the symbol buffer to save the  definition  you  just
 entered.


ILLEGAL HEADER/FOOTER

 You  had  the  cursor  on  the  top line of the buffer when you entered a DEFINE
 HEADER or DEFINE FOOTER COMMAND.

ILLEGAL CONTROL CODE

 An attempt was made to enter an illegal printer control code in the CONTROL CODE
 IMBEDMENT COMMAND.


ILLEGAL PAGE LENGTH

 The  total  printed  page  length  less the sum of the top margin and the bottom
 margin must be at least five. This error is returned by the DEFINE PRINTER  PAGE
 COMMAND  if  this  formula does not test true when page definitions are entered.
 Also, the DEFINE HEADER/FOOTER COMMAND will return this error if you attempt  to
 define headers or footers whose lengths do not meet this criteria.


NO PRINTER DATA

 This  error  will  not  normally  occur  unless  a previous LOAD PRINTER COMMAND
 encountered a disk error during loading and  flushed  the  printer  data  areas,
 since  SCREDITOR  III  will  not  start  up  without printer data in the current
 version. When this is the case, the PRINT COMMANDS will return this error.


ALREADY DEFINED

 You attempted to define an even or odd header or  footer  when  it  was  already
 defined.


NOT DEFINED

 You attempted to undefine header/footers when no definitions exist.


PAGE START NOT FOUND

 You  attempted to begin printing on a page whose start has already been saved to
 the output file. Such a page may not be printed.


CANNOT MERGE-PRINT

 The file you are attempting to print has no insertion strings, or a NEW or  SAVE
 COMMAND has been executed, or a partial file read situation exists.


OUT OF DATA

 An end-of-file condition occurred in the data file during PRINT-MERGE.


KEYGEN FILE ERROR!

 An  error  was encountered during the loading of the KEYGEN data file. This will
 always cause an abort to DOS.


CONGEN FILE ERROR!

 An error was encountered during the loading of the CONGEN data file.  This  will
 always cause an abort to DOS.


PRTGEN FILE ERROR!

 An  error  was encountered during the loading of the PRTGEN data file. This will
 always cause an abort to DOS during start-up. If such  an  error  occurs  during
 program operation, a DISK ERROR message will be posted.


FILES FAILED TO RENAME!

 After all files were closed, a disk error occurred which did not allow the .TMP,
 .SCR or SCRATCH file to be renamed. Generally, the only thing you will  have  to
 do  to  remedy the situation is to manually rename the files after you return to
 DOS.


EDIT,

 No file names were entered in the call to the SSB or FLEX version  of  SCREDITOR
 III. See the section on SCREDITOR III AND DOS for more information.


EDITING A .BAK FILE REQUIRES A FILENAME FOR THE OUTPUT FILE!

 If  you  attempt  to  edit  a  file  with a .BAK extension using the SSB or FLEX
 version, you must provide a filename for the output file. If you try to  default
 the output filename, this error will be posted and control will return to DOS.


ILLEGAL MEMORY CONSTANTS!!!

 (SSB  and  FLEX  versions  only) Either the start of buffer value entered during
 CONGEN overlaps SCREDITOR III, or the difference between the end of buffer value
 and the start of buffer value was not at least six thousand bytes.
