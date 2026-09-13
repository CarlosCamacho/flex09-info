# TRG06A

> Source: `manuals/misc/MANUAL - FLEX Software Archive - Manual and Documentation Archive - Includes SINST0, SINST1, SINST2.zip!MANUAL.DSK!TRG06A.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                           TRAINING AND USER'S GUIDE

                     MORE MOVEMENT CAPABILITIES (AND MORE!)


.DHE
%TRAINING AND USER'S GUIDE                           SCREDITOR III WORD PROCESSOR

                     MORE MOVEMENT CAPABILITIES (AND MORE!)


.DFO
"
 (C) 1983, ALFORD & ASSOCIATES                                        PAGE 6-%%%%
.DFE
"
 PAGE 6-%%%%                                        (C) 1983, ALFORD & ASSOCIATES

                                  CHAPTER SIX

 COPYING LINES . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   6-2
 DISPLAYING LINE NUMBERS . . . . . . . . . . . . . . . . . . . . . . . . .   6-3
 DISPLAYING PAGE NUMBERS . . . . . . . . . . . . . . . . . . . . . . . . .   6-4
 GOING TO A LINE . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   6-5
 MORE ON THE BOTTOM OF THE BUFFER  . . . . . . . . . . . . . . . . . . . .   6-6
 GOING TO A PAGE . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   6-7
 SUMMARY . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   6-8


 In this chapter, you will be  learning  more  ways  of  moving  around  in  your
 document.  Since  the letter you have been working with up to now is very short,
 the COPY COMMAND will also be introduced to allow you to make your letter longer
 more quickly.


 You also will learn something about the following COMMANDS:

                   NU - NUMBERS DISPLAY      CO - COPY LINE(S)
                   PA - PAGE DISPLAY         GO - GO TO LINE
                                             GP - GO TO PAGE


COPYING LINES

 To  start  with,  open  a new edit session on your NEWDOC file. When it is open,
 move your cursor to the last line in the file. This should be line thirty. If it
 isn't,  refer  to  FIGURE FOUR in the rear of this manual and make any necessary
 corrections to the  letter  with  the  editing  capabilities  you  have  already
 learned.  If  you have a blank line after the enclosures line, don't worry about
 it. A blank line at the end of the current buffer can't be deleted, and it won't
 hurt anything anyway.

 Once you are on line thirty, enter the NEW LINE OPERATOR. This will generate one
 additional line at the end of the letter. Now enter COMMAND MODE and type


    CO#1#30


 followed by the usual DELETE TO MARGIN and NEW LINE OPERATORS (as you've already
 learned, the DELETE TO MARGIN OPERATOR isn't necessary if there  isn't  anything
 else  on  the  command line, but it's a good habit into which to get!). From now
 on, we will simply tell you to EXECUTE a COMMAND. You would, of  course,  follow
 this sequence to do so. When the TAB/MARGIN LINE is restored, enter COMMAND MODE
 again and hit NEW LINE to re-execute the  COMMAND.  (you  should  know  why  you
 didn't have to type anything else by now).

 What you just did is to make two additional copies of your letter. The  COMMAND,
 in English, said to


          'Copy  lines,  starting  at  line  1  (#1), and ending with line
          thirty (#30), and place the copy before the current line.'


 If you look at the banner line, you will see the effect in the current and total
 line  counts.  Use  your paging and scrolling OPERATORS for a moment to visually
 verify what happened. There are other ways to copy lines, but  we'll  save  them
 for later. For now, remember:


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   COPY  ALWAYS PLACES THE LINES COPIED BEFORE THE CURRENT LINE,   *
      *   AND BOTH LINE NUMBERS IN THE  COPY  COMMAND  MUST  BE  EITHER   *
      *   BEFORE OR AFTER THE CURRENT LINE (MAY NOT INCLUDE THE CURRENT   *
      *   LINE).                                                          *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


DISPLAYING LINE NUMBERS

 Up to now, the only way you had to tell what line number you were on was to look
 at the banner line. What, however, would you do in the case of the COPY  COMMAND
 you just used if you didn't know what line numbers you wanted to copy? Of course
 there is a way with SCREDITOR III!

 Enter COMMAND MODE and execute the NU COMMAND. As you can see, line numbers have
 appeared on the left side of the screen, the rest of the screen has moved to the
 right to make room for them, and the TAB/MARGIN LINE has also moved over to keep
 the tabs in the proper column. If you look at the banner, you will  notice  that
 the  cursor  column has not changed. While you are looking at the banner, make a
 note of the display range at the right side of the line.

 Now re-execute the COMMAND. This time, the  line  numbers  disappeared.  The  NU
 COMMAND  is  one  of  several cyclical COMMANDS in SCREDITOR III; i.e., COMMANDS
 which cycle something on or off by issuing the same COMMAND. If you look at  the
 display range in the banner line now, you will see that it has changed.

 Right  now,  the  display range is three less than the width of your screen. The
 reason for this is that we never write into the right-most column of the  screen
 due  to  limitations in how some terminals respond to this. The left-most column
 of the screen is reserved for line marks, which you have seen,  and  page  flags
 (which  we  will  discuss in just a moment), and the second column from the left
 (or the first column after the line numbers when they are on)  is  always  blank
 for the sake of minimizing confusion.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE NUMBER OF COLUMNS DISPLAYED BY SCREDITOR III WILL  ALWAYS   *
      *   BE EITHER THREE LESS THAN THE WIDTH OF YOUR DISPLAY WHEN LINE   *
      *   NUMBERS ARE OFF (77 COLUMNS FOR  AN  80  COLUMN  SCREEN),  OR   *
      *   EIGHT  LESS  THAN  THE WIDTH OF YOUR SCREEN WHEN LINE NUMBERS   *
      *   ARE TURNED ON (72 COLUMNS FOR AN 80 COLUMN DISPLAY).            *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


DISPLAYING PRINTED PAGE NUMBERS

 Now  that  you have learned how to turn line numbers on and off, it's time to do
 the same with printed page numbers. Move your cursor to the first  line  in  the
 file  and execute the PA COMMAND. Look carefully at the left side of the screen.
 As you can see, an upper case 'P' has appeared. This indicates that this line is
 the  start of a page as it will be printed. This should not be confused with the
 PAGE UP and PAGE DOWN OPERATORS which refer to a screen, or 'page' of lines.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  START  OF  PAGE  INDICATOR  WHICH IS DISPLAYED BY THE PA   *
      *   COMMAND IS THE START OF A PAGE AS IT WILL BE PRINTED, AND  IS   *
      *   NOT  THE  SAME  AS  THE 'PAGE' REFERRED TO BY THE PAGE UP AND   *
      *   PAGE DOWN OPERATORS.                                            *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Use your PAGE UP OPERATOR and move through your document. You  should  find  one
 more  'P' flag as you move through the text. Place the cursor on this other line
 with a start of page flag and see what line number it is. If SCREDITOR  III  was
 installed  properly, it should be line 57. How did we know? Don't worry about it
 right now. You'll learn more about it later. For  now  just  rest  assured  that
 SCREDITOR III will always let you know where you are in your document.

 Now turn on line numbers by executing the NU COMMAND again. Notice that  all  of
 the  line  numbers  display  as they should, but the line which is marked by the
 page flag is 00002! This shows you that this is the first line of page two.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IF  ONLY  LINE  NUMBERS  ARE ON, THE NUMBERS WILL SHOW AT THE   *
      *   LEFT OF THE SCREEN. IF PAGE FLAGGING IS ON, THE FIRST LINE OF   *
      *   EACH  PAGE  WILL  BE  MARKED.  IF  BOTH LINE NUMBERS AND PAGE   *
      *   FLAGGING IS ON, THE LINE NUMBER OF THE  FIRST  LINE  OF  EACH   *
      *   PAGE WILL BE REPLACED WITH THE PAGE NUMBER OF THAT PAGE.        *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now  execute  the SM COMMAND (SET MARK) and see what happens. The upper case 'P'
 changed to lower case. This indicates that the line was marked.

 Try  various  combinations  of displays, with page flags on and off (the COMMAND
 cycles just like the NU COMMAND), line numbers on and off,  and  with  the  line
 marked and unmarked. Also try marking other lines to see how the line mark looks
 with line numbers on.

      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   ONE OF FOUR DISPLAYS WILL SHOW IN  COLUMN  ONE  DEPENDING  ON   *
      *   WHETHER  PAGE  MARKING  IS ON OR OFF, AND WHETHER THE LINE IS   *
      *   MARKED OR UNMARKED:                                             *
      *                                                                   *
      *                               PAGE OFF                          *
      *                                                                   *
      *                      BLANK        =  NOT MARKED                   *
      *                      ASTERISK     =  LINE MARKED                  *
      *                                                                   *
      *                                                                   *
      *                                PAGE ON                          *
      *                                                                   *
      *              BLANK         =  NOT START OF PAGE OR MARKED         *
      *              ASTERISK      =  MARKED BUT NOT START OF PAGE        *
      *              UPPER-CASE P  =  START OF PAGE BUT NOT MARKED        *
      *              LOWER-CASE P  =  BOTH MARKED AND START OF PAGE       *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


GOING TO A LINE

 Now that you can tell what the numbers of the lines in your text  are,  you  can
 use  a  COMMAND  which  lets  you go there. Turn on line numbers so you can more
 easily see what is happening and execute the following command line:


    GO#20


 As you can see, your cursor is now on the top line of the  window  display,  and
 the current line is indeed line number 20.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  GOTO  LINE COMMAND LETS YOU MOVE DIRECTLY TO ANY LINE IN   *
      *   THE CURRENT BUFFER. WHETHER OR NOT LINE NUMBERS ARE DISPLAYED   *
      *   OR NOT.                                                         *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


MORE ON THE BOTTOM OF THE BUFFER

 Now  try  using  the  GOTO  LINE  COMMAND  to go to line number 410 and see what
 happens. If you don't remember, hit your space bar to clear the  error  message.
 Why did you get an error? Use your NEXT PAGE OPERATOR to move the display to the
 last line in the document, which should be line number 91. As you can see, there
 are no line numbers beyond this line. Why? Because there are no more lines!

 Now  enter  the NEW LINE OPERATOR a few times. Each time you do so, you create a
 new line in your document. Before you  reach  the  bottom  of  the  screen,  try
 entering  the  CURSOR  DOWN OPERATOR. The bell on your terminal rang to tell you
 that you cannot move the cursor onto a line which does not exist. For  now,  the
 only  way  you have to create more lines in a file is by copying lines or by use
 of the NEW LINE OPERATOR.

 Use the GOTO LINE COMMAND (GO) to move to various lines  before  and  after  the
 current  line. If an error occurs, remember that only the space bar can clear an
 error message.


GOING TO A PAGE

 Although your letter consists of only two printed pages at this point, we  might
 as  well mention the GOTO PAGE COMMAND here. Move your cursor to somewhere other
 than the first line in the letter and execute the following command line:


    GP#1


 If you turn on both page flagging and line numbering, you will see now that your
 cursor is on PAGE 00001. Now execute the following command line:


    GP#2


 As  you  can  see,  you are now on PAGE 00002, or page two as the letter will be
 printed.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  GOTO  PAGE  COMMAND  LETS YOU MOVE DIRECTLY TO THE FIRST   *
      *   LINE OF ANY PAGE AS IT WILL BE PRINTED WHICH  EXISTS  IN  THE   *
      *   CURRENT BUFFER.                                                 *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Try various combinations of the NU,  PA,  GO  and  GP  COMMANDS  until  you  are
 familiar  with  their  operation.  When  you  are  done,  ABORT the current edit
 session.


SUMMARY

 This chapter has provided you with more ways of moving through your document, as
 well as how to turn on and off some very useful displays; i.e., line numbers and
 start-of-printed-page flagging/numbering. The important points to remember are:


 1) COPY  ALWAYS  PLACES  THE LINES COPIED BEFORE THE CURRENT LINE, AND BOTH LINE
    NUMBERS IN THE COPY COMMAND MUST BE EITHER BEFORE OR AFTER THE  CURRENT  LINE
    (MAY NOT INCLUDE THE CURRENT LINE).

 2) THE  NUMBER OF COLUMNS DISPLAYED BY SCREDITOR III WILL ALWAYS BE EITHER THREE
    LESS THAN THE WIDTH OF YOUR DISPLAY WHEN LINE NUMBERS ARE OFF (77 COLUMNS FOR
    AN  80  COLUMN SCREEN), OR EIGHT LESS THAN THE WIDTH OF YOUR SCREEN WHEN LINE
    NUMBERS ARE TURNED ON (72 COLUMNS FOR AN 80 COLUMN DISPLAY).

 3) THE START OF PAGE INDICATOR WHICH IS DISPLAYED BY THE PA COMMAND IS THE START
    OF  A  PAGE AS IT WILL BE PRINTED, AND IS NOT THE SAME AS THE 'PAGE' REFERRED
    TO BY THE PAGE UP AND PAGE DOWN OPERATORS.

 4) IF ONLY LINE NUMBERS ARE ON, THE NUMBERS WILL SHOW AT THE LEFT OF THE SCREEN.
    IF  PAGE  FLAGGING IS ON, THE FIRST LINE OF EACH PAGE WILL BE MARKED. IF BOTH
    LINE NUMBERS AND PAGE FLAGGING IS ON, THE LINE NUMBER OF THE  FIRST  LINE  OF
    EACH PAGE WILL BE REPLACED WITH THE PAGE NUMBER OF THAT PAGE.

 5) ONE  OF  FOUR  DISPLAYS  WILL  SHOW  IN  COLUMN ONE DEPENDING ON WHETHER PAGE
    MARKING IS ON OR OFF, AND WHETHER THE LINE IS MARKED OR UNMARKED:

   PAGE OFF

    BLANK         =  NOT MARKED
    ASTERISK      =  LINE MARKED


   PAGE ON

    BLANK         =  NOT START OF PAGE OR MARKED
    ASTERISK      =  MARKED BUT NOT START OF PAGE
    UPPER-CASE P  =  START OF PAGE BUT NOT MARKED
    LOWER-CASE P  =  BOTH MARKED AND START OF PAGE

 6) THE GOTO LINE COMMAND LETS YOU MOVE DIRECTLY  TO  ANY  LINE  IN  THE  CURRENT
    BUFFER. WHETHER OR NOT LINE NUMBERS ARE DISPLAYED OR NOT.

 7) THE GOTO PAGE COMMAND LETS YOU MOVE DIRECTLY TO THE FIRST LINE OF ANY PAGE AS
    IT WILL BE PRINTED WHICH EXISTS IN THE CURRENT BUFFER.
