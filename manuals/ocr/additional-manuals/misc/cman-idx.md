# CMAN-IDX

> Source: `manuals/misc/DOC - FLEX Software Archive - Manual and Documentation Archive - Includes CMAN-IDX, CMAN-P1, CMAN-P10.zip!DOC.DSK!CMAN-IDX.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

'C'

                                by James McCosh


      The  entire  contents  of this manual and the accompanying software are
      copyright (C) Microprocessor Developments Limited  and  Windrush  Micro
      Systems Limited.

      Duplication  of  this manual is strictly prohibited. Duplication of the
      accompanying software for anything  other  than  archival  purposes  is
      strictly prohibited.


             Second Release: 15 Jul 1983 with Version 24.3:0 Software
             Third  Release: 15 Oct 1983 with Version 25.1:7 Software
             Fourth Release:  1 May 1985 with Version 26.1:1 Software
             Fifth  Release: 20 Dec 1985 with Version 27.0:0 Software


                       James McCosh 'C' Compiler for FLEX


                                COPYRIGHT NOTICE

      The entire contents of this manual and the accompanying  software  have
      been  copyrighted  by  Microprocessor Developments Limited and Windrush
      Micro Systems Limited. The reproduction of this material by any  means,
      for any reason, is strictly prohibited.


                              SERIAL NUMBER NOTICE

      This  product  has  been assigned a unique serial number at the time of
      manufacture. The ASCII code for this serial number, which is  encrypted
      into the body of the product, is also part of the start-up banner. This
      product is therefore traceable to the original purchaser in  the  event
      of plagiarized copies being discovered.

      This  product  is  sold  on  the  basis  of  being  used  on  a  SINGLE
      microcomputer system by a SINGLE user.

      We shall  consider  it  an  attempt  to  criminally  plagiarize  us  if
      duplicate  copies  of  this  manual  or  the accompanying disk are made
      available for use by other parties, or on  other  microcomputers.  This
      consideration  also applies to, but is not limited to, duplicate copies
      being produced for use within  the  original  purchasers  organisation,
      establishment, or home for anything other than archival purposes.


                                     WARNING

      We  at  Windrush  Micro  Systems  Limited  and  the author James McCosh
      consider that the recognition we receive as a result of the sale of our
      programs  and  manuals  to  be  of  vital  importance  in  remaining in
      business.

      Unless written arrangements to the  contrary  have  been  made  between
      authorized  agents  of Windrush Micro Systems Limited and the purchaser
      of this manual and the associated computer program we shall consider it
      to  be  an attempt to criminally plagiarize us if our company name, the
      program name, or the authors name is altered, changed or removed on  or
      from  any of the materials purchased from us regardless of the means by
      which accomplished.  This  consideration  shall  include,  but  not  be
      limited  to,  the  re-writing  of  this manual, or its reproduction for
      distribution under another company, program or trade name, or any  like
      modification of the accompanying computer program.


                                 WARRANTY NOTICE

      Although  every  effort  has  been  made to insure the accuracy of this
      material, it is sold AS IS and without warranty. No  claim  as  to  the
      suitability   or  workability  of  this  material  for  any  particular
      application or any particular computer is made. This  statement  is  in
      lieu of any other statement whether expressed or implied.


                                TRADEMARK NOTICES

      FLEX  and UNIFLEX are trademarks of Technical Systems Consultants. OS-9
      is a trademark of Microware Systems Corporation.

   Windrush Micro Systems, Worstead Labs, N. Walsham, Norfolk, NR28 9SA, England

                       James McCosh 'C' Compiler for FLEX

                                TABLE OF CONTENTS
 _________________________________________________________________________________
SUBJECT                                                                      PAGE

LANGUAGE IMPLEMENTATION GUIDE
    C Compiler and Library Revison                                              1
    The C language and implementation                                           5
    Deviations from the Kernighan and Ritchie Specification                     6
    Langauge extensions                                                         7
    Object sizes                                                                8
    Register variables                                                          9
    Arithmetic errors                                                           9
    Standard library                                                            9
    Command line arguments                                                      9
    Default drives                                                             10
    Warnings                                                                   10
    Files                                                                      11
    Bugs                                                                       11
    Suggested reading materials                                                12


USERS GUIDE
    Getting the system up                                                      13
    Using the compiler                                                         14


COMPILER MANUAL
    The compiler executive 'CC'                                                17
    Syntax                                                                     17
    Description                                                                17
    Operation                                                                  17
    Flags                                                                      18
    I/O Redirection                                                            19
    Diagnostics                                                                20


RELOCATING ASSEMBLER MANUAL
    Source file syntax                                                         27
    Mnemonics and addressing modes                                             27
    Program counters                                                           27
    External and global labels                                                 30
    Expressions                                                                31
    Module name                                                                33
    Common blocks                                                              33
    Numeric or temporary labels                                                34
    Other directives                                                           34
    Invoking the assembler                                                     36
    Flags                                                                      36
    Functions not implemented                                                  37


LINKING LOADER MANUAL
    The linking loader 'CLOAD'                                                 39
    Purpose of a linking loader                                                39
    Segments                                                                   39
    Loader operation                                                           40
    Syntax                                                                     41
    Description                                                                41
    Operation                                                                  42
    Options                                                                    42
    Special symbols                                                            43
    Diagnostics                                                                43
                                        _
                                       I
                       James McCosh 'C' Compiler for FLEX

                                 TABLE OF CONTENTS
 _________________________________________________________________________________
SUBJECT                                                                      PAGE


C STANDARD LIBRARY
    Introduction                                                               45
    Building your own libraries                                                46

   HIGH LEVEL LIBRARY

    abs          absolute value of an integer                                  48
    assert       test assertion                                                49
    atof         ASCII to number conversions                                   50
    atoi         ASCII to number conversions                                   50
    atol         ASCII to number conversions                                   50
    clearerr     return status information of files                            52
    fclose       close a file                                                  51
    feof         return status information of files                            52
    ferror       return status information of files                            52
    fflush       flush a file                                                  51
    fgets        input a string                                                59
    fileno       return status information of files                            52
    findnstr     string search                                                 53
    findstr      string search                                                 53
    fopen        open a file and return a file pointer                         54
    fprintf      formatted output                                              63
    fputs        put a string on a file                                        66
    fread        read/write binary data                                        55
    fscanf       input string interpretation                                   68
    fseek        position in a file or report current position                 56
    ftell        position in a file or report current position                 56
    fwrite       read/write binary data                                        55
    get_fcb      return the address of a currently open FCB                    57
    getc         return next character to be read from a file                  58
    getchar      return next character to be read from a file                  58
    gets         input a string                                                59
    index        string functions                                              71
    isalnum      character classification                                      60
    isalpha      character classification                                      60
    isascii      character classification                                      60
    iscntrl      character classification                                      60
    isdigit      character classification                                      60
    islower      character classification                                      60
    isprint      character classification                                      60
    ispunct      character classification                                      60
    isspace      character classification                                      60
    isupper      character classification                                      60
    l3tol        convert between long integers and 3-byte integers             61
    longjmp      jump to another function                                      62
    ltol3        convert between long integers and 3-byte integers             61
    printf       formatted output                                              63
    putc         put character in a file                                       65
    putchar      put character in a file                                       65
    puts         put a string on a file                                        66
    putw         put word in a file                                            65
    qsort        quick sort                                                    67
    rewind       position in a file or report current position                 56
    rindex       string functions                                              71


                                       __
                                      II
                       James McCosh 'C' Compiler for FLEX

                                 TABLE OF CONTENTS
 _________________________________________________________________________________
SUBJECT                                                                      PAGE


   HIGH LEVEL LIBRARY  (continued)

    scanf        input string interpretation                                   68
    setbuf       fix file buffer                                               70
    setjmp       jump to another function                                      62
    sprintf      formatted output                                              63
    sscanf       input string interpretation                                   68
    strcat       string functions                                              71
    strcmp       string functions                                              71
    strcpy       string functions                                              71
    strlen       string functions                                              71
    strncat      string functions                                              71
    strncmp      string functions                                              71
    strncpy      string functions                                              71
    system       FLEX command request                                          73
    tolower      character case conversions                                    74
    toupper      character case conversions                                    74
    ungetc       put character back on input                                   75


   LOW LEVEL LIBRARY

    brk          request additional working memory                             77
    checkterm    check for a character typed at the terminal                   78
    close        close a file                                                  79
    creat        create a new file                                             80
    devopen      open a channel to an arbitrary device                         82
    _exit        task termination                                              81
    exit         task termination                                              81
    fms          direct access to the FLEX FMS                                 84
    getsd        get/set working drive and system drive numbers                85
    getwd        get/set working drive and system drive numbers                85
    gtty         control terminal                                              86
    lseek        position in file                                              88
    open         open a file for read/write access                             89
    perror       print system error message                                    90
    read         read from a file                                              91
    rename       rename a file                                                 92
    ret_fcb      get address of a currently open FCB                           93
    sbrk         request additional working memory                             77
    setsd        get/set working drive and system drive numbers                85
    setstack     set or obtain stack reservation                               94
    setwd        get/set working drive and system drive numbers                85
    stacksize    set or obtain stack reservation                               94
    stty         control terminal                                              86
    unlink       remove file                                                   95
    write        write to a file                                               96


                                       ___
                                      III
                       James McCosh 'C' Compiler for FLEX

                                 TABLE OF CONTENTS
 _________________________________________________________________________________
SUBJECT                                                                      PAGE


STAND ALONE CODE
   Stand alone code from C                                                     97
   'CSTART' code                                                              100


INTERFACING TO ASSEMBLY CODE
    Interfacing to assembly code                                              105
    Accessing hardware in C programs                                          107


CBUG, A ROM MONITOR IN 'C'
    Cbug                                                                      109
    Specification                                                             109
    Discussion                                                                109
    Implementatation                                                          110

    CBUG    .C     the main code                                              112
    TERM    .C     the terminal driver code                                   116
    START   .A     the startup code                                           117
    INTRUPT .A     the interrupt vector and processing code                   118


SCIENTIFIC FUNTIONS IN 'C'
     Introduction                                                             121
     SCIFUN  .C    the scientific functions library                           122
     SCITEST .C    the test/demonstration program                             126


                                        __
                                       IV
