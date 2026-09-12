# Disk Files and Their Names

_OCR transcription from: `Screenshot_20260912-065229.png`, `Screenshot_20260912-065238.png`_

_
e
IV. DISK FILES AND THEIR NAMES
All disk files are stored in the form of "sectors' on the disk and in
this version, each sector contains 256 'bytes' of information. Each
byte can contain one character of text or one byte of binary machine
information. A maximum of 340 user-accessible sectors will fit on a
single-sided mini disk or 1140 sectors on a single-sided full size
floppy. Double-sided disks would hold exactly twice that number of
sectors. Double-density systems will hold more still. The user,
however, need not keep count, for the system does this automatically. A
file will always be at least one sector long and can have as many as the
maximum number of sectors on the disk. The user should not be concerned
with the actual placement of the files on the disk since this is done by
the operating system. File deletion is also supported and all
previously used sectors become immediately available again after a file
has been deleted.
All files on the disk have a name. Names such as the following are
typical:
PAYROLL
INVNTORY
TEST1234
APRIL-78
WKLY-PAY
Anytime a file jis Created, referenced, or deleted, its name must be
used. Names can be most anything but must begin with a letter (not
numbers or symbols) and be followed by at most 7 additional characters,
called 'name characters'. These 'name characters' can be any
combination of the letters 'A' through 'Z' or 'a' through 'z', any digit
*O' through '9', or one of the two special characters, the hyphen (-) or
the underscore '_', (a left arrow on some terminals).
File names must also contain an 'extension'. The file extension further
defines the file and usually indicates the type of information contained
therein. Examples of extensions are: TXT for text type files, BIN for
machine readable binary encoded files, CMD for utility command files,
and BAS for BASIC source programs. Extensions may contain up to 3 'name
Characters' with the first character being a letter. Most of the FLEX
commands assume a default extension on the file name and the user need
not be concerned with the actual extension on the file. The user may at
anytime assign new extensions, overiding the default value, and treat
the extension as just part of the file name. Some examples of file
names with their extensions follow:
APPEND.CMD
LEDGER.BAS
TEST.BIN
Note that the extension is always separated from the name by a period
'.'. The period is the name 'field separator'. It tells FLEX to treat
the following characters as a new field in the name specification.
-1.3-
X User'e Manual
a Vv x |
format 9/71
ee

A file name can be further refined. The name and extension uniquely
define a file on a particular drive, but the same name may exist on
several drives simultaneously. To designate a particular drive a 'drive
number' is added to the file specification. It consists of a single
digit (0-3) and is separated from the name by the field separator '.'.
The drive number may appear either before the name or after it (after
the extension if it is given). If the drive is not specified, the
system will default to either the 'system' drive or the 'working' drive.
These terms will be described a little later.
Some examples of file specifications with drive numbers follow:
0.BASIC
MONDAY. 2
1. TEST.BIN
LIST.CMD.1
In summary, a file specification may contain up to three fields
separated by the field separator. These fields are; 'drive', 'name',
and 'extension'. The rules for the file specification can be stated
quite concisely using the following notation:
[<drive>. ]<name>[.<extens ion>]
or
<name>[.<extens ion> ][.<drive>]
The '<>' enclose a field and do not actually appear in_ the
specification, and the ''{]' surround optional items of the
specification. The following are all syntactically correct:
O.NAME. EXT
NAME.EXT.O
NAME.EXT
0. NAME
NAME.O
NAME
Note that the only required field is the actual 'name' itself and the
other values will usually default to predetermined values. Studying the
above examples will clarify the notation used. The same notation will
occur regularly throughout the manual.

