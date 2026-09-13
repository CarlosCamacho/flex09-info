# TRG10A

> Source: `manuals/misc/MANUAL - FLEX Software Archive - Manual and Documentation Archive - Includes SINST0, SINST1, SINST2.zip!MANUAL.DSK!TRG10A.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                           TRAINING AND USER'S GUIDE

                         EVEN MORE SCREDITOR III MODES


.DHE
%TRAINING AND USER'S GUIDE                           SCREDITOR III WORD PROCESSOR

                         EVEN MORE SCREDITOR III MODES


.DFO
"
 (C) 1983, ALFORD & ASSOCIATES                                       PAGE 10-%%%%
.DFE
"
 PAGE 10-%%%%                                       (C) 1983, ALFORD & ASSOCIATES
                                  CHAPTER TEN

 THE HARDEST JOB IN TYPING . . . . . . . . . . . . . . . . . . . . . . . .  10-1
 SETTING AND CLEARING TABS . . . . . . . . . . . . . . . . . . . . . . . .  10-2
 SETTING AND RESETTING MARGINS . . . . . . . . . . . . . . . . . . . . . .  10-4
 MULTI-COLUMN MODE, OF COURSE  . . . . . . . . . . . . . . . . . . . . . .  10-6
 TALLYING YOUR TABLE . . . . . . . . . . . . . . . . . . . . . . . . . . .  10-8
 AN OBJECT LESSON  . . . . . . . . . . . . . . . . . . . . . . . . . . . .  10-10
 SUMMARY . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  10-10


 This chapter will cover one of the unique features of SCREDITOR III; namely, the
 ability to edit multi-column tables of material without disturbing other data in
 the same row by the use of the MULTI-COLUMN MODE.


 In this chapter, you will learn six new COMMANDS:

        CT - CLEAR TABS
        LM - SET/RESET LEFT MARGIN
        MC - CYCLE MULTI-COLUMN MODE ON/OFF
        RM - SET/RESET RIGHT MARGIN
        ST - SET TABS
        TA - TALLY


 You will also learn the following OPERATOR:

        TS - TAB SET/CLEAR

 You  will  be  using  FIGURE  SIX  at  the rear of this manual in completing the
 exercises in this chapter.


THE HARDEST JOB IN TYPING

 If  you  have  ever had the dubious honor of having to lay out and type a spread
 sheet  or  a  multi-column  table,  you  have  probably  had  the  unforgettable
 experience  of having done the entire table, and then find out that you left out
 an item right in the middle of the thing! As you know, the only thing to do  was
 erase  most  of a column of information and then re-type it, or just re-type the
 whole page.

 As you will see more and more,  there  is  almost  always  an  easier  way  with
 SCREDITOR  III,  and  this  job  is  no  exception.  For this lesson, we will be
 creating a new file named TABLE. Go ahead and do so now.


SETTING AND CLEARING TABS

 Before you actually type any of the table, think for a moment about how a  table
 looks. An obvious thought comes to mind. Since everything will be in columns, it
 would be nice to be able to tab to the column before typing, rather than  moving
 the  cursor a column at a time. You have already learned the TAB RIGHT OPERATOR,
 and this OPERATOR would do the job; however, if you look at the tab/margin line,
 you  have  tabs  set  at  every tenth column. Unless you were going to lay out a
 table this way, these tabs wouldn't do you much good. Now you will learn how  to
 set and clear tabs so they will be where you want them.

 Type  the TAB RIGHT OPERATOR. The cursor is now sitting directly under the first
 tab (column 11). Now type the TAB SET/CLEAR OPERATOR. Voila! No  more  tab.  Now
 type the TAB SET/CLEAR OPERATOR again. Amazing. Now the tab is back. Try setting
 and clearing tabs in various columns for a moment to verify that you can  set  a
 tab in any column within the current margins.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHENEVER  THE TAB SET/CLEAR OPERATOR IS ENTERED, THE STATE OF   *
      *   THE COLUMN IS EXAMINED. IF A TAB EXISTS  IN  THE  COLUMN,  IT   *
      *   WILL BE CLEARED. IF NO TAB IS SET, IT WILL BE SO SET.           *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now use the TAB SET/CLEAR OPERATOR and  set  a  number  of  additional  tabs  in
 various columns. When you have done so, execute the following command line:

    CT#1*

 Where  did  all  of  your  tabs  go?  As you have guessed, the CLEAR TAB COMMAND
 operates like the COPY and MOVE COMMANDS. You should have been  able  to  figure
 out  by  now  that this line said to 'CLEAR TABS (CT), starting at column 1 (#1)
 and continuing to the end of the line (*).  You  may  also  clear  a  number  of
 columns,  starting at a particular column (CT#9@22, CT#20@10, etc...), or from a
 column through a column (CT#9#22, CT#20#30,  etc...),  or  in  just  one  column
 (CT#9, CT#20, etc...).


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE CLEAR TAB COMMAND DOES NOT HONOR MARGIN SETTINGS. TABS IN   *
      *   ANY COLUMN MAY BE CLEARED USING THIS COMMAND.                   *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Try setting tabs in various columns and use  the  CLEAR  TAB  COMMAND  to  clear
 various combinations of columns.


 Now execute the following command line:

    CT#1*;ST,5,10,15,20,25,30,35,40

 You  know what the CT COMMAND will do, but how about the ST COMMAND. You guessed
 it, tabs will be set in columns 5, 10, 15, 20, 25, 30, 35 and 40.

 The SET TAB COMMAND will set tabs in any number of columns, but each column must
 be  entered  as  shown,  and  the  numbers  you  enter  are  the  actual columns
 themselves. Any character may be used as the number separator (shown above as  a
 comma),  including  the  EOC  character.  Because of this, no other COMMANDS may
 follow this COMMAND on the command line.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  SET TAB COMMAND DOES NOT HONOR MARGIN SETTINGS. TABS MAY   *
      *   BE SET IN ANY COLUMNS BY THE USE OF THIS COMMAND.               *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Try setting and clearing  tabs  in  various  columns  using  the  TAB  SET/CLEAR
 OPERATOR,  the  CLEAR  TAB  COMMAND  and  the  SET  TAB  COMMAND.  When  you are
 comfortable with the way these operations work, clear all tabs and then set tabs
 at columns 19, 29, 39 and 56.

 When  you  have  done so, make a copy of FIGURE SIX-A at the back of the manual.
 Type the column headings at columns 3, 21, 31, 41 and 49 and type the  remainder
 of  the information using your TAB RIGHT OPERATOR to quickly place the cursor in
 each column. Don't worry that the decimal points are not aligned yet...you'll be
 doing that later!

 Once  you have typed the material, insert a blank line at the top of the screen,
 then copy from line two to the end of the screen  (CO#2*,  remember?).  Do  this
 several  times  because you are probably going to wreck this table several times
 before you are finished with it! Rather  than  having  to  re-enter  the  table,
 simply  delete the mucked up version! Once you have several copies of the table,
 move to the bottom copy and continue.


SETTING AND RESETTING MARGINS

 Look  at your table. Looks pretty good so far, huh? Nope. The January column has
 a problem. Sure enough, George Adam's January sales of $9929.95 was left out. No
 problem, you say. With SCREDITOR III you could just re-type the remainder of the
 column and be done. Even though this is true, it gets a  lot  messier  when  the
 table you are working on is a large one of, say, fifty lines and columns.

 You  have already learned the INSERT LINE OPERATOR, so maybe you could use it to
 insert the extra figure. Try it. As you can see, a  nice  blank  line  the  full
 width of the table was generated. Delete the blank line. This isn't the way.

 Move  your  cursor to the first character of the January column (column 19), and
 execute the following command line:

    LM

 Look at the tab/margin line now. Notice that in column ninteen where there was a
 tab  marker  (T),  there is now a left margin marker (L). To verify that this is
 the case, enter the NEW LINE OPERATOR a few times. Sure enough, the cursor  only
 returns to this column now.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IF THE LEFT MARGIN IS NOT IN THE CURRENT COLUMN  WHEN  AN  LM   *
      *   COMMAND  WITH  A BLANK NUMERIC TYPE IS EXECUTED, IT WILL MOVE   *
      *   TO THE CURRENT COLUMN.                                          *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Execute the same command line again. Now the left margin is  back  at  the  left
 side  of the screen, and the NEW LINE OPERATOR now moves the cursor clear to the
 left side.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IF THE LEFT MARGIN IS  AT  THE  CURRENT  COLUMN  WHEN  AN  LM   *
      *   COMMAND  WITH  A BLANK NUMERIC TYPE IS EXECUTED, IT WILL MOVE   *
      *   TO COLUMN ONE, UNLESS, OF COURSE IT IS ALREADY IN COLUMN ONE,   *
      *   IN WHICH CASE IT WILL NOT MOVE.                                 *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 With  the  cursor  on the left side of the screen, execute the following command
 line:

    LM#19

 Where did the cursor go? To column 19, of course!


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  CURSOR  MAY NEVER BE OUTSIDE THE CURRENT MARGINS. IF THE   *
      *   CURRENT COLUMN WOULD END UP TO THE LEFT OF  THE  LEFT  MARGIN   *
      *   WHEN  THE  LM COMMAND IS EXECUTED, IT WILL AUTOMATICALLY MOVE   *
      *   TO THE NEW LEFT MARGIN.                                         *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 The absolute numeric type and the blank type are the only two  types  recognized
 by the LM COMMAND, by the way.

 Now tab over to the February column and move to the left one column. Now set the
 right margin in the same way you did the left margin (Use RM instead of  LM,  of
 course!)


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE RIGHT MARGIN COMMAND WORKS IDENTICALLY TO THE LEFT MARGIN   *
      *   COMMAND EXCEPT THAT, OF COURSE, THE RIGHT MARGIN IS EFFECTED.   *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 OK...  The  margins  are  bracketing  the column into which you wish to insert a
 number. Try the INSERT LINE OPERATOR now. Oops! A blank line the full  width  of
 the screen was inserted, and the margins were ignored!


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IN SINGLE-COLUMN MODE, NEITHER  THE  INSERT  OR  DELETE  LINE   *
      *   OPERATORS HONOR MARGIN SETTINGS.                                *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 This  won't  work,  so  delete  the  blank line. So how do you insert the number
 without typing the column?


MULTI-COLUMN MODE, OF COURSE

 Yes,  there  is  a way, and it's called MULTI-COLUMN MODE. Execute the following
 command line:

    MC

 When you have done so, look at the status section of the banner line. As you can
 see,  the  MC  status  flag  tells  you  that  you are in MULTI-COLUMN MODE. Now
 re-execute the command line and look at the banner again. The MC status flag  is
 now gone and you are back in SINGLE-COLUMN MODE.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IF MULTI-COLUMN IS ACTIVE WHEN THE MC  COMMAND  IS  EXECUTED,   *
      *   THE  RESULT  IS  SINGLE-COLUMN  MODE  (NO  STATUS  FLAG).  IF   *
      *   SINGLE-COLUMN MODE IS ACTIVE WHEN THE MC COMMAND IS EXECUTED,   *
      *   THE   RESULTING   MODE   IS   MULTI-COLUMN  (MC  STATUS  FLAG   *
      *   DISPLAYED).                                                     *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Execute  the  command  line one more time to place SCREDITOR III in MULTI-COLUMN
 MODE. Verify the mode by looking at the status line. Your margins should  be  at
 19 and 28. Make sure they are before doing anything else.

 Now enter an INSERT LINE OPERATOR. As you can see, the part of the table between
 the margins moved down! Do a DELETE LINE now. Again, movement  is  only  between
 the margins.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IN  MULTI-COLUMN  MODE,  ALL  TEXT  ENTRY,  INSERTS, DELETES,   *
      *   ETC... TAKES PLACE BETWEEN THE MARGINS. NO TEXT  OUTSIDE  THE   *
      *   MARGINS IS DISTURBED IN ANY WAY.                                *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 There are several more characteristics of  MULTI-COLUMN  MODE  about  which  you
 should be familiar. Turn on the line numbers display and see where the last line
 in the text is at this time. Now insert a line.  Notice  that  a  new  line  was
 generated  just  as you have seen before. Now delete the line you just inserted.
 Notice that even though the column of material closed back up,  you  still  have
 the  extra  last  line.  Try  this  a  few  more times. Notice that no lines are
 deleted...only the material between the margins.

      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   LINES  ARE  NEVER  DELETED  FROM  THE  END  OF  THE BUFFER IN   *
      *   MULTI-COLUMN MODE, SINCE IT IS IMPOSSIBLE FOR  SCREDITOR  III   *
      *   TO  TELL  WHETHER  OR NOT THE BLANK PARTS OUTSIDE THE MARGINS   *
      *   BELONG THERE OR NOT. TO DELETE THESE EXTRA LINES,  RETURN  TO   *
      *   SINGLE-COLUMN MODE AND DELETE THEM.                             *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 To see the action of MULTI-COLUMN MODE even more vividly, reset your margins  to
 columns  1  and  61, go back into SINGLE COLUMN MODE (LM#1;RM#61;MC), delete the
 extra lines after the table and type a few lines  of  miscellaneous  characters.
 Now   return  the  margins  to  19  and  28  and  return  to  MULTI-COLUMN  MODE
 (LM#19;RM#28;MC). Now go back up and do the same insert  that  you  did  before.
 Notice  that  this time, even the random characters stretching across the screen
 were moved. This action is called text tear (or rip).

 Now move down and delete the blank area that has been placed in the  first  line
 of your string of random characters using the DELETE LINE OPERATOR.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE OPERATION OF AN INSERT OR  DELETE  IN  MULTI-COLUMN  MODE   *
      *   EXTENDS VERTICALLY FROM THE CURRENT LINE TO THE BOTTOM OF THE   *
      *   CURRENT BUFFER OF TEXT, IRREGARDLESS OF MARGIN STARTS, ETC...   *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 This  implies two limitations to MULTI-COLUMN MODE. First, MULTI-COLUMN MODE can
 cause  such  activities  as  inserting  or  deleting  a  line,  word  wrap   and
 justification  to run very slow depending upon where you are in the buffer (very
 slow near the top, faster at the bottom).

 Second, the buffer may fill up with only one line inserted under some conditions
 in  MULTI-COLUMN  MODE.  Insert  a  couple  of blank lines in the table again in
 MULTI-COLUMN MODE. Notice that the center of the line of  random  characters  is
 pushed  down.  Even though only a few characters were pushed down, the length of
 the line at the bottom of the buffer which was generated to hold  them  is  from
 the  left  edge  of the line to the right-most character. Under some conditions,
 this means that the size of the buffer can double with only  one  insertion!  If
 this causes the buffer to fill, an error message to that effect will be posted.

 To  minimize  this  problem,  when you are working on a table in the middle of a
 document and will be using MULTI-COLUMN MODE, move the table to  the  bottom  of
 the  text before you start, make your changes, then move the table back where it
 belongs.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   TO USE MULTI-COLUMN MODE MOST EFFICIENTLY, THE MATERIAL BEING   *
      *   EDITED  SHOULD  BE AT THE BOTTOM OF THE CURRENT BUFFER. IF IT   *
      *   IS NOT, MOVE IT BEFORE USING MULTI-COLUMN MODE, THEN MOVE  IT   *
      *   BACK AFTER YOU ARE BACK IN SINGLE-COLUMN MODE.                  *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now  that  you  understand  MULTI-COLUMN MODE, go ahead and insert George Adam's
 January sales figure (which is 9929.95) where it belongs. Be sure  to  turn  off
 MULTI-COLUMN MODE before going on!

 At  this  point,  your  table  should look like FIGURE SIX-B at the rear of this
 manual. If not, use the editing capabilities you have learned up to  this  point
 to correct it. You may delete any extra lines after the table itself.

TALLYING YOUR TABLE

 Now you will learn how to use the TALLY COMMAND to make the rest  of  your  work
 easier.  Refer  to  your  SCREDITOR  III  OPERATOR'S  REFERENCE CARD to see what
 options the TALLY COMMAND supports. Your next job is to align all those  columns
 at  the  decimal  point. One more headache, right? Nope. Move your cursor to the
 last 2 in Alfred Neuman's January sales total and execute the following  command
 line:

    TAA

 What  happened?  As  you  can see, the entire column aligned itself to place the
 decimal point in each amount at the cursor column. Now put the cursor on the '4'
 in  Neuman's  February  total  and  re-execute  the  command  line.  So much for
 February. Now place the cursor on the '7' in Serge  Ziflspk's  March  total  and
 re-execute the line. Oops! Only his total moved over!


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE TALLY-ALIGN COMMAND WILL ALIGN  ALL  NUMBERS  BEFORE  AND   *
      *   AFTER  THE CURRENT LINE. THE ALIGNMENT IN EACH DIRECTION WILL   *
      *   STOP WHEN A COLUMN WHICH DOES NOT HAVE A DECIMAL POINT  OR  A   *
      *   VALID  DECIMAL NUMBER IS REACHED, OR WHEN THE ALIGNMENT WOULD   *
      *   CAUSE A NUMBER TO OVERRUN OTHER  CHARACTERS  ON  A  LINE,  OR   *
      *   EITHER MARGIN.                                                  *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now place the cursor on the '8' in his March total  and  try  it  again.  That's
 better.  Now  move  the cursor one more place to the right and try it again. Now
 the March column looks like we want it to!

 Now that the columns are aligned, you have to pull out a calculator to  get  the
 totals,  right?  Wrong. Look at the REFERENCE CARD again and notice the C option
 of the TA COMMAND. Now place the cursor on the decimal point in the March column
 for Serge Ziflspk and execute the following command line:

    TAC;^CD;TAI

 The  TAC  COMMAND added up the column of numbers. The CD OPERATOR was entered in
 COMMAND MODE, so an up-arrow had to  precede  it  (remember?).  This  moved  the
 cursor down into the totals row. Finally, the TAI COMMAND inserted the resulting
 total.

 In fact, the whole series of operations could be done with a single command line
 entry.  Move your cursor to the first digit to the left of the cursor in Serge's
 January sales figure, and execute the following command line:

    TAA;TAC;^CD;TAI


 Now use your DELETE WORD OPERATOR to delete the total, then move the  cursor  up
 one  line  and  to the right one column and re-execute the same command line. Go
 ahead and make sure that the decimal points on all columns are  aligned  to  the
 last  letter  in the column names, then tally the columns and insert the results
 in the totals line. Your table should look like FIGURE SIX-C at the back of  the
 manual when you get through.

 Your  columns  are now totaled, but the rows aren't. SCREDITOR III takes care of
 that, too. Move your cursor up to George Adams' row, tab over to the tab setting
 under the QUARTER TOTAL column, and then execute this command line:

    TAR;TAI

 Move your cursor down and do James Davis' row. Now do the remaining rows of your
 table. Sure beats the old way, doesn't it?

 A couple of options are left in the TALLY COMMAND that should be mentioned.

 Right now you should have your cursor in  the  decimal  point  position  of  the
 TOTALS/QUARTER  TOTAL  intersection.  Use your DELETE WORD OPERATOR to clear the
 combined total and then enter this command line:

    ^CU;TAC;TAD

 This command line will move the cursor up, tally the column,  and  then  display
 the  total  using the TAD COMMAND. When the total is displayed, you may use your
 space bar to clear it and return to SCREEN EDIT  MODE.  Now  move  over  to  the
 decimal point in the March/TOTALS intersection and enter this command line:

    TAR;TAD

 Use your space bar to clear the error message. Now enter this command line:

    TAK;TAR;TAD

 Use  the  space  bar  when you have seen the total. What was the difference that
 cause an error the first time and not the second?  TALLY  will  only  allow  one
 total  to be accumulated at a time. The second command line included a TAK (KILL
 TALLY) COMMAND to clear the old total before tallying the row.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   ONLY ONE TALLY TOTAL MAY BE ACTIVE AT A TIME. THIS TOTAL MUST   *
      *   BE KILLED USING THE TAK COMMAND, OR BE INSERTED USING THE TAI   *
      *   COMMAND, BEFORE ANOTHER TALLY TOTAL MAY BE TAKEN.               *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Go ahead and play with the TALLY COMMANDS  for  a  few  minutes.  When  you  are
 reasonably  comfortable  with  your knowledge of their operation, go to the next
 section.


AN OBJECT LESSON

 If  you remember when we were talking about the difference between LINE and TEXT
 EDIT MODES, we warned you that you NEVER, NEVER, NEVER do anything to a table in
 TEXT  EDIT  MODE? Well, now you'll see why. Go to the the line with Adams' sales
 record. Place your cursor between his first and last name. Now  place  SCREDITOR
 III  in  TEXT  EDIT  MODE and give good old Mr. Adams a middle initial (you pick
 it), using INSERT CHARACTER MODE.

 When you have typed the initial, move the cursor down one line.

    ENOUGH SAID......


 Use  all  of  the COMMANDS, OPERATORS and MODES that you have learned to produce
 one copy of the table as it is shown in FIGURE SIX-D in the current buffer. When
 you have done so, LOG the edit session.


SUMMARY

 In this chapter, you have learned how to set and clear tabs, how  to  enter  and
 leave  MULTI-COLUMN  MODE,  what  the MODE is used for, and how to use the TALLY
 COMMANDS. The important points to remember from this chapter are:

 1)  WHENEVER THE TAB SET/CLEAR OPERATOR IS ENTERED, THE STATE OF THE  COLUMN  IS
     EXAMINED.  IF  A  TAB EXISTS IN THE COLUMN, IT WILL BE CLEARED. IF NO TAB IS
     SET, IT WILL BE SO SET.

 2)  THE SET TAB AND CLEAR TAB COMMANDS MAY BE USED TO SET AND CLEAR TABS IN  ANY
     COLUMN. NEITHER COMMAND HONORS MARGIN SETTINGS.

 3)  IF  THE  LEFT  MARGIN  IS NOT IN THE CURRENT COLUMN WHEN AN LM OR RM COMMAND
     WITH A BLANK NUMERIC TYPE IS EXECUTED, IT WILL MOVE TO THE CURRENT COLUMN.

 4)  IF THE LEFT MARGIN IS AT THE CURRENT COLUMN WHEN AN LM COMMAND WITH A  BLANK
     NUMERIC  TYPE  IS EXECUTED, IT WILL MOVE TO COLUMN ONE, UNLESS, OF COURSE IT
     IS ALREADY IN COLUMN ONE, IN WHICH CASE IT WILL NOT MOVE.

 5)  IF THE RIGHT MARGIN IS AT THE CURRENT COLUMN WHEN AN RM COMMAND WITH A BLANK
     NUMERIC  TYPE  IS EXECUTED, IT WILL MOVE TO COLUMN 249, UNLESS, OF COURSE IT
     IS ALREADY IN COLUMN 249, IN WHICH CASE IT WILL NOT MOVE.

 6)  THE CURSOR MAY NEVER BE OUTSIDE THE CURRENT MARGINS. IF THE  CURRENT  COLUMN
     WOULD END UP TO THE LEFT OF THE LEFT MARGIN WHEN THE LM COMMAND IS EXECUTED,
     IT WILL AUTOMATICALLY MOVE TO THE NEW LEFT MARGIN.

 7)  THE RIGHT MARGIN COMMAND WORKS IDENTICALLY TO THE LEFT MARGIN COMMAND EXCEPT
     THAT, OF COURSE, THE RIGHT MARGIN IS EFFECTED.

 8)  IN  SINGLE-COLUMN  MODE,  NEITHER  THE INSERT OR DELETE LINE OPERATORS HONOR
     MARGIN SETTINGS.


 9)  IF MULTI-COLUMN IS ACTIVE WHEN THE MC COMMAND IS  EXECUTED,  THE  RESULT  IS
     SINGLE-COLUMN  MODE  (NO  STATUS FLAG). IF SINGLE-COLUMN MODE IS ACTIVE WHEN
     THE MC COMMAND IS EXECUTED, THE RESULTING MODE IS  MULTI-COLUMN  (MC  STATUS
     FLAG DISPLAYED).

 10) IN  MULTI-COLUMN  MODE, ALL TEXT ENTRY, INSERTS, DELETES, ETC... TAKES PLACE
     BETWEEN THE MARGINS. NO TEXT OUTSIDE THE MARGINS IS DISTURBED IN ANY WAY.

 11) LINES ARE NEVER DELETED IN MULTI-COLUMN MODE, SINCE IT IS IMPOSSIBLE TO TELL
     WHETHER  OR  NOT THE BLANK PARTS OUTSIDE THE MARGINS BELONG THERE OR NOT. TO
     DELETE THESE EXTRA LINES, RETURN TO SINGLE-COLUMN MODE AND DELETE THEM.

 12) THE OPERATION OF AN INSERT OR DELETE IN MULTI-COLUMN MODE EXTENDS VERTICALLY
     FROM  THE  CURRENT  LINE  TO  THE  BOTTOM  OF  THE  CURRENT  BUFFER OF TEXT,
     IRREGARDLESS OF MARGIN STARTS, ETC... 13)  TO  USE  MULTI-COLUMN  MODE  MOST
     EFFICIENTLY,  THE  MATERIAL  BEING  EDITED  SHOULD  BE  AT THE BOTTOM OF THE
     CURRENT BUFFER. IF IT IS NOT, MOVE IT BEFORE USING MULTI-COLUMN  MODE,  THEN
     MOVE IT BACK AFTER YOU ARE BACK IN SINGLE-COLUMN MODE.

 14) THE  TALLY-ALIGN COMMAND WILL ALIGN ALL NUMBERS BEFORE AND AFTER THE CURRENT
     LINE. THE ALIGNMENT IN EACH DIRECTION WILL STOP WHEN A COLUMN WHICH DOES NOT
     HAVE  A  DECIMAL  POINT  OR  A  VALID DECIMAL NUMBER IS REACHED, OR WHEN THE
     ALIGNMENT WOULD CAUSE A NUMBER TO OVERRUN OTHER CHARACTERS  ON  A  LINE,  OR
     EITHER MARGIN.

 15) ONLY  ONE  TALLY  TOTAL  MAY  BE ACTIVE AT A TIME. THIS TOTAL MUST BE KILLED
     USING THE TAK COMMAND, OR BE INSERTED USING THE TAI COMMAND, BEFORE  ANOTHER
     TALLY TOTAL MAY BE TAKEN.

 16) DON'T WORK ON A TABLE IN TEXT EDIT MODE!

 17) DON'T WORK ON A TABLE IN TEXT EDIT MODE!

 18) DON'T WORK ON A TABLE IN TEXT EDIT MODE!

 19) DON'T WORK ON A TABLE IN TEXT EDIT MODE!

 20) DON'T SAY WE DIDN'T WARN YOU.
