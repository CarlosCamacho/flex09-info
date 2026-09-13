# READ ME

> Source: `sourcecode/library-disks/LIB08-9 - FLEX Source Library - Source Code and Build Files - Includes ASMFLEX, CRTSET, DATECOPY.zip!LIB08-9.DSK!READ_ME.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

The files on this disk consist of the following:

CRTSET.CMD	the executable command file, copy to your system drive
	+++COPY 1,0 CRTSET.CMD
	+++CRTSET

CRTSET.SRC	the assembler source file, use TSC's standard 6809 assembler
	+++ASMB,CRTSET.SRC,0.CRTSET.CMD

ASMFLEX.LIB a library file of FLEX equates used by CRTSET.SRC

CRTSET.PR	a TSC text processor source file for the instruction sheet
	+++P,PR,CRTSET.PR

CRTSET.TXT	a directly printable instruction sheet
	+++P,LIST,CRTSET.TXT
