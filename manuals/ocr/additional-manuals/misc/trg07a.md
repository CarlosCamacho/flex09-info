# TRG07A

> Source: `manuals/misc/MANUAL - FLEX Software Archive - Manual and Documentation Archive - Includes SINST0, SINST1, SINST2.zip!MANUAL.DSK!TRG07A.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                           TRAINING AND USER'S GUIDE

                                THE COMMAND MODE


.DHE
%TRAINING AND USER'S GUIDE                           SCREDITOR III WORD PROCESSOR

                                THE COMMAND MODE


.DFO
"
 (C) 1983, ALFORD & ASSOCIATES                                        PAGE 7-%%%%
.DFE
"
 PAGE 7-%%%%                                        (C) 1983, ALFORD & ASSOCIATES

                                 CHAPTER SEVEN

 EDITING THE COMMAND LINE  . . . . . . . . . . . . . . . . . . . . . . . .   7-2
 ABORTING COMMAND MODE - THE DELETE KEY  . . . . . . . . . . . . . . . . .   7-3
 EXECUTING THE COMMAND LINE  . . . . . . . . . . . . . . . . . . . . . . .   7-4
 PLACING OPERATORS IN THE COMMAND LINE . . . . . . . . . . . . . . . . . .   7-5
 MULTIPLE COMMANDS . . . . . . . . . . . . . . . . . . . . . . . . . . . .   7-6
 LONG COMMAND LINES  . . . . . . . . . . . . . . . . . . . . . . . . . . .   7-7
 COMMAND STRUCTURE . . . . . . . . . . . . . . . . . . . . . . . . . . . .   7-8
 COMMAND TYPES . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   7-9
 NUMERIC INFORMATION . . . . . . . . . . . . . . . . . . . . . . . . . . .   7-10
 STRING INFORMATION  . . . . . . . . . . . . . . . . . . . . . . . . . . .   7-12
 SUMMARY . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   7-14


 You have now learned about a number of SCREDITOR III's OPERATORS  and  COMMANDS.
 In  this  chapter,  we  will  go  into detail about the structure of the various
 COMMANDS and their options, and how to edit the command line.

 A number of COMMANDS will be discussed which you have not seen yet so  that  you
 can understand more fully the concepts which this chapter teaches.

 Although  we  have maintained the concept of hands-on training up to this point,
 this chapter will present some information which must be simply learned to  take
 full  advantage of the power of SCREDITOR III. The sections of this chapter from
 COMMAND STRUCTURE to the end of the chapter must just plain be  studied.  It  is
 strongly  suggested  that  you take extra time with that section to be sure that
 you thoroughly understand the principles being explained.


EDITING THE COMMAND LINE

 Up  to  this  point,  you have not formally done any real editing to the command
 line, other than overtyping a letter or two and deleting any  excess  characters
 from  the  line  before  execution.  SCREDITOR  III provides a number of editing
 capabilities in COMMAND MODE with which you will now become familiar.

 Open a new edit session on the NEWDOC file. When the display is on  the  screen,
 enter  COMMAND  MODE.  Now type a few words (what they are isn't important, just
 don't hit NEW LINE). When you have done so, try the various OPERATORS which  you
 have  learned to to see which ones work and which ones don't. Do not try the NEW
 LINE OPERATOR, as you know what it does in COMMAND MODE, and we  don't  want  to
 execute  the  quick  brown  fox (or whatever you typed on the command line)! You
 should have found the following OPERATORS work exactly as if  you  were  editing
 text in LINE EDIT MODE:


    ^CL - CURSOR LEFT
    ^BS - DESTRUCTIVE BACKSPACE
    ^DC - DELETE CHARACTER
    ^DL - DELETE LINE
    ^DM - DELETE TO MARGIN
    ^IS - INSERT SPACE


 Additionally,  The  CURSOR  RIGHT  OPERATOR worked in a similar manner to normal
 editing except that it would not  move  past  the  first  space  past  the  last
 displayed  character  on  the  command line, and The TAB TO MARGIN OPERATOR only
 returns the cursor to the first character in the command line. You may also,  of
 course, overtype as you need to at any time.

 By using these OPERATORS, you can make changes and corrections  to  the  command
 line as needed.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   REMEMBER  THAT  NOT ALL OPERATORS WORK IN COMMAND MODE, AND A   *
      *   COUPLE OF THEM WORK DIFFERENTLY.                                *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


ABORTING COMMAND MODE - THE DELETE KEY

 There is one special key that we haven't talked about up to now which  you  will
 probably  be using very often with SCREDITOR III. On some keyboards, this key is
 marked DEL, on others RUB. Alternatively, these words  may  be  spelled  out  as
 DELETE  or  RUBOUT. Remember that if the key is marked DELETE, this is different
 than DELETE CHARACTER, DELETE WORD or DELETE LINE. We call this the ABORT KEY.

 You are in COMMAND MODE right now. Locate the ABORT KEY on your keyboard and hit
 it.  As  you  can see, you left COMMAND MODE without executing the command line.
 This key is also used to terminate the operation of a number of other  SCREDITOR
 III COMMANDS and OPERATORS, and its position should be memorized.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE ABORT KEY IS USED RETURN TO SCREEN EDITING  FROM  COMMAND   *
      *   MODE  WITHOUT EXECUTING THE COMMAND LINE, AND TO TO STOP MANY   *
      *   OTHER OPERATIONS WHICH SCREDITOR III PERFORMS.                  *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


EXECUTING THE COMMAND LINE

 When you get ready to execute the command line that you have entered, the cursor
 may be anywhere on the line. When you type NEW LINE, SCREDITOR III automatically
 moves the cursor to the first character on the line before  beginning  execution
 of  the line. Thereafter, any COMMANDS you have entered on the command line will
 execute until the end of the line is reached, or an error occurs.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE CURSOR MAY BE ANYWHERE ON THE COMMAND LINE WHEN  THE  NEW   *
      *   LINE  KEY  IS  ENTERED.  THE ENTIRE COMMAND LINE WILL EXECUTE   *
      *   UNTIL THE END OF THE LINE,  OR  UNTIL  AN  ERROR  OCCURS.  NO   *
      *   COMMAND ON THE LINE AFTER AN ERROR OCCURS WILL BE EXECUTED.     *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 When the last (or only) COMMAND on  the  command  line  is  finished  executing,
 control  returns to SCREEN EDIT MODE. If an error occurs during the execution of
 a COMMAND, control will also return to SCREEN EDIT MODE  after  the  appropriate
 error action (such as posting a message) has occurred.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   AT THE END OF THE  COMMAND  LINE  EXECUTION,  CONTROL  ALWAYS   *
      *   RETURNS TO SCREEN EDIT MODE.                                    *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 As you have already seen, after a command line is executed and  control  returns
 to  SCREEN EDIT MODE, the command line still exists, even though it is no longer
 visible. When you next return to COMMAND MODE, the last line  you  entered  will
 still be there. This means that you can re-edit and/or re-execute a command line
 at any time with the minimum amount of typing.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   AFTER  EXECUTION, THE COMMAND LINE IS NOT LOST, BUT RATHER IS   *
      *   SAVED FOR POSSIBLE LATER RE-EXECUTION OR EDITING.               *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


PLACING OPERATORS IN THE COMMAND LINE

 Up to now, you have only entered COMMANDS  in  the  command  line.  It  is  also
 possible  to  enter  any  SINGLE-KEY  OPERATOR (with one exception which will be
 discussed much later) in the command line  and  have  it  execute  just  like  a
 COMMAND. This is done by preceding the two-letter OPERATOR NAME with an up-arrow
 (Now you know why we always  show  the  two-letter  OPERATOR  NAME  with  an  up
 arrow!).

 To demonstrate this, place the cursor on the first line of your letter and enter
 COMMAND MODE. Now type an up-arrow followed by the two letters 'P' and  'U'.  As
 usual,  clear the rest of the line and execute the line by entering the NEW LINE
 OPERATOR. As you can see, the effect is the same as if you  typed  the  PAGE  UP
 OPERATOR itself!


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   ANY OPERATOR MAY BE ENTERED AS IF IT WERE  A  COMMAND  DURING   *
      *   COMMAND  MODE  BY  PRECEDING  THE  TWO-CHARACTER NAME FOR THE   *
      *   OPERATOR WITH AN UP ARROW. UNDER THIS CONDITION, THE OPERATOR   *
      *   HAS BECOME A COMMAND.                                           *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


MULTIPLE COMMANDS

 We've hinted that SCREDITOR III also allows you to execute multiple COMMANDS  in
 a  single command line entry. To do this, you use a special character called the
 END OF COMMAND CHARACTER, or just (EOC). This character is  defined  during  the
 installation  of  SCREDITOR  III in your system, and is a semi-colon (;) at this
 time. Enter the following command line and sit back and see what happens:


    BO;TO;BO;TO;BO;^SD;TO;^PU;TO


 As you saw, the window moved to the bottom of the buffer, moved to  the  top  of
 the buffer, to the bottom again, to the top again, to the bottom once more, then
 the screen scrolled down one line, then moved to the top  of  the  buffer,  next
 paged up, and finally, moved back to the top of the buffer!

 Now  re-execute  this  command line. Only this time, carefully watch the command
 line itself. After each COMMAND executes, note that the cursor moves to the next
 COMMAND before it is executed. In this way, you can often tell exactly what part
 of the command line is being executed.

 Now  enter  COMMAND MODE and use the CURSOR RIGHT and DELETE CHARACTER OPERATORS
 to delete the first END OF COMMAND character. Now attempt to execute  the  line.
 An error message will be posted. Use your space bar to clear the error message.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   MULTIPLE COMMANDS MUST BE SEPARATED BY  THE  END  OF  COMMAND   *
      *   CHARACTER; OTHERWISE AN ERROR WILL OCCUR.                       *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


LONG COMMAND LINES

 It will occasionally be necessary for you to enter extremely long command lines.
 Go  into  COMMAND  MODE and type a long line of miscellaneous words. Notice what
 happens when you reach the right  side  of  the  screen.  Now  use  your  cursor
 movement OPERATORS and see what the effect is.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHEN  A COMMAND ENTRY IS BEING MADE THAT EXCEEDS THE WIDTH OF   *
      *   THE TERMINAL SCREEN HORIZONTAL SCROLLING  ON  A  BY-CHARACTER   *
      *   BASIS  OCCURS.  AS LONG AS CHARACTERS EXIST TO THE 'RIGHT' OF   *
      *   THE SCREEN, THE CURSOR WILL STAY AT THE  RIGHT  EDGE  OF  THE   *
      *   SCREEN.                                                         *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Use  your  TAB  TO  MARGIN OPERATOR followed by the DELETE TO MARGIN OPERATOR to
 clear the command line. Then use the ABORT KEY to return to SCREEN EDIT MODE for
 the time being.


COMMAND STRUCTURE

 So far in this manual, you have seen that some COMMANDS,  such  as  TO  (TOP  OF
 BUFFER)  and  BO (BOTTOM OF BUFFER) execute by entering their two-letter command
 name with no additional information. Others, such as  CO  (COPY  LINES)  require
 additional  information  for  their  execution. Take a moment now to look at the
 SCREDITOR III OPERATOR REFERENCE CARD. As you can see, there are quite a  number
 of  COMMANDS  supported  by  SCREDITOR III. At first, all of those COMMANDS seem
 rather bewildering. How could you ever learn all of  them  and  the  information
 they need?

 Actually,  as  you  study  the  card,  you will notice that a number of COMMANDS
 require exactly the same type of information. For instance, look at the MO (MOVE
 LINES)  and  CO  (COPY LINES) COMMANDS. As you can see, both look almost exactly
 alike. In fact, the only difference is  the  fact  that  when  you  MOve  lines,
 nothing  is  left  behind, and when you COpy lines, the lines are duplicated. It
 makes sense, then, that these two COMMANDS would look almost then same.  Take  a
 moment  and  compare  FIGURE  FIVE  at the back of this manual to the OPERATOR'S
 REFERENCE CARD.


COMMAND TYPES

 When  you  look at SCREDITOR III's command set in this way, it makes more sense.
 As you can see, each of the groups of COMMANDS in  FIGURE  SIX  require  similar
 information  or perform similar functions. For instance, the ABORT, LOG and EXIT
 COMMANDS all cause control to leave SCREDITOR III.

 The next group down (TYPE TWO COMMANDS)  including  BOTTOM  OF  BUFFER,  TOP  OF
 BUFFER  and  so  on,  can perform their function with no additional information,
 like the first group, but control does not leave SCREDITOR III.

 The next group (TYPE THREE COMMANDS) which includes the FI COMMAND, all  require
 a file name or other string of characters to complete the COMMAND.

 The  CH  COMMAND  (TYPE  FOUR  COMMAND)  is  grouped by itself as it is the only
 COMMAND which requires two strings of characters to execute.

 Looking at the right column, the next group (TYPE  FIVE  COMMANDS)  all  require
 additional  information to execute, but the information may also contain the END
 OF COMMAND character as part of the information itself. For this  reason,  these
 COMMANDS cannot be followed by other COMMANDS on the command line.

 Going  on down the right column, all of the COMMANDS in the next group (TYPE SIX
 COMMANDS) require one piece of numeric information (such as  a  line  or  column
 number) to execute.

 The  next  group  (TYPE  SEVEN  COMMANDS) made up of the CO, CT and MO COMMANDS,
 require two pieces of numeric information to execute.

 The group which includes the CM COMMAND (TYPE EIGHT COMMANDS) require  a  single
 character in addition to the command name to be complete.

 The PR COMMAND is in a group by itself as it needs both a single character and a
 number to be entered with it.

 As additional COMMANDS are added to SCREDITOR III, they will fall  into  one  of
 these  groups.  As  you  can  see  from  studying this table, each COMMAND has a
 structure which is unique to the function which it performs. If you keep this in
 mind,  you  will  almost  automatically  know  what information you will have to
 supply in addition to the command name as you use SCREDITOR III.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   EVERY  COMMAND  IN  SCREDITOR  III  HAS A DEFINITE STRUCTURE.   *
      *   COMMANDS MAY BE GROUPED ACCORDING TO THE TYPE OF  INFORMATION   *
      *   THEY REQUIRE TO EXECUTE.                                        *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 The following paragraphs will go  into  more  detail  on  the  form  which  this
 additional information required by each COMMAND may take.


NUMERIC INFORMATION

 COMMANDS such as GOTO LINE and GOTO PAGE require a number to let them  know  how
 to execute. In the case of GOTO LINE, the number is a line number, and with GOTO
 PAGE it is a page number. In the case of such COMMANDS as the  LEFT  MARGIN  and
 RIGHT  MARGIN  COMMANDS, the number is a column number. The thing to remember is
 that a NUMBER is needed. In SCREDITOR III, whenever a COMMAND needs a number, it
 may take one of four forms:


    #nnnn  -  A  pounds  symbol  followed  by  one or more decimal digits.
    @nnnn  -  An  'at' symbol followed by one or more decimal digits.
    *      -  An asterisk.
           -  Nothing.


 The first form above indicates that an actual line  number,  column  number,  or
 whatever,  is  being used. You saw this form when you used the COPY COMMAND in a
 previous chapter.

 The second form above indicates that a number of lines or columns, or  whatever,
 is being supplied. You will see this form in later chapters of this manual.

 The  third  form  above  indicates  that  the  last line, column, or whatever is
 appropriate, is to be used. Again, you will see this form in later  chapters  in
 this manual.

 The  final  form indicates that the current line, column, etc..., is to be used.
 This form will also be demonstrated in later exercises.


 To see how these forms are used, let's try the CO  COMMAND  again.  Your  NEWDOC
 file  should  still  be  open. If you closed it after the last exercise, open an
 edit session on it now. Once the document is ready to be edited,  turn  on  line
 numbers, move the cursor to line two and execute the following command line:


    CO#9#11


 Scroll  the  text  down  as  needed  and  verify that the lines in question were
 actually  copied.  Note  that  when  the  lines  were  copied,  the  lines  were
 re-numbered  to  keep things in order. When you verify that lines nine, ten, and
 eleven were copied, delete the copied lines so the letter is once  again  as  in
 FIGURE FOUR at the back of this manual. Now execute the following command line:


    CO#9@3

 Note that identically the same action occurred as in the first example. When you
 have verified this, delete the extra lines again and execute the following line:


    CO#9


 As you can see, only line nine was copied. Delete the  extra  line  and  finally
 execute the following line:


    CO#9*


 What happened? Exactly. The entire remainder of the letter from line nine to the
 end was copied.

 Now compare these example command lines with the listing of the  CO  COMMAND  on
 the  OPERATOR'S  REFERENCE  CARD.  As  you can see, the first numeric value must
 always be of the absolute type; i.e., a pounds symbol (#)  followed  by  a  line
 number. The second number in this COMMAND may be any of the four types allowable
 for numeric information. Although one of these four types must  always  be  used
 for numeric information, not all COMMANDS will allow all four types. Look at the
 listing of the LM COMMAND for an example which does not support all four types.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   ALL NUMERIC ENTRIES MUST BE ONE OF THESE FOUR FORMS, ALTHOUGH   *
      *   NOT ALL COMMANDS WILL ALLOW ALL FOUR OF THE FORMS.              *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 STRING INFORMATION...

 String information is made up of any group of characters. Strings might  include
 numbers, letters and/or punctuation. File names are an example of this. Your own
 full name is another example.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   A STRING IS ANY GROUP OF ZERO OR MORE LETTERS, NUMBERS AND/OR   *
      *   PUNCTUATION MARKS.                                              *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 In  SCREDITOR III, every string is entered with a leading and trailing character
 which we call delimiters. The delimiters must  be  the  same,  but  may  be  any
 character which displays on the screen. For instance,


    /SCREDITOR III/
    sSCREDITOR IIIs
    *SCREDITOR III*
    1SCREDITOR III1
    .SCREDITOR III.


 are all the same string as far as SCREDITOR III is concerned, and are all legal.
 The following strings


    SSCREDITOR IIIS
    ISCREDITOR IIII
    /SCREDITOR III.


 are not legal because the leading and trailing characters are not unique and the
 same.  In  the  first example, the letter 'S' would be a valid leading character
 except for the fact that it also appears in SCREDITOR III. The same is true  for
 the  letter  I in the second example. In the third example, different characters
 are used for the leading and trailing characters, which is illegal.


FINDING STRINGS


 To see an example of how strings are used, move your cursor to the first line in
 the letter and execute the following command line:


    FI/Alford/


 Once  Alford  is  found,  hit your ABORT key. Move back to the first line in the
 letter and execute this line:


    FI.Alford.


 ABORT the COMMAND again, move back to the first line and try this command line:


    FIAAlfordA


 Notice  that  an error message was posted this time. Why? Because the letter 'A'
 you used for a delimiter was also the first letter in the name Alford. As far as
 the  FI  COMMAND was concerned, you were trying to find a string of zero length.
 Use your space bar to clear the error message and try this line:


    FIrAlfordr


 This time the error message was different. This  happened  because,  unlike  the
 previous  example  where  the letter 'A' immediately followed the delimiter 'A',
 there were characters between the two delimiters, but the first character  after
 the second delimiter was not an END OF COMMAND (EOC) character.

 Now  try  the  FI  COMMAND to locate various other strings of characters in your
 letter. For now, each time you find a string, use your ABORT  key  to  stop  the
 COMMAND. You will learn all about this COMMAND later. When you are sure that you
 understand how a string is  defined  in  SCREDITOR  III,  and  how  to  use  the
 delimiter  characters, you may ABORT the edit session (using the AB COMMAND, not
 the ABORT key, of course!).

 For the remainder of this manual, a single example of each of the COMMANDS  will
 be  shown.  Where  more than one optional form of the COMMAND exists, it will be
 discussed as to its scope, but no specific examples will be  given.  You  should
 refer  to  your  OPERATOR'S REFERENCE CARD and to FIGURE FIVE to see the various
 forms of each COMMAND and its type as it is discussed.


SUMMARY

 In this section, you have learned pretty much everything you need to know  about
 how  to  enter,  edit and execute COMMANDS. You have also been introduced to the
 structure of SCREDITOR III's COMMANDS, and the types of information  which  they
 need.  You  will  be  learning  even  more  about  this  later, but for now, the
 following are the points to remember:


 1)  NOT ALL  OPERATORS  WORK  IN  COMMAND  MODE,  AND  A  COUPLE  OF  THEM  WORK
     DIFFERENTLY.

 2)  THE ABORT KEY IS USED TO STOP MANY OPERATIONS WHICH SCREDITOR III PERFORMS.

 3)  THE CURSOR MAY BE ANYWHERE ON THE COMMAND LINE WHEN THE NEW LINE OPERATOR IS
     EXECUTED. THE ENTIRE COMMAND LINE WILL EXECUTE UNTIL THE END OF THE LINE, OR
     UNTIL  AN ERROR OCCURS. NO COMMAND ON THE LINE AFTER AN ERROR OCCURS WILL BE
     EXECUTED.

 4)  AT  THE  END OF THE COMMAND LINE EXECUTION, CONTROL ALWAYS RETURNS TO SCREEN
     EDIT MODE.

 5)  AFTER EXECUTION, THE COMMAND LINE IS NOT  LOST,  BUT  RATHER  IS  SAVED  FOR
     POSSIBLE LATER RE-EXECUTION OR EDITING.

 6)  ANY  OPERATOR  MAY BE ENTERED AS IF IT WERE A COMMAND DURING COMMAND MODE BY
     PRECEDING THE TWO-CHARACTER NAME FOR THE OPERATOR WITH AN  UP  ARROW.  UNDER
     THIS CONDITION, THE OPERATOR HAS BECOME A COMMAND.

 7)  MULTIPLE COMMANDS MUST BE SEPARATED BY THE END OF COMMAND  CHARACTER  (EOC);
     OTHERWISE  AN  ERROR  WILL OCCUR. NO TYPE ONE OR TYPE FIVE COMMAND, HOWEVER,
     MAY EVER BE FOLLOWED BY OTHER COMMANDS WHETHER OR NOT THE EOC  CHARACTER  IS
     USED.

 8)  WHEN  A  COMMAND ENTRY IS BEING MADE THAT EXCEEDS THE WIDTH OF THE TERMINAL,
     HORIZONTAL SCROLLING ON A BY-CHARACTER BASIS OCCURS. AS LONG  AS  CHARACTERS
     EXIST  TO  THE 'RIGHT' OF THE SCREEN, THE CURSOR WILL STAY AT THE RIGHT EDGE
     OF THE SCREEN.

 9)  EVERY  COMMAND  IN  SCREDITOR  III HAS A DEFINITE STRUCTURE. COMMANDS MAY BE
     GROUPED ACCORDING TO THE TYPE OF INFORMATION THEY REQUIRE TO EXECUTE.

 10) ALL  NUMERIC  ENTRIES  MUST  BE ONE OF FOUR FORMS, ALTHOUGH NOT ALL COMMANDS
     WILL ALLOW ALL FOUR OF THE FORMS.

 11) A STRING IS ANY GROUP OF ZERO OR MORE LETTERS,  NUMBERS  AND/OR  PUNCTUATION
     MARKS ENCLOSED BY TWO LIKE AND UNIQUE CHARACTERS CALLED DELIMITERS.
