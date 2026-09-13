# SINST3

> Source: `manuals/misc/MANUAL - FLEX Software Archive - Manual and Documentation Archive - Includes SINST0, SINST1, SINST2.zip!MANUAL.DSK!SINST3.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                          SYSTEM INSTALLATION MANUAL

                   PRTGEN - PRINTER DATA CONSTANTS GENERATOR


.DHE
%SYSTEM INSTALLATION MANUAL                          SCREDITOR III WORD PROCESSOR

                   PRTGEN - PRINTER DATA CONSTANTS GENERATOR


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                        PAGE 3-%%%%
.DFE
"
 PAGE 3-%%%%                                        (C) 1982, ALFORD & ASSOCIATES
GENERAL

 The third data file loaded by SCREDITOR  III  contains  information  about  your
 printer, and is created by PRTGEN.

 In  the  paragraphs  which follow, 'control code', or just 'code', will refer to
 the code which you imbed in your text. 'Control  sequence'  will  refer  to  the
 actual  character or characters which the code stands for; i.e., the actual data
 sent to the printer.


PRTGEN OPERATION

 When PRTGEN is run, several questions  will  be  asked  about  your  system  and
 printer. SSB and FLEX versions will request the address of the printer character
 output and initialization routines used  by  your  hardware  drivers.  The  OS-9
 version  will  request  the  pathname of your printer (such as /P2, etc...). You
 will also be asked for default page dimensions, and for both the 'stock' and any
 special control sequences you will be using with your printer.

 When  you have answered all of the questions, the program will search the system
 disk for a file named PRTGEN.DAT (FLEX and SSB), or PRTGEN plus your  five-digit
 user  I.D.  (i.e.,  PRTGEN00001)  in  the  EDIT_DATA directory on drive D0 (OS-9
 version). If found, it will be deleted. If not found, or  once  deleted,  a  new
 data file with the same name will be created, and the new data will be placed in
 it.


PRTGEN QUESTION DESCRIPTIONS

 In the descriptions which will follow of the questions which PRTGEN  asks,  each
 question is shown exactly as it will be presented by PRTGEN. The questions shown
 with (SSB and FLEX) typed at the right  margin  are  asked  only  by  those  two
 versions  of  the  program.  The  questions shown with (OS-9) typed at the right
 margin are asked  only  by  that  version  of  the  program.  Any  question  not
 specifically marked will be asked by all versions of the program.


PRTGEN ENTRY METHOD

 The line input routine in your DOS is used by PRTGEN for the actual entry of the
 data, allowing you to edit the information before  giving  it  to  PRTGEN.  Each
 question  must  be exactly answered. When you have entered the information for a
 given question, the RETURN key should be struck to pass the data to  PRTGEN.  If
 you  decide to abort the PRTGEN operation before completion, you should type the
 letter Q followed by a carriage return in answer to any question.  Control  will
 immediately return to DOS.

 The  characters in parentheses in each question indicate the type of information
 you should type in response to the  question,  as  described  in  the  following
 paragraphs:

 (HHHH)       indicates  that  four  hexidecimal  digits (0-9, A-F) are needed to
              answer the question. If fewer or more than four digits  are  typed,
              or a non-hex digit is entered, the question will be repeated.

 (HH)         indicates  that  two  hexidecimal  digits  are needed to answer the
              question. If fewer or more are typed, or  if  a  non-hex  digit  is
              entered, the question will be repeated.

 (DDD)        indicates  that  from  one  to  three  decimal digits are needed to
              answer the question. If fewer than one or more  than  three  digits
              are  typed, or a non-decimal digit is entered, the question will be
              repeated.

 (Y or N)     indicates that you should type Y if the answer to the  question  is
              affirmative,  N if not. Any other character will cause the question
              to repeat (lower case Y or N is acceptable).

 SEQUENCES    Each  question  will  allow  you to enter from zero to six bytes of
              data. Each answer must be entered  with  two-character  hexidecimal
              responses separated by commas, as in this example:

              (CODE 0) PRINTER START-UP - 1B,41,0D

              No other delimiter is allowed. If any delimiter other than a  comma
              is  entered,  or  a  non-hex  digit is entered, or if more than six
              bytes are entered, the question  will  be  repeated.  Any  sequence
              which  will  not be defined is skipped by simply hitting a carriage
              return.

              When the strings are actually used, a null is sensed  by  SCREDITOR
              III  as the end of the entry; therefore, if you need a null as part
              of the control sequence itself (as with  the  Epson  printers  with
              GRAFTRAX  option),  you may so indicate by entering FF whenever you
              want a null, as in this example:

              (CODE 0) PRINTER START-UP - 0C,FF,20,0D

              This entry will be sent to the printer as  0C,00,20,0D.  Note  that
              you  do  not  actually enter the terminating null...this is done by
              PRTGEN itself. Because of the fact that $FF is converted to a  null
              by SCREDITOR III, a true $FF cannot be entered.

              Those questions marked:

              NOT DEFINED *****      should be answered by simply hitting return.
PRTGEN QUESTIONS

 The list of questions asked by PRTGEN follows. You should read  these  questions
 before  actually  running  PRTGEN,  and  locate  the answers in your printer and
 system documentation.


 PRINTER OUTPUT ADDX            (HHHH) - (SSB and FLEX)

 This is the address which should be called as a subroutine from SCREDITOR III to
 send a character contained in the A-register to  your  printer.  Generally,  the
 address  will  be  CCE4 for FLEX-9 systems, ACE4 for 6800 FLEX systems, and D312
 for all SSB systems. No registers need to be preserved by this routine; however,
 the routine must end in an RTS or your system will go away. If you do not have a
 printer on your system you should enter 0000 in answer to  this  question.  This
 will  NOT  defeat the print COMMANDS in SCREDITOR III (thus allowing you to send
 printed output to a file if desired), but will keep the system from  locking  up
 if a print COMMAND is inadvertently entered.


 PRINTER INIT ADDX              (HHHH) - (SSB and FLEX)

 This is the address which should be called as a  subroutine  to  initialize  the
 hardware  port and the printer before it is actually used. Typical addresses are
 CCC0 for FLEX-9 systems, ACC0 for 6800  FLEX  systems,  and  D30F  for  all  SSB
 systems. No registers need to be preserved by this routine; however, the routine
 must end in an RTS or everything goes out the window. If  you  do  not  need  an
 initialization  call,  enter  0000 in answer to this question, and SCREDITOR III
 will never call the routine.


 PRINTER PATH        (1-31 CHARACTERS) - (OS-9)

 This is the path to which the output of  the  print  commands  should  be  sent.
 Generally  this  will  be  the  name  of  your  printer  path,  but could be any
 compatible device in the system. Be sure that the path name is entered properly.
 For  instance,  if  you  were going to send the printed output to device P2, you
 would enter /P2. If, on the other hand, you were going to send  the  data  to  a
 file  named  P2  in  the current data directory, you would simply enter P2. Note
 that the slash is important!


 PRINTER TOP MARGIN              (DDD) -

 The decimal number you enter in response to this question is the number of blank
 lines  which  will  be  left  at  the top of each printed page when you have not
 defined a header for that page. The maximum value that may be entered  for  this
 question  is  a  value  such that the difference between the printer page length
 (entered below) and the sum of this value and the bottom margin (entered  below)
 will be five or larger. In no case may the entry exceed 255.


 PRINTER LEFT MARGIN             (DDD) -

 The  decimal  number  you  enter for this question will be used to leave a blank
 left margin on all printed lines. This value is included to  overcome  the  fact
 that  many  tractor-fed  printers  will not allow you to mechanically set a left
 margin for printing, and start printing  right  on  the  left  tear  point.  The
 maximum value which may be entered for this question is 255.


 PRINTER BOTTOM MARGIN           (DDD) -

 The decimal number you enter in response to this question is the number of blank
 lines which will be left at the bottom of each printed page when  you  have  not
 defined  a  footer for that page. The maximum value that may be entered for this
 question is a value such that the difference between  the  printer  page  length
 (entered  below)  and  the  sum of this value and the top margin (entered above)
 will be five or larger. In no case may this entry exceed 255.


 PRINTER PAGE LENGTH             (DDD) -

 The decimal number you give for this question is the actual number of  printable
 lines  on  a  page. For instance, for a printer which prints six lines per inch,
 there are 66 lines on an eleven inch long page. The maximum value you may  enter
 in response to this question is 255, and the minimum value is five more than the
 sum of the top and bottom margins entered above.


 PRINTER SUPPORT LOWER CASE?  (Y OR N) -

 Some printers (such as the Centronics 101-A will not properly handle lower  case
 letters.  If  yours is such a printer, enter N to this question. If your printer
 will accept lower case letters, even though it prints them in upper case,  enter
 Y.


 NULLS AFTER CR-LF (NEW LINE)    (DDD) -

 Many  printers  (such  as  teletype machines) require a delay after a command to
 start a new line. If your printer is one of these, enter  the  number  of  nulls
 needed. The maximum value is 255. If you need no nulls, enter zero.


CODE SEQUENCE QUESTIONS

 The following questions are answered as described by the  SEQUENCES  description
 in  the  ENTRY  METHOD  section  above.  The complete list of questions asked by
 PRTGEN is given below. Those sequence questions which do not have a (CODE n)  as
 the first part of the question are not imbeddable. As mentioned previously, CODE
 26 (SSB and FLEX) or CODE 27 (OS-9) will display the NOT DEFINED *****  message,
 and will have no (CODE n) displayed.


          (******)   PRINTER START-UP -
          (CODE 1)    START UNDERLINE -
          (CODE 2)      END UNDERLINE -
          (CODE 3)     START BOLDFACE -
          (CODE 4)       END BOLDFACE -
          (CODE 5) START DOUBLE WIDTH -
          (CODE 6)   END DOUBLE WIDTH -
          (CODE 7)      OPERATOR STOP -
          (******)  PRINTER BACKSPACE -
          (******)  NOT DEFINED *****
          (******)  NOT DEFINED *****
          (******)  NOT DEFINED *****
          (******)  NOT DEFINED *****
          (******)   PRINTER NEW LINE -
          (CODE 14)     USER FUNCTION -
          (CODE 15)     USER FUNCTION -
          (CODE 16)     USER FUNCTION -
          (CODE 17)     USER FUNCTION -
          (CODE 18)     USER FUNCTION -
          (CODE 19)     USER FUNCTION -
          (CODE 20)     USER FUNCTION -
          (CODE 21)     USER FUNCTION -
          (CODE 22)     USER FUNCTION -
          (CODE 23)     USER FUNCTION -
          (CODE 24)     USER FUNCTION -
          (CODE 25)     USER FUNCTION -
          (CODE 26)     USER FUNCTION -
          (CODE 27)     USER FUNCTION -
          (CODE 28)     USER FUNCTION -
          (CODE 29)     USER FUNCTION -
          (CODE 30)     USER FUNCTION -
          (CODE 31)     USER FUNCTION -


                          THIS PAGE INTENTIONALLY BLANK
