# READ-ME

> Source: `misc/work-disks/WORK17 - Adventure Game - Program and Support Utilities.zip!WORK17.DSK!READ-ME.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

****************************************
		*	&*
		*		P R I M E	6 8 0 9
*
		*	&*
		****************************************


	This program is a 6809 assembly language program designed
to find prime numbers as quickly as possible.	The program will
run correctly on any 6809 system using the TSC FLEX operating
system, or the user may substitute equivalent I/O routines for
his own machine.	The algorithm used in this program makes use
of the 6809's hardware multiply instruction in a fast 16 x 16
bit multiplication routine which yields a 32 bit product.	The
program flags all non-prime numbers and then prints out all
numbers not flagged.	Since two is the only even prime, only
odd numbers are considered, and the flag space required is
therefore the high number limit divided by two.	For example,
to calculate primes up to 50,000 you need 25,000 bytes of RAM
following the PRIME program.	PRIME will calculate primes up
to 65,535.	It starts by setting up two registers with the
number three, the lowest odd prime.	For each loop, it multiplies
the two registers and sets the flag byte for the resultant
product.	The X register is then incremented by two and the
next non-prime is found.	Each product is compared with the
high number limit and if it exceeds it, both registers are
reset to the next higher odd prime.	If the product exceeds
the limit when both registers are equal, then the registers
contain the square root of a non-prime exceeding the number
limit and all non-primes have been flagged.	The program then
prints out all numbers which have not been flagged as
non-prime.	This algorithm is much faster than a division
method, and in fact on a 2 Mhz 6809 finding all 1,229 primes
up to 10,000 takes less than one SECOND.

	The program could be modified to use 1/8 the flag
space by using bits rather than bytes for the flags,
but this would slow it down unnecessarily.

(PRIME V2.1	Revised 1/28/81	BFB)
