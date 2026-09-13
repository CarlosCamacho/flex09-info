# CMAN-ADD

> Source: `manuals/misc/DOC - FLEX Software Archive - Manual and Documentation Archive - Includes CMAN-IDX, CMAN-P1, CMAN-P10.zip!DOC.DSK!CMAN-ADD.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

C COMPILER AND LIBRARY REVISION
                                    __________
                                   RELEASE 27


 More  imporovements  have been incorporated in release 27 of the FLEX version of
 the James McCosh C COMPILER. The most important changes are  a  completeley  new
 pre-processor  and  the  facility for re-directing standard input and and output
 from or to disk files. There are also minor revisions to the I/O interface which
 have become necessary in the light of experience since release 26.


PRE-PROCESSOR

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


                                MANUAL ADDENDUM

LANGUAGE IMPLEMENTATION GUIDE

 PAGE 5 ...

 Remove  the  limitation  (e)  regarding  the  splitting of macro definitions and
 strings over more than one line.


COMPILER MANUAL

 PAGE 18 ...

 In the 'FLAGS' section of the CC.CMD usage, add the following:

    +I=(N)       Where  'N' is a valid drive number. This tells the pre-processor
                 where to look for files included with the  '#include'  directive
                 where the angle brackets are used to specify the file name.

                 For  example,  the  program  line  #include  <fred.h>  would, by
                 default, cause the inclusion of a  file  called  fred.h  on  the
                 system  drive.  If compiled with '+I=1', the drive searched will
                 be 1 regardless of the system drive.


 PAGE 19 ...

 Insert the following above 'DIAGNOSTICS' ...

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


STANDARD LIBRARY

 PAGE 46 ...

 The following should be changed to reflect (a) the change to  the  system  drive
 and (b) the use if the I compiler option.

 WAS:   Most of the  header files required to be included must reside on the same
        drive as "CC.CMD".

        If the file is  included  in  the  source  program  using  angle  bracket
        delimiters  instead  of  the usual double quotes the compiler will append
        this driver number to the file name. For example, if "CC.CMD" is on drive
        0, '#include <stdio.h>' will be equivalent to '#include "0.stdio.h"'.


 NOW:   Most of the header files required to  be  included  must  reside  on  the
        system drive.

        If  the  file  is  included  in  the  source  program using angle bracket
        delimiters instead of the usual double quotes the compiler will look  for
        the  file  on  the  system  drive. For example, if the system drive is 0,
        '#include  <stdio.h>'  will  be  equivalent  to  '#include  "0.stdio.h"'.
        However,  this  may be altered at compile time by specifying the drive to
        be searched using the 'I=' compiler option.


LOW LEVEL LIBRARY (gtty)

 PAGE 86 ...

 Add the following in place of the last paragraph ...

 This mechanism provides a powerful and versatile means of controlling  input.  A
 call  to  'read()'  will normally return when the number of characters specified
 has been read or either a 'n' (RETURN) or a CONTROL D  is  seen  on  the  input,
 whichever  comes  first.  Also,  BACKSPACE and CANCEL characters are honoured to
 provide the usual FLEX line editing features.

 The effect of typing CONTROL D is tp simulate an END=OF=FILE  condition  on  the
 channel  being  read.  Subsequent calls to read from the channel will return the
 value 0 indicating  no  further  characters  available.  If  using  higher-level
 routines  to  access  the  channel, EOF is returned. RAW input actually uses the
 lowest-level code in FLEX, the terminal driver,  in  order  to  fetch  a  single
 character  from  the  terminal  port.  No editing, echoeing or special character
 handling is done.
