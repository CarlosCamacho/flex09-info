# READTEST

> Source: `misc/work-disks/WORK1409 - FLEX Software Archive - Documentation and Examples - Includes READ-DOC, READDOC1, READDOC2.zip!WORK1409.DSK!READTEST.HLP`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

Welcome to the world of Readability testing.

READTEST.CMD is a standard FLEXtm command file and can be
executed by typing READTEST FILENAME.

READTEST defaults to a .TXT extension on the work drive.
Other extensions and drive numbers may be used, however, if
they are explicitly defined in the command line.

Example: READTEST 2.GOODWRDS.BAK

READTEST loads into memory from $0020 to $17CD.	All available
memory between $17CD and the address stored in FLEX's MEMEND
is used for a buffer to locate and find personal words and affixes.

All of READTEST's output is made through calls to FLEX's
GETCHR, PUTCHR, PSTRNG and PCRLF routines, so if you are using
the FLEX operating system you should have it made.

READTEST will read any standard FLEX .TXT file.	Don't worry
about the text processor command lines intefering with your count.
READTEST looks for these commands and ignores them.

Readability testing was once a very tedious process.
Paraprofessionals were hired to manually count words, sentences,
and proper nouns, etc., in several l00 word samples from every
chapter of long textbooks.

This program reads every word in your file and calculates
an overall performance reading, not an average.

Do be patient when you first run READTEST however.

It takes approximately three minutes to analize the copy from
a typical 2,500 words magazine article.

If you think that's slow--pull out a book and count everything READTEST
checks in a 100 word sample and see how long it takes you.

Now, type READTEST FILENAME and let your 6800 computer do the
counting that once drove paraprofessionals crazy.

After reading the report from READTEST, seriously try to improve
your score and your writing will be much easier to read and understand.
You may never become a Hemmingway, but, the effectiveness of
your written communications should increase manyfold.

Just in case you don't have any text files handy, a sample of
copy that is very hard to read is included on this disk so you
may test READTEST.	The scores check out with those published
by Dr. Rudolf Flesch on Page 76 of his book, "The Art of Plain Talk."

I hope you enjoy READTEST.	You'll find the check you receive
for your first readable manuscript will make it all worthwhile.
