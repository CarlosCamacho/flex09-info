# APG3

> Source: `manuals/misc/TSC_MAN - FLEX Software Archive - Manual and Documentation Archive - Includes APG-MAC, APG-PREF, APG1.zip!TSC_MAN.dsk!APG3.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.ce
FMS FUNCTION CODES
.pp
The FLEX File Management System is utilized by the user through function
codes.  The proper function code number is placed, by the user,
in the Function Code byte of the File Control Block (FCB)
before calling FMS (Byte 0).
FMS should be called by a JSR to the "FMS Call" entry.
On entry to FMS, the
X-register should contain the address of the FCB.  On exit from
FMS, the CPU Z-Condition code bit will be clear if an error
was detected while processing the function.  This bit may be
tested by the BNE and BEQ instructions.
Note: In the following examples, the line "JSR FMS"
is referencing the FMS Call entry at $D406.
.sp
.pp
Function 0 - Read/Write Next Byte/Character
.bx
If the file is open for reading, the next byte is fetched from the
file and returned to the calling program in the A-register.  If
the file is open for writing, the content of the A-register on
entry is placed in the buffer as the next byte to be written to the file.
The Compression Mode Flag must contain the proper value for automatic space
compression to take place, if desired (see Description of the FCB,
Compression Mode Flag for details).  On exit, this function code remains unchanged
in the Function Code byte of  the FCB; thus, consecutive read/writes
may be performed without having to repeatedly store the function code.
When reading, an End-of-File error is returned when all data in
the file has been read.  When the current sector being read is
empty, the next sector in the file is prepared for processing automatically,
without any action being required of the user.  Similarly, when
writing, full sectors are automatically written to the disk without
user intervention.
.sp
Example:
.sp
.in 10
.nf
If reading -
LDX   \#FCB    Point to the FCB
JSR   FMS     Call FMS
BNE   ERROR   Check for error
The character read is now in A.

If writing -
LDA   CHAR    Get the character
LDX   \#FCB    Point to the FCB
JSR   FMS     Call FMS
BNE   ERROR   Check for errors
The character in A has been written
.sx
.pg
Function 1 - Open for Read
.bx
The file specified in the FCB is opened for read-only access.  If
the file cannot be found, an error is returned.  The only parts of the
FCB which must be preset by the programmer before issuing this
function are the file specification parts (drive number, file name,
and file extension) and the function code.  The remaining parts
of the
FCB will be initialized by the Open process.  The Open process
sets the File Compression Mode Flag to zero, indicating a text file.  If
the file is binary, the programmer should set the File Compression
Mode Flag to $FF, after opening the file, to disable the space
compression feature.
On exit from FMS, after opening a file, the function code in the
FCB is automatically set to zero (Read/Write Next Byte Function)
in anticipation of I/O on the file.
.sp
Example:
.sp
.in 10
.nf
LDX   \#FCB    Point to the FCB
[ Set up file spec in FCB ]
LDA   \#1      Set open function code
STA   0,X     Store in FCB
JSR   FMS     Call FMS
BNE   ERROR   Check for errors
The file is now open for text reading

To set for binary - continue with the following
LDA   \#$FF    Set FF for sup. flag
STA   59,X    Store in suppression flag
.sx
Function 2 - Open for Write
.bx
This is the same as Function 1, Open for Read, except that the file
must not already exist in the diskette directory, and it is opened
for write-only access.  A file opened for write may not be
read unless it is
first closed and then re-opened for read-only.
The space compression flag should be treated the same as described
in "Open for Read".
A file is normally opened as a sequential file but may be
created as a random file by setting the FCB location File
Sector Map byte non-zero immediately following an open for
write operation.
Refer to the section on Random Files for more details.
The file will be created on the drive specified unless the drive
spec is $FF in which case the file will be created on the first
drive found to be ready.
.sp
Example:
.sp
.in 10
.nf
LDX   \#FCB    Point to FCB
[ Setup file spec in FCB ]
LDA   \#2      Setup open for write code
STA   0,X     Store in FCB
JSR   FMS     Call FMS
BNE   ERROR   Check for errors
File is now open for text write.
For binary write, follow example in Read open.
.sx
Function 3 - Open for Update
.bx
This function opens the file for both read and write.
The file must not be open and must exist on the specified drive.
If the drive spec is $FF, all drives will be searched.
Once the file has been opened for update, four operations
may be performed on it; 1. sequential read, 2. random read,
3. random write, and 4. close file.
Note that it is not possible to do sequential writes
to a file open for update.
This implies that it is not possible to increase the size
of a file which is open for update.
.sx
.sp 2
Function 4 - Close File
.bx
If the file was opened for reading, a close merely removes the
FCB from the chain of open files.  If the file was opened for
writing, any data remaining in the buffer is first written to the disk, padding
with zeroes if necessary, to fill out the sector.  If a file was
opened for writing but never written upon, the name of the file is
removed from the diskette directory since the file contains no data.
.dm pe
.sp
.in 10
.nf
..
.sp
Example:
.pe
LDX   \#FCB    Point to FCB
LDA   \#4      Setup close code
STA   0,X     Store in FCB
JSR   FMS     Call FMS
BNE   ERROR   Check for errors
File has now been closed.
.sx
.sp 2
Function 5 - Rewind File
.bx
Only files which have been opened for read may be rewound.  On exit
from FMS, the function code in the FCB is set to zero, anticipating
a read operation on the file. If the programmer wishes to rewind a file which
is open for writing so that it may now be read, the file must first be closed, then
re-opened for reading.
.sp
Example:
.pe
Assuming the file is open for read:
LDX   \#FCB    Point to FCB
LDA   \#5      Setup rewind code
STA   0,X     Store in FCB
JSR   FMS     Call FMS
BNE   ERROR   Check for errors
File is now rewound & ready for read
.sx
.nl 10
Function 6 - Open Directory
.bx
This function opens the directory on the diskette
for access by a program.
The FCB used for this function must not already be open for use by a file.
On entry, the only information which must be preset in the FCB
is the drive number; no file name is required.  The directory
entries are read by using the Get Information Record function.
The Put Information Record function is used to write a directory
entry.  The normal Read/Write Next Byte function will not
function correctly on an FCB which is opened for directory access.
It is not necessary to close an FCB which has been opened for
directory access after the directory manipulation is finished.
The user should normally not need to access the directory.
.sx
.sp 2
Function 7 - Get Information Record
.bx
This function should only be issued on an FCB which has been opened
with the Open Directory funcion.  Each time the Get Information
Record function is issued, the next directory entry will be loaded into
the Directory Information area of the FCB (see Description of the
FCB for details of the format of a directory entry).  All directory
entries, including deleted and unused entries are read when using this function.
After an entry has been read, the FCB is said to "point" to the
directory entry just read; the Current Directory Address bytes in the
FCB refer to the entry just read.  An End-of-File error is returned
when the end of the directory is reached.
.sp
Example:
.pe
To get the 3rd directory entry -
LDX   \#FCB    Point to FCB
LDA   DRIVE   Get the drive number
STA   3,X     Store in the FCB
LDA   \#6      Setup open dir code
STA   0,X     Store in FCB
JSR   FMS     Call FMS
BNE   ERROR   Check for errors
LDB   \#3      Set counter to 3
.si -6
LOOP  LDA   \#7      Setup get rec code
STA   0,X     Store in FCB
JSR   FMS     Call FMS
BNE   ERROR   Check for errors
DECB          Decrement the counter
BNE   LOOP    Repeat til finished
The 3rd entry is now in the FCB
.sx
.nl 10
Function 8 - Put Information Record
.bx
This function should only be issued on an FCB which has been opened
with the Open Directory function.  The directory information is copied from
the Directory Information portion of the FCB into the directory
entry to which the FCB currently points.  The directory sector
just updated is then re-written automatically on the diskette to ensure
that the directory is up-to-date.  A user program should normally never
have to write into a directory.  Careless use of this
function can lead to the destruction of data files, necessitating
a re-initialization of the diskette.
.sx
.sp 2
Function 9 - Read Single Sector
.bx
This function is a low-level interface directly to the disk driver
which permits the reading of a single sector, to which the Current
Position bytes of the FCB point, into the Sector Bufffer
area of the FCB.  This function is normally used internally
within FLEX and a user program should never need to use it.
The Read/Write Next Byte function should
be used instead, whenever possible.
Extreme care should be taken when
using this function since it does not conform to the usual conventions
to which most of the other FLEX functions adhere.
.sp
Example:
.pe
LDX   \#FCB    Point to FCB
LDA   TRACK   Get track number
STA   30,X    Set current track
LDA   SECTOR  Get sector number
STA   31,X    Set current sector
LDA   \#9      Setup function code
STA   0,X     Store in FCB
JSR   FMS     Call FMS
BNE   ERROR   Check for errors
The sector is now in the FCB
.sx
Function 10 ($0A hex) - Write Single Sector
.bx
This function, like the Read Single Sector function, is a
low-level interface directly to the disk driver which permits the writing of
a single sector.  As such, it requires extreme care in its use.
This function is normally used internally by FLEX, and a user
program should never need to use it.  The Read/Write Next Byte
function should be used whenever possible.
Careless use of the Write Single Sector Function may result in
the destruction of data, necessitating the re-initialization of
the diskette.  The disk address being written is taken from the Current Position
bytes of the FCB; the data is taken from the FCB Sector
Buffer.
This function honors the Verify Flag
(see Global Variables section for a description
of the Verify Flag), and will check the sector after
writing it if directed to do so by the Verify Flag.
.sx
.sp
Function 11 ($0B hex) - Reserved for future system use
.sp 2
Function 12 ($0C hex) - Delete File
.bx
This function deletes the file whose specification is in the FCB
(drive numbers, file name, and extension).  The sectors used by
the file are released to the system for re-use.  The file should
not be open when this function is issued.
The file specification in the FCB is altered
during the delete process.
.sp
Example:
.pe
LDX   \#FCB    Point to FCB
[ setup file spec in FCB ]
LDA   \#12     Setup function code
STA   0,X     Store in FCB
JSR   FMS     Call FMS
BNE   ERROR   Check errors
File has now been deleted
.sx
.nl 10
Function 13 ($0D hex) - Rename File
.bx
On entry, the file must not be open, the old name must be in the
File Specification area of the FCB, and the new name and extension must
be in the Scratch Bytes area of the FCB.  The file whose specification
is in the FCB is renamed to the name and extension stored in the
FCB Scratch Bytes area.  Both the new name and the new extension
must be specified; neither the name nor the extension can be defaulted.
.sp
Example:
.pe
LDX   \#FCB    Point to FCB
[ setup both file specs in FCB ]
LDA   \#13     Setup function code
STA   0,X     Store in FCB
JSR   FMS     Call FMS
BNE   ERROR   Check for errors
File has been renamed
.sx
.sp
Function 14 ($0E hex) - Reserved for future system use.
.sp 2
.nl 10
Function 15 ($0F hex) - Next Sequential Sector
.bx
On entry the file should be open for either reading or writing
(not update).
If the file is open for reading, this function code
will cause all of the remaining (yet unread) data bytes in the
current sector to be skipped, and the data pointer will be
positioned at the first data byte of the next sequential
sector of the file.
If the file is open for write, this operation will cause
the remainder of the current sector to be zero filled
and written out to the disk.
The next character written to that file will be placed in
the first available data location in the next sequential sector.
It should be noted that all calls to this function code
will be ignored unless at least one byte of data has
either been written or read from the current sector.
.sx
Function 16 ($10 hex) - Open System Information Record
.bx
On entry, only the drive number need be specified in the FCB; there
is no file name associated with this function.  The FCB must not be open for use
by a file.  This function accesses the System Information Record for the
diskette whose drive number is in the FCB.  There are no separate
functions for reading or changing this sector.  All references to the data
contained in the System Information Record must be made by manipulating
the Sector Buffer directly.  This function is used internally within
FLEX; there should be no need for a user-written program to change the
System Information Record.  Doing so may result in the destruction of
data, necessitating the re-initialization of the diskette.  There is no
need to close the FCB when finished.
.sx
.sp 2
Function 17 ($11 hex) - Get Random Byte From Sector
.bx
On entry, the file should be open for reading or update.  Also, the desired byte's
number should be stored in the Random Index byte of the FCB.  This byte
number is relative to the beginning of the sector buffer.  On exit, the
byte whose number is stored in the Random Index is returned to the
calling program in the A-register.
The Random Index should not be less
than 4 since there is no user data in the first four bytes of the sector.
.sp
Example:
.pe
To read the 54th data byte of the current sector -
LDX   \#FCB    Point to the FCB
LDA   \#54+4   Set to item + 4
STA   35,X    Put it in random index
LDA   \#17     Setup function code
STA   0,X     Store in FCB
JSR   FMS     Call FMS
BNE   ERROR   Check for errors
Character is now in acc. A
.sx
Function 18 ($12 hex) - Put Random Byte in Sector
.bx
The file must be open for update.
This function is similar to Get Random Byte except the character
in the A accumulator is written into the sector at the data
location specified by Random Index of the FCB.
The Random Index should not be less than 4 since only
system data resides in the first 4 bytes of the sector.
.sp
Example:
.pe
To write into the 54th data byte of the current sector-
LDX   \#FCB    Point to the FCB
LDA   \#54+4   Set to item + 4
STA   35,X    Put it in Random Index
LDA   \#18     Setup Function Code
STA   0,X     Store in FCB
LDA   CHAR    Get character to be written
JSR   FMS     Call FMS
BNE   ERROR   Check for errors
Character has been written
.sx
.sp 2
Function 19 ($13 hex) - Reserved for future system use
.sp 2
Function 20 ($14 hex) - Find Next Drive
.bx
This function is used to find the next online drive which is in
the "ready" state.  Due to hardware limitations, the minifloppy
version of FLEX performs this command differently than the
full size floppy version.
The functioning of the full size floppy version is as follows.
If the drive number in the FCB is hex FF, the search for drives
will start with drive 0.  If the drive number is 0, 1, or 2,
the search will start with drive 1, 2, or 3 respectively.
If a ready drive is found, its drive number will be
returned in the drive number byte of the FCB and the
carry bit will be cleared.  If no ready drive is found, the
carry bit will be set and error \#16 (Drives Not Ready)
will be set.
.sp
The minifloppy version functions as follows.
If called with a Drive Number in the FCB of hex FF, the function will
return with 0 as the drive number in the FCB.
If called with a 0, it will return with the drive number set to 1.
In both cases the carry is cleared on return.
If called with a drive number of 1 or higher, the drive number
is left unchanged, the carry bit is set on return and
error \#16 (Drives Not Ready) is set.
.sx
.nl 40
Function 21 ($15 hex) - Position to Record N
.bx
This is one of the 2 function codes provided for random file
accessing by sector.
The desired record number to be accessed should be stored
in the FCB location Current Record Number (a 16 bit binary value).
The file must be open for read or update before using this
function code.
The first data record of a file is record number one.
Positioning to record 0 will read in the first sector
of the File Sector Map.
After a successful Position operation, the first character
read with a sequential read will be the first data byte of the
specified record.
An attempt to position to a nonexistent record will cause an error.
For more information on random files, see the section
titled 'Random Files'.
.sp
Example:
.pe
To position to record \#6 -
LDX   \#FCB    Point to the FCB
LDA   \#6      Set position
STA   33,X    Put in FCB
CLR   32,X    Set M.S.B to 0
LDA   \#21     Setup Function Code
STA   0,X     Store in FCB
JSR   FMS     Call FMS
BNE   ERROR   Check for errors
Record ready to be read
.sx
.sp 2
Function 22 ($16 hex) - Backup One Record
.bx
This is also used for random file accessing.
This function takes the Current Record Number in the FCB
and decrements it by one.
A Position to the new record is performed.
This has the effect of back spacing one full record.
For example, if the Current Record Number is 16 and
the Backup One Record function is performed, the file
would be positioned to read the first byte of record \#15.
The file must be open for read or update before this function
may be used.
See 'Random Files' section for more details.
.sx
.pg
