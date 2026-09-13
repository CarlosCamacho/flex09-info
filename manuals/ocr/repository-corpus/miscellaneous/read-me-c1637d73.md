# READ-ME

> Source: `misc/uncategorized/MAST121A - FLEX Software Archive - Programs and Utility Collection - Includes CON-A210, CON-ADM5, KLONSCR3.zip!MAST121A.DSK!READ-ME.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

SCREDITOR III V:1.20D
                     =====================


     BEFORE YOU DO ANYTHING WITH THIS  PACKAGE  YOU  SHOULD
     FORMAT  A BLANK DISK AND THEN COPY ALL FILES FROM THIS
     DISK TO THE FRESHLY FORMATTED DISK. THIS  DISK  SHOULD
     THEN  BE  PUT  IN A SAFE PLACE AND ALL SUBSEQUENT WORK
     CARRIED OUT USING THE COPY!

     DO NOT LOOSE THIS DISK. IF YOU EVER  WANT  TO  UPGRADE
     THIS  COPY  OF SCREDITOR FOR A LATER VERSION YOU MUST,
     REPEAT MUST, RETURN IT TO US TO BE  ELIGIBLE  FOR  THE
     LOW-COST UPGRADE SERVICE.


      * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                   *
      *  COMPLETE AND RETURN THE REGISTRATION FORM NOW!   *
      *                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * *


The following files are present on the disk supplied:

 1. ED3     .CMD     This  is  SCREDITOR  III.  It  runs between
                     $0000 and approximately $5900.

 2. HELP    .DAT     This is the SCREDITOR  III  HELP  file.  It
                     should reside on your system disk with ED3.

 3. CONGEN  .CMD     This  is  the system terminal configuration
                     utility command. It produces a file  called
                     CONGEN.DAT when run.

 4. KEYGEN  .CMD     This  is  the system keyboard configuration
                     utility command. It produces a file  called
                     KEYGEN.DAT when run.

 5. PRTGEN  .CMD     This  is  the  system printer configuration
                     utility command. It produces a file  called
                     PRTGEN.DAT when run.

 7. READ-ME .TXT     This file!


 The  file  'WMS-ED3.CMD'  referred  to  in  section  'B' of the
 installation manual is only supplied  with  disks  for  use  on
 Windrush 68XX Systems.


                              NOTE
                              ====

     BEFORE YOU RUN CONGEN, KEYGEN OR PRTGEN TURN  OFF  THE
     TTYSET  PAUSE  FUNCTION IN FLEX THUS: TTYSET,PS=N<CR>.
     IF YOU DON'T  TURN  OFF  THE  PAUSE  FUNCTION  STRANGE
     STOPPAGES WILL OCCUR WHEN RUNNING THE ABOVE PROGRAMS.


LAST MINUTE NOTES...

     A number of changes  have  been  made  to  the  version  of
SCREDITOR  III  you  have  received. Be sure to read all of this
material very carefully before installing  and  using  SCREDITOR
III!


MEMORY-MAPPED DRIVERS NO LONGER SUPPLIED -

     We are no longer supplying screen driver source  files  for
memory-mapped  displays.  Since  so  few  people are using these
boards any more, we felt the disk space required and  effort  to
maintain the code wasn't worth the trouble.


CLEAR-TO-END-OF-SCREEN NO LONGER IN CONGEN -

     The installation manual indicates that you  will  be  asked
for  the  string  which  does  a  clear to end of screen on your
terminal. We have changed SCREDITOR III in this version  to  use
clear  to  end  of  line  to clear the screen as needed and have
deleted  the  question.  This  does  not  affect  the  speed  of
SCREDITOR  III,  and means that you have that much less to do to
install the program!


NEW PRINTER CONTROL CODES - BROKEN UNDERLINE

     In this version of  SCREDITOR  III,  printer  control  code
imbedments  10 and 11 are now defined as start and end of broken
underline, respectively. Broken underlines  are  different  than
full  underlines  (described  in  the  TRM)  in  that the broken
underline does not underline spaces between words. Like the full
underline,  the  broken underline is synthesized if your printer
supports  backspace  but  does  not  support  broken   underline
directly.


NEW PRINTER CONTROL CODES - HIGH-BIT GRAPHICS

     In  this  version  of  SCREDITOR  III, printer control code
imbedments 14 and 15 are  defined  as  start  and  end  graphics
respectively.  If these questions are not answered by a specific
control sequence in PRTGEN, SCREDITOR III will  treat  imbedment
14  as  'start  setting the high bit' and 15 as 'end setting the
high bit' and will set the high-order bit of all characters sent
to  the  printer  between  these two codes. This allows printers
such as the EPSON MX-80, which has block  graphics  defined  for
codes  $A0  through  $DF,  to print the graphics characters. For
instance, if control code 14 were placed before the  word  'the'
and  15  after it, and you had hit return in response to the two
questions in PRTGEN, the word would be sent to the printer as F4
E8 E5 instead of 74 68 65.


KEYGEN LOCKS UP...

     As  the  INSTALLATION MANUAL indicates, you must run CONGEN
before running KEYGEN. After having done so, if KEYGEN locks  up
after  asking  the  KEYBOARD  DELAY  question,  you  have made a
mistake in CONGEN concerning terminal addressing,  or  you  have
made  a mistake in KEYGEN concerning keyboard addressing. KEYGEN
uses an essentially identical I/O section as SCREDITOR III,  and
uses  the  CONGEN.DAT  file  for terminal information. After the
KEYBOARD DELAY question, the I/O is re-configured to  look  like
SCREDITOR  III.  Again, if lockup occurs, review your answers to
CONGEN and the first questions in KEYGEN to see what happened.


CHANGES IN DOCUMENTATION

     The enclosed documentation makes occasional  references  to
a COMMAND REFERENCE CARD and a TUTORIAL  CASSETTE.  These  items
were never completed and hence are not supplied.


IF YOU ARE RECEIVING THIS AS AN UPDATE...

     If you are receiving this disk as an update to a version of
SCREDITOR III older than 1.20, you must re-run all three of  the
GEN  programs. Changes in the data file structures place certain
data at different locations in the files. Again, this version of
SCREDITOR III will not load data files older than version 1.20.


IF YOU HAVE ANY PROBLEMS ...

We think that the additional information we have supplied in the
INSTALLATION   MANUAL   should   cover   most   FLEX    hardware
environments,  only  time  will  tell  however.  If you have any
problems installing this program on your system  please  let  us
know.


Please direct any enquiries to:

William C. Dickinson

WINDRUSH MICRO SYSTEMS LIMITED
Worstead Laboratories
North Walsham
Norfolk, NR28 9SA ENGLAND

TEL: (0692) 404086 from the UK.  Or 44 (692) 404086 from the US.
TLX: 975548 WMICRO G
