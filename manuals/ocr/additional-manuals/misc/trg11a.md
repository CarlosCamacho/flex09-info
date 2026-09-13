# TRG11A

> Source: `manuals/misc/MANUAL - FLEX Software Archive - Manual and Documentation Archive - Includes SINST0, SINST1, SINST2.zip!MANUAL.DSK!TRG11A.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                           TRAINING AND USER'S GUIDE

                                TEXT FORMATTING


.DHE
%TRAINING AND USER'S GUIDE                           SCREDITOR III WORD PROCESSOR

                                TEXT FORMATTING


.DFO
"
 (C) 1983, ALFORD & ASSOCIATES                                       PAGE 11-%%%%
.DFE
"
 PAGE 11-%%%%                                       (C) 1983, ALFORD & ASSOCIATES

                                 CHAPTER ELEVEN

 FORMATTING TEXT . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  11-2
 INDENTING . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  11-2
 THE JUSTIFICATION AND PACKING COMMANDS  . . . . . . . . . . . . . . . . .  11-4
 MORE USES FOR INDENTING . . . . . . . . . . . . . . . . . . . . . . . . .  11-6
 A WARNING ABOUT INDENTING . . . . . . . . . . . . . . . . . . . . . . . .  11-7
 SUMMARY . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  11-8


 In  previous chapters, you have learned the various JUSTIFICATION MODES, and how
 they affect the word-wrap and melding operations.  In  this  chapter,  you  will
 learn about formatting your text after entry.


 In the course of completing this chapter, you will learn the following COMMANDS:

                 JL - JUSTIFY LINE           PP - PACK PARAGRAPH
                 JP - JUSTIFY PARAGRAPH      LI - LINE INDENT
                 PL - PACK LINE              PI - PARAGRAPH INDENT


FORMATTING TEXT

 Formatting  text is the procedure which makes the text take on the desired final
 appearance. As you have seen, SCREDITOR III can go a long way toward  completely
 formatting  your  text even while you type; however, you will probably find that
 when you are done with  your  document  you  would  like  it  to  look  slightly
 differently than it does when you are finished typing.

 As  you  recall  from  chapter one, one of the major advantages of a full window
 processor such as SCREDITOR III is that you don't need to print your document to
 see  how  it will look, and a further advantage is that you can make changes and
 immediately see the result of your efforts.

 You have already used  the  JUSTIFICATION  MODE  COMMAND  to  pre-determine  the
 justification  of  your  text  as  it  is  entered.  There  are also COMMANDS in
 SCREDITOR III to further manipulate your text along these lines.

 To perform the exercises in this section, you should open a new edit session  on
 your NEWDOC file.


INDENTING

 Now that your letter is on the screen, switch SCREDITOR III into TEXT EDIT  MODE
 and  ALL  JUSTIFY  MODE  (TE;JMA).  Now move the cursor to the first line of the
 first paragraph, which starts with the word 'Thank'. Hit the MELD  OPERATOR.  As
 you can see, the paragraph was just justified to the current MODE (ALL JUSTIFY).

 What if you wanted an indent on the first line of this  paragraph,  though?  You
 have  already  learned  that  spacing  between words is automatically handled by
 SCREDITOR III, and that you cannot simply insert spaces to indent.  There  is  a
 COMMAND, of course, to handle this. Execute the following command line:

    LI#5

 As  you can see, the first line of the paragraph is now indented by five spaces.
 Now move the cursor to the 'o' in 'our' after 'for' in this line, use the INSERT
 CHARACTER  OPERATOR and change the word from 'our' to 'your'. As you should know
 now, to leave the INSERT CHARACTER MODE,  you  would  use  any  cursor  movement
 OPERATOR (such as cursor left). What happened to the indent?

 Now execute the following COMMAND:

    PI#5

 Now,  instead of indenting the first line of the paragraph, the entire paragraph
 has been indented by five spaces.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  NUMBER  SPECIFIED  IN  THE  LINE  AND  PARAGRAPH  INDENT   *
      *   COMMANDS IS THE NUMBER OF SPACES WHICH WILL  EXIST  FROM  THE   *
      *   LEFT  MARGIN  TO THE FIRST CHARACTER OF THE LINE(S) AFTER THE   *
      *   COMMAND HAS EXECUTED.                                           *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

 Now that the paragraph has been indented, move the cursor to the space after the
 word 'Processing' and insert ' System.'. Leave INSERT  CHARACTER  MODE  and  see
 what happens.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IN TEXT EDIT MODE,  ALL  SPACES  ARE  UNDER  THE  CONTROL  OF   *
      *   SCREDITOR  III,  AND  THE  NUMBER OF SPACES IN A LINE WILL BE   *
      *   CHANGED  AS  NECESSARY  DURING  MELDING   AND   JUSTIFICATION   *
      *   OPERATIONS.                                                     *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 This  implies  a  certain amount of procedure to be followed during your editing
 and formatting operations. We will be talking about these procedures more later.

 Move your cursor back to the first line  of  the  paragraph  and  use  the  MELD
 OPERATOR  to re-pack and justify the paragraph. When you have done so, change to
 LINE EDIT MODE. Re-execute the LINE INDENT COMMAND. When you have done so,  look
 at the right side of the line. Now execute the PARAGRAPH INDENT COMMAND that you
 used a moment ago. As you can see, you have lost text from the end of the  lines
 both by line indenting and paragraph indenting.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   LINE  AND  PARAGRAPH  INDENT IN LINE EDIT MODE ACT EXACTLY AS   *
      *   THE INSERT SPACE OPERATOR IN LINE EDIT MODE.  ANY  CHARACTERS   *
      *   FORCED PAST THE RIGHT MARGIN WILL BE LOST.                      *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Try  using the LINE and PARAGRAPH INDENT COMMANDS on your letter, in combination
 with the various JUSTIFICATION MODES and in both LINE and TEXT EDIT MODES.  When
 you have a good idea of how they work, abort the edit session.


THE JUSTIFICATION AND PACKING COMMANDS

 To start, open a new edit session on your NEWDOC file. When it is ready,  select
 TEXT  EDIT MODE, move your cursor down to the first line in the first paragraph,
 and execute the JUSTIFY LINE  COMMAND  with  the  RIGHT  option,  by  using  the
 following command line:

    JLR

 What  happened?  That's right, the line is now right justified. Now try JLL, JLC
 and JLA (left, center and all-justify options). Note the effect of each.

 After the JLA COMMAND, your line should be all-justified. Now  try  the  JUSTIFY
 LINE RIGHT COMMAND (JLR) again. What happened this time? Right. Nothing. This is
 because the line is already flush on the right margin.

 Use the PACK LINE LEFT COMMAND (PLL) to remove the  extra  spaces.  Then  select
 LINE  EDIT MODE and try the JUSTIFY LINE COMMAND again with its various options.
 Notice that the effect is exactly the same as in TEXT EDIT MODE.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE JUSTIFY LINE COMMAND ALWAYS EXECUTES AS IF SCREDITOR  III   *
      *   WERE  IN  LINE  EDIT  MODE.  THE  SPACING OF THE LINES IS NOT   *
      *   CHANGED IN ANY WAY, EXCEPT TO PAD THE LINES AS  NECESSARY  IN   *
      *   THE ALL-JUSTIFY OPTION.                                         *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 In  the  same way, try the JUSTIFY PARAGRAPH COMMAND. As you can see, the result
 is as if you used the JUSTIFY LINE COMMAND on each line in  the  paragraph.  Use
 the  PACK  PARAGRAPH  LEFT (PPL) COMMAND to remove the extra spaces when you use
 the ALL (A) option, just as you used the PACK LINE LEFT COMMAND before.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE JUSTIFY PARAGRAPH COMMAND ALWAYS EXECUTES AS IF SCREDITOR   *
      *   III  WERE  IN LINE EDIT MODE. THE SPACING OF THE LINES IS NOT   *
      *   CHANGED IN ANY WAY, EXCEPT TO PAD THE LINES AS  NECESSARY  IN   *
      *   THE ALL-JUSTIFY OPTION.                                         *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Using  the  ALL (A) option with the JUSTIFY LINE COMMAND to spread out a line to
 the margins each time, execute the PACK LINE COMMAND  using  the  three  options
 shown  on  the OPERATOR'S REFERENCE CARD (Left, Center, and Right). Notice that,
 unlike the JUSTIFY LINE COMMAND, the All (A) option does not exist for the  PACK
 LINE  COMMAND. This is because the effect is identical to the use of the JUSTIFY
 LINE COMMAND with the All (A) option.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  PACK  LINE  COMMAND WILL REMOVE EXTRA SPACES FROM A LINE   *
      *   AND PERFORM THE OPTIONED JUSTIFICATION. NO OTHER LINE IN  THE   *
      *   TEXT WILL BE EFFECTED BY THIS COMMAND.                          *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now try the same thing with the PACK PARAGRAPH COMMAND.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  PACK  PARAGRAPH  COMMAND  OPERATES  AS  IF THE PACK LINE   *
      *   COMMAND WERE USED SEPARATELY ON EACH LINE IN THE PARAGRAPH.     *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Try  using  the  JUSTIFY  PARAGRAPH and PACK PARAGRAPH COMMANDS, starting on the
 SECOND line of a paragraph and see what happens.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE JUSTIFY PARAGRAPH AND  PACK  COMMANDS  OPERATE  FROM  THE   *
      *   CURRENT  LINE  THE  END  OF THE CURRENT PARAGRAPH IN THE SAME   *
      *   MANNER AS THE MELD TEXT OPERATOR.                               *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Go ahead and experiment with the JUSTIFY LINE, PACK LINE, JUSTIFY PARAGRAPH  and
 PACK PARAGRAPH COMMANDS. When you are comfortable with their use, abort the edit
 session.


MORE USES FOR INDENTING

 There are more uses for the INDENT COMMANDS than simply indenting. For instance,
 when you indented the entire paragraph in the first exercise  in  this  chapter,
 you  saw  how to move text horizontally, even though you might not have realized
 it. This section will show you some more uses for this  type  of  operation.  To
 start,  open  a  new  edit session on your NEWDOC file. When it is ready, select
 TEXT EDIT MODE and ALL-JUSTIFY MODE. Then move your cursor  down  to  the  first
 line in the first paragraph and MELD it.

 Now you are ready for something that you will probably be using over and over in
 SCREDITOR  III...changing  the  width of paragraphs. Enter the following command
 line, but before you execute it, though, think about what it will do,  and  why.
 Now execute it.

    PI#10;JPL

 What  happened?  As you should have guessed, the paragraph was first squeezed in
 from the left by ten columns. After this, the paragraph was left-justified using
 the  JUSTIFY  PARAGRAPH  LEFT (JPL) COMMAND, effectively moving the paragraph to
 the left margin. The net effect of the command sequence, then, was to indent the
 paragraph  from  the  right  by ten columns while maintaining all-justification.
 LINE EDIT MODE did not have to be selected to insure that our new spacing  would
 be  maintained,  by the way, since the JUSTIFY PARAGRAPH COMMAND acts as if LINE
 EDIT MODE were active anyway.

 Now execute the following command line:

    PI#20;LE;PI#10;TE

 What happened this time? That's right. The  paragraph  was  indented  from  BOTH
 sides.  This time, we switched into LINE EDIT MODE before the second indentation
 to insure that justification would be maintained.

 Use the MELD OPERATOR to re-justify the paragraph to  the  current  margins  and
 re-execute the command line. As you can see, the net effect is the same.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IN TEXT EDIT MODE, A MELD IS PERFORMED ON THE PARAGRAPH AS IT   *
      *   IS INDENTED TO INSURE THE BEST POSSIBLE SPACING.                *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


A WARNING ABOUT INDENTING

 Now  use  the  MELD OPERATOR to re-justify the paragraph to the current margins.
 When you have done so, set the right margin at column 35 (RM#35, remember?). Now
 re-execute the command line. As you can see, a mess is the result.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHEN MANIPULATING THE WIDTH  OF  A  PARAGRAPH  USING  THE  PI   *
      *   COMMAND,  BE  SURE  THAT  ALL  OF THE PARAGRAPH IS WITHIN THE   *
      *   MARGINS. TIME IS A PRECIOUS COMMODITY, AND RE-TYPING MATERIAL   *
      *   WASTES TIME!                                                    *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Go ahead and experiment with various combinations of  the  INDENT,  JUSTIFY  and
 PACK  COMMANDS.  When  you  feel that you understand all of the material in this
 chapter, you may abort the edit session.


SUMMARY

 In  this  chapter, you have learned still more about how to manipulate your text
 with SCREDITOR III. The important points to remember are:

 1)  THE NUMBER SPECIFIED IN THE LINE AND PARAGRAPH INDENT COMMANDS IS THE NUMBER
     OF SPACES WHICH WILL EXIST FROM THE LEFT MARGIN TO THE  FIRST  CHARACTER  IN
     THE LINE(S) AFTER THE COMMAND HAS EXECUTED.

 2)  IN TEXT EDIT MODE, ALL SPACES ARE UNDER THE CONTROL OF  SCREDITOR  III.  THE
     NUMBER  OF  SPACES  IN  A  LINE WILL BE CHANGED AS NECESSARY DURING MELD AND
     JUSTIFICATION OPERATIONS.

 3)  LINE  AND PARAGRAPH INDENT IN LINE EDIT MODE ACT EXACTLY AS THE INSERT SPACE
     OPERATOR IN LINE EDIT MODE. ANY CHARACTERS FORCED PAST THE RIGHT MARGIN WILL
     BE LOST.

 4)  THE  JUSTIFY  LINE  COMMAND ALWAYS EXECUTES AS IF SCREDITOR III WERE IN LINE
     EDIT MODE. THE SPACING OF THE LINES IS NOT CHANGED IN ANY WAY, EXCEPT TO PAD
     THE LINES AS NECESSARY IN THE ALL-JUSTIFY OPTION.

 5)  THE  JUSTIFY  PARAGRAPH  COMMAND ALWAYS EXECUTES AS IF SCREDITOR III WERE IN
     LINE EDIT MODE. THE SPACING OF THE LINES IS NOT CHANGED IN ANY  WAY,  EXCEPT
     TO PAD THE LINES AS NECESSARY IN THE ALL-JUSTIFY OPTION.

 6)  THE PACK LINE COMMAND WILL REMOVE EXTRA SPACES FROM A LINE AND PERFORMED THE
     OPTIONED JUSTIFICATION. NO OTHER LINE IN THE TEXT WILL BE EFFECTED  BY  THISH
     COMMAND.  THE  PACK  PARAGRAPH  COMMAND OPERATES AS IF THE PACK LINE COMMAND
     WERE USED SEPARATELY ON EACH LINE IN THE PARAGRAPH.

 8)  THE JUSTIFY PARAGRAPH AND PACK PARAGRAPH COMMANDS OPERATE FROM  THE  CURRENT
     LINE  TO  THE  END  OF  THE CURRENT PARAGRAPH IN THE SAME MANNER AS THE MELD
     OPERATOR.

 9)  IN TEXT EDIT MODE, A MELD IS PERFORMED ON THE PARAGRAPH AS IT IS INDENTED TO
     INSURE THE BEST POSSIBLE SPACING.

 10) WHEN  MANIPULATING  THE  WIDTH  OF A PARAGRAPH USING THE PI COMMAND, BE SURE
     THAT ALL OF THE  PARAGRAPH  IS  WITHIN  THE  MARGINS.  TIME  IS  A  PRECIOUS
     COMMODITY, AND RE-TYPING MATERIAL WASTES TIME!
