# CBUG

> Source: `dev/mccosh-c/mccosh_C (2).zip!DOC_2.dsk!CBUG.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

not overflow.
.se
    Findstr().
.pg
system - FLEX command request
.us
    system(string)
    char *string;
.de
.pp
System passes its argument to FLEX which executes it as a command
line. The current program is suspended until the command is completedandard output  - equivalent to file descriptor 1,
    stderr    standard error output- equivalent to file descriptor 2.
.pp
All files are automatically buffered, except stderr, unless made un-buffered
by a call to setbuf() (q.v.).
.wa
.pp
The 'action'  there is no executable code.
To avoid this possibility, the following techniques are available:
.sp
.nf
        1.      Ensure that the program does not call any of the
                'dangerous' functions.
        2.      If you have the TSC librarystack pointer
        sts     _sttop          store as stack top
        sts     _stbot          and stack bottom
        ldd     \#-128           reserve some space
        jsr     _stkcheck

        jsr     _shell          get command-line args.
