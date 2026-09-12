# CSCINNAM

> Source: `dev/csc/CSC - CSC Development - Documentation and Examples.zip!CSC.DSK!CSCINNAM.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.




CSC 680X PROGRAM DEVELOPMENT SYSTEM NOTES
	- CSC name-changer
	

by Bud Pass
	Computer Systems Consultants
	1454 Latta Lane
	Conyers, Georgia	30207


The CSC name-changer has been designed to run on the 680X series
of Motorola microprocessors under FLEX*.	When assembled and run on a
6809, it makes the necessary address changes to itself to run under
FLEX* 9.	The input, output, and control file names are requested and
are the only input parameters required.	Any text file may be processed
by this program, as the name-changing process is totally driven by the
change commands in the control file.

Each record in the control file contains the following data:
	delimiter old-string delimiter new-string delimiter
where delimiter is any character not contained in either string.
New-string may be null but old-string may not be null.
An example control record might appear as follows:
	/Z1234/GETNEXT/

Several control files are included on the program disk.	They are
to be used with the CSC disassembler to assist in the commenting
of programs initially running under various FLEX* implementations.
They may be reviewed as examples of the construction of control files
for the CSC name-changer.	Associated with each control file is an
equate file providing the same information for the re-assembly of
the program.	By using the name-change file for one version of FLEX*
and the equate file for another, most FLEX* references in a program
may be automatically changed.	The control and equate file names are
as follows:
	CSCCHGF1	CSCCHGE1	- MINI-FLEX*
	CSCCHGF2	CSCCHGE2	- FLEX* 2
	CSCCHGF9	CSCCHGE9	- FLEX* 9

For ease of customizing the CSC name-changer in situations other than
for FLEX* 2.0 and 9.0, all external addresses are kept in a table at
the beginning of the assembler program.	Initialization code may also
need modification in some cases.	For ease of interfacing to various
terminals, the symbolic value CLRSCN has been defined in the program.
CLRSCN provides the screen clear character string; unused character
positions should be set to $80.

	* FLEX is a trademark of Technical Systems Consultants.
