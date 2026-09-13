# SAVETEXT

> Source: `apps/spelling-dictionaries/DICK_B6 - Spelling and Dictionary - Documentation and Examples.zip!DICK_B6.DSK!SAVETEXT.MAN`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,ce 1


~S~A~V~E~T~E~X~T~.~C~M~D

,ju
,ll 70
,in 10

	SAVETEXT is a utility designed to allow saving text type files from memory to a disk file that can then be edited using TSC's TEXT EDITOR.	To use SAVETEXT, the information that must be supplied by the user consists of a drive number to put the file, the filename to call the program, the starting address in memory where the program is located and the ending address in memory of the program to be saved.

The syntax is:

SAVETEXT <DRV #>.<FILENAME>[.<EXT>] <START ADDR> <END ADDR>

EX: SAVETEXT 1.PROGRAM.TXT 100 1178

	One of the largest uses for this program occurs when transferring a text or basic file from another user, maybe over a modem or from cassette, and then needing to put the file to disk with the least amount of effort.
