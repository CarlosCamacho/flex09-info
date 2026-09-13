# CMAN-P8

> Source: `manuals/misc/DOC - FLEX Software Archive - Manual and Documentation Archive - Includes CMAN-IDX, CMAN-P1, CMAN-P10.zip!DOC.DSK!CMAN-P8.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
#James McCosh 'C' COMPILER for FLEX           INTERFACING TO ASSEMBLY CODE  R:1.2


.DHE
#INTERFACING TO ASSEMBLY CODE  R:1.2           James McCosh 'C' COMPILER for FLEX


.DFO
.
                                     - %%%% -


.DFE
.
                                     - %%%% -


INTERFACING TO ASSEMBLY LANGUAGE

 In the normal course of  events,  it  is  entirely  unnecessary  to  substsitute
 assembly code for C code in a program. The small savings in object code size and
 execution time are not worth the disadvantages of using a lower-level  language.
 However,  for  the  rare occasions when it is essential to use assembly code the
 following describes how C functions are structured.

 All code produced by the C compiler  is  designed  to  allow  the  assembler  to
 produce  relocatable  object  modules.  This  means  that  there  are  no  'org'
 directives. It is the responsibility of the loader to  place  the  code  at  the
 desired location in memory.

 The layout of the stack on entry to a function called in the form

    foo(arg0,arg1,arg2,...argn)

 is as follows:

                     argn
                     :  :
                     arg2
                     arg1
                     arg0
    stack pointer -> return address

 Each argument occupies as many bytes as is  necessary  for  its  type.  However,
 arguments of type 'char' occupy two bytes not one.

 Immediately on entry the U and Y registers are pushed onto the stack  so  as  to
 preserve  their values over the function call. This results in the stack looking
 like:

                     argn
                     :  :
                     arg2
                     arg1
                     arg0
                     return address
                     U reg
    stack pointer -> Y reg

 so that the first argument is at 6,s.

 Space on the stack for local variables, if required, is then reserved below this
 by moving the stack pointer down.

 The returned value from a function is passed back in a different form  depending
 on  the  type  of  the  returned  value.  For all 8 or 16 bit types the value is
 returned in the D register. For a long, float or double the value is in a  fixed
 location  where  eight  bytes  are  reserved  which  has  the label '_flacc'. In
 addition, the X register points to '_flacc' and hence to the returned value.

 NOTE: If  a  function  returns a value of type char it will be converted to int;
       this means that the  actual  byte  is  in  the  B  register  and  this  is
       sign-extended into the A register.


 The  calling  sequence,  then, need not worry about the U and Y registers as a C
 function will preserve their values but the stack must  be  restored  as  the  C
 function will not restore it. All that is required is to push the arguments onto
 the stack IN REVERSE ORDER, call the function using a 'jsr' instruction and then
 restore the stack pointer by the sum of the bytes pushed before the call.

 In order two write a function which behaves like a C function only  three  rules
 have to be observed:

 1. the values of the U and Y registers must be preserved,
 2. the code must allow a relocatable module to be produced,
 3. the stack pointer must be preserved.

 The latter should probably be implemented by restoring to the state on entry and
 executing an 'rts' instruction.

 If the assembly code function is to return a value then it should  imitate  a  C
 function as above.

 It is recommended that assembly-code functions are kept in separate files to the
 C code and not written in using the '#asm' compiler directive. In order that the
 loader  can  link  the  function  to  the  rest  of the program, the name of the
 function should be declared 'global'. NOTE that a relocatable module must have a
 name; see the documentation of 'CASM.CMD'.


ACCESSING HARDWARE IN C PROGRAMS

 There are a number of techniques for  accessing  hardware  in  C  programs.  The
 definition of C enables the programmer to dispense almost entirely with assembly
 code except in very rare circumstances. After all, C was developed  for  writing
 the UNIX operating system.


 The  first and simplest method is to use a pointer. Any value may be assigned to
 a pointer and the pointer subsequently used to access the address pointed at. As
 an  example,  suppose  we had a hardware register we wished to address at $E014,
 the following definiton of a pointer would be adequate:

    char *reg = 0xe014;

 This defines a pointer called 'reg' which is initialised to contain the  address
 of the register. Now we can access the register as follows:

    value1 = *reg;
    *reg = value2;


 The second method arises from the ability to use an integer  on  the  left  hand
 side  of  the  '->'  operator as if the integer was a pointer value. If we had a
 device located at $E014 which had two registers we might write the following:

    struct {                /* anonymous structure to declare the members */
            char datreg,    /* data register */
                 conreg;    /* control register */
    };

    #define DEVICE1        0xe014


 Now to access the device:

    DEVICE1->datreg = value1;
    value2 = DEVICE1->conreg;


 The third method is a little dirtier and can only be  guaranteed  to  work  with
 this  compiler  because  the '#asm' directive may be missing in other compilers.
 The first thing to do is to declare objects as if they were  to  be  defined  in
 another module of the program:

    extern struct {
            char datreg,
                 conreg;
    } device1;

 then access the members of the structure as if it  was  a  regular  C  structure
 variable:

    device1.datreg = value1;
    value2 = device1.conreg;

 finally, and outside any C function, tell the ASSEMBLER where 'device1' is:

    #asm
    device1 equ     $E014
    #endasm
