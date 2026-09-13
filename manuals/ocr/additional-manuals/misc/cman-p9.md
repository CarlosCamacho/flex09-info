# CMAN-P9

> Source: `manuals/misc/DOC - FLEX Software Archive - Manual and Documentation Archive - Includes CMAN-IDX, CMAN-P1, CMAN-P10.zip!DOC.DSK!CMAN-P9.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
#C-BUG, A ROM MONITOR IN 'C' R:1.2             James McCosh 'C' COMPILER FOR FLEX


.DHE
#James McCosh 'C' COMPILER FOR FLEX             C-BUG, A ROM MONITOR IN 'C' R:1.2


.DFO
.
                                     - %%%% -


.DFE
.
                                     - %%%% -


C-BUG

 As an example of the use of C for the production of stand-alone code  which  can
 be  placed  into  ROM,  the  following  is a description and listing of a simple
 system  monitor  which  could  form  the  basis  of  many  6809  projects.  This
 application  was  chosen because it illustrates many of the useful features of C
 but is not quite as straight forward as other C programs. Here is  a  chance  to
 see how the McCosh C complier performs in REAL jobs being targeted to ROM.


SPECIFICATION

 The specification of CBUG is as follows:

 1. The target machine will have a 2K of ROM for CBUG at $F800 - $FFFF.

 2. The target machine will have a minimum of 2K of RAM for CBUG at $0000 - $07FF.

 3. CBUG will contain the 6809 interrupt vectors from $FFF0.

 4. Interrupt  processing  will  be  fully  implemented.  User-changeable  'soft'
    interrupt vectors will reside at the low end of the RAM reserved for CBUG and
    will be initialised to point to a 'panic' reporting routine within CBUG.

 5. It  is  not  intended  that  CBUG  will be called by user programs for system
    services such as terminal access.

 6. The only function provided with  this  version  of  CBUG  is  a  memory  dump
    facility  (what  do  you  expect  for a 'freebie'). However, the structure to
    expand the monitor along with most of the  the  necessary  low-level  support
    routines are present.

7.  Console communication will be via an MC6850 ACIA addressed at $E004. The ACIA
    will be initialised for 8 data, 2 stop, no parity and X16 clock. The location
    of the ACIA (ACIA) and its initialisation constant (CONFIG) may be altered by
    modifying the source of 'TERM.C'.


DISCUSSION

 The vast majority of the code for CBUG can be written in C, which makes it quick
 to write and easy to maintain. The penalty in code length is not great as can be
 seen. The example supplied is fully operational using just  about  half  of  the
 available  2K  of  ROM. This leaves approximately 1K for the reader to add extra
 routines of his own.

 It is necessary, however, to have some code in assembler.  The  'restart'  code,
 entered  on  a hardware reset, is very short and consists of a loop which clears
 the RAM, calls 'main' and repeats. Interrupt processing, as specified, must have
 some  low-level  register  twiddling  code and the vectors themselves have to be
 placed precisely at $FFF0 through $FFFF.

 It is this last requirement which causes the only  major  problem.  The  use  of
 relocatable modules and a link-loader gives great flexibility but it carries one
 drawback ... IT IS NOT POSSIBLE TO SPECIFY THE ABSOLUTE ADDRESS OF  ANYTHING  AT
 COMPILE  TIME because this would defeat the whole object of relocatability. Thus
 'org' is neither appropriate nor possible. Additionally,  absolute  expressions,
 which can be completely calculated by the assembler, cannot involve values found
 in 'other' modules.
DISCUSSION  (continued)

 The  solution  is  to  make the whole thing into one module. As you can see, the
 main code in 'CBUG.C' makes use of the C '#include' facility and  the  assembler
 'lib' directive to ensure that the resultant assembly code is all in one file.

 This  allows  allows  an  expression  to  be  formed, which is 'absolute' to the
 assembler, for the size of the gap between the top of the code plus the data and
 the  interrupt  vectors. This is the expression which is the operand of an 'rmb'
 directive in 'INTRUPT.A'. Now if the loader is instructed  to  place  the  whole
 block of code at $F800, the vectors will slot in directly where required.

 For testing purposes, however, it would be nice to be able to run CBUG as a FLEX
 command. All that is required in this  instance  is  to  link-load  it  at  some
 address  below  FLEX.  Of  course  the interrupt processing system will not work
 here, but at least you can use the memory dump facility to check that everything
 is in the correct place and, perhaps, test any extensions you may have added.

 The  code has been written so that it is completely independent of the functions
 in the Standard Library, including arithmetic. The only special provision  which
 had  to  be  made  is  connected  with shifting. The compiler will generate code
 in-line to shift the 'D' register left or right if the number of bits  of  shift
 is four or less. Over four it generates a call to a library routine. In a couple
 of places it is necessary to shift by eight bits, but it turns  out  that  these
 are really to get a value in the 'A' register to be a 'C' integer or vice versa.
 In these cases the code has been changed to a  call  to  an  assembler  routine,
 'swapb', which swaps the 'A' and 'B' registers.


IMPLEMENTATION

 Before you attempt to compile CBUG ensure that you have the following  files  on
 your 'WORK' drive:

    CBUG    .C   ... the main code
    START   .A   ... startup code
    TERM    .C   ... terminal driver code
    INTRUPT .A   ... interrupt vectors and processing code


 Compile to a relocatable module thus:

    +++CC,+ORS,CBUG.C


 The flags just set will affect compilation as follows:

    +O   call the assembly code optimiser

    +R   stop when the relocatable module has been compiled and leave the  result
         in 'CBUG.R'.

    +S   do not add in stack checking code at the entry to C functions.


IMPLEMENTATION  (continued)

 Finally, link-load the relocatable module thus:

    +++CLOAD,CBUG.R,+T=<ROM ADDRESS> +B=<RAM ADDRESS>

 where <ROM ADDRESS> and <RAM ADDRESS> are expressed in hexadecimal.


 For  example to satisfy the specifications for RAM at $0000 and ROM at $F000 the
 command to the loader is:

    +++CLOAD,CBUG.R,+T=F800 +B=0000


 The result will be a FLEX format binary executable file  in  'output.cmd'  which
 will have the following memory map:


 $FFFF   +--------------------------------------+
   |     |       'hard' interrupt vectors       |
 $FFF0   +--------------------------------------+
         |                                      |
         |                                      |
         |                'FREE'                |
         |                                      |
         |                                      |
         |  - - - - - - - - - - - - - - - - -   |
         |                                      |
         |                                      |
         |                                      |
         |              CBUG code               |
         |                                      |
         |                                      |
         |                                      |
 $F800   +--------------------------------------+


 $07FF   +--------------------------------------+
         |                STACK                 |
         |                  |                   |
         |                  |                   |
         |                  v                   |
         |                                      |
         |                                      |
         |                                      |
         |                                      |
         |                                      |
         |                                      |
         |                                      |
         |                                      |
         |                                      |
         +--------------------------------------+
         |       'soft' interrupt vectors       |
 $0000   +--------------------------------------+


 It is hoped that  this  and  the  following  sections  will  take  some  of  the
 'mystique' out of producing ROMable 'stand-alone' modules from C programs.

CBUG.C

 /* cbug.c
  *
  * J. McCosh
  * 21 March 1985
  */

 /* This is the main program file of a skeleton
  * for a simple machine monitor.
  */

 #asm
 * tell the assembler how big we are
 ROMSIZE equ     $800

 * pull in the start code
         lib     start.a
 #endasm

 /* Definitions of the 'soft' vector locations.
  * THESE MUST BE THE FIRST GLOBAL VARIABLE DEFINITIONS to ensure
  * that they reside at the low end of the RAM.
  */
 int (*sw3vec)(),(*sw2vec)(),(*frqvec)(),
         (*irqvec)(),(*swivec)(),(*nmivec)();

 /* And the declarations of functions they point to by default. */
 extern int sw3v(),sw2v(),frqv(),irqv(),swiv(),nmiv();

 char version[] = "\l\nCBUG Version 0.1\n\l";

 main()
 {
         /* first set up soft vectors */
         sw3vec = sw3v;
         sw2vec = sw2v;
         frqvec = frqv;
         irqvec = irqv;
         swivec = swiv;
         nmivec = nmiv;

         terminit();
         putstr(version);

         for(;;) {
                 putstr("\n\l-> ");

                 switch(getch()) {
                         case 'V':
                                 putstr(version);
                         case '\n':
                                 break;
                         case 'D':
                                 dump();
                                 break;
                         case 'E': /* exit */
                                 termreset();
                                 return;
                         /* etc.. */

CBUG.C  (continued)

                         default:
                                 putstr(" What?");
                                 break;
                 }
         }
 }

 dump()  /* dump memory contents */

 {
         register char *start;
         char *end;
         register int count;

         /* get addresses */
         putch(' ');
         start = getadd();
         putch('-');
         end = getadd();

         /* sensible range? */
         if(start >= end) {
                 putstr(" Bad range\7");
                 return;
         }

         /* main loop */
         for(count = 0;;) {
                 if(count == 0) {
                         /* new line and current address */
                         crlf();
                         putadd(start);
                 }

                 putch(' ');
                 hexbyte(*start++);

                 /* finished if completed range or user hits a key */
                 if(start > end || checkterm())
                         break;

                 /* reset counter at end of line */
                 if(++count == 16)
                         count = 0;
         }
         crlf();
 }

 putadd(address)
 char *address;
 {
         hexbyte(swapb(address));
         hexbyte(address);
 }


CBUG.C  (continued)

 hexbyte(n)
 {
         hexnibble(n >> 4);
         hexnibble(n);
 }

 hexnibble(n)
 {
         putch((n &= 0xf) > 9 ? (n + 'A' - 10) : (n + '0'));
 }

 crlf()
 {
         putstr("\n\l");
 }

 putstr(s)
 register char *s;
 {
         while(*s)
                 putch(*s++);

 }

 getadd()
 {
         unsigned char buf[4];
         register unsigned char *p = buf;
         char *add = 0;
         char c;
         register int i;

         for(i = 0;i < 4;) {
                 c = getch();

                 if(c >= '0' && c <= '9')
                         *p++ = c - '0';
                 else if(c >= 'A' && c <= 'F')
                         *p++ = c - ('A' - 10);
                 else if(c == '\10') {
                         /* BACKSPACE typed */
                         if(i) {
                                 p--;
                                 i--;
                         }
                         else
                                 putch(' ');

                         continue;
                 }
                 else {
                         /* nonsense */
                         putstr("\10\7"); /* BACKSPACE & BELL */
                         continue;
                 }

                 i++;
         }

CBUG.C  (continued)

         /* now add it up */
         for(i = 0,p = buf;i++ < 4;)
                 add = ((unsigned)add << 4) + *p++;

         return add;
 }

 doint(string)
 char *string;
 {
         /* this is the routine called after an interrupt
          * when the soft vectors have not been disturbed
          * since entering 'main'.
          */
         putstr("\l\nPANIC: ");
         putstr(string);
         crlf();

         restart();
         /* NO RETURN */
 }

 /* Pull in the terminal driver code */
 #include "term.c"

 #asm
 * byte swap - to avoid calling library
 * arithmetic routines
 swapb
         lda     3,s
         ldb     2,s
         rts

 * pull in the interrupt processing & vectors
         lib     intrupt.a
 #endasm


TERM.C

 /* term.c    J.McCosh, 21 March 1985 */

 /* This is a simple device driver interfacing to the C monitor
  * for a terminal attached to an MC6850 ACIA type device. */

 struct acia {
         unsigned char control,data;
 };

 #define ACIA    0xe004 /* modify this to change the address of the ACIA */

 #define RESET   0x13
 #define CONFIG  0x11   /* modify this to change the initialisation constant */
 #define CHARIN  1
 #define CHAROUT 2

 terminit()
 {
         ACIA->control = RESET;
         ACIA->control = CONFIG;
 }

 getch()
 {
         char c;

         while(!(c = checkterm()))
                 ;

         if(c >= 'a' && c <= 'z')
                 c &= 0x5f;

         putch(c);
         return c;
 }

 putch(c)
 char c;
 {
         while((ACIA->control & CHAROUT) == 0)
                 ;

         ACIA->data = c;
 }

 checkterm()
 {
         if((ACIA->control & CHARIN) == 0)
                 return 0;
         else
                 return ACIA->data & 0x7f;
 }

 termreset()
 {
 }


START.A

 * start.a
 *
 * J.McCosh
 * 21 March 1985
 *
 * Start - only entered from a hardware reset
 * or after an interrupt is processed by 'doint'.

 * it is assumed that the monitor ram available is 2k

 * define the low end of ram (follows '+B' directive)
         bss
 bbss    equ     *

         text
 restart lds     #bbss+2047

 * clear the ram
         ldx     #bbss
 clloop  clr     ,x+
         cmpx    #bbss+2048
         bne     clloop

         jsr     main
         bra     restart

 * define the start of the data portion
 * (always after the whole of 'text')
         data
 bdata   equ     *


INTRUPT.A

 * intrupt.a
 *
 * J.McCosh
 * 21 March 1985
 *
 * 6809 interrupt processing

         text

 * Transfer to the soft vector address
 *
 * Set up so that interrupt processing
 * can be done in routines which return
 * with 'rts'. This suits C better.

 swi3    jsr     [sw3vec]
         rti
 swi2    jsr     [sw2vec]
         rti
 firq    jsr     [frqvec]
         rti
 irq     jsr     [irqvec]
         rti
 swi     jsr     [swivec]
         rti
 nmi     jsr     [nmivec]
         rti

 * strings for the argument to 'doint'
         data
 SWI3    fcc     "SWI3",0
 SWI2    fcc     "SWI2",0
 FIRQ    fcc     "FIRQ",0
 IRQ     fcc     "IRQ",0
 SWI     fcc     "SWI",0
 NMI     fcc     "NMI",0

 * these are the locations set up
 * in the soft vectors by 'restart'
         text
 * firq - fiddle stack to look like all the rest
 frqv    leas    -1,s            get on even offset
         pshs    x               in final resting place
         pshs    cc,d,dp
 * now stack pointer points at usual stack frame
         ldx     7,s             get return address
         sty     6,s             can now slot in Y reg
         lda     9,s             get old cc
         stu     8,s             can now store U reg
         ora     #$80            set entire bit
         sta     ,s              store modified cc
         pshs    x               set return address
         ldd     #FIRQ
 ints
         pshs    d
         jsr     doint           C code in the main monitor


INTRUPT.A  (continued)

 * as it is currently written, doint does not return
 * but it may be changed by the reader.  The following
 * will keep things tidy.
         leas    2,s
         rts

 irqv    ldd     #IRQ
         bra     ints

 swiv    ldd     #SWI
         bra     ints

 sw2v    ldd     #SWI2
         bra     ints

 sw3v    ldd     #SWI3
         bra     ints

 nmiv    ldd     #NMI
         bra     ints

 etext   equ     *

         data
 * 'hard' vectors
 vecsize equ     16

 * start at $xff0
         rmb     (ROMSIZE-vecsize-(etext-restart)-(*-bdata))

         fdb     0               reserved
         fdb     swi3
         fdb     swi2
         fdb     firq
         fdb     irq
         fdb     swi
         fdb     nmi
         fdb     restart         'hard-wired' to restart


                          THIS PAGE IS INTENTIONALLY BLANK
