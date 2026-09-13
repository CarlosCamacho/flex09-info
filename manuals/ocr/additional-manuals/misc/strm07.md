# STRM07

> Source: `manuals/misc/REFERENC - Manual and Documentation Archive.zip!REFERENC.DSK!STRM07.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                          TECHNICAL REFERENCE MANUAL

                            SCREDITOR III OPERATORS


.DHE
%TECHNICAL REFERENCE MANUAL                          SCREDITOR III WORD PROCESSOR

                            SCREDITOR III OPERATORS


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                        PAGE 7-%%%%
.DFE
"
 PAGE 7-%%%%                                        (C) 1982, ALFORD & ASSOCIATES
 The following pages list each of the OPERATORS which are defined in this version
 of  SCREDITOR  III,  listed in in alphabetical order according to the two-letter
 OPERATOR ABBREVIATIONS.


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 ACTIVATE SYMBOL (^AS)

 GENERAL: When  this  OPERATOR is executed, no apparent action takes place except
          for the AS flag in  the  banner  being  displayed;  however,  the  next
          character  entered  will  be the "name" of a symbol, from A-Z (upper or
          lower case). Once the  symbol  "name"  is  entered,  the  corresponding
          series of previously-defined keystrokes will be performed.

          If  the  ACTIVATE  SYMBOL  OPERATOR  is  accidentally typed, the DELETE
          (ABORT) key may be used to abort the operation.  This  is  particularly
          useful  where  a  symbol  definition  ends in ^AS, as would be the case
          where a symbol is going to be used repeatedly (see  the  DEFINE  SYMBOL
          COMMAND description elsewhere).

 ERRORS:  If  no  definition  was assigned to the particular symbol, nothing will
          happen.

          If a symbol "name" outside the range of A-Z is entered, the  bell  will
          ring.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 DESTRUCTIVE BACKSPACE (^BS)

 GENERAL: The  BACKSPACE OPERATOR performs identically in all modes except INSERT
          CHARACTER MODE. Each time the OPERATOR is entered, the character  under
          the cursor will be changed to a space (blank), and the cursor will move
          one column to the left. If the  left  margin  is  reached,  no  further
          movement  will  occur.  If the left side of the display area is reached
          before the left margin, an automatic horizontal scroll will occur.

          Read the INSERT CHARACTER description below for specific information on
          how DESTRUCTIVE BACKSPACE operates in that mode.

          No  paragraph  melding or justification is performed in TEXT MODE after
          this operation. It is up to the operator to enter a  MELD  OPERATOR  to
          re-space the line and/or paragraph.

 ERRORS:  If  the  cursor  was on the left margin when the OPERATOR was executed,
          the bell will ring to indicate an illegal or incomplete operation.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CURSOR DOWN (^CD)

 GENERAL: This OPERATOR moves the cursor down  one  line  in  the  display  area.
          Movement stops at the bottom line of the display area, or the last line
          of the buffer, whichever occurs first.

          If INSERT LINE MODE or INSERT  CHARACTER  MODE  was  active  when  this
          OPERATOR  is  entered, the mode will be reset. In addition, in the case
          of INSERT CHARACTER MODE in TEXT MODE, the  paragraph  will  be  melded
          before the cursor moves.

 ERRORS:  If the operation is attempted while on the bottom line of  the  display
          area  or  the bottom line of the current buffer, the bell will sound to
          indicate an illegal operation.

          If the buffer is full when typed, a BUFFER FULL message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CURSOR LEFT (^CL)

 GENERAL: This OPERATOR moves the cursor to the left one position on the  screen.
          Movement  stops  at  the  left margin. If the left margin is off of the
          screen to the left, an automatic left scroll  will  be  performed,  and
          after the operation the cursor will be positioned at the next column to
          the left of the previous current column.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  If the operation is attempted at the left margin, the bell  will  sound
          to indicate an illegal operation.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CURSOR RIGHT (^CR)

 GENERAL: This OPERATOR moves the cursor to the right one position on the screen.
          Movement stops at the right margin, or column  250,  whichever  is  the
          lessor.  If  the  right  margin  is  off of the screen to the right, an
          automatic right scroll  will  be  performed  and  the  cursor  will  be
          positioned  at  the  next  column  to the right of the previous current
          column.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  If the operation is attempted at the right margin, the bell will  sound
          to indicate an illegal operation.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CURSOR UP (^CU)

 GENERAL: This OPERATOR moves the  cursor  up  one  line  in  the  display  area.
          Movement stops at the top line of the display area.

          If  INSERT  LINE  MODE  or  INSERT  CHARACTER MODE was active when this
          OPERATOR is entered, the mode will be reset. In addition, in  the  case
          of  INSERT  CHARACTER  MODE  in TEXT MODE, the paragraph will be melded
          before the cursor moves.

 ERRORS:  If the operation is attempted while on the  top  line  of  the  display
          area, the bell will sound to indicate an illegal operation.

          If  the  operation  is attempted when the buffer is full, a BUFFER FULL
          message will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 DELETE CHARACTER (^DC)

 GENERAL: When the DELETE CHARACTER OPERATOR is entered in LINE MODE, the current
          character  will  be  deleted by moving the remainder of the line to the
          left one position. A space will be inserted at the right margin.

          When entered in TEXT MODE, the current character will  be  deleted  and
          the  paragraph  melded.  This  may result in the position of the cursor
          changing relative to the word in which the character was deleted.  When
          in  TEXT MODE, look at the screen to make sure the next character to be
          deleted is still where you thought it would be!

          This OPERATOR will not execute if INSERT CHARACTER MODE was active when
          entered,  but the mode will be reset, and if TEXT MODE was also active,
          a paragraph meld will also occur.

 ERRORS:  There are no errors associated with this OPERATOR.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 DELETE LINE (^DL)

 GENERAL: When this OPERATOR is executed in SINGLE-COLUMN MODE, the entire  line,
          including those parts outside the current margins, will be deleted. The
          total line count in the current buffer will decrement to indicate  that
          the line no longer exists.

          In  MULTI-COLUMN MODE, the part of the line between the current margins
          will be deleted. This may take several seconds if a fairly large buffer
          is  being edited. No actual line deletion is performed, as indicated by
          the total line count in the banner remaining unchanged.

          This OPERATOR will not execute if INSERT CHARACTER MODE was active when
          entered,  but the mode will be reset, and if TEXT MODE was also active,
          a paragraph meld will also be performed.

 ERRORS:  In MULTI-COLUMN MODE, an extreme case of text-tear may result in a line
          being  undeletable.  In this case, the message NOT ENOUGH SPACE will be
          displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 DELETE TO MARGIN (^DM)

 GENERAL: When this OPERATOR is executed, the remainder of the current  line  out
          to  the  right  margin  will  be  deleted.  If TEXT MODE is active, the
          remainder of the paragraph will be melded.

          This OPERATOR will not execute if INSERT CHARACTER MODE was active when
          entered, but the mode will be reset, and if TEXT MODE was also  active,
          a paragraph meld will also be performed.

 ERRORS:  There are no errors associated with this OPERATOR.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 DELETE WORD (^DW)

 GENERAL: In LINE MODE, the current word is replaced by spaces (blanks). No other
          change to the line is made.

          In TEXT MODE, the current  word  is  deleted,  then  the  paragraph  is
          melded.

          This OPERATOR will not execute if INSERT CHARACTER MODE was active when
          entered, but the mode will be reset, and if TEXT MODE was also  active,
          a paragraph meld will also be performed.

 ERRORS:  If  the cursor is sitting on a space (blank), no action takes place and
          the bell is rung to indicate an unperformable operation.

          If the word extends across either margin, the  message  MARGIN  OVERRUN
          will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 ESCAPE (ENTER COMMAND MODE) (^ES)

 GENERAL: When this OPERATOR is executed, the TAB/MARGIN LINE will be cleared and
          the cursor placed in the first column of the display page. COMMANDS may
          then be entered. See COMMAND MODE, elsewhere for specific information.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  There are no errors associated with this OPERATOR.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 INSERT CHARACTER MODE (^IC)

 GENERAL: When this OPERATOR is entered SCREDITOR  III  enters  INSERT  CHARACTER
          MODE.  The  change  in  mode will be reflected by the setting of the IC
          flag in the status section of the banner.

          If LINE MODE is active, the only indication will be the IC flag in  the
          banner. When a displayable key is struck, however, the remainder of the
          line from the cursor to the right margin will move one position to  the
          right,  the character entered will be placed at the cursor position and
          the cursor will move one place to the right. Characters  on  the  right
          margin  will  be  lost.  When  the  cursor  reaches  the  right margin,
          characters will over-strike. If the right margin is off the  screen  to
          the right, an automatic right scroll will take place.

          If  TEXT MODE is active, the action of the INSERT CHARACTER OPERATOR is
          quite different  than  in  LINE  MODE.  First,  when  the  OPERATOR  is
          executed,  the  paragraph  will  split  at  the  current character. The
          remainder of the line will be moved down into a new  line  and  the  IC
          flag  in  the  banner  will  be  displayed. At this point, operation is
          similar  to  normal  TEXT  MODE  in  that   automatic   word-wrap   and
          justification will occur.

          The only OPERATOR available in INSERT CHARACTER MODE is the DESTRUCTIVE
          BACKSPACE. When entered in LINE MODE, the entire line from  the  cursor
          to  the  right  margin will be moved to the left to cover the character
          under the cursor and the cursor will move to the  left  one  column.  A
          space  will  be  generated  on  the  right  margin.  In  TEXT MODE, the
          BACKSPACE OPERATOR operates normally. In either mode, if the left  side
          of  the  display  is reached before the left margin, a scroll left will
          occur. BACKSPACE operation will stop at the left margin.

          Any other OPERATOR will cause INSERT CHARACTER MODE to  be  reset,  and
          the OPERATOR which caused the cessation will be processed in the normal
          way, except for the four  deletes...  DELETE  CHARACTER,  DELETE  WORD,
          DELETE TO END OF LINE and DELETE LINE which will not be performed. When
          any  other  OPERATOR  is  entered  in  TEXT  MODE,  the  paragraph   is
          automatically melded before the mode is reset.

          When  the  auto-meld  is  executed,  special  attention  is paid to the
          character which was under the cursor when INSERT LINE was  entered.  If
          it  was  a space, a space will be left at the cursor position after the
          meld. If it was a character, the part-line will  be  re-joined  to  the
          last  inserted  character. This allows characters to be inserted in the
          middle of words without having to delete spaces afterward,  and  allows
          the insertion of words in lines without having to be concerned with the
          final result.

 ERRORS:  If this operation is attempted in TEXT MODE and the buffer is  full,  a
          BUFFER FULL message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 INSERT LINE MODE (^IL)

 GENERAL: When this OPERATOR is executed, a blank line will  be  inserted  before
          the  current line, and the blank line will become the current line. The
          cursor will be  positioned  at  the  left  margin.  The  mode  will  be
          indicated  by  the  setting of the IL flag in the status section of the
          banner.

          After this, editing  proceeds  as  usual,  except  that  as  you  enter
          characters  and  NEW  LINE  OPERATORS, the text will scroll up from the
          current line leaving the remainder of the screen and buffer intact.

          If you are in MULTI-COLUMN MODE, the  insertion  of  a  line  may  take
          several  seconds  due  to  the amount of text manipulation which has to
          take place to move only part of every line up.

          Any OPERATOR or COMMAND which could change the current  line  (such  as
          CURSOR UP, DOWN, TOP OF BUFFER, etc...) will reset INSERT LINE MODE.

 ERRORS:  If  this  operation  is  attempted  with  a  full buffer, a BUFFER FULL
          message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 INSERT SPACE (^IS)

 GENERAL: The INSERT SPACE OPERATOR is only active in LINE MODE.  When  executed,
          the  line  will  move  to  the right as in INSERT CHARACTER MODE, and a
          single space will be inserted at the cursor position. The  cursor  will
          not move. Any character on the right margin will be lost.

          If  entered  while  in  INSERT  CHARACTER  MODE, the mode will be reset
          before the space is entered.

 ERRORS:  If executed in TEXT MODE, the bell will ring.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 GOTO MARK (^GM)

 GENERAL: When this OPERATOR is executed, the display area will be positioned  to
          the next marked line in the buffer. If no additional marked lines exist
          between the current line and the end of the buffer,  the  first  marked
          line  from  the  start  of  the  buffer will be located. In text INSERT
          CHARACTER MODE, the paragraph will be melded before the GOTO occurs.

          If INSERT LINE MODE or INSERT  CHARACTER  MODE  was  active  when  this
          OPERATOR  is  entered, the mode will be reset. In addition, in the case
          of INSERT CHARACTER MODE in TEXT MODE, the  paragraph  will  be  melded
          before the cursor moves.

 ERRORS:  If no marks exist in the current buffer, the bell will ring to indicate
          an incomplete operation.

          If this operation is attempted when the buffer is full, a  BUFFER  FULL
          message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 LOWER CASE (^LC)

 GENERAL: The character under the cursor will be examined each time this OPERATOR
          is  executed.  If  it  is  a  valid  upper  case  character, it will be
          converted to lower case. If not, no change will take place.

          After the examination and possible change, the cursor will be moved one
          column  to  the  right.  Movement will stop at the right margin. If the
          right side of the  display  area  is  reached  before  the  margin,  an
          automatic scroll right will be done.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  If  the  OPERATOR  is  entered with the cursor on the right margin, the
          character under the cursor will be changed, but no cursor movement will
          take place, and the bell will ring to indicate this condition.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 MELD PARAGRAPH (^MP)

 GENERAL: This  OPERATOR  is  used  to  meld  a  paragraph,  as  described in the
          definition section of this manual, and is only active in TEXT MODE  (TE
          indicator on).

          When this OPERATOR executes, a number  of  things  happen.  First,  all
          extra  spaces  in  the  current line are removed. Then the next line is
          examined, and if the first word on  the  next  line  will  fit  on  the
          current  line,  it  is  moved.  This examination and movement continues
          until the next line is blank or the current line is full. If  the  next
          line  becomes  blank, it will be deleted and the following line will be
          used to continue the testing.

          After  the current line becomes full, the justification mode is checked
          and any necessary justification is performed. After this,  the  current
          line is moved out and the next line is moved in and the examination and
          movement continues. This action continues until the next line is  blank
          between  the  margins  before  any  words  are removed. When the entire
          paragraph has been done, the screen  is  re-displayed  and  the  banner
          updated.

 ERRORS:  If this OPERATOR is executed in LINE MODE, an ILLEGAL MODE message will
          be displayed.

          If the current line is empty when execution occurs, the bell will ring.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 NEW LINE (^NL)

 GENERAL: When INSERT LINE MODE is active, this OPERATOR will cause the cursor to
          move to the left margin and a new blank line will  be  generated,  with
          the previous lines moving up one position.

          If not in INSERT LINE MODE, this OPERATOR will cause the cursor to move
          to the left margin and down one line each time it is entered, until the
          bottom  line  of  the  display  area is reached. When the bottom of the
          display is reached, continued entry will cause the screen to scroll up.

          If the movement of the cursor to the left margin crosses the left  side
          of  the  display  area  before  the  margin  is  reached,  an automatic
          horizontal scroll will take place.

          If the cursor was on the last line in  the  buffer  when  this  key  is
          struck,  a  new  blank  line  will  be  generated,  as reflected by the
          increment of the total lines display in the banner line.

          If INSERT LINE MODE or INSERT  CHARACTER  MODE  was  active  when  this
          OPERATOR  is  entered, the mode will be reset. In addition, in the case
          of INSERT CHARACTER MODE in TEXT MODE, the  paragraph  will  be  melded
          before the cursor moves.

 ERRORS:  If the buffer is full when this key is struck, a BUFFER FULL error will
          be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PAGE DOWN (^PD)

 GENERAL: Each  time  this OPERATOR is executed the display area moves one screen
          of lines closer to the top of the buffer (the text 'MOVES DOWN'  behind
          the window into the file formed by the screen).

          If  INSERT  LINE  MODE  or  INSERT  CHARACTER MODE was active when this
          OPERATOR is entered, the mode will be reset. In addition, in  the  case
          of  INSERT  CHARACTER  MODE  in TEXT MODE, the paragraph will be melded
          before the cursor moves.

 ERRORS:  If the operation is attempted when the top line in the buffer is in the
          display area, the bell will ring.

          If the buffer is full, a BUFFER FULL message will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PAGE UP (^PU)

 GENERAL: Each time this OPERATOR is entered the display area moves one screen of
          lines closer to the bottom of the buffer (text 'MOVES  UP'  behind  the
          window  into  the  file  formed  by  the  screen).  If the operation is
          attempted with the cursor on the last line in the buffer, the bell will
          ring.

 ERRORS:  If the buffer is full, a BUFFER FULL message will be posted.

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 SCROLL DOWN (^SD)

 GENERAL: Each  time  this  OPERATOR is entered the display area scrolls down one
          line. The effect is to move the display area closer to the top  of  the
          buffer.

          If  INSERT  LINE  MODE  or  INSERT  CHARACTER MODE was active when this
          OPERATOR is entered, the mode will be reset. In addition, in  the  case
          of  INSERT  CHARACTER  MODE  in TEXT MODE, the paragraph will be melded
          before the cursor moves.

 ERRORS:  If the first line in the buffer is in the screen display area, the bell
          will ring when this OPERATOR is entered.

          If the buffer is full, a BUFFER FULL message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 SPLIT PARAGRAPH (^SP)

 GENERAL: When  the SPLIT PARAGRAPH OPERATOR executes the operation is similar to
          the INSERT CHARACTER OPERATOR  previously  described  except  that  the
          INSERT CHARACTER MODE does not become active.

          If  MULTI-COLUMN  MODE  is  active, SPLIT LINE may take several seconds
          while the entire buffer is being re-arranged.

          If INSERT LINE MODE or INSERT  CHARACTER  MODE  was  active  when  this
          OPERATOR  is  entered, the mode will be reset. In addition, in the case
          of INSERT CHARACTER MODE in TEXT MODE, the  paragraph  will  be  melded
          before the cursor moves.

 ERRORS:  SPLIT PARAGRAPH is only active in TEXT MODE, and if  entered  while  in
          LINE MODE, an ILLEGAL MODE message will be displayed.

          If  attempted  with  the  buffer  full,  a  BUFFER  FULL  error will be
          displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 SCROLL UP (^SU)

 GENERAL: Each time this OPERATOR is entered, the display  area  scrolls  up  one
          line.  The  effect  is to move the display area closer to the bottom of
          the buffer.

          If INSERT LINE MODE or INSERT  CHARACTER  MODE  was  active  when  this
          OPERATOR  is  entered, the mode will be reset. In addition, in the case
          of INSERT CHARACTER MODE in TEXT MODE, the  paragraph  will  be  melded
          before the cursor moves.

 ERRORS:  If  the last line in the buffer is within the current display area, the
          bell will be rung.

          If the buffer is full, a BUFFER FULL message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 TAB TO END OF LINE (^TE)

 GENERAL: This OPERATOR will cause the cursor will move to the first  space  past
          the  last  word  in  the current line. If the resultant position of the
          cursor is outside of the current display area an  automatic  horizontal
          scroll will occur to reset the cursor for display.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  If  no further spaces or words exist between the current cursor and the
          right margin the bell will sound.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 TAB CURSOR LEFT (^TL)

 GENERAL: Each time this OPERATOR is entered the cursor will move to the next tab
          setting to the left of the current cursor position as displayed in  the
          TAB/MARGIN  display line. If the next tab to the left is not within the
          current display area, an automatic scroll left will occur  to  set  the
          cursor for display.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  If no further tab settings exist before the left margin is reached, the
          cursor will be positioned at the left margin.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 TAB CURSOR TO MARGIN (^TM)

 GENERAL: This OPERATOR, when entered, will move the cursor to the  left  margin.
          If the cursor is on the left margin, it will move to the right margin.

          If  the  destination  margin of the operation is not within the current
          display area, an automatic left or right  scroll  will  take  place  to
          reset the margin for display.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  There are no errors associated with this OPERATOR.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 TAB TO NEXT WORD (^TN)

 GENERAL: Each time this OPERATOR is entered the cursor will move to the start of
          the next word within the current margins. If the start of the next word
          is  outside  the display area an automatic right scroll will execute to
          re-position the cursor.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  If the cursor is currently on or past the last word  in  the  line,  no
          movement will take place, and the bell will be sounded.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 TAB TO PREVIOUS WORD (^TP)

 GENERAL: Each time this OPERATOR is entered the cursor will move to the start of
          the  previous  word  within  the  current  margins. If the start of the
          previous word is outside the display area an automatic left scroll will
          execute to re-position the cursor.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  If  the  cursor  is currently on or past the first word in the line, no
          movement will take place, and the bell will be sounded.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 TAB CURSOR RIGHT (^TR)

 GENERAL: Each time this operator is entered the cursor will move to the next tab
          setting as displayed on the TAB/MARGIN display line. If the next tab is
          not within the current display area, an  automatic  scroll  right  will
          occur to set the cursor for display.

          If no further tab settings are encountered before the right margin, the
          cursor will move to the right margin.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  If the cursor is on the right margin when entered, the bell will  sound
          to indicate an incomplete command.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 TAB SET/CLEAR (^TS)

 GENERAL: When  this  OPERATOR  is  executed,  the  current cursor column will be
          examined. If a tab is currently set in that column, it will be cleared.
          If no tab currently exists, it will be set. The result of the operation
          will immediately be reflected in the TAB/MARGIN LINE, unless the cursor
          is  at either margin. In this case, the tab will be set or cleared, but
          will not be active until the margin is shifted.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  There are no errors associated with this OPERATOR.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 UPPER CASE (^UC)

 GENERAL: The character under the cursor will be examined each time this OPERATOR
          is executed. If it  is  a  valid  lower  case  character,  it  will  be
          converted to upper case. If not, no change will take place.

          After the examination and possible change, the cursor will be moved one
          column to the right. If the right side of the display area  is  reached
          before the margin, an automatic scroll right will be done.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  If  the  OPERATOR  is  entered with the cursor on the right margin, the
          character under the cursor will be changed, but no cursor movement will
          take place, and the bell will ring to indicate an incomplete operation.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
