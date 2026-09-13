# READTEXT

> Source: `apps/spelling-dictionaries/DICK_B6 - Spelling and Dictionary - Documentation and Examples.zip!DICK_B6.DSK!READTEXT.MAN`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,ce 1

	~R~E~A~D~T~E~X~T~.~C~M~D

,ju
,ll 70
,in 10

	READTEXT is the opposite of SAVETEXT.	It permits reading a text-type file from disk and placing it into memory at a specified location.	The only parameter that is required to be supplied to the user is the address in memory to put the file.	The syntax is:

READTEXT <DRV #>.<FILENAME>[.<EXT>] <ADDRESS>

EX: READTEXT 2.PROGRAM.TXT 3300

	This program is handy when it is desired to supply a text or basic file to another user with the least amount of effort.
