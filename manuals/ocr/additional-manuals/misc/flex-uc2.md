# FLEX-UC2

> Source: `manuals/misc/ENH_MANL - FLEX Software Archive - Manual and Documentation Archive - Includes FLEX-AIX, FLEX-UC1, FLEX-UC2.zip!ENH_MANL.DSK!FLEX-UC2.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
#                            FLEX UTILITY COMMAND SET


.DHE
#                            FLEX UTILITY COMMAND SET


.DFO
.
                                    PAGE %%%%


.DFE
.
                                    PAGE %%%%


                                  * * PDEL * *


 The Windrush PDEL utility is a prompting deletion utility that would normally be
 used in preference to the ZAP utility. As the name implies, the deletion  action
 is prompted giving the option to leave the file intact.


DESCRIPTION

 The syntax for the PDEL utility is:

    PDEL[,<drives>][,<matchlist>]

 <drives>       is: <drive #>[,<drives>] where  <drive  #>  is  a  valid  on-line
                drive,

 <matchlist>    is:  <match>[,<matchlist>]  where  <match>  is  either  (or both)
                part(s) (or all) of a filename or extension.

 Omission of <drives> defaults to the defined work drive which in  turn  defaults
 to  each  drive  on  the  system  if  ALL  is defined. Omission of a <matchlist>
 defaults to all directory entries.

 Having typed a command line, each file that matches the <matchlist>  is  printed
 as  a "Copy" option. No further prompting is made soBE SURE WHEN YOU TYPE A 'Y'
 otherwise the file will be deleted. Any key other than ^C  (control-C)  will  be
 taken as a no and the next file will be offered for deletion.


 NOTE:    If ^C is typed at any time, a clean return to FLEX will be affected.


 Some examples of PDEL follow:

    +++PDEL

 This  will  cause all files on the work drive to be offered for deletion. If the
 work drive is defined as ALL then each on-line drive will be selected in turn.

    +++PDEL,1

 This will offer all files on drive #1 to be offered for deletion.

    +++PDEL,2,P

 This will offer all files that are found on drive #2 and start with a  P  to  be
 offered for deletion.

    +++PDEL,1,.SYS

 This  will  offer all files that have a .SYS extension on drive #1 to be offered
 for deletion.

    +++PDEL,3,2,TE.BAS,.BAC

 This will offer for deletion those files that start with  TE  and  have  a  .BAS
 extension,  followed  by  those files that have a .BAC extension on drive #3 and
 then drive #2


                              * * PPRINT-X.SYS * *


 These are the Windrush supplied parallel printer drivers.


DESCRIPTION

 The command syntax required to load a printer driver is:

    GET,0.PPRINT-X.SYS <CR>

 assuming that the printer driver resides on drive #0 as is the convention.


 All parallel printer drivers supplied by Windrush are designed to  operate  with
 Centronics  parallel  interfaces  that  use 'strobe - acknowledge' data transfer
 handshaking. This method of data transfer has the following basic sequence:

 a) The data to be output is placed on the 8 data lines.

 b) The STROBE line is pulsed low and  then  returns  high  ...  this  tells  the
    printer that the data is ready to be read.

 c) When  the  printer  has received the data and is ready to accept more it will
    pulse the ACKNOWLEDGE line low and then return it high.


 Thus  this parallel protocol expects to receive an acknowlege pulse for each and
 every byte transmitted. Printers that employ READY/BUSY handshaking MAY  operate
 properly  with  the  standard printer drivers if the BUSY line at the printer is
 connected to the ACKNOWLEDGE input of the computer. This is  only  because  most
 printers  that  use  this  method  cause  the BUSY line to 'go busy' each time a
 character is received and then 'go ready' after a short delay.


 The 'X' in 'PPRINT-X.SYS' is our method of catering to various parallel  printer
 ports thus:

 1. PPRINT-M.ASM      This  is  the  assembly  language  source  of  our standard
                      Motorola MC6821 PIA driver.

 2. PPRINT-R.ASM      This is  the  assembly  language  source  of  our  standard
                      Rockwell R6522 VIA driver.

 3. PPRINT-C.SYS      This  is  a  configured printer driver for the R6522 VIA on
                      our 3U-CPU1 board.

 4. PPRINT-T.SYS      This is a configured printer driver for the  R6522  VIA  on
                      our 3U-TIM2 board.

 5. PPRINT-1.SYS      This  is a configured printer driver for the 'PORT 1' R6522
                      VIA on our 6U-SPIO board.

 6. PPRINT-2.SYS      This  is a configured printer driver for the 'PORT 2' R6522
                      VIA on our 6U-SPIO board.


 NOTE: The  source  files  (.ASM  extension) are only present on the unconfigured
       disc.

                              * * PPRINT-X.SYS * *


                             1 *************************************************
                             2 * PARALLEL PRINTER DRIVER THROUGH AN MC6821 PIA *
                             3 *************************************************
                             4
E042                         5 PIA      EQU   $E042     PIA ADDRESS (USE 'B' SIDE)
                             6
                             7 **************************
                             8 * PRINTER INITIALIZATION *
                             9 **************************
                            10 *
CCC0                        11          ORG   $CCC0     MUST RESIDE AT $CCC0
                            12
CCC0   86 3A                13 PINIT    LDA   #$3A      SELECT DATA DIRECTION
CCC2   B7 E043              14          STA   PIA+1     BY WRITING 0 IN DDR CTL
CCC5   86 FF                15          LDA   #$FF      SELECT ALL OUTPUT LINE
CCC7   B7 E042              16          STA   PIA       PUT IN DATA DIRECTION
CCCA   86 3E                17          LDA   #$3E      SET UP FOR TRANSITION
CCCC   B7 E043              18          STA   PIA+1     AND ENABLE OUTPUT REG
CCCF   39                   19          RTS
                            20
                            21 * PRINTER READY ROUTINE
                            22 *
CCD0   7D E042              23 PREADY   TST   PIA       RESET PIA READY INDICATION
CCD3   73 CCE3              24          COM   PFLAG     SET THE PRINTER READY
CCD6   39                   25          RTS
                            26
                            27
                            28 ***************************
                            29 * CHECK FOR PRINTER READY *
                            30 ***************************
                            31 *
CCD8                        32          ORG   $CCD8     MUST RESIDE AT $CCD8
                            33
CCD8   7D CCE3              34 PCHK     TST   PFLAG     TEST FOR PRINTER READY
CCDB   2B 05      (CCE2)    35          BMI   PCHKX     IF NEGATIVE, PRINTER READY
CCDD   7D E043              36          TST   PIA+1     CHECK FOR TRANSITION
CCE0   2B EE      (CCD0)    37          BMI   PREADY    IF MINUS, PRINTER READY
CCE2   39                   38 PCHKX    RTS
                            39
                            40 * PRINTER READY FLAG
                            41 *
CCE3 FF                     42 PFLAG    FCB   $FF        PRINTER READY FLAG
                            43
                            44 ************************************
                            45 * PRINTER OUTPUT CHARACTER ROUTINE *
                            46 ************************************
                            47 *
CCE4                        48          ORG   $CCE4     MUST RESIDE AT $CCE4
                            49
CCE4   8D F2      (CCD8)    50 POUT     BSR   PCHK      TEST FOR PRINTER READY
CCE6   2A FC      (CCE4)    51          BPL   POUT      LOOP UNTIL PRINTER READY
CCE8   7F CCE3              52          CLR   PFLAG     SET PRINTER FLAG NOT READY
CCEB   B7 E042              53          STA   PIA       SET DATA IN OUTPUT REG
CCEE   86 36                54          LDA   #$36      SET DATA READY, CB2 'LOW'
CCF0   8D 02      (CCF4)    55          BSR   POUTB     STUFF BYTE INTO THE PIA
CCF2   86 3E                56          LDA   #$3E      CB2 'HIGH'
CCF4   B7 E043              57 POUTB    STA   PIA+1
CCF7   39                   58          RTS
                              * * PPRINT-X.SYS * *


                             1 ************************************************
                             2 * PARALLEL PRINTER DRIVER THROUGH AN R6522 VIA *
                             3 ************************************************
                             4
E0E0                         5 R6522    EQU   $E0E0     R6522 ON 'TIM2'
                             6
E0E0                         7 ORB      EQU   R6522     'B' PORT
E0E2                         8 DDRB     EQU   R6522+2   'B' PORT DDR
E0EC                         9 PCR      EQU   R6522+12  PERIPHERAL CONTROL REG
E0ED                        10 IFR      EQU   R6522+13  INTERRUPT FLAG REGISTER
                            11
                            12 **************************
                            13 * INITIALIZE THE PRINTER *
                            14 **************************
                            15 *
CCC0                        16          ORG   $CCC0     MUST BE HERE!
                            17
CCC0   7F E0EC              18 PINIT    CLR   PCR
CCC3   86 FF                19          LDA   #$FF
CCC5   B7 E0E2              20          STA   DDRB      ALL OUTPUTS
CCC8   39                   21          RTS
                            22
CCC9   B6 E0ED              23 CHKIT    LDA   IFR
CCCC   84 10                24          ANDA  #$10
CCCE   27 06      (CCD6)    25          BEQ   CHKEND    NOT ACKNOWLEDGED YET
CCD0   7D E0E0              26          TST   ORB       CLEAR 'CB1' RESPONSE
CCD3   73 CCE3              27          COM   PFLAG     PRINTER IS READY
CCD6   35 82                28 CHKEND   PULS  A,PC
                            29
                            30 **************************
                            31 * CHECK IF PRINTER READY *
                            32 **************************
                            33 *
CCD8                        34          ORG   $CCD8     MUST BE HERE!
                            35
CCD8   34 02                36 PCHK     PSHS  A
CCDA   7D CCE3              37          TST   PFLAG     OK TO SEND?
CCDD   2B 02      (CCE1)    38          BMI   PCKEND    YES!
CCDF   20 E8      (CCC9)    39          BRA   CHKIT     LOOK FOR 'ACK'
CCE1   35 82                40 PCKEND   PULS  A,PC
                            41
CCE3 FF                     42 PFLAG    FCB   $FF        PRINTER READY FLAG
                            43
                            44 *********************************
                            45 * OUTPUT A CHARACTER TO PRINTER *
                            46 *********************************
                            47 *
CCE4                        48          ORG   $CCE4     MUST BE HERE!
                            49
CCE4   8D F2      (CCD8)    50 POUT     BSR   PCHK
CCE6   2A FC      (CCE4)    51          BPL   POUT      WAIT UNTIL LAST CHAR SENT
CCE8   7F CCE3              52          CLR   PFLAG     PRINTER IS NOT READY
CCEB   B7 E0E0              53          STA   ORB       SET UP DATA
CCEE   86 C0                54          LDA   #$C0      CB2 LO
CCF0   8D 02      (CCF4)    55          BSR   POUT2
CCF2   86 E0                56          LDA   #$E0      CB2 HI
CCF4   B7 E0EC              57 POUT2    STA   PCR       STROBE THE 'CB2' LINE
CCF7   39                   58          RTS
                                   * * PR * *


 The Windrush PR utility allows re-direction of output to the printer rather than
 the terminal. PR fully honours the TTYSET WD, DP and EJ parameters. PR  disables
 the  normal  TTYSET  PS  automatic  halt feature during the print operation and,
 unlike the TSC 'P' utility, also RESTORES  it  when  the  print  operation  is
 completed. However output to the printer may still be manually halted by hitting
 <ESCAPE> and restarted by <ESCAPE> or aborted by <RETURN>.


DESCRIPTION

 The syntax for the PR command is:


    PR,<command>[,<args>]


 <command>      is any system command,

 <args>         are any arguments for <command>.


 This command is most useful when used with either the CAT or DIR utilities as it
 will  produce a hard copy of the files. If PR is used in a multiple call command
 line it will only be in effect for the command that follows PR, and not  any  of
 the following ones. Some examples of the use of PR follow:


    +++PR,DIR,.ASM

 This example will re-direct the output of the DIR command to the printer using a
 match list of .ASM.


    +++PR,LIST,PROJECT.BAS:DIR,.BAS

 This example will list the BASIC source file PROJECT.BAS  to  the  printer,  and
 then  all  .BAS  files  will be displayed on the terminal as a result of the DIR
 command.


 NOTE 1:  Unlike  the TSC 'P' utility 'PR' DOES NOT attempt to load a file called
          'PRINT.SYS'. Loading of printer drivers is left to the user and  should
          be performed before calls to 'PR'.


 NOTE 2:  Refer  to  'PPRINT-X.SYS'  and  'SPRINT-X.SYS'  for  details  about the
          various printer drivers supplied by Windrush.


 NOTE 3:  Some utilities do some output to the terminal direct, and other  output
          via  the  FLEX PUTCHR routine. PR will honour all PUTCHR output but can
          not print any output that by-passes the PUTCHR routine.


                                     PRINT


 FLEX has the ability to output file stored data to a printer at  the  same  time
 that  it is performing other tasks. This feature is especially useful when it is
 necessary to print a long listing without tying up the computer. This method  of
 printing  is called PRINTER SPOOLING. In order for the printer spooling function
 to work, a programmable interrupt timer must be installed in the system. Details
 of   the   print  spooler  interrupt  timer  can  be  found  under  the  heading
 'SPOOL-XX.SYS'.


DESCRIPTION

 The general syntax of the PRINT command is as follows:

     PRINT,<file spec>[,+<repeat #>]

 where <file spec> is the name of the file to be printed. The  default  extension
 on  <file  spec>  is  .OUT. <Repeat #> is the number of additional copies of the
 file you wish to be printed.

 For example, say that your disc had a very large number of files  on  it  and  a
 printer  catalog  listing  was desired. A file containing the output information
 should first be created by using the O command such as:

     +++O,CAT.OUT,CAT.CMD    or    +++O,CAT,CAT
            (see the description of the O command)

 when printer output is desired the command

     +++PRINT,CAT.OUT    or    +++PRINT,CAT

 should be entered.

 At  this  time  the  file  CAT.OUT  is  stored  in a buffer called a print queue
 (waiting list). If another PRINT command is issued before the first is finished,
 the second file will be in the next available location in the print queue.

 After  the  file  name to be printed has been stored in the print queue, control
 will return to the FLEX operating system. At this time you may perform any  disc
 operation  you  want,  such as deleting files, copying discs, etc. While you are
 using FLEX, PRINT will be outputting the desired file to the printer. PRINT will
 automatically  wait  for  the  printer to become ready (power up) even after the
 file has been entered into the print queue.

 After printing the first file, the second file in the queue will be printed  (if
 there  is  one), etc. The print queue may be examined or modified at any time by
 using the QCHECK utilty.


                                     PRINT


 (continued)


 NOTE: There are several things that the user should be aware of when  using  the
       printer spooling:

       1)  Any  file  that  is in the print queue may not be deleted, renamed, or
           changed in any way until it has been printed or removed by the  QCHECK
           print queue manager utility.

       2)  Discs which contain the files in the print queue should not be removed
           while the files are still in the queue.

       3)  The P command should not be used while files are waiting in the  print
           queue.

       4)  Any  paper or cassette tape load or any other operation which requires
           that the computer accept data at precise time intervals should not  be
           executed during a printer spooling operation.

        5) This utility will only be present on the unconfigured disc.


                               * * PRINT.SYS * *


 This is the Windrush supplied default printer driver  which  is  usually  loaded
 during the execution of STARTUP (qv).


DESCRIPTION

    GET,0.PRINT.SYS

 assuming that PRINT.SYS is present on drive #0 as is the convention.


 'PRINT.SYS' will usually be a centronics parallel printer driver. If you want to
 replace it with another driver we suggest you use the following method:

 1. DELETE the file called PRINT.SYS

 2. Use COPY to copy the desired printer driver to 'PRINT.SYS', e.g.:

    COPY,0.SPRINT-T.SYS,0.PRINT.SYS<CR>


 We do not advise using RENAME as this is an easy way to 'lose' a printer driver.


                                 * * PRINTT * *


 The  Windrush  PRINTT  utility  is used to submit files to the Windrush Enhanced
 Print Spooler in order to allow a previously formatted text file to  be  printed
 while  the  system  can  still  be  used  to  perform normal functions. When the
 Enhanced spooler 'SPOOL.SYS' is loaded (as it is  with  the  'configured'  disc)
 this command should be used in lieu of the TSC 'PRINT' utility.


DESCRIPTION

 The syntax for PRINTT is:

    PRINTT,<filename>[,+,<no>]

 <filename>     is  the  file to be printed which defaults to a .OUT extension on
                the system drive,

 <no>           is the optional numer of additional copies required.

 When  PRINTT is invoked the file and repeats, if specified, are submitted to the
 spooler for printing. If the spooler is inactive, print will initialise  it  and
 report the fact to the terminal. Irrespective of whether the spooler was running
 or not, confirmation that the file was submitted is given along with the  number
 of repeats.

 Some examples of PRINTT follow:

    +++PRINTT,DIR

 This will submit the file DIR.OUT on the system drive to the spooler.  Only  the
 one copy will be printed.


    +++PRINTT,BACKUP.1

 This will submit BACKUP.OUT.1 to the spooler, again with no repeats.


    +++PRINTT,ARCHIVE,+,1

 This will submit the file ARCHIVE.OUT on the system drive to the spooler with an
 additional copy, i.e. a total of two copies will be provided.


    +++PRINTT,DIARY.TXT.1,+,2

 This  will  submit DIARY.TXT.1 to the spooler with two additional copies, i.e. a
 total of three copies will be produced.


                                 * * PRINTT * *


 (continued)


 NOTE 1:  As  previously  mentioned, the spooler operates on prepared files which
          actually include LFs. This allows the printable output  files  produced
          by  SCREDITOR  III,  MACE  and  PL/9  to  be  submitted directly to the
          spooler.


 NOTE 2:  The OUT (output re-direction) utility produces spooler compatible files
          directly, (qv) OUT and SETFORM commands.


 NOTE 3:  Only  standard  text  files are in the wrong format and these should be
          pre-processed by the 'F' (for Format) utility to produce a file that is
          in the correct format. 'F' includes the option to have a page title and
          number, (qv) 'F' and SETFORM commands.


 NOTE 3:  The  spooler can have up to 20 jobs in it's queue. If the queue is full
          when a PRINTT is requested, you will be informed to try later when  the
          queue has reduced.


                                   ***********
                                   * WARNING *
                                   ***********

 The  spooler determines which line is being sent to the printer in order that it
 can skip the printer to the top of a clean sheet for the next job. This is  done
 by counting the LFs sent to the printer. If you are spooling a file with printer
 control characters imbedded ensure that hex  $A  is  never  used  as  a  control
 character or only print one job at a time.

 If the later is your only course of action, check  the  paper  position  on  the
 printer  and  adjust as necessary before submitting the next job. An alternative
 would be to use the spooler management utility QCHECKK to  suspend  the  spooler
 after the file is completed, check the paper when supended, adjust if necessary,
 and then restart the spooler. If the next file is a repeat or  another  ODD-BALL
 then  put the spooler back into suspension. This is the recommended way to treat
 Word Processor output files which ARE KNOWN to possibly  contain  LF  characters
 which  ARE  NOT ACTUAL LFs. The systems engineer responsible for configuring the
 Word  Processor  to  your  installation  will  be  able  to  tell  you  if  your
 printer/Word Processor configuration will exhibit this facet.


          THIS  WARNING  WILL  ONLY  AFFECT  A  VERY SMALL PERCENTAGE OF
          INSTALLATIONS AND IS MENTIONED HERE FOR COMPLETENESS IN  ORDER
          TO  EXPLAIN  WHY  A  FEW PEOPLE MAY FIND WORD PROCESSED OUTPUT
          FILES TERMINATE WITH THE PAPER IN THE WRONG PLACE!


                                 * * PROMPT * *


 The  Windrush  PROMPT  utility provides a prompting message when FLEX is doing a
 pause in outputting to the terminal or printer. Often a system can appear 'DEAD'
 when  it  is  actually waiting for <ESCAPE> or <RETURN>. With PROMPT installed a
 great deal of confidence is provided as the system will never suddenly appear to
 have died.


DESCRIPTION

 PROMPT is invoked by:

    +++PROMPT


 It provides re-direction of output and as it has to be memory resident relocates
 itself right at the top of user memory and informs  you  of  the  new  value  of
 'MEMEND'. This limits the users memory space to approximately $0000 - $BF00.

 If for some reason all the memory must be used for a large program, such as  the
 McCosh 'C' Compiler, it is desirable to be able to remove PROMPT until it can be
 re-loaded.  This  is  achieved  by  PROMPT  again.  PROMPT will then restore all
 vectors and MEMEND to their original values and advise you that it  has  removed
 itself.

 The  recommended  way  to use PROMPT is to invoke it in the STARTUP file. If you
 try to  remove  PROMPT  when  something  else  (e.g.  SPLTITLE  (qv))  has  been
 subsequently placed below it PROMPT will advise you that MEMEND has been altered
 and refuse to remove itself.

 This is necessary because removing PROMPT will restore MEMEND  to  the  original
 value after BOOT and all protection of the code below PROMPT will be removed. In
 practice once PROMPT is installed, it is seldom removed - this is because it  is
 very useful and reassuring to have the prompt displayed.


              * * * * * * * * * * * * * * * * * * * * * * * * * * *
              *                                                   *
              *       REMEMBER PROMPT RESIDES BELOW MEMEND.       *
              *                                                   *
              * THIS MEANS THAT MEMEND WILL BE LOWER THAN NORMAL! *
              *                                                   *
              * * * * * * * * * * * * * * * * * * * * * * * * * * *


                                      PROT


 The  PROT command is used to change a protection code associated with each file.
 When a file is first saved, it has no  protection  associated  with  it  thereby
 allowing  the  user  to  write  to,  rename, or delete the file. Delete or write
 protection can be added to a file by using the PROT command.


DESCRIPTION

 The general syntax of the PROT command is:

     PROT,<file spec>[,(option list)]

 where  the  <file spec> designates the file to be protected and (option list) is
 any combination of the following options.


 D   A 'D' will delete protect a file. A delete protected file cannot be affected
     by  using the DELETE or RENAME Commands, or by the delete functions of SAVE,
     APPEND, etc.


 W   A 'W' will write protect a file. A write protected file cannot  be  deleted,
     renamed  or have any additional information written to it. Therefore a write
     protected file is automatically delete protected as well.


 C   A 'C' will Catalog protect a file. Any files with a C protection  code  will
     function as before but will not be displayed when a CAT command is issued.


 X   An 'X' will remove all protection options on a specific file.


 Examples:

     +++PROT CAT.CMD,XW   Remove any previous protection on the  CAT.CMD  utility
                          and write protect it.


     +++PROT CAT.CMD,X    Remove all protection from the CAT.CMD utility.


     +++PROT INFO.SYS,C   Prohibit  INFO.SYS  from  being  displayed in a catalog
                          listing.


                                * * PROTECT * *


 The PROTECT command is part of the WINDRUSH implementation of 'FLEX' and is used
 to alter the software write protection of any or all of the drives on a  system,
 and in any order.


DESCRIPTION

 The general syntax of the PROTECT command has two forms:

 a. PROTECT
 b. PROTECT,<drive>,=,<prot>[,<assignment>]
 c. IN,<filespec>,PROTECT

 <drive>        is a vaid drive #.

 <prot>         is either E or D for Enabled or Disabled respectively.

 <filespec>     is a valid file specification.

 <assignment>   is: <drive>,=,<prot>[,<assignment>]


 The first call is to interrogate the present protection.


 The second call is to assign protection to one or more drives, for example:

 PROTECT,0=E,1=E,2=D,3=E    ENABLES WRITE PROTECTION on drives 0,  1  and  3  and
                            disables the write protection on drive 2.

 PROTECT,3=D,1=D            DISABLES the WRITE PROTECTION on drives 3 and 1.

 PROTECT,2=E                ENABLES the WRITE PROTECTION on drive 2.


 The third call is using the 'IN' command where the information in the input file
 is in the same format as the command line call.


 NOTE:  This facility is NOT the same as the TSC 'PROT' utility which enables you
        to write protect (amongst other things) individual  'FILES'  on  a  disc.
        This utility will write (and format) protect the ENTIRE disc.


                                  * * PRT * *


 The Windrush PRT utility is part of the Windrush Enhanced Print Spooler  package
 and  allows re-direction of output to the printer rather than the terminal. This
 utility formats the output to allow a skip at the top and bottom of  a  page  in
 order  to miss the folds in fan-fold paper. Unlike PR which uses the TTYSET (qv)
 parameters PRT uses the data table maintained by SETFORM (qv).


DESCRIPTION

 The syntax for the PRT command is:


    PRT,<command>[,<args>]


 <command>      is any system command,

 <args>         are any arguments for <command>.


 This command is most useful when used with either the CAT or DIR utilities as it
 will produce a hard copy of the files. If PRT is used in a multiple call command
 line it will only be in effect for the command that follows the PRT and not  any
 of the following ones.

 The  actual  number of lines printed on a page, along with the number skipped at
 the top and bottom, are configured by using the SETFORM utility. PRT honours ALL
 the  parameters  set up using SETFORM. Automatic CR/LF sequences will occur if a
 line is too wide for the width of the printer, also hitting ESC during  printing
 will  halt  the printout, hitting ESC again will resume, while RETURN will abort
 the print and return to FLEX. Some examples of the use for PRT follow:


    +++PRT,DIR,.ASM

 This example will re-direct the output of the DIR command to the printer using a
 match list of .ASM.


    +++PRT,LIST,PROJECT.BAS:DIR,.BAS

 This  example  will  list  the BASIC source file PROJECT.BAS to the printer, and
 then all .BAS files will be displayed on the terminal as a  result  of  the  DIR
 command.


 NOTE 1:  Some  utilities do some output to the terminal direct, and other output
          via the FLEX PUTCHR routine. PRT will honour all PUTCHR output but  can
          not print any output that by-passes the PUTCHR routine.

 NOTE 2:  See  'PPRINT-X.SYS'  and  'SPRINT-X.SYS'  for  details  of  the various
          printer drivers that are available.


                                     QCHECK


 The QCHECK utility can be used to examine the contents of the print queue and to
 modify its contents. QCHECK has no additional arguments  with  it.  Simply  type
 QCHECK.  QCHECK will stop any printing that is taking place and then display the
 current contents of the print queue as follows:

     +++QCHECK
            POS       NAME      TYPE     RPT
             1        TEST.     .OUT      2
             2        CHPTR.    .OUT      0
             3        CHPTR2.   .TXT      0
        COMMAND?

 This  output says that TEST.OUT is the next file to be printed (or that it is in
 the process of being printed) and that 3 copies (1 plus a repeat of 2)  of  this
 file will be printed. After these three copies have been printed, CHPTR.OUT will
 be printed and then CHPTR2.TXT. The COMMAND? prompt means QCHECK is waiting  for
 one of the following commands:

    COMMAND       FUNCTION

 (carriage return) Re-start printing, return to the FLEX command mode.

       Q          A 'Q' command will print the queue contents again.

     R,#N,X       An 'R' command repeats the file at position #N X times. If X is
                  omitted the repeat count will be cleared. Example: R,#3,5

     D,#N         A 'D' command removes the file at queue position  #N.  If  N=1,
                  the current print job will be terminated. Example: D,#3

       T          A  'T'  command will terminate the current print job. This will
                  cause the job currently printing to quit and  printing  of  the
                  next job to start. If the current files RPT count was not zero,
                  it will print again until the repeat count is 0. To  completely
                  terminate the current job use use the D,#1 command.

     N,#N         A 'N' command will make the file at position #N the next one to
                  be printed after the current print job is finished. Typing  'Q'
                  after  this  operation  will show the new queue order. Example:
                  N,#3

       S          An 'S' command will cause printing to stop. After  the  current
                  job  is  finished,  printing  will  halt until a 'G' command is
                  issued.


       G          A  'G'  command will re-start printing after an 'S' command has
                  been used to stop it.

       K          A 'K' command will kill the current print process. All printing
                  and  queued  jobs will be removed from the queue. The files are
                  not deleted from disc.


 NOTE: 'QCHECK'  should  only  be  used  if  you  are  using the resident spooler
       supplied with FLEX and for this reason is only present on the unconfigured
       disc.  If you are using the Windrush Enhanced Print Spooler you should use
       'QCHECKK' which is described on the following pages.
                               * * QCHECK.SYS * *


 This is the 'HELP' file associated with the Windrush 'QCHECKK' utility.


                                * * QCHECKK * *


 The  Windrush  QCHECKK  utility  is  a  management aid which enables the user to
 manipulate various aspects of the Windrush Enhanced Print Spooler. This  command
 is accompanied by a file called 'QCHECK.SYS' which serves as a 'HELP' file. This
 utility should be used  in  lieu  of  the  TSC  'QCHECK'  utility  whenever  the
 'SPOOL.SYS' file is loaded (as it is with the 'configured' disc).


DESCRIPTION

 The syntax for QCHECKK is:

    QCHECKK

 The invokation is trivial  because  as  the  commands  are  called  from  within
 QCHECKK.  To  give  a feel for the range of commands available, the following is
 what appears when A, for assistance, is typed as the command:


 HELP
 ====

 Q              Displays the files in the Spooler queue,
 F              Freezes the Spooler, i.e. an IMMEDIATE halt,
 S              Stop the Spooler AFTER the current file is completed,
 G              Go and re-start the Spooler ( used after an F or S ),

 R,#<posn>,<no> Repeat the file at <posn>, <no> times,
 N,#<posn>      Make <posn> the next job to be printed,

 T              Terminate the current output - repeats will continue,
 D,#<posn>      Delete the file at <posn>,
 K              Kill ALL Spooler output,

 <RETURN>       Returns from QCHECKK.


 The  commands are grouped into: high level spooler directives, file manipulation
 directives, deletion directives. A description of  each  group,  with  examples,
 follow.


 NOTE:  The file entitled 'QCHECK.SYS' must be present on the same disc  as  this
        command  if  this  command  is  to be used. QCHECK.SYS is used by the 'A'
        (assistance) command.


                                * * QCHECKK * *


 (continued)


HIGH LEVEL DIRECTIVES

 These commands affect the way in which the spooler functions.

Q             Is  used  to  display  the  information on files which are in the
                spooler queue. For each file,  it's  position,  name,  number  of
                repeat  copies and number of sectors are displayed. Following the
                information for each file, Q will then print the  number  of  the
                current  sector being output. This is in order to give a feel for
                how much of the present file has been output to the  printer.


F             Is used to cause an immediate Freeze  on  the  spooler,  i.e.  on
                return  to  the  operating  system  the spooler will be held in a
                locked state until it is freed, q.v. G and S.  Subsequent  typing
                of Q will confirm that the spooler is indeed frozen.


S             Is used to Stop the spooler  after  the  current  file  has  been
                output.  If  any repeats were requested they will neither be lost
                nor printed. This command is useful if a file containing  `false'
                LF  codes  is  being  spooled.  The spooler will interpret all LF
                codes as a line feed and so  will  leave  the  paper  incorrectly
                positioned  for the next file. THIS WILL ONLY AFFECT A VERY SMALL
                PERCENTAGE OF INSTALLATIONS - MOST INTELLIGENT PRINTERS  TRY  AND
                AVOID  USING  $A  AS  A CONTROL CODE or BYTE COUNT. If F had been
                previously typed and now S is typed, the  frozen  state  will  be
                replaced  by  the  stop  state and so the printing of the present
                file  will continue until it is completely printed. Typing Q will
                confirm that the spooler will stop, or is stopped.


G             Is  used  to restart the spooler if either the F or S command had
                been previously used. This command will always leave the  spooler
                in the state where it is neither frozen nor stopped. On return to
                the operating system, the spooling function will resume. Typing Q
                will confirm that the spooler is neither frozen or stopped.


                                * * QCHECKK * *


 (continued)


FILE MANIPULATION DIRECTIVES

 These commands affect only the individual file referred to in the call.

R             Is  used  to  alter  the  Repeat  count  for  a  given  file. Two
                parameters are required: the position of the file  in  the  queue
                (always  preceded  by a hash, "#", symbol), the number of repeats
                which must lie in the range 0..255. Some examples follow:

                Command ? R,#2,0

                This will reset the repeat count for the file at position  #2  to
                zero, i.e. no more copies.

                Command ? R,#3,20

                This will cause the file at position #3 to have 20 repeat copies.


N             Is  used  to  make  a  particular  file  job  (by job we mean the
                original plus any associated copies) the next one to be  printed.
                Only  one parameter is provided which is the position of the file
                before the N command was issued. N will reschedule any repeats of
                the  present job in order that the next file to be printed really
                is the one requested (but see the  note  below).  Typing  Q  will
                confirm the new position of the queue. Some examples follow:

                Command ? N,#11

                This  will  make  the  file  at  position  #11  (and  repeats  if
                applicable) the next job to be output to the printer. Unless  the
                spooler  queue  is full, any repeats from the present job will be
                resheduled (but see note below).

                Command ? N,#17
                Command ? N,#14

                The result of the above sequence of two commands is to change the
                priorities of two files in the queue.  THIS  IS  NOT  RECOMMENDED
                without  a Q in between as the file positions will all change AND
                there may be an extra job appear as a result of rescheduling  any
                repeats  from the present job. The rule then is: modify the queue
                for a file, check the new queue, modify  the  queue  for  another
                file (if necessary).


                                             NOTE

                THAT  IF  THE  QUEUE  IS FULL, THE PRESENT JOB's REPEATS CAN'T BE
                RESCHEDULED - THIS IS THE ONLY CASE WHERE THE FILE  SPECIFIED  IN
                "N" WOULD NOT BE THE NEXT FILE TO BE PRINTED.


                                * * QCHECKK * *


 (continued)


DELETION DIRECTIVES

 These  commands either operate on a specified file (D), the current file (T), or
 the spooler function itself (K).

T             Is used to Terminate the present file being printed. The  spooler
                will clean up the position of the paper and then either print the
                repeats (if any were requested) or else move on to the next  file
                in  the  queue. In order to completely ZAP the present output use
                the D command (below). An example follows:

                Command ? T

                This will terminate  the  present  copy  being  printed.  If  any
                repeats were requested, these will now be printed - otherwise the
                next file will be printed.


D             Is used to remove the file at a given position from the queue. If
                the  position  is other than the current file the queue is merely
                modified to remove the file, otherwise the effect  is  as  though
                the  repeats  of  the  present job were cleared followed by the T
                command being issued. Some examples follow:

                Command ? D,#4

                This removes the file at position #4 in the queue and re-shuffles
                the queue as necessary.

                Command ? D,#1

                This  would  be used in preference to the T command to completely
                remove  the  present  file  from  the  queue  when  repeats  were
                requested.  Using  T  alone  would terminate the present copy and
                then start on a repeat.


K             Is the command that should be issued to Kill  the  whole  of  the
                spooler.  It will position the print head to the top of the page,
                tidy up the queue, close down the spooler cleanly and  then  turn
                off  the  print  spooler  interrupt generation device. An example
                follows:

                Command ? K

                This Kills the spooler DEAD!


                                * * QCHECKK * *


 (continued)


GENERAL

 Two other commands may be used. One is the pseudo <RETURN>  command  which  just
 returns  control  back  to the operating system. The other is if A is typed (for
 Assistance). Typing A will list the options available (excluding the  A  command
 as  you  must  have  known  what  A did to invoke assistance!) and uses the file
 called QCHECK.SYS which should be on the system  drive.  In  the  event  that  a
 parameter  is  in  error,  or  the syntax is incorrect, or an illegal command is
 attempted QCHECK will suggest that you type A to get  the  commands  and  syntax
 listed to the terminal.


 In order to prevent any software hazards,  the  spooler  is  actually  inhibited
 during  the  QCHECKK  utility.  This  is  mentioned in order to explain why, for
 instance, typing T 'appears' to have no actual effect. On issuing  the  <RETURN>
 to get back to the operating system, the desired action will take place.


                             * * RAM-CON * *


 The Windrush RAM-CON utility is used to configure the way in which the RAM  DISC
 operates.  It  defines  the  memory  that  can be accessed and the format of the
 resultant RAM DISC. RAM-CON.SYS and RAM-FORM.SYS should be present on the system
 drive when this command is invoked.

 Note  that a RAM DISC will always have a valid 'floppy disc' equivalent in order
 that standard disc diagnostics will operate correctly, however  if  your  memory
 exceeds  the  largest floppy equivalent AND you choose to use use ALL if it THEN
 you will create a disc which can't be FASTBACKed (qv) to/from a floppy disc.


DESCRIPTION

 The syntax for invoking RAM-CON is:

     RAM-CON


 As with most Windrush utilities RAM-CON allows the use  of  control-C  (^C),  in
 response to any prompt, to cleanly abort the utility.

 As RAM-CON will only be used once when you initially configure the RAM DISC, and
 possibly again if you should change either your extended  memory  complement  or
 requirements, RAM-CON is 100% interactive in usage.

 After  invokation  RAM-CON loads and introduces itself, explains what it is used
 for, and will then ask you which 4k byte memory blocks can be used for  each  of
 the 15 user pages of memory, the 16th memory page is used as the SYSTEM page.

 Note the terms block and segment are interchangeable, block gives more of a feel
 for a 'block of memory' while segment is the term more usefully applied  to  the
 DAT  (Dynamic  Address Translator) where one thinks more in terms of 'pages' and
 'segments'. Incidentally the term 'page' refers to a 64k byte  chunk  of  memory
 and not 256 bytes as the 6809 microprocessor sees a 'page'

 Returning  to  the operation of RAM-CON you are asked, for each page, whether or
 not it is available for use. If you say it is not available RAM-CON goes  on  to
 the  next  page.  If  the  page  is available RAM-CON asks if all of the page is
 available. If you say it is RAM-CON then dumps out the  block  availability  for
 the page, otherwise it asks whether or not each of the 4k byte blocks within the
 page is available and then dumps out  the  block  availability.  At  this  point
 RAM-CON is showing you what you have defined and asks if this is correct. If you
 say it is incorrect you will be prompted for the  whole  page  again,  otherwise
 RAM-CON goes on to the next page.

 When  the  information  for  all  15 pages has been entered, RAM-CON repeats the
 whole lot as a large dump. At this point you may either agree with  it,  thereby
 continuing, or else you will be prompted again right from the top.

 If  you said that you were happy with your input data, you will be asked whether
 you wish to have 5 1/4" or 8"  compatibility.  Unless  you  have  8"  discs  and
 actually use them, it makes sense to opt for 5 1/4" compatibility.

 At  this  point, depending on how much memory you have (can afford!), you may be
 told that the RAM exceeds the largest physical disc capacity. If this message is
 posted  you  will  be asked if you wish to use all of it. If you say you do then
 you will be told how many sectors are available and the amount  of  memory  this
 represents, and then pass on to the 'extend directory' prompt (see later).
                             * * RAM-CON * *


 (continued)


 If your answer was 'no' or you did not have a vast amount  of  memory  then  you
 will  be  told  how  many  sectors  are  available and the amount of memory this
 represents, and then be presented with the formatting options.

 As there are single/double sided and single/double density  options  this  gives
 rise  to  4  combinations.  For  each option combination, you are told: how many
 complete tracks can be formed, the number  of  user  sectors  available  without
 'directory extension', the number of user sectors with 'directory extension'.

 A note on 'directory extension'. The RAM DISC does not really need the directory
 extending as its seek time is minimal - it is quite happy to leave the extension
 of  the  directory  to be dynamic. This may give problems though if you FASTBACK
 the RAM DISC to a floppy, as subsequent directory searches and operations on the
 floppy can produce a very 'chirpy' and slow response. Really it is a question of
 usage. If you are using the RAM DISC as a  super-quick  system  drive,  then  it
 makes sense to extend the directory - otherwise perhaps not. The following table
 shows the number of files available before dynamic extension takes place for all
 permutations:


                5 1/4" SSSD   5 1/4" DSSD   5 1/4" SSDD   5 1/4" DSDD
             +---------------------------------------------------------+
    NORMAL   |      60           160            60           160       |
  EXTENDED   |     160           360           240           520       |
             +---------------------------------------------------------+

                  8  SSSD       8  DSSD       8  SSDD       8  DSDD
             +---------------------------------------------------------+
    NORMAL   |     110           260           110           260       |
  EXTENDED   |     260           560           370           780       |
             +---------------------------------------------------------+


 Returning  to  the  options, you select firstly the number of sides and then the
 density required.

 This then leads on to the 'extend the directory' prompt. You  must  answer  this
 based on the above table and your expected usage of the RAM DISC. If you request
 extension, RAM-CON confirms that it has extended it.

 RAM-CON will now inform you of the disc format, in regard to: size  (5  1/4"  or
 8"), sides, density, tracks used.

 Next  RAM-CON  will want to update RAM-CON.SYS and RAM-FORM.CMD and just in case
 you don't wish to continue it will ask if you definately wish  to  continue.  If
 you  say you don't then RAM-CON will terminate, otherwise it will update the two
 files with the new information.

 As you will probably want to try out the new RAM  DISC  straight  away,  RAM-CON
 asks  if you wish to get the RAM-CON.SYS overlay. If you do not want the overlay
 RAM-CON then terminates, otherwise it gets the overlay  of  the  memory-map  and
 then  asks  if  you  want to run the RAM-FORM formatter. If you confirm, the RAM
 DISC will be formatted to the new format and will terminate, otherwise  it  will
 terminate  without  re-formatting.  Note  that  getting  a  new  overlay without
 reformatting will lead to a corrupted disc.
                              * * RAM-CON.SYS * *

 This  file is part of the Windrush RAM DISC package. It should always be present
 on the drive used to boot the system if SETUP indicates that  the  RAM  DISC  is
 to be available via the 'R' flag on the command line.

 RAM-CON.SYS  contains  the  memory  map  information  required  by  the resident
 RAM DISC drivers and will be loaded by 'SETUP'  (qv)  whenever  a  RAM  DISC  is
 defined. It may optionally be loaded by the RAM-CON utility.


                                * * RAM-FORM * *


 RAM-FORM is a Windrush utility which is used to format the RAM DISC.


DESCRIPTION

 The syntax for RAM-FORM is:

   RAM-FORM[,Y,N]


 To  operate,  the  RAM  DISC  must be on-line. If this is the case RAM-FORM will
 inform you of the logical drive number of the RAM DISC, otherwise it  tells  you
 that the RAM DISC is not available.

 The  optional ',Y,N' are answers that may be provided on the command line to the
 two questions 'FORMAT RAM DISC #<logical drive>' and 'ABORT THE FORMAT'.

 If the answers were not on the command line, they should be typed in response to
 the  questions.  Only  a Y N response will allow a format, anything else causing
 termination of the utility.

 Assuming a Y N response, RAM-FORM now formats  the  RAM  DISC  and  finishes  by
 informing you of the total user sectors available.

 If  the  resultant  RAM  DISC  can be FASTBACKed (q.v.) the required floppy disc
 format is displayed, otherwise RAM-FORM tells you that FASTBACK can not be  used
 on this RAM DISC.


                                * * REFORMAT * *


 The Windrush REFORMAT utility is provided to  reformat  a  Winchester  partition
 following corruption of the FLEX format or just to 'tidy up' a partition that is
 no longer in use. REFORMAT can only re-establish the previous FLEX format for  a
 particular  partition,  it cannot alter the size information for the wini-floppy
 partition. This means that you cannot change the size of the disc, the number of
 tracks  to  format  or  the  number  of  sectors  per  track.  This  can only be
 accomplished by using 'WIN-FORM' (qv) to perform an internal (hard)  format  and
 then establishing a new set of partitions.


DESCRIPTION

 There are three methods of calling REFORMAT:

    REFORMAT

    REFORMAT[,<drive>]

    REFORMAT,+<drive>,<extend>[,<name>[,<number>]]


 where ...

 <drive>   is a valid drive number on which a wini-floppy is mounted.


 <extend>  is  either 'Y' or 'N' for  Yes  or  No respectively in response to the
           question: 'Do you want to extend the directory?'.


 <name>    is  an  optional  valid  FLEX filename in the form: 'XXXXXXXX.XXX', if
           omitted the default 'FLEX6809.WMS' will be used.


 <number>  is an optional integer volume number  (0  -  65535),  if  omitted  the
           partition number will be used.


 The  first  two forms invoke the interactive call. The third form is the command
 line call.

 If valid drive number is not given on the command line the user will be prompted
 for  one.  The utility checks that the specified drive is a winchester partition
 and then displays the format information for checking. The user is then prompted
 for  a  volume name other than the default of FLEX6809.WMS, a carriage return at
 this time will accept the default volume name.  You  are  then  prompted  for  a
 volume  number, a carriage return at this time will default the volume number to
 the winchester partition number. The user is then asked if  directory  extension
 is  to  be  performed,  as  in WIN-FORM. A final pair of prompts are then issued
 which give you an oportunity to abandon the REFORMAT operation.


                                * * REFORMAT * *


 (continued)


 An example of the interactive call would be:

    +++REFORMAT <CR>
    +++REFORMAT,3 <CR>


 The interactive call runs like this:

 +++REFORMAT <CR>


 WINDRUSH WINCHESTER PARTITION REFORMATTING UTILITY  V:X.X
 =========================================================


 If you omitted the drive number on the command line you will be prompted for one
 thus:


 Enter drive FLEX logical driver number to reformat      (0 - 8) :


 The partition information will now be read and, if in error,  an  error  message
 will be reported. Otherwise the following information will be displayed:


 CONTROLLER NUMBER                    = 0  (standard controller)
 CONTROLLER PHYSICAL DRIVE NUMBER     = 0  (standard drive)
 WINCHESTER PARTITION NUMBER          = nnn

 TRACKS TO FORMAT                     = 80  }
 SECTORS ON TRACK NUMBER 0            = 20  } 5" DS/DD 80 TRACK EMULATION
 SECTORS ON ALL OTHER TRACKS          = 36  }

 DIRECTORY ENTRIES WITHOUT EXTENSION  = 160 }
 DIRECTORY ENTRIES WITH EXTENSION     = 520 } 5" DS/DD 80 TRACK EMULATION

 Do you wish to extend the directory?                      (Y/N) : Y

 Volume name?                                     (XXXXXXXX.XXX) : <CR>
 Volume number?                                      (0 - 65535) : <CR>

 Ready to start reformatting?                              (Y/N) : Y
 Do you want to quit?  (This is your last chance!)         (Y/N) : N

 Reformatting WINI FLOPPY partition number <nnn>

 Writing track sector
          nn     nn
 Testing track sector
          nn     nn

 Reformatting completed.  Available space = <nnnnn> sectors.

 +++
                                * * REFORMAT * *


 (continued)


 The third form, which is syntactically similar to the 'FORMAT' (qv) utility,  is
 for  command  line calls. If the syntax is correct the utility will IMMEDIATELY
 commence reformatting the partition without further recourse to the operator. If
 the  syntax  is  not correct an error message will be posted advising you of the
 error and the correct syntax, control will then return to FLEX.

                                     _______
                                    WARNING

         THE COMMAND LINE CALL CAN BE DANGEROUS AS IT ONLY REQUIRES  THAT
         YOU SPECIFY A MOUNTED WINCHESTER PARTITION. IF YOU INADVERTANTLY
         SPECIFY THE WRONG ONE YOU WON'T GET A SECOND CHANCE!


 An example of the command line call would be:

    +++REFORMAT,+3,Y <CR>
    +++REFORMAT,+3,N,MYVOLUME <CR>
    +++REFORMAT,+3,N,MYVOLUME,123 <CR>
    +++REFORMAT,+3,N,MYVOLUME.TXT <CR>
    +++REFORMAT,+3,N,MYVOLUME.TXT,123 <CR>


 The command line call runs like this:

 +++REFORMAT +3 N WORKDISK 123 <CR>


 WINDRUSH WINCHESTER PARTITION REFORMATTING UTILITY  V:X.X
 =========================================================

 If you make a syntax error an error message will define it and advise you of the
 correct  syntax. If the command line call is syntactically correct the partition
 information will be read and, if in error, an error message  will  be  reported.
 Otherwise  the  following  information  will  be  displayed  and formatting will
 commenceIMMEDIATELY...

 CONTROLLER NUMBER                    = 0  (standard controller)
 CONTROLLER PHYSICAL DRIVE NUMBER     = 0  (standard drive)
 WINCHESTER PARTITION NUMBER          = nnn

 TRACKS TO FORMAT                     = 80  }
 SECTORS ON TRACK NUMBER 0            = 20  } DS/DD 80 TRACK EMULATION
 SECTORS ON ALL OTHER TRACKS          = 36  }

 Reformatting WINI FLOPPY partition number <nnn>

 Writing track sector
          nn     nn
 Testing track sector
          nn     nn

 Reformatting completed.  Available space = <nnnnn> sectors.

 +++
                                     RENAME


 The RENAME command is used to give an existing file a new name in the directory.
 It is useful for changing the actual name as  well  as  changing  the  extension
 type.


DESCRIPTION

 The general syntax of the RENAME command is:

     RENAME,<file spec 1>,<file spec 2>

 where <file spec 1> is the name of the file you wish to RENAME and <file spec 2>
 is  the  new name you are assigning to it. The default extension for file spec 1
 is TXT and the default drive is the working drive. If no extension is  given  on
 <file  spec 2>, it defaults to that of <file spec 1>. No drive is requird on the
 second file name, and if one is given it is ignored. Some examples follow:

     +++RENAME,TEST1.BIN,TEST2
     +++RENAME,1.LETTER,REPLY
     +++RENAME,0.FIND.BIN,FIND.CMD

 The first example will RENAME TEST1.BIN to TEST2.BIN. The next  example  RENAMEs
 the  file LETTER.TXT on drive 1 to REPLY.TXT. The last line would cause the file
 FIND.BIN on drive 0 to be renamed FIND.CMD. This is  useful  for  making  binary
 files  created  by  an assembler into command files (changing the extension from
 BIN to CMD). If you try to give a file  a  name  which  already  exists  in  the
 directory, the message:

     FILE EXISTS

 will  be  displayed  on  the terminal. Keep in mind that RENAME only changes the
 file's name and in no way  changes  the  actual  file's  contents  or  the  file
 attributes set by PROT (qv).

 One last note of interest. Since utility commands are just like any other  file,
 it  is  possible  to  rename  them also. If you would prefer some of the command
 names to be shorter, or different all together, simply  use  RENAME  and  assign
 them the names you desire.


 NOTE:   Windrush  supply  a similar utility called RE-NAME which is considerably
         more flexible. For this reason  RENAME  will  only  be  present  on  the
         unconfigured disc.


                                * * RE-NAME * *


 The Windrush RE-NAME utility is used to alter  the  name  of  any  file  on  the
 system.  It  is  similar  to the TSC utility but it is easier to use if you only
 wish to alter the extension of a file name. It also keeps you better informed of
 what is going on!


DESCRIPTION

 The syntax for RENAME is as follows:

    RE-NAME,<from>,<to>

 <from>     is the original file name which will default to  being  on  the  work
            drive, with a .TXT extension,

 <to>       is  the  new file name. Only the parameter(s) that need changing have
            to be provided  though  if  you  like  typing,  the  whole  name  and
            extension may be specified.

 RE-NAME  can  be  used  to change system file names to a shorter version, though
 this means that your system becomes non-standard: not a very desirable  feature.
 The  main use is to alter just the extension part, say from .TXT to .BAK so that
 the original remains around rather than having some editors do it for you.  Some
 examples follow:


    +++RE-NAME,WORK,.BAK

 This  will  rename  the  file  called  WORK.TXT  on  the work drive to a name of
 WORK.BAK, though only the name is altered - the file is not touched.


    +++RE-NAME,WORK.BAK,.TXT

 This will rename the file called WORK.BAK to WORK.TXT.


    +++RE-NAME,1.SYSTEM.DOC,INFO

 This  will  rename  the  file  called  SYSTEM.DOC  on drive # 1 to a file called
 INFO.DOC.


 When RE-NAME is invoked, it will display the original and required  file  names.
 This is in order to ensure that you are fully aware of what RE-NAME is  renaming
 to  what!  Success,  or  otherwise,  of  the  rename is also displayed after the
 rename.


 NOTE:  If you are used to the syntax of the TSC RENAME utility we  suggest  that
        you rename RE-NAME.CMD to RENAME.CMD thus:

        +++RE-NAME,0.RE-NAME.CMD,RENAME<CR>


                                * * RESIDENT * *


 The  Windrush  RESIDENT  command  is  used to place FLEX disc commands, or other
 binary files, into extended memory for subsequent  'instantaneous'  access  like
 the  FLEX memory resident command table (where 'GET' and 'MON' are). Once in the
 resident command table the commands will execute  virtually  instantaneously  as
 they  no  longer need to be fetched from disc. RESIDENT also includes facilities
 to enable or disable the resident commands,  and  to  housekeep  the  RAM  based
 commands.  Additional  facilities  are  also  provided  by 'RES-CON', 'RES-SAVE'
 'RES-ON' and 'RES-OFF' which should be consulted for further information.


DESCRIPTION

 The syntax for RESIDENT is:

    +++RESIDENT[,<option>]

 where:

 <option>   = <opt>[,<option>]

 <opt>      = "/"            to enable the RESIDENT drivers,
              "\"            to disable the RESIDENT drivers,
              "*"            to purge all RAM resident files,
              "+"<filename>  to add individual files,
              "-"<filename>  to delete individual files.

 <filename> = a  file  specification,  defaults  to  a  .CMD  type of file on the
              assigned work drive.

                                       ____
                                      NOTE

          RESIDENT  should  not  be  used until you have first run the
          'RES-CON' (qv) utility and and then invoked SETUP (qv)  with
          the 'E' option to load the 'RES-CON.SYS' file.


 Taking  the  case  of  a  bare  call  without  options,  RESIDENT  will  display
 information about any RAM commands that may exist, followed  by  the  number  of
 free  bytes. It will then display information about the ROM commands in the same
 format  as  for  RAM  commands.  Finally  the  current  state  of  the   drivers
 (enabled/disabled) is reported.

 Information  per  command is the number of byts used to store it, while the free
 information reports the actual number of  bytes,  followed  by  the  approximate
 number of sectors which it should represent.


OPTIONS

"/" ENABLE RESIDENT

 This  option  merely  allows  the commands contained in RESIDENT to be used. The
 drivers power-up in the disabled state and so this is one way (also see  RES-ON)
 for turning them on.


                                * * RESIDENT * *


 (continued)


"\" DISABLE RESIDENT

 This option is the reverse of "/" and  serves  to  disable  RESIDENT  (also  see
 RES-OFF).


"*" PURGE RAM COMMANDS

 Using this option will sequentially delete all  files  stored  in  RAM  printing
 their names as they go. Due to the nature of moving considerably large chunks of
 memory, this may take a little while!


"+" ADD RAM COMMAND

 This option will take the command that follows and store it at the  end  of  the
 current  RAM  commands.  Two passes are made over the source: map the file, read
 and write the file to RAM.


"-" REMOVE RAM COMMAND

 This option will delete the command that  follows  from  RAM.  If  any  commands
 follow  it  in RAM, they will all be moved down in order to free-off the maximum
 amount of RAM for subsequent command storage. This can take a while depending on
 the amount of memory to be moved.


 Some examples of typical calls follow:

    +++RESIDENT,/,+0.PL9

 This will enable RESIDENT (the drivers)  to  work,  and  then  add  the  command
 0.PL9.CMD to the RAM commands.


    +++RESIDENT,-PL9,+DIR,+COPY

 This will delete PL9.CMD, if it exists, then add DIR.CMD from the system  drive,
 and finally add COPY.CMD also from the system drive.


    +++RESIDENT

 Will merely print out the contents of RAM and ROM  commands.  Note  that  a  RAM
 based  command  will  be  used  if a ROM based one of the same name exists. This
 allows modified versions to be added to RAM until new EPROMS may be programmed.


    +++RESIDENT,*

 This sequentially deletes all RAM based files.


                                * * RESIDENT * *


 (continued)


 It should be noted that RESIDENT always dumps the information about the resident
 files  before  a  return  is made to the operating system. This ensures that the
 most up-to-date information is displayed.

 For the technically minded, the resident overhead is 20 bytes for a header, plus
 4  bytes  for each record (where a record is up to 64kbytes long). In most cases
 this means that the number of bytes used to hold the  command  is  significantly
 less  than  its  disc-based  brother/sister.  The  header contains such items as
 filename, transfer address and number of records to the command.

 It is recommended that files which are to be placed in  resident  be  COMPRESSed
 (qv)  in  order  that  they take up the minimum amount of memory. This will, for
 example, remove backward patching from PL9 generated commands as  COMPRESS  will
 remove the redundancy - effectively applying the patch for you within the code.


  *****************************************************************************
  * DO NOT USE RESIDENT FROM YOUR STARTUP FILE. THIS IS BECAUSE RESIDENT USES *
  * LOW MEMORY FOR MANIPULATING THE MEMORY USED FOR THE COMMANDS. IF YOU WANT *
  * TO ENABLE THE DRIVERS AT STARTUP, USE "RES-ON" AS THIS RESIDES IN THE TCA *
  *****************************************************************************


 If you lock up the system during testing some development and need  to  re-boot,
 the  whole  of  your work would be destroyed if RESIDENT was invoked within your
 STARTUP.TXT file.


   ************************* YOU HAVE BEEN WARNED ! **************************


                                * * RES-CON * *


 The Windrush RES-CON is a utility which configures the file RES-CON.SYS for  use
 by  the  RESIDENT  drivers.  The purpose of this utility is to define the memory
 available to RESIDENT.


DESCRIPTION

 RES-CON is fully interactive and prompts for memory allocations for both RAM and
 ROM areas in sizes of 8k bytes. This maps onto the size of  chips  used  on  the
 Windrush QMBM and MEM3 memory boards.

 Conflicts  between  RAM and ROM are not allowed, and before finally updating the
 RES-CON.SYS file, you  will  have  your  input  configuration  re-displayed  for
 checking.

 The  resultant  RES-CON.SYS may be loaded from RES-CON, though it is recommended
 that this be left to SETUP (qv) to do (by including 'E' in the  command  line  -
 just  like  'R'  for RAM DISC) as SETUP will check for conflicts between the RAM
 DISC map and the RESIDENT map and will remove RESIDENT's map  if  there  is  any
 conflict.

 The  resultant  configuration may be checked at any time, after SETUP has loaded
 the RES-CON.SYS file, by using the ESTATUS (qv) command.


                              * * RES-CON.SYS * *


 This  file is part of the Windrush RESIDENT package. It should always be present
 on the drive used to boot the  system  if  SETUP  indicates  that  the  RESIDENT
 facilities are to be made available via the 'E' flag on the command line.

 RES-CON.SYS contains the memory map information required by the RESIDENT drivers
 and will be loaded by SETUP (qv) whenever the 'E' option is  specified.  It  may
 optionally be loaded at the end of the configuration program 'RES-CON.CMD'.


                                * * RES-OFF * *


 RES-OFF is a utility which is used to disable the resident drivers. This may  be
 required,  for  example, to force the system to take a command with an identical
 name to one that is currently resident but of a later version from disc.

 RES-OFF has no options or arguments and merely disables the resident drivers and
 reports the fact.

 It should be used in place of RESIDENT (qv) if there is something of  importance
 in low memory, as it runs in the transient command area (TCA).


                                 * * RES-ON * *


 RES-ON  is  a  utility  which  is used to enable the resident drivers. It has no
 options or arguments and merely enables the resident  drivers  and  reports  the
 fact.

 It  should be used in place of RESIDENT (qv) if there is something of importance
 in low memory, as it runs in the transient command area (TCA).


                                * * RES-SAVE * *


 RES-SAVE is  a  utility for converting a RAM based residency into a set of files
 for producing ROM based residency.


DESCRIPTION

 The syntax for RES-SAVE is:

   +++RES-SAVE

 No parameters are required for RES-SAVE.


 RES-SAVE will read the RAM based residency and write out the data to files  with
 the following naming structure:

    RBK-<page>-<segs>.BIN

   where:   page   is in the range 0..E, and
            segs   is 01,23,45,67,89,AB,CD or EF

 <segs> is a segment pair because residency works in 8k byte  quantums  to  match
 the size of the memory chips used on the QMBM memory boards.

 The  files are produced on the assigned work drive, and will over-write any file
 of the same name that exists when RES-SAVE is executing.

 The mapping of the files is $0000-$1FFF irrespective  of  its  actual  filename.
 This  is  in  order  to  simplify  the EPROM programming aspects. It is strongly
 recommended that the filename is written on  each  EPROM  after  programming  in
 order that no confusion arises at any later stage!

 RES-SAVE  is  efficient  in  its  ROM memory allocation and so will only produce
 enough ROM files as are required to satisfy the present commands stored  in  RAM
 residency.


                      **************************************
                      * WARNING: RES-SAVE USES LOW MEMORY! *
                      **************************************


                                * * RSTATUS * *


 The Windrush RSTATUS utility gives status information about the memory map  used
 by the RAM DISC.


DESCRIPTION

 The syntax for RSTATUS is:

    RSTATUS


 If the RAM DISC is off-line, RSTATUS will not operate and informs you of this.

 If the RAM DISC is on-line, RSTATUS informs you of the logical drive # and dumps
 out  the memory map in the same form to that of RAM-CON. Depending on the chosen
 format, you wll either be posted with a message saying that  FASTBACK  can't  be
 used  with  the  RAM  DISC,  or  one  that  it  can  -  along with the necessary
 information required to format a floppy disc to the corresponding size.


                                   * * S * *


 The Windrush 'S' utility is provided to (S)trip any LFs ($0A) from a text  file.
 This  is  required  if  a  spoolable  file  is  to be read or merged into a word
 processor. This is because certain word processors, like  SCREDITOR  III,  treat
 control codes, such as LFs, as printer embedment.

 'S'  is  most  commonly  used to pre-format 'A:L' files produced by MACE, XMACE,
 ASM05 or PL/9 into files that can be merged into a document being  processed  by
 SCREDITOR III.


DESCRIPTION

 The syntax for 'S' is:

    S,<sfile>[,<dfile>]

 <sfile>        is a source file containing  the  LFs.  It  defaults  to  a  .OUT
                extension  on  the system drive. If system is defined as ALL, 'S'
                will search from drive #0 onwards until the file is found,

 <dfile>        is  the  destination  file  which  will  be a stripped version of
                <sfile>. It defaults to the same name as  <sfile>,  with  a  .TXT
                extension  on  the work drive. If work is defined as ALL drive #0
                is used.

 It is very important to realise that <dfile> has  been  given  a  very  powerful
 defaulting mechanism. The following are all valid:

   <#>
   <#>.<body>
   <#>.<body>.<ext>   (conventional)

   <body>
   <body>.<#>
   <body>.<ext>
   <body>.<ext>.<#>   (conventional)

   .<ext>
   .<ext>.<#>

 these are in addition to a complete default. The components are defined as:

   <#>    is a valid drive #,
   <body> is a valid body definition (up to 8 characters),
   <ext>  is a valid extension (up to 3 characters).


 After  being invoked, 'S' displays the source and destination files that it will
 be trying to use. This is to assist the user in knowing just where the file went
 (the  minimum requirement defaults for the destination file are VERY POWERFUL!).
 In the case of <sfile>, a "?" will be shown in place of the drive number if  the
 system  default is ALL. This is because the source file could be residing on any
 drive, or none at all.


                                   * * S * *


 (continued)


 Some examples will help to show how the defaults work:


    +++S,DIR

 Here the source file resides on the system drive as DIR.OUT and the  destination
 file will be on the work drive and called DIR.TXT.


    +++S,CAT,0

 The source is now CAT.OUT,  again  on  the  system  drive,  but  this  time  the
 destination file will be called CAT.TXT on drive #0.


    +++S,ARCHIVE.BAK,TRIAL

 The source is now ARCHIVE.BAK on the system  drive,  while  the  destination  is
 TRIAL.TXT on the work drive.


    +++S,LIST_ZAP.2,.TMP

 Here the source is 2.LIST_ZAP.OUT and the destination  is  LIST_ZAP.TMP  on  the
 work drive.


    +++S,JUDO.BAS,.SRC.3

 Now the source is JUDO.BAS on the sytem  drive,  and  the  destination  file  is
 3.JUDO.SRC


 As there are 5 ways of describing the source file, and 10 ways of specifying the
 destination,  there  are  a  total of 50 combinations. There are far too many to
 show examples for ALL possible invocations. The rule is IF IT MAKES SENSE TO YOU
 then 'S' should  understand. This is one reason why the file names are displayed
 for you.

 In all the above examples, any occurrences of hex $A (i.e. LFs) were stripped in
 accordance  with the requirement of producing a file which could be merged into,
 for example, a Word Processed document.


                                      SAVE


 The SAVE command is used for saving a section of memory on the disc. Its primary
 use  is  for saving programs which have been loaded into memory from an external
 source or entered by hand via the system monitor.


DESCRIPTION

 The general syntax of the SAVE command is:

     SAVE,<file spec>,<begin adr>,<end adr>[,<transfer adr>]

 where  <file spec> is the name to be assigned to the file. The default extension
 is BIN and the default drive is the working drive. The address fields define the
 beginning  and  ending  addresses  of the section of memory to be written on the
 disc. The addresses should be expressed as hex numbers. The  optional  <transfer
 address>  would be included if the program is to be loaded and executed by FLEX.
 This address tells FLEX where execution should begin. Some examples will clarify
 the use of SAVE:

     +++SAVE,DATA,100,1FF
     +++SAVE,1.GAME,0,1680,100

 The first line would SAVE the memory locations 100 to 1FF hex on the disc  in  a
 file called DATA.BIN. The file would be put on the working drive and no transfer

 address would be assigned. The second example would cause the contents of memory
 locations  0  through  1680 to be SAVEd on the disc in file GAME.BIN on drive 1.
 Since a transfer address of 100 was specified as a parameter, typing  'GAME.BIN'
 in  response  to  the FLEX prompt after saving would cause the file to be loaded
 back into memory and execution started at location 100.

 If an attempt is made to save a program under a file name that  already  exists,
 the  prompt  "MAY THE EXISTING FILE BE DELETED?" will be displayed. A Y response
 will replace the file with the new data to be saved  while  a  N  response  will
 terminate the save operation.

 Sometimes  it  is desirable to save noncontiguous segments of memory. To do this
 it would be necessary to first SAVE each segment as a separate file and then use
 the APPEND command to combine them into one file. If the final file is to have a
 transfer  address,  you  should  assign it to one of the segments as it is being
 saved. After the APPEND operation, the final  file  will  retain  that  transfer
 address.  If  this  action  is taken we suggest that you invoke COMPRESS (qv) in
 order to minimise the disc space required to store the file.


                                    SAVE.LOW


 There is another form of the SAVE command resident in the UCS (TCA), i.e $C100 -
 $C6FF.  It  is  called  SAVE.LOW and loads in a lower section of memory than the
 standard SAVE command. Its use is for saving programs  in  the  Utility  Command
 Space/Transient  Command  Area  where  SAVE.CMD  is  loaded. Those interested in
 creating their own utility commands should consult  the  'Advanced  Programmer's
 Guide' for further details.


                                * * SETCLOCK * *


 This  Windrush  utility  is  used  to set the various registers within the clock
 calendar chip and the FLEX system (SYSMON, SYSDAY and SYSYR) information.


DESCRIPTION

 The syntax of this command is:

    +++SETCLOCK


 There are two basic versions of 'SETCLOCK' available:

 SETCLK-N ... which is for the National MM58167 clock-calendar.
 SETCLK-H ... which is for the Hitachi HD146818 clock-calendar.

 The former is coded in assembly language suitable for MACE and  is  supplied  to
 match the address of the MM58167 chip on the Windrush 3U-TIM1 board.

 The latter is coded in PL/9 and is supplied to match the address of the HD146818
 chip on the Windrush 3U-TIM2 board.

 You should rename the command file that suits your hardware 'SETCLOCK.CMD'.

 The  source and object files are supplied. The output format of the two commands
 is somewhat different owing to the ability of a high level language like PL/9 to
 control  an  input  line and accept decimal data much easier than can be done in
 assembly language.

 Invoking  the  SETCLOCK  utility  for  the  MM58167  will which will result in a
 question and answer (Q/A) session as follows:


 * * *  WINDRUSH CLOCK-CALENDAR SETTING UTILITY  * * *

 YEAR           (83-99):1985
 MONTH          (01-12):01          see note 1
 DAY OF MONTH   (01-31):08          see note 1
 DAY OF WEEK    (01-07):01          see notes 1 and 2
 TIME - HOURS   (00-23):12          see notes 1 and 3
 TIME - MINUTES (00-59):00          see note 1
 RE-DO AGAIN?     (Y-N):N
 HIT ANY KEY TO START CLOCK <RETURN>

 +++


 NOTE 1: A leading zero '0' must be present 1 through 9, i.e. 01, 02, ... 09.


 NOTE 2: MON  TUE  WED  THU  FRI  SAT  SUN
          01   02   03   04   05   06   07


                                * * SETCLOCK * *


 (continued)


 NOTE 3: The clock is set in 24 hour time thus:

         00 = 12:00 PM (midnight)             13 =  1:00 PM
         01 =  1:00 AM                        14 =  2:00 PM
         02 =  2:00 AM                        15 =  3:00 PM
         03 =  3:00 AM                        16 =  4:00 PM
         04 =  4:00 AM                        17 =  5:00 PM
         05 =  5:00 AM                        18 =  6:00 PM
         06 =  6:00 AM                        19 =  7:00 PM
         07 =  7:00 AM                        20 =  8:00 PM
         08 =  8:00 AM                        21 =  9:00 PM
         09 =  9:00 AM                        22 = 10:00 PM
         10 = 10:00 AM                        23 = 11:00 PM
         11 = 11:00 AM                        24 = 12:00 PM (midnight)
         12 = 12:00 AM (noon)


 The HD146818 version runs like this:


 YEAR          (84 - 99): 1985 <CR>
 DAY OF WEEK   (MON = 1):    1 <CR>  (1 to 7 valid)
 DAY OF MONTH  ( 1 - 31):   1  <CR>
 MONTH OF YEAR ( 1 - 12):   1  <CR>
 HOUR OF DAY   ( 1 - 12):   12 <CR>
 MINUTES       ( 0 - 59):   00 <CR>
 SECONDS       ( 0 - 59):   00 <CR>
 AM OR PM      ( A - P ):   AM <CR>  (you don't type the 'M')

 HIT ANY KEY TO START CLOCK ....


 This  version  will restrict you to within a pre-defined field. You may edit the
 data by back-spacing over an entry. Once the  data  is  ready  simply  hit  <CR>
 (carriage return). Note that leading zeros are not required in this version.


 If an incorrect response is given you will be re-prompted for  the  information.
 Hitting  ^C (CONTROL-C) at any time will return control to FLEX without altering
 the clock registers or  the  FLEX  system  information.  This  applies  to  both
 versions.

 The disc files associated with this utility are as follows:

 SETCLK-N.ASM ... assembly language source file for MM58167 version (TIM1).
 SETCLK-N.CMD ... FLEX TCA command for MM58167 version.

 SETCLK-H.PL9 ... PL/9 source file for HD146818 version (TIM2).
 SETCLK-H.CMD ... FLEX TCA command for the HD146818 version.

 You  should  use  the  RE-NAME  utility  to  rename the appropriate command file
 'SETCLOCK.CMD'.

                                * * SETFORM * *


 The  Windrush  SETFORM utility is used to set up the data table contained within
 the Windrush Enhanced Print Spooler that enables text to  be  printed  within  a
 defined "window" on a page of paper.


DESCRIPTION

 The syntax for SETFORM is:

    SETFORM[,<tskip>,<depth>,<bskip>,<width>]

 <tskip>        is the number of lines that should be skipped at  the  top  of  a
                page,

 <depth>        is the depth of printable lines,

 <bskip>        is  the number of lines that should be skipped at the bottom of a
                page,

 <width>        is the number of character positions across the page.

 The sum of <tskip>, <depth> and <bskip> should match  the  number  of  effective
 lines on the page. For example, an 11" deep page of paper has 66 effective lines
 if the printer has a vertical spacing of 6 lines per inch. The <width> parameter
 is  provided  mainly for centering of page numbers when F is used with the title
 option.

 The range for each parameter are:

          <tskip>   0..255
          <depth>   5..255
          <bskip>   0..255
          <width>  19..255

 If  the  parameters  are  omitted  SETFORM  will  display  the  existing format,
 otherwise the new values will be updated and displayed. If one  parameter  needs
 changing  ALL  have  to  be  specified. In the event of an error in a parameter,
 SETFORM informs which parameter is invalid. Some examples of SETFORM follow:


                                * * SETFORM * *


 (continued)


    +++SETFORM

 Here SETFORM will only print out the current values that PRT,  OUT,  F  and  the
 spooler itself will use. The following few lines are the result of such a call:


 Top      margin is:   2 Lines.
 Printable depth is:  61 Lines.      (NOTE: sheet length is 66 lines.)
 Bottom   margin is:   3 Lines.
 Printable width is:  80 Characters.


    +++SETFORM,5,53,8,132

 This  example will set up the data table for a 132 character width printer, with
 a top margin of 5 lines, 53 printable lines and 8 bottom margin lines.


                                ******************
                                * IMPORTANT NOTE *
                                ******************

 Do  not  use  SETFORM  in  it's  updating mode if the spooler is active. This is
 because the spooler keeps a count of the line on the current page as it is being
 output.  As  each  page is printed this value is compared to the total length of
 each page in order to  allow  the  spooler  to  SEEK  TO  THE  TOP  OF  PAGE  in
 preparation  for the next file to be spooled. Altering the data table will cause
 the spooler to leave the paper in an incorrect position. It  is  permissible  to
 use SETFORM to check on the current values at any time.


 System  programmers  may  be  interested  in  the  following locations which are
 specific to the Windrush implementation of FLEX and our enhanced print spooler:

 $CA50   lines to skip at the top of page

 $CA51   printable lines on a page

 $CA52   lines to skip at bottom of page

 $CA53   width of printed page (columns)

 $CA54   total length of form ($CA50 + $CA51 + $CA52)

 $CA59   Files in print queue

 $CA5B   0 = normal, + = freeze, - = stop

 $CCFC   0 = normal, <>0 spooler active


                                 * * SETUP * *


 The Windrush SETUP utility used in conjunction with the Windrush disc drivers to
 configure the data tables which in turn inform 'MOUNT' (qv) what is available to
 the system. Immediately after system boot the system only has knowledge  of  one
 device ... the device used to boot it. SETUP must called to tell the system what
 else is available.


DESCRIPTION

 SETUP  is  called  by command line only. Parameters for Winchester partitioning,
 floppy discs and the presence, if applicable, of the RAM DISC follow the command
 name. The actual syntax for SETUP is:

    SETUP[,W<parts>][,F<data>][,R][,E]

 where:

 W            introduces (W)inchester partitions
 F            introduces (F)loppy disc drives
 R            introduces the (R)am disc
 E            introduces the r(E)sident command table extension

 <parts>      is <number>[,<parts>],                      up to 16 <number>s
 <data>       is <size>,<steprate>,<tracks>[,<data>],     up to  4 <data>s

 <size>       is either 5 or 8 for 5 1/4" or 8" respectively,
 <steprate>   is the track to track step speed in ms,
 <tracks>     is the number of physical tracks on the drive.

 The  W,  F, R and E are introductory keywords which may only occur once - though
 the actual order is unimportant.


WINCHESTERS

 The 'W' keyword introduces Winchester partitioning. As a Winchester  disc  is  a
 large  entity,  the  Windrush  drivers allow a Winchester to be partitioned into
 more than one entity. For  information  on  what  this  is  and  means  see  the
 documentation  on the Winchester drivers. For the purpose of explaining SETUP it
 is sufficient just to say that it can be done, and it is SETUP that sets up  the
 partitioning table.

 Each  intelligent  Winchester controller (XEBEC S1410A) can handle 2 drives, and
 the Windrush SASI controller can handle 8 Winchester controllers, so  there  can
 be up to 16 drives on the system. For this reason there may be up to 16 entries,
 depending on the actual drives available, following on from the W  keyword.  The
 entry  defines the number of partitions present on the drive. Each entry maps in
 order  thus:

    W X X X X X X X X X X X X X X X X

 would  define  the partitions available for the drives assigned to controller #0
 drive #0, then drive #1, then controller #1 drive #0, then drive #1  ...  up  to
 ...  controller  #7,  drive  #1. If a particular drive is not available for some
 reason you may 'skip' it by inserting a zero (0) entry.

 NOTE: You may use either a space or a comma between data elements.

                                 * * SETUP * *


 (continued)


FLOPPIES

 The  'F'  keyword  introduces the information about floppy drives on the system.
 Each <data> entry maps on to the next physical floppy drive - no  'holes'  being
 allowed.

 The disc <size> is for the controller to function in the correct mode.  If  this
 is  incorrect, the corresponding drive will fail to operate. The FDC used on the
 Windrush floppy disc controller can produce step rates (track-to-track)  between
 3ms  and  30ms.  When  specifying  the  <steprate>  use  the value quoted by the
 manufacturer of your drive. Most modern 5 1/4" drives step at 3ms, with older  5
 1/4"  drives  stepping at 6ms or more! SETUP will work out the closest step rate
 that the controller can provide which is equal to, or greater than, the one  you
 specify. <tracks> are provided to allow the drivers to detect addressing errors,
 and when to enable write precompensation for double density  operation.  Typical
 values  are  35  (very  old  5 1/4") 40 (old 5 1/4") 80 (new 5 1/4") or 77 (8"),
 again refer to the drive manufacturer's data to determine the number  of  tracks
 on  the  drive.  As an example to define four floppy disc drives, physical drive
 numbers 0 - 3, with the first two 5", 3 ms step, 80 track, and  the  second  two
 8", 3 ms step, 77 track the following invocation would be appropriate:

    F 5,3,80 5,3,80 8,3,77 8,3,77

 NOTE: You may use either a space or a comma between data elements.


RAM DISC

 The 'R' keyword introduces the RAM DISC. This appears on it's own and means that
 the RAM-CON.SYS memory-map overlay should be read into memory.


RESIDENT

 The 'E' keyword introduces the RESIDENT command table extension. This appears on
 its  own  and  means that the RES-CON.SYS memory-map overlay should be read into
 memory. If the 'R' option has been specified also and  there  is  a  memory  map
 conflict  the RAM DISC will remain available and the RESIDENT facilities will be
 disabled.


 Assuming that you have used the correct syntax, SETUP then dumps out  it's  data
 in the order Winchester, Floppy , RAM DISC and RESIDENT.

                                   ___________
                                  PLEASE NOTE

          IT  SHOULD  BE  NOTED  THAT AT THIS POINT ONLY THE TABLES HAVE
          BEEN UPDATED.'SETUP' MUST BE  FOLLOWED  BY  'MOUNT' (qv)  IN
          ORDER  TO  ACTUALLY  MOUNT  DRIVES  ON THE SYSTEM. FOLLOWING A
          SUCCESSFUL BOOT, ONLY THE DEVICE BOOTED FROM WILL BE  MOUNTED.
          NOTE  ALSO  THAT  THE  'RESIDENT'  FACILITY MUST BE ENABLED BY
          RES-ON (qv) BEFORE IT CAN BE USED.


                                 * * SETUP * *


 (continued)


 Some examples follow:


    +++SETUP,W,10,20

 This defines partitioning for 2 Winchester drives, both on controller #0  drives
 #0  and  #1.  Drive #0 has 10 partitions, and drive #1 has 20. 30 partitions are
 available in total. From MOUNT's (qv) viewpoint partitions W0 through W9 are  on
 drive  #0  and  partitions  W10 through W29 are on drive #1. If you want to skip
 over a drive for any reason you can 'null' it out with a zero (0) entry thus ...

    +++SETUP,W,0,20

 now, from MOUNT's point of view you would have  partitions  W0  through  W19  on
 drive #1.


    +++SETUP,F,5,3,80,8,6,77,R

 This  defines  two floppy drive mechanisms. Physical floppy #0 is a 5 1/4" drive
 with a step rate of 3ms and having 80 tracks, while physical floppy #1 is an  8"
 drive stepping at 6ms and having 77 tracks. Also on the system is a RAM DISC and
 the RAM-CON.SYS overlay will be loaded.


    +++SETUP W13,F,5,3,80,R,E

 This defines a Winchester with 13 partitions (W0 through W12), a single  5  1/4"
 drive with a step rate of 3ms and having 80 tracks. In addition the RAM DISC and
 RESIDENT facilties  are  both  available  so  the  RAM-CON.SYS  and  RES-CON.SYS
 overlays will be loaded.


    +++SETUP,W,10,20,0,0,15,0,25,F,5,3,80,5,3,80,8,6,77,8,6,77,R

 This is a very EXPENSIVE system which appears to have a faulty  SASI  controller
 and  a  faulty  Winchester  drive. SASI controller #0 has two drives one with 10
 partitions and the other 20. SASI controller #1 appears to have problems  as  it
 is being by-passed. SASI controller #2 has a good drive (#0) with 15 partitions,
 and a drive that is being by-passed. SASI controller #3 has one drive (#0) which
 has  25  partitions. So much for the Winchesters, now for the floppies. Physical
 floppies #0 and #1 are both 5 1/4" devices stepping at 3ms and having 80 tracks.
 Physical  floppies  #2  and #3 are both 8" devices stepping at 6ms and having 77
 tracks. Finally, this system has a RAM DISC, probably  with  960K  byte  of  RAM
 considering the other expense!.


 Additional  information  about  the  current  state  of  the   Floppy   disc(s),
 Winchester(s), RAM DISC and RESIDENT facilities can also be obtained by invoking
 FSTATUS, WSTATUS, RSTATUS and ESTATUS (qv) respectively.

 Also  consult  FORMAT if the floppy disc facilities are to be used, WIN-FORM and
 REFORMAT if the Winchester facilities are to be used, RAM-CON  and  RAM-FORM  if
 the  RAM DISC  facility is to be used and RES-CON, RESIDENT, RES-OFF, RES-ON and
 RES-SAVE if the RESIDENT facilities are to be used,
                                 * * SKIP * *


 The Windrush SKIP utility allows restarting the spooler on a specific page.


DESCRIPTION

 The syntax for the SKIP utility is:

    SKIP

 It  is  a simple invokation because it is data driven as a result of the answers
 to prompted information. There are two ways of using SKIP: the first is used  if
 the  spooler  is  and  has  been  operating  normally; the second is used if the
 printer has been touched so that the spooler may have lost  count  of  the  line
 numbers. An example of each follows:


    +++SKIP

 The  title  banner  is  printed  followed by a request for the page number. This
 should lie in the range 1..256. SKIP then asks if you want  to  abort  the  skip
 operation.  Assuming  you  carry  on, SKIP asks if the printer has been touched.
 This example assumes that it hasn't so you would type "N" (anything  other  than
 "Y" is taken as a no). SKIP then asks if the answers are all correct. Typing "Y"
 will cause the spooler to seek to the  required  page,  otherwise  you  will  be
 prompted from the page number and continue from there onwards.


    +++SKIP

 The title banner is printed followed by a request for the page number. When SKIP
 asks  if you want to abort the skip operation type an "N". When SKIP asks if the
 printer has been touched, reply with a "Y". SKIP then asks you to  position  the
 paper in the printer and then hit a key to continue. You should now position the
 paper correctly in the printer. Hitting any key will cause the spooler  to  seek
 to  the  required page. There is no option to go back over the answers this time
 as the printer has been fiddled with and so a normal  resumption  could  not  be
 affected.


 If the spooler was part way through outputting to the  printer  when  the  first
 example  was  used, it will terminate the print leaving the paper in the correct
 position by seeking to the top of the next page. Irrespective  of  the  type  of
 SKIP  used,  the  spooler  will  then  read  through the file until it finds the
 required page, and then it will start printing from there onwards.


                                * * SPLTITLE * *


 The Windrush SPLTITLE utility is used in conjuction with the  Windrush  Enhanced
 Print  Spooler.  It allows spooled files to have a title page which depicts the:
 file name (no drive number or extension) in a large bold  banner;  the  complete
 filename specification; day, date and time.


DESCRIPTION

 The syntax for this command is:

    SPLTITLE

 This loads the body of the utility below MEMEND as it must be resident  for  the
 spooler  to  access  it.  To  remove  SPLTITLE in order to release the memory it
 occupies, simply type it's name again. SPLTITLE will inform you  of  the  latest
 value of MEMEND.


 After loading the body, submission of jobs to the print spooler with the  PRINTT
 utility  default  to  titles  enabled.  To inhibit the title page, the following
 example invocation of PRINTT can be used:

    +++PRINTT,DIARY,N

 This will submit 0.DIARY.OUT  to  the  spooler  WITHOUT  the  title  page  being
 printed.

 If,  subsequently,  it is realised that the titles should/should not be printed,
 then QCHECKK may be used to  dynamically  change  the  title  attribute.  The  H
 command  (Headings)  is used as T is already used (Terminate). Use the A command
 (Assistance) within QCHECKK to find the actual syntax required.

 NOTE: QCHECKK is clever enough to recognise when the SPLTITLE utility  has  been
       invoked,  and  so  the  H command is only valid (and thus visible to the A
       command) after SPLTITLE has been installed.


 SPLTITLE requires that a clock-calendar kernel either be appended to the body of
 FLEX,  as  it  will  be  on the configured disc, or loaded into memory using the
 'GET' command if using the 'unconfigured disc'. There are two kernels available:
 KERNEL-H.SYS (qv) and KERNEL-N.SYS (qv).


              * * * * * * * * * * * * * * * * * * * * * * * * * * *
              *                                                   *
              *      REMEMBER SPLTITLE RESIDES BELOW MEMEND.      *
              *                                                   *
              * THIS MEANS THAT MEMEND WILL BE LOWER THAN NORMAL! *
              *                                                   *
              * * * * * * * * * * * * * * * * * * * * * * * * * * *


                               * * SPOOL.SYS * *


 This file is the Windrush Enhanced Print Spooler package which may be optionally
 loaded in to replace the resident TSC print spooler.


DESCRIPTION

 The general syntax of this utility is:

    GET,0.SPOOL.SYS

    followed by ...

    GET,0.SPOOL-XX.SYS   (see the next section for details)


 The former will load in the spooler overlay and the  latter  will  load  in  the
 hardware  timer  overlay.  The  CONFIGURED  system  disc  already has BOTH files
 integrated into the body of FLEX itself so there is no need to load them again.

 If you wish to use the standard FLEX spooler you will have to build a  new  disc
 based on the UNCONFIGURED FLEX disc. In this instance DON'T load the file called
 'SPOOL.SYS'; simply load the 'SPOOL-XX' file.

                                     _______
                                    WARNING

 If  you  choose  to  continue using the FLEX spooler you MUST NOT use any of the
 special files described below, as doing so may crash the system.


 a) F         Formats a text file obeying 'SETFORM' parameters.
 b) OUT       directs output to a disc file obeying 'SETFORM' parameters.
 c) PRINTT    submits a file to the spooler.
 d) PRT       directs output to printer obeying 'SETFORM' parameters.
 e) QCHECKK   checks/modifies spooler operation.
 f) S         strips line-feeds from files.
 g) SETFORM   defines printer paper format.
 h) SKIP      submits a file to the spooler skipping a defined number of pages.
 i) SPLTITLE  submits a file to the spooler with a large banner title page
 j) XXOUT     deletes all files with the extension '.OUT'.

 Each of these utility commands is described in detail elsewhere in this manual.

                                     _______
                                    WARNING

 If  you  load in the 'SPOOL.SYS' file you must not, under any circumstances, use
 the TSC 'PRINT' or 'QCHECK' utilities.  You  should  instead  use  the  Windrush
 'PRINTT'  and  'QCHECKK'  utilities.  If  you are used to using the TSC names we
 suggest that you 'RE-NAME' the Windrush utilities PRINT and QCHECK respectively.

 NOTE 1:  The 'F' and 'S' commands are independant of the spooler and  will  work
          properly  with  either  the  TSC spooler or the Windrush Enhanced Print
          Spooler.

 NOTE 2:  The 'DELETE' utility is TSC's and will not check the  Enhanced  Spooler
          queue for files before it deletes them.

                              * * SPOOL-XX.SYS * *


 This is a utility supplied by WINDRUSH to configure the interrupt timer  drivers
 within  FLEX  to  a  specific hardware device, at a specific address. The PRINTT
 (qv) command, which submits files  to  the  spooler,  actually  initialises  the
 device, and runs/stops it.


DESCRIPTION

 The general form of use for SPOOL-XX is:

      GET,0.SPOOL-XX.SYS


 We  can  supply  spooler  interrupt  timer drivers for a variety of devices, the
 Motorola MC6840 programable timer and the Rockwell R6522 VIA. We use  the  '-XX'
 suffix  to  destinguish  between the four types. The first letter codes M, and R
 apply to Motorola and Rockwell respectively. Since these devices may  reside  at
 different  addresses the second letter code is used to differentiate between the
 various possible addresses. The following are a  few  examples  of  the  spooler
 timer drivers we can supply:


    SPOOL-MT    is the MC6840 overlay for our 3U-TIM1 or TIM2 boards.

    SPOOL-RC    is the R6522 overlay for our 3U-CPU1 board.
    SPOOL-RT    is the R6522 overlay for our 3U-TIM1 or TIM2 boards.
    SPOOL-RS    is the R6522 overlay for our 6U-SPIO board.


 The exact address of the device can be found by looking at the assembly language
 source of these modules. If these utilities are part of a 'CONFIGURED' FLEX disc
 we generally only supply  the  version  appropriate  for  the  hardware  we  are
 supplying  it  with  to  prevent  confusion.  The object file will have a '.SYS'
 suffix and the assembly language source file will have a '.ASM' suffix.

 Loading any of these commands (via 'GET') will cause the  appropriate  areas  of
 FLEX to be overlayed with the spooler timer drivers. Once the overlay has loaded
 control will be returned to FLEX.


 NOTE: The 'CONFIGURED' FLEX disc  has  the  appropriate  spooler  timer  overlay
       appended  to  the  body  of  FLEX itself so there is no need to load it in
       again unless you wish to use a different spool interrupt timer device.  If
       you  decide  to  append  your own interrupt driver to FLEX don't forget to
       COMPRESS (qv) the resulting file otherwise the appended  information  will
       never get loaded!


                              * * SPRINT-X.SYS * *


 These are the Windrush supplied serial printer drivers.


DESCRIPTION

 The command syntax required to load a printer driver is:

    GET,0.SPRINT-X.SYS <CR>

 assuming that the printer driver resides on drive #0 as is the convention.


 The 'X' in 'SPRINT-X.SYS' is our method of catering to  various  serial  printer
 ports thus:

 1. SPRINT-M.ASM      This  is  the  assembly  language  source  of  our standard
                      Motorola MC6850 ACIA driver.

 2. SPRINT-R.ASM      This is  the  assembly  language  source  of  our  standard
                      Rockwell R6551 ACIA driver.

 3. SPRINT-C.SYS      This is a configured printer driver for the R6551  ACIA  on
                      our 3U-CPU1 board.

 4. SPRINT-T.SYS      This  is  a configured printer driver for the R6551 ACIA on
                      our 3U-TIM2 board.

 5. SPRINT-1.SYS      This  is a configured printer driver for the 'PORT 1' R6551
                      ACIA on our 6U-SPIO board.

 6. SPRINT-2.SYS      This  is a configured printer driver for the 'PORT 2' R6551
                      ACIA on our 6U-SPIO board.

 7. SPRINT-3.SYS      This  is a configured printer driver for the 'PORT 3' R6551
                      ACIA on our 6U-SPIO board.


                              * * SPRINT-X.SYS * *


                             1 ************************************************
                             2 * SERIAL PRINTER DRIVER THROUGH AN MC6850 ACIA *
                             3 ************************************************
                             4
E000                         5 ACIA     EQU   $E000     PORT 'A' ON '3U-SER1'
                             6
                             7 **************************
                             8 * PRINTER INITIALIZATION *
                             9 **************************
                            10 *
CCC0                        11          ORG   $CCC0     MUST RESIDE AT $CCC0
                            12
CCC0   86 13                13 PINIT    LDA   #$13      RESET ACIA
CCC2   B7 E000              14          STA   ACIA
CCC5   86 11                15          LDA   #$11      8 DATA, 2 STOP, X16 CLK
CCC7   B7 E000              16          STA   ACIA
CCCA   39                   17          RTS             RETURN
                            18
                            19
                            20 ***************************
                            21 * CHECK FOR PRINTER READY *
                            22 ***************************
                            23 *
CCD8                        24          ORG   $CCD8     MUST RESIDE AT $CCD8
                            25
CCD8   34 04                26 PCHK     PSHS  B         SAVE B ACC.
CCDA   F6 E000              27          LDB   ACIA      GET STATUS
CCDD   56                   28          RORB            GET TDR BIT INTO
CCDE   56                   29          RORB            SIGN POSITION
CCDF   56                   30          RORB
CCE0   35 04                31          PULS  B         RESTORE B ACC.
CCE2   39                   32          RTS             RETURN
                            33
                            34
                            35 ************************************
                            36 * PRINTER OUTPUT CHARACTER ROUTINE *
                            37 ************************************
                            38 *
CCE4                        39          ORG   $CCE4     MUST RESIDE AT $CCE4
                            40
CCE4   34 04                41 POUT     PSHS  B         SAVE B ACC.
CCE6   F6 E000              42 POUT2    LDB   ACIA      GET STATUS
CCE9   57                   43          ASRB            GET TDR BIT
CCEA   57                   44          ASRB            INTO CARRY
CCEB   24 F9      (CCE6)    45          BCC   POUT2     LOOP IF NOT READY
CCED   35 04                46          PULS  B         RESTORE B ACC.
CCEF   B7 E001              47          STA   ACIA+1    WRITE OUT THE CHAR.
CCF2   39                   48          RTS             RETURN


                              * * SPRINT-X.SYS * *


                             1 ***********************************************
                             2 * SERIAL PRINTER DRIVER THROUGH AN R6551 ACIA *
                             3 ***********************************************
                             4
E0D0                         5 R6551    EQU   $E0D0     TIM2 ADDRESS
0B9E                         6 CONFIG   EQU   $0B9E     NO PARITY, FULL DUPLEX
                             7 *                        RTS LOW, NO INTERRUPTS
                             8 *                        8 DATA, 2 STOP, 9600 BAUD
                             9 *
0008                        10 RDRF     EQU   %00001000 RECEIVE  REG. FULL
0010                        11 TDRE     EQU   %00010000 TRANSMIT REG. EMPTY
0020                        12 DCD      EQU   %00100000 DCD ASSERTED (ACTIVE LOW)
0040                        13 DSR      EQU   %01000000 DSR ASSERTED (ACTIVE LOW)
                            14
0000                        15          ORG   0
0000                        16 TXDR     RMB   0         (WRITE ONLY)
0000                        17 RXDR     RMB   1         (READ  ONLY)
0001                        18 RESET    RMB   0         (WRITE ONLY)
0001                        19 STATUS   RMB   1         (READ  ONLY)
0002                        20 COMMAND  RMB   1         (READ/WRITE)
0003                        21 CONTROL  RMB   1         (READ/WRITE)
                            22
                            23 **************************
                            24 * INITIALIZE THE PRINTER *
                            25 **************************
                            26 *
CCC0                        27          ORG   $CCC0
CCC0   34 06                28 PINIT    PSHS  D         (FULLY TRANSPARENT)
CCC2   CC 0B9E              29          LDD   #CONFIG
CCC5   B7 E0D1              30          STA   R6551+RESET (PROGRAMMED RESET)
CCC8   FD E0D2              31          STD   R6551+COMMAND (WRITE COMMAND+CONTROL)
CCCB   35 86                32 PULS_DPC PULS  D,PC
                            33
CCCD   C5 10                34 PATCH    BITB  #TDRE     (ANY UP THE SHUTE?)
CCCF   27 FA      (CCCB)    35          BEQ   PULS_DPC  IF PISO+LATCH FULL, ELSE
CCD1 1A08                   36          SEN             SHOW FREE ("MI" STATUS)
CCD3   35 86                37          PULS  D,PC
                            38
                            39 **************************
                            40 * CHECK IF PRINTER READY *
                            41 **************************
                            42 *
CCD8                        43          ORG   $CCD8
CCD8   34 06                44 PCHK     PSHS  D
CCDA   F6 E0D1              45          LDB   R6551+STATUS
CCDD   C5 60                46          BITB  #DSR+DCD  (H/W HANDSHAKE DETECTED)
CCDF   26 EA      (CCCB)    47          BNE   PULS_DPC  IF H/W HALTED
CCE1   20 EA      (CCCD)    48          BRA   PATCH     (RAN OUT OF MEMORY!)
                            49
                            50 *********************************
                            51 * OUTPUT A CHARACTER TO PRINTER *
                            52 *********************************
                            53 *
CCE4                        54          ORG   $CCE4
CCE4   8D F2      (CCD8)    55 POUT     BSR   PCHK
CCE6   2A FC      (CCE4)    56          BPL   POUT      UNTIL FREE
CCE8   B7 E0D0              57          STA   R6551+TXDR
CCEB   39                   58          RTS
                                    STARTUP


 STARTUP is not a utility command but is a feature of FLEX. It is often desirable
 to   have   the  operating  system  do  some  special  action  or  actions  upon
 initialization of the system (during  the  bootstrap  loading  process).  As  an
 example,  the  user  may always want to use BASIC immediately following the boot
 process. STARTUP will allow for this without the necessity of calling the  BASIC
 interpreter each time.


DESCRIPTION

 FLEX always  checks  the  disc's  directory  immediately  following  the  system
 initialization  for  a file called STARTUP.TXT. If none is found, the three plus
 sign prompt is output and the system is ready to accept user's  commands.  If  a
 STARTUP file is present, it is read and interpreted as a single command line and
 the appropriate actions are performed. As an example, suppose we wanted FLEX  to
 execute  BASIC  each time the system was booted. First it is necessary to create
 the STARTUP file:

     +++BUILD,STARTUP
       =BASIC
       =#
     +++

 The  above  procedure using the BUILD command will create the desired file. Note
 that the file consisted of one line (which is all FLEX reads  from  the  STARTUP
 file  anyway). This line will tell FLEX to load and execute BASIC. Now each time
 this disc is used to boot the operating system, BASIC will also  be  loaded  and
 run.  Note  that  this  example assumes two things. First, the disc must contain
 WMFLXxxx.SYS and must have been LINKed in order for the boot to  work  properly.
 Second, it is assumed that a file called BASIC.CMD actually exists on the disc.

 Another  example  of  the use of STARTUP is to set system environment parameters
 such as TTYSET parameters or the assignment of a system and  working  drive.  If
 the STARTUP command consisted of the following line:

     TTYSET,DP=24,WD=80:ASN,W=1:ASN:CAT,0

 each time the system was booted the following actions would occur.

 First,  TTYSET would set the 'depth' to 24 and the 'width' to 80. Next, assuming
 the 'end of line' character is the ':', the ASN command would assign the working
 drive  to drive 1. Next ASN would display the assigned system and working drives
 on the terminal. Finally, a CATalog of the files on drive 0 would be  displayed.
 For  details  of  the  actions  of  the  individual  commands,  refer  to  their
 descriptions elsewhere in this manual.


                                    STARTUP


 (continued)


 As  it stands, it looks as if the STARTUP feature is limited to the execution of
 a single command line comprising a maximum of 128 characters. This is  true  but
 there  is  a  way  around the restriction, the EXEC command. If a longer list of
 operations is desired than will fit on one line, simply create  a  command  file
 containing all of the commands desired. Then create the STARTUP file placing the
 single line:


     EXEC,<file name>


 where <file name> would be replaced by the name assigned  to  the  command  file
 created. A little imagination and experience will show many uses for the STARTUP
 feature.

 By directing STARTUP to a file that does not have a return to DOS command it  is
 possible  to  lockout  access to DOS. You can correct the problem by hitting the
 RESET button and beginning execution at address $CD03. The STARTUP file may then
 be  deleted and if desired, modified. Directing execution to $CD03, the DOS warm
 start address, bypasses the DOS STARTUP function.


 We suggest that you configure a STARTUP file to include, as a minimum, calls to:

 1. SETUP to configure the FLEX disk drivers to match the characteristics of your
    mass storage devices.

 2. MOUNT to define the logical drive assignments.

 2. TTYSET to configure the FLEX console I/O drivers to match the characteristics
    of your terminal.

 3. GET, XPRINT-X.SYS to load in the printer driver you use most often.

 4. ASN to establish the default system and work drives.

 6. DATIME to read the system clock (if present)


 NOTE 1: The 'CONFIGURED' disc supplied by Windrush  has  all  of  these  aspects
         taken  care  of  in  two startup files, one called 'STARTUP.TXT' and the
         other called 'MYSTART.TXT' (qv).

 NOTE 2: The FIXES.SYS, SPOOL.SYS and SPOOL-XX.SYS  files  are  appended  to  the
         configured  version of FLEX supplied so there is no need to load them in
         again during STARTUP.


                                     TTYSET


 The  TTYSET  utility  command  is  provided  so  the  user   may   control   the
 characteristics  of  the terminal. With this command, the action of the terminal
 on input and the display format on output may be controlled.


DESCRIPTION

 The general syntax of the TTYSET command is:

     TTYSET[,<parameter list>]

 where  <parameter  list> is a list of 2 letter parameter names, each followed by
 an equals sign ('='), and then by  the  value  being  assigned.  Each  parameter
 should  be  separated  by  a  comma  or a space. If no parameters are given, the
 values of all of the TTYSET parameters will be displayed on the terminal.

 The default number base for numerical values is the base most appropriate to the
 parameter.  In  the  descriptions that follow, 'hh' is used for parameters whose
 default base is hex; 'dd' is used for  those  whose  default  base  is  decimal.
 Values  which  should  be expressed in hex are displayed in the TTYSET parameter
 listing preceded by a '$'. Some examples follow:

     +++TTYSET
     +++TTYSET,DP=16,WD=63
     +++TTYSET,BS=8,ES=3

 The first example simply lists the current values of all  TTYSET  parameters  on
 the  terminal.  The  next  line sets the depth 'DP' to 16 lines and the terminal
 width, 'WD' to 63 columns. The last example sets the backspace character to  the
 value of hex 8, and the escape character to hex 3.

 The  following  fully  describes  all  of the TTYSET parameters available to the
 user. Their initial values are defined, as well as any  special  characteristics
 they may possess.


BS=hh     (B)ack(S)pace character

 This sets the 'backspace' charcter to the character having the ASCII  hex  value
 of hh. This character is initially a 'control H' (hex 08), but may be defined to
 any ASCII character. The action of the backspace character is to delete the last
 character  typed  from  the terminal. If two backspace characters are typed, the
 last two characters  will  be  deleted,  etc.  Setting  BS=0  will  disable  the
 backspace feature.


                                     TTYSET


 (continued)

BE=hh     (B)ackspace (E)cho character

 This defines the character to be  sent  to  the  terminal  after  a  'backspace'
 character  is  received.  The character printed will have the ASCII hex value of
 hh. This character is initially set to a null  but  can  be  set  to  any  ASCII
 character.

 The BE command also has a very special use that will be of interest to owners of
 reasonably  inteligent  terminals  such  as  the Soroc IQ120 or the Lear Siegler
 ADM3.

 If a hex 08 is specified as the echo character, FLEX will output  a  space  (20)
 then another 08. This feature is very useful for terminals which decode a hex 08
 as a cursor left but which do not erase characters as the cursor is moved.

      Example:  Say that you mis-typed the word cat as shown below:
                +++CAY

 typing  in  one  CTRL-H  (hex  08) would position the cursor on top of the Y and
 delete the Y from the DOS input buffer. FLEX would then send out a  space  ($20)
 to erase the Y and another 08 (cursor left) to re-position the cursor.


DL=hh     (D)e(L)ete character

 This  sets  the  'delete  current  line'  character  to  the  hex value hh. This
 character is initially a  'control  X'  (hex  18).  The  action  of  the  delete
 character  is  to  'erase' the current input line before it is accepted into the
 computer for execution. Setting DL=0 will disable the line delete feature.


EL=hh     (E)nd of (L)ine character

 This character is the one used by FLEX to  separate  multiple  commands  on  one
 input  line.  It  is  initially set to a colon (':'), a hex value of 3A. Setting
 this character to 0 will disable the multiple command  per  line  capability  of
 FLEX.  The parameter 'EL=hh' will set the end of line character to the character
 having the ASCII hex value of hh. This character must  be  set  to  a  printable
 character (control characters not allowed).


DP=dd     (D)e(P)th count

 This  parameter specifies that a page consists of dd (decimal) physical lines of
 output. A page may be considered to be the number of lines between the  fold  if
 using  fan  folded paper on a hard copy terminal, or a page may be defined to be
 the number of lines which can be displayed  at  any  one  time  on  a  CRT  type
 terminal.  Setting DP=0 will disable the paging (this is the initial value). See
 EJ and PS below for more details of depth.


                                     TTYSET


 (continued)

WD=dd     (W)i(D)th

 The WD parameter specifies the (decimal) number of characters to be displayed on
 a  physical  line  at the terminal (the number of columns). Lines of text longer
 than the value of width will be 'folded' at every multiple of WD characters. For
 example,  if WD is 50 and a line of 125 characters is to be displayed, the first
 50 characters are displayed on a physical line at  the  terminal,  the  next  50
 characters  are  displayed on the next physical line, and the last 25 characters
 are displayed on the third physical line. If WD is set to 0, the  width  feature
 will  be  disabled, and any number of characters will be permitted on a physical
 line.


NL=dd     (N)u(L)l count

 This parameter sets the (decimal) number of non-printing (Null) 'pad' characters
 to  be  sent  to  the terminal at the end of each line. These pad characters are
 used so the terminal carriage has enough time  to  return  to  the  left  margin
 before  the  next  printable  characters are sent. The initial value is 4. Users
 using CRT type terminals may want to  set  NL=0  since  no  pad  characters  are
 usually required on this type of terminal.


TB=hh     (T)a(B) character

 The  tab character is not used by FLEX but some of the utilities may require one
 (such as the Text Editing System). This parameter will set the tab character  to
 the  character  having  the  ASCII  hex value hh. This character should NOT be a
 printable character.


EJ=dd     (EJ)ect count

 This parameter is used to specify the (decimal) number of 'eject  lines'  to  be
 sent  to  the  terminal at the bottom of each page. If Pause is 'on', the 'eject
 sequence' is sent to the terminal after the pause is terminated. If the value dd
 is  zero (which it is by default), no 'eject lines' are issued. An eject line is
 simply a blank line (line feed) sent to the terminal. This feature is especially
 useful  for  terminals with fan fold paper to skip over the fold (see Depth). It
 may also be useful for certain CRT terminals to be able to  erase  the  previous
 screen contents at the end of each page.


                                     TTYSET


 (continued)


PS=Y/N    (P)au(S)e control

 This parameter enables (PS=Y) or disables (PS=N) the end-of-page pause  feature.
 Only  upper  case  'Y'  or  'N' should be used as lower case letters will not be
 recognized. If Pause is on and depth is set to some nonzero  value,  the  output
 display  is  automatically  suspended at the end of each page. The output may be
 restarted by typing the 'escape' character (see ES  description).  If  pause  is
 disabled, there will be no end-of-page pausing. This feature is useful for those
 using high-speed CRT terminals to suspend output long enough to read the page of
 text. Also see PROMPT (qv).


ES=hh     (ES)cape character

 The character whose ASCII  hex  value  is  hh  is  defined  to  be  the  'escape
 character'.  Its  initial  value  is  $1B,  the  ASCII ESC character. The escape
 character is used to stop output from being displayed, and once it  is  stopped,
 restart  it again. It is also used to restart output after Pause has stopped it.
 As an example, suppose you are LISTing a long text file on the terminal and  you
 wish  to  temporarily  halt the output. Typing the 'escape character' will cause
 the output to halt at the end of a  line,  i.e.  on  the  next  occurance  of  a
 carriage  return ($0D) in the data being output. Once the output has been halted
 typing another 'escape character' will resume output, while typing a RETURN  key
 will  cause  control  to  return  to FLEX and the three plus sign prompt will be
 output to the terminal.


 NOTE 1:  This  feature is not supported for output directed through any FLEX I/O
          routine other than 'PUTCHR'.

 NOTE 2:  If output is being directed to a printer it may take some time for  the
          printing  to stop after hitting <ESCAPE> due to the character buffer in
          the printer, the larger the buffer, the longer the wait.

 NOTE 3:  If  the  Windrush  'PROMPT' utility (qv) has been invoked a banner will
          appear whenever the output has been halted by the <ESCAPE>  key  or  by
          the TTYSET PAUSE (PS=Y).


                                 * * UCASE * *


 This Windrush utility is supplied  specifically  to  convert  PL/9  source  file
 statements from lower to UPPER case letters.


DESCRIPTION

 The command line syntax of this utility is:

    UCASE,<filespec>

 where <filespec> is any PL/9 source file.


 The utility is intelligent enough to leave the following arguments intact:

 1. A comment field, e.g. /* COMMENT */

 2. A string enclosed within double quotes, e.g. "STRING"

 3. A character following a single quote, e.g. 'A


                                  _____________
                                 W A R N I N G

                  THIS UTILITY MAKES USE OF MEMORY BELOW MEMEND!

                DO NOT CALL IT FROM WITHIN BASIC, PL/9, MACE, ETC.


                                 * * UPLOAD * *


 This  Windrush  utility is provided to assist in the transfer of TEXT files from
 another system via the serial link on the Windrush TIM2 board. As  supplied  the
 utility  expects  the  incoming  text  file to be capable of loading into 48K of
 memory or less ($0000 -> MEMEND). This utility  may  not  be  used  to  transfer
 binary  information  as  the  incomming data is written to disc in TSC TEXT file
 format, complete with space compression.


DESCRIPTION

 The syntax for UPLOAD is:


    UPLOAD


 This  will  result  in  operating  instructions  being displayed followed by the
 following prompt:

    ENTER OUTPUT FILENAME :-

 You should now enter the file name in the form N.XXXXXXXX.ZZZ

 where ...

 'N'          is the drive number, which defaults to the work drive
 'XXXXXXXX'   is the file name
 'ZZZ'        is the file extension, which defaults to .TXT


 The file specified will now be opened for write ...


 The transfer may now  be  initiated.  When  complete  hitting  any  key  on  the
 keyboard  will  cause  the accumulated data in memory to be saved out to disc in
 TEXT file format.


 If  the  incoming  data attempts to overflow the buffer limits set by MEMEND the
 following prompt will appear:

    BUFFER IS FULL!   ABORT OR SAVE BUFFER?   (A/S) :-


 You can now abort the operation and return smoothly to FLEX after the previously
 opened file is deleted. Alternatively you can save the contents of memory out to
 disc as normal in order to recover what you can.


 The largest file that can be copied across with 48K  of  user  memory  available
 (MEMEND at $BFFF) is 192 (256 byte) sectors.


                                 * * UPLOAD * *


 (continued)


HARDWARE DETAILS

 The TIM2 serial port is initialised for:

                 9600 BAUD, 8 DATA BITS, 2 STOP BITS, NO PARITY


 The interconnecting cable between the TIM2  port  and  the  external  system  is
 assumed to be:

          ___________________              ___________________
                TIM2                           OTHER SYSTEM
         DB25 MALE CONNECTOR            DB25 MALE CONNECTOR

               PIN                              PIN

 (data in)       2 <----<----<----<----<----<----<- 3  (data out) see below
 (common)        7 -------------------------------- 7  (common)


 The  TIM2  is  configured  as  a  'DCE'.  If the distant end is a 'DCE' (as most
 computer ports are) the 'data out' will originate from pin 3  as  indicated.  If
 the distant end is a 'DTE' the 'data out' will originate from pin 2.


 NOTE 1:  The source program is supplied (on the unconfigured disc) to enable you
          to  alter  the  baud  rate,  word  format,  etc  or  to  add   hardware
          handshaking,  XON/XOFF software handshaking, etc., in order to transfer
          files larger than 48K.


 NOTE 2:  If you have a TEXT file larger than can be UPLOADed we  recommend  that
          you  split  the  file  at  the  distant  end, send it across in several
          segments, and then use 'APPEND' to produce a single file again. This is
          generally far easier than attempting to get the whole  file  across  by
          hardware (CTS) or software (XON/XOFF) handshaking.


                                  * * VER * *


 The Windrush VER utility is used to interrogate system commands and utilities to
 determine which version is being used. All .CMD files should have such a version
 number coded into them - unless they have been written in PL/9  which  does  not
 support the structure required to generate imbedded version numbers.


DESCRIPTION

 The syntax for VER is:


    VER,<filename>[,<filename>]


 <filename>     is the filename in question. The defaults for the filename are  a
                .CMD extension on the system drive.


 It is possible to optionally include more filenames in the  same  invocation  of
 VER  -  this will help when checking version numbers of several different files.
 VER can detect version numbers as being in one of three main formats: TSC,  SWTP
 and WMS. Some examples follow:


    +++VER,VER

 This will display the version number of the release of VER being used.


    +++VER,TEST.BIN.1,DUMP.2

 Here  the  file  TEST.BIN on drive #1 will be interrogated, followed by the file
 DUMP.CMD on drive number 2.


 VER  will  print  out  the  filename,  creation date and version number for each
 requested file. If the system is defaulted to ALL the utility could  be  on  any
 drive,  and so a "?" is printed for the drive number. Various problems can occur
 and they will be displayed, examples  are:  unoptimised,  not  binary,  invalid,
 can't locate the file.


                                     VERIFY


 The VERIFY command is used to set the  File  Management  System's  write  verify
 mode.  If  VERIFY  is on, every sector which is written to the disc is read back
 from the disc for verification  (to  make  sure  there  are  no  errors  in  any
 sectors). With VERIFY off, no verification is performed.


DESCRIPTION

 The general syntax of the VERIFY command is:

     VERIFY[,ON]
        or
     VERIFY[,OFF]

 where ON or OFF sets the VERIFY mode accordingly. If VERIFY is typed without any
 parameters,  the  current  status  of  VERIFY will be displayed on the terminal.
 Example:

     +++VERIFY,ON
     +++VERIFY

 The  first example sets the VERIFY mode to ON. The second line would display the
 current status (ON or OFF) of the VERIFY mode. VERIFY causes slower write times,
 but it is recommended that it be left on for your protection.


                                    VERSION


 The  VERSION utility is used to display the version number of a utility command.
 If problems or updates ever occur in any of the utilities, they may be  replaced
 with  updated  versions.  The  VERSION command will allow you to determine which
 version of a particular utility you have.


DESCRIPTION

 The general syntax of the VERSION command is:

     VERSION,<file spec>

 where  <file  spec>  is  the  name of the utility you wish to check. The default
 extension is CMD and the drive defaults to the working drive. As an example:

     +++VERSION,0.CAT

 would display the version number of the  CAT  command  (from  drive  0)  on  the
 terminal.


                                * * WIN-FORM * *


 The Windrush WIN-FORM utility is used to perform the internal (hard)  format  of
 the  Winchester  required  by  the intelligent controller and also partition and
 format the Winchester for use with FLEX on the system.


DESCRIPTION

 The syntax for the WIN-FORM command is:

    WIN-FORM

 As  the  utility will only be infrequently used to format the Winchester disc an
 interactive mode of operation is employed.


 To  make  your  life easier the WIN-FORM utility is 100% stand-alone ... it does
 not make use of any of the FLEX drivers or BOOT-ROM code. This utility  directly
 accesses  the Winchester drive via the SASI controller. Thus the Winchester need
 not be defined by SETUP or mounted by MOUNT in order to invoke WIN-FORM.

 A few definitions are in order at this juncture ...


INTERNAL (HARD) FORMAT

 This  portion  of  the  program  tells  the  hard  disc controller to format the
 Winchester from the start of the disc to the end of the  disc.  The  purpose  of
 this  format  operation, in simple terms, is to establish the format required by
 the intelligent controller to find its way around the Winchester  platters.  Bad
 tracks  are  automatically  mapped  to  alternate tracks. The first track of the
 first platter is reserved for  internal  purposes  with  all  remaining  sectors
 available to the FLEX formatter. At the end of the internal format the the drive
 characteristics and bootstrap loader are placed in the  reserved  space  on  the
 disc.  Space  in  the  reserved  area  is  also  allocated  for the partitioning
 information placed on the disc by the FLEX  formatter.  Generally  speaking  the
 only time you should ever have to perform the internal (hard) format is when you
 want to re-define the Winchester partitions or after the Winchester has been  in
 use for some considerable time and you want a confidence test of the media.


FLEX FORMAT

 This  portion  of the program links the internal formatted sectors in the manner
 expected by FLEX and also allows you to partition the available storage space to
 suit your requirements.


REFORMAT

 This  is  a  seperate  utility  (qv)  which allows you to re-format a Winchester
 partition in order to clean up its directory or to re-build a partition that has
 been  destroyed  by  a  system crash or a badly written program. REFORMAT simply
 performs the FLEX format operation on  the  previously  defined  partition.  The
 partition must be 'MOUNT'ed in order to use the REFORMAT utility.


                                * * WIN-FORM * *


 (continued)


 The  following  is  a  sample  session  to  show you how WIN-FORM operates. When
 invoked the first thing WIN-FORM will ask you is:


 WINDRUSH WINCHESTER DISC FORMATTER  V:X.X
 =========================================

 Enter controller number  (standard controller = 0)            (0-7) : 0 <CR>
 Enter drive number       (standard drive = 0)                 (0-1) : 0 <CR>
 Do you want to perform the internal/hard format?              (Y/N) : Y <CR>


 WINDRUSH WINCHESTER INTERNAL/HARD FORMATTER
 ===========================================

 Rodime drives supported       enter
 -----------------------       -----
  5.25 MB       RO201            1
 10.50 MB       RO202            2
 15.75 MB       RO203            3
 21.00 MB       RO204            4
 31.50 MB       RO206            5
 42.00 MB       RO208            6
  5.00 MB       RO351            7
 10.00 MB       RO352            8
                special drive    S

 Enter choice . . . . . . . . . . . . . . . . . . . . . . . . . . .  : 8 <CR>

 A single key is entered and if one of the standard  devices  is  chosen  default
 values  for  the  device  characteristics  are used. If special drive support is
 selected the user is prompted for the following :-

 Enter maximum number of cylinders  . . . . . . . . . . . . . . . .  : 306
 Enter number of heads  . . . . . . . . . . . . . . . . . . . . . .  : 4
 Enter starting reduced write current cylinder  . . . . . . . . . .  : 128
 Enter starting write precompensation cyclinder . . . . . . . . . .  : 64
 Enter maximum ECC burst length . . . . . . . . . . . . . . . . . .  : 11
 Enter step speed control byte  . . . . . . . . . . . . . . . . . .  : 8


 These values (for a RODIME RO-352) are the physical characteristics of the drive
 connected to the controller. Should it be necessary to use  the  special  format
 the  necessary  information  for the drive can be obtained from the handbook for
 the drive concerned or from the manufacturers  of  the  drive.  The  step  speed
 control  byte can be found in the controller (XEBEC) handbook. Provision is made
 in our implementation for physically different discs to be used  with  the  same
 disc controller at the same time.


 Enter sector interleave  (15 is standard)                           : 15 <CR>

 The  user  can  enter a physical interleave value for the drive if a non default
 value is desired, or just hit return to enter the default value (15).

                                * * WIN-FORM * *


 (continued)


 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *                                                             *
 * WARNING ... PRECEEDING WILL RESULT IN ALL DATA BEING LOST!  *
 *                                                             *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

 Do you want to proceed?                                       (Y/N) : Y
 Do you want to quit?  (This is your last chance!)             (Y/N) : N


 This is your insurance! The way the questions are posed prevents an accidental Y
 ... Y response from initiating the internal format. Once the internal format  is
 started  all  data  currently  present  on  the Winchester will be erased and no
 amount of control Cs will stop it as the disc controller is doing all  the  work
 at this point.


 * *  INTERNAL/HARD FORMAT INITIATED  * *


 The internal format will  take  a  bit  over  two  (2)  minutes  with  a  10  MB
 Winchester.


 Two messages may occur during the internal format process:

 a) Formatting bad track (cylinder/head/sector ... in hex)
 b) Formatting alternate track(s)

 A  Winchester  is  permitted  to  have  a  pre-defined number of bad tracks. Our
 software automatically takes care of allocating alternate tracks whenever a  bad
 track is discovered.


 At  the  end  of the internal format the following messages will appear in rapid
 succession:

 a) Writing Winchester parameters to reserved track.
 b) Writing FLEX loader to reserved track.


                                * * WIN-FORM * *


 (continued)


 Once the internal (hard) format is completed the disc can  be  accessed  by  the
 controller but at the moment is useless to FLEX. When the internal formatter has
 completted its job the user will be prompted for the partitioning information:


 NOTE: If the control information imparted to the disc  by  the  internal  format
       cannot be read at this point (due to a system crash, etc) the user will be
       prompted to perform an internal format of the disc as when the utility  is
       first  invoked.  This  note  is here in the event you skipped the internal
       format option when you invoked WIN-FORM.


 WINDRUSH WINCHESTER FLEX FORMATTER
 ==================================

 Available disc space is nnnn sectors.    (39008 sectors for 10 MB is typical)

 Enter floppy size to emulate or 'S' for special format      (5/8/S) : 5


 Now  here  is  where  the OPTIONS really start! The formatter can produce a disc
 partition (WINI FLOPPY) to simulate a 5 inch or 8 inch floppy disc. To produce a
 floppy  simulation  enter  5 or 8. To produce a partition that is not compatible
 e.g. to create a large amount of storage, possibly as as one drive enter S.

 For a floppy disc emulation the number of sectors per track is calculated  based
 on the the answers to the following questions :-

 (S)ingle or (D)ouble sided?                                   (S/D) : D
 (S)ingle or (D)ouble density?                                 (S/D) : D
 Number of tracks to format?                                 (2-255) : 80 <CR>

 Without extension the directory can hold <nnn> entries.
    With extension the directory can hold <nnn> entries.

 Do you wish to extend the directory?                          (Y/N) : Y

 As with the WINDRUSH floppy formatter, it is possible to reserve  extra  sectors
 at  the  start of the disc for the directory. This extension speeds up directory
 searches. To enable the extension answer  'Y',  if  extension  is  not  required
 answer 'N'.


 For a special format the number of sectors per track is requested explicitly:-

 Number of sectors per track?                               (10-255) :
 Number of tracks to format?                                 (2-255) :

 If  you  want to format the entire disc simply take the square root of the total
 sectors available (presented earlier), round the  result  DOWN  to  the  nearest
 whole  number and supply this number (or 255 if greater than 255) in response to
 both of the above prompts.

                                * * WIN-FORM * *


 (continued)


 The  formatter now informs you of the number of identical partitions it can make
 on the disc and requests the number required :-


 You can format up to nnn partitions in this format.

 How many would you like?                  : 13 <CR>

 This format run will use nn sectors (nn.n Kbytes)


 Volume name?                              : XXXXXXXX.XXX <CR>

 The default volume name is FLEX6809WMS this can be changed when  the  prompt  is
 displayed. If a carriage return is entered the default name is used.


 Volume number?                            : 0 - 65535 <CR>

 Ready to start formatting?  (Y/N)         : Y
 Do you want to quit? (LAST CHANCE)  (Y/N) : N

 At this point the program starts writing the  formatting  information  onto  the
 disc.  The  current  physical  partition  number  and  the  count  of partitions
 formatted on this run of the formatter is  displayed  for  each  partition.  The
 progress  of  the  formatting  is  displayed  for  both the writing pass and the
 verification pass thus:


 Formatting WINI FLOPPY partition number nnn, volume number nnn, of this run.

 Writing track sector
           nn    nn
 Testing track sector
           nn    nn

 Formatting complete.  Available space = <nnnn> sectors


 If you have not used all of the available sectors at the end of the  format  run
 the  FLEX  formatter prompt will be reissued. You can continue to format several
 partitions or you can just hit CONTROL 'C' to return to FLEX. If you leave space
 on the Winchester it will not be lost ... you  can  always  run  WIN-FORM  again
 later and use all or just a portion of the remaining space. You should note that
 any sector count less than 20 cannot be used as this is the minimum  disc  size!
 SO if you have a sector count of 20 or less you might as well hit CONTROL  C  to
 return  to  FLEX.  As with most WINDRUSH utilities hitting control C at any time
 aborts the formatting process and leaves the Winchester in a state suitable  for
 further  formatting without any loss of space. Any partially formatted partition
 will be ignored.

 NOTE:  WIN-FORM should not be used to perform the hard format with  any  of  the
        Winchester  partitions MOUNTed. You should first unMOUNT every Winchester
        partition by mounting the null device. Once the formatting  is  completed
        you may reMOUNT the Winchester partitions as required.
                                * * WSTATUS * *


 The Windrush WSTATUS utility is used to tell  you  the  current  status  of  the
 various Winchester partitions available to the system.


DESCRIPTION

 The invocation of this utility is as follows:

    WSTATUS

 when invoked the current status of the various  Winchester  partitions  will  be
 displayed.


                                      XOUT


 XOUT is a special form of the delete command which deletes all files having  the
 extension .OUT.


DESCRIPTION

 The general syntax of XOUT is:

     XOUT[,<drive spec>]

 where <drive spec> is the desired drive number. If no drive  is  specified  all,
 .OUT  files  on the working drive will be deleted and if auto drive searching is
 enabled, all .OUT files on drives 1 and 2 will be deleted. XOUT will not  delete
 any files which are delete protected or which are currently in the print queue.

     Example:
     +++XOUT
     +++XOUT 1


                                 * * XXOUT * *


 The  Windrush  XXOUT utility is used to delete files with a .OUT extension. This
 utility will only delete files which are NOT in the spooler queue.


DESCRIPTION

 The syntax for XXOUT is:


    XXOUT[,<drive>]

 <drive>        is an optional drive number. If omitted the drive defaults to the
                defined  system drive. If in turn this is defined as ALL then all
                on-line drives will be processed.


 XXOUT deletes all those files that are found on the drive(s) specified/defaulted
 which  are  NOT IN THE SPOOLER QUEUE. This utility is therefore a safer way than
 using ZAP to clean up the .OUT files as it will not leave the  spooler  pointing
 into the free chain! Some examples follow:


    +++XXOUT

 Here, all .OUT files on the system drive (or all on-line  drives  if  system  is
 defined as ALL) that are NOT IN THE SPOOLER QUEUE will be deleted.


    +++XXOUT,3,1

 Those .OUT files on drive #3 and then #1 will be deleted if they are NOT IN  THE
 SPOOLER QUEUE.


                                   * * Y * *


 The Windrush 'Y' utility is used as a source of input which always returns a "Y"
 character as though it had been typed from the keyboard in response to a request
 for input.


DESCRIPTION

 The command line syntax for the Y command is:

    Y,<command>

 <command>      is  the actual command that is to execute followed, if necessary,
                by it's parameters.

 Whenever <command> expects to get input, it will "see" a "Y" typed at  it.  This
 may  seem  a  trivial  task,  but the following example (where it is often used)
 demonstrates it's usefulness:

    +++Y,COPY,0,1

 This will copy all files from drive number 0 to drive number 1. If a file exists
 on drive number 1, both the  the  "delete"  and  "are  you  sure"  prompts  will
 automatically  be  answered  by a "Y", therefore the effect of this command line
 would be to copy all files existing on drive number  0  to  drive  number  1  in
 addition to those that did not exist.

 Also see the 'N' command.


                                  * * YEAR * *


 The Windrush YEAR utility is to alter the system year register, or  display  the
 current system year which is stored at $CC10.


DESCRIPTION

 The syntax for YEAR is:


    YEAR

    YEAR,<year>


 <year>     is a number in the range 0..99.


 The first type of call will print out what the computer thinks the present  year
 actually  is.  The  second  type  will  set the system year to become <year>. An
 example of each follows:


    +++YEAR

 This will merely inform you of the system's year.


    +++YEAR,85

 This will set the system's year register to '85'.


 YEAR is normally used because some types of real-time  clock-calendar  chips  do
 not  have  a  year  register  internally.  When such a system is booted up, YEAR
 should be invoked in the STARTUP file/sequence followed by a call on the utility
 that  reads  the clock-calander to put the day and month into the date registers
 of the computer. The call to YEAR will only need to be changed/edited  annually,
 e.g.  on  1st January 1986 it should be made to be "YEAR,86", and on 1st January
 1987 "YEAR,87". For all times  in-between,  the  STARTUP  file  will  cause  the
 currently defined year to be put into the computer's year register.


                                  * * ZAP * *


 The  Windrush  ZAP utility is used to erase files without any user intervention.
 It is also very useful for deleting all files on a disc very quickly - hence  it
 should  be USED WITH CAUTION. It will not delete any WRITE or DELETE protected
 files ... but it will have tried to!


DESCRIPTION

 The syntax for the ZAP utility is:

    ZAP[,<drives>][,<matchlist>]

 <drives>       is: <drive #>[,<drives>] where  <drive  #>  is  a  valid  on-line
                drive,

 <matchlist>    is:  <match>[,<matchlist>]  where  <match>  is  either  (or both)
                part(s) (or all) of a filename or extension.

 Omission of <drives> defaults to the defined work drive which in  turn  defaults
 to  each  drive  on  the  system  if  ALL  is defined. Omission of a <matchlist>
 defaults to all directory entries.

 Having typed a command line no further action is needed.


 NOTE:     If a BIG MISTAKE has been made, hitting ^C  (control-C)  at  any  time
           will result in a clean return to FLEX.


 Some examples of ZAP follow:

    +++ZAP

 This will cause all files on the work drive (defined by ASN) to be deleted. This
 invocation can beCATASTROPHICif the work drive is defined as 'ALL'.

    +++ZAP,0

 This will cause all files on drive #0 to be deleted.

    +++ZAP,1,A

 This  will  cause all files that are found on drive #1 and start with an A to be
 deleted.

    +++ZAP,2,.TMP

 This will cause all files that have a .TMP extension on drive #2 to be deleted.

    +++ZAP,0,1,PR.DEV,.OUT

 This will cause those files that start  with  PR  and  have  a  .DEV  extension,
 followed by those files that have a .OUT extension on drive #0 and then drive #1
 to all be deleted.

                            UTILITY COMMAND SUMMARY


     APPEND,<filename>[,<file list>],<file spec>
         Default extension: .TXT
         Description      : page


     ASN[,W=<drive>][,S=<drive>]
         Description      : page


     BUILD,<filename>
         Default extension: .TXT
         Description      : page


     CAT[,<drive list>][,<match list>]
         Description      : page


     CLEAN,<drive>
         Description      : page


     COPY,<filename>,<filename>
     COPY,<filename>,<drive>
     COPY,<drive>,<drive>[,<match list>]
         Description      : page


     CRC,<from address>,<to address>
         Description      : page


     DATE[,<mm,dd,yy>]
         Description      : page


     DATECOPY,<from>,<to>[,<type>][,<matchlist>]
         Description      : page


     DATIME
         Description      : page


     DELETE,<filename>[,<file list>]
         Description page: D.2


     DIR[<option>][,<drives>][,<matchlist>]
         Description      : page


     DUMP,<address>
         Description      : page


                            UTILITY COMMAND SUMMARY


     EXEC,<filename>
         Default extension: .TXT
         Description      : page


     F,<sfile>[,<dfile>[,<title>]]
         Default extention: .TXT
         Description      : page


     FASTBACK,<from>,<to>[,-][,N,Y]
         Description      : page


     FDATE?[,]<filename>
     FDATE,<filename>
     FDATE,<filename>,<dd,mm,yy>
         Default extension: .TXT
         Description      : page


     FIND,<start address>,<end address>
         Description      : page


     FIX,<filename>
         Default extension: .BIN
         Description      : page


     FIXES  ... <GET,FIXES.SYS>
         Description      : page


     FORMAT,+<drive>,<sides>,<density>,<tracks>,<extend>,<tpi>,<name>,<number>
         Description      : page


     FREEMAP,<drive>
         Description      : page


     FSTATUS
         Description      : page


     GET,<filename>[,<file list>]
         Default extension: .BIN
         Description      : page


     I,<filename>,<command>
         Default extension: .TXT
         Description      : page


     IN,<filename>,<command>
         Description      : page
                              UTILITY COMMAND SUMMARY


     INTELHEX,<filename>
         Default extension: .BIN
         Description      : page


     JUMP,<hex address>
         Description      : page


     LINK,<filename>
         Default extension: .SYS
         Description      : page


     LIST,<file spec>[,<line range>][,N]
         Default extension: .TXT
         Description      : page


     LOAD,<address>,<filename>
         Default extension: .CMD
         Description      : page


     MAKECMD,<filename>,[<command line>]
         Default extension: .CMD
         Description      : page


     MAP,<filename>
         Default extension: .BIN
         Description      : page


     MEM,<address>
         Description      : page


     MEMEND
     MEMEND?
     MEMEND,[$]<value>
         Description      : page


     MON
         Description      : page


     MOTORHEX,<filename>
         Default extension: .BIN
         Description      : page


     MOUNT
     MOUNT,<logical> = <physical>[,<assignment>]
         Description      : page


                              UTILITY COMMAND SUMMARY


     MOVE,<start address>,<end address>,<destination address>
         Description      : page


     N,<command>
         Description      : page


     NAME[,<drive>]
         Description      : page


     O,<filename>,<command>
         Default extension: .OUT
         Description      : page


     OUT,<filename>,<command>
         Default extension: .OUT
         Description      : page


     P,<command>
         Description      : page


     PCOPY,<drive>,<drive>[,<matchlist>]
     PCOPY,<filename>,<drive>
     PCOPY,<filename>,<mfilename>
         Description      : page


     PDEL[,<drives>][,<matchlist>]
         Description      : page


     PPRINT-X.SYS  ... (GET,PPRINT-X.SYS)
         Description      : page


     PR,<command>[<args>]
         Description      : page


     PRINT,<filename>
         Default extension: .OUT
         Description      : page


     PRINTT,<filename>[,+,<number>
         Default extension: .OUT
         Description      : page


     PROMPT
         Description      : page


                              UTILITY COMMAND SUMMARY


     PROT,<filename>[,(options)]
         Description      : page


     PROTECT
     PROTECT,<drive>=<protection>[,<assignment>]
         Description      : page


     PRT,<command>[,<args>]
         Description      : page


     QCHECK
         Description      : page


     QCHECKK
         Description      : page


     RAM-CON
         Description      : page


     RAM-FORM[,Y,N]
         Description      : page


     REFORMAT,<drive>
     REFORMAT,+<drive>,<extend>[<name>[,<number>]]
         Description      : page


     RENAME,<file spec 1>,<file spec 2>
         Default extension: .TXT
         Description      : page


     RSTATUS
         Description      : page


     SAVE,<file spec>,<begin adr>,<end adr>[,<transfer adr>]
         Default extension: .BIN
         Description      : page


     S,<sfile>,<dfile>
         Default extension: .OUT
         Description      : page


     SAVE.LOW
         Description      : page


                              UTILITY COMMAND SUMMARY


     SETCLOCK
         Description      : page


     SETFORM[,<tskip>,<depth>,<bskip>,<width>]
         Description      : page


     SETUP[,W<partitions>][,F<data>][,R]
         Description      : page


     SKIP
         Description      : page


     SPLTITLE
         Description      : page


     SPOOL.SYS ... (GET,SPOOL.SYS)
         Description      : page


     SPOOL-XX
         Description      : page


     SPRINT-X.SYS ... (GET,SPRINT-X.SYS)
         Description      : page


     STARTUP
         Description      : page


     TTYSET[,<parameter list>]
         Description      : page


     UPLOAD
         Description      : page


     VER,<filename>[,<filename]
         Default extension: .CMD
         Description      : page


     VERIFY[,<ON or OFF>]
         Description      : page


     VERSION,<filename>
         Default extension: .CMD
         Description      : page


                              UTILITY COMMAND SUMMARY


     WIN-FORM
         Description      : page


     XOUT[,<drive>]
         Default extension: .OUT
         Description      : page


     XXOUT[,<drive>]
         Default extension: .OUT
         Description      : page


     Y,<command>
         Description      : page


     YEAR
     YEAR,<year>
         Description      : page
