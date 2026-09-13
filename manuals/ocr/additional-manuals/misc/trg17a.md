# TRG17A

> Source: `manuals/misc/MANUAL - FLEX Software Archive - Manual and Documentation Archive - Includes SINST0, SINST1, SINST2.zip!MANUAL.DSK!TRG17A.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                           TRAINING AND USER'S GUIDE

                             PRINTING THE DOCUMENT


.DHE
%TRAINING AND USER'S GUIDE                           SCREDITOR III WORD PROCESSOR

                             PRINTING THE DOCUMENT


.DFO
"
 (C) 1983, ALFORD & ASSOCIATES                                       PAGE 17-%%%%
.DFE
"
 PAGE 17-%%%%                                       (C) 1983, ALFORD & ASSOCIATES

                               CHAPTER SEVENTEEN

 PLANNING TO PRINT . . . . . . . . . . . . . . . . . . . . . . . . . . . .  17-2
 NOW - HOW TO PRINT  . . . . . . . . . . . . . . . . . . . . . . . . . . .  17-4
 MISCELLANEOUS . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  17-7
 SUMMARY . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  17-8


 In  this  chapter,  you will, at last, print the document you have spent so many
 hours editing.


PLANNING TO PRINT

 At last you have learned everything necessary to print your document. Before you
 do so, let's review the steps you  should  have  taken  in  preparing  for  this
 moment.  If you are going to edit and print a document in a single edit session,
 you would:

 1) Be sure that the printer drivers are loaded  when  SCREDITOR  III  is  called
    since you will be editing and printing in a single edit session.

 2) Open an edit session to create the document.

 3) Decide  whether  or  not  the  document  will  be printed with headers and/or
    footers, and whether or not they will be printed on even and/or odd pages. If
    headers and/or footers will be used, define them.

 4) Select  a  set  of  margins  which  you  intend to use as your maximum value.
    Indented and doubly indented lines and paragraphs will move inward from these
    values.

 5) Decide  whether  or  not  the  document  will be printed in single, double or
    triple spacing, what the first page number will be, whether or not a  printer
    left margin is needed and how many lines each sheet of paper may contain. Set
    or verify these values using the DP COMMAND.

 6) If you are using cut page paper, make sure that the PS flag  is  set  in  the
    banner using the PS COMMAND.

 7) Enter and edit your text.

 8) Format  the  text,  adjusting vertical spacing as necessary to compensate for
    page ends, hung paragraphs and section headings, etc...

 These are basically the same things you would do if you  were  going  to  simply
 type  the  document  on  a  typewriter,  and  most  of them should be reasonably
 automatic.


 If  you  are  going  to  open  an edit session to print a document which already
 exists and has been edited to the point of printing, you should:

 1) Be sure the printer drivers are loaded when SCREDITOR III is called.

 2) Open the edit session on the document to be printed.

 3) Check and  set  as  necessary  single,  double  or  triple  spacing  for  the
    print-out. Also set the printer left margin as necessary. The DP COMMAND does
    both of these, of course.

 4) If you are using cut-page paper, be sure the printer pause flag is on in  the
    banner using the PS COMMAND.


NOW - HOW TO PRINT

 You are now ready to print. The PRINT (PR) COMMAND in SCREDITOR III  supports  a
 number  of  options from which you must make selections to specify what you will
 be printing.

 As you saw with the NE and SA COMMANDS, files much larger  than  what  will  fit
 into  memory may be edited by SCREDITOR III. In a like manner, files much larger
 than available memory may also be printed  by  SCREDITOR  III.  The  PRINT  (PR)
 COMMAND  works  in  very  much  the  same way as you do when you need to move to
 another block of the file. When the end of the current buffer is reached  during
 printing,  an  automatic  NE  COMMAND  is  issued. This automatic new operation,
 however, is under your control. In some circumstances, you might  not  want  the
 PRINT COMMAND to move on through the file. The first option in the PRINT COMMAND
 selects or de-selects this automatic new operation.

 If you enter the letter 'B' after the two-letter command  name,  (PRB)  printing
 will  stop  at  the  end of the current buffer. If less than a full page will be
 printed because of this, the remainder of the partial page will be formed out to
 the  bottom  margin  or  footer  with line feeds. After the form-out, the bottom
 margin or footer will be printed and the printing operation will stop.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  'B'  OPTION  OF THE PRINT COMMAND WILL CAUSE PRINTING TO   *
      *   STOP AT THE END OF THE CURRENT BUFFER, REGARDLESS OF  WHETHER   *
      *   OR NOT ADDITIONAL LINES EXIST IN THE INPUT FILE.                *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 If, on the other hand, if you use the letter 'F' after  the  two-letter  command
 name (PRF), SCREDITOR III will count lines. If less than a page of lines remains
 in the current buffer and additional lines exist in the input file, an automatic
 NE  COMMAND  will  execute at the start of the last page in the buffer. Once the
 new lines are in memory, printing will continue.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IF  MORE LINES EXIST IN THE INPUT FILE, THE 'F' OPTION OF THE   *
      *   PRINT COMMAND WILL CAUSE AN AUTOMATIC NEW  TO  OCCUR  AT  THE   *
      *   BEGINNING  OF  THE  LAST  PRINTED PAGE IN THE CURRENT BUFFER.   *
      *   PRINTING WILL CONTINUE AFTER THE NEW LINES ARE READ.            *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 In addition to the buffer and file options in the PRINT COMMAND, you may specify
 the range of pages to be printed. For instance, if you executed:

    PRB - or - PRF

 only the current page will be printed.


 If you executed:

    PRB#nn - or - PRF#nn

 all  pages from the current page through page #nn will be printed. The following
 command line:

    PRB@nn - or - PRF@nn

 will print @nn pages, starting with the current page. If, on the other hand, you
 executed:

    PRB* - or - PRF*

 the entire buffer or file, respectively, will be printed.

 When  you  specify  a  print range option with the 'F' option, the automatic new
 operation will not, of course occur if the target is within the current  buffer.
 For instance, if there were six and one half pages in the current buffer and you
 started printing at the first of these pages specifying that two pages  were  to
 be printed, the new operation obviously would not occur.

 Now  that  you  understand the way the PRINT COMMAND is executed, let's see what
 actually happens. Open an edit session on your NEWDOC file. Make  the  necessary
 pre-checks to insure that you will be printing single-spaced and that everything
 is ready to print. When you are ready, execute the following command line:

    PRB*

 Your printer should be merrily printing out your letter at this point.  When  it
 is  done, turn on line numbers and the page flag and move the cursor to the last
 line of the letter. Now execute the same print again. Notice in particular  what
 happens to the display when the print-out starts.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHEN THE PRINT COMMAND IS ISSUED, THE START  OF  THE  CURRENT   *
      *   PAGE  WILL  BE  MADE THE CURRENT LINE BEFORE PRINTING BEGINS.   *
      *   THE PRINT COMMAND WILL ALWAYS START ON THE FIRST LINE OF  THE   *
      *   CURRENT PAGE.                                                   *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Look at your letter now. You should notice something odd about it. Sure  enough,
 each  line  in  the  letter  is  preceeded by its line number. Now turn off line
 numbers and try it again. This time there are no line  numbers  on  the  printed
 copy.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IF THE LINE NUMBERS DISPLAY IS ON WHEN THE PRINT  COMMAND  IS   *
      *   ISSUED,  THE  DOCUMENT  WILL BE PRINTED WITH LINE NUMBERS. IF   *
      *   OFF, NO LINE NUMBERS WILL BE PRINTED.                           *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

 Finally,  move  the  cursor  to the fourth line of your letter and execute a NE*
 COMMAND. There are no additional lines in this file,  of  course,  so  the  only
 effect  will  be  to  save the first three lines to the output file. Now execute
 another print and see what happens. Clear the error message.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHEN  THE PRINT COMMAND IS ISSUED, AN ERROR WILL OCCUR IF THE   *
      *   START OF THE CURRENT PAGE IS NOT IN THE CURRENT BUFFER.         *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Again,  SCREDITOR  III  will ALWAYS print from the start of the current page. If
 the current page is not in memory, printing  obviously  cannot  start  with  the
 start of the current page, so SCREDITOR III gives up in frustration!

 There you have it. You have now learned how to print any document, regardless of
 size. You have also learned how to print selected sections of  a  document.  You
 may  now abort the edit session. The following section contains a few 'hints and
 kinks' about the printing operations which you should know, so read on.


MISCELLANEOUS

 If you are an SSB or FLEX user and you issue a PRINT COMMAND that does not print
 anything,  posts no errors, seems to finish in a very short period of time, and,
 most important, control returns to screen editing, you  have  a  common  problem
 called...


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *                    PRINTER DRIVERS NOT LOADED!                    *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 This will happen most often in FLEX when you  forget  to  preceed  the  call  to
 SCREDITOR III with the print command in DOS (P,ED3,...).

 If you are an OS-9 user and issue a PRINT COMMAND and everything locks up  after
 SCREDITOR  III moves to the start of the current page for printing, you probably
 have a printer which is off-line. Not all drivers will return an error when  the
 printer  initialization  is  attempted under this condition. Some times you have
 only to re-select the printer to correct the problem. Other times, the only  way
 to  restore  operations is to re-boot the system. Re-booting is a painful way to
 restore things, though, so be careful.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IN  OS-9  SYSTEMS, THE PRINTER OR PRINTER OUTPUT PATH MUST BE   *
      *   READY WHEN THE PRINT COMMAND IS ISSUED OR SYSTEM LOCK-UP  MAY   *
      *   OCCUR.                                                          *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 If you issue a PRINT COMMAND and find  out  that  you  are  printing  with  line
 numbers  when  you  don't want to be, or see that you are not printing the right
 material, the ABORT key will abort the printing operation. If you simply wish to
 stop  the  printing  for  a moment, the space bar will halt the printing without
 aborting the operation. Another touch of the space bar will restore printing.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  ABORT  KEY  WILL  STOP THE PRINTING OPERATION AND RETURN   *
      *   CONTROL TO SCREEN EDITING MODE. THE SPACE  BAR  WILL  SUSPEND   *
      *   PRINTING  WITHOUT ABORTING THE OPERATION. IF THE SPACE BAR IS   *
      *   USED, HITTING THE SPACE BAR  AGAIN  WILL  CAUSE  PRINTING  TO   *
      *   CONTINUE.                                                       *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 If you are using a printer with a large internal buffer, or if you are  an  OS-9
 user,  the  space  bar  may  appear  to  have  no effect. Actually, the printing
 operation in SCREDITOR III is halted, but the buffers between SCREDITOR III  and
 the printer have to empty before the condition is apparent.

 When  printing is ABORTED by the operator, the line being printed when the ABORT
 occurred will be the current line when SCREEN EDIT  MODE  is  restored.  If  the
 printing  operation stops when the optioned amount of printing is done, or if an
 error occurs, the current line will be the last line printed  when  SCREEN  EDIT
 MODE is restored.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHEN PRINTING STOPS FOR ANY REASON,  THE  LAST  LINE  PRINTED   *
      *   WILL BECOME THE CURRENT LINE.                                   *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


SUMMARY

 In this chapter, you have learned how to  print  your  document.  The  important
 points to remember are:

 1) YOU  SHOULD  DO  SOME  PLANNING AS TO HEADERS, FOOTERS, PAGE LENGTH, SPACING,
    ETC..., BEFORE YOU START EDITING YOUR DOCUMENT.

 2) THE 'B' OPTION OF THE PRINT COMMAND WILL CAUSE PRINTING TO STOP AT THE END OF
    THE  CURRENT  BUFFER,  REGARDLESS OF WHETHER OR NOT ADDITIONAL LINES EXIST IN
    THE INPUT FILE.

 3) IF MORE LINES EXIST IN THE INPUT FILE, THE 'F' OPTION OF  THE  PRINT  COMMAND
    WILL  CAUSE  AN  AUTOMATIC  NEW TO OCCUR AT THE BEGINNING OF THE LAST PRINTED
    PAGE IN THE CURRENT BUFFER. PRINTING WILL CONTINUE AFTER THE  NEW  LINES  ARE
    READ.

 4) WHEN THE PRINT COMMAND IS ISSUED, THE START OF THE CURRENT PAGE WILL BE  MADE
    THE CURRENT LINE BEFORE PRINTING BEGINS. THE PRINT COMMAND WILL ALWAYS  START
    ON THE FIRST LINE OF THE CURRENT PAGE.

 5) IF THE LINE NUMBERS DISPLAY IS ON WHEN  THE  PRINT  COMMAND  IS  ISSUED,  THE
    DOCUMENT WILL BE PRINTED WITH LINE NUMBERS. IF OFF, NO LINE NUMBERS  WILL  BE
    PRINTED.

 6) WHEN THE PRINT COMMAND IS ISSUED, AN ERROR WILL OCCUR IF  THE  START  OF  THE
    CURRENT PAGE IS NOT IN THE CURRENT BUFFER.

 7) IN OS-9 SYSTEMS, THE PRINTER OR PRINTER OUTPUT PATH MUST BE  READY  WHEN  THE
    PRINT COMMAND IS ISSUED OR SYSTEM LOCK-UP MAY OCCUR.

 8) THE ABORT KEY WILL STOP THE PRINTING OPERATION AND RETURN CONTROL  TO  SCREEN
    EDITING MODE. THE SPACE  BAR  WILL  SUSPEND  PRINTING  WITHOUT  ABORTING  THE
    OPERATION.  IF  THE SPACE BAR IS USED, HITTING THE SPACE BAR AGAIN WILL CAUSE
    PRINTING TO CONTINUE.

 9) WHEN PRINTING STOPS FOR ANY REASON, THE LAST LINE  PRINTED  WILL  BECOME  THE
    CURRENT LINE.
