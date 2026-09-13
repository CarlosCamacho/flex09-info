# TRG16A

> Source: `manuals/misc/MANUAL - FLEX Software Archive - Manual and Documentation Archive - Includes SINST0, SINST1, SINST2.zip!MANUAL.DSK!TRG16A.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                           TRAINING AND USER'S GUIDE

                             FINAL PAGE FORMATTING


.DHE
%TRAINING AND USER'S GUIDE                           SCREDITOR III WORD PROCESSOR

                             FINAL PAGE FORMATTING


.DFO
"
 (C) 1983, ALFORD & ASSOCIATES                                       PAGE 16-%%%%
.DFE
"
 PAGE 16-%%%%                                       (C) 1983, ALFORD & ASSOCIATES

                                CHAPTER SIXTEEN

 SPECIALTY OPERATIONS  . . . . . . . . . . . . . . . . . . . . . . . . . .  16-2
 IMBEDDING AND DISPLAYING CONTROL CODES  . . . . . . . . . . . . . . . . .  16-3
 SPECIAL NOTE  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  16-4
 PARAMETERS OF THE PRINTED PAGE  . . . . . . . . . . . . . . . . . . . . .  16-5
 HEADERS AND FOOTERS . . . . . . . . . . . . . . . . . . . . . . . . . . .  16-6
 PAGE FORMATTING . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  16-10
 ALTERNATE PRINTERS AND OTHER THINGS . . . . . . . . . . . . . . . . . . .  16-11
 ALTERNATE PRINTER DATA FILES  . . . . . . . . . . . . . . . . . . . . . .  16-11
 THE RIGHT PRINTER . . . . . . . . . . . . . . . . . . . . . . . . . . . .  16-12
 ALTERNATE PRINTER OUTPUT  . . . . . . . . . . . . . . . . . . . . . . . .  16-13
 PRINTER PAUSE AND THE OPERATOR STOP . . . . . . . . . . . . . . . . . . .  16-14
 SUMMARY . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  16-15


 This section will teach you the remaining capabilities you will need to actually
 print your document. In this section, you will be  learning  the  following  new
 COMMANDS:

    CC - CONTROL CODE INSERT
    CD - CONTROL CODES DISPLAY
    CP - CLOSE PRINTER PATH (OS-9 ONLY)
    DF - DEFINE FOOTER
    DH - DEFINE HEADER
    DP - DEFINE PRINTER PAGE
    LP - LOAD PRINTER DATA
    OP - OPEN PRINTER FILE/PATH
    PS - CYCLE PRINTER PAUSE
    UH - UNDEFINE HEADERS/FOOTERS


SPECIALTY OPERATIONS

 If  you were working at a typewriter and wanted a word or phrase underlined, you
 would have little problem. You would probably type the  phrase,  backspace,  and
 then  type underlines where they were needed. How, though, do you tell a program
 such as SCREDITOR III, or for that matter, how  would  SCREDITOR  III  tell  the
 printer attached to your computer, to do the same thing?

 These  types  of  operations are in a special catagory because there is no fixed
 way in which terminals can be made to display these operations, and there is  no
 fixed  way  in  which various printers can be made to perform the operations, if
 they can perform them at all! We call these things specialty operations.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WE  DEFINE A SPECIALTY OPERATION AS AN OPERATION WHICH CANNOT   *
      *   BE FULLY OR PROPERLY DISPLAYED IN SOME STANDARD  WAY  ON  ALL   *
      *   TERMINALS, AND WHICH CANNOT BE GENERATED IN A FIXED WAY OR AT   *
      *   ALL ON ALL PRINTERS.                                            *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Specialty operations are selected by including special characters, which we call
 CONTROL CODES, in your text. There is a standard  way  in  which  these  control
 codes  are placed in the text, and a way in which you may tell what codes are at
 any place in the text.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   CONTROL  CODES ARE THOSE NUMBERS WHICH ARE PLACED IN THE TEXT   *
      *   TO TELL SCREDITOR III TO PERFORM  A  SPECIALTY  OPERATION  AT   *
      *   THAT POINT WHEN THE TEXT IS PRINTED.                            *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 A number of these specialty operations are defined by the same CONTROL CODES  in
 all  installations.  No matter what printer or terminal you use, you will always
 use the  same  CONTROL  CODE  to  select  the  desired  action.  We  call  these
 always-defined  CONTROL  CODES  the  'stock codes'. A list of the stock codes is
 included on the OPERATOR'S REFERENCE CARD. Take a moment and look at them before
 you continue.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   A  NUMBER OF THE LEGAL CONTROL CODES ARE ALWAYS DEFINED TO DO   *
      *   THE SAME JOB. THESE CODES ARE CALLED THE STOCK CODES.           *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Open an edit session on your NEWDOC file. When it is open, proceed with the next
 section.


IMBEDDING AND DISPLAYING CONTROL CODES

 In this section you will learn how to place CONTROL CODES in your text,  how  to
 tell where they are and what they are, and how to erase them as necessary.

 You  now  have your letter in front of you. If you look at the second paragraph,
 you see the words MOST POWERFUL. It would be nice if these words stood  out  and
 caught  the  reader's  eye.  A good way to do this would be to underline the two
 words. Let's assume that you  wanted  a  broken  underline  here;  that  is,  an
 underline  under  MOST and POWERFUL, but none under the space between the words.
 Looking at the OPERATOR'S REFERENCE  CARD,  what  CONTROL  CODE  is  defined  to
 accomplish  this? Right. CODE 10. And, as you can see, CODE 11 is defined to end
 the broken underline. To tell SCREDITOR III to underline these two words,  then,
 move  your cursor to the space immediately before MOST and execute the following
 command line:

    CC#10

 What happened on the screen? If you look closely, the cursor is still sitting on
 the  space  before  the  word  MOST.  But  now,  instead of a space, there is an
 up-arrow. This up-arrow tells you that there is a CONTROL CODE IMBEDMENT at this
 point  in  the  text.  Now move the cursor to the first space after POWERFUL and
 execute the following command line:

    CC#11

 As you can see, another up-arrow appeared, indicating that another CONTROL  CODE
 was placed here in the text.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   A CONTROL CODE IMBEDMENT IS INDICATED ON THE  SCREEN  BY  THE   *
      *   UP-ARROW.                                                       *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Up-arrows are fine, but how do you know what code is sitting there? Execute  the
 following command line:

    CD

 As  you  can  see,  the  display  window  cleared, and the numbers 10 and 11 are
 displayed now. These are the numbers of the CONTROL CODES, and are displayed  in
 their proper positions in relation to the text on the screen. Now hit your space
 bar to restore the normal screen display.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  CD  COMMAND  ALLOWS YOU TO DISPLAY THE ACTUAL NUMBERS OF   *
      *   THE CONTROL CODES WHICH ARE IMBEDDED IN YOUR TEXT. THE  SPACE   *
      *   BAR RESTORES NORMAL OPERATION.                                  *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 In like manner, you can  imbed  CONTROL  CODES  to  perform  any  of  the  stock
 specialty  operations  which your printer is capable of, and any other specialty
 operations which are defined for your printer.

 Now  that  you  have these CODES imbedded in your text, how would you get rid of
 them? Move your cursor back to the first CODE and type  a  space.  The  up-arrow
 disappeared. Now move back over to the second and do the same thing.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   CONTROL CODES ARE TREATED EXACTLY LIKE ANY OTHER CHARACTER IN   *
      *   THE  TEXT,  AND  CAN BE ERASED BY OVER-TYPING, OR BY DELETION   *
      *   USING ANY OF THE DELETE OPERATORS.                              *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Another exercise which will demonstrate this more fully might be in order. Place
 an imbedment before the word MOST again. Now move the cursor to the  T  in  MOST
 and  type  the  DELETE  WORD  OPERATOR. Notice that more than just the word MOST
 disappeared. You should exercise caution when you manipulate text near a CONTROL
 CODE to make sure that you don't undo something that you didn't want to!


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   CONTROL CODE IMBEDMENTS  ARE  TREATED  JUST  LIKE  ANY  OTHER   *
      *   CHARACTER BY SCREDITOR III.                                     *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Also, as you can see, these characters take up room on  the  display.  When  the
 document  is  printed,  the  position  taken up in the line by any CONTROL CODE,
 whether or not it makes the printer do anything, will print as a space.

      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  POSITIONS  OCCUPIED  BY THE CONTROL CODES ARE PRINTED AS   *
      *   SPACES.                                                         *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *                        *** SPECIAL NOTE ***                       *
      *                                                                   *
      *   NOT ALL PRINTERS HAVE THE CAPABILITY OF PRODUCING ALL OF  THE   *
      *   STOCK  CODES.  A  PRINTER  WHICH  DOES  NOT HAVE BACKSPACE OR   *
      *   UNDERLINE CAPABILITY, FOR INSTANCE, CANNOT GENERATE EITHER  A   *
      *   BROKEN  OR  FULL  UNDERLINE  UNDER  ANY  CONDITION.  IN  THIS   *
      *   CIRCUMSTANCE, THE CONTROL CODE WILL BE PRINTED AS A SPACE AND   *
      *   NOTHING ELSE WILL HAPPEN. THE PERSON INSTALLING SCREDITOR III   *
      *   ON YOUR SYSTEM SHOULD PROVIDE YOU WITH A COMPLETE LIST OF ALL   *
      *   OF THE CONTROL CODES DEFINED FOR YOUR INSTALLATION.             *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 Go ahead and try imbedding additional CONTROL CODES in various  places  in  your
 text.  Try  using  the CD COMMAND often to see how it allows you to see what you
 have imbedded. Also try various JUSTIFICATION COMMANDS to see what their  effect
 is  on  the CONTROL CODES you have imbedded. When you feel that you know how the
 imbedments function, go on to the next section. Don't worry about  removing  the
 imbedments  you  placed,  as you will be aborting the edit session at the end of
 this chapter.


PARAMATERS OF THE PRINTED PAGE

 There are a number of things which you must set up before you can actually print
 any  document.  Many of these may be set once at installation and never changed.
 Others you will have to change for each job. This  section  discusses  the  most
 important of these.

 Turn  on line numbers and page display (NU;PA) and move to the first line in the
 letter if you are not there already. Notice that the page flag at the left  edge
 of  the  screen  indicates that this is the first line of a page, and that it is
 page 00001. Now move to the bottom of the letter and use the NEW  LINE  OPERATOR
 to  generate  new  lines  until  another  page  flag  is displayed. This time it
 indicates that you are starting page 00002. How did SCREDITOR III know how  much
 text would fit on page one?

 When SCREDITOR III was installed, the person doing so set up the printed page to
 be 66 lines long, and that the default top and bottom margins would be  5  lines
 long  each.  There  is an easy way to verify this. Execute the following command
 line:

    DP/

 This COMMAND acts like the DEFINE SYMBOL COMMAND which you have already learned.
 The figures that it is showing you are the default top margin (/T5), the default
 left margin (/L5), the default bottom margin (/B5), the number  of  lines  on  a
 page  of  paper  (/P66), that the printing will be done single-spaced (/S1), and
 that the first page number will be page 1 (/N00001).

 If you want to return to SCREEN EDIT MODE without changing any of these  values,
 you  can  do  so, again like the DEFINE SYMBOL COMMAND, by typing the ABORT key.
 Instead of doing so at this time, however, move the cursor to  the  right  using
 the  CURSOR  RIGHT OPERATOR to the first number after the first delimiter (the 5
 in T5). Now type 8 and then NEW LINE. If you look down at the edit window  area,
 notice  that  the  page  flag  has  moved.  This is because you have changed the
 default top margin, so there are now fewer  lines  of  text  on  the  page.  Try
 changing  the  default  top margin to 30 and the default bottom margin to 35 and
 see what happens. Notice that an error was posted and that the page flag did not
 move.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE MINIMUM NUMBER OF LINES WHICH MAY BE PRINTED ON A PAGE IS   *
      *   FIVE.  THE  DIFFERENCE BETWEEN THE PAGE LENGTH AND THE SUM OF   *
      *   THE TOP AND BOTTOM MARGINS, THEREFORE, MUST BE FIVE OR MORE.    *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Also, there is a finite range of values allowable in the use of the DP COMMAND.

      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  MAXIMUM  NUMBER OF LINES ON A PAGE, TOP MARGIN OR BOTTOM   *
      *   MARGIN IS 255, OR A VALUE  WHICH  WILL  SATISFY  THE  MINIMUM   *
      *   LINES  FORMULA  ABOVE. THE MAXIMUM SPACING ON THE LEFT MARGIN   *
      *   IS 255. THE MAXIMUM NUMBER FOR SPACING IS THREE, THE  MAXIMUM   *
      *   NUMBER FOR THE PAGE NUMBER IS 65535 MINUS THE NUMBER OF PAGES   *
      *   IN THE DOCUMENT. THE MAXIMUM VALUE FOR SPACING IS  3  (TRIPLE   *
      *   SPACING). THE MINIMUM VALUE FOR ALL OF THE OPTIONS IS ONE.      *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 The left margin factor is included in the DP COMMAND  to  allow  you  to  change
 horizontal  positioning  of  the  text  on the page to make up for the fact that
 tractor-fed printers often will not allow you to  move  the  paper  horizontally
 like  a  traditional  typewriter  will.  You  should  always  check  this before
 printing. For instance, if you specified a 60-column text width and were using a
 10  character  per inch printer, a left margin of 12 or 13 would center the text
 on eight and one-half inch wide paper if the first column would otherwise  start
 at the left edge of the paper.

 The spacing option in the DP COMMAND selects single, double or triple spacing on
 print-out. When a value other than one is used, SCREDITOR III will automatically
 generate  blank  lines  between  lines  of text according to the spacing. Double
 spacing, for instance, will place one blank line between each line of text.

 The page number option allows you to specify the page number of the  first  page
 in  the  document  as  it will be printed. This allows you to generate an offset
 where a single document  is  spread  over  several  files.  If  the  first  file
 contained  pages  1-9,  for  instance, you would set the first page option to 10
 before printing the part of the document in the second file.

 Try experimenting with changes  to  the  various  options  selected  by  the  DP
 COMMAND.  When  you  are  comfortable  with  how  they affect the spacing on the
 printed page, abort the edit session.


HEADERS AND FOOTERS

 Open a new session on the NEWDOC file. Again, turn  on  line  numbers  and  page
 flags.

 You've  already  seen  that  a top and bottom margin is defined automatically by
 SCREDITOR III. But if you look at this page, you see that we  have  headers  and
 footers.  Obviously,  we did not type them on each page (although you could have
 if you wanted to, of course!).

 If you are not already there, move your cursor to the first line in the  letter.
 Now  insert nine blank lines before this first line. When you have done so, move
 the cursor to the new line 3 and center the following text:

    SCREDITOR III TEST LETTER


 Now skip down to line six and type the following material on the left margin:

    ODD HEADER TEST

 On the same line, put the following material on the right margin:

    TOP OF PAGE

 Now move your cursor down to line 10 (the first line of your letter  before  the
 inserts), and execute the following COMMAND:

    DHO

 Where  did  the  lines  you  just  typed go? When you executed the DEFINE HEADER
 COMMAND, you told SCREDITOR III that all lines from the start of the  buffer  up
 to,  but  not including the current line, was to be a header definition. In this
 case, because you used the O option, you specified  an  odd  header  definition.
 These  lines  were  removed from your text and placed in a special area which is
 set aside for the header and footer definitions (Actually,  no  extra  room  was
 used  for the definitions, only a few pointers got shuffled. The effect, though,
 is the same.).

 Now insert seven blank lines at the start of your text. This time, move down  to
 line four and type the following material at the left margin:

    STOCK LETTER

 Then type the following at the right margin:

    PAGE %%%%

 After  this,  move the cursor down to line eight, the first line of the original
 letter, and execute the following command line:

    DFO

 Again, the lines you just typed disappeared. Notice that the line  numbers  were
 also  changed  to reflect the fact that the defined lines were no longer part of
 your text.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   A  HEADER OR FOOTER IS DEFINED AS ALL LINES FROM THE START OF   *
      *   THE CURRENT BUFFER UP TO, BUT NOT INCLUDING THE CURRENT LINE.   *
      *   WHENEVER  A  HEADER  OR  FOOTER DEFINITION IS MADE, THE LINES   *
      *   COMPRISING THE DEFINITION ARE REMOVED FROM THE TEXT  AND  SET   *
      *   ASIDE FOR USE DURING PRINTING.                                  *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 At this  point,  if  you  were  to  print  the  document,  SCREDITOR  III  would
 automatically  type  the  header definition you just made INSTEAD of the default
 top margin on ALL odd pages. The default top margin would be used on even pages.
 The footer definition would be used instead of the default bottom margin, again,
 since you used the O (ODD) option, on all odd pages.


 Since you defined nine lines of text in the header definition and seven lines of
 text  in  the  footer  definition,  the  length  of  the odd pages has also been
 automatically adjusted, allowing six less lines of text on the page itself.  The
 length of the even pages has not been affected by what you just did.

 Insert blank lines at the end of your letter so that you can see the page  flags
 on  pages two and three. Count the lines on page one and page two to verify that
 these pages are now of different lengths.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHENEVER  A HEADER OR FOOTER DEFINITION EXISTS, THE NUMBER OF   *
      *   LINES COMPRISING THE DEFINITION WILL BE SUBSTITUTED  FOR  THE   *
      *   CORRESPONDING  DEFAULT  MARGIN  VALUE  FOR THE MATCHING PAGES   *
      *   (EVEN OR ODD).                                                  *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Although  you won't do so at this time, you could have used the E option for the
 DEFINE HEADER or DEFINE FOOTER COMMAND to make the  definition  active  for  the
 even pages. You could also have used the B option to specify that the definition
 would be used for both even and odd pages.

 Now log the edit session. When you return to DOS, use  your  DOS  LIST  or  VIEW
 command  to look at the file. As you can see, the definitions exist at the start
 of the file, and are not lost. Don't worry about those extra characters  at  the
 start  of  the definitions. They simply tell SCREDITOR III about the definitions
 themselves. .DHO and .DFO are on lines by themselves which are deleted when  the
 definitions are loaded to tell that the lines are definitions. The odd character
 on the next line of each definition are there to tell  SCREDITOR  III  how  many
 lines should be used as part of the definition.

 Open  a new edit session on the NEWDOC file. Again turn on line numbers and page
 flags. As you can see, the definitions are not part of the text itself.  If  you
 want  to,  though,  you  can  verify that the definitions are active, though, by
 inserting lines at the end of the text and seeing that the lengths of  the  even
 and odd pages are still different.

 Now execute the following COMMAND:

    UH

 If  you look at the line numbers, you will see that your file just grew! Move to
 the top of the letter and see what is there. Your definitions have  just  become
 part  of your letter! The UH (UNDEFINE HEADERS/FOOTERS) COMMAND may be issued at
 any time to allow you to make changes to the  definitions,  or  to  delete  them
 altogether.  To delete the definitions, you would use the UH COMMAND followed by
 the KL COMMAND to delete the lines.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  UH  COMMAND  MAY  BE  USED AT ANY TIME TO 'UNDEFINE' THE   *
      *   HEADERS AND FOOTERS, RETURNING THEM TO THE TEXT.                *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

 Redefine the ODD header. Now move the cursor down as if you were going to define
 the footer, but instead try to define the ODD header again. This time you got an
 error message.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   YOU MAY NOT DEFINE A HEADER OR FOOTER IF ONE ALREADY EXISTS.    *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 If you wish to change a  definition,  you  must  first  undefine  it,  make  the
 necessary changes, then re-define it.

 One  last warning. The header and footer definitions must be made before a NE or
 SA COMMAND is issued. If a NE or SA COMMAND has been  executed,  you  may  still
 define the headers or footers, but they will not be saved with your file.

 If you look back at your footer definition, you noticed that you did not type an
 actual page number, but rather typed four percent symbols (%%%%). This  is  what
 we  call  the  page  replacement  string.  During  printing, when this string is
 encountered in printing the headers or footers, the  current  page  number  will
 automatically  be  substituted.  In  other  words, on page three, the footer you
 defined would have PAGE 3 printed instead of PAGE %%%%.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  PAGE  REPLACEMENT  STRING (FOUR PERCENT SYMBOLS) WILL BE   *
      *   REPLACED BY THE CURRENT PAGE NUMBER WHEN THE HEADER OR FOOTER   *
      *   CONTAINING IT IS PRINTED.                                       *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Undefine the headers and footers you just entered if  they  are  still  defined.
 Then  delete  those  lines from your letter. When you have done so, LOG the edit
 session so that the NEWDOC file contains only the letter that  it  should.  When
 you  have  done so, you may go on to the next section which will tell you how to
 format your final document.


PAGE FORMATTING

 You have now learned how to ajust your default top and bottom margins and how to
 define  headers and footers as needed. There is only one thing left to do before
 actually preparing for printing.  That  is  to  adjust  vertical  formatting  as
 necessary.  Once  you learn how, you will be doing it as you edit, but we had to
 save it for now so that you would be  aware  of  the  things  which  change  the
 spacing  of text from page to page. Open a new edit session on your NEWDOC file.
 Once again, turn on line numbers and page flags.

 Now  make  about  six copies of your letter in the current buffer. When you have
 done so, move back to the top of the first copy (line 1). Now use your NEXT PAGE
 OPERATOR  to  page  down  through  the buffer. Notice where the page breaks hit.
 Whenever a page break hits on a blank line, delete it. If a page break  hits  on
 the  last  line  of  a paragraph, insert blank lines before it or insert a blank
 line in the middle of the paragraph to move the last two lines onto a new  page.
 In  other words, insert and delete blank lines as necessary to make the start of
 each page hit where you want it.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   SCREDITOR  III  MAKES  NO  AUTOMATIC DECISIONS AS TO WHERE TO   *
      *   BREAK TEXT TO MAINTAIN NORMAL TYPING RULES AS TO  HUNG  LINES   *
      *   FROM  PARAGRAPHS,  TEXT  HEADINGS,  ETC...  IT  IS  UP TO THE   *
      *   OPERATOR TO ADJUST VERTICAL SPACING TO PLACE THE DESIRED TEXT   *
      *   ON EACH PAGE.                                                   *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Although automatic rules for pagination could have been  included  in  SCREDITOR
 III,  we  felt  that  a  rule that did not satisfy you would have been more of a
 headache than no rules at all. Therefore, you can  and  should  adjust  vertical
 spacing as desired to produce pagination that pleases you.

 This  completes  this  exercise.  Abort  the  edit session and go on to the next
 section.


ALTERNATE PRINTERS AND OTHER THINGS

 The  following information is presented without any accompanying exercise due to
 its relative triviality. Be sure that you read and study it  though.  Then  just
 remember  that you saw it here, and if the need arises, you can always come back
 and look at it again.


ALTERNATE PRINTER DATA FILES

 Let's  assume  that  you  have  two  printers  attached to your system, and have
 drivers for each so that you  can  select  which  of  them  will  be  used  with
 SCREDITOR III. The problem that arises is that the printer information is loaded
 automatically when SCREDITOR III starts up. Since all of the various  characters
 which  make  the  printer  do  things like backspace and generate a new line are
 fixed in the printer data file which is  automatically  loaded,  and  cannot  be
 changed from within SCREDITOR III, how do you define the necessary parameters so
 that you can use the printer of your choice?

 The way is to have alternate data files. Your system programmer can set up these
 files for you, and a LP COMMAND is included to allow  you  to  load  the  proper
 file. You execute the LP COMMAND just like the OR and OW COMMANDS:

    LP/FILE NAME/

 OS-9  users,  as  usual,  must  leave  a space before the closing delimiter. The
 default extension for SSB and FLEX users is .DAT, and the default drive  is  the
 system drive. For OS-9 users, the default directory is EDIT_DATA on drive D0.

 For instance, to load a file named EPSON on the system drive, SSB and FLEX users
 would execute:

    LP/EPSON/

 For OS-9 users,

    LP/EPSON /

 would load the data file named EPSON from the path D0/EDIT_DATA.

 In the case of the SSB and FLEX operating systems, this COMMAND only  loads  the
 printer  data,  by the way. It is up to the user to determine whether or not the
 printed output will in fact go to the right printer. OS-9 users have it  easier,
 as you will read in a moment.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE LP COMMAND ALLOWS YOU TO LOAD AN ALTERNATE DATA FILE  FOR   *
      *   USE  WITH  A PRINTER OTHER THAN THE ONE YOU NORMALLY USE WITH   *
      *   SCREDITOR III.                                                  *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


THE RIGHT PRINTER

 The  SSB  version  of  SCREDITOR  III is the easier to use than the FLEX version
 insofar as the right printer is concerned. Since  the  printer  handlers  are  a
 'load-and-forget'  operation,  whenever the print COMMANDS are issued, SCREDITOR
 III assumes that the printer drivers are loaded. If they are not, pow! To insure
 that  a  printer  exists, a PRINT.SYS file must have been loaded at some time in
 the past. Usually this is done at system start-up. To load an alternate  printer
 driver  file,  you would GET,PPRINT.SYS, or whatever name the driver is assigned
 WHILE YOU ARE IN DOS. You system programmer should provide you with the names of
 all  printer  drivers  available to you, and which one is loaded on start-up, if
 any.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE SSB VERSION OF  SCREDITOR  III  REQUIRES  THAT  YOU  HAVE   *
      *   PREVIOUSLY  LOADED  A  PRINTER  DRIVER PROGRAM BEFORE CALLING   *
      *   SCREDITOR III FOR PRINTING OPERATIONS.                          *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 The FLEX version of SCREDITOR III requires more work to  be  sure  that  printer
 drivers are loaded. To insure this, you would call SCREDITOR III as follows,

    P,ED3,(FILES)

 where  P, is the name of the printer driver that you wish to use. As in the case
 of the SSB DOS, you should check with your system programmer  to  see  what  the
 name of the proper prefix should be to insure that a printer driver is loaded.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE FLEX VERSION OF SCREDITOR  III  REQUIRES  THAT  YOU  CALL   *
      *   SCREDITOR  III  BY PRECEDING THE CALL WITH YOUR PRINTER CALL;   *
      *   E.G., P,ED3,FILE TO INSURE THAT THE PRINTER DRIVER PROGRAM IS   *
      *   LOADED AND THAT PRINTING MAY OCCUR.                             *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 The printer path in the OS-9 version of SCREDITOR III is specified  as  part  of
 the  printer  data file itself. Therefore, when the printer data file is loaded,
 the path to the printer is automatically opened. This can cause  system  lock-up
 under  some  circumstances.  If,  for  instance,  the printer is turned off when
 SCREDITOR III is called, lock-up may occur since the printer path is not  ready,
 and SCREDITOR III will patiently wait until it is!


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE PRINTER  PATH  IS  AUTOMATICALLY  OPENED  WHEN  THE  OS-9   *
      *   VERSION  OF SCREDITOR III IS CALLED. IT IS UP TO THE OPERATOR   *
      *   TO INSURE THAT THE  PRINTER  PATH  IS  READY  BEFORE  CALLING   *
      *   SCREDITOR III, OR SYSTEM LOCK-UP MAY OCCUR.                     *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
ALTERNATE OUTPUTS

 SCREDITOR III will also let you use a file to  receive  the  output  of  the  PR
 COMMAND (but not the PM COMMAND, as will be described in later chapters). In the
 SSB and FLEX versions, you will use the OP COMMAND  followed  by  a  legal  file
 name. The default extension is .TXT, and the default drive is the working drive.
 This COMMAND cannot be issued while a file is open for READ-IN or WRITE-OUT,  or
 after  a  near-fatal  disk error occurs using either of these COMMANDS. To close
 the PRINT-OUT file, the CF COMMAND is  used  just  like  with  the  READ-IN  and
 WRITE-OUT COMMANDS.

 The  OS-9  version of SCREDITOR III requires that you use one additional COMMAND
 before the OP COMMAND. To open a PRINT-OUT file, you  would  use  the  following
 command line:

    CP;OP/PATH /

 The  CP (CLOSE PRINTER PATH) COMMAND closes the current path, and the OP COMMAND
 will open a new path. Where the path  is  a  file,  a  legal  pathlist  must  be
 supplied.

 The  OS-9 version of SCREDITOR III will also let you specify another device with
 this COMMAND. For instance, to select a hardware device  named  T4  as  the  new
 output device, instead of a file, as an OS-9 user you would use:

    CP;OP//T4 /

 The extra slash tells OS-9 that this is a device rather than a file.

 This  information should let you do everything needed before the actual printing
 itself. The next chapters will deal with the printing COMMANDS in SCREDITOR III.


PRINTER PAUSE AND THE OPERATOR STOP

 Two last things should be discussed before you actually  print  anything.  These
 are  the  ways  in  which  you  can  stop printing for a definite reason without
 aborting the printing COMMANDS.

 The first is OPERATOR STOP. This feature of SCREDITOR III allows  the  users  of
 incremental  printers  to  set  a  CONTROL  CODE  in the text for such things as
 changing the printing font being used, ribbon checks, etc...  For  instance,  as
 you have read this manual, you have noticed that all special points were printed
 in a different font than the body of the text. This was done by placing OPERATOR
 STOP  CONTROL  CODES  (CODE  7,  if  you refer to your OPERATOR REFERENCE CARD).
 Before and after the sections of the text which were to be in a different font.

 As printing progressed, each  time  the  OPERATOR  STOP  was  reached,  printing
 stopped  and  the  message  'Operator  stop...'  was  displayed  in place of the
 tab/margin line. When the print ball was replaced, the space bar was  struck  to
 resume printing. When this was done, 'Printing resumed...' was displayed.

 This  CONTROL  CODE may be placed anywhere you desire in your text, and, even on
 line printers which may not give such results as described above due to the fact
 that  they print entire lines at a time, such stops may be useful. You could use
 such stops on long documents just to check ribbon use, for instance.

 The second pause feature is used primarily where 'cut-page'  printing  is  being
 done.  Many  documents  will  be  printed on printers which use single sheets of
 paper rather than fan-fold. Since trying to get single  sheets  into  a  printer
 while  it  is  printing  is next to impossible if you want a decent result, this
 feature is included in SCREDITOR III. To use this feature, you  will  issue  the
 following command line:

    PS

 When  you  do,  you  will notice that the PC flag which you have seen up to this
 point in the banner line will change to PS.  This  indicates  that  the  PRINTER
 PAUSE  feature  is  enabled. Issuing the COMMAND again will turn off the printer
 pause.


 When  this  flag  is on, printing will stop at the end of each page of print-out
 and wait on the operator. When you are ready to  resume  printing,  hitting  the
 space bar will do so.

 In  both of these stop situations (OP-STOP and PRINTER-PAUSE), the terminal bell
 will ring to  get  your  attention.  This  means  that  you  will  not  have  to
 'nurse-maid' your printer quite so much during printing.


SUMMARY

 In this section, you have learned all of the special COMMANDS needed to make the
 final preparations for printing your document. The important points to  remember
 are as follows:


 1)  WE  DEFINE  A  SPECIALTY  OPERATION AS AN OPERATION WHICH CANNOT BE FULLY OR
     PROPERLY DISPLAYED IN SOME STANDARD WAY ON ALL TERMINALS, AND  WHICH  CANNOT
     BE GENERATED IN A FIXED WAY OR AT ALL ON ALL PRINTERS.

 2)  CONTROL  CODES  ARE  THOSE  NUMBERS  WHICH  ARE  PLACED  IN THE TEXT TO TELL
     SCREDITOR III TO PERFORM A SPECIALTY OPERATION AT THAT POINT WHEN  THE  TEXT
     IS PRINTED.

 3)  A  NUMBER  OF THE LEGAL CONTROL CODES ARE ALWAYS DEFINED TO DO THE SAME JOB.
     THESE CODES ARE CALLED THE STOCK CODES.

 4)  A CONTROL CODE IMBEDMENT IS INDICATED ON THE SCREEN BY THE UP-ARROW.

 5)  THE CD COMMAND ALLOWS YOU TO DISPLAY THE ACTUAL NUMBERS OF THE CONTROL CODES
     WHICH ARE IMBEDDED IN YOUR TEXT. THE SPACE BAR RESTORES NORMAL OPERATION.

 6)  CONTROL  CODES ARE TREATED EXACTLY LIKE ANY OTHER CHARACTER IN THE TEXT, AND
     CAN BE ERASED BY OVER-TYPING,  OR  BY  DELETION  USING  ANY  OF  THE  DELETE
     OPERATORS.

 7)  CONTROL  CODE  IMBEDMENTS  ARE  TREATED  JUST  LIKE  ANY  OTHER CHARACTER BY
     SCREDITOR III.

 8)  THE POSITIONS OCCUPIED BY THE CONTROL CODES ARE PRINTED AS SPACES.

 9)  NOT ALL PRINTERS HAVE THE CAPABILITY OF PRODUCING ALL OF THE STOCK CODES.  A
     PRINTER WHICH DOES NOT HAVE BACKSPACE OR UNDERLINE CAPABILITY, FOR INSTANCE,
     CANNOT GENERATE EITHER A BROKEN OR FULL UNDERLINE UNDER  ANY  CONDITION.  IN
     THIS  CIRCUMSTANCE,  THE CONTROL CODE WILL BE PRINTED AS A SPACE AND NOTHING
     ELSE WILL HAPPEN. THE PERSON INSTALLING SCREDITOR III ON YOUR SYSTEM  SHOULD
     PROVIDE  YOU  WITH  A  COMPLETE LIST OF ALL OF THE CONTROL CODES DEFINED FOR
     YOUR INSTALLATION.

 10) THE MINIMUM NUMBER OF LINES WHICH MAY BE PRINTED ON  A  PAGE  IS  FIVE.  THE
     DIFFERENCE  BETWEEN  THE  PAGE  LENGTH  AND  THE  SUM  OF THE TOP AND BOTTOM
     MARGINS, THEREFORE, MUST BE FIVE OR MORE.

 11) THE MAXIMUM NUMBER OF LINES ON A PAGE, TOP MARGIN OR BOTTOM MARGIN  IS  255,
     OR  A  VALUE WHICH WILL SATISFY THE MINIMUM LINES FORMULA ABOVE. THE MAXIMUM
     SPACING ON THE LEFT MARGIN IS 255. THE MAXIMUM NUMBER FOR SPACING IS  THREE,
     THE MAXIMUM NUMBER FOR THE PAGE NUMBER IS 65535 MINUS THE NUMBER OF PAGES IN
     THE DOCUMENT. THE MAXIMUM VALUE FOR  SPACING  IS  3  (TRIPLE  SPACING).  THE
     MINIMUM VALUE FOR ALL OF THE OPTIONS IS ONE.

 12) A  HEADER  OR  FOOTER  IS DEFINED AS ALL LINES FROM THE START OF THE CURRENT
     BUFFER UP TO, BUT NOT INCLUDING THE  CURRENT  LINE.  WHENEVER  A  HEADER  OR
     FOOTER  DEFINITION  IS MADE, THE LINES COMPRISING THE DEFINITION ARE REMOVED
     FROM THE TEXT AND SET ASIDE FOR USE DURING PRINTING.


 13) WHENEVER  A  HEADER  OR  FOOTER  DEFINITION  EXISTS,  THE  NUMBER  OF  LINES
     COMPRISING  THE DEFINITION WILL BE SUBSTITUTED FOR THE CORRESPONDING DEFAULT
     MARGIN VALUE FOR THE MATCHING PAGES (EVEN OR ODD).

 14) THE UH COMMAND MAY BE USED  AT  ANY  TIME  TO  'UNDEFINE'  THE  HEADERS  AND
     FOOTERS, RETURNING THEM TO THE TEXT.

 15) YOU MAY NOT DEFINE A HEADER OR FOOTER IF ONE ALREADY EXISTS.

 16) THE  PAGE  REPLACEMENT STRING (FOUR PERCENT SYMBOLS) WILL BE REPLACED BY THE
     CURRENT PAGE NUMBER WHEN THE HEADER OR FOOTER CONTAINING IT IS PRINTED.
