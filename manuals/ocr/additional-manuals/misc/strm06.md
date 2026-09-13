# STRM06

> Source: `manuals/misc/REFERENC - Manual and Documentation Archive.zip!REFERENC.DSK!STRM06.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                          TECHNICAL REFERENCE MANUAL

                       SCREDITOR III COMMAND DESCRIPTIONS


.DHE
%TECHNICAL REFERENCE MANUAL                          SCREDITOR III WORD PROCESSOR

                       SCREDITOR III COMMAND DESCRIPTIONS


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                        PAGE 6-%%%%
.DFE
"
 PAGE 6-%%%%                                        (C) 1982, ALFORD & ASSOCIATES
 The following pages describe each COMMAND in detail. The COMMANDS are listed  in
 alphabetical  order  by  the two-letter COMMAND NAME. Note that certain COMMANDS
 are only available  in  versions  of  SCREDITOR  III  for  particular  operating
 systems,  or  operate  differently  depending  upon the operating system in use.
 Also, note that some COMMANDS allow other COMMANDS to follow them on  a  command
 line,  and that others do not. Those that do will have (EOC) in the syntax line,
 and those that don't will have (EOL).

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 AB - ABORT EDIT SESSION

 SYNTAX:  AB(EOL)

 GENERAL: The ABORT COMMAND is used to  immediately  quit  an  edit  session  and
          return  to  DOS. If an input file is open, it will be closed intact. If
          an output file is open, it will be deleted. If a work file is open,  it
          will be closed, but will not be deleted.

          This  COMMAND  may  be  used  to  close a file which was opened for the
          express purpose of printing a file or extracting lines to a work  file,
          and  control  will return to DOS without changing the original file(s).
          Also, if it is determined that an  edit  session  has  begun  on  wrong
          files,  this  COMMAND is convenient in that the state of all files upon
          return to DOS is identical to that which existed when the edit  session
          started  except  for  any  WRITE-OUT  files which may have been created
          during the aborted edit session.

 ERRORS:  If another COMMAND follows the AB COMMAND, an ILLEGAL TERMINATOR  error
          will be posted.

          If  an  error  occurs in the file closings, a DISK ERROR will be posted
          and control returned to DOS.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 BO - MOVE TO BOTTOM OF BUFFER

 SYNTAX:  BO(EOC)

 GENERAL: The BOTTOM COMMAND will move the edit display area to the bottom of the
          current buffer. A partial screen of lines will be displayed if there is
          less than a full screen page of lines remaining from the current cursor
          position to the end of the buffer.

          This  COMMAND  is used to rapidly position the edit display area to the
          bottom of the current buffer.

 ERRORS:  If the buffer has become completely full, a BUFFER FULL message will be
          displayed and no movement will occur until a line has been removed from
          the buffer by deletion, NEW, SAVE or WRITE-OUT.

          If the cursor is presently on the last line in the buffer, a BOTTOM  OF
          BUFFER message will be posted.

          If  any  character  other than (EOC) or (EOL) follows the two-character
          COMMAND name, an ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CC - CONTROL CODE IMBEDDMENT

 SYNTAX:  CC#nn(EOC)

          The  command  name  must  be  followed  by  the  pound  symbol (#) type
          character and that in turn by a two-digit number in the range of 1 - 31

          In all versions of SCREDITOR III, the codes 0 and 13 are not allowed.

          In  addition,  in  the  SSB version code 26 is not allowed. In the FLEX
          version, codes 9 and 26 are not allowed. In the OS-9 version,  code  27
          is not allowed.

          It  is  strongly suggested that codes under 14 not be used except where
          pre-defined to  allow  upward  compatibility  with  later  releases  of
          SCREDITOR III.

 GENERAL: When  this  COMMAND is executed, the character under the cursor will be
          replaced by a code which will be used for the control of  your  printer
          during  the  use  of  the PR COMMAND. Each such control code imbeddment
          will be displayed as an up-arrow during  normal  editing,  and  may  be
          erased  by  use  of the DELETE CHARACTER operator, or by over-typing by
          any other key.

          The code entered is used to select the actual  string  of  character(s)
          which will be sent to the printer when the control code is encountered.
          There are seven control strings which are always defined by the same CC
          codes. They are as follows:

          CODE 1  - START FULL UNDERLINE         CODE 7  - OPERATOR STOP
          CODE 2  - END FULL UNDERLINE           CODE 10 - START BROKEN UNDERLINE
          CODE 3  - START BOLDFACE               CODE 11 - END BROKEN UNDERLINE
          CODE 4  - END BOLDFACE                 CODE 14 - START GRAPHICS
          CODE 5  - START DOUBLE WIDTH           CODE 15 - END GRAPHICS
          CODE 6  - END DOUBLE WIDTH

          All of the other codes except as noted in the syntax  comments  may  be
          defined  by  the  user to allow the implementation of specialty printer
          operations.

          The reason that CODES 1-6 are always defined  for  the  same  functions
          involves the way in which SCREDITOR III interprets these codes. Special
          consideration is given to the code since there is an alternate  way  in
          which to generate the functions with some printers.

          In  the  case  of  underline  and  boldface  printing,  printers  which
          backspace but do not support directly implement the codes (such  as  an
          IBM  SELECTRIC)  may  perform  these functions by printing a character,
          backspacing, and then either  typing  an  underline  or  re-typing  the
          character.

          In  the  case of printing double width characters, each character to be
          so printed may be printed followed by a space.


          When SCREDITOR III encounters one of these codes  during  printing,  it
          examines the printer characteristics previously loaded. If the function
          is defined, the sequence of characters defined are sent to the printer.
          In the case of underline and boldface, if the function is not  defined,
          the  backspace function is checked. If backspace is defined, it is used
          as previously described to perform the operation.

          In the case of printing double width, that characteristic is  examined.
          If defined, the defined string will be sent to the printer to implement
          the function. If not defined, spaces are sent after each  character  to
          effectively double space the word.

          When  these  functions  are turned on, they will remain in effect until
          the associated off code is sent.  Only  one  of  these  standard  codes
          should  be  active  at  any  given  time, or unpredictable results will
          occur.

          Even though print double width is a "stock" code, SCREDITOR  III  makes
          no  assumption  as  to whether or not your printer is actually printing
          double width. No attempt at any special display justification is  made.
          Since this type if printing is seldom if ever included within justified
          material (most printers won't allow part of a line to be double width),
          it  was  not considered worth the effort to add the necessary coding to
          SCREDITOR III to maintain display proportion.

          The operator stop  code  is  defined  to  allow  users  of  incremental
          printers  (which  print  a  character  and wait for another) to stop to
          change type elements, ribbon colors, etc... When the OP  STOP  code  is
          encountered,  printing  will cease until any key on the keyboard is hit
          except the ABORT key. Printing will then resume. If the  ABORT  key  is
          hit, printing will stop and control will return to SCREEN EDIT MODE.

          Each  imbedded  code  takes  a  character  space  in  the  line. During
          printing, the space taken by the imbedment will be printed as a  blank.
          Under  some conditions, justification will appear ragged, especially in
          the case of a control code at the start or end of a line. It is  up  to
          the  operator to visually inspect the result of justification to insure
          that the desired result has been obtained.

          During editing, automatic word wrap,  melding,  justification,  etc...,
          will  change  the  position  of  words on lines and between lines. When
          imbedded codes are being used, it is a good idea to look at text before
          it  is  printed  to  insure  that  everything is going to be printed as
          desired.

 ERRORS:  If an attempt is made  to  insert  CODE  0,  CODE  13  or  any  of  the
          proscribed codes listed in the syntax comments, an ILLEGAL CONTROL CODE
          error will be posted.

          If any type character other than  the  pounds  symbol  is  entered,  an
          ILLEGAL TYPE message will be displayed.

          If  the  type  character  is entered, but no number follows, an ILLEGAL
          TERMINATOR message will be posted.

          If neither type character  nor  number  is  entered,  an  ILLEGAL  TYPE
          message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CD - CODE DISPLAY

 SYNTAX:  CD(EOC)

 GENERAL: This  COMMAND  is used to display any printer control codes imbedded by
          the CC COMMAND.

          When the COMMAND is issued, the screen display area  will  be  cleared,
          and any control codes which exist in the display area will be displayed
          decimally.

          When it is desired to return to SCREEN EDIT MODE, hitting the space bar
          will restore the display to normal operation.

 ERRORS:  If  any  character  other  than  (EOC)  or (EOL) follows the two-letter
          command name, an ILLEGAL TERMINATOR message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CF - CLOSE READ-IN, PRINT-OUT or WRITE-OUT FILE

 SYNTAX:  CF(EOC)

 GENERAL: This COMMAND will close a file previously opened by an  OPEN  PRINT-OUT
          (SSB  and FLEX only), OPEN READ-IN or OPEN WRITE-OUT COMMAND. This will
          generally be done in order to release the work file control  block  for
          use by some other routine such as OPEN WRITE-OUT, LOAD or SAVE SYMBOLS,
          or OPEN PRINT-OUT since the  READ-IN  or  WRITE-OUT  file  is  normally
          automatically when returning to DOS.

          Only  one  use can be made of the work file control block at a time. In
          order to allow another COMMAND to use the it, this COMMAND  would  have
          to be executed to release the block for the desired COMMAND.

          Even  though  OS-9  does not use FCB's, this COMMAND is still necessary
          since a number of  pointers  and  temporaries  are  shared  by  several
          different work file COMMANDS.

          This  COMMAND is not active once a PRINT-MERGE COMMAND has been issued.
          If the READ-IN or WRITE-OUT is not active, a FILE NOT OPEN  error  will
          be posted.

          Any  DOS  error  will be posted as DISK I/O ERROR #XXX where XXX is the
          decimal numerical value of the error returned from DOS. If this occurs,
          all  COMMANDS  which  perform disk I/O with the exception of NEW, SAVE,
          LOG and ABORT will be disabled for the remainder of  the  current  edit
          session.

          If  any  character  other  than  (EOC)  or (EOL) follows the two-letter
          command name, an ILLEGAL TERMINATOR error will occur.

          If this  COMMAND  is  issued  after  a  PRINT-MERGE  COMMAND  has  been
          executed, an FCB IN USE error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CH - CHANGE ONE STRING TO ANOTHER STRING

 SYNTAX:  CH/(STRING1)/(STRING2)/(EOC)

          This  COMMAND  utilizes 'floating' delimiters. The slashes shown in the
          syntax line may be any displayable  character,  including  spaces.  The
          only  limitation is that all three delimiters must be the same, and may
          not appear in the strings themselves.

          The second string may be null; i.e., two adjacent delimiters.  The  net
          effect of this is to delete all occurrences of the first string.

          When  this  COMMAND is entered, the first occurrence of STRING1 will be
          located, the cursor placed on the first character  of  STRING1,  and  a
          pause  executed  to  allow  the operator to determine whether or not to
          change the string.

          At this point, one of three entries may be made.  First,  if  a  single
          letter  Y  is  entered,  the string will be replaced and a second pause
          will occur to allow the operator to decide whether or not  to  continue
          the search-and-replace cycle.

          Second,  if the letter C is typed, the remainder of the changes will be
          made without additional pauses for  operator  supervision.  The  screen
          display will operate exactly as if the pauses were being made. Once the
          'continuous' change mode is entered, hitting the ABORT  key  will  stop
          the change function, and hitting any other key will return the function
          to the original pause after location mode.

          Third, if the ABORT key is entered, no further changes  will  be  made,
          and  the  operation will abort and return to COMMAND MODE if additional
          COMMANDS exist to be done, or otherwise to SCREEN EDIT MODE.

          If additional COMMANDS follow the CHANGE COMMAND, care should be taken,
          as  the  COMMAND  returns  a BOTTOM OF BUFFER error when the end of the
          buffer is reached. This will cause the error message and  an  immediate
          return to SCREEN EDIT MODE.

 GENERAL: The  strings  entered  in  this  COMMAND  must exactly reflect the case
          (upper or lower) of both the string being searched for and  the  string
          with  which  to  replace it. The search routine does not consider This,
          THIS and this to be the same string; therefore, if a word occurs at the
          beginning  of  a  sentence  with normal capitalization, it would not be
          located in a search which uses all capital or lower case letters.

          If a string consists of multiple words separated  by  spaces,  and  the
          string in the buffer extends from the end of one line onto another line
          it will not be found by the search routine, which examines each line in
          the buffer separately.

          Since  SCREDITOR  III continuously changes the number of spaces between
          words as it packs, melds and justifies paragraphs, it  is  not  a  good
          practice to search for a string made up of words which are separated by
          spaces.


          The  search routine in SCREDITOR III is fully zoned; that is, will only
          search between the current margins. If an occurrence of the string lies
          outside the current margins, or extends into either margin, it will not
          be found.

 ERRORS:  If  the  search  routine  reaches  the  bottom of the current buffer, a
          BOTTOM OF BUFFER message will be posted.

          If the change routine causes the current buffer to fill, a BUFFER  FULL
          message  will  be  posted  and  the  search  aborted. See special notes
          concerning BUFFER FULL elsewhere.

          If a delimiter character is omitted, a DELIMITER ERROR will occur.

          If the first string is not defined, an ILLEGAL TERMINATOR message  will
          be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CM - CLEARMARK(S)

 SYNTAX:  CM*(EOC)
          CM<(EOC)
          CM>(EOC)
          CM(EOC)

          There are four options supported by this COMMAND.

          The first option is a single asterisk (*). When this  option  is  used,
          all line marks in the current buffer will be cleared.

          The  second  option is the less-than character (<). When this option is
          used, all marks from the start of the buffer up to  and  including  the
          current line will be cleared.

          The third option is the greater-than character (>). When this option is
          used, all marks from the current line to the end of the buffer will  be
          cleared.

          The  last  option  consists of the command name immediately followed by
          (EOC) or (EOL). In this case, only the current line will be unmarked.

 ERRORS:  If one of the four options is not given, an ILLEGAL OPTION message will
          be posted.

          If  (EOC)  or  (EOL)  does  not follow the option character, an ILLEGAL
          TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CO - COPY LINES

 SYNTAX:  CO#nnnn#mmmm(EOC)
          CO#nnnn@mmmm(EOC)
          CO#nnnn*(EOC)
          CO#nnnn(EOC)

          There  are  four  options  supported  by this COMMAND. The first option
          above may be read as "Copy from line nnnn through line mmmm,  inserting
          the copy before the current line."

          The second option above may be read as "Copy  mmmm  lines  starting  at
          line nnnn, placing the copy before the current line.

          The  third option above may be read as "Copy all lines from nnnn to the
          end of the buffer and place the copy before the current line.

          The last option reads as "Copy line nnnn and place the copy before  the
          current  line."  In  all options, 'nnnn' and 'mmmm' are in the range of
          1-65536.

 GENERAL: The COPY COMMAND does not disturb the lines which have been  copied  in
          any  way...even  line marks are copied. Also, the resulting copy of the
          lines is an exact  image  of  the  pre-existant  lines,  including  all
          justification, etc...

          The COPY COMMAND always inserts the lines before the current line; that
          is, before the line on which the cursor was positioned when the COMMAND
          was executed.

          COPY  does  not  honor MULTI-COLUMN MODE. The lines copied will be from
          beginning to end of line irregardless of margins, and will be  inserted
          intact, also irregardless of margins.

          To  copy  a  sentence from the middle of one paragraph to the middle of
          another, you would use the SPLIT OPERATOR to isolate  the  sentence  on
          separate  lines  from  the  rest  of  the  paragraph,  split the target
          paragraph where the sentence will be moved, move the sentence, and then
          use  the  MELD  operator  to  re-format  the  paragraphs. Although this
          appears to be rather slow, in practice, this type of  movement  is  not
          often encountered in actual text editing.

 ERRORS:  The most common error which will be returned by the COPY COMMAND occurs
          when the lines  to  be  copied  overlap  the  current  line.  Under  no
          circumstance can the current line be a part of the block of lines being
          copied. An ILLEGAL TARGET error will be posted when this is attempted.

          The second error occurs when  the  buffer  is  filled.  A  BUFFER  FULL
          message  will  be  posted  under  this  condition.

          If a character other than one of the four  type  characters  #,  @,  *,
          (EOL) or (EOC) follows the command name, an ILLEGAL TYPE message will
          be posted.

          If (EOC) or (EOL) does not follow  the  second  (or  only)  number,  an
          ILLEGAL TERMINATOR error will be posted.
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 CP - CLOSE PRINTER PATH (OS-9 VERSION ONLY)

 SYNTAX:  CP(EOC)

 GENERAL: This COMMAND is designed to allow an early closing of the printer  path
          in  the  case where more than one process or user may want to share the
          output device or file, and the device or  file  is  non-shareable.  The
          path  is  automatically closed by the LOAD PRINTER DATA COMMAND and the
          OPEN PRINTER PATH COMMAND, and when  the  LOG  or  ABORT  COMMANDS  are
          executed.

          When  the  COMMAND  is  issued, the PC or PS printer status flag in the
          banner will be erased, indicating that the printing  COMMANDS  are  not
          available.

 ERRORS:  If  the printer path is not open when the COMMAND is issued, a PATH NOT
          OPEN error will be posted.

          If any character other than  (EOL)  or  (EOC)  follows  the  two-letter
          command name, an ILLEGAL TERMINATOR message will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 DF - DEFINE FOOTER ... DH - DEFINE HEADER

 SYNTAX:  DFE(EOC)      DHE(EOC)
          DFO(EOC)      DHO(EOC)
          DFB(EOC)      DHB(EOC)


          The entry of the HEADER  and  FOOTER  definitions  are  identical,  and
          therefore are being presented together in this command description.

          The  first  option consists of the command name followed by E, and will
          define the header or footer which will be used on even pages.

          The second option consists of the command name followed by O, and  will
          define the header or footer which will be used on odd pages.

          The  third  option consists of the command name followed by B, and will
          define both the even and odd header or footer.

 GENERAL: When entered, the definition will consist of all lines from  the  start
          of the buffer up to, but not including, the current line.

          The  definitions are entered and justified exactly as normal text would
          be. Printer control codes may also be  imbedded  just  as  with  normal
          text.  It  is,  of course, your responsibility to know how your printer
          will respond to control codes which it receives!

          One special string is defined in the header and footer definition...the
          page  number.  Wherever  you  desire  the current page number to appear
          during printing, you will type four percent symbols (%%%%). This string
          will be replaced by the page number when printed.


 ERRORS:  If  any  character  other  than  E, O or B follows the command name, an
          ILLEGAL OPTION message will post.

          If the particular definition has been previously  defined,  an  ALREADY
          DEFINED message will be displayed.

          If  the  cursor  is  on  the  top  line  in  the  buffer,  an   ILLEGAL
          HEADER/FOOTER error will be returned.

          If  the  difference  between the printer page length and the header and
          footer length is less than five lines, a  PAGE  LENGTH  error  will  be
          posted.

          If any character other than (EOC) or (EOL) follows the option character
          an ILLEGAL TERMINATOR error will be returned.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 DP - DEFINE PRINTER PAGE CHARACTERISTICS

 SYNTAX:  DP/(opt)/(opt)/(opt)...(EOL)
          DP/(EOL)

          There are two forms of the DP COMMAND. Both require that the COMMAND be
          the last or only COMMAND on the command line.

          The first is an entry with new page characteristics, as  in  the  first
          line above, where (opt) is defined as one of the following,

          Tnnn   -  PRINTER TOP MARGIN
          Lnnn   -  PRINTER LEFT MARGIN
          Bnnn   -  PRINTER  BOTTOM MARGIN
          Pnnn   -  PRINTER PAGE LENGTH
          Sn     -  SINGLE, DOUBLE or TRIPLE SPACING
          Nnnnnn -  STARTING PAGE NUMBER OF FILE

          and where the allowable range of numbers is from 0-255 for  the  T,  L,
          and  P  options  (or  less,  as noted later), 1-3 for the S option, and
          1-65535 for the N option.

          The options may be entered in  any  order  desired.  A  delimiter  must
          separate  each  option.  As  with  the  FIND  and  CHANGE COMMANDS, the
          delimiter floats, and is defined for the length of the COMMAND  as  the
          first character after the command name.

          The  second  form  of  this COMMAND is the command name followed by any
          delimiter character (other than a number or one  of  the  above  option
          letters),  and  immediately  followed by (EOL). When this form is used,
          the current page characteristics will be displayed,  and  they  may  be
          edited  if  desired. If the ABORT key is struck, control will return to
          SCREEN EDIT MODE and no change to the page characteristics will  occur.
          If the NEW LINE key is struck, the new characteristics will be entered.


 GENERAL: The  top and bottom margins are used whenever a header or footer is not
          defined. For instance, assume that an odd footer  is  defined,  but  no
          even footer. On even pages, then, the B value entered during PRTGEN, or
          as edited by this COMMAND, will be used as the footer line  count,  and
          on  odd pages the footer definition will be used. The two values do not
          have to be the same. The maximum value which many be  entered  is  less
          than 255, as determined by the formula L-M>4 (page length minus margins
          must be greater than four).

          The left margin is used by all printing COMMANDS, and is  included  due
          to  the  fact  that  many  printers  do  not allow paper positioning or
          settable margins. It is easier to use this method to set a  fixed  left
          margin  than  to  enter every line in a text with an offset left margin
          (although this could be done by SCREDITOR III).

          The page length is the actual length of the paper from top  to  bottom,
          counted  in lines. The maximum number of lines actually printed on each
          page will be the difference between the page length and the sum of  the
          top  and  bottom  margins (whether default or header/footer definitions
          lengths),  and  cannot  exceed  255.  See  the  formula  in  the  above
          paragraph.

          The  page  number  is  the  number  of  the first page in the file. For
          instance, if a file contained twelve  pages,  they  would  normally  be
          numbered  1 through 12 when printed. If, however, you entered N12, they
          would be numbered from 12 through 24 when printed.

          The spacing count determins whether the printed output will be single-,
          double-   or   triple-spaced.   This   value  will  not  apply  to  the
          header/footer definitions. When this value is changed, the  page  flags
          in  the  screen  display  area will change to reflect the new number of
          lines to be printed per page. Again, the formula above must be  adhered
          to.

 ERRORS:  If  the  number of lines to be printed excluding headers and footers is
          calculated to be less than five, a PAGE ERROR will be posted.

          If any other option character other than T, L, B, P, S or N is entered,
          an ILLEGAL OPTION will be posted.

          If  a non-numeric value or a value too large or small follows an option
          character, an ILLEGAL TARGET error will be posted.

          Leaving out a delimiter, or using more  than  one  different  delimiter
          character will cause a DELIMITER MISSING error.

          If  the  display form of the COMMAND is entered and and the DP/ part of
          the line is changed, an ILLEGAL SYNTAX error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 DS - DEFINE SYMBOL

 SYNTAX:  DS/(name)/(symbol body)(EOL)
          DS/(name)(EOL)

          There  are  two  forms  of  this  COMMAND.  Both forms require that the
          COMMAND be the last or only COMMAND on the line.

          The first form consists of the  COMMAND  followed  by  a  delimiter,  a
          symbol name and a symbol definition, where (name) is a single character
          from A-Z (lower case is acceptable, as "a" is converted  internally  to
          "A", etc...), and the delimiter floats, and may be any character.

          (symbol  body)  consists  of  a series of keystrokes. Like the entry of
          single-key operators during ESCAPE MODE, an up-arrow (^) followed by  a
          two-letter  OPERATOR  NAME  is  used  to  describe  each OPERATOR entry
          desired as part of the definition. Unlike ESCAPE MODE itself,  however,
          no  EOC  characters  are  entered  between  OPERATORS. Also, a NEW LINE
          OPERATOR must be entered after each call  to  ESCAPE  COMMAND  MODE.  A
          DELETE TO MARGIN OPERATOR should normally precede the NEW LINE OPERATOR
          to insure that no 'left-over' characters remain  on  the  command  line
          when executed.

          The  second  form  of  the  COMMAND  is  the command name followed by a
          delimiter and a symbol name and then immediately by  (EOL).  When  this
          form  is  entered, the definition of the named symbol will be displayed
          for inspection or editing. When editing or inspection is complete,  the
          ABORT  key  will  return control to the SCREEN EDIT MODE without making
          any change to the old symbol definition. The  NEW  LINE  OPERATOR  will
          cause  the  displayed  definition  to replace the old definition in the
          symbol buffer.

 GENERAL: Any series of keystrokes which may be entered from the keyboard may  be
          defined  as  a  symbol. Such keystrokes can range from a string such as
          SCREDITOR III which appears continuously  throughout  this  manual,  to
          very complex combinations of normal characters, COMMANDS and OPERATORS.
          The only limitation is that, unlike normal COMMAND MODE, a symbol which
          includes  a  COMMAND  MODE call cannot include OPERATORS in the COMMAND
          MODE part of the definition. For instance, this line is a legal COMMAND
          in normal entry:

             BO;^SD;^DL;TO

          The  entry  will be typed after hitting the ESCAPE OPERATOR and will be
          executed after hitting a NEW LINE OPERATOR, and will move to the bottom
          of the buffer (BO;), scroll the screen down one line (^SD;), delete one
          line (^DL), and, finally, move to the top of the buffer.

          A symbol, however, to accomplish the  same  thing,  would  have  to  be
          entered as:

             ^ESBO^DM^NL^SD^DL^ESTO^DM^NL


          Which would cause SCREDITOR III to go into COMMAND MODE and execute the
          BO COMMAND (^ESBO^DM^NL), return to SCREEN EDIT  MODE  and  scroll  the
          screen  down  (^SD)  and  delete  one  line (^DL), and finally re-enter
          COMMAND MODE and go to the top of the buffer (^ESTO^DM^NL).
          Note also that DELETE-TO-MARGIN precedes the NEW LINE OPERATOR  in  the
          symbol  definition. Be sure to remember to include it just as you would
          if you entered COMMAND MODE and typed the line.

          By ending a definition with  an  ACTIVATE  SYMBOL  OPERATOR  without  a
          symbol name, a special repetitive operation is created. Once the symbol
          has been run one time, simply typing the symbol name over and over will
          cause  the  symbol  to  re-execute.  Typing some other symbol name will
          allow you to chain from one symbol to another. If each definition  ends
          in  an  ACTIVATE  SYMBOL OPERATOR, the chaining can go on indefinitely.
          When you want to break the repetition or chaining, type the  ABORT  key
          instead  of a symbol name. This allows you to define extremely powerful
          single key functions to perform specific repetitive tasks!

 LENGTH:  The  method  of  storing symbols in SCREDITOR III is such that a symbol
          only uses the amount of space required to store it. In theory, a symbol
          could  be  as  long as the entire symbol buffer (1024 bytes) using this
          method. In practice, two limitations will exist.

          First, the maximum length of a symbol is 244 characters, the length  of
          the  command  line less the DS command name, the two delimiters and the
          single-character symbol name.

          Second, a symbol may only be as long as  the  remaining  space  in  the
          symbol  buffer. If a large number of symbols are defined, the space may
          be reduced to the point that there is not enough room in the buffer for
          another long symbol.

 ERRORS:  Only  twenty-six symbols may be defined (A-Z). Any other character will
          cause an ILLEGAL SYMBOL message to be displayed.

          If a delimiter does not follow the two-character COMMAND name  and  the
          symbol  name  (DS/A/),  a  SYNTAX ERROR will be posted, except when the
          option to display an existing  symbol  is  entered  (EOL  after  symbol
          name).

          If  a  symbol  is  entered of such a length that it will not fit in the
          symbol buffer (due to other symbol definitions having used up too  much
          of  the  available  space),  a  SYMBOL  BUFFER OVERFLOW message will be
          posted, and no part of the symbol will be entered into the buffer.

          The symbol is not parsed when it is  entered.  Any  illegal  operations
          within  the  symbol  definition will only be trapped when the symbol is
          activated and its contents are executed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 EX - EXIT TO SYSTEM MONITOR (FLEX and SSB versions only)

 SYNTAX:  EX(EOL)

 GENERAL: This COMMAND is used to gracefully leave SCREDITOR III  and  enter  the
          SYSTEM  MONITOR. SCREDITOR III may be re-entered by executing a jump to
          the warm start entry point, which is three bytes past the first address
          of SCREDITOR III saved to disk ($0576 for the FLEX version).

          THIS  IS  A  SYSTEMS PROGRAMMER'S CONVENIENCE ONLY, AND SHOULD NEVER BE
          ATTEMPTED BY UNQUALIFIED PERSONNEL.

 ERRORS:  If the SYSMON entry address was given  as  $0000  during  CONGEN,  this
          COMMAND  is  disabled,  and  the  error message ILLEGAL COMMAND will be
          posted if attempted.

          If any character other than (EOL) follows this one on the command line,
          an ILLEGAL TERMINATOR message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 FI - FIND STRING OF CHARACTERS

 SYNTAX:  FI/(STRING)/(EOC)

 GENERAL: A  search  for  (STRING) commences when the command is entered. When an
          occurrence of STRING is found the search will stop, the cursor will  be
          positioned to the start of the target string, and a pause will occur to
          determine your desire as to whether or not to  continue  searching.  If
          you  hit  the  ABORT  key  the search will stop with the cursor left in
          place at the start of the target string in the  display  area  and  any
          additional COMMANDS on the command line will be executed before control
          will return to SCREEN EDIT MODE. Any other key will cause the search to
          resume.

          If  the  search is not aborted before the last occurrence of the string
          is located, any remaining COMMANDS on the line will be ignored  due  to
          the fact that an error message will be posted.

          Like  the  CHANGE COMMAND, FIND is a zoned COMMAND: i.e., the string to
          be located must exist entirely between the current  margins  and  on  a
          single  line  to  be  found.  Also, like CHANGE, the case of the string
          entered on the command line must exactly match the string to be located
          or no occurrence will be found.

          Also,  like CHANGE, the delimiter floats, and the first character after
          the command name will  be  the  delimiter  for  the  remainder  of  the
          COMMAND.

 ERRORS:  If  the  search  routine  reaches the bottom of the buffer, a BOTTOM OF
          BUFFER message will be posted.

          If there is insufficient space in the buffer to  move,  a  BUFFER  FULL
          message will be posted.


          If  the  string  entered  is null (two adjacent delimiters), an ILLEGAL
          TERMINATOR message will be displayed.
          If the final delimiter is omitted, a DELIMITER ERROR will be returned.

          If any character other than (EOC) or (EOL) follows the second delimiter
          an ILLEGAL TERMINATOR error will be generated.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 GO - GOTO LINE

 SYNTAX:  GO#nnnn(EOC)
          GO@nnnn(EOC)
          GO*(EOC)

          There are three forms of the COMMAND.

          The first form above may be read as 'Go to line nnnn.'

          The second form may be read as 'Go toward the bottom of the buffer nnnn
          lines'

          The  third  form  of  the  COMMAND reads as 'Go to the last line in the
          buffer.'

          In the first two forms, 'nnnn' may range from 1-65536.

 GENERAL: The GOTO COMMAND allows quick  movement  to  a  specific  line  in  the
          current buffer.

 ERRORS:  If  the  target line does not reside within the current buffer, ILLEGAL
          TARGET will be posted.

          If any character other than #, @ or * are given after the command name,
          an ILLEGAL TYPE error will be returned.

          If  any character other than (EOC) or (EOL) follows the number in the #
          and @ options, or the asterisk in the third form, an ILLEGAL TERMINATOR
          error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 GP - GOTO PAGE

 SYNTAX:  GP#nnnn(EOC)
          GP@nnnn(EOC)
          GP*(EOC)
          GP(EOC)

          There are four forms of the COMMAND.

          The  first form above may be read as 'Go to page nnnn.'

          The second form may be read as 'Go nnnn pages toward the bottom of  the
          buffer.'

          The  third  form  of  the  COMMAND reads as 'Go to the last page in the
          buffer.'

          The fourth form of the COMMAND reads as 'Go to the start of the current
          page.'
          In the first two forms, 'nnnn' may range from 1-65536.

 GENERAL: The  GOPAGE  COMMAND  allows quick movement to a specific page start in
          the current buffer.

 ERRORS:  If the first line of the target page does not reside within the current
          buffer, ILLEGAL TARGET will be posted.

          If  any character other than #, @, *, or (EOC) or (EOL) are given after
          the command name, an ILLEGAL  TYPE  error  will  be  returned.  If  any
          character  other  than (EOC) or (EOL) follows the number in the # and @
          options, or the asterisk in the third form, an ILLEGAL TERMINATOR error
          will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 HR - HELP REQUEST

 SYNTAX:  HR?(EOL)
          HR?C(EOL)
          HR?O(EOL)
          HR?xx(EOL)

          There are four forms of the COMMAND.

          The first may be read as 'Display information about  the  HELP  REQUEST
          COMMAND.'

          The second may be read as 'Display the COMMAND SUMMARY.'

          The third may be read as 'Display the OPERATOR SUMMARY.'

          The fourth may be read as  'Display  a  summary  of  information  about
          COMMAND xx.'

          The  fourth form of the COMMAND requires that you supply the two-letter
          command name of the COMMAND on which you want information where 'xx' is
          shown above.

 GENERAL: When  this  COMMAND  is entered, the screen display area is cleared and
          the HELP.DAT file on the system drive (FLEX and SSB), or  the  HELP.DAT
          file  in  the EDIT_DATA directory on drive D0 (OS-9) is opened, and the
          requested information is read and displayed.

          When you have finished reading the material, the space bar or the ABORT
          key will close the file and return you to SCREEN EDIT MODE.

          On  some  of  the information displays there is more than one screen of
          information. When this is the case, the message (SPACE BAR TO CONTINUE,
          ABORT  KEY  TO RETURN TO EDIT) will be displayed. Hitting the space bar
          will display the next page of information.

          The information provided in each request is a abridged version  of  the
          information  contained  in this manual, and includes complete syntax as
          is displayed at the start of each COMMAND's description, and  at  least
          one paragraph of additional explanatory information.

          This  COMMAND  is  not available when the work file control block is in
          use, or after the PRINT-MERGE COMMAND has been executed.

 ERRORS:  If the command name in the fourth form of the COMMAND does not exist in
          the help file, an ILLEGAL TYPE message will be posted.

          If  any character other than O or C is entered for the second and third
          forms of the COMMAND, an ILLEGAL TYPE message will be returned.

          If any character other than (EOL) follows the COMMAND, an ILLEGAL  TYPE
          error will result.

          If the delimiter is ommited on the fourth form, an ILLEGAL TYPE message
          will be posted.

          If the delimiter is omitted on the second and  third  forms,  the  HELP
          REQUEST SUMMARY will be displayed.

          If  a  disk  error  occurs during the execution of this COMMAND, a DISK
          ERROR message will be returned.

          If the file control block is in use when this COMMAND is  executed,  an
          FCB IN USE error will be posted.

          If  a  PRINT-MERGE  COMMAND has been previously executed, an FCB IN USE
          error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 ID - INSERT READ-IN LINE NUMBER DISPLAY

 SYNTAX:  ID(EOC)

 GENERAL: This COMMAND is used to display the line number of the first  line  not
          read  in  an open READ-IN file. When the COMMAND is issued, the command
          line will be cleared, and the line number will be displayed as

             IR=nnnnn

          where nnnnn is the number of the first line in the file not yet skipped
          or inserted.

 ERRORS:  If  a  READ-IN  is not active when this COMMAND is executed, a FILE NOT
          OPEN error will be returned.

          If any character other than (EOC) or (EOL) follows the command name, an
          ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 JL - JUSTIFY LINE

 SYNTAX:  JLA(EOC)
          JLC(EOC)
          JLL(EOC)
          JLR(EOC)

          Four options are supported by this COMMAND, and one of  the  four  must
          always be entered.

          JLA will all-justify the current line.

          JLC will center-justify the current line.

          JLL will left-justify the current line.

          JLR will right-justify the current line.

 GENERAL: When the COMMAND is issued, the  current  line  will  be  justified  as
          indicated by the option character.

          In  the  case  of L,C and R option, no packing will take place. The net
          effect is to simply move the line to the left margin, or right  margin,
          or center the line within the current margins.

          The A option will pack the line before justifying it to insure that the
          spacing of the line is made as even as possible.

          This COMMAND may be entered in either LINE or TEXT MODE.

 ERRORS:  If one of the four option characters does not follow the command  name,
          an ILLEGAL OPTION message will be displayed.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  option
          character, an ILLEGAL TERMINATOR message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 JM - JUSTIFICATION MODE

 SYNTAX:  JMA(eoc)
          JMC(eoc)
          JML(eoc)
          JMR(eoc)

 SYNTAX:  Four  options  are  supported by this COMMAND, and one of the four must
          always be entered. The mode selected by this COMMAND is of significance
          only in TEXT MODE.

          JMA  will  place  SCREDITOR  III  in  ALL-JUSTIFY  MODE.  In this mode,
          whenever the right margin is passed and a word-wrap occurs, the current
          line  will  automatically  be packed and all-justified. Whenever a MELD
          operation is performed (MELD operator, exit INSERT CHARACTER  mode,  or
          PARAGRAPH  INDENT  when  in  TEXT MODE), the remainder of the paragraph
          will be melded using this mode.

          JMC will place SCREDITOR III in CENTER-JUSTIFY MODE. Whenever the right
          margin  is  passed causing a word-wrap, the current line will be packed
          and center-justified. Whenever a  MELD  operation  is  performed  (MELD
          operator,  exit  INSERT  CHARACTER  mode, etc...), the remainder of the
          paragraph will be  melded  using  this  justification  (lines  centered
          between margins).

          JML  will  place  SCREDITOR  III  in  LEFT-JUSTIFY  MODE  (default   at
          start-up). Whenever the right margin is passed causing a word-wrap, the
          current line will be packed to eliminate extra spaces and left flush at
          the left margin. Whenever a MELD operation is performed (MELD operator,
          exit INSERT CHARACTER mode, etc...),  the  remainder  of  the  line  or
          paragraph will melded flush at the left margin.

          JMR  will place SCREDITOR III in right-justify mode. Whenever the right
          margin is passed causing a word-wrap, the current line will  be  packed
          and  right-justified.  Whenever  a  MELD  operation  is performed (MELD
          operator, exit INSERT CHARACTER MODE, etc...),  the  remainder  of  the
          line or paragraph will be melded flush at the right margin.

 GENERAL: The JUSTIFY MODE COMMAND can be entered at any time, whether in TEXT or
          LINE MODE; however, the justification mode will  only  have  effect  in
          TEXT MODE.

 ERRORS:  If  any  option  other  than A, C, L or R is entered, an ILLEGAL OPTION
          ERROR will be posted.

          If (EOC) or (EOL) does not follow  the  option  character,  an  ILLEGAL
          TERMINATOR error will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 JP - JUSTIFY PARAGRAPH

 SYNTAX:  JPA(EOC)
          JPC(EOC)
          JPL(EOC)
          JPR(EOC)

          Four options are supported by this COMMAND, and one of  the  four  must
          always be specified.

          JPA will all-justify the current paragraph.

          JPC will center-justify the current paragraph.

          JPL will left-justify the current paragraph.

          JPR will right-justify the current paragraph.

 GENERAL: When  the COMMAND is issued, the current paragraph will be justified as
          indicated by the option character. The end of a paragraph is  indicated
          by a blank line between the current margins.

          The  effect of this command is to perform a JUSTIFY LINE operation over
          all of the lines in the paragraph. Paragraph level packing as with  the
          MELD OPERATOR will not take place. If you wish to re-pack and justify a
          paragraph, you would use the MELD OPERATOR,  or,  in  the  case  of  an
          indented paragraph, the PARAGRAPH INDENT COMMAND.

 ERRORS:  If  any  character other than one of the option characters A, C, L or R
          is entered, an ILLEGAL OPTION message will be posted.

          If (EOL) or (EOC) does not follow  the  option  character,  an  ILLEGAL
          TERMINATOR error will be posted.

          If  the  buffer  becomes full during the COMMAND, a BUFFER FULL message
          will be posted, and the line which was being operated on when the error
          occurred will be the current line after the error message is cleared.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 KL - KILL (DELETE) LINES

 SYNTAX:  KL#nnnn(EOC)
          KL@nnnn(EOC)
          KL*(EOC)
          KL(EOC)

          Four options are specified for this COMMAND.

          The first may be read as  "Delete  all  lines  from  the  current  line
          through line #nnnn."

          The second may be read as "Delete @nnnn lines."

          The  third  may  be  read  as  "Delete  all lines from the current line
          through the end of the current buffer."

          The fourth may be read as "Delete the current line."

          'nnnn' is a number in the range of 1-65535.

 GENERAL: This COMMAND is used to make mass deletions of lines where  typing  the
          DELETE LINE OPERATOR over and over would be rather tedious.

 WARNING: This  COMMAND  does  not  prompt  to  insure that you know what you are
          doing, or that you have correctly entered the line. Be sure you  do  it
          right the first time!

 ERRORS:  If a type character other than #, @, * or (EOL or EOC) is entered after
          the COMMAND, and ILLEGAL TYPE message will be posted.

          If the line number in the # option does not exist in the current buffer
          AFTER the current line, or the number of lines in the @ option does not
          exist from the current line to the end of the buffer, an ILLEGAL TARGET
          error will be posted.

          If any character follows the command and its target (if any) other than
          (EOL) or (EOC), an ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 LE - LINE EDIT MODE

 SYNTAX:  LE(EOC)

 GENERAL: This COMMAND will place SCREDITOR III in the line mode.

 ERRORS:  If either (EOC) or (EOL) does not immediately follow the command  name,
          an ILLEGAL TERMINATOR message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 LI - LINE INDENT

 SYNTAX:  LI#nnnn(EOC)

          Only one option is defined for this COMMAND, the pounds  character  (#)
          followed by a number in the range of 1 to 249.

 GENERAL: This  COMMAND will insert the number of spaces specified by #nnn at the
          beginning of the current line. If line mode is active,  the  action  is
          identical  to  the  repeated  use of the INSERT SPACE OPERATOR. If text
          mode is active, the effect is to insert the number of spaces  specified
          and  to  re-justify  the  remainder  of the line or paragraph as if the
          spaces were a word.

 ERRORS:  If any character other  than  the  pounds  character  (#)  follows  the
          COMMAND  and  precedes  the  number,  an  ILLEGAL  TYPE message will be
          posted.

          If the number specified is larger than the right margin, or larger than
          the  right margin less the length of the first word on the line in TEXT
          MODE, an ILLEGAL TARGET error will result.

          If any character other than (EOC) or (EOL) is entered after the number,
          an ILLEGAL TERMINATOR error will be returned.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 LM - SET LEFT MARGIN

 SYNTAX:  LM#nnn(EOC)
          LM(EOC)

          Two forms of this COMMAND are defined.

          The first form of the COMMAND requires that  a  pounds  type  character
          follow  the  COMMAND  name, and then a number in the range of 1 to 249.
          When this is done, the left margin will be set to that column.

          The second is simply the command name followed by (EOC) or (EOL).  When
          entered  in  this  manner,  If  the  left  margin is set to the current
          column, it will be reset to column one. If the left margin is  not  set
          to the current column, it will be so set.

 GENERAL: If  the  cursor  column  would  fall  outside the left margin after the
          margin is moved, the cursor will be moved to the left  margin.  If  the
          new  left  margin  is  off the display area and the cursor is moved, an
          automatic horizontal scroll will occur.

 ERRORS:  If any character other than (#) or (EOC) or (EOL)  follow  the  command
          name an ILLEGAL TYPE message will be posted.

          If  any character other than (EOC) or (EOL) follows the command target,
          an ILLEGAL TERMINATOR message will result.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 LO - LOG EDIT SESSION

 SYNTAX:  LO(EOL)

          No further COMMANDS may follow this COMMAND.

 GENERAL: If  an  output  file  is  open,  and if nothing has been written to the
          output file, and if headers and/or footer are  defined,  they  will  be
          saved first.

          The  current  buffer will then be written out. If an input file is open
          and additional lines exist in it, the additional lines will be read and
          transferred to the output file. When all lines have been transferred to
          the output file, the screen will be cleared  and  the  message  Closing
          files...  will  be  displayed.  Then  any  open  work files (WRITE-OUT,
          READ-IN, etc...) will be closed. Then the input and output  files  will
          be closed.

 NEXT... (FLEX and SSB VERSIONS)

          If  no  output  filename was specified at edit start-up (using .TXT and
          .BAK extensions), the disk will be examined for a file  with  the  same
          name and a .BAK extension. If found, it will be deleted, the input file
          will be renamed to a .BAK extension, and the output file, which, up  to
          this  point  had  a  .TMP  or .SCR extension, will be renamed to a .TXT
          extension.

          If an output file was specified, the input and output files will simply
          be closed.

 NEXT... (OS-9 VERSION)

          If no output path was specified at edit start-up, the input file (if it
          existed) will be deleted, and the SCRATCH file will be renamed  to  the
          input file name.

          If no I/O files are open, the screen will immediately clear.

 FINALLY...

          If  a  command string was specified during CONGEN, it will be passed to
          DOS for processing, allowing SCREDITOR III to call another program with
          its  last dying gasp. If an error occurs during closing which caused an
          abort to DOS, the command string will not be passed to DOS.

 ERRORS:  If any character other than  (EOL)  follows  the  command,  an  ILLEGAL
          TERMINATOR error will be posted, and the COMMAND will not execute.

          If  disk errors occur during closing, they will be posted in the manner
          normal for your DOS. If this happens, you should check all of the files
          which  were  being  worked  on to see what has been damaged. Methods of
          recovery of files under this condition are beyond  the  scope  of  this
          manual.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 LP - LOAD PRINTER DATA FILE

 SYNTAX:  LP/(NAME)/(EOC)
          LP/*/(EOC)

          The  form of (NAME) should conform to the DOS under which SCREDITOR III
          is running as to length, allowed characters, etc...

          In the OS-9 version, a space must follow the  path  name  and  then  be
          followed  by  the  second delimiter to insure that OS-9 does not try to
          include the remainder of the command line in the path name.

          In the FLEX and SSB versions, no extension should be given. The default
          extension  which  SCREDITOR  III  supplies  is .DAT. If an extension is
          given, it will be ignored, and .DAT substituted.

          The second form of the command is used to load the default  file  which
          was  loaded  on  start-up.  This option is used when you have loaded an
          alternate data file, and wish to return to the original one.

 GENERAL: This COMMAND  allows  you  to  load  a  printer  data  file  which  was
          previously created using the PRTGEN program.

          When  this  COMMAND  is  executed, any previously-existing printer data
          will be erased before the new data is loaded.

          It will generally not be necessary to execute  this  COMMAND,  since  a
          PRTGEN  DATA  FILE  named PRTGEN.DAT (FLEX and SSB) or PRTGEN plus your
          user I.D. (OS-9) file must exist in order for SCREDITOR  III  to  start
          up,  and  will already have been loaded. This COMMAND is used primarily
          by those people who have the capability of using multiple printers.

          In the SSB and  FLEX  versions  this  COMMAND  is  not  active  once  a
          PRINT-MERGE COMMAND has been issued.

          In  the  OS-9 version the old printer path will automatically be closed
          and the new printer path opened whenever this COMMAND is  issued  since
          every printer data file includes a printer path string.

 ERRORS:  If  the  file name supplied does not conform to the syntax used by your
          DOS, an ILLEGAL FILE NAME error will be posted.

          If the file specified does not exist, or an  error  occurs  during  its
          opening  or loading, a DISK ERROR #NNN will be posted, where NNN is the
          decimal value of the error returned from DOS.  Under  some  conditions,
          the  work  file  control block may be disabled for the remainder of the
          edit session. Also, the printing COMMANDS will probably be disabled due
          to the erasure of the old printer data. The printing status flag in the
          banner will be blanked if this is the case.

          If (EOC) or  (EOL)  does  not  follow  the  second  delimiter,  or  two
          delimiters are not entered, an ILLEGAL TERMINATOR error will be posted.

          In  the SSB and FLEX versions, if a PRINT-MERGE COMMAND has been issued
          and this COMMAND is executed, an FCB IN USE error will be posted.


          If a disk error occurs during the loading of the file, the old  printer
          data  will  be  erased. Also, in the OS-9 version, the old printer path
          will be closed and the new printer path will not have been opened. As a
          result,  the printing status flag in the banner line (PS or PC) will be
          extinguished, and no printing commands will be active.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 LS - LOAD SYMBOL FILE

 SYNTAX:  LS/(NAME)/(EOC)

          The  form of (NAME) should conform to the DOS under which SCREDITOR III
          is running as to length, allowed characters, etc...

          In the OS-9 version, a space must follow the  pathname  and  the  space
          must  be  followed by the second delimiter to insure that OS-9 does not
          attempt to use the remainder of the command line for a path name.

          In the SSB and FLEX versions, no extension should be given. The default
          extension,  which  SCREDITOR  III supplies, is .DAT. If an extension is
          given, it will be ignored, and .DAT substituted.

 GENERAL: This COMMAND  allows  you  to  load  a  group  of  symbols  which  were
          previously defined and saved to disk.

          When  this  COMMAND  is issued, any symbols which are currently defined
          will be erased, and the symbols in the file will  be  loaded  into  the
          symbol buffer.

          This  COMMAND  is  not  available  if  a  PRINT-MERGE  COMMAND has been
          executed.

 ERRORS:  If the work file control block is in use when this COMMAND is executed,
          an FCB IN USE error will be posted.

          If an error has occurred previously and the work FCB has been disabled,
          an FCB IN USE error will be posted.

          If the file name supplied does not conform to the syntax used  by  your
          DOS, an ILLEGAL FILE NAME error will be posted.

          If  the  file  specified  does not exist, or an error occurs during its
          opening or loading, a DISK ERROR #NNN will be posted, where NNN is  the
          decimal  value  of  the error returned from DOS. Under some conditions,
          the work file control block may be disabled for the  remainder  of  the
          edit session.

          If  (EOC)  or  (EOL)  does  not  follow  the  second  delimiter, or two
          delimiters are not entered, an ILLEGAL TERMINATOR error will be posted.

          If a PRINT-MERGE COMMAND has been issued and this COMMAND is  executed,
          an FCB IN USE error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 MC - MULTI-COLUMN ON/OFF

 SYNTAX:  MC(EOC)

 GENERAL: If multi-column mode was active when this COMMAND is issued, it will be
          turned off. If off, it will be turned on. The change will be  reflected
          in the status section of the banner line.

 ERRORS:  If (EOC) or (EOL) does not immediately  follow  the  command  name,  an
          ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 MO - MOVE LINES

 SYNTAX:  MO#nnnn#mmmm(EOC)
          MO#nnnn@mmmm(EOC)
          MO#nnnn*(EOC)
          MO#nnnn(EOC)

          There are four options supported by  this  COMMAND.  The  first  option
          above  may be read as "Move from line nnnn through line mmmm, inserting
          the moved lines before the current line."

          The  second  option  above  may be read as "Move mmmm lines starting at
          line nnnn, placing the moved line before the current line.

          The third option above may be read as "Move all lines from nnnn to  the
          end of the buffer and place the moved lines before the current line.

          The  last  option  reads  as  "Move  line  nnnn and place it before the
          current line."

          The targets supplied must be in the range of 1-65535.

 GENERAL: The MOVE COMMAND does not change the lines which have been moved in any
          way, even line marks are moved. Also, the  moved  lines  are  an  exact
          image of the pre-existant lines, including all justification, etc...

          The MOVE COMMAND always inserts the lines before the current line; that
          is, before the line on which the cursor was positioned when the COMMAND
          was executed.

          MOVE  does  not  honor  multi-column mode. The lines moved will be from
          beginning to end of line irregardless of margins, and will be  inserted
          intact, also irregardless of margins.

          To  move  a  sentence from the middle of one paragraph to the middle of
          another, you would use the SPLIT OPERATOR to isolate  the  sentence  on
          separate  lines  from  the  rest  of  the  paragraph,  split the target
          paragraph where the sentence will be moved, move the sentence, and then
          use  the  MELD  OPERATOR  to  re-format  the  paragraphs. Although this
          appears to be rather slow, in practice, this type of  movement  is  not
          often encountered in actual text editing.

 ERRORS:  The most common error which will be returned by the MOVE COMMAND occurs
          when the  lines  to  be  moved  overlap  the  current  line.  Under  no
          circumstance can the current line be a part of the block of lines being
          moved. An ILLEGAL TARGET error will be posted when this is attempted.

          The second error occurs when  the  buffer  is  filled.  A  BUFFER  FULL
          message  will  be  posted  under  this  condition. See special notes on
          BUFFER FULL elsewhere.

          If a character other than one of the four type characters #,  @,  *  or
          (EOL)  or  (EOC) follows the command name, an ILLEGAL TYPE message will
          be posted. If (EOC) or (EOL) does not follow the target(s), an  ILLEGAL
          TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 NE - SAVE LINES TO FILE AND READ NEW LINES

 SYNTAX:  NE#nnnn(EOC)
          NE@nnnn(EOC)
          NE*(EOC)
          NE(EOC)

          Four  options  are  defined  for this COMMAND. The first may be read as
          'Save all lines from the start of the buffer through  line  #nnnn,  and
          read as many lines as possible from the input file, if open.'

          The second may be read as 'Save @nnnn lines, starting at the first line
          of the buffer, and read as many lines as possible from the input  file,
          if open.'

          The  third may be read as 'Save all lines from the start of the current
          buffer up to, but not including, the current line,  and  read  as  many
          lines as possible from the input file, if open.'

          The final option may be read as 'Save the first line in the buffer, and
          read as many lines as possible from the input file, if open.'

          In the first two forms, 'nnnn' is a number in the range of 1-65535.

 GENERAL: This COMMAND is used to save edited lines to the output  file,  and  to
          read  in additional lines from the input file for editing. If the input
          file is not open, this COMMAND is functionally identical  to  the  SAVE
          COMMAND.

          If this is the first time this COMMAND has been executed in the current
          edit session, a check will be made to see if there are  any  header  or
          footer  definitions.  If  so,  they will be saved before lines from the
          current buffer are saved.

          Only lines which are between the start of the current  buffer  and  the
          current  line  may  be saved. The current line and the remainder of the
          buffer may never be saved.

 ERRORS:  If an output file is not open, FILE NOT OPEN will be posted.

          If the current line is the top line in the buffer, NOTHING TO SAVE will
          be returned.

          If  any  character  other  than  #,  @, * or (EOC) or (EOL) follows the
          command name, an ILLEGAL TYPE error will be posted.

          If the line number (first form) or number of lines (second form) do not
          exist in the top buffer, an ILLEGAL TARGET error will be returned.

          If  an  error  occurs  during the save, DISK ERROR #nnn will be posted,
          where #nnn is the error number returned  from  DOS,  and  an  immediate
          abort to DOS will occur.

          If  this  COMMAND  is  entered  after  a  PRINT-MERGE  COMMAND has been
          executed, a FILE NOT OPEN error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 NS - NEW SCREEN

 SYNTAX:  NS(EOC)

 GENERAL: This  COMMAND  is  included  in  SCREDITOR III as a compensation for an
          awkward characteristic of some  terminals;  i.e.,  a  CLEAR  key  which
          clears  the  screen,  but  does  not  send  a  character saying it did!
          TELEVIDEO terminals, in particular, are notorious for  this,  with  the
          CLEAR  SPACE  key  sitting  directly under the BACKSPACE key and to the
          right of the RETURN key. When this COMMAND is issued,  every  character
          on the screen is re-displayed.

          If  you  have  accidentally  hit  a CLEAR key on your terminal, and the
          screen goes blank, you should perform the following operations:

          1) Hit the ABORT key. In case anything was being done which  would  not
             like  a  COMMAND  issued  (such as being in the middle of entering a
             COMMAND), this will return you to screen edit.

          2) Enter the ESCAPE OPERATOR, placing you in COMMAND mode.

          3) Enter the DELETE TO MARGIN OPERATOR, clearing the command line.

          4) Type NS followed by the NEW LINE OPERATOR.

          Voila! Your screen is restored! You may now continue editing.

          Of course, not every time your screen goes blank, has this happened. If
          th  COMMAND  does not bring the screen back, you might check for pulled
          plugs, etc...

 ERRORS:  If any character other than (EOC) or (EOL) follows the command name, an
          ILLEGAL TERMINATOR error will be posted.

          There  are no other errors associated with this COMMAND, except, maybe,
          for pulled plugs, blown fuses, etc...

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 NU - CYCLE LINE NUMBERS DISPLAY ON/OFF

 SYNTAX:  NU(EOL)

 GENERAL: This COMMAND will cause the number of each line to be displayed at  the
          left side of the screen. The numbers are referenced from the first line
          in the file. If the numbers were being displayed when this  COMMAND  is
          executed, they will be turned off.

          In addition, if page display mode is active and numbers display mode is
          turned on, the first line of each page will  be  displayed  as  Pnnnnn,
          where  P  will be lower case or upper depending upon whether or not the
          line is marked, and 'nnnnn' will be the page number of which  the  line
          is  the  first  to  be  printed, referenced from the page number of the
          first page in the file (00001 unless changed by the DP COMMAND).

 WARNING: As indicated in the PRINT-MERGE and PRINT COMMAND descriptions, if  the
          line  number  display  is  on,  the  resulting printed output will also
          contain line numbers. If off, the print-out will not have line numbers.
          You  should  repeat  this over and over until committed to memory. Even
          the author of this manual has a couple of pages of  the  manual  laying
          around  with  line  numbers  printed,  and  keeps  them as monuments to
          forgetfulness!

 ERRORS:  If (EOC) or (EOL) does not  follow  the  two-letter  command  name,  an
          ILLEGAL TERMINATOR message will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OO - OPEN (CREATE) OUTPUT FILE

 SYNTAX:  OO/(NAME)/(EOC)

          (NAME)  must  conform  to  the  syntax for the operating system you are
          using.

          For OS-9 versions, (NAME) is any valid OS-9 pathname. A space should be
          entered after the pathname (before the second delimiter) to insure that
          OS-9 gets the word that the rest of the command line is not part of the
          pathname.

          For  FLEX and SSB versions, (NAME) may be entered without an extension.
          The default extension is .TXT.

 GENERAL: This COMMAND is used to open an output file  to  save  edited  material
          when SCREDITOR III is called from DOS without a filename given.

          This  COMMAND  is  not  available  once  a PRINT-MERGE COMMAND has been
          executed.

 ERRORS:  If the named file does not conform to the conventions  concerning  file
          names under your DOS, an ILLEGAL FILE NAME error will be posted.

          If the file already exists, a DISK ERROR will be posted.

          If an error occurs during opening, a DISK ERROR will be posted.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  second
          delimiter, an ILLEGAL TERMINATOR error will be posted.

          If the file name is omitted, or a delimiter  is  omitted,  a  DELIMITER
          ERROR will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OP - OPEN FILE FOR WRITE-OUT (FLEX and SSB versions only)

 SYNTAX:  OP/(NAME)/(EOC)

          (NAME) must conform to the syntax for  the  operating  system  you  are
          using.

          For  FLEX and SSB versions, (NAME) may be entered without an extension.
          The default extension is .TXT.

 GENERAL: This COMMAND is used to open a file to receive the output of the  PRINT
          COMMAND.  This  COMMAND  may  NOT  be  used  to  open  a  file  for the
          PRINT-MERGE COMMAND.

          The COMMAND is not  available  once  a  PRINT-MERGE  COMMAND  has  been
          executed.

 ERRORS:  If  the  named file does not conform to the conventions concerning file
          names under your DOS, an ILLEGAL FILE NAME error will be posted.

          If the file already exists, a DISK ERROR will be posted.

          If an error occurs during opening, a DISK ERROR will  be  posted,  and,
          depending  upon  the error type, use of the work file control block may
          be prohibited for the remainder of the edit  session  to  minimize  the
          possibility of blowing out a disk.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  second
          delimiter, an ILLEGAL TERMINATOR error will be posted.

          If the file name is omitted, or a delimiter  is  omitted,  a  DELIMITER
          ERROR will be posted.

          If  an  error  has  previously occurred in the use of the MISCELLANEOUS
          DISK COMMANDS, an FCB IN USE message will be displayed.

          If this COMMAND is entered after a PRINT-MERGE COMMAND has executed, an
          FCB IN USE error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OP - OPEN PRINTER PATH (OS-9 version only)

 SYNTAX:  OP/(NAME)/(EOC)
          OP/*/(EOC)

          In the first form, (NAME)  must  conform  to  normal  OS-9  syntax.  In
          addition,  a  space  should precede the second delimiter to insure that
          OS-9 does not try to use the rest of the command line for a path  name!
          If  no  extended path is given and a slash does not precede the name, a
          file will be created in the current working directory for the output of
          the  printing  commands.  If you are using slashes for delimiters, this
          may be a bit confusing since you will  open  a  path  to  a  device  by
          entering

             OP//P /

          which will open a path to the device named P.

          In  the second form, the path which was described in the data loaded at
          start-up, or by the LOAD PRINTER DATA COMMAND will be  used.  No  space
          should  be  entered between the asterisk and the second delimiter. This
          form of the COMMAND is generally used  to  re-open  a  path  which  was
          closed by the CLOSE PRINTER PATH COMMAND.

 GENERAL: This  COMMAND  may  be used to open a file to receive the output of the
          PRINT COMMAND, or may be used to open a path to some other device. This
          COMMAND MAY be used to open a file for the PRINT-MERGE COMMAND, and may
          be executed at any time, regardless of whether a READ-IN  or  WRITE-OUT
          file is open, or whether or not a PRINT-MERGE has been executed.

          To  use  this COMMAND, you do not need to execute the CP (CLOSE PRINTER
          PATH) COMMAND, as the old path is closed automatically (if  open)  when
          the COMMAND executes.

 ERRORS:  If  the  named file does not conform to the conventions concerning file
          names under OS-9, an ILLEGAL FILE NAME error will be posted.

          If opening a path to a file and the file already exists, a  DISK  ERROR
          will be posted.

          If an error occurs during opening, a DISK ERROR will be posted.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  second
          delimiter, an ILLEGAL TERMINATOR error will be posted.

          If the path name is omitted, or a delimiter  is  omitted,  a  DELIMITER
          ERROR will be posted.

          If  an  error  occurs  during  opening,  the printer status flag in the
          banner line will be extinguished to indicate that the printing COMMANDS
          are inoperative.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OR - OPEN FILE FOR READ-IN

 SYNTAX:  OR/(NAME)/(EOC)

          (NAME) must conform to the syntax for  the  operating  system  you  are
          using.

          For OS-9 versions, (NAME) is any valid OS-9 pathname. A space should be
          entered after the pathname (before the second delimiter) to insure that
          OS-9 gets the word that the rest of the command line is not part of the
          pathname.

          For FLEX and SSB versions, (NAME) may be entered without an  extension.
          The default extension is .TXT.

 GENERAL: This COMMAND is used to open a file for a later READ-IN.

          The  COMMAND  is  not  available  once  a  PRINT-MERGE COMMAND has been
          executed.

 ERRORS:  If the named file does not conform to the conventions  concerning  file
          names under your DOS, an ILLEGAL FILE NAME error will be posted.

          If  the  file does not exist, or an error occurs during opening, a DISK
          ERROR will be posted.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  second
          delimiter, an ILLEGAL TERMINATOR error will be posted.

          If  the  file  name  is omitted, or a delimiter is omitted, a DELIMITER
          ERROR will be posted.

          If an error has previously occurred in the  use  of  the  miscellaneous
          disk  COMMANDS,  or  if  this  COMMAND  is  entered after a PRINT-MERGE
          COMMAND has executed, an FCB IN USE message will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OS - PERFORM OPERATING SYSTEM COMMAND (OS-9 version ONLY)

 SYNTAX:  OS/(OS-9 COMMAND LINE)(EOL)

          This COMMAND must be the last or only COMMAND on the line.

          (OS-9  COMMAND LINE) is passed to SHELL via a FORK call for parsing and
          execution, and should be typed exactly as if you were in SHELL.

          When  this COMMAND is executed, the remainder of the command line after
          the delimiter is passed  to  OS-9  for  interpretation  and  execution.
          Control  will  automatically  return  to  SCREDITOR III if the commands
          executed return control to SHELL on completion. If the command line

             OS/SHELL

          is entered, a new incarnation of SHELL will be created and added to the
          process table. When this is done, the only way to return  to  SCREDITOR
          III  will be to KILL the new incarnation of SHELL. Be sure that, if you
          do this, you KILL the RIGHT SHELL, or you may not be returning anywhere
          until you re-boot the system!


          If you fail to enter the delimiter between the  command  name  and  the
          rest of the line which will be passed to SHELL, interesting results may
          occur. For instance, if you entered

             OS/DIR /D1

          you would get a directory listing of the master directory of device D1.
          However, if you leave out the delimiter, as in this example,

             OSDIR /D1

          SCREDITOR III will consider the D in DIR to be the delimiter and pass

             IR /D1

          to OS-9 for processing. If IR is a command which tells OS-9 to take the
          disk in drive one, add it to a bowl of Rice Krispies and eat it, that's
          what will happen! Don't forget the delimiter!

          When control returns to SCREDITOR III, the message 'Waiting...' will be
          displayed. To return to SCREEN EDITING MODE, hit the  space  bar.  This
          message  is  added  to  insure  that a directory listing won't flash by
          before you have a chance to read it.

 ERRORS:  If nothing but (EOL) follows the  two-letter  command  name,  a  SYNTAX
          ERROR will be posted.

          If  an  error is returned by SHELL, it will only be displayed after the
          'Waiting...' message is cleared.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OW - OPEN FILE FOR WRITE-OUT

 SYNTAX:  OW/(NAME)/(EOC)

          (NAME) must conform to the syntax for  the  operating  system  you  are
          using.

          For OS-9 versions, (NAME) is any valid OS-9 pathname. A space should be
          entered after the pathname (before the second delimiter) to insure that
          OS-9 gets the word that the rest of the command line is not part of the
          pathname.

          For FLEX and SSB versions, (NAME) may be entered without an  extension.
          The default extension is .TXT.

 GENERAL: This COMMAND is used to open a file for a later WRITE-OUT.

          The  COMMAND  is  not  available  once  a  PRINT-MERGE COMMAND has been
          executed.

 ERRORS:  If the named file does not conform to the conventions  concerning  file
          names under your DOS, an ILLEGAL FILE NAME error will be posted.

          If the file already exists or if an error occurs during opening, a DISK
          ERROR will be posted, and, depending upon the error type,  use  of  the
          work file control block may be prohibited for the remainder of the edit
          session to minimize the possibility of blowing out a disk.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  second
          delimiter, an ILLEGAL TERMINATOR error will be posted.

          If  the  file  name  is omitted, or a delimiter is omitted, a DELIMITER
          ERROR will be posted.

          If an error has previously occurred in the  use  of  the  MISCELLANEOUS
          DISK  COMMANDS,  or  If  this  COMMAND  is  entered after a PRINT-MERGE
          COMMAND has executed, an FCB IN USE error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PA - CYCLE PAGE START DISPLAY

 SYNTAX:  PA(EOC)

          This COMMAND will turn on or off the display of page start flags.

          If  on  when  the COMMAND is issued, the display will be turned off. If
          off, the display will be turned on.

 GENERAL: SCREDITOR III continuously calculates where each page of the file  will
          start if it were printed, based upon the default top or bottom margins,
          or the even  and  odd  header  and  footer  lengths,  if  defined.  The
          calculation is carried out separately for both odd and even pages.

          When  the  page  start  display  is  turned  on,  the  letter P will be
          displayed in the left-most column of the screen at the  first  line  of
          each  page.  In  addition,  if the line numbers display is on, the page
          number will replace the line number on those lines flagged as the start
          of  each  page.  The  line number displayed will be in reference to the
          first page number of the file (either 00001, or whatever number was set
          using the DEFINE PRINTED PAGE COMMAND).

          If  the  line is also marked (using the SET MARKED LINE COMMAND), the P
          flag character will be displayed as lower case  (p)  instead  of  upper
          case.

 ERRORS:  If any character other than (EOC) or (EOL) follows the command name, an
          ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PI - PARAGRAPH INDENT

 SYNTAX:  PI#nnn(EOC)

          #nnn is a number in the range of 1 to 249 in LINE EDIT MODE, and  1  to
          249  less  the length of the first word on the first line, and 1 to 249
          less the length of the first word on each  additional  line  after  the
          indenting of the previous line in TEXT MODE.

          This  COMMAND  is  used  to  indent a paragraph by a number of columns.
          Remember that #nnn above is not the column to which  the  paragraph  is
          indented,  but  rather the number of columns to the right of the margin
          by which the paragraph will be indented.

          In LINE MODE, this COMMAND has the same  effect  as  the  INSERT  SPACE
          OPERATOR.  Each  line  will be shifted to the right, and any characters
          which move past the right margin on each line will be lost.

          In TEXT MODE, this COMMAND has the same effect  as  if  you  moved  the
          cursor  to the first column of each line, performed an INSERT CHARACTER
          OPERATOR, typed a number of characters equal to #nnn and then used  the
          CURSOR  DOWN  OPERATOR  causing  a  paragraph  meld  to occur, and then
          repeated the action to the end of the paragraph, except that instead of
          characters, spaces are used.

 ERRORS:  If  the  buffer  becomes  full during the indent, a BUFFER FULL message
          will be posted, and the remainder of the paragraph will not  have  been
          indented.

          If #nnn is zero an ILLEGAL TARGET error wil be posted.

          If  #nnn  is  greater  than the limits described in the syntax comments
          above or if the COMMAND is executed on a line which  is  blank  between
          the margins, the bell will ring.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PL - PACK LINE

 SYNTAX:  PLC(EOC)
          PLL(EOC)
          PLR(EOC)

          There are three forms of this COMMAND.

          PLC  will center the current line between the margins, and extra spaces
          will be removed from the line.

          PLL will make the line flush with the left margin and extra spaces will
          be removed from the line.

          PLR  will  make the current line flush with the right margin, and extra
          spaces will be removed from the line.

 GENERAL: This COMMAND is used to remove extra spaces from a line and  perform  a
          specific justification on it, irregardless of the current justification
          mode or whether LINE or TEXT MODE is active. In TEXT MODE,  a  meld  IS
          NOT performed over the paragraph after this COMMAND is executed.

 ERRORS:  If  any option other than C, L or R is entered, an ILLEGAL OPTION error
          will be displayed. If any character other than (EOC) or  (EOL)  follows
          the option character, an ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PM - PRINT-MERGE

 SYNTAX:  PM/(NAME)/(EOL)
          PM/*/(EOL)

          There are two forms of the COMMAND.

          The  first  form  consists of the COMMAND followed be the filename of a
          data file from which the COMMAND will read data to be merged  into  the
          document being edited.

          (NAME)  must  conform  to  the  syntax for the operating system you are
          using.

          For OS-9 versions, (NAME) is any valid OS-9 pathname. A space should be
          entered after the pathname (before the second delimiter) to insure that
          OS-9 gets the word that the rest of the command line is not part of the
          pathname.  For  FLEX and SSB versions, (NAME) may be entered without an
          extension. The default extension is .TXT.

          The first form  of  the  COMMAND  is  used  to  begin  the  PRINT-MERGE
          operation.  The  second  form is used to re-start the PRINT-MERGE after
          editing an individual document, as will be described below.

 GENERAL: When the COMMAND is entered, the current files will be closed  just  as
          if  a  LOG  COMMAND had been executed; however, the program will retain
          control and not return to DOS.

          Next, the file specified by (NAME) will be opened for use as the  input
          data for merging.

          After  this,  the output file which was previously closed is opened and
          loaded for merging.

          Once the files are open, the merge operation begins. The current buffer
          is  searched  for  one  of  two special strings which will be described
          below. When either is found, it is replaced  with  one  line  from  the
          input  data  file.  Once  the  last  special  string has been found and
          replaced, a prompt message will be posted, as follows:

             Continuous, Print, Next, Edit or Abort?

          If the letter C is typed, the  first  document  will  be  printed,  the
          document  form  will be reloaded, the next series of replacements made,
          and so on until the end of the data file is reached. If the  ABORT  key
          is  struck  during  printing,  the  printing will stop and control will
          return to the action prompt  message.  The  document  which  was  being
          printed  will  not be lost, allowing you to re-print the current merged
          form.

          If the letter P is typed, the current document  will  be  printed,  the
          form  will  be  reloaded, the next series of replacements made, and the
          prompt will then be re-issued.


 PM - PRINT-MERGE  (continued)

          If  the letter N is typed, the current document will not be printed and
          the form will be reloaded, the next series of  replacements  made,  and
          the prompt will then be re-issued, thus skipping a form.

          If  the letter E is typed, control will return to SCREEN EDIT MODE. You
          may then make changes to the document with the  merged  data  in-place.
          This  will  allow  you  to  make custom changes to each merged document
          before printing. The second form of the PRINT-MERGE COMMAND above  will
          return control to the action prompt message when editing is complete.

          If  the  letter A is typed, the PRINT-MERGE COMMAND will be stopped and
          the data file will be closed. See the note below about RE-START.

          Any other character will be ignored.

 STRINGS: Two special strings are used in the insertion of data into the document
          during  the  actual merging. (LE) is used to insert data to be inserted
          as if SCREDITOR III were in LINE MODE.  Typical  uses  of  this  string
          would  be in inside addresses, salutations, tables, etc... (TE) is used
          where data will be inserted as if SCREDITOR  III  were  in  TEXT  MODE.
          Typical  uses  of  this  string  would  be  in  personalizations within
          paragraphs. When the (TE) string is used, melding will occur before the
          next string is replaced. Be sure to read the notes below on SETUP.

          In  editing  the  original document, you will use (TE) or (LE) wherever
          you desire to insert data. The actual replacement of the (TE) and  (LE)
          strings  take  place is as if you had used the CHANGE COMMAND to do the
          replacements. Word-wrap and justification will be honored.

 SETUP:   In order to prepare to execute the PRINT-MERGE  COMMAND,  a  number  of
          things must be observed.

          1) Any  paragraph  which  contains  a  (TE)  string must reside totally
             within the current margins. When the string is  replaced  by  actual
             data, automatic merging will take place.

          2) The type of justification you desire any paragraph containing a (TE)
             string to have must have  been  set  using  the  JUSTIFICATION  MODE
             COMMAND  before  issuing  the  PRINT-MERGE  COMMAND,  and  all  such
             paragraphs must have the same margins.

          3) Whenever an (LE) string is replaced, it will be done in  LINE  MODE,
             and no justification will take place. You must be sure that the data
             to be inserted does not cause margin overrun or characters  will  be
             lost just as when characters are inserted in normal LINE MODE.


 PM - PRINT-MERGE  (continued)

 LIMITS:  The  following limitations and provisos must be observed when executing
          a PRINT-MERGE COMMAND:

          1) The  document  into  which  the  data  is  being  merged must reside
             completely within the current buffer.

          2) The resulting document after merging  must  also  reside  completely
             within the current buffer.

          3) Any  defined  headers  or  footers  will  be  used just as in normal
             printing.

          4) No (TE) or (LE) replacement strings may be  imbedded  within  header
             and footer definitions (if they are, they will not be replaced).

          5) There must be at least one (TE) or (LE) string within the document.

          6) It  makes no difference whether LINE or TEXT MODE is active when the
             merge operation begins, but the mode of  the  last  string  replaced
             will  be  active  when  the action prompt is given. If you use the E
             answer to the prompt to make changes to the document, be sure to  be
             aware of this.

 RESTART: When  the  first  data file is exausted, or after the Abort response to
          the activity prompt, a second PRINT-MERGE run may be begun  on  another
          data file by using the first form of the PRINT-MERGE COMMAND.

 DATA:    The  organization  of  the data in the data file must exactly match the
          (LE) and (TE) replacement strings within the document as to the  number
          of  lines  versus strings. For instance, if there are a total of eleven
          strings within the document, there should be eleven data  items  within
          the  file  for  each  document to be printed, and each item in the data
          file should be on a separate line. No special characters  are  used  to
          separate data items or records within the data file.

 NOTE:    Certain  of  the  characteristics and operation of SCREDITOR III change
          when the PRINT-MERGE COMMAND is executed, as follows:

          1) Once the PRINT-MERGE COMMAND has been executed  once,  none  of  the
             COMMANDS  which  use the work file control block may be executed for
             the remainder of the edit session. In addition,  the  NEW  and  SAVE
             COMMANDS may not be used.

          2) DEFINE  and UNDEFINE HEADER and FOOTER COMMANDS may be executed, but
             the re-defined headers and/or footers will only be used in a  single
             printing  of  the  document,  since the document is re-loaded before
             each copy is printed.

          3) When the MERGE-PRINT is complete, either the ABORT or  LOG  COMMANDS
             may  be  used to return to DOS, but the file closing executed by the
             LOG COMMAND will have already been done.

          4) The 'F' option of the PRINT COMMAND may not  be  specified  for  the
             remainder of the edit session.


 PM - PRINT-MERGE  (continued)

 ERRORS:  If  no (TE) or (LE) strings exist within the current document, a CANNOT
          PRINT-MERGE error will be posted.

          If a NEW or SAVE COMMAND  has  been  executed  before  the  PRINT-MERGE
          COMMAND, a CANNOT PRINT-MERGE error will be posted.

          If additional lines exist in the input file past the end of the current
          buffer (partial read), a CANNOT PRINT-MERGE error will be posted.

          If the file given in (NAME) does not exist, or an error occurs  in  its
          opening,  a  DISK  ERROR #nnn message will be posted, where #nnn is the
          number of the error returned from DOS.

          If an error occurs in the special  logging  of  the  input  and  output
          files,  a  DISK  ERROR message will be posted, and an abort to DOS will
          occur.

          If an error occurs in the loading of the merge document, a  DISK  ERROR
          will be posted and an immediate abort to DOS will occur.

          When  the end of the data file is reached, an OUT OF DATA error will be
          posted.

          If a disk error occurs in the reading of input data, a DISK ERROR  will
          be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PP - PACK PARAGRAPH

 SYNTAX:  PPC(EOC)
          PPL(EOC)
          PPR(EOC)

          There are three forms of this COMMAND.

          All  three  forms  will  perform  the  same  operation as the PACK LINE
          COMMAND, but will do so over an entire paragraph, removing  spaces  and
          performing the selected justification.

 GENERAL: This  COMMAND  is used to remove the extra spaces from all of the lines
          of a paragraph. No melding is performed.

 ERRORS:  If any option other than C, L or R is entered, an ILLEGAL OPTION  error
          will be displayed.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  option
          character, an ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PR - PRINT

 SYNTAX:  PRx#nnnn(EOC)
          PRx@nnnn(EOC)
          PRx*(EOC)
          PRx(EOC)

          There are four forms of the COMMAND.

          The  first  may  be  read  as 'Print from the current page through page
          #nnnn.'

          The second may be read as 'Print @nnnn pages, starting with the current
          page.'

          The third may be read as 'Print from the current page to the end of the
          buffer/file (see below).'

          The final form may be read as 'Print the current page.'

          In the first two forms, 'nnnn' is a number in the range of 1-65535.

 OPTIONS: There are two special option characters  recognized  by  this  COMMAND,
          shown above as 'x'. The allowable option characters are B and F.

          If  the  B  option  character  is  entered, printing will stop with the
          bottom of the current buffer. If a part-page exists at  the  bottom  of
          the  buffer, it will be printed as if it were the end of the file, with
          blank lines generated down to the footer point on the page.

          If the F option character is entered, and if there are additional lines
          in  the  input  file  when  the  bottom  of  the  buffer is reached, an
          automatic NEW COMMAND will be executed and printing will continue.

 GENERAL: When this COMMAND is issued, the  beginning  of  the  current  page  is
          located.  Printing  will  start at the first line on the page, and will
          continue through the optioned number of pages.

          If headers or footers are defined, they will be  used.  The  number  of
          lines  actually printed on each page is determined by the length of the
          page less the length of the header and footer (if defined, and even  or
          odd,  depending  upon  whether  the page is even or odd). If either the
          header or footer for a particular page is not defined, the default  top
          or  bottom  margin  value  will  be  used, as defined during PRTGEN, or
          during the execution of the DEFINE PRINTED PAGE COMMAND.

          If any key other than the ABORT key  is  struck  during  printing,  the
          printing  will  stop  at the end of the current line. After this pause,
          any key other than the ABORT key will cause printing to resume. If  the
          ABORT  key is struck at either time, printing will immediately stop and
          control will return to COMMAND or  SCREEN  EDIT  MODE,  depending  upon
          whether or not additional COMMANDS exist to be executed.


          If  an  OP  STOP  control code is encountered during printing, printing
          will stop and the message 'Operator Stop...' will be  posted.  Any  key
          other  than  the ABORT key will cause the message 'Printing Resumed...'
          to be displayed, and printing will, indeed, resume. The ABORT key works
          as described in the previous paragraph.

          Whenever  the  page replacement string (%%%%) is encountered during the
          printing of the header or footer, it will be replaced with the  current
          page number.

 ERRORS:  If  any character other than B or F is entered where 'x' is show in the
          syntax above, an ILLEGAL OPTION error will be posted.

          If any character other than #, @, *  or  (EOL)  or  (EOC)  follows  the
          option  character,  an  ILLEGAL TYPE error will be posted. If no number
          follows the pounds or 'at' type character, an ILLEGAL TARGET error will
          be posted.

          If  any character other than (EOL) or (EOC) follows the COMMAND and its
          options and targets, an ILLEGAL TERMINATOR error will be posted.

          If the first line of the current page is not  in  the  buffer,  a  PAGE
          START NOT FOUND error will be posted, and printing will not occur.

          If  the end of the buffer (B option) or the end of the file (B or F) is
          reached before the target is reached (# and  @  types),  a  TARGET  NOT
          REACHED error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PS - CYCLE PRINTER PAGE PAUSE

 SYNTAX:  PS(EOC)

 GENERAL: This  COMMAND  is used to enable or disable the post-page printer pause
          feature of SCREDITOR III. Each time a page is printed when on, the bell
          on  the  terminal (if so equipped) will ring to indicate the condition,
          and printing will stop.  Any  key  other  than  the  ABORT  will  cause
          printing  to  resume.  The  ABORT key will cause printing to abort, and
          control return to SCREEN EDIT MODE if no additional COMMANDS  exist  to
          be executed.

          This  COMMAND is included to allow the use of printers using "cut page"
          paper.

          If pause was on when this COMMAND is issued, it will be turned off.  If
          off,  it will be turned on. The printing status flag in the banner line
          will reflect the state as PS for pause on, and PC for pause off.

 ERRORS:  If any character other than (EOL) or (EOC) follows the COMMAND name, an
          ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 RI - READ-IN LINES FROM FILE

 SYNTAX:  RI#nnnn(EOC)
          RI@nnnn(EOC)
          RI*(EOC)
          RI(EOC)

          There are four forms of this COMMAND:

          The first may be read as 'Insert all lines from the current line in the
          READ-IN file through line #nnnn, placing them before the current buffer
          line.'

          The  second  may  be read as 'Insert @nnnn lines from the READ-IN file,
          placing them before the current buffer line.'

          The third form may be read as 'Insert the remainder of the READ-IN file
          before the current line in the buffer.'

          The  last  form  may  be read as 'Insert one line from the READ-IN file
          before the current line in the buffer.'

          In the first two forms, 'nnnn' is a number in the range of 1-65535.

 GENERAL: This COMMAND is used to insert selected lines from an open READ-IN file
          into the current buffer. The insertion is always immediately before the
          line on which the cursor resides when the COMMAND is executed.

          The READ-IN file is not closed  at  the  end  of  this  COMMAND  unless
          end-of-file is reached.

 ERRORS:  If  a  READ-IN  file is not open when the COMMAND is issued, a FILE NOT
          OPEN error will be posted.

          If any character other than #, @, or (EOL) or (EOC) follows the command
          name, an ILLEGAL TYPE error will be posted.

          If  the  number  entered  in  the  # option has already been skipped or
          inserted, an ILLEGAL TARGET message will be posted.

          If end-of-file is reached before the # or @ target is reached, the file
          will be closed, and a TARGET NOT REACHED error will be posted.

          If a disk error occurs, a DISK ERROR #nnn message will be posted, where
          #nnn is the error number returned from DOS.

          If there is not enough room to insert the lines, a  BUFFER  FULL  error
          will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 RM - SET RIGHT MARGIN

 SYNTAX:  RM#nnn(EOC)
          RM(EOC)

          Two forms of this COMMAND are defined.

          The first form of the COMMAND requires that a pounds  symbol  (#)  type
          character  follow  the  command  name,  and  the  type characer will be
          followed by a number in the range of 1 to 249. When this is  done,  the
          right margin will be set to that column.

          The  second is simply the command name followed by (EOC) or (EOL). When
          entered in this manner, if the right  margin  is  set  to  the  current
          column,  it will be reset to column 249. If the right margin is not set
          to the current column, it will be so set.

 GENERAL: If the cursor column falls outside the right margin after the margin is
          moved,  the  cursor will be moved to the right margin. If the new right
          margin is off the display area and the cursor is  moved,  an  automatic
          horizontal scroll will occur.

 ERRORS:  If any character other than (EOC) or (EOL) follows the command name, an
          ILLEGAL TERMINATOR error will be posted.

          If a number larger than 249 is entered, or the result  of  the  COMMAND
          would  place  the right margin to the left of the left margin, a MARGIN
          OVERRUN error will be displayed. If any character other than the pounds
          symbol  (#)  is used in the first form, an ILLEGAL TYPE message will be
          displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 RS - READ-IN SKIP

 SYNTAX:  RS#nnnn(EOC)
          RS@nnnn(EOC)

          There are two forms of this COMMAND:

          The first may be read aas 'Skip to line #nnnn in the READ-IN file.'

          The second may be read as 'Skip @nnnn lines in the READ-IN file.'

          'nnnn' is a number in the range of 1-65535.

 GENERAL: This  COMMAND  is  used  to skip over unwanted parts of an open READ-IN
          file before using the READ-IN LINES COMMAND.

 ERRORS:  If the READ-IN file is not open, a FILE NOT OPEN error will result.

          If any charater other than # or @ follows the command name, an  ILLEGAL
          TYPE error will be posted.

          If  the  target in the # option has already been passed or inserted, an
          ILLEGAL TARGET error will be posted.

          If the end of the file is reached before the target number of lines has
          been  skipped, a TARGET NOT REACHED error will occur, and the file will
          be closed.

          If an error occurs during the skip, DISK ERROR  #nnn  will  be  posted,
          where #nnn is the number returned from DOS.

          If  any character other than (EOC) or (EOL) follows the numeric target,
          an ILLEGAL TERMINATOR error will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 SA - SAVE LINES TO FILE

 SYNTAX:  SA#nnnn(EOC)
          SA@nnnn(EOC)
          SA*(EOC)
          SA(EOC)

 NOTE:    The  syntax  and  operation of this COMMAND is identical to that of the
          NEW COMMAND with the exception that no new lines will be read from  the
          input  file.  Refer  to  the  NEW  COMMAND  description  for syntax and
          operation details.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 SM - SET LINE MARK

 SYNTAX:  SM(EOC)

 GENERAL: This  COMMAND  will  mark the current line for later use in conjunction
          with the GOTO MARK OPERATOR. If the line was already  marked,  it  will
          remain marked.

          When the line is marked, an asterisk will be displayed in the left-most
          column of the screen unless the page mode display is on and a P  is  in
          the column. In this case, the P will be changed to p.

 ERRORS:  If any character other than (EOC) or (EOL) follows the command name, an
          ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 SS - SAVE SYMBOLS TO FILE

 SYNTAX:  SS/(NAME)/(EOC)

          (NAME) is the name of a file to be created, and  must  conform  to  the
          syntax  of  the  DOS  you  are using. The delimiters, as will all other
          COMMANDS, float, but must be the same.

          Under FLEX and SSB DOS, no extension should be given, as .DAT is always
          used with this COMMAND. Any extension actually entered will be ignored.
          The file will default to the working drive.

          Under OS-9, the second delimiter should be preceded by a space  to  let
          OS-9 know where to stop parsing the path name. The default directory is
          the current working directory.

 GENERAL: This COMMAND is used to save the currently defined symbols to a  symbol
          datafile.  The symbols are not erased after being saved, so the COMMAND
          may be issued at any time during the edit session.

 ERRORS:  If a filename which does not conform to the conventions  used  by  your
          DOS is entered, an ILLEGAL FILE NAME message will be posted.

          If  the  file  specified  by  the filename already exists, a DISK ERROR
          message will be posted.

          If any error occurs during the creation of the file or  the  saving  of
          the  symbols  to  the file, a DISK ERROR will be posted, and under some
          conditions, no disk I/O except NEW, SAVE and LOG may be allowed for the
          remainder of the edit session.

          If  an  error  has  occurred  previously  with any of the MISCELLANEOUS
          COMMANDS, and FCB IN USE error will be posted, and no  save  will  take
          place.

          If  the PRINT-MERGE COMMAND has been executed, an FCB IN USE error will
          be posted.


          If  any  character  other  than  (EOL)  or  (EOC)  follows  the  second
          delimiter, an ILLEGAL TERMINATOR error will be returned.

          If the name is omitted an ILLEGAL TERMINATOR error will be postd.

          If the trailing delimiter is omitted, a DELIMITER ERROR will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 ST - SET TABS

 SYNTAX:  ST/NNN/NNN/NNN/.../NNN(eol)

          Sets  tabs  in  selected  columns.  Delimiter  may  be  any non-numeric
          character, but must be the same throughout the  entire  line.  As  many
          columns as desired may be set with a single command entry. This COMMAND
          must be the last or only COMMAND  on  the  command  line.  The  columns
          entered in the COMMAND (NNN) must be in the range of 1 to 249.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 TA - TALLY COMMANDS

 SYNTAX:  TAA(EOC)
          TAC(EOC)
          TAD(EOC)
          TAI(EOC)
          TAK(EOC)
          TAR(EOC)

          There are six options defined in the TA COMMAND.

          The first option is the letter A. When this option is used, the  column
          of  numbers  in which the cursor is residing will be decimal aligned to
          the cursor position; that is, all numbers will be shifted left or right
          so  that  their decimal points all appear in the current cursor column.
          The cursor may be on any line in the column, and decimal  justification
          will  be  done  on all numbers before and after the current line. Every
          number must have a decimal point, and the alignment will  stop  at  the
          first  line  above  and below the current line which does not contain a
          decimal number crossing the current column.

          The second option is the letter  C.  When  this  option  is  used,  the
          current  column  of numbers will be added. Numbers may be preceded by a
          dollar sign, a plus sign or a minus sign, or followed by a minus  sign.
          Exponential  values  are  not supported by SCREDITOR III. The column of
          numbers does not have to be aligned for  the  tally  to  be  performed;
          however,  a  valid  digit or decimal point of EACH NUMBER to be tallied
          must be in the cursor column, as in the following example:

          1.23384- <
          175.23   <
          -4.126   <
          $9.95    <
          81.23    <
          11447.8  <
          .000001   <
          ^^^^

          (CURSOR COLUMN INDICATED BY UP-ARROW, CURSOR ROW BY LESS-THAN SYMBOL)

          Any of the four columns indicated by the up-arrow will give the correct
          answer for the tally of the columns. No other column will  do  so.  The
          left-most column will not because both a dollar sign and a numeric sign
          appear in the column. The right-most  two  columns  will  not  give  an
          accurate answer because spaces appear in those columns. any of the rows
          indicated may be the current line.

          The third option letter is the letter D. When this letter is used,  the
          current  tally  value  will be displayed on the command line. The space
          bar will clear the line and return control to SCREEN EDIT MODE.

          The fourth option letter is the letter I. When this letter is used, the
          tally  value will be inserted at the cursor position. The decimal point
          of the value will be placed at the cursor itself. Once  the  value  has
          been inserted, the tally will no longer be active (value cleared).


          The  fifth option is the letter K. This option kills (clears) a current
          tally value to allow another tally to occur without inserting the  last
          one accumulated.

          The  sixth  option  is  the  letter  R. This option will tally a row of
          numbers in a manner similar to the TALLY COLUMN COMMAND.

 GENERAL: These  COMMANDS  are  useful  when  a  spread-sheet  type page is being
          prepared. Applications might include hand-generated financial  reports,
          expense reports, etc...

 ERRORS:  If  an  illegal  option character is entered, an ILLEGAL OPTION message
          will be posted.

          If the character to which the cursor is pointing is not  a  part  of  a
          valid numeric field, an ILLEGAL TALLY FIELD error will be posted.

          If  a  tally  on  a  row  or  column has been done and another tally is
          attempted before the current value has  been  inserted  or  cleared,  a
          TALLY ACTIVITY ERROR will be posted.

          If a number outside the range of + or -99999999.99999999 is accumulated
          or encountered during a tally, an ILLEGAL TALLY  FIELD  error  will  be
          posted.

          If  there is insufficient room to insert the tally total, a NO SPACE TO
          INSERT error will be posted.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  option
          character, in ILLEGAL TERMINATOR error will be posted.

          If  any  character  other  than  the option characters shown follow the
          command name, an ILLEGAL OPTION character will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 TE - SELECT TEXT MODE

 SYNTAX:  TE(EOC)

 GENERAL: This COMMAND is used to turn on TEXT MODE.  If  off  when  the  COMMAND
          executes, TEXT MODE will be turned on. If on, it will remain on.

 ERRORS:  If  any character other than (EOL) or (EOC) follow the command name, an
          ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 TO - MOVE TO TOP OF BUFFER

 SYNTAX:  TO(EOC)

 GENERAL: This COMMAND is designed to rapidly move the display area to the top of
          the current buffer.

 ERRORS:  If  the  cursor  is already on the first line in the buffer, a a TOP OF
          BUFFER message will be displayed.

          If any character other than (EOL) or (EOC) follow the command name,  an
          ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 UH - UNDEFINE HEADERS/FOOTERS

 SYNTAX:  UH(EOC)

 GENERAL: This COMMAND will  'undefine'  any  defined  headers  or  footers.  The
          headers and/or footers will become the top lines in the current buffer.

          When this COMMAND is issued, the default top and bottom margins will go
          into effect.

 ERRORS:  If  any character other than (EOL) or (EOC) follow the command name, an
          ILLEGAL TERMINATOR error will be posted.

          If  no header or footer definitions exist when the COMMAND is executed,
          a NOT DEFINED error will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 WC - COPY LINES TO WRITE-OUT FILE

 SYNTAX:  WC#nnnn(EOC)
          WC@nnnn(EOC)
          WC*(EOC)
          WC(EOC)

          There are four options supported by this COMMAND.

          The first option may be read as 'Starting at the current line, copy all
          lines up to and including the line #nnnn to the WRITE-OUT file.'

          The second option may be read as 'Starting at the  current  line,  copy
          @nnnn lines to the WRITE-OUT file.'

          The  third  option may be read as 'Copy all lines from the current line
          to the end of the current buffer to the WRITE-OUT file.'

          The fourth option may  be  read  as  'Copy  the  current  line  to  the
          WRITE-OUT file.'

          In the first two forms, 'nnnn' is a number in the range of 1-65535.


 GENERAL: Each  time  the COMMAND is issued, the optioned number of lines will be
          copied. No cursor movement will occur.

          The WRITE-OUT file is not closed at the completion of this  COMMAND  to
          allow  additional  lines  to  be copied. If a READ-IN, a WRITE-OUT to a
          different file, a PRINT-MERGE, or other COMMAND  which  uses  the  work
          file  control  block is to be executed, the file should be closed using
          the CLOSE FILE COMMAND.

 ERRORS:  If the file has not be opened, a FILE NOT OPEN error will be posted.

          If  the  file is open for a read-type COMMAND, an FCB IN USE error will
          be posted.

          If the target in the first form is not  the  current  line  or  in  the
          bottom buffer, an ILLEGAL TARGET error will be returned.

          If the number of lines in the second form do not exist from the current
          line through the end of the current buffer,  an  ILLEGAL  TARGET  error
          will be returned.

          If  a  disk  error  occurs  during the execution of the COMMAND, a DISK
          ERROR message will be posted, and under some conditions,  no  disk  I/O
          except  for  the  NEW,  SAVE  and  LOG COMMANDS will be allowed for the
          remainder of the edit session.

          If a previous disk error has occurred in the use of  the  miscellaneous
          disk COMMANDS, an FCB IN USE error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 WE - EXTRACT LINES TO WRITE-OUT FILE

 SYNTAX:  WE#nnnn(EOC)
          WE@nnnn(EOC)
          WE*(EOC)
          WE(EOC)

 NOTE:    The operation of this COMMAND is identical to that of the COPY LINES TO
          WRITE-OUT  COMMAND just presented, with the exception that as the lines
          are copied with this COMMAND, they will be  deleted  from  the  current
          buffer,  whereas with the WC COMMAND, they will not be. Refer to the WC
          COMMAND DESCRIPTION for operation and syntax details.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 CT - CLEAR TABS

 SYNTAX:  CT#NNN#MMM(eoc)
          CT#NNN@MMM(eoc)
          CT#NNN*(eoc)
          CT#NNN(eoc)

          Clears  tabs.  First form will clear all tabs from column NNN to column
          MMM (inclusive). The second form will clear all tabs starting at column
          NNNN  and  continuing  MMM  columns. The third form will clear all tabs
          from column NNN to the end of the line. The last form will clear a  tab
          in  column NNN. In all forms, NNN is a number in the range of 1-249. In
          the second form, the sum of NNN and MMM must be in the range of 2-249.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OD - DELETE DISK FILE

 SYNTAX:  OD/(file name)/(eoc)

          Deletes the file described in (file name). The default  drive  for  the
          file is the working drive. The default file extension is '.TXT'.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OL - LIST DISK FILES

 SYNTAX:  OL#NN(eoc)

          Lists  all  files on drive NN, where NN must be a legal drive number in
          your system. Files are listed in a four-name wide format. When the last
          filename  has  been  listed, a 'Waiting...' message will be posted. The
          space bar will clear the message and  return  control  to  SCREEN  EDIT
          MODE.  The  ABORT key will stop the listing. On some operating systems,
          hitting the abort key will cause the 'Waiting...' message to be posted.
          In this case, hit the space bar to return to editing.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OV/(file name)/(eoc)

          View  the contents of a disk file. The file will be displayed with line
          numbers followed by an '=' character at the left side  of  the  screen,
          followed  by  the  line  of  text.  The  numbers are included to aid in
          determining which line numbers to use with the RI and RS COMMANDS. When
          the  listing  is  complete, the 'Waiting...' message will be displayed.
          The space bar will clear the message and return control to SCREEN  EDIT
          MODE.  The  ABORT key will stop the listing. On some operating systems,
          hitting the ABORT  KEY  will  cause  the  'Waiting...'  message  to  be
          displayed. If this happens, hitting the ABORT or space keys will return
          control to editing.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
