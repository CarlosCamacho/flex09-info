# SINST5

> Source: `manuals/misc/MANUAL - FLEX Software Archive - Manual and Documentation Archive - Includes SINST0, SINST1, SINST2.zip!MANUAL.DSK!SINST5.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                          SYSTEM INSTALLATION MANUAL

                   WINDRUSH 'PHOENIX' CONFIGURATION ADDENDUM


.DHE
%SYSTEM INSTALLATION MANUAL                          SCREDITOR III WORD PROCESSOR

                   WINDRUSH 'PHOENIX' CONFIGURATION ADDENDUM


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                        PAGE B-%%%%
.DFE
"
 PAGE B-%%%%                                        (C) 1982, ALFORD & ASSOCIATES
1.0 INTRODUCTION

This  addendum to the ALFORDS AND ASSOCIATES SCREDITOR III manual is to serve as
documentation when using SCREDITOR III in conjunction with  the  WINDRUSH  video
configuration using 'GT-BUG9' and/or the multi-function keyboard (M/F-K/B)


2.0 CONGEN

 When running CONGEN the following responses should be given to the questions:


 START OF BUFFER MEMORY         (HHHH) - 0000<CR>
 END OF BUFFER MEMORY           (HHHH) - 0000<CR>
 SYSTEM EXIT VECTOR             (HHHH) - F814<CR>
 SCREEN TYPE                     (1-2) - 2<CR>
 SCREEN DRIVERS COMPATIBLE    (Y OR N) - Y<CR>
 ADDRESS OF SCREEN OUTPUT       (HHHH) - E409<CR>  F206 if M/F-K/B is not in use
 ADDRESS OF SCREEN INIT         (HHHH) - E400<CR>  FFEF if M/F-K/B is not in use
 TERMINAL USE X-0N/X-OFF      (Y OR N) - N<CR>
 NUMBER OF ROWS PER SCREEN       (DDD) - 24<CR>
 NUMBER OF COLUMNS PER SCREEN     (DD) - 80<CR>
 CURSOR POSITION TYPE            (1-4) - 3<CR>
 CURSOR POSITION STRING    (1-7 BYTES) - 1B,3D
 NUMBER OF NULLS NEEDED          (DDD) - 0<CR>
 CURSOR COLUMN BIAS               (HH) - 20<CR>
 CURSOR ROW BIAS                  (HH) - 20<CR>
 INSERT LINE OK?              (Y OR N) - N<CR>
 DELETE LINE SUPPORTED?       (Y OR N) - N<CR>
 CLEAR TO END OF LINE OK?     (Y OR N) - Y<CR>
 CLEAR TO EOL STRING       (1-7 BYTES) - 1B,54<CR>
 NUMBER OF NULLS NEEDED          (DDD) - 0<CR>
 CLEAR TO END OF SCREEN OK?   (Y OR N) - Y<CR>
 CLEAR TO EOS STRING       (1-7 BYTES) - 1B,59<CR>
 NUMBER OF NULLS NEEDED          (DDD) - 0<CR>
 TERMINAL NEW LINE         (1-7 BYTES) - 0D,0A<CR>
 NUMBER OF NULLS NEEDED          (DDD) - 0<CR>
 RING TERMINAL BELL        (1-7 BYTES) - 07<CR>
 NUMBER OF NULLS NEEDED          (DDD) - 0<CR>
 COMMAND SEPARATOR (EOL)           (C) - ;<CR>
 START-UP COMMAND LINE          (LINE) - RM#80;TE;JMA;PA;PS;CT#1*<CR>
 RETURN COMMAND LINE            (LINE) - <CR>


 NOTE: The startup command line is largely determined by your day to day  use  of
       SCREDITOR III and may be set to anything you wish.

       The  command  line shown sets the right margin at column 80 (RM#80), turns
       on the TEXT mode (TE), turns on the justify all mode (JMA), turns  on  the
       page boundary markers (PA), turns on the printer post page pause (PS), and
       clears all tabs.


3.0 KEYGEN

 When running KEYGEN the following responses should be given to the questions:

 NOTE: If  the  M/F-K/B is in use you must load 'KEYSEQ3X' before running KEYGEN,
       i.e. 'GET,KEYSEQ3X.BIN'.


 KEYBOARD TYPE                   (1-6) - 5<CR>
 KEYBOARD USE META KEYS       (Y OR N) - Y<CR>     N If M/F-K/B is not in use
 ADDRESS OF KEYBOARD CHECK      (HHHH) - E403<CR>  F200 if M/F-K/B is not in use
 ADDRESS OF GET CHARACTER       (HHHH) - E406<CR>  F203 if M/F-K/B is not in use
 MUST ECHO BE CONTROLLED      (Y OR N) - N<CR>
 KEYBOARD DELAY CONSTANT          (HH) - 02<CR>


 The appropriate key for each  function  indicated  should  be  pressed  for  the
 following  questions.  The  Windrush  M/F-K/B  has  a special key for all of the
 requested keys except for 'GO TO MARKED LINE' which is seldom used. We  normally
 assign  'CONTROL  G'  for this function. The codes indicated below are the codes
 that the Windrush M/F-K/B will provide if you have hit the correct key.  If  you
 make a mistake, simply type 'Q' and run KEYGEN over again.


 CURSOR LEFT                           - A8 (<--)
 MELD PARAGRAPH                        - BC (MELD)
 SCROLL SCREEN UPWARD                  - 90 (LINE  | )
 DELETE TO END OF LINE                 - BA (DEL EOL)
 INSERT CHARACTER MODE                 - 8E (INS CHAR)
 INSERT SPACE                          - 8F (INS SPACE)
 GO TO MARKED LINE                     - 07 (CONTROL G)
 DESTRUCTIVE BACKSPACE                 - 08 (BACK SPACE)
 TAB CURSOR RIGHT                      - 93 (TAB -->)
 ACTIVATE SYMBOL                       - C3 (CALL SYM)
 SPLIT PARAGRAPH                       - A6 (SPLIT)
 PAGE SCREEN DOWNWARD                  - C1 (PAGE  | )
 NEW LINE                              - 0D (RETURN)
 PAGE SCREEN UPWARD                    - 94 (PAGE  | )
 SET/CLEAR TAB                         - 96 (SET TAB CLR)
 DELETE LINE                           - A4 (DEL LINE)
 TAB TO MARGIN                         - A9 (HOME)
 SCROLL SCREEN DOWNWARD                - BD (LINE  | )
 CURSOR RIGHT                          - AA (-->)
 CONVERT TO UPPER CASE                 - 88 (LC --> UC)
 INSERT LINE MODE                      - 8D (INS LINE)
 CONVERT TO LOWER CASE                 - 89 (LC <-- UC)
 CURSOR UP                             - 92 ( | )
 DELETE CHARACTER                      - A5 (DEL CHAR)
 DELETE WORD                           - BB (DEL WORD)
 CURSOR DOWN                           - BF ( | )
 ESCAPE (ENTER COMMAND MODE)           - 1B (ESC)
 TAB TO NEXT WORD                      - C0 (WORD -->)
 TAB TO END OF LINE                    - AC (--> -->)
 TAB LEFT                              - 91 (<-- TAB)
 TAB TO PREVIOUS WORD                  - BE (<-- WORD)


3.0 KEYGEN  (continued)

 The  following  are  suggested  as  initial assignments if you are not using the
 Windrush M/F-K/B.  These  assignments  may  be  changed  at  will  to  suit  the
 ergonomics of your particular keyboard or your own personal preferences.


 CURSOR LEFT                           - 01 (CONTROL A) *
 MELD PARAGRAPH                        - 0F (CONTROL O)
 SCROLL SCREEN UPWARD                  - 15 (CONTROL U) (UP)
 DELETE TO END OF LINE                 - 0A (CONTROL J)
 INSERT CHARACTER MODE                 - 03 (CONTROL C) (CHAR)
 INSERT SPACE                          - 09 (CONTROL I) (INSERT)
 GO TO MARKED LINE                     - 07 (CONTROL G) (GO)
 DESTRUCTIVE BACKSPACE                 - 08 (CONTROL H) (BACK SPACE)
 TAB CURSOR RIGHT                      - 12 (CONTROL R) (RIGHT)
 ACTIVATE SYMBOL                       - 1F (CONTROL _)
 SPLIT PARAGRAPH                       - 16 (CONTROL V)
 PAGE SCREEN DOWNWARD                  - 02 (CONTROL B) (BACKWARD)
 NEW LINE                              - 0D (CONTROL M) (RETURN)
 PAGE SCREEN UPWARD                    - 06 (CONTROL F) (FORWARD)
 SET/CLEAR TAB                         - 1D (CONTROL ])
 DELETE LINE                           - 0B (CONTROL K) (KILL)
 TAB TO MARGIN                         - 14 (CONTROL T) (TAB BETWEEN MARGINS)
 SCROLL SCREEN DOWNWARD                - 04 (CONTROL D) (DOWN)
 CURSOR RIGHT                          - 13 (CONTROL S) *
 CONVERT TO UPPER CASE                 - 19 (CONTROL Y)
 INSERT LINE MODE                      - 1E (CONTROL ^)
 CONVERT TO LOWER CASE                 - 05 (CONTROL E)
 CURSOR UP                             - 17 (CONTROL W) *
 DELETE CHARACTER                      - 18 (CONTROL X) (TRADITIONALLY 'CANCEL')
 DELETE WORD                           - 11 (CONTROL Q)
 CURSOR DOWN                           - 1A (CONTROL Z) *
 ESCAPE (ENTER COMMAND MODE)           - 1B (CONTROL [) (ESCAPE)
 TAB TO NEXT WORD                      - 0E (CONTROL N) (NEXT)
 TAB TO END OF LINE                    - 1C (CONTROL \)
 TAB LEFT                              - 0C (CONTROL L) (LEFT)
 TAB TO PREVIOUS WORD                  - 10 (CONTROL P) (PREVIOUS)


 * THESE KEYS ARE ARRANGED IN AN ERGONOMIC CLUSTER.


4.0 PRTGEN

 The following responses should be given to form a 'RAW' printer driver that will
 be compatible with most printers. It should be noted  that  this  file  must  be
 present  and configured as indicated below before you may direct SCREDITOR III's
 output to a disk file. This is because even when directing output to a disk file
 the output is processed by the resident printer driver!

 The  responses  below  assume that one of the standard 'FLEX' printer drivers we
 supply will be loaded (using 'GET') before SCREDITOR III is called.


 PRINTER OUTPUT ADDRESS         (HHHH) - CCE4
 PRINTER INIT ADDRESS           (HHHH) - CCC0
 PRINTER TOP MARGIN              (DDD) - 0<CR>
 PRINTER LEFT MARGIN             (DDD) - 0<CR>
 PRINTER BOTTOM MARGIN           (DDD) - 0<CR>
 PRINTER PAGE LENGTH             (DDD) - 66<CR>
 PRINTER SUPPORT LOWER CASE?  (Y OR N) - Y<CR>
 NULLS AFTER CR-LF (NEW LINE)    (DDD) - 0<CR>
                                       -
 (******) PRINTER START-UP             - <CR>
 (CODE 1) START FULL UNDERLINE         - <CR>
 (CODE 2) END FULL UNDERLINE           - <CR>
 (CODE 3) START BOLDFACE               - <CR>
 (CODE 4) END BOLDFACE                 - <CR>
 (CODE 5) START DOUBLE WIDTH           - <CR>
 (CODE 6) END DOUBLE WIDTH             - <CR>
 (CODE 7) OPERATOR STOP                - <CR>
 (******) PRINTER BACKSPACE             - 08<CR>
 (******) UNDEFINED - HIT RETURN       - <CR>
 (CODE 10) START BROKEN UNDERLINE      - <CR>
 (CODE 11) END BROKEN UNDERLINE        - <CR>
 (*******) UNDEFINED - HIT RETURN      - <CR>
 (*******) PRINTER NEW LINE            - 0D,0A<CR>
 (CODE 14) START GRAPHICS              - <CR>
 (CODE 15) END GRAPHICS                - <CR>
 (CODE 16) USER FUNCTION               - <CR>
 (CODE 17) USER FUNCTION               - <CR>
 (CODE 18) USER FUNCTION               - <CR>
 (CODE 19) USER FUNCTION               - <CR>
 (CODE 20) USER FUNCTION               - <CR>
 (CODE 21) USER FUNCTION               - <CR>
 (CODE 22) USER FUNCTION               - <CR>
 (CODE 23) USER FUNCTION               - <CR>
 (CODE 24) USER FUNCTION               - <CR>
 (CODE 25) USER FUNCTION               - <CR>
 (CODE 26) UNDEFINED - HIT RETURN      - <CR>
 (CODE 27) USER FUNCTION               - <CR>
 (CODE 28) USER FUNCTION               - <CR>
 (CODE 29) USER FUNCTION               - <CR>
 (CODE 30) USER FUNCTION               - <CR>
 (CODE 31) USER FUNCTION               - <CR>


5.0 LOTSAKEYS II ... THE MULTI-FUNCTION KEYBOARD

 One  of  the  main  features  of  the  WINDRUSH 'PHOENIX' 6809 desk top software
 development and word processing system is the provision of 62 function  keys  to
 handle  the  most  commonly  used  SCREDITOR  III  editing commands and a 25 key
 HEXADECIMAL/SYMBOL keypad to ease entry of  numerical,  particularly  HEX,  data
 when writing programs.

 In certain versions of the keyboard the MC6809 'RESET', 'NMI', 'FIRQ' and  'IRQ'
 interrupt  lines  are  brought  out  to debounced pushbuttons on the keyboard to
 assist in the development of interrupt driven software.

 The  main  keyboard  is  modeled  on  the  standard IBM golfball layout with the
 addition of 'CONTROL' and 'ESCAPE' keys. Three additional keys provide LINE-FEED
 ($0A), DELETE ($7F), and TAB $09) functions. ALPHA-LOCK and SHIFT-LOCK keys with
 LED status indicators are also provided for operator convenience.

 The  codes  generated by the main keyboard and the 25 key numeric keypad are all
 standard ASCII codes within the range of $00 through $7F. The codes generated by
 the  62  special  function  keys  start  at  $80 and end at $C2. They are easily
 segregated from the main keys as they all have bit 'b7' set to '1', and are thus
 classified as 'META' keys by SCREDITOR III.

 A  special  software routine (KEYSEQ3X), which is appended to SCREDITOR III when
 we configure the package, is used by SCREDITOR as its  keyboard  input  routine.
 Any  key  which  does  not  have  bit 'b7' set to '1' is passed to SCREDITOR III
 unaltered. Any key that has bit 'b7' set is processed against a table to see  if
 a  code sequence needs to be generated. All of the keys that are used during the
 running of 'KEYGEN' are in this table and  are  also  passed  to  SCREDITOR  III
 unaltered.  The  remaining keys generate a sequence of keystrokes just as if you
 had hit several keys in succession. We have taken great pains in the development
 of  this  software  to ensure that it is completely to transparent SCREDITOR III
 i.e. we do  not  make  any  patches  to  SCREDITOR  III  itself.  Therefore  the
 key-sequence  generating  program 'KEYSEQ3X' should not require any modification
 as SCREDITOR III evolves over the next few years.


5.1 CONFIGURATION INFORMATION

 If  you  receive  an update of SCREDITOR III you must configure it as follows in
 order to use it with the multi-function keyboard:

 +++APPEND 1.ED3.CMD,1.KEYSEQ3X.BIN,1.SCR3X.CMD


 In  some cases you may also have to run CONGEN, KEYGEN, and PRTGEN over again as
 well.


5.2 KEYSEQUENCES GENERATED BY 'KEYSEQ3X'

 The current version of KEYSEQ3X produces the sequence of keystrokes indicated on
 the following pages for each of the function keys indicated. The  'KEYGEN'  keys
 are  also listed for the sake of completeness, but as you will note the incoming
 and outgoing codes are identical and only one outgoing  code  is  generated  for
 each incoming keystroke.

 The   key-sequence   generating   program   in  conjunction  with  the  Windrush
 multi-function keyboard 'LOTSAKEYS II' has been designed over a  period  of  two
 years.  These products in conjunction with SCREDITOR III provide one of the most
 ergonomic and powerful word processing packages available on any micro.

 The multi-function keyboard ONLY provides the keys we  and  our  customers  have
 found  to  be  required  for most editing tasks. Editing functions which require
 additional information from the operator such as  'FI'  (FIND),  'CH'  (CHANGE),
 'CO'  (COPY),  'MO' (MOVE), etc. have been omitted as their inclusion would have
 only served to clutter up the keyboard and would not have improved  the  editing
 speed  by any significant degree. The one exceptions we made in this area is the
 'IMBED PRINTER COMMAND' key which puts the 'CC#' on the command  line  and  then
 waits  for  you  to 'fill in' the command number and hit RETURN (EOC). All other
 keys are self-executing.

 It should be noted that when a function key that  generates  an  ESCAPE  command
 sequence  is used the information remains on the command line after execution is
 completed just as it would if you had entered the command manually.

 The function key layout  is  completely  (100%)  configured  by  software,  i.e.
 'KEYGEN'  and  'KEYSEQ3X'.  The user should feel free to re-arrange the function
 keys if he finds the keys in positions that are alien to him. The only keys that
 cannot  be  moved  easily  are  the  ABORT and CLOSE (LOG) EDIT keys as they are
 linked to the ENABLE key directly below them.

 If you decide to do this you MUST  re-configure  'KEYSEQ3X'  and  load  it  into
 memory BEFORE you run KEYGEN and APPEND it to 'ED3.CMD' before running SCREDITOR
 III.

 'KEYSEQ3X' is well documented in its assembly language source  file  and  should
 not  present  any  problems  to  an experienced assembly language programmer. We
 regret that we are not able to offer detailed assistance in this area  (i.e.  we
 will  NOT  write  custom  packages).  We are, however, prepared to offer general
 assistance should it become necessary.

 We can also provide custom engraved key-caps at a nominal cost should you decide
 you  would  rather  have  some  of  the other SCREDITOR III functions defined by
 special keys and omit some of the ones we have provided. Contact the factory for
 details.

 As  a point of interest the ENTIRE keyboard (every single key on it!) is encoded
 by a 2716 EPROM on the keyboard. If you wish to re-arrange the keys on the  main
 (QWERTY)  section  or  the  NUMERIC/HEX  pad  section this EPROM will have to be
 re-programmed.  A  complete  table  of  the  codes  generated  by  each  key  in
 conjunction with all the permutations of 'SHIFT', 'ALPHA-LOCK', and 'CONTROL' is
 provided it the 'LOTSAKEYS II'  documentation  which  should  be  consulted  for
 further information.


6.3 FUNCTION KEYS, ROW ONE

 +-------------------+------+---------------------------------------------------+
 | FUNCTION KEY NAME | CODE |              OUTGOING CODE SEQUENCE               |
 +-------------------+------+---------------------------------------------------+
 | ABORT EDIT        | $80  | $1B,$BA,A,B,$0D                                   |
 +-------------------+------+---------------------------------------------------+
 | SAVE LINES        | $81  | $1B,$BA,S,A,*,$0D                                 |
 +-------------------+------+---------------------------------------------------+
 | MULTI COLUMN      | $82  | $1B,$BA,M,C,$0D  (CYCLE MULTI-COL ON/OFF)         |
 +-------------------+------+---------------------------------------------------+
 | LINE NUMBERS      | $83  | $1B,$BA,N,U,$0D  (CYCLE LINE NUMBERS ON/OFF)      |
 +-------------------+------+---------------------------------------------------+
 | PRINT             | $84  | $1B,$BA,P,R,B,$0D (PRINT THE CURRENT PAGE)        |
 +-------------------+------+---------------------------------------------------+
 | SPARE             | $85  | $FF                                               |
 +-------------------+------+---------------------------------------------------+
 | TEXT              | $86  | $1B,$BA,T,E,$0D (TURN ON TEXT MODE)               |
 +-------------------+------+---------------------------------------------------+
 | <-- JP -->        | $87  | $1B,$BA,J,P,A,$0D (ALL JUSTIFY PARAGRAPH)         |
 +-------------------+------+---------------------------------------------------+
 | UC <-- LC         | $88  | $88 (CONVERT lower case to UPPER CASE)            |
 +-------------------+---- -+---------------------------------------------------+
 | UC --> LC         | $89  | $89 (CONVERT UPPER CASE TO lower case)            |
 +-------------------+------+---------------------------------------------------+
 | <-- JL -->        | $8A  | $1B,$BA,J,L,A,^,S,U,$0D (ALL JSTFY LINE/SCRL UP)  |
 +-------------------+------+---------------------------------------------------+
 | LINE              | $8B  | $1B,$BA,L,E,$0D (TURN ON LINE MODE)               |
 +-------------------+------+---------------------------------------------------+
 | SPARE             | $8C  | $FF                                               |
 +-------------------+------+---------------------------------------------------+
 | INSERT LINE       | $8D  | $8D                                               |
 +-------------------+------+---------------------------------------------------+
 | INSERT CHARACTER  | $8E  | $8E                                               |
 +-------------------+------+---------------------------------------------------+
 | INSERT SPACE      | $8F  | $8F                                               |
 +-------------------+------+---------------------------------------------------+
 | LINE | (UP)       | $90  | $90                                               |
 +-------------------+------+---------------------------------------------------+
 | <-- TAB           | $91  | $91                                               |
 +-------------------+------+---------------------------------------------------+
 | CURSOR | (UP)     | $92  | $92                                               |
 +-------------------+------+---------------------------------------------------+
 | TAB -->           | $93  | $93                                               |
 +-------------------+------+---------------------------------------------------+
 | PAGE | (UP)       | $94  | $94                                               |
 +-------------------+------+---------------------------------------------------+
 | FILE | (UP)       | $95  | $1B,$BA,B,O,$0D (GO TO BOTTOM OF BUFFER)          |
 +-------------------+------+---------------------------------------------------+
 | TAB SET/CLEAR     | $96  | $96                                               |
 +-------------------+------+---------------------------------------------------+


 NOTE 1:  $1B  is  ESCAPE,  $BA  is  DELETE  TO  END  OF  LINE  (clears  previous
          information from the command line), $0D is RETURN (EOC).

 NOTE 2:  The ',' (commas) are not transmitted but the ';'  (semicolon)  and  '^'
          (up arrow) are.

6.4 FUNCTION KEYS, ROW TWO

 +-------------------+------+---------------------------------------------------+
 | FUNCTION KEY NAME | CODE |              OUTGOING CODE SEQUENCE               |
 +-------------------+------+---------------------------------------------------+
 | CLOSE EDIT        | $97  | $1B,$BA,L,O,$0D (CLOSE 'LOG' EDIT SESSION)        |
 +-------------------+------+---------------------------------------------------+
 | NEW LINES         | $98  | $1B,$BA,N,E,*,$0D (WATCH THE CURSOR POSITION!!!)  |
 +-------------------+------+---------------------------------------------------+
 | --> JM <--        | $99  | $1B,$BA,J,M,C,$0D (CENTRE JUSTIFY MODE)           |
 +-------------------+------+---------------------------------------------------+
 | <-- JM -->        | $9A  | $1B,$BA,T,E,;,J,M,A,$0D (ALL JUSTIFY MODE)        |
 +-------------------+------+---------------------------------------------------+
 | PRINTER CMD DISP  | $9B  | $1B,$BA,C,D,$0D (DISPLAY IMBEDDED PRINTER CMDS)   |
 +-------------------+------+---------------------------------------------------+
 | SPARE             | $9C  | $FF                                               |
 +-------------------+------+---------------------------------------------------+
 | <-- JP            | $9D  | $1B,$BA,J,P,L,$0D (LEFT JUSTIFY PARAGRAPH)        |
 +-------------------+------+---------------------------------------------------+
 | --> JP <--        | $9E  | $1B,$BA,J,P,C,$0D (CENTRE JUSTIFY PARAGRAPH)      |
 +-------------------+------+---------------------------------------------------+
 | JP -->            | $9F  | $1B,$BA,J,P,R,$0D (RIGHT JUSTIFY PARAGRAPH)       |
 +-------------------+------+---------------------------------------------------+
 | <-- JL            | $A0  | $1B,$BA,J,L,L,^,S,U,$0D (LEFT JSTFY LINE/SCRL UP) |
 +-------------------+------+---------------------------------------------------+
 | --> JL <--        | $A1  | $1B,$BA,J,L,C,^,S,U,$0D (CENT JSTFY LINE/SCRL UP) |
 +-------------------+------+---------------------------------------------------+
 | JL -->            | $A2  | $1B,$BA,J,L,R,^,S,U,$0D (RIGHT JSTFY LINE/SCRL UP)|
 +-------------------+------+---------------------------------------------------+
 | SPARE             | $A3  | $FF                                               |
 +-------------------+------+---------------------------------------------------+
 | DELETE LINE       | $A4  | $A4                                               |
 +-------------------+------+---------------------------------------------------+
 | DELETE CHARACTER  | $A5  | $A5                                               |
 +-------------------+------+---------------------------------------------------+
 | SPLIT PARAGRAPH   | $A6  | $A6                                               |
 +-------------------+------+---------------------------------------------------+
 | SET LEFT MARGIN   | $A7  | $1B,$BA,L,M,$0D (SET TO CURSOR POS OR COL #1)     |
 +-------------------+------+---------------------------------------------------+
 | <-- CURSOR (LEFT) | $A8  | $A8                                               |
 +-------------------+------+---------------------------------------------------+
 | HOME CURSR TO MARG| $A9  | $A9 (CYCLE CURSOR BETWEEN CURRENT MARGINS)        |
 +-------------------+------+---------------------------------------------------+
 | CURSOR --> (RIGHT)| $AA  | $AA                                               |
 +-------------------+------+---------------------------------------------------+
 | SET RIGHT MARGIN  | $AB  | $1B,$BA,R,M,$0D (SET TO CURSOR POS OR COL #249!!) |
 +-------------------+------+---------------------------------------------------+
 | TAB TO END OF LINE| $AC  | $AC                                               |
 +-------------------+------+---------------------------------------------------+
 | IMBED PRINTER CMD | $AD  | $1B,$BA,C,C,#      (NOTE: NO RETURN!)             |
 +-------------------+------+---------------------------------------------------+

 NOTE 3:  Use  'RIGHT  MARG'  with  caution as it sets the right margin to column
          #249 OR the current cursor position. When resetting  the  right  margin
          you should manually type in 'ESC,DEOL,RM#80<CR> (or whatever column you
          desire) rather than let it default to column #249.


6.5 FUNCTION KEYS, ROW THREE

 +-------------------+------+---------------------------------------------------+
 | FUNCTION KEY NAME | CODE |              OUTGOING CODE SEQUENCE               |
 +-------------------+------+---------------------------------------------------+
 | ENABLE CLOSE/ABORT| N/A  | PRESS TO ENABLE 'CLOSE EDIT' OR 'ABORT EDIT' KEYS |
 +-------------------+------+---------------------------------------------------+
 | HELP              | $AE  | $1B,$BA,H,R,?,$0D                                 |
 +-------------------+------+---------------------------------------------------+
 | <-- JM            | $AF  | $1B,$BA,J,M,L,$0D (LEFT JUSTIFY MODE)             |
 +-------------------+------+---------------------------------------------------+
 | JM -->            | $B0  | $1B,$BA,J,M,R,$0D (RIGHT JUSTIFY MODE)            |
 +-------------------+------+---------------------------------------------------+
 | PAGE DISPLAY      | $B1  | $1B,$BA,P,A,$0D (CYCLE PAGE DISPLAY ON/OFF)       |
 +-------------------+------+---------------------------------------------------+
 | SPARE             | $B2  | $FF                                               |
 +-------------------+------+---------------------------------------------------+
 | <-- PP            | $B3  | $1B,$BA,P,P,L,$0D (LEFT PACK PARAGRAPH)           |
 +-------------------+------+---------------------------------------------------+
 | --> PP <--        | $B4  | $1B,$BA,P,P,C,$0D (CENTRE PACK PARAGRAPH)         |
 +-------------------+------+---------------------------------------------------+
 | PP -->            | $B5  | $1B,$BA,P,P,R,$0D (RIGHT PACK PARAGRAPH)          |
 +-------------------+------+---------------------------------------------------+
 | <-- PL            | $B6  | $1B,$BA,P,L,L,^,S,U,$0D (LEFT PACK LINE/SCRL UP)  |
 +-------------------+------+---------------------------------------------------+
 | --> PL <--        | $B7  | $1B,$BA,P,L,C,^,S,U,$0D (CENT PACK LINE/SCRL UP)  |
 +-------------------+------+---------------------------------------------------+
 | PL -->            | $B8  | $1B,$BA,P,L,R,^,S,U,$0D (RIGHT PACK LINE/SCRL UP) |
 +-------------------+------+---------------------------------------------------+
 | SPARE             | $B9  | $B9                                               |
 +-------------------+------+---------------------------------------------------+
 | DEL TO END OF LINE| $BA  | $BA                                               |
 +-------------------+------+---------------------------------------------------+
 | DELETE WORD       | $BB  | $BB                                               |
 +-------------------+------+---------------------------------------------------+
 | MELD PARAGRAPH    | $BC  | $BC                                               |
 +-------------------+------+---------------------------------------------------+
 | LINE | (DOWN)     | $BD  | $BD                                               |
 +-------------------+------+---------------------------------------------------+
 | <-- PREVIOUS WORD | $BE  | $BE                                               |
 +-------------------+------+---------------------------------------------------+
 | CURSOR | (DOWN)   | $BF  | $BF                                               |
 +-------------------+------+---------------------------------------------------+
 | NEXT WORD -->     | $C0  | $C0                                               |
 +-------------------+------+---------------------------------------------------+
 | PAGE | (DOWN)     | $C1  | $C1                                               |
 +-------------------+------+---------------------------------------------------+
 | FILE | (DOWN)     | $C2  | $1B,$BA,T,O,$0D (GO TO TOP OF FILE)               |
 +-------------------+------+---------------------------------------------------+
 | CALL SYMBOL       | $C3  | $C3 (CALL 'ACTIVATE' USER DEFINED MACRO SYMBOL)   |
 +-------------------+------+---------------------------------------------------+

 NOTE 4:  When  using  the  'NEW LINES' and 'SAVE LINES' keys you should position
          the cursor on the top line of the display before using this function as
          these  two  commands  'log  out'  all  lines  above  the current cursor
          position.


                          THIS PAGE INTENTIONALLY BLANK
