# CMAN-P2

> Source: `manuals/misc/DOC - FLEX Software Archive - Manual and Documentation Archive - Includes CMAN-IDX, CMAN-P1, CMAN-P10.zip!DOC.DSK!CMAN-P2.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
#James McCosh 'C' COMPILER for FLEX                            USERS GUIDE  R:1.2


.DHE
#USERS GUIDE  R:1.2                            James McCosh 'C' COMPILER for FLEX


.DFO
.
                                     - %%%% -


.DFE
.
                                     - %%%% -


GETTING THE SYSTEM UP

 The first thing you should do with the disk we supply is to make a working  copy
 of  it and store the original in a safe place. You should NEVER use the original
 disk in a system that you suspect has hardware problems...it  can  prove  to  be
 very  expensive!  We  are  in  the  business  of  selling  software, NOT selling
 replacement disks!

 If you accidentally wipe out the disk we supply we will REQUIRE that you  return
 the  original  disk  with  a cheque or money order for $25.00, if outside of the
 U.K., or 15.00 Pounds Sterling if  within  the  U.K.,  to  cover  our  costs  in
 re-building  the disk and return postage. This will prove to be a time consuming
 exercise at the best of times. The motto is:


               * * * * * * * * * * * * * * * * * * * * * * * * * * *
               *                                                   *
               *  DON'T EVER USE THE DISK WE SUPPLY FOR ANYTHING   *
               *  OTHER THAN MAKING A WORKING COPY OF ITSELF.      *
               *                                                   *
               * * * * * * * * * * * * * * * * * * * * * * * * * * *


 The  next  thing  you  MUST do is register your copy of this product with us. We
 will NOT respond to ANY query in regard  to  this  product  until  it  has  been
 registered with us. Once registered you will automatically be sent notice of any
 bugs (and how to fix them) as and when they are made known to us.


 When  you wish to run the compiler, the following must be present on your SYSTEM
 DRIVE so you should copy them onto the diskette you intend to use together  with
 your favourite editor and any other utility programs you may need:

    CC      .CMD
    CPREP   .CMD
    CPASS1  .CMD
    CPASS2  .CMD
    COPT    .CMD
    CASM    .CMD
    CLOAD   .CMD
    CLIB    .LIB
    CSTART  .R
    STDIO   .H
    CTYPE   .H
    SETJMP  .H
    FLEX    .H
    ASSERT  .H
    DEVICE  .H
    SGTTY   .H
    ERRNO   .H


 The remaining files on the supplied diskette are  demonstration  program  source
 files which are not required to run the compiler. These files will be  described
 later.


USING THE COMPILER

 The  flexibility of this compiler may be a little bewildering to a new user, but
 the more advanced features need never be used and in  fact  the  compilation  of
 most programs is extremely simple.

 The following is a brief description of the way the system  works  so  that  the
 main part of the manual will be easier to understand.

 The  process  of  compilation  involves a number of 'phases' on the journey from
 source code as written by the programmer to executable program file.

 The first phase is done by the pre-processor, CPREP. The  effect  is  to  remove
 comments  and  redundant  spaces from the source code, to add in the text of any
 files which the programmer wishes included and  to  process  macros.  These  are
 described in K & R page 86.

 The  second  phase  is  the compiler proper, CPASS1 and CPASS2, which produce an
 assembly code output file. It has been necessary to make this phase two-pass for
 FLEX  as the single-pass version as running under UniFLEX simply will not fit in
 the 48k available.

 The third phase is assembly, carried out by the relocating assembler, CASM. CASM
 is  not  restricted  to  assembly  of  files  produced  by  the compiler so that
 user-written assembly code can also be assembled for incorporation in the  final
 output program.

 The last phase is the linking loader, CLOAD. The operation of CLOAD is described
 in some detail in the relevant section later in the manual, but briefly its  job
 is  to  add  to  the  output any routines which are needed by the program from a
 library and to convert the whole  thing  into  an  executable  program  file  as
 recognized by FLEX.

 All  these  phases can be controlled individually from the FLEX command line but
 in the vast majority of cases it is much better to leave it up to the  executive
 program, CC. You are encouraged to try the following example  compilations  just
 to prove to yourself that the product does in fact work 'as advertised'.

 For example there is a copy of the first C program example in K & R (page 6)  on
 the  supplied  diskette  as  'HELLO.C'.  If you copy this to the current working
 drive and type:

    +++CC HELLO.C

 you should see the following on the terminal:

    cc version XXXXXXX
    serial #XXXX
    CPREP :
    CPASS1 :
    CPASS2 :
    CASM :
    CLOAD :

    +++


USING THE COMPILER  continued

 The output file will be called 'HELLO.CMD' (not 'a.out' as on  UNIX)  and  is  a
 directly executable program which when invoked as:

    +++HELLO<CR>

 will produce:

    hello world

    +++

 on the terminal.

 The  reasons for the names of the various parts of the compiler appearing during
 compilation are to inform the user of progress and to help identify  which  part
 failed if an error is detected.

 There  are  two  further  example  programs  to  try compiling. 'FAHRCEL.C' is a
 version of the program on  page  11  of  K  &  R.  Note  the  necessity  of  the
 'pffinit();'  statement which is explained later. 'WC.C' is an adaptation of the
 program on page 18 which can be applied to a file or files as in:

    +++WC FRED JOE


 You are now over the first hurdle with this product; you know that it works! Now
 all that remains is to learn how to use some of its more advanced features.


 read on.....


                        THIS PAGE INTENTIONALLY LEFT BLANK
