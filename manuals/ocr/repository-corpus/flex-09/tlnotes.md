# TLNOTES

> Source: `flex-09/distributions/255X32 - Unix Kermit C Source and Terminal Library - 4 MiB Disk Image.zip!255X32.DSK!TLNOTES.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

05-Aug-1984

The functions in this library are my implementation of a termlib/termcap
compatible with the functions of the same name found on UNIX* systems.
They were written for the AZTEC C compiler on a Z80 CP/M system.

Capabilities not yet implemented:
        tc - for similar terminals

Some of the cursor addressing encodings haven't been tested on terminals
that use them (%i, %n, %>xy, %d,2,3).  Others haven't been added yet
(%B, %D).

The tgoto() function doesn't worry about \t, \n, ^D or ^@.  The variables
UP, BC aren't used by these routines yet, mainly because my terminal
doesn't have to worry about them.  PC and ospeed should be assigned in the
main program.  Ospeed is just an short integer between 0 and 15.

        ospeed  baud            ospeed  baud            ospeed  baud
          0      0                5      150              10    1800
          1      50               6      200              11    2400
          2      75               7      300              12    4800
          3      110              8      600              13    9600
          4      134.5            9     1200              14,15  external


The included documentation was borrowed from the UNIX* Programmers manual
and credit for it and the original programs should go to those who thought
of termcap/termlib.  William Joy, Mark Horton and others I am unfamiliar
with.  The ".NRO" files should be processed by the "nro" text formatter.

Any comments or suggestions can be sent to:

        Michael S. Mattone
        572 Freeman Street
        Corning, NY  14830

* UNIX is a trademark of Bell Labs (or AT&T?, or WECo?)
%d,2,3).  Others haven't been added yet
(%B, %D).

The tgoto() function doesn't worry about \t, \n, ^D or ^@.
