# UM5

> Source: `manuals/misc/TSC_MAN - FLEX Software Archive - Manual and Documentation Archive - Includes APG-MAC, APG-PREF, APG1.zip!TSC_MAN.dsk!UM5.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.pg 1
.dm bo
.tl ''-3.%-''
..
.sp 4
.ce
GENERAL SYSTEM INFORMATION
.sp 2
I. DISK CAPACITY
.pp
Each sector of a FLEX disk contains 252 characters or bytes of user
data (4 bytes of each 256 byte sector are used by the system).
Thus a single-sided mini disk has 340 sectors or 85,680 characters
or bytes of user information.
A single-sided full size disk has 1140 sectors or 287,280 bytes of
user data.  Double-sided disks would contain exactly twice
these amounts.
.sp 2
II. WRITE PROTECT
.pp
Floppy disks can usually be physically write protected to prevent
FLEX from performing a write operation.  Any attempt to write to
such a disk will cause an error message to be issued.
It is good practice to write protect disks which have important
files on them.
.sp
A mini disk can be write protected by placing a piece of opaque
tape over the small rectangular cutout on the edge of the disk.
Full size floppys are just the opposite.  In order to write
protect a full size disk, you must remove the tape from the
cutout.  In other words, the notch must be exposed
to write protect the disk.  Some full size disks do not have
this cutout and therefore cannot be write protected.
.sp 2
III. THE 'RESET' BUTTON
.pp
The RESET button on the front panel of your
computer should NEVER BE PRESSED DURING A DISK OPERATION.
There should never be a need to 'reset' the machine while in FLEX.
If the machine is 'reset' and the system is writing data on the disk,
it is possible that the entire disk will become damaged.
Again, never press 'reset' while the disk is operating!
Refer to the 'escape' character in TTYSET for ways
of stopping FLEX.
.sp 2
IV. NOTES ON THE P COMMAND
.pp
The P command tries to load a printer driver file named PRINT.SYS
from the same disk which P itself was retrieved.
For the requirements of this file and on writing your
own custom PRINT.SYS file, see the section on such later in
this manual or consult the 'Advanced Programmer's Guide'.
.sp 2
V. ACCESSING DRIVES NOT CONTAINING A DISKETTE
.pp
If an attempt is made to access a minifloppy not containing a diskette,
the system will hang up attempting to read until a disk is inserted
and the door closed.
Alternatively, you could reset the
machine and begin execution at the warm start location $CD03.
.pg
VI. SYSTEM ERROR NUMBERS
.pp
Any time that FLEX detects an error during an operation,
an appropriate error message will be displayed on the terminal.
FLEX internally translates a derived error number into a plain
language statement using a look-up table called ERROR.SYS.
If you have forgotten to copy this .SYS file onto a disk
that you are using, FLEX will report a corresponding number
as shown below:
.bx
DISK ERROR  \#xx
.sx
where 'xx' is a decimal error number.
The table below is a list of these numbers and what
error they represent.
.pp
.nf
ERROR \#         MEANING

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
.fi
.sp
For more details concerning the meanings of these error
messages, consult the 'Advanced Programmer's Guide'.
.pg
VII. SYSTEM MEMORY MAP
.pp
The following is a brief list of the RAM space required
by the FLEX Operating System.
All address are in hex.
.sp 2
.nf
0000 - BFFF      User RAM
                 *Note: Some of this space is used by
                 NEWDISK, COPY and other utilities.
.sp
C000 - DFFF      Disk Operating System
.sp
C07F             System stack
.sp
C100 - C6FF      Utility command space
.sp
CD00             FLEX cold start entry address
CD03             FLEX warm start entry address
.fi
.sp 2
For a more detailed memory map,
consult the 'Advanced Programmer's Guide'.
.pg
VIII. FLEX OPERATING SYSTEM INPUT/OUTPUT SUBROUTINES
.sp
In order for the FLEX I/O functions to operate properly,
all user program character input/output subroutines
should be vectored thru the FLEX operating system rather
than the computer's monitor.
Below is a list of FLEX's I/O subroutines and a brief description
of each.
All given addresses are in hexadecimal.
.sp 2
GETCHR at $CD15
.br
This subroutine is functionally equivalent to S-BUG's
character input routine.
This routine will look for one character from the control terminal
(I/0 port \#1) and store it in the A accumulator.
Once called, the input routine will loop within itself until a
character has been input.
Anytime input is desired, the call JSR GETCHR or JSR $CD15 should be used.
.pp
GETCHR automatically sets the 8th bit to 0 and does not check for parity.
A call to this subroutine affects the processor's registers
as follows:
.bx
ACC. A   loaded with the character input from the terminal
B,X,Y,U  not affected
.sx
.pp
PUTCHR at $CD18
.br
This subroutine is used to output one character from the computer
to the control port (I/O port \#1).
It is functionally equivalant to the output character routine in S-BUG.
.pp
To use PUTCHR, the character to be output should be placed in the
A accumulator in its ASCII form.
For example, to output the letter 'A' on the control terminal,
the following program should be used:
.bx
LDA    \#$41
JSR    $CD18
.sx
The processor's registers are affected as follows:
.bx
ACC. A   changed internally
B,X,Y,U  not affected
.sx
.pp
PSTRNG at $CD1E
.br
PSTRNG is a subroutine used to output a string
of text on the control terminal.
When address $CD1E is called,
a carriage return and line feed will automatically be generated
and data output will begin at the location pointed to by the index register.
Output will continue until a hex 04 is seen.
The same rules for using the ESCAPE and RETURN keys for stopping
output apply as described earlier.
.pp
.nl 8
The accumulator and register status after using PSTRNG are as follows:
.bx
ACC. A   Changed during the operation
ACC. B   Unchanged
X        Contains the memory location of the last character read from the
           string (usually the 04 unless stopped by the ESC key)
Y,U      Unchanged
.sx
.pp
NOTE:  The ability of using backspace and line delete characters
is a function of your user program and not of the FLEX I/O routines
described above.
.sp 2
STAT at $CD4E
.br
This routine is used to determine the "status" of the input
device.
That is, to see if a character has been typed on the input
terminal keyboard.
Its function is to check for characters such as the ESCAPE
key in FLEX which allows breaking of the output.
This routine returns an EQual condition if no character was
hit and a Not-Equal condition if a character was hit.
No registers, except for the condition codes, may be altered.
.pp
.pp
For additional information consult the 'Advanced Programmer's Manual'.
.pg
IX.  BOOTING THE FLEX DISK OPERATING SYSTEM
.pp
In order to read FLEX from the system disk upon powering up
your system, you must have a short program in RAM or ROM memory.
This program is called a 'bootstrap' loader.
.sp
If you are using a Southwest Technical
Products disk system and the S-BUG monitor, there
are bootstraps stored in this ROM which you can use.  They are
executed by simply typing a 'D' for the full size floppy
or a 'U' for the mini floppy.
.sp
Those users of other hardware or monitor ROM should use
the boot supplied with the hardware if compatible with
FLEX.  A sample boot (for the SWTPc mini system) is given
here for reference.
.sp
If the system does not boot properly, re-position the system
disk in the drive and re-execute the bootstrap loader.
.sp 2
.nf
.in 3
 0100 B6   E018     START   LDA    COMREG    TURN MOTOR ON
 0103 86   00               LDA    \#0
 0105 B7   E014             STA    DRVREG
 0108 8E   0000             LDX    \#0000
 010B 3D            OVR     MUL              DELAY FOR SPEED UP
 010C 30   1F               LEAX   -1,X
 010E 26   FB               BNE    OVR
 0110 C6   0F               LDB    \#$0F      RESTORE
 0112 F7   E018             STB    COMREG
 0115 8D   2B               BSR    RETURN
 0117 F6   E018     LOOP1   LDB    COMREG
 011A C5   01               BITB   \#1
 011C 26   F9               BNE    LOOP1
 011E 86   01               LDA    \#1
 0120 B7   E01A             STA    SECREG
 0123 8D   1D               BSR    RETURN
 0125 C6   8C               LDB    \#$8C      READ WITH LOAD
 0127 F7   E018             STB    COMREG
 012A 8D   16               BSR    RETURN
 012C 8E   C000             LDX    \#$C000
 012F C5   02       LOOP2   BITB   \#2        DRQ?
 0131 27   05               BEQ    LOOP3
 0133 B6   E01B             LDA    DATREG
 0136 A7   80               STA    0,X+
 0138 F6   E018     LOOP3   LDB    COMREG
 013B C5   01               BITB   \#1        BUSY?
 013D 26   F0               BNE    LOOP2
 013F 7E   C000             JMP    $C000
 0142 8D   00       RETURN  BSR    RTN
 0144 39            RTN     RTS
.in 0
.fi
.pg
X.  REQUIREMENTS FOR THE 'PRINT.SYS' PRINTER DRIVER
.sp 2
FLEX, as supplied, includes a printer driver that will work
with most parallel type printers,
such as the SWTPC PR-40.
If desired,
the printer driver may be changed to accomodate
other types of printers.
Included is the source listing for the supplied driver.
Additional information on the requirements for the PRINT.SYS
driver can be found in the Advanced Programmer's Guide.
.sp
.in 5
.si -3
1)\ The driver must be in a file called PRINT.SYS
.sp
.si -3
2)\ Three separate routines must be supplied, a printer initialization
routine (PINIT at $CCC0), a check ready routine (PCHK at $CCD8), and
an output character routine (POUT at $CCE4).
.sp
.si -3
3)\ When the POUT routine is called by FLEX,
the character to be output will be in the A accumulator.
The output routine must not destroy the
B, X, Y, or U registers.
PINIT may destroy any registers.  PCHK may NOT alter any registers.
.sp
.si -3
4)\ The routines MUST start at the addresses specified, but may
be continued anywhere in memory if there is not room where
specified.  If placed elsewhere in memory, be certain they
do not conflict with any utilities or programs which will use
them.
.sp
.si -3
5)\ All three routines must end
with a return from subroutine instruction (RTS).
.in 0
.nf
.sp 2
                    *
                    * PRINT.SYS PIA DRIVERS FOR GENERAL CASE PRINTER
                    *

              E01C  PIA     EQU    $E01C     PIA ADDRESS FOR PORT \#7

                    *
                    * PRINTER INITIALIZATION (MUST BE AT $CCC0)
                    *
 CCC0                       ORG    $CCC0     MUST RESIDE AT $CCC0
 CCC0 86   3A       PINIT   LDA    \#$3A      SELECT DATA DIRECTION REG.
 CCC2 B7   E01D             STA    PIA+1     BY WRITING 0 IN DDR CONTROL
 CCC5 86   FF               LDA    \#$FF      SELECT ALL OUTPUT LINES
 CCC7 B7   E01C             STA    PIA       PUT IN DATA DIRECTION REG.
 CCCA 86   3E               LDA    \#$3E      SET UP FOR TRANSITION CHECKS
 CCCC B7   E01D             STA    PIA+1     AND ENABLE OUTPUT REGISTER
 CCCF 39                    RTS
                    * PRINTER READY ROUTINE
 CCD0 7D   E01C     PREADY  TST    PIA       RESET PIA READY INDICATION
 CCD3 73   CCE3             COM    PFLAG     SET THE PRINTER READY FLAG
 CCD6 39                    RTS
.pg
                    *
                    * CHECK FOR PRINTER READY (MUST BE AT $CCD8)
                    *
 CCD8                       ORG    $CCD8     PRINT TEST AT $CCD8
 CCD8 7D   CCE3     PCHK    TST    PFLAG     TEST FOR PRINTER READY
 CCDB 2B   05               BMI    PCHKX     IF NEGATIVE, PRINTER READY
 CCDD 7D   E01D             TST    PIA+1     CHECK FOR TRANSITION
 CCE0 2B   EE               BMI    PREADY    IF MINUS, PRINTER NOW READY
 CCE2 39            PCHKX   RTS
                    * PRINTER READY FLAG
 CCE3 FF            PFLAG   FCB    $FF       PRINTER READY FLAG

                    *
                    * PRINTER OUTPUT CHARACTER ROUTINE (MUST BE AT $CCE4)
                    *
 CCE4                       ORG    $CCE4     MUST RESIDE AT $CCE4
 CCE4 8D   F2       POUT    BSR    PCHK      TEST FOR PRINTER READY
 CCE6 2A   FC               BPL    POUT      LOOP UNTIL PRINTER READY
 CCE8 7F   CCE3             CLR    PFLAG     SET PRINTER FLAG NOT READY
 CCEB B7   E01C             STA    PIA       SET DATA IN OUTPUT REGISTER
 CCEE 86   36               LDA    \#$36      SET DATA READY, HIGH TO LOW
 CCF0 8D   02               BSR    POUTB     STUFF BYTE INTO THE PIA
 CCF2 86   3E               LDA    \#$3E      THEN SEARCH FOR TRANSITION
 CCF4 B7   E01D     POUTB   STA    PIA+1     OF LOW LEVEL TO HIGH LEVEL
 CCF7 39                    RTS

                            END
.fi
.pg
Sample Drivers for Serial Printer
.pp
The following listing is a sample set of drivers for
a serial type printer using an ACIA as its interface.
This set of drivers is not supplied on disk.
In order to use these drivers, you must type in the
source and assemble it.
If you have a serial printer, you will probably want to
replace the parallel PRINT.SYS file on the disk with one
containing these drivers.
.sp 3
.nf
 1                      *
 2                      * PRINT.SYS DRIVERS FOR GENERAL SERIAL PRINTER
 3                      * CHANGE ACIA EQUATE IF NECESSARY
 4                      *
 5
 6                E01C  ACIA    EQU    $E01C     ACIA ADDRESS FOR PORT \#7
 7
 8                      *
 9                      * PRINTER INITIALIZATION (MUST BE AT $CCC0)
10                      *
11   CCC0                       ORG    $CCC0     MUST RESIDE AT $CCC0
12   CCC0 86   13       PINIT   LDA    \#$13      RESET ACIA
13   CCC2 B7   E01C             STA    ACIA
14   CCC5 86   11               LDA    \#$11      SET 8 BITS & 2 STOP
15   CCC7 B7   E01C             STA    ACIA
16   CCCA 39                    RTS              RETURN
17
18                      *
19                      * CHECK FOR PRINTER READY (MUST BE AT $CCD8)
20                      *
21   CCD8                       ORG    $CCD8     PRINT TEST AT $CCD8
22   CCD8 34   04       PCHK    PSHS   B         SAVE B ACC.
23   CCDA F6   E01C             LDB    ACIA      GET STATUS
24   CCDD 56                    RORB             GET TDR BIT INTO
25   CCDE 56                    RORB             SIGN POSITION
26   CCDF 56                    RORB
27   CCE0 35   04               PULS   B         RESTORE B ACC.
28   CCE2 39                    RTS              RETURN
29
30                      *
31                      * PRINTER OUTPUT CHARACTER ROUTINE (MUST BE AT $CCE4)
32                      *
33   CCE4                       ORG    $CCE4     MUST RESIDE AT $CCE4
34   CCE4 34   04       POUT    PSHS   B         SAVE B ACC.
35   CCE6 F6   E01C     POUT2   LDB    ACIA      GET STATUS
36   CCE9 57                    ASRB             GET TDR BIT
37   CCEA 57                    ASRB             INTO CARRY
38   CCEB 24   F9               BCC    POUT2     LOOP IF NOT READY
39   CCED 35   04               PULS   B         RESTORE B ACC.
40   CCEF B7   E01D             STA    ACIA+1    WRITE OUT THE CHAR.
41   CCF2 39                    RTS              RETURN
42
43                              END
.fi
