# GUIDEPT1

> Source: `misc/uncategorized/USERV4_2 - FLEX Software Archive - Program and Support Utilities - Includes GUIDEPT1, GUIDEPT2, GUIDEPT3.zip!USERV4_2.DSK!GUIDEPT1.TXT`  
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


                               PL/9 USERS GUIDE


9.00.01  INTRODUCTION

 This  is a guide to PL/9, aimed at the complete newcomer. As such it is arranged
 as a tutorial not a technical reference. This section of the manual assumes that
 you have at least superficially read the REFERENCE MANUAL.

 Most of the examples in this section are complete programs, which should each be
 tried if you have any doubts about the point under discussion. In order  to  try
 out  the  examples  you  will  need to type them in, using either PL9's built-in
 editor or the editor you are most familiar with. In either case you will need to
 read the Editor Manual, which will tell you how to load, edit and save files and
 the Compiler Manual which will tell you how to compile the resulting program.

 This guide does not present EVERY feature of the language; the  less  important,
 or  seldom  used  features,  are  described  in  the appropriate sections of the
 Language Reference Manual. You are encouraged to read carefully  each  of  these
 sections as you learn about each feature in this guide.


9.01.00  DATA SIZES AND TYPES IN PL/9

 Before we enter the discussion on control structures we  are  going  to  briefly
 describe the numerical quantities that PL/9 can work with.

 PL/9 has been designed to produce object code for the Motorola  MC6809  8/16-bit
 microprocessor  in  real world control applications. The data types PL/9 handles
 have been optimized for this processor in this type of application.


 There are three data sizes and five distinct data types handled by PL/9, viz:

 1. 8-bit signed (twos complement) BYTE in the range of -128 to +127.

 2. 8-bit unsigned (ones complement) BYTE in the range of 0 to +255.

 3. 16-bit signed (twos complement) INTEGER in the range of -32768 to +32767.

 4. 16-bit unsigned (ones complement) INTEGER in the range of 0 to +65,535.

 5. 32-bit floating point REAL in the range  of  +/-1  E-38  to  +/-1  E+38  with
    six or seven decimal digits of accuracy.


 The  unsigned  quantities  have been provided to simplify the bit evaluation and
 manipulation typically required in digital I/O.

 The range of signed quantities available have been selected to meet the  demands
 of  the  majority  of  analogue-digital and digital-analogue work as well as the
 requirements for most numerical control and scientific calculation applications.

 Numerical quantities are  assumed  to  be  SIGNED  DECIMAL  numbers  unless  the
 programmer specifies otherwise.  The  dollar  symbol  ($)  is  used  whenever  a
 quantity  is  specified in hexadecimal form. The apostrophe (') is used whenever
 the quantity is specified an ASCII form. Double quotes (") are used  to  specify
 ASCII data strings.

 The positive (+) and negative (-)  signs  retain  their  conventional  meanings.
 Numbers  are  is implicitly positive and the compiler will reject any attempt to
 use the positive sign in front of a number unless it is part  of  an  arithmetic
 expression and used to mean 'add'.

 In addition a special symbol, the exclamation mark (!), and quantities expressed
 in hexadecimal form ($7E, $FF56, etc.) are used in certain circumstances to tell
 PL/9 that the numbers involved in an expression are to be  treated  as  unsigned
 numbers. More on this later.

 PL/9 was not designed for programmers who write  accounting  packages  and  need
 accuracies  to  1 penny in $999,999,999,999,999.99 and are willing to accept the
 time it takes to calculate quantities to this accuracy. (even if they only  wish
 to add $1.75 and $2.89!)

 In  control  work speed is often essential and the range of numerical quantities
 more often than not limited to values which can be represented by less than  six
 or  seven  digits.  PL/9 has been optimized to produce fast and accurate results
 with numbers of this size.

 More  information  on  this topic will be presented further on in this guide. We
 have decided to discuss program structure in detail before we  enter  a  lengthy
 discussion of PL/9 arithmetic.
9.02.00  PROGRAM STRUCTURE IN PL/9

 PL/9 is a "Procedural" language. This means that a PL/9 program is  composed  of
 blocks  of  code  called Procedures, or Subroutines. The entire structure of the
 program is organized around procedures. In BASIC you would use the GOSUB command
 to cause a particular part of the program to execute and another GOTO to move on
 from there to somewhere else, and so on. In PL/9 (and Pascal or C), on the other
 hand,  you  would  put  each of the functional blocks into its own procedure and
 link them all together with a supervisory main program that calls each one as it
 is needed.

 A  procedure  in  PL/9 is started with the word "PROCEDURE" and usually finishes
 with the word "ENDPROC". The following example introduces some of  the  features
 of the language:


 0001 /* PL/9 INTRODUCTORY EXAMPLE */
 0002
 0003 INCLUDE IOSUBS;
 0004
 0005 PROCEDURE EXAMPLE;
 0006
 0007    PRINT("This is a demonstration program");


 The  example above is a complete program - not perhaps a very useful one but one
 that will actually run and do something. The line numbers and the single  spaces
 that  follow them are supplied by PL/9 when it lists what you typed in - all you
 need to enter is the code  itself.  Line  1  is  a  comment,  not  part  of  the
 executable  program  but  useful  for  helping to improve the readability of the
 program. The comment is started by the /* pair and terminated by  the  */  pair.
 Note  next  that  a  blank  line follows; you can use as many blank lines as you
 wish, to break up the text and again improve readability.

 Next  we  come to "INCLUDE IOSUBS;". It may seem strange to programmers familiar
 with BASIC, but PL/9 has no I/O functions of its  own.  There  is  therefore  no
 PRINT  or INPUT command built in to the language. This might seem something of a
 drawback, but remember that PL/9 is not designed around any particular  hardware
 configuration  and therefore does not make any assumptions about the environment
 the programs it produces will be run in! You may be writing your program to  run
 in  a  washing  machine or a numerically-controlled lathe, in which case the I/O
 requirements will bear little resemblance to the sort  of  routines  that  BASIC
 uses.  This  lack  of  built-in I/O is therefore not necessarily a disadvantage.
 Fortunately, PL/9 is well equipped with facilities for adding suitable  routines
 in  a  way  that  enables  them  to  be  used almost as if they WERE part of the
 language itself.

 The library file IOSUBS.LIB supplied on the PL/9 disc contains a set  of  useful
 procedures  for  getting  characters  to  and  from  a  terminal.  One  of these
 procedures is PRINT, which if passed the address  of  a  string  of  characters,
 terminated  with  a  null,  will  output  the characters one by one to the video
 display. The mechanism for passing the string address (the "parameter") to PRINT
 is  to  enclose  it  in brackets, as shown. PL/9 allows various constructs to be
 used, but the one shown is particularly  suitable  for  character  strings.  The
 string  (everything  inside  the double quotes) is saved as part of the program,
 terminated with the required null, and its address gets passed to PRINT. How  it
 gets onto the VDU screen is up to PRINT, just as in BASIC, only in this case you
 can examine the source of PRINT to find out, if you wish.


9.02.00  PROGRAM STRUCTURE IN PL/9  (continued)

 To  use  any  of  the routines in IOSUBS.LIB the file must be compiled with your
 program. The statement INCLUDE IOSUBS tells PL/9 to temporarily take input  from
 the named file until the file is exhausted. The filename extension, .LIB in this
 case, is assumed to  match  the  filename  extension  established  by  the  PL/9
 configuration  program  'SETPL9'.  INCLUDEd  files  may  themselves have INCLUDE
 statements so that they will individually compile without errors, but if PL/9 is
 already  reading  an  INCLUDEd  file  it  will  ignore  any  such nested INCLUDE
 statements.

 The  next  point  to note here is that all of the code-generating statements end
 with semicolons. The semicolon tells PL/9 that the statement has finished, which
 may  not otherwise be obvious since PL/9 allows you to carry statements from one
 line to another. Comments too may carry from one line  to  another  and  can  be
 inserted  anywhere  that  a  space  would be appropriate (except inside a quoted
 character string).

 Lastly, you should have noticed that the example program, although stated  above
 to  be complete, does not in fact end with an ENDPROC statement. The explanation
 for this is that the main program does not usually  need  an  ENDPROC,  although
 every other procedure does. How does PL/9 know that EXAMPLE is the main program?
 Simple, it's the last  procedure  in  the  program!  Since  every  procedure  or
 variable  must  have been declared before being referenced, there's little point
 in having anything follow the  main  program,  so  it  must  be  the  last.  The
 reference  manual  explains  on  what  occasions  the  main program does need an
 ENDPROC and how to pass parameters to procedures and get values back.

         If the ENDPROC is left off the last procedure in  your  program,
         PL/9  will  put  in  a jump to the FLEX warm start address, thus
         avoiding any danger of the program running away and crashing the
         system. This isABSOLUTELY ESSENTIALwhen using the PL/9 Tracer.

 The  above  example will actually run. First type it in (the editor is described
 in its own manual) then type T to invoke the tracer (which is also described  in
 its  own  manual).  PL/9  will  compile  the program and load it into memory (it
 decides where). You can then run the program by typing G.  If  any  errors  were
 reported  during  compilation  you should return to the editor and correct them.
 NEVER try to run a program with reported errors or you stand a very good  chance
 of losing your program or bombing PL/9, FLEX or even your disc!

 The  example  program  should print its message and return to the tracer command
 level. To run it again type G again, and to return to the  editor  hit  the  ESC
 key. Try experimenting with different messages and with putting \N (new line) at
 various places in the text string.

 OK, so you've now written and tested your first PL/9 program. The PL/9 reference
 manual has a section that describes the various  ways  that  parameters  can  be
 passed  to  and from procedures. Read the PROCEDURE, ENDPROC and RETURN sections
 for further details.

 There is one very important point to note about INCLUDED library functions, this
 is that code will be generated for every function in the library ...

                     EVEN IF YOU ARE NOT USING THE FUNCTION


 If  certain  library functions are not going to be used in the final application
 and you are running out of program memory you  should  make  a  special  library
 module  for  your program that has all of the unused functions omitted. Refer to
 the Library Reference Manual in section eight for further details.
9.02.01  BRANCHING AND LOOPING

 The power of a computer lies in its ability to test a condition and to  take  an
 action  based  upon  the result of the test. Without this ability it would be no
 more than a calculator with some text printing  facilities.  Computer  languages
 have  instructions  that  exploit the machine's ability in a number of different
 ways. PL/9 has several mechanisms for control transfer, each described fully  in
 the  reference  manual.  This tutorial will show the beginner how to use some of
 these powerful facilities, by means of simple examples that should be tried  out
 if they are not COMPLETELY understood.


9.02.02  IF...THEN...ELSE

 The first method of controlling program flow is  the  IF..THEN..ELSE  construct,
 which  tells  the  computer  that  IF  a  condition  is  true THEN do something,
 otherwise do something ELSE. The last part may not  always  be  needed  but  the
 first  part always is. As an example, suppose that you wish to input a character
 from  the  keyboard,  and  print a message to say whether its ASCII code is less
 than decimal 65. The program to do this is as follows:


 0001 INCLUDE IOSUBS;
 0002
 0003 PROCEDURE TEST_KEY;
 0004
 0005    IF GETCHAR < 65 THEN PRINT(" is < decimal 65");
 0006                    ELSE PRINT(" is > = decimal 65");


 This  example  illustrates a number of useful points. Note that the procedure is
 called TEST_KEY. Procedure  and  variable  names  in  PL/9  can  be  up  to  127
 characters  in  length,  may  include  the  letters A-Z, the numbers 0-9 and the
 underscore character (_).Names MUST also start with a letter or underscore.ALL
 characters  are  significant,  unlike some languages where only the first 6 or 8
 are significant.

 Upper case or lower case letters may be used interchangeably, the compiler makes
 no  distinction  between  the  two.  Thus  the  above  procedure  could be named
 test_key, TEST_KEY, Test_Key, TEST_key, test_KEY, etc.; to the compiler they are
 all the same. Keywords and hexadecimal numbers may also be written in lower case
 letters if desired.

 The  library  file  IOSUBS.LIB includes a routine GETCHAR whose job it is to get
 character from the keyboard and return it to the routine or  construction  which
 asked  for  it.  Again it is not necessary to know how this works. The effect is
 that GETCHAR can be used in a program just  as  if  it  were  a  constant  or  a
 variable. In this case it is compared with the decimal value 65, then one of two
 messages is printed, depending upon the typed key.

 The example above shows how spaces can be used to help program readability. PL/9
 allows  you  to  use  as  many spaces as you like as long as they are not in the
 middle of keywords or variable names. They take up virtually no room in  memory,
 since PL/9 uses a space compression technique (as does FLEX when storing them on
 disk) so there is no excuse for not spacing out programs well.  There's  nothing
 like  a  dense  mass  of  code,  with  no  line indenting or blank lines between
 procedures, for making a program unreadable, even by the author!


9.02.03  BEGIN ... END

 In  the  last  example  the  THEN  and ELSE statements were followed by a single
 instruction to the compiler, to print something. Supposing that you wished to do
 several  things  if  the  IF  statement  is true and/or several things if the IF
 statement is not true. You areNOTallowed to make statements like:


    IF X=0
       THEN PRINT("HELLO");
            X=1;
       ELSE PRINT("GOODBYE");
            X=2;


 Nor will PL/9 allow you to make statements like:


    IF X=0
       THEN PRINT("HELLO") X=1;
       ELSE PRINT("GOODBYE") X=2;


 Where more than one action is to be taken if a condition is true  or  false  the
 BEGIN  ...  END pair must be used to tell the compiler where the statement ends.
 The BEGIN ... END pair tells the compiler to treat everything from BEGIN to  END
 as  a  single compound statement. The correct construction of the above examples
 would be:


    IF X=0
       THEN BEGIN
            PRINT("HELLO");
            X=1;
            END;
       ELSE BEGIN
            PRINT("GOODBYE");
            X=2;
            END;


 The  BEGIN  statement  should  not  have  a  terminating  semicolon.   The   END
 statementmusthave a terminating semicolon.


 BEGIN  ...  END  also have another very important part to play in IF..THEN..ELSE
 constructions where nesting occurs, for example:


    IF X=0
       THEN IF Y=0
               THEN IF Z=0
                       THEN A=1;
                       ELSE A=3;


 In  the  above example, as the nesting suggests, the ELSE statement applies only
 to the last IF. This means that the only way A will be made equal to 3 would  be
 if  X=0 and Y=0 and Z is not equal to 0. Supposing you wanted to make A equal to
 5 if X was not equal to zero or 4 if X was equal to 0 but Y was not equal to 0?

9.02.03  BEGIN ... END  (continued)

 Simple, you just add the extra ELSE statements:


    IF X=0
       THEN IF Y=0
               THEN IF Z=0
                       THEN A=1;
                       ELSE A=3;
               ELSE A=4;
       ELSE A=5;


 Now supposing that you only want to make A equal to 5 if X is not equal to 0, or
 make A equal to 1 if X, Y, and Z are equal to  0.  This  time  the  construction
 needs to be expressed in a more complicated fashion as we do not have a matching
 ELSE statement for the 'IF Y=0 THEN' statement or the 'IF Z=0 THEN' statement as
 the following example illustrates.


    IF X=0
       THEN BEGIN
            IF Y=0
               THEN IF Z=0
                       THEN A=1;
            END;
       ELSE A=5;


 Even though the above construction appears  to  be  more  complicated  than  the
 previous  example  it  produces  less  code  as  it  no  longer has the two ELSE
 statements to contend with. The BEGIN ... END pair in this example serve to tell
 the  compiler  treat  everything  from  BEGIN to END as a single statement. This
 provides a simple method of providing an ELSE statement if the first IF fails.

 If you are in any doubt when nesting IF statements put  in  the  BEGIN  ...  END
 pairs.  They  do  not  cause PL/9 to generate any extra code, they only serve to
 prevent the compiler from becoming 'confused' when analysing your constructions.
 For example each of the following examples generates exactly the same code.


 0001 INCLUDE IOSUBS;
 0002
 0003 PROCEDURE IF_TEST:BYTE A,B,C,D;
 0004
 0005    A=0; B=1; C=2; D=3;
 0006
 0007    IF A=0
 0008       THEN BEGIN
 0009            IF B=1
 0010               THEN BEGIN
 0011                    IF C=2
 0012                       THEN BEGIN
 0013                            IF D=3
 0014                               THEN BEGIN
 0015                                    PRINT("HELLO");
 0016                                    END;
 0017                            END;
 0018                    END;
 0019            END;
9.02.03  BEGIN ... END  (continued)


 0001 INCLUDE IOSUBS;
 0002
 0003 PROCEDURE IF_TEST:BYTE A,B,C,D;
 0004
 0005    A=0; B=1; C=2; D=3;
 0006
 0007    IF A=0 THEN IF B=1 THEN IF C=2 THEN IF D=3 THEN PRINT("HELLO");


 To recapitulate the BEGIN ... END pairs are  used  to  tell  the  compiler  that
 multiple  statements  are  being made or that it should be prepared for possible
 further conditional branching later in the construction.

 There are circumstances where the BEGIN ... END pairs are absolutely  necessary.
 These  are generally the constructions where IF...THEN...ELSE nesting occurs and
 the ELSE statements must be matched to the  corresponding  THEN  statement.  For
 example:


    IF A=0
       THEN BEGIN
            IF B=1
               THEN BEGIN
                    IF C=2
                       THEN BEGIN
                            IF D=3
                               THEN BEGIN
                                    PRINT("HELLO");
                                    END;
                            END;
                    END;
               ELSE BEGIN
                    PRINT("HI");
                    END;
            END;
       ELSE BEGIN
            PRINT("HI THERE");
            END;


 Can only be simplified to:


    IF A=0
       THEN BEGIN
            IF B=1
               THEN BEGIN
                    IF C=2 THEN IF D=3 THEN PRINT("HELLO");
                    END;
               ELSE PRINT("HI");
            END;
       ELSE PRINT("HI THERE");


 Again both of the above examples generate the same code.

 Other examples of circumstances where  BEGIN  ...  END  are  necessary  will  be
 described in subsequent sections.
9.02.04  IF...CASE...THEN...ELSE

 There is a second, more complex use of  the  IF  statement,  introduced  by  the
 following example:


 0001 INCLUDE IOSUBS;
 0002
 0003 PROCEDURE TEST_NUMBER;
 0004
 0005    PRINT("TYPE A NUMBER BETWEEN 0 AND 9\N?");
 0006    IF GETCHAR
 0007       CASE '0 THEN PRINT(" ZERO");
 0008       CASE '1 THEN PRINT(" ONE");
 0009       CASE '2 THEN PRINT(" TWO");
 0010       CASE '3 THEN PRINT(" THREE");
 0011       CASE '4 THEN PRINT(" FOUR");
 0012       CASE '5 THEN PRINT(" FIVE");
 0013       CASE '6 THEN PRINT(" SIX");
 0014       CASE '7 THEN PRINT(" SEVEN");
 0015       CASE '8 THEN PRINT(" EIGHT");
 0016       CASE '9 THEN PRINT(" NINE");
 0017
 0018       ELSE PRINT(" IS NOT A NUMBER");


 This program first prints the TYPE A NUMBER message (note the use of \N to cause
 a  new  line). The IF statement waits for you to hit a key. The returned keycode
 result is compared successively with the ASCII codes for  the  numbers  zero  to
 nine; if a match is found the word for that number is then printed. If you typed
 anything else the last line will tell you.


 The  CASE  statement  can be expanded with the BEGIN...END pair as required. For
 example supposing you wanted to perform several operations if the number entered
 was a one:

    CASE '1 THEN BEGIN
                  PRINT(" ONE");
                  .
                  .
                 END;


 If  you  wish to add an extra argument to the CASE statement you MUST enclose it
 within a BEGIN...END pair. For example you cannot say:

    IF NUMBER
       CASE '1 .AND COUNT <10 THEN........;


 but you can say:

    IF NUMBER
       CASE '1 THEN BEGIN
                    IF COUNT <10 THEN........;
                    END;


9.02.05  LOGICAL  .AND   .OR   .EOR

 These  LOGICAL  operators considerably improve the power of the IF...THEN...ELSE
 control statements, and greatly simplify many control arguments.

 PL/9 recognizes two forms of AND, OR and EOR. The first is the LOGICAL  form  in
 which  each  keyword  is  preceeded  by  a  period  (.).  The second is the ones
 complement BIT operators which lack the period.  Understanding  the  differences
 between these two forms is very important if you wish to use them successfully.

 The LOGICAL forms (.AND .OR .EOR) are used to form constructions such as IF X is
 true and Y is true THEN do something. The BIT operators (AND OR EOR) are used to
 set and clear specific bits in a binary pattern of ones and zeros.

 If  you  are  a BASIC programmer you will remember that BASIC uses the same form
 for both logical and bitwise operations. Context and the use of  brackets  tells
 the  BASIC  compiler/interpreter which is which. If you are an assembly language
 programmer the the ones complement bit-wise AND, OR,  and  EOR  (which  will  be
 explained later) are identical to the AND, OR and EOR you are used to.

 Perhaps an example is in order:


 0001 INCLUDE IOSUBS;
 0002
 0003 PROCEDURE LOGICAL_AND_OR_DEMO:
 0004    BYTE CHAR;
 0005
 0006    CHAR=GETCHAR;
 0007    IF CHAR >= 'A .AND CHAR <= 'Z .OR
 0008       CHAR >= 'a .AND CHAR <= 'z
 0009       THEN PRINT(" is accepted\N");
 0010       ELSE PRINT(" is rejected\N");


 The purpose of this routine is to accept only upper and lower case letters  from
 A-Z  and  a-z  from the keyboard and reject all others. If you are familiar with
 the ASCII code tables you will know that there are  several  codes  between  the
 upper case 'Z' and the lower case 'a'.

 Once  again  we  include  IOSUBS.LIB  for  the  useful routines it contains. The
 PROCEDURE declaration this time terminates not in a semicolon but  in  a  colon.
 This  tells PL/9 that the declaration is not yet complete, that there is more to
 come. On the next line is BYTE CHAR,  which  says  "reserve  a  single  byte  of
 storage,  on  the stack, for the exclusive use of this procedure, and call it by
 the name CHAR". The semicolon after that completes the procedure declaration.

 Line 6 uses GETCHAR as though it were a variable, that is it would  appear  that
 we  are  simply  saying  the  variable  CHAR is to be made equal to the variable
 GETCHAR. In fact GETCHAR is a procedure in IOSUBS that gets a keycode  from  the
 keyboard  and  returns  with the code which then may be used as though it were a
 variable and form part of an evaluation  statement  (as  in  the  discussion  of
 IF...THEN...ELSE).  Alternatively  the code GETCHAR returns with may be assigned
 to another variable as we are doing in this example.

 Why should we use GETCHAR any differently here than we did previously I hear you
 ask?  The  answer  is  simple; we wish to evaluate the code that GETCHAR returns
 with several times in order to test it against several conditions.  If  we  used
 GETCHAR  in  place  of  'CHAR'  in  the  'IF...THEN...ELSE' construction in this
 example we would have to provide four different key inputs, clearly not what  we
 want.
9.02.05  LOGICAL  .AND   .OR   .EOR  (continued)

 Line 7 states "If the character stored in CHAR is greater than or equal  to  the
 ASCII code for the letter 'A' AND the character stored in CHAR is less than or
 equal to the ASCII code for the letter 'Z' then PRINT ' is  accepted'".  If  the
 character  fails  this  test it then proceeds to the statement following the .OR
 which means "if the first condition is not met then try the next one...". Line 8
 states  "If  the  character stored in CHAR is greater than or equal to the ASCII
 code for the letter 'a' AND the character stored in CHAR is less than or equal
 to the ASCII code for the letter 'z' then PRINT ' is accepted'".

 Line 10 is what course of action is to be taken if the statement on line  7  AND
 the statement on line 8 fail verify that CHAR is within the specified range, i.e
 to print ' is rejected'.


 Logical  EXCLUSIVE  OR  (.EOR or .XOR) only has a few practical applications and
 was included in the language mainly for completeness. Exclusive OR is a  special
 form  of  OR  that  means  If  condition  1 is true and condition 2 is false OR
 condition 1 is false and  condition  2  is  true  then  do  something.  If  both
 conditions  are  true  or  both  conditions  are  false  the  'ELSE'  action, if
 specified, is taken. For example:


 0001 INCLUDE IOSUBS;
 0002
 0003 PROCEDURE AND_OR_XOR_DEMO:
 0004    BYTE CHAR1,CHAR2;
 0005
 0006    CHAR1=GETCHAR;
 0007    CHAR2=GETCHAR;
 0008
 0009    IF CHAR1 = '1 .EOR CHAR2 = '1
 0010       THEN PRINT(" is accepted");
 0011       ELSE PRINT(" is rejected");


 Again we have the now familiar INCLUDE statement. Line 4 is simply an  expansion
 of  what  we  did in previous example. In this example we are saying reserve two
 bytes of storage, on the stack, for the exclusive use  of  this  procedure,  and
 call one by the name CHAR1 and the other by the name CHAR2". The semicolon after
 that completes the procedure declaration.

 Line  6  gets a character from the keyboard and assigns it to CHAR1. Line 7 does
 exactly the same thing except assigns the keyboard character  to  CHAR2.  As  we
 have  not  assigned  any  limits  to what we are willing to accept as values for
 CHAR1 and CHAR2 any key on the keyboard may be hit and will be accepted  by  the
 program. We'll be showing you how to do  limit  checks  on  incoming  characters
 later on in this guide.

 Line 9 is the exclusive OR evaluation of CHAR1 and CHAR2 and can be read as: "If
 CHAR1 is equal to ASCII 1 AND CHAR2 is not equal to ASCII 1 OR if  CHAR1  is
 not  equal  to ASCII 1 AND CHAR2 is equal to ASCII 1 THEN print ' is accepted'
 otherwise print ' is rejected'".

 What happens in practice is that entry of '01' or '10' will display the  message
 'is accepted', any other input will display the message ' is rejected'.


9.02.05  LOGICAL  .AND   .OR   .EOR  (continued)

 Logical .AND, logical .OR and logical .EOR may be nested to any required  depth.
 Bracketing  of  logical constructions is not permitted however. For example PL/9
 willNOTallow you to generate statements like:


    IF (A=0 .AND B=1 .AND C=3) .OR ((B=1 .AND C=2) .AND (D=4 .OR E=4)) .OR F=5
       THEN PRINT("O.K.");
       ELSE PRINT("NOT O.K.");


 BUT the construction can be  emulated  by  using  a  flag  and  IF...THEN...ELSE
 statements controlled with BEGIN...END pairs, as follows:


    FLAG=0;
    IF A=0
       .AND B=1
       .AND C=3
            THEN FLAG=1;
            ELSE BEGIN
                 IF B=1
                     .AND C=2
                        THEN BEGIN
                             IF D=4
                                .OR E=4
                                    THEN FLAG=1;
                                    ELSE IF F=5
                                            THEN FLAG=1;
                             END;
                        ELSE BEGIN
                             IF F=5 THEN FLAG=1;
                             END;
                 END;

     IF FLAG=1 THEN PRINT("O.K.");
               ELSE PRINT("NOT O.K.");


                                       OR


    FLAG=0;
    IF A=0 .AND B=1 .AND C=3
                         THEN FLAG=1;
    IF B=1 .AND C=2
                THEN IF D=4 .OR E=4
                                THEN FLAG=1;
    IF F=5 THEN FLAG=1;

    IF FLAG=1 THEN PRINT("O.K.");
              ELSE PRINT("NOT O.K.");


 Even  though  the first construction generates more code than the second it will
 execute faster than the second if any of the early conditions are true. This  is
 because  the  structure  of  the second results in the execution of each IF loop
 even if the FLAG was set to 1 by the  previous  IF..THEN  statement.  The  first
 construction  finds  the first available point to set the FLAG and then branches
 over all the remaining statements to the THEN PRINT statement.
9.02.06  WHILE...

 The second method of controlling program flow has to  do  with  loops,  where  a
 sequence  of  actions must be repeated a given number of times. In English, this
 is like saying "WHILE this condition is satisfied, do that". The equivalent PL/9
 construct looks very similar, as in the following example:


 0001 INCLUDE IOSUBS;
 0002
 0003 PROCEDURE WHILE_DEMO:
 0004    BYTE COUNT;
 0005
 0006    COUNT=0;
 0007    WHILE COUNT<10
 0008    BEGIN
 0009       PUTCHAR(COUNT + 'A);
 0010       SPACE(1);
 0011       COUNT=COUNT+1;
 0012    END;


 The purpose of this example is  to  print  out  the  first  10  letters  of  the
 alphabet.  Once again we include IOSUBS.LIB for the useful routines it contains,
 and reserve a single byte of storage on the stack called COUNT.

 Now the main program gets under way. First the variable COUNT is  set  to  zero.
 The  next  line  tests  it  to  see if has a value less than 10. If so, the next
 statement is executed. The "next statement" in this case  starts  with  a  BEGIN
 keyword,  which has the property of turning everything from that point on, up to
 a matching END, into a single compound statement, behaving in every way  like  a
 simple statement such as COUNT=5.

 Initially,  the  value  of COUNT is zero, so the test passes (COUNT is less than
 10). The BEGIN..END compound statement first outputs a character to the VDU. The
 character  is  'constructed' from the addition of the current value of COUNT and
 the ASCII value of the letter 'A' ($41 or decimal 65). Thus a count  of  0  will
 output  an  'A',  a  count of 1 will output a 'B', etc. Line 10 outputs a space,
 line 11 then increments the value of COUNT. The routines used  are  PUTCHAR  and
 SPACE, both part of IOSUBS.LIB. After the BEGIN..END block has been executed the
 computer goes back to the WHILE statement and again tests whether COUNT is  less
 than  10.  This  process  continues until COUNT reaches 10, whereupon the entire
 BEGIN...END block is skipped and the program ends.


 PUTCHAR  is a routine in the IOSUBS library module whose job it is to output one
 ASCII character at a time to the video display.

 SPACE is another useful routine in the IOSUBS library module. This routines  job
 is to output the number of spaces specified by the number in the brackets to the
 video display. Its function is very similar to 'SPC(n)' in BASIC; it  moves  the
 cursor  along  the  video  display a specified number of spaces so that the next
 message will start at a particular position relative to the current position.

 Caution must be observed when using SPACE near the right hand  column  limit  of
 video  displays.  Some  displays generate an automatic carriage return line feed
 the moment something is entered in the last column. Others simply  overtype  the
 last  character  and  leave  the  cursor in the last column. The general rule to
 follow is to treat a display as having  one  column  less  than  stated  in  the
 manufacturers documentation, i.e. 80 columns becomes 79 columns, etc.

9.02.07  REPEAT...UNTIL

 The  WHILE  loop described above tests for the required condition at the head of
 the loop, that is to say before executing the body of the loop. In  cases  where
 the  test  fails  the  first  time, the body of the loop will never be executed.
 Although any kind of loop can be constructed by this means, it is convenient  to
 have  an  alternative  loop  control mechanism equivalent to "REPEAT this action
 UNTIL that condition is satisfied". In  this  case  the  body  of  the  loop  is
 executed  before  testing  for the condition; if the test then fails the loop is
 repeated until the test passes. The PL/9 construct that performs  this  function
 is demonstrated in the following example;


 0001 INCLUDE IOSUBS;
 0002
 0003 PROCEDURE REPEAT_DEMO: BYTE COUNT1, COUNT2;
 0004
 0005    COUNT1=1;
 0006    REPEAT
 0007
 0008       COUNT2=0;
 0009       REPEAT
 0010          PUTCHAR(COUNT1 + '0);
 0011          COUNT2=COUNT2 + 1;
 0012       UNTIL  COUNT2=COUNT1;
 0013
 0014       CRLF;
 0015       COUNT1=COUNT1 + 1;
 0016    UNTIL COUNT1=10;


 This example in fact contains two REPEAT...UNTIL loops, one  inside  the  other.
 Note  the  use  of  indenting and blank lines to present this "nested" structure
 clearly and the extra spaces in the counter incrementing to improve readability.
 Line  3  declares  two  BYTE  variables, COUNT1 and COUNT2; once again these are
 totally private to the procedure they are declared in.

 The  first  REPEAT  uses variable COUNT1, which is initialized to one in line 5.
 The body of the loop (lines 8 through 15)  is  executed,  then  COUNT1  is  then
 compared  with  10.  If it has that value the program is terminated. The body of
 the loop is therefore executed nine times (1 through 9).

 The second REPEAT uses variable COUNT2, initialized to zero in line 8. The  body
 of  the loop (lines 10 and 11) is executed, then COUNT2 is compared with COUNT1.
 The inner loop therefore executes a number of times dependant upon the value  of
 COUNT.  Since  this  increases  every time that the outer loop is completed, the
 number of characters printed on each line increases from one to nine. The actual
 character  printed  is  that obtained by adding COUNT1 to the ASCII value of the
 character zero. After each line of characters has been printed, a  new  line  is
 started by CRLF.


 CRLF is another useful routine in the IOSUBS library. Its job is to send a ASCII
 carriage return (CR) followed by a line feed (LF) to the video display. This has
 the effect of putting the cursor at the beginning of the next line.  PRINT("\N")
 does exactly the same thing but requires a considerable amount of extra code.


9.02.08  FOR...NEXT

 One of the constructs most frequently used in BASIC is the FOR-NEXT  loop.  PL/9
 does not allow this construct, but the REPEAT command can be used to produce the
 same effect. Consider the following:


         BASIC                                 PL/9


    FOR I=1 TO 100 STEP 2                 LOOPVAR=1;
       .                                  REPEAT
       .                                     .
       .                                     .
    NEXT I                                   LOOPVAR=LOOPVAR+2;
                                          UNTIL LOOPVAR>100;


 The two examples have the same effect, viz a loop variable is set to one  and  a
 step  count  to  two.  The  body  of  the loop (represented by the dots) is then
 executed. After that the loop variable is incremented by the step value  and  is
 compared  with  the  terminating value. To ensure that the loop is executed when
 the loop variable equals the terminating value it is necessary to use > for  the
 test,  not  =.  You could alternatively start the loop variable at zero and test
 for equal to the terminating value.


9.02.09  WHY DIDN'T YOU...

 The reason that FOR ... NEXT, counted loops,  bracketed  logical  operators  and
 many  other  constructions  found in other languages are not included in PL/9 is
 very fundamental.

 In  the  introduction  we  mentioned  that  the  programmers  source  file,  the
 co-resident editor-compiler-trace facilities in PL/9 and the program object code
 must all reside in memory together. PL/9 had to be designed to take up as little
 space  as possible. If we started including every possible construction in every
 language we would soon have a compiler that would not allow  you  to  have  much
 more  than  a  30  or 40 line program resident with it. This was clearly not our
 design objective!

 Our design philosophy was that if it  were  possible  to  emulate  constructions
 found in other languages with existing PL/9 facilities we would not include them
 in the product. Adhering to this philosophy not only allows you to have  a  very
 large program resident in memory with PL/9, but also enables the compiler to run
 faster than you might think possible for a product that produces such  efficient
 code.

SO  before  you  jump to the conclusion that PL/9 does not support a particular
 construction which you would like to use remember that you can probably  emulate
 the function using the basic facilities of PL/9.

 Even  though  some  emulations  may  appear  to  be  clumsy  they  will,  in all
 probability, require less memory and will execute faster than  the  construction
 permitted in the original language!


9.03.00  ADVANCED CONTROL TECHNIQUES FOR REAL TIME PROGRAMMING

 There are a number of points concerning loops that are worth noting.

 As  the  example in section 9.02.07 shows, loops can be nested. In fact there is
 no practical limit to how deeply you may nest loops and no restriction upon  the
 nature  of  that  nesting.  A WHILE loop can contain a REPEAT, which may in turn
 contain WHILEs or REPEATs. The only limit, in fact, to the depth of  nesting  is
 the  stack  room  available  during  compilation.  As  long  as you use sensible
 indenting, as in the example, to indicate the range of each loop, you  will  run
 out of space on the line long before PL/9 runs out of stack during compilation.

 You may have noticed that REPEAT...UNTIL performs the  same  kind  of  statement
 bracketing  that  BEGIN...END  did  for  the  WHILE  loop  earlier.  In general,
 BEGIN...END are used after IF...THEN or WHILE statements  to  make  a  group  of
 statements  appear  as  one.  REPEAT works in a slightly different way (it's the
 only one that performs the test at the bottom of a loop) so it doesn't need  the
 BEGIN...END.

 There are also circumstances where you may wish to  escape  from  a  loop  at  a
 particular  point  or  return  to a previous point when a specified condition is
 met. BREAK and GOTO, which will be explained in a moment, have been provided  to
 facilitate this type of control.

 There are also circumstances where you may wish to terminate a procedure used as
 a  subroutine early, for example when a high priority signal is detected and you
 are in the middle of a three hour shutdown sequence. One of the forms of RETURN,
 which  will  also be explained in a moment, has been provided to facilitate this
 type of control.


 The  following  sections  introduce BREAK, GOTO and RETURN. These three keywords
 give PL/9 the capability  of  handling  all  but  the  most  critical  real-time
 applications without recourse to hardware interrupts.

 Although hardware interrupts provide the programmer with  a  powerful  tool  for
 handling  real-time  events their use can be difficult, particularly when things
 go wrong due to programming  errors.  The  very  nature  of  hardware  interrupt
 handling makes tracking down problems a very daunting task to the uninitiated.

 Many programmers prefer to avoid using  interrupts  in  order  to  'keep  things
 simple'  or  reserve  their  use  for specific tasks such as system timekeeping,
 task selection or synchronization to external events.

 PL/9 provides the programmer with  all  of  the  essential  tools  to  construct
 'polling'  oriented software with an inherent ability to rapidly respond to real
 time  events  that  rivals  that  of  interrupt  driven  software  in  practical
 situations.  Generally  speaking building up a control package based on software
 polling will be far easier to troubleshoot when things  don't  go  according  to
 plan.

 The main trick to building up a  software  package  that  uses  polling  and  is
 expected  to  respond  rapidly  to external events is never write a routine that
 'grabs' the processor for any length of time, i.e. long  delay  loops  unless  a
 poll of higher priority events is included in the routine.

 A complete example of software polling is included later in this guide.


9.03.01  BREAK

 There  are  times  when  it  is  necessary  to  be  able  to break out of a loop
 prematurely, before the test condition is satisfied. There are a number of  ways
 of  doing  this,  for  example  by  doing  more  than one test using the logical
 operators .AND and .OR. Another way is to use the  BREAK  command,  as  in  this
 example;


 0001 INCLUDE IOSUBS;
 0002
 0003 PROCEDURE BREAK_DEMO: BYTE CHAR;
 0004
 0005    REPEAT
 0006       CHAR=GETCHAR;
 0007       IF CHAR=$1B THEN BREAK;
 0008    FOREVER;


 Using  BREAK to escape from REPEAT...UNTIL or WHILE.. construction nested within
 one another requires  a  bit  of  thought  and  planning  on  the  part  of  the
 programmer.  This  is  due to the fact that the compiler is not clairvoyant! For
 example:
                                      --------------+
    COUNT4=0;                                       |
    REPEAT                                          |
                                                    |
       COUNT3=0;                      ----------+   |
       REPEAT                                   |   |
                                                |   |
          COUNT2=0;                   ------+   |   |
          REPEAT                            |   |   |
                                            |   |   |
             COUNT1=0;                --+   |   |   |
             REPEAT                     |   |   |   |
                IF PORT=1 THEN BREAK;   |   |   |   |
                COUNT1=COUNT1+1;        |   |   |   |
             UNTIL COUNT1=999;        --+   |   |   |
                                            |   |   |
          COUNT2=COUNT2+1;                  |   |   |
          UNTIL COUNT2=999;           ------+   |   |
                                                |   |
        COUNT3=COUNT3+1;                        |   |
        UNTIL COUNT3=999;             ----------+   |
                                                    |
    COUNT4=COUNT4+1;                  --------------+
    UNTIL COUNT4=999;


 Is  the  BREAK  statement  in the innermost loop supposed to pass control to the
 line just past 'UNTIL COUNT1=999' or the line just past 'UNTIL COUNT4=999'?

 As far as the compiler is concerned it will ONLY  terminate  the  current  loop,
 i.e. it will pass control to the line just past 'UNTIL COUNT1=999'.

 If  you  wished  to escape from the entire nested loop construction when a given
 event occurs you have two options. The first is to put  the  construction  in  a
 separate procedure and use 'RETURN' to terminate it. The second is to use a flag
 as a control mechanism to terminate the subsequent loops when a break  condition
 is found in a construction within it.

9.03.01  BREAK  (continued)

 Where  NESTING of loops occurs BREAK in conjunction with a byte variable used as
 a flag can be used to rapidly terminate a program.

 Some of the constructions required for  this  illustration  have  not  yet  been
 covered in this guide, but will be shortly. If you are not sure what the various
 constructions are doing read the rest of this users guide before  attempting  to
 try this program.

 Since  this  program  polls the keyboard for input and the TRACER is polling for
 keyboard input at the same time this program will not  run  properly  under  the
 PL/9 tracer. For this reason we have declared an ORIGIN of $B000 for the program
 to be compiled at. If you want to try this example type in the  program  exactly
 as it is presented. Then tell the compiler to compile the program to memory thus
 'A:M<CR>' . If no errors occur type 'M<CR>' to  enter  your  system  monitor.  A
 warning  message  will  be  posted  to  warn you that you have just entered your
 monitor and how to get back into PL/9. Use your system monitor JUMP command, 'J'
 in most monitors, to commence execution of code at $B000. This would be typed in
 as 'J B000'. Some monitors, notably GMXBUG, require that you type  RETURN  after
 entering B000.

 Once entered this program will display the decimal values of DELAY1, DELAY2  and
 DELAY3  on  the left side of the screen. Since DELAY3 is the deepest in the nest
 it will decrement most rapidly. When DELAY1, DELAY2 and DELAY3 all reach  0  the
 program will terminate and return to PL/9. If you hit the ESCAPE key at any time
 the program will terminate immediately.


 0001 ORIGIN=$B000;
 0002
 0003 GLOBAL BYTE DELAY1,DELAY2,DELAY3;
 0004
 0005 INCLUDE IOSUBS;
 0006 INCLUDE REALCON;
 0007
 0008 PROCEDURE PRNUM (REAL NUMBER): BYTE BUFFER(20);
 0009    PRINT(ASCII(NUMBER,.BUFFER));
 0010 ENDPROC;
 0011
 0012 PROCEDURE PRINT_DELAY_COUNTS:INTEGER DELAY;
 0013    PUTCHAR($0D);
 0014    SPACE(20);
 0015    PUTCHAR($0D);
 0016    PRNUM(DELAY1);
 0017    SPACE(2)
 0018    PRNUM(DELAY2);
 0019    SPACE(2);
 0020    PRNUM(DELAY3);
 0021    SPACE(5);
 0022    DELAY=4000;
 0023    REPEAT
 0024       DELAY=DELAY-1;
 0025    UNTIL DELAY=0;
 0026 ENDPROC;
 0027


9.03.01  BREAK  (continued)

 0028 PROCEDURE ESCAPE_TEST:BYTE FLAG;
 0029    IF GETKEY=$1B /* ESCAPE */
 0030       THEN FLAG=1;
 0031       ELSE FLAG=0;
 0032 ENDPROC FLAG;
 0033
 0034 PROCEDURE NESTED_BREAK_DEMO:BYTE ESCFLAG;
 0035
 0036    ESCFLAG=0;
 0037
 0038    DELAY1=100;
 0039    REPEAT
 0040
 0041       DELAY2=100;
 0042       REPEAT
 0043
 0044          DELAY3=100;
 0045          REPEAT
 0046             IF ESCAPE_TEST <> 0
 0047                THEN BEGIN
 0048                     ESCFLAG=1;
 0049                     BREAK;
 0050                     END;
 0051             DELAY3=DELAY3-1;
 0052             PRINT_DELAY_COUNTS;
 0053          UNTIL DELAY3=0;
 0054
 0055          IF ESCFLAG <> 0
 0056             THEN BREAK;
 0057             ELSE BEGIN
 0058                  IF ESCAPE_TEST <> 0
 0059                     THEN BEGIN
 0060                          ESCFLAG=1;
 0061                          BREAK;
 0062                          END;
 0063                  END;
 0064          DELAY2=DELAY2-1;
 0065       UNTIL DELAY2=0;
 0066
 0067       IF ESCFLAG <> 0
 0068          THEN BREAK;
 0069          ELSE BEGIN
 0070               IF ESCAPE_TEST <> 0
 0071                  THEN BEGIN
 0072                       ESCFLAG=1;
 0073                       BREAK;
 0074                       END;
 0075               END;
 0076       DELAY1=DELAY1-1;
 0077    UNTIL DELAY1=0;
 0078
 0079    JUMP $0003; /* RETURN TO PL/9 */


9.03.01  BREAK  (continued)

 The  previous example introduces GETKEY another useful routine in IOSUBS. GETKEY
 is similar to GETCHAR in that it gets a key from the keyboard, but  the  way  it
 works  is  significantly  different.  Whenever GETCHAR is called the system will
 'hang up' waiting for a key on the keyboard to be pressed, when one  is  finally
 received  the  character  input  will  be automatically echoed back to the video
 display.

 When GETKEY is called it will return to the calling program immediately  whether
 a key has been pressed or not. If a key has been pressed then GETKEY will return
 with the appropriate code, if no key has been pressed GETKEY will return with  a
 NULL  ($00).  For  this  reason  GETKEY  cannot  be used in conjunction with the
 CONTROL @ key as this key also returns a NULL. GETKEY does not echo the keyboard
 character back to the video display.


 The  next  example  shows  you  howNOTto construct a priority termination of a
 SEQUENTIAL group of delay routines. The fact that the testing we  are  doing  in
 this  example  is  substantially simpler than the previous example will give you
 the clue as to what we are doing wrong.

 When we are in the middle of the first delay loop and it is  terminated  by  the
 escape  key  the construction we have used will cause the program to execute the
 entire body of the subsequent loops  before  the  program  terminates.

 In the example given executing the code in the main body of the  two  subsequent
 delay  loops  causes  a  noticable  delay  between  hitting  the  escape key and
 termination of the program. Imagine what would happen if these two  delay  loops
 had constructions within them that ran to two pages of source code.

 See if you can re-write this program so that if the escape key is hit during the
 first  delay  the  second  two  delays  are terminated before the delay count is
 decremented.

 HINT: The constructions will be very similar to the one used in  DELAY3  of  the
       previous example.


 0001 ORIGIN=$B000;
 0002
 0003 GLOBAL BYTE DELAY1,DELAY2,DELAY3,ESCFLAG;
 0004
 0005 INCLUDE IOSUBS;
 0006 INCLUDE REALCON;
 0007
 0008 PROCEDURE PRNUM (REAL NUMBER): BYTE BUFFER(20);
 0009    PRINT(ASCII(NUMBER,.BUFFER));
 0010 ENDPROC;
 0011


9.03.01  BREAK  (continued)

 0012 PROCEDURE PRINT_DELAY_COUNTS:INTEGER DELAY;
 0013    PUTCHAR($0D);
 0014    SPACE(20);
 0015    PUTCHAR($0D);
 0016    PRNUM(DELAY1);
 0017    SPACE(2)
 0018    PRNUM(DELAY2);
 0019    SPACE(2);
 0020    PRNUM(DELAY3);
 0021    SPACE(5);
 0022    DELAY=4000;
 0023    REPEAT
 0024       DELAY=DELAY-1;
 0025    UNTIL DELAY=0;
 0026 ENDPROC;
 0027
 0028 PROCEDURE ESCAPE_TEST:BYTE FLAG;
 0029    IF GETKEY=$1B /* ESCAPE */
 0030       THEN BEGIN
 0031            FLAG=1;
 0032            ESCFLAG=1;
 0033            END;
 0034       ELSE FLAG=0;
 0035 ENDPROC FLAG;
 0036
 0037 PROCEDURE SEQUENTIAL_BREAK_DEMO;
 0038
 0039    ESCFLAG=0;
 0040
 0041    DELAY1=100;
 0042    DELAY2=100;
 0043    DELAY3=100;
 0044
 0045    REPEAT
 0046       DELAY1=DELAY1-1;
 0047       PRINT_DELAY_COUNTS;
 0048    UNTIL DELAY1=0 .OR ESCAPE_TEST <> 0;
 0049
 0050    REPEAT
 0051       DELAY2=DELAY2-1;
 0052       PRINT_DELAY_COUNTS;
 0053    UNTIL DELAY2=0 .OR ESCFLAG <> 0 .OR ESCAPE_TEST <> 0
 0054
 0055    REPEAT
 0056       DELAY3=DELAY3-1;
 0057       PRINT_DELAY_COUNTS;
 0058    UNTIL DELAY3=0 .OR ESCFLAG <> 0 .OR ESCAPE_TEST <> 0
 0059
 0060    JUMP $0003; /* RETURN TO PL/9 */


9.03.01  BREAK  (continued)

 The key to rapid  termination  of  a  NESTED  or  SEQUENTIAL  group  of  control
 arguments  or  delay  routines is to test for the escape condition or conditions
 frequently.  Other points to note are:

 1. Test  for  the escape condition(s) at any place where the program is looping,
    e.g. within delay loops.

 2. Test for the escape conditions at any place in  control  arguments  that  are
    likely to call external user procedures.

 3. Use the BREAK command to terminate the current WHILE or REPEAT loop.

 4. If  more  than  one  one loop or control argument exists within the procedure
    which is to be terminated by the escape condition(s) use  a  GLOBAL  flag  to
    inform  the  remainder  of the program that the escape condition(s) have been
    detected by an earlier loop or control argument.

 5. Use a FLAG to to prevent the execution  of  the  main  body  of  code  within
    subsequent loops or control arguments.

 6. When  you  need  to  escape from nested loops you may also consign the nested
    loop to a separate procedure and use RETURN in lieu of BREAK.

    See  'RETURN'  for information on terminating external procedures when escape
    conditions are recognized.


                                     N O T E

      As  mentioned in the Language Reference Manual only ten breaks may be
      active within any given procedure at any one time. This does not mean
      that  you can only have a total of ten BREAKs in a procedure it means
      that only ten can be ACTIVE while the procedure is being compiled.

      This is due to the fact that when loops are being  nested  PL/9  will
      keep  pushing things onto the stack during compilation until it finds
      the deepest portion of the nest. If BREAKS are being used  even  more
      information  is  pushed  onto the stack. This process continues until
      the compiler knows where control is to be passed to  when  the  break
      occurs.  As  the  extra  information  required  for  BREAK  is fairly
      substantial we had to set a limit otherwise you might  easily  exceed
      the limits of the available stack space.

      This  limitation  has  never  posed  any  problems for the author (or
      anyone else to our knowledge). It is unlikely that you will ever  see
      the  error  message  'TOO MANY BREAKS' if you structure your programs
      well.


9.03.02  GOTO

 Just as BREAK can be used to terminate a loop early, in effect to branch forward
 in  a  program  GOTO  can  be used to branch to a previous point in a particular
 procedure in order to repeat  a  particular  step  or  sequence  of  steps.  For
 example:


 0001 INCLUDE IOSUBS;
 0002
 0003 PROCEDURE GOTO_DEMO:BYTE CHAR;
 0004
 0005    PUTCHAR($20);  /* space */
 0006 CANCEL:
 0007    PUTCHAR($08);  /* back-space */
 0008    PUTCHAR($20);
 0009    PUTCHAR($08);
 0010
 0011    CHAR=GETCHAR;
 0012    IF CHAR <> '1 .AND CHAR <> '0
 0013       THEN GOTO CANCEL;
 0014       ELSE PRINT(" is O.K.");


 In this example the name 'CANCEL' is being used as a label  for  the  subsequent
 GOTO. Note that 'CANCEL' is terminated with a colonNOTa semicolon. The purpose
 of the label CANCEL is tell the compiler 'take note of  this  address;  I  might
 want you to come back here later'. Just because you insert a label does not mean
 you have to use it, although it would be somewhat pointless if you did so.

 What in the world is this program doing I  hear  you  ask?  The  IOSUBS  library
 supplied  uses  a  standard  FLEX  I/O  interface called 'GETCHR' at $CD15. This
 routine echos any displayable ASCII character back to the video  display  before
 it returns to the calling program. This means that if you type the letter 'A' it
 will be put up on the screen even if you don't want it there.

 The sequence of events before and after the label  CANCEL  serve  the  following
 purpose:  First  we  send a dummy space to the screen, then we send a back-space
 character to the screen which moves the cursor back to  the  position  where  we
 just  put  the  space.  We then move forward one space and back-space once more.
 This bit of gyration has the effect of removing any  character  put  up  on  the
 screen  (assuming  that  your  system display supports back-spacing as most do).
 This technique should be restricted to the left hand side of the screen as  some
 display  devices  act  strangely  if you are in the last available column of the
 display.

 Having just made a 'dummy' pass through CANCEL we now enter the main part of the
 program.  First  we  get a character into the variable CHAR via GETCHAR. We then
 examine CHAR and see if it is an ASCII 1 or an ASCII  0.  If  it  is  either  of
 these  values  the  previously  echoed character will remain on the screen and a
 message ' is accepted' will be printed after it.

 If CHAR is neither of these values the 'THEN GOTO CANCEL' forces the program  to
 start  executing  at the point right after the label CANCEL. In this case we are
 going to remove the character  from  the  screen  as  described  previously  and
 re-enter the main program again. The process of cancelling the character entered
 and getting another one  for  comparision  will  continue  until  the  character
 entered passes the test, i.e. it is a zero or a one.

 GOTO cannot be used to go to a label declared AFTER the GOTO instruction nor can
 it be used to branch to a location outside of the current procedure.
9.03.03  RETURN

 The  use  of  RETURN in procedures used as functions has already been covered in
 detail in section 7.01.11 and will be covered again in section 9.06.01.

 RETURN can also be used as part of a statement that means 'if this condition  is
 met terminate this entire procedure right here and now'.

 When RETURN is used to prematurely terminate  a  procedure,  regardless  of  the
 level  of  nesting  or  number  of local variables, the stack will be completely
 tidied up just though the procedure was terminated in the normal manner  by  the
 ENDPROC.

 RETURN is commonly used in control applications where a lengthy process has just
 been  entered  and there is the possibility of some higher priority event taking
 place elsewhere in the system. This is an ideal application for interrupt driven
 software.  In  spite  of its advantages in situations like this many programmers
 prefer to avoid using interrupts unless they are absolutely necessary or wish to
 reserve  interrupts  for other tasks in their software. RETURN has been provided
 to facilitate development of software that  can  respond  to  real  time  events
 without recourse to interrupts.

 In the following example (it works) the procedure named 'THREE_HOUR_TEST' should
 be  imagined  to be a complex series of valve openings and closings with varying
 degrees of delay between them. In this example we are going to  simply  enter  a
 delay  routine  that  starts  counting  at 999999 and continues to count down to
 -999999 at approximately one count per second. If you hit the RETURN key on  the
 keyboard  the  procedure  will  terminate  immediately  and  print  the  message
 'EMERGENCY!' and return to PL/9.

 Some of the constructions required for  this  illustration  have  not  yet  been
 covered in this guide, but will be shortly. If you are not sure what the various
 constructions are doing read the rest of this users guide before  attempting  to
 try this program.

 Since  this  program  uses  the keyboard for input and the TRACER is looking for
 keyboard input at the same time this program will not  run  properly  under  the
 PL/9 tracer. For this reason we have declared an ORIGIN of $B000 for the program
 to be compiled at. If you want to try this example type in the  program  exactly
 as  it is presented then tell the compiler to compile the program to memory thus
 'A:M<CR>' . If no errors occur type 'M<CR>' to  enter  your  system  monitor.  A
 warning  message  will  be  posted  to  warn you that you have just entered your
 monitor and how to get back into PL/9. Use your system monitor JUMP command, 'J'
 in most monitors, to commence execution of code at $B000. This would be typed in
 as  'J  B000'. Some monitors, notably GMXBUG, require that you type RETURN after
 entering B000.

 The program will begin execution in approximately 2 seconds and will display the
 number 999999 on the left side of the screen. The number will begin decrementing
 at approximately one count per second. Hitting the RETURN key on  your  keyboard
 will  terminate  the program IMMEDIATELY, and we mean immediately. There will be
 absolutely no noticable delay between hitting RETURN and seeing the 'EMERGENCY!'
 message....try it.


 0001 ORIGIN=$B000;
 0002 GLOBAL BYTE EFLAG;
 0003
 0004 INCLUDE IOSUBS;
 0005 INCLUDE REALCON;
 0006
9.03.03  RETURN  (continued)

 0007 CONSTANT EMERGENCY=0,SAFE=1,ESCAPE=$1B,BACK=$08,_SPACE=$20,
 0008          MASK=$04,_RETURN=$0D;
 0009
 0010 PROCEDURE PRNUM (REAL NUMBER): BYTE BUFFER(20);  /* see section 9.05.08 */
 0011    PRINT(ASCII(NUMBER,.BUFFER));
 0012 ENDPROC;
 0013
 0014 PROCEDURE EMERGENCY_CHECK;
 0015    CALL $CD4E; /* FLEX 'STAT' */
 0016    IF CCR AND MASK = 0
 0017       THEN IF GETCHAR=_RETURN
 0018               THEN EFLAG=EMERGENCY;
 0019               ELSE BEGIN
 0020                    PUTCHAR(BACK);
 0021                    PUTCHAR(_SPACE);
 0022                    PUTCHAR(BACK);
 0023                    END;
 0024 ENDPROC;
 0025
 0026 PROCEDURE THREE_HOUR_TEST:REAL DCOUNT:BYTE DELAY1,DELAY2;
 0027    EFLAG=SAFE;
 0028    DCOUNT=999999;
 0029    CRLF;
 0030    CRLF;
 0031    REPEAT
 0032       EMERGENCY_CHECK;
 0033       IF EFLAG=EMERGENCY THEN RETURN;
 0034       DELAY1=100;
 0035       DELAY2=100;
 0036       REPEAT
 0037
 0038          REPEAT
 0039             EMERGENCY_CHECK;
 0040             IF EFLAG=EMERGENCY THEN RETURN;
 0041             DELAY2=DELAY2-1;
 0042          UNTIL DELAY2=0;
 0043
 0044          EMERGENCY_CHECK;
 0045          IF EFLAG=EMERGENCY THEN RETURN;
 0046          DELAY1=DELAY1-1;
 0047       UNTIL DELAY1=0;
 0048       PUTCHAR(_RETURN);
 0049       SPACE(6);
 0050       PUTCHAR(_RETURN);
 0051       PRNUM(DCOUNT);
 0052       DCOUNT=DCOUNT-1;
 0053    UNTIL DCOUNT=-999999;
 0054 ENDPROC;
 0055
 0056 PROCEDURE MAIN;
 0057    REPEAT
 0058       THREE_HOUR_TEST;
 0059       IF EFLAG=EMERGENCY THEN BREAK;
 0060    FOREVER;
 0061    PRINT(" \N\NEMERGENCY!\N\N");
 0062    JUMP $0003; /* BACK INTO PL/9 */


9.04.00  GETTING AT THE OUTSIDE WORLD

 Most  industrial  (as  opposed  to business) uses of microprocessors have a fair
 amount of hardware in the system used to communicate with the 'real world'.  The
 hardware  can  be  as  simple  as  an  MC6821 PIA reading the status of a set of
 switches on the 'A' port and sending signals to relays on the  'B'  port,  or  a
 complicated  mass of PIA's, ACIA's, A-D converters, D-A converters, etc. Writing
 programs that can  not  only  initialize  the  hardware  devices  but  can  also
 communicate  with  them  simply  is  one  of  the  major failings of programming
 languages like BASIC and Pascal.

 It is not that it is impossible to write such programs in  these  languages  but
 that  the  gyrations  that one must go through to get around the restrictions of
 the language not only produces  a  source  file  that  is  often  impossible  to
 decipher  at  a  later  date  but  also produces a large amount of code for what
 should be simple operations. Quite often the only realistic solution to  getting
 around  the  restrictions  of  the  language  is  to  write all the I/O handling
 software in assembly language. This is fine if you are a good assembly  language
 programmer, but what if you are not?

 PL/9 for all  its  'failings'  in  supporting  exotic  data  types  and  control
 structures  makes  I/O  handling  and  working with external programs written in
 other languages simplicity itself. PL/9 was DESIGNED  with  just  this  type  of
 application in mind!


9.04.01  AT

 This keyword is used to tell PL/9 where some particular element of  hardware  is
 located  or  where RAM variables are stored in terms of 'hard' (absolute) memory
 locations. For example supposing you wished to tell PL/9 about a PIA  that  uses
 the 'A' side for data input and the 'B' side for data output. A declaration such
 as the following is all that is required:


    AT $E040: BYTE ADATA, ACTRL, BDATA, BCTRL;


 This declaration tells PL/9 that 'ADATA' is  at  $E040,  'ACTRL'  is  at  $E041,
 'BDATA'  is  at  $E042 and 'BCTRL' is at $E043. Once PL/9 knows what to call the
 PIA and where its elements are the names given can be used  just  as  any  other
 local  or global variable. For example supposing we wanted to initialize the PIA
 for all inputs on the 'A' side and  all  outputs  on  the  'B'  side.  The  PL/9
 program to do this would look something like:


    PROCEDURE PIA_INIT;
       ACTRL=0;    /* SELECT DATA DIRECTION REGISTER */
       ADATA=0;    /* ALL INPUTS */
       ACTRL=4;    /* SELECT OUTPUT REGISTER */

       BCTRL=0;    /* SELECT DATA DIRECTION REGISTER */
       BDATA=$FF;  /* ALL OUTPUTS */
       BCTRL=4;    /* SELECT OUTPUT REGISTER */
       BDATA=0;    /* SET ALL OUTPUTS TO ZERO */
    ENDPROC;


 Once initialized the PIA data ports can be treated  as  bytes  of  memory.  Viz:
 'BDATA=ADATA;' would simply echo all input bits to the corresponding output bit.
9.04.01  AT  (continued)

 AT can also be 'fooled' into calling a particular address by more than one name,
 viz:

    AT $E004: BYTE ACIACTRL(0), ACIASTAT, ACIADATA;


 By  declaring  'ACIACTRL'  as  a  vector  (we'll  get  to  vectors later in this
 document) of nil size 'ACIACTRL' and 'ACIASTAT' will both generate  a  reference
 to  $E004.  Of  course  you  could  also  declare the AT statement as follows to
 accomplish the same thing:


    AT $E004: BYTE ACIACTRL;
    AT $E004: BYTE ACIASTAT, ACIADATA;


 AT also has a special purpose when declaring locations of vectors to be used  by
 the JUMP or CALL statements. This use is described in the following section.

 Another use of AT is to define fixed memory locations as a mechanism for passing
 variables to PL/9 from external subroutines or to pass LOCAL or GLOBAL variables
 in PL/9 to external subroutines.

 AT  is  also  useful when several programmers are working on individual programs
 that will form part on one large control package. At certain points in  each  of
 the  various  programs  each  programmer  may  need to pass variables to, or get
 variables from, procedures written by the other programmers.  The  existence  of
 variables  at  fixed  addresses  makes  it very easy for the programmers to test
 their own routines by simulating the data they expect to receive from the  other
 programmers  programs and to verify that the data they are passing back to other
 programs is correct.

 AT, in effect, allocates a  permanent  pseudo  GLOBAL  variable  at  some  fixed
 location  other than the stack. Since the variable is permanent excessive use of
 AT can consume large amounts of memory if used to assign what would normally  be
 LOCAL  variables, loop counters for example. A good choice for locating 'AT' RAM
 variables is just above the point you would normally assign the stack.

 AT  can also be used to make life easier if you are not inclined to use the PL/9
 tracer. We would be the first to recognize that old habits die hard. If you find
 that working with your system monitor rather than the PL/9 tracer gives you more
 confidence or faster results then by all means carry on with what you  are  most
 comfortable with!

 The  difficulty  in  working at the system monitor level with variables that are
 allocated storage space on the stack can be a daunting one however. By using  AT
 to declare 'hard' addresses for every variable you use, i.e. not using GLOBAL or
 LOCAL variables at all, this difficulty can be overcome. With each variable used
 by  the program allocated a fixed and permanent location in memory that is KNOWN
 to you it will be much easier to simulate inputs and examine  the  results  than
 would otherwise be possible at the system monitor level.

 The foregoing was not intended to encourage you not to use the PL/9 tracer.  The
 TRACER  can  be  a  very  powerful  debugging  tool  as it allows you to examine
 variables at each step of a program,  and  to  write  small  programs  that  can
 simulate  a  variety  of  input  data in order to test the program under various
 operating conditions. The power of the PL/9 debugger/tracer as a debugging  tool
 will only become apparent after you have used it for some time.

9.04.02  CALL AND JUMP

 These  two  PL/9  keywords  provide  a  simple  interface  to  assembly language
 subroutines resident in the computer. JUMP generates a jump instruction and CALL
 a subroutine call; they are otherwise identical.

 The normal use is a statement such as "JUMP $CD03", which would cause FLEX to be
 re-entered  at  its  warm  start  address.  The  operand  can also be aCONSTANT
 (described later in this document) as in:


    CONSTANT WARMS=$CD03, PUTCHR=$CD18;
    .
    .
    ACCA='*;
    CALL PUTCHR;
    JUMP WARMS;


 which prints an asterisk  then  jumps  back  into  FLEX.  ACCA,  which  will  be
 described  in the next section, instructs the compiler to put the character into
 the 6809's A accumulator, where PUTCHR expects to find it, rather  than  into  a
 variable in memory.

 When a CONSTANT is used to define the address of an external  procedure  or  the
 address  is furnished in the form $XXXX PL/9 will generate the code for EXTENDED
 addressing: i.e.  BD XXXX for CALL, and 7E XXXX for JUMP.


 Often addresses of external subroutines are arranged in vector tables. A typical
 vector table would be that of the GIMIX, SSB, SWTP and WINDRUSH system monitors.
 The vector table starts at $F800 and contain a series of addresses as follows:


    F800    RESET       RESET THE SYSTEM MONITOR
    F802    CNTRL       WARM START THE SYSTEM MONITOR
    F804    INCHNE      INPUT CHARACTER, NEVER ECHO
    F806    INCHAE      INPUT CHARACTER, ALWAYS ECHO
    F808    INCHECK     CHECK KEYBOARD STATUS
    F80A    OUTCH       OUTPUT A CHARACTER
    F80C    PDATA       OUTPUT STRING POINTED TO BY 'X'
    F80E    CRLF        OUTPUT CARRIAGE RETURN - LINE FEED
    F810    PSTRNG      OUTPUT CRLF FOLLOWED BY STRING POINTED TO BY 'X'
    F812    LRA         LOAD REAL ADDRESS


 Since  each  of  the  above memory locations contains the address of the desired
 routine it is intended to be used with INDIRECT addressing, i.e. JSR [$F804], OR
 INDEXED addressing, i.e. LDX $F800; JSR 0,X.

 Vector  tables cannot be used with EXTENDED addressing, i.e. JSR $F804. If you
 attempt to use the standard forms of CALL or JUMP to access routines in a vector
 table you stand an excellent chance of crashing your system!


9.04.02  CALL AND JUMP  (continued)

 PL/9 provides a simple mechanism to gain access to  external  subroutines  whose
 addresses  are  stored as a vector or in a vector table. Instead of defining the
 address of the external routine using CONSTANT or CALL $XXXX you must define the
 address using 'AT', for example:


    AT $F800: INTEGER RESET, CNTRL, INCHNE, INCHAE, INCHECK, OUTCH, PDATA, CRLF,
                      PSTRNG, LRA;


 Would define the entire vector table for a standard 6809 system monitor.

 To access the various routines you use the normal forms of CALL and JUMP, viz:


    CALL INCHAE;
    CALL OUTCH;
    JUMP RESET;


 This  time  PL/9  will  generate  the  code required for INDEXED addressing. The
 first example, 'CALL INCHAE' would be coded as:

    FC F806     LDD $F806      Get the contents of $F806 into the 'D' accumulator
    1F 01       TFR D,X        Transfer 'D' into 'X'
    AD 84       JSR 0,X        Jump to subroutine pointed to by 'X'.


 The last example, 'JUMP RESET' would be coded as:

    FC F800     LDD $F800      Get the contents of $F800 into the 'D' accumulator
    1F 01       TFR D,X        Transfer 'D' into 'X'
    6E 84       JMP 0,X        Jump to address pointed to by 'X'

 Obviously you can't use accumulator 'D' (see section 9.04.03) to pass a variable
 out to the procedure if you use this construction.


 Once a vector table (we will be describing vectors in greater detail later)  has
 been declared using the 'AT' statement as illustrated below all sorts of control
 possibilities are opened up as the following examples attempt to illustrate:


    AT $F800: INTEGER MONITOR_VECTOR(10);

    /*
       0 RESET            |
       1 CNTRL            |
       2 INCHNE           |
       3 INCHAE           |
       4 INCHECK          | THIS ENTIRE BLOCK IS TREATED AS A SINGLE COMMENT!
       5 OUTCH            |
       6 PDATA            |
       7 CRLF             |
       8 PSTRNG           |
       9 LRA              |
    */

9.04.02  CALL AND JUMP  (continued)

    CALL MONITOR_VECTOR(3);
    CALL MONITOR_VECTOR(5);
    JUMP MONITOR_VECTOR(0);


 This  does exactly the same job as the previous example but is considerably less
 readable. It does however provide the program with the ability to  decide  which
 vector  in a table is to be used by assigning the appropriate number to an index
 variable INDEX, as in:


    CALL MONITOR_VECTOR(INDEX);


 which allows a degree of flexibility that is  useful  in  some  cases,  such  as
 deciding  which I/O subroutine to call when data on an input matches the data in
 a table. We will be covering vectors and  data  tables  in  great  length  in  a
 subsequent section.

                                  _____________
                                 C A U T I O N

 A  word  of  caution  is  in  order  when calling external subroutines. The only
 registers that may be altered at will by  the  external  routines  are  the  'D'
 accumulator, the 'X' register, the 'U' register and the Condition Code Register.

     THE 'DP' REGISTER MUST BE PRESERVED IF YOU USE THE 'DPAGE' DIRECTIVE AND
     THE 'Y' REGISTER MUST BE PRESERVED IF YOU ALLOCATE 'GLOBAL' VARIABLES.

 This can be accomplished by pushing all of the registers you intend to use  onto
 the  stack  before  you leave PL/9 via 'GEN' statements and pulling them off the
 stack via 'GEN' statements when you return. Alternative  you  can  do  the  same
 thing in your external procedure.

 This caution is particularly important when using the PL/9  tracer.  Failure  to
 ensure  that  all registers other than 'D', 'X', 'U' and the 'CCR' are preserved
 can result in a complete crash of the  system  that  can  cost  you  the  entire
 contents of a disk.


 If you know MURPHY's law like we do this crash will  occur  the  only  time  you
 forget  to  open  the door to the disk drive that holds the one and only copy of
 the 42K program you have been working on for the last  year  and  you  are  only
 doing  a  quick touchup job on a text message that is part of a program that has
 to be delivered to your customer who is due to show up in five  minutes  or  you
 will loose a 500 million pound contract! ... GET THE MESSAGE?


SUMMARY

 CALL  and  JUMP  should  be  used  with AT variable declarations, when accessing
 routines pointed to by vector tables, i.e.  the  address  specified  by  the  AT
 declaration contains the address of the routine you wish to enter.

 CALL  and  JUMP should be used with CONSTANTS to access the routine via extended
 addressing, i.e. the address specified by the constant is the address  at  which
 the  procedure  may  be entered or contains a JMP, BRA or LBRA instruction which
 vectors the processor to the location where the procedure is.
9.04.03  ACCA, ACCB, ACCD, XREG, STACK and CCR

 These pseudo variables represent the corresponding MC6809 registers as follows:

 a. ACCA  is the 'A' accumulator.
 b. ACCB  is the 'B' accumulator.
 c. ACCD  is the 'A' and 'B' accumulators concatenated with 'A' most significant.
 d. XREG  is the 'X' register.
 e. STACK is the 'SP' (hardware stack pointer).
 f. CCR   is the condition code register.


 These  keywords  are  provided  primarily  to  interface  with external assembly
 language routines. They can be used to pass LOCAL or GLOBAL variables out to the
 assembly  language program or the assign LOCAL or GLOBAL variables to the result
 of the external program. These  keywords  can  be  treated  just  as  any  other
 variable in PL/9.

 Supposing  that  you  want  to  use the FLEX 'STAT' routine at $CD4E to poll the
 keyboard for an incoming character and if one is found  use  the  FLEX  'GETCHR'
 routine at $CD15 to get the character and echo it back to the video display.

 The  FLEX 'STAT' routine will return with the 6809 condition code register (CCR)
 'Z' bit (bit b2) cleared if a key has been hit or set if a key has not been hit.

 The FLEX 'GETCHR' routine will 'loop' on the keyboard input port until a key  is
 hit, and will return with the keyboard character in the 6809 A accumulator after
 echoing the character out to the video display. If this routine is called BEFORE
 a  key  is  hit the processor can hang up on the key board indefinately. In many
 circumstances this can be undesirable.

 The following example shows how to build  a  routine  that  will  ALWAYS  return
 whether  a  key has been hit or not. The ENDPROC ACCA statement simply transfers
 the contents of ACCA to ACCB as this is where PL/9 constructions expect to  find
 it.  The  procedure will return with ACCB equal to zero if no key was hit (or if
 CONTROL @ is hit) or will return with ACCB equal to code of the key that was hit
 after echoing the character if one has been hit:


    PROCEDURE GET_KEY_AND_ECHO_IT;
       CALL $CD4E; /* STAT */
       IF CCR AND $04 <> 0   /* this order is MOST important! */
          THEN ACCA=0;
          ELSE CALL $CD15; /* PUTCHR */
    ENDPROC ACCA;


 Two elements of the above construction have not been discussed yet. The first is
 the bitwise AND of 'CCR and $04'. The second is  that  ENDPROC  is  returning  a
 value, 'ACCA'. Both of these will be discussed in detail in subsequent sections.
 If you don't understand what is going on in this example finish reading the rest
 of the manual and then return to this section.


                                  _____________
                                 W A R N I N G

 If  you  wish to use more than one of these pseudo variables the order of use is
 most important. See section 7.01.23 for further details.


9.04.04  GEN

 This  keyword allows you to embed 6809 machine code in line with a PL/9 program.
 PL/9 does not make any assumptions about GEN statements,  IT  ASSUMES  THAT  YOU
 KNOW WHAT YOU ARE DOING. Therefore we only recommend that GEN be used if you are
 reasonably conversant with 6809 assembly language programming.

 One of our other products is a 6809 assembler called MACE. MACE has a  built  in
 facility  to  convert  an  assembly language source program into a series of GEN
 statements. If you find that you need to frequently embed 6809 machine  code  in
 PL/9 programs you might consider using MACE to do the work for you.

 As  mentioned  in section 7.01.21 GEN can be used to generate the code necessary
 to preserve the 6809 registers before you call an external procedure if you  are
 not sure what registers are going to be affected. For example:

    GEN $34,$28;    /* PSHS DP,Y */
    CALL $XXXX;
    GEN $35,$28;    /* PULS DP,Y */

 will  preserve  the  two registers that PL/9 assumes will be preserved. The 'D',
 'X', 'U' registers need not be preserved as far as PL/9 code is  concerned.  One
 last  point  ...  you should take steps to preserve the state of the 'I' and 'F'
 flags in the CCR if your PL/9 program is using interupts.

 A previous section also described how AT can be used to define a vector and then
 subsequent references to the variable name  via  CALL  and  JUMP  will  generate
 INDEXED  addressing.  In  some circumstances the extra code generated by PL/9 to
 perform the INDEXED addressing may cause problems of one sort  or  another.  The
 mains  ones being that the 'D' accumulator and the 'X' register are used and are
 therefore not free to be used to pass variables to the subroutine being called.

 GEN can also be used to generate INDIRECT addressing, i.e. JSR [$XXXX]. One very
 useful  FLEX  I/O routine that very few people know about (it is only documented
 in the 'DRIVERLESS FLEX MANUAL') is a routine called 'INCHNE', input a character
 but never echo it. The normal routine, GETCHR, at $CD15, automatically echos the
 keyboard character before returning. The address of the INCHNE routine is stored
 in  the  FLEX  vector table at $D3E5. To construct the equivalent of JSR [$D3E5]
 you would enter:

    GEN $AD,$9F,$D3,$E5;

 If you want to make a clean entry into most system monitors (GMX, SSB, SWTP, and
 WINDRUSH), i.e. the equivalent of JMP [$F802], you would type the following:

    GEN $6E,$9F,$F8,$02;

 Alternatively you could make the entry into your system monitor via the 'MONITR'
 vector  in FLEX (i.e. the vector the 'MON' command uses), i.e. the equivalent of
 JMP [$D3F3], by typing the following:

    GEN $6E,$9F,$D3,$F3;

 You may also use BYTE constants with GEN statements, viz:

    CONSTANT JMP=$6E, IND=$9F, MON_HI=$D3, MON_LO=$F3;

    GEN JMP,IND,MON_HI,MON_LO;

 There are many other uses of GEN. Most will  be  obvious  to  assembly  language
 programmers. All will be dangerous if you are not!  Enough said!
9.04.05  ASMPROC

 ASMPROC is a special keyword that allows you to really get carried away with GEN
 statements!

 There  are many things that PL/9 cannot handle directly, like stack and register
 manipulations, and there are many tasks that PL/9 will be less than brilliant at
 at producing code for.

 ASMPROC  serves as a label in a block of GEN statements. No ENDPROC is required,
 in fact the compiler will reject it. The ASMPROC statement with the accompanying
 name generates no code thereby preserving the assembled relationship between one
 part of the GEN code and another. You may allocate local variables with ASMPROCs
 and  therefore pass variables to them. It is up to you to know what position the
 variables will be on the  stack  when  the  ASMPROC  is  called.  Refer  to  the
 Reference Manual for further details.

 ASMPROC  allows  you  to  generate  a complete assembly language program via GEN
 statements and embed it amongst other  PL/9  procedures.  The  structure  of  an
 ASMPROC  is  much  like  that of any other PL/9 procedure, i.e. then can receive
 data on the stack, and return data in the MC6809's 'D' and 'X' registers. e.g.


    ASMPROC _ASMPROC_DEMO(BYTE):BYTE;
       GEN ....
       GEN ....
       GEN ....
       GEN $39;


 is passed one BYTE variable on the stack and will be expected to return  a  BYTE
 variable in 'B'.

 The only thing that differentiates an ASMPROC from  a  PROCEDURE  is  that  PL/9
 expects  all  procedures, except the last, to end in an ENDPROC. ASMPROCs do not
 have this requirement and will therefore not generate  the  RTS  instruction  as
 will PROCEDUREs.


 When using ASMPROC It is up to the programmer to ensure the following:

 1. The  ASMPROC  is  written in position independent code if you expect the main
    PL/9 program to be position independent OR wish to use the PL/9 tracer.

 2. The  ASMPROC  preserves  the  'DP' and 'Y' registers if 'DPAGE' and 'GLOBAL',
    respectively, are being used in the main program.

 3. The ASMPROC terminates in an RTS, or equivalent, OR Jumps to  a  known  fixed
    address  that  is  not part of the PL/9 program that includes the ASMPROC, OR
    branches to a known POSITION in the PL/9 program. These last two options  are
    to ensure position independance.


 There are several examples of ASMPROCs in the FLEX I/O library which is  covered
 in a separate section.


 Our assembler  product  'MACE'  has  built-in  facilities  for  simplifying  the
 generation  of  ASMPROCs. If you find that you are coding a lot of procedures as
 ASMPROCs 'MACE' can save you a bit of work.
