# READ-ME

> Source: `dev/pascal/PL9_LONG - Pascal Language - Program and Support Utilities.zip!PL9_LONG.DSK!READ-ME.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

ALL SUBSEQUENT WORK
     CARRIED OUT USING THE COPY!

     DO NOT LOOSE THIS DISK. IF YOU EVER  WANT  TO  UPGRADE
     THIS COPY OF PL/9 FOR A LATER VERSION YOU MUST, REPEAT
     MUST, RETURN IT TO US TO BE ELIGIBLE FOR THE  LOW-COST
     UPGRADE SERVICE.


      * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                   *
      *  COMPLETE AND RETURN THE REGISTRATION FORM NOW!   *
      *                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * *


The  following  files are the PL/9L compiler itself and must all
exist on your system drive:

 1. PL9L    .CMD     This  is  the  compiler  itself. It runs at
                     $0000 - $3FFF.

 2. PL9L_TD .CMD     This  is  the PL/9L tracer. It is called by
                     the compiler  and  runs  in  the  FLEX  TCA
                     between $C100 - $C6FF.

 3. PL9L    .ERR     This is a random access file very much like
                     the  FLEX  'ERRORS.SYS'  and is used by the
                     compiler   for   error   reporting   during
                     compilation.


The following file is the PL/9L configuration program. Generally
speaking  you  only  need to run it once. It should be copied to
your system disk, run, and then deleted if you have  no  further
use for it.

                                NOTE
                                ====

     Before running the 'SETPL9L' program you  should  turn
     the    pause    function    of    TTYSET   off   thus:
     +++TTYSET,PS=N<CR>. If you fail  to  do  this  strange
     stoppages will occur whilst the prompts are issued.


 4. SETPL9L .CMD     This command will enable you  to  configure
                     you  copy  of  PL/9  to  match  your system
                     hardware configuration.

 5. SETPL9L .PL9     This is the PL/9 source file for the above.
                     It is supplied just in case you have a very
                     unusual system configuration. If you  alter
                     it you must  re-compile  it  using  a  FLEX
                     command line call, viz:

                     +++PL9L,0.SETPL9L.PL9,O=0.SETPL9L.CMD<CR>

                     Note:  TRUFALSE.DEF and  FLEX.LIB  must  be
                            present on drive #0 to compile  this
                            program.


The  following  are  the  PL/9L libraries  which  are  generally
'INCLUDEd'  in PL/9L programs when they are required. These need
not be present on your system  disk  for  the  compiler  to  run
unless  the  program being compiled 'INCLUDEs' any of them. They
may be placed on  your  system  disk  (space  permitting)  or  a
selection of them may be placed on specific work disks.

 6. TRUFALSE.DEF     TRUE, FALSE and MEM definitions.

 7. HEXGLOBL.DEF     HEXIO error flag definitions.

 8. IOSUBS  .LIB     A selection of low-level I/O drivers.

 9. TERMSUBS.LIB     Intelligent terminal drivers.

10. HEXIO   .LIB     HEX input and output routines.

11. BITIO   .LIB     BINARY input and output routines.

12. HARDIO  .LIB     PEEK and POKE for those who like BASIC!

13. STRSUBS .LIB     Low-level string handlers.

14. BASTRING.LIB     BASIC syntax string handlers.

15. FLEX    .LIB     FLEX interface routines.

16. LONGCON .LIB     LONG -> ASCII and ASCII -> LONG.

17. NUMCON  .LIB     INTEGER input and output routines.

18. LONGIO  .LIB     LONG input/output routines.

19. SORT    .LIB     Low-level sort routine.


20. READ-ME .TXT     This file!


We regret that due to limited demand for this  product  we  have
not  prepared  a manual for it nor have we documented the 'LONG'
variable type. The LONG variable type replaces the REAL variable
type  in  this  version.  LONGs are 32-bit numbers with the most
significant bit being used as a sign bit.  For  obvious  reasons
the  SCIPACK  library is not supplied. REALCON has been replaced
by LONGCON and REALIO has been replaced by LONGIO.


PL/9L  is identical to the regular version in most respects. The
following is a list of differences:

                 REAL                     LONG
                 ====                     ====

REAL     A floating-point           LONG     A 32-bit signed
         number as per the                   long integer.
         manual.

FLOAT()  Convert to                 LONG()   Convert to a long
         floating point.                     integer.

FIX()    Convert to INTEGER.        SHORT()  Convert to INTEGER.

INT()    Round down to the          INT()    Redundant.
         nearest INTEGER.


Constants  are 16-bit quantities. If you declare a constant as a
32 bit quantitity, e.g. 'constant xxx = $12345678;' the compiler
will  accept  it  without  complaint but will only use the least
significant 16-bits! The only way you can define a long constant
is  to  use  the  read  only  data  declaration  similar to that
described for REALS in the manual. e.g.  'long  xxx  $12345678;'
before or between procedures.

The  normal PL/9 mathematics functions of add, subtract, divide,
multiply and square root are all available for LONG variables.

Also remember that the bit operators AND, OR  and  EOR  and  the
functions  SHIFT  and NOT only work on 16 bit short integers ...
they do not function with long integers.


                         RECENT CHANGES
                         ==============

The   SETPL9L   configuration  program  will  now  accept  drive
assignments of 0 through 7  for  compatibility  with  Windrush's
implementation  of  FLEX.  This  extended  drive  table  is only
available in WMS FLEX version 6.6 onwards. If you have an  older
release of FLEX only drive numbers 0 through 3 will be valid.

The  'R'  and  'W'  commands  now default to the file defined by
SETPL9l (1.SCRATCH.SCR as supplied) at all times except when you
specifically direct these commands to another drive or file.

The  changes mean that when you use 'R' or 'W' alone output will
always be directed to 1.SCRATCH.SCR (or however you define it in
SETPL9L).  If  'R'  or  'W' are used to direct input/output to a
specified file the re-direction is valid for  a  single  command
only, i.e. the default file name is not altered.

This  has  been  done to prevent the common accident that 'R' is
used to read in a library file specified by the  user  and  then
'W' is subsequently used to write out a few lines to a temporary
file. Unfortunately the 'W' command would have written on top of
the users library file instead.


                            -- O --


If you have any comments about this product or its documentation
please direct them to:


WINDRUSH MICRO SYSTEMS LIMITED
Attn: William C. Dickinson
Worstead Labs
North Walsham, Norfolk
ENGLAND  NR28 9SA

TEL: (0692) 404086 from the UK.  Or 44 (692) 404086 from the US.
TLX: 975548 WMICRO G
