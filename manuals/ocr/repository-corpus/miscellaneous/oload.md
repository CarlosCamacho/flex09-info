# OLOAD

> Source: `misc/uncategorized/tsc - Bootable FLEX System and Utilities.zip!tsc/Tsc_util_2.dsk!OLOAD.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

OLOAD


The	OLOAD	command	is	used to load a .BIN file at an address
other than the one specified in its 'ORG' statement.


Use:


+++OLOAD,<filename>,<offset>


<offset> is a hex number which will be added to the load address
of <filename> before it will be loaded into RAM.
