# SINST-B

> Source: `utilities/system/INSTALL - FLEX System Utilities - Programs, Source, and Build Files.zip!INSTALL.DSK!SINST-B.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
#SCREDITOR III WORD PROCESSOR                          SYSTEM INSTALLATION MANUAL


.DHE
#SYSTEM INSTALLATION MANUAL                          SCREDITOR III WORD PROCESSOR


.DFO
.
                                    PAGE B-%%%%


.DFE
.
                                    PAGE B-%%%%


1.0  INTRODUCTION

 This addendum to the SCREDITOR III manual is  to  serve  as  documentation  when
 using SCREDITOR III in conjunction with any WINDRUSH system that does not use an
 MC6850 for serial communication. Specifically this section is  to  document  the
 method  of accomodating the requirements of 'CONGEN' and 'KEYGEN' in conjunction
 with the Windrush EURO-3X and EURO-6X systems which use a Rockwell R6551 ACIA.


1.1  BETWEEN A ROCK AND A HARD PLACE

 When you run CONGEN it will ask for a screen type. If you specify  type  '1'  it
 will  assume  that you want to output through an MC6850. If you specify type '2'
 it will ask for an address for the 'SCREEN  INIT'  routine  which  will  not  be
 available!

 To  make the problem even more obnoxious when you run KEYGEN it will ask you for
 a keyboard type. If you answer type '1' or  type  '2'  it  will  once  again  be
 snookered because it will assume that an MC6850 is being used.

 The  way  to overcome all of these problems is to specify a type '2' screen type
 and a type '5' keyboard type. If you do this you must supply addresses  of  four
 external routines as follows:

 1. SCREEN INITIALIZATION (INIT)
 2. SCREEN OUTPUT (OUTCH)
 3. KEYBOARD CHECK (STAT)
 4. GET CHARACTER FROM KEYBOARD (INCHNE)
 5. SYSTEM EXIT VECTOR (MONITOR)

 This  is  not as bad as it sounds as all Windrush versions of FLEX have built-in
 facilities to implement I/O calls through FLEX. Since FLEX itself must always be
 configured to match the I/O hardware it is working with it stands to reason that
 going through FLEX I/O routines will yield a universal program that will run  on
 all  systems.  This  is true providing that FLEX has the INCHNE (input character
 never echo) vector at $D3E5 implemented correctly AND  your  terminal  does  not
 generate  'meta'  codes  (codes with the most significant bit set). All Windrush
 systems, Smoke Signal Systems and all GIMIX DMA controller  based  systems  have
 this vector implemented correctly. Some systems, notably the older SWTP systems,
 do not have this vector implemented at all.

 What follows are listings of three programs that you  can  add  to  the  end  of
 SCREDITOR  III  which  will  enable  you  to  use it with virtually any hardware
 configuration. The first is preferred as it will be universal. Use the first one
 if  you  have  any Windrush system that uses Windrush FLEX. You can also use the
 first one if you have an SSB based  system  or  a  GIMIX  DMA  controller  based
 system.

 If your version of FLEX does not have the INCHNE vector at $D3E5 implemented but
 you  have  an  'SBUG-E'  compatible system monitor that has the following vector
 table at $F800 you can use the second program:

 $F800   RESET
 $F802   CONTRL
 $F804   INCHNE
 $F806   INCHAE
 $F808   INCHECK
 $F80A   OUTCH
  ....   ETC

1.1  BETWEEN A ROCK AND A HARD PLACE  (continued)

 Add  this code to the tail end of SCREDITOR III if you want to vector all of the
 SCREDITOR I/O through your FLEX  vector/jump  tables.  We  normally  supply  the
 SCREDITOR  'ED3.CMD'  with  this  patch  already appended to it as it suits most
 systems. The modified file is named 'WMS-ED3.CMD'.


                             1          NAM   SCREDITOR III FLEX I/O DRIVERS  V:1.20D
                             2
                             3 **************************************************
                             4 * THIS IS A GENERAL PURPOSE BINARY OVERLAY FOR   *
                             5 * SCREDITOR III WHICH WILL ALLOW YOU TO RE-AIM   *
                             6 * ITS I/O DRIVERS THROUGH VECTOR TABLES.  THIS   *
                             7 * IS NECESSARY BECAUSE 'CONGEN' AND 'KEYGEN'     *
                             8 * EXPECT TO BE GIVEN THE ENTRY POINT OF THE      *
                             9 * ROUTINES.                                      *
                            10 **************************************************
                            11 *
0573                        12 COLD     EQU   $0573     COLD START SCREDITOR III
58D0                        13 ENDSCR   EQU   $58D0     TAIL END OF SCREDITOR III
                            14
58D0                        15          ORG   ENDSCR
                            16
                            17
                            18 **************
                            19 * JUMP TABLE *
                            20 **************
                            21 *
58D0   7E 58DF              22          JMP   INIT
58D3   7E 58E0              23          JMP   STAT
58D6   7E 58E3              24          JMP   INCHNE
58D9   7E 58E7              25          JMP   OUTCH
58DC   7E 58EA              26          JMP   MONITR
                            27
                            28
                            29 *************************************************
                            30 * THIS SET OF DRIVES USES THE FLEX CONSOLE I/O  *
                            31 * ROUTINES.  ONLY USE THEM IF YOUR VERSION OF   *
                            32 * FLEX HAS THE 'INCHNE' VECTOR AT $D3E5.        *
                            33 *                                               *
                            34 * THESE ROUTINES CANNOT BE USED IF THE TERMINAL *
                            35 * USED GENERATES 'META' CODES BECAUSE THE FLEX  *
                            36 * 'INCHNE' ROUTINE STRIPS PARITY.               *
                            37 *************************************************
                            38 *
58DF   39                   39 INIT     RTS
58E0   7E CD4E              40 STAT     JMP   $CD4E     FLEX 'STAT' JUMP
58E3   6E 9F D3E5           41 INCHNE   JMP   [$D3E5]   FLEX 'INCHNE' VECTOR
58E7   7E CD0F              42 OUTCH    JMP   $CD0F     FLEX 'OUTCH' JUMP
58EA   6E 9F D3F3           43 MONITR   JMP   [$D3F3]   FLEX 'MONITR' VECTOR
                            44
                            45
58ED                        46 ENDCODE  EQU   *-1
                            47
0573                        48          END   COLD


1.1  BETWEEN A ROCK AND A HARD PLACE  (continued)

 Add this code to the tail end of SCREDITOR III if you want to vector all of  the
 SCREDITOR I/O through your SBUG-E compatible system monitor vector table.

                             1          NAM   SCREDITOR III MONITOR I/O DRIVERS  V:1.20D
                             2
                             3 **************************************************
                             4 * THIS IS A GENERAL PURPOSE BINARY OVERLAY FOR   *
                             5 * SCREDITOR III WHICH WILL ALLOW YOU TO RE-AIM   *
                             6 * ITS I/O DRIVERS THROUGH VECTOR TABLES.  THIS   *
                             7 * IS NECESSARY BECAUSE 'CONGEN' AND 'KEYGEN'     *
                             8 * EXPECT TO BE GIVEN THE ENTRY POINT OF THE      *
                             9 * ROUTINES.                                      *
                            10 **************************************************
                            11 *
0573                        12 COLD     EQU   $0573     COLD START SCREDITOR III
58D0                        13 ENDSCR   EQU   $58D0     TAIL END OF SCREDITOR III
                            14
58D0                        15          ORG   ENDSCR
                            16
                            17
                            18 **************
                            19 * JUMP TABLE *
                            20 **************
                            21 *
58D0   7E 58DF              22          JMP   INIT
58D3   7E 58E0              23          JMP   STAT
58D6   7E 58E4              24          JMP   INCHNE
58D9   7E 58E8              25          JMP   OUTCH
58DC   7E 58EC              26          JMP   MONITR
                            27
                            28
                            29 *************************************************
                            30 * THIS SET OF DRIVERS USES THE SYSTEM MONITOR   *
                            31 * VECTORS AVAILABLE IN WINDRUSH, GIMIX, SWTP    *
                            32 * AND SSB SYSTEM MONITORS.  THESE SHOULD ONLY   *
                            33 * BE USED AS A LAST RESORT AS THEY WILL MAKE    *
                            34 * THE RESULTANT COPY OF SCREDITOR III SYSTEM    *
                            35 * DEPENDANT.                                    *
                            36 *                                               *
                            37 * AS MOST MONITORS STRIP THE PARITY BIT FROM    *
                            38 * THE INCOMING DATA THESE DRIVERS SHOULD NOT BE *
                            39 * USED IF YOUR TERMINAL GENERATES 'META' CODES. *
                            40 *************************************************
                            41
58DF   39                   42 INIT     RTS
58E0   6E 9F F808           43 STAT     JMP   [$F808]   INCHECK
58E4   6E 9F F804           44 INCHNE   JMP   [$F804]   INCHNE
58E8   6E 9F F80A           45 OUTCH    JMP   [$F80A]   OUTCH
58EC   6E 9F F802           46 MONITR   JMP   [$F802]   CONTRL
                            47
                            48
58EF                        49 ENDCODE  EQU   *-1
                            50
0573                        51          END   COLD


1.1  BETWEEN A ROCK AND A HARD PLACE  (continued)

 Add this code to the tail end of SCREDITOR III if your terminal generates 'meta'
 codes.  The equate for 'IO.PORT' should be set to the address of your I/O device
 data port. Reading the data port must clear the 'pending character' flag of  the
 I/O device control port. The address held in $58E8/9 is the only  location  that
 needs  to  be  altered  if  your  I/O device is in a different place ... hence a
 simple binary patch is all that is necessary to modify this routine.

                             1          NAM   SCREDITOR III META DRIVERS  V:1.20D
                             2
                             3 **************************************************
                             4 * THIS IS A GENERAL PURPOSE BINARY OVERLAY FOR   *
                             5 * SCREDITOR III WHICH WILL ALLOW YOU TO RE-AIM   *
                             6 * ITS I/O DRIVERS THROUGH VECTOR TABLES.  THIS   *
                             7 * IS NECESSARY BECAUSE 'CONGEN' AND 'KEYGEN'     *
                             8 * EXPECT TO BE GIVEN THE ENTRY POINT OF THE      *
                             9 * ROUTINES.                                      *
                            10 **************************************************
                            11 *
0573                        12 COLD     EQU   $0573     COLD START SCREDITOR II
58D0                        13 ENDSCR   EQU   $58D0     TAIL END OF SCREDITOR I
                            14
E300                        15 IO.PORT  EQU   $E300     R6551 ON 3U-CPU1
                            16 *IO.PORT EQU $E3E0 R6551 ON 6U-CPU/MEM1
                            17 *IO.PORT EQU $E004+1 MC6850 S30 PORT 0, SIDE B
                            18
58D0                        19          ORG   ENDSCR
                            20
                            21
                            22 **************
                            23 * JUMP TABLE *
                            24 **************
                            25 *
58D0   7E 58DF              26          JMP   INIT
58D3   7E 58E0              27          JMP   STAT
58D6   7E 58E3              28          JMP   INCHNE
58D9   7E 58EB              29          JMP   OUTCH
58DC   7E 58EE              30          JMP   MONITOR
                            31
                            32
                            33 *************************************************
                            34 * THIS SET OF DRIVES USES THE  CONSOLE I/O      *
                            35 * ROUTINES.                                     *
                            36 *                                               *
                            37 * SINCE THIS SET OF DRIVERS READS THE ACIA      *
                            38 * DIRECTLY THE 'META' CODES WILL BE PRESERVED.  *
                            39 *************************************************
                            40 *
58DF   39                   41 INIT     RTS
58E0   7E CD4E              42 STAT     JMP   $CD4E     FLEX 'STAT'
58E3   8D FB      (58E0)    43 INCHNE   BSR   STAT
58E5   27 FC      (58E3)    44          BEQ   INCHNE    LOOP UNTIL KEY HIT
58E7   B6 E300              45          LDA   IO.PORT   READ I/O DEVICE DIRECTL
58EA   39                   46          RTS
58EB   7E CD0F              47 OUTCH    JMP   $CD0F     FLEX 'OUTCH'
58EE   6E 9F D3F3           48 MONITOR  JMP   [$D3F3]   FLEX 'MONITR' VECTOR
                            49
58F1                        50 ENDCODE  EQU   *-1
                            51
0573                        52          END   COLD
1.1  BETWEEN A ROCK AND A HARD PLACE  (continued)

 If your system cannot match any of these requirements you will have  to  develop
 your  own  routines  to  provide  the  functions required. The only one that you
 should have to implement is the 'INCHNE' routine (input  a  character  from  the
 keyboard  but  don't  echo  it  to the system console) as all other routines are
 available through virtually every version of FLEX that we know of.

 The reason we have used an intermediate 'JUMP' table is so that you only have to
 run  'CONGEN'  and  'KEYGEN' once. If you don't get the results expected all you
 have to do is fix the patch to SCREDITOR III.


1.2  PATCHING SCREDITOR III

 If your system requires the first patch, relax as we supply 'ED3.CMD' with  this
 patch  already  appended to it as 'WMS-ED3.CMD'. If you require one of the other
 patches it is a fairly trivial task to add them to ED3.CMD if you  are  familiar
 with machine code, FLEX and the 'GET' and 'SAVE' utilities. Alternatively if you
 are an assembly language programmer at heart you can prepare  and  assemble  the
 source file and use the FLEX 'APPEND' utility to add the patch to SCREDITOR III.
 The section below will outline both techniques.


APPROACH 1

 Use the FLEX resident 'GET' command to load the core of SCREDITOR III:

    +++GET,1.ED3.CMD<RETURN>

 Now  use  your  system  monitor to enter the code for the appropriate patch (the
 first is preferred) directly into RAM between $58D0 and $58XX.


 Next return to FLEX and type:

    +++SAVE,1.NEW-ED3.CMD,0573,58FF,0573

 You have just created a new version of SCREDITOR III that  will  enable  you  to
 answer  the  'CONGEN'  and  'KEYGEN'  questions  as  described  in the following
 sections.


APPROACH 2

 Use  your  favorite text editor or 'MACE' to prepare a source file with the text
 for either of the two patches (the first is preferred). DON'T leave out the 'END
 COLD'  statement  at  the  end  of  the  listing or the object file won't have a
 transfer address. Save the source file for use later. Assemble the  source  file
 into  an  object file called 'ED3-XXXX.BIN', with 'XXXX' being 'FOLY', 'MOLY' or
 'META' for the FLEX, MONITOR and META KEY versions respectively.

 Now use the APPEND command thus:

    +++APPEND,1.ED3.CMD,1.ED3-XXXX.BIN,1.NEW-ED3.CMD<RETURN>

 You have just created a new version of SCREDITOR III that  will  enable  you  to
 answer  the  'CONGEN'  and  'KEYGEN'  questions  as  described  in the following
 sections.

2.0 CONGEN

 Before you run CONGEN you must load in the intermediate I/O drivers as they will
 be required by the program. The easiest way of doing this is by typing:

    +++GET,1.NEW-ED3.CMD<RETURN>


 When running CONGEN the following responses should be given to the questions:

 START OF BUFFER MEMORY         (HHHH) - 5900<CR>  (end of patch)
 END OF BUFFER MEMORY           (HHHH) - 0000<CR>  (let it use 'MEMEND')
 SYSTEM EXIT VECTOR             (HHHH) - 58DC<CR>  (through patch)
 SCREEN TYPE                     (1-2) - 2<CR>
 SCREEN DRIVERS COMPATIBLE    (Y OR N) - Y<CR>
 ADDRESS OF SCREEN OUTPUT       (HHHH) - 58D9<CR>  (through patch)
 ADDRESS OF SCREEN INIT         (HHHH) - 58D0<CR>  (through patch)

 Since  you  have specified screen type two you no longer get the option of using
 the standard terminal defaults (drat!). You must now supply answers to  each  of
 the following prompts. The answers to the prompts are determined by the terminal
 you are using and the information will generally be provided in the users manual
 for your terminal.

 The responses shown below are for the VISA-30 terminals which we supply.

 TERMINAL USE X-0N/X-OFF      (Y OR N) - N<CR>
 NUMBER OF ROWS PER SCREEN       (DDD) - 24<CR>
 NUMBER OF COLUMNS PER SCREEN     (DD) - 80<CR>
 CURSOR POSITION TYPE            (1-4) - 4<CR>
 CURSOR POSITION STRING    (1-7 BYTES) - 1B,11
 NUMBER OF NULLS NEEDED          (DDD) - 4<CR>      see note
 CURSOR ROW BIAS                  (HH) - 00<CR>
 CURSOR COLUMN BIAS               (HH) - 00<CR>
 INSERT LINE OK?              (Y OR N) - N<CR>
 DELETE LINE SUPPORTED?       (Y OR N) - N<CR>     (it can but don't use it)
 CLEAR TO END OF LINE OK?     (Y OR N) - Y<CR>
 CLEAR TO EOL STRING       (1-7 BYTES) - 1B,0F<CR>
 NUMBER OF NULLS NEEDED          (DDD) - 10<CR>     see note

 TERMINAL NEW LINE         (1-7 BYTES) - 0D,0A<CR>
 NUMBER OF NULLS NEEDED          (DDD) - 12<CR>     see note
 RING TERMINAL BELL        (1-7 BYTES) - 07<CR>
 NUMBER OF NULLS NEEDED          (DDD) - 0<CR>      see note
 COMMAND SEPARATOR (EOL)           (C) - ;<CR>
 START-UP COMMAND LINE          (LINE) - RM#77;TE;JMA;PA;PS;CT#1*<CR>
 RETURN COMMAND LINE            (LINE) - <CR>


 NOTE: At  transmission  rates  in excess of 9600 baud it may be necessary to pad
       the special functions with 10 to 20 nulls. If in doubt try 0 initially. If
       the  terminal  behaves  erratically  run CONGEN again and try 100. If this
       works keep running CONGEN and reducing the number until you get  a  number
       that starts to yield erratic results again then increase the number by 5.

 NOTE: The startup command line is largely determined by your day to day  use  of
       SCREDITOR  III and may be set to anything you wish. The command line shown
       sets the right margin at column 77 (RM#77), turns on the TEXT  mode  (TE),
       turns  on  the  justify all mode (JMA), turns on the page boundary markers
       (PA), turns on the printer post page pause (PS), and clears all tabs.

3.0 KEYGEN

 Before you run KEYGEN you must load in the intermediate I/O drivers as they will
 be required by the program.  The easiest way of doing this is by typing:

    +++GET,1.NEW-ED3.CMD<RETURN>


 When running KEYGEN the following responses should be given to the questions:

 KEYBOARD TYPE                   (1-6) - 5<CR>
 KEYBOARD USE META KEYS       (Y OR N) - N<CR>
 ADDRESS OF KEYBOARD CHECK      (HHHH) - 58D3<CR>  (through patch)
 ADDRESS OF GET CHARACTER       (HHHH) - 58D6<CR>  (through patch)
 MUST ECHO BE CONTROLLED      (Y OR N) - N<CR>
 KEYBOARD DELAY CONSTANT          (HH) - 02<CR>

 The following are suggested as initial key assignments. Don't worry if you don't
 understand  the  function of these keys at this stage. They will be explained in
 complete detail in the training manual. These assignments may be changed at will
 to  suit  the  ergonomics  of  your  particular  keyboard  or  your own personal
 preferences by simply running KEYGEN over again whenever you choose to do so.


 (^CL)             CURSOR LEFT - 01   (CONTROL A)   *
 (^MP)          MELD PARAGRAPH - 0F   (CONTROL O)
 (^SU)    SCROLL SCREEN UPWARD - 15   (CONTROL U)   (up)
 (^DM)        DELETE TO MARGIN - 05   (CONTROL E)
 (^IC)   INSERT CHARACTER MODE - 03   (CONTROL C)   (char)
 (^IS)            INSERT SPACE - 09   (CONTROL I)   (insert)
 (^GM)       GO TO MARKED LINE - 07   (CONTROL G)   (go)
 (^BS)   DESTRUCTIVE BACKSPACE - 08   (CONTROL H)   (back-space key)
 (^TR)               TAB RIGHT - 12   (CONTROL R)   (right)
 (^AS)         ACTIVATE SYMBOL - 1F   (CONTROL _)   (underscore key)
 (^SP)         SPLIT PARAGRAPH - 16   (CONTROL V)   (wedge shape)
 (^PD)           PAGE DOWNWARD - 02   (CONTROL B)   (backward)
 (^NL)                NEW LINE - 0D   (CONTROL M)   (return key)
 (^PU)             PAGE UPWARD - 06   (CONTROL F)   (forward)
 (^TS)           TAB SET/CLEAR - 1D   (CONTROL ])
 (^DL)             DELETE LINE - 18   (CONTROL X)   (traditional line cancel)
 (^TM)    TAB CURSOR TO MARGIN - 14   (CONTROL T)   (tab between margins)
 (^SD)  SCROLL SCREEN DOWNWARD - 04   (CONTROL D)   (down)
 (^CR)            CURSOR RIGHT - 13   (CONTROL S)   *
 (^UC)   CONVERT TO UPPER CASE - 19   (CONTROL Y)
 (^IL)        INSERT LINE MODE - 1E   (CONTROL ^)
 (^LC)   CONVERT TO LOWER CASE - 0A   (CONTROL J)
 (^CU)               CURSOR UP - 17   (CONTROL W)   *
 (^DC)        DELETE CHARACTER - 0B   (CONTROL K)   (kill)
 (^DW)             DELETE WORD - 11   (CONTROL Q)
 (^CD)             CURSOR DOWN - 1A   (CONTROL Z)   *
 (^ES) ESCAPE (ENTER COMMANDS) - 1B   (CONTROL [)   (escape key)
 (^TN)        TAB TO NEXT WORD - 0E   (CONTROL N)   (next)
 (^TE)     MOVE TO END OF LINE - 1C   (CONTROL \)
 (^TL)                TAB LEFT - 0C   (CONTROL L)   (left)
 (^TP)    TAB TO PREVIOUS WORD - 10   (CONTROL P)   (previous)


 * THESE KEYS ARE ARRANGED IN AN ERGONOMIC CLUSTER.


4.0 PRTGEN

 The following responses should be given to form a 'RAW' printer driver that will
 be compatible with most printers. It should be noted  that  this  file  must  be
 present  and configured as indicated below before you may direct SCREDITOR III's
 output to a disk file. This is because even when directing output to a disk file
 the output is processed by the resident printer driver!

 The responses below assume that one of the standard 'FLEX' printer drivers  that
 reside  in  the $CCC0 - $CCF7 area will be loaded (using 'GET') before SCREDITOR
 III is called.


 PRINTER OUTPUT ADDX            (HHHH) - CCE4
 PRINTER INIT ADDX              (HHHH) - CCC0
 PRINTER TOP MARGIN              (DDD) - 0
 PRINTER LEFT MARGIN             (DDD) - 0
 PRINTER BOTTOM MARGIN           (DDD) - 0
 PRINTER PAGE LENGTH             (DDD) - 66
 PRINTER SUPPORT LOWER CASE?  (Y OR N) - Y
 NULLS AFTER CR-LF               (DDD) - 0


 (******)        PRINTER START-UP - <CR>
 (CODE 1)    START FULL UNDERLINE - <CR>
 (CODE 2)      END FULL UNDERLINE - <CR>
 (CODE 3)          START BOLDFACE - <CR>
 (CODE 4)            END BOLDFACE - <CR>
 (CODE 5)      START DOUBLE WIDTH - <CR>
 (CODE 6)        END DOUBLE WIDTH - <CR>
 (CODE 7)           OPERATOR STOP - <CR>
 (******)       PRINTER BACKSPACE - 08<CR>  (only if it can!)

 ****** CODE 9 IS NOT DEFINED ******

 (CODE 10) START BROKEN UNDERLINE - <CR>
 (CODE 11)   END BROKEN UNDERLINE - <CR>

 ****** CODE 12 IS NOT DEFINED *****

 (*******)       PRINTER NEW LINE - 0D,0A<CR>
 (CODE 14)         START GRAPHICS - <CR>
 (CODE 15)           END GRAPHICS - <CR>
 (*******)          START-OF-FORM - <CR>
 (*******)            END-OF-FORM - <CR>
 (CODE 18)          USER FUNCTION - <CR>
 (CODE 19)          USER FUNCTION - <CR>
 (CODE 20)          USER FUNCTION - <CR>
 (CODE 21)          USER FUNCTION - <CR>
 (CODE 22)          USER FUNCTION - <CR>
 (CODE 23)          USER FUNCTION - <CR>
 (CODE 24)          USER FUNCTION - <CR>
 (CODE 25)          USER FUNCTION - <CR>

 ****** CODE 26 IS NOT DEFINED *****

 (CODE 27)          USER FUNCTION - <CR>
 (CODE 28)          USER FUNCTION - <CR>
 (CODE 29)          USER FUNCTION - <CR>
 (CODE 30)          USER FUNCTION - <CR>
 (CODE 31)          USER FUNCTION - <CR>
5.0  DON'T GIVE UP

 If the preceeding sections have left you wondering why you bought this piece  of
 software  don't  give  up  ...  call us as we might be able to save you hours of
 frustration.

 If  you are not an assembly language programmer and/or are not familiar with the
 ritual of patching object files we  will  configure  the  package  for  you  for
 twenty five pounds plus postage.

 If you wish to use this service forward a copy of  the  users  manual  for  your
 terminal  and  a  description  of  your  system  hardware. We will configure the
 software as best we can with the information given. If problems develop the only
 way  we  can  guarantee  results  (if they are possible) is for you to ship your
 terminal to us at your  expense  and  guarantee  its  return  shipment  at  your
 expense.


6.0  HOW TO FIND OUT IF YOUR VERSION OF FLEX HAS 'INCHNE'

 If you wish to find out if your version of FLEX has the INCHNE vector  at  $D3E5
 implemented  try  entering  the following short program in RAM using your system
 monitor:

 C000  AD
 C001  9F
 C002  D3
 C003  E5   (JSR [$D3E5] ... FLEX 'INCHNE')
 C004  BD
 C005  CD
 C006  0F   (JSR $CD0F ... FLEX 'OUTCH')
 C007  7E
 C008  C0
 C009  00   (JMP $C000 ... LOOP BACK TO START)


 Open both disk drive doors and execute a JUMP to $C000.

 Yur  terminal  should  now  behave like a 'typewriter', i.e. everything that you
 type on your keyboard should appear on the screen.

 If you get each key on the screen twice 'INCHNE' is not  implemented  correctly.
 If the system does nothing or crashes 'INCHNE' is probably not implemented.

 One last point about INCHNE is that  it  is  expected  to  strip  out  the  most
 significant  bit,  sometimes  called  the parity bit. If this bit is not cleared
 some very strange things will happen when you start typing in SCREDITOR.


NOW YOU KNOW!


                        (THIS PAGE IS INTENTIONALLY BLANK)
