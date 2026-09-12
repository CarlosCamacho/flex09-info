# CSCINXRF

> Source: `dev/csc/CSC - CSC Development - Documentation and Examples.zip!CSC.DSK!CSCINXRF.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.




CSC 680X PROGRAM DEVELOPMENT SYSTEM NOTES
	- CSC cross-referencer
	

by Bud Pass
	Computer Systems Consultants
	1454 Latta Lane
	Conyers, Georgia	30207


The CSC cross-referencer has been designed to run on the 680X series
of Motorola microprocessors under FLEX*.	When assembled and run on a
6809, it makes the necessary address changes to itself to run under
FLEX* 9.	The assembler text file name to be analyzed is requested and
is the only input parameter required.

For ease of customizing the CSC cross-referencer in situations other than
for FLEX* 2.0 and 9.0, all external addresses are kept in a table at
the beginning of the assembler program.	Initialization code may also
need modification in some cases.	For ease of interfacing to various
terminals, symbolic values CLRSCN and MAXNAM have been defined.
CLRSCN provides the screen clear character string; unused character
positions should be set to $80.	MAXNAM provides the maximum length
for assembler names to be cross-referenced.

	* FLEX is a trademark of Technical Systems Consultants.
