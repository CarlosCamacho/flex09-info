# SINST4

> Source: `manuals/misc/MANUAL - FLEX Software Archive - Manual and Documentation Archive - Includes SINST0, SINST1, SINST2.zip!MANUAL.DSK!SINST4.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                          SYSTEM INSTALLATION MANUAL

                     ADDENDUM A - MISCELLANEOUS INFORMATION


.DHE
%SYSTEM INSTALLATION MANUAL                          SCREDITOR III WORD PROCESSOR

                     ADDENDUM A - MISCELLANEOUS INFORMATION


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                        PAGE A-%%%%
.DFE
"
 PAGE A-%%%%                                        (C) 1982, ALFORD & ASSOCIATES
ADDITIONAL INFORMATION ON CONGEN

 SCREEN QUESTIONS (SSB and FLEX versions) -

 If you are running a serial terminal (such as a SOROC, Televideo, Zenith, Heath,
 SWTPCo  CT-82,  ADDS, etc...) which communicates through a serial port, you will
 answer with one to the SCREEN TYPE question.

 The TYPE  2  screen  is  only  to  be  used  with  those  systems  which  use  a
 MEMORY-MAPPED  DISPLAY  (such  as  some GIMIX systems), and which have a program
 which makes the display look like a serial terminal  in  the  way  in  which  it
 handles  cursoring  and  screen  operations,  or  any screen output method using
 software routines rather than  sending  characters  directly  through  a  serial
 interface.

 Even  if you are using a TYPE 2 screen, it must support cursor addressing in one
 of the forms described in the CONGEN section of this manual.


 SYSTEM QUESTIONS (SSB and FLEX versions) -

 The following information is incomplete, but will  help  you  in  answering  the
 system questions:


6800 SYSTEMS (USING SWT-BUG)            6800 SSB SYSTEMS (USING SMART-BUG)

 MONITOR ENTRY . . . . . . . .     E0D0    MONITOR ENTRY . . . . . . . .     E0E3
 KEYBOARD TYPE . . . . . . . .   1 OR 3    KEYBOARD TYPE . . . . . . . .   1 OR 3
 KEYBOARD PORT ADDRESS . . . .     8004    INTERRUPT ADDRESS . . . . . .     A000
 INTERRUPT ADDRESS . . . . . .     A000    KEYBOARD PORT ADDRESS . . . .     8008
 SETUP WORD  . . . . . . . . .       11    SETUP WORD  . . . . . . . . .       16
 SCREEN TYPE . . . . . . . . .        1    SCREEN TYPE . . . . . . . . .        1
 SCREEN PORT ADDRESS . . . . .     8004    SCREEN PORT ADDRESS . . . . .     8008


6800 SSB SYSTEMS (USING CHIEF-BUG)      6809 SWTPCo SYSTEMS (USING S-BUG)

 MONITOR ENTRY . . . . . . . .     E0E3    MONITOR ENTRY . . . . . . . .     F802 <-+
 KEYBOARD TYPE . . . . . . . .   1 OR 3    KEYBOARD TYPE . . . . . . . .   1 OR 3   |
 INTERRUPT ADDRESS . . . . . .     A000    KEYBOARD PORT ADDRESS . . . .     E004   |
 KEYBOARD PORT ADDRESS . . . .     F7E8    INTERRUPT ADDRESS . . . . . .     DFC8   |
 SETUP WORD  . . . . . . . . .       16    SETUP WORD  . . . . . . . . .       15   |
 SCREEN TYPE . . . . . . . . .        1    SCREEN TYPE . . . . . . . . .        1   |
 SCREEN PORT ADDRESS . . . . .     F7E8    SCREEN PORT ADDRESS . . . . .     E004   |
                                                                                    |
                                                                                    |
6809 SSB CHIEFTAN SYSTEMS (USING MON69D)                                          |
                                                                                    |
 MONITOR ENTRY - . . . . . . .     F802 <--- Use the  contents  of  this  address --+
 KEYBOARD TYPE . . . . . . . .   1 OR 3      as the answer to the question rather
 KEYBOARD PORT ADDRESS . . . .     F7E8      than the address itself.
 INTERRUPT ADDRESS . . . . . .     F3C8
 SETUP WORD  . . . . . . . . .       16
 SCREEN TYPE . . . . . . . . .        1
 SCREEN PORT ADDRESS . . . . .     F7E8


START-UP COMMAND LINE

 A  new  feature  has been added to SCREDITOR III and CONGEN too recently to have
 been included in the updated TECHNICAL REFERENCE MANUAL. In the old versions  of
 the  programs,  you  were allowed to specify a number of start-up values such as
 default tabs, margins, and whether to start  in  TEXT  or  LINE  MODE.  The  new
 versions  of  the programs have deleted these questions, and now you are allowed
 to enter an entire command line which SCREDITOR III will use at start-up just as
 if  you  had  entered  COMMAND  MODE and typed it yourself. This allows you much
 greater freedom in setting your initial operating parameters.


 The default parameters if no command line is entered are:

                       EDIT MODE: LINE
              JUSTIFICATION MODE: LEFT
                     COLUMN MODE: SINGLE
                     LEFT MARGIN: 1
                    RIGHT MARGIN: 60
                    TAB SETTINGS: 11,21,31,41,51
                 NUMBERS DISPLAY: OFF
              PAGE START DISPLAY: OFF
         PRTGEN DATA FILE LOADED: PRTGEN.DAT (PRTGEN+USER I.D., OS-9 version)
          PRINTER PAGE-END PAUSE: OFF (CONTINUOUS PRINTING)


 In  order  to modify these start-up settings, you would enter an initial command
 line to select the settings you want to exist when SCREDITOR III starts. If  you
 are going to enter multiple COMMANDS in this start-up line, you must use the EOL
 character you defined in the COMMAND SEPARATOR (EOL) question asked  earlier  in
 the CONGEN run.

 For instance, if the EOL character you defined was  a  semi-colon,  and  if  you
 wanted to delete the first tab, set the right margin at column seventy, set TEXT
 MODE and ALL-JUSTIFY MODE, turn on PAGE PAUSE and load an alternate PRTGEN  data
 file named SELECT, your line would look like:

    ^TR;^TS;RM#70;TE;JMA;PS;LP/SELECT/

 The  first  two  entries are OPERATORS executed from COMMAND MODE, and will move
 the cursor to the first tab (since the cursor is in column one on start-up), and
 perform  a  tab-set  (which  will  clear the tab as it is already set). Then the
 right margin will be set, TEXT MODE will be turned on, ALL-JUSTIFY MODE will  be
 selected,  PAGE  PAUSE  will  be  turn  on  (since  it is off at start-up), and,
 finally, the PRTGEN data file SELECT will be loaded.  All  of  this  will  occur
 before you type the first key during editing!


RETURN COMMAND LINE

 Another  feature  added  since the new version of the TECHNICAL REFERENCE MANUAL
 was printed is the return command line. If you define  this  line  entry  during
 CONGEN, the line will be returned to DOS for execution when you perform a LOG or
 ABORT to close the edit session. This addition will allow SCREDITOR  III  to  be
 called  by, for instance, a master menu program, and when SCREDITOR III is done,
 it will cause DOS to re-execute the master menu. SCREDITOR III,  therefore,  can
 become an essentially integral part of other systems software.

 As an example, if you were using SSB DOS and COMPUTERWARE  BASIC,  which  allows
 you  to enter a program name for BASIC to execute on start-up, and you wanted to
 return to BASIC directly from SCREDITOR III, you might enter the return  command
 line line as:

    BASIC,BOOKS

 which  would  then cause DOS to load and execute BASIC, which would in turn load
 and execute BOOKS.BAS!


                                     - NOTE -

 If a disk error occurs on the main I/O files  causing  an  abort  to  DOS,  this
 command  line  will not be passed to DOS for execution, thus giving you a chance
 to clean up the mess before making another one!


MAKING THINGS FASTER

 To make the use of CONGEN and PRTGEN easier,  we  suggest  that  you  study  the
 questions  for the two programs while referring to your technical documentation,
 and build a response file using your BUILD command or your current editor.  Once
 you  have  built  the response file, you can then run CONGEN or PRTGEN much more
 easily. In addition, changes to your system (or even the correction  of  errors)
 will be less work using this method.


 For instance, let us assume that you are running SSB DOS69 and SSB  MON69D,  and
 are  using  a  TELEVIDEO terminal (and assume that this terminal were not one of
 the standard terminal selections), and will not be  using  keyboard  interrupts.
 Your response file would look like this:

    CONGEN           1B,3D           0
    0000             0               Y
    0000             20              1B,59
    FB42             20              0
    1                Y               0D,0A
    F7E8             1B,45           0
    Y                0               07
    0                Y               0
    N                1B,52           ;
    24               0               RM#66;TE;JMA;LP/SELECT/
    80               Y               BASIC,BOOKS
    3                1B,54


 Note  that  that  the responses are shown in three columns simply to save space.
 Your file will be built by entering a single entry (such as  CONGEN)  per  line.
 Compare this set of answers to the questions on the response sheet at the end of
 this manual. CONGEN is entered as the first line of the file so that it will  be
 called  by  EXEC.  If  you had labeled the response file TELEV, your DOS command
 entry would look like:

    EXEC,TELEV

 This would cause EXEC to execute CONGEN, as it is the first line  in  the  file,
 and  then  CONGEN  would  receive  the remainder of the file a line at a time as
 answers to its questions!

 A  similar  method may be used for FLEX, except that instead of including a line
 with CONGEN on it in the file, you  would  only  include  the  answers  to  each
 question in the file and call CONGEN like this:

    I,TELEV,CONGEN


 Under OS-9, you would use a file like the FLEX version, and use I/O re-direction
 as in this example:

    CONGEN </D0/EDIT_DATA/TELEV

 This  method  will  save  you  a  lot  of  time once you have the file built. In
 addition, as we make future corrections or changes to  the  programs,  you  will
 find  that  it  is  much  easier  to edit the response file rather than manually
 running CONGEN and KEYGEN.

ADDITIONAL INFORMATION ABOUT KEYGEN

 KEYBOARD QUESTIONS (SSB AND FLEX VERSIONS) -

 If you are running a serial terminal (such as a SOROC, Televideo, Zenith, Heath,
 SWTPCo  CT-82,  ADDS, etc...) which communicates through a serial port, you will
 answer with one or three to the KEYBOARD TYPE question. TYPE ONE is  the  safest
 and easiest to start with since you will not need to worry about interrupts.

 The  reason  for  entering  1  or 3 instead of 5 or 6 is that whenever possible,
 SCREDITOR III wants to be able to talk directly to the keyboard, minimizing  the
 possibility of any other software interfering with the operation of the program.

 The  TYPE  5  and  6  keyboard  schemes  are  included  in SCREDITOR III only to
 accommodate those systems which are so off-the-wall as to make talking  directly
 to a port impossible. Included in this group might be a keyboard which generates
 EBCDIC (an IBM alternative to ASCII), and which uses  a  conversion  program  to
 change the codes received to ASCII.


 KEYBOARD QUESTIONS (ALL VERSIONS) -

 As  was  mentioned  elsewhere  in  this  manual  you  can  define fewer than the
 thirty-one OPERATORS that SCREDITOR III supports by entering an asterisk when an
 OPERATOR  is  requested.  In case you wish or need to do this, certain OPERATORS
 are more important than others, and should not be ignored. The  OPERATORS  which
 CAN generally be ignored are:

    DELETE WORD
    TAB TO NEXT WORD
    TAB TO PREVIOUS WORD
    TAB TO END OF LINE
    TAB LEFT
    CONVERT TO UPPER CASE
    CONVERT TO LOWER CASE

 OPERATORS which can NEVER be ignored include:

    DESTRUCTIVE BACKSPACE
    ESCAPE (ENTER COMMAND MODE)
    NEW LINE
    CURSOR UP
    CURSOR DOWN
    CURSOR LEFT
    CURSOR RIGHT
    SPLIT PARAGRAPH
    MELD PARAGRAPH


 META KEYS -

 The  new version of SCREDITOR III supports 'META' keys; i.e., keys which will be
 used for OPERATORS, but are sent from the keyboard with the high-order  bit  set
 ($80 and up). These keys are distinct from the normal control codes ($00-$1F).

 You will be asked during KEYGEN whether or not you will be using 'META' keys. If
 you answer Y, SCREDITOR III will not set the high-order bit low in any  incoming
 character. This means that you MUST be sure that the port setup word you specify
 if you are running a type one or three keyboard is correct. Entry of  the  wrong
 port setup word will probably cause half or more of the keys on your keyboard to
 go dead when running SCREDITOR III.

 If you are running a TYPE 4 keyboard, you must be receiving eight-bit data  from
 the port, with the high-order bit indicating the entry of a 'META' key.

 The  following table lists all of the combinations of ACIA setup words which are
 likely to be encountered. Note that only eight-bit data setups  are  given.  The
 use  of  'META'  keys mandates that seven-bit setups cannot be used. It is up to
 you to determine which of these entries is the one you want. The setup words  in
 the  tables  given  previously  in this addendum may or may not work with 'META'
 keys.


            RTS       SETUP     STOP BITS     PARITY     ACIA CLOCK

             LOW         11         TWO         NONE         X16
             LOW         15         ONE         NONE         X16
             LOW         19         ONE         EVEN         X16
             LOW         1D         ONE         ODD          X16

             LOW         12         TWO         NONE         X64
             LOW         16         ONE         NONE         X64
             LOW         1A         ONE         EVEN         X64
             LOW         1E         ONE         ODD          X64

             HIGH        11         TWO         NONE         X16
             HIGH        15         ONE         NONE         X16
             HIGH        19         ONE         EVEN         X16
             HIGH        1D         ONE         ODD          X16

             HIGH        12         TWO         NONE         X64
             HIGH        16         ONE         NONE         X64
             HIGH        1A         ONE         EVEN         X64
             HIGH        1E         ONE         ODD          X64


 Note that RTS is listed in this table for completeness. Under normal conditions,
 you will use one of the first eight entries in the  table  as  RTS  (Request  To
 Send) is a modem signal, and is normally not used by terminals. If your terminal
 DOES require RTS/CTS handshaking, you will have to  use  external  routines,  as
 SCREDITOR  III  does  NOT  support such handshaking. You may still, however, use
 'META' keys with SCREDITOR III with a TYPE 5 or TYPE 6 keyboard input routine.


ADDITIONAL INFORMATION ABOUT PRTGEN

 A control sequence is  any  group  of  zero  (explained  in  a  moment)  to  six
 characters,  and may be any binary code from zero to 254, since you define these
 as bytes, hexidecimally. Control codes, on the other hand, range in  value  from
 zero  to  31.  In  short,  a control code stands for a control sequence, and the
 sequence is what is actually sent to the printer when the code is encountered in
 the  text  during  printing.  In  this  way,  sequences  of characters up to six
 characters long may be inserted while taking only a single character position in
 the buffer itself.

 For  instance,  if  you  imbed CODE 1 in your document, the single byte $01 will
 actually be placed in the text. This will tell SCREDITOR III that  you  wish  to
 start  underlining  text. During printing, however, this code is used to look up
 the actual sequence of characters which are sent to tell the  printer  to  start
 underlining.

 There  are  several advantages in this method. The biggest advantage is that you
 will not generally have to re-edit material with imbedded codes when you  change
 printers.  If  a  new  printer  takes  a  different  control  sequence  to start
 underlining, you only have to re-run PRTGEN and the underlining  will  still  be
 done where you had it in the original document!

 An  additional advantage is that many of the codes which you wish to imbed might
 not be allowed by the DOS under which SCREDITOR  III  is  running  due  to  such
 contention problems as end-of-file characters, compression characters, etc... By
 using these substitute codes, you are completely free to define codes using  any
 characters  without  fear  that half a file will disappear because your favorite
 control sequence started with an end-of-file character!

 Another advantage is the fact that, even if your  printer  cannot  underline  by
 itself,  print  in  boldface,  or  print  double  width,  if  it will backspace,
 SCREDITOR III can generate these specialty functions for you. For this reason, a
 number of the control functions are always defined as the same code numbers.

 This  is  why we said that a control sequence can consist of zero bytes. If your
 printer, for instance, supports backspace, but will not automatically  underline
 text,  you would hit RETURN when the underline sequence was requested, but would
 enter the control  sequence  when  backspace  was  requested.  By  entering  the
 backspace  definition  with no underline definition, you have told SCREDITOR III
 to  underline  by  printing  a  character,  backspacing,  and  then  typing  the
 underline. This same method is used for boldface printing. Printing double width
 will simply send a space after each character if you have not defined  a  double
 width control sequence.


USING THE PRTGEN DATA FILE

 Like  KEYGEN and CONGEN, the default PRTGEN data file is automatically loaded on
 program startup. The OS-9 version of SCREDITOR III will load PRTGEN+user-ID from
 the  EDIT_DATA  directory  on  drive  D0.  The  FLEX  and SSB versions will load
 PRTGEN.DAT from the system drive. If the file does not exist, SCREDITOR III will
 abort back to DOS.

 An  LP  (LOAD  PRINTER  DATA FILE) COMMAND is included in SCREDITOR III to allow
 manual loading of the printer data file. You may load a new  data  file  at  any
 time  you  desire  during editing, although there is generally little need to do
 so. One application might be where you have a printer which  can  do  high-speed
 dot-matrix  printing,  and  uses certain control sequences in this mode, and can
 also do letter-quality printing, but  uses  different  controls.  This  type  of
 printer  could have its mode shifted by simply loading the alternate PRTGEN data
 file when desired.

 If you are contemplating this type of operation, you should run PRTGEN for  each
 data file you desire, and rename each one after building it to a name which will
 identify the file for later use (such as MX80, IDS440, MALIBU, etc...). Be sure,
 however, to leave one file with the default name, or SCREDITOR III will be dead.
 When re-naming the files, the SSB and FLEX versions MUST have a .DAT  extension.
 The  OS-9  version  MUST  have your user I.D. as the last five characters of the
 path name (e.g., MALIBU00001, etc...).


PLACING THE EDIT DATA FILE ON OTHER DRIVES - OS-9

 As has been  stated  repeatedly  in  this  manual,  SCREDITOR  III  expects  the
 EDIT_DATA  directory  to  exist  on drive D0. Many OS-9 systems, however, use D0
 only for booting, and then switch to another drive  for  all  other  operations.
 This is especially true where hard disks are being used.

 Each  of  the  three  SCREDITOR  III  GEN  programs in the OS-9 version have all
 messages at the start of the file. The first message in each file is the  string
 which  tells  the program where to put or get data files. This entry will appear
 as

    /D0/EDIT_DATA

 followed by the default file name, as in this example

    /D0/EDIT_DATA/CONGEN

 (which is the string in the CONGEN program), followed by sixteen  spaces  and  a
 carriage  return.  If  you have the Microware Debug package, you can modify this
 string to whatever pathlist you desire to tell the programs where to find  their
 files.  After  modifying the string, be sure run VERIFY on the program to update
 the CRC count, or the file will never execute again!

 In SCREDITOR III itself, there are three such  messages  at  the  start  of  the
 file--one  for  each of the data files. If you modify the pathlist in one of the
 GEN programs you must also modify the corresponding pathlist in  SCREDITOR  III.
 Be  sure  that each GEN program's pathlist matches the pathlist in SCREDITOR III
 after you have finished  the  modification,  or  SCREDITOR  III  will  become  a
 permanently-sleeping giant!
