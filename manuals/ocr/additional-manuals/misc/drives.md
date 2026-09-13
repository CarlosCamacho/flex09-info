# DRIVES

> Source: `manuals/misc/DOC_2 - FLEX Software Archive - Documentation Disk - Includes ARERRS, CBUG, HEADERS.zip!DOC_2.DSK!DRIVES.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

Insert at the bottom of page 6.

DEFAULT DRIVES
--------------

The default disk drive for all file handling is the Working Drive.
However, programs can change the Working Drive temporarily
using 'setwd()' which is documented in the Low-level Call
section of this manual.

The '#include' facility in the C Pre-processor also defaults to
the working drive unless angle bracket (<..>) delimiters are
used, in which case the default is the System Drive.
