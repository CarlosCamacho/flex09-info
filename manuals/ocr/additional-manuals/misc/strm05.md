# STRM05

> Source: `manuals/misc/REFERENC - Manual and Documentation Archive.zip!REFERENC.DSK!STRM05.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                          TECHNICAL REFERENCE MANUAL

                      SCREDITOR III COMMANDS AND OPERATORS


.DHE
%TECHNICAL REFERENCE MANUAL                          SCREDITOR III WORD PROCESSOR

                      SCREDITOR III COMMANDS AND OPERATORS


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                        PAGE 5-%%%%
.DFE
"
 PAGE 5-%%%%                                        (C) 1982, ALFORD & ASSOCIATES
 As indicated in the  DEFINITIONS  section,  there  are  two  types  of  commands
 recognized  by  SCREDITOR III, ESCAPE COMMANDS (or just COMMANDS) and OPERATORS.
 COMMANDS are entered in COMMAND MODE, and are executed before control returns to
 SCREEN  EDIT  MODE.  These  COMMANDS are so entered either because they are less
 often used than the OPERATORS, or because they  require  additional  information
 before they can execute.

 The  OPERATORS,  on  the  other  hand, with the exception of the ACTIVATE SYMBOL
 OPERATOR, do not require any additional information for their execution, and are
 used  continuously during SCREEN EDIT MODE. For these reasons, they are assigned
 to special keys on the keyboard.


ENTERING COMMANDS

 When COMMAND MODE is entered by  typing  the  ESCAPE  OPERATOR,  the  TAB/MARGIN
 display  will  be  cleared,  and the cursor placed in column one on the line. In
 addition, the last command line entry will be displayed to  allow  you  to  make
 changes and re-execute it, if desired.

 During COMMAND MODE, a number of the normal OPERATORS are available to allow you
 to make changes to the command line, and are active as follows:


 CURSOR LEFT                  SPLIT PARAGRAPH       (*)   INSERT LINE MODE    (*)
 MELD PARAGRAPH        (*)    PAGE UP                     CONVERT TO LOWER    (*)
 SCROLL UP             (*)    NEW LINE              (*)   CURSOR UP           (*)
 DELETE TO MARGIN (1)  (1)    PAGE DOWN             (2)   DELETE CHARACTER
 INSERT CHARACTER MODE (*)    TAB SET/CLEAR         (*)   DELETE WORD         (*)
 INSERT SPACE                 DELETE LINE           (*)   CURSOR DOWN         (*)
 GOTO MARK             (*)    TAB TO MARGIN               ESCAPE              (*)
 DESTRUCTIVE BACKSPACE        SCROLL DOWN           (3)   TAB WORD            (*)
 TAB FOREWARD          (*)    CURSOR RIGHT          (*)   TAB END OF LINE     (*)
 ACTIVATE SYMBOL       (*)    CONVERT TO UPPER      (*)   TAB BACKWARD        (*)
                                                          TAB WORD BACKWARD   (*)

 (*) THIS OPERATOR IS NOT ACTIVE IN COMMAND MODE
 (1) DELETES TO END OF COMMAND LINE
 (2) CAUSES THE COMMAND LINE TO EXECUTE
 (3) MOVES CURSOR TO START OF LINE ONLY


 Those  OPERATORS  in  this  table which are not marked will perform their normal
 function when entered; i.e., CURSOR LEFT  will  move  the  cursor  one  position
 toward  the start of the command line. Those which have different definitions or
 are undefined are so marked.


SPECIAL CHARACTERS

 During COMMAND MODE, certain characters are defined, as follows:


 DELIMITER -

 This character is normally used to separate multiple strings, command arguments,
 etc...  There  is no pre-defined delimiter in this version of SCREDITOR III, but
 rather the delimiter (shown in this manual as  a  slash  (/))  'floats',  or  is
 defined during the entry of each COMMAND which uses it to be the first character
 after the command name.


 EOC CHARACTER -

 (shown in this manual as a semi-colon (;)). This character is normally  used  to
 separate  multiple  COMMANDS.  The EOC character, which is shown as (EOC) in the
 COMMAND descriptions in this manual, is definable during the CONGEN and will not
 necessarily be the same character as shown when you run SCREDITOR III.


 EOL -

 Although  shown  as if it were a character in this manual, actually means END OF
 LINE, or that no more non-space characters exist on the command line. EOL can be
 an EOC, but EOC is not an EOL.


 TYPE CHARACTERS -

 Four  type characters are defined in this version of SCREDITOR III. The first is
 the pounds symbol (#), which is used as an  indication  that  the  number  which
 follows  will  be  an absolute line, column or page number. The second is a 'at'
 symbol (@) which indicates that the number which follows is a  count  of  lines,
 columns  or  pages.  The  third is an asterisk (*) which indicates that the last
 line, column or page is desired. The fourth is the null type character,  and  is
 defined  as  the  absence  of  any  of  the  other  three type characters. These
 characters will be better understood as each the description  for  each  COMMAND
 which uses them is read.


 DELETE (ABORT) -

 When  entered,  SCREDITOR  III will immediately leave COMMAND MODE and return to
 SCREEN EDIT MODE. This key is generally marked DEL or RUB on the  keyboard,  and
 is  the  ASCII  rubout  character $7F. This key is also used to provide an early
 stoppage of the execution of a number of COMMANDS  (such  as  FIND,  CHANGE  and
 PRINT).


RE-EXECUTING A COMMAND LINE

 Many command line entries will be repetitive in nature; that is, you  will  wish
 to  do  them  several times. SCREDITOR III provides an easy way to perform these
 operations without having to continuously enter the sequence  of  COMMANDS  each
 time the function is to be performed.

 For  instance,  if  you  are re-justifying an entire document, you could enter a
 justification COMMAND in COMMAND MODE  to  justify  the  first  paragraph,  then
 position  the  cursor to the next paragraph. To justify this next paragraph, you
 would only have to hit the ESCAPE OPERATOR followed by the NEW LINE OPERATOR and
 the command line would re-execute, justifying this new paragraph. This procedure
 could be followed through the entire buffer, saving quite a bit of typing!

 Although the automatic re-display of the previously  entered  command  line  can
 save  a  lot  of  typing,  it  can also cause problems if you are not reasonably
 careful. If multiple COMMANDS have been entered,  and  an  error  occurs  during
 their  execution,  only  part  of  the command line will generally have executed
 (Murphy's Law). When this occurs, it is easy to re-enter COMMAND MODE, move  the
 cursor over to the incorrect entry, make a spot correction, and then execute the
 entire line again by hitting the NEW LINE OPERATOR, WITHOUT DELETING THE PART OF
 THE  COMMAND  LINE  WHICH  EXECUTED  WITHOUT  AN  ERROR.  This  may  cause  some
 embarrassing things to happen.

 For instance, if the first COMMAND was the  KL  (KILL  LINES)  COMMAND,  and  it
 executed  normally,  and  the  next COMMAND was a JP (JUSTIFY PARAGRAPH) COMMAND
 which aborted because the current line after deleting lines was  a  blank  line,
 the following might happen:

 Seeing  the  paragraph  didn't  justify,  and  knowing why, you quickly move the
 cursor to the start of the paragraph, hit the ESCAPE OPERATOR  followed  by  the
 NEW  LINE  OPERATOR  without  looking,  thinking  that  now  the paragraph would
 justify. Instead of simply justifying the paragraph,  however,  the  KL  COMMAND
 would re-execute, deleting the paragraph, and then the JP COMMAND would execute,
 nicely melding the multi-column table which follows into  a  clean  and  totally
 unreadable paragraph! When entering multiple COMMANDS, take extra care and watch
 carefully. SCREDITOR III will do what you tell it to, even when you  don't  want
 it to!


MULTIPLE COMMANDS

 Multiple  COMMANDS may be entered on the same line in COMMAND MODE by separating
 them with an EOC character, as in the following example:


    TO;FI/SCREDITOR III/;NE;FI/MULTIPLE/;SM;FI/SINGLE/;SM


 Although not shown, you would type the ESCAPE OPERATOR to  enter  COMMAND  MODE.
 Then you would type the above string of COMMANDS, and terminate the COMMAND MODE
 by entering the  NEW  LINE  OPERATOR.  SCREDITOR  III  would  then  perform  the
 following operations.

 First, the display area would move to the top of the current buffer (TO;). Next,
 the first occurrence of 'SCREDITOR III' would be located  (FI/SCREDITOR  III/;).
 Now you hit the ABORT KEY to stop the FIND COMMAND. The part of the buffer up to
 but not including the line containing SCREDITOR III (the new current line) would
 then  be  saved,  and  new lines read from the INPUT file (NE;). Next, the first
 occurrence of 'MULTIPLE' would be found (FI/MULTIPLE/). The ABORT KEY is  struck
 again.  Then  a mark would be set at that line (SM;). Next, the first occurrence
 of SINGLE would be found (FI/SINGLE/;). One more  ABORT  KEY.  Finally,  a  mark
 would be set on that line (SM).

 As  each COMMAND is performed, the cursor is moved to the first character of the
 COMMAND which is in the process of being executed. By watching the cursor  move,
 you  can  tell just what SCREDITOR III is actually doing during the execution of
 the line.


ENTERING OPERATORS IN COMMAND MODE

 Any OPERATOR except the ESCAPE OPERATOR may be entered in the  command  line  by
 entering   an   up-arrow   (^)  followed  by  the  two-character  OPERATOR  name
 abbreviation and an EOC character (EOL if entered as the last entry on the line.
 See SINGLE KEY OPERATORS, elsewhere, for operator name abbreviations). This type
 of entry is shown in the following example:


    ^CR;^TM;^TR;^TR;^DW;^TM


 After entering these characters, you would type the NEW LINE OPERATOR  to  cause
 the command line to execute. This example would move the cursor to the right one
 column (^CR;), return the cursor to the left margin (^TM;), move  to  the  right
 two  tab-stops  (^TR;^TR;),  delete the word existing at that tab setting (DW;),
 and finally, return the cursor to the left margin (^TM).


EXCEPTIONS TO EOC USE

 Certain  COMMANDS  in  SCREDITOR III cannot be followed by other COMMANDS. These
 COMMANDS are either terminal  in  nature  (i.e.,  control  does  not  return  to
 SCREDITOR  III  after  their  execution), or are special in that anything may be
 typed as data for the COMMAND, including the EOC character (such as  the  DEFINE
 SYMBOL  COMMAND).  Those COMMANDS which do not allow EOC and additional COMMANDS
 are shown with (EOL) in the COMMAND DESCRIPTIONS and COMMAND SUMMARIES.

ERRORS

 When an error occurs during the operation of SCREDITOR III, one of three  things
 will  happen.  First,  if  the  error  is  a  simple one (such as running into a
 margin), the bell on your terminal  (if  so  equipped)  will  ring.  This  error
 indication can be considered a warning.

 The  second  thing that can happen is that the TAB/MARGIN line will clear and an
 error message will be posted. After the message is displayed, the terminal  bell
 will ring. This type of error generally requires something to be done to correct
 the situation. When an error message is posted, you must hit the  space  bar  to
 clear  it. After hitting the space bar, control will return to SCREEN EDIT MODE.
 You should then do whatever is necessary to correct the situation.

 The third type of error occurs during the reading or writing of  the  main  edit
 files.  If  such  an  error  occurs, an immediate abort to DOS will occur on the
 assumption that if you do anything else, you may not have a disk to come back to
 when you are finished editing!


CORRECTING COMMAND MODE ERRORS

 When  an  error  occurs  in  the  execution  of  a  command  line,  you can make
 corrections to the erroneous command entry by first clearing the error  message,
 if  any  (by hitting the SPACE BAR), and then entering the ESCAPE OPERATOR as if
 you were going to enter a COMMAND. When this is done, the previous command  line
 will  be  displayed  and  you  may  edit  and  correct it as necessary. When the
 corrections have been made, entering  the  NEW  LINE  OPERATOR  will  cause  the
 command  line  to  be  re-executed.  READ THE WARNING ABOUT RE-ENTRY OF COMMANDS
 GIVEN PREVIOUSLY!


BUFFER FULL ERROR

 There is one error returned by SCREDITOR III which will require  special  action
 on  your  part.  This error occurs when the current buffer becomes totally full.
 When it happens, you cannot move the cursor off of the current line, or  execute
 any COMMAND or OPERATOR which could do so (such as TOP, BOTTOM, etc...).

 The  only way to recover from this error is to make some room in the buffer. The
 easiest way is to use the SAVE COMMAND and save some lines to the  output  file.
 You  can  also open a WRITE-OUT file and extract some lines, or you could simply
 delete the current line. In any case,  you  must  remove  some  lines  from  the
 current buffer in whatever way you choose to make room.


EXECUTING THE COMMAND LINE

 When  the  command  entry is complete, entering the NEW LINE OPERATOR will cause
 the execution of the command line to  begin.  If  multiple  COMMANDS  have  been
 entered,  the  cursor  will  be positioned to the start of each COMMAND as it is
 executed as a visual indication of what is currently  being  done  by  SCREDITOR
 III.

 The  NEW  LINE OPERATOR can be typed to begin execution of the command line with
 the cursor at any position on the line. This makes  it  convenient  to  enter  a
 command  line  and  execute  it,  and then re-execute the line without having to
 re-type it. Simply wait until the execution is complete and control  returns  to
 SCREEN  EDIT  MODE, then hit the ESCAPE OPERATOR followed immediately by the NEW
 LINE OPERATOR. The command line will then re-execute.

 When the NEW LINE  OPERATOR  is  entered,  the  command  line  is  automatically
 truncated  to the last non-space character on the line. Spaces at the end of the
 command line are never retained when the line is executed.


GENERAL COMMAND DESCRIPTION CONVENTIONS

 In this manual, several conventions are used, as  has  been  previously  stated.
 Before reading the following section on SCREDITOR III COMMANDS, it would be good
 to re-state these conventions.

 First, parentheses are used to indicate a field of  information.  For  instance,
 (STRING1) indicates a string of characters, and the parentheses are not actually
 entered. Another example would be (FILE) or (FILENAME) which  indicates  that  a
 filename  valid for your DOS would be entered. Again, the parentheses themselves
 are not typed when you enter the command line.

 Second, (EOC) is used consistently to indicate either that an EOC  character  or
 the  end  of  the  line  exists. In the case of multiple COMMANDS on the command
 line, (EOC) indicates that the EOC character would exist. If no further commands
 follow,  (EOC)  indicates  the end of the line. (EOL) indicates that the COMMAND
 may not be followed by (EOC) and other COMMANDS.

 Third, as indicated previously, the semi-colon is used in this manual as the EOC
 character,  but  you  may  be using some other character depending upon what you
 specified during CONGEN.
