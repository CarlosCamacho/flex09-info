# LABEL

> Source: `manuals/misc/DOC_2 - FLEX Software Archive - Documentation Disk - Includes ARERRS, CBUG, HEADERS.zip!DOC_2.DSK!LABEL.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

starts execution,
memory is allocated to the 'bss' segment
of memory which contains all the un-initialised variables used
by the program.
The CSTART module, which is normally loaded with the program,
clears this area to zeros before calling 'main' to es open for read.
It will NOT work on a sequential file open for write.
Ftell will work on any file.
.pp
Using fseek on a sequential file can be a time-consuming
business.
The only way it can work is by stepping through the file to the
required positio calls required when necessary.
.pp
USING A FILE POINTER IN A LOW-LEVEL CALL OR A FILE DESCRIPTOR IN A
HIGH-LEVEL CALL is a common mistake among beginners to C
and if made, will be sure to CRASH YOUR PROGRAM.
.pp
The convenience functions include facil available to some large value.
* May be used if stack checking is turned off for
* efficiency.
*
setstack
        ldd     2,s             get the desired size
        nega                    negate it
        negb
        sbca    \#0

*
* Reserve stacear the rest of memory
1       cmpx    MEMEND          finished ?
        beq     _cldone         yes - on to next
        clr     ,x+             clear & bump
        bra     1b              round again

_cldone
        lds     MEMEND          set up
