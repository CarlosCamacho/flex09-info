# ROM

> Source: `manuals/misc/DOC_2 - FLEX Software Archive - Documentation Disk - Includes ARERRS, CBUG, HEADERS.zip!DOC_2.DSK!ROM.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

Below is the source code of the standard starting-up routine 'CSTART'  which  is
loaded  with  the  program when CC.CMD is allowed to take care of all operations
from compilation to loading.  This should be used as a model for a  user-written
starting  module.   Naturally,  all  the FLEX dependent stuff can be left out in
stand-alone applications.


        lib     flexlib.a       FLEX definition file
        name    cstart          module name

        global  _flacc,errno    values accessible from outside

        direct                  these three in the direct page
_mtop   rmb     2
_sttop  rmb     2
_stbot  rmb     2

        bss
_flxsav rmb     8               place to save Flex stuff
_flacc  rmb     8               floating point & long accumulator
errno   rmb     2               error indicator
dpsave  rmb     1

        text
*
*   character equates
*
cr      equ     $0D             carriage return
lf      equ     $0A             line feed character
ff      equ     $0C             form feed character

        global  _START,sbrk,brk,_exit,exit,stacksize,_stkcheck,setstack
*
*   take exec from Flex command handler
*
_START
        pshs    dp              temp. storage for previous dp
        ldd     #bdp            beginning of direct page
        tfr     a,dp            set up new dp
        tfr     d,x             ready to clear

* clear dp and bss
_clrcom cmpx    #end            finished?
        beq     _clear          yes - on to next
        clr     ,x+             clear & bump
        bra     _clrcom         round again

_clear
        puls    a               restore old dp
        sta     dpsave          and save it for exit
        stx     _mtop           first available new storage

* now clear the rest of memory
1       cmpx    MEMEND          finished ?
        beq     _cldone         yes - on to next
        clr     ,x+             clear & bump
        bra     1b              round again

_cldone
        lds     MEMEND          set up stack pointer
        sts     _sttop          store as stack top
        sts     _stbot          and stack bottom
        ldd     #-128           reserve some space
        jsr     _stkcheck


        jsr     _shell          get command-line args.
        pshs    d,u             build the argument list

* save FLEX parameters for restore at exit
        ldx     #_flxsav        point to save area
        lda     CURCHR
        ldb     LSTTRM
        std     0,x++
        ldd     CBUFPT
        std     0,x++
        lda     DOCMDF          get docmd flag
        ldb     W_DRN
        std     0,x++
        ldd     RETADR          get flex ret addr
        std     ,x

* set up exit1 as ESCAPE return address
        ldd     #exit1
        std     ESCRET

* position cursor at beginning of next line
        lda     #cr
        jsr     OUTCH2
        lda     #lf             on to next screen line
        jsr     OUTCH2

* all set - now call the main program
        jsr     main

* arrival here means the program finished normally
        ldx     #0

* set up exit status and dummy return address
exit2   pshs    d,x
exit
        jsr     _tidy1          does 'fclose'
_exit
        jsr     _tidy2          does 'close'
        ldd     2,s
        stb     ERRTYP          store error for waiting program
        beq     1f
        lda     #cr
        sta     [_flxsav+2]     prevent continuation of command line
        sta     _flxsav+1


*
*   put FLEX back together and exit
*
1       jsr     FMSCLS          close any others hanging about
        ldx     #_flxsav
        ldd     0,x++
        sta     CURCHR
        stb     LSTTRM
        ldd     0,x++
        std     CBUFPT
        ldd     0,x++
        sta     DOCMDF
        stb     W_DRN
        ldd     ,x
        std     RETADR
        lda     dpsave          restore previous dp
        tfr     a,dp
        jmp     WARMS

* here from ESCAPE return
exit1   ldx     #1              exit status
        bra     exit2

*
* Set the stack size available to some large value.
* May be used if stack checking is turned off for
* efficiency.
*
setstack
        ldd     2,s             get the desired size
        nega                    negate it
        negb
        sbca    #0

*
* Reserve stack space reporting an error on overflow.
* On entry, the D register contains the NEGATIVE of the
* required space.
* C functions always try to reserve 128 bytes  more than is
* currently known to be required.
*
_stkcheck
        leax    d,s             point to the new requested stack bottom
        cmpx    _stbot          higher than previous?
        blo     _fst1           no - check can we do it
        rts                     yes - no problem

_fst1
        cmpx    _mtop           is it below available storage?
        blo     _fsterr         yes - overflow
        stx     _stbot          no - reserve it
        rts                     and return
_fsterr
        ldx     #errstr         point to error string
        jsr     PSTRNG          call FLEX to output it
        jmp     exit1           exit abnormally

*
* Report the current stack allocation.
*
stacksize
        ldd     _sttop          top of stack
        subd    _stbot          less bottom of stack
        rts


        data
errstr  fcc     "**** STACK OVERFLOW ****"
        fcb     13,4
        text
*
*   sbrk(increment)    get a chunk of memory from our address space
*
sbrk
        ldd     2,s             pick up length of requirement
        addd    _mtop           add in the limit pointer
        std     2,s             stuff the updated address slot
*
*   brk(address):  limit check address with stack pointer
*
brk     ldx     _stbot          get current stack lower limit
        cmpx    2,s             compare to requested address
        bls     notenuf         if lower, not enough memory
        ldd     _mtop           pick up the limit address
        ldx     2,s             pick up the new limit address
        stx     _mtop           stuff into limit slot
        rts

notenuf ldd     #-1             return ERR indicator
        rts

Notice that, in the stack reservation section above,  comparison  is  made  with
'_mtop'  rather  than  '#end'  because  memory  can be reserved from the current
memory top by 'break' and/or 'sbrk' (q.v.) and thus '_mtop' may vary.


There  are  one or two other things which should be borne in mind when producing
stand-alone or rom-able code.  The Standard Library provided, CLIB.LIB, contains
a  large number of functions which assume the existence of FLEX and call various
FLEX entry points.  If the program uses any  of  these  and  the  user  has  not
re-defined  the  functions  in  his  own modules and this library is searched by
CLOAD, the program may try  calling  locations  in  memory  where  there  is  no
executable  code.   To  avoid  this  possibility,  the  following techniques are
available:

        1.      Ensure that the program does not call any of the
                'dangerous' functions.
        2.      If you have the TSC library generator, 'LIB-GEN', you
                can create your own library by using the C compiler to
                make relocatable modules and 'LIB-GEN' to combine them.
                Then either confine the loader to searching in your
                own library or make it search yours first. If two or more
                modules in libraries contain the same required entry point,
                it is the first one encountered which is loaded.
        3.      Don't bother with libraries at all, just write all the
                functions needed in the program itself and prevent the
                loader from searching any library.
