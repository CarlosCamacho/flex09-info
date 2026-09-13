# TRG13A

> Source: `manuals/misc/MANUAL - FLEX Software Archive - Manual and Documentation Archive - Includes SINST0, SINST1, SINST2.zip!MANUAL.DSK!TRG13A.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                           TRAINING AND USER'S GUIDE

                                THE HELP REQUEST


.DHE
%TRAINING AND USER'S GUIDE                           SCREDITOR III WORD PROCESSOR

                                THE HELP REQUEST


.DFO
"
 (C) 1983, ALFORD & ASSOCIATES                                       PAGE 13-%%%%
.DFE
"
 PAGE 13-%%%%                                       (C) 1983, ALFORD & ASSOCIATES

                                CHAPTER THIRTEEN

 TOO MANY COMMANDS . . . . . . . . . . . . . . . . . . . . . . . . . . . .  13-2
 HELP ON HELP  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  13-2
 LISTING AVAILABLE COMMANDS  . . . . . . . . . . . . . . . . . . . . . . .  13-2
 LISTING AVAILABLE OPERATORS . . . . . . . . . . . . . . . . . . . . . . .  13-3
 LOOKING UP A COMMAND  . . . . . . . . . . . . . . . . . . . . . . . . . .  13-3
 SUMMARY . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  13-4


 In  this  chapter,  you  will  learn  about  one  of the most 'helpful' COMMANDS
 available in SCREDITOR III...the HR (HELP REQUEST) COMMAND.

 For the HR COMMAND to function, you must have the file HELP.DAT on  your  system
 drive  (or  in  the EDIT_DATA directory on drive D0 in OS-9 systems). If you are
 not sure whether or not it was put there when SCREDITOR  III  was  installed  in
 your  system, check before you go on. If it is not there, you cannot perform the
 exercises in this chapter.


TOO MANY COMMANDS

 By  now,  you  are  probably  thinking  about  how  much  you have learned about
 SCREDITOR III, and that there are just too many COMMANDS and forms  of  COMMANDS
 to  ever  remember.  You can just picture the mess that will ensue when you lose
 that fantastic little OPERATOR REFERENCE CARD and cannot remember  what  COMMAND
 to  use  for a job, or what form to use. And by now, you should be ready for our
 familiar response...'With SCREDITOR III, there is a way!'

 Well, there is a way! SCREDITOR III includes a COMMAND which will let  you  look
 up  information  about  any  of its COMMANDS, and some additional information to
 boot. Open an edit session without files and then continue with this chapter.


HELP ON HELP

 When you first want help, it is assumed that you don't know how to  get  it,  so
 execute the following command line:

    HR?

 When  you  have  done so, a general information screen will be displayed listing
 the various HELP REQUEST options. As you can  see,  you  can  display  the  help
 information  screen  as  you  are  doing now, display a summary of the available
 COMMANDS, a summary of the available OPERATORS, and even detailed information on
 each  COMMAND.  To  clear the screen and return to screen editing, hit the space
 bar. Do so now.


LISTING AVAILABLE COMMANDS

 Now that you can access the help file, list the summary of  available  COMMANDS.
 If  you  don't  remember from the first help screen how to do so, re-display the
 screen. You should see that the way to list the summary of COMMANDS is to  type:

    HR?C

 Notice  in  particular the message at the bottom of the table. Any time there is
 more than one screen of information, this  message  will  be  displayed.  As  it
 indicates,  the space bar will erase the current screen and display the next. If
 the message is not displayed, the space bar will return you to screen editing.


 Go  ahead  and  look at the next screen of COMMANDS. The message is there again.
 Use your space bar again to look at the last screen of COMMANDS. This time there
 is no message. Hit your space bar one more time. You are now back in SCREEN EDIT
 MODE. If you had hit your ABORT key at any time during the  listing,  you  would
 have immediately returned to screen editing.

      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   YOU MAY USE THE HR (HELP REQUEST) COMMAND ANY TIME THE W FLAG   *
      *   IS  NOT  ON  IN  THE  BANNER  LINE  (WR, WE, WW, WP) TO GET A   *
      *   SUMMARY OF AVAILABLE COMMANDS,  EXCEPT  AFTER  A  PRINT-MERGE   *
      *   COMMAND HAS BEEN EXECUTED.                                      *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
LISTING AVAILABLE OPERATORS

 The HR COMMAND will, as you saw before, let you list  the  available  SINGLE-KEY
 OPERATORS also. Get the first page of OPERATORS onto your screen now. If you are
 not sure how, use the HR? COMMAND to list  the  help  information  to  find  the
 correct  option  to  use.  When  the first page of OPERATORS is listed, continue
 reading here.

 As you can see, there is, in fact, more than  one  page  of  OPERATORS  (as  the
 message  shows).  Now  look  at  the  second  page of OPERATORS. You should have
 noticed that the two-letter name of each OPERATOR is listed. These are  the  two
 letters  you  would use if you wished to include an OPERATOR as a COMMAND in the
 command line, as you will remember from CHAPTER SEVEN.

 Hit your space bar one more time to return to screen editing.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   YOU MAY USE THE HR (HELP REQUEST) COMMAND ANY TIME THE W FLAG   *
      *   IS NOT ON IN THE BANNER LINE  (WR,  WE,  WW,  WP)  TO  GET  A   *
      *   SUMMARY  OF  AVAILABLE  OPERATORS, EXCEPT AFTER A PRINT-MERGE   *
      *   COMMAND HAS BEEN EXECUTED. THIS FORM OF THE HELP  REQUEST  IS   *
      *   ESPECIALLY  USEFUL, SINCE THE TWO-LETTER NAME OF THE OPERATOR   *
      *   MUST BE USED TO PLACE AN OPERATOR IN THE COMMAND LINE.          *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


LOOKING UP A COMMAND

 Now for the real meat of the HR (HELP REQUEST) COMMAND. Use COMMAND to  look  up
 information on the TALLY COMMAND. If you aren't sure how yet -

    1) Look  at  the Help Request Summary (HR?) to find the form that you will be
       using, in this case HR?xx.

    2) Look at the Help Request Command Summary (HR?C)  to  find  the  two-letter
       name of the COMMAND, in this case TA.

    3) Request the information on the COMMAND. In this case, type HR?TA.


 It  will  take  a  few  moments to actually get to the information, since the TA
 COMMAND is near the end of the help file.  When  the  information  appears,  you
 again  will  see that there is more than one page of information on the COMMAND.
 Use your space bar to page through the information. As you can  see,  a  lot  of
 information is summarized about the TALLY COMMAND.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   DETAILED  INFORMATION  ABOUT  ANY OF SCREDITOR III'S COMMANDS   *
      *   MAY BE OBTAINED USING HR? FOLLOWED BY THE TWO-LETTER  COMMAND   *
      *   NAME.  MANY  OF  THE  LISTINGS  INCLUDE MORE THAN ONE PAGE OF   *
      *   INFORMATION.                                                    *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 Spend  some  time  now  looking at the information on various COMMANDS which you
 have already learned. When you are comfortable with the way the HR COMMAND works
 and how it presents its information, ABORT the edit session.


SUMMARY

 In this chapter, you have learned how to find more information  about  SCREDITOR
 III  without having to refer to any printed matter. This will be very helpful as
 you are using the program. The important points to remember are:

 1) YOU  MAY  USE  THE HR (HELP REQUEST) COMMAND ANY TIME THE W FLAG IS NOT ON IN
    THE BANNER LINE (WR, WE, WW, WP) TO GET  A  SUMMARY  OF  AVAILABLE  COMMANDS,
    EXCEPT AFTER A PRINT-MERGE COMMAND HAS BEEN EXECUTED.

 2) YOU  MAY  USE  THE HR (HELP REQUEST) COMMAND ANY TIME THE W FLAG IS NOT ON IN
    THE BANNER LINE (WR, WE, WW, WP) TO GET A  SUMMARY  OF  AVAILABLE  OPERATORS,
    EXCEPT  AFTER  A PRINT-MERGE COMMAND HAS BEEN EXECUTED. THIS FORM OF THE HELP
    REQUEST IS ESPECIALLY USEFUL, SINCE THE TWO-LETTER NAME OF THE OPERATOR  MUST
    BE USED TO PLACE AN OPERATOR IN THE COMMAND LINE.

 3) DETAILED  INFORMATION  ABOUT  ANY OF SCREDITOR III'S COMMANDS MAY BE OBTAINED
    USING HR? FOLLOWED BY THE TWO-LETTER  COMMAND  NAME.  MANY  OF  THE  LISTINGS
    INCLUDE MORE THAN ONE PAGE OF INFORMATION.
