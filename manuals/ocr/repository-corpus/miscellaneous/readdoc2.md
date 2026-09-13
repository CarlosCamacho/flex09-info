# READDOC2

> Source: `misc/work-disks/WORK1409 - FLEX Software Archive - Documentation and Examples - Includes READ-DOC, READDOC1, READDOC2.zip!WORK1409.DSK!READDOC2.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.SP
.ce
PROGRAM DESIGN
.SP
.pp
READTEST was designed from the top down.
Inititally, the problem of reporting the readability of English text was broken down into three main tasks.
These tasks were: determine the level of difficulty of the text;
determine the human interest value;
and report the result.
.pp
Then, using a block structure, the three tasks were broken down into smaller tasks.
The job of determining the degree of difficulty a person would have in reading English text can be broken down into two main tasks.
They are:
find the average sentence length; and find the number of affixes per 100 words.
.pp
Determining the human interest factor consists of one task; finding the number of personal references per 100 words.
.pp
These three sub-problems must be broken down into yet smaller tasks if we are to keep the program organized.
.pp
The average length of a sentence is computed by dividing the number of words by the number of sentences.
This means that the number of words must be counted.
Then, the number of sentences must be counted.
After the counting, a divide routine must be called to do the math.
.pp
To determine the number of affixes per 100 a table search routine was needed.
This routine would look for every affix from the table in the user's text buffer.
When a match was found, a counter would be incremented.
.pp
When counting is complete, the number of affixes can be multiplied times 100 and divided by the number of words.
The result would be stored as PERAFX.
.pp
To determine the number of personal references per 100 words, several smaller tasks had to be accomplished.
First, a routine had to be written to determine the occurrence of proper nouns (names) in the text file.
Then, the same table look up routine had to be called to find and count every occurrence of key personal words in the user's text
buffer.
.pp
After the number of names and the number of personal references were counted,
the two had to be added together.
This number which was called TOTPER, for total personal references,
was multiplied by 100 and then the result was divided by the number of words to calculate the number of personal references per
100 words.
.pp
At this point individual reports concerning the average sentence length, the number of affixes,
the number of names, and the number of personal referenes was reported.
.pp
It was then decided that in addition to the numerical report,
a report in English would be needed to tell the user what the counts mean.
.pp
To do this the average sentence length, percentage of affixes and percentage of personal references were compared
to standards set by Flesch, and a report generated.
.pp
Here are the standards in tabular form.
.pp
An average sentence length less than or equal to the values below results in the corresponding scores.
.nf
.sp
8	Very Easy
11	Easy
14	Fairly Easy
17	Standard
21	Fairly Difficult
25	Difficult
28	Very Difficult
.sp
.fi
.pp
Based on the number of affixes per 100 words, values less than the following result in the corresponding report.
.sp
.nf
23	Very Easy
27	Easy
32	Fairly Easy
38	Standard
43	Fairly Difficult
47	Difficult
53	Very Difficult
.sp
.fi
.pp
Based on the number of personal references per 100 words,
scores less than the following result in the corresponding interest rating.
.sp
.nf
3	Dull
4	Mildly Interesting
7	Interesting
15	Highly Interesting
20	Dramatic
.sp
.fi
.pp
It should be noted that in all three tables the last entry must be read as greater than.
In other words, if there are greater than 20 personal references in a 100 words, the copy is considered dramatic.
.pp
READTEST's final section is devoted to reporting the overall readability index.
This involves several computations.
.pp
First, the average sentence length and number of affixes per 100 words are assigned a value from a table designed by Dr. Flesch.
These values are added together and saved.
.pp
Then the number of personal references per 100 words is assigned a value from another Flesch table.
This particular value, however, is subtracted from the total derived earlier.
This is done because an increased frequency of personal references increases the readability and should have a positive effect.
.pp
At this time a constant of 75 is subtracted from the running score.
The result is the overall readability index.
It is printed in its numerical form and a written explanation of the number is also provided.
.pp
The table that is used to determine which message is printed follows.
Any value less than that in the table results in the corresponding message.
.sp
.nf
100	Very Easy
200	Easy
300	Fairly Easy
400	Standard
500	Fairly Difficult
600	Difficult
600	Very Difficult
.sp
.fi
.pp
Again, the last message in the table results from a numerical value greater than 600.
.sp
.ce
MEMORY MAP
.SP
.PP
Temporary storage begins at $0020 and runs until $0058 in the first page of memory.
The counters here include NUMWRD, LCOUNT, NUMSEN, AVGSEN, NUMAFX, PERAFX, NUMPER, NUNAMS, TOTPER, AND PERPER.
The meanings should be clear from the mnemonics.
.pp
Various temporary storage locations and constants are also stored in this portion of memory.
.pp
The main body of the program runs from $0200 to $17BE.
The stack is initialized to $01FF upon transfer to READTEST.
.pp
Strings which contain messages and reports for the user begin with CNTMSG at $074B.
These strings run until the beginning of the table of affixes, AFXTAB at $11A2.
.pp
AFXTAB takes the form:
.sp
.nf
	FCB	3
	FCC	' ab'
	FCB	3
	FCC	' ac'
	...
	FCB	$FF
.sp
.fi
.pp
The value $FF marks the end of the table.
The FCB's tell the search routines how many bytes that need to be matched.
.pp
PERTAB follows AFXTAB at $1430.
It is structured exactly like AFXTAB since the same search routine uses it.
.pp
The lookup tables SENTAB, AFXTBN, and PERTBN follow PERTAB at $1660, $16DA and $1790 respectively.
These tables contain the weighted value that Dr. Flesch assigned to the numerical scores counted earlier in the program.
They are used in lieu of a software floating point math package.
.pp
Finally, BUFBEG, the beginning of the buffer which will hold the users text begins at $17CE.
.sp
.ce
MAJOR READTEST ROUTINES
.sp
When READTEST receives control from the operating system it immediately sets the stack and calls the FLEX GETFIL
routine to open the users text file for reading.
If there are no errors, READT2, the main loop of the program is entered.
.pp
READT2 stuffs each character into a text buffer beginning at BUFBEG as soon as it is received from the file management system.
It does this by calling the routine STORIT.
After this call, the location FLG is checked.
FLG is set to $FF when the buffer is full.
This condition is noted by comparing the location FSTRAM, the address of the next byte to be stored, to the value stored in
FLEX's MEMEND.
.pp
READT2 also checks for the special characters that mark the end of a sentence as well as the end of each line and the occurence of a space.
The spaces indicate the beginning or end of a word.
Extra spaces are ignored.
.pp
When a space is encountered a check is made to see if the next word is a proper noun.
The capital letter at the beginning of each sentence is not counted as a proper noun.
And, pairs of words beginning with capital letters are treated as one proper noun by READT2.
.pp
When READT2 finds a carriage return it calls a special routine called CMDCHK which looks for text processor command lines.
If one is encountered, it is ignored.
.pp
READT2 increments the counters, LCOUNT, NUNAMS, NUMWRD and NUMSEN,
when the proper condition is found.
This process continues until an error code is returned by FLEX's file management system.
When that code is received it is checked to see if it is an EOF message.
If it is, the routine READT8 is called.
If it is another type of error, the FLEX routine RPTERR is called and control of the system is returned to the operating system by
jumping to the FLEX WARMS address.
.pp
READT8 stores $FF in the location END, telling the rest of the program that all of the file has been read.
It also stores an $FF at the latest location of FSTRAM.
This marks the end of the buffer for the search routines.
.pp
READT8 then prints the proper introductory message and the name of the file evaluated.
It also prints the value of LCOUNT, NUMWRD, NUMSEN, AND NUNAMS with a proper message.
.pp
After printing these values READT8 prints a message on the terminal which tells the operator that READTEST is now locating and counting
all personal words and affixes.
This warns the user that the operation might take some time.
This message will not appear on the line printer because the value of FLEX's output switch is changed immediately
before calling PSTRNG.
It is reset to its original value immediately after the message is printed.
.pp
It should also be noted here that this message will not be seen if READTEST finds it necessary to call in more than one segment.
This could happen when the user is READTESTing an unusally long file, or if he has a small amount of memory (8K or 12K).
It happens because READT8 is not called until the END	flag is set.
This occurs only when all of the file has been read.
Don't worry though since READTEST will loop, reading as much of the file as will fit in the available memory,
until it has read and processed the entire file.
.pp
When READT8 has finished printing the individual reports it transfers control to a routine called PRO1.
It is here that the number of affixes and the number of personal words are located and counted.
They are stored in the locations NUMAFX and NUMPER respectively.
.pp
When PRO1 finishes counting it checks the flag END to see if it has been set.
If it has been set, control is transferred to PRO2.
If not FSTRAM is reset to BUFBEG, FLG is cleared and READTEST jumps to READT2 to read in more text.
.pp
PRO2 then performs a double precision add of the contents of NUMPER+1 to NUNAMS.
The result, the total number of personal references, is stored in TOTPER.
.pp
After the add, PRO2 reports the number of personal words found and the number of affixes.
Then, it computes the value of the average sentence length and places it in AVGSEN.
.sp
.ce
OVERALL INDEX
.sp
.pp
READTEST has now reached CPRAFX where the number of affixes per 100 and the number of personal references per 100
is computed.
After these computations using the routines MULTI and DIVIDE, the numerical value of the average sentence length is reported.
.pp
Following this final numerical report readtest compares the value of AVGSEN to Dr. Flesch's standards and
determines the string which contains the written meaning of the numerical value.
It then points to this string and prints it.
.pp
READTEST then enters REPAFX and gives a narrative report based on the difficulty caused by the number of affixes.
REPAFX is followed immediately by REPPER which provides a similar report about the level of human interest in the text evaluated.
.pp
OVRALL then computes and prints the numerical value of the overall readability index and provides a narrative that tells what it all means.
A message of encouragement is then printed, all files are closed and control returns to FLEX via a jump to WARMS.
.sp
.ce
KEY PERSONAL WORDS
.sp
.PP
The key personal words below all deal with human beings or relationships.
If you use them in your writing, you'll find that people are interested in your writing.
They are provided here for your convenience.
.sp
.nf
i	me
my
mine	myself
thou	thee	thy		thine	you
your	yours	yourself	he
him
his	himself	she		her		hers
herself	we
us
our		ours
they	them	their	theirs	man
woman	boy		girl	child	baby
father	mother	son		daughter	brother
sister	uncle	aunt	nephew	niece
cousin	husband	wife	family	parent
dad	daddy	mamma	papa	mister
mistress miss	gentleman	lady	sir
madam	lad		lass	guy		dame
kid	people	folks	friend	fellow
pal	ourselves	themselves
.sp
.fi
.ce
FOR ADDITIONAL INFORMATION
.sp
.pp
Hopefully we have given you enough information to understand READTEST's operation.
Users are invited to study the source listing on the disk to find out how the various search and counting routines work.
They also may study the table of affixes to get a firsthand knowledge of those extra syllables that slow down the reader.
.pp
Persons seriously interested in improving the readability of their written prose are encouraged to read the book, The Art
of Plain Talk, published by Collier Books, a division of Macmillan Publishing Co., Inc., 856 Third Avenue, New York, N.Y. 10022.
.pp
Writing READTEST has been a very educational experience as well as a lot of fun.
But, using the program has been almost more educational than writing the program.
On more than one occasion I have proudly submitted a piece to READTEST, only to be politely humbled by the result.
.pp
As READTEST's message of encouragement says, "Writing for any practical purpose is difficult and ellusive."
.pp
READTEST is just one more tool to help you communicate effectively.
May you all become Hemmingway's.
.sp
.ce
LEARN and ENJOY ! ! !
.RM
