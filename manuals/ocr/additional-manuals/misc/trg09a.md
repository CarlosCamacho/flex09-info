# TRG09A

> Source: `manuals/misc/MANUAL - FLEX Software Archive - Manual and Documentation Archive - Includes SINST0, SINST1, SINST2.zip!MANUAL.DSK!TRG09A.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                           TRAINING AND USER'S GUIDE

                            MORE SCREDITOR III MODES


.DHE
%TRAINING AND USER'S GUIDE                           SCREDITOR III WORD PROCESSOR

                            MORE SCREDITOR III MODES


.DFO
"
 (C) 1983, ALFORD & ASSOCIATES                                        PAGE 9-%%%%
.DFE
"
 PAGE 9-%%%%                                        (C) 1983, ALFORD & ASSOCIATES
                                  CHAPTER NINE

 JUSTIFICATION - WHAT IS IT? . . . . . . . . . . . . . . . . . . . . . . .   9-2
 SCREDITOR III JUSTIFICATION MODES . . . . . . . . . . . . . . . . . . . .   9-2
 SELECTING A JUSTIFICATION MODE  . . . . . . . . . . . . . . . . . . . . .   9-3
 MELDING AFFECTED BY JUSTIFICATION MODE  . . . . . . . . . . . . . . . . .   9-5
 SUMMARY . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   9-6


 In  the  last  chapter,  you learned about the differences between TEXT and LINE
 EDIT MODES. In a previous chapter, you learned about INSERT CHARACTER  and  LINE
 MODES. In this chapter, you will learn about JUSTIFICATION MODES.

 In  the  course  of  completing  this  chapter, you will learn the following new
 COMMAND:

    JM - JUSTIFY MODE


JUSTIFICATION - WHAT IS IT?

 Before   we   can  talk  about  JUSTIFICATION  MODES,  you  need  to  know  what
 justification is.

      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   JUSTIFICATION IS THE PROCESS OF  FILLING  OR  MANIPULATING  A   *
      *   LINE SO AS TO ARRANGE THE TEXT IN A PARTICULAR WAY.             *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

 You have done this most of your life, but may not have realized it. Whenever you
 wrote something and start each line at the left side  of  the  paper,  you  were
 justifying  the  text.  This  particular  method  left  an  even left margin and
 generally a ragged right margin. We call this LEFT-JUSTIFICATION.

 Looking at our definition, if you wrote or typed a letter which ended up looking
 like  a  silouette  of  a christmas tree, you would be justifying your text, and
 could call it 'Christmas Tree Justification!' Of course, a christmas tree-shaped
 letter might be cute, but it isn't the sort of thing you would do every day!


SCREDITOR III JUSTIFICATION MODES

 In normal use, there are four types of justification which you will probably  be
 using, and SCREDITOR III, of course, supports them all.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  FOUR  MAJOR  JUSTIFICATION TYPES ARE LEFT, CENTER, RIGHT   *
      *   AND ALL (OR FULL) JUSTIFICATION.                                *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Before you start using them, you should know what the four  JUSTIFICATION  MODES
 actually do.


JUSTIFICATION MODES

 LEFT    -   LEFT JUSTIFICATION WILL LEAVE THE TEXT EVEN AT THE LEFT  MARGIN  AND
             THE RIGHT SIDE WILL BE RAGGED.

 RIGHT   -   RIGHT JUSTIFICATION WILL LEAVE THE TEXT EVEN AT THE RIGHT MARGIN AND
             THE LEFT SIDE WILL BE RAGGED.

 CENTER  -   CENTER JUSTIFICATION WILL LEAVE THE TEXT CENTERED  BETWEEN  THE  TWO
             MARGINS. BOTH ENDS OF EACH LINE WILL BE RAGGED.

 ALL     -   ALL  JUSTIFICATION  WILL SET THE TEXT EVEN AT BOTH MARGINS BY ADDING
             SPACES BETWEEN WORDS AS NECESSARY.


 Most  of  this  manual  is written ALL-JUSTIFIED, by the way, so, if you weren't
 familiar with this justification before, you should be now! Now  that  you  know
 what the four types of justification are, you will be trying each of them to see
 on the screen how they are accomplished. For this exercise, you will be creating
 a  new document. Use the appropriate call to SCREDITOR III to create a file name
 TESDOC. When SCREDITOR III is ready to edit, continue with this chapter.


SELECTING A JUSTIFICATION MODE

 Now that the file is open, take a moment and look at the banner line. As you can
 see,  you  are now in LINE EDIT MODE (LE status flag is on), and you are in LEFT
 JUSTIFY MODE (JL status flag is on). To try out the various JUSTIFICATION MODES,
 you will have to enter TEXT EDIT MODE.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  JUSTIFICATION  MODES  HAVE NO MEANING IN LINE EDIT MODE,   *
      *   AND ARE IGNORED.                                                *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 To begin, therefore, execute the following command line:

    TE

 As you can see, the banner line now shows that TEXT EDIT MODE is active. Now hit
 the  NEW  LINE  OPERATOR  a  few times to space down the page. Then start typing
 'Innumerable   ramifications   overwhelmed   the   nimble-fingered   secretarial
 operator.'  When  you  try  to pass the right margin, what should happen? That's
 right. A word-wrap will occur. Continue typing for a few more lines.  This  text
 is, of course, left justified.

 Now execute the following COMMAND:

    JMR

 Use the NEW LINE OPERATOR to space down the page  a  few  blank  lines  and  try
 typing  your  test sentence a few more times. As you can see, this time, as each
 word-wrap occurs, the line is automatically right justified.

 Now let's try CENTER JUSTIFY MODE with the following command line:

    JMC

 Again  space down a few lines with NEW LINE and begin to type the test sentence.
 This time, as each word-wrap occurs, the line is automatically center-justified.


 Finally, select ALL JUSTIFICATION with the following command line:

    JMA

 Once  more,  space  down and type the test sentence a few more times. As you can
 see this time, as each word wrap occurs the line is padded out to  be  flush  at
 both the left and right margins with extra spaces between words.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WORD-WRAP WILL CAUSE THE CURRENT  LINE  TO  BE  JUSTIFIED  IN   *
      *   ACCORDANCE WITH THE CURRENT JUSTIFICATION MODE.                 *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now turn on line numbers (using the NU COMMAND) and look at  this  all-justified
 text  carefully. As you can see, odd-numbered lines have extra spaces added from
 the right, and even lines have the extra spaces added at the left. This is  done
 to  try  to  minimize  the  'white  rivers' that would otherwise occur with this
 JUSTIFICATION MODE.

 By the way... In each of the above command lines, you should have  noticed  that
 the  COMMAND  you  entered  was  very similar; i.e., the two letters 'J' and 'M'
 followed by one more letter which specified the JUSTIFICATION MODE  you  desired
 to  use.  If you refer to your SCREDITOR III OPERATOR'S REFERENCE CARD, you will
 see this same form used for a number of other COMMANDS.  If  you  keep  this  in
 mind,  you  will  have  already  learned how to enter these other COMMANDS, even
 though you haven't used them yet (we've got to save SOMETHING for later!).


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE JUSTIFICATION MODES  ARE  SELECTED  BY  ENTERING  THE  JM   *
      *   COMMAND  AND  A  SINGLE LETTER A, C, L OR R, WHICH STANDS FOR   *
      *   THE JUSTIFICATION MODE YOU DESIRE TO USE.                       *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now  try  typing  some  more  text  of  your  own  choosing,  using  each of the
 JUSTIFICATION MODES you have learned. When you understand the operation of each,
 continue with the next section of this lesson.


MELDING AFFECTED BY JUSTIFICATION MODE

 In previous chapters, you saw the effect of melding after certain COMMANDS (such
 as  INSERT  CHARACTER  MODE), and you used the MELD OPERATOR (^MP). In all cases
 though, you were in LEFT JUSTIFY MODE. Now move to various places  in  the  text
 you  have  typed  and try the MELD PARAGRAPH OPERATOR. As you can see, each time
 you use the OPERATOR, the meld which takes  place  justifies  the  text  to  the
 current JUSTIFICATION MODE.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE MELD OPERATION, WHETHER BY EXITING INSERT CHARACTER  MODE   *
      *   OR  BY  USE  OF THE MELD PARAGRAPH OPERATOR, ALWAYS JUSTIFIES   *
      *   THE TEXT IN ACCORDANCE WITH THE CURRENT JUSTIFICATION MODE.     *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Try  changing  JUSTIFICATION  MODES  and using the MELD PARAGRAPH and the INSERT
 CHARACTER MODE OPERATORS, noting the results. When you are comfortable with  the
 way  SCREDITOR  III  melds in the various JUSTIFICATION MODES, you may ABORT the
 edit session, as we will not use this file again.


SUMMARY

 In this chapter, you have learned the JUSTIFICATION MODES supported by SCREDITOR
 III, what each does, and how to select them. The important  points  to  remember
 are:

 1) JUSTIFICATION  IS  THE  PROCESS  OF  FILLING  OR MANIPULATING A LINE SO AS TO
    ARRANGE THE TEXT IN A PARTICULAR WAY.

 2) THE FOUR MAJOR JUSTIFICATION TYPES ARE LEFT, CENTER, RIGHT AND ALL (OR  FULL)
    JUSTIFICATION, AS FOLLOWS:

    LEFT     -   LEFT  JUSTIFICATION  WILL LEAVE THE TEXT EVEN AT THE LEFT MARGIN
                 AND THE RIGHT SIDE WILL BE RAGGED.

    RIGHT    -   RIGHT JUSTIFICATION WILL LEAVE THE TEXT EVEN AT THE RIGHT MARGIN
                 AND THE LEFT SIDE WILL BE RAGGED.

    CENTER   -   CENTER  JUSTIFICATION  WILL  LEAVE THE TEXT CENTERED BETWEEN THE
                 TWO MARGINS. BOTH ENDS OF EACH LINE WILL BE RAGGED.

    ALL      -   ALL JUSTIFICATION WILL SET THE TEXT  EVEN  AT  BOTH  MARGINS  BY
                 ADDING SPACES BETWEEN WORDS AS NECESSARY.

 3) THE JUSTIFICATION MODES HAVE NO MEANING IN LINE EDIT MODE, AND ARE IGNORED.

 4) WORD-WRAP  WILL CAUSE THE CURRENT LINE TO BE JUSTIFIED IN ACCORDANCE WITH THE
    CURRENT JUSTIFICATION MODE.

 5) THE JUSTIFICATION MODES ARE SELECTED BY ENTERING THE JM COMMAND AND A  SINGLE
    LETTER  A,  C,  L OR R, WHICH STANDS FOR THE JUSTIFICATION MODE YOU DESIRE TO
    USE.

 6) THE MELD OPERATION, WHETHER BY EXITING INSERT CHARACTER MODE OR BY USE OF THE
    MELD  PARAGRAPH  OPERATOR,  ALWAYS  JUSTIFIES THE TEXT IN ACCORDANCE WITH THE
    CURRENT JUSTIFICATION MODE.
