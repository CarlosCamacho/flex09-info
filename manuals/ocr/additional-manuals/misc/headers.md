# HEADERS

> Source: `manuals/misc/DOC_2 - FLEX Software Archive - Documentation Disk - Includes ARERRS, CBUG, HEADERS.zip!DOC_2.DSK!HEADERS.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

Replacement text for the third paragraph on page 42.

The header files required to be included should reside on the
system drive.
If the file is included in the source program using angle
bracket delimiters instead of double quotes, the compiler will
look for it on the system drive.
For example, if the system drive is 0, '#include <stdio.h>' is
equivalent to '#include "0.stdio.h"'.
