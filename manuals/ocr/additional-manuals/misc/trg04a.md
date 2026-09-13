# TRG04A

> Source: `manuals/misc/MANUAL - FLEX Software Archive - Manual and Documentation Archive - Includes SINST0, SINST1, SINST2.zip!MANUAL.DSK!TRG04A.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                           TRAINING AND USER'S GUIDE

                            BASIC EDITING FUNCTIONS


.DHE
%TRAINING AND USER'S GUIDE                           SCREDITOR III WORD PROCESSOR

                            BASIC EDITING FUNCTIONS


.DFO
"
 (C) 1983, ALFORD & ASSOCIATES                                        PAGE 4-%%%%
.DFE
"
PAGE 4-%%%%                                         (C) 1983, ALFORD & ASSOCIATES
                                 CHAPTER FOUR

 GETTING STARTED . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   4-2
 OVERTYPING  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   4-2
 INSERTING CHARACTERS IN LINE EDIT MODE  . . . . . . . . . . . . . . . . .   4-2
 INSERTING CHARACTERS IN TEXT EDIT MODE  . . . . . . . . . . . . . . . . .   4-4
 INSERTING SPACES IN LINE EDIT MODE  . . . . . . . . . . . . . . . . . . .   4-6
 DELETING CHARACTERS IN LINE EDIT MODE . . . . . . . . . . . . . . . . . .   4-7
 DELETING CHARACTERS IN TEXT EDIT MODE . . . . . . . . . . . . . . . . . .   4-7
 DELETING WORDS IN LINE EDIT MODE  . . . . . . . . . . . . . . . . . . . .   4-8
 DELETING WORDS IN TEXT EDIT MODE  . . . . . . . . . . . . . . . . . . . .   4-9
 DELETING TO THE MARGIN IN LINE EDIT MODE  . . . . . . . . . . . . . . . .   4-10
 DELETING TO THE MARGIN IN TEXT EDIT MODE  . . . . . . . . . . . . . . . .   4-10
 DELETING LINES  . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   4-11
 INSERTING LINES . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   4-12
 SUMMARY   . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   4-13


 This chapter will familiarize you with some of the basic editing capabilities of
 SCREDITOR  III.  You will also be introduced to the concept of MODES, which will
 be described in further detail in later chapters.

 To perform the exercises in this chapter, you must have  already  completed  the
 previous  two  chapters.  In  addition,  you  will  be  learning  the  following
 single-key OPERATORS:


    ^IC - INSERT CHARACTER
    ^DC - DELETE CHARACTER
    ^DW - DELETE WORD
    ^IL - INSERT LINE
    ^DL - DELETE LINE
    ^BS - DESTRUCTIVE BACKSPACE
    ^IS - INSERT SPACE


 Before you start this chapter  locate  these  OPERATORS  on  your  keyboard  and
 memorize their position.


 In addition, you will use the following COMMANDS:

    TE - SELECT TEXT EDIT MODE
    LE - SELECT LINE EDIT MODE


GETTING STARTED

 To  start this chapter open an edit session on the NEWDOC file which you created
 earlier. The letter should look like FIGURE FOUR in the back of this  manual  at
 this point.


OVERTYPING

 As  we have said in previous chapters, SCREDITOR III provides a window into your
 document. Since this is the case, you are able to move your cursor to any  place
 in your document and simply OVERTYPE old material to make corrections!

 To demonstrate this, move your cursor down to the line containing the salutation
 (Gentlemens). The move the cursor right to the letter 's'. Now type a colon  (:)
 and hit your space bar. You have just corrected two mistakes in this letter!


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   OVERTYPING ALWAYS REPLACES WHAT WAS  UNDER  THE  CURSOR  WITH   *
      *   WHAT YOU TYPE.                                                  *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


INSERTING CHARACTERS IN LINE EDIT MODE

 OVERTYPING is nice, but it would be awkward if you had to retype many characters
 each time you leave  out  a  character.  SCREDITOR  III  allows  you  to  insert
 characters  into  your  document  at  any location you desire by entering INSERT
 CHARACTER MODE. Don't worry about the word MODE at this time,  as  we  will  say
 more about it later.

 To  see one way that INSERT CHARACTER MODE works, move your cursor to the 'S' in
 Simon in the inside address. Now type the INSERT CHARACTER MODE OPERATOR. If you
 look  at  the  left  side  of  the  banner line, you will notice that the INSERT
 CHARACTER MODE INDICATOR has just been displayed (IC) telling you that  you  are
 in  this special mode. Now type the letters Mr. followed by a space and see what
 happens.

 As you can see, each time you type a letter, the remainder of the letters on the
 line  move  to  the  right,  the letter you typed is inserted at the cursor, and
 finally, the cursor moves one place to the right.

 Now type the DESTRUCTIVE BACKSPACE OPERATOR and see what happens. The action  is
 the  exact  reverse  of  what  happened  when  you  typed other letters. Hit the
 BACKSPACE OPERATOR again and again until the cursor is on the left  margin  once
 more. If you hit it now, nothing will happen.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   LIKE CURSOR LEFT, THE ACTION  OF  THE  DESTRUCTIVE  BACKSPACE   *
      *   OPERATOR IS LIMITED TO THE LEFT MARGIN.                         *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 Now type the CURSOR UP OPERATOR. Notice that the IC flag in the banner has  been
 'turned off.'


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   ANY OPERATOR OTHER THAN DESTRUCTIVE BACKSPACE WILL  TERMINATE   *
      *   INSERT CHARACTER MODE.                                          *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now place the cursor back over the 'S' in Simon and enter INSERT CHARACTER  MODE
 again.  Once  the  IC  flag in the banner line is on, start hitting spaces until
 Legree reaches the right margin. Now enter a few more  spaces  and  notice  what
 happens. Each time you enter a space, notice that a letter of Legree disappears.
 This action is normal at this time because you are in LINE EDIT MODE.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHENEVER  YOU  ARE  IN LINE EDIT MODE AND IN INSERT CHARACTER   *
      *   MODE, A CHARACTER ON THE RIGHT MARGIN WILL BE LOST EACH  TIME   *
      *   YOU INSERT AN ADDITIONAL CHARACTER INTO THE LINE.               *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Try using the INSERT CHARACTER MODE at various places in the text. When that you
 have  a  feel  for INSERT CHARACTER MODE in LINE EDIT MODE, we will try the same
 things in TEXT EDIT MODE. Abort the edit session  and  start  a  new  edit  edit
 session on your NEWDOC file.


INSERTING CHARACTERS IN TEXT EDIT MODE

 When  SCREDITOR  III  has  reopened the file, enter the ESCAPE OPERATOR, type TE
 followed by the DELETE-TO-MARGIN OPERATOR (if needed) and the NEW LINE OPERATOR.
 When  you  have  done  so,  notice  that the LE indicator in the banner line has
 changed from LE to TE, indicating that you are in TEXT EDIT MODE. This is one of
 the most important indicators in the banner line, as you will see in a moment.

 Move  your  cursor  to  the  second  'i' in Virinia. This word is supposed to be
 Virginia, so we will be inserting a 'g' here. Type  the  INSERT  CHARACTER  MODE
 OPERATOR  and notice what happens. When you hit the key, the word split with the
 remainder moving down into a new line under the line  on  which  the  cursor  is
 sitting.  Now  type  a CURSOR UP OPERATOR. As you can see, the word was put back
 together!


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHEN  YOU  ENTER INSERT CHARACTER MODE IN TEXT EDIT MODE, THE   *
      *   LINE IS SPLIT AT THE CURSOR, WITH THE REMAINDER OF  THE  LINE   *
      *   MOVED  BELOW THE CURRENT LINE. WHEN YOU EXIT INSERT CHARACTER   *
      *   MODE IN TEXT EDIT MODE, THE LINE IS PUT BACK TOGETHER.          *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now move the cursor to the space before the 'V' in  Virinia  and  try  the  same
 thing.  Notice  that  when  you  entered  the  CURSOR  UP OPERATOR, the line was
 rejoined with the space still in place.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHEN YOU ENTER INSERT CHARACTER MODE IN TEXT EDIT  MODE,  THE   *
      *   CHARACTER  WHICH WAS UNDER THE CURSOR IS REMEMBERED. WHEN YOU   *
      *   LATER EXIT INSERT CHARACTER MODE  IN  LINE  EDIT  MODE,  THIS   *
      *   CHARACTER  DETERMINES  WHETHER OR NOT TO PLACE A SPACE AT THE   *
      *   REJOIN POINT. IF INSERT  CHARACTER  MODE  WAS  STARTED  ON  A   *
      *   SPACE,  A  SPACE WILL BE PLACED. IF INSERT CHARACTER MODE WAS   *
      *   NOT STARTED ON A SPACE, NO SPACE WILL BE INSERTED.              *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now move the cursor to the 'i' where you needed a 'g' and enter INSERT CHARACTER
 MODE  again. Type a space and then the CURSOR UP OPERATOR. Notice that the space
 was deleted. This is most important. There is a way to place a space there,  but
 we will wait until a later lesson to discuss how to do it.

 Finally, place the  cursor  back  over  the  'i',  enter  the  INSERT  CHARACTER
 OPERATOR,  type a 'g', and finally enter the CURSOR UP OPERATOR. Now the word is
 rejoined with the 'g' you wanted in the proper place!

 Now that you have a feel for how INSERT CHARACTER MODE  operates  in  TEXT  EDIT
 MODE,  we'll  try  one  more  insert to teach a special lesson about what really
 happens when you leave INSERT CHARACTER MODE in TEXT EDIT MODE.


 Move your cursor to the space between Simon and Legree in  the  inside  address,
 enter  INSERT  CHARACTER  MODE  and  type 'L.' Now exit INSERT CHARACTER MODE by
 entering any of your cursor movement OPERATORS and see what happens!

 As you can see, the entire inside address has been sucked  up  into  two  lines!
 This  action  is  called MELDING, and we will be discussing it more later, along
 with a way of correcting this kind of mistake. For now, just remember that there
 is a BIG difference between LINE and TEXT EDIT MODES, and that you must be aware
 of which one is active at all times!


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHEN  YOU  EXIT INSERT CHARACTER MODE WITHIN TEXT EDIT MODE A   *
      *   MELD IS DONE ON ALL LINES BETWEEN THE CURRENT  LINE  AND  THE   *
      *   NEXT BLANK LINE IN THE DOCUMENT. THIS ACTION IS AUTOMATICALLY   *
      *   EXECUTED TO REBUILD PARAGRAPHS INTO WHICH YOU  HAVE  MADE  AN   *
      *   INSERTION.                                                      *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now that you have a feel for INSERT CHARACTER MODE in TEXT EDIT  MODE,  do  some
 insertions  on your own in the remainder of the letter. When you are comfortable
 with how this OPERATOR/MODE works, abort the edit session.


INSERTING SPACES IN LINE EDIT MODE

 Open  a  new edit session on the NEWDOC file. When the file is open and ready to
 be edited, place the cursor between the 1 and the 4 in the date  and  enter  the
 INSERT  SPACE  OPERATOR.  The  action  is  the same as if you had entered INSERT
 CHARACTER MODE and typed a space; however, if you look at the banner  line,  you
 will  see  that  you  are not in INSERT CHARACTER MODE. Try inserting a few more
 spaces in various spots in your text using the INSERT SPACE OPERATOR.

 Move your cursor down into the body of the letter. Start inserting spaces  until
 a  line  tries  to  run  over  the right margin. Notice that as this occurs, the
 character which was on the right margin before you  inserted  a  space  is  lost
 after  the  space is inserted. This action is very similar to the action you saw
 in INSERT CHARACTER MODE except that your cursor does not move as the spaces are
 inserted.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHEN THE INSERT SPACE OPERATOR IS USED, A SPACE  IS  INSERTED   *
      *   IN THE LINE AT THE CURSOR POSITION. THE REMAINDER OF THE LINE   *
      *   MOVES ONE COLUMN TO THE RIGHT. ANY  CHARACTER  ON  THE  RIGHT   *
      *   MARGIN BEFORE THE OPERATION WILL BE LOST.                       *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now  select  TEXT  EDIT MODE. Try to insert some spaces now. As you can see, the
 bell on the terminal rings to indicate that the OPERATOR is not active.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  INSERT  SPACE  OPERATOR ONLY WORKS IN LINE EDIT MODE. IN   *
      *   TEXT EDIT MODE, AN ERROR WILL OCCUR.                            *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now  that  you  have a feel for the INSERT SPACE OPERATOR, do some insertions on
 your own in the remainder of the letter. When you  are  ready,  abort  the  edit
 session and start a new edit session on the NEWDOC file.


DELETING CHARACTERS IN LINE EDIT MODE

 You  have  now  learned  something  about  how  to  insert  characters into your
 document. Now you will learn how to delete some.

 Place your cursor after the date and type  miscellaneous  characters  until  you
 reach  the right margin. Now move your cursor to the 'J' in January and type the
 DELETE CHARACTER OPERATOR. Notice what happens.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   EACH TIME A CHARACTER IS  DELETED  IN  LINE  EDIT  MODE,  THE   *
      *   REMAINDER  OF THE LINE IS MOVED TO THE LEFT ONE CHARACTER AND   *
      *   A SPACE WILL APPEAR AT THE RIGHT MARGIN.                        *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


DELETING CHARACTERS IN TEXT EDIT MODE

 Now  select  TEXT  EDIT MODE and move the cursor down to the 'S' in Simon in the
 inside address. Then type the DELETE CHARACTER OPERATOR. As you can see, the 'S'
 was  deleted,  but  in  addition,  the  remainder  of  the  inside  address  was
 automatically MELDED into two lines!


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   DELETE  CHARACTER  IN  TEXT  EDIT  MODE  CAUSES  AN AUTOMATIC   *
      *   PARAGRAPH MELD.                                                 *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now  enter  the  ESCAPE OPERATOR and type L over the T in TE on the command line
 and enter the NEW LINE OPERATOR. As you can see, the edit mode reflected in  the
 banner line is once again LINE EDIT MODE (LE).

 Try  deleting  characters  in  various  places in the letter, switching back and
 forth between LINE and TEXT EDIT MODES. When you have  a  feel  for  how  DELETE
 CHARACTER works in each mode, ABORT the edit session and open a new edit session
 on the NEWDOC file.


DELETING WORDS IN LINE EDIT MODE

 Deleting  words  is  just  as  easy  as  deleting  characters when you are using
 SCREDITOR III. The action of deleting words in LINE MODE, however, is  different
 from deleting characters.

 Your  cursor  is  resting  on  the 1 in the date line at this time. Now type the
 DELETE WORD OPERATOR and see what happens. As you can see, 14  disappeared,  but
 the rest of the line did not move.

      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  DELETE  WORD  OPERATOR  IN  LINE  EDIT  MODE CHANGES ALL   *
      *   CHARACTERS IN THE CURRENT WORD TO SPACES. NO OTHER CHANGE  TO   *
      *   THE LINE TAKES PLACE.                                           *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now enter the DELETE WORD OPERATOR again without moving the cursor and note that
 the bell on your terminal rang to indicate that there  was  no  word  under  the
 cursor to delete!

      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *     THE DELETE WORD OPERATOR ONLY WORKS ON WORDS...NOT SPACES!    *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Try moving the cursor to various words in the letter and deleting them. When you
 are  comfortable with the action of the DELETE WORD OPERATOR in LINE MODE, ABORT
 the edit session and open a new edit session on the NEWDOC  file  for  the  next
 exercise.


DELETING WORDS IN TEXT EDIT MODE

 When  the  file is ready to be edited, switch to TEXT EDIT MODE (you should know
 how by now, of course!).

 Now move the cursor down to 'Simon' in the inside address and  type  the  DELETE
 WORD OPERATOR. Notice that like the DELETE CHARACTER OPERATOR in TEXT EDIT MODE,
 the DELETE WORD OPERATOR causes a meld of all lines down to the first blank line
 after the current line.

      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IN  TEXT EDIT MODE, AN AUTOMATIC MELD OCCURS AFTER THE DELETE   *
      *   WORD OPERATOR EXECUTES.                                         *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Try  moving  the cursor to various words in the line and deleting them. When you
 are comfortable with the action of the DELETE WORD OPERATOR in TEXT  EDIT  MODE,
 ABORT  the  edit  session and open a new edit session on the NEWDOC file for the
 next exercise.


DELETING TO THE MARGIN IN LINE EDIT MODE

 Move the cursor to the first space after 'Legree' in the inside address and type
 some  miscellaneous  characters out to the right margin. Now position the cursor
 to the first character after 'Legree' and type the DELETE TO MARGIN OPERATOR.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE DELETE TO MARGIN OPERATOR DELETES ALL CHARACTERS FROM THE   *
      *   CURSOR TO THE RIGHT MARGIN ON THE CURRENT LINE. NO CHARACTERS   *
      *   OUTSIDE THE MARGIN ARE CHANGED.                                 *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


DELETING TO THE MARGIN IN TEXT EDIT MODE

 Now change SCREDITOR III to TEXT EDIT MODE and place the cursor on  the  'L'  in
 'Legree'. Now type the DELETE TO MARGIN OPERATOR. Note the difference in the way
 this OPERATOR executes in TEXT EDIT MODE.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IN  TEXT  EDIT MODE, AN AUTOMATIC PARAGRAPH MELD OCCURS AFTER   *
      *   THE EXECUTION OF THE DELETE TO MARGIN OPERATOR.                 *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Try  moving  the  cursor  to various places in the letter and use this OPERATOR.
 When you are comfortable with the action of DELETE TO MARGIN in TEXT EDIT  MODE,
 ABORT  the  edit  session and open a new edit session on the NEWDOC file for the
 next exercise.


DELETING LINES

 When  you  are once again ready to edit, Move your cursor down to the first line
 of the inside address. Now enter the DELETE LINE OPERATOR. Note that the line on
 which the cursor resided before the delete is now gone, and that all of the rest
 of the lines in the document have been moved up to fill in  the  void  you  just
 created. This action is different in MULTI-COLUMN MODE, which we will discuss in
 a later chapter, but for now, assume that:


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *                                                                   *
      *   WHENEVER THE DELETE LINE  OPERATOR  IS  ENTERED,  THE  ENTIRE   *
      *   LINE,  BOTH  INSIDE  AND  OUTSIDE  OF THE CURRENT MARGINS, IS   *
      *   DELETED. NO OTHER CHANGES TO THE TEXT OCCURS.                   *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Also remember that:


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   ONCE  A  LINE  HAS  BEEN DELETED, IT IS GONE FOREVER. BE SURE   *
      *   THAT YOU REALLY WANT  TO  DELETE  A  LINE  BEFORE  DOING  SO!   *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


INSERTING LINES

 Now enter the INSERT LINE MODE OPERATOR. Note that when you do so the  remainder
 of  the  text,  including  the  current line, moves down one line, the cursor is
 placed at the left margin, and that the IL flag in the banner came on.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHEN THE INSERT LINE MODE OPERATOR IS FIRST SELECTED, ALL  OF   *
      *   THE TEXT ON THE SCREEN FROM THE CURRENT LINE TO THE BOTTOM OF   *
      *   THE SCREEN IS SCROLLED DOWN ONE LINE  AND  A  BLANK  LINE  IS   *
      *   GENERATED AT THE CURSOR POSITION.                               *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 The  operation of INSERT LINE MODE is different in MULTI-COLUMN MODE, which will
 be discussed in another chapter, but for now assume that:


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *  THE INSERTION OF THE BLANK LINE DOES NOT HONOR MARGIN SETTINGS.  *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now  type  'Simon Legree' and a NEW LINE OPERATOR. Notice that the text moved up
 one line, and that the INSERT LINE MODE indicator (IL) is still on in the banner
 line. Type a few more NEW LINE OPERATORS and see what happens.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHILE IN INSERT LINE MODE, NEW LINE OPERATORS WILL CAUSE  THE   *
      *   TEXT  TO  SCROLL UPWARD FROM THE CURRENT LINE AND EMPTY LINES   *
      *   TO BE GENERATED AT THE CURRENT LINE.                            *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Finally, move the cursor off of  the  current  line  using  one  of  the  cursor
 movement OPERATORS. Notice that the IL indicator in the banner line is now gone,
 indicating that INSERT LINE MODE has been terminated. To verify  this,  enter  a
 few more NEW LINE OPERATORS and see that the cursor now moves down the screen.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   ANY COMMAND OR OPERATOR WHICH WOULD MOVE THE  CURSOR  OFF  OF   *
      *   THE CURRENT LINE WILL TERMINATE INSERT LINE MODE.               *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Experiment with the INSERT and DELETE LINE OPERATORS for a few minutes to become
 more  familiar  with their operation. When you are satisfied that you understand
 their operation, ABORT the edit session.
SUMMARY

 In this chapter you have learned that:

 1)  OVERTYPING ALWAYS REPLACES WHAT WAS UNDER THE CURSOR WITH WHAT YOU TYPE.

 2)  LIKE  CURSOR  LEFT,  THE  ACTION  OF  THE  DESTRUCTIVE BACKSPACE OPERATOR IS
     LIMITED AT THE LEFT MARGIN.

 3)  ANY  OPERATOR  OTHER  THAN  DESTRUCTIVE  BACKSPACE  WILL  TERMINATE   INSERT
     CHARACTER MODE.

 4)  WHENEVER YOU ARE IN LINE EDIT MODE AND IN INSERT CHARACTER MODE, A CHARACTER
     ON THE RIGHT MARGIN  WILL  BE  LOST  EACH  TIME  YOU  INSERT  AN  ADDITIONAL
     CHARACTER INTO THE LINE.

 5)  WHEN  YOU  ENTER  INSERT CHARACTER MODE WHILE IN TEXT EDIT MODE, THE LINE IS
     SPLIT AT THE CURSOR, WITH THE REMAINDER OF THE LINE MOVED BELOW THE  CURRENT
     LINE.  WHEN YOU EXIT INSERT CHARACTER MODE WHILE IN TEXT EDIT MODE, THE LINE
     IS PUT BACK TOGETHER.

 6)  WHEN YOU ENTER INSERT CHARACTER MODE WHILE IN TEXT EDIT MODE, THE  CHARACTER
     WHICH  WAS  UNDER  THE  CURSOR  IS  REMEMBERED.  WHEN  YOU LATER EXIT INSERT
     CHARACTER MODE IN TEXT EDIT MODE, THIS CHARACTER DETERMINES WHETHER  OR  NOT
     TO  PLACE  A SPACE AT THE REJOIN POINT. IF INSERT CHARACTER MODE WAS STARTED
     ON A SPACE, A SPACE WILL BE PLACED. IF INSERT CHARACTER MODE WAS NOT STARTED
     ON A SPACE, NO SPACE WILL BE PLACED.


 7)  WHEN YOU EXIT INSERT CHARACTER MODE WHILE IN TEXT EDIT MODE, A MELD IS  DONE
     ON  ALL  LINES  BETWEEN  THE  CURRENT  LINE  AND  THE NEXT BLANK LINE IN THE
     DOCUMENT. THIS ACTION IS AUTOMATICALLY EXECUTED TO REBUILD  PARAGRAPHS  INTO
     WHICH YOU HAVE MADE AN INSERTION.

 8)  WHEN  THE  INSERT SPACE OPERATOR IS USED, A SPACE IS INSERTED IN THE LINE AT
     THE CURSOR POSITION. THE REMAINDER OF THE  LINE  MOVES  ONE  COLUMN  TO  THE
     RIGHT. ANY CHARACTER ON THE RIGHT MARGIN BEFORE THE OPERATION WILL BE LOST.

 9)  THE  INSERT  SPACE OPERATOR ONLY WORKS IN LINE EDIT MODE. IN TEXT EDIT MODE,
     AN ERROR WILL OCCUR.

 10) EACH TIME A CHARACTER IS DELETED IN LINE EDIT MODE,  THE  REMAINDER  OF  THE
     LINE IS MOVED TO THE LEFT ONE CHARACTER AND A SPACE WILL APPEAR AT THE RIGHT
     MARGIN.

 11) DELETE CHARACTER IN TEXT EDIT MODE CAUSES AN AUTOMATIC PARAGRAPH MELD.

 12) THE DELETE WORD OPERATOR IN LINE EDIT MODE CHANGES  ALL  CHARACTERS  IN  THE
     CURRENT  WORD  TO  SPACES.  NO OTHER CHANGE TO THE LINE TAKES PLACE. IN TEXT
     EDIT MODE, AN AUTOMATIC MELD OCCURS AFTER THE DELETE WORD OPERATOR EXECUTES.

 13) THE DELETE WORD OPERATOR ONLY WORKS ON WORDS, NOT SPACES!

 14) WHENEVER THE DELETE LINE OPERATOR IS ENTERED, THE ENTIRE LINE,  BOTH  INSIDE
     AND OUTSIDE OF THE CURRENT MARGINS, IS DELETED. NO OTHER CHANGES TO THE TEXT
     OCCURS.

 15) ONCE A LINE HAS BEEN DELETED, IT IS GONE FOREVER. BE SURE  THAT  YOU  REALLY
     WANT TO DELETE A LINE BEFORE DOING SO!
SUMMARY  continued

 16) THE DELETE TO END OF LINE OPERATOR DELETES ALL CHARACTERS FROM THE CURSOR TO
     THE RIGHT MARGIN ON THE CURRENT LINE. NO CHARACTERS OUTSIDE THE  MARGIN  ARE
     CHANGED.  IN  TEXT  EDIT  MODE, AN AUTOMATIC PARAGRAPH MELD OCCURS AFTER THE
     EXECUTION OF THE DELETE TO MARGIN OPERATOR.

 17) WHEN THE INSERT LINE MODE OPERATOR IS ENTERED, THE TEXT  ON  THE  SCREEN  IS
     SCROLLED DOWN ONE LINE. A BLANK LINE IS GENERATED AT THE CURSOR POSITION.

 18) THE BLANK LINE INSERTED DOES NOT HONOR MARGIN SETTINGS.

 19) WHILE  IN INSERT LINE MODE, NEW LINE OPERATORS WILL CAUSE THE TEXT TO SCROLL
     UPWARD FROM THE CURRENT LINE AND NEW LINES WILL BE CREATED  AT  THE  CURRENT
     LINE ON THE SCREEN.

 20) ANY  COMMAND OR OPERATOR WHICH WOULD MOVE THE CURSOR OFF OF THE CURRENT LINE
     WILL TERMINATE INSERT LINE MODE.
