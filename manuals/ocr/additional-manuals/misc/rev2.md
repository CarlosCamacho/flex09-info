# REV2

> Source: `manuals/misc/DOC_2 - FLEX Software Archive - Documentation Disk - Includes ARERRS, CBUG, HEADERS.zip!DOC_2.DSK!REV2.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

C COMPILER AND LIBRARY REVISION
                        -------------------------------

With the release of Version 26 of the J.  McCosh C  Compiler  comes  a  thorough
revision  of  the  Standard  Library.   Almost  all the functions available have
either been completely re-written or the UniFLEX versions have  been  installed.
Quite a few new functions have been added.

The previous version was produced with the  main  aim  of  providing  a  minimum
useful  set of functions at the least cost in program size.  The current version
is considerably more flexible and  sophisticated  at  a  modest  extra  cost  in
program size.

The principal changes are:

        Random file handling, including file positioning.

        Devices such as printers may be accessed through
        the normal I/O processing functions.

        The 'high-level' I/O functions are buffered
        to improve efficiency.

        Terminal I/O mode control.

It  is  VERY  IMPORTANT  for  users  of  previous versions to note the following
changes as they might affect their existing programs.

ADDITIONS

        abs             absolute value of an integer
        assert          debugging aid
        checkterm       check whether a character has been
                        typed at the terminal.
        devopen         open a user-defined device for
                        read and write.
        errno.h         error definition file
        fdopen          return a file POINTER for an
                        existing file DESCRIPTOR.
        fflush          write out i/o buffer contents.
        fms             direct access to the FMS.
        fseek,lseek     seek to a position in a random file.
        perror          print error string on terminal
        setwd etc.      set or get current system drive or
                        working drive
        stty            set up terminal access modes (e.g. no echo)
        setbuf          'manual' i/o buffer setting.

DELETIONS

        setbin          binary mode is now indicated by an
                        argument to 'open' or 'creat'.

CHANGES

        By  popular demand, the functions 'toupper()' and 'tolower()' check that
        their arguments are suitable before doing the  mapping.   They  are  now
        implemented as library routines rather than macros.


        'Creat()' now has a meaningful mode which indicates  the  type  of  file
        desired.   The  types  of file are TEXT, BINARY and RANDOM.  The default
        extensions for these types are, respectively, '.TXT', '.BIN' and '.DAT'.

        The  mode  for  'open()'  can  also  indicate  whether the file is to be
        treated as binary.  No such  indication  is  necessary  or  allowed  for
        random  files,  as  this  information  is kept with the file's directory
        entry.

        All  I/O  through the high-level functions such as 'printf()', 'putc()',
        'getc()' are now buffered.  This considerably cuts down  the  amount  of
        processing  required  per  character  and  improves efficiency.  It also
        means that line editing can be properly implemented for input  from  the
        terminal  keyboard.   However,  any  I/O  stream may be made un-buffered
        before any character has been read or written on  the  stream.   In  any
        case,  the  stream for 'stderr', which is always routed to the terminal,
        is un-buffered.  The disadvantage of buffering is that what  appears  on
        the  screen  or in a file may be out of step with the program.  However,
        at any time the program may call 'fflush()' to force the writing of  the
        buffer  contents.   This is automatically done when a file is closed and
        at the end of the program.  For additional convenience, 'printf()'  (but
        not 'fprintf()') calls 'fflush()' just before returning to its caller.

        The startup module, 'CSTART.R', has been carefully reviewed.  Its method
        of  operation  has  been  changed slightly to give a more consistent and
        reliable interface to preceding and following programs.   Also,  it  now
        contains  the stack and memory management code which was previously in a
        separate library module.  It is recommended that previous users read the
        section  on STAND-ALONE CODE, elsewhere in this manual, where there is a
        listing of this module.

        The pre-defined integer, 'errno', can be interrogated after any error in
        a library routine.  It will contain a number  indicationg  the  type  of
        error.    A   header  file,  'errno.h',  is  provided  which  lists  the
        definitions of these numbers, including a  few  which  extend  the  FLEX
        error  number  list.  The argument of a call to 'exit()' or '_exit()' is
        placed in the FLEX location ERRTYP  ($CC20)  so  that  a  following,  or
        waiting,  program  can  know  about it.  Typically, a program might have
        this statement:

                exit(errno);

        A program returning from 'main()' is equivalent to a call:

                exit(0);

        Non-recoverable situations such as  floating  point  overflow  cause  an
        'exit(errno)'  call.   Among  the non-recoverable conditions are a stack
        overflow and RETURN being pressed after a screen output pause.

        Since  there  are  many different implementations of FLEX, some of which
        are not careful enough about preserving register values over calls,  the
        DP,  Y  and  U registers are saved on the stack before ALL calls to FLEX
        entry points and restored on return.

COMPILER CHANGES


Some improvements and  enhancements  have  been  incorporated  in  the  compiler
itself:

        The new type 'unsigned char' has been introduced to give an 8  bit  data
        type with values from 0 to 255.

        The compiler now looks for its own modules  and  include  files  on  the
        current system drive.  If they are not all on the same drive, the system
        drive can be set to ALL by 'ASN.CMD' to  ensure  that  they  are  found.
        However,  because of the difficulty of passing the necessary information
        to 'CLOAD', the Standard Library and 'CSTART.R' must still be located on
        the same drive as 'CC.CMD'.

        The pre-processor now recognises two identifiers with special  meanings.
        '_FILE'  expands  to  the name of the file in which it appears.  '_LINE'
        expands to the line number within this file at which it appears.   These
        are most useful for implementing debugging aids such as 'assert()'.
