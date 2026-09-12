# UNSNARL

_Source: FLEX User’s Manual (Technical Systems Consultants), 1979 scan._

'UNSNARL

The UNSNARL command is used to reorganize the free chain on a FLEX
disk (the list of all unused sectors). This helps reduce
fragmenting of files on the disk, and improves access times.

## Description
The general syntax of the UNSNARL command is:
UNSNARL,<work drive>,<backup drive>

where <work drive> is the number of the drive with the disk to be
reorganized, and <backup drive> is the number of the drive where
the FREEMAP.TMP file can be stored. This must be different from
the work drive and defaults to drive 0. UNSNARL will then read
all the sectors in the free chain of the indicated disk, and make
a list of all the segments in the chain.

A segment is a sector or group of sectors linked in logical order.
On a newly formatted disk there is only one segment, which has all
the sectors on the disk. As files are created and deleted, this
segment is broken into smaller and smaller segments, and the links
among them become more and more random. This results in files
being stored in fragments scattered over the disk, and increases
access times, especially for random-access files.

UNSNARL scans the free chain and creates a list of all the
segments in the free chain. For insurance this list is saved on
the backup disk as the FREEMAP.TMP file. Then UNSNARL sorts' the
list of segments in ascending order of disk address. Next the
sector link in the last sector of each segment is pointed to the
first sector of the next segment. This frequently causes several
small segments to be merged into one large segment. Finally the
pointers to the start and end of the free chain in the System
Information Record are corrected. At each step, UNSNARL displays
a descriptive message on the console. Example:

+++UNSNARL,1,0

READING FREE CHAIN

FREE CHAIN READ, NOW SAVING MAP

MAP SAVED, NOW SORTING EXTENT LIST
LIST SORTED, NOW RELINKING FREE CHAIN
RELINK DONE, DELETING MAP FILE

+++

The FREEMAP.TMP file is created as insurance against power
glitches or other interruptions. If UNSNARL is interrupted while
it is relinking the free chain, the free chain will be left in a
confused state, and creating or deleting files on that disk would
be impossible. FREEMAP.TMP makes it possible for UNSNARL to pick
up where it left off. The UNSN1 command is the same as UNSNARL,

. -U.2.1-


except that instead of reading the free chain to create the list
of segments, it reads the list from the FREEMAP.TMP file. Once
UNSNARL or UNSN1 successfully completes the relinking, the
FREEMAP.TMP file is deleted.

UNSNARL has no effect whatever on files, so a fragmented file will
remain fragmented until it is rewritten onto an unfragmented
segment of free chain. Thus to keep fragmentation to a minimum
UNSNARL should be used periodically, in order to clean up the
fragmentation left by formerly fragmented files now using segments
from the reorganized free chain.

UNSNARL only reduces file fragmentation, it does not eliminate it.
The only way to eliminate fragmentation entirely is to format a
new disk and perform a sequential copy of all files to the blank
disk. This method is practical for floppies, but not for high
capacity hard disks such as the GIMIX Winchester Disk Subsystems.
Therefore GIMIX has developed the UNSNARL command as a way for
users of our hard disk systems to avoid the degradation of system
performance caused by severe file fragmentation.

NOTE: the degree of fragmentation in the free chain, and therefore

the need for running UNSNARL, can be determined with the FREEMAP
command.

. -U.2.2-

