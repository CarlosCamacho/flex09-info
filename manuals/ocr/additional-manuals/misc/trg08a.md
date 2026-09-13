# TRG08A

> Source: `manuals/misc/MANUAL - FLEX Software Archive - Manual and Documentation Archive - Includes SINST0, SINST1, SINST2.zip!MANUAL.DSK!TRG08A.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                           TRAINING AND USER'S GUIDE

                             SCREDITOR III MODES


.DHE
%TRAINING AND USER'S GUIDE                           SCREDITOR III WORD PROCESSOR

                             SCREDITOR III MODES


.DFO
"
 (C) 1983, ALFORD & ASSOCIATES                                        PAGE 8-%%%%
.DFE
"
 PAGE 8-%%%%                                        (C) 1983, ALFORD & ASSOCIATES
                                 CHAPTER EIGHT

 WHAT MODES ARE  . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   8-2

 LINE EDIT MODE  . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   8-3
  INSERT CHARACTER IN LINE EDIT MODE . . . . . . . . . . . . . . . . . . .   8-3
  DELETE TO MARGIN IN LINE EDIT MODE . . . . . . . . . . . . . . . . . . .   8-3
  DELETE WORD IN LINE EDIT MODE  . . . . . . . . . . . . . . . . . . . . .   8-4
  SPLIT AND MELD PARAGRAPH IN LINE EDIT MODE . . . . . . . . . . . . . . .   8-4

 TEXT EDIT MODE  . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   8-5
  SPLIT AND MELD PARAGRAPH IN TEXT EDIT MODE . . . . . . . . . . . . . . .   8-5
  END OF LINE IN TEXT EDIT MODE (WORD WRAP)  . . . . . . . . . . . . . . .   8-6
  INSERT CHARACTER MODE IN TEXT EDIT MODE  . . . . . . . . . . . . . . . .   8-7
  DELETE TO MARGIN IN TEXT EDIT MODE . . . . . . . . . . . . . . . . . . .   8-8
  DELETE WORD IN TEXT EDIT MODE  . . . . . . . . . . . . . . . . . . . . .   8-8
  DELETE CHARACTER IN TEXT EDIT MODE . . . . . . . . . . . . . . . . . . .   8-8

 SUMMARY . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   8-10


 In  this  chapter, you will learn more about MODES. You have been using a number
 of different MODES up to now and have read about other MODES, but have  not  yet
 learned  all  of  SCREDITOR III's MODES, or, for that matter, what a MODE really
 is.

 In the course of completing the exercises in this chapter, you will be  learning
 the following OPERATORS:


       ^SP - SPLIT PARAGRAPH
       ^MP - MELD PARAGRAPH


WHAT MODES ARE

 You  have been using a number of SCREDITOR III's MODES up to now, but we haven't
 really explained what a mode is. If you haven't guessed already:


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   A  MODE  IS A PARTICULAR WAY IN WHICH SCREDITOR III OPERATES.   *
      *   IF A  MODE  IS  ACTIVE,  OR  TURNED  ON,  OPERATION  WILL  BE   *
      *   DIFFERENT THAN WHEN A MODE IS INACTIVE, OR TURNED OFF.          *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 SCREDITOR III has a number of different MODES, as shown in this table:

                 INSERT LINE MODE              RIGHT JUSTIFY MODE

                 INSERT CHARACTER MODE         ALL-JUSTIFY MODE

                 LINE EDIT MODE                MULTI-COLUMN MODE

                 TEXT EDIT MODE                SINGLE-COLUMN MODE

                 LEFT JUSTIFY MODE             ACTIVE SYMBOL MODE

                 CENTER JUSTIFY MODE


 As you have already seen, SCREDITOR III operates very differently when  you  are
 in TEXT EDIT MODE, as opposed to when you are in LINE EDIT MODE.


 Each  of  these  MODES  is  continuously  indicated in the status section of the
 banner line. For instance, you have already seen that when you  go  into  INSERT
 CHARACTER MODE, the two letters IC appear near the left side of the banner line.
 The MODE flags in the banner line are as follows:


           LE - LINE EDIT MODE                 AS - ACTIVE SYMBOL MODE

           TE - TEXT EDIT MODE                 JL - LEFT JUSTIFY MODE

           IC - INSERT CHARACTER MODE          JC - CENTER JUSTIFY MODE

           IL - INSERT LINE MODE               JR - RIGHT JUSTIFY MODE

           MC - MULTI-COLUMN MODE              JA - ALL JUSTIFY MODE


 This chapter will concentrate on LINE and TEXT EDIT MODES. The next chapter will
 cover  the remaining modes. Open a new edit session on the NEWDOC file. When the
 file is open for editing you may continue.


LINE EDIT MODE

 As you have already seen in previous chapters, in LINE EDIT MODE such things  as
 INSERT  CHARACTER  MODE  only  operate  on the current line. When characters run
 through the right margin, they are lost. In addition, when you reach  the  right
 margin,  that's  where  you  stay until you use an OPERATOR which would move the
 cursor.

 To refresh your memory, try typing characters until you reach the right  margin.
 When you reach the right margin, continue typing and see what happens.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IN LINE EDIT MODE, ONCE YOU ARE ON  THE  RIGHT  MARGIN,  EACH   *
      *   CHARACTER YOU TYPE SIMPLY OVER-TYPES WHAT WAS THERE BEFORE.     *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


INSERT CHARACTER IN LINE EDIT MODE

 Use your TAB TO MARGIN OPERATOR now to place the cursor at the left margin.  Hit
 the  INSERT  CHARACTER MODE key and type some characters. Notice what happens at
 the right margin as you type each character.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IN  LINE  EDIT MODE AND INSERT CHARACTER MODE, A CHARACTER ON   *
      *   THE RIGHT MARGIN IS LOST AS EACH NEW CHARACTER IS INSERTED.     *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


DELETE TO MARGIN IN LINE EDIT MODE

 Use your TAB TO MARGIN OPERATOR to return the cursor to the left margin. Now use
 the DELETE TO MARGIN OPERATOR to clear the rest of the  line.  Notice  that  the
 current line was erased but no other lines were effected.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IN LINE EDIT MODE, DELETE TO MARGIN ONLY EFFECTS THE  CURRENT   *
      *   LINE.                                                           *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


DELETE WORD IN LINE EDIT MODE

 Now type 'The quick brown fox jumped' and place the cursor on the letter 'q'  in
 quick. Hit the DELETE WORD OPERATOR and see what happens.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IN  LINE EDIT MODE, DELETE WORD REPLACES THE WORD WITH SPACES   *
      *   BUT DOES NOT AFFECT THE REMAINDER OF THE LINE  OR  ANY  OTHER   *
      *   LINE.                                                           *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


SPLIT AND MELD PARAGRAPH IN LINE EDIT MODE

 Try entering the SPLIT PARAGRAPH OPERATOR  and  the  MELD  PARAGRAPH  OPERATORS.
 Notice  that  as you do, an error message tells you that these OPERATORS are not
 available in LINE EDIT MODE. Use your space bar, of course, to clear  the  error
 messages as they occur.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  SPLIT  AND  MELD  PARAGRAPH  OPERATORS  ARE  TEXT   MODE   *
      *   OPERATORS, AND ARE NOT ACTIVE IN LINE EDIT MODE.                *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 As you have seen, editing functions which change  a  line  are  limited  to  the
 current  line  only in LINE EDIT MODE. This MODE is used when you are working on
 something like a program source file or a table, which requires that  each  line
 be  distinct and separate from every other line. In effect, LINE EDIT MODE turns
 off most of what you would expect a word processor to do, and converts SCREDITOR
 III to a very powerful screen editor.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   LINE EDIT MODE IS USED WHEN THE INFORMATION ON  A  PARTICULAR   *
      *   LINE MUST STAY ON THAT LINE.                                    *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


TEXT EDIT MODE

 Now turn on TEXT EDIT MODE (execute the TE COMMAND). We will  try  each  of  the
 things  you  just did in LINE EDIT MODE and see what the differences are between
 these two MODES. Before we do, however, you need to see the operation of two new
 OPERATORS ... SPLIT PARAGRAPH AND MELD PARAGRAPH.


SPLIT AND MELD PARAGRAPH IN TEXT EDIT MODE

 Place your cursor on a space somewhere in the middle of the first line  in  your
 letter (one of the quick brown fox lines) and type the SPLIT PARAGRAPH OPERATOR.
 As you can see, the line was broken at the cursor and the right side of the line
 was moved down into a new line below the current line.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  SPLIT  PARAGRAPH OPERATOR BREAKS THE CURRENT LINE AT THE   *
      *   CURSOR, GENERATES A NEW LINE  BELOW  THE  CURRENT  LINE,  AND   *
      *   MOVES  THE  REMAINDER  OF  THE CURRENT LINE DOWN INTO THE NEW   *
      *   LINE BELOW.                                                     *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Without moving your cursor, type the MELD PARAGRAPH OPERATOR. As  you  can  see,
 the paragraph has been re-joined.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE MELD PARAGRAPH OPERATOR WILL REMOVE ALL EXTRA SPACES FROM   *
      *   THE  CURRENT  LINE,  MOVE  WORDS  IN FROM THE NEXT LINE(S) AS   *
      *   NEEDED TO FILL THE CURRENT LINE AND THEN JUSTIFY THE  CURRENT   *
      *   LINE  TO  WHATEVER  JUSTIFICATION MODE IS ACTIVE. THIS ACTION   *
      *   WILL CONTINUE THROUGHOUT THE REMAINDER OF THE  PARAGRAPH,  OR   *
      *   UNTIL A BLANK LINE IS ENCOUNTERED.                              *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 You  will  see  these  actions occur before or after most of the OPERATORS which
 change a line in TEXT MODE. Try  the  SPLIT  and  MELD  PARAGRAPH  OPERATORS  at
 several  places  in your text to see the effect of these two powerful OPERATORS.
 Note in particular that the SPLIT PARAGRAPH OPERATOR will not work if there  are
 no characters (other than spaces) between the cursor and the right margin.


END OF LINE IN TEXT EDIT MODE (WORD WRAP)

 Use  your  TAB  TO  END  OF  LINE  OPERATOR to place the cursor after the 'd' in
 'jumped'. Now type this phrase over and over, but stop when you reach the  right
 margin.  Now  type another letter. What happened!? The line you were just typing
 disappeared. In addition, the word you were typing is now at the  start  of  the
 line and the cursor is waiting for the next letter.

 Continue typing 'the quick brown fox jumped' until you reach the end of this new
 line. Now type a few more letters of the phrase. The same thing happened  again.
 Now  use  your  SCROLL DOWN OPERATOR and look at the screen. As you can see, the
 two lines which disappeared have simply moved up out of the way  as  you  typed.
 This  action  is  called  WORD-WRAP,  and  is  one  of the automatic features of
 SCREDITOR III which is turned on in TEXT EDIT MODE.  We  will  be  talking  more
 about word-wrap later.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHEN  YOU  TRY TO PASS THE RIGHT MARGIN IN TEXT EDIT MODE, AN   *
      *   AUTOMATIC WORD WRAP OCCURS.                                     *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


INSERT CHARACTER MODE IN TEXT MODE

 Move your cursor to the space just before the first 'fox' in the first line. Now
 hit  INSERT CHARACTER MODE and type 'striped'. Now move your cursor to the right
 one column. When you went into INSERT CHARACTER MODE,  the  line  split  at  the
 cursor.  A  new line was generated below the current line to receive the rest of
 the line. During INSERT CHARACTER MODE, you typed just as if you weren't in  the
 mode  at  all. When you left INSERT CHARACTER MODE, the words on the lines below
 the current line were MELDED along with the current line to form a paragraph.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IN TEXT MODE, INSERT CHARACTER MODE CAUSES A LINE SPLIT. WHEN   *
      *   YOU LEAVE INSERT CHARACTER MODE, EVERYTHING AFTER THE CURRENT   *
      *   LINE DOWN TO A BLANK LINE IS MELDED INTO ONE PARAGRAPH.         *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 This is why you will use LINE EDIT MODE when you are editing a table. The  first
 time  you  did  an insert character on your table, you wouldn't have a table any
 more, but rather a nice paragraph!

 Now move your cursor to the first 'f' in 'fox' in the first  line  and  go  into
 INSERT  CHARACTER MODE as you did in the last example. Type 'striped ' again and
 move the cursor right. What happened this time? That's right.  Even  though  you
 typed  a  space  after 'striped' before leaving the mode, striped and fox became
 one word.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IN  TEXT  MODE,  THE CHARACTER UNDER THE CURSOR IS SAVED WHEN   *
      *   YOU GO INTO INSERT CHARACTER  MODE.  WHEN  YOU  LEAVE  INSERT   *
      *   CHARACTER  MODE,  IF THE CHARACTER WAS A SPACE, SCREDITOR III   *
      *   ASSUMES THAT YOU ARE ADDING WORDS TO YOUR TEXT AND  LEAVES  A   *
      *   SPACE.  IF  THE  CHARACTER  WAS  NOT  A  SPACE, SCREDITOR III   *
      *   ASSUMES THAT YOU ARE ADDING CHARACTERS TO A WORD  AND  STICKS   *
      *   EVERYTHING TOGETHER.                                            *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


DELETE TO MARGIN IN TEXT EDIT MODE

 Put  your cursor somewhere in the middle of the first line of your text and type
 a DELETE TO MARGIN OPERATOR. As you can see, once the remainder of the  line  is
 deleted, an automatic MELD again takes place.


DELETE WORD IN TEXT EDIT MODE

 Now put your cursor on a word somewhere in the first line and  type  the  DELETE
 WORD OPERATOR. Again, an automatic meld takes place.


DELETE CHARACTER IN TEXT EDIT MODE

 Try deleting some characters  (not  spaces).  Notice  that  after  a  number  of
 deletions,  a  word will wrap from the next line up onto the current line. After
 each deletion, an automatic MELD takes place.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IN TEXT MODE, AFTER EACH DELETION FROM A LINE  BY  ANY  MEANS   *
      *   OTHER  THAN  OVERTYPING WITH THE SPACE BAR, AN AUTOMATIC MELD   *
      *   TAKES PLACE.                                                    *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 There is one condition under which the action of the automatic meld will not  be
 apparent.  To  see  this, move your cursor to line one, type an INSERT CHARACTER
 MODE OPERATOR and type:

    the quick brown fox jumped over

 Now enter NEW LINE and type:

    the lazy dog's back a number of times.

 Now enter the NEW LINE OPERATOR again. When you have done  so,  scroll  back  so
 that  the  cursor  is  once again on line one. Now execute the following command
 line:

    JPA;JMA


 now move the cursor to the space immediately before the  word  'number'  on  the
 first line and attempt to delete the space using the DELETE CHARACTER OPERATOR.

 As you can see, nothing appeared to happen. Actually, the character was deleted,
 but it didn't  stay  deleted!  Since  the  COMMANDS  you  just  executed  placed
 SCREDITOR III in ALL-JUSTIFY MODE, what happened is this:

 1) The space as deleted.

 2) During the automatic meld after deleting a character, it was determined  that
    no words from the next line could be brought into the current line.

 3) After  this,  the  line  was  once  again  all-justified.  Since  this was an
    odd-numbered line, SCREDITOR III adds spaces  for  padding  from  the  right;
    therefore, the space was put back in!


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   SPACING WITHIN LINES IN TEXT MODE IS AUTOMATICALLY MAINTAINED   *
      *   BY SCREDITOR III UNLESS YOU DELIBERATELY OVERTYPE A WORD WITH   *
      *   THE SPACE-BAR.                                                  *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 You  should now have a pretty good idea of the differences between LINE and TEXT
 EDIT MODES. You may now ABORT the current edit session.


SUMMARY

 Modes  are very important in the operation of SCREDITOR III. In this chapter you
 have studied the differences between LINE and TEXT  EDIT  MODES.  The  important
 points to remember are:

 1) A  MODE  IS  A  PARTICULAR  WAY IN WHICH SCREDITOR III OPERATES. IF A MODE IS
    ACTIVE, OR TURNED ON, THE OPERATION WILL BE DIFFERENT THAN  WHEN  A  MODE  IS
    INACTIVE, OR TURNED OFF.

 2) IN LINE EDIT MODE:

    A) ONCE  YOU  ARE  ON  THE  RIGHT  MARGIN,  EACH  CHARACTER  YOU  TYPE SIMPLY
       OVER-TYPES WHAT WAS THERE BEFORE.

    B) IN INSERT CHARACTER MODE, A CHARACTER ON THE RIGHT MARGIN IS LOST AS  EACH
       NEW CHARACTER IS INSERTED.

    C) DELETE TO MARGIN ONLY EFFECTS THE CURRENT LINE.

    D) DELETE  WORD  REPLACES  THE  WORD  WITH  SPACES  BUT  DOES  NOT AFFECT THE
       REMAINDER OF THE LINE OR ANY OTHER LINE.

    E) THE SPLIT AND MELD PARAGRAPH OPERATORS ARE TEXT MODE  OPERATORS,  AND  ARE
       NOT ACTIVE.

    F) IS USED WHEN THE INFORMATION ON A PARTICULAR LINE MUST STAY THERE.

 3) THE SPLIT PARAGRAPH OPERATOR BREAKS THE CURRENT LINE AT THE CURSOR, GENERATES
    A NEW LINE BELOW THE CURRENT LINE, AND MOVES THE  REMAINDER  OF  THE  CURRENT
    LINE DOWN INTO THE NEW LINE BELOW.

 4) THE  MELD  PARAGRAPH  OPERATOR  WILL REMOVE ALL EXTRA SPACES FROM THE CURRENT
    LINE, MOVE WORDS IN FROM THE NEXT LINE(S) AS NEEDED TO FILL THE CURRENT  LINE
    AND  THEN  JUSTIFY THE CURRENT LINE TO WHATEVER JUSTIFICATION MODE IS ACTIVE.
    THIS ACTION WILL CONTINUE THROUGHOUT THE REMAINDER OF THE PARAGRAPH, OR UNTIL
    A BLANK LINE IS ENCOUNTERED.

 5) IN TEXT EDIT MODE:

    A) WHEN YOU TRY TO PASS THE RIGHT MARGIN AN AUTOMATIC WORD WRAP OCCURS.

    B) INSERT CHARACTER MODE CAUSES A LINE SPLIT. WHEN YOU LEAVE INSERT CHARACTER
       MODE, EVERYTHING AFTER THE CURRENT LINE DOWN TO A  BLANK  LINE  IS  MELDED
       INTO ONE PARAGRAPH.

    C) THE  CHARACTER UNDER THE CURSOR IS SAVED WHEN YOU GO INTO INSERT CHARACTER
       MODE. WHEN YOU LEAVE INSERT CHARACTER MODE, IF THE CHARACTER WAS A  SPACE,
       SCREDITOR  III ASSUMES THAT YOU ARE ADDING WORDS TO YOUR TEXT AND LEAVES A
       SPACE. IF THE CHARACTER WAS NOT A SPACE, SCREDITOR III  ASSUMES  THAT  YOU
       ARE ADDING CHARACTERS TO A WORD AND STICKS EVERYTHING TOGETHER.

    D) AFTER  EACH  DELETION  FROM A LINE BY ANY MEANS OTHER THAN OVERTYPING WITH
       THE SPACE BAR, AN AUTOMATIC MELD TAKES PLACE.

    E) SPACING WITHIN LINES IS AUTOMATICALLY MAINTAINED BY SCREDITOR  III  UNLESS
       YOU DELIBERATELY OVERTYPE A WORD WITH THE SPACE BAR.
