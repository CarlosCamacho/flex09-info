# LIBHIGH

> Source: `dev/mccosh-c/mccosh_C (2).zip!DOC_2.dsk!LIBHIGH.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

start
execution of the program proper.
There is normally a gap between the top of the 'bss' area and
the bottom of the currently reserved stack area.
Needless to say, disaster could result if the stack were
allowed to grow downwards into the 'bss', or n, rewinding first if the position is before
the current one.
.er
    Fseek returns -1 if the call is invalid.
.se
    Low-level call lseek().
.pg
get_fcb - return the address of a currently open FCB
.us
    \#include <stdio.h>
    \#include <flex.h>

ities for copying, comparing
and concatenating strings, making numbers out of strings.
.pp
In the pages which follow, the functions available are described
in terms of what they do and the parameters they expect.
The 'USAGE' section in each shows the nk space reporting an error on overflow.
* On entry, the D register contains the NEGATIVE of the
* required space.
* C functions always try to reserve 128 bytes  more than is
* currently known to be required.
*
_stkcheck
        leax    d,s             stack pointer
        sts     _sttop          store as stack top
        sts     _stbot          and stack bottom
        ldd     \#-128           reserve some space
        jsr     _stkcheck

        jsr     _shell          get command-line args.
