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

