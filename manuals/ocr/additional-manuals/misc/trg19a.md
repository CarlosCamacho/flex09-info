# TRG19A

> Source: `manuals/misc/MANUAL - FLEX Software Archive - Manual and Documentation Archive - Includes SINST0, SINST1, SINST2.zip!MANUAL.DSK!TRG19A.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                           TRAINING AND USER'S GUIDE

                     WRAP-UP, COMMENTS, THOUGHTS AND PLANS


.DHE
%TRAINING AND USER'S GUIDE                           SCREDITOR III WORD PROCESSOR

                     WRAP-UP, COMMENTS, THOUGHTS AND PLANS


.DFO
"
 (C) 1983, ALFORD & ASSOCIATES                                       PAGE 19-%%%%
.DFE
"
 PAGE 19-%%%%                                       (C) 1983, ALFORD & ASSOCIATES

                                CHAPTER NINETEEN

 WRAPPING IT UP  . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  19-2
 WHY WE DID IT THAT WAY  . . . . . . . . . . . . . . . . . . . . . . . . .  19-3
 WHAT'S COMING   . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  19-4


 At this point, you have completed your training on SCREDITOR III.  This  section
 of  the Training and User's Guide is really intended for your system programmer,
 and may be ignored if you like.


WRAPPING IT UP

 When  SCREDITOR  III  was  installed  for  the purposes of this training manual,
 CONGEN was run with no start-up or return command  lines.  In  practice,  it  is
 often  desirable  to  set  some initial parameters. The start-up command line is
 designed for this. If, for instance, you will be doing  little  or  nothing  but
 letter  writing or document preparation, you might want to select TEXT EDIT MODE
 and ALL-JUSTIFY MODE. The answer  to  the  start-up  command  line  question  in
 CONGEN, then, would look like:

    TE;JMA

 You  might  also  want to clear a number of the tabs and set others, or to set a
 different right margin. You could also load a standard symbol file. All of these
 things can be done with the start-up command line.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE START-UP COMMAND LINE CAN CONTAIN ANYTHING THAT YOU COULD   *
      *   ENTER  ON  THE  COMMAND LINE DURING ACTUAL EDITING EXCEPT THE   *
      *   ABORT KEY.                                                      *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Also, it is sometimes convenient to have SCREDITOR III call another program when
 it terminates. The return command  line  can  be  used  for  this  purpose.  For
 instance,  you  might want to list the text files on the working drive or in the
 current working directory. Such commands may be put in the return command  line.
 The  form of such return commands must match the form that your system requires,
 of course. To set up a return command line, answer that question in CONGEN  with
 the desired command line.

 When  you  ran  the  KEYGEN program, you were allowed to use any key arrangement
 that suited you. After using SCREDITOR III for a while,  it  would  be  good  to
 check  with  the  operators  using the program to see if the keyboard layout you
 selected suits them. Re-running KEYGEN several times to make an  operator  happy
 is not unheard of!


WHY WE DID IT THAT WAY

 A  number  of  people  have  asked us why the right-most column of the screen is
 never  used  by  SCREDITOR  III.  The  reason  is  that  most   terminals   will
 automatically  do  a  NEW  LINE  when  the lower right position on the screen is
 written into. This will usually cause the  screen  to  scroll  up.  Rather  than
 present  a  display  with this character position undisplayed as most other such
 programs do, we decided that better visual appearance would result if the column
 were  never  used.  Ergo,  the  right column on your screen is always blank with
 SCREDITOR III.

 When  a word-wrap occurs the text from the first line of the display window down
 through the current line scrolls up to make room for the new line. If  the  text
 is  being  entered on the top line of the window, this means that you cannot see
 what you have typed, since it keeps  scrolling  out  of  the  window.  This  was
 programmed  this way to make the operation of the program both consistant and as
 fast as possible on as many terminals as possible. If you  are  inserting  lines
 (which  is  one  of  the  things  that  word-wrap does), it makes sense that the
 remainder of the screen after the insertion either stay put or move down. If  we
 had  chosen  to  allow  the  current  line  to move down, things would have done
 alright on smarter terminals, but dumb terminals would have spent so  much  time
 re-writing the screen after the bottom line was reached that a little text entry
 would have taken a batch of time! It was also found in  early  versions  of  the
 program that if we did things one way in one place on the screen and another way
 elsewhere, people tended to get confused. Also, if we  did  things  one  way  on
 smart terminals and differently on dumb terminals, trying to describe what would
 happen would have been nearly impossible. Finally, the extra code to continually
 select  different  ways  to  do  the same thing was taking up a lot of room that
 could be better used for other things. Therefore, we decided to do  it  one  way
 all the time.

 We  have been asked why we do all COPIES, MOVES, READ-INs, WRITE-OUTs, ETC... on
 lines instead of blocks of text. Some word processors let you flag the start  of
 a  block  to  be  operated  on,  then  flag the end point for the operation, and
 finally put the cursor where you want the result. There ARE times when  this  is
 more  convenient (such as moving a word or sentence in a paragraph); however, we
 studied the types of movements that were done most  often  and  found  that  the
 majority  of  operations  did,  in  fact, involve larger blocks of text (usually
 paragraphs). Second, most of  the  questions  that  we  asked  of  operators  we
 interviewed  showed  that they thought in terms of lines rather than characters.
 Also, the operating systems on which SCREDITOR III is used are  oriented  toward
 lines in most file structuring. Next, it is occasionally confusing to have to do
 the number of cursor movements involved  in  using  the  block-oriented  method.
 Finally,  SCREDITOR III is used by many people for editing program source files.
 When this is the case, lines are essentially always  referenced  rather  than  a
 pure  block  of  text.  Compromise  being  the way of the day, we settled on the
 line-oriented method that SCREDITOR III uses as being the most flexible for  the
 maximum number of jobs.

 One  thing that any company that produces a program like SCREDITOR III hears all
 the time is 'It would be nice if...', We, like everyone else  in  the  business,
 have  heard  this  over and over too. In fact, about a third of SCREDITOR III is
 there because we did listen to such 'nice ifs'. It is peripherally amusing  that
 some of the people that insisted that they had to have a particular feature that
 is now part of SCREDITOR III are now complaining that the program is too big!


WHAT'S COMING

 Actually, we agree with them. SCREDITOR III IS too big. Our next big update will
 be ready some time in the fall or winter of 1983 (Lord willing). The new version
 will  place  a  large  number of the less-often used COMMANDS out on disk, to be
 loaded into a special area designated for them as they are  needed.  Except  for
 the  slight  delay  while  the  COMMAND  is  being loaded, the operation will be
 transparent to the user. In this way, we will be able  to  continue  to  satisfy
 'nice  ifs'  while  keeping  the size of the program the same. In fact, this new
 'load module' version of SCREDITOR III (which we are running tests  on  in-house
 at this time!) is about one-third shorter than the version you now have.

 In addition to the smaller size of the upcoming new version of SCREDITOR III, we
 will be including a batch of new COMMANDS (most of  which  are  on  disk  to  be
 loaded  when  needed). COMMANDS which will tell you how much free space you have
 left, how  many  words  and  characters  you  have  written  in  your  document,
 DICTIONARY  COMMANDS  which will let you look up the spelling of words while you
 edit and proofread the current buffer before putting it out on  disk,  ALGEBRAIC
 and  RPN CALCULATOR COMMANDS, COMMANDS to do complex formatting jobs like change
 the shape of paragraphs, etc..., will be  available  with  the  new  version  of
 SCREDITOR  III,  or  as  additional  disks  to be purchased as desired (like the
 extended command disk that TSC sells for their FLEX operating system).

 Also, the problem of melding a table will no longer exist with the  new  version
 of  SCREDITOR  III.  Each  line, as it is created, will be flagged with is modal
 type; i.e., TEXT, LINE, MULTI-COLUMN, PROPORTIONAL,  SINGLE,  DOUBLE  or  TRIPLE
 SPACED, etc... In addition, it will be possible to flag lines for inclusion in a
 table of contents file. This file is created by a special COMMAND after the text
 file  is  logged.  The  COMMAND  then reads the text file and creates a table of
 contents file including all of the indexed lines and the page  number  on  which
 they occur!

 The  new version of SCREDITOR III is also going to be menu-driven. You will have
 the option of creating 'system-compatible' files which may be  read  by  any  of
 your other system programs such as Basic, assemblers, compilers, etc..., so that
 you can edit your source files as you can now. There will also  be  a  SCREDITOR
 III  creation option which will create a file for SCREDITOR III's use only. This
 file will include all of the line flags, etc..., so that when you re-edit such a
 file,  the  edit  session  will  start with the same margins, tab settings, goto
 marks, line types, etc..., as you when  you  last  edited  the  file.  The  menu
 section  of  SCREDITOR  III  will also give you an option to convert either file
 type to the other! From the menu level, SSB and  FLEX  users  will  be  able  to
 execute ANY system command which does not conflict in memory with SCREDITOR III.

 In the new version of SCREDITOR III, we will be including PROPORTIONAL PRINTING.
 Those of you with Diablo, Qume, NEC, or other printers which support incremental
 positioning  of  the  print  head  will  be  able  to  produce  type-set quality
 documents. As we mentioned a moment ago about modes you will be able  to  switch
 from  proportional to non-proportional printing from line to line as you desire!
 Also, the CONTROL CODES will no longer take up a space in the  printed  line  in
 the  new  version, so superscripts and subscripts will look the way they should.
 You will also be able to imbed multiple CONTROL CODES in the same place in  your
 text, or imbed a number of CONTROL CODES within a single word if you desire.


 Did we fail to think of anything that you would like to see in SCREDITOR III? If
 so, let us know. Did you catch a bug? Again, let  us  know.  Did  you  have  any
 problems  in installing the software in your system? Once more, let us know! The
 SOFTWARE REGISTRATION FORM and CONGEN/KEYGEN  QUESTIONAIRE  included  with  this
 package  should be filled out and mailed to us. This is the only sure way to let
 us know what you found, what troubles you had, what you would like, etc...  When
 possible,  use  the  backs  of these forms for additional comments, suggestions,
 etc..., rather than additional sheets of paper. There is less chance  of  losing
 things if you do so.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IT  IS  MOST IMPORTANT THAT YOU RETURN THE REGISTRATION FORM.   *
      *   OUR UPDATE MAILINGS ARE GENERATED FROM THESE  FORMS.  IF  YOU   *
      *   WORK  FOR  A  LARGE COMPANY AND SCREDITOR III WAS NOT SHIPPED   *
      *   DIRECTLY TO YOUR DESK, IT IS DOUBLY IMPORTANT THAT YOU RETURN   *
      *   THE  REGISTRATION  FORM  OR YOU MAY NEVER HEAR ABOUT UPDATES,   *
      *   CORRECTIONS, ETC...!                                            *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


                        THIS PAGE IS INTENTIONALLY BLANK
