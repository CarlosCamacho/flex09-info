# TRG14A

> Source: `manuals/misc/MANUAL - FLEX Software Archive - Manual and Documentation Archive - Includes SINST0, SINST1, SINST2.zip!MANUAL.DSK!TRG14A.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                           TRAINING AND USER'S GUIDE

                                    SYMBOLS


.DHE
%TRAINING AND USER'S GUIDE                           SCREDITOR III WORD PROCESSOR

                                    SYMBOLS


.DFO
"
 (C) 1983, ALFORD & ASSOCIATES                                       PAGE 14-%%%%
.DFE
"
 PAGE 14-%%%%                                       (C) 1983, ALFORD & ASSOCIATES

                                CHAPTER FOURTEEN

 WHAT IS A SYMBOL  . . . . . . . . . . . . . . . . . . . . . . . . . . . .  14-2
 DEFINING SYMBOLS  . . . . . . . . . . . . . . . . . . . . . . . . . . . .  14-3
 ENTERING COMMAND MODE WITH A SYMBOL . . . . . . . . . . . . . . . . . . .  14-4
 CHAINING SYMBOLS  . . . . . . . . . . . . . . . . . . . . . . . . . . . .  14-5
 EDITING EXISTING SYMBOLS  . . . . . . . . . . . . . . . . . . . . . . . .  14-6
 SAVING SYMBOLS FOR LATER USE  . . . . . . . . . . . . . . . . . . . . . .  14-6
 LOADING OLD SYMBOL DEFINITIONS  . . . . . . . . . . . . . . . . . . . . .  14-7
 SUMMARY . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  14-8


 In  this  chapter,  you  will  learn  about one of the most powerful features of
 SCREDITOR III, namely, symbols. In this chapter you will learn the following new
 COMMANDS:

                                DS - DEFINE SYMBOL
                                LS - LOAD SYMBOLS
                                SS - SAVE SYMBOLS


 You will also be learning the following OPERATOR:

       ^AS - ACTIVATE SYMBOL


WHAT IS A SYMBOL

 As  you  know,  typing  is  often a very repetitive sort of thing. You have seen
 SCREDITOR III typed dozens of times in  this  manual.  In  your  own  work,  you
 probably  can  think of many phrases which you will be typing continuously. Such
 phrases might include your company's name, your own name, salutations, etc... It
 would  make  more  sense  if  the computer did such typing for you. Also, if you
 indent paragraphs as is done in this  document,  you  will  find  that  you  are
 continually typing the same sequence of keystrokes.

 Replacing  many  keystrokes by a single keystroke is what symbols are all about.
 The single keystroke is  a  symbol  for,  or  is  replaced  by,  the  series  of
 keystrokes.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   A SYMBOL IS A SINGLE  LETTER  WHICH  WILL  BE  USED  TO  TELL   *
      *   SCREDITOR III TO PERFORM A SERIES OF KEYSTROKES.                *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 In SCREDITOR III, these keystrokes may be literally anything you can  type  from
 the  keyboard,  including,  but  not limited to, single-key OPERATORS, COMMANDS,
 etc... In fact, the only thing that cannot be included in a symbol in  SCREDITOR
 III  is the ABORT KEY! You may also define up to twenty-six symbols, represented
 by the letters A-Z (or a-z, since case is not important).


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   UP TO TWENTY-SIX SYMBOLS MAY BE DEFINED IN SCREDITOR III, AND   *
      *   MAY  CONSIST  OF  ANY  COMBINATION  OF  KEYSTROKES, INCLUDING   *
      *   LETTERS,   NUMBERS,   PUNCTUATION,   SINGLE-KEY    OPERATORS,   *
      *   COMMANDS,  ETC... ONLY THE ABORT KEY MAY NOT BE INCLUDED IN A   *
      *   SYMBOL DEFINITION.                                              *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 The  only  limitation  on  the  number  and size of symbol definitions is that a
 single symbol may be no longer  than  244  characters,  and  the  total  of  all
 characters in all symbols may not exceed 1024.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   A  SINGLE SYMBOL MAY CONSIST OF UP TO 244 CHARACTERS, AND THE   *
      *   TOTAL NUMBER OF CHARACTERS FOR ALL SYMBOLS  DEFINED  MAY  NOT   *
      *   EXCEED 1024 CHARACTERS.                                         *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 This section will teach you how to define symbols, how to use them, how to  save
 them  into  special  files,  and how to load those files for use later! To start
 with, open an edit session on the file  TABLE.  This  was  the  file  which  you
 created  in  CHAPTER TEN. The text should look like FIGURE FIVE-D in the back of
 this manual. If not, edit it before you continue.


DEFINING SYMBOLS

 Now let's set up a hypothetical case, and you see if you can see  how  to  solve
 it.  Let's say that you wished to place five more spaces after each of the names
 to allow for later salesmen whose names might be longer. How would you do it?

 You probably answered that you would move the right margin out of  the  way  and
 select LINE EDIT MODE. Then you would use the insert space operator to move each
 of the lines over. If so, you would be right. You would also be doing  the  same
 series of keystrokes on each line. Of course there is an easier way! First enter
 the following command line:

    LE;LM#15;RM#200

 This command line will select LINE EDIT MODE, set the left margin at  15  (which
 is  between  the  names and the first column of figures) and then move the right
 margin out of the way, which was the first part of what you were going to do.

 Instead of manually inserting  the  spaces,  though,  now  enter  the  following
 command line:

    DS/A/^IS^IS^IS^IS^IS^NL^AS

 Once  you  have executed the line, re-enter COMMAND MODE and clear the line. Use
 the ABORT key to return to screen editing. We'll explain why you did this  in  a
 moment.

 Now that you are ready, place the cursor at the left margin on the line with the
 headings. Now type the ACTIVATE SYMBOL OPERATOR. Notice that the AS flag is  now
 on in the banner. This tells you that the next character you type is going to be
 used as a symbol. Hit the ABORT key. Notice that the status flag  went  out.  If
 you  ever  enter  the ^AS OPERATOR and then change your mind, this is how to get
 out of it without an error.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  ABORT  KEY  WILL  TERMINATE  AN  ACTIVE SYMBOL CONDITION   *
      *   WITHOUT ERRORS.                                                 *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now type the ACTIVATE SYMBOL OPERATOR again, but this time, after the flag comes
 up in the banner, type the letter A. As you can see, the column  headings  moved
 over  five  spaces  and  the  cursor  moved down. Also, the AS flag is still on.
 Therefore, type ONLY the letter A this time. Do it again. And again. And  again.
 And again. And again. One last time. Now hit the ABORT key to stop this madness!
 You have just defined and used your first symbol in SCREDITOR III!


 Let's look at the definition you entered. Type the following command line:

    DS/A

 This  time  when you enter NEW LINE to execute the line, the existing definition
 for symbol A is displayed just as if you had typed it yourself:

    DS/A/^IS^IS^IS^IS^IS^NL^AS

 This 'look-up' feature of the  DS  (DEFINE  SYMBOL)  COMMAND,  as  you  can  see
 already,  can be quite useful. You cleared the command line earlier, by the way,
 to emphasize that you can look up the definition of any symbol at any time.

 Looking at the definition as it is displayed, you told SCREDITOR III  to  insert
 five spaces (^IS^IS^IS^IS^IS), then do a NEW LINE OPERATOR (^NL), and finally an
 ACTIVATE SYMBOL OPERATOR (^AS). As you learned in  CHAPTER  SEVEN  the  up-arrow
 tells SCREDITOR III that the next two letters will be interpreted as the name of
 an OPERATOR. The five INSERT SPACE OPERATORS were  entered  without  intervening
 delimiters since you are defining keystrokes to be used in SCREEN EDIT MODE, and
 you do not type delimiters after your single-key OPERATORS.

 The last OPERATOR in the definition is the key  to  the  way  you  repeated  the
 operation.  Since  the  definition  ends in ^AS, when the symbol is complete, it
 will have once again set ACTIVE SYMBOL MODE, and  the  next  keystroke  will  be
 interpreted  as the name of a symbol! Also, this is why you had to hit the ABORT
 key after the last insertion of spaces so that an invalid symbol would not  have
 been recognized.


ENTERING COMMAND MODE WITH A SYMBOL

 The  symbol you just defined included single-key OPERATORS. You can also include
 calls to the COMMAND MODE in a  symbol.  Open  and  read-in  your  NEWDOC  file,
 placing  it before the first line in the current buffer (refer to CHAPTER TWELVE
 if you are not sure how). Once the text is entered, execute the following symbol
 definition:

    DS/B/^ESGO#20^DM^NL

 Now  execute  symbol  B  (by typing the ACTIVATE SYMBOL OPERATOR followed by the
 letter B, of course). What happened? That's right, a COMMAND to GO  to  line  20
 was  executed.  Notice  especially  in  this  definition that you entered the ES
 (ESCAPE TO COMMAND MODE) OPERATOR with the up-arrow, then  immediately  followed
 it  with  the  GO COMMAND as if you had typed it in COMMAND MODE. Next, however,
 you entered the DELETE-TO-MARGIN OPERATOR without a semi-colon followed  by  the
 NEW  LINE  OPERATOR,  also without a semi-colon. When SCREDITOR III saw this, it
 interpreted the OPERATORS as if you had typed them while in  COMMAND  MODE.  If,
 however, you had entered this line

    DS/B/^ESGO#20;^DM;^NL

 then   SCREDITOR  III  would  have  assumed  that  you  wanted  to  execute  the
 DELETE-TO-MARGIN and NEW LINE OPERATORS as COMMANDS, and would have  stopped  in
 the  middle  of  COMMAND  MODE  waiting  for  you to type a NEW LINE OPERATOR to
 execute the command line! Compare the two lines together and see the difference:

               DS/B/^ESGO#20^DM^NL           DS/B/^ESGO#20;^DM;^NL

 This  is  probably  the  most  common  error that is made with the DEFINE SYMBOL
 COMMAND...the difference between OPERATOR entries to be used  as  OPERATORS  and
 OPERATOR  entries  to  be  used as COMMANDS. Again, the first definition says to
 enter COMMAND MODE and execute a COMMAND to go to line 20, the  second  says  to
 enter  COMMAND  MODE, go to line 20, do a DELETE-TO-MARGIN on line 20, then do a
 NEW LINE, moving the cursor from line 20 to line 21.

      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHEN USING SYMBOLS WHICH CALL COMMAND MODE, BE  VERY  CAREFUL   *
      *   TO OBSERVE THE DIFFERENCE BETWEEN AN OPERATOR AND AN OPERATOR   *
      *   ENTERED AS PART OF THE COMMAND SEQUENCE!                        *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


CHAINING SYMBOLS

 Symbols can also call symbols. First enter the following definition:

    DS/A/THIS IS A TEST

 Now enter this definition:

    DS/B/ AND SO IS THIS.

 Now do a DELETE TO MARGIN to clear off the current line and activate  symbol  A.
 THIS  IS  A TEST was printed when you did. Now do the same with symbol B. AND SO
 IS THIS was printed this time.

 Now use the NEW LINE OPERATOR to move down a line, do  a  DELETE  TO  MARGIN  to
 clear off the line, and then enter the following definition:

    DS/A/THIS IS A TEST^ASB

 and activate symbol A again. This time,

    THIS IS A TEST AND SO IS THIS.

 was printed. Symbol A called symbol B! You may chain as many symbols as you like
 in this manner (up to the maximum of 26,  of  course).  There  is,  however  one
 limitation.  The  call to another symbol MUST be the last characters in a symbol
 definition. This limitation can be easily illustrated. Clear  the  current  line
 again and enter the following definition:

    DS/A/THIS IS A TEST^ASBMESSAGE

 When  you have done so, activate symbol A. Notice that nothing in the definition
 of symbol A after the call to activate symbol B got printed. Instead,  symbol  B
 was printed.

      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   ONLY ONE ACTIVE SYMBOL POINTER IS KEPT  AT  ANY  TIME.  IF      *
      *   SYMBOL CALLS ANOTHER SYMBOL, THE POINTER TO THE SECOND SYMBOL   *
      *   REPLACES THE POINTER TO THE FIRST.                              *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
EDITING EXISTING SYMBOLS

 If  you  are  like  most other people, you will occasionally make errors in your
 symbol definitions, or will wish to make other changes to them. You saw  how  to
 recall  a  symbol  for  inspection  earlier.  By  using the same method, you can
 actually recall a symbol for editing.

 First, let's edit symbol A. This time, when you enter COMMAND MODE,  the  symbol
 definition  is still there from last time. Use the CURSOR RIGHT OPERATOR to move
 the cursor over to the first character after  ^ASB  and  do  a  DELETE-TO-MARGIN
 followed  by  NEW  LINE.  You  have  now changed the definition of symbol A. Now
 execute the review command line for symbol B:

    DS/B

 When the symbol definition is displayed, move the cursor over to  the  letter  a
 and  type  'MESSAGE  '  followed  by NEW LINE. Symbol B has now been re-defined.
 Activate symbol A now and see what is printed.

 If you had not wished to change either of the symbols, of course, you could have
 used the ABORT key to drop back into screen editing.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   A SYMBOL MAY BE EDITED BY CALLING IT  BY  THE  USE  OF  DS/x,   *
      *   WHERE  x  IS  THE  SYMBOL NAME. WHEN THE SYMBOL IS DISPLAYED,   *
      *   CHANGES MAY BE MADE. IF NO CHANGE IS DESIRED, THE  ABORT  KEY   *
      *   WILL CAUSE AN IMMEDIATE RETURN TO SCREEN EDIT MODE.             *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


SAVING SYMBOLS FOR LATER USE

 Whenever  SCREDITOR  III is called from DOS, the symbol buffer is generated with
 no definitions. This means that any symbols which you defined in an edit session
 would  be  lost  when  you returned to DOS unless there were a way to save them,
 and, of course, there is!

 Enter the following command line:

    SS/EDSYMB/;AB

 If you are an OS-9 user, you must include a space before  the  second  delimiter
 (SS/EDSYMB /;AB).

 When  this  line executes, the current symbol definitions will be saved and then
 the edit session will  abort.  SSB  and  FLEX  users  will  have  a  file  named
 EDSYMB.DAT  created on the working drive to receive the symbols. OS-9 users will
 have a file named EDSYMB created in the current working directory to receive the
 symbols.  The .DAT extension, by the way, is always used by SCREDITOR III in the
 SSB and FLEX versions for saving symbols. If you supply an extension, it will be
 ignored and .DAT substituted.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE SS COMMAND CREATES A SPECIAL FILE TO RECEIVE ALL  CURRENT   *
      *   SYMBOL  DEFINITIONS.  THIS  FILE MAY NOT BE EDITED OR LISTED,   *
      *   SINCE IT IS A PURE BINARY FILE. IN SSB AND FLEX SYSTEMS,  THE   *
      *   FILE IS CREATED ON THE WORKING DRIVE WITH A DEFAULT EXTENSION   *
      *   OF .DAT. IN OS-9 SYSTEMS, THE FILE IS CREATED IN THE  CURRENT   *
      *   WORKING DIRECTORY WITH NO EXTENSION.                            *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Once saved like this, the symbols may be re-loaded later, as the  next  part  of
 this chapter will show.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   AN SS COMMAND MAY NOT BE EXECUTED WHILE A FILE  IS  OPEN  FOR   *
      *   READ-IN,  WRITE-OUT OR PRINT-OUT, OR AFTER THE EXECUTION OF A   *
      *   PRINT-MERGE  COMMAND.  IF  A  POTENTIALLY  FATAL  ERROR   HAS   *
      *   OCCURRED  PREVIOUSLY  IN  THE  USE  OF  THE  OR, OW, SS OR OP   *
      *   COMMANDS, YOU WILL NOT BE ALLOWED TO OPEN A NEW  SYMBOL  SAVE   *
      *   FILE TO ELIMINATE THE POSSIBILITY OF BLOWING UP A DISK!         *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


LOADING OLD SYMBOL DEFINITIONS

 Start a new edit session. This time, you may start without files.

 When  SCREDITOR  III  is  ready,  try  activating symbol A, which, of course, is
 undefined at this point. When you typed the ACTIVATE  SYMBOL  OPERATOR,  the  AS
 flag  in  the  banner  came  on;  but when you typed the letter A to select that
 symbol, nothing happened other than the AS flag in the banner going out. This is
 the normal reaction to the activation of a symbol which is not defined.

 Now execute the following command line:

    LS/EDSYMB/;AB

 If  you  are  an OS-9 user, you must include a space before the second delimiter
 (LS/EDSYMB /;AB).


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   AN LS COMMAND MAY NOT BE EXECUTED WHILE A FILE  IS  OPEN  FOR   *
      *   READ-IN,  WRITE-OUT  OR  PRINT-OUT,  AFTER THE EXECUTION OF A   *
      *   PRINT-MERGE COMMAND, OR IF  A  POTENTIALLY  FATAL  ERROR  HAS   *
      *   OCCURRED PREVIOUSLY IN THE USE OF THESE COMMANDS.               *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 When control returns to SCREEN EDIT MODE, activate symbol A  again.  This  time,
 things happened! You have now re-loaded the symbol definitions you saved before.
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   NOTE:  IF  A  DISK  ERROR  OCCURS  DURING  THE LOADING OF THE   *
      *   SYMBOLS, OR IF A FILE OTHER THAN A SYMBOL FILE  IS  SPECIFIED   *
      *   FOR  LOADING, AN ERROR MESSAGE WILL BE POSTED, AND ALL SYMBOL   *
      *   DEFINITIONS WHICH EXISTED BEFORE  THE  COMMAND  WAS  EXECUTED   *
      *   WILL HAVE BEEN LOST.                                            *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 You should now take the time to  experiment  with  the  definition  and  use  of
 symbols. When you feel that you have a good idea of how to define, use, save and
 load symbols, you may abort the current edit session.


SUMMARY

 In this chapter you have learned about one of  the  most  powerful  features  of
 SCREDITOR  III,  the  definition  and  use  of  symbols. The important points to
 remember about this chapter are:

 1)  A SYMBOL IS A SINGLE LETTER WHICH WILL BE USED  TO  TELL  SCREDITOR  III  TO
     PERFORM A SERIES OF KEYSTROKES.

 2)  UP TO TWENTY-SIX SYMBOLS MAY BE DEFINED IN SCREDITOR III, AND MAY CONSIST OF
     ANY COMBINATION OF  KEYSTROKES,  INCLUDING  LETTERS,  NUMBERS,  PUNCTUATION,
     SINGLE-KEY  OPERATORS,  COMMANDS,  ETC...  ONLY  THE  ABORT  KEY  MAY NOT BE
     INCLUDED IN A SYMBOL DEFINITION.

 3)  A SINGLE SYMBOL MAY CONSIST OF UP TO 244 CHARACTERS, AND THE TOTAL NUMBER OF
     CHARACTERS FOR ALL SYMBOLS DEFINED MAY NOT EXCEED 1024 CHARACTERS.

 4)  THE ABORT KEY WILL TERMINATE AN ACTIVE SYMBOL CONDITION WITHOUT ERRORS.

 5)  WHEN  USING  SYMBOLS WHICH CALL COMMAND MODE, BE VERY CAREFUL TO OBSERVE THE
     DIFFERENCE BETWEEN AN OPERATOR AND  AN  OPERATOR  ENTERED  AS  PART  OF  THE
     COMMAND SEQUENCE!

 6)  ONLY  ONE  ACTIVE  SYMBOL  POINTER  IS  KEPT  AT ANY TIME. IF A SYMBOL CALLS
     ANOTHER SYMBOL, THE POINTER TO THE SECOND SYMBOL REPLACES THE POINTER TO THE
     FIRST.

 7)  A  SYMBOL  MAY  BE  EDITED  BY CALLING IT BY THE USE OF DS/x, WHERE x IS THE
     SYMBOL NAME. WHEN THE SYMBOL IS DISPLAYED, CHANGES MAY BE MADE. IF NO CHANGE
     IS  DESIRED,  THE  ABORT  KEY  WILL CAUSE AN IMMEDIATE RETURN TO SCREEN EDIT
     MODE.

 8)  THE SS COMMAND  CREATES  A  SPECIAL  FILE  TO  RECEIVE  ALL  CURRENT  SYMBOL
     DEFINITIONS.  THIS  FILE  MAY  NOT  BE  EDITED OR LISTED, SINCE IT IS A PURE
     BINARY FILE. IN SSB AND FLEX SYSTEMS, THE FILE IS  CREATED  ON  THE  WORKING
     DRIVE WITH A DEFAULT EXTENSION OF .DAT. IN OS-9 SYSTEMS, THE FILE IS CREATED
     IN THE CURRENT WORKING DIRECTORY WITH NO EXTENSION.


 9)  AN SS COMMAND MAY NOT  BE  EXECUTED  WHILE  A  FILE  IS  OPEN  FOR  READ-IN,
     WRITE-OUT  OR PRINT-OUT, OR AFTER THE EXECUTION OF A PRINT-MERGE COMMAND. IF
     A POTENTIALLY FATAL ERROR HAS OCCURRED PREVIOUSLY IN THE USE OF THE  OR,  OW
     SS OR OP COMMANDS, YOU WILL NOT BE ALLOWED TO OPEN A NEW SYMBOL SAVE FILE TO
     ELIMINATE THE POSSIBILITY OF BLOWING UP A DISK!

 10) AN LS COMMAND MAY NOT  BE  EXECUTED  WHILE  A  FILE  IS  OPEN  FOR  READ-IN,
     WRITE-OUT  OR PRINT-OUT, AFTER THE EXECUTION OF A PRINT-MERGE COMMAND, OR IF
     A POTENTIALLY FATAL ERROR HAS  OCCURRED  PREVIOUSLY  IN  THE  USE  OF  THESE
     COMMANDS.

 11) IF A DISK ERROR OCCURS DURING THE LOADING OF THE SYMBOLS, OR IF A FILE OTHER
     THAN A SYMBOL FILE IS SPECIFIED  FOR  LOADING,  AN  ERROR  MESSAGE  WILL  BE
     POSTED,  AND  ALL  SYMBOL  DEFINITIONS  WHICH EXISTED BEFORE THE COMMAND WAS
     EXECUTED WILL HAVE BEEN LOST.
