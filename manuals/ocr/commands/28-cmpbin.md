# CMPBIN

_Source: FLEX User’s Manual (Technical Systems Consultants), 1979 scan._

CMPBIN

The CMPBIN command is used to compare the contents of two binary
files and list the differences. CMPBIN is a useful tool for
sorting out mislabeled or long-forgotten binary files, for
tracking changes in programs, and for identifying current
versions.

## Description
The general syntax of the CMPBIN command is:
CMPBIN,<file spec>,<file spec>

This will cause the two files to be read as FLEX binary files and
compared. The default extension is BIN. The files are read as
binary records, in the format described on page 45 of the FLEX
Advanced Programmer's Guide. A binary record consists of a load
address, a byte count, and bytes of data to be stored in memory.
The data bytes from the first file are compared to the data bytes
from the second file. The current load address for each file is
also compared. If either is different, the address and data byte
from each file is printed. Example:

+++CMPBIN,A.BIN,AOLD.BIN

FILE A FILE B
ADDRESS BYTE BYTE ADDRESS
0209 A5 A7 0209
020A 56 29 020A
O3E4 C6 4D 0354

CMPBIN is a very simple-minded program, and works best only when
the two files load starting at the same address. If the files
differ by one file having code inserted or removed, then
mismatches will be found from the point where bytes were added or
removed to the end of the file. If one file is longer than the
other, the extra bytes will all be mismatches, with the shorter
file's contents listed as "0106 oo'. If the data bytes are the
same, but the files were assembled to load at different addresses,
then every byte will be a mismatch, but only on the addresses,
which is easily seen.


