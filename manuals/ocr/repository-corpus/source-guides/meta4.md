# META4

> Source: `sourcecode/library-disks/LIB27 - FLEX Source Library - Source Code and Build Files.zip!LIB27.DSK!META4.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

META4 Compiler - Compiler
	-------------------------


(c) 1981 W.A. Gale


Transplanted to BDS C by:	Jan Larsson
	Kosterv. 12
	S-181 35 Lidingo
	SWEDEN


These programs were published in Doctor Dobbs Journal, August 1981.
They were written in PIDGIN, a low level language I didn't need and
therefore did not implement (to be honest, I couldn't figure those
macros out). PIDGIN to C translation is easy (the opposite would be
worse) and there was few unpleasant surprises.

META40.C, META41.C and META42.C is the code for the M4 interpreter
typed in as close as possible to the original code, about 4 pages
in each of these 3 files. META40.H contains global declarations and
META43.C some I/O routines (open file etc.).

META4.M4 is the M4 code for the META4 to M4 translator, META4.MET is
the META4 source for META4 to M4 translator.

To run the program, look here:

	A>M4 <m4_translator> <source_language> <target_language>

<m4_translator> is the translator code in m4 with extension .M4
<source_language> is the input file, no default extension
<target_language> is the file in which the result of translation is put

Example:

You've created a META4 descrition of your beautiful language

called XYZZY.MET, a test program written in XYZZY called

TEST.XYZ. First create a	m4 translator for your language:


A>M4 META4 XYZZY.MET XYZZY.M4


Now you can translate your test program:


A>M4 XYZZY TEST.XYZ TEST.SHH


	H A P P Y	C O M P I L I N G ! ! !
