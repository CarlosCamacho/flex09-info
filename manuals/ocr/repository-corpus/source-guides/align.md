# ALIGN

> Source: `sourcecode/library-disks/LIB14 - FLEX Source Library - Source Code and Build Files - Includes ALIGN, ANADEX, COPYNEW.zip!LIB14.DSK!ALIGN.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

PURP:
 This utility provides a disk alignment procedure.
FILES:
 ALIGN.TXT	ALIGN.CMD
LANG:	Assembly
HARD:	SWTP6800,INFOTON 100 VDU: Control characters in use!!!
USAGE:
 An alignment disk is placed in the drive to be
aligned and the program is loaded from the other
drive by typing in the command ALIGN.
 The various tests for the alignment procedure
are displayed on the VDU screen, and the program
moves the disk drive heads to the appropriate
track no. for the particular test.
 The track 0 switch adjustment should not be
needed unless the switch is changed.
 This alignment procedure is suitable for SHUGART,
and SIEMENS 5" floppy disk drives.
For WANGCO drives a similar procedure is used but
none of the existing test points carry the relevant waveforms
and these have to be picked up on the I.C. pins as
indicated on the accompanying diagram.
 Note that there is only one pin carrying the 'double
lobe' waveform and so it is not possible to add two
waveforms as in the other types with a differential
output.
 Any queries please contact John Turner, Deeside 816236.
