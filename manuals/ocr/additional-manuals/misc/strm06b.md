# STRM06B

> Source: `manuals/misc/REFERENC - Manual and Documentation Archive.zip!REFERENC.DSK!STRM06B.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

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
