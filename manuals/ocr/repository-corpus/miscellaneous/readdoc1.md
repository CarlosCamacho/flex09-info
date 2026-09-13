# READDOC1

> Source: `misc/work-disks/WORK1409 - FLEX Software Archive - Documentation and Examples - Includes READ-DOC, READDOC1, READDOC2.zip!WORK1409.DSK!READDOC1.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.sp
.ce
DEFINITIONS
.sp
.pp
In order to make the operation of READTEST easier to understand we must first define the items it counts.
.pp
The number of LINES is determined by counting the number of carriage returns ($0D).
This number is not a factor in readability. But, is provided as a convenience to the writer since the carriage returns must
be located to trap text processor command lines anyway.
.pp
The number of WORDS is determined by counting the number of spaces in the text file being evaluated.
.pp
The number of SENTENCES is found by counting the occurrence of periods, colons, exclamation points and question marks.
Some readability reseachers also count the semi-colon as a sentence since it often denotes the end of a thought.
This programmer did not implement that feature however.
.pp
The number of NAMES (proper nouns) is determined by searching for words that begin with a capital letter.
Therefore, Kansas would be counted as a proper noun.
.pp
Two exceptions have been built into READTEST's algorithm.
The first word in a sentence is not counted as a proper noun since it is always capitalized in standard English text.
Also a pair of words that starts with a capital letter, for example, President Carter or Kansas University, is counted as one proper noun.
.pp
The number of personal words and affixes is determined by loading the entire text file into memory and searching it against two tables.
Every time a match is found, the appropriate counter is incremented.
.pp
The affixes are stored in AFXTAB which begins at $11A2.
Personal words are stored in PERTAB at $1430.
.pp
The AVERAGE SENTENCE LENGTH is computed by dividing the number of words by the number of sentences.
Also computed, but not printed in numerical form in the report is the percentage of personal words and affixes.
Both of these computation will be covered in detail later.
.sp
.CE
HARDWARE NOTES
.SP
.PP
READTEST loads into memory from $0020 to $17CD.	All available
memory between $17CD and the address stored in FLEX's MEMEND
is then used for a buffer to locate and find personal words and affixes.
.PP
READTEST does not require a large amount of memory to read and analize long text files however, because it is written
to work in segments if an entire file will not fit in memory.
.pp
READTEST expects the input from the file to contain both upper and lowercase letters.
This allows it to identify and count proper nouns because they are capitalized.
This count eventually leads to a computation which determines how interesting the text is to the average reader.
.sp
.ce
SOFTWARE SUPPORT
.sp
.pp
READTEST.CMD is a standard FLEXtm command file and can be
executed by typing READTEST FILENAME.
.pp
READTEST defaults to a .TXT extension on the work drive.
Other extensions and drive numbers may be used however, if
they are explicitly defined in the command line.
Example: READTEST 2.GOODWRDS.BAK.
.pp
All of READTEST's input and output is made through calls to FLEX's
GETCHR ($AD15), PUTCHR ($AD18), PSTRNG ($AD1E) or PCRLF ($AD24) routines.
Therefore, if you are using the FLEX operating system you should not have any problems.
.pp
READTEST will read any standard FLEX .TXT file.	Don't worry
about the text processor command lines intefering with your count.
READTEST looks for these commands and ignores them.
.sp
.ce
A WORD ABOUT SPEED
.SP
.PP
Readability testing was once a very tedious process.
Paraprofessionals were hired to manually count words, sentences,
and proper nouns, etc., in several l00 word samples from every
chapter of long textbooks.
They slowly went crazy.
.pp
This program reads every word in your file and calculates
an overall performance reading, not an average.
Be patient when you first run READTEST.
It takes approximately three minutes to analize the copy from
a typical 2,500 word magazine article.
.pp
If you think that's slow, I challenge you to pull out a book and count everything READTEST
counts in a 100 words sample.
You'll find it takes several minutes.
After this drill, let READTEST work on a small 100 word file.
In about a second, you'll have your report.
.sp
.ce
HOW TO GET THE MOST OUT OF THE PROGRAM
.SP
.PP
After reading the report from READTEST, seriously try to improve
your score.
You'll find that your writing will be much easier to read after a few trys.
You may never become a Hemmingway, but, the effectiveness of
your written communications should increase a hundred fold.
.sp
.ce
SOME GOOD ADVICE
.sp
.pp
Since you receive only one copy of READTEST on your disk from the Frank Hogg Dental Lab, you should immediately write protect it.
See your system hardware manual to find out how.
Then, make a copy that you will run and put the original disk in a safe place.
.sp
