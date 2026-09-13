# GUIDEPT2

> Source: `misc/uncategorized/USERV4_2 - FLEX Software Archive - Program and Support Utilities - Includes GUIDEPT1, GUIDEPT2, GUIDEPT3.zip!USERV4_2.DSK!GUIDEPT2.TXT`  
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


9.05.00  ARITHMETIC IN PL/9

 PL/9 is basically a control language. Although it possesses a good repertoire of
 numeric  abilities,  it  is not likely to be suitable for the sort of arithmetic
 found in a wages package or  a  stock  control  program,  where  financial  sums
 running  to thousands of pounds (or dollars) must be held to sufficient accuracy
 to avoid losing the odd pennies. Its numeric abilities are more  suited  to  the
 world  of  control systems, where absolute accuracy is less important than speed
 and reliability. The way arithmetic is handled in PL/9 is therefore designed  to
 allow  the  programmer  to  specify exactly how the sums are to be done, in what
 order the operands are to be accessed and whether a calculation should  be  done
 in fixed or floating point.


9.05.01  NUMERIC QUANTITIES

 PL/9 is a language designed to be used to control things in the real world.  The
 numeric  quantities  it uses are therefore closely related to the data types the
 6809 itself handles. Three sizes of data can be dealt with:


 BYTEs     are  8-bit quantities, having values ranging from -128 to +127 and are
           processed in the 6809's B  accumulator.  Although  they  are  normally
           regarded  as  signed  quantities,  there  are  times  (when performing
           bit-wise logical operations for example) when they should  instead  be
           regarded as unsigned values between 0 and 255. A mechanism is provided
           in PL/9 for making this distinction; this is described later.


 INTEGERs  are 16-bit quantities, having values ranging from -32768 to +32767 and
           are processed in the 6809's D accumulator. They too may be regarded as
           unsigned numbers, this time in the range  0  to  65535,  by  the  same
           mechanism as for BYTEs.


 REALs     are  32-bit  floating-point  values, stored in a four-byte binary form
           where the first byte contains the exponent and the remaining three the
           mantissa.  The  range  covers  approximately +-1.0E-38 to +-1.0E37 and
           there  are  usually  six  (decimal)  digits  of  precision.  They  are
           processed on the stack and passed about in D and X, with D holding the
           most significant half.


 Further information on this subject can be found  in  section  9.01.00  of  this
 Guide and the and section 7.03.XX of the Language Reference Manual.


9.05.02  VARIABLES AND DATA TYPES

 A Variable is a place at which something can be stored. Because the item can  be
 removed  and  something  else  put  in  its place, the contents of the store are
 variable, hence the name. A Constant, on the other hand,  is  something  eternal
 and unchanging, something you might put in a variable, for example.

 Variables in PL/9, like numeric quantities, come in three sizes;  BYTE,  INTEGER
 and  REAL.  The names you give to your variables do not have to give any clue as
 to  their  type;  you  are  free  to  call  a  variable  anything  from   X   to
 X_MARKS_THE_SPOT_WHERE_THE_BUTLER_DID_IT.  The  type of a variable is determined
 at the point it is declared, and from that point on it is always that type.

 In the following  example,  only  local  variables  (variables  private  to  the
 procedure in which they are declared) will be declared:


    PROCEDURE VARIABLE_TYPES:
       BYTE BYTE1, BYTE2, BYTE3:
       INTEGER INTEGER1, INTEGER2, INTEGER3:
       REAL REAL1, REAL2, REAL3;


 This choice of names is not recommended for use generally - it is  to  be  hoped
 that you can devise names more suited to the job the program is doing. They just
 serve here to help distinguish the various types. Note the colons separating the
 parts of the declaration, which may itself be crammed into or expanded out to as
 many lines as  you  wish.  The  order  of  the  variable  declarations  is  also
 unimportant;  you  can  declare whichever you like first, or declare some of the
 BYTEs, then some INTEGERs and REALs, then the rest of the BYTEs.  It's  entirely
 up  to you. The only point to note is that the variables declared earliest use a
 shorter  form  of  addressing  to  access  them,  so  declaring  frequently used
 variables  first  keeps  down the size of your program and makes it run a little
 faster.

 Note also that a colon is used  to  separate  the  different  data  types  REAL,
 INTEGER,  and  BYTE and that a comma is used to separate the different variables
 within each type group.


9.05.03  LOCAL VARIABLES

 The examples in the preceeding sections of this guide have used what  are  known
 as LOCAL variables, which are declared as part of a PROCEDURE declaration. Local
 variables are held on the system stack, with space being allocated for them when
 they  are  declared  and  released  when the procedure ends. The name of a local
 variable is private to the procedure in which it  is  declared.  Any  number  of
 different procedures may use the same local variable names; in each case it is a
 completely different variable.

 Parameters passed to procedures (covered  in  a  subsequent  section)  are  also
 local,  the  only  difference being that they are placed on the stack before the
 procedure is called and are removed after the procedure exits.


9.05.04  GLOBAL VARIABLES

 Where a number of procedures are to use the same variables  it  is  wasteful  of
 code  to  pass  the  variables  as  parameters  from  one procedure to the next,
 especially if there are many variables. PL/9 makes provision  in  two  ways  for
 variables  to  be shared. The first mechanism is the Global variable. The GLOBAL
 statement causes room to be made on the system stack for the declared variables,
 then  the  6809's  'Y'  index  register is set to point to the base of the space
 reserved. Any procedure can access the global variables by means  of  an  offset
 from  the  'Y'  register. Only one GLOBAL statement can be used in a program and
 its format is much the same as the variable  declaration  part  of  a  PROCEDURE
 declaration.  Global  variables  are stored in memory at a place that depends on
 where the stack has been  allocated.  See  the  Language  Reference  Manual  and
 section 9.10.00 of this Guide for more details.

 The  second  mechanism  for  declaring  variables  that  are  to  be universally
 available locates them at fixed places in the microprocessor's memory space, and
 is  therefore ideally suited to declaring addresses that form part of the system
 hardware. The AT declaration, described in section 9.04.01, allows you to define
 'hard'  addresses  by  name, enabling drivers to be easily written for Input and
 Output devices or space to be reserved for communication between a PL/9  program
 and a module written in another language.


9.05.05  CONSTANT

 Most  programs use many numeric constants. In one of the examples given earlier,
 the statement IN=IN+1 was used to move along a text string. The significance  of
 the  "1"  in  this  case  is  fairly  obvious,  but this is not always the case.
 Suppose, for  instance,  that  a  program  line  contained  the  procedure  call
 PUTCHAR(10);  what  is  the  significance  of  the  number  10? It would be more
 readable if PUTCHAR(LINE_FEED) were used instead; in this  case  it  is  obvious
 what  is  happening. It might even be better to use IN=IN+INCREMENT in the first
 example. PL/9 allows you to define numeric constants so that their symbol  names
 can be used later instead of the numbers they represent. Another benefit of this
 is that if the value of the constant has to be changed in a  later  revision  of
 the  program  then  there's  only one occurrence that has to be altered, usually
 fairly early on in the program.

 Note that there is no way of declaring the type of a constant -

 All constants are effectively INTEGERs but are TRUNCATED to BYTE if necessary

 This is  particularly  important  to  remember  when  using  BYTE  constants  in
 comparisons with INTEGERS or bitwise operations on INTEGERS.


9.05.05  CONSTANT  (continued)

 REAL constants are not implemented in this version of PL/9 however there are two
 techniques you can use to overcome this limitation. The first is  to  declare  a
 read-only  data  table  (see section 9.05.07) as multi-element vector before you
 start  writing  your  procedures.  Each  item  in  the  table  is  accessed   by
 subscripting the variable name, viz:

    REAL POWERS_OF_10  1, 10, 100, 1000, 10000, 100000, 1000000;

 A  reference to 'POWERS_OF_TEN(0)' would be a REAL constant of 1, a reference to
 'POWERS_OF_TEN(1)' would be a REAL constant of 10, etc.

 The second technique is to give each REAL a name which may then be used in  data
 assignments or evaluations just as INTEGER and BYTE CONSTANTS, viz:

    REAL PI 3.1415926;
    REAL PI_SQUARED 6.2831853;
    REAL COEFF1 -6.88677461E-9;

 etc...


9.05.06  PROCEDURES AS VARIABLES

 PROCEDUREs  can  also  be  regarded  as variable types by causing them to return
 specific values and thereby become functions. The procedure call can  then  take
 the place of any variable of the appropriate type.

 The  ENDPROC  and  RETURN  sections of the Language Reference Manual and section
 9.06.01 of this guide, which describes custom functions,  cover  this  topic  in
 greater detail.


9.05.07  READ ONLY DATA

 A  program  may require data for initialization of tables and other vectors. The
 AVERAGE example in section 9.06.04 contains an example of a REAL data list; BYTE
 and INTEGER lists are also allowed, as the Language Reference Manual explains.

 One of the most common uses of read only data is in forming text  strings.  Text
 strings  can  be  declared  either  in-line with the program, as in PRINT("HELLO
 WORLD"), or in BYTE declarations  such  as  BYTE  MESSAGE  "HELLO  WORLD".  Data
 declarations  amount to read- only vectors; PL/9 will refuse to allow you to use
 one on the left-hand side of an assignment.

 Read only data, particularly data tables (data lists) are best declared  in  the
 early  part  of  the  program just after the STACK, and GLOBAL declarations. You
 may, if you wish, declare data of this type BETWEEN procedures.  This  can  have
 the  benefit of shortening the addressing range of the PL/9 code (thereby making
 it more compact and faster) if the  data  is  only  going  to  be  used  by  the
 subsequent procedure. If the data is to be used frequently by several procedures
 in the program little benefit will  be  gained  by  placing  the  table  between
 procedures  in  the program. In this situation placing the data in the middle of
 the procedures would only tend to make the body of the program less readable.


 PL/9 will not allow you to declare read only data in the middle of  a  procedure
 unless  it  is  being passed to a function or its address is being assigned to a
 variable, viz:


    PRINT("THIS IS A MESSAGE"); is permitted in a procedure

    STRING="THIS IS A MESSAGE"; is permitted where STRING is an INTEGER variable

 STRING will now contain the address of the first byte of the message string  and
 is, in effect, a pointer to the string. You may then say:

    PRINT(STRING);


       BUT


    BYTE MESSAGE "THIS IS A MESSAGE";    is  NOT permitted in a procedure and may
                                         only be used outside of procedures.


9.05.08  PRINTING NUMBERS

 As with any feature of a language, the best way of learning it is to try it out.
 You  are  therefore encouraged to try every example and satisfy yourself that it
 works. An incomplete understanding of  the  way  PL/9  works  can  have  results
 ranging from inconvenience to disaster, and in any case the author would like to
 feel that the time spent writing this user's guide has not been wasted!

 In order to help demonstrate PL/9 arithmetic, it's useful to be  able  to  print
 out  numbers.  As  explained  earlier,  PL/9  doesn't  contain  any built-in I/O
 routines, so a procedure to do this  will  be  needed.  Type  in  the  following
 program:


 0001 INCLUDE IOSUBS;
 0002 INCLUDE REALCON;
 0003
 0004 PROCEDURE PRNUM (REAL NUMBER): BYTE BUFFER(20);
 0005
 0006    PRINT(ASCII(NUMBER,.BUFFER));
 0007
 0008 ENDPROC;


 The job of this routine is to take a number passed to it,  convert  it  into  an
 ASCII  string  and  print  that  on  the VDU screen. If the number passed is not
 already REAL it will  be  automatically  converted  ("promoted")  to  REAL.  The
 procedure  ASCII  is  part  of  the  REALCON.LIB  library  file, which has to be
 INCLUDEd. The function of ASCII is to take the REAL number passed to it, convert
 that  into a string of ASCII characters in the buffer whose address is supplied,
 and terminate the string with a null. ASCII therefore requires two parameters to
 be  passed  to it; a REAL number and the address of a buffer. The first of these
 parameters is the number that was passed to PRNUM; it is merely copied  for  use
 by  ASCII.  The  second parameter is declared in line 4 as a vector of type BYTE
 and of size 20, large  enough  to  hold  the  longest  number  that  ASCII  will
 generate.

 The  (REAL  NUMBER) in line 4 tells PL/9 that one parameter is required by PRNUM
 and that its type is REAL. Line 6 is an  example  of  a  procedure  call  within
 another procedure call; the call to ASCII has a return value equal to the second
 parameter passed to it, which in this case is the address of  BUFFER  (indicated
 by  the dot), the correct type for PRINT. PL/9 allows you to use either a dot or
 an ampersand (&) to indicate the address of a variable  (otherwise  known  as  a
 "pointer to" the variable). Which you use depends upon your personal style;  the
 dot  is  borrowed  from  PL/M  and the ampersand from C. A later section in this
 guide has more to say about Pointers and how they are used.

 Lastly there is an ENDPROC at the end of this procedure; it's going to be called
 from elsewhere so it has to be able to return.

 Once you have typed in the program and checked that it compiles without  errors,
 type  "S=PRNUM.LIB".  This  writes  it  to your working disc, ready for use as a
 library file.


9.05.09  "INTEGER" VERSUS "REAL" ARITHMETIC

 PL/9 handles BYTE and INTEGER quantities  differently  from  REAL  numbers  when
 evaluating  arithmetic  expressions. The effect may be the same, but a different
 part of the compiler is used, and different code is generated. PL/9 will usually
 convert  from  one  type to another if it can, but beware when intermixing REALs
 with other types - the results may not always be  what  you  expected,  as  will
 shortly be explained. For the rest of this manual, the term "Integer Expression"
 will be used to represent an expression where the result  is  of  type  BYTE  or
 INTEGER,  while  "Real Expression" will represent an expression where the result
 is REAL.


   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
   *                                                                         *
   *  It is VERYimportant to remember that PL/9 sign extends BYTES to form *
   *  INTEGERS  when  a  BYTE  is being evaluated in an expression OR when a *
   *  BYTE is being assigned to an INTEGER except when instructed  otherwise *
   *  by the programmer.                                                     *
   *                                                                         *
   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 This may sound a bit strange but remember PL/9 assumes that you are working with
 SIGNED numbers. This technique has been adopted to  facilitate  comparisons  and
 assignments  between  SIGNED  BYTES and SIGNED INTEGERS which are very common in
 most control work.

 PL/9 has been provided  with  two  special  facilities  that  prevent  the  sign
 extension  from  taking  place  when  you wish to evaluate a BYTE as an unsigned
 number.

 The first is that the compiler handles CONSTANTS declared as HEX numbers and HEX
 numbers  used  in  comparisons  or  assignments  in  a  special manner. In these
 circumstances it assumes that you wish to work with unsigned numbers for if  you
 mean  -128 why would you state $80? This distinction is used to greatly simplify
 constructions that are designed to operate with I/O devices, etc.

 The second facility is the exclamation mark (!). This facility simply tells  the
 compiler  NOT  to  sign  extend  the BYTE variable(s) in the expression before a
 comparison is made. This facility is also  of  use  when  you  wish  to  perform
 unsigned addition and/or subtraction of binary numbers.

 The  'INTEGER'  function  has  been provided to facilitate assigning an unsigned
 BYTE to an unsigned INTEGER.


 Working  with  unsigned  BYTEs  and  INTEGERs are discussed in detail in section
 7.03.02 in the Reference Manual and section 9.05.13 of this guide.


9.05.10  ARITHMETIC OPERATORS AND EVALUATORS


 The arithmetic operators recognized by PL/9 are as follows:

 A + B    Add the signed value of B to the signed value of A.

 A - B    Subtract the signed value of B from the signed value of A.

 A * B    Multiply the signed value of A by the signed value of B.

 A / B    Divide the signed value of A by the signed value of B.

 A \ B    Return  the remainder (modulus) of the signed value of A divided by the
          signed value of B.  (only BYTEs and INTEGERs may be used)

 A = -B   Negation (unary minus).


 The arithmetic evaluators recognized by PL/9 are as follows:

 =        EQUAL

 <>       NOT EQUAL

 <> 0     NOT EQUAL TO ZERO is implicit and may be omitted to shorten code

 >        GREATER THAN

 >=       GREATER THAN or EQUAL (=> is NOT acceptable)

 <        LESS THAN

 <=       LESS THAN or EQUAL (=< is NOT acceptable)


 Other special characters recognized by PL/9 are as follows:

 =        Assign  the  value on the left of the equal sign the value or result of
          the expression on the right.

 "strng"  Assign the address of the first byte in  the  enclosed  string  to  the
          variable. The string will be terminated with a null.

 . or &   Assign  the address of the variable not the value of the variable, i.e.
          assign a pointer to the variable (or procedure); e.g. VAR1 = .VAR2;

 . or &   Define a variable as a pointer to REAL, INTEGER  or  BYTE  sized  data;
          e.g. GLOBAL REAL .RPOINTER:INTEGER .IPOINTER:BYTE .BPOINTER;

 $        Evaluate or assign a HEX number.  These  numbers  will  be  treated  as
          unsigned numbers in simple evaluation or assignment expression.

 !        Do not perform sign extension when evaluating BYTEs or INTEGERs.

 '        Evaluate or assign an ASCII character.

 (n)      Subscript a vector or a  pointer  with  a  number,  a  constant,  or  a
          variable.
9.05.11  ARITHMETIC OPERATOR PRECEDENCE

 First of all, an example of arithmetic where all  of  the  operands  are  simple
 numbers;


 0001 INCLUDE IOSUBS;
 0002 INCLUDE REALCON;
 0003 INCLUDE PRNUM;
 0004
 0005 PROCEDURE SIMPLE_ARITHMETIC;
 0006
 0007    PRINT("2+3*5  =  ");
 0008    PRNUM(2+3*5);


 This  is  the  simplest  way  of demonstrating the way that multiplication takes
 precedence over addition in PL/9. (For those that can't be bothered to  run  the
 example, the answer is 17, not 25.) A precedence table looks like this:


 Highest Precedence                   Negation/unary minus (-) and Functions

                                   Multiplication (*), Division (/), Modulus (\)

                                           Addition (+), Subtraction (-)

                                                        AND

                                                    OR, EOR/XOR

                                          (=), (<>), (>=), (<=), (>), (<)

                                                       .AND

 Lowest Precedence                                .OR, .EOR/.XOR


 "Functions" mean BYTE, INTEGER, SQR etc., which will be described later. The the
 effect oftable is that unless brackets are used  to  modify  the  default  order
 of precedence,  negation  will  be done before multiplication or division, which
 will in turn be done before addition or subtraction, and so on.

 Try  modifying  the  example  above  to  test  the  effect  of  other arithmetic
 expressions. Note  that  although  constants  are  used  in  this  example,  the
 principle works just as well for variables and elements of vectors.

 Note  also  that  although  the  result  of any expression reflects the order of
 evaluation, the  actual  arguments  (the  component  numbers)  are  individually
 accessed  by PL/9 in left to right order. This can be of importance when dealing
 with real I/O devices rather than simple numbers.

 Lastly note that since this is a Real expression (because  PRNUM  takes  a  REAL
 argument),  modulus  (\)  and  the  bit operators AND, OR and EOR will result in
 errors if used.

 As a further exercise, try using brackets to  alter  the  order  of  evaluation.
 (2+3)*5  will  of  course yield the answer 25, not 17. Brackets can be nested to
 any required depth.

9.05.12  MIXED MODE ARITHMETIC

 It  was  stated  earlier  that  the result of mixing Integer and Real numbers in
 expressions can cause unexpected results. The last example was a Real Expression
 because  PRNUM  expects a REAL operand. This means that each of the terms in the
 expression must either already be REAL or will  be  "promoted"  to  REAL  before
 being  included in the calculation. The addition and multiplication will be done
 in floating point, not integer or byte form. The latter could have been "forced"
 by the following:

 0008    PRNUM(FLOAT(2+3*5));

 FLOAT  is  a function that takes a BYTE or INTEGER argument and returns the REAL
 equivalent. In this case the entire expression will be forced to be evaluated as
 integer, thereby allowing the use of modulus and the logical operators. There is
 also a FIX operator that performs the opposite function, that  of  converting  a
 REAL value into INTEGER.

 The  rule  that should always be borne in mind is that the type of an expression
 is determined by the type of wherever the result is going. An assignment of  the
 form  A=B+C  thus  causes  the expression B+C to be evaluated as integer if A is
 either BYTE or INTEGER, real if A is REAL. In either  case,  each  term  of  the
 expression  will  be  converted to the appropriate type before being included in
 the calculation. This may  appear  clumsy  by  comparison  with  the  way  other
 languages  handle  expressions, but at least it gives the programmer the ability
 to tightly control the way the compiler does its arithmetic.

 In general, mixed mode arithmetic should not cause too many problems as long  as
 you  are careful to examine the implications. PL/9 will usually do the necessary
 type conversions and in cases where this is not possible will report an error.


9.05.13  UNSIGNED INTEGER ARITHMETIC (to BITS or not to BITS)

 Our sincere apologies to Shakespeare. We hoped that this title  has  drawn  your
 attention to this section as it is VERY, VERY important that you understand what
 we are going to tell you here. This section is particularly important if you are
 an  ASSEMBLY  language programmer or are converting programs written in SPL/M to
 PL/9.


     * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
     *                                                                     *
     *  Failing to understand what is said in this section can cause VERY  *
     *  undesirable  results  if  you  are  used  to  treating  BYTES and  *
     *  INTEGERS as binary bit patterns rather than as signed numbers.     *
     *                                                                     *
     * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 The signed nature of integer arithmetic (that is arithmetic comprising  INTEGERs
 and  BYTEs)  can  cause some unexpected effects if you do not understand the way
 the compiler sign extends BYTEs into INTEGERs. This topic was covered in  detail
 in section 7.03.02, but will be discussed again here in detail.

 To force the compiler into a mode where the entire EVALUATION is to be performed
 in  an unsigned manner the expression is preceeded with an exclamation mark (!),
 where the exclamation mark means "the following expression, IN ITS ENTIRETY,  is
 unsigned, so don't do any sign extension".

 This release of the compiler has attempted to simplify the  way  the  programmer
 must  handle  evaluations  and  assignments  of unsigned BYTEs and INTEGERs. The
 compiler now recognizes CONSTANTS that have been assigned via a  HEX  number  as
 being  distinctly  different from CONSTANTS that have been assigned via a signed
 number. For example $80 and -128 are no longer the same  to  the  compiler.  The
 same set of rules applies to numbers used in simple assignments and evaluations.

 It  is  assumed  that  when you will be working with signed numbers you will use
 decimal numbers. HEX numbers are automatically treated as  unsigned  numbers  in
 simple evaluation or assignment expressions.

 For  the  most part you will not have any problems comparing BYTEs with BYTEs or
 INTEGERs with INTEGERs but special precautions are necessary when you try to mix
 the  two  data  sizes  in expressions or if you use an evaluation operator other
 than equal (=) or not equal (<>).

 The following are the five primary rules that MUST be obeyed if you wish to work
 with unsigned numbers successfully.

                                   ___________
                                  R U L E   1

      When  performing  simple  evaluations  or  assignments  use  CONSTANTS
      defined by HEX numbers or HEX numbers in the expression.


                                   ___________
                                  R U L E   2

      When comparing unsigned INTEGERs with unsigned BYTEs or vice versa use
      the  exclamation  mark (!) to tell the compiler not to sign extend the
      BYTE quantity. This is particularly important when the  BYTE  quantity
      is on the left side of the equal sign.
9.05.13  UNSIGNED INTEGER ARITHMETIC  continued

                                   ___________
                                  R U L E   3

      If the greater than (>), greater than or equal to (>=), less than (<),
      or  less  than  or equal to (<=) evaluators are used in the expression
      use the exclamation mark (!) to force unsigned evaluation.


                                   ___________
                                  R U L E   4

      When you wish to perform an unsigned addition or  subtraction  with  a
      mixture  of INTEGERs and BYTEs use the exclamation mark (!) to prevent
      the compiler from sign extending the BYTE quantities.


                                   ___________
                                  R U L E   5

      When  ASSIGNING  an  unsigned  BYTE  to  an  unsigned  INTEGER use the
      'INTEGER' function.


 The best way to illustrate why these rules exist is to give you  some  examples.
 The  following  declarations are assumed to have been made for the variables and
 constants used in the examples. It is also assumed that the variables have  been
 initialized as indicated.


    CONSTANT B=$80, I=$0080;

    GLOBAL BYTE B1: INTEGER I1;

    PROCEDURE INIT;
       B1=B;
       I1=I;
    ENDPROC;


RULE 1

 The following constructions all produce the results you would expect in unsigned
 comparisons  with CONSTANTS defined by HEX(and only HEX)numbers or comparisons
 made with HEX(and only HEX)numbers:

    IF B1 = $80 THEN...                    IF $80 = B1 THEN...

    IF B = $80 THEN...                     IF $80 = B THEN...

    IF I1 = $0080 THEN...                  IF $0080 = I1 THEN...

    IF I = $0080 THEN...                   IF $0080 = I THEN...


9.05.13  UNSIGNED INTEGER ARITHMETIC  continued

RULE 2

 The following are also valid but should not be used in order to avoid confusion.
 If the positions of the INTEGER and BYTE variables are reversed the results will
 NOT be as expected!

    IF I = B THEN...                       IF I1 = B1 THEN...

    IF I = $80 THEN...                     IF I1 = B THEN...


 Here  is  what  happens  in circumstances where the BYTE variable is on the left
 side of the equal sign.

    IF B = I THEN...       will result in B being sign extended to form $FF80 and
                           will therefore produce an erronious result.

    IF !B = I THEN...      the (!) prevents B from being sign  extended  to  form
                           $FF80 and therefore gives the expected result.


    IF B1 = I1 THEN...     will result in B1 being sign extended  to  form  $FF80
                           and will therefore produce an erronious result.

    IF !B1 = I1 THEN...    the  (!)  prevents B1 from being sign extended to form
                           $FF80 and therefore gives the expected result.


    IF $80 = I THEN...     again  produces  an error as $80 will be sign extended
                           to form $FF80 before the comparison is made.

    IF !$80 = I THEN...    the (!) prevents $80 from being sign extended to  form
                           $FF80 and therefore gives the expected result.


    IF B = I1 THEN...      will result in B being sign extended to form $FF80 and
                           will therefore produce an erronious result.

    IF !B = I1 THEN...     the  (!)  prevents  B from being sign extended to form
                           $FF80 and therefore gives the expected result.


9.05.13  UNSIGNED INTEGER ARITHMETIC  continued

RULE 3

 ALL of the following expressions will produce  erronious  results  due  to  sign
 extending of any variable 'greater than' $7F.

    IF $80 > $7F THEN...                   IF $7F < $80 THEN...

    IF B > $7F THEN                        IF I > $7F THEN...

 Simply  putting  an  exclamation  mark  in  front  of  the  first element of the
 expression  tells  the compiler not to sign extend any element of the expression
 and you will therefore get the  results  you  would  expect,  i.e.  all  of  the
 following expressions work:

    IF !$80 > $7F THEN...                  IF !$7F < $80 THEN...

    IF !B > $7F THEN                       IF !I > $7F THEN...


RULE 4

 Unsigned  addition  and  subtraction of like sized quantities will never present
 any problems. The only time this rule comes into force is when you mix BYTEs and
 INTEGERs in the expression. For example all of the following expressions produce
 the expected results:

    IF B+1 = $81 THEN...                   IF B-1 = $7F THEN...
    IF B1+1 = $81 THEN...                  IF B1-1 = $7F THEN...
    IF I+1 = $81 THEN...                   IF I-1 = $7F THEN...
    IF I1+1 = $81 THEN...                  IF I1-1 = $7F THEN...

    IF I+1 = B+1 THEN...                   IF I1-1 = B1-1 THEN...


 BUT the following will not:

    IF I1+B = I+B1 THEN...

 Again,  putting  the  exclamation  mark  before the expression prevents the sign
 extension that would have occurred in the previous example and the  construction
 works, viz:

    IF !I1+B = I+B1 THEN...   will work!


RULE 5

 This  rule  applies  when  assigning a BYTE variable to an INTEGER variable. For
 example:

    I1=B1;            would  result  in I1 being assigned the value of B AFTER it
                      was sign extended, i.e. I1 would be equal  to  $FF80  after
                      the assignment.

 To prevent this from happening you use the INTEGER function, viz.

    I1=INTEGER(B1);   this time I1 would be equal to $0080 as you would expect.
MIXED EXPRESSIONS ... SIGNED + UNSIGNED = CONFUSION

 It is not  permitted  to  mix  unsigned  and  signed  evaluations  in  the  same
 expression. For example if you wanted to compare an unsigned number with the sum
 of a signed operation you could NOT use an expression like this:

    IF A + B = !C THEN...

 the compiler will reject any attempt to put an exclamation mark on the right  of
 an equal sign (=).

 The  above  construction  must  be  performed in two individual steps, first the
 signed addition:

    TCHAR = A + B;

 then the unsigned comparison:

    IF !TCHAR = C THEN...


                                     _______
                                    N O T E

 The  exclamation  mark can only be used immediately after IF, WHILE, or UNTIL in
 EVALUATION statements or immediately after an equal sign in an ASSIGNMENT.


 Generally  speaking  you  should  attempt  to keep evaluation and assignments of
 unsigned numbers as simple  as  possible,  even  if  this  means  performing  an
 evaluation over several lines of program source and using intermediate variables
 for storage. This latter point  is  particularly  important  when  part  of  the
 evaluation  is  to be performed as signed and another part is to be performed as
 unsigned.

 You are welcome to try to construct complex evaluations or assignments in  order
 to  save  code. In these situations you should always look at the code that PL/9
 produces to make sure that it is  doing  what  you  expect.  Remember  that  the
 compiler  will  slip  into  signed  operation (i.e. it will start sign extending
 numbers) with the slightest excuse. If you don't understand the code  that  PL/9
 produces keep the expressions simple and they will work 100% of the time.


 The bit operators AND, OR, and EOR may be mixed in with  unsigned  addition  and
 subtraction  operations.  As multiplication and division are always signed using
 these operations in an unsigned expression may produce unexpected results.

 Generally speaking the bit operators do not treat BYTEs and INTEGERs  as  signed
 values.  Special  caution  must be observed when operating on INTEGERs with BYTE
 variables or constants and vice versa. The rules for this will  be  outlined  in
 section 9.07.00.


9.05.14  PL/9 FUNCTIONS

 A  number  of  functions  are  provided to enable conversions to be made between
 different data types and to perform certain  arithmetic  operations.  The  first
 group  all return a BYTE or INTEGER value, although they can operate on any data
 type:


 NOT(A)      This function  is  a  ones  complement  bit  inverter  and  will  be
             discussed in greater detail in a subsequent section.


 SHIFT(A,N)  This  function performs the equivalent of multiplication or division
             by  powers of two. The expression A is evaluated and shifted left or
             right according to the value of N, left if N is positive  and  right
             if  N  is  negative.  N  must  be  a  constant, not a variable or an
             expression. If A is BYTE the value of the  function  is  also  BYTE,
             implying  that  no automatic extension to INTEGER is performed. If A
             is REAL it will be FIXed before shifting.

             SHIFT  can  greatly  speed   some   programs   by   replacing   slow
             multiplications   and  divisions  with  fast  shifts.  For  example,
             SHIFT(VALUE,-2) has the effect of dividing VALUE  by  four,  but  is
             much faster, while SHIFT(X,3) is equivalent to multiplying X by 8.

             SHIFT preserves the sign bit (b15 in an INTEGER and b7 in a BYTE) on
             a right shift and shifts zeros into the least significant  bit  (b0)
             on a left shift.


 SWAP(A)     Returns an INTEGER  value  comprising  the  reversed  bytes  of  the
             operand.  If  a  BYTE  operand  is supplied it will be sign-extended
             before swapping; a REAL will be FIXed, i.e. converted to the nearest
             INTEGER.


 EXTEND(A)   Returns an INTEGER comprising the  least  significant  byte  of  the
             operand sign extended into the most. As with SWAP, any data type can
             be supplied; if the operand is not BYTE it will be converted  before
             sign extension.


 INTEGER(A)  Works in the same way as EXTEND except  that  the  most  significant
             byte of the operand is set to zero.


 BYTE(A)     Converts the operand to a BYTE by throwing away the most significant
             byte. If the operand is REAL it will be  FIXed  automatically.  This
             function  has  few  uses,  since the necessary conversion is usually
             done automatically. It is included mainly for completeness.


9.05.14  FUNCTIONS  (continued)

 FIX(A)      Converts the REAL operand to the  nearest  INTEGER  (rounding  where
             necessary),  allowing a REAL sub-expression of an INTEGER expression
             to be evaluated as REAL before conversion to INTEGER.  If  FIX  were
             not  used then each REAL term would be converted to INTEGER as it is
             encountered. The mode of  evaluation  of  an  expression  is  always
             determined  by  the  variable  to be assigned (i.e. on the left-hand
             side of the = operator).

             NOTE: If you attempt to 'FIX' a REAL number that holds a value  that
                   cannot  be  held  in an INTEGER (-32768 to +32767) the INTEGER
                   returned will be ZERO.


 The  remaining functions all return a REAL value. They will not be recognized in
 an integer expression; if for example you need the square root  of  an  INTEGER,
 use FIX(SQR(A)) to tell the compiler that the word SQR is a REAL operator.


 SQR(A)      Returns  the  square  root of the operand, which may be of any type,
             the appropriate conversion being performed automatically.


 INT(A)      Returns the nearest integer smaller than the  operand,  which  again
             may  be  of  any  type  (but it is somewhat pointless using anything
             other than a REAL). Note that the function returns  a  REAL  integer
             value.


 FLOAT(A)    Converts the operand to the nearest REAL, allowing a BYTE or INTEGER
             sub-expression of a REAL expression  to  be  evaluated  as  BYTE  or
             INTEGER  before conversion to REAL. If FLOAT were not used then each
             BYTE  or  INTEGER  term  would  be  converted  to  REAL  as  it   is
             encountered, which results in extra code and slower processing. This
             function is complementary to FIX, described above.


 NOTE:  All  functions  must  form  part  of  a  data  assignment  or  evaluation
        expression in order to be applied. Functions are not commands! i.e.:


        CHAR1=SHIFT(CHAR2,3);
        CHAR=SWAP(CHAR);
        INT1=INTEGER(BYTE2);
        IF SHIFT(CHAR1,-4) <> SWAP(CHAR) THEN ...

       are all valid ... whilst:

        SHIFT(INT3,-5);
        SWAP(CHAR3);
        INTEGER(BYTE6)

       are not permitted

9.06.00  ADVANCED PROGRAMMING STRUCTURES

 The  following  sections  are  designed  to  serve  as  a  guide to the powerful
 constructions permitted in PL/9.

 The topics covered will assume that you already have a good understanding of the
 topics covered in the preceeding sections.


9.06.01  CUSTOM FUNCTIONS (ENDPROC and RETURN)

 The  built-in  set  of PL/9 functions described in the preceeding section can be
 added  to  at  will,  by  constructing  library  procedures  to  perform  useful
 functions.  For  example,  although  there  is  no ABS function in PL/9, one can
 easily be written - this one takes an INTEGER operand and returns  its  absolute
 value:


 0001 PROCEDURE ABS(INTEGER OPERAND);
 0002    IF OPERAND<0 THEN OPERAND=-OPERAND;
 0003 ENDPROC OPERAND;


 Line 3 is the standard construct for creating a function. Any PL/9 procedure can
 return a value and thereby become a function; all that is  needed  is  to  state
 after the ENDPROC the value or expression that is to be returned as the value of
 the function.


 Another useful function is ROUND, which takes a REAL  operand  and  returns  the
 nearest REAL integer (as distinct from INTEGER):


 0001 PROCEDURE ROUND(REAL OPERAND);
 0002 ENDPROC REAL INT(OPERAND+0.5);


 Note  the  use  of  ENDPROC  REAL  to  tell the compiler what data type is to be
 returned from the function. If the REAL were omitted then the  result  would  be
 returned  as an INTEGER. PL/9 will choose between BYTE and INTEGER when deciding
 what type to return; where the returned value is ambiguous it  is  necessary  to
 specify BYTE, INTEGER or REAL to force the desired type.

 The  general  rule to follow when returning values from a procedure is to ALWAYS
 specify the data  type  (BYTE,  INTEGER)  if  the  expression  is  logically  or
 mathematically  complicated  or  involves  more  than  one  data type. When REAL
 numbers are involved it is best to specify REAL in all cases.


 In  the  Language Reference Manual, under GEN, can be found another example of a
 function, this one being a random number generator.

 The SCIPACK.LIB file contains several useful scientific functions  that  operate
 in much the same way as SQR; try writing programs that test these functions. See
 how complex an expression you can write (it  can  carry  on  from  one  line  to
 another) and compare your result with what BASIC or a calculator gives.


9.06.01  CUSTOM FUNCTIONS (ENDPROC and RETURN)  (continued)

 Passed  variables  MUST  always  be  declared  in  the  same  order with a comma
 separating each item. If a variable is used as a pointer it must be declared  as
 such  in  the function and assigned as such in the procedure that is calling the
 function.

 For example:

    PROCEDURE FUNCTION(REAL .POINTER, R1):INTEGER I, BYTE B;
       .
    ENDPROC REAL R1;


    PROCEDURE FUNCTION_CALL:REAL TABLE(10), ODATA, IDATA:INTEGER COUNT: BYTE CHAR;

       ODATA=FUNCTION(.TABLE(2), IDATA, COUNT, CHAR);

    ENDPROC;


 There are a few points to keep in mind when you are writing function procedures:

 (1) All variables are passed to the function on the  stack.  You  may  therefore
     pass  as  many parameters to the function as your application requires. When
     the function procedure terminates the  stack  will  be  cleaned  up  by  the
     calling   procedure.   This  facilitates  the  use  of  RETURN  in  function
     procedures.

 (2) The value returned by a function procedure will be returned in 'B' if it  is
     a BYTE, 'D' if it is an INTEGER and in 'D' and 'X' if it is a REAL. Only one
     variable may be returned in this manner. If you need to return more than one
     item you must do it via GLOBAL or AT variables.

 (3) Since the value returned by a function is returned via registers (i.e. it is
     NOT on the stack) the value does not  have  to  be  used,  i.e.  it  may  be
     ignored.

 (4) Multiple  function  constructions  are  permitted provided that the function
     that uses another function is passed the correct data size.

 (5) You can force the size of the returned variable in the procedure declaration
     by  declaring  the  size  of the variable you wish to return WITHOUT a name,
     e.g.

     PROCEDURE FUNCTION(REAL NUM):INTEGER I:REAL;
                                            ----    This  forces the procedure to
                                                    return a REAL sized variable.

     This is particularly useful in recursive procedures.


 There  are  many  examples of function procedures throughout this section and in
 section eight. The Language Reference Manual also describes the use of RETURN in
 the  context  of  function procedures where it may be used to not only terminate
 the procedure early but also return a value in much the same way as ENDPROC.


9.06.02  VECTORS AND DATA TABLES

 The name given to a  multiple-element,  single  dimension  (length),  read-write
 variable  is  a  vector.  Some programmers prefer to call read only vectors data
 tables or data lists. Whenever we are referring to 'read-only' data we will  use
 the term 'data table' and whenever we are referring to 'read-write' VARIABLES we
 will use the term 'vector to help  differentiate  between  the  two  distinctly'
 different uses of vectors.

 All of the examples so far that have used variables have taken the variable name
 to represent a single unit of storage, whether it be BYTE, INTEGER or  REAL.  It
 is  frequently  useful  to be able to regard a variable name as referring to not
 one but several units of storage. For example, the word "HELP" could  be  stored
 in  the  four  BYTE  variables  LETTER1  through LETTER4, but this would be very
 clumsy when it came to printing the word  on  the  terminal.  It  is  much  more
 convenient  to use a single variable, say WORD, known to comprise (in this case)
 four elements each of size BYTE, where the first element contains the letter  H,
 the  second E and so on. Likewise, a REAL variable could contain twelve floating
 point values, each one being a measured value for one of the  twelve  months  in
 the year.

 If  you  are  familiar  with BASIC you will no doubt have used Arrays; these are
 essentially the same thing. Vectors in PL/9 can be of any length  but  may  only
 have  one  dimension.  This  means  that there is no direct way of, for example,
 representing a video display as a single BYTE variable  having  24  rows  by  80
 columns;  instead you must visualise it as a long vector of 1920 elements, where
 each row starts immediately after the one preceeding it. This  in  fact  is  the
 usual  distinction  between the terms Vector and Array; the latter may have more
 than one dimension.

 Some examples of declaring and using vectors will be presented  after  the  next
 section, since in PL/9 vectors and pointers are often closely associated. In the
 mean time, here are some points worth noting about vectors:


 1. The  elements  of a vector are numbered from zero upwards. If you are a BASIC
    programmer you will no doubt be used to array elements  being  numbered  from
    one  upwards; most BASIC dialects however allow you to use the zeroth element
    giving you one more element than you DIMensioned. PL/9 vectors  are  numbered
    from zero and the total number of elements available is what you specified in
    the variable declaration.

    Thus the declaration TABLE(3) gives you a  three  element  read-write  vector
    with each element numbered as:

                 TABLE(0)                                  TABLE(1)
                 TABLE(1)     .......... NOT ..........    TABLE(2)
                 TABLE(2)                                  TABLE(3)


 2. Expressions involving vectors can  be  as  complicated  as  you  choose.  For
    example, X=A(2-B(C*ABS(D/55))+ROUND(SQR(E*99.23))) is perfectly acceptable to
    PL/9, if that's what your application needs.


 3. The  zeroth  element  of  a  vector  is  equivalent  to  the  same   variable
    un-subscripted.  For  example,  VECTOR, VECTOR(0) and VECTOR((((0)))) are all
    equivalent and will result in the same code being generated.


9.06.03  POINTERS

 So far, the variables used in the examples have been simply places in which data
 is  kept,  with  vectors  introduced  in  the  last  section as multiple-element
 versions of the same. When a variable is used as a parameter of a  procedure,  a
 copy of the variable is passed. The actual location of the original is not known
 to the procedure called - it has no use for this knowledge anyway.

 Suppose however that the procedure has the job of processing a large quantity of
 data.  In  this  case,  not just one value but many may have to be passed to and
 from the calling program. Since only one value can be directly returned  from  a
 procedure,  what  needs  to  be  passed to the procedure is not the data itself,
 rather the address of the data, so the procedure can work on it.

 There are two ways in which parameters can be passed  to  procedures,  known  as
Passing  by  Value  and Passing by Address. In the former case, a copy of the
 original variable, or a constant value, is passed to the  procedure,  which  may
 then do what it pleases with the parameter without affecting the original. Where
 a parameter is passed by address, however, the compiler works out the address of
 the  variable  (which  may be an element of a vector) and passes this address to
 the procedure. The procedure now has access to the original copy of the variable
 and  may alter it at will. The address that has been passed is termed a "Pointer
 to" the variable.

 A pointer, then, contains the address of some data. Since the 6809 has a  16-bit
 address bus, all pointers must be 16 bits, the size of an INTEGER. This does not
 mean that all pointers are INTEGERs, however, as will shortly be  explained.  It
 can, however, always be held in an INTEGER variable whether the item to which it
 points is a single BYTE, INTEGER or REAL variable or a vector of BYTEs, INTEGERs
 or  REALs.  Once  a pointer has been generated it behaves in the same way as any
 other INTEGER quantity as far as arithmetic operations ON THE POINTER ITSELF are
 concerned. Pointers may be added, subtracted, multiplied or divided; PL/9 is not
 concerned whether the operations make sense.

 Consider the function of the PRINT routine in the IOSUBS library. In most of the
 examples  so far, PRINT has been followed by an ASCII string in quotation marks,
 as in PRINT("HELLO"). What happens here is that the characters H E  L  L  O  are
 placed  in  memory  by the compiler and terminated by a null. The address of the
 first of these characters (the H) is used as the parameter to be  passed.  PRINT
 now knows where the data can be found.

 Inside the PRINT procedure, the passed parameter is declared as follows:

    PROCEDURE PRINT (BYTE .STRING):

 What  the dot in front of STRING tells the compiler is that the passed parameter
 is a pointer to a sequence of BYTE values. STRING(0) (or just plain  STRING)  is
 the  first  item,  the  "H". STRING(1) is the "E", and so on. In addition to the
 original string we have a two-byte pointer residing on the stack,  acting  as  a
 "window"  to  the message string but also posessed of some particular proporties
 of its own. It is the things that you can do with a pointer, as distinct to what
 you  can  do  with  the  data  it  points  to,  that makes life interesting (and
 sometimes complicated).


 Section  7.03.04  of  the  Language  Reference  Manual also covers this topic in
 detail.


9.06.03  POINTERS  (continued)

THE USE OF POINTERS

 It's  difficult to give a short, concise example of the use of pointers in PL/9.
 Either the example is trivial or the result unreadable.  Over-use  of  pointers,
 indeed,  can  result  in  a program becoming very confusing to the eye. Pointers
 should be used where they confer a definite advantage in code size or speed  and
 otherwise  omitted.  There's no need to get worried about not using a particular
 language feature; as you become more experienced the  applications  will  become
 obvious.

 It  might  help  at  this  point  to  draw  a distinction between a pointer to a
 variable, frequently generated as a parameter of  a  procedure,  and  a  pointer
 declared  as  "BYTE  (or  INTEGER or REAL) .POINTER". In the former case, we are
 computing an address, that of the variable that follows the dot. A  string  such
 as "HELLO" implies such a computed address. Once the address has been generated,
 it can be passed to a procedure or assigned to  a  variable.  The  latter  case,
 however,  creates a two-byte storage element whose job it is to hold the address
 of some object, such as the computed address just mentioned.

 In the particular case of the procedure call PRINT "HELLO", the address  of  the
 quoted  string  is  pushed onto the stack prior to the subroutine call to PRINT,
 thereby creating the necessary two-byte storage element. This storage has a name
 inside  PRINT,  namely  .STRING.  At  the  point the PRINT procedure is entered,
 .STRING contains the address of the 'H' in HELLO, but there is nothing immutable
 about  this  address  and no reason why the programmer should not alter it. Once
 PRINT has done its job the storage used by .STRING will  be  recovered  and  its
 contents lost.

 As an extension to the automatic pointers generated in this way, PL/9 allows you
 to declare your own pointers. These start  life  uninitialised,  just  like  any
 other  variables,  but  unlike  simple variables have two values associated with
 them. The first is the address they contain and the second  the  value  at  that
 address,  which  might  be  a  BYTE, INTEGER or REAL value. The pointer might be
 regarded as a "window" to some data. It is important to realise  that  the  type
 (BYTE,  INTEGER  or REAL) of the pointer decides how the compiler will interpret
 what it sees through the window.

 To summarise, then, there is no distinction between  a  pointer  declared  as  a
 parameter  passed  to  a  procedure  and  one  declared  in  a  global  or local
 declaration, except that the former is initialised by the procedure call  itself
 and the latter must be given a value explicitly.

 The  following  program  is  as  much an example of where not to use pointers as
 where to use them. It's significant that only one pointer  is  declared  in  the
 main  program.  Because of the way the program data is structured, however, this
 one pointer is essential to the correct operation of the program.

 The requirement is for a single buffer (data table) to hold the names  and  bank
 balances  of a number of hypothetical customers. In a practical example, further
 information such as dates of birth, addresses and so forth  might  be  included,
 but  this only adds complication here. Rather than keep separate tables for each
 of these items it has been decided to hold all the  information  in  one  table,
 with  the name of each customer followed by his or her bank balance. Many Pascal
 and C compilers have the ability to handle this  kind  of  data  as  records  or
 structures, but PL/9 programmers have to do without such luxuries. The key point
 is that the data table is a mixture of BYTE strings and REAL variables.


9.06.03  POINTERS  (continued)

 0001 /* POINTER EXAMPLE */
 0002
 0003 GLOBAL
 0004    INTEGER NAMES(10):   /* Pointers to records */
 0005    BYTE BUFFER(200);   /* A good-sized buffer */
 0006
 0007 INCLUDE IOSUBS;
 0008 INCLUDE STRSUBS;
 0009 INCLUDE REALCON;
 0010
 0011 PROCEDURE GET_INTEGER(BYTE .PTR): INTEGER N;
 0012    N=0;
 0013    WHILE PTR>='0 .AND PTR<='9
 0014    BEGIN
 0015       N=N*10+PTR-'0;
 0016       .PTR=.PTR+1;
 0017    END;
 0018 ENDPROC N;
 0019
 0020 PROCEDURE POINTER_DEMO:
 0021    BYTE SIZE, COUNT:
 0022    INTEGER BPTR, NAME:
 0023    REAL .AMOUNT:   /* This is the what the fuss is about */
 0024    BYTE BUF(81);
 0025
 0026    BPTR=.BUFFER;
 0027    PRINT "\N\NHow many customers? ";
 0028    SIZE=GET_INTEGER(INPUT(.BUF,5));
 0029
 0030    COUNT=0;
 0031    REPEAT
 0032       PRINT "\NCustomer ";
 0033       PRINTINT COUNT+1;
 0034       PRINT "'s Name? ";
 0035       NAMES(COUNT)=STRCOPY(BPTR,INPUT(.BUF,80));
 0036       BPTR=BPTR+STRLEN(BPTR)+5;
 0037       COUNT=COUNT+1;
 0038    UNTIL COUNT=SIZE;
 0039
 0040    CRLF;
 0041    COUNT=0;
 0042    REPEAT
 0043       NAME=NAMES(COUNT);
 0044       CRLF;
 0045       PRINT NAME;
 0046       PRINT "'s balance? ";
 0047       .AMOUNT=NAME+STRLEN(NAME)+1;
 0048       AMOUNT=ASCBIN(INPUT(.BUF,10));
 0049       COUNT=COUNT+1;
 0050    UNTIL COUNT=SIZE;
 0051


9.06.03  POINTERS  (continued)

 0052    PRINT "\N\NBalance Summary:\N================\N";
 0053    COUNT=0;
 0054    REPEAT
 0055       NAME=NAMES(COUNT);
 0056       CRLF;
 0057       STRCAT(STRCOPY(.BUF,NAME),"                    ");
 0058       BUF(20)=0;
 0059       PRINT .BUF;
 0060       .AMOUNT=NAME+STRLEN(NAME)+1;
 0061       PRINT ASCII(AMOUNT,.BUF);
 0062       COUNT=COUNT+1;
 0063    UNTIL COUNT=SIZE;


 This  program  illustrates  a  number of useful techniques apart from the use of
 pointers. Starting at the top:

 Line 4 declares an array of integers, to contain the addresses of the  start  of
 each  of the name and bank balance records. (Note that no reference has yet been
 made to pointers.) Since this is only an example, only  ten  records  have  been
 allowed for. Line 5 declares the buffer that will hold all the records.

 Next  we  have some included procedures, in order to get the functions that will
 be used by the program.

 The procedure GET_INTEGER scans a buffer whose address is given and converts the
 number  in the buffer into an INTEGER, stopping when the first non-decimal digit
 is found. Note the use of .PTR to scan along the buffer.

 The main program, starting at line 20, first declares  some  working  variables,
 among  which  is the REAL pointer .AMOUNT, whose job it will be to point to REAL
 numbers in the data table. The variables BPTR  and  NAME  also  hold  addresses;
 they, however, interpret these addresses as INTEGER data.

 The  program  gets  under  way  in  line  26 by setting BPTR to the start of the
 buffer. BPTR marks the end of the part of the buffer currently occupied by data.
 It  could  have  been  declared as BYTE .BPTR, making it a pointer, but since in
 this program it never has to act as a window to data there's really no  need  to
 treat it specially.

 Lines  27-28 establish how many records are to be kept. Line 28 is an example of
 a procedure call within a call; INPUT returns a value of a type  appropriate  to
 use  as  a parameter to GET_INTEGER. (If you have difficulty in working out what
 such a construct is doing, work from the inside out.)

 Lines 30-38 get the customer names. Line 35 is of  note,  being  another  nested
 procedure  call.  STRCOPY  requires  two  parameters;  the  first is BPTR, which
 establishes where the data should go, while the second is the buffer  BUF  whose
 address  is  returned by INPUT after it has been filled with characters. STRCOPY
 itself returns its first parameter, the address to which the input data has just
 been  copied;  this address is placed in the integer array. Line 36 updates BPTR
 to account for the name entered (not forgetting the terminating null)  and  four
 bytes  for the as-yet unknown bank balance. If this isn't clear, try running the
 program and draw a diagram of the memory as you go.


9.06.03  POINTERS  (continued)

 Lines  40-50  get  the bank balance for each of the customers. Now we get to the
 important bit, being lines 47-48. NAME has already been set (line 43) to contain
 the address of the customer being dealt with. In line 47 the address of the four
 bytes reserved for the bank balance is computed and placed in  .AMOUNT.  Instead
 of  being  just  four BYTES of memory it is now a REAL number, visible through a
 window set up for the purpose. Line 48 gets a number  and  stores  it,  via  the
 window,  into the data table. We have achieved the feat of storing a REAL number
 in a BYTE vector without PL/9 even noticing!

 The  rest of the program prints a summary of the stored data, just to prove it's
 all there. Line 57 copies a name into BUF and tacks 20 spaces on the  end;  line
 58  truncates  the result to 20 characters in all, to preserve column alignment.
 The code in lines 57-59 could have been reduced to a single expression with  the
 help  of  the LEFT routine in the BASIC string function library; you are left to
 figure out how. Once again, the .AMOUNT pointer is called to service,  in  lines
 60-61.


9.06.03  POINTERS  (continued)

MORE OF THE SAME ...

 You  should  by  now  have  some  idea  of  the applications of pointers, and in
 particular how to use a vector of INTEGERs  in  conjunction  with  pointers.  To
 provide  a few more hints, suppose we were to use PL/9 to write a PL/9 compiler.
 In fact, PL/9 is written in assembly language, for speed and  compactness.  Most
 languages  of  this  type  are  written  in  themselves  these days, but none is
 efficient enough to do PL/9 in 16k bytes! One of the ways to save memory  is  to
 look  closely  at the way the symbol table is organized. There are six different
 symbol types in PL/9, viz. constants (and ATs,  which  share  the  same  table),
 local  variables, global variables, data statements, procedures and labels. Each
 of these types needs tables for the name strings, the values  of  the  variables
 and their sizes (BYTE, INTEGER or REAL). Six symbol types times three items make
 18 tables in all.

 There are a number of ways of maintaining  tables,  depending  whether  you  are
 after speed or compactness. (You obviously want both, but life was never as easy
 as that.) The textbooks recommend you to use hash-coded addressing,  for  speed,
 but this method requires fixed-size tables. How big should each table be? If you
 allow for 400 global variables and 200 constants, someone is bound to want  them
 the  other  way round; you've then got to patch your compiler to accommodate the
 change.

 The most memory-efficient method is to  make  each  table  no  bigger  than  its
 contents.  Let's  look  at part of our symbol table during compilation, with the
 addresses of the start of each table:

    482C     MESSAGE_1                          Data names
             MESSAGE_2
             POWERS_OF_10
             LOG_COEFFICIENTS
    485E     8016                               Data addresses
             803F
             814D
             81B7
    4866     0             (BYTE)               Data sizes
             0             (BYTE)
             1             (INTEGER)
             2             (REAL)
    4A6A     INPUT                              Procedure names
             CRLF
             PRINT
    4A7B     937C                               Procedure addresses
             9445
             9458
    4A81     1             (INTEGER)            Procedure sizes
             0             (BYTE)
             0             (BYTE)

 There's no  unused  space  anywhere  in  this  arrangement;  each  table  starts
 immediately  after  the previous. If another DATA variable is added to the above
 table, its name goes in at 485E and all the tables from that point up are  moved
 up  (in memory) a distance that depends on the length of the name. Likewise, the
 address of the DATA goes in at the end of its table and the size at the  end  of
 its.  Each  time  new symbols are added, the higher tables are shifted up and as
 compilation proceeds the symbol table steadily grows.


9.06.03  POINTERS  (continued)

 How can this structure be coded in PL/9? Since none of the table sizes are known
 at  the  start,  it's  no good declaring 18 tables as global variables. Instead,
 we'll have to allocate a suitably large area  of  memory  for  the  largest  the
 combined table will ever grow, as a single vector:

    GLOBAL BYTE SYMBOL_TABLE(3000);

 Next  we  have to have some means of establishing the start of each table at any
 time. What we need is a BYTE vector that starts at the base of the  data  names,
 an  INTEGER vector located at the base of the data addresses, and so on. This is
 where pointers come in. In  the  example  PRINT("HELLO"),  the  unnamed  message
 string  "HELLO"  suddenly  takes on an identity as a result of being passed to a
 procedure. In the same way, we can allocate names to particular sections of  our
 symbol table as and when we choose.

 To  do this, we have to declare pointers for each of the 18 tables needed. Using
 for simplicity just the six above, the global declaration becomes

    GLOBAL
       BYTE    .DATA_NAMES:
       INTEGER .DATA_ADDRESSES:
       BYTE    .DATA_SIZES:
       BYTE    .PROCEDURE_NAMES:
       INTEGER .PROCEDURE_ADDRESSES:
       BYTE    .PROCEDURE_SIZES:
       BYTE    SYMBOL_TABLE(3000);

 Each of the variables with a dot in front of the name is a pointer, and holds an
 address, whether it is  declared  as  a  BYTE  or  an  INTEGER.  No  values  are
 associated  with  the  pointers  yet,  so we must first set the pointers to some
 initial value. Because the tables are all initially empty, all of  the  pointers
 can  be  set  to  the  same  value, namely the address of the start of the table
 itself:

    .DATA_NAMES=.SYMBOL_TABLE;
    .DATA_ADDRESSES=.SYMBOL_TABLE;
    .DATA_SIZES=.SYMBOL_TABLE;
    .PROCEDURE_NAMES=.SYMBOL_TABLE;
    .PROCEDURE_ADDRESSES=.SYMBOL_TABLE;
    .PROCEDURE_SIZES=.SYMBOL_TABLE;

 The  dots  in  front  of the pointers are saying "set the pointer to the address
 given by..." rather than "set the data I'm pointing at to...". The dot in  front
 of SYMBOL_TABLE does not make it too a pointer, it just means "the address of".

 Now  we  have  a  mixture of BYTE and INTEGER pointers, all pointing to the same
 place, namely the start of the symbol table. What happens when  the  first  data
 symbol  comes along? As an example, suppose the program counter is at $9A82 when
 the following line is encountered:

    BYTE MESSAGE "Hello World\n";

 We have three pieces of information here for  inclusion  in  the  symbol  table.
 Firstly,  the  data  size  is  BYTE.  Secondly, the address of the data is 9A82.
 Thirdly, its name consists of 8  characters,  viz.  the  string  MESSAGE  and  a
 terminating null.


9.06.03  POINTERS  (continued)

 Let's  first  put  the symbol name into the table. We have to make a space eight
 characters in size for the name, which means all the other  tables  have  to  be
 moved.  Moving  the  data  in these tables is half of the operation, and doesn't
 require any comment from me; the other half is moving the pointers, as follows:

    .DATA_ADDRESSES=.DATA_ADDRESSES+8;
    .DATA_SIZES=.DATA_SIZES+8;
    .PROCEDURE_NAMES=.PROCEDURE_NAMES+8;
    .PROCEDURE_ADDRESSES=.PROCEDURE_ADDRESSES+8;
    .PROCEDURE_SIZES=.PROCEDURE_SIZES+8;

 Note  that  once again these operations do not relate to the data in the tables,
 only to the values of the pointers themselves. Once this operation is done,  the
 characters of the symbol name can be copied into the space created in the symbol
 table. In the same way, the address of the data and its size can  be  placed  in
 their  respective  tables  once room has been made for them. Lastly it is a good
 idea to keep a record of how many symbols of the type have been encountered;  we
 can use variables such as DATA_COUNT and PROCEDURE_COUNT for this.

 Once a symbol table has been created, it can  be  used.  When  the  compiler  is
 scanning  a line and comes across the name MESSAGE, it searches its symbol table
 for the name. A count is kept of how many names it has to skip before MESSAGE is
 found;  this  is the index of the symbol. A procedure that does this might be as
 follows:

    PROCEDURE SEARCH(BYTE .TABLE,.NAME,MAX);
       INDEX=0;
       WHILE INDEX<MAX
       BEGIN
          IF STRCMP(.TABLE,.NAME)=0 THEN RETURN;
          .TABLE=.TABLE+STRLEN(.TABLE);
          INDEX=INDEX+1;
       END;
       INDEX=-1;
    ENDPROC;

 This  procedure  requires  three  parameters,  viz.  a  pointer  to  the name in
 question, another pointer to the table to be searched, and the number of entries
 in  the  table.  It  uses  two  functions from the string library, STRCMP, which
 compares two strings, and STRLEN, which measures a string. Every time a name  is
 found that is not the one wanted, the pointer TABLE is moved to the start of the
 next name and the index is bumped. If no name is found that matches, the special
 value -1 is returned, otherwise the routine returns the index.

 Now  we  have  to  construct  a mechanism for searching up to six different name
 tables, until the symbol name is found:

    PROCEDURE LOOK_FOR_DATA_NAME(BYTE .NAME);
       SEARCH(.NAME,.DATA_NAMES,DATA_COUNT);
       IF INDEX=-1 THEN RETURN FALSE;
       ADDRESS=DATA_ADDRESSES(INDEX);
       SIZE=DATA_SIZES(INDEX);
    ENDPROC TRUE;


9.06.03  POINTERS  (continued)

    PROCEDURE LOOK_FOR_PROCEDURE_NAME(BYTE .NAME);
       SEARCH(.NAME,.PROCEDURE_NAMES,PROCEDURE_COUNT);
       IF INDEX=-1 THEN RETURN FALSE;
       ADDRESS=PROCEDURE_ADDRESSES(INDEX);
       SIZE=PROCEDURE_SIZES(INDEX);
    ENDPROC TRUE;

 Note  how  the pointers can be indexed just like any vector. This is in fact the
 only way to implement tables of mixed data sizes; declare the whole lot as  BYTE
 and  make  part  of  the table into something else using pointers of appropriate
 size.

 Each of the the above procedures searches a particular table for the name; if it
 finds it then the corresponding address and size are extracted from their tables
 and the value TRUE is returned. A simple structure combines them:

    REPEAT
       IF LOOK_FOR_DATA_NAME THEN BREAK;
       IF LOOK_FOR_PROCEDURE_NAME THEN BREAK;
       ERROR("UNDEFINED SYMBOL");
       BREAK;
    FOREVER;

 The  program  works  its  way through the various name tables until it finds the
 synbol in question, then breaks out of the dummy loop. If no table contains  the
 name  an error message is printed. Note that this is a somewhat unusual use of a
 REPEAT...FOREVER construct; it is however quite an efficient way  of  doing  the
 job.

 The examples and discussion above have tried to convey the concept of a variable
 whose address can be altered at will and that gives the flexibility to mix  data
 types  in  the same area of storage. This is the essential property of pointers;
 only practice can take you on from here.


9.06.04  USING VECTORS

 The next examples illustrate the use of vectors. The aim of the first program is
 to prompt for a line of input then print out the line backwards:


 0001 INCLUDE IOSUBS;
 0002
 0003 PROCEDURE REVERSE:
 0004    BYTE IN, OUT, INBUF(81), OUTBUF(81);
 0005
 0006    PRINT("TYPE ANY LINE - \N\N");
 0007    INPUT(.INBUF,80);
 0008
 0009    IN=0;
 0010    WHILE INBUF(IN)<>0 IN=IN+1;
 0011
 0012    OUT=0;
 0013    WHILE IN>0
 0014    BEGIN
 0015       IN=IN-1;
 0016       OUTBUF(OUT)=INBUF(IN);
 0017       OUT=OUT+1;
 0018     END;
 0019    OUTBUF(OUT)=0;
 0020
 0021    CRLF;
 0022    PRINT(.OUTBUF);


 In line 4, the variable declaration includes two vectors INBUF and OUTBUF,  each
 of  which  comprises  81 elements, numbered 0-80. They will be used to hold text
 strings of up to 80 characters; the extra 81st element is to hold the null  that
 always terminates a string.

 Line 6 prompts for input and gives two new-lines. Line 7 is a call to a  library
 routine  in  IOSUBS.LIB  whose job it is to get an edited line of input from the
 terminal and put it into the buffer whose  address  is  supplied  as  the  first
 parameter.  The  second  parameter  is  the  maximum  length of the string to be
 accepted; INPUT will refuse to put anything in the buffer  beyond  this  length.
 The terminating null is assumed not to be part of the string; the maximum string
 length in this case is therefore 80, not 81. You could of course tell  INPUT  to
 accept only 20 or 40 characters, but if you specified 120 then you would stand a
 risk of causing the program to bomb. PL/9 does not report errors of  this  kind,
 it  being  assumed  that  you  know what you are doing when you specify a vector
 element beyond its declared range.

 Line 7 then is an example of a "pointer to" a variable,  indicated  by  the  dot
 before  INBUF.  You  are free to use either a dot or an ampersand (e.g. &INBUF),
 whichever you prefer; the dot is borrowed from PL/M and the ampersand from C. In
 this  case,  it  is the address of INBUF that gets passed to INPUT, allowing the
 routine to modify the original variable. Passing by value  would  in  this  case
 make  no  sense;  we are not interested in the original contents of INBUF and in
 any case only one byte would be passed, the contents of INBUF(0).


9.06.04  USING VECTORS  (continued)

 Lines 9-10 search the typed line for a null, i.e. find the end  of  the  string.
 This  is in fact the job done by STRLEN, one of the routines in STRSUBS.LIB. You
 could have INCLUDEd this library file then typed IN=STRLEN(.INBUF) in  place  of
 lines  9-10,  at  the cost of a lot of un-needed routines being included in your
 program. It's up to you to  weigh  the  advantages  or  otherwise  of  including
 library files rather than putting the equivalent code into your programs.

 Lines  12-19  copy  the  contents  of  INBUF into OUTBUF, starting with the last
 character if this is non-null. Note that if a null  line  has  been  typed,  the
 WHILE  statement  will ensure that nothing gets copied. OUTBUF is finally itself
 terminated with a null, then lines 21-22 print the reversed line.


 Although the example works perfectly satisfactorily, suppose it was necessary to
 frequently reverse text strings? You could of course duplicate the body  of  the
 routine  every  time  it  were needed; alternatively it could be made a function
 subroutine, as in the next example:


 0001 INCLUDE IOSUBS;
 0002
 0003 PROCEDURE REVERSE (BYTE .INBUF, .OUTBUF):
 0004    BYTE IN, OUT;
 0005
 0006    IN=0;
 0007    WHILE INBUF(IN)<>0 IN=IN+1;
 0008
 0009    OUT=0;
 0010    WHILE IN>0
 0011    BEGIN
 0012       IN=IN-1;
 0013       OUTBUF(OUT)=INBUF(IN);
 0014       OUT=OUT+1;
 0015    END;
 0016    OUTBUF(OUT)=0;
 0017
 0018 ENDPROC .OUTBUF;
 0019
 0020 PROCEDURE TEST: BYTE INBUF(81), OUTBUF(81);
 0021
 0022    PRINT("TYPE ANY LINE - \N\N");
 0023    INPUT(.INBUF,80);
 0024    CRLF;
 0025    PRINT(REVERSE(.INBUF,.OUTBUF));


 Lines 3-18 now comprise  a  function  subroutine  that  requires  as  parameters
 "pointers  to" (the address of) two buffers. Note that the length of the buffers
 is not specified since they have  been  declared  elsewhere.  The  body  of  the
 procedure  is  the same as before, with the two index variables IN and OUT being
 declared in line 4. Line 18 contains a device for assigning a  useful  value  to
 the  function.  There  is  no  need actually to return a value from the function
 since OUTBUF already contains the effect of reversing whatever was  supplied  in
 INBUF.  The reason for returning a pointer to OUTBUF is so that the construct in
 line 25 will work. PRINT requires as its operand the address of (i.e. a  pointer
 to)  whatever  is to be printed; if REVERSE then returns the appropriate pointer
 then the call to PRINT can include that to REVERSE, which can in some cases save
 a good deal of code.

9.06.04  USING VECTORS  (continued)

 This technique can be taken one stage further;  try  deleting  lines  23-25  and
 replacing them with


        PRINT(REVERSE(INPUT(.INBUF,80),.OUTBUF));


 and see the effect this has on the running of the program. Note that PRINT still
 only has the one parameter passed to it, but that in this case the call to INPUT
 is made as the first parameter of REVERSE. The reason why  this  works  is  that
 INPUT returns the address of the buffer it was supplied with, in the same way as
 REVERSE does.


 The next example introduces a slightly different kind of vector:


 0001 INCLUDE IOSUBS;
 0002 INCLUDE REALCON;
 0003 INCLUDE PRNUM;
 0004
 0005 PROCEDURE AVERAGE (REAL .LIST: BYTE ITEMS):
 0006    REAL  SUM:  BYTE  N;
 0007
 0008    SUM=0;  N=0;
 0009    REPEAT
 0010       SUM=SUM+LIST(N);
 0011       N=N+1;
 0012    UNTIL N=ITEMS;
 0013
 0014 ENDPROC REAL SUM/ITEMS;
 0015
 0016
 0017 REAL DATA_LIST
 0018    1.543,
 0019    102.73,
 0020    72.911,
 0021    20.005,
 0022    6.9876,
 0023    39.6821,
 0024    16,
 0025    83.5,
 0026    55.02,
 0027    9.9999;
 0028
 0029 PROCEDURE  TEST;
 0030
 0031    PRINT("\NTHE AVERAGE IS ");
 0032    PRNUM(AVERAGE(.DATA_LIST,10));


 Lines  1-3  call  in the necessary INCLUDEd files (if you've cheated and skipped
 pages of this guide then you'll have to go  back  to  find  out  how  to  create
 PRNUM.LIB).  Lines  5-14  are  a  function  called  AVERAGE,  that  requires two
 arguments, viz. firstly the address of a list of REAL values  and  secondly  the
 number  of items in the list. The second argument is of type BYTE, implying that
 there will never be more than 127 items. The function sums the items in the list
 then  returns  the  total divided by the number of items. Note the expression in
 line 10; the term LIST(N) means "the Nth item in the vector LIST".
9.06.04  USING VECTORS  (continued)

 Lines 17-27 are an example of a data declaration, corresponding roughly  to  the
 DATA  statement  in  BASIC.  Data  in  PL/9 can, like much else, be either BYTE,
 INTEGER or REAL and must  always  be  declared  outside  procedures.  The  items
 specified  are  converted into the appropriate type and placed into the program.
 This example is, as its name suggests, a data list of ten  items,  each  one  of
 which  is  a  REAL  constant. Data statements can be regarded as declarations of
 read-only variables, since PL/9 will refuse to compile a construct that attempts
 to assign a value to a data element.

 The  main program in the previous example starts at line 29. Line 32 is the meat
 of the example; it first calls AVERAGE, passing  the  address  of  the  list  of
 numbers  and  how  many  there are. Since AVERAGE returns a REAL value (line 14)
 this is of the right type to be handed to PRNUM for printing.

 Now for a word about a special kind of "pointer to" data.  In  the  examples  so
 far,  text  strings  have  been printed using the statement PRINT("STRING"). The
 examples that follow illustrate more uses of text strings:


 0001 PROCEDURE DEMO1;
 0002    PRINT("TEST STRING\N");

 0001 PROCEDURE DEMO2: INTEGER MESSAGE;
 0002    MESSAGE="TEST STRING\N";
 0003    PRINT(MESSAGE);

 0001 BYTE MESSAGE "TEST STRING\N";
 0002
 0003 PROCEDURE DEMO3;
 0004    PRINT(.MESSAGE);

 0001 BYTE MESSAGE "TEST STRING\N";
 0002
 0003 PROCEDURE DEMO4: INTEGER MESSAGE;
 0004    MESSAGE=.MESSAGE;
 0005    PRINT(MESSAGE);


 NOTE: In each of the last two examples above the message data string is declared
       outside of the procedures. This is a requirement of PL/9.  All  read  only
       data,  whether  it  is  a  data  table,  or  a message string that will be
       'pointed to'  MUST  be  declared  outside of all procedures and before the
       procedures they are used in.

 All of the examples do the same job, that is print  the  message  "TEST  STRING"
 followed  by  a new line, but illustrate four different methods of achieving the
 same end. Which should be used depends entirely on the program being written and
 the  preferences  of  the  programmer,  but  as a general rule, if the same text
 string is to be used more than once in a program then  you  will  save  code  by
 declaring  the  string  as  a  data  statement  (third and fourth examples) then
 referring to it via a "pointer to" the data. Declaring an INTEGER variable  then
 using  it  to hold a "pointer to" data as in the second and fourth examples, may
 be useful if different strings are to be used in the same way.

 If you wish to include double quotes in a string, use the following construct:

    PRINT("STATE ""MARRIED"" OR ""SINGLE""");

 Which will print STATE "MARRIED" OR "SINGLE"
9.06.05  COMBINING FUNCTIONS, VECTORS, AND POINTERS TO DATA

 The  following  example  illustrates  how  functions,  vectors  of  strings  and
 "pointers to" data can be combined to produce routines that  can,  for  example,
 generate  one  of various messages depending on the value of an index. The value
 of the index in turn is calculated by comparing input data against a table. This
 type  of construction can greatly simplify I/O handling in many control programs
 as a series of  simple  and  easily  modified  tables  can  replace  what  would
 otherwise  amount  to  several  pages  of  IF...THEN...ELSE or IF...CASE control
 arguments.


 0001 INCLUDE IOSUBS;
 0002
 0003 CONSTANT ESCAPE=$1B,BELL=$07,_SPACE=$20,_RETURN=$0D;
 0004
 0005 BYTE INPUTT "ABCDEFG";
 0006
 0007 BYTE MESSAGE "HELLO                 ",    /* A */
 0008              "HELLO AND GOOD MORNING",    /* B */
 0009              "GOODNIGHT             ",    /* C */
 0010              "GOODBYE               ",    /* D */
 0011              "WHAT TIME IS IT?      ",    /* E */
 0012              "I'M TIRED             ",    /* F */
 0013              "ISN'T THIS SILLY!     ";    /* G */
 0014
 0015 PROCEDURE MESSAGE_OUT(BYTE INDEX);
 0016    PUTCHAR(_RETURN);
 0017    PRINT(.MESSAGE(INDEX*23));
 0018    PRINT("\N\N");
 0019 ENDPROC;
 0020
 0021 PROCEDURE LOOK_UP:BYTE INDEX,CHAR;
 0022
 0023 START:
 0024    PRINT("GIVE ME A CHARACTER BETWEEN 'A' and 'G'\N\N?");
 0025    CHAR=GETCHAR;
 0026    INDEX=0;
 0027
 0028    REPEAT
 0029      IF INPUTT(INDEX)=CHAR
 0030         THEN BEGIN
 0031              MESSAGE_OUT(INDEX);
 0032              BREAK;
 0033              END;
 0034      INDEX=INDEX+1;
 0035    UNTIL INDEX=7;
 0036
 0037    IF CHAR <> ESCAPE .AND INDEX=7
 0038       THEN BEGIN
 0039            PRINT("\N\N\BINVALID INPUT!  TRY AGAIN.\N\N");
 0040            GOTO START;
 0041            END;
 0042
 0043    IF CHAR <> ESCAPE .AND INDEX < 7
 0044       THEN BEGIN
 0045            PRINT("\N\NHIT ESCAPE TO EXIT OR ");
 0046            GOTO START;
 0047            END;


9.06.05  COMBINING FUNCTIONS, VECTORS AND POINTERS TO DATA  (continued)

 Line  1 contains the now familiar inclusion of the PL/9 I/O subroutines library.
 Line 2 uses the keyword CONSTANT to define one keyboard code (ESCAPE) and  three
 video  display  codes  (BELL, SPACE, and RETURN). Note the use of the underscore
 character before 'SPACE' and 'RETURN'. This is essential because SPACE is also a
 function  in  the  IOSUBS  library and RETURN is a reserved word in PL/9.

 If you are ever in doubt as to what procedure names and constant names are  used
 in  the INCLUDEd files simply make a dummy file with just the include statements
 and compile the output to your printer. All  of  the  procedure  names  will  be
 listed as will the CONSTANTs, GLOBALs and AT declarations. Local variable  names
 are ignored.

 Line  5  contains the data table which the incoming data is going to be compared
 against. Lines 7 through 13 contains another data table, this time it contains a
 series of strings rather than just a single byte as did the first data table. As
 the comments indicate the order of the message declarations corresponds  to  the
 order  of  the input data declaration. This is done so that the same index value
 can be used to access both tables. You will note something special about the way
 the  message  strings  have  been  declared.  EVERY  message is exactly the same
 length. If the length of the message does not equal the LONGEST message used  it
 is padded with spaces to make it EXACTLY the same length.

THIS  PADDING  IS ESSENTIALif you wish to use message strings organized in data
 tables. As you will see in a moment we must calculate the starting  position  of
 subsequent strings based on the value of the index and the length of the string.
 If all the strings are not EXACTLY the same length  the  calculations  will  not
 produce the desired results.

 Lines  15  through  19 form a function called 'MESSAGE_OUT'. The purpose of this
 function is to print out the message string related to the value INDEX.  If  you
 recall the discussion in the previous section (BYTE INDEX) on line 15 tells PL/9
 to expect a value to be passed to this procedure from the  calling  program,  in
 this  case  it will be the number of the message string to be printed, with zero
 being the first message, one the second and so on.  Line  16  sends  a  carriage
 return  (but  no  line  feed)  out to the video display in order to position the
 cursor at the beginning of the line. This has the  effect  of  whatever  follows
 being  printed  over the existing information on the video display. The heart of
 this function is on line 17 where we calculate the value of the  message  string
 pointer  based  on  the value of INDEX. This calculation is '.MESSAGE(INDEX*23)'
 which simply stated means calculate the pointer to MESSAGE as being the value of
 the  base  MESSAGE  offset  by  the value of INDEX multiplied by 23. What is the
 significance of '23' you may ask. If you count up the number  of  characters  in
 the message strings you will find that each of them has 22 characters. PL/9 will
 automatically add a null to the end of each message string making the total  23.
 Thus  we calculate the value of the first message pointer as MESSAGE(0*23) which
 gives us MESSAGE, the base address, as multiplying a number by zero  will  yield
 zero.  The  second  message pointer is calculated as MESSAGE(1*23) or MESSAGE+23
 BYTES or 23 BYTES up from  the  base  address.  The  third  message  pointer  is
 calculated  as  MESSAGE(2*23) or MESSAGE+46 BYTES and so on. Once the address of
 the string has been calculated PRINT can handle it in the usual manner.

 Lines 21 to 35 form the body of the main program with lines 37  to  47  being  a
 mechanism to provide an error message or provide a re-start prompt. Line 23 is a
 label for the subsequent GOTO statement and serves no other purpose. Line 24  is
 just  a prompt to make the program more understandable when you try it out. Line
 25 uses GETCHAR in IOSUBS to get a character from the keyboard and  assigns  the
 keyboard  code  to a variable called CHAR. Line 26 initializes our INDEX counter
 to 0, a very important step.

9.06.05  COMBINING FUNCTIONS, VECTORS AND POINTERS TO DATA  (continued)

 Lines 28 through 34 are a REPEAT loop that will increment the value of INDEX  on
 each  pass  until  INDEX  reaches  7  at  which time the loop will automatically
 terminate. As we have seven items in our table referenced as item zero  to  item
 six a value of seven means we have passed the limit of our tables.

 Line  29  seeks to match the incoming keyboard character stored in CHAR with the
 INPUT table, offset (subscripted) by the current value of INDEX.  On  the  first
 iteration  of  the  loop  CHAR will be compared with 'A', on the second 'B', the
 third 'C' and so on. When a match is  found  the  THEN  BEGIN  block  (lines  30
 through 33) will be executed. Line 31 uses the function MESSAGE_OUT to print the
 message string associated with the  current  INDEX  value.  Line  32  tells  the
 program  to  terminate  the REPEAT loop immediately, i.e. begin execution at the
 line  following  line  35.  This is done to preserve the value of INDEX should a
 match be found, as well as prevent the continued execution  of  what  could,  in
 reality,  be  a  REPEAT UNTIL INDEX=247 loop. Obviously if we find a match in an
 early iteration there is no point in continuing to execute the loop  because  it
 will  be  impossible  for  another  match  to  be found. BREAK provides a simple
 mechanism for immediate termination of the loop when we find a match.

 Lines 37 through 41 handle the cases where a match of the incoming character  is
 not  found  as  indicated by an INDEX value of 7. Lines 43 through 47 handle the
 cases where a match was found. If the incoming character is equal to the  ESCAPE
 key lines 37 through 47 will be bypassed and the program terminated.

 This  program  will  run  properly within the PL/9 tracer. Just type it in. Type
 'T<CR>' (TRACE). If no error messages are posted type 'G<CR>'  (GO)  to  execute
 the program.


 Several  other examples of programs of this type will be presented in subsequent
 sections. We will be placing heavy emphasis on the use  of  data  tables  as  an
 elegant,  easy  to  modify  and code efficient mechanism for writing I/O related
 control programs, primarily because this technique is seldom discussed in  books
 on other languages.

 A good understanding of FUNCTIONS, POINTERS TO DATA, and VECTORS will enable you
 write extremely complex I/O related programs that are not only  easy  to  modify
 but will execute at incredible speeds.


9.06.06  TWO DIMENSIONAL ARRAYS

 PL/9  is  not  a  very  high-level  language,  being  somewhere  below  most   C
 implementations  as  far  as  complexity  is  concerned.  It  makes  up  for any
 limitation in this respect by efficient coding and speed of  compilation.  Since
 it  is  quite close to assembly language in allowing you to do most anything you
 want to, without putting arbitrary barriers in your way, the data types it  uses
 are themselves quite close to those used by assembler programs.

 There  is no direct mechanism for supporting two or more dimensional arrays. The
 main reason for this is that to provide such facilities would increase the  size
 of  the  compiler  by a large amount, reducing the size of file it could handle.
 Fortunately, there are other methods  available  of  handling  multi-dimensional
 data.

 The  only  compound  data  type allowed by PL/9 is a vector, that is a number of
 like-sized (BYTE, INTEGER or REAL) items adjacent to each other in memory.  This
 is  similar  to using a table in an assembler program, where the base address is
 known and any item can be reached by indexing  from  that  point.  PL/9  doesn't
 actually remember the size of the table and allows you to refer, for example, to
 the 25th element in a vector of only 21 elements. Whether this makes sense is up
 to you, just as it is in assembly language.


 A  two-dimensional  array of M rows each having N elements can be represented as
 follows:

    Row  0     Element  0 1 2 3 .........N-1
    Row  1     Element  0 1 2 3 .........N-1
    Row  2     Element  0 1 2 3 .........N-1
    .
    .
    .
    Row M-1    Element  0 1 2 3 .........N-1


 In memory, the second row immediately follows the first, and so  on.  To  access
 the  4th  element of row 7 you must add 7*N+4 to the address of the start of the
 array. For PL/9 to be able to do this it would have to remember the value  of  N
 given  in the variable declaration. This would not in itself be difficult but to
 handle the arrays themselves would add considerably to  the  complexity  of  the
 compiler,   without   improving  the  efficiency  of  the  generated  code.  The
 calculation above might just as well be done by the application program, using a
 vector  large  enough  to  hold  the  entire  array. To read the data at the 4th
 element of row 7 you would then use:

    DATA=ARRAY(7*N+4);

 and to write to the 9th element of row 15:

    ARRAY(15*N+9)=DATA;


9.06.06  TWO DIMENSIONAL ARRAYS  (continued)

 A technique that can be used to simulate an array of any number of dimensions is
 to  declare  two  procedures,  one  for  writing  to the array and the other for
 reading from it. Suppose we have a video display, organised as an  array  of  24
 rows by 80 columns:


    CONSTANT WIDTH=80;

    AT $E800: BYTE SCREEN(1920);

    PROCEDURE SCREEN_READ(BYTE ROW, COLUMN);
    ENDPROC SCREEN(ROW*WIDTH+COLUMN);

    PROCEDURE SCREEN_WRITE(BYTE ROW, COLUMN, DATA);
       SCREEN(ROW*WIDTH+COLUMN)=DATA;
    ENDPROC;


 To read the character at the 5th column of the 18th row, use

    DATA = SCREEN_READ(18,5);

 and to write an X to the 39th column of the 3rd row, use

    SCREEN_WRITE(3,39,'X);

 which  is  syntactically fairly close to having two-dimensional array capability
 built into the language.


9.07.00  BITWISE OPERATIONS

 This section will attempt to  cover  these  ones  complement  bit  functions  in
 considerable  depth.  As  many  users  of PL/9 may only have had experience with
 BASIC these bit  operators  require  a  fair  degree  of  explanation.  Assembly
 language  programmers  on  the other hand will probably find that only a cursory
 reading of this section is necessary.

 Regardless  of  your level of programming experience in another language you are
 encouraged to read this section, particularly the latter part  of  it  where  we
 demonstrate  some  of  the powerful constructions that PL/9 provides through the
 use of data tables.

 The  BIT  functions  AND,  OR  and EOR (XOR) work interchangeably with BYTEs and
 INTEGER values. They will not operate on REALs.

 The PL/9 bit manipulation functions NOT, SWAP, and SHIFT will also only  operate
 on BYTEs and INTEGERs. SWAP and SHIFT were discussed in section 9.05.14 and will
 not be discussed here. As NOT is closely related to AND, OR,  and  EOR  we  have
 decided to include it in this section

 As far as PL/9 is concerned the numbers being evaluated in a bitwise  expression
 are  nothing  more  than  a series of 1's and 0's. The sign and magnitude of the
 number has no bearing on the results. This means that these functions will  find
 99% of their application in bit-manipulation of I/O signals.


 A  few  words  of  caution  are in order when working with a mixture of BYTE and
 INTEGER values:

 1. If you perform a bitwise  operation  of  an  INTEGER  variable  with  a  BYTE
    variable only the lower 8-bits of the INTEGER variable will be operated on.

 2. If  you  perform  a  bitwise  operation  of  an  INTEGER variable with a BYTE
    CONSTANT the BYTE will be converted to an INTEGER with the top 8-bits set  to
    zero before the bitwise operation is carried out over the entire  16-bits  of
    the INTEGER variable.

 3. If  you  operate on a BYTE variable with an INTEGER variable or CONSTANT only
    the lower 8-bits of the INTEGER will be used in the  operation  as  would  be
    expected.

 Generally speaking there  will  seldom  be  any  necessity  to  perform  bitwise
 operations  between  a  mixture  of  INTEGERS  and BYTEs. These points are being
 raised primarily to warn you of what is likely to happen if an accidental mix of
 INTEGERs and BYTEs occurs in a bitwise operation.


 The convention we use to define bit positions is  the  Motorola  standard.  This
 standard  starts  with the least significant bit of a 16-bit variable defined as
 bit 0 (b0) and the most significant bit defined at  bit  15  (b15).  This  would
 obviously  result in the most significant bit of an 8-bit variable being defined
 as bit 7 (b7).


 DON'T  EVER CONSIDER THE LEAST SIGNIFICANT BIT AS BIT 1 AND THE MOST SIGNIFICANT
 BIT AS BIT 16. PL/9 will produce completely erroneous results if you  use  these
 references as subscripts.


9.07.01  BITWISE AND

 The simplest way to remember what this function does is:


          * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
          *                                                           *
          *  ANDing a bit with a '1' has no effect on the bit whilst  *
          *  ANDing a bit with a '0 will clear the bit to logical 0.  *
          *                                                           *
          * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Thus the bitwise AND is commonly used for two purposes:

 1. To clear every bit in a binary input pattern (BYTE or INTEGER) except the one
    you are interested in to a zero. The BYTE or INTEGER is then  tested  for  an
    equal  or  not equal to zero condition to reveal the state of the bit you are
    interested in. For example:

       CHAR=$A5;
       IF CHAR AND $01 <> 0
          THEN ...

    Here we AND a 'copy' of CHAR as part of an IF...THEN expression. The original
    value  of  CHAR  is preserved so further evaluations may be performed. ANDing
    $A5 (1010 0101) with $01 (0000 0001) will result in $01 (0000 0001) as bit b0
    in  the  operand  (CHAR)  was set. Thus the expression '<> 0' will be true in
    this instance and the THEN statement executed.  If  we  were  looking  for  a
    logical  zero  in bit b0 we would have made the expression 'IF CHAR AND $01 =
    0".

 2. To clear a particular bit in in a binary output pattern (BYTE or INTEGER)  to
    a  zero as part of an I/O signal response whilst preserving all other bits in
    the binary pattern.  For example:

       OUTPORT=OUTPORT AND $FFFE;

    Where OUTPORT is a 16-bit output port defined by an 'AT' statement earlier in
    the program. First the output port is read, the binary pattern of the PORT is
    then ANDed with $FFFE (1111 1111 1111 1110) which will clear bit b0 but leave
    all  the other bits intact. The resulting binary pattern is then written back
    out to the port.


9.07.02  BITWISE OR

 The simplest way to remember what this function does is:


          * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
          *                                                           *
          *   ORing a bit with a '0' has no effect on the bit whilst  *
          *   ORing a bit with a '1' will set the bit to logical 1.   *
          *                                                           *
          * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 Bitwise OR is commonly used for two purposes:

 1. To set   every bit in a binary input pattern (BYTE or INTEGER) except the one
    you are interested in to a one.  The BYTE or INTEGER is then  tested  for  an
    equal  or not equal to $FFFF condition to reveal the state of the bit you are
    interested in. For example:

       CHAR=$A5;
       IF CHAR OR $FE = $FF
          THEN ...

    Here we OR a 'copy' of CHAR as part of an IF...THEN expression. The  original
    value of CHAR is preserved so further evaluations may be performed. ORing $A5
    (1010 0101) with $FE (1111 1110) will result in $FF (1111 1111) as bit b0  in
    the  operand (CHAR) was set. Thus the expression '= $FF' will be true in this
    instance and the THEN statement executed. If we were looking  for  a  logical
    zero in bit b0 we would have made the expression 'IF CHAR OR $FE <> $FF'.

 2. To  set a particular bit in in a binary output pattern (BYTE or INTEGER) to a
    one as part of an I/O signal response whilst preserving all other bits in the
    binary pattern. For example:

       OUTPORT=OUTPORT OR $0001;

    First the output port is read, the binary pattern of the  PORT  is  then  ORd
    with  $0001  (0000  0000  0000 0001) which will set bit b0 to logical one but
    leave all the other bits intact. The resulting binary pattern is then written
    back out to the port.


9.07.03  BITWISE EOR (XOR)

 The simplest way to remember what this function does is:


          * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
          *                                                           *
          *      EORing two identical bits will yield '0' whilst      *
          *      EORing two different bits will yield '1'.            *
          *                                                           *
          * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 The most common use of EOR is to compare two bit patterns. If the  patterns  are
 different  the  result  will not be equal to zero, if the patterns are identical
 the result will be equal to zero.  For example:


    CHAR1=$A5F0;
    CHAR2=$A5F0;

    IF CHAR1 EOR CHAR2 = 0
       THEN...


 In  this  example  we  set two INTEGERS equal to $A5F0 (1010 0101 1111 0000) and
 performed and EOR operation as part of an IF STATEMENT. The EOR of two identical
 binary  patterns  will  yield  zero  and  therefore  the  THEN statement will be
 executed.

 This particular statement could just as easily been stated as:

    IF CHAR1 = CHAR2
       THEN...

 If this is so then EOR does not seem to serve much purpose I hear you say.  This
 is  true  if  this  is  the  only  comparison we are doing. EOR would be used to
 greater advantage in a construction such as the following example:

    TESTCHAR=CHAR1 EOR CHAR2;
    IF TESTCHAR <> 0
       THEN ...

 where the THEN statement begins a series of AND operations on TESTCHAR  to  find
 out which bit(s) are ones and takes the appropriate action.


9.07.04  BITWISE NOT

 This  function simply INVERTS every bit in the operand. In other words every bit
 that was a one will become a zero and every bit that was a zero  will  become  a
 one.  For example:


    CHAR=$5AF0;

    CHAR=NOT(CHAR);


 would  result  in CHAR starting off as $5AF0 (0101 1010 1111 0000) and ending up
 as $A50F (1010 0101 0000 1111).


 NOT can also be used as part of a more complicated expression, viz:


    IF NOT(CHAR1) <> NOT(CHAR2)
       THEN CHAR2=NOT(CHAR4);

    IF NOT(CHAR1 AND CHAR2) <> 0
       THEN ...


 It  is important to note that NOT requires the use of parentheses ( ) to enclose
 the body of the BYTE, INTEGER or expression.


9.07.05  BIT ORIENTED TERMINAL I/O

 As with most other features of PL/9 one of the best ways to learn how to use the
 bitwise functions described in the previous section would be to  try  them  out.
 Since  it  would  be  impractical  for  many  people  to  construct the hardware
 necessary to provide 16-bit I/O simulation we have developed a couple  of  small
 PL/9  programs  that  enable you to perform bit oriented I/O simulations through
 your keyboard and video display.

 The following are part of the BITIO  library  which  was  described  in  section
 eight.  We  have included it in this section as it is a very good example of how
 table oriented bit operations make a program very compact and efficient.

 0001 INCLUDE IOSUBS;
 0002
 0003 CONSTANT ZERO=$30,ONE=$31,_SPACE=$20;
 0004
 0005 INTEGER MASK $0001,$0002,$0004,$0008,$0010,$0020,$0040,$0080,
 0006              $0100,$0200,$0400,$0800,$1000,$2000,$4000,$8000;
 0007
 0008 /*
 0009    THIS PROCEDURE PROMPTS THE OPERATOR FOR A 16-BIT BINARY PATTERN OF
 0010    0's  AND  1's AND RETURNS THE VALUE AS AN UNSIGNED INTEGER IN 'D'.
 0011    INPUT OF ANY CHARACTER OTHER THAN A ONE OR A ZERO WILL BE IGNORED.
 0013 */
 0012
 0014 PROCEDURE BITSIN:
 0015    BYTE COUNT,INCHAR:
 0016    INTEGER BITCHAR;
 0017
 0018    COUNT=16;
 0019    BITCHAR=0;
 0020    REPEAT
 0021       REPEAT
 0022         INCHAR=GETCHAR_NOECHO;
 0023       UNTIL INCHAR = ZERO  .OR  INCHAR = ONE;
 0024
 0025       PUTCHAR(INCHAR); /* ECHO 0/1 */
 0026          IF INCHAR=ONE THEN BITCHAR=BITCHAR OR MASK(COUNT-1);
 0027       PUTCHAR(_SPACE);
 0028       COUNT=COUNT-1;
 0029   UNTIL COUNT=0;
 0030 ENDPROC BITCHAR;
 0031
 0032 /*
 0033   THIS PROCEDURE DOES THE EXACT OPPOSITE OF THE  ABOVE  PROCEDURE.  IT
 0034   TAKES  THE  INTEGER  IT  IS PASSED ON THE STACK AND DUMPS THE BINARY
 0035   PATTERN OUT TO THE SYSTEM CONSOLE AS A SERIES OF ONES AND ZEROS.
 0036 */
 0037 PROCEDURE BITSOUT(INTEGER BITCHAR):
 0038   BYTE COUNT;
 0039
 0040   COUNT=16;
 0041   REPEAT
 0042      IF BITCHAR AND MASK(COUNT-1) = 0
 0043         THEN PUTCHAR(ZERO);
 0044         ELSE PUTCHAR(ONE);
 0045      PUTCHAR(_SPACE);
 0046      COUNT=COUNT-1;
 0047    UNTIL COUNT=0;
 0048 ENDPROC;
9.07.05  BIT ORIENTED TERMINAL I/O  (continued)

 The library module just created has two very useful routines that are structured
 as FUNCTIONS. The first is BITSIN, which, as its name suggests, gets a series of
 bits  from  the  keyboard,  the  second is BITSOUT, which, as its name suggests,
 sends a bit pattern out to the video display. Both routines  are  structured  to
 provide 16-bit I/O facilities.

 If you desire to convert these routines to work with 8-bit data you may do so by
 restructuring the data table called MASK to be BYTEs rather  than  INTEGERs  and
 changing  the count values in lines 18 and 40 to 8 instead of 16; it's as simple
 as that.


BITSIN

 Is  a  procedure  that  returns  a  16-bit  variable called BITCHAR. This 16-bit
 variable is returned in the 6809's 'D'  accumulator  by  the  statement  ENDPROC
 BITCHAR.  This  structure  enables  you  to  treat  BITCHAR  as though it were a
 variable in the program that wishes to use it. BITSIN starts off by initializing
 a  variable  called  COUNT  to 16 in line 18, and BITCHAR to $0000 in line 19. A
 repeat loop is then entered at line 20. This repeat loop terminates on  line  29
 when  COUNT  reaches 0. Just after we enter the first REPEAT loop we immediately
 enter another one on line 21. This REPEAT loop terminates  on  line  23  when  a
 variable  called  INCHAR  is  equal  to the constant 'ZERO' which was previously
 declared as being equal to ASCII 0 ($30) or equal to another constant ONE, ASCII
 1  ($31). Within this inner REPEAT loop we use the GETCHAR_NOECHO routine in the
 IOSUBS library to get a character from the keyboard in line 22 and assign it  to
 INCHAR.  If  you typed in a '1' or a '0' you will escape the loop at line 23. If
 any other key is pressed the program will return to line 21 and get another key.
 This process will continue indefinately until you hit a one or a zero.

 At  line  25  we use PUTCHAR to echo INCHAR back to the video display so you see
 the 1 or the 0 that you typed. Line 26 is the heart of this routine. At lines  5
 and  6  we  declared  a  read-only  data  table  called  MASK which comprises 16
 INTEGERS. The elements of this data table are subscripted (0) through (15), with
 0  being  the first item declared. In line 26 we test to see if INCHAR is a one.
 If it is we proceed to perform the following operation with BITCHAR:

    BITCHAR=BITCHAR OR MASK(COUNT-1)

 it will make more sense if we first see what 'MASK(COUNT-1)' is  doing.  On  the
 first iteration of the outer loop the value of COUNT will be 16. COUNT-1 results
 in as subscript of 15 being applied to MASK, i.e 'MASK(15)'.  Therefore  we  are
 accessing  item  15  of  the  data  table called MASK which is $8000. Now we can
 simplify the original expression to:

    BITCHAR=BITCHAR OR $8000

 BITCHAR starts off as $0000 (line 19) therefore this  operation  will  OR  $0000
 with $8000. $8000 is better represented by the bit pattern '1000 0000 0000 0000'
 at this point. The bitwise OR will result in the top bit of BITCHAR being set to
 a logical '1', which represents the one you typed in. If you typed in a zero the
 bitwise OR would not have been performed and therefore this bit would have  been
 left as a zero.


9.07.05  BIT ORIENTED TERMINAL I/O  (continued)

 Line  27 sends a space out to the video display to improve the appearance of the
 input. Line 28 decrements the count value by one. Line 29 tests to  see  if  the
 count  is  zero  yet  and if not returns the program to line 20 which starts the
 process all over again. This will keep repeating until you have input  a  series
 of 16 ones or zeros.

 On  each successive pass BITCHAR will be OR'd with the next lower element of the
 data table 'MASK' if the keyboard character was a one, thus building up a 16-bit
 INTEGER  representation of what you are typing in the variable BITCHAR. When the
 program is completed, signified by COUNT reaching zero, BITCHAR will be returned
 to  whoever  called BITSIN with BITCHAR in the 'D' accumulator for use in either
 an evaluation expression or a data assignment expression.


BITSOUT

 Operates in a manner virtually the exact opposite to BITSIN. BITSOUT is passed a
 16-bit variable on the stack from the  calling  program  and  then  proceeds  to
 output its bit pattern to the video display as as series of ones and zeros.

 Line  40  initializes COUNT to 16. A REPEAT loop is then entered at line 41. The
 repeat loop will terminate at line 47 when COUNT reaches zero. Line 42  in  this
 procedure is similar to line 26 in BITSIN. Again we are accessing the data table
 by subscripting MASK with COUNT-1. On the first pass we will  again  access  the
 last element in the data table, $8000. Thus on the first pass line 42 will be:

    IF BITCHAR AND $8000 = 0

 this operation ANDs a copy of BITCHAR with $8000 (1000 0000 0000 0000)  thus  if
 the  top  bit is set(1) the result will be non-zero, if the top bit is clear (0)
 the result will be zero. If  the  result  is  zero  line  43  will  be  executed
 otherwise  line 44 will be executed. Line 43 sends an ASCII 0 ($30) to the video
 display and line 44 sends an ASCII 1 ($31) to the video display.  Line  45  then
 sends  a  space,  again  to  improve  the  screen  presentation.  COUNT  is then
 decremented and line 47 executed. If COUNT is not  yet  zero  the  program  will
 return  to line 41 and proceed to execute the loop again. Thus on each iteration
 of the loop the next lower element of the data table will be accessed  in  order
 to  acertain  the  status  of  a  particular  bit  in  the  incoming bit pattern
 represented by BITCHAR. As the status is acertained the appropriate  ASCII  code
 will be sent to the video display.


 These two routines should prove to be very useful when developing  bit  oriented
 I/O  routines  as  they  provide  a  simple  mechanism to input bit patterns and
 display the bit patterns produced by your PL/9 procedures during program testing
 and debugging.


9.07.06  AND, OR and EOR DEMONSTRATION PROGRAM

 Once you have got the BITIO library installed on your  working  disk  you  might
 want  to try the following 'tutorial' program which graphically illustrates what
 happens when bit patterns are ANDed, ORd or EORd.


 0001 INCLUDE IOSUBS;
 0002 INCLUDE BITIO;
 0003
 0004 CONSTANT BELL=$07,ESCAPE=$1B;
 0005
 0006 PROCEDURE DELAY:REAL COUNT;
 0007    COUNT=2000;
 0008    REPEAT COUNT=COUNT-1; UNTIL COUNT=0;
 0009 ENDPROC;
 0010


 NOTE: The way we have entered the delay count decrementing routine  on  line  8.
       The reason it was not 'nested' in the usual manner is because this has the
       effect of slowing down a delay routine when inside the PL/9 tracer. If you
       can  get  the  entire  delay count decrementing loop on one line the delay
       routine will run at almost exactly the same speed whether the  program  is
       executing  in  the  PL/9  tracer  or  executing  independently of the PL/9
       tracer. This can be a useful 'trick' to know, make a mental note of it.


 0011 PROCEDURE AND_OR_EOR_DEMO:INTEGER INCHAR1, INCHAR2, OUTCHAR:BYTE OPERATOR;
 0012 START:
 0013    PRINT("\N\N\NGive me a 16-bit sequence of 1's and 0's\N\N");
 0014    INCHAR1=BITSIN;
 0015    DELAY;
 0016
 0017    PRINT("\N\NGive me another 16-bit sequence of 1's and 0's\N\N");
 0018    INCHAR2=BITSIN;
 0019    DELAY;
 0020
 0021    PRINT("\N\N(1) AND, (2) OR, (3) EOR:- 1, 2, or 3? ");
 0022
 0023    REPEAT
 0024       OPERATOR=GETCHAR_NOECHO;
 0025
 0026       IF OPERATOR
 0027          CASE '1 THEN BEGIN
 0028                       OUTCHAR=INCHAR1 AND INCHAR2;
 0029                       BREAK;
 0030                       END;
 0031
 0032          CASE '2 THEN BEGIN
 0033                       OUTCHAR=INCHAR1 OR INCHAR2;
 0034                       BREAK;
 0035                       END;
 0036
 0037          CASE '3 THEN BEGIN
 0038                       OUTCHAR=INCHAR1 EOR INCHAR2;
 0039                       BREAK;
 0040                       END;
 0041    FOREVER;


9.07.06  AND, OR and EOR DEMONSTRATION PROGRAM  (continued)

 0042
 0043    PRINT("\N\NThis number     ");
 0044    BITSOUT(INCHAR1);
 0045    CRLF;
 0046
 0047    IF OPERATOR
 0048       CASE '1 THEN PRINT("AND'd with      ");
 0049       CASE '2 THEN PRINT("OR'd with       ");
 0050       CASE '3 THEN PRINT("EOR'd with      ");
 0051
 0052    BITSOUT(INCHAR2);
 0053    PRINT("\NResults in:     ");
 0054    BITSOUT(OUTCHAR);
 0055    PRINT("\N\N\BHIT ESCAPE TO TERMINATE, ANY OTHER KEY TO CONTINUE! ");
 0056    IF GETCHAR_NOECHO <> ESCAPE
 0057       THEN GOTO START;

 This  program  may be run inside the PL/9 tracer in the usual manner or compiled
 to disk as a command (A:O=ANDORDEM.CMD).

 The program is 'menu' driven and should be self explanatory.
