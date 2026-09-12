# DIR

_OCR transcription from: `Screenshot_20260912-070504.png`_

DIR

The DIR utility is similar to the CAT command but displays all directory
information associated with the file. This command gives a detailed
look at the disk directory.
## Description
The general syntax of the DIR command is:

DIR[,<drive list>][,<match list>]
where <drive list> and <match list> are the same as described in the CAT
command. Each file name is listed with its file number, starting disk
address in hex (track-sector), ending disk address, and file size in
number of sectors. In addition, the file creation date and attributes
are also displayed. Following the file name is an indication as to
whether or not the file is a random file. At the end of the DIR list, a
disk file use summary is printed, giving the total number of files, the
number of sectors used by those files, the remaining number of sectors
(free sectors), and the size of the largest file found on the disk. The
"file number" associated with a file represents that file's location in
the directory, so the file numbers may not be consecutive if a lot of
files have been deleted from the disk or a match list was specified. A
few examples follow:

+++DIR

+++DIR,1,A.T,FR
The first example would list all files on the working drive. The second
example would list only those files on drive 1 whose names begin with
"A" and extensions begin with "T", as well as those files whose names
start with "FR".


## 1979 FLEX User’s Manual version

_Source: FLEX User’s Manual (Technical Systems Consultants), alternate scan._

DIR

The DIR command is used to display the contents of a FLEX disk
directory. It is similar to the CAT command, but displays all
directory information associated with each file. The user may
display selected files on multiple disks, and may include or
exclude catalog-protected files. DIR reports the total number of
files, the number of sectors in use, size of the largest file, and
free sectors on each disk. NOTE: this program is a GIMIX product,
and not related to any other programs of the same name.

DESCRIPTION
The general syntax of the DIR command is:
DIR[,+P][,<drive list>J[,<match list>]

where +P is the protected-files option, <drive list> is a list of
up to 4 drives to be scanned, and <match list> is one or more

partial file names.

If "+P" is included in the command line immediately after "DIR",
then the DIR command will process all files on the disk, including
those which have been catalog-protected with the PROT command. If
the option is omitted, protected files are excluded from the
listing but are included in the printed total at the end of the

listing.

<drive list> can be one or more drive numbers separated by commas
or spaces. For each drive specified, a header is displayed,
directory entries matching the match list are displayed, and
totals are printed. If the drive list is omitted, DIR defaults to
the working drive.

<match list> consists of one or more sets of name and/or extension
characters which are to be matched against file names in the
directory. The sets must be separated by commas or spaces, and
must be in the form [<partial name>][.<partial extension>]. The
match function compares the letters in the set to the beginning of
each file name (and extension), and those files which match all
the letters in the set are listed. For example:

+++DIR HARDF .BAK A.C TEXTFILE.TXT

will list all files on the working disk with names beginning with
"HARDF", then all files with the extension ".BAK", then all files
with names beginning with "A" and extensions begining with "C",
and finally the file "TEXTFILE.TXT". A file named HARDF19.BAK
would be listed twice, as a "HARDF" file, and as a ".BAK" file.
For convenience, all lower case letters in the match list are
translated to upper case before the comparison, so "l.dat" and
"L.DAT" are equivalent, and both will match "LIST.DAT". If the
match list is omitted, DIR lists all files on the drive.

-D.4.1-


For each drive DIR prints a header giving the disk name and volume
number entered when the disk was formatted, and the date it was
formatted. Then it scans the directory once for each item in the
match list, listing all files which match. For each file, the
following information is displayed: directory entry number, name
and extension, an "R" if it is random-access, the disk addresses
of its beginning and ending sectors, its size in sectors, the date
it was last written to, and a 4-character field indicating which
protections are set for it (Write, Read, Delete, or Catalog).
Example:

+44+DIR +P,3,A.CMD,LETT,ERR

Directory of drive 3
Disk name = VIRTDISK.GMX #1 Disk created 28-Mar-84

File # Name Type R Begin End Size Date Prot

2 'ASMB CMD 01-04 07-02 47 28-Mar-84 W.D.

13 LETTER .BAK 1B-01 18-01 1 28-Mar-84 .R.C

14 ERRORS .SYS R_ 1B-02 1B-04 3 28-Mar-84 «eee
Listed: Files= 5

oe oe

Sectors= 51 3: Largest= 47
Total: Files= 35 Sectors= 291 : Largest= 75 : Free=245
Two set of totals are printed at the bottom. The first line is
for the listed files only, while the second is for the whole disk,
including protected and non-matching files. If multiple disks are
specified, separate totals are printed for each disk.

-D.4.2-

