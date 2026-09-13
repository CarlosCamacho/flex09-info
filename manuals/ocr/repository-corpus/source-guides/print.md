# PRINT

> Source: `sourcecode/library-disks/LIB14 - FLEX Source Library - Source Code and Build Files - Includes ALIGN, ANADEX, COPYNEW.zip!LIB14.DSK!PRINT.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

PRINT.SYS (alternative)
This version has been written to enable
the serial PIA board, MP-C, to be used with
a serial printer on Port 0, making use of
SWTBUG routines.
In addition, it allows for input on Port 0
if a printing terminal is used.
A small patch to the I/O jump table enables
Port 0 I/O in Disk Basic.
I am afraid it is not very elegant, but it
does appear to work well enough.
