# CMAN-P5

> Source: `manuals/misc/DOC - FLEX Software Archive - Manual and Documentation Archive - Includes CMAN-IDX, CMAN-P1, CMAN-P10.zip!DOC.DSK!CMAN-P5.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
#James McCosh 'C' COMPILER for FLEX                  LINKING LOADER MANUAL  R:1.2


.DHE
#LINKING LOADER MANUAL  R:1.2                  James McCosh 'C' COMPILER for FLEX


.DFO
.
                                     - %%%% -


.DFE
.
                                     - %%%% -


THE LINKING LOADER 'CLOAD'

 The following is a description of what the loader, CLOAD, does and  how  to  use
 it.


PURPOSE OF A LINKING LOADER

 The term 'loader' is misleading. In the early days of computing  a  loader  only
 had  the  task  of  placing a program and its data in memory so that it could be
 executed. It then had added to it the ability to search the  backing  store  for
 subroutines  which  the  program  needed and loading them as well. This involved
 ensuring that references from the program to  these  subroutines  were  correct,
 wherever  the  subroutines  were  actually  placed  in  memory.  Next  it became
 necessary to be able to load programs into different  locations  in  memory  and
 make  sure that they would still refer to things correctly. This is 'relocation'
 and 'linking'.

 Up to this point, all the work of a loader was done at run time, that  is  every
 time  the  program  was  run  the  placing in memory, searching for subroutines,
 relocation and linking was done. Then it was thought that a lot of time could be
 saved  by  doing most of this work once at compile time and saving the result on
 backing store. The trade-off was the  requirement  of  more  storage  space  for
 larger executable files.

 In  a  modern  operating  system,  the job of transferring an executable file to
 memory and executing it is carried out by the system  itself.  All  subroutines,
 other than calls to the system, are carried within the executable file.

 An  obvious extension to the idea of having library routines is to split a large
 program into modules which have well-defined functions and simple interfaces  to
 each  other.  The  advantages  are that a number of people can work on different
 parts of the same project and compilation and/or assembly of individual  modules
 uses less machine resources. The loader has the job of linking them all together
 and searching libraries for routines which are not contained within the  program
 modules. The output of the loader is a complete executable file.

 The definitions of languages such as C and Fortran state that parts of a program
 can be separately compiled so a linking  loader  is  essential  for  their  full
 implementation.


SEGMENTS

 There  are  basically  two uses of memory by a running program. The first is for
 the executable code which should not be modified at  any  time  by  the  program
 itself.  The second use of memory is for the data which the program works on. In
 general, this memory is used for both reading and writing by the program.

 The loader must collect together all the executable code pieces from the various
 modules  and  library  routines  and  place them in a single block in the output
 module. It must also determine how much data memory is required by  each  module
 and  fill in the total in a part of the output file reserved for information for
 the system.

 In doing these two tasks, the loader must keep  track  of  the  offsets  of  all
 important  locations  in  both  memory sections and alter the executable code so
 that references are to the correct places in the final program.


SEGMENTS  (continued)

 It  is  often  convenient to have initial values in parts of the data portion of
 memory at the moment the program starts running. Some languages, notably Pascal,
 have  no  notion of this, but Fortran and C are examples of languages where data
 initialisation is possible. The values set in this way are not necessarily fixed
 for the duration of the program so they must be in the data portion of memory.

 The  loader  handles  this  by maintaining a separate 'segment' for initialising
 data which is distinct from the non-initialised memory. The names for the  three
 segments are, traditionally,

    text            executable code

    data            initialised data memory

    bss             non-initialised data memory

 For  the  6809 processor, it is highly desirable to make as much use as possible
 of the more efficient addressing mode available when  accessing  memory  in  the
 'direct  page'.  There  is,  therefore, a fourth segment for this purpose called
 'direct'.

 If a program is written in a high-level language, the compiler takes care of the
 correct allocation of variables to the various segments, but in assembly code it
 is the programmer's responsibility. See  the  documentation  on  the  Relocating
 Assembler for details.


LOADER OPERATION

 The  output  from  the  assembler is in the form of a 'relocatable module' which
 contains the executable code, initialising data and  tables  of  information  to
 enable  the  loader to link it with the rest of a program. A 'library' file is a
 collection of relocatable modules.

 The output from the loader is an executable program module in the form  required
 by the operating system.

 The  loader  takes  as  arguments  the  names  of  a  number of files containing
 relocatable modules and possibly one or more library files  which  are  searched
 for unresolved references.


NAME

 'CLOAD.CMD' performs the task of link-loading a number  of  relocatable  modules
 into an executable program.


SYNTAX

 CLOAD [options ]<module>[ <module>....]


DESCRIPTION

 A  loader,  variously called a linking-loader or linkage-editor, has the task of
 producing an executable binary file from a number of relocatable  modules  which
 have  been  produced  by  an  assembler.  To do this it has to decide where each
 module should be placed in memory, ensure that references between one module and
 another are resolved and search libraries of modules for routines which have not
 been provided among the other modules.

 CLOAD  is an integral part of the J.McCosh C Compiler package but it can be used
 by itself to load modules in the same manner as the TSC linking loader  'LLOAD'.
 However, it is not intended as a replacement for 'LLOAD' and as such it does not
 have the full range of facilities offered by that program. The major differences
 between  these  two  loaders  is  in  the  ability  of  CLOAD  to  place all the
 unitialised data  areas  together  in  memory,  and  for  the  user  to  specify
 separately  where  the  code  and  data areas should be placed. It is the former
 ability which makes it essential to use  CLOAD  rather  than  LLOAD  to  load  C
 programs.

 Most  users  of  CC  will never need to know how to use CLOAD as the details are
 taken care of by CC when it is desired to produce programs which run under FLEX.
 The  following  description  is  for  those  who  wish  to take advantage of the
 capability of the C compiler to produce code for stand-alone environments.


OPERATION

 The command line arguments to CLOAD consist of one or more  relocatable  modules
 and,  optionally,  one  or more libraries. The limits to these are fifty modules
 and five libraries. The relocatable modules must have been created by  CASM.CMD.
 The  libraries must consist of relocatable modules which have been created using
 CASM and combined using TSC's library generator 'LIB-GEN'.

 The size for each module  is  limited  to  about  25k  bytes  but  there  is  no
 loader-imposed limit to the size of the final executable code.

 The  output file is, by default, named 'OUTPUT.CMD' and is placed on the working
 drive.

 CLOAD views a program as consisting of three distinct areas of memory. The first
 is  the  'text'  segment  which  contains the code of the program itself and any
 initialised data such as string constants. The second  is  called  the  'direct'
 segment which contains variables which are to be accessed using the short direct
 addressing mode instructions of the 6809. The last is called the  'bss'  segment
 (for  historical  and forgotten reasons) which is reserved for memory which will
 be used by the program but which has no particular values assigned to it by  the
 program  before  execution. In C these areas are reserved for all the global and
 static variables but the language definition states that all such un-initialised
 variables  have the value zero at the start of execution. If the file containing
 the executable program had all the zeros in it and  the  program  used  a  large
 amount  of variable storage, the file would be unnecessarily large. If, however,
 the file did not have the zeros in it, either all of memory  would  have  to  be
 cleared  to zero before invoking the program or the program itself would have to
 find all the relevant sections and  zero  them  out  before  starting  execution
 proper. The former method is impractible so CLOAD makes the latter job easier by
 collecting all such areas together in one place in memory.


OPTIONS

 +M             print a load map of the modules showing the lowest address of the
                'text',  'direct'  and  'bss'  segments  in  each relative to the
                absolute addresses of the 'text', 'direct' and 'bss' bases in the
                whole program.

 +S             print  a symbol table of the final, absolute addresses of all the
                global symbols encountered.

 +T=<address>   specify the  starting  address  of  the  'text'  segment  of  the
                program.  <address>  should  be  a  hexadecimal  number.  If this
                address is not specified, the default  is  0.  The  program  will
                start execution at the start of the 'text' segment.

 +B=<address>   specify  the  starting  address  of  the  'bss'  segment. If this
                directive is missing, the 'bss' segment  will  start  immediately
                above the 'text' segment in memory.

 +L=<library>   specify  a  library  to  be  searched  for  un-resolved  external
                references.

 +O=<name>      specify the name of the output  file  containing  the  executable
                code  of  the program. The default is 'OUTPUT.CMD' on the working
                drive. The default extension is '.TXT' and the default  drive  is
                the the working drive.

SPECIAL SYMBOLS

 Programs may refer to three special symbols which are reserved for  the  use  of
 the loader.

 'edata'        refers to the address of the end of the program 'text' segment

 'bdp'          refers to the start of the 'direct' segment.

 'end'          refers to the end of the 'bss' segment.

 These  symbols can be considered globally declared and their values are absolute
 addresses.


DIAGNOSTICS

 The error messages from CLOAD  are  largely  self-explanatory  but  two  require
 further explanation.


"entry name clash: "

 This  indicates  that  CLOAD  has found two entry point symbols in modules which
 have the same name. It cannot therefore decide which is correct  and  gives  up.
 This  will  arise  if the programmer has used the same name for different global
 objects, variables or functions, in his program. Some modules  in  the  Standard
 Library  contain  more  than one function and if CLOAD discovers that one of the
 functions is required it loads the whole  module.  If  the  program  contains  a
 function  with the same name as one of the other functions in the library module
 then this error will occur. The solution is to rename one  of  the  symbols  and
 re-compile.


"... unresolved in ... "

 This  indicates  that an external symbol referenced in one of the modules cannot
 be found as an entry point in any of the supplied  modules  or  in  any  of  the
 modules in a searched library.


 SEE ALSO:

    Relocating Assembler

    Stand-alone Code


                        THIS PAGE INTENTIONALLY LEFT BLANK
