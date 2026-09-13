# TRG02A

> Source: `manuals/misc/MANUAL - FLEX Software Archive - Manual and Documentation Archive - Includes SINST0, SINST1, SINST2.zip!MANUAL.DSK!TRG02A.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                           TRAINING AND USER'S GUIDE

                       ENTERING AND EXITING SCREDITOR III


.DHE
%TRAINING AND USER'S GUIDE                           SCREDITOR III WORD PROCESSOR

                       ENTERING AND EXITING SCREDITOR III


.DFO
"
 (C) 1983, ALFORD & ASSOCIATES                                        PAGE 2-%%%%
.DFE
"
 PAGE 2-%%%%                                        (C) 1983, ALFORD & ASSOCIATES
                                  CHAPTER TWO

 ENTERING AND EXITING SCREDITOR III  . . . . . . . . . . . . . . . .  CHAPTER TWO
   THE CURRENT BUFFER  . . . . . . . . . . . . . . . . . . . . . . . . . .  2-2

   SSB AND FLEX SECTION  . . . . . . . . . . . . . . . . . . . . . . . . .  2-3
     CALLING SCREDITOR III . . . . . . . . . . . . . . . . . . . . . . . .  2-3
     CREATING A NEW DOCUMENT . . . . . . . . . . . . . . . . . . . . . . .  2-3
     LOGGING AN EDIT SESSION . . . . . . . . . . . . . . . . . . . . . . .  2-4
     EDITING AN EXISTING DOCUMENT  . . . . . . . . . . . . . . . . . . . .  2-4
     ABORTING AN EDIT SESSION  . . . . . . . . . . . . . . . . . . . . . .  2-7
     SUMMARY . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  2-7

   OS-9 SECTION  . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  2-8
     CALLING SCREDITOR III . . . . . . . . . . . . . . . . . . . . . . . .  2-8
     CREATING A NEW DOCUMENT . . . . . . . . . . . . . . . . . . . . . . .  2-8
     LOGGING AN EDIT SESSION . . . . . . . . . . . . . . . . . . . . . . .  2-9
     EDITING AN EXISTING DOCUMENT  . . . . . . . . . . . . . . . . . . . .  2-9
     CALLING THE SHELL FROM SCREDITOR III  . . . . . . . . . . . . . . . .  2-11
     ABORTING AN EDIT SESSION  . . . . . . . . . . . . . . . . . . . . . .  2-11
     NOTE ON MEMORY ALLOCATION MODIFICATION  . . . . . . . . . . . . . . .  2-12
     SUMMARY . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  2-12


 Due to the many differences between the FLEX  and  SSB  versions  and  the  OS-9
 version of SCREDITOR III, this chapter is divided into three parts. The first is
 for all versions of SCREDITOR III and discusses  the  'current  buffer'  concept
 which  you  will need to understand throughout the remainder of this manual. The
 second is for FLEX and SSB versions only and the third is for the OS-9  version.
 You  should  read  the  first section of this chapter, determine which operating
 system you are using, and then read and study the second or third section of the
 chapter as needed.

 This  chapter will tell you how to call SCREDITOR III from your operating system
 in order to create a new document or to edit an existing document.


 You will be using the following SCREDITOR III COMMANDS and SINGLE-KEY OPERATORS:

                      OPERATORS                 COMMANDS

                ^DM - DELETE-TO-MARGIN       LO - LOG EDIT SESSION
                ^NL - NEW LINE               AB - ABORT EDIT SESSION
                ^ES - ESCAPE TO COMMAND      OS - OS-9 SYSTEM CALL
                ^BS - BACKSPACE


 It  is  important  to  have a keyboard layout available when learning to use the
 SINGLE KEY OPERATORS. FIGURE TEN at the rear of this manual is a  typical  blank
 keyboard  layout. You should make a copy of the layout, marking the locations of
 each of the OPERATORS on it and keep it near you as you  continue  through  this
 manual.


THE CURRENT BUFFER

 Before  you go on with this chapter an important concept should be mentioned. If
 you look at FIGURE ONE at the rear of this manual, you will  see  that  we  have
 marked  part  of  the  scroll as the 'current buffer,' part of the scroll as the
 'current window', part of the scroll as the 'old file,' and part of  the  scroll
 as the 'new file.'

 The  part  of  the  scroll marked as the 'old file' is the part of your document
 which has not been read from disk in  the  current  edit  session.  If  you  are
 creating a new document, this part of the scroll does not exist.

 The  marked  'current buffer' is that part of the document which is currently in
 memory and available for editing. Many of SCREDITOR III's COMMANDS and OPERATORS
 will only work within this current buffer area.

 The  part  which is marked 'current window' is the part of the document which is
 visible to you on the screen. This current window (or screen  display  area,  or
 window  display area) may be moved anywhere in the current buffer, but may never
 be moved into the old or new files. In  other  words,  if  you  are  editing  an
 extremely  long  document,  you  may  only  edit part of the document at a time,
 although you will be able to edit all of  the  document  within  a  single  edit
 session. You will be learning ways to edit such documents later.

 The part of the scroll marked 'new file' is that part of your document which has
 been edited and saved to disk in the current edit session.

 As we mentioned, the only part of the document in which you may make changes  is
 the  part  marked 'current buffer.' This is due to limitations in speed, storage
 space and other factors determined by operating systems and hardware.  The  part
 of  the  document which has already been sent to the 'new file' is not available
 for changes in the current edit session. The part which is  in  the  'old  file'
 will  only  be  available  when the current buffer is sent to the 'new file' and
 more of the 'old file' is read into the 'current buffer.'

 The main point to remember is that you may only edit  the  current  buffer.  Now
 that you understand this concept, determine which operating system you are using
 and read the remaining part of this chapter which applies to you.


CALLING SCREDITOR III (SSB AND FLEX VERSIONS)

 SCREDITOR III is called from your operating system just like any  other  program
 such  as  LIST,  RENAME,  DELETE, etc... Whether SCREDITOR III will create a new
 document or edit an existing document depends upon how you call it;  i.e.,  what
 information you type on the DOS command line. The following paragraphs will have
 you create a new document using SCREDITOR III, edit the  document  you  created,
 and perform some other operating-system related activities.


CREATING A NEW DOCUMENT

 To  create  a  new  document  with  SCREDITOR  III,  you must first be "in" your
 operating system. This is signified by the "+++" prompt in FLEX, or  the  "DOS:"
 prompt  in  SSB's  operating system. Since the majority of users of this product
 will be workin with FLEX the "+++" prompt will be  indicated.  The  abbreviation
 "<CR>"  means  the 'RETURN' or 'CARRIAGE RETURN' key on your keyboard. When your
 operating system is ready to accept a command, type:


    +++ED3,,NEWDOC<CR>


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHENEVER YOU WANT TO CREATE A NEW DOCUMENT, YOU MUST TYPE THE   *
      *   NAME OF SCREDITOR III IN YOUR SYSTEM, FOLLOWED BY TWO COMMAS,   *
      *   AND THEN THE NAME OF THE FILE YOU WANT TO CREATE.               *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 This call to SCREDITOR III will create a file named NEWDOC.TXT  on  the  working
 drive.  If  you  wanted to create the file with a different extension, you would
 have to type the extension you want,  since  SCREDITOR  III  always  supplies  a
 '.TXT' extension when you don't give it one.

 Also,  as just indicated, this file will be created on the working drive. If you
 wanted the file to be created on another drive, you  would  enter  the  explicit
 drive  number  just  as  you would for any file name with other programs in your
 system.

 At this point, your screen display should look like FIGURE THREE at the rear  of
 this  manual. Tabs are displayed in columns 11, 21, 31, 41, 51, etc..., the left
 margin is in column one, and the right margin is in column 61.  Looking  at  the
 banner  line,  you  are in LINE EDIT MODE, as indicated by the LE indicator near
 the left side of the banner line. The cursor is in column  one,  row  one,  line
 one,  and  there  is only one total line in the file right now, and that line is
 blank.

 Fold out FIGURE FOUR at the back of this manual and  type  the  letter  you  see
 there  exactly  as  shown.  At the end of each line, type the NEW LINE OPERATOR.
 There is, of course, an easier way to enter text like this, but we'll save  that
 for  later.  Also,  be  sure to type the mistakes just as they are shown. If you
 make any of your own, use the BACKSPACE OPERATOR to  back  up  and  re-type  the
 correct  material.  Once you have entered this letter exactly as shown, you will
 close the edit session and return to DOS.

LOGGING THE EDIT SESSION

 To  close  the  edit session, enter the ESCAPE OPERATOR. When you type this key,
 the TAB/MARGIN line will clear and the cursor will be on the second line of  the
 screen  in  the  first column. The BANNER LINE, however, will still show the row
 and column in which the cursor existed before entering COMMAND MODE  (where  you
 are  now).  There should be no characters on this line yet; if there are, CONGEN
 was mis-run with a start-up command line. If there are characters on  the  line,
 hit the DELETE-TO-MARGIN OPERATOR to clear the line.

 Now  type  LO  followed  by the NEW LINE OPERATOR. The cursor will return to the
 left margin on the command line for a moment, then the screen will clear and the
 message  "Closing  files..." will display for a moment. Finally, your DOS prompt
 should re-appear.

 If you use your LIST (FLEX) or VIEW (SSB) utility and look at the file, you will
 find that it contains the information you entered.


EDITING A DOCUMENT

 Now that you have created a document, albeit a  very  primitive  one,  you  will
 learn how to call SCREDITOR III to edit it.

 To edit an existing document, you will enter your DOS command line as follows:


    +++ED3,NEWDOC<CR>


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   NOTE  THAT, UNLIKE THE CALL TO CREATE A DOCUMENT, THE CALL TO   *
      *   EDIT AN EXISTING DOCUMENT HAS ONLY  A  SINGLE  COMMA  ENTERED   *
      *   BEFORE THE FILE NAME.                                           *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Go ahead and enter this command line. When the letter you just entered is  again
 on the screen, overtype the date with the word INSERT1. Then close the file just
 as you did at the end of  the  last  exercise,  entering  the  ESCAPE  OPERATOR,
 DELETE-TO-MARGIN (if needed), and the NEW LINE OPERATOR.

 If  you  look  at  your  disk  now,  you  will  find  that you have a file named
 NEWDOC.TXT and another file named NEWDOC.BAK.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHENEVER  YOU  EDIT A FILE WITH SCREDITOR III USING ONE COMMA   *
      *   AND A SINGLE FILENAME, THE  FILE  YOU  ARE  EDITING  WILL  BE   *
      *   RENAMED TO A '.BAK' EXTENSION, AND A NEW FILE WITH THE '.TXT'   *
      *   EXTENSION WILL BE CREATED.                                      *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

EDITING A DOCUMENT   continued

 Now  re-edit  the  letter  as  you just did, and change the date back to the one
 shown in FIGURE FOUR. When you are done, close the edit session in the  way  you
 just learned.


 These operations of SCREDITOR III are summarized in this chart:

            BEFORE         DURING         AFTER
           EDITING      EDITING     EDITING

          NEWDOC.BAK     NEWDOC.BAK        ...     (old .BAK file deleted)

          NEWDOC.TXT     NEWDOC.TXT     NEWDOC.BAK (old .TXT renamed to .BAK)

             ...         NEWDOC.SCR     NEWDOC.TXT (new .TXT created)


 Note that when you are editing using this  call,  the  original  files  are  not
 changed  until  AFTER the edit session. Because of this, if a disk error occurs,
 you will normally never lose either of your original files.

 If you wanted  to  edit  NEWDOC.TXT  and  create  a  totally  new  file  without
 disturbing  NEWDOC.TXT  or  NEWDOC.BAK, you would use a different call from DOS.
 Type the following DOS command line


    +++ED3,NEWDOC,NEWDOC.BAS<CR>


 When SCREDITOR III starts, note that the first line  is  once  again  the  date,
 since  you  just changed it back from INSERT1. Now type NEW FILE 1 over the date
 and close the edit session in the same way as you have been. When you return  to
 DOS, examine the disk and you will find the following three files:

        NEWDOC.BAK
        NEWDOC.TXT
        NEWDOC.BAS

 Neither  of  the two original files have been changed in any way. If you examine
 these files, you will find they contain the lines you typed and changed.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IF  YOU WISH TO EDIT A FILE ON ONE DRIVE AND PLACE THE RESULT   *
      *   ON ANOTHER DRIVE, YOU MUST SUPPLY BOTH FILE NAMES AS  IN  THE   *
      *   METHOD  JUST DESCRIBED, EVEN IF BOTH FILES WILL HAVE THE SAME   *
      *   FILE NAME.                                                      *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 The file name extensions, of course, may be omitted if you will be using  '.TXT'
 extensions.

EDITING A DOCUMENT   continued

      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHEN EDITING FROM ONE DRIVE TO ANOTHER, THE FILE BEING EDITED   *
      *   (THE 'FROM' FILE), WILL NEVER BE CHANGED OR DELETED.            *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 In the next session, we will be making changes to the document you just created.
 Before going on, delete the NEWDOC.BAS file, since  we  will  not  be  using  it
 again.


ABORTING AN EDIT SESSION

 One final COMMAND should be mentioned here, as you will be needing it  in  later
 chapters of this manual.

 If,  instead  of  entering  LO to close the edit session, you enter AB, the edit
 session will close and command will return to DOS, but no files will be  changed
 in any way.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   ABORTING AN EDIT SESSION WILL NOT CHANGE  ANY  FILES  ON  THE   *
      *   DISK.  ALL  WORK DURING THE EDIT SESSION, WILL, OF COURSE, BE   *
      *   LOST.                                                           *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


SUMMARY

 In this chapter, you  have  learned  how  to  create  and  edit  documents.  The
 important points to remember are:

 1) TYPE SCREDITOR III'S NAME FOLLOWED BY TWO COMMAS TO CREATE A FILE.

 2) TYPE  SCREDITOR  III'S  NAME FOLLOWED BY ONE COMMA AND A FILE NAME TO EDIT AN
    EXISTING DOCUMENT.

 3) EXTENSIONS ARE OPTIONAL IN DOS AND FLEX VERSIONS OF SCREDITOR III.  ANY  TIME
    YOU DO NOT ENTER A FILE NAME EXTENSION, .TXT WILL BE USED.

 4) TO  EDIT  AN EXISTING FILE INTO A NEW FILE WITHOUT CHANGING THE ORIGINAL FILE
    IN ANY WAY, ENTER SCREDITOR III'S  NAME  FOLLOWED  BY  ONE  COMMA,  THEN  THE
    ORIGINAL  DOCUMENT'S FILE NAME FOLLOWED BY ANOTHER COMMA, AND FINALLY THE NEW
    DOCUMENT'S NAME.

 5) IF YOU ARE EDITING FROM ONE DRIVE TO ANOTHER, YOU MUST USE THE LONG  FORM  OF
    THE  CALL  (SUPPLYING BOTH FILE NAMES) EVEN IF THE NAME OF BOTH FILES ARE THE
    SAME.

 6) WHEN EDITING FROM ONE DRIVE TO ANOTHER, THE ORIGINAL FILE IS NEVER CHANGED IN
    ANY WAY.

 7) ABORTING  AN  EDIT  SESSION  WILL  NOT CHANGE ANY FILES ON THE DISK. ALL WORK
    DURING THE EDIT SESSION, WILL, OF COURSE, BE LOST.


  (The remainder of this chapter pertains to the OS-9 version of SCREDITOR III.)


CALLING SCREDITOR III (OS-9 VERSION)

 SCREDITOR III is called from your operating system just like any  other  process
 such  as  LIST,  RENAME,  DEL,  etc...  Whether  SCREDITOR III will create a new
 document or edit an existing document is determined by whether or not  the  name
 of  the  file  exists  in the pathlist you enter. The calls are the same. If the
 path exists, you will edit an existing document. If it does not, a new  document
 will  be  created.  The following paragraphs will have you create a new document
 using SCREDITOR III, edit the document  you  created,  and  perform  some  other
 operating-system related activities.


CREATING A NEW DOCUMENT

 To create a new document with SCREDITOR III, you must first be "in"  the  shell.
 This  is  signified by the "OS9" prompt. When OS-9 is ready to accept a command,
 type:


    OS9: ED3 NEWDOC<CR>


 This call to SCREDITOR III will create a file named NEWDOC in the  current  data
 directory.

 If  you  wanted the file to be created in another directory or on another drive,
 you would enter the extended pathlist as you would for any file name with  other
 programs in your system.

 At  this point, your screen display should look like FIGURE THREE at the rear of
 this manual. Tabs are displayed in columns 11, 21, 31, 41, 51, etc..., the  left
 margin  is  in  column one, and the right margin in in column 61. Looking at the
 banner line, you are in LINE EDIT MODE, as indicated by the  LE  indicator  near
 the  left  side  of  the banner line. The cursor is in column one, row one, line
 one, and there is only one total line in the file right now.

 Now fold out FIGURE FOUR at the rear of this manual and type  the  short  letter
 you find there. When you reach the end of each line, type the NEW LINE OPERATOR.
 There is, of course, an easier way to enter text like this, but we'll save  that
 for  later.  Also,  be  sure to type the mistakes just as they are shown. If you
 make any of your own, don't worry about them, as you will learn to correct  them
 very shortly! Once you have entered this letter exactly as shown, you will close
 the edit session and return to OS-9.


LOGGING THE EDIT SESSION

 To close, or LOG, the edit session, enter the ESCAPE  OPERATOR.  When  you  type
 this  key,  the  TAB/MARGIN line will clear and the cursor will be on the second
 line of the screen in the first column. The BANNER  LINE,  however,  will  still
 show the row and column in which the cursor existed before entering COMMAND MODE
 (where you are now). There should be no characters on this line  yet.  If  there
 are, CONGEN was mis-run with a start-up command line. If there are characters on
 the line, hit the DELETE-TO-MARGIN OPERATOR to clear the line.

 Now type LO followed by the NEW LINE OPERATOR. The cursor  will  return  to  the
 left margin on the command line for a moment, then the screen will clear and the
 message "Closing files..." will display for a moment. Finally, your OS-9  prompt
 should re-appear, indicating that the edit session is complete.

 If  you  use your LIST command and look at the file, you will find that it does,
 indeed, contain the information you entered. You have just  created  your  first
 file with SCREDITOR III!


EDITING AN EXISTING DOCUMENT

 Now  that  you  have  created  a document, albeit a very primitive one, you will
 learn how to call SCREDITOR III to edit an existing document.

 To edit an existing document, you will enter your OS-9 command just as when  you
 create a document:

    OS9: ED3 NEWDOC<CR>


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHENEVER YOU ENTER THE COMMAND LINE IN  THIS  WAY,  SCREDITOR   *
      *   III  WILL  ATTEMPT  TO  EDIT AN EXISTING FILE; HOWEVER, IF NO   *
      *   FILE WITH THE PATHNAME GIVEN EXISTS, IT WILL CREATE ONE  WITH   *
      *   THE NAME GIVEN.                                                 *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Go ahead and enter this command line. When the letter is  back  on  the  screen,
 overtype  the  date with INSERT1. Then close the file just as you did at the end
 of the  last  exercise,  entering  the  ESCAPE  OPERATOR,  DELETE-TO-MARGIN  (if
 needed), and the NEW LINE OPERATOR.

 If  you  LIST  the NEWDOC file, you will see that the change you just made is in
 the file.

 Now re-edit the NEWDOC file, changing INSERT1 back to the date shown  in  FIGURE
 FOUR.  When  you  are  done,  close  the  edit  session in the same way you just
 learned.


EDITING AN EXISTING DOCUMENT  continued

 These operations of SCREDITOR III are summarized in this chart:

            BEFORE         DURING         AFTER
           EDITING      EDITING     EDITING

            NEWDOC          NEWDOC         ...     (old file deleted)

             ...         SCRATCH00000     NEWDOC   (SCRATCH renamed to file)


 Note that when you are editing using this call, the original file is not deleted
 until AFTER the edit session. Because of this, if a disk error occurs, you  will
 normally never lose your original file.

 During  the  edit  session,  a working file named SCRATCH plus your user I.D. is
 created to receive the new text. At the end of the edit  session,  the  original
 file is deleted and the SCRATCH file is renamed to the old file name.

 If  you  wanted  to edit NEWDOC and create a totally new file without disturbing
 NEWDOC, you would use a different  call  from  OS-9.  Type  the  following  OS-9
 command line


    OS9: ED3 NEWDOC NEWBAS<CR>


 and  hit  RETURN. When SCREDITOR III starts, note that the first line is now the
 date again, as you changed it back in the last exercise. Now  type  NEW  FILE  1
 over  the date and close the edit session in the same way as you have been. When
 you return to OS-9, examine the current data directory and  you  will  find  the
 following two files:

        NEWDOC
        NEWBAS

 The original file hasn't been changed in any way. If you  examine  these  files,
 you will find they contain the lines you typed and changed.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IF YOU WISH TO EDIT A FILE IN ONE  DIRECTORY  AND  PLACE  THE   *
      *   RESULT  IN ANOTHER DIRECTORY, YOU MUST SUPPLY BOTH PATH LISTS   *
      *   AS IN THE METHOD JUST DESCRIBED, EVEN IF BOTH FILES WILL HAVE   *
      *   THE  SAME  FILE  NAME.  WHEN  EDITING  FROM  ONE DIRECTORY TO   *
      *   ANOTHER, THE FILE BEING EDITED (THE 'FROM' FILE), WILL  NEVER   *
      *   BE CHANGED OR DELETED.                                          *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


CALLING THE SHELL FROM SCREDITOR III

 The OS-9 version of SCREDITOR III has a feature not available in other  versions
 of  the program...you can call the SHELL while in the middle of an edit session!
 This is quite handy for looking up a file name, starting other processes, and so
 on.

 To  see  how this COMMAND works, start another edit session on your NEWDOC file.
 Once the file is open for editing, enter your ESCAPE OPERATOR, clear the command
 line  if  necessary  using the DELETE TO MARGIN OPERATOR, and type the following
 command:


        OS/DIR /D0


 After typing the command,  enter  the  NEW  LINE  OPERATOR.  You  should  get  a
 directory  of  device  D0. Note that when the directory listing is complete, the
 message

        WAITING...

 appears. Hit your space bar and you will normally be back in SCREEN  EDIT  MODE.
 Any  errors  which  occurred  will  be  posted  after hitting the space bar, and
 hitting the space bar again will clear such a message and  restore  SCREEN  EDIT
 MODE. You will be learning more about this COMMAND in a later chapter.


ABORTING THE EDIT SESSION

 Now  that  you  are  back  in  SCREDITOR  III, you should abort the current edit
 session and return to the SHELL. To do so, instead of entering LO to  close  the
 edit  session,  enter AB. The edit session will close and command will return to
 OS-9 but no files will be changed in any way.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   ABORTING  AN  EDIT  SESSION  WILL NOT CHANGE ANY FILES ON THE   *
      *   DISK. ALL WORK DURING THE EDIT SESSION, WILL, OF  COURSE,  BE   *
      *   LOST.                                                           *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


NOTE ON MEMORY ALLOCATION MODIFICATION

 Just  like  COPY  and other OS-9 commands, SCREDITOR III may be given additional
 memory for its edit buffers by using the SHELL memory allocation modifier.  When
 you  call  SCREDITOR  III  with  no  memory modifier, it is assigned 10K of work
 space. If you wish to use a larger buffer, your call might look like


    OS9: ED NEWDOC #20K


 which, in this example, would give 20 kilobytes of buffer area to SCREDITOR III.

 In the next chapter, we will be making changes to the document you just created.
 Before going on, delete the NEWBAS file, since we will not be using it again.


SUMMARY

 In  this  chapter,  you  have  learned  how  to  create  and edit documents. The
 important points to remember are:

 1) TYPE SCREDITOR III'S NAME FOLLOWED BY A PATH  LIST  WHICH  DOESN'T  CURRENTLY
    EXIST TO CREATE A NEW FILE.


 2) TYPE SCREDITOR III'S NAME FOLLOWED BY  AN  EXISTING  PATH  LIST  TO  EDIT  AN
    EXISTING FILE.

 3) COMMANDS  MAY  BE  PASSED  TO THE SHELL BY USING THE OS COMMAND FOLLOWED BY A
    SLASH AND A NORMAL OS-9 COMMAND LINE.

 4) WHENEVER AN EXISTING FILE IS EDITED, IT WILL BE DELETED AT  THE  END  OF  THE
    EDIT SESSION UNLESS THE AB COMMAND IS USED.

 5) YOU  MUST GIVE BOTH PATH LISTS TO EDIT A DOCUMENT IN ONE DIRECTORY INTO A NEW
    FILE IN ANOTHER DIRECTORY.

 6) WHEN EDITING FROM ONE DIRECTORY INTO ANOTHER,  THE  ORIGINAL  FILE  IS  NEVER
    CHANGED IN ANY WAY.

 7) ABORTING  AN  EDIT  SESSION  WILL  NOT CHANGE ANY FILES ON THE DISK. ALL WORK
    DURING THE EDIT SESSION, WILL, OF COURSE, BE LOST.
