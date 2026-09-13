# TRG15A

> Source: `manuals/misc/MANUAL - FLEX Software Archive - Manual and Documentation Archive - Includes SINST0, SINST1, SINST2.zip!MANUAL.DSK!TRG15A.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                           TRAINING AND USER'S GUIDE

                             MISCELLANEOUS COMMANDS


.DHE
%TRAINING AND USER'S GUIDE                           SCREDITOR III WORD PROCESSOR

                             MISCELLANEOUS COMMANDS


.DFO
"
 (C) 1983, ALFORD & ASSOCIATES                                       PAGE 15-%%%%
.DFE
"
 PAGE 15-%%%%                                       (C) 1983, ALFORD & ASSOCIATES

                                CHAPTER FIFTEEN

 WHAT'S LEFT . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  15-2
 COPYING AND MOVING  . . . . . . . . . . . . . . . . . . . . . . . . . . .  15-2
 FINDING THINGS  . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  15-3
 CHANGING THINGS . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  15-5
 OUT OF MEMORY!!!  . . . . . . . . . . . . . . . . . . . . . . . . . . . .  15-9
 SAVING LINES  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  15-10
 USING THE NEW COMMAND . . . . . . . . . . . . . . . . . . . . . . . . . .  15-11
 MOVING LINES LONG DISTANCES . . . . . . . . . . . . . . . . . . . . . . .  15-12
 KILLING LINES . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  15-14
 NEW SCREEN  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  15-15
 UPPER AND LOWER CASE OPERATORS  . . . . . . . . . . . . . . . . . . . . .  15-16
 AT LAST!  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  15-17
 SUMMARY . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  15-17


 In this chapter, you will learn the remaining SCREDITOR III COMMANDS, other than
 those  which  are  not  associated with printing. Some of these COMMANDS you may
 have already seen and used, others you have not. The new COMMANDS  presented  in
 this chapter are as follows:

                     CH - CHANGE STRINGS      NE - NEW BLOCK
                     FI - FIND STRINGS        NS - NEW SCREEN
                     KL - KILL LINES          SA - SAVE LINES
                     MO - MOVE LINES


 You will also learn the last two single-key OPERATORS:

                            LC - CONVERT TO LOWER CASE
                            UC - CONVERT TO UPPER CASE


WHAT'S LEFT

 At  this  point,  you  have  seen  the  majority of SCREDITOR III's COMMANDS and
 OPERATORS. Although there are quite a number of COMMANDS left, most of them deal
 with printing, which we will be doing in later chapters.

 Open  a  new  edit  session  on  your NEWDOC file. When it is open, turn on line
 numbers, as you will be using them quite a bit in this section.


COPYING AND MOVING

 You used the COPY COMMAND in CHAPTER SIX and SEVEN and should be  familiar  with
 it.  There  is  one  additional point about it, however, which should be touched
 upon.

 You saw in CHAPTER TWELVE that the READ-IN and WRITE-OUT  COMMANDS  operated  on
 full  lines, regardless of margins. The COPY COMMAND is similar in this respect.
 The following example will illustrate this.

 Set your left margin at 20 and your right margin at 30. Now  move  down  to  the
 bottom of the letter and execute the following command line:

    CO#4#7

 As  you  can  see,  the inside address was copied even though it was outside the
 margins. The margins are never honored by the COPY COMMAND (the same applies  to
 the MOVE COMMAND, incidentally).


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE COPY AND  MOVE  COMMANDS  OPERATE  ON  FULL  LINES  ONLY,   *
      *   REGARDLESS  OF MARGINS OR WHETHER OR NOT MULTI-COLUMN MODE IS   *
      *   ACTIVE.                                                         *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Since  you  already  know  how to use the COPY COMMAND, let's take a look at the
 MOVE COMMAND, which functions very much like it.

 Reset the margins to 1 and 61, and then delete the four lines you  just  copied.
 Make  a  note  of  the line number of the current line. Now execute this command
 line:

    MO#4#7

 As you can see, the lines are back like  they  were  before  you  deleted  them.
 Notice  this  time,  however,  that  the line number on the current line has not
 changed. If you move back up to the top of the letter, you  will  see  that  the
 inside address is no longer there.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  MOVE  COMMAND FUNCTIONS IN ALL WAYS IDENTICALLY WITH THE   *
      *   COPY COMMAND EXCEPT THAT THE ORIGINAL LINES  ARE  DELETED  AS   *
      *   THE NEW COPIES ARE BEING MADE.                                  *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Try  using  the  other options of the MOVE COMMAND, referring to your OPERATOR'S
 REFERENCE CARD if necessary, for their forms. When you are comfortable with  the
 way  this  COMMAND works, re-edit the letter to look like FIGURE FOUR again, and
 go on to the next section of this chapter.


FINDING THINGS

 In CHAPTER SEVEN, you were introduced to the FIND COMMAND. In this section,  you
 will learn more about it. As you already know, the FIND COMMAND expects a string
 of characters enclosed in like delimiters for it to be  able  to  operate.  Move
 back  to  the top of the letter if you are not there. Make sure your margins are
 at 1 and 61, and execute the following command line:

    FI/in/

 As you probably anticipated, the first occurrence of  'in'  was  found  in  line
 seven  in 'Virinia'. Notice that this line has become the current line, and that
 the cursor is sitting on the  second  'i'  in  the  word,  which  is  the  first
 character  of  the  search  string  you  entered  with the COMMAND. Unlike other
 COMMANDS which you have executed in the past, however,  you  can  see  that  the
 command  line  was  not  cleared  and  the  tab/margin  line  re-displayed after
 executing the COMMAND. This is because the COMMAND is still executing! Hit  your
 space  bar  and  see  what happens now. Line 11 is now the current line, and the
 cursor is sitting on the 'i' of 'inquiry'. Hit the space bar again. Now line  13
 is the current line and the cursor is sitting on the 'i' in 'processing'.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   ONCE THE FIND COMMAND HAS STARTED, THE SEARCH WILL PAUSE EACH   *
      *   TIME  AN  OCCURRENCE  OF  THE SEARCH STRING HAS BEEN LOCATED.   *
      *   WHEN THE PAUSE OCCURS, THE LINE CONTAINING  THE  STRING  WILL   *
      *   BECOME  THE CURRENT LINE AND THE CURSOR WILL BE PLACED ON THE   *
      *   FIRST CHARACTER OF THE STRING. THE OPERATOR MAY  THEN  DECIDE   *
      *   WHETHER  TO CONTINUE THE SEARCH (BY HITTING THE SPACE BAR) OR   *
      *   ABORT IT (BY HITTING THE ABORT KEY).                            *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Go  ahead  and locate all of the other occurrences of 'in' in the letter. Notice
 in particular that there are three occurrences in line 17, and how SCREDITOR III
 handles them.

 When  you  hit  the  space  bar  after the match in 'Sincerely' in line 24, what
 happened? Use your space bar to clear the error.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHEN NO FURTHER OCCURRENCES OF THE SEARCH STRING  EXIST  FROM   *
      *   THE  CURRENT POSITION TO THE BOTTOM OF THE CURRENT BUFFER, AN   *
      *   ERROR TO THAT EFFECT IS POSTED.                                 *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now try executing the following line:

    FI//

 Use your space bar to clear the error. Although it should be obvious that  there
 must  be some characters between the delimiters for the FIND COMMAND to work, we
 are making this point now because some strings in some  other  COMMANDS  may  be
 null, or consist of zero characters.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE SEARCH STRING IN THE FIND  COMMAND  MUST  CONSIST  OF  AT   *
      *   LEAST ONE CHARACTER.                                            *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now move back to the first line of the letter and set the margins at 30 and  40.
 Then  search for 'in' again. You know that there was an occurrence of the string
 in line 7, and several others in other lines in the letter. So why did the error
 message immediately occur?


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE SEARCH OPERATION IN THE FIND COMMAND IS  LIMITED  TO  THE   *
      *   CURRENT  MARGINS.  FOR AN OCCURRENCE OF A STRING TO BE FOUND,   *
      *   IT MUST EXIST ENTIRELY WITHIN THE CURRENT MARGINS.              *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Clear  the  error  message, reset the margins to 1 and 61, and try the following
 COMMAND:

    FI/IN/

 Again you got an error message. Why this time?


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  CASE  OF  ALL LETTERS IN THE SEARCH STRING IS IMPORTANT.   *
      *   FOR A MATCH TO BE FOUND, THE CHARACTERS MUST  MATCH  IN  BOTH   *
      *   TYPE AND CASE.                                                  *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 In other words, the FIND COMMAND will try to find EXACTLY what you typed between
 the delimiters, and will only try to find it within the current margins.

 Try  finding other strings of characters. Try various combinations of margins to
 limit the search area, and try strings with both upper and lower  case  letters.

 When you are comfortable with the operation of the FIND COMMAND, go  on  to  the
 next section.


CHANGING THINGS

 It  was  important that you understand the operation of the FIND COMMAND and its
 limitations, since the same operations take place with the search  part  of  the
 CHANGE  COMMAND.  Knowing  the FIND COMMAND, you know most of the CHANGE COMMAND
 automatically!

 Look over your letter before you continue.  Make  sure  it  looks  exactly  like
 FIGURE  FOUR before you continue. If not, edit it as necessary. This should be a
 simple job by now with as much of the capabilities of SCREDITOR III as you  know
 now.

 Now execute the following command line:

    CH/in/IN/

 The  pause  which  occurs when the first occurrence of 'in' is located should be
 familiar by now, since you have seen it so  many  times  in  studying  the  FIND
 COMMAND.  Before  we  go  on,  by  the way, in the above command line, the first
 string is referred to as the search string, the second is called the replacement
 string, and an occurrence of the first string in the buffer is called the target
 string.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHEN  THE  CHANGE COMMAND LOCATES AN OCCURRENCE OF THE SEARCH   *
      *   STRING, IT WILL MAKE THE LINE IN WHICH  IT  WAS  LOCATED  THE   *
      *   CURRENT  LINE  AND PLACE THE CURSOR ON THE FIRST CHARACTER OF   *
      *   THE STRING IN THE SAME MANNER AS THE FIND COMMAND.              *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Unlike the FIND COMMAND, however, the pause has occurred for a different reason.
 This time, the CHANGE COMMAND wants to know what to do with this  occurrence  of
 the  string.  You  have four available options. Let's use the first option first
 (makes sense, huh!). Type the letter 'Y' (upper  or  lower  case  is  ok).  What
 happened!?  The letters 'in' were changed to 'IN', and the cursor is now sitting
 on the first character after the replacement string (IN).


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHEN  THE  PAUSE  OCCURS,  TYPING THE LETTER Y WILL CAUSE THE   *
      *   CHANGE COMMAND TO SUBSTITUTE THE REPLACEMENT STRING  FOR  THE   *
      *   TARGET  STRING.  THE  CURSOR WILL THEN BE PLACED ON THE FIRST   *
      *   CHARACTER AFTER THE REPLACED STRING AND PAUSE AGAIN.            *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 If  you  had hit the ABORT key instead of the letter 'Y', the COMMAND would have
 terminated without making a change. Hit the  space  bar  now.  The  next  target
 string,  occurring  in line 11, will be located and another pause will occur. If
 you had hit the ABORT key instead of the  space  bar,  the  COMMAND  would  have
 terminated.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHEN  THE  REPLACEMENT OCCURS, ANOTHER PAUSE OCCURS TO SEE IF   *
      *   THE  OPERATOR  WISHES  TO  CONTINUE  THE  SEARCH  AND  CHANGE   *
      *   OPERATION.  THE  SPACE  BAR  WILL CONTINUE THE OPERATION. THE   *
      *   ABORT KEY WILL ABORT THE OPERATION.                             *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now  hit any key other than the letter 'Y' or the ABORT KEY. This time no change
 occurred.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IF ANY KEY OTHER THAN THE LETTER Y OR THE ABORT KEY IS STRUCK   *
      *   DURING THE PAUSE AFTER THE SEARCH AND BEFORE THE REPLACE,  NO   *
      *   REPLACEMENT WILL BE MADE AND THE SEARCH WILL RESUME.            *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now hit the ABORT key to  stop  the  operation.  Go  back  and  change  the  one
 occurrence  of  'IN'  back  to  'in'.  Now  move  back to the top of the letter.
 Re-enter the same command line as before (CH/in/IN), but  this  time,  when  the
 pause  occurs after the first search, type the letter 'C' (again, 'C' or 'c' may
 be typed). Don't be alarmed at the result!


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IF  THE  LETTER  C  IS  TYPED  IN RESPONSE TO THE PAUSE AFTER   *
      *   SEARCH, OR IN  RESPONSE  TO  THE  PAUSE  AFTER  REPLACE,  ALL   *
      *   OCCURRENCES  OF  THE  TARGET/SEARCH  STRING  MATCH-UP WILL BE   *
      *   AUTOMATICALLY CHANGED THROUGHOUT THE REMAINDER OF THE CURRENT   *
      *   BUFFER.                                                         *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 As you watched this happening on the screen, you saw that  the  same  operations
 were  occurring  as  before, in that the screen display changed each time before
 the actual replacement took place. The only difference was  that  you  were  not
 consulted  about  the changes. Go back to the start of the letter and change all
 occurrences of 'IN' back to 'in' (CH/IN/in/) before proceeding.

 This automatic capability that you just used allows  many  changes  to  be  made
 without   the  operator  having  to  'baby-sit'  the  goings-on,  and  is  quite
 convenient; however, like anything automatic, things can get out  of  hand.  For
 instance,  if  you  changed all occurrences of 'the' in a particular document to
 'THE', you would get into trouble with words like 'theater',  'theme',  'these',
 etc...

      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   CAUTION SHOULD BE EXERCISED  IN  THE  USE  OF  THE  AUTOMATIC   *
      *   CHANGE OPTION, AS THINGS MAY GET CHANGED WHICH SHOULDN'T HAVE   *
      *   BEEN.                                                           *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Because of this, SCREDITOR III allows you to stop the automatic operation at any
 time. Go back to the start of the letter and once again change  all  occurrences
 of  'in'  to  'IN'. This time, however, when you respond to the first pause with
 the letter 'C' and the automatic operation starts, quickly type the  ABORT  key.
 As you can see, the change operation was indeed aborted!


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE ABORT KEY WILL STOP THE AUTOMATIC CHANGE OPTION AND ABORT   *
      *   THE CHANGE OPERATION AT ANY TIME.                               *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Up to now, you have been making changes in LINE EDIT MODE.  The  CHANGE  COMMAND
 also works in TEXT EDIT MODE. Before you see how, though, select TEXT EDIT MODE,
 LEFT JUSTIFY MODE, and MELD the three paragraphs in the  letter  into  a  single
 paragraph.  Don't  worry yet about the other mistakes in the letter, as you will
 be correcting them later. After you have MELD'ed the  three  paragraphs,  select
 ALL JUSTIFY MODE.

 Now  that you are ready, go to the top of the letter and execute the same CHANGE
 COMMAND that you have been using (CH/in/IN). When the first search pause occurs,
 type the letter 'Y'. This will change 'Virinia' to 'VirINia'. Hit the space bar.
 Now you are pointing to the word 'inquiry' in line 11. Look at the single  large
 paragraph   of   which  line  11  is  the  first  line.  At  this  time,  it  is
 left-justified. Now hit the letter 'Y'. What happened? That's right.  After  the
 string  was changed, the paragraph was re-justified to the current justification
 mode. ABORT the change now. Now go back to the top of the letter and execute the
 following command line:

    CH/Legree/LeGree/

 When  the  pause  occurs,  type 'Y' and see what happens. OOPS! Abort the change
 operation now.

      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHEN A CHANGE IS MADE TO TEXT, THE CURRENT MARGINS, EDIT MODE   *
      *   AND JUSTIFICATION MODE ARE HONORED.  A  PARAGRAPH  MELD  WILL   *
      *   OCCUR AFTER THE CHANGE IF TEXT EDIT MODE IS ACTIVE.             *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 The  reason  for  this  is that, even though you cannot see it, SCREDITOR III is
 actually using the same INSERT CHARACTER MODE routines to make the change as you
 use when you type the ^IC OPERATOR. Like doing an insert character in the middle
 of a table in TEXT EDIT MODE, the CHANGE COMMAND will screw things up if you are
 not careful!

 Go  ahead  and  try the CHANGE COMMAND to make various changes to your text. Try
 various margin settings, edit modes, character cases, etc..., to learn the power
 and  the  limitations  of  this  COMMAND.  When  you are through, ABORT the edit
 session, and open a new edit session on the NEWDOC file.


OUT OF MEMORY!!!

 So  far,  you  have  been  dealing  with a short letter which would fit entirely
 within memory at one time; that is, a document which was small enough to be able
 to  edit  at both ends of it in the same edit session with only the COMMANDS you
 have already learned. This will probably not be the case when you actually start
 doing  serious  work  with SCREDITOR III. What to do when you run out of memory,
 therefore, is very important.

 At this point, you should have started a new edit session on your NEWDOC letter.
 If not, open a new edit session now. Once the file is open, move down to line 21
 and execute the following command line

    CO#1#15

 over and over until the BUFFER FULL error message comes up. At this  point,  you
 have filled up almost all of the available space in the current edit buffer. Try
 doing an insert line. If SCREDITOR III lets you, keep inserting lines using  the
 INSERT LINE OPERATOR until the BUFFER FULL message comes up again.

 Now, the buffer is REALLY FULL! Actually, the first full message came up because
 there wasn't enough room to continue with the COPY COMMAND; i.e., the next  line
 to  be  copied  was  too long to fit in the room left. Therefore, we used INSERT
 LINE to use up whatever little room was left.

 Now try to execute a TOP OF BUFFER COMMAND. Error again, huh. Now try the BOTTOM
 OF  BUFFER  COMMAND. Another error. Try CURSOR UP. Still an error. About now you
 might be getting worried. Try CURSOR DOWN. Still an error. Try the  GO  COMMAND.
 Still  an  error.  Try the GP COMMAND. More errors. By now, you might be getting
 desperate.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHEN THE BUFFER FILLS, SCREDITOR III WILL NOT  ALLOW  YOU  TO   *
      *   MOVE  FROM  THE CURRENT LINE UNTIL YOU HAVE SOMEHOW MADE SOME   *
      *   ROOM.                                                           *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Since  you can't move off of the current line no matter how you try, what should
 you do!? Somehow, you must make some room. But how?

 There are three ways to make room. First, you could  delete  the  current  line.
 This  might  not  always  work, though, since the amount of memory which is made
 available is determined by the length of the line. Deleting a very  short  line,
 or  an  empty  line  might  not  make  enough space to make SCREDITOR III happy.
 Deleting several lines would work, but you  are  throwing  away  what  you  have
 already  done.  In addition, if you were on the last line in the buffer when you
 ran out of memory, you could only delete the text in that line, and  that  might
 not  make enough room to move anyway, so generally you can forget deleting lines
 to make room.


SAVING LINES

 The second way is to put part of what you have done into your output  file.  Try
 the following command line:

    SA#10

 Once  the  COMMAND executes, try moving around again. Hey! Now you can move once
 more. So what happened?

 This COMMAND told SCREDITOR III to save all lines from the start of  the  buffer
 through  line  10  to  the  output file. If you look at the OPERATOR'S REFERENCE
 CARD, you could  have  specified  that  10  lines  be  saved  (SA@10),  or  that
 everything  from  the  start of the current buffer up to, but not including, the
 current line be saved (SA*), or that the first line in  the  current  buffer  be
 saved (SA with a blank option).


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE SAVE COMMAND SAVES LINES WHICH EXIST BEFORE  THE  CURRENT   *
      *   LINE.  THE 'TO THE END' OPTION FOR THIS COMMAND IS DEFINED AS   *
      *   ALL LINES BEFORE THE CURRENT LINE.                              *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 So  what  if  the current line IS the top line in the current buffer when memory
 fills up? Since the SAVE COMMAND cannot save the current line, how can you  make
 room?  In  this exceptional case, deleting the current line is the only way, and
 it will always work since the only way the current buffer can fill  up  in  this
 condition  is  by simply typing a bunch of characters on the line. At least this
 deletion will not waste a lot of work. Once the current line is deleted, you can
 move  your  cursor  down  and make room as necessary. Of course, then you cannot
 complete the work you were doing there since that part of  your  buffer  is  now
 sitting  in  the output file. Under this condition, LOGGING the edit session and
 starting a new edit session is the only good way to do.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHEN THE BUFFER FILLS AND THE CURRENT LINE IS THE FIRST  LINE   *
      *   IN THE BUFFER, IT IS RECOMMENDED THAT YOU SIMPLY LOG THE EDIT   *
      *   SESSION AND START A NEW EDIT SESSION.                           *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now  that you have saved some lines to your output file, move down to the bottom
 of the buffer and execute the following command line:

    SA#100

 Now do some more copying until another BUFFER FULL message  appears.  When  this
 happens,  LOG the edit session. Your NEWDOC file as now a LOT larger than it was
 before, which is OK, because you will next be learning how to edit  a  file  too
 large for memory!


USING THE NEW COMMAND

 In the last exercise, you created a fairly big file. In this exercise, you  will
 learn  the special skills needed to edit such a file. Open a new edit session on
 your NEWDOC file. Once it is open, and before going  on,  take  a  look  at  the
 banner  line.  A  new  status  flag  which  you  haven't seen up to now is being
 displayed. The PR flag indicates that you have a 'PARTIAL READ' situation; i.e.,
 that the entire file has not been read from disk.

 This  does  not mean, though, that you are already out of memory. When the input
 file was being read into the current buffer, SCREDITOR III stopped  in  time  to
 leave  you  enough  room to add a reasonable number of lines and to make changes
 before the buffer would fill again.

 Where you are making a large number of changes to many lines  in  a  file,  this
 'PARTIAL  READ'  might  be  quite  important.  When  you reach the bottom of the
 current buffer, for instance, you cannot simply say 'job complete!' and LOG  the
 edit  session,  since  this  flag  tells  you  that there are more lines in your
 document that you haven't looked at yet. To get to these lines, you need to make
 some  room by saving some lines to the output file. The SAVE COMMAND won't work,
 since it only saves lines, but doesn't bring in any more.  For  this  situation,
 you would use the NEW COMMAND.

 The NEW COMMAND works in two parts. The first operation it performs is identical
 to the SAVE COMMAND which you have already  seen.  The  second  thing  it  does,
 however,  is different. Once it has made room in the current buffer, it attempts
 to read more lines in from the input file.

 Attempts, by the way, is the right word because it first sees if there is  room.
 This  time,  though,  it is not checking for any room at all, but rather whether
 there is room to read in more lines and still leave room for  you  to  add  some
 lines,  in the same way as when the file was first opened and read. If a minimum
 amount of extra room does not exist after the save part  of  its  operation,  it
 will not read any lines from the input file, but rather return control to SCREEN
 EDIT MODE without posting any errors. For this reason, whenever  you  issue  the
 NEW  COMMAND,  watch the total lines count in the banner to see if any new lines
 have been read from the input file.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE NEW COMMAND WILL SAVE THE SPECIFIED NUMBER  OF  LINES  TO   *
      *   THE  OUTPUT  FILE,  AND  THEN, IF THERE IS EDITING ROOM LEFT,   *
      *   WILL READ MORE LINES FROM THE INPUT FILE. THE INPUT WILL STOP   *
      *   TO  LEAVE  ROOM  FOR ADDITIONAL EDITING. IF INSUFFICIENT ROOM   *
      *   EXISTS, THE LINES SPECIFIED IN THE COMMAND WILL BE SAVED, BUT   *
      *   NO NEW LINES WILL BE READ FROM THE INPUT FILE.                  *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now  you  know  how  to  edit a file larger than memory, even though you haven't
 really tried it yet. A thought should occur to you at this point. How do you  go
 back  to lines which have already been sent to the output file by doing a NEW or
 SAVE COMMAND? The answer is...you can't. Can't, that is, except by  logging  the
 edit session and starting a new edit session.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   ONCE LINES HAVE BEEN SENT TO THE OUTPUT FILE BY  THE  USE  OF   *
      *   THE  NEW  OR SAVE COMMANDS, THEY CANNOT BE MANIPULATED DURING   *
      *   THE CURRENT EDIT SESSION. A NEW EDIT SESSION MUST BE  STARTED   *
      *   TO GO BACK TO SUCH LINES.                                       *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 This  is a real limitation under some conditions, and we know it. There are ways
 in which SCREDITOR III could have been written to move back to these lines,  but
 the amount of time involved on many systems would have been about the same as if
 the edit session were logged and re-opened, and the extra  disk  space  required
 would  have been exorbitant. For larger systems running very fast, high-capacity
 disks, the waste of time and space wouldn't have been a problem,  but  SCREDITOR
 III  was  written to run on as many systems as possible, and rather than write a
 program which could not run at all on some systems, we chose to write  one  that
 would work reasonably well on all of them. Enough editorializing. Back to work!


MOVING LINES LONG DISTANCES

 Very  well, since you can't go back, how do you copy and move lines? Well, there
 is a way (as usual!). Let's say that you wanted a copy  of  your  monthly  sales
 report  (remember your file named TABLE created in CHAPTER TEN?) at the start of
 the current buffer. How would you do it? With a READ-IN COMMAND, of course. Open
 a read-in on the TABLE file. When the file is open, insert all of it before line
 17 in the current buffer. Since all of the file was inserted, you do not have to
 close the file, as you should know.

 Now you have a table at the start of the current buffer. But you decide that you
 really wanted it at the end of the current file instead. Well, in this case, you
 could  simply  delete the lines you just read in, do a NEW COMMAND to get to the
 rest of the file and then re-insert the TABLE file. Let's assume that  the  file
 TABLE  does  not  exist, though, and that you had actually just typed the lines.
 How would you do it now?

 The fact that we just did a read-in to put the table there  should  give  you  a
 hint.  That's right! Open a write-out file, write out the lines, close the file,
 do the NEW COMMAND, re-open the file as a read-in, insert the lines, then delete
 the file! Now you SSB and FLEX users know why the OD COMMAND is included in your
 version of SCREDITOR III!

 Execute the following command line. OS-9 users should be sure  to  put  a  space
 after the file name or an error will occur:

    GO#17;OW/TLINES/;WE#25;CF;BO;NE*;BO

 Sit  back  and  watch what happens! First, line 17, the first line of the table,
 becomes the current line (GO#17;) The next COMMAND then executes and a write-out
 file  is  created  (OW/TLINES/; or OW/TLINES /; for OS-9 users). After this, the
 table is extracted to the file just created (WE#25;). Then the  file  is  closed
 (CF;),  and the last screen in the buffer comes up (BO;). Then everything except
 the last screen of lines is saved to the output file and  more  lines  from  the
 input file are read (NE*;). Finally, another BO COMMAND puts us at the bottom of
 the buffer again, only this time, we are in the last lines in the file.


         (Author's note: I find it fascinating  to  watch  command  lines
         like  this with multiple COMMANDS execute. How that cursor knows
         where it's supposed to be is mind-boggling!).


 At this point, the PR status  flag  should  be  out.  If  not,  execute  another
 BO;NE*;BO  command  sequence. When you are at the end of the file (bottom of the
 buffer after the PR flag is out), move down to the last line in the  buffer  and
 hit the NEW LINE OPERATOR. Now execute the following command line. Note that two
 lines are shown. The first is for SSB and FLEX users, the second for OS-9 users:

    OR/TLINES/;RI*;OD/TLINES/

    OR/TLINES /;RI*;OS/DEL TLINES

 OS-9 users will get a 'Waiting...' message after the OS COMMAND, and should  use
 the space bar to clear it and return to SCREEN EDIT MODE.

 There  you have it. You have just moved a block of lines past the 'NEW LINE'! If
 this seems rather slow, just remember that once you get used to doing this  sort
 of thing, it will generally take less time to do it than to talk about it.

 You  should  now ABORT the current edit session, since we won't be using the new
 version of this file. Take a moment after you do so to re-read this  section  of
 this  chapter,  since a lot of material was presented without a lot of examples.
 When you feel that you understand what was presented, you may go on.


KILLING LINES

 Open a new edit session on your NEWDOC  file.  It's  time  to  get  this  letter
 finished!  When the edit session is open, move the cursor to line 31 and execute
 the following command line:

    KL#50

 As you can see, there is an easier way to get rid of a large block of lines than
 deleting  them one-at-a-time with the ^DL OPERATOR. The KILL LINES (KL) COMMAND,
 supports the same options as the WRITE-COPY and  WRITE-EXTRACT  COMMANDS;  i.e.,
 the  range  is  from the current line, and all four numeric types are supported.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE KILL LINES COMMAND IS USED TO DELETE  A  LARGE  BLOCK  OF   *
      *   LINES  WHOSE  SIZE  MAKES THE USE OF THE DELETE LINE OPERATOR   *
      *   IMPRACTICAL. ONCE  THE  LINES  ARE  DELETED,  THEY  ARE  GONE   *
      *   FOREVER, SO BE CAREFUL!                                         *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 For instance, let's get rid of all of those extra lines in our letter. Issue the
 KL  COMMAND  which would do this in one piece. You should have put the cursor on
 line 31 and used 'KL*' to kill the rest of the buffer.


 Now move to the first line in the buffer and issue a NEW COMMAND. The option you
 use  is  irrelevant  since you are on the first line in the buffer. Your command
 line might look like:

    TO;NE*

 At  this  point, the PR flag in the status line should be out. Now go to line 31
 (GO#31) and kill all the rest of the lines in the buffer again. If the  PR  flag
 is  still on, keep doing this procedure until you have only 31 lines left in the
 buffer. At this point, your text should look like FIGURE FOUR again.


NEW SCREEN

 Some terminals have a special key marked CLEAR SPACE or CLEAR.  If  yours  does,
 try  hitting  it.  If the bell rings and nothing else happened, fine! If, on the
 other hand, you happen to have a terminal which does  what  that  key  says  and
 doesn't  tell  the  computer  about  it (like the Televideo 912), you now have a
 completely blank screen (the first time it happened to  me,  I  also  had  other
 problems,  said  problems requiring the use of a washing machine and bath tub!).
 Very carefully, hit the ESCAPE OPERATOR to put you  in  COMMAND  MODE,  type  NS
 followed  by  the  usual  DELETE  TO  MARGIN and NEW LINE OPERATORS. Voila! Your
 screen should now be back to normal. If not, abort the edit session and give  me
 a call. I can recommend a good laundry detergent and bubble bath!

 Seriously,  a  number  of  terminals  DO  have  such  keys,  and they DO get hit
 occassionally. The above somewhat tongue-in-cheek presentation  is  the  way  to
 restore  a  blown  screen  display using the NEW SCREEN (NS) COMMAND. Power line
 glitches can also occasionally cause a trashed screen. You will  probably  never
 use this COMMAND, but it is nice to know it's there!


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE NEW SCREEN COMMAND FIRST CLEARS AND THEN RE-WRITES  EVERY   *
      *   CHARACTER ON THE SCREEN.                                        *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


UPPER AND LOWER CASE OPERATORS

 One  final  convenience  which is included in SCREDITOR III should be mentioned.
 This is the inclusion of the UPPER CASE and LOWER CASE OPERATORS. This OPERATORS
 do  just  what  you  might  think  they  would from their names; that is convert
 character case.

 For example, move your cursor to line 4 and type the ^UC OPERATOR over and over.
 As  you  can  see,  each  time  you  enter it, the character under the cursor is
 converted from lower case to upper case. Keep hitting  the  OPERATOR  until  the
 right  margin  is reached. Notice that, like CURSOR RIGHT, movement stops at the
 right margin.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  UPPER  CASE OPERATOR CAUSES SCREDITOR III TO EXAMINE THE   *
      *   CHARACTER UNDER THE CURSOR. IF  IT  IS  A  LOWER  CASE  ALPHA   *
      *   CHARACTER,  THE CHARACTER WILL BE CONVERTED TO UPPER CASE. IF   *
      *   NOT, NO CHANGE WILL BE  MADE.  AFTER  THE  INSPECT-AND-CHANGE   *
      *   OPERATION,  THE  CURSOR  IS  MOVED  TO  THE RIGHT ONE COLUMN.   *
      *   MOVEMENT STOPS AT THE RIGHT MARGIN.                             *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now return to the left margin and use the ^LC  OPERATOR  in  the  same  way  and
 notice the difference.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE LOWER CASE OPERATOR CAUSES SCREDITOR III TO  EXAMINE  THE   *
      *   CHARACTER  UNDER  THE  CURSOR.  IF  IT IS AN UPPER CASE ALPHA   *
      *   CHARACTER, THE CHARACTER WILL BE CONVERTED TO LOWER CASE.  IF   *
      *   NOT,  NO  CHANGE  WILL  BE MADE. AFTER THE INSPECT-AND-CHANGE   *
      *   OPERATION, THE CURSOR IS  MOVED  TO  THE  RIGHT  ONE  COLUMN.   *
      *   MOVEMENT STOPS AT THE RIGHT MARGIN.                             *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


AT LAST

 At  this  point, you have used every COMMAND and OPERATOR available in SCREDITOR
 III except for the ten  which  are  involved  with  final  page  formatting  and
 printing  the  final document. Use all that you have learned to make your letter
 look just like FIGURE SIX in the back of this manual. See how long it takes  you
 to  do  so. The margins, by the way, should remain at 1 and 61. BE SURE TO WATCH
 YOUR EDITING MODE! When you are done, LOG the edit session.


SUMMARY

 In this chapter, you have learned about the use of the rest of the COMMANDS  and
 OPERATORS  available  in  SCREDITOR  III,  except  those which are more directly
 involved in formatting  the  printed  page  and  the  actual  printing  COMMANDS
 themselves. The important points to remember from this chapter are:


 1)  THE COPY AND MOVE COMMANDS OPERATE ON FULL LINES ONLY, REGARDLESS OF MARGINS
     OR WHETHER OR NOT MULTI-COLUMN MODE IS ACTIVE.

 2)  THE  MOVE  COMMAND  FUNCTIONS  IN ALL WAYS IDENTICALLY WITH THE COPY COMMAND
     EXCEPT THAT THE ORIGINAL LINES ARE DELETED AS THE NEW COPIES ARE BEING MADE.

 3)  ONCE THE FIND COMMAND HAS STARTED,  THE  SEARCH  WILL  PAUSE  EACH  TIME  AN
     OCCURRENCE OF THE SEARCH STRING HAS BEEN LOCATED. WHEN THE PAUSE OCCURS, THE
     LINE CONTAINING THE STRING WILL BECOME THE CURRENT LINE AND THE CURSOR  WILL
     BE PLACED ON THE FIRST CHARACTER OF THE STRING. THE OPERATOR MAY THEN DECIDE
     WHETHER TO CONTINUE THE SEARCH (BY HITTING THE SPACE BAR) OR  ABORT  IT  (BY
     HITTING THE ABORT KEY).

 4)  WHEN  NO  FURTHER  OCCURRENCES  OF  THE SEARCH STRING EXIST FROM THE CURRENT
     POSITION TO THE BOTTOM OF THE CURRENT BUFFER, AN ERROR  TO  THAT  EFFECT  IS
     POSTED.

 5)  THE  SEARCH  STRING  IN  THE  FIND  COMMAND  MUST  CONSIST  OF  AT LEAST ONE
     CHARACTER.

 6)  THE SEARCH OPERATION IN THE FIND COMMAND IS LIMITED TO THE CURRENT  MARGINS.
     FOR AN OCCURRENCE OF A STRING TO BE FOUND, IT MUST EXIST ENTIRELY WITHIN THE
     CURRENT MARGINS.

 7)  THE CASE OF ALL LETTERS IN THE SEARCH STRING IS IMPORTANT. FOR A MATCH TO BE
     FOUND, THE CHARACTERS MUST MATCH IN BOTH TYPE AND CASE.

 8)  WHEN  THE CHANGE COMMAND LOCATES AN OCCURRENCE OF THE SEARCH STRING, IT WILL
     MAKE THE LINE IN WHICH IT WAS LOCATED THE CURRENT LINE AND PLACE THE  CURSOR
     ON THE FIRST CHARACTER OF THE STRING IN THE SAME MANNER AS THE FIND COMMAND.

 9)  WHEN THE POST-SEARCH PAUSE OCCURS, TYPING THE LETTER Y WILL CAUSE THE CHANGE
     COMMAND TO SUBSTITUTE THE REPLACEMENT STRING  FOR  THE  TARGET  STRING.  THE
     CURSOR  WILL THEN BE PLACED ON THE FIRST CHARACTER AFTER THE REPLACED STRING
     AND PAUSE AGAIN.

 10) WHEN THE REPLACEMENT OCCURS, ANOTHER PAUSE OCCURS TO  SEE  IF  THE  OPERATOR
     WISHES  TO  CONTINUE  THE  SEARCH  AND  CHANGE OPERATION. THE SPACE BAR WILL
     CONTINUE THE OPERATION. THE ABORT KEY WILL ABORT THE OPERATION.

 11) IF ANY KEY OTHER THAN THE LETTER Y, C OR THE ABORT KEY IS STRUCK DURING  THE
     PAUSE  AFTER  THE SEARCH AND BEFORE THE REPLACE, NO REPLACEMENT WILL BE MADE
     AND THE SEARCH WILL RESUME.

 12) IF THE LETTER C IS TYPED IN RESPONSE  TO  THE  PAUSE  AFTER  SEARCH,  OR  IN
     RESPONSE  TO  THE  PAUSE AFTER REPLACE, ALL OCCURRENCES OF THE TARGET/SEARCH
     STRING MATCH-UP WILL BE AUTOMATICALLY CHANGED THROUGHOUT  THE  REMAINDER  OF
     THE CURRENT BUFFER.

 13) CAUTION  SHOULD  BE  EXERCISED IN THE USE OF THE AUTOMATIC CHANGE OPTION, AS
     THINGS MAY GET CHANGED WHICH SHOULDN'T HAVE BEEN.

 14) THE ABORT KEY WILL STOP THE AUTOMATIC CHANGE OPTION  AND  ABORT  THE  CHANGE
     OPERATION AT ANY TIME.

 15) WHEN  A  CHANGE  IS  MADE  TO  TEXT,  THE  CURRENT  MARGINS,  EDIT  MODE AND
     JUSTIFICATION MODE ARE HONORED. A PARAGRAPH MELD WILL OCCUR AFTER THE CHANGE
     IF TEXT EDIT MODE IS ACTIVE.

 16) WHEN  THE  BUFFER  FILLS,  SCREDITOR III WILL NOT ALLOW YOU TO MOVE FROM THE
     CURRENT LINE UNTIL YOU HAVE SOMEHOW MADE SOME ROOM.

 17) THE SAVE COMMAND SAVES LINES WHICH EXIST BEFORE THE CURRENT  LINE.  THE  'TO
     THE END' OPTION FOR THIS COMMAND IS DEFINED AS ALL LINES 'ABOVE' THE CURRENT
     LINE.

 18) WHEN THE BUFFER FILLS AND THE CURRENT LINE IS THE FIRST LINE IN THE  BUFFER,
     IT  IS RECOMMENDED THAT YOU SIMPLY LOG THE EDIT SESSION AND START A NEW EDIT
     SESSION.

 19) THE NEW COMMAND WILL SAVE THE SPECIFIED NUMBER OF LINES TO THE OUTPUT  FILE,
     AND THEN, IF THERE IS EDITING ROOM LEFT, WILL READ MORE LINES FROM THE INPUT
     FILE. THE  INPUT  WILL  STOP  TO  LEAVE  ROOM  FOR  ADDITIONAL  EDITING.  IF
     INSUFFICIENT  ROOM EXISTS, THE LINES SPECIFIED IN THE COMMAND WILL BE SAVED,
     BUT NO NEW LINES WILL BE READ FROM THE INPUT FILE.

 20) ONCE LINES HAVE BEEN SENT TO THE OUTPUT FILE BY THE USE OF THE NEW  OR  SAVE
     COMMANDS,  THEY CANNOT BE MANIPULATED DURING THE CURRENT EDIT SESSION. A NEW
     EDIT SESSION MUST BE STARTED TO GO BACK TO SUCH LINES.

 21) THE KILL LINES COMMAND IS USED TO DELETE A LARGE BLOCK OF LINES  WHOSE  SIZE
     MAKES  THE  USE  OF THE DELETE LINE OPERATOR IMPRACTICAL. ONCE THE LINES ARE
     DELETED, THEY ARE GONE FOREVER, SO BE CAREFUL!

 22) THE NEW SCREEN COMMAND FIRST CLEARS AND THEN RE-WRITES  EVERY  CHARACTER  ON
     THE SCREEN.

 23) THE  UPPER CASE OPERATOR CAUSES SCREDITOR III TO EXAMINE THE CHARACTER UNDER
     THE CURSOR. IF IT IS A LOWER CASE ALPHA CHARACTER,  THE  CHARACTER  WILL  BE
     CONVERTED  TO  UPPER  CASE.  IF  NOT,  NO  CHANGE  WILL  BE  MADE. AFTER THE
     INSPECT-AND-CHANGE OPERATION, THE CURSOR IS MOVED TO THE RIGHT  ONE  COLUMN.
     MOVEMENT STOPS AT THE RIGHT MARGIN.

 24) THE  LOWER CASE OPERATOR CAUSES SCREDITOR III TO EXAMINE THE CHARACTER UNDER
     THE CURSOR. IF IT IS AN UPPER CASE ALPHA CHARACTER, THE  CHARACTER  WILL  BE
     CONVERTED  TO  LOWER  CASE.  IF  NOT,  NO  CHANGE  WILL  BE  MADE. AFTER THE
     INSPECT-AND-CHANGE OPERATION, THE CURSOR IS MOVED TO THE RIGHT  ONE  COLUMN.
     MOVEMENT STOPS AT THE RIGHT MARGIN.
