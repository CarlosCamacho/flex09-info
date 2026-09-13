# CMAN-P6

> Source: `manuals/misc/DOC - FLEX Software Archive - Manual and Documentation Archive - Includes CMAN-IDX, CMAN-P1, CMAN-P10.zip!DOC.DSK!CMAN-P6.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
#James McCosh 'C' COMPILER for FLEX                 STANDARD LIBRARY MANUAL R:1.2


.DHE
#STANDARD LIBRARY MANUAL R:1.2                 James McCosh 'C' COMPILER for FLEX


.DFO
.
                                     - %%%% -


.DFE
.
                                     - %%%% -


C STANDARD LIBRARY

INTRODUCTION

 The Standard Library contains functions which fall into  two  classes:  I/O  and
 convenience.

 The  I/O functions provide facilities normally considered part of the definition
 of other languages; for example the FORMAT 'statement' of Fortran or the 'PRINT'
 statement of Basic. The main benefits of their inclusion in the FLEX version are
 ease of use and compatibility with programs written for other environments.

 There are two categories of I/O functions and the difference  between  them  may
 cause  confusion.  The  basic I/O operations are performed using the lower-level
 functions which correspond to 'system calls' as described in K &  R,  chapter  8
 under  the  title "The UNIX System Interface". All the calls mentioned there are
 available. However, most users will prefer to perform I/O operations  using  the
 'higher  level'  functions  described  in the previous chapter of K & R. This is
 because they are more versatile and easier to use.  The  higher-level  functions
 use  the  lower-level  ones  as  their  interface  with  FLEX  itself.  The main
 difference between the higher-level functions and the lower-level ones is in the
 methods of identifying open files and the use of buffering to speed up reads and
 writes.

 The  lower-level  functions  use FILE DESCRIPTORS which are small integers. File
 descriptors 0, 1 and 2 refer to the standard input, standard output and standard
 error  'files'  which  are  always open from the start of program execution. The
 term 'standard input' normally refers to the user's terminal keyboard but may in
 fact  be  from  a  file  if  FLEX's  redirection  ability  is invoked (e.g. with
 'I.CMD'). Similarly 'standard output' refers normally to the terminal screen but
 may  have  been  re-directed  to a file by 'O.CMD'. The 'standard error output',
 however always refers to the terminal so may be used to direct error messages to
 the screen where they will not escape attention even if other output is going to
 a file. File descriptors for other files are obtained from calls  to  'open'  or
 'create'  and  are  used  to  identify  the  file  for subsequent calls to other
 lower-level functions.

 The  higher-level  functions  use FILE POINTERS which are pointers to structures
 maintained by these functions. The File Pointer for an  open  file  is  obtained
 from  a  call to 'fopen' and is used to identify the file in subsequent calls to
 other  higher-level  functions.  There  are  three  file  pointers  declared  in
 'STDIO.H'  which  represent  'files' which are open from the start of execution:
 'stdin', 'stdout' and 'stderr'  correspond  to  File  Descriptors  0,  1  and  2
 respectively.


                                 W A R N I N G


 USING  A  FILE  POINTER IN A LOW-LEVEL CALL OR A FILE DESCRIPTOR IN A HIGH-LEVEL
 CALL is a common mistake among beginners to C, and, if made,  will  be  sure  to
 CRASH YOUR PROGRAM.

 In  functions  which  accept pointers to strings as arguments, representing file
 names, unless otherwise indicated under the function description,  the  defaults
 assumed are a '.TXT' extension and the WORKing drive.


INTRODUCTION  (continued)

 The   convenience  functions  include  facilities  for  copying,  comparing  and
 concatenating strings, making numbers out of strings and classifying characters.

 In  the  pages  which  follow, the functions available are described in terms of
 what they do and the parameters they expect. The 'USAGE' section in  each  shows
 the  name  of the funtion and the type returned (if not int). The declaration of
 arguments is shown as it would be written in the function definition to indicate
 the types expected by the function. If it is necessary to include a file this is
 shown in the 'USAGE' section by '#include <filename>'.

 The  header  files required to be included should reside on the system drive. If
 the file is included in  the  source  program  using  angle  bracket  delimiters
 '<...>'  instead  of  double  quotes the compiler will look for it on the system
 drive. For example '#include <stdio.h>' is equivalent to '#include  "0.stdio.h"'
 if ASN has defined the system drive as drive #0. However, this may be altered at
 compile time by specifying the drive to be  searched  using  the  'I='  compiler
 option.


 PLEASE NOTE:   that  if the type of the value returned by a function is not int,
                you should make a pre-declaration in your program before  calling
                it.  For  example,  if  you  wish  to  use  'atol()',  you should
                pre-declare by having 'long atol();' somewhere  in  your  program
                before  a call to it. Some functions which have associated header
                files the same drive as 'CC.CMD' which should be included will be
                pre-declared for you in the header.


BUILDING YOUR OWN LIBRARIES

 As  users  of  C  that  desire  to  build  their own custom libraries fall into a
 minority we have decided not to develop a  library  generation  program  at  this
 time.  This  decision  has been taken on the basis of the fact that developing it
 would only add to the cost of this product  which  would  unfairly  penalise  the
 majority for the benifit of the minority.

 Users  who  wish  to  develop  their  own custom libraries are not without hope
 however. TSC have a RELOCATING ASSEMBLER - LINKING LOADER  for  FLEX  (SP09-17)
 which  includes  a program called 'LIB-GEN' which is suited to this purpose.

 Contact TSC or your local TSC distributor for further details of this product.


HIGH LEVEL LIBRARY

 The following describes the functions available in the High-level section of the
 Standard Library.

 The  higher-level  I/O  functions provide facilities normally considered part of
 the definition of  other  languages;  for  example  the  FORMAT  'statement'  of
 Fortran.  In  addition  automatic buffering of i/o channels is carried out which
 considerably improves the speed of file access as less  processing  is  required
 for each character read or written.

 The functions in this category should not be confused with the lower-level calls
 with  similar  names.  Nor  should  'file  pointers'  be  confused  with   'file
 descriptors'.  The standard library functions maintain a structure for each file
 open holding status information and a pointer into its buffer.  A  user  program
 uses  a  pointer  to  this  structure  as  the  'identity' of the file (which is
 provided by 'fopen()') and passes it to the various I/O functions. They in  turn
 will make the lower-level calls required when necessary.

 In the pages which follow, the functions available are  described  in  terms  of
 what  they  do and the parameters they expect. The 'USAGE' section in each shows
 the name of the funtion and the type returned (if not int). The  declaration  of
 arguments is shown as it would be written in the function definition to indicate
 the types expected by the function. If it is necessary to include a file this is
 shown in the 'USAGE' section by '#include <filename>'.


abs  -  absolute value of an integer

USAGE

    abs(n)


DESCRIPTION

'abs' returns the absolute value of the integer 'n'.


WARNINGS

 The  largest  negative  integer,  -32768, will not be affected by 'abs' and will
 remain negative.


assert  -  test assertion

USAGE

    #include <assert.h>

    assert(expression)


DESCRIPTION

 This function is implemented as a macro defined in the header file. It indicates
 if 'expression' is true (non-zero) at this point in the program. If 'expression'
 is not true (0), a diagnostic is printed on the standard output and the  program
 exits with error number 2.

 'assert'  is  particularly useful while developing and testing a program but may
 not be required in the production version. Compiling with  the  option  +DNDEBUG
 will effectively delete all calls to 'assert' from the program.

 The diagnostic produced is of the form:

    'Assertion failed: file <file> line <line>.'

 where  <file>  is  the source file and <line> is the line number of the 'assert'
 statement.


atof ,atoi, atol  -  ASCII to number conversions

USAGE

    double atof(ptr)
    char *ptr;

    long atol(ptr)
    char *ptr;

    int atoi(ptr)
    char *ptr;


DESCRIPTION

 Conversions of the string pointed to by 'ptr' to the relevant  number  type  are
 carried  out  by  these functions. They cease to convert a number when the first
 unrecognised character is encountered.

 Each skips leading spaces and tab characters. Atof() then recognises an optional
 sign  followed  by  a  digit string possibly containing a decimal point, then an
 optional 'e' or 'E', an optional sign and a  digit  string.  Atol()  and  atoi()
 recognise an optional sign and a digit string.


BUGS

 Overflow causes unpredictable results. There are no error indications.


fflush, fclose  -  flush or close a file

USAGE

    #include  <stdio.h>

    fflush(fp)
    FILE *fp;

    fclose(fp)
    FILE *fp;


DESCRIPTION

 Fflush causes a buffer associated with the file pointer 'fp' to  be  cleared  by
 writing  out  to  the  file;  of course only if the file was opened for write or
 update. It is not normally necessary to call fflush but it can be  useful  when,
 for  example, normal output is to 'stdout' and it is wished to send something to
 'stderr' which is un-buffered. If fflush were not used and 'stdout' referred  to
 the  terminal,  the  'stderr'  message  will  appear  before large chunks of the
 'stdout' message even though the latter was 'written' first.

 Fclose calls fflush to clear out the buffer associated  with  'fp',  closes  the
 file and frees the buffer for use by another 'fopen' call.

 The  exit()  system  call and normal termination of a program cause fclose to be
 called for each open file.


SEE ALSO

 Low-level call: close()
 fopen()
 setbuf()


ERRORS

 EOF is returned if 'fp' does not refer to an output file or there is an error on
 writing to the file.


feof, ferror, clearerr, fileno  -  return status information of files

USAGE

    #include <stdio.h>

    feof(fp)
    FILE *fp;

    ferror(fp)
    FILE *fp;

    clearerr(fp)
    FILE *fp;

    fileno(fp)
    FILE *fp;


DESCRIPTION

 Feof returns non-zero if the file associated with 'fp' has reached its end, zero
 otherwise.

 Ferror returns non-zero if an error condition has arisen on access to  the  file
 'fp', zero otherwise. The error condition persists, preventing further access to
 the file by other Standard Library functions, until either the file is closed or
 it is cleared by clearerr.

 Clearerr  resets  the  error condition on the file 'fp'. This does NOT 'fix' the
 file or prevent the error from occuring again; it merely allows Standard Library
 functions at least to try.


WARNINGS

 These  functions  are actually macros defined in 'stdio.h' so their names cannot
 re-declared.


SEE ALSO

 Low-level call: open()
 fopen()


findstr, findnstr  -  string search

USAGE

    findstr(pos,string,pattern)
    char *string,*pattern;

    findnstr(pos,string,pattern,size)
    char *string,*pattern;


DESCRIPTION

 These  functions search the string pointed to by 'string' for the first instance
 of the pattern pointed to by 'pattern' starting at  position  'pos'  (where  the
 first  position  is  1  not  0). The returned value is the position of the first
 matched character of the pattern in the string or zero if not found.

 Findstr stops searching the string when a null byte is found in 'string'.

 Findnstr only stops searching at position 'pos' + 'len'  so  may  continue  past
 null bytes.


BUGS

 The current implementation does not use the most efficient algorithm for pattern
 matching so that use on very long strings is likely to be somewhat  slower  than
 it might be.


SEE ALSO

 index()
 rindex


fopen  -  open a file and return a file pointer

USAGE

    #include <stdio.h>

    FILE *fopen(filename,action)
    char *filename,*action;


DESCRIPTION

 Fopen returns a pointer to a file structure (file pointer) if the file named  in
 the string pointed to by 'filename' can be validly opened with the action in the
 string pointed to by 'action'.

 The valid actions are "r" for read, "w" for write. Additionally for FLEX,  where
 there  is  a distinction between binary files and text files on the one hand and
 random files and sequential files on the  other,  the  action  string  may  have
 either  'r' or 'b' after the initial letter. For example, to create a new random
 file a call such as:

    f = fopen("fred","wr");

 should be made. Note that only one such character is necessary  and  allowed  as
 random files are automatically made binary.

 Opening for write will perform a 'creat()', that is if a file with the same name
 exists it will be truncated to zero length.

 The default drive for files accessed through 'fopen()' is the system drive.  The
 default  extensions  are  '.TXT'  for a non-binary sequential file, '.BIN' for a
 binary sequential file and '.DAT' for a random file.

 NOTE  that  the  type of a file structure is pre-defined in 'stdio.h' as FILE so
 that a user program may declare or define a file pointer by, for example:

    FILE *f;

 Three  file  pointers  are  available  and can be considered open the moment the
 program runs: stdin the standard input - equivalent to file descriptor 0, stdout
 the  standard  output  -  equivalent to file descriptor 1, stderr standard error
 output- equivalent to file descriptor 2. All files are  automatically  buffered,
 except stderr, unless made un-buffered by a call to setbuf() (q.v.).


WARNINGS

 The 'action' passed as an argument to fopen must be a pointer to a string, NOT a
 character.   For   example   fp   =  fopen("fred","r");  is  correct  but  fp  =
 fopen("fred",'r'); is not.


ERRORS

 Fopen returns NULL (0) if the call was unsuccessful.


SEE ALSO

 Low-level calls: open(), creat() ... fclose()
fread, fwrite  -  read/write binary data

USAGE

    #include <stdio.h>

    fread(ptr, size, number, fp)
    FILE *fp;

    fwrite(ptr, size, number, fp)
    FILE *fp;


DESCRIPTION

 Fread reads from the file pointed to by 'fp', 'number' items of size 'size' into
 memory  starting  at 'ptr'. The best way to pass the argument 'size' to fread is
 by using 'sizeof'. This function returns the number of items actually read.

 Fwrite writes to the file pointed to by 'fp',  'number'  items  of  size  'size'
 reading them from memory starting at 'ptr'.


ERRORS

 Both functions return 0 at end of file or error.


SEE ALSO

 Low-level calls: read(), write().

 Fopen()
 getc()
 putc()
 printf()


fseek, rewind, ftell  -  position in a file or report current position

USAGE

    #include <stdio.h>

    fseek(fp, offset, place)
    FILE *fp;
    long offset;

    rewind(fp)
    FILE *fp;

    long ftell(fp)
    FILE *fp;


DESCRIPTION

 Fseek  re-positions  the  next  character  position of a file for either read or
 write. The new position is at 'offset' bytes from the beginning if 'place' is 0,
 the current position if 1. Fseek sorts out the special problems of buffering.

 NOTE that using 'lseek()' on a buffered file will produce unpredictible results.

 Rewind is equivalent to 'fseek(fp,0l,0)'.

 Ftell returns the current position, measured in bytes, from the beginning of the
 file pointed to by 'fp'.


WARNINGS

 Fseek will work on random files open for read, write or update and on sequential
 files open for read. It will NOT work on a sequential file open for write. Ftell
 will work on any file.

 Using fseek on a sequential file can be a time-consuming business. The only  way
 it  can work is by stepping through the file to the required position, rewinding
 first if the position is before the current one.


ERRORS

 Fseek returns -1 if the call is invalid.


SEE ALSO

 Low-level call: lseek().


get_fcb  -  return the address of a currently open FCB

USAGE

    #include <stdio.h>
    #include <flex.h>

    fcb *get_fcb(fp)
    FILE *fp;


DESCRIPTION

A file which has been opened using 'fopen' is allocated a File Control Block for
the interface with FLEX for primitive i/o operations.  A pointer to the  FCB  is
returned by this function which is implemented as a macro in 'stdio.h'.

The header file, 'flex.h', contains many useful definitions for  direct  accesss
to FLEX.


SEE ALSO

 Low-level call: ret_fcb().


getc, getchar  -  return next character to be read from a file

USAGE

    #include <stdio.h>

    int getc(fp)
    FILE *fp;

    int getchar()

    int getw(fp)
    FILE *fp;


DESCRIPTION

 Getc returns the next character from the file pointed to by 'fp'.

 Getchar is equivalent to 'getc(stdin)'.

 Getw returns the next two bytes from the file as an integer.


ERRORS

 EOF (-1) is returned for end of file or error.


SEE ALSO

 putc()
 fread()
 fopen()
 gets()
 ungetc()


gets, fgets  -  input a string

USAGE

    #include <stdio.h>

    char *gets(s)
    char *s;

    char *fgets(s,n,fp)
    char *s;
    FILE *fp;


DESCRIPTION

 Fgets  reads characters from the file 'fp' and places them in the buffer pointed
 to by 's' up to a carriage-return ('\n') but not more than (n - 1) characters. A
 null character is appended to the end of the string.

 Gets is similar to fgets applied to 'stdin' but no maximum is stipulated and the
 '\n' is replaced by a null.

 Both functions return their first arguments.


ERRORS

 Both functions return NULL on end-of-file or error.


BUGS

 The different treatment of the '\n' by these  functions  is  retained  here  for
 portability reasons.


SEE ALSO

 puts()
 getc()
 scanf()
 fread()


character classification

 isalpha,  isupper, islower, isdigit, isalnum, isspace, ispunct, isprint, iscntrl
 and isascii.


USAGE

    #include <ctype.h>

    isalpha(c)

    etc.


DESCRIPTION

 These use table look-up to classify characters according to their  ascii  value.
 The  header file defines them as macros which means that they are implemented as
 fast, in-line code rather than subroutines.

 Each results in non-zero for true or zero for false.

 The correct value is guaranteed for all integer values in isascii but the result
 is unpredictable in the others if the argument is outside the range -1 to 127.

 The  truth  tested  by  each is as follows:

 isalpha c is a letter
 isdigit c is a digit
 isupper c is an upper case letter
 islower c is a lower case letter
 isalnum c is a letter or a digit
 isspace c is a space, tab character, newline, carriage return or formfeed
 iscntrl c is a control character (0 to 31) or DEL (127)
 ispunct c is neither control nor alpha-numeric
 isprint c is printable (32 to 126)
 isascii c is in the range -1 to 127


l3tol, ltol3  -  convert between long integers and 3-byte integers

USAGE

    l3tol(lp,cp,n)
    long *lp;
    char *cp;

    ltol3(cp,lp,n)
    long *lp;
    char *cp;


DESCRIPTION

 Sometimes it is possible to store values as three binary bytes rather than  four
 when  two bytes would not suffice. These funtions enable 'long' arithmetic to be
 used on these three-byte values.

 L3tol converts a vector of 'n' three-byte integers pointed to  by  'cp'  into  a
 vector of long integers starting at 'lp'.

 Ltol3 does the opposite.

 Please note that the three-byte form cannot express negative numbers.


longjmp, setjmp  -  jump to another function

USAGE

    #include <setjmp.h>

    setjmp(env)
    jmp_buf env;

    longjmp(env,val)
    jmp_buf env;


DESCRIPTION

 These  functions  allow the return of program control directly to a higher level
 function; most useful when dealing with errors and interrupts encountered  in  a
 low level routine.

 'Goto'  in  C has scope only in the function in which it is used; i.e. the label
 which is the object of a 'goto' may only be in the same  function.  Control  can
 only  be  transferred  elsewhere  by means of the function call, which of course
 returns to the caller. In certain abnormal situations a programmer would  prefer
 to  be able to start some section of code again but this would mean returning up
 a ladder of function calls with error indications all the way.

 Setjmp is used to 'mark' a point in the program where a subsequent  longjmp  can
 reach.  It  places in the buffer, defined in the header file, enough information
 for longjmp to restore the environment to that existing at the relevant call  to
 setjmp.

 Longjmp is called with the environment buffer as argument and also a value which
 can be used by the caller of setjmp as, perhaps, an error status.

 To set the system up, a function will call setjmp to set up the  buffer  and  if
 the  returned  value  is zero the program will know that the call was the 'first
 time through'. If however the returned value is non-zero, it must be  a  longjmp
 returning from some deeper level of the program.

 NOTE  that  the  function  calling  setjmp must NOT HAVE RETURNED at the time of
 calling longjmp and that the environment buffer must be declared GLOBALLY.


printf, fprintf, sprintf  -  formatted output

USAGE

    #include <stdio.h>

    printf(control [,arg0[,arg1..]])
    char *control;

    fprintf(fp, control [,arg0[,arg1..]])
    FILE *fp;
    char *control;

    sprintf(string,control [,arg0[,arg1..]])
    string [];
    char *control;


DESCRIPTION

 These  three  functions  are  used to place numbers and strings on the output in
 formatted, human readable form.

 Fprintf places its output on the file 'fp', printf on the  standard  output  and
 sprintf  in  the  buffer  pointed  to  by  'string'.  NOTE that it is the user's
 responsibility to ensure that this buffer is large enough.

 The 'control' string determines the format, type and  number  of  the  following
 arguments  expected by the function. If the control does not match the arguments
 correctly, the results are unpredictable.

 The control may contain characters to be copied directly to  the  output  and/or
 format specifications. Each format specification causes the function to take the
 next successive argument for output.

 A format specification consists of a '%' character followed by (in this order) :

 1. An optional minus sign ('-') meaning left justification in the field

 2. An optional string of digits indicating the field width required.  The  field
    will  be  at  least this wide and may be wider if the conversion requires it.
    The field will be padded on the left unless the above minus sign is  present,
    in  which  case  it will be padded on the right. The padding character is, by
    default, a space but if the digit string starts with a zero ('0') it will  be
    '0'.

 3. An  optional  dot ('.') and a digit string, the precision, which for floating
    point arguments indicates the number of digits to follow the decimal point on
    conversion  and  for strings the maximum number of characters from the string
    argument are to be printed.

 4. An optional character 'l' indicating that the following 'd','x' or 'o' is the
    specification of a long integer argument.


printf, fprintf, sprintf  -  formatted output  (continued)

 5. A  conversion  character which shows the type of the argument and the desired
    conversion. The recognised conversion characters are:

    d, o, x       The argument is an integer and the conversion  is  to  decimal,
                  octal or hexadecimal respectively.

    u             The  argument  is  an integer and the conversion is to unsigned
                  decimal in the range 0 to 65535.

    f             The argument is a double and the  form  of  the  conversion  is
                  '[-]nnn.nnn'  where  the  digits  after  the  decimal point are
                  specified as above. If not specified, the precision defaults to
                  six digits.If the precision is 0, no decimal point or following
                  digits are printed.

    e             The argument is a double and the  form  of  the  conversion  is
                  '[-]n.nnn(+or-)nn';  one digit before the decimal point and the
                  precision controls the number following.

    g             The argument is a double and either the 'f' format or  the  'e'
                  format is chosen, whichever is the shortest.

                  NOTE: in  each  of the above double conversions, the last digit
                        is rounded.

    c             The argument is a character.

    s             The argument is a pointer to  a  string.  Characters  from  the
                  string  are  printed up to a null character or until the number
                  of characters indicated by the precision have been printed.  If
                  the precisionis 0 or missing, the characters are not counted.

    %             No argument corresponding; '%' is printed.


SEE ALSO

 Kernighan & Ritchie pages 145-147.

 putc()
 scanf()


putc, putchar, putw  -  put character or word in a file

USAGE

    #include <stdio.h>

    char putc(ch,fp)
    char ch;
    FILE *fp;

    char putchar(ch)
    char *ch;

    putw(n,fp)
    FILE *fp;


DESCRIPTION

 Putc adds the character 'ch' to the file 'fp' at the  current  writing  position
 and advances the position pointer.

 Putchar is implemented as a macro (defined in the header file) and is equivalent
 to 'putc(ch,stdout)'.

 Putw adds the (two byte) machine word 'n' to the file  'fp'  in  the  manner  of
 putc.

 Output  via  putc is normally buffered except (a) when the buffering is disabled
 by 'setbuf()', and (b) the standard error output is always unbuffered.


ERRORS

 Putc and putchar return the character argument from a successful call and EOF on
 end-of-file or error.


SEE ALSO

 fopen()
 fclose()
 fflush()
 getc()
 puts()
 printf()
 fread()


puts, fputs  -  put a string on a file

USAGE

    #include <stdio.h>

    puts(s)
    char *s;

    fputs(s,fp)
    char *s;
    FILE *fp;


DESCRIPTION

 Fputs copies the (null-terminated) string pointed to by 's' onto the file 'fp'.

 Puts copies the string 's' onto the standard output and appends '\n'.

 The terminating null is not copied by either function.


WARNINGS

 The inconsistency of the new-line being appended by puts and  not  by  fputs  is
 dictated by history and the desire for compatibility.


qsort  -  quick sort

USAGE

    qsort(base,n,size,compfunc)
    char *base;
    int (*compfunc)(); /* which means: a pointer to a funtion returning an int */


DESCRIPTION

 Qsort implements the quick-sort algorithm for  sorting  an  arbitrary  array  of
 items.

 'Base'  is the address of the array of 'n' items of size 'size'. 'Compfunc' is a
 pointer to a comparison routine supplied by the user. It will be called by qsort
 with  two  pointers  to  items  in the array for comparison and should return an
 integer which is less than, equal to or greater than 0  where  respectively  the
 first item is less than, equal to or greater than the second.


scanf, fscanf, sscanf  -  input string interpretation

USAGE

    #include <stdio.h>

    fscanf(fp,control,[,pointer...])
    FILE *fp;
    char *control;

    scanf(control[,pointer...])
    char *control;

    sscanf(string,control[,pointer...])
    char *string,*control;


DESCRIPTION

 These functions perform the complement to 'printf()' etc.

 Fscanf  performs  conversions  from the file 'fp', scanf from the standard input
 and sscanf from the string pointed to by 'string'.

 Each function expects a control string containing conversion specifications  and
 zero or more pointers to objects into which the converted values are stored.

 The control string may contain three types of field :

 (a) Spaces,  tab  characters or '\n' each of which match any of the three in the
     input.

 (b) Characters not among the above and not '%' which must  match  characters  in
     the input.

 (c) A '%' followed by:

     an optional '*' indicating suppression of assignment,
     an optional field width maximum and
     a conversion character indicating the type expected.

 A  conversion characters controls the conversion to be applied to the next field
 and indicates the type of the corresponding pointer argument. A  field  consists
 of consecutive non-space characters and ends at either a character inappropriate
 for the conversion or when a specified field width is exhausted. When one  field
 is  finished,  white-space  characters  are  passed over until the next field is
 found.

 The following conversion characters are recognised :

 d        A decimal string is to be converted to an integer.

 o        An octal string; the corresponding argument should point to an integer.

 x        A hexadecimal string for conversion to an integer.

 s        A string of non-space characters is expected and will be copied to  the
          buffer  pointed  to  by  the  corresponding  argument and a null ('\0')
          appended. The user must ensure that the buffer  is  large  enough.  The
          input string is considered terminated by a space, tab or ('\n').
scanf, fscanf, sscanf  -  input string interpretation  (continued)

 c        A  character  is expected and is copied into the byte pointed to by the
          argument. The white-space skipping is suppressed for  this  conversion.
          If  a  field  width  is  given,  the  argument is assumed to point to a
          character array and the number of characters indicated is copied to it.
          NOTE  to  ensure  that  the  next non-white-space character is read use
          '%1s' and that TWO bytes are pointed to by the argument.

 e, f     A floating point representation  is  expected  on  the  input  and  the
          argument must be a pointer to a float. Any of the usual ways of writing
          floating point numbers are recognised.

 [        This denotes the start of a set of match characters  the  inclusion  or
          exclusion  of  which delimits the input field. The white-space skipping
          is suppressed. The corresponding argument should  be  a  pointer  to  a
          character array. If the first character in the match string is not '^',
          characters are copied from the input as long as they can  be  found  in
          the  match  string, if the first character is '^' the copying continues
          while characters cannot be found in the match string. The match  string
          is delimited by a ']'.

 D, O, X  Similar  to  d, o, x above but the corresponding argument is considered
          to point to a long integer.

 E, F     Similar to e, f above but the corresponding argument should point to  a
          double.

 %        A match for '%' is sought; no conversion takes place.

 Each  of  these  functions  returns a count of the number of fields successfully
 matched and assigned.


ERRORS

 These funtions return EOF on end of input or error and a count which is  shorter
 than expected for unexpected or unmatched items.


BUGS

 The returned count of matches/assignments does not include character matches and
 assignments suppressed by '*'.


WARNINGS

 The arguments must ALL be pointers. It is a common error to call scanf with  the
 value of an item rather than a pointer to it.


SEE ALSO

 Atoi(), atof(), getc(), printf().
 Kernighan and Ritchie pp 147-150

setbuf  -  fix file buffer

USAGE

    #include <stdio.h>

    setbuf(fp,buffer)
    FILE *fp;
    char *buffer;


DESCRIPTION

 When  the  first  character  is written to or read from a file after it has been
 opened by 'fopen()', a buffer is  obtained  from  the  system  if  required  and
 assigned  to it. Setbuf may be used to forestall this by assigning a user buffer
 to the file.

 Setbuf must be used after the file has been opened and before any i/o has  taken
 place.

 The  buffer  must  be  of  sufficient  size and a value for a manifest constant,
 BUFSIZ, is defined in the header file for use in declarations.

 If the  'buffer'  argument  is  NULL  (0),  the  file  becomes  un-buffered  and
 characters are read or written singly.

 NOTE  that  the  standard  error  output is normally unbuffered and the standard
 output is buffered.


SEE ALSO

 fopen()
 getc()
 putc()


string functions

 index and rindex.

 strcat, strncat, strcmp, strncmp, strcpy, strncpy and strlen.


USAGE

    char *strcat(s1,s2)
    char *s1,*s2;

    char *strncat(s1,s2,n)
    char *s1,*s2;

    strcmp(s1,s2)
    char *s1,*s2;

    strncmp(s1,s2,n)
    char *s1,*s2;

    char *strcpy(s1,s2)
    char *s1,*s2;

    char *strncpy(s1,s2,n)
    char *s1,*s2;

    strlen(s)
    char *s;

    char *index(s,ch)
    char *s,ch;

    char *rindex(s,ch)
    char *s,ch;


DESCRIPTION

 All strings passed to these functions are assumed null-terminated.

 Strcat  appends a copy of the string pointed to by 's2' to the end of the string
 pointed to by 's1'. Strncat copies at most 'n' characters. Both return the first
 argument.

 Strcmp  compares  strings  's1'  and 's2' for lexicographic order and returns an
 integer less than, equal to or greater than 0 where, respectively, 's1' is  less
 than, equal to or greater than 's2'. Strncmp compares at most 'n' characters.

 Strcpy  copies  characters  from  's2' to the space pointed to by 's1' up to and
 including the null byte. Strncpy copies exactly 'n' characters.  If  the  string
 's2'  is  too  short  the  's1'  will  be  padded with null bytes to make up the
 difference. If 's2' is too long, 's1' may not be null-terminated. Both  funtions
 return the first argument.

 Strlen returns the number of non-null characters in 's'.

 Index  returns  a  pointer to the first occurrence of 'ch' in 's' or NULL if not
 found.
string functions  (continued)

 Rindex returns a pointer to the last occurrence of 'ch' in 's' or  NULL  if  not
 found.


WARNINGS

 Strcat  and  strcpy  have  no means of checking that the space provided is large
 enough. It is the user's responsibility to ensure that  string  space  does  not
 overflow.


SEE ALSO

 Findstr()


system  -  FLEX command request

 USAGE

    system(string)
    char *string;


DESCRIPTION

 System  passes  its  argument  to  FLEX which executes it as a command line. The
 current program is suspended until  the  command  is  completed  and  'system()'
 returns the command's exit status.


WARNINGS

 The  only  commands which can be safely executed by FLEX using this function are
 those which do not overwrite any part of the currently running C program or  its
 stack  area.  This  usually restricts the use to those utilities residing in the
 Utility Command Space starting at $C100.


toupper, tolower  -  character case conversions

USAGE


    #include <ctype.h>

    int toupper(c)
    char c;

    int tolower(c)
    char c;


DESCRIPTION

 These functions check that their arguments are suitable and return the value  of
 the character mapped to upper case or lower case where appropriate.


ungetc  -  put character back on input

USAGE

    #include <stdio.h>

    ungetc(ch,fp)
    char ch;
    FILE *fp;


DESCRIPTION

 This function alters the state of the input file buffer such that the next  call
 of 'getc()' returns 'ch'.

 Only  one character may be pushed back and at least one character must have been
 read from the file.

 'Fseek()' erases any pushback.


ERRORS

 Ungetc returns its character argument unless no pushback could occur,  in  which
 case EOF is returned.


SEE ALSO

 getc()
 fseek()


LOW LEVEL LIBRARY

 This section of the C compiler manual is a guide to the low-level file functions
 available from C programs. These functions form the interface between C programs
 and the FLEX FMS and simplify file access. Most of the functions available mimic
 the equivalent 'system calls' in Unix, sometimes with slight  usage  changes  or
 restrictions, and others provide FLEX-specific access to the FMS.

 The  identification  of an open file to the low-level functions is by means of a
 small integer called a 'File Descriptor'. Most files must have been  assigned  a
 file  descriptor by 'open()' or 'creat()', but there are three which are open at
 the start of the program which normally refer to the system console.  These  are
 0, standard input; 1, standard output; 2, standard error. File descriptors 0 and
 1 may be re-directed from or to files by, for example, 'I.CMD' or 'O.CMD'.  File
 descriptor  2  may  not  be  re-directed and may be read or written. The maximum
 number of files which can be open at any one time is 16. The  value  of  a  file
 descriptor is therefore in the range 0 to 15.

 The  normal error indication on return from a low-level call is a returned value
 of -1. The relevant error will be found in the  pre-defined  int  'errno'.  This
 location  always  contains  the  error from the last erroneous low-level call or
 call to the FLEX FMS. Definitions of the errors for inclusion in a  program  are
 in  <errno.h>.  The  error numbers reported by library routines are mainly those
 listed in the FLEX documentation. The following is a list  of  the  extra  error
 numbers required by the library itself:

 #define EMFILE  30      /* too many files - 16 maximum */
 #define EBADF   31      /* file descriptor not open for relevant mode */
 #define EINVAL  32      /* invalid argument */
 #define ESTOF   33      /* stack overflow */
 #define EESCR   34      /* ESCAPE return */

 /* errors from arithmetic routines */

 #define EFPOVR  40      /* floating point overflow or underflow */
 #define EDIVERR 41      /* division by zero */
 #define EINTERR 42      /* overflow on conversion of floating point to long
                            integer */

 In the 'SEE ALSO' sections on the following pages, unless otherwise stated,  the
 references are to other low-level calls.

 Where  '#include'  files  are  shown, it is not mandatary to include them but it
 might be convenient to use the manifest constants defined in  them  rather  than
 integers; it certainly makes for more readable programs.


brk, sbrk  -  request additional working memory

USAGE

    brk(address)
    char *address;

    char *sbrk(increase)


DESCRIPTION

 Brk requests that the program's addressable data area should include 'address'.

 Sbrk  requests  that  the current available data area be increased by 'increase'
 bytes and returns a pointer to the lowest address in  the  the  newly  available
 memory.

 Memory  acquired  by calls to brk or sbrk is logically contiguous with that from
 the last such call.

 When a program starts execution, memory is allocated to  the  'bss'  segment  of
 memory  which contains all the un-initialised variables used by the program. The
 CSTART module, which is normally loaded with the program, clears  this  area  to
 zeros  before  calling 'main' to start execution of the program proper. There is
 normally a gap between the top of the 'bss' area and the bottom of the currently
 reserved  stack  area.  Needless to say, disaster could result if the stack were
 allowed to grow downwards into the 'bss', or vice versa. The downward growth  of
 the  stack  reserved  area  is  checked on entry to every C function and calling
 'sbrk' or 'brk' will check that the upward growth of the 'bss' will not overflow
 the stack area.


ERRORS

 Brk  returns  0  if the break could be set at the requested place, -1 otherwise.
 Sbrk also returns -1 on error.


SEE ALSO

 stacksize()
 setstack()


checkterm  -  check for a character typed at the terminal

USAGE

    checkterm()


DESCRIPTION

 This  function allows the program to interrogate the system terminal for a typed
 character and returns its value to the caller  if  there  is.  If  there  is  no
 character waiting, checkterm() returns -1.


close  -  close a file

USAGE

    close(fd)


DESCRIPTION

 Close takes a file descriptor, 'fd', as returned from low-level  calls  'open()'
 or 'creat()' and closes the associated file.

 Normal  termination  of  a C program always closes all open files automatically,
 but it is necessary to close files where multiple files are opened by  the  task
 and it is desired to re-use file descriptors to avoid going over the system file
 descriptor limit.

 Note that file descriptors 0 and 1 may be closed but file descriptor 2 may  not.
 Both  'open()'  and  'creat()'  search  the  file descriptor list from 0 upwards
 looking for a free number so, for example, closing 0 and  opening  a  file  will
 have  the  effect  of  making reads on file descriptor 0 get characters from the
 file rather than the terminal. However, file descriptor  2  may  not  be  closed
 guaranteeing that there is always a channel open to the terminal.


SEE ALSO

 creat()
 open()


creat  -  create a new file

USAGE

    #include <modes.h>

    creat(fname,mode)
    char *fname;


DESCRIPTION

 Creat returns a file descriptor to a new file available  for  writing  with  the
 type  of  file  given by 'mode'. If, however, 'fname' is the name of an existing
 file it is truncated to zero length and the  ownership  and  permissions  remain
 unchanged.

 The values of 'mode' specify the following:

 0       'text' type file        - default extension '.TXT'
 1       'binary' type file      - default extension '.BIN'
 2       'random' type file      - default extension '.DAT'


ERRORS

 This call returns -1 if there  are  too  many  files  open,  if  'mode'  has  an
 incorrect value or there is a disk error.


SEE ALSO

 write()
 close()


exit, _exit  -  task termination

USAGE

    exit(status)

    _exit(status)


DESCRIPTION

 Exit is the normal means of terminating  a  task.  Exit  does  any  cleaning  up
 operations required before terminating, such as flushing out any high-level file
 buffers, _exit does not, but FMSCLS is always called to flush any written FCBs.

 A task finishing normally, that is returning from 'main',  is  equivalent  to  a
 call - 'exit(0)'.

 The  value  of  'status' is placed in ERRTYP ($CC20) so that either a diagnostic
 can be produced by FLEX, or programs such as EXEC, which may be waiting for  the
 C program to finish, know that an error has occurred.


devopen  -  open a channel to an arbitrary device

USAGE

    #include <device.h>

    devopen(name,dev,mode)
    char *name;
    device *dev;


DESCRIPTION

 This  function  provides the facility for any device to be treated as a file for
 'read()' or 'write()'. Typical devices might be printers or paper  tape  punches
 (of fond memory!).

 The header file defines a device structure as follows:

        typedef struct {
                char    *d_address;
                int     (*d_init)(),
                        (*d_read)(),
                        (*d_write)(),
                        (*d_close)();
                char    d_flag;
        } device;

 Note that all the members of  the  structure  except  the  first  and  last  are
 pointers  to  (addresses  of)  functions.  A value of 0 for one of these members
 indicates that no action is to take place; for example, a device which needs  no
 initialisation.

 The  'name' argument is the name of a file which is presumed to contain the code
 for the device driver. The defaults for this  file  are  the  system  drive  and
 '.SYS'  extension.  This  argument  may  be  NULL (0), in which case 'devopen()'
 assumes that the driver code is already in memory.

 The 'mode' argument may be 0 for read, 1 for write or 2 for read and write.

 The action of 'devopen()' is first to load the driver,  if  necessary,  then  to
 assign  a  file descriptor to the device channel and finally to call the routine
 pointed at by 'd_init'. Subseqeunt calls to 'read()' or 'write()' will call  the
 relevant  driver  routine to get or put characters. A call to 'close()' the file
 descriptor will call the  routine  pointed  at  by  'd_close'.  The  'd_address'
 structure member may contain the address of the port which is to be accessed.

 On  calls to 'write()', there is a choice of what is to happen on encountering a
 '\r' (RETURN). If the value  of  'd_flag'  is  non-zero,  a  newline  ('\l')  is
 additionally written to the device.

 The  device  driver  will  be  called with 'd_address' in the X register so that
 different devices with the same driver code  can  be  specified  with  different
 device structures.


devopen  -  open a channel to an arbitrary device  (continued)

                                  PLEASE NOTE

 The  device driver is assumed to follow the FLEX convention of passing character
 values to and from in the 6809 A register.  This  is  consistent  with  existing
 printer drivers etc. If the driver is written in assembler then there is nothing
 further to worry about.

 For  device  drivers  written in C, a copy of the 'd_address' value is placed on
 the stack in the position of the first argument to a function. A 16 bit copy  of
 the  argument  in  the A register is placed above that on the stack in the place
 where a C function would expect its second argument. E.g.:

        wr_dev(address,c)
        char *address,c;
        {
                etc..

 If  the 'read' driver code is written in C, it will have to be careful about its
 return value. If, for example, the read code  has  stored  its  character  in  a
 variable called 'c', there should be a statement such as:

        return (c << 8);

 in  order  to  get the value required into the A register (because the interface
 code puts it back into the B register!).

 An example program, "printest.c" is supplied on the issue diskette  showing  the
 use of a standard printer driver with 'devopen()'.

 An example of a simple ACIA driver is in "acia.c".


ERRORS

 -1 is returned if 'mode' has an invalid value, there is a file name supplied and
 there is an error loading this file or if there are too many files open already.


SEE ALSO

 open()
 close()
 read()
 write()


fms  -  direct access to the FLEX FMS

USAGE

    #include <flex.h>

    fms(f,code [,arg])
    fcb *f;


DESCRIPTION

 This is the function used by all the C library functions which require access to
 the FMS.

 The header file defines the structure of a File Control Block (fcb) and some FMS
 function codes.

 The initial action is to place the value of 'f', a pointer to an  existing  FCB,
 in  the  X  register,  the value of 'code', which should be a valid FMS function
 code, in the first byte of the FCB and the value of 'arg', where approriate,  in
 the  A  register.  Then  the  FMS  is called. If there is no error indication on
 return from the FMS, then 'fms()' returns the value in  the  A  register  as  an
 integer.  Otherwise  it  places the error number found in the second byte of the
 FCB in 'errno' and returns -1.

 Thus a typical calling sequence might be:

        if((c = fms(f,F_READ)) == -1) {
                printf("File error %d\n",errno);
                exit(1);
        }


getwd, getsd, setwd, setsd  -  get/set working drive and system drive numbers

USAGE

    getwd()

    getsd()

    setwd(n)

    setsd(n)


DESCRIPTION

 These functions perform the actions of ASN.CMD in getting or setting the working
 and system drive numbers.

 getwd()  and  getsd()  return  respectively the current working drive number and
 system drive number.

 setwd() and setsd() set the respective drive numbers. In  addition  they  return
 the PREVIOUS drive number.


gtty, stty  -  control terminal

USAGE

    #include <sgtty.h>

    gtty(fd,ttbuf)
    struct sgttyb *ttbuf;

    stty(fd,ttbuf)
    struct sgttyb *ttbuf;


DESCRIPTION

 These  calls are available to ascertain details of the current mode of operation
 of the system console or to set them to desired values. The settings control the
 operation  of  calls to 'read()' and 'write()' from or to file descriptors 0, 1,
 and 2, the standard input, standard output and standard error  where  these  are
 connected to the terminal.

 Gtty  obtains  information about a terminal. Stty allows the setting of terminal
 parameters.

 The value of 'fd' is not used, but must be present for compatibility reasons.

 The include file defines the structure returned by gtty (or assumed by stty)  as
 follows:

 struct sgttyb { /* structure for 'stty' and 'gtty' */

        char    sg_flags,       /* mode flag - see below */
                sg_kill,        /* line cancel character - default cntrl X */
                sg_erase,       /* backspace/rubout char.- default cntrl H */
                sg_depth,       /* console line depth */
                sg_width,       /* console width in columns */
                sg_spare;       /* spare */
};

 The modes for sg_flags are as follows:

        /* terminal modes */

        #define RAW     1       /* single char,no mapping,no echo etc. */
        #define CBREAK  2       /* single char input */
        #define IOSPCL  4       /* no escape check, line split or pause */
        #define PAUSE   8       /* pause after each page of output */


 This mechanism provides a powerful and versatile means of controlling  input.  A
 call  to  'read()'  will normally return when the number of characters specified
 has been read or either a 'n' (RETURN) or a CONTROL D  is  seen  on  the  input,
 whichever  comes  first.  Also,  BACKSPACE and CANCEL characters are honoured to
 provide the usual FLEX line editing features.


gtty, stty  -  control terminal  (continued)

 The effect of typing CONTROL D is to simulate an END=OF=FILE  condition  on  the
 channel  being  read.  Subsequent calls to read from the channel will return the
 value 0 indicating  no  further  characters  available.  If  using  higher-level
 routines  to  access  the  channel, EOF is returned. RAW input actually uses the
 lowest-level code in FLEX, the terminal driver,  in  order  to  fetch  a  single
 character  from  the  terminal  port.  No editing, echoeing or special character
 handling is done.

 A call to 'read()' when the mode is RAW will return after  the  first  character
 has  been collected, regardless of the number requested. RAW input actually uses
 the lowest-level code in FLEX, the terminal driver (INCHNE vector at  $D3E5)  in
 order  to  fetch  a  character  from  the  terminal port. No editing, echoing or
 special character handling is done. RAW output disables the mapping of RETURN to
 RETURN + LINEFEED, turns off pausing and the ESCAPE mechanism.

 CBREAK is useful where a single character is required and you wish the system to
 ignore BACKSPACE and CANCEL processing.

 Setting  IOSPCL  will  cause  FLEX  to  ignore the terminal width and the ESCAPE
 character.

 PAUSE controls the FLEX pause feature and should normally be set.

 These flags can be used in combination so that, for example, setting  the  value
 of  'sg_flags'  to  (CBREAK  |  IOSPCL) will cause single character input and no
 width or ESCAPE processing on output.

 The best way to use 'stty()' is to call 'gtty()' to set up the current values in
 a  structure,  modify this structure and call 'stty()' to reset the values. At a
 later time, 'stty()' can be recalled with  the  original  values  to  bring  the
 terminal modes back to normal.

 At  the  start  of  a C program, the value of 'sg_flags' is PAUSE and the width,
 depth and the two settable characters are what had been set in FLEX,  by  TTYSET
 or otherwise, before the program started.


 NOTE: The values in 'sg_flags' can be used in combination, e.g.:

          #include <sgtty.h>
            .
            .
          struct sgttyb buf;
            .
            .
            .
          gtty(0,&buf);
          buf.sg_flags |= (CBREAK | IOSPCL);
          stty(0,&buf);


lseek  -  position in file

USAGE

    long lseek(fd,position,type)
    long position;


DESCRIPTION

 'lseek()' provides a means of positioning for the next read or write in a  file.
 This  function will ONLY work with files accessed by 'open()'; this means random
 files opened for read, write or update and sequential files open  for  read.  It
 will  NOT work, returning -1, on any file accessed by 'creat()', which of course
 rules out sequential files opened for write.

 The read/write pointer for the open file with file descriptor 'fd' is positioned
 by  lseek  to  the  specified place in the file. The 'type' indicates from where
 'position' is to be measured:

     if 0, from the beginning of the file or
     if 1, from the current location.

 Note  that  since  FLEX  provides no means of knowing, within an accuracy better
 than -251, where the last byte written to the file is, type 2 (seek from end  of
 file)  is not available. Note also that it is an error to seek beyond the end of
 a file.

 The returned value is the resulting position in the  file  unless  there  is  an
 error, so to find out the current position use

     lseek(fd,0l,1);


WARNINGS

 The  argument  'position' MUST be a long integer. Constants should be explicitly
 made long by appending an 'l', as above and  other  types  should  be  converted
 using a cast;

     e.g.  lseek(fd,(long)pos,1);

 The  implementation  of seeking on a sequential file is provided for convenience
 but, because there is no FLEX support, it can be very slow. For  your  guidance,
 seeking forwards is done by reading bytes and seeking backwards by rewinding the
 file and then reading bytes! However, to rewind a file use

     lseek(fd,0l,0);           which is efficient and fast.


ERRORS

 -1 is returned if 'fd' is a bad file descriptor, the file is  not  suitable  for
 seeking,  the  type is neither 0 nor 1, there is a disk error, or the call is an
 attempt to seek to a position before the beginning or beyond the end of a file.


SEE ALSO

 open(), creat() also ... high-level function 'fseek'
open  -  open a file for read/write access

USAGE

    open(fname,mode)
    char *fname;


DESCRIPTION

 This  call  opens  an EXISTING file for reading, writing or update and specifies
 whether the file is to be treated as a FLEX binary or text type  file  according
 to the value of 'mode'.

 The values for 'mode' and their meanings are as follows:

      Value     Mode    File type               Default extension

        0       read    text file if sequential      .TXT
        1       write   must be a random file        .DAT
        2       update  must be a random file        .DAT
        4       read    binary file                  .BIN

 Since a random file created by 'creat()'  is  automatically  made  binary,  mode
 values 0 and 4 are equivalent for a random file.

 Open  returns  an  integer  as  'file  descriptor'  which  should be used by i/o
 low-level calls referring to the file.

 The position where reads or writes start is at the beginning of the file.


ERRORS

 -1 is returned if the file does not exist, the file does not already exist,  the
 mode  is  not  appropriate  for  the file, if too many files are already open or
 there is a disk error.


SEE ALSO

 Creat()
 read()
 write()
 devopen()
 close()


perror  -  print system error message

USAGE

    perror(s)
    char *s;


DESCRIPTION

 This routine prints the string pointed to by 's' and then the appropriate  error
 message  corresponding  to  the  current  value  found  in 'errno' and finally a
 new-line.

 The output is to the standard error output (file descriptor  2)  and  the  error
 message is sought in the file 'ERRORS.SYS' on the system drive.

 'Errno'  is  the pre-defined integer which always contains the value of the last
 erroneous low-level call (it is never cleared).


read  -  read from a file

USAGE

    read(fd,buffer,count)
    char *buffer;


DESCRIPTION

 The  file  descriptor  'fd' is an integer which is 0, 1 or 2 or should have been
 returned by a successful call to 'open' or 'creat'. 'Buffer'  is  a  pointer  to
 space  with  at  least 'count' bytes of memory into which read will put the data
 from the file.

 It is guaranteed that at most 'count' bytes will be read but often less will be,
 either  because  the  file represents a terminal and input stops at the end of a
 line, or end-of-file has been reached.

 It is guaranteed that reads from file descriptor 2, the standard error  channel,
 will be from the system terminal.

 If input is from the terminal, normal processing involves echo and BACKSPACE and
 CANCEL character honouring. However, see 'stty()' and 'gtty()' for  details  of,
 and ways of changing these parameters.


ERRORS

 Read  returns  the  number  of  bytes actually read (0 at end-of-file) or -1 for
 physical i/o errors, a bad file descriptor or a ridiculous 'count'.


SEE ALSO

 open()
 creat()
 devopen()


rename  -  rename a file

USAGE

    rename(fname1,fname2)
    char *fname1,*fname2;


DESCRIPTION

 Rename changes the name of the existing file fname1 to fname2.


ERRORS

 -1 is returned if the file named by fname1 does not exist or a file named fname2
 already exists.


ret_fcb  -  get address of a currently open FCB

USAGE

    #include <flex.h>

    fcb *ret_fcb(fd)
    int fd;


DESCRIPTION

 This  function  returns  a pointer to the File Control Block or a file which has
 been opened by 'open()' or 'creat()'.


SEE ALSO

 The high-level macro, 'get_fcb' defined in 'stdio.h'.


setstack, stacksize  -  set or obtain stack reservation

USAGE

    setstack(size)

    stacksize()


DESCRIPTION

 The  startup  module,  'CSTART',  which is normally appended to every C program,
 loads the stack pointer with the address just below that found in 'MEMEND'.

 The run-time support of a program generated by the C compiler  normally  ensures
 that  the program always has at least 128 bytes of reserved stack space and does
 the necessary housekeeping, so it is normally unnecessary for the programmer  to
 worry about the stack.

 However,  cc  has  an  option  (+S)  which  allows the user to specify that this
 stack-checking code be omitted from the program. It will make a small difference
 in  code  size  and  running time and should only be used on extremely (and I do
 mean extremely) time-critical code.

 If a program has been compiled with this option, it will be necessary to reserve
 stack  space  to  avoid  a possible attempt to access memory in the 'no-go' area
 between the top of the data area and the reserved stack space. Setstack requests
 that at least 'size' bytes be available.

 In  order  to  determine how much to reserve, the program may be compiled in the
 normal way without the +S option and with a call to stacksize near  the  end  of
 execution.  Stacksize  returns  the  current  size  of  the reserved stack space
 measured from the position of the stack pointer at the start of execution.  Note
 that programs with recursive functions whose depth of recursion depends on input
 data will not provide a reliable indication via stacksize.

 Setstack called with a value of 'size' greater  than  the  amount  of  available
 address space will cause program termination with a message on the terminal.


unlink  -  remove file

USAGE

    unlink(fname)


DESCRIPTION

 Unlink deletes the file whose name is pointed to by 'fname'.


ERRORS

 Zero is returned from a successful call, -1 if the file does not exist.


write  -  write to a file

USAGE

    write(fd,buffer,count)
    char *buffer;


DESCRIPTION

 'Fd' must be 0, 1, 2 or a value returned by 'open' or 'creat'.

 'Buffer' should point to an area of memory from which 'count' bytes  are  to  be
 written.  Write  returns  the  actual  number  of  bytes  written and if this is
 different from 'count' an error has occurred.

 Writes to file descriptor 2, the standard error channel, are guaranteed to go to
 the system terminal. Writes to the terminal will normally honour the FLEX width,
 depth, pause and ESCAPE features. However, adjustments to this behaviour may  be
 made  using  'stty()'.  In  particular,  there  is  a RAW mode which sends every
 character as it is to the screen with no additions or pauses.

 Writing past the end of a random file will cause automatic extension of the file
 by six sectors.


ERRORS

 -1  is returned if 'fd' is a bad file descriptor, if 'count' is ridiculous or on
 physical i/o error.


SEE ALSO

 creat()
 open()
 devopen()
 gtty()
 stty()
