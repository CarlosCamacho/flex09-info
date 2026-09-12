# DISKINFO

> Source: `dev/csc/CSCFL_S2 - CSC Development - Documentation and Examples.zip!CSCFL_S2.DSK!DISKINFO.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

CSC DISK SORT GENERATOR


I.	General

The problem of sorting large amounts of data stored on disk occurs
often enough in data processing that it is a major concern.	In many
cases, multi-linked random files may be used to reduce or eliminate
the need for sorting large volumes of data.	In many other cases,
however, the necessity exists to sort the data.	The CSC disk sort
generator produces a TSC precompiler extended BASIC program from
user-provided parameters.	Depending upon the options specified, the
generated program may perform one of the following functions:

	1. interactively accept sort specifications and sort files,
	2. sort a file as a callable subroutine,
	3. sort a file as a free-standing program,
	4. generate test file and sort it to test sort algorithm.

In any case, the sorting process used here is based upon an internal
sorting algorithm, used iteratively, followed by an external merging
algorithm.	The internal sorting algorithm is an implementation of
Quicksort by Richard Scowen (Algorithm 271, CACM, November, 1965).
The external merging algorithm is a simple N-way merge process.
In each iteration, as many records as will fit are brought into a
memory buffer.	The internal sort is used to rearrange the records
into the desired order.	Then the buffer is written to disk.	After
all records have been input,	the resulting groups of sorted records
are then N-way merged and are output.

Although this method of sorting is somewhat slower than TSC's Sort-
Merge package (primarily because it is in BASIC, and not in machine
language), it offers several advantages over the TSC package.	The
primary one is that operator intervention is reduced and much time
is saved since BASIC remains in control.	Another advantage is that
special selection logic may be much more easily programmed than with
the TSC package, since the logic may be coded in BASIC and the code
is well-commented.


II.	Processing

Regardless of their source, the following parameters must be provided
in order to specify the detailed sort to be performed:

	generated sort program file name,
	input file name,
	output file name,
	sort work drive number,
	maximum record length,
	maximum buffer length in records,
	lower record number desired,
	upper record number desired,
	sort key table.

For all types of sorts, the sort program file name and maximum buffer
length must be provided at generation time.	For type 1 sorts, all
other parameter definition is deferred to sort time.	For type 2
sorts, the other parameters must be provided at sort time in memory.
For type 3 sorts, all parameters are defined at generation time, and,
in addition, the program name to which to return may be specified.
For type 4 sorts, all other parameter definition is deferred to sort
time and additional code is produced to generate, sort, and check a
test file according to certain specifications.

The sort key table is composed of entries defining the sort keys
from major to minor significance.	This definition is performed by
specifying the offset and length of each key.	For descending keys,
the offset is made negative.	Ascending and descending keys may be
freely intermixed.	The last entry is denoted by a zero offset.

The drives on which the sort work files and output file are to be
placed must have enough free space to contain the entire specified
portion of the input file.	Unless an error occurs, the sort work
files will be deleted after use, so no manual cleanup is normally
required.	If a file by the same name as the output file already
exists on the same drive, it will be deleted.

If the number of input records provided to the sort is not larger than
the maximum buffer length, no sort work files will be produced and the
output file will be written directly from memory rather than being
placed in a sort work file first.

Because of a FLEX limitation, the number of sort files is restricted
to a value of no more than ten.	If a file is so large that ten buffer
loads will not contain it, then it will have to be split into two or
more pieces before being sorted.	After each of the pieces have been
sorted, the resulting files may then be merged to form the final file.
