# GUIDEPT4

> Source: `misc/uncategorized/USERV4_2 - FLEX Software Archive - Program and Support Utilities - Includes GUIDEPT1, GUIDEPT2, GUIDEPT3.zip!USERV4_2.DSK!GUIDEPT4.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
#PL/9 EDITOR-COMPILER FOR THE MC6809                                  USERS GUIDE


.DHE
#USERS GUIDE                                  PL/9 EDITOR-COMPILER FOR THE MC6809


.DFO
.
                                    PAGE %%%%


.DFE
.
                                    PAGE %%%%


9.10.00  PROGRAM ENTRY AND EXIT

 Most PL/9 programs will be self-contained and only  called  from  FLEX,  another
 PL/9  program,  or  will be the ONLY program in a dedicated control system. When
 they finish (if ever)  they  return  to  FLEX  or  to  wherever  the  programmer
 specifies.

 There  are  occasions,  however, when a program must behave in its entirety as a
 subroutine; it may, for example, be called from BASIC  or  another  language  to
 perform some task not suited to the latter.

 Suppose  that  you have written a PL/9 program that is going to interface to the
 system hardware, say  to  read  a  number  of  samples  in  real  time  from  an
 analog-to-digital  converter.  Your  program will be called from BASIC, which is
 unable to do that kind of job itself but which is perfectly capable of doing the
 subsequent  analysis,  especially  if  the  data  is  to be presented in tabular
 manner.

 Assuming that you have a compiled PL/9 program called  'SAMPLE.BIN',  the  BASIC
 program  line  EXEC  "GET SAMPLE" will load the sampling program into memory for
 use with a 'USR' call. See your BASIC manual for further information on  how  to
 use the 'USR' function.


 The following sections will provide guidelines on how to construct PL/9 programs
 such  that  they  will not interfere with the memory allocations of the 'parent'
 program and will return to the 'parent' program with ALL of the MC6809 registers
 intact.

 The information in the following sections will be presented in the  usual  order
 they MUST be declared in if they are used in a PL/9 program.


9.10.01  ORIGIN

 A PL/9 program has a single entry point, this being the address specified by the
 first  ORIGIN in the program. This keyword has only been mentioned superficially
 so far in the User's Guide; its purpose is to allow you to locate  your  program
 wherever  you choose in memory. Without an ORIGIN, all programs start at address
 $0000.

 This  may  be  fine for many applications but it conflicts with BASIC as well as
 many other languages. In these cases you will have to choose somewhere  else  to
 locate  it.  Exactly  where you decide to put it depends on your system hardware
 configuration, what the main program  is  doing  etc.  As  there  are  too  many
 variations  it  is impossible to suggest a suitable location. Generally speaking
 if you allocate your programs to the area of memory just below FLEX, say between
 $B000 and $BFFF you will avoid 'knocking' into anything else. The FLEX transient
 command area between $C100 and $C6FF is another good location if your program is
 not  going  to  make  use  of  any of the FLEX disk resident commands.

 Since the tracer ignores ORIGIN statements locating your program in the FLEX TCA
 will not cause any conflicts.

 You  are  allowed to declare as many ORIGINs as you wish in a PL/9 program. They
 may also be declared in any order, i.e. you can have the first  origin  declared
 as  $8000,  the  second as $0100, the third as $E000, etc. PL/9 assumes that you
 know what you are doing in these instances so you must be careful not to declare
 an  origin  that  overlaps  the code produced by the procedures based at another
 origin.

 We also remind you to observe the caution detailed in section 7.01.03 concerning
 declaring the first procedure or read-only data, even if it  means  declaring  a
 dummy procedure or read-only BYTE, before you declare the second ORIGIN.


 ORIGIN may be declared as:

    ORIGIN=$C100;


 Or it may be assigned via a CONSTANT, e.g.

    CONSTANT FLEX_TCA=$C100;

    ORIGIN=FLEX_TCA;


 One  very  important  point  to  note about PL/9 program structures that use the
 STACK, GLOBAL, or DPAGE declarations is that you MUST always  enter  the  PL/9
 program  at  the  FIRST declared ORIGIN. This is because all of the code for the
 STACK,  GLOBAL,  and  DPAGE  assignments  is  placed immediately after the first
 ORIGIN. After the code for the above facilities you  will  always  find  a  long
 branch to the last procedure in the file.

 If STACK, GLOBAL and DPAGE are not used in a file containing a  series  of  PL/9
 subroutines,  a library file for example, the above rule does not apply. In this
 instance you may enter each of the PL/9 procedures at the specific  address  you
 decide  to  locate them at either by multiple ORIGIN statements or by looking at
 the code PL/9 produces to ascertain the starting address of each procedure. When
 STACK, GLOBAL, and DPAGE are not used only a long branch to the  last  procedure
 will be present at the first ORIGIN.


9.10.02  STACK

 Here's a keyword that you can use to wreck havoc on your system if you  are  not
 careful  with  it! This keyword, if used, MUST be declared immediately after the
 first ORIGIN and in the absence of an origin as the first  line  of  a  program.
 Comment lines may appear before both the ORIGIN and the STACK declarations or in
 between them for that matter, but nothing else may!

 This keyword initializes the PL/9  stack  to  be  wherever  you  want  it.  Most
 programs  called  from  FLEX can leave the stack pointer alone as the FLEX stack
 area between $C000 and $C080 should be adequate for most programs. If this  does
 not  provide enough space remember that the stack will simply grow downwards. If
 you locate your program in a sensible area of low  memory  the  chances  of  the
 stack growing into it are remote.

 A  suitable  location for the STACK is left to the discretion of the programmer.
 If you want to put it right on top of FLEX, go ahead...PL/9 doesn't mind!!!

 It is quite permissible to relocate the stack if the PL/9 program  is  going  to
 return  to  FLEX  as  entering  the  FLEX  warm  start  address  at  $CD03  will
 reinitialize the stack pointer to the position FLEX wants it in.

       * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
       *                                                               *
       *    If you are going to call the PL/9 procedure from  BASIC,   *
       *    another  language  or  even  another  PL/9 procedure you   *
       *    shouldNEVERre-assign the stack unless you take special   *
       *    precautions to preserve the existing stack pointer.        *
       *                                                               *
       *  Refer to the section on ENDPROC END for further information. *
       *                                                               *
       * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 If, on the other hand, the PL/9 program is to form the main (or only) program in
 a self starting environment the stackMUST ALWAYSbe assigned.


 Like the ORIGIN assignment STACK may be assigned directly or via a constant.


 NOTE:  'STACK'  is  also  a  pseudo  register  keyword  when it appears within a
        procedure.


9.10.03  GLOBAL

 This keyword, if used, must appear after the  ORIGIN  statement,  if  used,  and
 after the STACK statement, if used, and before the DPAGE statement, if used.

 It's  purpose  is  to allocate permanent storage on the stack in order to assign
 variables that will be known by all procedures and accessible by all procedures.
 GLOBAL  storage  is permanent in that it is not lost between procedures as local
 variables are.

 Using  the  GLOBAL  statement  also causes PL/9 to generate the code required to
 push the entire register set onto the stack before the stack pointer is  shifted
 to  make  room  for the global data storage. If you are writing a PL/9 procedure
 that must behave as a subroutine, AND you require that the subroutine  preserves
 all  of  the  registers (as is the case of a subroutine called from many BASICs)
 using the GLOBAL statement, even if you are not using any global  variables,  is
 an easy way of accomplishing this end. In this instance you would simply declare
 a dummy global variable 'GLOBAL BYTE DUMMY;'. Also see the  section  on  ENDPROC
 END for information on how to terminate a PL/9 program that uses global storage.

 It is important to note that the variables declared immediately after the GLOBAL
 statement  will  reside  at the base of the stack (the stack will grow down from
 the location of the first global variable). The closer a variable is to the base
 of the stack the shorter will be the code required to address it.

 Frequently used global variables should therefore be declared first as this  can
 significantly  reduce  the amount of code PL/9 will generate if global variables
 are frequently used in the subsequent procedures.

 GLOBAL may be assigned directly or via a constant.


9.10.04  DPAGE

 DPAGE, if used, must be declared after the STACK statement, if used,  and  after
 the  GLOBAL statement, if used. This keyword allows you to set the MC6809 direct
 page register to any location in memory. Normally the direct  page  register  is
 set  to  $00  by  reset.  Using DPAGE to set the direct page register to the top
 8-bits of the address of your 'AT' variables or your I/O addresses  will  enable
 PL/9 to generate more efficient code when accessing 'hard' memory locations over
 a range of 256 bytes.

 For example in a WINDRUSH or a GIMIX system stating 'DPAGE=$E0' will improve the
 code to access any variable from $E000 to $E0FF which is the  entire  SS-30  I/O
 section.

 If  you  use  DPAGE in a PL/9 program that is to be called from BASIC you should
 also use GLOBAL before it (even if this means declaring a dummy global variable)
 and  ENDPROC  END at the end of the main PL/9 program. This will ensure that the
 MC6809 direct page register is returned to the calling program intact.

 Altering the direct page register in a subroutine and returning to  the  calling
 program  without  re-instating the original value of the direct page register is
 one of the niftiest way of generating the strangest crashes you have ever seen.

 If you use the 'DPAGE' directive any you wish  to  access  'AT'  variables  that
 reside  on the direct page within a hardware interrupt procedure (IRQ, NMI, FIRQ
 and RESET) youMUSTre-initialize the 'DP' within the interrupt procedure.

 DPAGE may be assigned directly or set via a constant.
9.10.05  ENDPROC END

 Earlier in this Guide it was stated that the main procedure in  a  PL/9  program
 does not need an ENDPROC statement if you are calling the PL/9 program from FLEX
 and expect it to return there.

 When you are trying to  build  a  PL/9  program  as  a  subroutine  for  another
 language,  or  another  PL/9  program  for  that matter, the main procedure WILL
 require an ENDPROC.

 There  are  two distinct cases to consider, viz. where global variables have not
 been used and where they have.

 Without global variables,  an  ENDPROC  (or  an  ENDPROC  END)  after  the  last
 procedure  will generate a Return-From-Subroutine ($39) and therefore return you
 tidily to the calling program. In  this  instance  any  or  all  of  the  MC6809
 registers  may have been altered. The stack pointer, however, will be just where
 it was when the PL/9 program was entered.

 If a GLOBAL declaration  is  used  the  compiler  generates  code  to  save  all
 registers,  then  makes  some  room  on  the  system  stack and sets the Y index
 register to point to the base of the variables just created. At the very end  of
 the program it is therefore necessary to release this reserved space and pop all
 of the saved registers; a simple  Return_From_Subroutine  is  not  enough.  PL/9
 recognizes  the statement ENDPROC END as meaning "that was the last procedure of
 the program so now clean up the stack".

 This simple construct is all that is necessary to make  even  the  largest  PL/9
 program  a complete subroutine that can called from anywhere and return with not
 only the stack pointer preserved but also the entire register set as well.

 The above implies that if you wish to  preserve  the  entire  register  set  you
 should  make  a  GLOBAL  declaration  even  if  you  are not going to use global
 variables in the subsequent procedures. In this case you  would  simply  make  a
 dummy  declaration  as  'GLOBAL  BYTE  DUMMY;' and terminate the program with an
 'ENDPROC END;'.

 Note, of course, that wherever the PL/9 program  is  called  from  must  provide
 enough room on the stack for any global or local variables that will be declared
 in the subroutine as well as any growth downward created  by  nested  subroutine
 calls.

 There is no automatic provision for saving the stack pointer on entry, assigning
 a temporary stack area, and restoring the original stack before exiting.

 If this ever becomes necessary you can structure the PL/9 program  as  indicated
 on  the  following  page. Here you must break one of the primary rules governing
 the entry of PL/9 programs; you must enter it at an address other than the first
 declared  ORIGIN. The use of multiple ORIGIN statements in the example precludes
 the necessity of having to look at the code PL/9 produces in order to  determine
 where  to  enter  the  program  and  where  the  final procedure must jump to to
 terminate it.

 This type of program structure does have one distinct disadvantage:

                         ______________________________
                        IT IS NOT POSITION INDEPENDENT


9.10.05  ENDPROC END  (continued)


 0001 CONSTANT PL9PROG = $8000,
 0002          ENTER_HERE = $8020,
 0003          EXIT_HERE = $8030,
 0004
 0005          STACK_INIT = $7FFD,
 0006
 0007          STACK_SAVE_HI = $7F,
 0008          STACK_SAVE_LO = $FE;
 0009
 0010
 0011 ORIGIN = PL9PROG;
 0012 STACK = STACK_INIT;
 0013 GLOBAL INTEGER I1,I2;
 0014 DPAGE = $EF;
 0015
 0016 BYTE  DUMMY $12;  /* See section 7.01.03 if you don't understand this as
 0017                      it is critical to the operation of the compiler!  */
 0018
 0019 ORIGIN = ENTER_HERE;
 0020
 0021 PROCEDURE ENTER_THE_PL9_PROGRAM_HERE;
 0022    GEN $34,$7F;                               /* PSHS  CC,D,DP,X,Y,U */
 0023    GEN $10,$FF,STACK_SAVE_HI,STACK_SAVE_LO;   /* STS STACK_SAVE */
 0024    JUMP PL9PROG;
 0025 ENDPROC;
 0026
 0027
 0028
 0029 ORIGIN = EXIT_HERE;
 0030
 0031 PROCEDURE HEAD_FOR_HOME;
 0032    GEN $10,$FE,STACK_SAVE_HI,STACK_SAVE_LO;   /* LDS STACK_SAVE */
 0033    GEN $35,$FF;                               /* PULS  CC,D,DP,X,Y,U,PC */
 0034 ENDPROC;
 0035
 0036
 0037 INCLUDE 0.IOSUBS;
 0038
 0039
 0040 /*
 0041   * * * * * * * * * * * * * * * * * * * *
 0042   *  PUT ANY SUBROUTINE PROCEDURES HERE *
 0043   * * * * * * * * * * * * * * * * * * * *
 0044 */
 0045
 0046
 0047 PROCEDURE MAIN;
 0048 /*
 0049   * * * * * * * * * * * * * * * * *
 0050   *  DO WHATEVER YOU LIKE HERE!   *
 0051   * * * * * * * * * * * * * * * * *
 0052 */
 0053    PRINT("THIS WAS A QUICK TRIP");
 0054
 0055    JUMP EXIT_HERE;  /* LEAVE PROGRAM VIA THIRD ORIGIN */

 Under NO CIRCUMSTANCES let the MAIN procedure terminate with an ENDPROC as  this
 will POSITIVELY crash the system!
9.10.05  ENDPROC END  (continued)

 The  following  block  diagram  should clarify what the program structure on the
 previous page is doing.

             +----->----->----->----->--+
             |                          |
             |         +---------- FIRST ORIGIN ---------+
             |         |                                 |
             |         | STACK, GLOBAL, DPAGE ALLOCATION |
             |         +---------------------------------+
             |                          |
             |         +---------------------------------+
             |         |  LONG BRANCH TO LAST PROCEDURE  |----->---+
             |         +---------------------------------+         |
             |                                                     |
             |         +---------------------------------+         |
             |         |     DUMMY READ-ONLY VARIABLE    |         |
             |         |        OR DUMMY PROCEDURE       |         |
             |         |       (forces long branch)      |         |
             |         +---------------------------------+         |
             |                                                     |
             |         (ENTER HERE)-->--+                          |
             |                          |                          |
             |         +--------- SECOND ORIGIN ---------+         |
             |         |                                 |         |
             |         |        SAVE THE REGISTERS       |         |
             |         |      SAVE THE STACK-POINTER     |         |
             |         |                                 |         |
             |         |       JUMP TO FIRST ORIGIN      |         |
             |         +---------------------------------+         |
             |                          |                          |
             +-----<-----<-----<-----<--+                          |
                                                                   |
             +----->----->----->----->--+                          |
             |                          |                          |
             |         +---------- THIRD ORIGIN ---------+         |
             |         |                                 |         |
             |         |    RECOVER THE STACK POINTER    |         |
             |         |   RECOVER REGISTER SET AND PC   |         |
             |         +---------------------------------+         |
             |                          |                          |
             |             (RETURN TO CALLING PROGRAM)             |
             |                                                     |
             |         +---------------------------------+         |
             |         |          INCLUDE FILES          |         |
             |         +---------------------------------+         |
             |                                                     |
             |         +---------------------------------+         |
             |         |           SUBROUTINES           |         |
             |         +---------------------------------+         |
             |                                                     |
             |                          +-----<-----<-----<-----<--+
             |                          |
             |         +---------------------------------+
             |         |           MAIN PROGRAM          |
             |         |                                 |
             |         |       JUMP TO THIRD ORIGIN      |
             |         +---------------------------------+
             |                          |
             +-----<-----<-----<-----<--+
9.11.00  HANDLING INTERRUPTS (SWI, SWI2, SWI3, NMI, FIRQ, and IRQ)

 Interrupts  provide  a convenient way of getting your computer to effectively do
 two or more things at once. Most high level languages can only handle interrupts
 with a great deal of difficulty and assembly language patches.

 The  first  point  to note about interrupts is that they areSYSTEM DEPENDANTin
 that when an interrupt occurs, program execution is suspended and the  processor
 jumps  to  an  address  dependant on what it finds at the very top of memory. In
 most 6809 development systems the System Monitor traps the interrupt and decides
 what  to  do with it. PL/9 assumes that your system monitor, following the usual
 convention, maintains a RAM vector for  each  interrupt.  The  address  of  your
 interrupt  handler  is  then  placed  in  the RAM vector. Thus when an interrupt
 occurs control will be passed to your routine.

 The configuration program SETPL9 (see section three) enables you to install  the
 correct  interrupt vector addresses in your copy of PL/9. The addresses you give
 SETPL9 however, depend on the environment in which your application program will
 run. Normally you should supply SETPL9 with the addresses of your system monitor
 RAM vectors. This will allow you  to  compile  and  test  programs  within  your
 development  system.  When  you  wish  to  compile  the  program  for  use  in a
 stand-alone or self-starting system all you need do is  specify  the  'R'  (ROM)
 option when you compile the program, e.g. 'A:O=MYPROG.BIN,R'.

 Because  of  the  hardware  dependant nature of interrupt generating devices, it
 is very difficult t give you examples which you can try  out,  since  they  will
 vary so much from one system to another. Some guidelines are in order however:

 1. An interrupt procedure is very much like any other procedure in PL/9 , except
    that  you  can  only pass parameters to it via GLOBAL and AT variables. Three
    procedure names are reserved for the software interrupts, viz. SWI, SWI2, and
    SWI3.  Three  procedure  names are also reserved for the hardware interrupts,
    viz. NMI, FIRQ, and IRQ (RESET will be covered in the  next  section).  These
    names  tell  PL/9  to  set  up  the  interrupt vectors specified when you ran
    SETPL9. Local variables can be declared within an interrupt procedure. At the
    end  of the procedure PL/9 generates a Return-From-Interrupt (RTI) instead of
    the usual Return-From-Subroutine (RTS).

 2. Global  variables,  and  'AT' variables in the direct page (as defined by the
    'DPAGE' directive) can only be accessed with caution and require a  conscious
    effort,  on the part of the programmer, to preserve and restore the 'Y' index
    register if GLOBALS are being accessed and the 'DP' register if AT  variables
    in  the direct page are being accessed. If you recall PL/9 uses the 'Y' index
    register to point to the base of the  global  variables.  When  an  interrupt
    occurs there is no telling what will be in either of these two registers. If,
    for example, the interrupt occurred whilst the processor was executing a FLEX
    subroutine  the  contents of the 'Y' and/or 'DP' register(S) would positively
    be questionable. This means  that  if  you  wish  to  access  GLOBAL  and  AT
    variables  from  within an interrupt procedure you must take steps to recover
    the 'Y' and 'DP' registers before any such accesses take place.  This  latter
    point  is  particularly  important if the interrupt procedure is going to use
    any of the other PL/9 procedures as subroutines. In these  circumstances  you
    have  to  be  very  careful  NOT  to use any procedures that use GLOBAL or AT
    variables. In large programs it may be difficult  to  be  absolutely  certain
    that  subroutines  called  from  the  interrupt  procedure  do  not make some
    reference to GLOBAL or AT variables.

    What  follows  is  a  demonstration of a simple, but effective, technique for
    preserving the contents of the 'Y' index register at the start of  a  program
    and recovering it from within the interrupt procedure.

9.11.00  HANDLING INTERRUPTS (SWI, SWI2, SWI3, NMI, FIRQ, and IRQ)  (continued)

    This technique requires that you have access to two bytes of memory  at  some
    absolute  address. This should not pose any problems 99.997% of the time. The
    technique we have adopted is to assign the stack  to  a  location  two  bytes
    further  down  in  memory  than  we normally would. For example our dedicated
    systems usually have 1K of RAM between $E400 and $E7FF. Instead of  assigning
    the  stack  to  $E5FF,  for  example, we assign it to $E5FD. The exact memory
    location you chose to store the 'Y' register is not particulary important but
    it must not be used by anything else in the system.

    The following program illustrates the technique:


    0001 CONSTANT STACK_INIT = $E7FE,
    0002          YSAVE_HI   = $E7,
    0003          YSAVE_LO   = $FE;
    0004
    0005
    0006 STACK=STACK_INIT;
    0007
    0008 GLOBAL I1;
    0009
    0010 INCLUDE 0.IOSUBS;
    0011
    0012
    0013 PROCEDURE SAVE_GLOBAL_POINTER;
    0014     GEN $10,$BF,YSAVE_HI,YSAVE_LO;  /* STY YSAVE */
    0015 ENDPROC;
    0016
    0017
    0018 PROCEDURE RESTORE_GLOBAL_POINTER;
    0019     GEN $10,$BE,YSAVE_HI,YSAVE_LO;  /* LDY YSAVE */
    0020 ENDPROC;
    0021
    0022
    0023 PROCEDURE ONE;
    0024 ENDPROC;
    0025
    0026 .
    0027 .
    0028 .
    0029 .
    0030 .
    0031
    0032 PROCEDURE TEN;
    0033 ENDPROC;
    0034
    0035
    0036 PROCEDURE NMI;
    0037     RESTORE_GLOBAL_POINTER;
    0038     I1=I1+1;
    0039 ENDPROC;
    0040
    0041
    0042 PROCEDURE MAIN;
    0042     SAVE_GLOBAL_POINTER;
    0044     .
    0045     .
    0045     .
    0047 ENDPROC END;
9.11.00  HANDLING INTERRUPTS (SWI, SWI2, SWI3, NMI, FIRQ, and IRQ)  (continued)

    The  main  points  to note are that the global pointer is saved as one of the
    first actions in the MAIN procedure and is recovered  as  one  of  the  first
    actions of the interrupt procedure. For an example of how to recover the 'DP'
    register see the PL/9 'MINI-MONITOR' program in section 9.12.02.

 3. It is not normally  possible  to  trace  interrupt  procedures  using  PL/9's
    built-in trace/debugger. The tracer, which is described in section six, works
    by placing extra code in the object program that allows it to retain  control
    over  the  program  while  it  is  running. An internal subroutine in PL/9 is
    called once for every source line; this subroutine can stop the  program,  if
    necessary,  to  examine  variables.  Because  the  tracer  is not re-entrant,
    however, an interrupt will destroy information relevant to the procedure that
    was being executed when the interrupt occurred.

    In  order  to  ensure  that a program using interrupts can be traced you MUST
    ensure that that the interrupt procedures can't. To do this, write them to  a
    file and INCLUDE them at the appropriate point in the program. Since INCLUDEd
    procedures are never traced (they are assumed to already work) the  interrupt
    will  never be seen by the tracer, which will continue to operate on the main
    program.

    A warning must be issued here: If you write a program  that  generates  timer
    interrupts and includes an interrupt procedure to handle them, the timer will
    continue to run and generate interrupts after you have finished  tracing  and
    returned  to  the  PL/9  editor  command level or even FLEX. Re-compiling the
    program may result in the new version of the interrupt routine at a different
    place  to  the previous version. Since PL/9 writes the interrupt vectors last
    of all, an interrupt occurring during compilation  will  probably  cause  the
    system  to  crash.  It  is  therefore  advisable  to  ensure  that sources of
    interrupts are disabled before exiting the tracer. Hitting hardware reset and
    then  entering  PL/9  at  its  warm  start  address  ($0003)  is a crude, but
    effective way of killing interrupts from most devices.

 4. The MC6809 Fast Interrupt (FIRQ) can be handled by a procedure  of  the  same
    name.  Since  only  the return address (PC) and condition code register (CCR)
    are pushed onto the stack when an FIRQ occurs  this  interrupt  would  be  of
    little  use  to  a  PL/9  procedure.  This  is  because PL/9 procedures, as a
    minimum, will use the 'B' accumulator, and will, more often than not use  'A'
    and 'X' as well.

    In order to enable the programmer to make  some  use  of  the  FIRQ  in  PL/9
    programs  the  compiler  generates  the  code necessary to push the remaining
    registers  (DP,  D, X, Y, and U) onto the stack at the start of the procedure
    ($34 $7E) and to pull them off the stack at the end  of  the  procedure  ($35
    $7E)  just  before the RTI ($3B). This effectively makes FIRQ the same as IRQ
    but, due to the extra register push-pull operations, also  makes  it  SLOWER
    than IRQ.


 5. You can declare and use local variables within an interrupt procedure just as
    you would for any other PL/9 procedure. Obviously it is not possible to  pass
    an  interrupt  procedure  a variable on the stack or return one in one of the
    registers.  You  may,  of  course, pass and return variables via GLOBAL or AT
    variables providing you restore the 'Y' index register and the 'DP'  register
    as appropriate.


9.12.00  STARTING A PL/9 PROGRAM FROM POWER-UP (RESET)

 Unless  you  are an assembly language programmer this is an area where virtually
 every high level language, including Pascal, C,  and  Basic  pose  very  awkward
 problems.

 More  often  than not with these languages the mechanism to provide an interrupt
 vector table to handle system startup MUST be coded in assembly  language.  This
 can be a bit daunting if you are NOT an assembly language programmer.

 This  section  will  outline  the  PL/9 program structures used to generate code
 which can be simply placed in an EPROM and used to start a  program  up  from  a
 COLD  start  with  no  intervention  whatsoever.  As  the  same  techniques  are
 applicable to the MC6809 hardware and software  interrupts  they  will  also  be
 covered in this section.

 PL/9  has  seven  reserved procedure names, viz. SWI, SWI2, SWI3, NMI, FIRQ, IRQ
 and  RESET.  When  you  configure your copy of PL/9 with the SETPL9 program (see
 section three) you will be asked to specify the system RAM vector addresses  for
 all  of  these  routines except for RESET. Generally speaking RESET cannot be in
 RAM unless there is hardware protected non-volatile memory in the system.  RESET
 is therefore always assumed to be $FFFE/F.

 When  you  are  developing  your  programs  you might want to use the system RAM
 vectors to assist you in testing your programs in the  FLEX  environment  rather
 than  having to program an EPROM every time you want to test something. Once the
 majority of the program is tested and debugged in a RAM environment you can then
 revert  to  using  the  MC6809  hardware vector table for the final ROM tests by
 using the 'R' (ROM) option during program compilation, e.g. 'A:O=MYPROG.BIN,R'.

 If the code you are producing is intended for use in a dedicated system where it
 will be placed in ROM and used to start the system it is  recommended  that  you
 declare  ALL  interrupt procedures, whether you are using them or not. This will
 ensure that  each  of  the  MC6809  interrupt  vectors  point  to  a  dummy  RTI
 instruction  so  that  should,  for  example,  an  accidental NMI occur due to a
 hardware fault of some sort, the system will not crash.

 The following section presents two programs that represent what must be a record
 for a 'minimum' program that most users an compile and test in their own systems
 providing they have an EPROM programmer.


9.12.01  DUMB-BUG ... A SELF STARTING PROGRAM

 Well what would you call a program that just spins in circles?

 The  two  pages  which follow present a self-starting program whose sole task in
 life s to echo all characters sent by a terminal back to the terminal. The  only
 'intelligence'  imparted to the program is the ability to recognize the <RETURN>
 key on your keyboard and send a CARRIAGE-RETURN ... LINE-FEED sequence  back  to
 the terminal whenever it sees it.

 The  result is that you can convert your terminal and computer into what amounts
 to a typewriter ... clever stuff folks!

 Two versions of the program are presented. The first is for systems that  use  a
 Motorola MC6850 ACIA to communicate with the terminal. The second is for systems
 that use a Rockwell R6551 ACIA to communicate with the terminal. In both cases a
 2K  EPROM,  such as a 2716, is assumed. If your system uses a larger device just
 alter the 'PROM_BASE' statement on line 4 to match the base address of the EPROM
 in your system.

 The MC6850 program assumes that the baud clock fed to the MC6850 is at the 'X16'
 rate that is common in GIMIX, SWTP and WINDRUSH systems.  SSB  systems  use  the
 'X64' rate so the constant in line 25 must be changed to '$16'.

 The  R6551 program assumes the terminal can communicate at 9600 baud. If this is
 not the case you will  have  to  alter  the  '$9E'  in  line  25  to  match  the
 capabilities of your terminal. Consult the R6551 data sheet for details.

 Both  programs  assume  that  your terminal an communicate using 8-data bits, no
 start bits, 2 stop bits and no parity. Most will.


 To run this program follow these steps:

  1. Type in the program that applies to your system.

  2. Save it to disk: S=1.DUMBUG.PL9<CR>

  3. Compile it to disk using the 'R' option: A:O=1.DUMBUG.BIN,R<CR>

  4. Return to FLEX and invoke your EPROM programmer_software.

  5. Clear out the EPROM buffer area (fill it with $FF).

  6. Load the file 'DUMBUG.BIN' into the EPROM buffer area.

  7. The  program  code  should be at the start of the buffer. The buffer address
     that corresponds to $FFFE/F in the EPROM should contain the address  of  the
     'RESET' procedure ($F807).

  8. Program the EPROM.

  9. Turn the power to your computer system off.

 10. Remove  your  existing  SYSTEM  MONITOR  EPROM  and  install  the  one  just
     programmed.

 11. Turn the power to your computer system back on.

 12. Start typing on your terminal keyboard ... everything you type should appear
     on the screen of the terminal.
9.12.01  DUMB-BUG ... A SELF STARTING PROGRAM  (continued)

 0000  0001 /* DUMB-BUG FOR MC6850 ACIA'S */
 0000  0002
 0000  0003
 0000  0004 CONSTANT PROM_BASE  = $F800,
 0000  0005          STACK_INIT = $E7FF,
 0000  0006
 0000  0007          RDR_FULL   = $01,
 0000  0008          TDR_FULL   = $02;
 0000  0009
 0000  0010 AT $E004: BYTE ACIA_CONTROL(0), ACIA_STATUS, ACIA_DATA;
 0000  0011
 0000  0012
 0000  0013 ORIGIN = PROM_BASE;
 F800  0014
 F800  0015 STACK = STACK_INIT;
 F804  0016
 F804  0017
 F804  0018 PROCEDURE RESET;
 F807  0019    JUMP PROM_BASE;
 F80A  0020 ENDPROC;
 F80B  0021
 F80B  0022
 F80B  0023 PROCEDURE INIT;
 F80B  0024    ACIA_STATUS = $03; /* RESET */
 F810  0025    ACIA_CONTROL = $11; /* 8 DATA, 2 STOP, NO PARITY */
 F815  0026 ENDPROC;
 F816  0027
 F816  0028
 F816  0029
 F816  0030 PROCEDURE GETCHAR:BYTE INCHAR;
 F818  0031    REPEAT UNTIL ACIA_STATUS AND RDR_FULL; /* IMPLICIT <> 0 */
 F820  0032    INCHAR = ACIA_DATA AND $7F;            /* STRIP PARITY */
 F827  0033 ENDPROC INCHAR;
 F82C  0034
 F82C  0035
 F82C  0036 PROCEDURE PUTCHAR(BYTE OUTCHAR);
 F82C  0037    REPEAT UNTIL ACIA_STATUS AND TDR_FULL; /* IMPLICIT <> 0 */
 F834  0038    ACIA_DATA = OUTCHAR;
 F839  0039 ENDPROC;
 F83A  0040
 F83A  0041
 F83A  0042 PROCEDURE CRLF;
 F83A  0043    PUTCHAR($0D);
 F842  0044    PUTCHAR($0A);
 F84A  0045 ENDPROC;
 F84B  0046
 F84B  0047
 F84B  0048 PROCEDURE MAIN:BYTE CHAR;
 F84D  0049    INIT;
 F84F  0050    REPEAT
 F84F  0051       CHAR = GETCHAR;
 F853  0052       IF CHAR = $0D
 F855  0053          THEN CRLF;
 F85D  0054          ELSE PUTCHAR(CHAR);
 F868  0055    FOREVER;


9.12.01  DUMB-BUG ... A SELF STARTING PROGRAM  (continued)

 0000  0001 /* DUMB-BUG FOR R6551 ACIA'S */
 0000  0002
 0000  0003
 0000  0004 CONSTANT PROM_BASE  = $F800,
 0000  0005          STACK_INIT = $E7FF,
 0000  0006
 0000  0007          RDR_FULL   = $08,
 0000  0008          TDR_FULL   = $10;
 0000  0009
 0000  0010 AT $E300: BYTE ACIA_DATA, ACIA_STATUS, ACIA_COMMAND, ACIA_CONTROL;
 0000  0011
 0000  0012
 0000  0013 ORIGIN = PROM_BASE;
 F800  0014
 F800  0015 STACK = STACK_INIT;
 F804  0016
 F804  0017
 F804  0018 PROCEDURE RESET;
 F807  0019    JUMP PROM_BASE;
 F80A  0020 ENDPROC;
 F80B  0021
 F80B  0022
 F80B  0023 PROCEDURE INIT;
 F80B  0024    ACIA_STATUS = $FF; /* RESET */
 F810  0025    ACIA_CONTROL = $9E; /* 9600 BAUD, 8 DATA, 2 STOP */
 F815  0026    ACIA_COMMAND = $0B; /* NO PARITY, FULL DUPLEX, NO INTERRUPTS */
 F81A  0027 ENDPROC;
 F81B  0028
 F81B  0029
 F81B  0030 PROCEDURE GETCHAR:BYTE INCHAR;
 F81D  0031    REPEAT UNTIL ACIA_STATUS AND RDR_FULL; /* IMPLICIT <> 0 */
 F825  0032    INCHAR = ACIA_DATA AND $7F;            /* STRIP PARITY */
 F82C  0033 ENDPROC INCHAR;
 F831  0034
 F831  0035
 F831  0036 PROCEDURE PUTCHAR(BYTE OUTCHAR);
 F831  0037    REPEAT UNTIL ACIA_STATUS AND TDR_FULL; /* IMPLICIT <> 0 */
 F839  0038    ACIA_DATA = OUTCHAR;
 F83E  0039 ENDPROC;
 F83F  0040
 F83F  0041
 F83F  0042 PROCEDURE CRLF;
 F83F  0043    PUTCHAR($0D);
 F847  0044    PUTCHAR($0A);
 F84F  0045 ENDPROC;
 F850  0046
 F850  0047
 F850  0048 PROCEDURE MAIN:BYTE CHAR;
 F852  0049    INIT;
 F854  0050    REPEAT
 F854  0051       CHAR = GETCHAR;
 F858  0052       IF CHAR = $0D
 F85A  0053          THEN CRLF;
 F862  0054          ELSE PUTCHAR(CHAR);
 F86D  0055    FOREVER;


9.12.02  A PL/9 MINI-MONITOR FOR THE MC6809

 What follows is  a  complete  program  designed  to  illustrate  the  structures
 required to build PL/9 programs that start up automatically on RESET.

 The  program  illustrated  is a scaled down system monitor with all of the basic
 functions. The program is presented as a guide to constructing a  self  starting
 program  NOT  as  an  exercise in writing a system monitor. The point to note is
 this:


         * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
         *                                                               *
         *  IF YOU CAN WRITE A PROGRAM THAT HAS THE HARDWARE INTENSITY   *
         *  OF A SYSTEM MONITOR IN PL/9 YOU CAN  WRITE  VIRTUALLY  ANY   *
         *  OTHER HARDWARE ORIENTED PROGRAM AS WELL!                     *
         *                                                               *
         * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 PL/9 is not the ideal choice of languages (assembler is)  to  handle  the  stack
 manipulation  required  of  a  system  monitor, but just you TRY to do it in any
 other language. As a result there are several GEN statements required to achieve
 the  desired  results.  The  program  is  just under 2K in size and provides the
 following facilities:


 MEMORY EXAMINE AND CHANGE    This facility has got to be the  PRIME  requirement
                              of  a  System  Monitor. It allows you to examine or
                              change  any  memory  location.  Entering  'M'  will
                              result  in the prompt: ADDRESS? The desired address
                              is then entered as four HEX characters, e.g.  E400.
                              Back-spacing  is  not allowed and entry of the last
                              digit  signifies  completion.  The   address   just
                              entered  is  then  displayed  on the following line
                              with the contents of the  memory  location  in  HEX
                              adjacent to it. You then have five options:

                              1. (+) which moves  to  NEXT  memory  location  and
                                 displays its address and contents.

                              2. (-)  which moves to the PREVIOUS memory location
                                 and displays its address and contents.

                              3. (/) which re-reads the  CURRENT  location.  Very
                                 handy for looking at I/O ports.

                              4. Entering  any non-HEX character, e.g. <CR>, will
                                 return you to the main menu.

                              5. Entering two HEX characters will result  in  the
                                 information  being written to the current memory
                                 location. The memory location will then be  read
                                 again  and the write/read data compared. If they
                                 are the same the address  and  contents  of  the
                                 NEXT  memory  location will be displayed. If the
                                 values are not the same a '?' will be  displayed
                                 and  a bell code sent to the system console. The
                                 memory  location  will  then  be   re-read   and
                                 displayed again.

9.12.02  A PL/9 MINI-MONITOR FOR THE MC6809  (continued)

 MEMORY EXAMINE AND CHANGE   (continued)

                              This basic facility will allow you to enter  simple
                              machine  code  programs  and test them. The program
                              should be terminated in an RTS ($39) instruction to
                              provide  a  clean  re-entry  back  into  the system
                              monitor. You can also debug a machine code  program
                              by  inserting  a  break-point in the form of an SWI
                              ($3F) instruction in the middle of your  code.  You
                              will  have  to make a note of the the existing byte
                              in order to re-instate it later.

 JUMP TO USER PROGRAM         this command enables you to  JUMP  to  a  specified
                              point  in  memory  with the MC6809 registers loaded
                              with pre-determined values in order  to  enter  and
                              begin  execution  of  a  program. Entering 'J' will
                              result in the prompt: ADDRESS?  being  issued.  Any
                              character  other  than 4 HEX digits will return you
                              to the main menu. Once the jump address is  entered
                              the  register  pre-load table will be displayed and
                              you will be prompted: O.K.?. A  'Y'  response  will
                              result  in  the  jump  being executed. Any response
                              other than 'Y' will result in you being prompted to
                              change  each  of  the  pre-load  registers one at a
                              time. As each register name is displayed  you  have
                              the  choice  of  entering HEX digits to alter it or
                              any non-HEX character to skip  it.  Once  you  have
                              been  prompted  for each of the pre-load values the
                              pre_load values will again be  displayed  with  the
                              prompt:  JUMP?.  A  'Y' response will result in the
                              jump being executed. Any other response will return
                              you to the main menu.

                              The program should be terminated in an  RTS  or  an
                              SWI instruction.


 DUMP REGISTERS ON RTS        When an RTS instruction is encountered in a running
                              program the current register values will be  dumped
                              to  the display and the main menu re-entered. Since
                              the program counter value  is  not  valid  in  this
                              instance (there is no way of knowing where the code
                              was that pulled the program counter off the  stack)
                              it will be displayed as FFFF as a reminder.


 BREAK-POINT PROCESSOR        When an SWI instruction is encountered in a program
                              being  executed  the contents of the registers, the
                              position of the stack pointer, and the value of the
                              program  counter  will  be  dumped  to  the  system
                              console and the main menu re-entered.


 DUMP REGISTERS ON NMI        When  an  NMI  is  received the contents of all the
                              registers will be displayed as for the break  point
                              processor.  In  this instance, after the dump takes
                              place, the program will be re-entered and execution
                              will  continue. This facility is very handy to sort
                              out routines that 'lock up'.
9.12.02  A PL/9 MINI-MONITOR FOR THE MC6809  (continued)

 The register  dump  mentioned  in  the  preceeding  discussion  looks  like  the
 following in all cases:

 AA BB DP XXXX YYYY UUUU PCPC  CC  EFHI NZVC
 00 00 00 0000 0000 0000 0000  D0  1101 0000

 The register values will obviously vary from one dump to the next.


 FORMATTED MEMORY DUMP        This facility enables you to dump 256  byte  blocks
                              out  to  the  terminal  in  HEX/ASCII format. It is
                              invoked by typing 'D'. You will then  be  prompted:
                              'ADDRESS?'.  The  desired  starting  address of the
                              dump is entered as 4 HEX digits. The dump will then
                              commence.  When 256 bytes have been dumped a prompt
                              'MORE?' will be issued. Hitting any key other  than
                              'N'  or 'n' will result in the next 256 bytes being
                              displayed. Hitting 'N' or 'n' will  return  you  to
                              command level.


 The  MINI-MONITOR  also  has  a two additional facilities which were included to
 prove the point of how easy  it  is  to  access  GLOBAL  variables  from  within
 interrupt  procedures.  Whenever an IRQ is received the message 'IRQ! 0000 0000'
 will be displayed. The bit pattern represents the  binary value  of  a  GLOBAL
 integer  variable  which will be incremented each time an interrupt occurs. FIRQ
 responds in a similar manner.


 The following entry points may be of interest if you want to hand enter a couple
 of test programs:

GETCHARis at $F827 and returns with the keyboard character in 'A'.

PUTCHARis at $F81B and expects the display character in 'A'.

 Both of these routines alter the contents of 'D' and the CCR.


 Once  you have the 'MINI-MONITOR' up and running try entering the following code
 at $E400 using the 'M' command:

 E400 BD
 E401 F8
 E402 27    (JSR $F827 ... GETCHAR)
 E403 BD
 E404 F8
 E405 1B    (JSR $F81B ... PUTCHAR)
 E406 7E
 E407 E4
 E408 00    (JMP $E400 ... LOOP FOREVER)

 Now use the 'J' command to start program execution at $E400.

 You should get the same 'typewriter' effect of 'DUMB-BUG'.
9.12.02  A PL/9 MINI-MONITOR FOR THE MC6809  (continued)

 The  following,  alterable,  assumptions  have  been  made  about  the  hardware
 environment the monitor has been designed to run in:


 (1) It  assumes  that  it  is  communicating through a serial port comprising an
     MC6850 addressed at $E004 with X16 baud rate  inputs.  Data  is  transmitted
     as: 8 data bits, two stop bits and no parity.


 (2) It assumes that there is RAM at $E400 through $E7FF.


 (3) It assumes that the system monitor ROM is based at $F800 through $FFFF. i.e.
     a standard 2516 (single volt 2716).


 All of these assumptions are met by any GIMIX or WINDRUSH 6809  processor  board
 and  SS-50  system. If you own a Windrush EUROCARD system that uses the Rockwell
 R6551 ACIA the R6551 drivers in  DUMB-BUG  must  be  substituted  for  lines  61
 through  77.  Don't  forget to modify lines 8 and 21 to match the address of the
 R6551 and don't forget to add the constants required by the  procedures  to  the
 'CONSTANT' declaration at the start of the program.


 The  program  source  listing  is  presented  on  the following pages. After the
 listing we will describe  the  program  in  block-diagram  form.  We  will  then
 describe  any  elements of the program that are not covered in other sections of
 this manual.

 Several of the I/O procedures used are nothing more than extractions or modified
 extractions from the IOSUBS, HEXIO and  BITIO  libraries  described  in  section
 eight.


9.12.02  A PL/9 MINI-MONITOR FOR THE MC6809  (continued)

 0000  0001 /* PL9 MINI-MONITOR PROGRAM VERSION 4.0 */
 0000  0002
 0000  0003 CONSTANT PROM_BASE  = $F800,
 0000  0004          STACK_INIT = $E7FD,
 0000  0005          YSAVE      = $E7FE,
 0000  0006          YSAVE_HI   = $E7,
 0000  0007          YSAVE_LO   = $FE,
 0000  0008          IO_BASE    = $E0,    /* TOP 8-bits OF I/O ADDRESS AREA */
 0000  0009
 0000  0010          _8DATA_2STOP_NOPARITY = $11, ACIA_RESET = $03,
 0000  0011          RX_DATA_FULL = $01, PARITY_STRIPPER = $7F,
 0000  0012          TX_DATA_EMPTY = $02,
 0000  0013
 0000  0014          CR = $0D, LF = $0A, SP = $20, BEL = $07,
 0000  0015
 0000  0016          INT_ON_MASK = $AF,
 0000  0017
 0000  0018          TRUE = -1, FALSE = 0, ZERO = $30, ONE = $31;
 0000  0019
 0000  0020
 0000  0021 AT $E004:BYTE ACIA_CTRL(0), ACIA_STAT, ACIA_DATA;
 0000  0022
 0000  0023
 0000  0024 /*
 0000  0025   * * * * * * * * * * * * * * * * * * * * * * * * * *
 0000  0026   *  THE MAIN BODY OF THE PROGRAM CODE STARTS HERE  *
 0000  0027   * * * * * * * * * * * * * * * * * * * * * * * * * *
 0000  0028 */
 0000  0029
 0000  0030 ORIGIN = PROM_BASE;
 F800  0031
 F800  0032 STACK  = STACK_INIT;
 F804  0033
 F804  0034 /*
 F804  0035    * * * * * * * * * * * * * * * * * * * * * * * * * *
 F804  0036    * THE FIRST ITEM DECLARED WILL BE AT THE BASE OF  *
 F804  0037    * THE STACK. i.e. THE STACK WILL GROW DOWN FROM   *
 F804  0038    * THIS POINT.                                     *
 F804  0039    * * * * * * * * * * * * * * * * * * * * * * * * * *
 F804  0040 */
 F804  0041
 F804  0042 GLOBAL BYTE    JUMP_REGISTERS(0), CONDITION_CR, A_ACCUMULATOR,
 F804  0043                B_ACCUMULATOR, DIRECT_PAGE:
 F804  0044
 F804  0045        INTEGER X_REGISTER, Y_REGISTER, U_REGISTER, PROGRAM_CTR,
 F804  0046                RTS_VECTOR:
 F804  0047
 F804  0048        BYTE    ERFLAG, KEYCHAR, .B_POINTER:
 F804  0049
 F804  0050        INTEGER FIRQ_COUNT, IRQ_COUNT;
 F80B  0051
 F80B  0052
 F80B  0053 DPAGE = IO_BASE;  /* SHORTENS CODE WHEN ADDRESSING 'AT' VARIABLES */
 F80F  0054
 F80F  0055


9.12.02  A PL/9 MINI-MONITOR FOR THE MC6809  (continued)

 F80F  0056 /*
 F80F  0057   * * * * * * * * * * *
 F80F  0058   *  I/O SUBROUTINES  *
 F80F  0059   * * * * * * * * * * *
 F80F  0060 */
 F80F  0061 PROCEDURE INITIALIZE_CONSOLE_ACIA;
 F812  0062    ACIA_CTRL = ACIA_RESET;
 F816  0063    ACIA_CTRL = _8DATA_2STOP_NOPARITY;
 F81A  0064 ENDPROC;
 F81B  0065
 F81B  0066
 F81B  0067 PROCEDURE PUTCHAR(BYTE OUTCHAR);
 F81B  0068    REPEAT UNTIL ACIA_STAT AND TX_DATA_EMPTY;  /* IMPLICIT <> 0 */
 F822  0069    ACIA_DATA = OUTCHAR;
 F826  0070 ENDPROC;
 F827  0071
 F827  0072
 F827  0073 PROCEDURE GETCHAR:BYTE INCHAR;
 F829  0074    REPEAT UNTIL ACIA_STAT AND RX_DATA_FULL;  /* IMPLICIT <> 0 */
 F830  0075    INCHAR = ACIA_DATA AND PARITY_STRIPPER;
 F836  0076    PUTCHAR(INCHAR);
 F83E  0077 ENDPROC INCHAR;
 F843  0078
 F843  0079
 F843  0080 PROCEDURE MACHINE_PUT; /* USE THIS ONE FROM MACHINE CODE ROUTINES */
 F843  0081    PUTCHAR(ACCA);
 F84B  0082 ENDPROC;
 F84C  0083
 F84C  0084
 F84C  0085 PROCEDURE MACHINE_GET; /* USE THIS ONE FROM MACHINE CODE ROUTINES */
 F84C  0086    ACCA = GETCHAR;
 F850  0087 ENDPROC;
 F851  0088
 F851  0089
 F851  0090 PROCEDURE GET_UPPER_CASE:BYTE INCHAR;
 F853  0091    INCHAR = GETCHAR;
 F857  0092    IF INCHAR >= 'a .AND INCHAR <= 'z
 F865  0093       THEN INCHAR = INCHAR - $20;
 F879  0094 ENDPROC INCHAR;
 F87E  0095
 F87E  0096
 F87E  0097 PROCEDURE CRLF;
 F87E  0098    PUTCHAR(CR);
 F886  0099    PUTCHAR(LF);
 F88E  0100 ENDPROC;
 F88F  0101
 F88F  0102
 F88F  0103 PROCEDURE PRINT(BYTE .STRING);
 F88F  0104    WHILE STRING                     /* IMPLICIT <> 0 */
 F88F  0105       BEGIN;
 F897  0106          IF STRING = '\
 F89A  0107             THEN BEGIN;
 F8A0  0108                  .STRING = .STRING + 1;
 F8A7  0109                  IF STRING
 F8A7  0110                     CASE 'N THEN CRLF;
 F8B3  0111                     CASE 'B THEN PUTCHAR(BEL);
 F8C5  0112                  END;


9.12.02  A PL/9 MINI-MONITOR FOR THE MC6809  (continued)

 F8C5  0113             ELSE PUTCHAR(STRING);
 F8D2  0114             .STRING = .STRING + 1;
 F8D9  0115       END;
 F8D9  0116 ENDPROC;
 F8DC  0117
 F8DC  0118
 F8DC  0119
 F8DC  0120 /*
 F8DC  0121   * * * * * * * * * * *
 F8DC  0122   *  BIT DUMP ROUTINE *
 F8DC  0123   * * * * * * * * * * *
 F8DC  0124 */
 F8DC  0125 BYTE MASK $01,$02,$04,$08,$10,$20,$40,$80;
 F8E4  0126
 F8E4  0127
 F8E4  0128 PROCEDURE BITSOUT(BYTE BITCHAR):
 F8E4  0129    BYTE COUNT;
 F8E6  0130    COUNT = 8;
 F8EA  0131    REPEAT
 F8EA  0132       IF BITCHAR AND MASK(COUNT-1) = 0
 F900  0133          THEN PUTCHAR(ZERO);
 F910  0134          ELSE PUTCHAR(ONE);
 F91C  0135       COUNT = COUNT - 1;
 F91E  0136       IF COUNT = 4
 F920  0137          THEN PUTCHAR(SP);
 F92F  0138    UNTIL COUNT = 0;
 F935  0139 ENDPROC;
 F938  0140
 F938  0141
 F938  0142
 F938  0143 /*
 F938  0144   * * * * * * * * * * *
 F938  0145   *  HEX I/O ROUTINES *
 F938  0146   * * * * * * * * * * *
 F938  0147 */
 F938  0148 PROCEDURE GET_HEX_NIBBLE:BYTE INCHAR;
 F93A  0149    INCHAR = GET_UPPER_CASE;
 F93F  0150    KEYCHAR = INCHAR;
 F943  0151    ERFLAG = TRUE;
 F947  0152    IF INCHAR >= '0 .AND INCHAR <= '9
 F955  0153       THEN BEGIN
 F963  0154            INCHAR = INCHAR - '0;
 F969  0155            ERFLAG = FALSE;
 F96B  0156            END;
 F96B  0157       ELSE IF INCHAR >= 'A .AND INCHAR <= 'F
 F97C  0158               THEN BEGIN
 F98A  0159                    INCHAR = INCHAR - '7;
 F990  0160                    ERFLAG = FALSE;
 F992  0161                    END;
 F992  0162 ENDPROC INCHAR;
 F997  0163
 F997  0164
 F997  0165 PROCEDURE GET_HEX_BYTE:BYTE INCHAR;
 F999  0166       INCHAR = SHIFT(GET_HEX_NIBBLE,4);
 F9A1  0167       IF ERFLAG = TRUE
 F9A3  0168          THEN RETURN;
 F9AC  0169       INCHAR = INCHAR OR GET_HEX_NIBBLE;
 F9BA  0170 ENDPROC INCHAR;

9.12.02  A PL/9 MINI-MONITOR FOR THE MC6809  (continued)

 F9BF  0171
 F9BF  0172
 F9BF  0173 PROCEDURE GET_HEX_ADDRESS:INTEGER INCHAR;
 F9C1  0174       INCHAR = SWAP(INTEGER(GET_HEX_BYTE));
 F9C8  0175       IF ERFLAG = TRUE
 F9CA  0176          THEN RETURN;
 F9D3  0177       INCHAR = INCHAR OR INTEGER(GET_HEX_BYTE);
 F9E0  0178 ENDPROC INCHAR;
 F9E5  0179
 F9E5  0180
 F9E5  0181 PROCEDURE PUT_HEX_NIBBLE(BYTE OUTCHAR);
 F9E5  0182    OUTCHAR = (OUTCHAR AND $0F)  +  '0; /* STRIP TOP 4-bits & MAKE ASCII */
 F9ED  0183    IF OUTCHAR > '9
 F9EF  0184       THEN OUTCHAR = OUTCHAR + 7;      /* A-F OFFSET */
 F9FB  0185    PUTCHAR(OUTCHAR);
 FA04  0186 ENDPROC;
 FA05  0187
 FA05  0188
 FA05  0189 PROCEDURE PUT_HEX_BYTE(BYTE OUTCHAR);
 FA05  0190    PUT_HEX_NIBBLE(SHIFT(OUTCHAR,-4)); /* FIRST DIGIT */
 FA11  0191    PUT_HEX_NIBBLE(OUTCHAR);           /* LAST DIGIT */
 FA19  0192 ENDPROC;
 FA1A  0193
 FA1A  0194
 FA1A  0195 PROCEDURE PUT_HEX_ADDRESS(INTEGER OUTCHAR);
 FA1A  0196    PUT_HEX_BYTE(SWAP(OUTCHAR)); /* FIRST TWO DIGITS */
 FA24  0197    PUT_HEX_BYTE(BYTE(OUTCHAR)); /* LAST TWO DIGITS */
 FA2C  0198 ENDPROC;
 FA2D  0199
 FA2D  0200
 FA2D  0201 PROCEDURE PUT_ASCII_BYTE(BYTE CHAR);
 FA2D  0202    IF CHAR < $20 .OR CHAR > $7D
 FA3B  0203       THEN PUTCHAR('.);
 FA52  0204       ELSE PUTCHAR(CHAR);
 FA5E  0205 ENDPROC;
 FA5F  0206
 FA5F  0207
 FA5F  0208
 FA5F  0209 /*
 FA5F  0210   * * * * * * * * * * * * * * *
 FA5F  0211   *  GLOBAL POINTER ROUTINES  *
 FA5F  0212   * * * * * * * * * * * * * * *
 FA5F  0213 */
 FA5F  0214 PROCEDURE SAVE_GLOBAL_POINTER;
 FA5F  0215    GEN $10,$BF,YSAVE_HI,YSAVE_LO; /* STY YSAVE */
 FA63  0216 ENDPROC;
 FA64  0217
 FA64  0218
 FA64  0219 PROCEDURE RESTORE_GLOBAL_POINTER;
 FA64  0220    GEN $10,$BE,YSAVE_HI,YSAVE_LO; /* LDY YSAVE */
 FA68  0221    ACCB = IO_BASE;                /* RESTORE THE DIRECT PAGE */
 FA6A  0222    GEN $1F, $9B;                  /* TFR B, DP */
 FA6C  0223 ENDPROC;
 FA6D  0224
 FA6D  0225
 FA6D  0226


9.12.02  A PL/9 MINI-MONITOR FOR THE MC6809  (continued)

 FA6D  0227 /*
 FA6D  0228   * * * * * * * * * * * * * * * *
 FA6D  0229   *  DUMP THE STACKED REGISTERS *
 FA6D  0230   * * * * * * * * * * * * * * * *
 FA6D  0231 */
 FA6D  0232 PROCEDURE ONE_SPACE; /* NICE AND CLOSE TO MINIMIZE ADDRESS RANGE! */
 FA6D  0233    PUTCHAR(SP);
 FA76  0234 ENDPROC;
 FA77  0235
 FA77  0236
 FA77  0237 PROCEDURE TWO_SPACES;
 FA77  0238    ONE_SPACE;
 FA79  0239    ONE_SPACE;
 FA7B  0240 ENDPROC;
 FA7C  0241
 FA7C  0242
 FA7C  0243 PROCEDURE REGISTER_DUMP(INTEGER STACKBASE):BYTE COUNT, CHAR, .B_POINTER;
 FA7E  0244
 FA7E  0245    PRINT("\N\NAA BB DP XXXX YYYY UUUU PCPC SPSP  CC  EFHI NZVC\N");
 FAC2  0246
 FAC2  0247    .B_POINTER = STACKBASE + 1;     /* POINT AT 'A' */
 FAC9  0248    REPEAT
 FAC9  0249       PUT_HEX_BYTE(B_POINTER);
 FAD3  0250       IF .B_POINTER > STACKBASE + 3
 FAD9  0251          THEN BEGIN
 FAE6  0252               .B_POINTER = .B_POINTER + 1;
 FAED  0253               PUT_HEX_BYTE(B_POINTER);
 FAF7  0254               END;
 FAF7  0255       ONE_SPACE;
 FAFA  0256       .B_POINTER = .B_POINTER + 1;
 FB01  0257    UNTIL .B_POINTER = STACKBASE + 12;
 FB12  0258
 FB12  0259    PUT_HEX_ADDRESS(.B_POINTER);      /* STACK POINTER */
 FB1B  0260
 FB1B  0261    TWO_SPACES;
 FB1E  0262    .B_POINTER = STACKBASE;
 FB22  0263    PUT_HEX_BYTE(B_POINTER);                   /* CCR IN HEX  */
 FB2C  0264    TWO_SPACES;
 FB2F  0265    BITSOUT(B_POINTER);                        /* CCR IN BITS */
 FB39  0266    CRLF;
 FB3C  0267    CRLF;
 FB3F  0268 ENDPROC;
 FB42  0269
 FB42  0270
 FB42  0271
 FB42  0272 /*
 FB42  0273   * * * * * * * * * * * * * * * * * * * * *
 FB42  0274   *  SOFTWARE INTERRUPT SERVICE ROUTINES  *
 FB42  0275   * * * * * * * * * * * * * * * * * * * * *
 FB42  0276 */
 FB42  0277 PROCEDURE SWI;                    /* USED AS A BREAK-POINT PROCESSOR */
 FB42  0278    GEN $AE,$6A;  /* LDX 10,S */
 FB44  0279    GEN $30,$1F;  /* LEAX -1,X */
 FB46  0280    GEN $AF,$6A;  /* STX 10,S   (-1 TO POINT TO THE SWI INSTRUCTION) */
 FB48  0281
 FB48  0282    RESTORE_GLOBAL_POINTER;
 FB4B  0283    REGISTER_DUMP(STACK);
 FB54  0284    JUMP PROM_BASE;  /* A HARD RESET OF THE MONITOR */
 FB57  0285 ENDPROC;
9.12.02  A PL/9 MINI-MONITOR FOR THE MC6809  (continued)

 FB58  0286
 FB58  0287
 FB58  0288 PROCEDURE SWI2; /* DUMMY RTI INSTRUCTION ONLY */
 FB58  0289 ENDPROC;
 FB59  0290
 FB59  0291
 FB59  0292 PROCEDURE SWI3; /* DUMMY RTI INSTRUCTION ONLY */
 FB59  0293 ENDPROC;
 FB5A  0294
 FB5A  0295
 FB5A  0296
 FB5A  0297 /*
 FB5A  0298   * * * * * * * * * * * * * * * * * * * * *
 FB5A  0299   *  HARDWARE INTERRUPT SERVICE ROUTINES  *
 FB5A  0300   * * * * * * * * * * * * * * * * * * * * *
 FB5A  0301 */
 FB5A  0302 PROCEDURE NMI;
 FB5A  0303    RESTORE_GLOBAL_POINTER;
 FB5D  0304    REGISTER_DUMP(STACK);
 FB66  0305 ENDPROC;
 FB67  0306
 FB67  0307
 FB67  0308 PROCEDURE FIRQ;
 FB69  0309    RESTORE_GLOBAL_POINTER;
 FB6C  0310    PRINT("\NFIRQ! \B");
 FB84  0311    FIRQ_COUNT = FIRQ_COUNT + 1;
 FB8D  0312    BITSOUT(FIRQ_COUNT);
 FB97  0313    CRLF;
 FB9A  0314 ENDPROC;
 FB9D  0315
 FB9D  0316
 FB9D  0317 PROCEDURE IRQ;
 FB9D  0318    RESTORE_GLOBAL_POINTER;
 FBA0  0319    PRINT("\NIRQ!  \B");
 FBB8  0320    IRQ_COUNT = IRQ_COUNT + 1;
 FBC1  0321    BITSOUT(IRQ_COUNT);
 FBCB  0322    CRLF;
 FBCE  0323 ENDPROC;
 FBCF  0324
 FBCF  0325
 FBCF  0326 PROCEDURE RESET;
 FBCF  0327    JUMP PROM_BASE; /* YOU MUST GO TO THE FIRST 'ORIGIN' */
 FBD2  0328 ENDPROC;
 FBD3  0329
 FBD3  0330


9.12.02  A PL/9 MINI-MONITOR FOR THE MC6809  (continued)

 FBD3  0331
 FBD3  0332 /*
 FBD3  0333   * * * * * * * * * * * * * * * * * * * * * * * * * * *
 FBD3  0334   *  HANDLE ARBITRARY PROGRAM COUNTER PULL FROM STACK *
 FBD3  0335   * * * * * * * * * * * * * * * * * * * * * * * * * * *
 FBD3  0336 */
 FBD3  0337 PROCEDURE RETURN_FROM_SUBROUTINE;
 FBD3  0338
 FBD3  0339    GEN $34,$FF;          /* PSHS CC,A,B,DP,X,Y,U,PC */
 FBD5  0340    GEN $8E,$FF,$FF;      /* LDX  #$FFFF */
 FBD8  0341    GEN $AF,$6A;           /* STX  10, S ... (PC IS NOW $FFFF) */
 FBDA  0342
 FBDA  0343    RESTORE_GLOBAL_POINTER;
 FBDD  0344    REGISTER_DUMP(STACK);
 FBE6  0345    JUMP PROM_BASE; /* A HARD RESET OF THE MONITOR */
 FBE9  0346 ENDPROC;
 FBEA  0347
 FBEA  0348
 FBEA  0349
 FBEA  0350 /*
 FBEA  0351   * * * * * * * * * * * * * * * *
 FBEA  0352   *  MEMORY EXAMINE AND CHANGE  *
 FBEA  0353   * * * * * * * * * * * * * * * *
 FBEA  0354 */
 FBEA  0355 PROCEDURE ADDRESS_PROMPT;
 FBEA  0356    PRINT("\NADDRESS? ");
 FC03  0357 ENDPROC GET_HEX_ADDRESS;
 FC07  0358
 FC07  0359
 FC07  0360 PROCEDURE MEMORY_EXAMINE_AND_CHANGE:
 FC07  0361    BYTE READ_BYTE, WRITE_BYTE, .ADDRESS;
 FC09  0362
 FC09  0363    .ADDRESS = ADDRESS_PROMPT;
 FC0D  0364    IF ERFLAG = TRUE
 FC0F  0365       THEN RETURN;
 FC18  0366
 FC18  0367    PRINT("\N\N(+) next\N
 FC27  0368 (-) prev\N
 FC2F  0369 (/) again\N");
 FC49  0370
 FC49  0371 TRY_AGAIN:
 FC49  0372    CRLF;
 FC4C  0373 READ_AGAIN:
 FC4C  0374    PUTCHAR(CR);
 FC55  0375    PUT_HEX_ADDRESS(.ADDRESS);
 FC5E  0376    ONE_SPACE;
 FC61  0377    PUT_HEX_BYTE(ADDRESS);
 FC6B  0378    ONE_SPACE;
 FC6E  0379
 FC6E  0380    WRITE_BYTE = GET_HEX_BYTE;
 FC73  0381    IF ERFLAG = TRUE
 FC75  0382       THEN IF KEYCHAR = '- .OR KEYCHAR = '+  .OR KEYCHAR = '/
 FC97  0383               THEN BEGIN;
 FCA5  0384                    IF KEYCHAR
 FCA5  0385                       CASE '- THEN .ADDRESS = .ADDRESS-1;
 FCB5  0386                       CASE '+  THEN .ADDRESS = .ADDRESS+1;
 FCC5  0387                       CASE '/ THEN GOTO READ_AGAIN;
 FCD1  0388                    GOTO TRY_AGAIN;
 FCD4  0389                    END;
9.12.02  A PL/9 MINI-MONITOR FOR THE MC6809  (continued)

 FCD4  0390               ELSE RETURN;
 FCDA  0391
 FCDA  0392    ADDRESS = WRITE_BYTE;
 FCDF  0393    IF WRITE_BYTE <> ADDRESS
 FCE1  0394       THEN BEGIN;
 FCE8  0395            PRINT (" ?\B");
 FCFA  0396            GOTO TRY_AGAIN;
 FCFD  0397            END;
 FCFD  0398    .ADDRESS = .ADDRESS + 1;
 FD04  0399    GOTO TRY_AGAIN;
 FD07  0400 ENDPROC;
 FD0A  0401
 FD0A  0402
 FD0A  0403
 FD0A  0404 /*
 FD0A  0405   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 FD0A  0406   * JUMP TO ADDRESS SPECIFIED BY USER WITH REGISTERS PRE-LOADED *
 FD0A  0407   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 FD0A  0408 */
 FD0A  0409 BYTE PROMPT "CC",
 FD0D  0410             " A",
 FD10  0411             " B",
 FD13  0412             "DP",
 FD16  0413             " X",
 FD19  0414             " Y",
 FD1C  0415             " U";
 FD1F  0416
 FD1F  0417
 FD1F  0418 BYTE PRE_LOAD "\N\NPRE-LOAD VALUES";
 FD33  0419
 FD33  0420
 FD33  0421 PROCEDURE JUMP_TO_USER_PROGRAM:
 FD33  0422    INTEGER JUMP_ADDRESS, IN_ADDRESS:
 FD33  0423    BYTE    COUNT, IN_BYTE;
 FD35  0424
 FD35  0425 TRY_AGAIN:
 FD35  0426    IN_ADDRESS = ADDRESS_PROMPT;
 FD3A  0427    IF ERFLAG = TRUE
 FD3C  0428       THEN RETURN;
 FD45  0429    PROGRAM_CTR = IN_ADDRESS;
 FD49  0430
 FD49  0431    PRINT(.PRE_LOAD);
 FD53  0432
 FD53  0433    REGISTER_DUMP(.JUMP_REGISTERS);
 FD5C  0434
 FD5C  0435 WRONG_ANSWER:
 FD5C  0436    PRINT("\NO.K.? (Y/N) ");
 FD78  0437
 FD78  0438    IN_BYTE = GET_UPPER_CASE;
 FD7D  0439    IF IN_BYTE = 'N
 FD7F  0440       THEN BEGIN;
 FD85  0441            COUNT = 0;
 FD87  0442            CRLF;
 FD8A  0443            PRINT("\N<CR> to skip\NHEX  to alter\N\N");
 FDB9  0444


9.12.02  A PL/9 MINI-MONITOR FOR THE MC6809  (continued)

 FDB9  0445            REPEAT
 FDB9  0446               PRINT(.PROMPT(COUNT*3));
 FDF1  0447               PRINT("? ");
 FE01  0448               IF COUNT < 4
 FE03  0449                  THEN BEGIN;
 FE09  0450                       IN_BYTE = GET_HEX_BYTE;
 FE0E  0451                       IF ERFLAG = FALSE
 FE10  0452                          THEN JUMP_REGISTERS(COUNT) = IN_BYTE;
 FE21  0453                       END;
 FE21  0454                  ELSE BEGIN;
 FE24  0455                       IN_ADDRESS = GET_HEX_ADDRESS;
 FE29  0456                       IF ERFLAG = FALSE
 FE2B  0457                          THEN X_REGISTER(COUNT-4) = IN_ADDRESS;
 FE40  0458                       END;
 FE40  0459               CRLF;
 FE43  0460               COUNT = COUNT + 1;
 FE45  0461            UNTIL COUNT = 7;
 FE4D  0462
 FE4D  0463            PRINT(.PRE_LOAD);
 FE58  0464            REGISTER_DUMP(.JUMP_REGISTERS);
 FE61  0465            PRINT("\NJUMP? (Y/N) ");
 FE7D  0466            IF GET_UPPER_CASE <> 'Y
 FE80  0467               THEN RETURN;
 FE89  0468            END;
 FE89  0469       ELSE IF IN_BYTE <> 'Y
 FE8E  0470               THEN GOTO WRONG_ANSWER;
 FE97  0471
 FE97  0472    STACK = .JUMP_REGISTERS;
 FE9D  0473    GEN $35,$FF; /* PULS CC,D,DP,X,Y,U,PC ... LOAD EM UP AND GO! */
 FE9F  0474 ENDPROC;
 FEA2  0475
 FEA2  0476
 FEA2  0477
 FEA2  0478 /*
 FEA2  0479   ******************
 FEA2  0480   * HEX/ASCII DUMP *
 FEA2  0481   ******************
 FEA2  0482 */
 FEA2  0483 PROCEDURE HEX_DUMP:BYTE .ADDRESS, COUNT, PASSES;
 FEA4  0484    .ADDRESS = ADDRESS_PROMPT;
 FEA9  0485    CRLF;
 FEAC  0486 DUMP_AGAIN:
 FEAC  0487    PASSES = 0;
 FEAE  0488    REPEAT
 FEAE  0489       COUNT = 0;
 FEB0  0490       CRLF;
 FEB3  0491       PUT_HEX_ADDRESS(.ADDRESS);
 FEBC  0492       TWO_SPACES;
 FEBF  0493       REPEAT
 FEBF  0494          PUT_HEX_BYTE(ADDRESS(COUNT));
 FECF  0495          ONE_SPACE;
 FED2  0496          COUNT = COUNT + 1;
 FED4  0497       UNTIL COUNT = 16;
 FEDA  0498       TWO_SPACES;
 FEDD  0499       COUNT = 0;


9.12.02  A PL/9 MINI-MONITOR FOR THE MC6809  (continued)

 FEDF  0500       REPEAT
 FEDF  0501          PUT_ASCII_BYTE(ADDRESS(COUNT));
 FEEF  0502          COUNT = COUNT + 1;
 FEF1  0503       UNTIL COUNT = 16;
 FEF7  0504       .ADDRESS = .ADDRESS + 16;
 FEFE  0505       PASSES = PASSES + 1;
 FF00  0506    UNTIL PASSES = 16;
 FF06  0507    PRINT(" MORE?\B");
 FF1C  0508    IF GET_UPPER_CASE <> 'N
 FF1F  0509       THEN GOTO DUMP_AGAIN;
 FF27  0510 ENDPROC;
 FF2A  0511
 FF2A  0512
 FF2A  0513
 FF2A  0514 /*
 FF2A  0515   * * * * * * * * * * * * * * * * * *
 FF2A  0516   *  PL/9 MINI-MONITOR MAIN PROGRAM *
 FF2A  0517   * * * * * * * * * * * * * * * * * *
 FF2A  0518 */
 FF2A  0519 PROCEDURE MINI_MONITOR:BYTE COUNT;
 FF2C  0520
 FF2C  0521    SAVE_GLOBAL_POINTER;   /* A VERY IMPORTANT STEP IF YOU WANT TO ACCESS
 FF2F  0522                              GLOBAL VARIABLE FROM INTERRUPT ROUTINES    */
 FF2F  0523    FIRQ_COUNT = 0;
 FF35  0524    IRQ_COUNT = 0;
 FF3B  0525
 FF3B  0526    INITIALIZE_CONSOLE_ACIA;
 FF3E  0527
 FF3E  0528    CONDITION_CR = $D0; /* INITIALIZE JUMP REGISTERS */
 FF42  0529    COUNT = 1;
 FF46  0530    REPEAT
 FF46  0531       JUMP_REGISTERS(COUNT) = 0;
 FF4F  0532       COUNT = COUNT + 1;
 FF51  0533    UNTIL COUNT = 12;
 FF57  0534
 FF57  0535    RTS_VECTOR = .RETURN_FROM_SUBROUTINE;
 FF5F  0536
 FF5F  0537    CCR = CCR AND INT_ON_MASK;  /* ENABLE FIRQ AND IRQ */
 FF65  0538
 FF65  0539    CRLF;
 FF68  0540
 FF68  0541    REPEAT
 FF68  0542       PRINT("PL/9 MINI-MONITOR V:4.0\N> ");
 FF91  0543
 FF91  0544       IF GET_UPPER_CASE
 FF94  0545          CASE 'D THEN HEX_DUMP;
 FF9E  0546          CASE 'J THEN JUMP_TO_USER_PROGRAM;
 FFAA  0547          CASE 'M THEN MEMORY_EXAMINE_AND_CHANGE;
 FFB6  0548          ELSE PRINT (" WHAT?\B");
 FFCF  0549
 FFCF  0550       CRLF;
 FFD2  0551       CRLF;
 FFD5  0552    FOREVER;


9.12.02  A PL/9 MINI-MONITOR FOR THE MC6809  (continued)

 PROCEDURES:
 INITIALIZE_CONSOLE_ACIA F812
 PUTCHAR             F81B
 GETCHAR             F827   BYTE
 MACHINE_PUT         F843
 MACHINE_GET         F84C
 GET_UPPER_CASE      F851   BYTE
 CRLF                F87E
 PRINT               F88F
 BITSOUT             F8E4
 GET_HEX_NIBBLE      F938   BYTE
 GET_HEX_BYTE        F997   BYTE
 GET_HEX_ADDRESS     F9BF   INTEGER
 PUT_HEX_NIBBLE      F9E5
 PUT_HEX_BYTE        FA05
 PUT_HEX_ADDRESS     FA1A
 PUT_ASCII_BYTE      FA2D
 SAVE_GLOBAL_POINTER FA5F
 RESTORE_GLOBAL_POINTER FA64
 ONE_SPACE           FA6D
 TWO_SPACES          FA77
 REGISTER_DUMP       FA7C
 SWI                 FB42
 SWI2                FB58
 SWI3                FB59
 NMI                 FB5A
 FIRQ                FB67
 IRQ                 FB9D
 RESET               FBCF
 RETURN_FROM_SUBROUTINE FBD3
 ADDRESS_PROMPT      FBEA   INTEGER
 MEMORY_EXAMINE_AND_CHANGE FC07
 JUMP_TO_USER_PROGRAM FD33
 HEX_DUMP            FEA2
 MINI_MONITOR        FF2A

 DATA:
 MASK                F8DC   BYTE
 PROMPT              FD0A   BYTE
 PRE_LOAD            FD1F   BYTE

 EXTERNALS:
 PROM_BASE           F800
 STACK_INIT          E7FD
 YSAVE               E7FE
 YSAVE_HI            00E7
 YSAVE_LO            00FE
 IO_BASE             00E0
 _8DATA_2STOP_NOPARITY 0011
 ACIA_RESET          0003
 RX_DATA_FULL        0001
 PARITY_STRIPPER     007F
 TX_DATA_EMPTY       0002
 CR                  000D


9.12.02  A PL/9 MINI-MONITOR FOR THE MC6809  (continued)

 LF                  000A
 SP                  0020
 BEL                 0007
 INT_ON_MASK         00AF
 TRUE                FFFF
 FALSE               0000
 ZERO                0030
 ONE                 0031
 ACIA_CTRL           E004   BYTE
 ACIA_STAT           E004   BYTE
 ACIA_DATA           E005   BYTE

 GLOBALS:
 JUMP_REGISTERS      0000   BYTE
 CONDITION_CR        0000   BYTE
 A_ACCUMULATOR       0001   BYTE
 B_ACCUMULATOR       0002   BYTE
 DIRECT_PAGE         0003   BYTE
 X_REGISTER          0004   INTEGER
 Y_REGISTER          0006   INTEGER
 U_REGISTER          0008   INTEGER
 PROGRAM_CTR         000A   INTEGER
 RTS_VECTOR          000C   INTEGER
 ERFLAG              000E   BYTE
 KEYCHAR             000F   BYTE
 B_POINTER           0010   BYTE
 FIRQ_COUNT          0012   INTEGER
 IRQ_COUNT           0014   INTEGER

  FIRQ at $FB67
   IRQ at $FB9D
   NMI at $FB5A
   SWI at $FB42
  SWI2 at $FB58
  SWI3 at $FB59
 RESET at $FBCF


9.12.02  A PL/9 MINI-MONITOR FOR THE MC6809  (continued)

 This section will describe the main points of the preceeding program to give you
 a  better understanding of the constructions required to to make a self starting
 program.

 Before we start explaining the body of the  program  let's  look  at  the  block
 diagram  on  the  following  page and compare it with the text of the program it
 represents:

  (1)  lines 2 through 18, with line 1 being the program title.
  (2)  line 21
  (3)  line 30
  (4)  line 32
  (5)  lines 42 through 50
  (6)  line 53
  (7)  lines 61 through 205
  (8)  lines 214 through 323
  (9)  lines 326 through 328
 (10)  lines 337 through 510
 (11)  lines 519 through 552


 Upon  power  up, or hardware RESET, the MC6809 processor will be vectored to the
 start of the procedure named RESET at which point it will begin to execute  code
 and will ultimately transfer control to the first declared origin (12).


             * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
             *                                                       *
             *  The RESET routine MUST, repeatMUSTalways end  in   *
             *  a JUMP to the FIRST declared ORIGIN of the program.  *
             *                                                       *
             * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 This point is very important. PL/9 will always generate the code for the  stack,
 global and direct page assignments just AFTER the first declared origin and then
 transfer control to the last procedure in the program (13). The only  reason  we
 have not forced RESET to point to the first ORIGIN and have provided a procedure
 named RESET is to allow experienced assembly  language  programmers  some  extra
 flexibility in what goes on before the main PL/9 program is started.

 In  this  example  we  have  stated JUMP PROM_BASE as being the only code in the
 RESET procedure. Using a constant to define  PROM_BASE  greatly  simplifies  the
 changes   to   the   program  as  it  is  also  used  to  set  the  origin,  viz
 ORIGIN=PROM_BASE. Thus all we have  to  do  is  alter  the  value  declared  for
 PROM_BASE  and  we  will automatically relocate the program as well as the point
 that the RESET procedure will jump to.

              + + + + + + + + + + + + + + + + + + + + + + + + + + + +
              + MORE OFTEN THAN NOT A SIMPLE JUMP TO THE ORIGIN IS  +
              + ALL THAT WILL BE PRESENT IN THE  RESET  PROCEDURE.  +
              + + + + + + + + + + + + + + + + + + + + + + + + + + + +

 Constants  are an ideal mechanism to help simplify changes to PL/9 programs. Any
 item that is likely to change should be declared as a  constant  or  part  of  a
 read-only  data  table  near  the start of the program. This will circumvent the
 drudgery of having to dig through the body  of  the  code  to  look  for  hidden
 references when theinevitablechanges are to be incorporated.

                        +-------------------------------+
 (1)                    |     CONSTANT Declarations     |
                        +-------------------------------+

                        +-------------------------------+
 (2)                    |        AT Declarations        |
                        +-------------------------------+

                 +----->----->----->----+
                 |                      |
                 |      +-------------------------------+
                 |      |             ORIGIN            |
 (3)             |      |     Start of Program Code     |
                 |      +-------------------------------+
                 |                      |
                 |      +-------------------------------+
                 |      |             STACK             |
 (4)             |      |  Initialize the Stack Pointer |
                 |      +-------------------------------+
                 |                      |
                 |      +-------------------------------+
                 |      |             GLOBAL            |
 (5)             |      |   Allocate Global Variables   |
                 |      +-------------------------------+
                 |                      |
                 |      +-------------------------------+
                 |      |             DPAGE             |
 (6)             |      |  Assign Direct Page Register  |
                 |      +-------------------------------+
                 |                      |
                 |                      +-->----->----->----->-+
                 |      +-------------------------------+      |
                 |      |  Read-only Data Declarations  |      |
                 |      |          (if used)            |      |-(13)
                 |      +-------------------------------+      |
                 |                                             |
                 |      +-------------------------------+      |
 (7)             |      |        I/O SUBROUTINES        |      |
                 |      +-------------------------------+      |
                 |                                             |
                 |      +-------------------------------+      |
 (8)             |      | INTERRUPT SERVICE SUBROUTINES |      |
                 |      +-------------------------------+      |
                 |                                             |
                 | (6809 Reset) ----->--+                      |
                 |                      |                      |
                 |      +-------------------------------+      |
  (9)       (12)-|      |             RESET             |      |
                 |      +-------------------------------+      |
                 |                      |                      |
                 +--<-----<-----<-----<-+                      |
                                                               |
                        +-------------------------------+      |
  (10)                  |        MENU SUBROUTINES       |      |
                        +-------------------------------+      |
                                                               |
                                        +-<-----<-----<-----<--+
                                        |
                        +-------------------------------+
  (11)                  |          MAIN PROGRAM         |
                        +-------------------------------+
9.12.02  A PL/9 MINI-MONITOR PROGRAM FOR THE MC6809  (continued)

 The sequence of events at power-up or  hardware  reset  is  illustrated  by  the
 dashed lines on the block diagram.

 On  reset  the  MC6809 will be vectored to the start of the RESET procedure (9).
 The RESET procedure may then  do  other  things  (usually  written  in  assembly
 language  using  only the registers and branch/jump instructions as the stack is
 not initialized at this point) but MUST end with a jump to  the  first  declared
 ORIGIN. This jump is represented by (12).

 The  PL/9  program is now entered at (3) where the STACK is initialized (4), the
 GLOBAL variables allocated (5), and the  direct  page  assigned  (6).  When  the
 compiler  has  determined  that  the program header has ended, as signified by a
 read-only data declaration OR a procedure declaration  it  will  insert  a  long
 branch  to  the last procedure in the file. In this case the long branch will be
 immediately after the DPAGE declaration and is represented by (13).

 THIS LAST POINT IS CRITICAL if you  use  multiple  ORIGIN  statements.  If,  for
 example,  we  had  a second ORIGIN statement between lines 54 and 55 the program
positively and unequivocallywould NOT work!

 The  reason  is  the  way the compiler senses the end of the program header. The
 compiler is looking for one of two events to take place to signify  the  end  of
 the program header:

 (1) A read-only data declaration.
 (2) A procedure declaration.

 When one of either of these two events takes place the compiler makes a note  of
 the  current  address  and  reserves three bytes for the long branch to the last
 procedure in the file before it continues to compile the program.

 If you make a second ORIGIN statement before one of these two events takes place
 (remember  that  PL/9 is a single pass compiler) the compiler will simply adjust
 the program counter value accordingly. This has the  effect  of  leaving  a  gap
 between  the  code just generated, in this example the DPAGE assignment, and the
 forward branch to the last procedure. This gap in executable code will cause the
 program to crash in no uncertain terms. See section 7.01.03 for further details.

 Once  the  program  header has been executed and the forward branch successfully
 navigated the MAIN program will then be started up. It is  very  important  that
 the  MAIN  program  include  (or have calls to) all of the hardware and variable
 initialization routines BEFORE  the  body  of  the  MAIN  procedure,  usually  a
 REPEAT...FOREVER loop, is entered.

 Another  important  point  to  note is that even if you are not intending to use
 SWI, SWI2, SWI3, NMI, FIRQ, or IRQ you should  declare  the  procedures  and  an
 ENDPROC as follows:

 PROCEDURE SWI;  ENDPROC;
 PROCEDURE SWI2; ENDPROC;
 PROCEDURE SWI3; ENDPROC;
 PROCEDURE NMI;  ENDPROC;
 PROCEDURE FIRQ; ENDPROC;
 PROCEDURE IRQ;  ENDPROC;

 This will ensure that the MC6809 vector table points to dummy  RTI  instructions
 in  all  cases.  This will prevent a system crash should an accidental interrupt
 occur. This bit of security only costs you six bytes (six RTI instructions)  and
 a very small overhead in the text file.
9.12.02  A PL/9 MINI-MONITOR PROGRAM FOR THE MC6809  (continued)


                         A MINI-MONITOR FOR THE MC6809


 The  following sections contain an outline of the procedures used to develop the
 system monitor program detailed on the preceeding pages.


PROGRAM  HEADER

 The  program header, lines 1 through 53 should be self explanatory at this stage
 and will not be covered. If what we are doing is not  obvious  we  suggest  that
 you go back and read the appropriate section of the Language Reference Manual or
 the Users Guide.


I/O SUBROUTINES

 Lines 61 through 77 deal with initializing and communicating through  an  MC6850
 ACIA, some understanding of an MC6850 is therefore required to make any sense of
 these routines.

 Lines 80 through 87 are included to facilitate  writing  machine  code  routines
 that communicate through the system console.

 Lines 90 through 116 are extracted from the IOSUBS library,  lines  125  through
 139  are  from  the  BITIO  library,  lines  148  through 198 are from the HEXIO
 library. All of these procedures are covered in section nine.


INTERRUPT SERVICE SUBROUTINES

 Lines 219 through 245 are procedures to save and  restore  the  global  variable
 pointer  'Y' and the 'DP' register. Routines similar to this MUST be used if you
 wish to access GLOBAL variables  including  AT  variables  on  the  direct  page
 established  by  'DPAGE'  from  within  interrupt  procedures.  This  topic  was
 discussed in detail in section 9.11.00.

 Lines  232  through  268  form  three  procedures  involved with displaying the
 contents of the MC6809 register set that has  been  pushed  onto  the  hardware
 stack.

 Upon  entry  the  procedure  'REGISTER_DUMP'  is  passed  an  integer   variable
 (STACKBASE)  containing  the  address  of  the base of the stack. The way we are
 going to use this integer dictates that it is not defined  as  a  pointer,  i.e.
 '.STACKBASE'.  Line 245 prints a heading on the video display in order to define
 the information contained on the next line. The line of register data  built  up
 by the program between line 248 to line 265.

 First  A,  B, and DP are displayed in HEX, then X, Y, U, and the Program Counter
 are displayed in HEX by the loop between line 248 and line 257. Then  the  Stack
 pointer  in  HEX,  followed by the CCR in HEX followed by the bit pattern of the
 CCR are displayed by the program between line 259 and line 265.


9.12.02  A PL/9 MINI-MONITOR PROGRAM FOR THE MC6809  (continued)

 As mentioned previously STACKBASE will contain the address of the  base  of  the
 saved  registers. Since the registers are saved one on top of the other the data
 may be considered to be a vector table of BYTE elements organized as follows:


 Highest address ---> PC-LO
      |               PC-HI
      |               U-LO
      |               U-HI
      |               Y-LO
      |               Y-HI
      |               X-LO
      |               X-HI
      |               DP
      |               B
      |               A   <----- STACKBASE + 1.
 Lowest address --->  CCR <----- STACKBASE contains the address of this variable.


 The  mechanism we use to output the contents of the data present on the hardware
 stack is a good example of a practical use of pointers.

 Before entering the loop between lines 248 and 257  the  contents  of  STACKBASE
 (plus  one) are assigned to a BYTE pointer called '.B_POINTER'. This pointer now
 contains the address of the byte associated with the 'A' accumulator.

 On the first three iterations of the loop between lines 248 and 257 '.B_POINTER'
 will  be  less than STACKBASE + 3 so the code between lines 251 and 254 will not
 be executed. This results in BYTE sized variables being printed  for  the  first
 three  iterations ('A', 'B' and 'DP'). On subsequent iterations the code between
 lines 251 and 254 will be executed. This  results  in  INTEGER  sized  variables
 being printed for the last four iterations ('X', 'Y', 'U' and 'PC').

 Line  259  prints  the  address held in '.B_POINTER' (NOT the byte pointed to by
 '.B_POINTER') which at this stage  is  the  address  where  the  hardware  stack
 pointer ('SP') will be after the register set is pulled.

 Line 262 aims '.B_POINTER' at the 'CCR' value on the stack.

 Line  263  prints  the  'CCR'  in HEX. Line 265 prints the 'CCR' as a binary bit
 pattern.


 The  function  procedures  'PUT_HEX_BYTE'  and  'BITSOUT'  expect  a  BYTE sized
 variable to be passed to them. The function procedure 'PUT_HEX_ADDRESS'  expects
 an INTEGER sized variable to be passed to it.

 Note  how we handle '.B_POINTER' differently in lines 259 and line 263. Line 259
 can be read as:  "Print  the  HEX  address  contained  in  the  variable  called
 '.B_POINTER'".  Line  263  can be read as: "Print the HEX byte pointed to by the
 address held in '.B_POINTER'".

 The only difference between the two lines is that line 259 contains the 'dot' in
 front of the pointers name (which means treat me like any other variable and use
 my CONTENTS as data) and line 263 does not include the 'dot'  in  front  of  the
 pointers  name  (which  means treat me as a 'window' and use my contents to tell
 you where the data you want is stored).

 Pointers are discussed in detail in their own section.
9.12.02  A PL/9 MINI-MONITOR PROGRAM FOR THE MC6809  (continued)

 Lines  277  through  328  inclusive  are  the  routines that will be executed in
 response to software or hardware interrupts being presented to the MC6809.

 When a software interrupt occurs the entire register set, including the  program
 counter,  will  be  pushed  onto the stack and the SWI interrupt service routine
 will be entered. When an RTI, return from interrupt, instruction is encountered,
 the  saved  register  set,  including the program counter, will be pulled of the
 stack causing execution of the interrupted program to  continue  as  though  the
 interrupt had never occurred.

 Lines  277  through  285  are  the  SWI service routine which is being used as a
 simple break-point processor. The purpose of the  break-point  processor  is  to
 dump  the  contents of the MC6809 registers and return to system monitor command
 level.

 The GEN statements on lines 278 through 304 takes a copy of  the  saved  program
 counter  off  the stack, subtracts one from it and returns it to the stack. This
 is done to compensate for the fact that the  program  counter  would  have  been
 incremented  by  one when the SWI instruction was executed. Subtracting one from
 the saved program counter ensures that the displayed value for 'PC'  will  point
 to the location of the SWI instruction NOT one byte past it.

 Line  282  recovers the 'DP' and 'Y' registers so we can access GLOBAL variables
 and AT variables, which in this case include the ACIA I/O device. Line 283  then
 passes  the  value  of  the hardware stack pointer to REGISTER_DUMP. The stacked
 registers will then be displayed as described previously.

 Line 284 forces a complete RE-START of the system monitor by vectoring  back  to
 the  first ORIGIN statement. This is a crude, but effective, way of avoiding the
 RTI instruction that will be generated by line 285.

 Lines 288 through 293 are dummy interrupt procedures that simply ensure that the
 MC6809 interrupt vector table points to RTI instructions.

 The NMI interrupt service routine is virtually  identical  to  the  SWI  routine
 except for two points. The first is that the PC value is not altered. The second
 is that the routine terminates in an RTI. This  routine  will  simply  dump  the
 register  set  whenever an NMI occurs and then return to the interrupted program
 as though nothing had happened.

 You  will  note  that  line  303 restores the GLOBAL pointer. Why should this be
 necessary when the NMI routine does not access any GLOBAL variables? The  reason
 is  simple  as  well as fundamental. Whenever an interrupt procedure calls other
 PL/9 procedures (that may in turn call other PL/9 procedures, that may  in  turn
 call other PL/9 procedures.....) you shouldassumethat somewhere down the chain
 a global variablemaybe used. The four bytes of code required  to  restore  the
 global pointer can give you a lot of piece of mind in these cases.

 If  the  entire  interrupt  procedure  is  self  contained and does not make any
 references to global variables and  you  are  100%  certain  that  none  of  the
 procedures that are used by the interrupt procedure make use of GLOBAL variables
 restoration of the 'Y' index register is not required.

 The same thing applies to the 'DP' register if you are intending to  access  any
 of  the  AT variables on the direct page which was established by 'DPAGE'. Since
 'DPAGE' is most often used to point to the direct page where the I/O devices are
 and  interrupt procedures, more often than not, access I/O devices and store the
 results in GLOBAL variables, it is good practice to restore 'DP' and 'Y'  within
 all interrupt procedures as a general practice in your programming.
9.12.02  A PL/9 MINI-MONITOR PROGRAM FOR THE MC6809  (continued)

 The FIRQ interrupt service routine is a simple demonstration of how easy  it  is
 to  access global variables from within an interrupt procedure. In this instance
 we are simply going to increment a global variable called FIRQ_COUNT and display
 its bit pattern each time a FIRQ occurs.

 There is one important point to note about the way PL/9 treats FIRQ. If you know
 about FIRQ you will remember that FIRQ  only  saves  the  CCR  and  the  Program
 Counter  before  being  vectored to the interrupt service routine. Thus a normal
 FIRQ routine cannot make any use of the registers and is generally restricted to
 the  TST,  INC,  DEC,  and  CLR  instructions  in  assembly language. Since PL/9
 procedures require the use of the 'A', 'B' and 'X' registers the FIRQ  interrupt
 is  not  of much use to PL/9 procedures as it stands. Add to this that PL/9 will
 require you to restore the 'DP' if AT variables on the  direct  page  are  being
 accessed and the 'Y' register if GLOBAL variables are being used and you can see
 that a normal FIRQ is pretty useless to PL/9 procedures.

 To make the FIRQ usable PL/9 will  produce  the  code  ($34  $7E)  to  push  the
 remaining registers (D, DP, X, Y, and U) onto the stack at the start of the FIRQ
 procedure. At the end of the FIRQ interrupt procedure  PL/9  will  generate  the
 code  ($35  $7E) to pull these registers off the stack before executing the RTI.
 All of this is invisible to the PL/9 programmer. FIRQ can be  treated  just  the
 same  as IRQ but because of the code required for the extra push/pull operations
 it will beSLOWERthan the normal IRQ routine.

 Obviously there is nothing to stop you from producing an assembly language  FIRQ
 service  routine  as an ASMPROC which ends in an RTI. In this case you will have
 to manually insert the ASMPROC's starting address in the FIRQ interrupt vector.

 If the vector is in RAM your program can automatically  install  the  vector  by
 using the following statement:

    AT $E742:INTEGER FIRQVEC;

 Then,  assuming  that your ASMPROC for FIRQ is called 'FIRQ_SERVE' you would put
 the following code at the start of your main program before you enable the  FIRQ
 flag in the CCR:

    FIRQVEC = .FIRQ_SERVE;    /* note the 'dot' */

 If the FIRQ vector is in ROM the problem is a bit  more  difficult.  Either  you
 must  manually  insert the address of FIRQ_SERVE into the vector at $FFF6 at the
 time you program the EPROM  or  you  must  fiddle  the  compiler  with  multiple
 ORIGIN  statements  and  generate  a  READ-ONLY  vector at $FFF6 just after your
 ASMPROC:

    ASMPROC FIRQ_SERVE;
       GEN $3B;  /* RTI */

    ORIGIN = $FFF6
    INTEGER FIRQ_VEC .FIRQ_SERVE;

    ORIGIN = $xxxx  /* one byte past the RTI instruction ($3B) as determined
                       by A:T,C compile option. */


 The IRQ interrupt service routine is virtually identical to the FIRQ routine.

 The RESET routine simply performs theMANDATORYjump to the first ORIGIN.
9.12.02  A PL/9 MINI-MONITOR PROGRAM FOR THE MC6809  (continued)

MENU SUBROUTINES

RETURN FROM SUBROUTINE

 Lines 337 through 346 handle the eventuality of random program counter pull from
 the stack. This routine is used in conjunction with the MINI-MONITOR 'J' command
 to provide a simple technique for terminating simple  subroutines  entered  into
 memory  in  machine code. The way we have organized the GLOBAL variables is very
 important to the operation of the system monitor and bears looking at in  detail
 at this juncture.


 Highest address ---> RTS_VECTOR (LO)
      |               RTS_VECTOR (HI) <--- SP points here after program entered
      |               PROGRAM_CTR (LO)
      |               PROGRAM_CTR (HI)
      |               U_REGISTER (LO)
      |               U_REGISTER (HI)
      |               Y_REGISTER (LO)
      |               Y_REGISTER (HI)
      |               X_REGISTER (LO)
      |               X_REGISTER (HI)
      |               DIRECT_PAGE
      |               B_ACCUMULATOR
      |               A_ACCUMULATOR
 Lowest address  -->  CONDITION_CR   <--- SP points here before 'J' is executed


 The  address  of  CONDITION_CR is also occupied by the variable 'JUMP_REGISTERS'
 which has been declared as a vector of nil size. This is a handy technique  when
 you want to call the same location in memory by more than one name.

 The first thing you should notice about the order of the variables is that it is
 identical to the natural order the MC6809 pushes  and  pulls  registers  on  the
 hardware  stack.  This  is  no  coincidence!  The  one extra item in the list is
 'RTS_VECTOR'. If you understand the way the MC6809 works you will know that when
 an RTS instruction is encountered the MC6809 simply pulls the next two bytes off
 the stack into the program counter and commences executing code at that address.

 The  MINI-MONITOR (as well as the Windrush GT-BUG System Monitor) take advantage
 of this fact by providing a sensible address at the memory location that will be
 pulled  into  the  program  counter  when  an  RTS is encountered. After the 'J'
 command (discussed shortly) is executed it will leave the stack pointer pointing
 to  'RTS_VECTOR'.  When, and if, the users machine code program terminates in an
 RTS the address stored in 'RTS_VECTOR' will be pulled into the  program  counter
 and  execution  will  commence  at  that address. The MAIN procedure initializes
 RTS_VECTOR to contain the address of the procedure 'RETURN_FROM_SUBROUTINE'.

 This  routine is located between line 337 and line 346. This routine is designed
 to dump  the  register  set  and  return  to  the  MINI-MONITOR.  Since  an  RTS
 instruction  does not save any registers the first thing that must be done is to
 save them. This is done in line 339. Since the value of the PC on the  stack  is
 meaningless  lines 340 through 341 set it to $FFFF. Line 344 passes the value of
 the hardware stack pointer to REGISTER_DUMP which  performs  the  register  dump
 already  discussed.  The  procedure  is  terminated  by a JUMP back to the first
 ORIGIN which will re-start the MONITOR.


9.12.02  A PL/9 MINI-MONITOR PROGRAM FOR THE MC6809  (continued)

MEMORY EXAMINE AND CHANGE

 This procedure is contained between lines  360  and  400.  The  small  procedure
 between  lines  355  and 357 sends a message to the system console which prompts
 'ADDRESS?' and then waits for 4 HEX bytes to be entered. The implication  of  it
 being designed as a small subroutine is that it will be used more than once.

 The  main  memory  examine and change procedure is located between lines 360 and
 400. Line 365 'calls' the message subroutine  'ADDRESS_PROMPT'  and  places  the
 returned  4 digit HEX number in a BYTE sized pointer called '.ADDRESS'. Line 364
 tests to see if the HEX address returned contains an error i.e. a non HEX  digit
 was  entered. If an error is detected the procedure is terminated on the spot by
 line 365.

 If no errors were detected another set of prompts is issued, a CRLF, then  a  CR
 sent  to  the  system  console.  You  will note that there are two labels in the
 program. One at line 371 the other at line 373. These are going to be  used  for
 subsequent GOTO instructions.

 Line 375 prints the address contained in the pointer '.ADDRESS'. Line 377 prints
 the contents of the BYTE pointed to by the contents of '.ADDRESS'.

 Line 380 assigns the value returned by GET_HEX_BYTE to a local  variable  called
 WRITE_BYTE. Line 381 tests the global error flag ERFLAG if it indicates an error
 further tests are carried out on line 382. A global variable called KEYCHAR will
 contain the last key hit before GET_HEX_BYTE terminated. If the key was a (-) or
 a (+) or a (/) lines 383 through 389 will be entered. If it was  none  of  these
 keys the procedure is terminated by the statement in line 390.

 Lines  385  through  387  seek to identify which key has been hit and adjust the
 value of '.ADDRESS' as required. If the key was a (+) or a (-) line 388 will  be
 executed  and  control  passed to the label TRY_AGAIN. If the key was a (/) then
 control will be passed to the label  READ_AGAIN.  The  only  difference  between
 these  two  labels is the CRLF between them but it is most important in terms of
 the display presentation.

 When either of the local labels is re-entered the value of '.ADDRESS'  is  again
 displayed  along with the memory contents of the address. If the (+) key was hit
 the next address will be displayed on the next line. If the (-) key was hit  the
 previous  address will be displayed on the next line. If the (/) key was hit the
 same address will be displayed on the same line. In the latter case the  address
 will be the same but the data may not be.

 If  line  381  did  not find error flag true then control will be passed to line
 392. Here we take the HEX byte supplied  by  the  operator,  which  will  be  in
 WRITE_BYTE, and insert it into the memory location pointed to by the contents of
 '.ADDRESS'.

 Line 393 then reads the memory location just written to and compares  the  value
 that  was  written  with the value just read. If they are not the same lines 394
 through 397 will be executed. If they are the same line 397 will  increment  the
 address pointer and return control to the local label indicated.

 If  the  read and write data differ line 395 will send a 'beep' and a '?' to the
 system console adjacent to the data previously entered by the operator and  then
 pass control back to the local label indicated which will re-display the data on
 the following line.


9.12.02  A PL/9 MINI-MONITOR PROGRAM FOR THE MC6809  (continued)

JUMP TO USER PROGRAM

 Lines  418  through  474  contain  one  of  the  more  complex  routines  in the
 MINI-MONITOR. Lines 409 through 418 are a read-only data tables. Wait a  minute!
 Haven't  we  been  telling  you  to declare read-only data near the start of the
 program? Then why are we breaking our own 'rules'?

 We have been telling you to put data that islikely to changenear the start  of
 the  program.  We  have  also  recommended  that  message strings be declared as
 read-only data near the beginning of the program. What we have not told  you  is
 that the closer read only data is to the procedure that uses it the shorter will
 be the addressing range. The shorter the addressing ranges require less code.

 In most programs this will only save 10 or 20 bytes or so. In this program those
 10 extra bytes would have pushed us beyond 2K. What you see here is an effort to
 reduce code at the expense of maintainability. Normally we would  have  declared
 virtually  every single message string used in a program near the start of it as
 we did in the example in section 9.07.12.

 Shortening the addressing range will substantially reduce the code generated  if
 the data is being accessed as an element of a vector table as it will be in this
 program.

 Line 425 contains a label for a  GOTO  statement.  Line  426  uses  the  address
 prompting  routine  at  lines  355-357 and assigns the value returned to a local
 variable called IN_ADDRESS. Line 427 tests the error flag and  if  found  to  be
 TRUE the procedure is terminated immediately via line 428.

 Line  429  assigns the value of IN_ADDRESS to the variable PROGRAM_CTR which, if
 you recall the section on the RTS routine is a variable  on  our  pseudo  MC6809
 stack.

 Line  431 prints the read-only data string on line 418. Line 433 performs a dump
 of the values stacked up  above  the  variable  'JUMP_REGISTERS'  (note  we  are
 passing the address of JUMP_REGISTERS as signified by the '.' preceeding it). If
 you recall what we said earlier JUMP_REGISTERS is the same  memory  location  as
 CONDITION_CR. Thus we are passing the base address of our pseudo MC6809 stack to
 the dump register routine which will display all of the values.

 The MAIN routine initializes all of these values to zero except the CCR which is
 initialized to $D0, a standard CCR condition to enter subroutines with. Once all
 of the pseudo stack variables  are  displayed  line  436  prompts  the  operator
 whether  the  values  are  O.K.  The  operators  response is assigned to a local
 variable called IN_BYTE in line 438. Line 439 then compares the response with an
 ASCII  'N'  if  IN_BYTE  is  an 'N' then lines 440 through 468 will be executed.
 Otherwise control will pass to line 469. If the operators response was not a 'Y'
 then  control will pass to the local label indicated and the prompt reissued. If
 the response was a 'Y' line 472 will assign the  address  of  the  base  of  our
 pseudo  stack to the real hardware stack pointer. Line 473 then pulls the pseudo
 stack into the appropriate registers, including the PC. The PC will now  contain
 the address that was originally supplied by the operator hence program execution
 will begin at this point with the MC6809 registers pre-loaded  with  the  values
 contained in the pseudo stack. Simple once you know what's going on!


9.12.02  A PL/9 MINI-MONITOR PROGRAM FOR THE MC6809  (continued)

 Back to line 440 in the event the operator said that the  pre-load  values  were
 not  acceptable.  Line  441  initializes a local variable that will be used as a
 loop counter. Line 443 sends  a  prompt  to  the  operator  giving  him  further
 instructions.  The main prompting routine is contained within the REPEAT...UNTIL
 loop between lines 445 and 461. The purpose  of  this  loop  is  to  prompt  the
 operator  for a change of pre-load data for each of the MC6809 registers. On the
 first iteration line 446 and 447 will prompt 'CC?', on the second ' A?', on  the
 third  '  B?',  etc.  On  the  first  four iterations (COUNT = 0, 1, 2 & 3) BYTE
 quantities (CCR, A, B & DP) will be dealt with so lines 449 through 453 will  be
 executed.  For  all  subsequent iterations (COUNT = 4, 5 & 6) INTEGER quantities
 (X, Y & U) will be dealt with so lines 454 through 458 will be entered.

 Lets take the first iteration. Line 450 will get a HEX byte  from  the  operator
 and  assign  it to a local variable called IN_BYTE. Line 451 tests for a non HEX
 character being entered, and, if it finds one, control will be  passed  to  line
 459.  If a valid HEX byte was entered it will be assigned to our pseudo stack by
 treating it as a vector table in line 452 with JUMP_REGISTERS being used as  the
 base address for all offsets.

 Now  lets  take  the  last  iteration.  Line 455 will get a HEX address from the
 operator and assign it to a local variable called IN_ADDRESS. Line 456 test  for
 a  non HEX character being entered, and, if it finds one, control will be passed
 to line 459. If a valid HEX address was entered  it  will  be  assigned  to  our
 pseudo  stack,  again  by  treating it as a vector table, in line 457. This time
 X_REGISTER is used  as  the  base  address  in  the  calculations  and  four  is
 subtracted  from  the  current  value  of  COUNT  to compensate for the new base
 address. The reason we shifted from using JUMP_REGISTERS as our base address  is
 that JUMP_REGISTERS is defined as BYTE sized data. Therefore any references to a
 vector offset from JUMP_REGISTERS will be treated as BYTE sized by the  compiler
 and  the  code  it  generates.  Since  X_REGISTER is defined as an INTEGER sized
 variable the compiler will treat vector indices as INTEGER sized variables.

 Thus the operator is presented with a prompt to  change  each  of  the  pre-load
 values  one  by  one. When he has entered the last value the REPEAT...UNTIL loop
 will terminate and control will pass to line 463.

 Once again the pre-load table will be presented to the operator. He will then be
 prompted  'JUMP?'  any  response other than 'Y' will terminate the procedure via
 line 467. If the response is 'Y' control will pass to  line  472  and  the  jump
 executed as described previously.


9.12.02  A PL/9 MINI-MONITOR PROGRAM FOR THE MC6809  (continued)

FORMATTED HEX/ASCII DUMP

 This  routine  occupies  lines  483 through 510. Line 484 prompts for a starting
 address  and  assigns  the  returned  value  to  a  BYTE  sized  pointer  called
 '.ADDRESS'.  Line  487 initializes the variable called PASSES to zero. Lines 488
 through 506 are a REPEAT ... UNTIL loop with two REPEAT ... UNTIL  loops  inside
 it.  Line 489 initializes the variable called COUNT to zero. Line 491 prints the
 current contents of the pointer called '.ADDRESS'. At this juncture it  will  be
 the same address as was supplied by the operator.

 When  we  enter  the  REPEAT  ... UNTIL loop between lines 493 and 497. Line 494
 outputs the HEX byte pointed to by the address held in '.ADDRESS' subscripted by
 COUNT.  On  the  first  iteration  this line will output the BYTE at the address
 supplied by the operator, on the second iteration the next higher BYTE  will  be
 printed,  and  so  on.  This  REPEAT  ...  UNTIL  loop  will  output 16 BYTES in
 hexadecimal form. Control will then  pass  to  another  REPEAT  ...  UNTIL  loop
 between lines 500 and 503.

 This   loop  is  very  similar  to  the  last  one  except  that  the  procedure
 'PUT_ASCII_BYTE' is used instead of 'PUT_HEX_BYTE'. The former will  output  the
 ASCII  code  of  any  BYTE  passed  to  it provided it falls in the range of $20
 (space) to $7D (}). Any BYTE outside of this range will be printed as  a  period
 (.). This prevents the control codes from $00 to $1F and the meta codes from $80
 through $FF from being transmitted to the terminal. The codes  $7E  (tilde  '~')
 and $7F (delete) are not transmitted as many terminals exhibit strange behaviour
 whenever they see one of these codes. The same 16  BYTEs  previously  output  in
 hexadecimal  form  will  now  be output with their ASCII equivalents if they are
 displayable or a period if they are not.

 Line 504 bumps the memory pointer '.ADDRESS' by 16 to adjust it for the 16 bytes
 just  printed.  The PASSES counter is bumped by one in line 505. Line 506 forces
 control to return to line 488 until 16  passes  have  been  completed.  When  16
 passes  have  been completed (i.e. 256 BYTES have been dumped) control will pass
 to line 507 which issues the prompt: 'MORE?'. Hitting any  key  other  than  'N'
 will  result  in  control  passing  to line 486 which will result in another 256
 BYTEs being dumped. If you hit 'N' the routine will terminate.


THE MAIN PROCEDURE

 Lines 519 through 552 enclose the body  of  the  main  procedure  that  will  be
 entered  via  a long branch just after the 'DPAGE' assignment. The first step is
 to save the global pointer. This is accomplished in line 521.  Then  the  system
 variables are initialized in line 523 through line 524. Then the console ACIA is
 initialized in line 526. The pseudo stack is initialized between lines  428  and
 535. The FIRQ and IRQ interrupts enabled in line 528.

 The  MAIN procedure is typically small (typical if you STRUCTURE your programs).
 The heart of the program is enclosed within the  REPEAT...FOREVER  loop  between
 lines 541 and 552. What is going on should be self explanatory at this stage.


9.13.00  LARGE PROGRAMS

 There comes a time in the  development  of  larger  programs  when  the  message
 "MEMORY  FULL"  or  "NOT ENOUGH ROOM FOR STACK" appears, or when the source file
 simply gets too large to handle conveniently.

 PL/9 provides a simple mechanism by which the size of the file being handled can
 be  kept  to  a  minimum,  this  being  the INCLUDE directive. If used sensibly,
 INCLUDE can free large amounts of memory and  at  the  same  time  cut  down  on
 wasteful listings.

 The  best way to use include is to identify a procedure or a group of procedures
 that have been fully debugged. These procedures may then be  written  out  to  a
 disk  file.  The  procedures are then deleted from the program and replaced with
 INCLUDE FILENAME at the appropriate point.

 A problem arises, however, in that the extracted procedures  may  use  the  same
 global  variables  as  the  main  program.  Without  a  GLOBAL declaration being
 provided in the INCLUDE file it will  not  compile  without  "UNDEFINED  SYMBOL"
 errors  appearing. If you put in the necessary GLOBAL declaration you will get a
 "ONLY ONE GLOBAL DECLARATION" error when you try to INCLUDE  the  file  in  your
 main program.

 You  may  of  course reason that since the procedures have already been debugged
 there's no need to worry whether the file they are in compiles separately.  This
 reasoning  is  fine  until  the  inevitable happens, much later, when you make a
 fundamental change in the logic of the program and realize that you have  to  go
 back  and  change one of the library modules. The chance of making even a simple
 change to a complex program and have the result work is small. It  is  therefore
 highly desirable to have each library module separately compilable for testing.

 The  easy  way  out  of  this  dilemma  is to adopt the following strategy. Your
 program has a number  of  global  variables  and  constants  that  are  used  by
 procedures  throughout the program. Take the GLOBAL declaration and the CONSTANT
 and  the  AT statements and consign them to a file, called say VARIABLE.LIB. Now
 every module should have the line "INCLUDE VARIABLE;" near its  start,  together
 with  INCLUDEs  for  any other modules that are needed for compilation. The main
 program can also have INCLUDEs for each of the modules thus created. PL/9 always
 ignores  an INCLUDE within an INCLUDEd file, so only one set of the declarations
 gets seen by the compiler.


9.14.00  PROGRAMMING HINTS

 This  just  about  completes  the technical side of the PL/9 Users Guide. If you
 have tried all, or at least most, of the examples in  this  section  you  should
 have  a  reasonable understanding of how structured control programs are written
 in PL/9.

 The Reference Manuals for the Editor, the Compiler, the Tracer and the  Language
 contain  more  information  on  the  points  outlined in this guide and on other
 points that have been left out.

 This section is concerned with hints  on  programming  style  and  some  of  the
 'freedom of expression' permitted by the syntax of PL/9.

 As  we  have  mentioned  previously  PL/9  is similar in many ways to Pascal but
 allows you to  get  considerably  closer  to  your  hardware  than  Pascal  will
 generally  permit.  The  similarities  are  sufficient for any book on Pascal to
 contain many useful hints on programming style.


9.14.01  SPACING

 Readers who may until now  have  only  used  BASIC  or  assembly  language  will
 probably already noticed the author's attempt in this manual to give a clean and
 consistant structure to each of the examples by indenting each line according to
 what  group  of  lines  it  belongs  with,  while  blank lines have been used to
 separate blocks of code that have specific functions.

 Inserting 'plenty of white stuff' in the form of extra spaces  and  blank  lines
 does  not  cause any extra code to be generated nor does it increase the size of
 the text file by any significant amount. What it does do is  very  significantly
 improve  the  READABILITY  of  the  program.  This  is  a  very,  very important
 consideration if the software must have errors corrected or additions at a later
 date, or is to be read by someone other than the author, OR is to be read by the
 author himself several months after the program was written.


9.14.02  INDENTING

 The method you choose to highlight program flow  and  nesting  is  very  much  a
 matter  of  personal  preference.  You  SHOULD adopt some form of indenting your
 source lines to indicate how the program is nesting the control  arguments.  For
 example  both  of  the  examples below generate EXACTLY the same code. Which one
 provides the clearest indication of what is going on AND what  conditions  are
 required to print the message: 'HELLO EVERYBODY'.


    IF A=B .AND C=D THEN BEGIN PRINT("HELLO");IF B=D THEN PRINT(" THERE"); ELSE
    PRINT(" EVERYBODY");END;ELSE PRINT("GOODBYE");

    IF A=B .AND C=D
       THEN BEGIN
            PRINT("HELLO");
            IF B=D
               THEN PRINT(" THERE");
               ELSE PRINT(" EVERYBODY");
            END;

       ELSE PRINT("GOODBYE");
9.14.02  INDENTING  (continued)

 The precise style you adopt and the way you break up constructions is very  much
 a  matter  of  personal  choice.  Most  people,  however, find that indenting by
 multiples of three spaces is a reasonable compromise. The  SETPL9  program  (see
 section  three)  allows  you define a key, usually TAB, that, when pressed, will
 cause three spaces to be generated.

 Please  note  that there is no overhead in using multiple spaces and blank lines
 as far as program storage is concerned; both PL/9 and FLEX internally  represent
 multiple  spaces as single characters (a technique known as space compression is
 used). A badly laid out program, on the other hand, can  be  very  difficult  to
 maintain, even by the author.


9.14.03  SYNTAX

 There  is  a  certain  amount  of  freedom  of expression permitted in PL/9 when
 constructing expressions that pass variables to function  procedures.  This  has
 been permitted primarily to help improve the readability of programs.


PASSING STRING POINTERS

 The following forms are permitted:

 PRINT("HELLO");
 PRINT "HELLO";
 PRINT="HELLO";

      or

 PRINT(.POINTER);
 PRINT .POINTER;
 PRINT=.POINTER;


PASSING VARIABLES

 The following forms are permitted:

 PUTCHAR(CHAR);
 PUTCHAR CHAR;
 PUTCHAR=CHAR;

     or

 PRINTINT(NUMBER,BASE);
 PRINTINT NUMBER,BASE;
 PRINTINT=NUMBER,BASE;


 You  are  also  permitted  to  place  extra  spaces  between  a variable and its
 subscript, e.g. VARIABLE(COUNT) and VARIABLE (COUNT) are both acceptable.

 And last, but by no means least, you can write your program in  upper  or  lower
 case or a combination of upper and lower case.
9.14.04  SAVING CODE

 There are several techniques you can use to  reduce  the  amount  of  code  PL/9
 generates  without  recourse to patching your program with GEN statements. These
 techniques, when used properly, can reduce the generated code by about 5%.

 This may not sound like much but when you are going to try to get a program into
 2K  or  4K  of ROM for a dedicated application this code saving can make all the
 difference in the world.


POSITION OF PROCEDURES

 A procedure used as a subroutine by another procedure should be located as close
 to it as possible in order to reduce the addressing range.


POSITION OF READ-ONLY VARIABLES

 The same rule applies here. ANY text  string  used  more  than  once  should  be
 declared  as  a  read-only  byte  as  close  to the procedure that uses it as is
 practical and pointers to the message passed to the appropriate procedure(s).


POSITION OF VARIABLES

 Frequently used global or local variables should be declared first in  order  to
 reduce  the  addressing  range.  Generally  speaking  accessing a local variable
 generates less code than accessing a global variable. This can be  an  asset  if
 the local variable is used several times in a procedure. If the variable is only
 used once the extra code required to offset and recover the  stack  pointer  can
 cancel  any  benefits that might be realized by using local variables in lieu of
 global variables.


TOGGLES AND FLAGS

 Whenever  possible the states of variables used as toggles and flags should have
 one of the states equal to zero. Ideally the two states should  complement  each
 other.  i.e.  a BYTE flag would be $00 or $FF (0 or -1) NOT 0 or 1. If the state
 of the variable is managed in this manner the 'NOT'  function  can  be  used  to
 toggle  the  variable  from one state to another. e.g. VAR=NOT(VAR). With one of
 the logical states being zero you can then use the next construction...


IMPLICIT NOT EQUAL TO ZERO

 This  construction can save a VERY considerable amount of code. If you construct
 IF...THEN, REPEAT...UNTIL,  and  WHILE...  arguments  to  look  for  a  <>  zero
 condition  rather  than  some  specific value you may omit the '<> 0' statement.
 PL/9 interprets this omission as an implicit not equal  to  zero  statement  and
 generates  far  less code. e.g. IF VARIABLE <> 0 THEN... will generate much more
 code than IF VARIABLE THEN...

 Until you get used to this construction it might be wise to  comment  any  lines
 using it with /* IMPLICIT <> 0 */ as a reminder of what you are doing.
9.14.05  WHEN THINGS DON'T GO ACCORDING TO PLAN

 There  will  come  a time, yes it happens to the best of us, when the program we
 have written refuses to work the way we have designed it to but compiles without
 any errors being reported.

 In  these  circumstances there are several options available to you to assist in
 debugging the construction of your program.

 The PL/9 tracer should be your first recourse as it has many facilities to  help
 locate the area in the program where things are going wrong.

 You  can  also  include  the  IOSUBS,  BITIO and/or HEXIO libraries to assist in
 printing messages/data out to the system console. These same routines  may  also
 be used to get sample test data for your program from the system console.

 The  routines  that  will  be  of  most  use  in  this respect would be PRINT to
 facilitate printing messages when a  particular  branch  is  taken,  BITSIN  and
 BITSOUT  for  bit  oriented  I/O,  and  the  entire HEXIO library if you wish to
 input/output data in HEX numbers.


 The  four  most  common problems that people have experienced with PL/9 programs
 are:

 (1) Failing to assign a large enough area for a buffer  This  can  produce  VERY
     strange effects if the buffer grows into other variables. The problem can be
     absolutely catastrophic if the buffer is declared as a local variable  in  a
     subroutine  and  the  data  written  to  the  buffer extends into the return
     address on the stack!

 (2) Failing to size a vector table properly  or  accessing  an  element  of  the
     vector table that does not exist. For example if you declared the following:
     'GLOBAL BYTE VECTOR(3),COUNT;' and then made a statement  like  VECTOR(3)=99
     this  would overwrite the data in the variable COUNT. You must remember that
     PL/9 subscripts the elements of a vector starting from zero so  the  highest
     number  a  subscript  may  have  is  ONE  LESS  than  the declared number of
     elements. In this instance  the  cause  of  the  problem  should  be  fairly
     obvious.  This  type of error can be difficult to trace down when the vector
     table is being accessed by a subscript,  e.g.  VECTOR(COUNT),  and  for  one
     reason  or  another  the  subscript,  in  this  case COUNT, is allowed to be
     greater than the range of the vector.

 (3) Failing to understand the signed nature of PL/9 arithmetic and  evaluations.
     This  area  generally only causes people problems when they are working with
     I/O devices, PIA's for example, and wish to evaluate  the  port  as  a  'bit
     pattern'  rather  than  as a signed number. The problems only start to occur
     when a BYTE is 'greater' than $7F or an INTEGER is 'greater' than $7FFF.  To
     PL/9  these numbers are NEGATIVE. A special mechanism (the exclamation mark)
     and two functions (BYTE and INTEGER) have been provided to simplify  working
     with  unsigned  BYTEs  and INTEGERs, they do, however, take a bit of getting
     used to, particulary if you are an assembly language programmer.

 (4) Incorrectly sized pointers can also cause some very strange problems. If you
     define  a  pointer  as 'REAL .RPTR' and then use it on INTEGER or BYTE sized
     data the problems caused will be  very  obscure  and  equally  difficult  to
     locate!  The  PL/9  tracer is good at locating faults of this nature only if
     they do not cause crashes.


                        THIS PAGE INTENTIONALLY LEFT BLANK
