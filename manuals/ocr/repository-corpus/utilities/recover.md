# RECOVER

> Source: `utilities/system/LEO5 - FLEX System Utilities - Documentation and Examples.zip!LEO5.DSK!RECOVER.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

RECOVERING DELETED FILES

The following command sequence can be used to recover files that have
been deleted from the directory. If the file meets the requirements it
can be recovered using the CAT and COPY command written by Bruno Puglia
and Leo Taylor. Though this is a two step process, it is straight
forward and orderly. You will soon be able to do the steps without
reading these instructions.


REQUIREMENTS

1. The file has not been overwritten. Unless the disk has been used
extensively since the file was deleted, the file should be intact.

2. The directory entry has not been overwritten. This method will work
even after several other files have been saved or deleted, but not if a
recently saved file used the target file's directory entry.

	 METHOD

1. Type CAT +MN. This will show the starting sector of all files in the
directory, included deleted files. For example if the target file was
called TARGET.TXT the directory could look like this:

	+++ CAT +MN

	DRIVE:1	VOLUME:RAM-DISK 1	CREATED:17-Nov-84

	FILE#	NAME	TYPE BEGIN	END	SIZE	DATE	PRT


1 RECOVER .DOC 01-04 01-07	4	17-Nov-84	

2 STARTUP .TXT 01-08 01-08	1	10-Oct-83	

3 -AMDISK .CMD 01-09 01-0D	5	8-Feb-84	

4 -ESAV	.CMD 01-0E 02-02	5	8-Feb-84	

5 ERRORS	/SYS 02-03 02-0B	9	17-May-80	

6 PRINT	.SYS 02-0C 02-0C	1	25-Jul-82	

7 SRTMRG	.SYS 02-0D 03-0F	19	16-May-80	

8 ASN	.CMD 03-10 03-10	1	17-May-80	

9 -AT	.CMD 04-01 04-07	7	19-Oct-83	

10 -OPY	.CMD 04-08 05-09	18	6-Feb-84	

11 -ARGET	.TXT 05-0B 07-0C	34	17-Nov-84	

12 LIST	.CMD 07-0D 07-10	4	4-Apr-82	

13 MAP	.CMD 08-01 08-02	2	27-Sep-80	

14 SAVE	.CMD 08-03 08-04	2	3-Feb-82	

15 TTYSET	.CMD 08-05 08-06	2	17-May-80	

16 -ESIDENT.CMD 08-07 08-0C	6	10-Oct-83	

	FILES=10	BIGGY=19	TOTAL=120/45	FREE=175

Deleted files are displayed with a dash as the first letter; TARGET is
displayed as -ARGET. Note the starting sector of TARGET.TXT is Drive 1,
Track 5, Sector B.

2. Type COPY R DRV,TRK,SEC FILENAME. This will invoke the recover
option of COPY. The program will start copying at the specified start
sector and terminate when it detects the end of file. Unlike TSC's
RECOVER command,	COPY will stop correctly even if other deleted files
have been added to the free chain. Continuing our example:

	COPY R 1 5 B TARGET.TXT

REMEMBER: If you need to refresh your memory on how to use these
options type CAT + and COPY to get help without having to resort to
reading these instructions.
