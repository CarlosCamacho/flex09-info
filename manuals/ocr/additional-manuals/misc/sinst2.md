# SINST2

> Source: `manuals/misc/MANUAL - FLEX Software Archive - Manual and Documentation Archive - Includes SINST0, SINST1, SINST2.zip!MANUAL.DSK!SINST2.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                          SYSTEM INSTALLATION MANUAL

                        KEYGEN - KEYBOARD DATA GENERATOR


.DHE
%SYSTEM INSTALLATION MANUAL                          SCREDITOR III WORD PROCESSOR

                        KEYGEN - KEYBOARD DATA GENERATOR


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                        PAGE 2-%%%%
.DFE
"
 PAGE 2-%%%%                                        (C) 1982, ALFORD & ASSOCIATES
GENERAL

 The first data file loaded was created by the CONGEN program.  The  next,  which
 contains keyboard data, is created by KEYGEN.


KEYGEN OPERATION

 The operation of KEYGEN should be thought of as running in  two  sections,  even
 though  the  program  is not actually run in two parts. The first section asks a
 number of questions about your system and asks for  a  keyboard  delay  constant
 (discussed later) in the same manner as the CONGEN program.

 The second section is used to actually define your keyboard layout, and operates
 quite  differently.  When  the  second  section  is running, the function of the
 requested key is displayed, to which you will respond by typing the  actual  key
 which  you  will  be  using to perform the function. As soon as the last key has
 been struck, the data entry sections of the program are done.

 KEYGEN will then search the system disk for a file named  KEYGEN.DAT  (FLEX  and
 SSB),  or  KEYGEN  plus  your  five-digit  user  I.D. (i.e., KEYGEN00001) in the
 EDIT_DATA directory on drive D0 (OS-9 version). If found, it will be deleted. If
 not  found, or once deleted, a new data file with the same name will be created,
 and the new data will be placed in it.


KEYGEN QUESTION DESCRIPTIONS

 In the descriptions which will follow of the questions which KEYGEN  asks,  each
 question is shown exactly as it will be presented by KEYGEN. The questions shown
 with (FLEX and SSB) typed at the right  margin  are  asked  only  by  those  two
 versions  of  the  program.  The  questions shown with (OS-9) typed at the right
 margin are asked  only  by  that  version  of  the  program.  Any  question  not
 specifically marked will be asked by all versions of the program.


KEYGEN ENTRY METHOD (FIRST SECTION)

 The line input routine in your DOS is used by KEYGEN for the actual entry of the
 data in the first section of questions, allowing you  to  edit  the  information
 before  giving  it  to  KEYGEN. Each question must be exactly answered. When you
 have entered the information for a given question,  the  RETURN  key  should  be
 struck  to  pass the data to KEYGEN. If you decide to abort the KEYGEN operation
 before the completion of this section, you should type the letter Q followed  by
 a  carriage return in answer to any question. Control will immediately return to
 DOS.

 The characters in parentheses in each question indicate the type of  information
 you  should  type  in  response  to  the question, as described in the following
 paragraphs:

 (HHHH)       indicates that four hexidecimal digits (0-9,  A-F)  are  needed  to
              answer  the  question. If fewer or more than four digits are typed,
              or a non-hex digit is entered, the question will be repeated.

 (HH)         indicates that two hexidecimal digits  (0-9,  A-F)  are  needed  to
              answer the question. If fewer or more than two digits are typed, or
              a non-hexidecimal  character  is  entered,  the  question  will  be
              repeated.

 (1-x)        indicates  that  a  number  from  1  to whatever is displayed for x
              should be entered. If zero, or a number higher than x  is  entered,
              or any non-decimal value, the question will repeat.

 (Y or N)     indicates  that  you should type Y if the answer to the question is
              affirmative, N if not. Any other character will cause the  question
              to repeat (lower case Y or N is acceptable).


KEYGEN ENTRY METHOD (SECOND SECTION)

 After the first part of the questions have been asked, the second will begin. In
 this section, each SINGLE-KEY OPERATOR defined in this version of SCREDITOR  III
 will  be presented. You will type the actual key which you will be using for the
 displayed function. The prompt for your entry will look like this:

    CURSOR LEFT -

 When you hit the key, KEYGEN will determine if the key is a valid entry. Invalid
 conditions include:

 1) The  first  (or  only)  character received was not an ASCII control code or a
    'META' key, if you are using them.

 2) The character (or characters) received duplicated a previous entry.

 3) More than five characters were received in a single burst from the keyboard.


 Whenever you hit any key, the code(s) it generates will be displayed as:

    CURSOR LEFT - 1B,41,0D

 This shows that the key  you  typed  in  response  to  the  CURSOR  LEFT  prompt
 generated  a  sequence  of  codes  consisting  of  an escape character ($1B), an
 upper-case A ($41) and a carriage return ($0D).

 If the first error listed above occurs, the display will look like this:

    CURSOR LEFT - 41 ****

    ILLEGAL CODE. PLEASE RE-SELECT!

    CURSOR LEFT -

 This shows that the key you struck generated an upper case A instead of a  valid
 control code (or sequence starting with a control code).


 If the second error listed above occurs, the display will look like this:

    CURSOR RIGHT - 1B,41,0D ****

    CURSOR LEFT USED THIS CODE. PLEASE RE-SELECT!

    CURSOR RIGHT -

 This shows that the key you  typed  in  response  to  the  CURSOR  RIGHT  prompt
 generated the same code as CURSOR LEFT, and that you should select another key.


 If the third error listed above occurs, the following message will be displayed:

    CURSOR RIGHT - 01,02,03,04,05 ****

    TOO MANY CHARACTERS RECEIVED. PLEASE RE-SELECT!

    CURSOR RIGHT -

 This message will generally only  occur  with  keyboards  which  have  roll-over
 capability;  i.e.,  will  accept two nearly-simultaneous keystrokes, sending one
 immediately after the other with no intervening  time  between  the  codes.  Try
 hitting the key again if this happens.


 If a mistake is made during this second section of the program, or if you change
 your  mind about the key assignments you have selected, typing the letter C will
 clear all of the entries and re-start the section. If you decide  to  abort  the
 KEYGEN run, type the letter Q in answer to any of the prompts.


SECTION ONE QUESTIONS

 The  following  paragraphs  describe  in detail each question asked in the first
 section of the KEYGEN run.


 KEYBOARD TYPE                 (1-6) - (SSB and FLEX)

 Six keyboard configurations are supported by SCREDITOR III, as follows:

 1 - ACIA SERIAL PORT WITHOUT INTERRUPTS
 2 - PIA PARALLEL PORT WITHOUT INTERRUPTS
 3 - ACIA SERIAL PORT USING INTERRUPTS
 4 - PIA PARALLEL PORT USING INTERRUPTS
 5 - EXTERNAL ROUTINE USING NE FOR CHARACTER PENDING
 6 - EXTERNAL ROUTINE USING CS FOR CHARACTER PENDING

 TYPE 1 -  The type one port utilizes an ACIA for the I/O port, and the port will
           not interrupt, thus no keyboard queueing will be supported.

 TYPE 2 -  The  type two port uses a PIA as the I/O device. The CA1 or CB1 bit is
           used as a character ready flag. (CA2/CB2 flags are not  recognized  by
           SCREDITOR III.) Keyboard queueing is not supported.

 TYPE 3 -  The  type  three  port  is the same as the type one port, but the port
           must be strapped for interrupts, the IRQ vector must be accessible for
           use,  and  any  other devices in the system which might interrupt when
           interrupts are enabled must have handlers in place.

           This configuration will allow up to sixteen characters to  be  entered
           "ahead"  of  SCREDITOR  III  by  the  use  of  interrupts and keyboard
           queueing, thus eliminating the delays in entry which  would  otherwise
           occur during word-wrap, etc...,

           When an interrupt occurs and the keyboard port is not the interrupting
           device, SCREDITOR III will pass control to the  vector  which  existed
           before  it was loaded. If this occurs and external handlers are not in
           place, system lockup will occur. If you are not sure about  the  state
           of  interrupts or hardware which may interrupt in your system, use the
           TYPE 1 port.

 TYPE 4 -  The type four port supports interrupts as with the  type  three  port,
           but  with a parallel keyboard interface as with the type two port. The
           same warning about other interrupting devices applies. If  you  aren't
           sure, use the TYPE 2 port.

 TYPE 5 -  The  type  five  port uses external routines to handle keyboard entry.
           The type five port designation is for those  external  handlers  which
           return  an NE (not equal) condition when a key has been pressed and is
           ready to be read (such as the check keyboard status routine in  FLEX).
           The keyboard handlers must NEVER echo characters to the screen, or the
           echo must be capable of being disabled, as detailed later.

           Whenever possible, use the TYPE 1-4 keyboard assignments. TYPES 5  and
           6 are only used when talking to the hardware port itself is impossible
           (see the note about this in the addendum to this manual).


 TYPE 6 -  The type six port uses external routines to handle keyboard entry like
           the  type  five  port, but is designed to use handlers which return CS
           (carry set) when a character is pending and ready to be read (such  as
           the check keyboard status routine in SSB DOS). Again, as with the TYPE
           5 selection, the keyboard must not echo to the screen, the  echo  must
           be capable of being disabled, as detailed later.

           Whenever  possible, use the TYPE 1-4 keyboard assignments. TYPES 5 and
           6 are only used when talking to the hardware port itself is impossible
           (see the note about this in the addendum to this manual).


 ADDRESS OF KEYBOARD PORT     (HHHH) - (SSB and FLEX)

 When  a  type one through type four keyboard port is specified, this question is
 asked. The address supplied should be the address of the SIDE of the PIA or ACIA
 interface  to  which  the  keyboard is attached. In other words, if the keyboard
 interface is located at address $E040, and the B-side of the interface is  being
 used,  E042 would be entered for this question. Typical answers are given in the
 addendum at the end of this manual.


 PORT SETUP WORD                (HH) - (SSB and FLEX)

 This two digit hex number is the value which is used to initialize the  port  in
 your  system. This question will only be asked if you have specified a type 1 to
 4 keyboard. Typical answers are given in the addendum at the end of this manual.

 If you are using a type 1 or 3 port,  and  if  you  cannot  determine  from  the
 documentation  on  your  system  which  setup  word  should be used, try 15 (X16
 systems) or 16 (X64 systems), as one of these two numbers will work  for  almost
 all terminals.

 If  you  are  using a type 2 or 4 port, the most often entered number will be 36
 for keyboards using a  positive-going  strobe,  or  34  for  keyboards  using  a
 negative-going strobe. Either will probably work if your keyboard latches data.


 KEYBOARD USE META KEYS?    (Y OR N) -

 If  you  are  using a keyboard with 'META' keys as described in the INSTALLATION
 section of this manual, you should answer Y to this question. When Y is entered,
 SCREDITOR  III  will  not  mask  the high bit of any character received from the
 keyboard. If you answer N to this question, SCREDITOR III  automatically  strips
 the high bit from each byte received from the keyboard before decoding it.

 IF  YOU  ANSWER  Y  TO  THIS  QUESTION, IT IS MANDATORY THAT THE PORT SETUP WORD
 REQUESTED IN THE PREVIOUS SECTION BE RIGHT OR THE KEYBOARD WILL NOT DO  ANYTHING
 RIGHT!


 SYSTEM IRQ VECTOR ADDRESS    (HHHH) - (SSB and FLEX)

 If  you  specified  a  type  3  or  4 keyboard, this question will be asked. The
 hexidecimal address you give must be the  address  into  which  the  address  of
 interrupt handlers will be placed to be recognized by the system monitor when an
 interrupt occurs; that is, the address from which the system monitor  takes  the
 address to which it passes control when an interrupt occurs.

 In   clarification,   when   an   IRQ-type  interrupt  occurs,  68xx  processors
 automatically load the contents of $FFF8  into  the  program  counter.  This  is
 normally  the  address  of  a  vectoring  routine  in  the  system monitor. This
 vectoring routine then takes the contents of a 16-bit address from a  scratchpad
 area  and  does  an indexed jump to that address. The address of this scratchpad
 location is the address you should use to answer this question. Typical  answers
 are given in the addendum at the end of this manual.


 ADDRESS OF KEYBOARD CHECK    (HHHH) - (SSB and FLEX)

 If  you  have  specified  a  type  five  or  six keyboard, this question must be
 answered. This is the address of the routine which returns an NE (not equal)  or
 CS  (carry  set)  condition  whenever  a key has been pressed but not read. This
 routine must not actually read the character. READ THE  WARNING  IN  THE  SYSTEM
 MONITOR EXIT QUESTION ABOUT INDIRECT JUMP TABLES.

 No  register  need  to  be  preserved  by  this  routine, but the condition code
 register must return the proper status.


 ADDRESS OF GET CHARACTER     (HHHH) - (SSB and FLEX)

 If  you  have  specified  a  type  five  or  six keyboard, this question must be
 answered. This is the address of the routine which actually reads the key  which
 was  detected  using  the KEYBOARD CHECK routine. READ THE WARNING IN THE SYSTEM
 MONITOR EXIT QUESTION ABOUT INDIRECT JUMP TABLES.

 The  character  received  by the keyboard must be returned in the A-register. No
 other registers need be preserved.


 MUST ECHO BE CONTROLLED?   (Y OR N) - (SSB and FLEX)

 If you specified a TYPE 5 or 6 keyboard, this question will be  asked.  If  your
 system  normally  automatically echo's any characters entered at the keyboard to
 the screen, there must be a way of disabling the echo action  or  SCREDITOR  III
 will  not  run  properly.  If  you  system  echo's,  you should answer Y to this
 question, and provide the information requested by the following questions.

 WARNING: THIS SERIES OF QUESTIONS DOES NOT REFER TO THE ECHO FLAG IN FLEX  WHICH
 ECHOS CHARACTERS TO THE SCREEN WHEN A FILE IS BEING SAVED DURING SPOOLING.


 ADDRESS OF ECHO CONTROL      (HHHH) - (SSB and FLEX)

 If you have specified a type five or six  keyboard  and  answered  the  previous
 question  Y,  this  question will be asked. Since SCREDITOR III totally controls
 the screen during editing, it  is  mandatory  that  no  external  routines  echo
 characters  to  the  screen.  Many  system  monitors  and  memory-mapped display
 handlers will echo characters to the screen unless they  are  specifically  told
 not  to.  The  echo is most often turned on and off by setting a flag in memory.
 The address of this flag should be supplied in answer to this question. The flag
 may  be  called  a  half/full  duplex  flag,  an echo control flag, or some such
 designation depending upon your system monitor or DOS.


 ECHO ON CHARACTER              (HH) - (SSB and FLEX)

 The two-digit hex byte supplied in answer to this question is the  byte,  which,
 when  placed in the ECHO CONTROL ADDRESS, will enable the echo'ing of characters
 from the keyboard to the screen. This question is only asked for type  5  and  6
 keyboards.


 ECHO OFF CHARACTER             (HH) - (SSB and FLEX)

 The  two-digit  hex byte supplied in answer to this question is the byte, which,
 when placed in the ECHO CONTROL ADDRESS, will disable the echo'ing of characters
 from  the  keyboard  to the screen. This question is only asked for type 5 and 6
 keyboards.


 KEYBOARD DELAY CONSTANT        (HH) -

 The two-digit hex byte supplied  in  answer  to  this  question  is  used  in  a
 time-delay  loop  within  SCREDITOR  III  to decode keys which generate multiple
 codes (function keys). A description of the decoding  method  will  clarify  the
 question.

 Whenever a control character is received from the keyboard, a special routine is
 called which will continuously  check  for  another  character  for  about  four
 milliseconds.  If  another  character  is  received within that time, it will be
 accumulated. This action goes on until no character is received within the  four
 milliseconds,  or  five  characters have been received. Once the accumulation is
 complete, the character or characters received will be used en-mass as a  single
 entry.  If  a  matching  entry  exists  in the table which KEYGEN creates and is
 loaded on startup, the position in the table is  used  as  the  actual  internal
 OPERATOR  code.  For instance, if the characters 1B,41,0D were received, and the
 ninth position in the KEYGEN table contained these three characters, the  result
 would  be a value of eight (ninth value, base zero), which is used internally in
 SCREDITOR III as a DESTRUCTIVE BACKSPACE.


 Two factors will determine your answer to this question. First,  the  timing  is
 done is software; therefore, the number entered will be dependent upon the clock
 speed in your system. If you are running a one mHz clock, the number must be one
 half  the  value  needed  to  provide the same timing length as a system using a
 two-mHz clock.

 Second,  if  you  are not planning on using any function keys, the value entered
 should be 1, the minimum value possible. This will minimize the  possibility  of
 two  sequential  keystrokes  being interpreted as a part of a character sequence
 from a single key. If, on the other hand, you will be using function  keys,  the
 value should be as small as possible and still decode the keys properly.

 For  one  mHz  systems using function keys, a value of 20 to 30 should be a good
 starting point. For two mHz systems, a value of 40 to 50 should  be  acceptable.
 If,  once  you  have SCREDITOR III running, you find that your function keys are
 inoperative or intermittent, increase the value by re-running KEYGEN. If, on the
 other hand, the function keys work when hit one at a time, but errors occur when
 you use them repeatedly (with a repeating key), decrease the value.


SECTION TWO QUESTIONS

 The  following  is  a complete listing of the prompts which will be presented by
 the second section of the KEYGEN operation. As stated previously, you will  type
 the actual key which you are going to use for each of the functions listed.

 If you desire to re-start the questions, type the letter C. If you want to abort
 KEYGEN while answering these questions, type the letter Q.

                          CURSOR LEFT -
                       MELD PARAGRAPH -
                 SCROLL SCREEN UPWARD -
                DELETE TO END OF LINE -
                INSERT CHARACTER MODE -
                         INSERT SPACE -
                    GO TO MARKED LINE -
                DESTRUCTIVE BACKSPACE -
                     TAB CURSOR RIGHT -
                      ACTIVATE SYMBOL -
                      SPLIT PARAGRAPH -
                 PAGE SCREEN DOWNWARD -
                             NEW LINE -
                   PAGE SCREEN UPWARD -
                        SET/CLEAR TAB -
                          DELETE LINE -
                        TAB TO MARGIN -
               SCROLL SCREEN DOWNWARD -
                         CURSOR RIGHT -
                CONVERT TO UPPER CASE -
                     INSERT LINE MODE -
                CONVERT TO LOWER CASE -
                            CURSOR UP -
                     DELETE CHARACTER -
                          DELETE WORD -
                          CURSOR DOWN -
          ESCAPE (ENTER COMMAND MODE) -
                     TAB TO NEXT WORD -
                   TAB TO END OF LINE -
                             TAB LEFT -
                 TAB TO PREVIOUS WORD -


 This completes the question descriptions. As  indicated  previously,  after  the
 last  question is asked, the information you entered will be saved to the KEYGEN
 data file and control will return to DOS.


                          THIS PAGE INTENTIONALLY BLANK
