# NOTE

> Source: `sourcecode/library-disks/LIB15-16 - FLEX Source Library - Source Code and Build Files.zip!LIB15-16.DSK!NOTE.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

It is often desirable (especially
when working with EPROMs) to be able
to work directly in the memory.
These routineswere written to enable
this to be easily done.
	Care should be exercised so as not
to corrupt FLEX or you will be in real
trouble!.

	Calling syntax :
+++FILL
+++HEXTAB
+++MCHANGE
+++KBTEST

 All parameters are asked for.

 FILL	: Fill selected area of memory

with specified data.
 HEXTAB	: Tabulates memory data in hex

in blocks of 128 bytes.

(C/R to continue)
 MCHANGE : Examine or modify contents

of memory.
 KBTEST	: This routine is usefull to

test the keyboard input.

Bit 7 (usually a parity bit)

is NOT stripped off as is

usual with most monitors. TO

exit, type "ESC" 6 times.

The input routine is only

suitable for an "ACIA" type

input device.

+++ EPROM1-5
	A programme by DAVE ALLEN to use with the eprom programmer
	described in the MICRO JOURNAL
