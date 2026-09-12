# NEWDISK

_OCR transcription from: `Screenshot_20260912-065043.png`, `Screenshot_20260912-065102.png`, `Screenshot_20260912-065116.png`_

NEWDISK

Newdisk is used to format a new diskette. Diskettes as purchased will
not work with FLEX until certain formatting information has been put on
them. The NEWDISK utility puts this information on the blank diskette,
as well as checking for surface defects on the media.

DESCRIPTION

The general syntax of the NEWDISK command is:

NEWDISK, <drive>

where <drive> represents a single digit drive number and specifies the
drive containing the diskette to be formatted. After entering the
command, the system will ask if you are sure you want to format the
diskette (Remember, the NEWDISK process will remove any information
previously contained on the disk), and if diskette to be initialized is
a scratch disk. Type 'Y' as the response to these questions if you are
sure the NEWDISK command should continue.

Certain versions of NEWDISK will also ask you if you want to make double
sided, double density, or extra density diskettes, and about how «many
tracks to format. These questions relate to the hardware configuration
of the system in use and are summarized below.

NEWDISK will then Prompt for a volume name and number. This gives you
the ability to "name" the diskette for future reference. The volume
name consists of eight characters, with an optional three character
extension. The volume number should be in the range of 1 to 32000.
Note that it is exceedingly poor practice to generate diskettes without
volume identifiers.

The NEWDISK process takes several minutes to initialize a diskette,
assuming there are no bad spots that must be accounted for. Defective
sectors will make NEWDISK run even slower, depending on the number of
bad sectors found. As bad sectors are detected, messages will be output
to the terminal such as:

BAD SECTOR AT xxyy
where 'xx' is the diskette track number (in hex) and 'yy' is the sector
number, also in hex. NEWDISK automatically removes bad sectors from the
list of available sectors, so even if a diskette has several bad spots
on it, it is still usable. When NEWDISK finishes, it will report the
number of available sectors on the disk.
Sometimes during the NEWDISK process, a sector will be found defective
in an area on the diskette which is required by the operating system.
In such a case, NEWDISK will report:
FATAL ERROR - FORMATTING ABORTED


You should not immediately assume that the diskette is unusable if this
occurs. You should remove the diskette from the drive and clean the
heads in that drive using one of the available head cleaning kits. Then
you should re-insert the diskette that was flagged as faulty, and try to
format it again. If after several attempts the formatting process is
still aborted, you can assume the diskette is unusable and discard it.
Diskette Formats:

The NEWDISK program provides several optional diskette formats. Certain
formats may only be used with specific configurations of disk
controllers. This table summarizes available formats and hardware
constraints on their use: '

1. Single Density -- supported by all controllers and drives.
Diskettes that are to be shipped to other systems should be
formatted in this manner if it is at all feasable.

2. Double Density -- supported by DC-4 and DMF-2 controllers with
Qume, Remex and Tandon disk drives. Other configurations should
use single density only.

3. Extra Density -- supported by DMF-2 controllers with Qume and
Remex drives only. Note that the MIRROR command runs considerably
slower with diskettes formatted extra density.

4. Quad Density -- supported by DC-4 controllers using Tandon or Qume
quad density 5-inch drives. Note that diskettes should be
certified for use with Quad Density.

5. Double Sided -- supported by DC-3 and DMF-1 (and higher)
controllers using SOME Wangco and Calcomp drives, and ALL Qume,
Remex, and Tandon drives. Note that diskettes certified for
double sided operation must be used.

6. 40 Track - supported by DC-2 (and higher) controllers using
Wangco, Tandon, or Qume 5 inch drives. Note that diskettes
certified for 40 track operation must be used.

7. 77 Track - supported by DC-4 controllers using Tandon or Qume quad
density drives with Verbatim Datalife quad density 5 inch

diskettes.

8. 80 Track - supported by DC-4 controllers using Tandon or Qume quad
density drives and Dysan or IBM quad density 5 inch diskettes
certified for 80 track operation.

CREATING SYSTEM DISKETTES
A system diskette is one from which the operating system can be loaded.
Normally the system diskette will also contain the Utility Command Set
(UCS). The following procedure should be used when preparing system
disks.

1. Initialize the diskette using NEWDISK as described above.

2. COPY all .SYS files desired to the new disk.

3. COPY all .CMD files to the new disk. It should be noted that
steps 2 and 3° can be done with one command;
"COPY,0,1,.SYS,.CM,.0V,.LOW", assuming that the new diskette in in
drive 1 and that the operating system and all commands and their
overlays are desired. (the .0V copies overlay files and .LOW
copies the utility 'SAVE.LOW').

4. Finally LINK the file FLEX.SYS to the system using the LINK
command.

It is not necessary to make every diskette a system diskette. It is
possible to create 'working' diskettes, which do not have the operating
system on them, for use with text files or BASIC files. Remember that a
diskette can not be used for booting the system unless the operating
system is contained on it and it has been linked.

