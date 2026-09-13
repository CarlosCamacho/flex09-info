# LIBLOW

> Source: `manuals/misc/DOC_2 - FLEX Software Archive - Documentation Disk - Includes ARERRS, CBUG, HEADERS.zip!DOC_2.DSK!LIBLOW.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

INTRODUCTION

This section of the C compiler manual is a guide to the low-level file functions
available from C  programs.   These  functions  form  the  interface  between  C
programs  and  the  FLEX  FMS  and  simplify file access.  Most of the functions
available mimic the equivalent 'system calls' in  Unix,  sometimes  with  slight
usage  changes  or  restrictions, and others provide FLEX-specific access to the
FMS.

The  identification  of an open file to the low-level functions is by means of a
small integer called a 'File Descriptor'.  Most files must have been assigned  a
file  descriptor by 'open()' or 'creat()', but there are three which are open at
the start of the program which normally refer to the system console.  These  are
0,  standard  input;  1, standard output; 2, standard error.  File descriptors 0
and 1 may be re-directed from or to files by, for example, 'I.CMD'  or  'O.CMD'.
File  descriptor  2  may  not  be  re-directed  and may be read or written.  The
maximum number of files which can be open at any one time is 16.  The value of a
file descriptor is therefore in the range 0 to 15.

The normal error indication on return from a low-level call is a returned  value
of  -1.   The relevant error will be found in the pre-defined int 'errno'.  This
location always contains the error from the last  erroneous  low-level  call  or
call  to the FLEX FMS.  Definitions of the errors for inclusion in a program are
in <errno.h>.  The error numbers reported by library routines are  mainly  those
listed  in  the  FLEX documentation.  The following is a list of the extra error
numbers required by the library itself:

#define EMFILE  30      /* too many files - 16 maximum */
#define EBADF   31      /* file descriptor not open for relevant mode */
#define EINVAL  32      /* invalid argument */
#define ESTOF   33      /* stack overflow */
#define EESCR   34      /* ESCAPE return */

/* errors from arithmetic routines */
#define EFPOVR  40      /* floating point overflow or underflow */
#define EDIVERR 41      /* division by zero */
#define EINTERR 42      /* overflow on conversion of floating point to
                           long integer */

In the 'SEE ALSO' sections on the following pages, unless otherwise stated,  the
references are to other low-level calls.

Where '#include' files are shown, it is not mandatary to  include  them  but  it
might  be  convenient  to use the manifest constants defined in them rather than
integers; it certainly makes for more readable programs.


brk,sbrk - request additional working memory

USAGE

    brk(address)
    char *address;

    char *sbrk(increase)

DESCRIPTION

Brk requests that the program's addressable data area should include  'address'.

Sbrk  requests  that  the current available data area be increased by 'increase'
bytes and returns a pointer to the lowest address in  the  the  newly  available
memory.

Memory acquired by calls to brk or sbrk is logically contiguous with  that  from
the last such call.

When a program starts execution, memory is allocated to  the  'bss'  segment  of
memory which contains all the un-initialised variables used by the program.  The
CSTART module, which is normally loaded with the program, clears  this  area  to
zeros  before calling 'main' to start execution of the program proper.  There is
normally a gap between the top of the 'bss' area and the bottom of the currently
reserved  stack  area.  Needless to say, disaster could result if the stack were
allowed to grow downwards into the 'bss', or vice versa.  The downward growth of
the  stack  reserved  area  is  checked on entry to every C function and calling
'sbrk' or 'brk' will check that the upward growth of the 'bss' will not overflow
the stack area.

ERRORS

Brk  returns  0  if the break could be set at the requested place, -1 otherwise.
Sbrk also returns -1 on error.

SEE ALSO

    stacksize(),setstack()


checkterm - check for a character typed at the terminal

USAGE

    checkterm()

DESCRIPTION

This  function allows the program to interrogate the system terminal for a typed
character and returns its value to the caller if  there  is.   If  there  is  no
character waiting, checkterm() returns -1.


close - close a file

USAGE

    close(fd)

DESCRIPTION

Close takes a file descriptor, 'fd', as returned from low-level  calls  'open()'
or 'creat()' and closes the associated file.

Normal termination of a C program always closes all  open  files  automatically,
but  it  is necessary to close files where multiple files are opened by the task
and it is desired to re-use file descriptors to avoid going over the system file
descriptor limit.

Note that file descriptors 0 and 1 may be closed but file descriptor 2 may  not.
Both  'open()'  and  'creat()'  search  the  file descriptor list from 0 upwards
looking for a free number so, for example, closing 0 and  opening  a  file  will
have  the  effect  of  making reads on file descriptor 0 get characters from the
file rather than the terminal.  However, file descriptor 2  may  not  be  closed
guaranteeing that there is always a channel open to the terminal.

SEE ALSO

    creat(),open().


creat - create a new file

USAGE

    #include <modes.h>

    creat(fname,mode)
    char *fname;

DESCRIPTION

Creat  returns  a  file  descriptor to a new file available for writing with the
type of file given by 'mode'.  If, however, 'fname' is the name of  an  existing
file  it  is  truncated  to zero length and the ownership and permissions remain
unchanged.

It  is unnecessary to specify writing permissions in 'perm' in order to write to
the file in the current task.

The values of 'mode' specify the following:

        0       'text' type file        - default extension '.TXT'
        1       'binary' type file      - default extension '.BIN'
        2       'random' type file      - default extension '.DAT'

ERRORS

This call returns -1 if there  are  too  many  files  open,  if  'mode'  has  an
incorrect value or there is a disk error.

SEE ALSO

    write(),close().


exit,_exit - task termination

USAGE

    exit(status)

    _exit(status)

DESCRIPTION

Exit is the normal means of terminating a  task.   Exit  does  any  cleaning  up
operations required before terminating, such as flushing out any high-level file
buffers, _exit does not, but FMSCLS is always called to flush any written  FCBs.

A  task  finishing  normally,  that is returning from 'main', is equivalent to a
call - 'exit(0)'.

The  value  of  'status' is placed in ERRTYP ($CC20) so that either a diagnostic
can be produced by FLEX or programs such as EXEC, which may be waiting for the C
program to finish, know that an error has occurred.


devopen - open a channel to an arbitrary device

USAGE

    #include <device.h>

    devopen(name,dev,mode)
    char *name;
    device *dev;

DESCRIPTION

This function provides the facility for any device to be treated as a  file  for
'read()'  or 'write()'.  Typical devices might be printers or paper tape punches
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

The 'name' argument is the name of a file which is presumed to contain the  code
for  the  device  driver.   The  defaults for this file are the system drive and
'.SYS' extension.  This argument may be NULL  (0),  in  which  case  'devopen()'
assumes that the driver code is already in memory.

The 'mode' argument may be 0 for read, 1 for write or 2 for read and write.

The  action  of  'devopen()'  is first to load the driver, if necessary, then to
assign a file descriptor to the device channel and finally to call  the  routine
pointed at by 'd_init'.  Subseqeunt calls to 'read()' or 'write()' will call the
relevant driver routine to get or put characters.  A call to 'close()' the  file
descriptor  will  call  the  routine  pointed  at by 'd_close'.  The 'd_address'
structure member may contain the address of the port which is to be accessed.

On  calls to 'write()', there is a choice of what is to happen on encountering a
'\r' (RETURN).  If the value of  'd_flag'  is  non-zero,  a  newline  ('\l')  is
additionally written to the device.

The device driver will be called with 'd_address' in  the  X  register  so  that
different  devices  with  the  same  driver code can be specified with different
device structures.

PLEASE  NOTE  that the device driver is assumed to follow the FLEX convention of
passing character values to and from in the 6809 A register.  This is consistent
with  existing  printer drivers etc.  If the driver is written in assembler then
there is nothing further to worry about.


For  device  drivers  written in C, a copy of the 'd_address' value is placed on
the stack in the position of the first argument to a function.  A 16 bit copy of
the  argument  in  the A register is placed above that on the stack in the place
where a C function would expect its second argument.
E.g.:

        wr_dev(address,c)
        char *address,c;
        {
                etc..

If the 'read' driver code is written in C, it will have to be careful about  its
return  value.   If,  for  example,  the read code has stored its character in a
variable called 'c', there should be a statement such as

        return (c << 8);

in order to get the value required into the A register  (because  the  interface
code puts it back into the B register!).

An example program, "printest.c" is supplied on the issue diskette  showing  the
use of a standard printer driver with 'devopen()'.

An example of a simple ACIA driver is in "acia.c".

ERRORS

-1 is returned if 'mode' has an invalid value, there is a file name supplied and
there is an error loading this file or if there are too many files open already.

SEE ALSO

    open(),close(),read(),write()


fms - direct access to the FLEX FMS

USAGE

    #include <flex.h>

    fms(f,code [,arg])
    fcb *f;

DESCRIPTION

This is the function used by all the C library functions which require access to
the FMS.

The header file defines the structure of a File Control Block (fcb) and some FMS
function codes.

The  initial  action is to place the value of 'f', a pointer to an existing FCB,
in the X register, the value of 'code', which should be  a  valid  FMS  function
code,  in the first byte of the FCB and the value of 'arg', where approriate, in
the A register.  Then the FMS is called.  If there is  no  error  indication  on
return  from  the  FMS,  then  'fms()' returns the value in the A register as an
integer.  Otherwise it places the error number found in the second byte  of  the
FCB in 'errno' and returns -1.

Thus a typical calling sequence might be:

        if((c = fms(f,F_READ)) == -1) {
                printf("File error %dn",errno);
                exit(1);
        }


getwd, getsd, setwd, setsd - get/set working drive and system drive numbers

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

setwd()  and  setsd() set the respective drive numbers.  In addition they return
the PREVIOUS drive number.


gtty,stty - control terminal

USAGE

    #include <sgtty.h>

    gtty(fd,ttbuf)
    struct sgttyb *ttbuf;

    stty(fd,ttbuf)
    struct sgttyb *ttbuf;

DESCRIPTION

These  calls are available to ascertain details of the current mode of operation
of the system console or to set them to desired values.   The  settings  control
the  operation of calls to 'read()' and 'write()' from or to file descriptors 0,
1, and 2, the standard input, standard output and standard error where these are
connected to the terminal.

Gtty obtains information about a terminal.  Stty allows the setting of  terminal
parameters.

The value of 'fd' is not used, but must be present for compatibility reasons.

The  include file defines the structure returned by gtty (or assumed by stty) as
follows:

struct sgttyb { /* structure for 'stty' and 'gtty' */
        char    sg_flags,       /* mode flag - see below */
                sg_kill,        /* line cancel character - default cntrl X */
                sg_erase,       /* backspace/rubout char.- default cntrl H */
                sg_depth,       /* console line depth */
                sg_width,       /* console width in columns */
                sg_spare;
};

    The modes for sg_flags are as follows:
        /* terminal modes */
        #define RAW     1       /* single char,no mapping,no echo etc. */
        #define CBREAK  2       /* single char input */
        #define IOSPCL  4       /* no escape check, line split or pause */
        #define PAUSE   8       /* pause after each page of output */

This  mechanism provides a powerful and versatile means of controlling input.  A
call to 'read()' will normally return when the number  of  characters  specified
has  been  read  or a '\n' (RETURN) is seen on the input, whichever comes first.
Also, BACKSPACE and CANCEL characters are honoured to  provide  the  usual  FLEX
line editing features.

A call to 'read()' when the mode is RAW will return after  the  first  character
has been collected, regardless of the number requested.  RAW input actually uses
the lowest-level code in  FLEX,  the  terminal  driver,  in  order  to  fetch  a
character  from  the  terminal  port.   No editing, echoing or special character
handling is done.  RAW output  disables  the  mapping  of  RETURN  to  RETURN  +
LINEFEED, turns off pausing and the ESCAPE mechanism.


CBREAK is useful where a single character is required and you wish the system to
ignore BACKSPACE and CANCEL processing.

Setting IOSPCL will cause FLEX to ignore  the  terminal  width  and  the  ESCAPE
character.

PAUSE controls the FLEX pause feature and should normally be set.

These  flags  can be used in combination so that, for example, setting the value
of 'sg_flags' to (CBREAK | IOSPCL) will cause  single  character  input  and  no
width or ESCAPE processing on output.

The best way to use 'stty()' is to call 'gtty()' to set up the current values in
a  structure, modify this structure and call 'stty()' to reset the values.  At a
later time, 'stty()' can be recalled with  the  original  values  to  bring  the
terminal modes back to normal.

At the start of a C program, the value of 'sg_flags' is  PAUSE  and  the  width,
depth  and  the two settable characters are what had been set in FLEX, by TTYSET
or otherwise, before the program started.


lseek - position in file

USAGE

    long lseek(fd,position,type)
    long position;

DESCRIPTION

'lseek()' provides a means of positioning for the next read or write in a  file.
This  function will ONLY work with files accessed by 'open()'; this means random
files opened for read, write or update and sequential files open for  read.   It
will  NOT work, returning -1, on any file accessed by 'creat()', which of course
rules out sequential files opened for write.

The read/write pointer for the open file with file descriptor 'fd' is positioned
by lseek to the specified place in the file.  The 'type'  indicates  from  where
'position' is to be measured:

     if 0, from the beginning of the file or
     if 1, from the current location.

Note that since FLEX provides no means of knowing,  within  an  accuracy  better
than  -251, where the last byte written to the file is, type 2 (seek from end of
file) is not available.  Note also that it is an error to seek beyond the end of
a file.

The returned value is the resulting position in the  file  unless  there  is  an
error, so to find out the current position use

     lseek(fd,0l,1);

WARNINGS

The argument 'position' MUST be a long integer.  Constants should be  explicitly
made  long  by  appending  an  'l', as above and other types should be converted
using a cast;

     e.g.  lseek(fd,(long)pos,1);

The implementation of seeking on a sequential file is provided  for  convenience
but,  because there is no FLEX support, it can be very slow.  For your guidance,
seeking forwards is done by reading bytes and seeking backwards by rewinding the
file and then reading bytes!  However, to rewind a file use

    lseek(fd,0l,0);

which is efficient and fast.

ERRORS

-1  is  returned  if 'fd' is a bad file descriptor, the file is not suitable for
seeking, the type is neither 0 nor 1, there is a disk error, or the call  is  an
attempt  to seek to a position before the beginning or beyond the end of a file.

SEE ALSO

    open(),creat()
    High-level function 'fseek'


open - open a file for read/write access

USAGE

    open(fname,mode)
    char *fname;

DESCRIPTION

This call opens an EXISTING file for reading, writing or  update  and  specifies
whether  the  file is to be treated as a FLEX binary or text type file according
to the value of 'mode'.

The values for 'mode' and their meanings are as follows:

      Value     Mode    File type               Default extension

        0       read    text file if sequential      .TXT
        1       write   must be a random file        .DAT
        2       update  must be a random file        .DAT
        4       read    binary file                  .BIN

Since a random file created by 'creat()'  is  automatically  made  binary,  mode
values 0 and 4 are equivalent for a random file.

Open returns an integer as  'file  descriptor'  which  should  be  used  by  i/o
low-level calls referring to the file.

The position where reads or writes start is at the beginning of the file.

ERRORS

-1 is returned if the file does not exist, the file does not already exist,  the
mode  is  not  appropriate  for  the file, if too many files are already open or
there is a disk error.

SEE ALSO

    Creat(),read(),write(),devopen(),close()


perror - print system error message

USAGE

    perror(s)
    char *s;

DESCRIPTION

This routine prints the string pointed to by 's' and then the appropriate  error
message  corresponding  to  the  current  value  found  in 'errno' and finally a
new-line.

The  output  is  to  the standard error output (file descriptor 2) and the error
message is sought in the file 'ERRORS.SYS' on the system drive.

'Errno'  is  the pre-defined integer which always contains the value of the last
erroneous low-level call (it is never cleared).


read - read from a file

USAGE

    read(fd,buffer,count)
    char *buffer;

DESCRIPTION

The file descriptor 'fd' is an integer which is 0, 1 or 2 or  should  have  been
returned  by  a  successful call to 'open' or 'creat'.  'Buffer' is a pointer to
space with at least 'count' bytes of memory into which read will  put  the  data
from the file.

It is guaranteed that at most 'count' bytes will be read but often less will be,
either  because  the  file represents a terminal and input stops at the end of a
line, or end-of-file has been reached.

It  is guaranteed that reads from file descriptor 2, the standard error channel,
will be from the system terminal.

If input is from the terminal, normal processing involves echo and BACKSPACE and
CANCEL character honouring.  However, see 'stty()' and 'gtty()' for details  of,
and ways of changing these parameters.

ERRORS

Read  returns  the  number  of  bytes actually read (0 at end-of-file) or -1 for
physical i/o errors, a bad file descriptor or a ridiculous 'count'.

SEE ALSO

    open(),creat(),devopen().


rename - rename a file

USAGE

    rename(fname1,fname2)
    char *fname1,*fname2;

DESCRIPTION

Rename changes the name of the existing file fname1 to fname2.

ERRORS

-1 is returned if the file named by fname1 does not exist or a file named fname2
already exists.


ret_fcb - get address of a currently open FCB

USAGE

    #include <flex.h>

    fcb *ret_fcb(fd)
    int fd;

DESCRIPTION

This  function  returns  a pointer to the File Control Block or a file which has
been opened by 'open()' or 'creat()'.

SEE ALSO

    The high-level macro, 'get_fcb' defined in 'stdio.h'.


setstack,stacksize - set or obtain stack reservation

USAGE

    setstack(size)

    stacksize()

DESCRIPTION

The  startup  module,  'CSTART',  which is normally appended to every C program,
loads the stack pointer with the address just below that found in 'MEMEND'.

The  run-time  support of a program generated by the C compiler normally ensures
that the program always has at least 128 bytes of reserved stack space and  does
the  necessary housekeeping, so it is normally unnecessary for the programmer to
worry about the stack.

However,  cc  has  an  option  (+S)  which  allows the user to specify that this
stack-checking code  be  omitted  from  the  program.   It  will  make  a  small
difference  in  code  size and running time and should only be used on extremely
(and I do mean extremely) time-critical code.

If a program has been compiled with this option, it will be necessary to reserve
stack space to avoid a possible attempt to access memory  in  the  'no-go'  area
between  the  top  of  the  data  area  and  the reserved stack space.  Setstack
requests that at least 'size' bytes be available.

In  order  to  determine how much to reserve, the program may be compiled in the
normal way without the +S option and with a call to stacksize near  the  end  of
execution.   Stacksize  returns  the  current  size  of the reserved stack space
measured from the position of the stack pointer at the start of execution.  Note
that programs with recursive functions whose depth of recursion depends on input
data will not provide a reliable indication via stacksize.

Setstack  called  with  a  value  of 'size' greater than the amount of available
address space will cause program termination with a message on the terminal.


unlink - remove file

USAGE

    unlink(fname)

DESCRIPTION

Unlink deletes the file whose name is pointed to by 'fname'.

ERRORS

Zero is returned from a successful call, -1 if the file does not exist.


write - write to a file

USAGE

    write(fd,buffer,count)
    char *buffer;

DESCRIPTION

'Fd' must be 0, 1, 2 or a value returned by 'open' or 'creat'.

'Buffer' should point to an area of memory from which 'count' bytes  are  to  be
written.   Write  returns  the  actual  number  of  bytes written and if this is
different from 'count' an error has occurred.

Writes to file descriptor 2, the standard error channel, are guaranteed to go to
the system terminal.  Writes to the  terminal  will  normally  honour  the  FLEX
width, depth, pause and ESCAPE features.  However, adjustments to this behaviour
may be made using 'stty()'.  In particular, there is  a  RAW  mode  which  sends
every character as it is to the screen with no additions or pauses.

Writing past the end of a random file will cause automatic extension of the file
by six sectors.

ERRORS

-1  is returned if 'fd' is a bad file descriptor, if 'count' is ridiculous or on
physical i/o error.

SEE ALSO

    creat(),open(),devopen(),gtty(),stty().
