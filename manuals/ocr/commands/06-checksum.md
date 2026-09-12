# CHECKSUM

_OCR transcription from: `Screenshot_20260912-070255.png`_

CHECKSUM
, The CHECKSUM command performs a 32 bit checksum on an entire disk. The

program reads every sector on the disk and totals them together. This
can be used to verify disk copies, check disk validity, etc.
## Description
The general syntax of the CHECKSUM command is:

CHECKSUM[, dn]
Where 'dn' is an optional drive number. If no drive is specified
CHECKSUM will use the work drive. If the work drive is set to 'ALL' an
error message is printed. Some examples follow:

+++CHECKSUM

+++CHECKSUM, 2
The first example will generate a CHECKSUM of the disk in the current
work drive, assuming the work drive in not set to 'ALL'. The second
example will generate a CHECKSUM of the disk in drive 2. The output of
CHECKSUM will look like:

) CHECKSUM: @002AB02

CHECKSUM can generate the following error messages:

ILLEGAL DRIVE NUMBER
Legal drive numbers are 6, 1, 2, or 3. A drive number must be specified
if the work drive is set to ALL.

INVALID DISK FORMAT
The disk uses a non-standard format or the SYSTEM INFORMATION RECORD
sector may be damaged. '

