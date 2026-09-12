# FORMAT

_OCR transcription from: `Screenshot_20260912-065911.png`, `Screenshot_20260912-065928.png`, `Screenshot_20260912-065941.png`, `Screenshot_20260912-065959.png`, `Screenshot_20260912-070013.png`, `Screenshot_20260912-070026.png`_

FORMAT
FORMAT is used to format a new diskette. Diskettes as
purchased will not work with FLEX until certain
formatting information has been put on them. The FORMAT
utility writes this information on the diskette and
then verifys that the information can be read back. If
FORMAT finds sectors that it cannot read it removes
them from the chain of free sectors and prints their
location.
## Description
The general syntax of the FORMAT command is:
FORMAT[,<drive>]
Where <drive> is the number of the drive in which the
disk to be formatted has been placed. If no drive
number is specified the 'WORK' drive is used. If the
'WORK! drive is set to ''ALL' then the user is prompted
for the drive number.
After FORMAT has determined the drive number it will
ask: '
SCRATCH DISK IN DRIVE #X ('Y"' OR 'N')?
Where X is the drive number specified by the user or the
'WORK' drive. If the user types an 'N' the program will
abort and return to FLEX. If a 'Y' is typed FORMAT
continues with the following prompt:
DISK SIZE ('5' OR '8')?
The user then types in the size of the disk to be
formatted. After this FORMAT prompts:
FORMAT SINGLE OR DOUBLE SIDED ('S! OR 'D')?
If the drive being used to format is a double sided
drive and the user wants to format both sides of the
q disk type 'D', otherwise type 'S', The next prompt is:
NUMBER OF TRACKS TO FORMAT?
FORMAT is asking literally how many tracks the user
wishes to format. Standard sizes for 5.25" disks are:
35, 40, 70, 77, 80. Standard sizes for 8" disks are:
77, '154. The user can format less then the maximum
number of sectors for special purposes- Please consult
the disk drive manufacturers data sheet for the
particular drive being used to find the maximum number
of tracks that the drive is capable of accessing. Even
though it is possible to attempt to format a disk for
more tracks then it is capable of, it is not recommended
as it might cause damage to the disk drive. The next
prompt is:
FORMAT SINGLE OR DOUBLE STEPPING ('S' OR 'D')?

Some disk drives have double the normal number of tracks
for that size drive. This is called a 'Double Tracking'
disk drive. The Double Tracking drives have twice as
many tracks per inch as regular disk drives. This makes
them incompatible with regular drives unless the double
stepping option is enabled (see the 'SETUP' command for
more information). This option enables the user to
create a disk that will be usable on a _ regular disk
drive, but was formatted on a Double Tracking disk
drive. This can be useful for program exchange, etc.
The next prompt is:

1MHz OR 2MHz CPU SPEED ('1' OR '2')?
This tells FORMAT what speed the CPU is running at.
This changes the 'interleave pattern' on the disk. The
'interleave pattern' is the order in which the sectors
are put on the disk during formatting. The sectors are
not placed in sequential order to enable the computer
some processing time before having the next sector pass
under the disk head. At faster speeds the computer has
finished its processing and is waiting for the next
sector to pass under the head. Changing the 'interleave
pattern' to the 2MHz setting puts the sectors closer
together on the disk so that the sector is there when
the computer is ready for it. Disks formatted at the
2MHz setting can be used at 1MHz CPU speed, but they
will take longer to read. The same goes for disks
formatted at the 1MHz setting but being used at 2MHz CPU
speed. When running at 1.5MHz select the 2MHz setting
for mini-floppy disks and select the 1MHz setting for
full size disks.

DISK NAME?
The user enters the name of the disk that is to appear
in catalog listings. If the user just enters a carriage
return a disk name of 'GIMIX -CHI' is put on the disk.
The next prompt is:

VOLUME NUMBER?
The user enters the volume number that is to appear in
catalog listings. If carriage return is entered then
the disk number will be zero (@). If the user entered a
carriage return for the name prompt, this prompt will be
skipped and a volume number of '60609' will be put on
the disk.
After entering the volume number FORMAT then prints all
the data just entered and prompts:

IS THE ABOVE CORRECT ('Y' OR 'N')?
If the data typed in is correct then type 'Y' and FORMAT
will go on. If an 'N' is typed then the prompts start
over again. The final prompt is:

ABORT FORMAT ('Y' OR 'N')?

This is the users LAST chance to stop the formatting and
save the disk in the specified drive. Typing an 'N'
will start the format WITHOUT any further user
interaction. Typing a 'Y' will abort the format and
return to FLEX.
FORMAT will now print:
FORMATTING TRACK: XX
Where XX is the track currently being formatted. The
track number will be updated as each track is formatted.
After all tracks have been formatted 'FORMAT! will
print:
VERIFYING TRACK: XX
Where XX is the track currently being verified. FORMAT
reads every sector on the disk after formatting. If it
finds a sector that it can not read it removes the bad
sector from the chain of available sectors. A disk with
a few bad sectors can still be used. Once a FORMAT has
removed a sector it is unavailable to FLEX unless the
disk is reformatted and does not error again. If a disk
continually gives alot of errors or gives errors in
different areaS each time it is formatted the disk might
be defective.
Upon successful completion FORMAT will print the
following message and then return to FLEX:
FORMATTING COMPLETED
TOTAL SECTORS: XXXX
Where XXXX is the number of sectors available to the
user. This number will vary depending on the number of
tracks formatted, the size of the disk, whether the disk
was formatted single or double sided and _ whether the
disk was formatted single or double stepped.
The following is an explination of the possible error
messages that can be generated by the FORMAT command:
NOT EOUGH MEMORY INSTALLED IN SYSTEM
This means that according to the FLEX 'MEMEND' pointer
there is not enough memory installed in the system to
format a disk. The user must have at least sixteen (16
'k' of memory starting at $0008 in addition to the RAM
occupied by FLEX.
FORMATTING ABORTED
This error message is printed to inform the user that
FORMAT returned to FLEX prematurely and that formatting
was unsuccessful.

TOO MANY TRACKS FOR DOUBLE STEPPING
This error message means that the user tried to format
more tracks than any drive is capable of handling when
double stepped. When formatting double stepped the
number of tracks on the drive is HALVED, The user in
then prompted for the number of tracks to format again.
ERROR WRITING BOOT SECTOR
This is a fatal error which causes the formatting to be
aborted. This means that FORMAT could not put the
necessary loading information on track 6, sector 1.
SECTOR WAS NOT WRITTEN TO ZEROS
This is a secondary error and is only printed after a
bad sector message has been printed. It tells the user
that the sector did not clear when initially written to
disk. This can also indicate a memory failure. Before
re-formatting the disk check the memory for proper
operation. The memory range will be from $100 to $2FFF.
ERROR IN SECTOR LINKAGES
This is a secondary error and is only printed after a
bad sector message has been printed. It tells the user
that the pointers to the next sector were not written
correctly. As mentioned above this can also indicate a
memory error.
ERROR VERIFYING SECTOR
This is a secondary error and is only printed after a
bad sector message has been printed. It tells the user
that the specified sector cannot be read.
FATAL ERROR
This tells the user that FORMAT found an error ina
. vital area of the disk and that the disk is unusable.
BAD SECTOR AT: TT-SS
This is the header message for the three secondary error
messages. TT is the track number of the error and ss is
the sector number of the error. This message is printed
if FORMAT finds a sector with an error in it during the
verify operation.
NO GOOD SECTORS ON DISK
This is a fatal error and tells the user that FORMAT
could not find a Single usable sector on the disk. This
usually means that the disk is defective. Try
formatting the disk again before rejecting it.
DRIVE NOT READY

This tells the user that the drive to be formatted in
either does not have a disk in it or that the drive door .
is open.
DISK IS WRITE PROTECTED
This is a fatal error that tells the user that the disk
in the specified drive is write protected and cannot be
formatted until it is un-write protected.
WRITE FAULT IN WRITING TRACK
This indicates a hardware failure in the disk drive
itself. If this message is received, re-try the FORMAT
and if it appears again the chances are that the disk
drive is not functioning properly.
LOST DATA IN WRITING TRACK
This error should not normally occur. Since FORMAT
inhibits the 'IRQ' and 'FIRQ' interrupts the only way to
get this error message is if the system is getting 'NMI'
interrupts or if running eight inch disks at MHz cpu
speed and "slow 1/0' is enabled (see 'Hardware
Configuration' for more information). Eliminate the
source of the interrupts and try again. If this error
persists or there are definately no interrupts being
generated in your system then there might be a hardware
failure. If using the GIMIX 6899 PLUS CPU BOARD with
the 58167 Time-of-Day clock option installed, make sure
that it is not enabled for 'NMI' interrupts. See the
Hardware Manual for information on how to do this.
ERROR IN ACCESSING SYSTEM INFORMATION RECORD
This means that the format and verify went properly but
after verifying the disk when FORMAT went to write the
disk information on track 6, sector 3 it encountered an
error. This is a fatal error.
NOTE: When formatting disk in doible tracking drives
for double
stepping use only fresh, i.e. never used, disks.
Also when using double stepped disk in single
tracking drives or single tracking disks in double
stepped drives do not write to the disk. Writing to
these disks can cause them to be unreadable on
single tracking drives. This only applies to
writing. The user can always read Single tracked or
double stepped disks.

CREATING SYSTEM DISKETTES
A system disk is the one from which the operating
system can be loaded. Normally the system disk will
also contain the Utility Command Set (UCS). The
following procedure should be used when preparing
system .disks.
1. Initialize the diskette using FORMAT as described
on the preceding pages.
2. COPY all .CMD files desired to the new disk
3. Copy all .SYS files to the new disk. It should be
noted that steps 2 and 3 can be done with one command;
"COPY,®,1,-CMD,.OV,.LOW,.SYS', assuming you are
copying from drive @ to drive 1 and all commmand
files and their overlays are desired. (the .OV
copies overlay files and .LOW copies the utility
'SAVE.LOW').
4. Last it is necessary to LINK the file FLEX.SYS
to the system using the LINK command.
A very convenient way to get the above process
performed without having to type all of the comands
each time is to create a command file and use the
EXEC command. Consult the EXEC documentation for
details.
It is not necessary to make every disk a system
diskette. It is also possible to create 'working!
diskettes, disks which do not have operating system
on them, for use with text files or BASIC files.
Remember that a diskette can not be used for
boothing the system unless the operating system is
contained on it and it has been linked. To create a
working disk, simply run FORMAT on a diskette. It
will now have all of the required information to
enable FLEX to make use of it. This disk, however,
does not contain the disk operating system and is
not capable of booting the system. ;

