# SINST1

> Source: `manuals/misc/MANUAL - FLEX Software Archive - Manual and Documentation Archive - Includes SINST0, SINST1, SINST2.zip!MANUAL.DSK!SINST1.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                          SYSTEM INSTALLATION MANUAL

                  CONGEN - SYSTEM AND TERMINAL DATA GENERATOR


.DHE
%SYSTEM INSTALLATION MANUAL                          SCREDITOR III WORD PROCESSOR

                  CONGEN - SYSTEM AND TERMINAL DATA GENERATOR


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                        PAGE 1-%%%%
.DFE
"
 PAGE 1-%%%%                                        (C) 1982, ALFORD & ASSOCIATES
GENERAL

 As was mentioned previously, SCREDITOR III  is  completely  ROM-able.  To  allow
 this, the program must be given enough information about your system to allow it
 to configure itself. This information is provided in three special  data  files.
 The first data file loaded is created by the CONGEN program.


CONGEN OPERATION

 When  CONGEN is run, a series of questions about your system will be asked. When
 all of the questions have been answered, the program will search the system disk
 for  a file named CONGEN.DAT (FLEX and SSB), or CONGEN plus your five-digit user
 I.D. (i.e., CONGEN00001) in the EDIT_DATA directory on drive D0 (OS-9  version).
 If  found,  it  will  be deleted. If not found, or once deleted, a new data file
 with the same name will be created, and the new data will be placed in it.


CONGEN DESCRIPTION

 In the descriptions which will follow of the questions which CONGEN  asks,  each
 question is shown exactly as it will be presented by CONGEN. The questions shown
 with (FLEX and SSB) typed at the right  margin  are  asked  only  by  those  two
 versions  of  the  program.  The  questions shown with (OS-9) typed at the right
 margin are asked  only  by  that  version  of  the  program.  Any  question  not
 specifically marked will be asked by all versions of the program.


CONGEN ENTRY METHOD

 The line input routine in your DOS is used by CONGEN for the actual entry of the
 data, allowing you to edit the information before  giving  it  to  CONGEN.  Each
 question  must  be exactly answered. When you have entered the information for a
 given question, the RETURN key should be struck to pass the data to  CONGEN.  If
 you  decide to abort the CONGEN operation before completion, you should type the
 letter Q followed by a carriage return in answer to any question.  Control  will
 immediately return to DOS.

 The  characters in parentheses in each question indicate the type of information
 you should type in response to the  question,  as  described  in  the  following
 paragraphs:

 (HHHH)       indicates  that  four  hexidecimal  digits (0-9, A-F) are needed to
              answer the question. If fewer or more than four digits  are  typed,
              or a non-hex digit is entered, the question will be repeated.

 (HH)         indicates  that  two  hexidecimal  digits  are needed to answer the
              question. If fewer or more are typed, or  if  a  non-hex  digit  is
              entered, the question will be repeated.

 (DD)         indicates  that  one OR two decimal digits are needed to answer the
              question. If more than two digits are typed, or a non-decimal digit
              is  entered,  the question will be repeated. One digit may be typed
              where appropriate or convenient.

 (DDD)        indicates that from one to  three  decimal  digits  are  needed  to
              answer  the  question.  If fewer than one or more than three digits
              are typed, or a non-decimal digit is entered, the question will  be
              repeated.

 (1-x)        indicates  that  a  number  from  1  to whatever is displayed for x
              should be entered. If zero, or a number higher than x  is  entered,
              or any non-decimal value, the question will repeat.

 (1-x BYTES)  indicates  that  from  one  to the number of bytes displayed in the
              question, consisting of two hexidecimal digits each, and  separated
              by  commas  (no  other delimiter is acceptable) must be entered. If
              fewer than one or more than  the  number  of  bytes  requested  are
              entered,  or  if  a  non-hex digit is entered, the question will be
              repeated. A typical five-byte entry might look like:

              1B,54,46,59,4A

 (C)          indicates that a  single  displayable  ASCII  character  should  be
              entered. If more than one character is entered the question will be
              repeated.

 (Y or N)     indicates that you should type Y if the answer to the  question  is
              affirmative,  N if not. Any other character will cause the question
              to repeat (lower case Y or N is acceptable).

 (LINE)       indicates that you will be entering an entire  command  line.  This
              response  is  used  by the START-UP COMMAND LINE and RETURN COMMAND
              LINE questions. The length of your entry will be limited by the DOS
              under  which SCREDITOR III is running; e.g., SSB DOS will limit you
              to about 127 characters.

CONGEN QUESTION DESCRIPTIONS

 The following paragraphs describe each question in detail.


 START OF BUFFER MEMORY       (HHHH) -      (SSB and FLEX)

 This  hexidecimal  number  is  the  first  address used by SCREDITOR III for its
 buffers. If you need space to make custom modifications to SCREDITOR  III  (such
 as might be required by special printer drivers), this number may be adjusted to
 leave the required amount of room on top of  SCREDITOR  III.  To  determine  the
 value to enter, use your MAP or FIND utility, add the space you need to the last
 load address of SCREDITOR III, and use the resulting value  in  answer  to  this
 question.

 DO  NOT ADD MODIFICATIONS TO SCREDITOR III IN THE TRANSIENT COMMAND AREA, AS THE
 PROGRAM USES THAT SPACE DURING START-UP.

 If you will not be modifying this value and wish to use the address  immediately
 after  SCREDITOR  III (the normal situation), enter 0000, and SCREDITOR III will
 use its own start of buffer value automatically (0000 is NOT the same as  memory
 address $0000!).


 END OF BUFFER MEMORY         (HHHH) -      (SSB and FLEX)

 This hexidecimal number is the last  address  used  by  SCREDITOR  III  for  its
 buffers.  If  you  wish  SCREDITOR  III to use the default MEMAX (SSB) or MEMEND
 (FLEX) values, enter 0000 in response to this question. If you enter any  number
 other  than 0000, your answer will be interpreted as the ABSOLUTE address of the
 last byte of memory which SCREDITOR III can use during operation. Be  sure  that
 you  do  not  specify a value which would overlap some other program that should
 not be destroyed, or overlap I/O space. Also, if you are not entering 0000,  the
 value  you  must  enter must be at least 6k higher than the last load address of
 SCREDITOR III, as determined by using FIND or MAP, or the ABSOLUTE  address  you
 entered  in  response  to the last question (if you entered something other than
 0000).

 If you have specified the default value by entering 0000 and MEMEND or MEMAX  is
 not defined (contains 0000), SCREDITOR III will not be operational, will post an
 error message and will abort back to DOS.


 SYSTEM EXIT VECTOR           (HHHH) -      (SSB and FLEX)

 As a programming aid, SCREDITOR III supports an EX command which allows  you  to
 exit to the system monitor when desired. If a non-zero value is entered for this
 question, the EX command will be active. If 0000 is entered, the EX command will
 not operate.


                                     - NOTE -

 For  6809  systems,  the  address  given  in answer to this question must be the
 actual entry to the system monitor, not the indirect jump which is referenced in
 most  system  monitor  documentation. For instance, in SSB Chieftan systems with
 MON69D, the monitor entry point listed is F814, but the actual  entry  point  is
 FB42.  To find the actual entry point into a monitor which uses an indirect jump
 table (such as MON69, S-BUG), examine the address given in your monitor's manual
 and  use  the  contents of the address rather than the address itself. REMEMBER,
 THIS ONLY APPLIES TO MONITORS WHICH USE  AN  INDIRECT  JUMP  TABLE  ENTRY  POINT
 SYSTEM. If you aren't sure, enter 0000 and ignore the command in SCREDITOR III.


 SCREEN TYPE                   (1-2) -      (SSB and FLEX)

 This number designates the type of display you are using, as follows:

 1 - GENERAL SERIAL TERMINAL
 2 - EXTERNAL CHARACTER DISPLAY ROUTINE

 One should be entered for all terminals operating through a serial port.

 Two should be entered if you are using an external routine to pass characters to
 your display device (as would be the case with a memory-mapped display).


 ADDRESS OF SCREEN PORT       (HHHH) -      (SSB and FLEX)

 If you answer one to the SCREEN TYPE question, this question will be asked. Your
 answer should be the address of  the  serial  port  to  which  your  display  is
 attached. Typical answers are given in the addendum at the end of this manual.


 SCREEN DRIVERS COMPATIBLE  (Y OR N) -      (SSB and FLEX)

 If you answer two to the SCREEN TYPE question, this question will be asked. This
 question is asked simply for completeness since SCREDITOR III will not  work  if
 the drivers do not support cursor postioning, etc... If you cannot answer yes to
 this question, you will have to do some work to your system before SCREDITOR III
 can be used.

 If you answer N to this question, CONGEN will immediately abort.

 A  number  of  driver  source  files  for some of the more popular memory-mapped
 display boards are supplied with the SSB and FLEX versions of SCREDITOR III. You
 can  select  one  of these, change the origin to an address which will be out of
 the way in your system, make any changes necessary to exactly match your  board,
 assemble the file, append it to SCREDITOR III, and use its address as the answer
 to the next question.

 Although we supply these source files as  a  customer  convenience,  we  do  not
 provide   support   for  the  installation,  debugging  and  operation  of  this
 configuration. We assume that if you have something like a memory-mapped display
 you   have  had  to  teach  yourself  enough  assembly-language  programming  in
 installing the board to be able to use these files.

 We do not supply these source files for the OS-9 version of SCREDITOR III  since
 most  users  do  not  have  the necessary facilities to modify and assemble such
 files.


 ADDRESS OF SCREEN OUTPUT     (HHHH) -      (SSB and FLEX)

 If the answer to the SCREEN TYPE question was two, and you  answered  Y  to  the
 preceding  question,  this  question  will be asked. You should supply the entry
 address of the routine to which a character is sent for display  or  to  control
 your display device.

 The character being sent to the routines will be contained in the A-register. No
 registers need to be preserved other than the return stack.  The  screen  output
 routine must end in an RTS, or everything will blow up.


 ADDRESS OF SCREEN INIT       (HHHH) -      (SSB and FLEX)

 If  the  answer  to  the SCREEN TYPE question was two, and you answered Y to the
 compatibility question, this question will be asked. You should supply the entry
 address of the routine which initializes your display board.

 No registers need to be preserved by this routine.


 TERMINAL SELECTION GUIDE - THE FOLLOWING  TERMINALS  HAVE  BEEN
 INCORPORATED  DIRECTLY  INTO  CONGEN  AT  THIS  TIME.  IF  YOUR
 TERMINAL IS ONE OF THESE, TYPE THE NUMBER BESIDE THE  NAME.  IF
 NOT, ENTER 0.

     (LIST OF TERMINALS)


 TERMINAL IDENTIFICATION NUMBER (DD) -      *

 This rather lengthy question has been added to CONGEN to allow you the luxury of
 skipping a number of the questions which follow. If your terminal is included in
 the  list,  type  the  number  by it and hit RETURN. If not, type 0. The list is
 being changed on a regular  basis,  and  so  is  not  reproduced  here.  In  the
 questions  which  follow,  if the question is answered by the TERMINAL SELECTION
 GUIDE QUESTION, an asterisk will appear  in  the  right-most  column  after  the
 question.  If  you  have  selected one of the listed terminals, the questions so
 marked will not be asked.


 TERMINAL USE X-ON/X-OFF?   (Y OR N) -      *

 Some terminals (notably the DEC VT-100) require that handshaking be  done  on  a
 continuous   basis   as   characters   are   sent   to   the  screen.  The  most
 often-encountered handshaking method is called X-ON/X-OFF. With this method,  as
 characters  are sent to the screen, the keyboard input port is monitored for the
 receipt of a particular control code (the X-OFF character). When  received,  the
 transmission  of  characters  must  immediately  stop until another character is
 received from the terminal (the X-ON character). When this second  character  is
 received, transmission may resume.

 If your terminal requires this type of handshaking, answer Y to the question.


 TERMINAL X-OFF CHARACTER       (HH) -      *

 This question is only asked if you answered Y to the  previous  question.  Enter
 the  hexidecimal  value of the character the terminal sends to stop transmission
 (13 for the DEC VT-100).


 TERMINAL X-ON CHARACTER        (HH) -      *

 This question is only asked if you answered Y to the X-ON/X-OFF question.  Enter
 the   hexidecimal  value  of  the  character  the  terminal  sends  to  re-start
 transmission (11 for the DEC VT-100).


 NUMBER OF ROWS PER SCREEN     (DDD) -      *

 This question requests the number of rows (lines) which are  displayed  on  your
 screen.  This  number  should  be the actual number of lines of text information
 your screen can display  (excluding  such  things  as  a  status  line  on  some
 terminals).  SCREDITOR  III  will  support virtually any screen length from four
 lines to 255 lines. You may enter either two or three digits in answer  to  this
 question.  For  most  popular  terminals, the answer would be 24 (24 or 25 by 80
 displays).


 NUMBER OF COLUMNS PER SCREEN   (DD) -      *

 This question requests the number of columns (characters  per  line)  which  are
 displayed  on  your  screen.  SCREDITOR  III  can  support  any  screen  from 64
 characters to 255 characters wide. You may enter either two or three  digits  in
 answer to this question. For most popular terminals, the answer to this question
 will be 80 (24 or 25 by 80 displays).


 CURSOR POSITION TYPE          (1-4) -      *

 There are five cursor positioning types supported by SCREDITOR III.


 TYPE 1 -   The type one cursor is for those terminals and driver programs  which
            require  that  a character sequence be sent for the cursor row, and a
            separate sequence for the column, in that order (Y,X).


 TYPE 2 -   The  type two cursor is for those terminals and driver programs which
            require that a character sequence be sent for the cursor column,  and
            a separate sequence for the row, in that order (X,Y).

 TYPE 3 -   The  type  three  cursor  is  for those terminals and driver programs
            which require that a single sequence  be  sent  for  cursor  row  and
            column,  in  that order (Y-X). This is the type which is supported by
            most serial terminals.

 TYPE 4 -   The type four cursor is for those terminals and driver programs which
            require  that a single sequence be sent for cursor column and row, in
            that order (X-Y).

 TYPE 5 -   The type five cursor is designated for ANSI-STANDARD terminals.


 ROW POSITION STRING     (1-7 BYTES) -      *

 If you specified a type one or type two cursor, this question will be asked. The
 string of bytes which you supply will consist of those characters which must  be
 sent  before the cursor row address itself. For instance, if an ESCAPE character
 followed by the letter R and then  followed  by  the  number  must  be  sent  to
 position  the  cursor  to a particular row, you would type 1B,52 followed by the
 RETURN key.


 COLUMN POSITION STRING  (1-7 BYTES) -      *

 If you specified a type one or type two cursor, this question will be asked. The
 string  of bytes which you supply will consist of those characters which must be
 sent before the cursor column address itself, as in the ROW POSITION question.


 CURSOR POSITION STRING  (1-7 BYTES) -      *

 If  you specified a type three or type four cursor, this question will be asked.
 The string of bytes which you supply will consist of those characters which must
 be sent before the cursor row and column (or column and row) address itself.

 For instance, many terminals (such as the  TELEVIDEO's  and  the  SOROC  IQ-120)
 require  that an escape code followed by an equals sign be sent to indicate that
 the cursor position will be sent. For these terminals,  you  would  enter  1B,3D
 followed by the RETURN key.


 CONTROL SEQUENCE INTRO. (1-7 BYTES) -      *

 If  you  specified  a  type  five  cursor,  this  question is asked. The CONTROL
 SEQUENCE INTRODUCER is a  character  or  characters  which  tells  ANSI-STANDARD
 terminals  that  a control sequence is being sent. For instance, to position the
 cursor on the DEC VT-100 in ANSI mode, the sequence introducer is $1B,$5B.


 CONTROL SEQUENCE SEPARATOR     (HH) -      *

 If you specified a type  five  cursor,  this  question  is  asked.  The  CONTROL
 SEQUENCE SEPARATOR is a single character which separates parameters in a control
 sequence. For instance, for the DEC VT-100 in ANSI mode, the sequence  separator
 is a semi-colon ($3B).


 CONTROL SEQUENCE TERMINATOR    (HH) -      *

 If  you  specified  a  type  five  cursor,  this  question is asked. The CONTROL
 SEQUENCE TERMINATOR tells ANSI-STANDARD terminals that the control  sequence  is
 complete,   and   also  generally  describes  what  the  control  sequence  will
 accomplish. For instance, for the DEC VT-100 in ANSI mode,  the  terminator  for
 cursor positioning is an upper case H ($48).


 NUMBER OF NULLS NEEDED        (DDD) -      *

 If  your  terminal requires nulls after positioning the cursor, enter the number
 in answer to this question. If none are needed enter 0. The  maximum  number  is
 255.


 CURSOR COLUMN BIAS             (HH) -      *

 Many  non-ANSI  terminals  will  not  accept an absolute value for cursor column
 position, but rather use the ASCII character set in a unique way. For  instance,
 columns  zero  through  4F  might be represented by characters from a space code
 ($20) through lower case O ($6F). In other words, a space code ($20) stands  for
 a  zero. This is the bias value that you would enter in answer to this question.
 This question is not asked for type five cursoring.


CURSOR ROW BIAS               (HH) -        *

 The row bias is entered and determined in the same manner as  the  COLUMN  BIAS,
 and is not asked for type five cursoring.


 INSERT LINE OK?            (Y OR N) -      *

 Many  newer  terminals allow an escape-type sequence to be sent which will cause
 the screen to scroll down from the current line (current line moves  down),  and
 line  on  which  the  cursor  resides  (the current line) to be blanked. If your
 terminal supports this function, enter Y in answer to this question.
 INSERT LINE STRING      (1-7 BYTES) -      *

 If  you  answered  Y to the preceding question, this question will be asked. The
 string you enter should be the actual sequence of hexidecimal bytes  which  must
 be sent to the screen to cause the insert line. For instance, in the case of the
 TELEVIDEO 912, an escape character followed by the letter E must be sent. If you
 were running this terminal, you would enter 1B,45 followed by the RETURN key.


 NUMBER OF NULLS NEEDED        (DDD) -      *

 If your terminal requires that nulls be sent after the preceding sequence, enter
 the number of nulls. If none are needed, enter 0. The maximum number is 255.


 DELETE LINE SUPPORTED?     (Y OR N) -      *

 Many newer terminals allow an escape-type sequence to be sent which  will  cause
 the  line  on which the cursor resides to be deleted, and the rest of the screen
 to be moved up, generating a blank line on the bottom of  the  screen.  If  your
 terminal supports this function, enter Y to this question.


 DELETE LINE STRING      (1-7 BYTES) -      *

 If  you  answered  Y to the preceding question, this question will be asked. The
 string you enter should be the actual sequence of hexidecimal bytes  which  must
 be sent to the screen to cause the delete line, as in the INSERT LINE STRING.


 NUMBER OF NULLS NEEDED        (DDD) -      *

 If your terminal requires that nulls be sent after the preceding sequence, enter
 the number of nulls. If none are needed, enter 0. The maximum number is 255.


 CLEAR TO END OF LINE OK?   (Y OR N) -      *

 If  your  terminal  will  allow  you  to clear from the cursor to the end of the
 current line (as opposed to clearing the entire line), you  would  answer  Y  to
 this question.


 CLEAR TO EOL STRING     (1-7 BYTES) -      *

 If you entered Y to the preceding question, you must answer this one. The answer
 to this question will be the string of bytes which will do the  clear.  For  the
 TELEVIDEO 912, for instance, an escape code followed by an upper case T is used,
 and the string would be entered as 1B,54 followed by the RETURN key.


 NUMBER OF NULLS NEEDED        (DDD) -      *

 If your terminal requires that nulls be sent after the preceding sequence, enter
 the number of nulls. If none are needed, enter 0. The maximum number is 255.


 CLEAR TO END OF SCREEN OK? (Y OR N) -      *

 If  your  terminal  will  allow  you  to clear from the cursor to the end of the
 screen (as opposed to clearing the entire screen), answer Y to this question.


 CLEAR TO EOS STRING     (1-7 BYTES) -      *

 If you answered Y to the preceding question,  you  will  answer  this  one.  The
 answer to this question will be the string of bytes which cause this action. For
 the TELEVIDEO 912, an escape code followed by an upper case Y is used,  and  the
 string would be entered as 1B,59 followed by the RETURN key.


 NUMBER OF NULLS NEEDED        (DDD) -      *

 If your terminal requires that nulls be sent after the preceding sequence, enter
 the number of nulls. If none are needed, enter 0. The maximum number is 255.


 TERMINAL NEW LINE       (1-7 BYTES) -      *

 This is the string of characters which must be sent to the screen to  cause  the
 cursor  to  move to the left side of the screen and down one line. If the cursor
 is on the bottom line of the screen when this sequence  is  received,  a  scroll
 must  occur.  For  most  terminals,  a  carriage  return followed by a line feed
 satisfy this question, and would be entered as 0D,0A followed by the RETURN key.


 NUMBER OF NULLS NEEDED        (DDD) -      *

 If your terminal requires that nulls be sent after the preceding sequence, enter
 the number of nulls. If none are needed, enter 0. The maximum number is 255.


 RING TERMINAL BELL      (1-7 BYTES) -      *

 Most terminals are equipped with an audible alerting device, generally called  a
 bell.  SCREDITOR  III  makes  considerable  use  of the bell in announcing error
 conditions. If your terminal or screen drivers  support  a  bell  function,  you
 would  enter  the  string  of bytes which would cause the bell to ring. For most
 terminals, the ASCII bell code is used, and would be entered as 07  followed  by
 the  RETURN  key.  If  your  terminal  or screen drivers do not support the bell
 function, you would enter 00 followed by the RETURN key.


 NUMBER OF NULLS NEEDED        (DDD) -      *

 If your terminal requires that nulls be sent after the preceding sequence, enter
 the number of nulls. If none are needed, enter 0. The maximum number is 255.


 COMMAND SEPARATOR (EOL)         (C) -      *

 This  single  ASCII character is the character used to separate multiple command
 entries in ESCAPE (COMMAND) MODE. It has been found that  a  semi-colon  (;)  is
 generally  the  most  convenient  character  to  use for this purpose. Enter the
 character followed by the RETURN key.


 START-UP COMMAND LINE        (LINE) -      *

 When SCREDITOR III starts up,  a  number  of  default  settings  and  MODES  are
 defined.  This  line  will  be  used as the initial command line to modify these
 settings, saving you the trouble of typing your first command  line  every  time
 you  call SCREDITOR III. The addendum at the end of this manual contains details
 on the information you will type for this entry.

 If you are not going to define a start-up command line,  hit  return  when  this
 question is asked.


 RETURN COMMAND LINE          (LINE) -      *

 When  you  LOG  or  ABORT  at  the end of an edit session, SCREDITOR III has the
 capability of passing a command line back to DOS  for  subsequent  execution  by
 DOS.  This  allows  you  to  use  SCREDITOR  III  as part of a larger package of
 programs. Details on this capability is contained in the addendum at the end  of
 this manual.

 If  you  are  not  going  to  return a command line to DOS, hit return when this
 question is asked.


 This  completes  the  question  descriptions. As indicated previously, after the
 last question is asked, the information you entered will be saved to the  CONGEN
 data file and control will return to DOS.


                         (THIS PAGE INTENTIONALLY BLANK)
