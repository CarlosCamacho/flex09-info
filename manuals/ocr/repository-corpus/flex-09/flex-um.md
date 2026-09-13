# FLEX-UM

> Source: `flex-09/distributions/FLEX_MAN - FLEX Operating System - Documentation Disk.zip!FLEX_MAN.DSK!FLEX-UM.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
#FLEX DISK OPERATING SYSTEM                                    USERS GUIDE  R:4.0


.DHE
#USERS GUIDE  R:4.0                                    FLEX DISK OPERATING SYSTEM


                               FLEX USER'S GUIDE


                                   PREFACE

 The  purpose  of  this User's Guide is to provide the user of the FLEX Operating
 System with the information required to make  effective  use  of  the  available
 system commands and utilities. This manual applies to FLEX 9.0 for full size and
 mini floppy disks. The user should keep this manual close at hand while becoming
 familiar  with  the  system.  It  is  organized to make it convenient as a quick
 reference guide, as well as a thorough reference manual.


I. INTRODUCTION

 The FLEX (tm) Operating System  is  a  very  versatile  and  flexible  operating
 system.  It  provides the user with a powerful set of system commands to control
 all disk operations directly from the user's terminal.  The  systems  programmer
 will  be  delighted  with  the  wide  variety of disk access and file management
 routines available for personal use. Overall, FLEX is one of the  most  powerful
 operating systems available today.


 The  FLEX  Operating  System  is  comprised  of three parts, the File Management
 System (FMS), the Disk Operating System  (DOS),  and  the  Utility  Command  Set
 (UCS).  Part of the power of the overall system lies in the fact that the system
 can be greatly expanded by simply adding additional utility commands.  The  user
 should  expect to see many more utilities available for FLEX in the future. Some
 of the other important features include: fully dynamic  file  space  allocation,
 the  automatic  "removal"  of  defective  sectors from the disk, automatic space
 compression and expansion on all text files, complete user  environment  control
 using  the  TTYSET  utility  command,  and  uniform  disk  wear  due to the high
 performance dynamic space allocator.


 The UCS currently contains many very useful commands. These programs  reside  on
 the system disk and are only loaded into memory when needed. This means that the
 set of commands can be easily extended at any time,  without  the  necessity  of
 replacing  the entire operating system. The utilities provided with FLEX perform
 such tasks as the saving, loading, copying, renaming, deleting,  appending,  and
 listing  of  disk files. There is an extensive CATalog command for examining the
 disk's file directory. Several environment control commands are  also  provided.
 Overall,  FLEX  provides  all  of the necessary tools for the user's interaction
 with the disk.


 * FLEX (tm) is a registered trademark of Technical Systems Consultants, Inc.


                                     - 1.1 -

II. SYSTEM REQUIREMENTS

 FLEX  requires,  as  a minimum, random access memory from location $0000 through
 location $2FFF (12K). A further 8K of memory is also required from $C000 through
 $DFFF where the actual operating system resides. For serious applications 56K of
 contiguous RAM should be present in the system between $0000 through $DFFF  this
 will  provide  FLEX  with  the  8K  it requires and will leave 48K free for user
 programs.

 The system also assumes at least 2 disk drives are connected to  the  controller
 and  that  they  are configured as drives #0 and #1. You should consult the disk
 drive  instructions  for  this  information.  FLEX  interfaces  with  the   disk
 controller through a section of driver routines and with the operator console or
 terminal through a section of terminal I/O routines.


III. GETTING THE SYSTEM STARTED

 Each FLEX system diskette contains a binary loader  for  loading  the  operating
 system  into  RAM.  There  needs to be some way of getting the loader off of the
 disk so it can do its work. This  can  be  done  by  either  hand  entering  the
 bootstrap loader provided with the disk system, or by using the boot provided in
 ROM if appropriate to FLEX.

 As a specific example, suppose the system we are using has Windrush's  'GT-BUG9'
 installed  and  we wish to run FLEX. The first step is to power on all equipment
 and make sure the GT-BUG prompt is present (>). Next insert the system  diskette
 into drive 0 (the boot must be performed with the disk in drive 0) and close the
 door on the drive. Next type 'Q' on the terminal. The disk motors should  start,
 and after about 2 seconds, the following should be displayed on the terminal:


     WMS FLEX V:X.X
     DATE (MM,DD,YY)?

     +++


 The name FLEX identifies the operating system and the X.X will  be  the  version
 number of the operating system. At this time the current date should be entered,
 in the format MONTH, DAY, YEAR, such as 1,31,84 for January 31, 1984.  The  FLEX
 prompt is the three plus signs (+++), and will always be present when the system
 is ready to accept an operator command. The '+++' should become a familiar sight
 nd signifies that FLEX is ready to work for you!


 NOTE 1:  If  your  system  has been supplied with a clock-calendar patch to FLEX
          the prompt for the date will not be presented unless the data found  in
          the  clock is not valid. If the data is found to be valid then the FLEX
          prompt (+++) will appear immediately.


 NOTE 2:  If  a  file  named 'STARTUP.TXT' is present on the system disk the FLEX
          '+++' prompt will not appear until the commands given  in  the  startup
          file have been executed.


                                     - 1.2 -

IV. DISK FILES AND THEIR NAMES

 All disk files are stored in the form of 'sectors'  on  the  disk  and  in  this
 version,  each sector contains 256 'bytes' of information. Each byte can contain
 one character of text or one byte of binary machine information.  A  maximum  of
 340 user-accessible sectors will fit on a single-sided 35 track 5 1/4" mini disk
 or 1140 sectors on a single-sided 77 track 8" floppy. Double-sided  disks  would
 hold exactly twice that number of sectors. Double-density systems will hold more
 still. The user, however,  need  not  keep  count,  for  the  system  does  this
 automatically.  A  file  will always be at least one sector long and can have as
 many as the maximum number of sectors on  the  disk.  The  user  should  not  be
 concerned  with the actual placement of the files on the disk since this is done
 by the operating system. File deletion is also supported and all previously used
 sectors become immediately available again after a file has been deleted.

 All files on the disk have a name. Names such as the following are typical:

     PAYROLL
     INVNTORY
     TEST1234
     APRIL-78
     WKLY-PAY

 Anytime  a file is created, referenced, or deleted, its name must be used. Names
 can be most anything butMUSTbegin with a letter (not numbers or  symbols)  and
 be  followed by at most 7 additional characters, called 'name characters'. These
 'name characters' can be any combination of the letters 'A' through 'Z'  or  'a'
 through  'z',  any  digit '0' through '9', or one of the two special characters,
 the hyphen (-) or the underscore '_', (a left arrow on some terminals).

 File names must also contain an 'extension'. The file extension further  defines
 the  file  and  usually  indicates  the  type  of information contained therein.
 Examples of extensions are: TXT for text type files, BIN  for  machine  readable
 binary  encoded  files,  CMD for utility command files, and BAS for BASIC source
 programs. Extensions may contain up  to  3  'name  characters'  with  the  first
 character  being  a letter. Most of the FLEX commands assume a default extension
 on the file name and the user need not be concerned with the actual extension on
 the  file.  The user may at anytime assign new extensions, overiding the default
 value, and treat the extension as just part of the file name. Some  examples  of
 file names with their extensions follow:

     APPEND.CMD
     LEDGER.BAS
     TEST.BIN

 Note  that  the extension is always separated from the name by a period '.'. The
 period is the name 'field separator'. It  tells  FLEX  to  treat  the  following
 characters as a new field in the name specification.


                                     - 1.3 -

IV. DISK FILES AND THEIR NAMES  (continued)


 A file name can be further refined. The name and  extension  uniquely  define  a
 file  on  a  particular  drive,  but  the  same name may exist on several drives
 simultaneously. To designate a particular drive a 'drive number' is added to the
 file  specification.  It  consists of a single digit (0-3) and is separated from
 the name by the field separator '.'. The drive number may appear  either  before
 the  name  or after it (after the extension if it is given). If the drive is not
 specified, the system will default to either the 'system' drive or the 'working'
 drive. These terms will be described a little later.

 Some examples of file specifications with drive numbers follow:

     0.BASIC
     MONDAY.2
     1.TEST.BIN
     LIST.CMD.1

 In summary, a file specification may contain up to three fields separated by the
 field  separator.  These fields are; 'drive', 'name', and 'extension'. The rules
 for the file specification can be stated quite  concisely  using  the  following
 notation:

     [<drive>.]<name>[.<extension>]
       or
     <name>[.<extension>][.<drive>]

 The  '<>'  enclose  a field and do not actually appear in the specification, and
 the '[]' surround optional items of the specification.  The  following  are  all
 syntactically correct:

     0.NAME.EXT
     NAME.EXT.0
     NAME.EXT
     0.NAME
     NAME.0
     NAME

 Note that the only required field is the actual  'name'  itself  and  the  other
 values will usually default to predetermined values. Studying the above examples
 will  clarify  the  notation  used.  The  same  notation  will  occur  regularly
 throughout the manual.


 NOTE:    Even though you may enter a file name and its extension in  lower  case
          letters  this  version  of  FLEX  will  convert them to upper case when
          writing them to the disk directory. If you wish to have the  capability
          of using a combination of upper-case and lower-case letters consult the
          factory for further information on how this may be accomplished.


                                     - 1.4 -

V. ENTERING COMMANDS

 When FLEX is displaying '+++', the system is ready to accept a command  line.  A
 command  line  is usually a name followed by certain parameters depending on the
 command being executed. There is no 'RUN' command in FLEX. The first  file  name
 on a command line is always loaded into memory and execution is attempted. If no
 extension is given with the file name, 'CMD' is the default. If an extension  is
 specified,  the  one  entered is the one used. Some examples of commands and how
 they would look on the terminal follow:

     +++TTYSET
     +++TTYSET.CMD
     +++LOOKUP.BIN

 The first two lines are identical to FLEX since the first would  default  to  an
 extension  of  CMD.  The third line would load the binary file 'LOOKUP.BIN' into
 memory and, assuming the file contained a transfer address, the program would be
 executed. A transfer address tells the program loader where to start the program
 executing after it has been loaded. If you try to load and execute a program  in
 the above manner and no transfer address is present, the message, 'NO LINK' will
 be output to the terminal, where 'link' refers to  the  transfer  address.  Some
 other   error   messages  which  can  occur  are  'WHAT?'  if  an  illegal  file
 specification has been typed as the first part  of  a  command  line,  and  'NOT
 THERE' if the file typed does not exist on the disk.

 During  the  typing  of a command line, the system simply accepts all characters
 until a 'RETURN' key is typed. Any time before typing the RETURN key,  the  user
 may use one of two special characters to correct any mistyped characters. One of
 these characters is the 'back space' and allows deletion of the previously typed
 character.  Typing  two back spaces will delete the previous two characters. The
 back space is initially defined to be a 'control H' but may be redefined by  the
 user  using the TTYSET utility command. The second special character is the line
 'delete' character. Typing this character will effectively  delete  all  of  the
 characters  which  have  been  typed  on  the current line. A new prompt will be
 output to the terminal, but instead of the  usual  '+++'  prompt,  to  show  the
 action  of  the  delete character, the prompt will be '???'. Any time the delete
 character is used, the new prompt will be '???', and  signifies  that  the  last
 line  typed  did  not  get  entered  into  the computer. The delete character is
 initially a 'control X' but may also be redefined using TTYSET.


 NOTE:    If  the backspace echo (BE) facility of TTYSET is set to the same value
          as backspace (BS) then characters will automatically be rubbed off  the
          screen as you backspace the cursor over them.


                                     - 1.5 -

V. ENTERING COMMANDS  (continued)

 As  mentioned earlier, the first name on a command line is always interpreted as
 a command. Following the command is an optional list of  names  and  parameters,
 depending  on the particular command being entered. The fields of a command line
 must be separated by either a space or a comma. The general format of a  command
 line is:

     <command>[,<list of names and parameters>]

 A  comma is shown, but a space may be used. FLEX also allows several commands to
 be entered on one command line by use of  the  'end  of  line'  character.  This
 character  is  initially  a colon (':'), but may be user defined with the TTYSET
 utility. By ending a command with the end of line character, it is  possible  to
 follow  it  immediately  with another command. FLEX will execute all commands on
 the line before returning with the '+++' prompt. An error in any of the  command
 entries  will  cause  the system to terminate operation of that command line and
 return with the prompt. Some examples of valid command lines follow:

     +++CAT 1
     +++CAT 1:ASN S=1
     +++LIST LIBRARY:CAT 1:CAT 0

 As many commands may be typed in one command line  as  desired,  but  the  total
 number  of  characters  typed must not exceed 128. Any excess characters will be
 ignored by FLEX. This same limit is applicable to the command line used in  your
 'STARTUP.TXT' file.

 One last system feature to be described is the idea of  'system'  and  'working'
 drives.  As  stated  earlier,  if  a  file  specification  does not specifically
 designate a drive number, it will assume a default  value.  This  default  value
 will  either  be  the current 'system' drive assignment or the current 'working'
 drive assignment. The system drive is the default for all command names,  or  in
 other  words,  all file names which are typed first on a command line. Any other
 file name on the command line will default to the working drive.  When  FLEX  is
 first  booted the system drive and work drive are both initialized to drive '0'.
 If you wish to alter this default assignment you may do so via the disk resident
 'ASN'  command  either as part of your 'STARTUP' file or by a manual entry after
 the FLEX prompt (+++) appears.

 This version of FLEX also supports automatic drive searching. When in  the  auto
 search  mode  if no drive numbers are specified, the operating system will first
 search drive 0 for the file. If the file is not found, drive 1 will be  searched
 and  so  on.  When the system is first initialized the auto drive searching mode
 will be deactivated. At this time, all drive defaults will be to drive 0. It  is
 sometimes  convenient  to  assign drive 1 as the working drive in which case all
 file references, except commands, will automatically look on drive 1. It is then
 convenient to have a diskette in drive 0 with all the system utility commands on
 it (the 'system drive'), and a disk with the files being worked on  in  drive  1
 (the  'working drive'). If the system drive is 0 and the working drive is 1, and
 the command line was:

     +++LIST TEXTFILE

 FLEX  would  go  to  drive  0  for  the command LIST and to drive 1 for the file
 TEXTFILE. The actual assignment of drives is  performed  by  the  disk  resident
 'ASN' utility. See its description for details.


                                     - 1.6 -

VI. COMMAND DESCRIPTIONS

 There are two types of commands in FLEX, memory resident (those  which  actually
 are  part  of  the  operating  system) and disk utility commands (those commands
 which reside on the disk and are part of the UCS). There are only  two  resident
 commands, GET and MON. They will be described here while the UCS is described in
 the following sections.

    GET

 The GET command is used to load a binary file  into  memory.  It  is  a  special
 purpose command and is not often used. It has the following syntax:

    GET[,<file name list>]

 where <file name list> is: <file spec>[,<file spec>] etc.

 Again  the  '[]'  surround  optional  items.  'File spec' denotes a file name as
 described earlier. The action of the GET command is to load the  file  or  files
 specified  in the list into memory for later use. If no extension is provided in
 the file spec, BIN is assumed, in other words, BIN  is  the  default  extension.
 Examples:

    GET,TEST
    GET,1.TEST,TEST2.0

 where the first example will load the file named 'TEST.BIN'  from  the  assigned
 working  drive,  and  the  second  example  will  load TEST.BIN from drive 1 and
 TEST2.BIN from drive 0.


    MON

 MON  is  used  to  exit  FLEX  and return to the hardware monitor system such as
 GT-BUG. The syntax for this command is simply MON followed by the 'RETURN' key.

 NOTE:    To re-enter FLEX after using the MON  command,  you  should  enter  the
          program at location $CD03.


                                     - 1.7 -


                       (THIS PAGE INTENTIONALLY LEFT BLANK)


                                     - 1.8 -

                           GENERAL SYSTEM INFORMATION


I.  DISK CAPACITY

 Each  sector  of  a  FLEX  disk contains 252 characters or bytes of user data (4
 bytes of each 256 byte sector are used by the system). Thus  a  single-sided  5"
 disk  has  340  sectors  or  85,680  characters  or bytes of user information. A
 single-sided  8"  disk  has  1140  sectors  or  287,280  bytes  of  user   data.
 Double-sided  or double density disks would contain exactly twice these amounts,
 and double sided, double density disks would contain  exactly  four  times  thes
 amounts.


II.  WRITE PROTECT

 Floppy disks can usually be physically write  protected  to  prevent  FLEX  from
 performing  a write operation. Any attempt to write to such a disk will cause an
 error message to be issued. It is good practice to  write  protect  disks  which
 have important files on them.

 A 5"   disk can be write protected by placing a piece of opaque  tape  over  the
 small  rectangular  cutout  on  the  edge  of  the disk. 8" floppys are just the
 opposite. In order to write protect an 8" disk, you must remove  the  tape  from
 the cutout. In other words, the notch must be exposed to write protect the disk.
 Some 8" disks do not have this cutout and therefore cannot be write protected.


III.  THE 'RESET' BUTTON

 The  RESET  button  (and  the  NMI  button if fitted) on the front panel of your
 computer should NEVER BE PRESSED DURING A DISK OPERATION. There should never  be
 a  need  to 'reset' the machine while in FLEX. If the machine is 'reset' and the
 system is writing data on the disk, it is possible that  the  entire  disk  will
 become damaged. Again, never press 'reset' while the disk is operating! Refer to
 the 'escape' character in TTYSET for ways of stopping FLEX.


IV.  NOTES ON THE P COMMAND

 The P command tries to load a printer driver file named PRINT.SYS from the  same
 disk  which  P  itself  was  retrieved. For the requirements of this file and on
 writing your own custom PRINT.SYS file, see the section on such  later  in  this
 manual or consult the 'Advanced Programmer's Guide'.


V.  ACCESSING DRIVES NOT CONTAINING A DISKETTE

 If an attempt is made to access a minifloppy  not  containing  a  diskette,  the
 system  will  hang  up  attempting to read until a disk is inserted and the door
 closed. Alternatively, you could reset the machine and begin  execution  at  the
 warm start location $CD03.


                                     - 2.1 -

VI.  SYSTEM ERROR NUMBERS

 Any  time  that  FLEX detects an error during an operation, an appropriate error
 message will be displayed on the terminal. FLEX internally translates a  derived
 error  number  into  a  plain  language  statement  using a look-up table called
 ERROR.SYS. If you have forgotten to copy this .SYS file onto a disk that you are
 using, FLEX will report a corresponding number as shown below:

     DISK ERROR  #xx

 where 'xx' is a decimal error number. The table below is a list of these numbers
 and what error they represent.

 ERROR #         MEANING

    1          ILLEGAL FMA FUNCTION CODE ENCOUNTERED
    2          THE REQUESTED FILE IS IN USE
    3          THE FILE SPECIFIED ALREADY EXISTS
    4          THE SPECIFIED FILE COULD NOT BE FOUND
    5          SYSTEM DIRECTORY ERROR-REBOOT SYSTEM
    6          THE SYSTEM DIRECTORY IS FULL
    7          ALL AVAILABLE DISK SPACE HAS BEEN USED
    8          READ PAST END OF FILE
    9          DISK FILE READ ERROR
   10          DISK FILE WRITE ERROR
   11          THE FILE OR DISK IS WRITE PROTECTED
   12          THE FILE IS PROTECTED-FILE NOT DELETED
   13          ILLEGAL FILE CONTROL BLOCK SPECIFIED
   14          ILLEGAL DISK ADDRESS ENCOUNTERED
   15          AN ILLEGAL DRIVE NUMBER WAS SPECIFIED
   16          DRIVE NOT READY
   17          THE FILE IS PROTECTED-ACCESS DENIED
   18          SYSTEM FILE STATUS ERROR
   19          FMS DATA INDEX RANGE ERROR
   20          FMS INACTIVE-REBOOT SYSTEM
   21          ILLEGAL FILE SPECIFICATION
   22          SYSTEM FILE CLOSE ERROR
   23          SECTOR MAP OVERFLOW-DISK TOO SEGMENTED
   24          NON-EXISTENT RECORD NUMBER SPECIFIED
   25          RECORD NUMBER MATCH ERROR-FILE DAMAGED
   26          COMMAND SYNTAX ERROR-RE-TYPE COMMAND
   27          THAT COMMAND IS NOT ALLOWED WHILE PRINTING
   28          WRONG HARDWARE CONFIGURATION

 For  more  details  concerning the meanings of these error messages, consult the
 'Advanced Programmer's Guide'.


                                     - 2.2 -

VII.  SYSTEM MEMORY MAP

 The  following  is  a brief list of the RAM space required by the FLEX Operating
 System. All address are in hex.


 0000 - BFFF      User.RAM   NOTE: Some of this space is used by FORMAT, COPY and
                                   other utilities.

 C000 - DFFF      Disk Operating System

 C07F             System stack

 C100 - C6FF      Utility command space

 CD00             FLEX cold start entry address
 CD03             FLEX warm start entry address


 For a more detailed memory map, consult the 'Advanced Programmer's Guide'.


                                     - 2.3 -

VIII.  FLEX OPERATING SYSTEM INPUT/OUTPUT SUBROUTINES

 In order for the FLEX I/O  functions  to  operate  properly,  all  user  program
 character  input/output  subroutines  should be vectored thru the FLEX operating
 system rather than the computer's  monitor.  Below  is  a  list  of  FLEX's  I/O
 subroutines  and  a  brief  description  of  each.  All  given  addresses are in
 hexadecimal.


GETCHR at $CD15

 This  subroutine is functionally equivalent to GT-BUG's character input routine.
 This routine will look for one character from the  system  console  (usually  at
 terminal  via a serial link) and store it in the A accumulator. Once called, the
 input routine will loop within itself until a character has been input.  Anytime
 input is desired, the call JSR GETCHR or JSR $CD15 should be used.

 GETCHR automatically sets the 8th bit to 0 and does not check for parity. A call
 to this subroutine affects the processor's registers as follows:

     A        loaded with the character input from the terminal

     B,X,Y,U  not affected


PUTCHR at $CD18

 This subroutine is used to output one character from the computer to the control
 port (I/O port #1). It  is  functionally  equivalant  to  the  output  character
 routine in GT-BUG.

 To  use PUTCHR, the character to be output should be placed in the A accumulator
 in its ASCII form. For  example,  to  output  the  letter  'A'  on  the  control
 terminal, the following program should be used:

     LDA    #$41
     JSR    $CD18

 The processor's registers are affected as follows:

     A        changed internally

     B,X,Y,U  not affected


                                     - 2.4 -

PSTRNG at $CD1E

 PSTRNG  is a subroutine used to output a string of text on the control terminal.
 When address $CD1E is called, a carriage return and line feed will automatically
 be  generated and data output will begin at the location pointed to by the index
 register. Output will continue until a hex 04 is seen. The same rules for  using
 the ESCAPE and RETURN keys for stopping output apply as described earlier.

 The accumulator and register status after using PSTRNG are as follows:

     A        Changed during the operation

     B        Unchanged

     X        Contains the memory location of the last character  read  from  the
              string (usually the 04 unless stopped by the ESC key)

     Y,U      Unchanged


 NOTE: The ability of using backspace and line delete characters is a function of
 your user program and not of the FLEX I/O routines described above.


STAT at $CD4E

 This routine is used to determine the "status" of the input device. That is,  to
 see  if  a character has been typed on the input terminal keyboard. Its function
 is to check for characters such as the ESCAPE key in FLEX which allows  breaking
 of  the  output. This routine returns an EQual condition if no character was hit
 and a Not-Equal condition if a character was hit. No registers, except  for  the
 condition codes, may be altered.

 For additional information consult the 'Advanced Programmer's Manual'.


                                     - 2.5 -

IX.  BOOTING THE FLEX DISK OPERATING SYSTEM

 In order to read FLEX from the system disk upon powering  up  your  system,  you
 must  have  a  short  program  in  RAM  or  ROM memory. This program is called a
 'bootstrap' loader.

 If you are using a Windrush Micro Systems disk system and  the  GT-BUG  monitor,
 there  is  a  bootstrap  stored in this ROM which you can use. It is executed by
 simply typing a 'Q'

 Those users of other hardware or monitor ROM should use the boot  supplied  with
 the  hardware if compatible with FLEX. A sample boot (for the SWTPc mini system)
 is given here for reference.

 If the system does not boot properly, re-position the system disk in  the  drive
 and re-execute the bootstrap loader.


    0100 B6   E018     START   LDA    COMREG    TURN MOTOR ON
    0103 86   00               LDA    #0
    0105 B7   E014             STA    DRVREG
    0108 8E   0000             LDX    #0000
    010B 3D            OVR     MUL              DELAY FOR SPEED UP
    010C 30   1F               LEAX   -1,X
    010E 26   FB               BNE    OVR
    0110 C6   0F               LDB    #$0F      RESTORE
    0112 F7   E018             STB    COMREG
    0115 8D   2B               BSR    RETURN
    0117 F6   E018     LOOP1   LDB    COMREG
    011A C5   01               BITB   #1
    011C 26   F9               BNE    LOOP1
    011E 86   01               LDA    #1
    0120 B7   E01A             STA    SECREG
    0123 8D   1D               BSR    RETURN
    0125 C6   8C               LDB    #$8C      READ WITH LOAD
    0127 F7   E018             STB    COMREG
    012A 8D   16               BSR    RETURN
    012C 8E   C000             LDX    #$C000
    012F C5   02       LOOP2   BITB   #2        DRQ?
    0131 27   05               BEQ    LOOP3
    0133 B6   E01B             LDA    DATREG
    0136 A7   80               STA    0,X+
    0138 F6   E018     LOOP3   LDB    COMREG
    013B C5   01               BITB   #1        BUSY?
    013D 26   F0               BNE    LOOP2
    013F 7E   C000             JMP    $C000
    0142 8D   00       RETURN  BSR    RTN
    0144 39            RTN     RTS


 NOTE: The assembly language source of bootstrap loader for the  Windrush  floppy
       disk  and  hard  disk controllers will be contained within the manuals for
       these products.


                                     - 2.6 -

X.  REQUIREMENTS FOR THE 'PRINT.SYS' PRINTER DRIVER


 FLEX, as supplied, includes a printer driver that will work with  most  parallel
 type printers. If desired, the printer driver may be changed to accomodate other
 types of printers. Included is the  source  listing  for  the  supplied  driver.
 Additional information on the requirements for the PRINT.SYS driver can be found
 in the Advanced Programmer's Guide.

 1) If the printer driver is to be used in conjunction with the 'P'  command  and
    you  wish  to  use this commands automatic printer driver loader facility the
    driver must be in a file called PRINT.SYS

 2) If  you  generally  use  your  printer  in conjunction with your applications
    software rather than the 'P' command it is a good idea to load your  standard
    printer  driver  as part of your 'STARTUP' file. The standard syntax for this
    technique is: 'GET,PRINTDVR.SYS'

 3) Three separate routines must be supplied, a  printer  initialization  routine
    (PINIT  at  $CCC0),  a  check  ready  routine  (PCHK at $CCD8), and an output
    character routine (POUT at $CCE4).

 4) When the POUT routine is called by FLEX, the character to be output  will  be
    in  the  A accumulator. The output routine must not destroy the B, X, Y, or U
    registers. PINIT may destroy any registers. PCHK may NOT alter any registers.

 5) The routines MUST start at the addresses  specified,  but  may  be  continued
    anywhere  in memory if there is not room where specified. If placed elsewhere
    in memory, be certain they do not conflict with  any  utilities  or  programs
    which will use them.

 6) All three routines must end with a return from subroutine instruction (RTS).


                                     - 2.7 -

           SAMPLE DRIVERS FOR A SERIAL PRINTER THROUGH AN MC6850 ACIA

 The following listing is a sample set of drivers for a serial type printer using
 an MC6850 ACIA as its interface. This set of drivers is not supplied on disk. In
 order  to use these drivers, you must type in the source and assemble it. If you
 have a serial printer, you will probably want to replace the parallel  PRINT.SYS
 file on the disk with one containing these drivers.


                             1 ************************************************
                             2 * SERIAL PRINTER DRIVER THROUGH AN MC6850 ACIA *
                             3 ************************************************
                             4
E000                         5 ACIA     EQU   $E000     BASE ADDRESS OF MC6850
                             6
                             7 **************************
                             8 * PRINTER INITIALIZATION *
                             9 **************************
                            10 *
CCC0                        11          ORG   $CCC0     MUST RESIDE AT $CCC0
                            12
CCC0   86 13                13 PINIT    LDA   #$13      RESET ACIA
CCC2   B7 E000              14          STA   ACIA
CCC5   86 11                15          LDA   #$11      8 DATA, 2 STOP, X16 CLOCK
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


                                     - 2.8 -

            SAMPLE DRIVERS FOR A SERIAL PRINTER THROUGH A R6551 ACIA

                             1 ***********************************************
                             2 * SERIAL PRINTER DRIVER THROUGH AN R6551 ACIA *
                             3 ***********************************************
                             4
E0F8                         5 R6551    EQU   $E0F8     BASE ADDRESS OF R6551
                             6
                             7
                             8 **************************
                             9 * INITIALIZE THE PRINTER *
                            10 **************************
                            11 *
CCC0                        12          ORG   $CCC0     MUST BE HERE!
                            13
CCC0   86 9E                14 PINIT    LDA   #$9E      9600 BAUD, 8 DATA, 2 STOP
CCC2   B7 E0F9              15          STA   R6551+1   RESET
CCC5   B7 E0FB              16          STA   R6551+3   CONTROL
CCC8   86 0B                17          LDA   #$0B      NO PARITY, FULL DUPLEX,
                            18 *                        RTS LOW, NO INTERRUPTS
CCCA   B7 E0FA              19          STA   R6551+2   COMMAND
CCCD   39                   20          RTS
                            21
                            22
                            23 **************************
                            24 * CHECK IF PRINTER READY *
                            25 **************************
                            26 *
CCD8                        27          ORG   $CCD8     MUST BE HERE!
                            28
CCD8   34 02                29 PCHK     PSHS  A
CCDA   B6 E0F9              30          LDA   R6551+1   GET STATUS REGISTER
CCDD   48                   31          ASLA
CCDE   48                   32          ASLA
CCDF   48                   33          ASLA            GET TDR BIT INTO SIGN (b-7)
CCE0   35 82                34          PULS  A,PC
                            35
                            36
                            37 *********************************
                            38 * OUTPUT A CHARACTER TO PRINTER *
                            39 *********************************
                            40 *
CCE4                        41          ORG   $CCE4     MUST BE HERE!
                            42
CCE4   8D F2      (CCD8)    43 POUT     BSR   PCHK
CCE6   2A FC      (CCE4)    44          BPL   POUT      WAIT UNTIL LAST CHAR SENT
CCE8   B7 E0F8              45          STA   R6551     SEND THE CHAR
CCEB   39                   46          RTS


                                     - 2.9 -

          SAMPLE DRIVERS FOR A PARALLEL PRINTER THROUGH AN MC6821 PIA

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
CCC0   86 3A                13 PINIT    LDA   #$3A      SELECT DATA DIRECTION REG.
CCC2   B7 E043              14          STA   PIA+1     BY WRITING 0 IN DDR CONTROL
CCC5   86 FF                15          LDA   #$FF      SELECT ALL OUTPUT LINES
CCC7   B7 E042              16          STA   PIA       PUT IN DATA DIRECTION REG.
CCCA   86 3E                17          LDA   #$3E      SET UP FOR TRANSITION CHECKS
CCCC   B7 E043              18          STA   PIA+1     AND ENABLE OUTPUT REGISTER
CCCF   39                   19          RTS
                            20
                            21 * PRINTER READY ROUTINE
                            22 *
CCD0   7D E042              23 PREADY   TST   PIA       RESET PIA READY INDICATION
CCD3   73 CCE3              24          COM   PFLAG     SET THE PRINTER READY FLAG
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
CCE0   2B EE      (CCD0)    37          BMI   PREADY    IF MINUS, PRINTER NOW READY
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
CCEB   B7 E042              53          STA   PIA       SET DATA IN OUTPUT REGISTER
CCEE   86 36                54          LDA   #$36      SET DATA READY, CB2 'LOW'
CCF0   8D 02      (CCF4)    55          BSR   POUTB     STUFF BYTE INTO THE PIA
CCF2   86 3E                56          LDA   #$3E      CB2 'HIGH'
CCF4   B7 E043              57 POUTB    STA   PIA+1
CCF7   39                   58          RTS

                                     - 2.10 -

          SAMPLE DRIVERS FOR A PARALLEL PRINTER THROUGH AN R6522 VIA

                             1 ************************************************
                             2 * PARALLEL PRINTER DRIVER THROUGH AN R6522 VIA *
                             3 ************************************************
                             4
E200                         5 R6522    EQU   $E200     BASE ADDRESS OF R6522
                             6
E200                         7 ORB      EQU   R6522     'B' PORT
E202                         8 DDRB     EQU   R6522+2   'B' PORT DDR
E20C                         9 PCR      EQU   R6522+12  PERIPHERAL CONTROL REGISTER
E20D                        10 IFR      EQU   R6522+13  INTERRUPT FLAG REGISTER
                            11
                            12 **************************
                            13 * INITIALIZE THE PRINTER *
                            14 **************************
                            15 *
CCC0                        16          ORG   $CCC0     MUST BE HERE!
                            17
CCC0   7F E20C              18 PINIT    CLR   PCR
CCC3   86 FF                19          LDA   #$FF
CCC5   B7 E202              20          STA   DDRB      ALL OUTPUTS
CCC8   39                   21          RTS
                            22
CCC9   B6 E20D              23 CHKIT    LDA   IFR
CCCC   84 10                24          ANDA  #$10
CCCE   27 06      (CCD6)    25          BEQ   CHKEND    NOT ACKNOWLEDGED YET
CCD0   7D E200              26          TST   ORB       CLEAR 'CB1' RESPONSE
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
CCEB   B7 E200              53          STA   ORB       SET UP DATA
CCEE   86 C0                54          LDA   #$C0      CB2 LO
CCF0   8D 02      (CCF4)    55          BSR   POUT2
CCF2   86 E0                56          LDA   #$E0      CB2 HI
CCF4   B7 E20C              57 POUT2    STA   PCR       STROBE THE 'CB2' LINE
CCF7   39                   58          RTS

                                     -2.11 -


                       (THIS PAGE INTENTIONALLY LEFT BLANK)


                                     - 2.12 -

                              UTILITY COMMAND SET


 The following pages describe all of the utility commands currently  included  in
 the  UCS.  You  should note that the page numbers denote the first letter of the
 command name, as well as the number of the page for a  particular  command.  For
 example,  'B.1.2'  is  the  2nd page of the description for the 1st utility name
 starting with the letter 'B'.


COMMON ERROR MESSAGES

 Several error messages are common to many of the FLEX  utility  commands.  These
 error messages and their meanings include the following:


 NO SUCH FILE          This  message  indicates  that  a  file  referenced  in  a
                       particular command was not found on  the  disk  specified.
                       Usually the wrong drive was specified (or defaulted), or a
                       misspelling of the name was made.


 ILLEGAL FILE NAME     This can happen if the name or  extension  did  not  start
                       with a letter, or the name or extension field was too long
                       (limited to 8 and 3 respectively). This message  may  also
                       mean  that the command being executed expected a file name
                       to follow and one was not provided.


 FILE EXISTS           This message will be output if you try to  create  a  file
                       with  a name the same as one which currently exists on the
                       same disk. Two different files with the same name are  not
                       allowed to exist on the same disk.


 SYNTAX ERROR          This  means  that  the  command  line  just typed does not
                       follow the rules stated for the particular  command  used.
                       Refer  to  the  individual command descriptions for syntax
                       rules.


GENERAL SYSTEM FEATURES

 Any  time  one of the utility commands is sending output to the terminal, it may
 be temporarily halted by typing the  'escape'  character  (see  TTYSET  for  the
 definition  of  this  character).  Once  the output is stopped, the user has two
 choices: typing the 'escape' character again or typing 'RETURN'. If the 'escape'
 character  is  typed  again,  the  output will resume. If the 'RETURN' is typed,
 control will return to FLEX and  the  command  will  be  terminated.  All  other
 characters are ignored while output is stopped.

 NOTE: Some of the utility commands on the following pages have been supplied  by
       Windrush Micro Systems and are not part of the basic FLEX package supplied
       by TSC. The banner at the top of the page will identify the source of each
       utility.

                                     - 3.1 -
