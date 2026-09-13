# TRG12A

> Source: `manuals/misc/MANUAL - FLEX Software Archive - Manual and Documentation Archive - Includes SINST0, SINST1, SINST2.zip!MANUAL.DSK!TRG12A.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                           TRAINING AND USER'S GUIDE

                             ADVANCED DISK COMMANDS


.DHE
%TRAINING AND USER'S GUIDE                           SCREDITOR III WORD PROCESSOR

                             ADVANCED DISK COMMANDS


.DFO
"
 (C) 1983, ALFORD & ASSOCIATES                                       PAGE 12-%%%%
.DFE
"
 PAGE 12-%%%%                                       (C) 1983, ALFORD & ASSOCIATES

                                 CHAPTER TWELVE

 SSB AND FLEX SECTION . . . . . . . . . . . . . . . . . . . . . . . . . .   12-3
    BEFORE YOU START  . . . . . . . . . . . . . . . . . . . . . . . . . .   12-3
    READ-IN FILES . . . . . . . . . . . . . . . . . . . . . . . . . . . .   12-3
       OPENING A READ-IN FILE . . . . . . . . . . . . . . . . . . . . . .   12-3
       INSERTING LINES FROM THE READ-IN FILE  . . . . . . . . . . . . . .   12-5
       WHAT'S THE NEXT LINE NUMBER? . . . . . . . . . . . . . . . . . . .   12-6
       SKIPPING LINES FROM THE READ-IN FILE . . . . . . . . . . . . . . .   12-6
       CLOSING THE FILE . . . . . . . . . . . . . . . . . . . . . . . . .   12-6
    WRITE-OUT FILES . . . . . . . . . . . . . . . . . . . . . . . . . . .   12-8
       OPENING A WRITE-OUT FILE . . . . . . . . . . . . . . . . . . . . .   12-8
       EXTRACTING LINES TO THE WRITE-OUT FILE . . . . . . . . . . . . . .   12-9
       COPYING LINES TO THE WRITE-OUT FILE  . . . . . . . . . . . . . . .   12-9
       CLOSING THE FILE . . . . . . . . . . . . . . . . . . . . . . . . .   12-10
    LISTING THE FILES ON A DISK . . . . . . . . . . . . . . . . . . . . .   12-11
    LISTING THE CONTENTS OF A FILE  . . . . . . . . . . . . . . . . . . .   12-12
    DELETING A FILE . . . . . . . . . . . . . . . . . . . . . . . . . . .   12-12
    EXITING TO THE SYSTEM MONITOR . . . . . . . . . . . . . . . . . . . .   12-12
    DELAYED OPENING . . . . . . . . . . . . . . . . . . . . . . . . . . .   12-13
    OPENING THE OUTPUT FILE . . . . . . . . . . . . . . . . . . . . . . .   12-14
    SUMMARY . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   12-15

 OS-9 SECTION . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   12-16
    BEFORE YOU START  . . . . . . . . . . . . . . . . . . . . . . . . . .   12-16
    READ-IN FILES . . . . . . . . . . . . . . . . . . . . . . . . . . . .   12-16
       OPENING A READ-IN FILE . . . . . . . . . . . . . . . . . . . . . .   12-16
       INSERTING LINES FROM THE READ-IN FILE  . . . . . . . . . . . . . .   12-17
       WHAT'S THE NEXT LINE NUMBER? . . . . . . . . . . . . . . . . . . .   12-18
       SKIPPING LINES FROM THE READ-IN FILE . . . . . . . . . . . . . . .   12-18
       CLOSING THE FILE . . . . . . . . . . . . . . . . . . . . . . . . .   12-19
    WRITE-OUT FILES . . . . . . . . . . . . . . . . . . . . . . . . . . .   12-19
       OPENING A WRITE-OUT FILE . . . . . . . . . . . . . . . . . . . . .   12-19
       EXTRACTING LINES TO THE WRITE-OUT FILE . . . . . . . . . . . . . .   12-20
       COPYING LINES TO THE WRITE-OUT FILE  . . . . . . . . . . . . . . .   12-21
       CLOSING THE FILE . . . . . . . . . . . . . . . . . . . . . . . . .   12-21
    NO-FILE OPENING . . . . . . . . . . . . . . . . . . . . . . . . . . .   12-22
    OPENING THE OUTPUT FILE . . . . . . . . . . . . . . . . . . . . . . .   12-22
    OPERATING SYSTEM COMMANDS . . . . . . . . . . . . . . . . . . . . . .   12-22
    SUMMARY . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   12-24


 In  this  chapter,  you will be learning a number of new file and Disk Operating
 System (DOS) related COMMANDS. As in CHAPTER TWO, this chapter is  divided  into
 two  sections.  The first is for persons who are using DOS68/DOS69 and FLEX. The
 second is for those who are using OS-9.


 The new COMMANDS you will be learning are summarized  in  the  following  table.
 Those  marked  with an asterisk (*) are available in FLEX and SSB versions only.
 Those marked with a plus sign (+) are available in OS-9 versions only. Those not
 marked are available in all versions.

        CF - CLOSE READ-IN/WRITE OUT
      * EX - EXIT TO SYSTEM MONITOR
        ID - DISPLAY NEXT LINE TO READ-IN
      * OD - DELETE FILE
      * OL - LIST DIRECTORY
        OO - OPEN OUTPUT FILE
        OR - OPEN READ-IN FILE
      + OS - OPERATING SYSTEM COMMAND
      * OV - VIEW FILE ON DISK
        OW - OPEN WRITE-OUT FILE
        RI - READ-IN LINES
        RS - SKIP LINES FROM READ-IN
        WE - EXTRACT LINES TO WRITE-OUT
        WC - COPY LINES TO WRITE-OUT


BEFORE YOU START

 This  section  of  this  chapter  is  for  users of SSB DOS68/DOS69 and TSC FLEX
 versions of SCREDITOR III. OS-9 users should skip this section  and  go  to  the
 other section of this chapter.


READ-IN FILES

 Many editing jobs could be made a lot easier if you didn't have to type the same
 material  over  and  over.  SCREDITOR  III  provides a way around this continual
 retyping in the form of what we call a READ-IN. Any text file may be opened as a
 READ-IN file, and selected lines from the file then inserted into your text. You
 may also select only certain lines for insertion,  skipping  other  sections  or
 lines  of  the file as needed. The first part of this section will actually take
 you through the process of doing just that! To start this  lesson,  open  a  new
 edit session on your NEWDOC file.


OPENING A READ-IN FILE

 When everything is ready for editing, execute the following command line:

    OR/NEWDOC/

 When you execute this COMMAND, SCREDITOR III will attempt to open the file named
 NEWDOC.TXT  on the working drive (and it will succeed, of course, since you know
 that file exists!).


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE OPEN FOR READ-IN COMMAND (OR) EXPECTS A FILE  NAME  WHICH   *
      *   CONFORMS  TO  THE  SYNTAX  WHICH  IS VALID FOR YOUR OPERATING   *
      *   SYSTEM. THE DEFAULT DRIVE WHEN NONE IS GIVEN IS  THE  WORKING   *
      *   DRIVE AND THE DEFAULT EXTENSION WHEN NONE IS GIVEN IS .TXT.     *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 For  instance,  assuming you are using FLEX and your working drive is drive one,
 you could have entered this line as

    OR/1.NEWDOC.TXT/

 and the same file would have been opened as in the first example.


 Incidentally, you cannot execute this COMMAND when you already have a file  open
 for  READ-IN,  WRITE-OUT  or  PRINT-OUT, or after a PRINT-MERGE COMMAND has been
 executed, since parts of memory are shared between these COMMANDS.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   AN  OR  COMMAND  MAY NOT BE EXECUTED WHILE A FILE IS OPEN FOR   *
      *   READ-IN, WRITE-OUT OR PRINT-OUT, OR AFTER THE EXECUTION OF  A   *
      *   PRINT-MERGE   COMMAND.  IF  A  POTENTIALLY  FATAL  ERROR  HAS   *
      *   OCCURRED PREVIOUSLY IN THE USE OF THE OR, OW OR OP  COMMANDS,   *
      *   YOU  WILL  NOT  BE ALLOWED TO OPEN A NEW READ-IN TO ELIMINATE   *
      *   THE POSSIBILITY OF BLOWING UP A DISK!                           *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Also, Care should be taken in the use of the OR COMMAND, as SCREDITOR  III  will
 not check to see if the file which you specified is really a text file or not.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   ANY  FILE  WHICH  EXISTS ON A MOUNTED DISK MAY BE OPENED AS A   *
      *   READ-IN FILE. IF A NON-TEXT FILE IS  OPENED,  SYSTEM  BLOW-UP   *
      *   MAY OCCUR WHEN A READ-INSERT COMMAND IS LATER GIVEN. IT IS UP   *
      *   TO YOU TO KNOW WHICH FILES ARE TEXT FILES AND WHICH ARE NOT!    *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Also, if you specify a drive number, make sure it is legal, since some  versions
 of  the  various  operating systems will lock up when an illegal drive number is
 given. The only way to get out of this kind of lockup condition is to reset  the
 system  and  re-boot,  which  may also blow out a disk if you had an output file
 open!


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IT IS UP TO THE OPERATOR TO KNOW WHETHER A  PARTICULAR  DRIVE   *
      *   NUMBER  IS  LEGAL  OR NOT. SPECIFYING AN ILLEGAL DRIVE NUMBER   *
      *   MAY RESULT IN SYSTEM LOCK-UP AND DISK DESTRUCTION.              *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now  that we have almost scared you out of using the READ-IN COMMAND altogether,
 let's go on! The file you have opened for READ-IN, by the way, is the same  file
 which you are now editing. This will make things easier in this lesson since you
 know exactly what is in the file, (it's right in front of you!).


INSERTING LINES FROM THE READ-IN FILE

 Move your cursor down to the bottom  of  your  letter  and  type  the  NEW  LINE
 OPERATOR to generate an extra line. This extra line should be the bottom line on
 the screen to make things easier later.  Before  we  actually  insert  anything,
 though,  move your right margin to column 5 (RI#5). This will prove a point in a
 minute. Now execute the following COMMAND:

    RI@7

 Look at the screen! You now have the first seven lines of your letter duplicated
 in  front  of you. This is because you just inserted seven lines of the file out
 on disk (the open READ-IN file) into the current text. Notice that the  inserted
 text is above the current line.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  READ-IN  INSERT  COMMAND ALWAYS PLACES THE INSERTED TEXT   *
      *   BEFORE THE CURRENT LINE.                                        *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 You  could  have used RI#7 instead of RI@7 in this case, since the first line to
 insert was also physically line 1. The form of the option part of the RI COMMAND
 may  be  any  of the four legal numeric types that you learned in CHAPTER SEVEN.
 '#' plus a number (e.g., RI#7) means through that line number in the  file.  '@'
 plus  a  number  (e.g.,  RI@7) means that a number of lines will be read-in. The
 asterisk (e.g., RI*) tells the RI COMMAND that the remainder of the file will be
 inserted.  No type at all (RI followed by nothing) says to read-in the next line
 only. By using the proper option, you may specify how much of a file to insert.

 Notice also that the text was inserted  even  though  it  extended  outside  the
 current margin.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE READ-INSERT (RI) COMMAND DOES  NOT  HONOR  MARGINS.  TEXT   *
      *   OUTSIDE  THE  CURRENT  MARGINS  WILL  BE  INSERTED  AS IF THE   *
      *   MARGINS DID NOT EXIST.                                          *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Don't  do  any  more inserts yet. You will have an opportunity to play with this
 COMMAND later.


WHAT'S THE NEXT LINE NUMBER

 Right now, you probably know that the next line number which will be inserted is
 line eight, since you just inserted the first seven lines. But what if you  were
 inserting  a  number  of blocks of text from a very large file, and weren't sure
 just where you were in the file? Execute the following COMMAND:

    ID

 As you can see, the command line cleared, and now the next  line  number  to  be
 inserted  is  displayed  (IR=00008). Hit your space bar to clear the display and
 return to screen editing. You can use the ID COMMAND at any time a read-in  file
 is open to find where you are in the file.


SKIPPING LINES FROM THE READ-IN FILE

 You have now inserted the first seven lines of the file open  for  READ-IN  into
 your  document.  Let's assume that you do not want the next five lines inserted.
 One way around this is to insert the next five lines and then  delete  them.  An
 easier  way  is by use of the READ-SKIP (RS) COMMAND. The following command line
 will do the job:


    RS@5

 Go  ahead and execute this COMMAND. Now use the ID COMMAND to see what happened.
 It should now display IR=00013, showing that you skipped the  next  five  lines,
 and  now  the  next  line which will be inserted will be line 13! You could also
 have issued the RS COMMAND like this,

    RS#13

 which would have caused the RS COMMAND to skip up to (but  not  including)  line
 13.  The  result  would  have  been the same. The RS COMMAND, incidentally, will
 allow you to skip one line by entering RS with no numeric type (blank type), but
 you may not use the 'to the end' option (the asterisk), for obvious reasons!


CLOSING THE FILE

 There are two ways of closing a read-in file. The first is manually by  the  use
 of  the CF COMMAND. Look at the banner line. Right now, you will see the WR flag
 being displayed to indicate that you have an open read-in file. Now execute  the
 following command line:

    CF

 If  you  look  at  the  banner  again,  you  will  see that the WR flag has been
 extinguished to indicate that the read-in  is  no  longer  open.  Now  try  this
 command line. You should be able to guess what will happen:

    RI#20

 Use your space bar to clear the error message.


 There  is  a second way in which the read-in file is closed, and is not directly
 under operator control. If you insert the last line in the file by using the 'to
 the end' option (*), the file will be closed automatically. Also, if you specify
 a read-in or read-skip to a line number past the end of the  file,  all  of  the
 remaining  lines  in  the file will be inserted and then the file will be closed
 and a TARGET NOT REACHED error message will be posted.

 There is also a third way in which the read-in file is closed. If you use the LO
 COMMAND  to  end  the  edit session and there is a read-in file open, it will be
 closed automatically as part of the closing routines. You do not have  to  worry
 about closing a read-in file if you are getting ready to LOG anyway!

 Go ahead and close the read-in file now using the CF COMMAND. You do not need to
 abort the edit session, as you will be using the text in  the  next  section  of
 this chapter.


WRITE-OUT FILES

 You  have  now  learned  how  to get text from another file and insert it in the
 current file. You can also do just the opposite. You can create a  new  file  on
 the  disk  which  we  call  a  write-out file and extract or copy lines from the
 current text into it! This allows you to take sections of existing documents and
 make  them permanent or temporary files on the disk. This section will teach you
 how to do so. If you aborted the edit session after the  last  section  of  this
 chapter, open a new edit session on the NEWDOC file, and set your left margin at
 10 (LM#10).


OPENING A WRITE-OUT FILE

 Opening a write-out file is done in a manner similar to opening a read-in  file,
 except,  of  course,  that  a new file is created. Execute the following command
 line:

    OW/EDTEST/

 A new file named EDTEST will be created on the working drive with  an  extension
 of .TXT (EDTEST.TXT). Like the read-in file, you can specify an extension if you
 desire, and may specify a drive number if you want. Be sure, however,  that  the
 drive number you specify is real, or lock-up and blow-up will occur!

 One more thing should be understood about the OW COMMAND. If a disk error occurs
 during opening, an immediate abort to DOS may occur. If this happens, you  could
 lose a lot of work, since all work in the current edit session will be lost.

 The  reason  that this may happen is that some operating systems get very stupid
 in a hurry when an error in writing to the  disk  occurs.  If  control  did  not
 immediately  return  to the operating system, the next thing that got written to
 the disk would probably destroy the disk. When we wrote SCREDITOR III,  we  felt
 it  was better to lose a day's work than a month's. If this sad state of affairs
 happens, there is no convenient way to recover the lost work.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IF  AN  ERROR  OCCURS  IN  CREATING THE WRITE-OUT FILE, IT IS   *
      *   POSSIBLE UNDER SOME CONDITIONS THAT AN IMMEDIATE ABORT TO DOS   *
      *   WILL  OCCUR.  IF  THIS  HAPPENS, ALL WORK DONE IN THE CURRENT   *
      *   EDIT SESSION WILL BE LOST.                                      *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now that we have scared you once more, let's continue!


EXTRACTING LINES TO THE WRITE-OUT FILE

 You  have  an  open  write-out  file  now.  If  you  look at the banner, this is
 indicated by the WW flag in the status section. Now  let's  extract  some  lines
 from the current text and place them in the write-out file. Turn on line numbers
 (NU) and move your cursor to the first line  in  the  text  (line  00001).  Then
 execute the following command line:

    WE@5

 As  you  can see, the first five lines disappeared from the screen. This COMMAND
 told SCREDITOR III to 'extract all lines from the current line through line five
 and place them in the write-out file.' You could have used WE#5 instead of WE@5,
 since you were on line 00001 when you executed the COMMAND.

 The WE COMMAND will also accept the 'to  the  end'  (*)  option  and  the  blank
 option. 'to the end' will extract everything from the current line to the end of
 the current buffer to the write-out file, and the blank option will extract  the
 current line.

 You  are  still  on line one in your text. When you extracted the lines into the
 write-out file, they ceased to exist in your  current  text  and  the  remaining
 lines were automatically renumbered.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE WRITE-EXTRACT (WE) COMMAND EXTRACTS  (OR  REMOVES)  LINES   *
      *   FROM  THE  CURRENT  BUFFER  AND  PLACES THEM IN THE WRITE-OUT   *
      *   FILE.                                                           *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


COPYING LINES TO THE WRITE-OUT FILE

 Now execute the following command line:

    WC#5

 Notice  that  nothing appeared to happen on the screen. As you will see shortly,
 the lines were indeed placed in the write-out file, but no change  was  made  to
 the  current  buffer.  Also, as you will see soon, the WE and WC COMMANDS do not
 honor margins.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE WE AND WC COMMANDS DO NOT HONOR MARGINS. ALL OF EACH LINE   *
      *   WILL BE COPIED OR EXTRACTED TO THE WRITE-OUT OUT FILE  AS  IF   *
      *   THE MARGINS DID NOT EXIST.                                      *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


CLOSING THE FILE

 Now that we have extracted and copied some lines from the current text into  our
 write-out  file,  it  should  be  closed.  You  will use the same COMMAND as you
 learned for closing the read-in file; i.e., the CF COMMAND. Do so  now.  As  you
 can see, the WW flag in the status section of the banner is now extinguished.

 The write-out file, like the read-in file, is also automatically closed when you
 ABORT  or  LOG the edit session. In the case of the ABORT closing, the write-out
 file will not be deleted from the disk. This allows you to open a file  for  the
 express  purpose  of extracting or copying material to a write-out file and then
 returning to DOS without disturbing the original files in any way!

 Again, like file opening and during the extract or copy operations,  if  a  disk
 error occurs in handling the write-out file, an immediate abort to DOS may occur
 under some conditions.

 Do not ABORT or LOG the edit session at this time unless you desire to do so.


LISTING THE FILES ON A DISK

 The read-in and write-out capabilities of SCREDITOR III are nice, but how do you
 know  whether  a  file to be used for read-in exists, or that the filename to be
 used for the write-out file doesn't (which, if it did, would cause one of  those
 ugly  errors  that we talked about a moment ago!)? You guessed it. SCREDITOR III
 has a way!

 Try executing the following command line:

    OL#0

 What  you  are  seeing  is  a  listing  of all of the files on drive 0. When the
 listing is finished, hit the space bar to clear  the  'Waiting...'  message  and
 return  to  screen editing. This COMMAND allows you to do a directory listing of
 the files on any drive in your system. Unlike the default drive numbers in  file
 names, however, you must ALWAYS specify the drive number which you wish to list.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHEN USING THE OL COMMAND, YOU MUST ALWAYS SPECIFY THE  DRIVE   *
      *   NUMBER  TO  BE  LISTED. THERE IS NO DEFAULT. THE DRIVE NUMBER   *
      *   YOU SPECIFY MUST EXIST ON THE SYSTEM AND HAVE A DISK  MOUNTED   *
      *   OR  LOCK-UP  WILL OCCUR. IF SUCH LOCK-UP OCCURS, LOSS OF WORK   *
      *   AND POSSIBLE DISK DESTRUCTION COULD RESULT.                     *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now  re-execute  the  COMMAND, but while the listing is being displayed, hit the
 space bar. As you can see,  the  space  bar  will  stop  the  listing.  This  is
 especially  useful  when  you  have  many  files on a drive and want to stop the
 listing before it scrolls off of the screen. Hit the space bar again to continue
 the listing.


 Re-execute  the  COMMAND  again, but this time, hit the ABORT key instead of the
 space bar, and the listing will be  aborted.  On  some  operating  systems,  the
 'Waiting...'  message  will  be  posted  when  you hit the ABORT key. On others,
 control will return directly to screen  editing.  If  the  'Waiting...'  message
 occurs  on  ABORT, the space bar or ABORT key will then return control to screen
 editing.

 If you now execute the COMMAND, but use the number of  the  working  drive,  you
 should  see EDTEST.TXT in the directory. This, of course, is the file we created
 a while ago with the OW COMMAND.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *                                                                   *
      *   LIKE  THE  OR AND OW COMMANDS, THIS COMMAND MAY NOT BE ISSUED   *
      *   WHILE A READ-IN, WRITE-OUT OR PRINT-OUT IS ACTIVE, OR AFTER A   *
      *   PRINT-MERGE COMMAND.                                            *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

LISTING THE CONTENTS OF A FILE

 While discussing the WE and WC COMMANDS, we mentioned that you would be able  to
 see  the  contents  of the file soon. Soon is now! Execute the following command
 line:

    OV/EDTEST/

 When you do, you may use the space bar and the ABORT key just as you did  during
 the directory listing. As you can see, all of the lines you extracted and copied
 are there, and the lines did not  get  truncated  at  either  margin.  When  the
 'Waiting...'  message comes up, take a look at the lines on the screen. The most
 obvious thing should be the fact that line numbers  are  displayed.  These  line
 numbers  do  not exist in the file, but are displayed to allow you to make notes
 on lines for use during the use of read-ins.

 Now hit your space bar and continue with the next session.


DELETING A FILE

 It is occasionally possible that you will wish to  delete  a  file  from  within
 SCREDITOR  III.  The OD COMMAND will allow you to do this. Since you will not be
 using the EDTEST.TXT file which you created in studying the WE and WC  COMMANDS,
 you will delete that file. Execute the following command line:

    OD/EDTEST/

 When  you  have done so, use the OL COMMAND to verify that the file has, indeed,
 been deleted from the working disk.

 Like most of the COMMANDS which you have already seen in this chapter which deal
 with files, there are limitations on the use of the OD COMMAND.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THIS COMMAND MAY NOT BE EXECUTED WHILE A  READ-IN,  WRITE-OUT   *
      *   OR  PRINT-OUT FILE IS OPEN, AFTER A DISK ERROR WHICH SETS THE   *
      *   WE STATUS IN THE BANNER, OR AFTER A PRINT-MERGE OPERATION.      *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 This  completes  the exercises in this section. If you wish to practice with the
 additional COMMANDS you have now learned, you may do so. When you are done,  you
 should ABORT the edit session and continue with this chapter.


EXITING TO THE SYSTEM MONITOR

 It  is  possible,  under  some rare and inexplicible circumstance that one might
 wish for some unfathomable reason to exit SCREDITOR III and  enter  the  machine
 monitor program. This COMMAND will do that. It is mentioned here for the sake of
 completeness. Those who need to do so will be able to figure out  how  from  the
 TECHNICAL  REFERENCE  MANUAL  and INSTALLATION MANUALS. If you do not understand
 what we are saying, ignore the COMMAND 'cause it ain't for you!'
DELAYED OPENING

 At this point, you should be in your operating system. If not,  ABORT  SCREDITOR
 III. When you are in your operating system, call SCREDITOR III, but do not enter
 anything after its name (no commas  or  file  names).  When  SCREDITOR  III  has
 finished loading, the following prompt should appear:

    EDIT,

 At  this  point,  you  could  remove the disk from your system drive and install
 another disk before typing any file names. This allows single-drive users to  do
 some  meaningful  editing  (since  the  system  drive in such systems is usually
 pretty full). Also, on two-drive systems,  substituting  another  disk  for  the
 system disk might allow you to edit a file which is nearly as big as a full disk
 by specifying the input file to come from one drive and the output file to go to
 another.  The  usefulness  of  this  form  of the call to SCREDITOR III is to be
 determined by the user. We just wanted to let you know it was there!

 If you decide to use this form of the opening, you would type the  name  of  the
 file in response to the prompt to edit an existing file, or type a comma and the
 name of a file to create a  new  file.  In  other  words,  you  would  type  the
 remainder of the command line as if you had already typed EDIT,.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE DELAYED FILE OPENING IS RESPONDED TO AS IF  YOU  YOURSELF   *
      *   HAD TYPED THE 'EDIT,' THAT IS DISPLAYED.                        *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 If you hit return when the 'EDIT,' prompt is displayed, SCREDITOR III will start
 up  with  no  input  or  output file. This is especially useful when you wish to
 'scribble' some notes, and don't want to save the result of the edit session.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   HITTING RETURN IN RESPONSE TO THE 'EDIT,' PROMPT  WILL  START   *
      *   THE  EDIT  SESSION  WITH  NO  FILES  OPEN, GIVING THE USER AN   *
      *   'ELECTRONIC SCRATCH-PAD' TYPE OF OPERATION.                     *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 If  an  edit session is started this way, the NE, SA and PM COMMANDS will not be
 active. You will, however, still be able to open read-in  and  write-out  files,
 etc...


OPENING THE OUTPUT FILE

 If you open an edit session with no files open, and then decide that you want to
 save the work you have done, you could always open a write-out file and  extract
 the  entire  current  buffer  to  the  file.  A  COMMAND, though, is included in
 SCREDITOR III which will let you open an output file, the  result  of  which  is
 just  as  if you had called SCREDITOR III to create a new file. Once this output
 file is open, the NE, SA and PM COMMANDS will become  active.  You  execute  the
 OPEN  OUTPUT COMMAND using the same command syntax as the OR and OW COMMANDS, as
 in:

    OO/TEST/

 which would accomplish the same thing as if you had typed

    ED3,,TEST

 to call SCREDITOR III, or responded to the 'EDIT,' prompt with a comma  and  the
 letters TEST.

 No specific exercises are presented to demonstrate this information. If you want
 to try the delayed opening or the OO COMMAND, you may do so before going to  the
 next chapter.


SUMMARY

 In  this chapter, you have learned more about the capabilities of SCREDITOR III,
 in particular, you have learned most of the ADVANCED DISK COMMANDS.  There  will
 be  more  about  these and other COMMANDS later. The important points you should
 have learned in this chapter are:

 1)  THE OPEN FOR READ-IN COMMAND (OR) EXPECTS A FILE NAME WHICH CONFORMS TO  THE
     SYNTAX WHICH IS VALID FOR YOUR OPERATING SYSTEM. THE DEFAULT DRIVE WHEN NONE
     IS GIVEN IS THE WORKING DRIVE AND THE DEFAULT EXTENSION WHEN NONE  IS  GIVEN
     IS .TXT.

 2)  AN  OR  COMMAND  MAY  NOT  BE  EXECUTED  WHILE  A  FILE IS OPEN FOR READ-IN,
     WRITE-OUT OR PRINT-OUT, OR AFTER THE EXECUTION OF A PRINT-MERGE COMMAND.  IF
     A  POTENTIALLY  FATAL ERROR HAS OCCURRED PREVIOUSLY IN THE USE OF THE OR, OW
     OR OP COMMANDS, YOU WILL NOT BE ALLOWED TO OPEN A NEW READ-IN  TO  ELIMINATE
     THE POSSIBILITY OF BLOWING UP A DISK!

 3)  ANY  FILE WHICH EXISTS ON A MOUNTED DISK MAY BE OPENED AS A READ-IN FILE. IF
     A NON-TEXT FILE IS OPENED, SYSTEM  BLOW-UP  MAY  OCCUR  WHEN  A  READ-INSERT
     COMMAND  IS  LATER GIVEN. IT IS UP TO YOU TO KNOW WHICH FILES ARE TEXT FILES
     AND WHICH ARE NOT!

 4)  IT IS UP TO THE OPERATOR TO KNOW WHETHER A PARTICULAR DRIVE NUMBER IS  LEGAL
     OR  NOT. SPECIFYING AN ILLEGAL DRIVE NUMBER MAY RESULT IN SYSTEM LOCK-UP AND
     DISK DESTRUCTION.

 5)  THE READ-INSERT (RI) COMMAND  DOES  NOT  HONOR  MARGINS.  TEXT  OUTSIDE  THE
     CURRENT MARGINS WILL BE INSERTED AS IF THE MARGINS DID NOT EXIST.

 6)  IF AN ERROR OCCURS IN CREATING THE WRITE-OUT FILE, IT IS POSSIBLE UNDER SOME
     CONDITIONS THAT AN IMMEDIATE ABORT TO DOS WILL OCCUR. IF THIS  HAPPENS,  ALL
     WORK DONE IN THE CURRENT EDIT SESSION WILL BE LOST.

 7)  THE  WRITE-EXTRACT (WE) COMMAND EXTRACTS (OR REMOVES) LINES FROM THE CURRENT
     BUFFER AND PLACES THEM IN THE WRITE-OUT FILE.

 8)  THE WE AND WC COMMANDS DO NOT HONOR MARGINS. ALL OF EACH LINE WILL BE COPIED
     OR EXTRACTED TO THE WRITE-OUT OUT FILE AS IF THE MARGINS DID NOT EXIST.

 9)  WHEN  USING  THE  OL COMMAND, YOU MUST ALWAYS SPECIFY THE DRIVE NUMBER TO BE
     LISTED. THERE IS NO DEFAULT. THE DRIVE NUMBER YOU SPECIFY MUST EXIST ON  THE
     SYSTEM  AND  HAVE  A  DISK  MOUNTED  OR  LOCK-UP WILL OCCUR. IF SUCH LOCK-UP
     OCCURS, LOSS OF WORK AND POSSIBLE DISK DESTRUCTION COULD RESULT.

 10) THE ADVANCED DISK COMMANDS, WITH THE EXCEPTION OF THE OO  COMMAND,  MUST  BE
     USED 'ONE-AT-A-TIME.' IF, FOR INSTANCE, A READ-IN IS ACTIVE, OD, OV, OL, OW,
     OP AND PM MAY NOT BE EXECUTED.


 (The remainder of this chapter deals with the OS-9 version of SCREDITOR III, and
 should be skipped by SSB and TSC users.)


BEFORE YOU START

 This  section of this chapter is for users of the OS-9 operating system. SSB and
 FLEX users should refer to the first section of this chapter.


READ-IN FILES

 Many editing jobs could be made a lot easier if you didn't have to type the same
 material  over  and  over.  SCREDITOR  III  provides a way around this continual
 retyping in the form of what we call a READ-IN. Any text file may be opened as a
 READ-IN file, and selected lines from the file then inserted into your text. You
 may also select only certain lines for insertion,  skipping  other  sections  or
 lines  of  the file as needed. The first part of this section will actually take
 you through the process of doing just that! To start this  lesson,  open  a  new
 edit session on your NEWDOC file.


OPENING A READ-IN FILE

 When everything is ready for editing, execute the following command line, making
 sure you leave the space after the filename (before the second delimiter):

    OR/NEWDOC /

 When you execute this COMMAND, SCREDITOR III will attempt to open the file named
 NEWDOC  in  the current working directory (and it will succeed, of course, since
 you know that file exists!).


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  OPEN  FOR READ-IN COMMAND (OR) EXPECTS A FILE NAME WHICH   *
      *   CONFORMS TO THE SYNTAX WHICH  IS  VALID  FOR  YOUR  OPERATING   *
      *   SYSTEM.  THE  DEFAULT  DIRECTORY  WHEN  NONE  IS GIVEN IS THE   *
      *   CURRENT WORKING DIRECTORY.                                      *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Incidentally,  you cannot execute this COMMAND when you already have a file open
 for READ-IN or WRITE-OUT, or after a  PRINT-MERGE  COMMAND  has  been  executed,
 since parts of memory are shared between these COMMANDS.

      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE OR  COMMAND  MAY NOT BE EXECUTED WHILE A FILE IS OPEN FOR   *
      *   READ-IN, WRITE-OUT OR PRINT-OUT, OR AFTER THE EXECUTION OF  A   *
      *   PRINT-MERGE   COMMAND.  IF  A  POTENTIALLY  FATAL  ERROR  HAS   *
      *   OCCURRED PREVIOUSLY IN THE USE OF THE OR AND/OR OW  COMMANDS,   *
      *   YOU  WILL  NOT  BE ALLOWED TO OPEN A NEW READ-IN TO ELIMINATE   *
      *   THE POSSIBILITY OF BLOWING UP A DISK!                           *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Also,  Care  should be taken in the use of the OR COMMAND, as SCREDITOR III will
 not check to see if the file which you specified is really a text file or not.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   ANY FILE WHICH EXISTS ON A MOUNTED DISK MAY BE  OPENED  AS  A   *
      *   READ-IN  FILE.  IF  A NON-TEXT FILE IS OPENED, SYSTEM BLOW-UP   *
      *   MAY OCCUR WHEN A READ-INSERT COMMAND IS LATER GIVEN. IT IS UP   *
      *   TO YOU TO KNOW WHICH FILES ARE TEXT FILES AND WHICH ARE NOT!    *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now that we have almost scared you out of using the READ-IN COMMAND  altogether,
 let's  go on! The file you have opened for READ-IN, by the way, is the same file
 which you are now editing. This will make things easier in this lesson since you
 know exactly what is in the file, (it's right in front of you!).


INSERTING LINES FROM THE READ-IN FILE

 Move your cursor down to the bottom  of  your  letter  and  type  the  NEW  LINE
 OPERATOR to generate an extra line. This extra line should be the bottom line on
 the screen to make things easier later.  Before  we  actually  insert  anything,
 though,  move your right margin to column 5 (RI#5). This will prove a point in a
 minute. Now execute the following COMMAND:

    RI@7

 Look at the screen! You now have the first seven lines of your letter duplicated
 in  front  of you. This is because you just inserted seven lines of the file out
 on disk (the open READ-IN file) into the current text. Notice that the  inserted
 text is above the current line.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE READ-IN INSERT COMMAND ALWAYS PLACES  THE  INSERTED  TEXT   *
      *   BEFORE THE CURRENT LINE.                                        *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 You  could  have used RI#7 instead of RI@7 in this case, since the first line to
 insert was also physically line 1. The form of the option part of the RI COMMAND
 may  be  any  of the four legal numeric types that you learned in CHAPTER SEVEN.
 '#' plus a number (e.g., RI#7) means through that line number in the  file.  '@'
 plus  a  number  (e.g.,  RI@7) means that a number of lines will be read-in. The
 asterisk (e.g., RI*) tells the RI COMMAND that the remainder of the file will be
 inserted.  No type at all (RI followed by nothing) says to read-in the next line
 only. By using the proper option, you may specify how much of a file to insert.

 Notice also that the text was inserted  even  though  it  extended  outside  the
 current margin.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE  READ-INSERT  (RI)  COMMAND  DOES NOT HONOR MARGINS. TEXT   *
      *   OUTSIDE THE CURRENT  MARGINS  WILL  BE  INSERTED  AS  IF  THE   *
      *   MARGINS DID NOT EXIST.                                          *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Don't do any more inserts yet. You will have an opportunity to  play  with  this
 COMMAND later.


WHAT'S THE NEXT LINE NUMBER

 Right now, you probably know that the next line number which will be inserted is
 line eight, since you just inserted the first seven lines. But what if you  were
 inserting  a  number  of blocks of text from a very large file, and weren't sure
 just where you were in the file? Execute the following COMMAND:

    ID

 As you can see, the command line cleared, and now the next  line  number  to  be
 inserted  is  displayed  (IR=00008). Hit your space bar to clear the display and
 return to screen editing. You can use the ID COMMAND at any time a read-in  file
 is open to find where you are in the file.


SKIPPING LINES FROM THE READ-IN FILE

 You  have  now  inserted the first seven lines of the file open for READ-IN into
 your document. Let's assume that you do not want the next five  lines  inserted.
 One  way  around  this is to insert the next five lines and then delete them. An
 easier way is by use of the READ-SKIP (RS) COMMAND. The following  command  line
 will do the job:

    RS@5

 Go  ahead and execute this COMMAND. Now use the ID COMMAND to see what happened.
 It should now display IR=00013, showing that you skipped the  next  five  lines,
 and  now  the  next  line which will be inserted will be line 13! You could also
 have issued the RS COMMAND like this,

    RS#13

 which would have caused the RS COMMAND to skip up to (but  not  including)  line
 13.  The  result  would  have  been the same. The RS COMMAND, incidentally, will
 allow you to skip one line by entering RS with no numeric type (blank type), but
 you may not use the 'to the end' option (the asterisk), for obvious reasons!


CLOSING THE FILE

 There are two ways of closing a read-in file. The first is manually by  the  use
 of  the CF COMMAND. Look at the banner line. Right now, you will see the WR flag
 being displayed to indicate that you have an open read-in file. Now execute  the
 following command line:

    CF

 If  you  look  at  the  banner  again,  you  will  see that the WR flag has been
 extinguished to indicate that the read-in  is  no  longer  open.  Now  try  this
 command line. You should be able to guess what will happen:

    RI#20

 Use your space bar to clear the error message.

 There  is  a second way in which the read-in file is closed, and is not directly
 under operator control. If you insert the last line in the file by using the 'to
 the end' option (*), the file will be closed automatically. Also, if you specify
 a read-in or read-skip to a line number past the end of the file, the file  will
 be closed and a TARGET NOT REACHED error message will be posted.

 There is also a third way in which the read-in file is closed. If you use the LO
 COMMAND to end the edit session and there is a read-in file  open,  it  will  be
 closed  automatically  as part of the closing routines. You do not have to worry
 about closing a read-in file if you are getting ready to LOG anyway!

 Go ahead and close the read-in file now using the CF COMMAND. You do not need to
 abort  the  edit  session,  as you will be using the text in the next section of
 this chapter.


WRITE-OUT FILES

 You have now learned how to get text from another file  and  insert  it  in  the
 current  file.  You  can also do just the opposite. You can create a new file on
 the disk which we call the write-out file and extract or  copy  lines  from  the
 current text into it! This allows you to take sections of existing documents and
 make them permanent or temporary files on the disk. This section will teach  you
 how  to  do  so.  If you aborted the edit session after the last section of this
 chapter, open a new edit session on the NEWDOC file, and set your left margin at
 10 (LM#10).


OPENING A WRITE-OUT FILE

 Opening  a write-out file is done in a manner similar to opening a read-in file,
 except, of course, that a new file is created.  Execute  the  following  command
 line:

    OW/EDTEST/

 A  new  file named EDTEST will be created in the current working directory. Like
 the read-in file, you may specify any legal pathlist for your system  (the  file
 may be in any directory).

 One more thing should be understood about the OW COMMAND. If a disk error occurs
 during opening, an immediate abort to the parent  process  may  occur.  If  this
 happens,  you  could  lose  a  lot  of  work, since all work in the current edit
 session will be lost. If  this  sad  state  of  affairs  happens,  there  is  no
 convenient way to recover the lost work.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   IF AN ERROR OCCURS IN CREATING  THE  WRITE-OUT  FILE,  IT  IS   *
      *   POSSIBLE UNDER SOME CONDITIONS THAT AN IMMEDIATE ABORT TO THE   *
      *   PARENT PROCESS  (USUALLY  THE  SHELL)  WILL  OCCUR.  IF  THIS   *
      *   HAPPENS,  ALL  WORK  DONE IN THE CURRENT EDIT SESSION WILL BE   *
      *   LOST.                                                           *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now  that  we  have scared you once more, let's continue, seeing how to actually
 put lines in this write-out file.


EXTRACTING LINES TO THE WRITE-OUT FILE

 You have an open write-out file  now.  If  you  look  at  the  banner,  this  is
 indicated  by  the  WW  flag in the status section. Now let's extract some lines
 from the current text and place them in the write-out file. Turn on line numbers
 (NU)  and  move  your  cursor  to  the first line in the text (line 00001). Then
 execute the following command line:

    WE@5

 As you can see, the first five lines disappeared from the screen.  This  COMMAND
 told SCREDITOR III to 'extract all lines from the current line through line five
 and place them in the write-out file.' You could have used WE#5 instead of WE@5,
 since you were on line 00001 when you executed the COMMAND.

 The  WE  COMMAND  will  also  accept  the  'to the end' (*) option and the blank
 option. 'to the end' will extract everything from the current line to the end of
 the  current buffer to the write-out file, and the blank option will extract the
 current line.

 You are still on line one in your text. When you extracted the  lines  into  the
 write-out  file,  they  ceased  to  exist in your current text and the remaining
 lines were automatically renumbered.

      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE WRITE-EXTRACT (WE) COMMAND EXTRACTS  (OR  REMOVES)  LINES   *
      *   FROM  THE  CURRENT  BUFFER  AND  PLACES THEM IN THE WRITE-OUT   *
      *   FILE.                                                           *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


COPYING LINES TO THE WRITE-OUT FILE

 Now execute the following command line:

    WC#5

 Notice that nothing appeared to happen on the screen. As you will  see  shortly,
 the  lines  were  indeed placed in the write-out file, but no change was made to
 the current buffer. Also, as you will see soon, the WE and WC  COMMANDS  do  not
 honor margins.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE WE AND WC COMMANDS DO NOT HONOR MARGINS. ALL OF EACH LINE   *
      *   WILL  BE  COPIED OR EXTRACTED TO THE WRITE-OUT OUT FILE AS IF   *
      *   THE MARGINS DID NOT EXIST.                                      *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


CLOSING THE WRITE-OUT FILE

 Now that we have extracted and copied some lines from the current text into  our
 write-out  file,  it  should  be  closed.  You  will use the same COMMAND as you
 learned for closing the read-in file; i.e., the CF COMMAND. Do so  now.  As  you
 can see, the WW flag in the status section of the banner is now extinguished.

 The write-out file, like the read-in file, is also automatically closed when you
 ABORT or LOG the edit session. In the case of the ABORT closing,  the  write-out
 file  will  not be deleted from the disk. This allows you to open a file for the
 express purpose of extracting or copying material to a write-out file  and  then
 returning to DOS without disturbing the original files in any way!

 Again,  like  file  opening and during the extract or copy operations, if a disk
 error occurs in handling the write-out file, an immediate abort to DOS may occur
 under some conditions.

 Go  ahead  and ABORT the current edit session and continue with the next part of
 this section.


NO-FILE OPENING

 At  this  point, you should be in your operating system. If not, ABORT SCREDITOR
 III. When you are in your operating system, call SCREDITOR III, but do not enter
 anything  after  its  name  (no  commas  or  file names). When SCREDITOR III has
 finished loading, it will immediately start up with no files open. This form  of
 opening  is  especially useful when you wish to 'scribble' some notes, and don't
 want to save the result of the edit session.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   CALLING  SCREDITOR  III  WITH  NO  PATHLISTS WILL CAUSE IT TO   *
      *   START UP  WITHOUT  FILES,  GIVING  THE  USER  AN  'ELECTRONIC   *
      *   SCRATCH-PAD' TYPE OF OPERATION.                                 *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 If an edit session is started this way, the NE, SA and PM COMMANDS will  not  be
 active. You will still be able to open read-in and write-out files, etc...


OPENING THE OUTPUT FILE

 If you open an edit session with no files open, and then decide that you want to
 save  the work you have done, you could always open a write-out file and extract
 the entire current buffer to the file, or you could open an  output  file  which
 would be used just as if you had called SCREDITOR III to create a new file. Once
 this output file is open, the NE, SA and PM COMMANDS  will  become  active.  You
 execute  the  OPEN OUTPUT COMMAND using the same command syntax as the OR and OW
 COMMANDS, as in

    OO/TEST /

 (making  sure  you  supply  the  space  between  the  pathlist  and  the closing
 delimiter). This would accomplish the same thing as if you had typed

    ED3 TEST

 to call SCREDITOR III and the pathlist TEST did not previously exist.

 Don't bother to open an output file at this time. Rather,  continue  on  to  the
 next part of this section.


OPERATING SYSTEM COMMANDS

 At this point, you should still be 'in' SCREDITOR III. If you did abort the edit
 session after the last section, open a new edit session now. You do not need any
 files open for this exercise, so call SCREDITOR III without any pathlist.


 The OS-9 version of SCREDITOR III is very flexible in that it allows you  to  do
 almost  anything  from  inside SCREDITOR III that you could do directly from the
 shell. For instance, if you wanted a listing of the current  working  directory,
 you can get it. Execute the following command line:

    OS/DIR

 As  you  can  see, you have a directory listing just as if you were in the shell
 when you issued the directory request. Notice that the message  'Waiting...'  is
 being displayed on the screen after the listing. Hit your space bar to clear the
 message and return to SCREEN EDIT MODE.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   THE   MESSAGE   'WAITING...'  WILL  BE  DISPLAYED  AFTER  ANY   *
      *   OPERATING SYSTEM COMMAND WHICH IS NOT ABORTED USING THE  OS-9   *
      *   QUIT  OR  INTERRUPT KEY. THE SPACE BAR WILL CLEAR THE MESSAGE   *
      *   AND RETURN CONTROL TO SCREEN EDIT MODE.                         *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Now  enter  and  execute  the following command line. If you need to, change the
 pathlist so that you will be doing a dump of SCREDITOR III itself.

    OS/DUMP /D0/CMDS/ED3

 As the dump is going by, use your OS-9 keyboard pause key (usually a  control-W)
 to stop the listing for a moment. Use it again to re-start the listing. Then use
 the OS-9 keyboard interrupt key (usually a control-C) to abort the dump.  Notice
 that  the  'Waiting...'  message is once again displayed. Now hit the space bar,
 and you will get an error message, which, in this case, will tell you  that  you
 got  an  error #003, which is OS-9's keyboard interrupt error. Use the space bar
 once more to clear the message and return to screen editing.


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   WHILE  AN  OS  COMMAND  IS  BEING EXECUTED, THE KEYBOARD WILL   *
      *   RESPOND EXACTLY AS IF YOU WERE IN THE SHELL. IN OTHER  WORDS,   *
      *   THE SPECIAL WAY IN WHICH THE KEYBOARD IS DEFINED IN SCREDITOR   *
      *   III IS OVERRIDDEN DURING THE OS  COMMAND.  ANY  ERRORS  WHICH   *
      *   OCCUR  DURING  THE  USE  OF  THE OS COMMAND WILL BE DISPLAYED   *
      *   AFTER CONTROL RETURNS TO SCREDITOR III.                         *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 You  may  execute any OS-9 command using the SCREDITOR III OS COMMAND as long as
 there is memory available to do so. You will, of course,  get  back  an  out  of
 memory error when you have allocated almost all of the system's memory using the
 memory modifier (#xxK) when you called SCREDITOR III.

 Go ahead and try some other OS-9 commands to get a feel  for  how  they  operate
 from  inside  SCREDITOR  III.  When you feel comfortable with how the OS COMMAND
 works, abort the edit session.


SUMMARY

 In  this chapter, you have learned more about the capabilities of SCREDITOR III,
 in particular, you have learned most of the ADVANCED DISK COMMANDS.  There  will
 be  more  about  these and other COMMANDS later. The important points you should
 have learned in this chapter are:

 1)  THE OPEN FOR READ-IN COMMAND (OR) EXPECTS A FILE NAME WHICH CONFORMS TO  THE
     SYNTAX  WHICH IS VALID FOR YOUR OPERATING SYSTEM. THE DEFAULT DIRECTORY WHEN
     NONE IS GIVEN IS THE CURRENT WORKING DIRECTORY.

 2)  AN OR COMMAND MAY NOT  BE  EXECUTED  WHILE  A  FILE  IS  OPEN  FOR  READ-IN,
     WRITE-OUT  OR PRINT-OUT, OR AFTER THE EXECUTION OF A PRINT-MERGE COMMAND. IF
     A POTENTIALLY FATAL ERROR HAS OCCURRED PREVIOUSLY IN THE USE OF THE  OR  AND
     OW  COMMANDS, YOU WILL NOT BE ALLOWED TO OPEN A NEW READ-IN TO ELIMINATE THE
     POSSIBILITY OF BLOWING UP A DISK!

 3)  ANY FILE WHICH EXISTS ON A MOUNTED DISK MAY BE OPENED AS A READ-IN FILE.  IF
     A  NON-TEXT  FILE  IS  OPENED,  SYSTEM  BLOW-UP MAY OCCUR WHEN A READ-INSERT
     COMMAND IS LATER GIVEN. IT IS UP TO YOU TO KNOW WHICH FILES ARE  TEXT  FILES
     AND WHICH ARE NOT!

 4)  THE  READ-IN  INSERT  COMMAND  ALWAYS  PLACES  THE  INSERTED TEXT BEFORE THE
     CURRENT LINE.

 5)  THE READ-INSERT (RI) COMMAND  DOES  NOT  HONOR  MARGINS.  TEXT  OUTSIDE  THE
     CURRENT MARGINS WILL BE INSERTED AS IF THE MARGINS DID NOT EXIST.

 6)  IF AN ERROR OCCURS IN CREATING THE WRITE-OUT FILE, IT IS POSSIBLE UNDER SOME
     CONDITIONS THAT AN IMMEDIATE ABORT TO THE PARENT PROCESS (USUALLY THE SHELL)
     WILL  OCCUR. IF THIS HAPPENS, ALL WORK DONE IN THE CURRENT EDIT SESSION WILL
     BE LOST.

 7)  THE WRITE-EXTRACT (WE) COMMAND EXTRACTS (OR REMOVES) LINES FROM THE  CURRENT
     BUFFER AND PLACES THEM IN THE WRITE-OUT FILE.

 8)  THE WE AND WC COMMANDS DO NOT HONOR MARGINS. ALL OF EACH LINE WILL COPIED OR
     BE EXTRACTED TO THE WRITE-OUT OUT FILE AS IF THE MARGINS DID NOT EXIST.

 9)  CALLING SCREDITOR III WITH NO PATHLISTS WILL CAUSE IT TO  START  UP  WITHOUT
     FILES, GIVING THE USER AN 'ELECTRONIC SCRATCH-PAD' TYPE OF OPERATION.

 10) THE  MESSAGE  'WAITING...'  WILL  BE  DISPLAYED  AFTER  ANY OPERATING SYSTEM
     COMMAND WHICH IS NOT ABORTED USING THE OS-9 QUIT OR INTERRUPT KEY. THE SPACE
     BAR WILL CLEAR THE MESSAGE AND RETURN CONTROL TO SCREEN EDIT MODE.

 11) WHILE  AN OS COMMAND IS BEING EXECUTED, THE KEYBOARD WILL RESPOND EXACTLY IF
     AS YOU WERE IN THE SHELL. IN OTHER WORDS,  THE  SPECIAL  WAY  IN  WHICH  THE
     KEYBOARD  IS  DEFINED  IN SCREDITOR III IS OVERRIDDEN DURING THE OS COMMAND.
     ANY ERRORS WHICH OCCUR DURING THE USE OF THE OS COMMAND  WILL  BE  DISPLAYED
     AFTER CONTROL RETURNS TO SCREDITOR III.
