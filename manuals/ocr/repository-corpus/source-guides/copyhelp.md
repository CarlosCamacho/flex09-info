# COPYHELP

> Source: `sourcecode/library-disks/LIB30 - FLEX Source Library - Source Code and Build Files - Includes BAUD, BINCPY, BINPAK.zip!LIB30.DSK!COPYHELP.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

HELP FILE FOR NEW COPY UTILITY.
Examples:-
COPY C 0.BAD.TXT,1	Copies one file that has a CRC
error, including whatever data is readable from
the bad sector.
Replaces the utility RAWCOPY.CMD.
COPY DN 0,1	Updates the destination with all
files from the source that are not on the destination
or have an older date on the destination
Replaces the utilities COPYNEW & ARCHIVE.
COPY EZ 0.P.CMD 2	Moves file P.CMD from source
to destination no matter what.
Replaces the utility MV.CMD
COPY F 2,0 1-16	Useful for copying from one
COPY F 2,1 17-52	large drive to smaller ones.
Copies 16 files to 0 & bal to 1.
COPY KD 1,0	Kill the files on drive 1 when older
than drive 0.
COPY LNA 2,1	Alphabetically lists those files
on the source that are not on the destination.
Replaces the utility DUP.CMD & is faster
COPY P 0,1	Prompt before each file is copied to
allow user to select which files are desired.
Replaces the utility PCOPY.CMD
COPY R 2 4 6 1.F00	Recover a file on drive 2
that does not appear in the directory.
Reading will begin at track 4 sector 6 and the
file will be written to drive 1 with the name
F00.SCR
Replaces the utility RECOVER.CMD
COPY W 0,1 .CMD	After COPY is loaded the user
is prompted with "Change disk-press key"
The system disk may be removed & another inserted.
P COPY 0,1	Will print the file specs. as the
files are copied. Also sent to VDU.
O OUTFILE COPY 0,1	Will do the same for a disk file.
Ignore report of BAD FILE in this case.
