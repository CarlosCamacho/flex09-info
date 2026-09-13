# CMAN-P1

> Source: `manuals/misc/DOC - FLEX Software Archive - Manual and Documentation Archive - Includes CMAN-IDX, CMAN-P1, CMAN-P10.zip!DOC.DSK!CMAN-P1.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
#James McCosh 'C' COMPILER for FLEX          LANGUAGE IMPLEMENTATION GUIDE  R:1.2


.DHE
#LANGUAGE IMPLEMENTATION GUIDE  R:1.2          James McCosh 'C' COMPILER for FLEX


.DFO
.
                                     - %%%% -


.DFE
.
                                     - %%%% -


                   INTRODUCTION TO THE J.McCOSH C COMPILER


                        C COMPILER AND LIBRARY REVISION

 With the release of Version 26 of the J. McCosh  C  Compiler  comes  a  thorough
 revision of the Standard Library. Almost all the functions available have either
 been  completely re-written or the UniFLEX versions have been installed. Quite a
 few new functions have been added.

 The pre-processor was completely re-written with the release of Version  27  and
 the  facility  for  re-directing standard input and output from or to disc files
 was also added.

 The  previous  version  was  produced  with  the main aim of providing a minimum
 useful set of functions at the least cost in program size. The  current  version
 is  considerably  more  flexible  and  sophisticated  at  a modest extra cost in
 program size.

 The principal changes are:

 1. Random file handling, including file positioning.

 2. Devices such as printers may be accessed through the  normal  I/O  processing
    functions.

 3. The 'high-level' I/O functions are buffered to improve efficiency.

 4. Terminal I/O mode control.

 It  is  VERY  IMPORTANT  for  users  of  previous versions to note the following
 changes as they might affect their existing programs.


ADDITIONS

 abs             absolute value of an integer

 assert          debugging aid

 checkterm       check whether a character has been typed at the terminal.

 devopen         open a user-defined device for read and write.

 errno.h         error definition file

 fdopen          return a file POINTER for an existing file DESCRIPTOR.

 fflush          write out i/o buffer contents.

 fms             direct access to the FMS.

 fseek,lseek     seek to a position in a random file.

 perror          print error string on terminal

 setwd etc.      set or get current system drive or working drive

 stty            set up terminal access modes (e.g. no echo)

 setbuf          'manual' i/o buffer setting.
DELETIONS

 setbin          binary  mode  is  now  indicated  by  an  argument  to 'open' or
                 'creat'.


CHANGES

 By popular demand, the functions 'toupper()' and 'tolower()'  check  that  their
 arguments  are  suitable  before  doing the mapping. They are now implemented as
 library routines rather than macros.

 'Creat()' now has a meaningful mode which indicates the type  of  file  desired.
 The  types of file are TEXT, BINARY and RANDOM. The default extensions for these
 types are, respectively, '.TXT', '.BIN' and '.DAT'.

 The mode for 'open()' can also indicate whether the file is  to  be  treated  as
 binary.  No  such  indication  is necessary or allowed for random files, as this
 information is kept with the file's directory entry.

 All I/O through the high-level functions such as 'printf()', 'putc()',  'getc()'
 are  now buffered. This considerably cuts down the amount of processing required
 per character and improves efficiency. It also means that line  editing  can  be
 properly  implemented  for  input  from  the terminal keyboard. However, any I/O
 stream may be made un-buffered before any character has been read or written  on
 the  stream. In any case, the stream for 'stderr', which is always routed to the
 terminal, is un-buffered. The disadvantage of buffering is that what appears  on
 the  screen  or  in  a file may be out of step with the program. However, at any
 time the program may  call  'fflush()'  to  force  the  writing  of  the  buffer
 contents. This is automatically done when a file is closed and at the end of the
 program. For additional convenience,  'printf()'  (but  not  'fprintf()')  calls
 'fflush()' just before returning to its caller.

 The  startup  module,  'CSTART.R',  has  been  carefully reviewed. Its method of
 operation has been changed slightly to  give  a  more  consistent  and  reliable
 interface  to  preceding and following programs. Also, it now contains the stack
 and memory management code which was previously in a separate library module. It
 is  recommended  that  previous  users  read  the  section  on STAND-ALONE CODE,
 elsewhere in this manual, where there is a listing of this module.

 The pre-defined integer, 'errno', can be  interrogated  after  any  error  in  a
 library  routine.  It  will  contain  a  number indicationg the type of error. A
 header file, 'errno.h',  is  provided  which  lists  the  definitions  of  these
 numbers,  including  a few which extend the FLEX error number list. The argument
 of a call to 'exit()' or '_exit()' is placed in the FLEX location ERRTYP ($CC20)
 so that a following, or waiting, program can know about it. Typically, a program
 might have this statement:

    exit(errno);

 A program returning from 'main()' is equivalent to a call:

    exit(0);

 Non-recoverable  situations  such  as   floating   point   overflow   cause   an
 'exit(errno)'  call.  Among  the non-recoverable conditions are a stack overflow
 and RETURN being pressed after a screen output pause.

 Since  there  are  several  implementations  of FLEX which are not careful about
 preserving register values over calls the DP, Y and U registers are saved on the
 stack before ALL calls to FLEX and restored on return.
COMPILER CHANGES

 Some improvements and  enhancements  have  been  incorporated  in  the  compiler
 itself:

 1. The  new  type 'unsigned char' has been introduced to give an 8 bit data type
    with values from 0 to 255.

 2. The compiler now looks for its own modules and include files on  the  current
    system  drive. If they are not all on the same drive, the system drive can be
    set to ALL by 'ASN.CMD' to ensure that they are found.  However,  because  of
    the  difficulty of passing the necessary information to 'CLOAD', the Standard
    Library and 'CSTART.R' must still be located on the same drive as 'CC.CMD'.

 3. The pre-processor now  recognises  two  identifiers  with  special  meanings.
    '_FILE'  expands to the name of the file in which it appears. '_LINE' expands
    to the line number within this file at  which  it  appears.  These  are  most
    useful for implementing debugging aids such as 'assert()'.


PRE-PROCESSOR CHANGES

 The original pre-processor was one of the first modules to  be  written  in  the
 early  days of the development of the compiler. It had some annoying limitations
 due to  poor  algorithms  leading  to  excessive  complexity  which  meant  that
 modifying it was perilous. It was better to let sleeping dogs lie!

 The  new pre-processor, still called CPREP.CMD, now allows macro definitions and
 strings to be spread over more than one line as described in K & R. Secondly, it
 does  its  own  error  processing rather than passing the error to CPASS1.CMD to
 process, which saves some time. Thirdly, it allows the user to specify on the CC
 command line which drive to search for '#include' files; the default, as before,
 is the system drive. Fourthly, nested comments are processed  correctly  as  one
 comment.  This will allow the 'commenting out' of sections of code which already
 contain comments. Finally, it can detect recursive macro definitions and  report
 them rather than just recursing itself until running out of stack space!

 A  minor  by-product  of  the re-write is that the intermediate file produced by
 CPREP and passed to CPASS1 for compiling is shorter,  in  general,  which  saves
 some  processing  time.  However,  do not expect a dramatic improvement. The new
 program is, in fact, marginally slower than the old. I  make  no  apologies  for
 this  as  the  benefits of a much more understandable and therefore maintainable
 program are in everyone's interests.


I/O REDIRECTION

 While  the FLEX utility, O.CMD, is adequate, I.CMD has the annoying habit of not
 letting its following command know that it has come to the end of the file. Many
 requests have been received for UNIX shell type I/O redirection and this has now
 been implemented. However, since it uses a lot of standard library  code,  which
 may  or may not be otherwise used, the user must specify that I/O redirection is
 to be included, if required, by having in the program code a call to  the  dummy
 function,  'rio_init()'.  Incidentally,  CC.CMD itself does not incorporate this
 type of redirection of output  so  O.CMD  will  still  have  to  be  used  where
 required; there simply is not the room for it in the Utility Command Space where
 CC.CMD resides.

I/O REDIRECTION  (continued)

 Despite  all  this,  it  was a pity that it was difficult to use I.CMD sensibly.
 Before release 26, it was possible to simulate end-of-file from the terminal  by
 pressing  CONTROL  D,  but  this  was  inadvertantly omitted from the release 26
 revision. It has now been re-instated. The I/O routines now also detect the  use
 of  I.CMD  at  the  start  of  the  program  and the reversion to input from the
 terminal once the file has been exhausted. The latter is important so that input
 line  editing  is  suppressed  while  processing  the  file  but  comes  back in
 afterwards.

 The effect of all these changes is that truly universal filter programs  can  be
 written  which  can  ignore  the  source  and  destination of standard input and
 output. If the return value of 'read(0,buf,count)' is 0, or  of  'getchar()'  is
 EOF,  the  standard input file has been closed, either because it was at the end
 of a true file or the user has typed CONTROL D.

 Having  got  this  far,  I  am afraid that I cannot promise to add the finishing
 touch of simulating UNIX pipes!


USE OF 'P.CMD' ETC.

 The  I/O  interface  goes  to  considerable lengths to ensure that output to the
 terminal and elsewhere via standard output and standard error output conform  to
 the expected, including honouring various conditions such as PAUSE and so on. It
 is not possible, for various reasons, to let FLEX take all the decisions. One of
 these  reasons  is  that standad error output (file descriptor 2) must always be
 available for writing and is always the  terminal,  but  standard  output  (file
 descriptor  0)  could  be  a  printer,  a  file, another device or the terminal.
 Consequently, it cannot always assume that output to standard  output  is  to  a
 terminal.

 There  is  no  problem  if  file  descriptor  0  has  been explicitly closed and
 re-opened as a file or a device; the I/O interface can sort out what  to  do  in
 these  cases. However, with O.CMD and P.CMD it has not been explicitly told what
 standard output is. Both alter the address  jumped  to  at  OUTCH  so  the  test
 applied at the first write to standard output is to see if OUTCH and OUTCH2 jump
 to  the  same address. If they do then it is assumed that the program is writing
 to a terminal, if not then characters are passed as found to  the  output,  with
 the Special I/O Flag and the Pause Flag set, except that NL ($0A) is appended to
 each CR ($0D). O.CMD ignores NL after CR so there is no problem with that. P.CMD
 needs an NL after CR and gets it.

 Similar considerations apply to the use of I.CMD. The test  applied  is  whether
 INCH  jumps  to  the same address as INCH2. In this case, however, the same test
 must be applied after the input of every character to detect when I.CMD has come
 to  the end of its file. When it has, input is assumed to come from the terminal
 from then on.

 The above is explained in some detail so  that  users  of  other,  perhaps  user
 written, redirection programs can make use of or avoid the automatic features of
 the I/O interface.


THE C LANGUAGE & IMPLEMENTATION

 The  package  of  programs  comprising  the J. McCOSH C COMPILER is an extremely
 powerful system  for  generating  efficient  programs  for  a  wide  variety  of
 applications.

 The  C  language  is  growing  in  popularity for use on microcomputers as it is
 highly versatile. Programs written in C are more portable between machines  than
 in  almost  any  other language. This implementation of C is very code efficient
 which not only results in smaller object size but  also  produces  FAST  program
 execution times.

 Users  of  C  under  FLEX will find that it can replace programming in any other
 language. First, the modern structuring and availability of  procedures  enables
 more  readable  and  maintainable  programs  to  be written than in, say, BASIC.
 Second, the efficiency of the native 6809 machine code output is far in  advance
 of  most  other  high-level  language  compilers  available.  Third, C places no
 restrictions on the programmer as to what part of the machine or its peripherals
 may be accesed so that assembly language does not have to be used.

 The 'standard' for C is universally accepted to be the book 'The  C  Programming
 Language'  written  by  the  designers, Brian Kernighan and Dennis Ritchie. This
 book is referred to throughout this manual as 'K & R'. There  is  no  temptation
 for  implementers  of  C  to  'extend'  the  language with special key words and
 built-in functions because it is so easy for the user to create his own  special
 purpose  functions  which  are themselves written in C. The net result is that C
 programs can  'migrate'  with  relative  ease  between  machines  and  operating
 systems. The same cannot be said of almost any other "standardised" language. If
 a program is written in Basic or assembly code it is virtually a prisoner of the
 machine  on  which  it  is written and, to a lesser extent, the situation is the
 same for Fortran, Cobol and Pascal.

 The J. McCOSH C COMPILER is a faithful implementation of the specification of C,
 but  there are some minor differences listed in the following pages which may be
 put  right in future releases. It should be reassuring, however, that many major
 programs have been successfully ported to and  from  UNIX  and  other  operating
 systems with very little trouble using this compiler.

 The J. McCOSH C COMPILER is available on  three  6809  operating  systems:  FLEX
 UniFLEX and OS-9 and will shortly be available as a cross-compiler for the 68000
 chip.

 The  FLEX  version  of this product is marketed by WINDRUSH MICROSYSTEMS LIMITED
 under an exclusive worldwide license from MICRO PROCESSOR DEVELOPMENTS LIMITED.

 The  UNIFLEX  version  of  this  product  is   available   from   MICROPROCESSOR
 DEVELOPMENTS LIMITED.

 The   OS-9   version  of  this  product  is  available  from  MICROWARE  SYSTEMS
 CORPORATION.


 Owing  to  differences  in  the  operating systems and memory capacity there are
 slight differences between the above products. It is safe to say, however,  that
 virtually  any  program  written  under  the  FLEX  version of this product will
 compile and run unaltered on the UNIFLEX and OS-9 versions of this product.


DEVIATIONS FROM THE KERNIGHAN AND RITCHIE SPECIFICATION

 The source language of CC is a proper  subset  of  C  as  described  in  'The  C
 Programming Language' by Kernighan and Ritchie (hereafter referred to as K & R).

 Exceptions are as follows :


 a. Bit fields are not supported.

 b. Constant expressions for initializers may only include  arithmetic  operators
    if all the operands are of type 'int', 'unsigned' or 'char'.

 c. The  older  forms of assignment operators, '=+' or '=*', which are recognized
    by some C compilers are not supported by CC. You must use the newer forms  of
    '+=','*=' etc.

 d. "#ifdef  (or  #ifndef)  ...[#else...] #endif" is supported but "#if <constant
    expression>" isn't.

 e. The  escape  sequence  for new-line '\n' does not mean line-feed (hex 0A), it
    means carriage-return (hex 0D). This is because FLEX uses the latter for  all
    end-of-line  indications.  All programs which use '\n' for end-of-line (which
    includes all programs in K & R) will work unaltered as  intended.  See  below
    for a way to express the line-feed character.


LANGUAGE EXTENSIONS

 The following paragraphs outline the extensions to the 'C' language available in
 this  compiler and are provided for those users who are more concerned with code
 efficiency of the native 6809 code than with portability. If you desire to  port
 your  'C' programs to other environments these extensions to the language should
 NOT be used.


 a. The 6809 microprocessor  instructions  for  accessing  memory  via  an  index
    register  or the stack pointer can be relatively short and fast and these are
    used in C programs to access 'auto' (function local)  variables  or  function
    arguments.  The  instructions for accessing global variables are normally not
    so nice and must be three bytes long and correspondingly slow.  However,  the
    6809  has  a nice trick which helps considerably. Memory anywhere in a single
    page (256 byte block) may be accessed with fast, two byte instructions.  This
    is  called the 'direct page' and at any time its location is specified by the
    contents of the 'direct page register' within the processor. The  link-loader
    sorts out where this should be and it need not concern the programmer. He/she
    only needs to specify for the compiler  which  variables  should  be  in  the
    direct page to give the maximum benefit in code size and execution speed.

    To  this end, a new storage class specifier is recognised by the compiler. In
    the manner of K & R page 192, the sc-specifier list is extended as follows

    sc-specifier:

    auto
    static
    extern
    register
    typedef
    direct

    The new key word may be used in place of one of the other  sc-specifiers  and
    its  effect  is that the variable will be placed in the direct page. 'Direct'
    may only be used to define global variables; i.e.  it  may  not  be  used  to
    declare  function arguments or local variables. 'Direct' variables may not be
    initialised but will, in common  with  all  other  variables  not  explicitly
    initialised,  have  the  value zero at the start of program execution. If all
    the direct variables occupy less than  the  full  256  bytes,  the  remaining
    global  variables  will  occupy the balance and memory above if necessary. If
    too many bytes of storage are requested in the direct page in  this  way  the
    link-loader  will complain and the programmer will have to remove one or more
    'direct' specifiers before re-compiling. A variable may be  defined  'direct'
    in one file and declared 'extern' in another. The only adverse effect is that
    the machine instructions generated for the  second  file  will  be  the  less
    efficient three-byte ones.

                                   W A R N I N G

            It should be borne in mind that 'direct' is specific to this
            compiler and it may not be possible to port programs written
            using it to other environments without modification.


 b. A  line  beginning  "#asm" switches the compiler into a mode which passes all
    subsequent lines not begining "#endasm" unchanged to the output.  This  is  a
    useful  facility for inserting lines of assembly code. The "#endasm" switches
    the mode back to normal.

LANGUAGE EXTENSIONS  (continued)

 c. The  escape  sequences for non-printing characters in character constants and
    strings (see K & R page 181) are extended as follows:

    line-feed LF    \l

    this  is  to  distinguish LF (hex 0A) from \n which on FLEX is the same as \r
    (hex 0D).


 d. bit patterns in the following forms are supported:

       \***   octal constant
       \d**   decimal constant
       \x**   hexadecimal constant

    E.G. all of the following have the value of 255 (decimal):

       \377     \d255     \xff


 e. A  new  type is introduced. A variable declared as 'unsigned char' is similar
    to one declared 'char' except that its value is in the  range  of  0  to  255
    instead of -128 to +127. THIS TYPE IS NOT GUARANTEED TO BE PORTABLE.


OBJECT SIZES

 Each  variable  type requires a specific amount of memory for storage. The sizes
 of the basic types in bytes are as follows:

    char           1 byte                  unsigned char  1 byte
    int            2 bytes                 unsigned       2 bytes
    long           4 bytes                 float          4 bytes
    double         8 bytes

 This compiler follows the PDP 11 implementation in that chars are  converted  to
 ints  by sign extension, 'short' or 'short int' means int, 'long int' means long
 and 'long float' means double.

 The format of a double value is as follows:

        +-+---------------------------------------+----------+
        | |          seven byte                   |  1 byte  |   high
        | |           mantissa                    | exponent |   addresses
        +-+---------------------------------------+----------+
         ^
     sign bit

 The form of the mantissa is sign and magnitude with an implied '1'  bit  at  the
 sign  bit  position.  The  exponent is biased by 128. The format of a 'float' is
 identical except that the mantissa is only three  bytes  long.  Conversion  from
 'double'  to  'float'  is  carried  out  by  truncating  the  least  significant
 (right-most) four bytes of the mantissa. The reverse conversion  is  by  padding
 the least significant four mantissa bytes with zeros.

 The formats of 'int' and 'double' variables are identical to those used by TSC's
 XBASIC.

REGISTER VARIABLES

 Up to two register variables may be declared in any  function.  The  only  types
 permitted for register variables are int, unsigned and pointer. Invalid register
 variable declarations are ignored; i.e. the storage  class  is  made  auto.  For
 further details see K & R page 81.

 A  considerable  saving  in  code size and speed can be made by judicious use of
 register variables. The most efficient use is made  of  them  for  pointers  and
 counters  for  loops.  However,  if  register  variables  are  used  in  complex
 arithmetic expressions there is no saving; for those who know the 6809, this  is
 because they are the Y and U registers.


ARITHMETIC ERRORS

 K & R leave the treatment of various arithmetic errors open, merely saying  that
 it  is  machine  dependent.  This  implementation deals with a limited number of
 error conditions in a special way; it should be  assumed  that  the  results  of
 other possible errors are undefined.

 If  an  error  occurs in an arithemetic routine which can not be coped with, the
 program exits with  an  appropriate  error  status  after  placing  one  of  the
 following messages on the system console:


    "*** FLOATING POINT OVERFLOW ***"                      (error number 40)

    "*** DIVIDE BY ZERO ATTEMPTED ***"                     (error number 41)

    "*** FLOAT-INTEGER CONVERSION ERROR ***"               (error number 42)


STANDARD LIBRARY

 It  is  essential  to  head  any  source  file  which  uses the higher-level I/O
 functions from the standard library with '#include <stdio.h>'. See  'C  Standard
 Library' for details.

 PLEASE  NOTE:  If  output  via printf(), fprintf() or sprintf() of long integers
                is required, the source MUST call 'pflinit()' at some point; this
                is necessary so that programs not involving longs do not have the
                extra longs output code appended. This function does nothing, but
                existence  of  a  call  to it in a source file informs the loader
                that the relevant routine must be loaded.


COMMAND LINE ARGUMENTS

 Programs written in C which are invoked with command line arguments can use  the
 convention  outlined  from  page  110  of  K & R. The system interface makes the
 arguments available to the program in exactly the  manner  described,  including
 the name of the program itself as argv[0].

 Arguments  are  considered  delimited  by  commas  or spaces unless these appear
 within strings delimited by quotes ("....").


DEFAULT DRIVES

 The default disk drive for all file handling is the WORKing  drive  (defined  by
 'ASN').  However,  programs  can  change  the working drive temporarily by using
 'setwd()' which is documented in the Low-level Call section of this manual.

 The '#include' facility in the C Pre-processor  also  defaults  to  the  working
 drive  unless  angle  bracket  <  ...  >  delimiters are used, in which case the
 default is the SYSTEM drive.


WARNINGS

 The following paragraphs contain a few warnings of potential pitfalls that might
 occur during use of this product.

 a. 48K of user memory is highly recommended. The compiler will limit  itself  to
    memory  below  FLEX  'MEMEND'.  If 'MEMEND' is significantly lower than $BFFF
    don't be surprised if you run out of storage space  when  compiling  a  large
    program.

 b. Because the target machine for this  compiler,  the  6809,  is  an  8/16  bit
    processor,  it  has been possible to generate efficient code for 8 and 16 bit
    objects. However, code for 32 bit values can at best be four times longer and
    slower.  Further, it has been possible within the confines of the FLEX memory
    limits to do some quite extensive evaluation of constant expressions provided
    they  involve  only constants of type 'char', 'int' and 'unsigned'. There is,
    unfortunately, no room to  do  any  constant  expression  evaluation  (except
    single  constants  and  'casts'  of  them)  where there are constants of type
    'long', 'float' or 'double'. Complex  constant  expressions  involving  these
    types are evaluated at run time by the compiled program. The moral is : don't
    use a long, float or double where an int or unsigned will do.

 c. A number  of  temporary  files  are  created  on  the  working  drive  during
    compilation  and it is important to ensure that enough space is available. As
    a rough guide, at least three times the number  of  sectors  in  the  largest
    source file (and its included files) should be free.

 d. The  identifiers  'edata'  and 'end' are pre-defined in the loader and may be
    used to establish the addresses of the end of executable code and initialized
    data,  and  un-initialized  data respectively. The method of using them is to
    take the address using the '&' operator.

    E.g. foo(&end);

    The important thing  to  remember  is  that  these  identifiers  may  not  be
    re-defined or re-declared.


FILES

 Compilation  of  a C program by CC requires that the following files are present
 on the SYSTEM drive.

 CC      .CMD     compiler executive program
 CPREP   .CMD     macro pre-processor
 CPASS1  .CMD     compiler pass one
 CPASS2  .CMD     compiler pass two
 COPT    .CMD     assembly code optimiser
 CASM    .CMD     relocating assembler
 CLOAD   .CMD     linking loader
 CSTART  .R       program initialisation module
 CLIB    .LIB     standard library, arithmetic routines and system interface


                                  * *  NOTE  * *

         'START.R' and 'CLIB.LIB' must be on the same disc as 'CC.CMD'


BUGS

 CC  has  been  in  use  for  some  time,  both  internally   at   Microprocessor
 Developments  Limited  and  by  end-users, and all known bugs have been removed.
 However, a problem report is included with the registration forms and should  be
 used to report bugs or problems encountered while using CC.

 The  'FLEX'  implementation of this compiler is marketed exclusively by Windrush
 Micro   Systems   Limited,   the   UNIFLEX   implementation   is   marketed   by
 Microprocessor  Developments  Limited and the OS-9 implementation is marketed by
 Microware Systems Corporation. All three versions are  available  from  Windrush
 Micro Systems.

 Any problems or comments in regard to the FLEX implementation  of  this  product
 should be directed to:

    Windrush Micro Systems Limted
    Worstead Laboratories
    North Walsham
    Norfolk
    England
    NR28 9SA


 MPD is the 'home' of the J. McCOSH C COMPILER being:

    Microprocessor Developments Limited
    3 Cranfield Place
    London NW6 3BT
    England

 Any suggestions for improvements may be directed to either Windrush or MPD.


SUGGESTED READING MATERIALS

 'The  C  Programming  Language'  by  Brian  W.  Kernighan and Dennis M. Ritchie.
 Published by Prentice-Hall.

 'Learning to Program in C' by Thomas Plum. Published by Plum Hall Inc., 1 Spruce
 Avenue, Cardif, New Jersey, 08232 U.S.A.

 'C Programming Guidelines' by Thomas Plum. Published by Plum Hall Inc., 1 Spruce
 Avenue, Cardif, New Jersey, 08232 U.S.A.

 'Programming in  C'  by  Stephen G. Kochan. Published by Hayden Book Company, 10
 Mulholland Drive, Hasbrouck Heights, New Jersey 07604 U.S.A.

 'C Programmers Library'  by  Purdum,  Leslie  &  Stegemoller. Published  by  Que
 Corporation, 7999 Knue Road, Suite 202, Indianapolis, Indiana, 46250 U.S.A.

 'C  Programming  Guide'  by Jack Purdum. Published by Que Corporation, 7999 Knue
 Road, Suite 202, Indianapolis, Indiana, 46250 U.S.A.


 All six of the above books are available through Windrush Micro  Systems  should
 you have difficulty in obtaining them.
