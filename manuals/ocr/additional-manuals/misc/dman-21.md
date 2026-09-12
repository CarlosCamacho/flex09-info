# DMAN-21

> Source: `manuals/misc/MANVOL3 - FLEX Software Archive - Manual and Documentation Archive - Includes BACK, DMAN-08, DMAN-10.zip!MANVOL3.DSK!DMAN-21.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NR X 21
.NF
.LM 05
.DB
21.0.0
.DB
'DRDMAN'
.DB
DIRECTORY OF DISK
.LM 55
.FI
.SP3
This program list the disk files for the user without leaving the DATAMAN system.
.sp2
.nf
.lm 10
21.1.0
PROGRAM OPPERATION
.FI
.LM 55
To use this program the user selects the disk drive to look at.
The program lists the '.SPC' and '.DAT' files od DATAMAN databases.
It also lists any '.TXT', '.OUT', and '.FOR' files created by the dataman system.
.sp
When the complete disk has been listed, the user can 'EXIT' back to the DATAMAN 'MASTER MENU' or look at another disk.
.sp2
.lm10
.nf
21.2.0
PROGRAM CODE
.LM 55
.FI
This program uses the FLEX 'CAT.CMD' utility to list the disk files.
This utility was used so that any 'read' protected files would not be listed.
Line 1075 and 1080 set up the FLEX call.
You could use other file listing FLEX utilities like 'FILES.CMD' or 'DIR.CMD' by changing these two lines of code.
.sp2
.lm10
.NF
21.3.0
VARIABLES USED
.LM 55
.FI
