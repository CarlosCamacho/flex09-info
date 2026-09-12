# RESQINFO

> Source: `dev/csc/CSCFL_S2 - CSC Development - Documentation and Examples.zip!CSCFL_S2.DSK!RESQINFO.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

CSC TSC BASIC RESEQUENCER

The CSC TSC BASIC resequencer is a TSC Extended BASIC program which
has several capabilities beyond those of the TSC-supplied resequencer.
The primary ones are as follows:

	resequences all versions of TSC BASIC including precompiler,
	resequences some or all of a program,
	optionally resequences lines with blank sequence numbers,
	checks for missing label definition definitions,
	checks for new sequence number overflow,
	aligns left program margin by adding leading zeroes,
	processes disk-to-disk rather than in memory.

It is completely interactive with the user.	Since it is written
using the TSC precompiler language for extended BASIC, the XPC
program is required to compile the program.
