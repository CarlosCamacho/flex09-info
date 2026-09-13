# ARTICLE1

> Source: `utilities/system/UTILITY3 - FLEX System Utilities - Program and Support Utilities.zip!UTILITY3.DSK!ARTICLE1.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

A BETTER WAY TO INPUT

	When most of started this fasinating hobby, 4K of RAM and
half a K of ROM was really something. Well we've grown out of
that 4K into 48K and more, and some of us are using our SS50
equipment for applications that require interrupt processing.

	Now I'm not faulting anyone for the design of the SS50 buss,
but there are some crucial signals missing that would make these
6800 systems more responsive. I'm talking about vectored interrupts.
Before anyone starts thinking "forget this guy", let me first
point out that I have been very happily using my SS50 system
since 1976. I'ts a good buss but it could be better.

	With a system that has only one interrupt line to the
processor, another method of determining who is requesting
service is required. That is what this article is all about.
The method I decided on is known as "polling". This method
requires that each device capable of generating an interrupt
is "polled" (has it's interrupt bit checked for on) in a
sequence that will determine each devices priority in the
system.

	The following program is fairly self explanitory, but
I will point out some of it's less obvious points. First,
I decided that since all systems are not structured the same
as far as what device is in which slot, a table was required to
resolve port address relationships to ISR processing and interrupt
bit masking. All that is required to add an "ISR" handler
for a new device, is to add the neccessary information to the
"ISRTBL". Each device requires 5 bytes in the table. The
first two bytes of each entry define the address of the
ISR handler for this entry. The second two bytes for each
entry define the memory address of the status port that
will contain the interupt bit. And lastly, the fifth byte
will define the mask to be applied to the address specified
in the second two bytes.

	The example given is a quick and dirty routine that
allows FLEX (trademark of Technical Systems Consultants) to
have an interrupt driven console in slot 1 and dual port ACIA
controller in slot 0. The section called "INSTALL" patches
the neccessay locations in the operating system to allow
the use of the ISR code and the "INPUT" code that replaces
INEEE. The routine "INPUT" uses a First In First Out (FIFO)
buffer to retrieve it's input data. The ISR uses the
same buffer to store it's data. Two pointers are used to
implement this scheme. The first, "CURPTR" is used by "INPUT"
to keep track of where it is in the FIFO. The second pointer
"BUFP03" is used by the ISR code to keep track of it's
position in the buffer, and by "INPUT" to know when the
FIFO is empty. The FIFO is empty when either "BUFP03" is
equal to the start of the buffer or whenever "BUFP03" is
equal to "CURPTR". When the two pointers are equal, the
INPUT routine has caught up to the keyboard (operator),
and both pointers are reset to the beginning of the buffer.
