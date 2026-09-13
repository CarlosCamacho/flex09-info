# STRM04

> Source: `manuals/misc/REFERENC - Manual and Documentation Archive.zip!REFERENC.DSK!STRM04.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                          TECHNICAL REFERENCE MANUAL

                              SCREDITOR III MODES


.DHE
%TECHNICAL REFERENCE MANUAL                          SCREDITOR III WORD PROCESSOR

                              SCREDITOR III MODES


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                        PAGE 4-%%%%
.DFE
"
 PAGE 4-%%%%                                        (C) 1982, ALFORD & ASSOCIATES
 SCREDITOR III is a complex program in that the way it operates can  be  made  to
 vary,  depending  upon  the  state  of  a  number  of things, including previous
 COMMANDS, what is currently being done, etc... These states, or modes,  must  be
 fully  understood  to  make  full  use  of the program. The following paragraphs
 describe each of the defined  MODES  of  SCREDITOR  III,  and  how  the  program
 operation changes when each is active.


ACTIVE SYMBOL MODE

 When the ACTIVE SYMBOL MODE is entered, the next entry from the keyboard will be
 treated as the name of a SYMBOL. When the key is typed, SCREDITOR III will  look
 up  that symbol, and, if it is defined, will replace the keyboard input with the
 string of characters, OPERATORS, and/or COMMANDS which comprise the symbol. Only
 when  the  last character of the symbol has been handled or an error occurs will
 the keyboard again become active.

 Symbols will commonly define strings of characters which would otherwise have to
 be  typed  over and over from the keyboard, such as SCREDITOR III, which appears
 constantly throughout this manual. Read the sections of this  manual  about  the
 DEFINE SYMBOL COMMAND and the ACTIVATE SYMBOL OPERATOR for more information.


COMMAND MODE

 During  COMMAND  MODE,  the  TAB/MARGIN  line is cleared and becomes the command
 line. On this line various COMMANDS are entered, and are  executed  when  a  NEW
 LINE  OPERATOR  is typed. These COMMANDS are entered in this way due to the fact
 that they are either seldom used, or require  some  additional  information  for
 their execution.


INSERT CHARACTER MODE

 Insert character is defined as a distinct mode in SCREDITOR III. This is because
 several automatic operations occur at the start of, during, and at  the  end  of
 this operation, as described in the following paragraphs:


INSERT CHARACTER MODE OPERATION DURING TEXT MODE

 When INSERT CHARACTER MODE is activated and SCREDITOR III is in TEXT MODE, a new
 line  is generated after the current line by scrolling down the remainder of the
 current paragraph. Then the part of the line from the cursor to the right margin
 is moved down onto this new line.

 Once INSERT CHARACTER MODE is active, operation is similar to INSERT LINE  MODE,
 except  that  only  the  DESTRUCTIVE  BACKSPACE  OPERATOR may be entered without
 automatically leaving the mode.


 When  INSERT  CHARACTER  MODE  is  terminated  by the entry of another OPERATOR,
 several things happen. First, the character which was under the cursor when  the
 mode  was entered is examined. If it was not a space, SCREDITOR III assumes that
 an insert was made to the middle of a word, and the part-word is rejoined to the
 last  non-space  character  typed.  If  it  was a space, this rejoining will not
 occur. Next, the remainder  of  the  line  or  paragraph  will  be  MELDED  (see
 DEFINITIONS). Finally, if the keystroke was any OPERATOR other than DELETE LINE,
 DELETE CHARACTER or DELETE WORD, it will be executed. These three OPERATORS  are
 ignored  due  to  the fact that you will generally not know what will be deleted
 due to the automatic paragraph re-forming which just took place.


DURING LINE MODE

 When INSERT CHARACTER MODE is activated and SCREDITOR III is in LINE MODE, no
 immediate action occurs except for the change in the status section of the
 banner line.

 Each time a character is entered after this, however, the part of the line
 from the cursor rightward is moved one column to the right, the character is
 entered at the cursor, and the cursor moves one column to the right. As the
 part-line is moved, any character which was on the right margin will be lost.

 DESTRUCTIVE BACKSPACE will move the right side of the line to the left,
 eliminating characters to the left of the cursor. Spaces will be generated at
 the right side of the line.

 When another OPERATOR is entered, the only indication before the new OPERATOR
 is executed that INSERT CHARACTER MODE has ended will be the update of the
 status section of the command line. Again, DELETE CHARACTER, DELETE WORD and
 DELETE LINE will not be executed.


INSERT LINE MODE

 When  SCREDITOR  III  enters  INSERT  LINE MODE, the part of the screen from the
 current line to the bottom  of  the  display  area  will  move  down  one  line,
 generating a blank line before the current line. This blank line will become the
 new current line. The cursor will move to the  left  margin,  and  a  horizontal
 scroll will occur if necessary to keep the cursor on the screen.

 While  in  INSERT  LINE  MODE,  the NEW LINE OPERATOR will generate new lines by
 means of scrolling the top part of the screen display area up one line from  the
 current line up to the top of the display area. The cursor itself will remain on
 the same display line. Any COMMAND or OPERATOR which would cause the  cursor  to
 move from the current line, such as the CURSOR UP OPERATOR, or the TOP OF BUFFER
 COMMAND, will terminate INSERT LINE MODE.


LINE MODE

 When SCREDITOR III is in LINE MODE, several of the text formatting COMMANDS  are
 turned off, and the action of several others are modified.

 As  has  been  previously  noted, INSERT CHARACTER MODE acts differently in LINE
 MODE. Word-wrap is turned off. The SPLIT LINE and MELD PARAGRAPH  OPERATORS  are
 inactive and no paragraph MELD'ing will ever take place.

 This  mode is used to insure that changes to the text are limited to the current
 line only, and is the mode which would be  used  to  enter  tables  and  program
 source  code,  where  text  must  stay  where it was typed under all conditions.
 Individual  COMMAND  and  OPERATOR  descriptions  will  tell  when  there  is  a
 difference in operation between LINE and TEXT MODES.


MULTI-COLUMN MODE

 MULTI-COLUMN  MODE  is  a  special  capability  of  SCREDITOR  III,  and  allows
 insertions within the current margins without affecting  the  text  outside  the
 margins.

 When  an  insertion in MULTI-COLUMN MODE is made, a new line is always generated
 at the end of the current buffer to  receive  the  last  part-line  between  the
 margins which is being moved down.

 When  a deletion is made in MULTI-COLUMN MODE, text between the margins is moved
 up into the current line, and throughout the current buffer down to its end.  No
 line  is  ever  deleted  from  the  current buffer when this action takes place,
 however, even though after the deletion the bottom  line  in  the  buffer  might
 become  blank.  This is because SCREDITOR III makes no assumptions as to why the
 line at the bottom of the buffer is blank, and an error on the side  of  caution
 is preferred.

 If  you are doing a number of insertions and deletions in MULTI-COLUMN MODE, the
 buffer will gradually grow with blank lines at the end of the text. It is up  to
 you  to  manually  delete these lines periodically by exiting MULTI-COLUMN MODE,
 moving to the bottom of the buffer, deleting the lines, then returning  to  your
 work point and re-entering MULTI-COLUMN MODE.

 A  special  condition  can  occur  during  the insertion or deletion of lines in
 MULTI-COLUMN MODE which should be noted. We call this text tearing. Since  lines
 are truncated to the last displayable character as they are stored in the buffer
 in SCREDITOR III, the length of a blank line is only five characters  long  (due
 to internal bookkeeping characters). If a line is inserted in MULTI-COLUMN MODE,
 however, parts of lines are moved down in the buffer. Blank lines may no  longer
 be blank lines.

 St  is  possible, under some conditions, to double the space used by text in the
 buffer after inserting only one line. Under these  conditions,  the  buffer  can
 fill  extremely  fast.  When an insert line condition would result in the buffer
 overflowing, a NOT ENOUGH ROOM TO INSERT message will be posted, and the  insert
 will not occur. The only way to get around this is to extract part of the buffer
 out to a work file, do the insert, and then read the extracted  text  back  into
 the buffer using the OPEN WRITE-OUT, WRITE-EXTRACT, CLOSE FILE, OPEN READ-IN and
 READ-IN COMMANDS.


 When MULTI-COLUMN MODE is active, insertions and  deletions  of  lines  will  be
 quite  slow due to the fact that SCREDITOR III has to take material from between
 the current margins and move it up or down a line from the current line  to  the
 bottom of the current buffer.


NUMBERS DISPLAY MODE

 When this mode is active, line numbers will be displayed at  the  left  side  of
 each  line.  The  numbers  are  referenced  to the start of the file and will be
 continuously adjusted as insertions and deletions are made.


PAGE FLAG DISPLAY MODE

 When this mode is active, the first line of each new page will  be  marked  with
 the letter P beside it in the left-most column of the display area. In addition,
 if NUMBERS DISPLAY MODE is also active, each line which is the start of  a  page
 will  have  the number of the page which it starts displayed instead of the line
 number.

 The length of a page, which determines where the page start flag  is  displayed,
 is  calculated from the first page in the file, which is page one (unless it has
 been changed by the DEFINE PAGE COMMAND). The actual calculation uses the length
 of odd header and footer definitions on odd pages (or the default top and bottom
 margins if the definitions have not been made, and uses the even definitions  or
 defaults  on  even  pages.  In this way, the page flag always reflects the exact
 position in which a new page will start printing.


SCREEN EDIT MODE

 SCREEN EDIT MODE is the mode used for all  keyboard  text  entry  and  for  most
 manipulation  and  modification  of  the text. In this mode, the cursor is moved
 around on the screen display area as if you were pointing to specific places  on
 a  printed  page.  When  you  reach a place where you want to enter text or make
 changes, the action is similar to working at a typewriter, in that what you  see
 on  the  screen  is a nearly exact image of what the printed document would look
 like.


SINGLE-COLUMN MODE

 When MULTI-COLUMN MODE is not active, SCREDITOR III is in SINGLE COLUMN MODE.

 In this mode, each line in the current buffer is treated as a separate entity by
 such  OPERATORS  as  INSERT  LINE and DELETE LINE, without regard to the current
 margins. In other words, regardless of whether or not text  exists  outside  the
 current  margins,  an  INSERT  LINE  MODE OPERATOR will cause a blank line to be
 generated outside as well as within the margins.

 Although  this is no problem when straight text like this page is being entered,
 it would ruin the entry of a table of information to have extra  lines  inserted
 outside  the  column  of  data being changed. When columnar information is being
 edited, MULTI-COLUMN MODE should be used.
TEXT MODE

 TEXT  MODE  is  the  complementary  function of LINE MODE. When LINE MODE is not
 active, TEXT MODE is.

 In  TEXT  MODE, the text you are entering is dealt with as paragraphs instead of
 lines. Word wrap is active. The SPLIT LINE  and  MELD  PARAGRAPH  OPERATORS  are
 active, and automatic justification will take place.

 Although  TEXT  MODE  will  be used for most text entry, it should NEVER be used
 when tables or other columnar data are being entered, nor should it ever  be  on
 when  information  must stay on the line in which it is entered. If TEXT MODE is
 active, and an INSERT CHARACTER OPERATOR is entered during the typing of a table
 of  information,  the  first  OPERATOR other than BACKSPACE entered after INSERT
 CHARACTER MODE becomes active will cause the table to be nicely  melded  into  a
 well  justified  paragraph.  This can ruin hours of work in a few moments, so be
 careful!


WORD-WRAP

 Although word-wrap is not a mode, a few words are in order as  to  just  how  it
 works. When the end of a line is reached during TEXT MODE text entry, the cursor
 does not move after the character on the margin is typed. Instead, SCREDITOR III
 waits  until one more character is typed. This extra character is then examined.
 If the character is a space or an OPERATOR, the line will be left intact.

 If, the character is not a space or an OPERATOR, SCREDITOR III  assumes  that  a
 part-word has been entered, and the part word along with the extra character are
 removed from the line, and the line is justified as necessary.

 Under the condition of a space or displayable character being  entered  and  the
 current  line  is not the last line in the buffer, a blank line will be inserted
 in the text after the old current line as  if  INSERT  LINE  MODE  were  active.
 Otherwise, a new line will be created at the end of the buffer.

 If a word was removed from the previous line, it will be placed on this new line
 along with the extra character and the cursor will be placed in the column after
 the word.

 If  a space were the extra character, it will be ignored, and the cursor will be
 placed at the left margin in the new line.


                        THIS PAGE IS INTENTIONALLY BLANK
