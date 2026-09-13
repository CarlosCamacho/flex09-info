# INDEX

> Source: `sourcecode/library-disks/LIBINDX - FLEX Source Library - Source Code and Build Files.zip!LIBINDX.DSK!INDEX.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

Instructions for the use of INDEX - MSORT - COLUMN
	'Msort' and 'Column' by Mark C. Willis
INDEX.CMD
	Will extract the CAT 0 of a sequence of discs and form a file called
	FILELIST.TXT
	Requires the use of disc drives 0 & 1	INDEX.CMD & one blank disc.
	MSORT.CMD and COLUMN.CMD may as well be on the same disc.
MSORT.CMD
	Rearranges the above file list in alphabetical order in one column
COLUMN.CMD
	Rearranges the above single column as three columns to save listing
	paper
Procedure
	Index is self prompting but in my case failes to find 'SORT' so the
	resulting file called 'FILELIST.TXT' is next treated by 'MSORT'
	ie- +++0.MSORT 1.FILELIST.TXT 1.(filename).TXT
	The resulting file is in one column and in alphabetical order
	it contains-
	Filename.ext	size in sectors	disc No
COLUMN.CMD
	+++0.COLUMN 1.(filename).TXT 1.(new filename).TXT
	The result will be a three column list.
