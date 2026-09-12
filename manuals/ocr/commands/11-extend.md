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

