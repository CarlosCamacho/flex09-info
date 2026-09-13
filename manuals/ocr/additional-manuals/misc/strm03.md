# STRM03

> Source: `manuals/misc/REFERENC - Manual and Documentation Archive.zip!REFERENC.DSK!STRM03.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                          TECHNICAL REFERENCE MANUAL

                       SCREDITOR III DISPLAY INFORMATION


.DHE
%TECHNICAL REFERENCE MANUAL                          SCREDITOR III WORD PROCESSOR

                       SCREDITOR III DISPLAY INFORMATION


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                        PAGE 3-%%%%
.DFE
"
 PAGE 3-%%%%                                        (C) 1982, ALFORD & ASSOCIATES
 The screen display format presented by SCREDITOR III can be thought of as  being
 made  up  of  three  sections.  The  first is the BANNER LINE, the second is the
 TAB/MARGIN line, and the  third  is  the  SCREEN  DISPLAY  AREA.  The  following
 paragraphs describe each of these in greater detail.


BANNER LINE

 The  banner  line  is physically the top line of the screen, and is divided into
 two sections. The first is the status flag section, and is the left side of  the
 line.  The  second  is  the  numeric status section, and is the remainder of the
 line.


 STATUS FLAG SECTION -

 The status flag section of  the  BANNER  LINE  displays  current  editing  state
 information. The flags used by SCREDITOR III are two-character abbreviations for
 the particular state. When a  particular  MODE  is  active,  the  flag  will  be
 displayed.  At other times, the flag position is blank. Each flag will always be
 displayed in the same position of the status flag section. The flag  assignments
 are as follows:


    IL IC xE AS PR MC Wx Jx Px


 IL    indicates that INSERT LINE MODE is active.

 IC    indicates that INSERT CHARACTER MODE is active.

 xE    indicates  whether LINE or TEXT MODE is active. If LINE is active, LE will
       be displayed. If TEXT MODE is active, TE will be displayed.

 AS    indicates that INSERT SYMBOL MODE is active.

 PR    indicates that the input file has not been fully read. When the last  line
       in the input file has been read, this flag will be cleared.

 MC    indicates that MULTI-COLUMN MODE is active.

 Wx    will  be  displayed  as WP, WR, WW or WE or blank depending upon whether a
       PRINT-OUT, READ-IN or WRITE-OUT is active, or an error has  occurred  (WE)
       which has disabled all of the disk work COMMANDS. If no work file is open,
       the indicator will be blank. The WP state is not used in the OS-9  version
       of SCREDITOR III.

 Jx    will be displayed as JL, JC, JR or JA depending upon whether LEFT, CENTER,
       RIGHT or ALL JUSTIFICATION MODE is active.

 Px    will be displayed as PS or PC  if  a  printer  data  file  is  loaded  and
       printing  may be done. PS indicates that printing will pause at the end of
       each printed page. PC indicates that printing will be  continuous.  If  no
       PRINTER  DATA  file  is loaded, or if the path has been closed in the OS-9
       version, the indicator will be blank.


 NUMERIC STATUS SECTION -

 The  NUMERIC  STATUS  SECTION continuously displays general editing information.
 This information is continuously updated as necessary to reflect  current  data.
 The layout of this section is as follows:


    C:001 R:01 L:00001 T:00001 D:001-072


 C:001         indicates  the  current  cursor column in the SCREEN DISPLAY AREA,
               numbered from 1 to 249.

 R:01          indicates the current cursor row in the SCREEN DISPLAY AREA,  from
               1 to the length of your screen less two (22 for 24 line displays).

 L:00001       indicates the line number of the line on which the cursor resides,
               referenced from the first line of the file, which is line one.  If
               a  file  is  larger than memory and a NEW or SAVE COMMAND has been
               issued, this number will still be relative to  the  start  of  the
               file.

 T:00001       indicates  the line number of the last line in the current buffer,
               referenced from the  first  line  in  the  file,  as  with  the  L
               indicator.

 D:001-079     indicates the current horizontal portion of the display area which
               is being displayed. Whenever  a  horizontal  scroll  occurs,  this
               indicator changes to show which columns of the displayed lines are
               being shown.


TAB/MARGIN LINE

 The TAB/MARGIN line is a general purpose line. When SCREDITOR III is loaded  and
 run, the copyright notice will be displayed on this line, and will automatically
 clear after about one second. After clearing, the remainder  of  the  screen  is
 displayed, and the TAB/MARGIN display becomes active.

 During  normal  screen  editing,  the  tab  settings  and margins of the current
 display area  are  shown.  these  settings  are  continuously  updated  whenever
 horizontal scrolls occur to reflect the tab and margin information pertaining to
 the displayed part of the lines.

 Each tab is displayed as a T, the left margin as an L, and the right  margin  as
 an  R, except in the case where both margins are in the same column, when a B is
 displayed. One or both margins may or may not be displayed  at  any  given  time
 depending  upon  where  the  current  display area is horizontally. Those column
 positions which have no  tab  or  margin  settings  will  be  displayed  as  the
 character which you defined in the CONGEN process as the TAB SEPARATOR. If a tab
 setting exists in the same column as either margin, the margin will be displayed
 until it is moved, at which time the tab becomes active again.

 Whenever  an  error  message  is posted by SCREDITOR III, the TAB/MARGIN LINE is
 cleared, and the error message is displayed in its place.  Only  the  SPACE  BAR
 will clear an error message and restore the TAB/MARGIN LINE.


 Whenever you enter COMMAND MODE, the TAB/MARGIN LINE is cleared, and becomes the
 command entry line. At the conclusion of  COMMAND  MODE  (last  entered  COMMAND
 executed)  the line will return to TAB/MARGIN display. If an error occurs in the
 execution of a command line, the error message will be  displayed  as  described
 above. When the error is cleared, SCREEN EDIT MODE will always be re-entered.


SCREEN DISPLAY AREA

 The remainder of the screen is devoted to the SCREEN DISPLAY AREA. This  is  the
 area in which all screen editing occurs. This area may be thought of as a window
 into the text file which is being edited. The actual screen display area is made
 up of two sections.

 The  first  is the left-most side of the display, and contains line information.
 The first column will contain one of four characters. An asterisk or lower  case
 P indicates a marked line. A lower or upper case P indicates the first line of a
 page as it will be printed. If neither a page or marked line  condition  exists,
 the first column will be blank.

 After  the  line  marker, a line or page number will be displayed if the numbers
 display is turned on. If not on, no display space will be taken. The next column
 after  the line or page numbers (if on) or after the line marker (if numbers are
 off) will always be a blank.

 As a point of interest, the right-most display column is never used by SCREDITOR
 III to eliminate scrolling problems with some terminals. In total therefore, the
 maximum number of text columns displayed will be either the  length  of  a  line
 minus  three  if numbers are off (77 columns for an 80 column display), or minus
 eight if numbers are on (72 columns for an 80 column display).


GENERAL DISPLAY INFORMATION

 During SCREEN EDIT MODE when the either  side  of  the  display  is  passed,  an
 automatic  horizontal  scroll  takes  place  to  keep  the cursor in the display
 window.

 During COMMAND MODE, when the cursor reaches the right side of the display,  the
 line will physically move left one column each time a key is entered which would
 move the cursor right. The line will move to the right under the opposite  input
 conditions.

 Any imbedded control codes in the screen display area will be displayed as an up
 arrow (^). The DC COMMAND will cause these control codes to be displayed as  ^DD
 where DD is the decimal value of the imbedded code.


                        THIS PAGE IS INTENTIONALLY BLANK
