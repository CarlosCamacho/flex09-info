# COPY

_OCR transcription from: `Screenshot_20260912-070320.png`, `Screenshot_20260912-070339.png`_

COPY

The COPY command is used for making copies of files on a disk.
Individual files may be copied, groups of name-similar files may be
copied, or entire disks may be copied. The copy command is a very
versatile utility. The COPY command also re-groups the sectors of a
file in case they were spread all over the old disk. This regrouping
can make file access times much faster. It should be noted that before
copying files to a new disk, the disk must be formatted first. Refer to
NEWDISK for instructions on this procedure.
## Description
The general syntax of the COPY command has three forms:

a. COPY,<file spec>,<file spec>

b. COPY,<file spec>,<drive>

c. COPY,<drive>,<drive>[,<match list>]
where <match list> is the same as that described in the CAT command and
all rules apply to matching names and extensions. When copying files,
if the destination disk already contains a file with the same name as
the one being copied, the file name and the message, "FILE EXISTS DELETE
ORIGINAL?" will be output to the terminal. Typing Y will cause the file
on the destination disk to be deleted and the file from the source disk
will be copied to the destination disk. Typing Nwill direct FLEX not
to copy the file in question.
The first type of COPY allows copying a single file into another. The
output file may be ona different drive but if on the same drive the
file names must be different. It is always necessary to specify the
extension of the input file but the output file's extension will default
to that of the input's if none is specified. An example of this form of
COPY is:

+++COPY,0. TEST. TXT, 1.TEST25
This command line would cause the file TEST.TXT on drive 0 to be copied
into a file called TEST25.TXT on drive 1, Note how the second file's
extension defaulted to TXT, the extension of the input file.
The second type of COPY allows copying a file from one drive to another
drive with the file keeping its original name. An example of this is:

+++COPY,0.LIST.CMD,1
Here the file named LIST.CMD on drive 0 would be copied to drive 1. It
is again necessary to specify the file's extension in the file
specification. This form of the command is more convenient than the
previous form if the file is to retain its original name after the
copying process.

The final form of COPY is the most versatile and the most powerful. It
is possible to copy all files from one drive to another, or to copy only
those files which match the match list characters given. Some examples
will clarify its use:

+++COPY,0,1

+++COPY,1,0, «CMD, SYS

+++COPY,0,1,A,B,CA.T
The first example will copy all files from drive 0 to drive 1 keeping
the same names in the process. The second example will copy only those
files on drive 1 whose extensions are CMD and SYS to drive 0. No other
files will be copied. The last example will copy the files from drive 0
whose names start with ''A' or 'B' regardless of extension, and those
files whose names start with the letters 'CA' and whose extensions start
with 'T'.,to the output drive which is drive 1. The last form of copy
is the most versatile because it will allow putting just the command
(CMD) files on a new disk, or just the SYS files, etc., with a single
command entry. During the COPY process, the name of the file which is
currently being copied will be output to the terminal, as well as the
drive to which it is being copied.

