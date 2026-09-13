# READ-DOC

> Source: `misc/work-disks/WORK1409 - FLEX Software Archive - Documentation and Examples - Includes READ-DOC, READDOC1, READDOC2.zip!WORK1409.DSK!READ-DOC.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.SP 12
.ce
READTEST
.sp
.ce
An English Text Analysis Program
.sp
.ce
By Dale L. Puckett
.sp 4
.ce
HELP FILE
.sp
.pp
Persons in a hurry to run READTEST are invited to LIST the file READTEST.HLP on the disk.
That file provides more than enough information to get you started.
.PP
An additional file called TESTER.TXT contains a sample of text from Article VII of the Lend-Lease
agreement between the United States and Great Britain.
It is the same sample used by Dr. Flesch on Page 76 of "The Art of Plain Talk."
At the very least, it is very hard to read and almost impossible to understand.
.pp
Typing READTEST TESTER at your terminal will give you a dismal report.
I hope you are never greeted by a report like this when you use READTEST to evaluate one of your own attempts at verbal communication.
However, LISTing TESTER will show you why this copy received such a bad analysis.
It should be noted here that the readability scores computed by READTEST and by Dr. Flesch are in agreement.
.pp
Those who have a desire to know how the program works as well as those interested in the development of READTEST
and the general topic of readability theory
are invited to read this manual first.
.sp
.ce
BACKGROUND
.pp
READTEST is based on readability research performed by Dr. Rudolf Flesch.
Flesch is the author of "The Art of Clear Thinking," "The Art of Readable Writing,"
and "The Art of Plain Talk."
The program READTEST is based on the theories presented in the latter book.
"The Art of Plain Talk" has been printed more than nine times since it was first published in 1951.
It is definitely required reading for persons interested in improving their verbal communications skills.
.pp
The original statistical readability formula was published in Dr. Flesch's Ph.D. dissertation.
The paper was very successful and many businesses and government agencies began to use Flesch's formula.
.pp
However the paper itself, being a dissertation, was not the most readable book in the world.
This embarrassed Flesh, and he rewrote the dissertation.
The result was "The Art of Plain Talk."
.pp
It should be noted here that even Flesch realized that his formula was not a magic formula for good writing.
It is merely a yardstick with which you can gage your progress.
You will find however, even if you are already an experienced writer, that READTEST will help keep you honest when you start rambling.
.sp
.ce
WHAT IS READTEST?
.sp
.pp
The goal of the program READTEST is to help you write so that people find it easy to understand what you mean.
.pp
Almost every book that promises to teach you how to write will tell you to use simple and ordinary words.
The same books will tell you to keep your sentences short.
Most of them however, fail to define simple, ordinary and short, etc., and often don't follow their own advice.
.pp
READTEST implements Flesch's theory that the closer a word is to its root, the easier it is to understand.
It checks the number of common prefixes and suffixes used in your sentences and grades you accordingly.
It also gives you credit for using a lot of familiar personal words that have high appeal.
.pp
But, just what is READTEST?	What will it do for you?
.PP
READTEST is a must for all writers.
It is a tremendous tool for students and writing instructors.
It helps experienced writers keep a running check on the readability of their prose.
.pp
READTEST reads your letters, short stories, news stories,
reviews, novels, etc., from the disk file you prepared them on.
Then, it tells you how well they were written.
.pp
READTEST reads plain English text from a standard FLEX disk file.
It then reports the number of lines, words, sentences, personal words,
affixes, and average sentence length.
This information helps pinpoint trouble areas that make your prose harder to read and understand.
.pp
After providing these individual reports, READTEST computes an overall index and tells what it means.
You learn the grade level of the person most likely to read and understand your copy.
Then, you receive a report which indicates the type of publication that would be most likely to buy your story.
This will help you hit your target market,
assuming of course that you are also on target with your subject matter.
.sp
.ce
FEATURES
.PP
Here are some of READTEST's major features.
.pp
READTEST tells you how many words you have written.
.pp
READTEST tells you how many sentences you have used in your prose.
The number of words and sentences is used to compute the average sentence length.
This is one of the key factors in readability.
The shorter the sentence, the easier it is to understand.
.pp
READTEST checks to see how many times you have used key personal words.
People relate to these words and make your prose much easier to digest.
The more of these words you use, the higher your score and the lower the grade level of those who can understand it.
.pp
READTEST counts the number of names (proper nouns) used in your writing.
This number is added to the number of key personal words to determine the total number of personal references.
.pp
READTEST counts the number of affixes used in your writing.
The less you use, the higher your score.
.pp
The meaning of a root word is almost always obvious.
However, when you stick a prefix in front of it, a suffix on the end of it, and sometimes another affix somewhere in the middle,
you tend to confuse and slow down the reader.
.pp
Affixes are bad.
READTEST tells you if you used too many.
.pp
READTEST looks forward when counting prefixes and backwards when counting suffixes.
If a match fails, READTEST immediately moves to the next word.
This results in a time saving of approximately 20 per cent.
.pp
READTEST rates your text as: very difficult, difficult, fairly difficult, average, fairly easy, easy or very easy to read.
.pp
READTEST also classifies your prose as: dramatic, highly interesting, interesting, mildly interesting, or dull.
.pp
READTEST contains nearly 200 common affixes and 75 common personal words in its tables.
.pp
READTEST is written in assembly language which gives it the speed necessary to evaluate every word in a large text file.
It would take more than a half hour to do the same evaluation of a 1,500 word story with a BASIC readability program.
.pp
Finally, READTEST's comprehensive reports make it easy	to pinpoint your writing's readability problems.
READTEST is completely impartial and will uncover bad habits and trends in the prose of pros as well as that of the beginner.
