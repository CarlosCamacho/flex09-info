# EXTEND

_OCR transcription from: `Screenshot_20260912-070703.png`_

EXTEND
) EXTEND enables the user to increase the amount of space allocated to the
directory on a newly formatted disk. This prevents the directory from
becoming fragmented when the number of directory entries exceeds the
space allocated by the disk format program. Fragmenting the directory
increases the amount of time require to access files on the disk.
## Description
The general syntax of the EXTEND command is:
EXTEND[,dn,sn]
Where 'dn*> is an optional drive number and 'sn* is the number of
additional sectors to be allocated to the directory. If no drive number
is specified, EXTEND defaults to the work drive and adds 1@ sectors. If
the work drive is set to 'ALL*, EXTEND prints an error message and
returns to FLEX. The maximum number of additional sectors that can be
allocated to the directory is 10. Each sector adds space for 1@ entries
to the directory allocation. Some examples follow:
+++EXTEND
+++EXTEND, 2,5
The first example will EXTEND the directory of the disk in the work
drive by 10 sectors (100 entries). The second example will EXTEND the
directory of the disk in drive #2 by 5 sectors (5@ entries).
The following table lists the number of sectors/directory entries
normally allocated by FORMAT:
s" 8"
SECTORS ENTRIES SECTORS ENTRIES
SINGLE SIDED 6 60 ll 1108
DOUBLE SIDED 16 168 26 268 .
NOTE: EXTEND can only be used on a freshly formatted disk.
EXTEND can generate the following error message:
DISK CANNOT BE EXTENDED
Either there are already files on the disk or the first sector on track
one was found bad when the disk was formatted.


## 1979 FLEX User’s Manual version

_Source: FLEX User’s Manual (Technical Systems Consultants), alternate scan._

EXTEND

The EXTEND command is used to extend the directory space of a disk
by adding sectors taken from the chain of free sectors.

DESCRIPTION

The general syntax of the COMMAND command is:

EXTEND[,<drive>,<sectors>]

where <drive> is the number of a drive, and <sectors> is the
number of sectors to be added to the directory space of the disk
in that drive. If the parameters are omitted, EXTEND defaults to
the current working disk and 10 sectors. Each added sector holds
10 additional directory entries. The number of sectors added must
be at least 1 and no more then 255. The free chain is reduced by
the number of sectors added to the directory.

EXTEND was created for users who may want to put large numbers of
files on a disk. If so many files are put on a disk that the
original directory space is filled up, FLEX extends the directory
by adding sectors from the free chain, one at a time. This will
cause the directory to become fragmented, and all disk operations
requiring directory searches will become much_ slower. EXTEND
avoids this by adding the additional sectors in a single block.
Lf this is done before any files have been written to the disk,
then the added space will be adjacent to the original directory,
thus keeping the directory as compact as possible. Therefore, if
the user expects to need extra directory space, EXTEND should be
used immediately after the disk is formatted.

The amount of directory space on a disk is determined by the
FORMAT command (for fioppies) or the HARDFxxx command (for hard
disks). This table gives the number of sectors allocated for each
type of disk by the formatting program, and the number of
directory entries available.

sectors entries
5 1/4" floppy single-sided 6 60
double-sided 16 160
8" floppy single-sided 11 110
double-sided 26 260
6 MB removable Winchester 60 600
19 MB Winchester 188 1880

If you expect to have more files on a disk than can be entered in
the space listed above, then you should extend the directory

before making any use of the disk.

-E.2.1-


Examples:
+++EXTEND, 2,8

adds 8 sectors to the directory of the disk in drive 2, making
room for 80 addditional files.

+++EXTEND
adds 10 sectors to the directory of the working disk.

EXTEND has some special restrictions: the number of sectors added

must be less than the number left in the free chain. If no
parameters are included on the command line (for default
operation), then the working drive number may not be "ALL". If

the drive number is given, then the number of sectors must also be
given.

-E.2.2-

