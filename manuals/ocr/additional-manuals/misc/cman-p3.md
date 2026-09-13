# CMAN-P3

> Source: `manuals/misc/DOC - FLEX Software Archive - Manual and Documentation Archive - Includes CMAN-IDX, CMAN-P1, CMAN-P10.zip!DOC.DSK!CMAN-P3.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
#James McCosh 'C' COMPILER for FLEX                        COMPILER MANUAL  R:1.2


.DHE
#COMPILER MANUAL  R:1.2                        James McCosh 'C' COMPILER for FLEX


.DFO
.
                                     - %%%% -


.DFE
.
                                     - %%%% -


THE COMPILER EXECUTIVE, 'CC'

 The purpose of 'CC.CMD' is to automaticaly guide the compilation from 'C' source
 code to Motorola M6809 machine code.


SYNTAX

 CC [ flags ] file...


DESCRIPTION

 Up to ten files may be compiled together. CC manages the compilation through  up
 to  four  stages  :  pre-processor,  compilation  to assembler code, assembly to
 relocatable module and loading to binary, executable code.


OPERATION

 The  compiler  accepts  three  types  of  source  file provided each name on the
 command line has the relevant extension:

    ".C" for a C source file,
    ".A" for an assembly language source file
    ".R" for a relocatable module.


 These types of source file may be mixed on the command line.

 There are two modes of operation: multiple source file and single  source  file.
 The  compiler selects the mode by inspecting the command line. The usual mode is
 single source and is specified by having  only  one  source  file  name  on  the
 command  line.  Of course, more than one source file may be compiled together by
 using the '#include' facility in the source code. In  this  mode,  the  compiler
 will  use  the name obtained by removing the extension from the name supplied on
 the command line, and the  output  will  have  this  name  with  '.CMD'  as  its
 extension.

    E.g. +++ CC FOO.C

 will leave an executable file called 'FOO.CMD' on the working drive.


 The  multiple  source mode is specified by having more than one source file name
 on the command line. In this mode, the object code output  file  will  have  the
 name  'OUTPUT.CMD'  on the working drive, unless a name is given using the '+F='
 option (see below). Also  in  multiple  source  mode,  the  relocatable  modules
 generated  as  intermediate  files  will  be  left on the working drive with the
 extensions changed to ".R".

    E.g. +++ CC 1.FOO1.C 0.FOO2.C

 will leave an executable file called 'OUTPUT.CMD'  on  the  working  drive,  one
 called 'FOO1.R' and another called 'FOO2.R' on the working drive.


FLAGS

 CC recognizes several command-line flags which modify  the  compilation  process
 where  needed. All flags are recognized before compilation commences so they may
 be placed anywhere on the command line. As is usual under FLEX, flags may be run
 together  as  in  '+AC',  except where a flag is followed by something else; see
 '+L=' and '+D'.

 +A               suppresses assembly, leaving the output as assembler code in  a
                  file whose name has an extension of '.A'.

 +O               invokes the assembly code optimizer. The optimizer will shorten
                  object code by about 11% with a comparable  increase  in  speed
                  and   is  recommended  for  production  versions  of  de-bugged
                  programs.

 +R               suppresses   loading   and  linking  library  modules  into  an
                  executable program. Outputs are left in files  with  extensions
                  '.R'.

 +L=<filename>    specify a library to be  searched  by  the  loader  before  the
                  Standard   Library  and  system  interface.  Up  to  five  such
                  libraries may be specified.

 +F=<filename>    over-rides the above output file naming. The output  file  will
                  be  left  with  <filename> as its name. This flag does not make
                  sense in multiple source file mode where either the  +A  or  +R
                  flags are also present.

 +C               the source code is output as comments with the assembler code.

 +N               no  assembly  code  is  produced  by  the  compiler;  an aid to
                  checking the syntax of a source file.

 +S               stops the generation of stack-checking  code.  Should  only  be
                  used   with  great  care  when  the  application  is  extremely
                  time-critical and  when  the  use  of  the  stack  by  compiler
                  generated code is fully understood.

 +D<identifier>   is  equivalent  to '#define <identifier>' written in the source
                  file. This facility is useful where  different  versions  of  a
                  program are maintained in one source file and differentiated by
                  means of the '#ifdef' or '#ifndef' pre-processor directives. If
                  the  <identifier>  is  used  as  a  macro  for expansion by the
                  pre-processor, '1' will be the expanded 'value' unless the form
                  '+D<identifier>=<string>'  is  used in which case the expansion
                  will be <string>.

 +I=(N)           Where 'N' is a valid drive number. This tells the pre-processor
                  where to look for files included with the '#include'  directive
                  where the angle brackets are used to specify the file name.

                  For  example,  the  program  line  #include  <fred.h> would, by
                  default, cause the inclusion of a file  called  fred.h  on  the
                  system  drive. If compiled with '+I=1', the drive searched will
                  be 1 regardless of the system drive.


FLAGS   (continued)

 The following table gives example command lines that show the use of some of the
 flags available:


COMMAND LINE                       ACTION                OUTPUT FILES


 CC FOO.C                    compile to an executable         FOO.CMD
                             program


 CC FOO.C +A                 compile to assembly code         FOO.A


 CC FOO.C +RO                compile  to  relocatable         FOO.R
                             module,   invoking   the
                             optimiser


 CC FOO1.C FOO2.A FOO3.R     compile FOO1.C, assemble         FOO1.R, FOO2.R
                             FOO2.A  and  combine all         OUTPUT.CMD
                             into    an    executable
                             program


I/O REDIRECTION

 There is a facility to specify on the command line invoking a program  that  its
 standard  input should come from a file or its standard output should be written
 to a file. The syntax follows the UNIX shell convention:

         +++ 'program' <'file name'     (input from 'file name')
         +++ 'program' >'file name'     (output to file name')

 Other  arguments may be included on the command line as usual and both input and
 output may be redirected at the same time. The files named will be assumed to be
 text  files  and  the  names  will  default  to the working drive with extension
 '.TXT'.

 Since this facility involves the use of quite large chunks of  standard  library
 I/O  code,  it  may  often be desirable to dispense with it in order to keep the
 program size down. For this reason, it is necessary to specify its inclusion  to
 the  loader  where  it is required for a program. The method of doing this is to
 have a call to a function (which does nothing at all) somewhere in  the  program
 code:

         rio_init();

 It is usually best to have this at the top of 'main()' in a similar  fachion  to
 the calls of 'pflinit()' and/or 'pfflinit()'.


DIAGNOSTICS

 CC  provides  good  error  detection,  but  it is in the nature of compilers for
 structured languages that one syntax error in a program can cause  the  compiler
 to 'lose its way' and start issuing a series of further, perhaps spurious, error
 messages. The results of most of the common errors are  anticipated  by  CC  and
 should  not  cause  this  nuisance.  If  the  number of errors becomes too large
 (currently more than 30) the compiler aborts. Diagnostics from the compiler  are
 routed to the standard output so may be re-directed by 'O.CMD' or 'P.CMD'.

 CC  diagnostics  are  in general self-explanatory but the following will help if
 the meaning appears a little obscure. It should be pointed out that a number  of
 diagnostics  appear  when a particular token (syntactic unit) is expected in the
 input stream and not found. In these  cases,  the  arrow  which  points  to  the
 offending place in the line is pointing to the currently reached token which is,
 in general, in a legal place i.e. the expected token should  have  preceded  it.
 This  can  be particularly confusing when the arrow points to the beginning of a
 line and the 'offence' occurred at the end of the previous line.

 The first group of messages point out errors in the source program submitted  to
 the compiler:


"already a local variable"

 A label may not have the same name as a local variable in the same block.


"argument error"

 A function argument may not be of this type.


"argument storage"

 The only storage-specifier allowed in this context is 'register'.


"bad character"

 An unrecognized character in the input file.


"both must be integral"

 Both operands of this operator must be of type 'int', 'unsigned' or 'long'.


"break error"

 A 'break' appears outside any loop or 'switch' block.


"cannot cast"

 It is not possible to convert the type of an array or function.


DIAGNOSTICS  (continued)

"cannot evaluate size"

 This error occurs for any object definition for which a size is required and for
 which insufficient  information  to  do  so  is  provided.  An  example  is  the
 definition  of an array with bounds missing. Another would be the declaration of
 a pointer to an object (such as a  structure)  which  has  not  yet  been  fully
 defined.


"cannot initialize"

 Either the object cannot be initialized in  this  context  or  the  initializing
 expression cannot be evaluated.


"can't take address"

 It is not possible to evaluate the address of a register variable.


"condition needed"

 The  condition  or  test  part  of  an  'if', 'for', 'while' or 'do'..'while' is
 missing or incorrect.


"constant expression required"

 Initializers must be able to be evaluated at compile time. Initializers of  type
 'long', 'float' or 'double' may only be simple constants (sorry!).


"constant overflow"

 A constant (number) in the source file is too large for any type in C.


"constant required"

 Constants are required in certain places such as 'case' labels and array bounds.


"continue error"

 A 'continue' appears outside any loop.


"declaration mismatch"

 The  current  declaration/usage of an identifier is inconsistent with a previous
 mention of the identifier.


"divide by zero"

 The expression has a division by the constant 0.


DIAGNOSTICS  (continued)

"expression missing"

 An expression is required in this context.


"function header missing"

 The  compiler  has  seen  an opening brace '{' when all preceding opening braces
 have been matched by closing braces '}' i.e. the current position appears to  be
 in the 'global' context and no function header has been processed.


"function type error"

 A function may not return this type.


"function unfinished"

 This  will  only  occur  at  the  end of a source file and where there are still
 opening braces un-matched by closing braces.


"identifier missing"

 A type specifier is not followed by the name of the object.


"illegal declaration"

 The declaration appears after a statement in a block.


"label required"

 A 'goto' must be followed by a label identifier.


"label undefined : "

 A label which was the object of a 'goto' was not found in the current function.


"lvalue required"

 An expression is required here which evaluates to the address where a value  may
 be stored.


"multiple defaults"

 Only one 'default' label may appear in the block following 'switch'.


"multiple definition"

 The identifier has already been defined.


DIAGNOSTICS  (continued)

"must be integral"

 This expression must evaluate to a value of type 'int', 'unsigned' or 'long'.


"name clash"

 The identifier used as a structure tag has already been  used  for  a  structure
 member.


"named twice"

 The identifier appears twice in a function argument list.


"name in a cast"

 An explicit type conversion (cast) may only have a type name or  'typedef'  name
 between the brackets.


"no 'if' for 'else'"

 An 'else' appears where no previous applicable 'if' has been seen.


"no switch statement"

 A 'case' or 'default' appears outside a block following a 'switch'.


"not a function"

 An  identifier  which  is  not  a  function  name  appears  to be used to call a
 function.


"not an argument"

 There is no corresponding identifier in the argument list.


"operand expected"

 The operand of an arithmetic operator is required in this position.


"pointer mismatch"

 Pointers on either side of this operator must point to objects of the same  type
 and size.


"pointer or integer required"

 A pointer or integer must be in this position in this context.


DIAGNOSTICS  (continued)

"pointer required"

 A pointer is required in this context.


"primary expected"

 A   primary   expression  is  required  in  this  position.  A  primary  is  the
 representation of an object of one  of  the  basic  types  of  C.  Examples  are
 identifiers and constants.


"should be NULL"

 The only value allowed here is NULL (0).


"storage error"

 Register variables may not be declared in the 'global' context.


"struct member mismatch"

 The  identifier  has  already been declared either with a different type or at a
 different offset.


"struct member required"

 Only a structure member name is allowed here.


"struct syntax"

 The syntax of structure declarations has not been observed.


"structure or union inappropriate"

 An operation on a structure or union is attempted which is not possible.


"syntax error"

 This should only appear when the compiler has completely lost track  and  cannot
 diagnose  the  trouble!  Either the syntax is really that bad or previous errors
 have caused the compiler to become out of synchronisation with the thread of the
 program.


"third expression missing"

 This applies to the ternary operator <e1> ? <e2> :  <e3>.  The  compiler  cannot
 find <e3>.


DIAGNOSTICS  (continued)

"too long"

 A  string initializer for a 'char' array is longer than the declared size of the
 array.


"too many brackets"

 This  refers to the block-delimiting braces '{}' and there appear to be too many
 closing braces in a function.


"too many elements"

 There  are  more  initializing  elements  for  an  object  of  derived type than
 available 'slots' in the object.


"typedef - not a variable"

 A 'typedef' identifier is in a position where a normal identifier is expected.


"type error"

 An arithmetic type only is allowed here.


"type mismatch"

 The expressions on either side of this operator do not conform to the type rules
 for assignments.


"undeclared variable"

 The identifier has not been declared or defined.


"undefined structure"

 Reference to an unknown structure.


"unions not allowed"

 Unions may not be initialized.


"unterminated character constant"

 No closing quote (prime) was found.


"unterminated string"

 No closing double quotes were found.


DIAGNOSTICS  (continued)

"while expected"

 A 'do' loop is not terminated with a 'while' test.


 The next group of errors cause immediate termination of the compilation.


"can't open strings file" ...  "can't read strings file"

 The compiler maintains a temporary file for strings.


"error writing assembly code file"

 An error was encountered while trying to write to the assembly code file.


"out of space"

 The  memory  available  to the compiler is insufficient for the symbol table and
 other storage requirements. The cure is to split the source  file  into  smaller
 units and compile separately.


                                     -- O --

 The final group of messages indicate bugs in the compiler. If one appears during
 a  compilation  it would be much appreciated if details (including a copy of the
 source code that caused the error) were forwarded to WINDRUSH MICRO  SYSTEMS  to
 enable us to quickly locate and fix the fault.


 "codgen - floats"

 "codgen - longs"

 "constant operator"

 "compiler trouble"

 "dereference"

 "LEA arg"

 "operator not implemented"

 "relational op"

 "storage error"
