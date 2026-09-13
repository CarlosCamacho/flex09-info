# CMAN-P4

> Source: `manuals/misc/DOC - FLEX Software Archive - Manual and Documentation Archive - Includes CMAN-IDX, CMAN-P1, CMAN-P10.zip!DOC.DSK!CMAN-P4.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
#James McCosh 'C' COMPILER for FLEX            RELOCATING ASSEMBLER MANUAL  R:1.2


.DHE
#RELOCATING ASSEMBLER MANUAL  R:1.2            James McCosh 'C' COMPILER for FLEX


.DFO
.
                                     - %%%% -


.DFE
.
                                     - %%%% -


THE RELOCATING ASSEMBLER, 'CASM'

SOURCE FILE SYNTAX

 A  line  of assembler source code has up to four 'fields' separated by spaces or
 tabs (hex 09). Not all  fields  are  either  necessary  or  permitted  for  some
 instructions.

 The label field starts in the first column of a line and is considered filled if
 the  first  character  is  not  a  space  or  tab.  Labels  may  be  numeric  or
 alphanumeric; the choice is made by looking at the first character in the field.
 If it is a digit the label is numeric and may only contain  up  to  two  decimal
 digits.  If it is a letter or an underline (_) the label is alphanumeric and may
 contain any number of letters, digits and  underlines  but  the  assembler  only
 takes  the first eight characters to be significant. Letters are not folded to a
 single case so two labels with the same spelling are distinct if the case of one
 or  more letters differs. A label which has the same name as a 6809 register may
 not be recognised where it is referenced in an operand field. Numeric labels are
 temporary  in nature and are not used in the same manner as alphanumeric labels;
 there is a full explanation elsewhere in this manual.

 The instruction field follows the label field and may not be empty.  This  field
 must  contain  either a 6809 mnemonic or an assembler directive. Letters in this
 field are folded to lower case so the mnemonic or directive may  be  written  in
 either upper or lower case.

 If  the  instruction expects an operand, the next field is the operand field and
 may not be empty. Where a register name is  part  of  the  operand,  it  may  be
 written in either upper or lower case.

 The  last  field is the comment field and any characters in it are output in the
 listing but have no other effect. This field may be empty.

 If an input line begins with an asterisk (*) or is completely  blank  the  whole
 line is considered to have only a comment field and no instruction is needed.


MNEMONICS AND ADDRESSING MODES

 All  the  standard  6809  mnemonics  are  recognised and so are all the standard
 addressing modes.


PROGRAM COUNTERS

 It is highly desirable to separate the executable code from the data on which it
 operates.  For  code which will reside in ROM, variables must be outside the ROM
 and, in any case, it is usually necessary to clear all non-initialised variables
 to zero.

 Memory  for  data  can be regarded as having two sections; one need not have any
 particular set of values at the start of a program as the program assigns values
 before  using  them,  the  other section will have initial values pre-set by the
 programmer. Many of the pre-set values may not be altered by the program and  it
 would  be possible to include them with the executable code, but those which may
 be altered must be elsewhere.


PROGRAM COUNTERS  (continued)

 A relocating assembler and linking loader enable a program to be  split  into  a
 number  of  separate  source  code  modules which are individually assembled and
 linked together by the loader. The loader needs to collect  all  the  executable
 code  from  each  module and place it in a single block. It needs to do the same
 with the alterable initialising  data  and  to  collect  all  the  other  memory
 requirements in order to decide how much memory is needed overall.

 The  assembler  aids in these functions by maintaining 'segments' into which the
 various pieces of code and variables are placed. The three  traditionally  named
 segments are:

    'text'      executable code.

    'data'      memory with potentially alterable initial values.

    'bss'       memory  for  use  as temporary variables which have no particular
                initial values.

 The programmer indicates which segment a section of code refers to by heading it
 with  one of these names in the instruction field. It is possible to switch from
 one segment to another at any point in  the  source  program  and  there  is  no
 restriction on how often; the assembler and loader sort it all out between them.

 Code of any kind may be generated in the 'text' and 'data' segments but none may
 be generated in the 'bss' segment. It only makes sense to reserve  storage  here
 using  the  'rmb' directive. Under FLEX, there is no need to separate the 'text'
 and  'data'  segments,  but  it  is  convenient  when  writing  assembly   code,
 particularly  code  produced by a compiler, to be able to switch between the two
 without worrying about placing  data  outside  executable  code.  Therefore  the
 assembler  separates the two segments in its output module but the loader leaves
 the 'data' sections adjacent to their respective 'text' sections  in  the  final
 executable file.

 The  6809 has the ability to use one 256 byte 'page' of memory in a special way.
 Instructions to access memory in this page are much shorter and faster than  for
 anywhere  else.  The  location of this 'direct page' is set at any moment by the
 contents of the 'direct page register'  in  the  processor.  The  assembler  and
 loader  make  use of this ability by providing a fourth segment, 'direct', which
 has similar properties to the 'bss' segment but executable code which refers  to
 locations  in the 'direct' segment will use the more efficient direct addressing
 mode. Under FLEX, the loader places the  'direct'  segment  at  the  first  page
 boundary  after  the  'text'  segment.  The  program  must  load the direct page
 register with the most significant byte of  the  address  of  this  page  before
 accessing  any  variable  in  it.  The address is available to the assembly code
 source as 'bdp' so the following code will load the dp register correctly:

    ldd     #bdp
    tfr     a,dp

 For  the  assembler  to  have  enough  information  in its first pass to know to
 generate the shorter code, it is important that the relevant  addresses  in  the
 'direct' segment have been defined earlier in the source code than the accessing
 code.


PROGRAM COUNTERS  (continued)

 The way the segments work in the assembler is that  each  is  given  a  'program
 counter'  which  starts  life  with  a  value of zero. When code is generated or
 storage allocated in a segment, its program counter is increased by the  correct
 amount. Each time the source program switches segment the old program counter is
 saved and when it switches back to the  original  segment  it  is  restored  and
 continues  from  where it left off. If an expression contains a '*', meaning the
 value of the program counter, it is given the  value  of  the  counter  for  the
 current segment.

 Since  it  is  the job of the loader to decide the final addreses of the various
 pieces of code, it makes no sense to have an 'org' directive which, in  absolute
 assemblers,  defines  where  in memory the next section of code is to be placed.
 However, 'org' is used by many programmers to define other things than  absolute
 addresses.  It  is  useful, for example, to define the offsets for elements of a
 structure; e.g.

          org 0
    month rmb 1
    day   rmb 1
    year  rmb 2

 The  mechanism  provided  in  the relocating assembler to do the same thing is a
 'pseudo segment' called 'base'. This differs from the other segments in that the
 value of the 'base' program counter may be explicitly set by the programmer. The
 above code fragment might appear as:

            base    0
    month   rmb     1
    day     rmb     1
    year    rmb     2

 If  the  value  is not set as above, the 'base' program counter has the value it
 had at the end of the last 'base' section of code. No code may be  generated  in
 the 'base' segment and no storage is reserved.

 There  must  be  no  label  field  accompanying a segment name, and except after
 'base' there must be no operand field. The default segment is 'text',  i.e.  the
 segment  is  assumed  to be 'text' until the first segment header is seen in the
 source file.


EXTERNAL AND GLOBAL SYMBOLS

 Labels  defined  in  an assembler source file are normally considered 'local' or
 private to the module generated from it. This means  that  when  the  module  is
 linked  with  other  modules  to  form the executable program, the values of the
 labels are not available to the other modules.

 If the value of a label is to be available for reference  by  other  modules  it
 must  be  made  'global'.  The  effect of this is to allow all modules which are
 linked together to refer to it. The label must be unique among all the modules.

 The syntax is:

    global <label name>[,<label name>[,...]]

 'global' must be in the instruction field and may not be preceded  by  a  label.
 The operand field may contain one or more label names separated by commas. These
 names must refer to labels which are defined somewhere in the  source  file  but
 they must not be the subject of a 'set' directive.

 In the normal mode of operation of the assembler, labels which  are  encountered
 in expressions but which are not defined anywhere in the current source file are
 assumed to be 'external' or defined and declared as 'global' in another  module.
 The  assembler may be invoked with the 'e' option on the command line which puts
 it in a mode which causes an  error  to  be  generated  if  an  undefined  label
 appears.  To  prevent  the  error,  an external label may be declared as such by
 using the 'ext' directive. This has a similar syntax to  'global'.  The  aim  of
 this is to help in finding programmer errors.

 As an example, consider the following source file:

            text

    start   lbsr    fred
            lbsr    joe
            rts

            global  fred
    fred    ldd     #1
            rts

 If  a subroutine 'joe' exists in one of the other modules to be linked with this
 one all will be well. If it does not exist  or  it  has  not  been  declared  as
 'global'  in  any of the other modules, the loader will complain. If the example
 is assembled with the  '+e'  option,  the  assembler  will  complain  about  the
 reference to 'joe' because there is no 'joe' defined in the current source file.
 However, if the line

            ext     joe

 is added it will not complain. The 'global fred' line informs the assembler that
 'fred'  may  be referred to by code in another module. The 'start' label has not
 been declared 'global' and is therefore not accessible by any other module.


EXTERNAL AND GLOBAL SYMBOLS  (continued)

 For convenience when defining a number of labels which are all to be 'global', a
 section  of  code  may be headed with the 'define' directive. All labels defined
 between the 'define' and an 'enddef' directive  will  be  made  global.  Neither
 directive may have a label or operand field.

 E.g.

            bss
            define
    fred    rmb     1
    joe     rmb     2
    sid     rmb     3
            enddef

 is identical in effect to

            bss
            global  fred,joe,sid
    fred    rmb     1
    joe     rmb     2
    sid     rmb     3


EXPRESSIONS

 Expression values fall into four categories:

    Constant
    Absolute
    Relocatable
    External

 A  constant  expression  is  one whose value can be completely calculated by the
 assembler in its first pass. This means that it contains only literals  (numbers
 or  characters)  or  labels which have been defined with literals earlier in the
 source file. Using the 'base' segment is regarded as  defining  with  a  literal
 value.

 E.g. the following are constant expressions:

    1
    'a+$10

 and if earlier in the source file these lines appear:

            base
    fred    rmb     2
            text
    joe     equ     $3456

 the following are also constant expressions:

    fred+1
    joe/10


EXPRESSIONS  (continued)

 Absolute  expressions  are  those  which  can  be  completely  determined by the
 assembler, not necessarily in pass one.  This  category  includes  all  constant
 expressions  but  the restriction that labels used must be previously defined is
 lifted. They must be  defined  with  literals  somewhere  in  the  source  file,
 however.

 Relocatable expressions are those  which  contain  a  label  whose  value  is  a
 location  in  one  of  the  segments  (other  than 'base'). These values are, of
 course, not known until the loader has worked on the modules and  allocated  the
 final  positions  of  the  modules  within  the object program. The value of the
 expression relative to the base of the segment within the source file  is  known
 by  the assembler, however, so the arithmetic difference between two relocatable
 expressions which refer to the same segment is  'promoted'  to  be  an  absolute
 expression. E.g. if the following is in the source file:


            bss
    fred    rmb     1
    joe     rmb     3
    sid     rmb     2


 then:

            sid-fred
            joe+23-fred


 both evaluate to absolute expressions.

 External  expressions  are those which contain a label which is undefined in the
 current source file.

 Expressions must fall into one of these categories and certain instructions  and
 directives  are  restricted  to  either  absolute  or  constant  expressions  as
 operands. In a mixed expression, only one  external  value  or  one  relocatable
 value  may  appear.  If  more  than  one  of either is found, the assembler will
 complain that it cannot evaluate the expression.

 Most instructions accept any of the above types of expression, but an  important
 exception is that short branches may not be made to an external location.


MODULE NAME

 Each source file assembled must have a name which is defined  using  the  'name'
 directive.

    name    <name_string>

 'name' must appear in the instruction field and must not be preceded by a label.
 <name_string> follows the syntax of an alphanumeric label but  may  have  up  to
 fourteen characters.

 The  name  of each module must be unique among the modules to be linked together
 and distinct from any module names in libraries.

 The module name appears as a title in the listing where that is requested.


COMMON BLOCKS

 It is often useful to define a  set  of  relocatable  values  in  the  'bss'  or
 'direct'  segments in a file which is included in a number of other source files
 by using the 'lib' directive. Such values refer to a block of memory  common  to
 each module. This is the means by which Fortran's 'COMMON' may be implemented.

 The  use of a common block in the source code is similar to a segment header. It
 is not a separate segment but a subdivision of  either  the  'bss'  or  'direct'
 segment.

 The syntax for a 'bss' common block is:

    <label> common
    <label> rmb     <constant expression>
            ...
            ...
            endcom

 The  equivalent  for  a  'direct'  segment  common  block replaces 'common' with
 'dpcom'.

 The label field at the head of the block gives the  common  block  its  name.The
 loader  accepts  more than one common block with the same name provided they all
 have the same size. It assumes that they all refer to the same block of  memory.
 A common block name is automatically 'global'.


NUMERIC OR TEMPORARY LABELS

 Temporary labels were mentioned above when the fields of a source code line were
 being described.

 The  intention of these is to save the programmer from having to invent too many
 unique names for labels where it is unnecessary to be  very  meaningful.  It  is
 irritating to have to invent a new name for a label when it is only required for
 a branch around a few instructions.

 Numeric labels may have values from 0 to 99 expressed in decimal notation.  They
 may  not appear in the label fields of 'set' or 'equ' directives but they may be
 re-defined any number of times in a source file. Temporary  labels  may  not  be
 either 'global' or 'external'.

 A  temporary label may be referred to in an operand field by its number followed
 by either 'f' or 'b'. The 'f' means the next  label  with  that  number  looking
 forward in the source file, 'b' looking backward. A temporary label can never be
 referred to on the same source line on which it is defined. For example:

    1       bsr     getch
            cmpa    #'a
            beq     1f
            cmpa    #'b
            bne     2f
    1       bra     1b

    2       rts

 This is not a good example of coding (!) but it illustrates the use of temporary
 labels. The label '1' is defined twice and has a different  value  at  the  'beq
 1f',  which  refers  forward, to that at the 'bra 1b', which refers to the first
 line. Notice in the latter case it does not refer to the label on the same line.


OTHER DIRECTIVES

'equ' and 'set'

 A label once 'equ'ated may not be 'set' and vice versa. Temporary labels may not
 be  in  the  label  field of either. A label may be 'set' more than once and its
 value when referred to is the value last set looking  backwards  in  the  source
 file.


'rzb'

 Reserve zeroed bytes. May only be used in the 'text' or 'data' segments.


'rmb'

 Reserve  memory  bytes.  The  operand  field  must  be a constant expression. If
 encountered in either the 'text' or 'data' segments it is taken to be  the  same
 as 'rzb'.


OTHER DIRECTIVES  (continued)

'fcb' and 'fdb'

 May only be used in the 'text' and 'data' segments.


'fcc'

 'text'   or   'data'   segment   only.   Strings   may  be  delimited  with  any
 non-alphanumeric printing character. Expressions and strings may be mixed in the
 operand  field  separated  by  commas.  The  expressions  are  handled as if the
 directive were 'fcb'. E.g.

    msg     fcc     "error",0


'spc'

 Blank lines inserted in the output listing. If present, <constant expression> is
 the number of blank lines requested, if not 1 is assumed. Syntax:

    spc     [<constant expression>]


'pag'

 Advance the paper to the next page.


'ttl'

 Additional title to the 'name' when a listing is requested.


'lib'

 The  argument to 'lib' is taken to be a file name which is to be included at the
 current point in the assembly. The effect is of a textual  substitution  of  the
 entire file for the 'lib' directive.


 The  following  are implemented in the UNIFLEX and OS-9 versions of this product
 (respectively) and are NOT part of the FLEX product:

'sys'

 Generates code for UniFLEX system calls.


'os9'

 Generates code for OS-9 service requests.


INVOKING THE ASSEMBLER

SYNTAX

 +++CASM <source file> [+o=<destination file>] [+<options>]


FLAGS

 The options flags are:

    l       listing required

    b       no binary output

    e       report undeclared and undefined labels

    n       insert source code line numbers in the listing

    s       print a symbol table

    d<num>  set the depth of listing paper (default 66)

    f       use form-feeds at end of page

 All options are recognised in  either  upper  or  lower  case.  Options  may  be
 preceded  by  either  '+'  or  '-'. A group of options may be run together as in
 "+bls".


NOT IMPLEMENTED

 The following will remain un-implemented:

 org             rendered unnecessary by 'base'

 setdp           only applicable when absolute addresses known, unnecessary  with
                 'direct'.

 nam             use 'name'


 The following are currently un-implemented but may be added at a later date:

 > and <         The  operand  modifiers  '>'  and '<' which force short and long
                 forms of addressing respectively

 rpt             repeat following line n times

 opt             various options overidden on command line

 if              }
 else            } conditional assembly
 endif           }

 macro           } macros
 endm            }

 fcs             as for 'fcc' but setting the msb of the last character

 fcz             as for 'fcc' but appending a zero byte.


FUTURE DEVELOPMENTS

 Automatic   shortening/lengthening  of  branch  instructions  for  the  shortest
 program.


                        THIS PAGE INTENTIONALLY LEFT BLANK
