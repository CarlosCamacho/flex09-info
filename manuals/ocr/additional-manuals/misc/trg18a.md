# TRG18A

> Source: `manuals/misc/MANUAL - FLEX Software Archive - Manual and Documentation Archive - Includes SINST0, SINST1, SINST2.zip!MANUAL.DSK!TRG18A.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                           TRAINING AND USER'S GUIDE

                                  PRINT-MERGE


.DHE
%TRAINING AND USER'S GUIDE                           SCREDITOR III WORD PROCESSOR

                                  PRINT-MERGE


.DFO
"
 (C) 1983, ALFORD & ASSOCIATES                                       PAGE 18-%%%%
.DFE
"
 PAGE 18-%%%%                                       (C) 1983, ALFORD & ASSOCIATES

                                CHAPTER EIGHTEEN

 WHAT PRINT-MERGE IS . . . . . . . . . . . . . . . . . . . . . . . . . . .  18-1
 SETTING UP THE FORM . . . . . . . . . . . . . . . . . . . . . . . . . . .  18-2
 CREATING THE DATA FILE  . . . . . . . . . . . . . . . . . . . . . . . . .  18-3
 THE PRINT-MERGE OPERATION . . . . . . . . . . . . . . . . . . . . . . . .  18-4
 MORE ABOUT PRINT-MERGE  . . . . . . . . . . . . . . . . . . . . . . . . .  18-7
 SUMMARY . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  18-8


 In    this   chapter,   you   will   learn   the   last   of   SCREDITOR   III's
 COMMANDS...PRINT-MERGE. This is one of the most powerful operations of SCREDITOR
 III,  as  you will see, and, in line with that, the one which can cause the most
 trouble if it is not fully understood.


WHAT PRINT-MERGE IS

 In  our  computer-riddled society, you have undoubtedly received more than a few
 'form' letters. If you have paid attention over the years, you will have noticed
 that these letters have gone from a 'Dear Sir or Madam' type format to something
 that looks like it was typed by a secretary just for you, including things  like
 'you  know,  Sally,  that you should buy this product now before the price rises
 and the Alford family has to pay much more  than  before!'.  These  letters  are
 produced  by  some  version  of  a  PRINT-MERGE  program. Unlike many other word
 processing systems,  however,  you  don't  have  to  buy  something  extra  with
 SCREDITOR III to do this type of job. PRINT-MERGE is BUILT IN!

 To  learn  how  to  create  these impressive almost-hand-typed form letters, you
 should open a new edit session on your NEWDOC file. You  will  be  turning  this
 letter into a form letter.


SETTING UP THE FORM

 When the letter is ready to edit, change the letter to look like FIGURE EIGHT in
 the back of this manual.

 As you can see as you edit your  letter,  we  are  replacing  the  date,  inside
 address  and  writer's  name  with  the  four characters '(LE)', and that we are
 replacing a couple of groups of words within the  text  with  the  four  letters
 '(TE)'. The (LE) string tells the PRINT-MERGE COMMAND that the four letters (LE)
 should be replaced in LINE EDIT MODE by an item from the  data  file  which  you
 will be using. (TE) says to make the replacement in TEXT EDIT MODE.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   (LE) IN A FORM LETTER TELLS SCREDITOR III TO SWITCH  TO  LINE   *
      *   EDIT  MODE  BEFORE REPLACING THE STRING WITH DATA. (TE) TELLS   *
      *   SCREDITOR III TO SWITCH TO TEXT EDIT  MODE  BEFORE  REPLACING   *
      *   THE STRING WITH DATA.                                           *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 As you can see, the (TE) strings  were  used  in  the  justified  paragraphs  of
 material,  and  (LE)  strings were used in such places as the inside address. As
 you learned when you originally created the letter, you should always  use  LINE
 EDIT  MODE  where you will be making insertions and deletions to lines that must
 not be melded.

 Here is the chart of the items you just changed. You should always make  such  a
 chart  when  you  create a form letter. This chart will tell you how the data in
 the data file which will be merged into the form is to be arranged.

    (LE) - DATE
    (LE) - INSIDE ADDRESS
    (LE)     "       "
    (LE)     "       "
    (LE)     "       "
    (LE)     "       "
    (LE)     "       "
    (LE) - SALUTATION
    (TE) - FULL NAME OF PRODUCT
    (TE) - SHORT NAME OF PRODUCT
    (TE) - GENERIC TYPE OF PRODUCT
    (TE) - FIRST NAME OF RECIPIENT
    (LE) - WRITER'S NAME


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHEN  YOU  CREATE  A FORM LETTER, YOU SHOULD ALWAYS CHART THE   *
      *   DATA ITEMS AND THEIR  TYPES  WHICH  WILL  BE  USED  WITH  THE   *
      *   LETTER.  IT  IS A GOOD IDEA TO KEEP A NOTEBOOK WITH A COPY OF   *
      *   THE FORM LETTERS AND THE CHARTS FOR REFERENCE IF  YOU  DECIDE   *
      *   TO USE THE FORM AGAIN LATER.                                    *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Look at your letter once more and verify that it does match FIGURE  EIGHT.  Make
 any  changes necessary and the LOG the edit session. Next you will create a data
 file to use with this form letter.


CREATING THE DATA FILE

 Create a new file named DATA. When the edit session is open, type  the  material
 shown in FIGURE NINE. As you type, note that each line that you type corresponds
 to one of the data items in the chart that we gave you a moment ago.  Also  note
 that in FIGURE NINE, blank lines are shown with a period in the first column. DO
 NOT TYPE THESE PERIODS. Simply hit NEW LINE once for each of these blank lines.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THERE  MUST BE EXACTLY ONE LINE OF DATA FOR EACH (LE) OR (TE)   *
      *   REPLACEMENT STRING IN THE FORM. WHERE THERE IS NO DATA FOR  A   *
      *   PARTICULAR ITEM, A BLANK LINE MUST EXIST IN THE DATA FILE.      *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 When you reach the end of the first column of material, continue typing the next
 column  as  if the data were in a single long column. Do not add any extra lines
 between the columns.

 Once you are finished typing the data, go back and verify that it is exactly  as
 shown.  When  the data you have typed matches that shown in FIGURE NINE, LOG the
 edit session. You are now ready to PRINT-MERGE.


THE PRINT-MERGE OPERATION

 Now open a new edit session on your NEWDOC file. Was your printer ready when you
 called the edit session? If you are a FLEX user, did you  preceed  the  call  to
 SCREDITOR  III with the P, (or whatever you use) prefix? If not, abort and start
 over!

 When the edit session is open, be sure to check your page positioning (using the
 DP  COMMAND)  before  doing  anything  else.  Now  select  TEXT  EDIT  MODE  and
 ALL-JUSTIFY MODE. Next be sure the right margin is at the right edge of the text
 in the paragraphs.

 Now you are ready. Execute the following COMMAND:

    PM/DATA/

 OS-9  users should include a space before the second delimiter, of course. Don't
 touch the keyboard for a moment so we can go over what has happened up to now.

 1) SCREDITOR III wrote the letter out to the output file and closed all files as
    if you were going to LOG the edit session.

 2) The data file was opened for access to the data it contained.

 3) The output file was then opened  for  input  and  its  entire  contents  were
    re-loaded (that's when the screen re-wrote the first time.

 4) Next, the first occurrence of either (LE) or (TE) was found.

 5) The (TE) or (LE) string was replaced by a line of data from the file.

 6) This search and replace sequence was continued until all occurrences  of  the
    (LE) and (TE) strings had been found and replaced.

 7) Next, the letter in its merged form was displayed.

 8) Finally, you were asked whether you wished to 'Abort, Continuous, Edit,  Next
    or Print - '

 You now have a personalized letter to Sam Sweettooth on your screen. If you look
 at  the  first  paragraph,  you will notice that it is nicely justified with the
 inserted data replacing the original (TE) strings. This is why it was  mandatory
 that you select the JUSTIFICATION MODE and margin BEFORE executing PRINT-MERGE.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE MARGINS AND JUSTIFICATION MODE MUST  BE  SELECTED  BEFORE   *
      *   DOING  A PRINT-MERGE. THE PRINT-MERGE COMMAND USES THE DELETE   *
      *   CHARACTER AND INSERT CHARACTER COMMANDS TO REPLACE  THE  (LE)   *
      *   AND  (TE)  STRINGS,  AND  A MELD AND RE-JUSTIFICATION IS DONE   *
      *   WHENEVER THE (TE) STRING IS REPLACED.                           *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now what about that cryptic message...

    'Abort, Continuous, Edit, Next or Print - '


 As you probably guessed, these are your PRINT-MERGE options.

 If  you  typed  the  letter  'A' at this point, (don't!), the data file would be
 closed and you would go back to SCREEN EDIT MODE. An LO or AB COMMAND would then
 return you to DOS as if no files were open, since they aren't (see 1, above).

 If  you  typed 'C', the letter would be printed, the blank form reloaded and the
 next block of data would be merged. Unlike the previous time, though, you  would
 not be asked again if you wanted to do anything. The PRINT-MERGE operation would
 become automatic and continue to print and merge to the end of  the  data  file.
 When  the  last  data  in  the file was merged and printed, an OUT OF DATA error
 would be posted.

 If you typed 'E', you would come out of the PRINT-MERGE COMMAND as  if  you  had
 ABORTED  the operation; however, instead of really aborting the PRINT-MERGE, you
 could re-start it later. This allows you to make spot corrections to the  letter
 after  merging  the  data,  but  before printing. This is one of the most unique
 features of the PRINT-MERGE COMMAND in SCREDITOR  III  -  the  ability  to  edit
 post-merged documents.

 If  you  typed  'N' in response to the question, SCREDITOR III would discard the
 currently merged letter and load a new blank and merge the next block  of  data.
 This allows you to skip undesired blocks of data.

 If  you typed 'P' when asked the question, SCREDITOR III would print the current
 letter. After printing, the blank form would be reloaded and the next data items
 merged into it. After the merge, the question would repeat.

 Type  an  'E'  now  to return you to SCREEN EDIT MODE. Now execute the following
 command line:

    PM/*/

 Ignore the miscellaneous characters that were  on  the  command  line  when  you
 entered COMMAND MODE. This, by the way, is the only time that SCREDITOR III ever
 changes a command line out from under you. Again, as you can see, you  have  the
 PRINT-MERGE  option  question. Answer the question with the 'P' option. Printing
 will now start. Immediately hit the ABORT key. As you can see, you are back into
 SCREEN EDIT MODE.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE PRINT-MERGE PRINTING OPERATION MAY BE STOPPED  JUST  LIKE   *
      *   THE  REGULAR PRINT COMMAND, EITHER BY USE OF THE ABORT KEY TO   *
      *   ABORT THE OPERATION, OR BY USE OF THE SPACE BAR  TO  CAUSE  A   *
      *   PAUSE IN THE OPERATION.                                         *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now turn on line numbers and re-start the printing by returning  to  PRINT-MERGE
 (PM/*/  and  answer  the question with the P response). As you see by looking at
 your printer, line numbers act the same as when the  regular  PRINT  COMMAND  is
 used. Again ABORT the printing operation.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   LINE NUMBER PRINTING OPERATES JUST  LIKE  THE  REGULAR  PRINT   *
      *   COMMAND.  IF  LINE  NUMBERS ARE DISPLAYED ON THE SCREEN, THEY   *
      *   WILL BE PRINTED. IF NOT, THEY WILL NOT BE.                      *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Return  to  PRINT-MERGE  (PM/*/). This time, though, when the question is asked,
 answer with the 'N' option. As you can see, the current letter is discarded  and
 a  new  form  with  the  next  block of data is loaded and displayed. Again, the
 question is asked. Use the 'N' option to skip all of the data in the file. After
 the  last data block has been skipped, the OUT OF DATA error will be posted. Now
 start a new PRINT-MERGE on the same data file by executing the same command line
 you used to start the first session:

    PM/DATA/

 Again, OS-9 users must include a space before the second delimiter.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHEN THE PRINT-MERGE COMMAND IS COMPLETE, EITHER THROUGH  THE   *
      *   USE  OF THE ABORT OPTION DURING PRINT-MERGE OR BY RUNNING OUT   *
      *   OF DATA IN THE CURRENT DATA FILE, A NEW  PRINT-MERGE  MAY  BE   *
      *   STARTED   ON  ANOTHER  DATA  FILE.  THIS  ALLOWS  YOU  TO  DO   *
      *   PRINT-MERGE OPERATIONS ON MULTIPLE DATA FILES.                  *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Go  ahead  and  experiment  with the PRINT-MERGE COMMAND and all of its run-time
 options. When you are comfortable with its use,  ABORT  the  edit  session.  The
 following section will give you more information about the PRINT-MERGE COMMAND.


MORE ABOUT PRINT-MERGE

 There  are  a few things about the PRINT-MERGE COMMAND about which you should be
 aware.

 1) The form letter which is used with the PRINT-MERGE COMMAND must fit within  a
    single  buffer area. Files larger than memory may not be used as the form for
    PRINT-MERGE.

 2) PRINT-MERGE may not be executed if a work  file  for  read-in,  write-out  or
    print-out  is open, or if an error has occurred which sets the WE flag in the
    banner has occurred.

 3) Printers which have large internal buffers may hold an entire letter or more.
    If  this  is the case, it may not be possible to abort the printing operation
    before the newly merged letter has already been sent to the printer  and  the
    new  form  read  in  and  merged. Under this condition, stopping the printing
    operation for corrections may not be possible.

 4) The continuous option should be used with caution if the preceeding condition
    exists.  Be sure that the data that is being merged really matches the letter
    in this case so that you will not need to stop the operation for corrections.
    If  you have questions about whether or not editing will be needed on various
    letters, use the single 'P' option instead of the 'C' option.

 5) The data in the data  file  is  used  line-by-line.  If  you  wish  to  do  a
    PRINT-MERGE  on  a large data base, your data base programs should be used to
    create the data file which will be used by the PRINT-MERGE COMMAND.


SUMMARY

 This chapter concludes your training for SCREDITOR III. In this chapter you have
 learned  how  to  use  the  PRINT-MERGE  (PM)  COMMAND.  The important points to
 remember about this COMMAND are as follows:

 1) (LE) IN A FORM LETTER TELLS SCREDITOR III TO SWITCH TO LINE EDIT MODE  BEFORE
    REPLACING  THE  STRING  WITH DATA. (TE) TELLS SCREDITOR III TO SWITCH TO TEXT
    EDIT MODE BEFORE REPLACING THE STRING WITH DATA.

 2) WHEN YOU CREATE A FORM LETTER, YOU SHOULD ALWAYS CHART  THE  DATA  ITEMS  AND
    THEIR  TYPES  WHICH WILL BE USED WITH THE LETTER. IT IS A GOOD IDEA TO KEEP A
    NOTEBOOK WITH A COPY OF THE FORM LETTERS AND THE CHARTS FOR REFERENCE IF  YOU
    DECIDE TO USE THE FORM AGAIN LATER.

 3) THERE MUST BE EXACTLY ONE LINE OF DATA FOR  EACH  (LE)  OR  (TE)  REPLACEMENT
    STRING  IN  THE  FORM.  WHERE THERE IS NO DATA FOR A PARTICULAR ITEM, A BLANK
    LINE MUST EXIST IN THE DATA FILE. 4) THE MARGINS AND JUSTIFICATION MODE  MUST
    BE  SELECTED  BEFORE  DOING  A  PRINT-MERGE. THE PRINT-MERGE COMMAND USES THE
    DELETE CHARACTER AND INSERT CHARACTER COMMANDS TO REPLACE THE (LE)  AND  (TE)
    STRINGS,  AND A MELD AND RE-JUSTIFICATION IS DONE WHENEVER THE (TE) STRING IS
    REPLACED.

 5) THE PRINT-MERGE PRINTING OPERATION MAY BE STOPPED JUST LIKE THE REGULAR PRINT
    COMMAND, EITHER BY USE OF THE ABORT KEY TO ABORT THE OPERATION, OR BY USE  OF
    THE SPACE BAR TO CAUSE A PAUSE IN THE OPERATION.

 6) LINE NUMBER PRINTING OPERATES JUST LIKE THE REGULAR PRINT  COMMAND.  IF  LINE
    NUMBERS  ARE DISPLAYED ON THE SCREEN, THEY WILL BE PRINTED. IF NOT, THEY WILL
    NOT BE.

 7) WHEN THE PRINT-MERGE COMMAND IS COMPLETE, EITHER THROUGH THE USE OF THE ABORT
    OPTION DURING PRINT-MERGE OR BY RUNNING OUT OF DATA IN THE CURRENT DATA FILE,
    A  NEW PRINT-MERGE MAY BE STARTED ON ANOTHER DATA FILE. THIS ALLOWS YOU TO DO
    PRINT-MERGE OPERATIONS ON MULTIPLE DATA FILES.
