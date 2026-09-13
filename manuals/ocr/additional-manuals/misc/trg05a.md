# TRG05A

> Source: `manuals/misc/MANUAL - FLEX Software Archive - Manual and Documentation Archive - Includes SINST0, SINST1, SINST2.zip!MANUAL.DSK!TRG05A.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                           TRAINING AND USER'S GUIDE

                               MOVING THE WINDOW


.DHE
%TRAINING AND USER'S GUIDE                           SCREDITOR III WORD PROCESSOR

                               MOVING THE WINDOW


.DFO
"
 (C) 1983, ALFORD & ASSOCIATES                                        PAGE 5-%%%%
.DFE
"
 PAGE 5-%%%%                                        (C) 1983, ALFORD & ASSOCIATES
                                  CHAPTER FIVE

 REVIEWING THE WINDOW CONCEPT  . . . . . . . . . . . . . . . . . . . . . .   5-2
 UP AND DOWN SCROLLING . . . . . . . . . . . . . . . . . . . . . . . . . .   5-2
 UP AND DOWN PAGING  . . . . . . . . . . . . . . . . . . . . . . . . . . .   5-3
 MOVEMENT COMMANDS . . . . . . . . . . . . . . . . . . . . . . . . . . . .   5-4
 LINE MARKS  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   5-5
 SETTING LINE MARKS  . . . . . . . . . . . . . . . . . . . . . . . . . . .   5-5
 GOING TO A MARKED LINE  . . . . . . . . . . . . . . . . . . . . . . . . .   5-5
 CLEARING LINE MARKS . . . . . . . . . . . . . . . . . . . . . . . . . . .   5-6
 SUMMARY . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   5-8


 In  the  previous  chapters,  you  saw  how to move the cursor around the window
 display area and how to make changes in the current window...but how do you make
 changes to other parts of your document? By moving the window, of course!


 This chapter will teach you five new OPERATORS and four new COMMANDS, namely:

                      OPERATORS                COMMANDS

                   ^SU - SCROLL UP           TO - TOP OF BUFFER
                   ^SD - SCROLL DOWN         BO - BOTTOM OF BUFFER
                   ^PU - PAGE UP             SM - SET MARK
                   ^PD - PAGE DOWN           CM - CLEAR MARK
                   ^GM - GOTO MARK


REVIEWING THE WINDOW CONCEPT

 Before  we  start,  let's  take  a  moment to review the whole concept of window
 editing. Looking at FIGURE ONE at the back of this  manual,  your  text  may  be
 thought of as a large scroll behind an open window. You can only see the part of
 your document which is 'in the window,' made up of the screen of your terminal.

 To see other parts of the document, you must either move the window up and down,
 or  you  must be able to move your document. Since the screen in front of you is
 not easy to move, we have chosen to take the approach that you are going  to  be
 moving  the document 'behind the window.' Be sure to remember this, as the names
 of the various OPERATORS and COMMANDS are based on the concept that you will  be
 moving the document up or down.


UP AND DOWN SCROLLING

 Open  a  new  edit  session  on  your NEWDOC file. When the display is ready for
 editing, use your SCROLL UP OPERATOR to move the document behind the window.  As
 you  can  see,  the  text  appears to physically move upward on the screen. Keep
 entering the SCROLL UP OPERATOR until the bell on your terminal rings.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE SCROLL UP OPERATOR MOVES THE TEXT UPWARD ON YOUR  SCREEN.   *
      *   MOVEMENT  STOPS  WHEN  THE  CURSOR IS ON THE LAST LINE IN THE   *
      *   DOCUMENT (OR ON THE LAST LINE OF THE CURRENT BUFFER).           *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now  enter  the SCROLL DOWN OPERATOR. Now the text moves downward on the screen.
 Keep entering this OPERATOR until the bell rings.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE SCROLL DOWN OPERATOR MOVES  THE  TEXT  DOWNWARD  ON  YOUR   *
      *   SCREEN.  MOVEMENT  STOPS WHEN THE FIRST LINE IN THE BUFFER IS   *
      *   BEING DISPLAYED AT THE TOP OF THE SCREEN.                       *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

 Try using the SCROLL UP and SCROLL DOWN OPERATORS with  the  cursor  located  at
 various  points  in the display window. As you do, notice the limits of movement
 in relation to the cursor.


UP AND DOWN PAGING

 Enter the PAGE UP OPERATOR. As you can see,  the  document  again  moves  upward
 'behind'  the  window.  This time, however, it moves a full page of lines. Enter
 the PAGE UP OPERATOR AGAIN. Now the current  line  is  the  last  line  in  your
 letter.  Enter  the  OPERATOR  one  more  time.  This  time,  the bell will ring
 indicating that the OPERATOR could not be executed.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE PAGE UP OPERATOR MOVE  THE  TEXT  UPWARD  ONE  SCREEN  OF   *
      *   LINES.  MOVEMENT STOPS WHEN THE CURRENT LINE IS THE LAST LINE   *
      *   IN THE CURRENT BUFFER, REGARDLESS OF WHERE IN THE WINDOW  THE   *
      *   CURSOR IS LOCATED.                                              *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now try the PAGE DOWN OPERATOR. Watch the screen as you enter this OPERATOR over
 and over. Note where movement stops.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE PAGE DOWN OPERATOR MOVES THE TEXT DOWNWARD ONE SCREEN  OF   *
      *   LINES. MOVEMENT STOPS WHEN THE TOP LINE ON THE DISPLAY IS THE   *
      *   FIRST LINE IN THE CURRENT BUFFER, REGARDLESS OF WHERE IN  THE   *
      *   WINDOW THE CURSOR IS LOCATED.                                   *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Try using the PAGE UP and PAGE DOWN OPERATORS with the cursor located at various
 points  in  the  display  window.  As  you  do, notice the limits of movement in
 relation to the cursor.


MOVEMENT COMMANDS

 With the four OPERATORS  you  just  learned,  you  can  move  your  document  as
 necessary to make corrections or to proofread the material. It would be awkward,
 however, with a  really  long  document,  to  have  to  repeatedly  enter  these
 OPERATORS  to  move  from  one  end  of  the  buffer to the other. SCREDITOR III
 includes two COMMANDS which make moving from one end of the buffer to the  other
 easier.

 Move the cursor to the middle of the screen and enter COMMAND MODE (by  now  you
 should  know  that you do this by typing the ESCAPE OPERATOR), enter and execute
 the BO COMMAND (again, you should type BO  followed  by  the  DELETE  TO  MARGIN
 OPERATOR and the NEW LINE OPERATOR). What happened?


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  BO  COMMAND  MOVES THE WINDOW TO THE LAST FULL SCREEN OF   *
      *   LINES IN THE CURRENT BUFFER AND PLACES THE CURSOR ON THE  TOP   *
      *   LINE OF THIS SCREEN.                                            *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now enter COMMAND MODE and execute the TO COMMAND. What happened then?


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  TO  COMMAND MOVES THE WINDOW TO THE FIRST FULL SCREEN OF   *
      *   LINES IN THE CURRENT BUFFER AND PLACES THE CURSOR ON THE  TOP   *
      *   LINE OF THIS SCREEN.                                            *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Execute the TO COMMAND again. What happened? Better still, what do you  do  now?
 First,  since  the cursor was on the first line in the buffer, the COMMAND could
 not move you any closer to the start of the file.  Because  of  this,  an  error
 message  was  posted.  Hopefully,  this  is  your first error. Whenever an error
 occurs and a message is posted, SCREDITOR III waits for you to read it. When you
 have done so, HIT THE SPACE BAR TO CLEAR THE ERROR MESSAGE.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   ONLY  THE  SPACE  BAR  CAN  CLEAR  A  POSTED ERROR MESSAGE IN   *
      *   SCREDITOR III. THIS IS DONE TO MINIMIZE THE CHANCE OF A  FAST   *
      *   TYPIST OUT-RUNNING AN ERROR AND NOT KNOWING WHAT HAPPENED!      *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Practice using the TO and BO COMMANDS for a few minutes. Try moving  the  cursor
 to  various  lines in your document using the scrolling and paging OPERATORS and
 then executing the COMMANDS. Notice that the TOP OF BUFFER  COMMAND  returns  an
 error if you are already there, and that the BOTTOM OF BUFFER COMMAND returns an
 error if you are already there.

LINE MARKS

 We've shown you how to move your document around in the screen window now, using
 scrolling,  paging,  and  the TOP and BOTTOM COMMANDS. This alone would give you
 enough movement capability if you were only doing a short letter like the NEWDOC
 one  you  are  now  using; however, if you were working on a long manuscript and
 needed to make frequent references to various places in the text, the amount  of
 time  involved in using these movement capabilities would be such that you would
 probably lose the sense of what you were doing each time you had to move  around
 in  the buffer. SCREDITOR III provides another movement capability still to help
 you here!

 You will now learn another pair of COMMANDS  and  another  OPERATOR.  These  new
 capabilities  will  allow  you  to mark selected lines and later rapidly move to
 them.


SETTING LINE MARKS

 Move the cursor to the second line of your letter. Now enter  the  COMMAND  MODE
 and  execute  the  SM  COMMAND  (type SM, clear the rest of the line and hit NEW
 LINE). If you look at the left edge of the screen, you  will  see  an  asterisk.
 This asterisk indicates that the current line is now marked.

 Now  move  to the closing (Sincerely,) and do the same thing. Again, an asterisk
 appears indicating a marked line.


GOING TO A MARKED LINE

 Now that you have marked a couple of lines, locate the GOTO MARK (^GM)  OPERATOR
 key and hit it. What happened? The second line in the document is now at the top
 of the display window, and your cursor is  on  that  line!  Hit  the  GOTO  MARK
 OPERATOR again. Now the closing is the top line of the screen!

 Try  marking  a  few  more  lines and then use the GOTO MARK OPERATOR to see the
 result.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   EACH  TIME  THE  GOTO MARK OPERATOR IS ENTERED, THE BUFFER IS   *
      *   SCANNED AND THE NEXT MARKED LINE BECOMES THE CURRENT LINE. IF   *
      *   NO  FURTHER  MARKED  LINES  EXIST AFTER THE CURRENT LINE, THE   *
      *   SCANNING PROCESS STARTS FROM THE FIRST LINE  IN  THE  CURRENT   *
      *   BUFFER.  IF NO MARKED LINES EXIST IN THE BUFFER, THE TERMINAL   *
      *   BELL WILL RING TO INDICATE AN ERROR.                            *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


CLEARING LINE MARKS

 Now  that  you  have  marked  a number of lines in your text, assume that you no
 longer need one of the marks. How do you erase a line mark?  Simple!  Place  the
 cursor  on  one  of  your  marked lines. Now enter COMMAND MODE and execute a CM
 (CLEAR MARK) COMMAND. Notice that the asterisk to the left of the  current  line
 has  been erased. Now, when you execute the GOTO MARK OPERATOR, the current line
 will be skipped. Want to erase another one? Move the cursor  to  another  marked
 line...but wait!

 This time, instead of entering COMMAND MODE, typing the two-letter command name,
 the DELETE-TO-MARGIN OPERATOR and the NEW LINE OPERATOR, simply enter the ESCAPE
 OPERATOR.  If  you look at the command line, you will see that the CM COMMAND is
 still on the line. Now just hit the NEW LINE  OPERATOR.  As  you  can  see,  the
 COMMAND  you  entered  a  moment ago was still on the command line, and the line
 re-executed without typing anything!


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE LAST COMMAND EXECUTED IS ESSENTIALLY NEVER  AUTOMATICALLY   *
      *   ERASED  FROM  THE  COMMAND  LINE.  TO  RE-EXECUTE ANY COMMAND   *
      *   ENTRY, SIMPLY ENTER  COMMAND  MODE  AND  TYPE  THE  NEW  LINE   *
      *   OPERATOR.                                                       *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 This  is the reason that you have learned to enter the DELETE TO MARGIN OPERATOR
 each time you entered a COMMAND. We will talk more about the COMMAND MODE later.

 When you have a large number of marks to erase, there is an easier  way  to  use
 the  CM COMMAND. To see how, first use the SM COMMAND to set marks on ALL of the
 lines in your letter. When you have done so, move your cursor to  line  15.  Now
 execute the following command line:


    CM>


 Check  to see that there are no marks on any line through the end of the letter.
 Re-mark all of the lines in the letter and then go back to line 15 and use  this
 command line:


    CM<


 This time, all marks BEFORE line 15 were erased. Re-mark all lines one more time
 and try this line:


    CM*


 If you look over the letter now, you will see that there are  NO  marks  on  any
 lines.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE CM COMMAND WILL LET YOU UN-MARK  THE  CURRENT  LINE,  ALL   *
      *   LINES  FROM  THE  CURRENT LINE THROUGH THE END OF THE CURRENT   *
      *   BUFFER, ALL LINES  FROM  THE  START  OF  THE  CURRENT  BUFFER   *
      *   THROUGH THE CURRENT LINE, OR ALL LINES IN THE BUFFER.           *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Practice marking lines using the SET MARK (SM) COMMAND, going  to  marked  lines
 using  the  GOTO  MARK  OPERATOR,  and  clearing marks using the CLEAR MARK (CM)
 COMMAND until you are comfortable with the way these operations are performed.

 When you are done with this chapter, ABORT the edit session.


SUMMARY

 In this section, you have  learned  some  of  SCREDITOR  III's  window  movement
 operations.  There  are still more ways to move the text behind your window, but
 we will save them for the next chapter. The important points  to  remember  from
 this chapter are:


 1)  THE  SCROLL UP OPERATOR MOVES THE TEXT UPWARD ON YOUR SCREEN. MOVEMENT STOPS
     WHEN THE CURSOR IS ON THE LAST LINE IN THE DOCUMENT.

 2)  THE  SCROLL  DOWN  OPERATOR MOVES THE TEXT DOWNWARD ON YOUR SCREEN. MOVEMENT
     STOPS WHEN THE FIRST LINE IN THE BUFFER IS BEING DISPLAYED AT THE TOP OF THE
     SCREEN.

 3)  THE  PAGE  UP  OPERATOR  MOVE  THE TEXT UPWARD ONE SCREEN OF LINES. MOVEMENT
     STOPS WHEN THE CURRENT  LINE  IS  THE  LAST  LINE  IN  THE  CURRENT  BUFFER,
     REGARDLESS OF WHERE IN THE WINDOW THE CURSOR IS LOCATED.

 4)  THE PAGE DOWN OPERATOR MOVES THE TEXT DOWNWARD ONE SCREEN OF LINES. MOVEMENT
     STOPS WHEN THE TOP LINE ON THE DISPLAY IS THE  FIRST  LINE  IN  THE  CURRENT
     BUFFER, REGARDLESS OF WHERE IN THE WINDOW THE CURSOR IS LOCATED.

 5)  THE  BO  COMMAND  MOVES  THE  WINDOW TO THE LAST FULL SCREEN OF LINES IN THE
     CURRENT BUFFER AND PLACES THE CURSOR ON THE TOP LINE OF THIS SCREEN.

 6)  THE  TO  COMMAND  MOVES  THE WINDOW TO THE FIRST FULL SCREEN OF LINES IN THE
     CURRENT BUFFER AND PLACES THE CURSOR ON THE TOP LINE OF THIS SCREEN.

 7)  ONLY  THE  SPACE BAR CAN CLEAR A POSTED ERROR MESSAGE IN SCREDITOR III. THIS
     IS DONE TO MINIMIZE THE CHANCE OF A FAST TYPIST OUT-RUNNING AN ERROR AND NOT
     KNOWING WHAT HAPPENED!

 8)  EACH  TIME  THE GOTO MARK OPERATOR IS ENTERED, THE BUFFER IS SCANNED AND THE
     NEXT MARKED LINE BECOMES THE CURRENT LINE. IF NO FURTHER MARKED LINES  EXIST
     AFTER  THE  CURRENT LINE, THE SCANNING PROCESS STARTS FROM THE FIRST LINE IN
     THE CURRENT BUFFER.

 9)  THE  LAST  COMMAND EXECUTED IS ALMOST NEVER ERASED FROM THE COMMAND LINE. TO
     RE-EXECUTE  ANY  COMMAND  ENTRY,  SIMPLY ENTER COMMAND MODE AND TYPE THE NEW
     LINE OPERATOR.

 10) THE CM COMMAND WILL LET YOU UN-MARK THE CURRENT LINE,  ALL  LINES  FROM  THE
     CURRENT LINE THROUGH THE END OF THE CURRENT BUFFER, ALL LINES FROM THE START
     OF THE CURRENT BUFFER THROUGH THE CURRENT LINE, OR ALL LINES IN THE BUFFER.
