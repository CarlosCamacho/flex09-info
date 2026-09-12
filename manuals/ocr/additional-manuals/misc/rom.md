# ROM

> Source: `manuals/misc/DOC_2 - FLEX Software Archive - Documentation Disk - Includes ARERRS, CBUG, HEADERS.zip!DOC_2.DSK!ROM.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

bss+2048
        bne     clloop

        jsr     main
        bra     restart

* define the start of the data portion
* (always after the whole of 'text')
        data
bdata   equ     *
.pg
* intrupt.a
*
* J.McCosh
* 21 March 1985
*
* 6809 interrupt pround.
.pp
Rindex returns a pointer to the last occurrence of 'ch' in 's' or NULL
if not found.
.wa
.pp
Strcat and strcpy have no means of checking that the space provided
is large enough. It is the user's responsibility to ensure that string
space doesm may declare or define a file pointer by, for example
FILE *f;
.pp
Three file pointers are available and can be considered open the moment the
program runs:
.nf
    stdin     the standard input   - equivalent to file descriptor 0,
    stdout    the stume the existence
of FLEX and call various FLEX entry points. If the program uses any of these
and the user has not re-defined the functions in his own modules and this
library is searched by CLOAD, the program may try calling locations in
memory whereear the rest of memory
1       cmpx    MEMEND          finished ?
        beq     _cldone         yes - on to next
        clr     ,x+             clear & bump
        bra     1b              round again

_cldone
        lds     MEMEND          set up
