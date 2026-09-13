# DSPDOC

> Source: `apps/spelling-dictionaries/DYNASPELLDOC - Spelling and Dictionary - Program and Support Utilities.zip!DYNASPELLDOC.DSK!DSPDOC.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,lm 7
,ju
,vt 32
,ce 4
3D3y3n3a3S3p3e3l3l

The Easy Way to Find and Correct Spelling Errors


,ce 6
by

 Dale L. Puckett
14753 Endsley Turn, Woodbridge, Va. 22193
703-670-6542


,ce 3
Copyright 3(3C3) 1982 Dale L. Puckett
Distributed Exclusively By


,hd

,ce 2
DynaSpell: The Easy Way to Find and Correct Spelling Errors


,,
,ll 58
,vt 32
,ce
3C3O3P3Y3R3I3G3H3T3 3I3N3F3O3R3M3A3T3I3O3N

	This manual and the DynaSpell program are protected under International Copyright laws and may not be reproduced in any form without the written permission of the copyright owner.	Permission is hereby granted to bona fide purchasers to make two copies of the program, in machine-readable form, for backup and archive purposes only.


,ce
3W3A3R3R3A3N3T3Y

	Every effort has been made to insure that the information in this manual and the software supplied is reliable; however, such material is sold "as is" and Dale Puckett and Frank Hogg Laboratory, Inc. grant no warranty of any kind as to the software or the manual, including, but not limited to warranties of merchantability or fitness.	This is in lieu of all liability or obligations of Dale Puckett and Frank Hogg Laboratory for all damages including, but not limited to, consequential damages.

	In no event will Dale Puckett or Frank Hogg Laboratory be liable for consequential damages even if Dale Puckett or Frank Hogg Laboratory has been advised of the possibility of such damage.	Dale L. Puckett and Frank Hogg Laboratory, Inc. reserve the right to make changes in this material at any time without notice.
,pg
,nj

,ce
3T3A3B3L3E3 3O3F3 3C3O3N3T3E3N3T3S

,in

3P3R3E3F3A3C3E	3A3N3 3I3N3V3I3T3A3T3I3O3N------------------------------1

3C3H3A3P3T3E3R3 3I	3A3N3 3O3V3E3R3V3I3E3W--------------------------------2

,IN 14
THE DESIGN---------------------------------4
THE THREE LEVEL DICTIONARY CONCEPT---------4
MYWORDS: A DynaSpell EXCLUSIVE-------------5
THE UNIQUE WORD TABLE----------------------5

,IN
3C3H3A3P3T3E3R3 3I3I	3S3Y3S3T3E3M3 3R3E3Q3U3I3R3E3M3E3N3T3S------------------------6

,IN 14
TERMINAL-----------------------------------6
SOFTWARE-----------------------------------6

,in
3C3H3A3P3T3E3R3 3I3I3I	3I3N3S3T3A3L3L3A3T3I3O3N-------------------------------7

,IN 14
INSTALLING THE DynaSpell Module------------7
INSTALLING THE DICTIONARY FILES------------7

,in
3C3H3A3P3T3E3R3 3I3V	3C3A3L3L3I3N3G3 3D3y3n3a3S3p3e3l3l--------------------------8

,in 14
USING ALTERNATE GOTOXY MODULES------------11
USING DynaSpell's AUTOMATIC MODES---------12

,in
3C3H3A3P3T3E3R3 3V	3U3S3I3N3G3 3T3H3E3 3M3E3N3U3S---------------------------14

,in 14
PRINTING A LIST OF SUSPECT WORDS----------15
CHECKING EACH WORD INDIVIDUALLY-----------15
REPLACING MISSPELLED WORDS----------------16
CHECKING SUSPECT WORDS	IN CONTEXT--------16
USING ADDITIONAL DICTIONARIES-------------17
BUILDING ADDITIONAL DICTIONARIES----------17
WRITING A CORRECTED FILE TO DISK----------18
CHECKING ANOTHER TEXT FILE----------------18
PICKING AN ALTERNATE DATA DIRECTORY-------18
LISTING THE CURRENT DATA DIRECTORY--------19
CALLING THE OS-9 SHELL--------------------19
RETURNING TO THE OPERATING SYSTEM---------19

,IN

,in
3C3H3A3P3T3E3R3 3V3I	3M3I3S3C3E3L3L3A3N3E3O3U3S3 3I3N3F3O3R3M3A3T3I3O3N-----------------20

,IN 14
FILES SUPPLIED WITH DynaSpell-------------20
DICTIONARY FORMATS------------------------21
BUILDING CUSTOMIZED MYWORDS.DAT FILES-----22
ADDING TO DynaSpell's VOCABULARY----------22
THE GOTOXY MODULE-------------------------23
LIMITATIONS-------------------------------24

,in
3C3H3A3P3T3E3R3 3V3I3I	3A3 3S3U3M3M3A3R3Y3 3O3F3 3D3y3n3a3S3p3e3l3l3 3C3O3M3M3A3N3D3S-----------25
,IN
,JU
,ll 62
,PN 0

,PG
,ft

,ce
Page ##


,,
,vt 46

3D3y3n3a3S3p3e3l3l3:3 3 3P3R3E3F3A3C3E3 3 3-3-3 3 3I3F3 3Y3O3U3 3C3A3N3'3T3 3W3A3I3T
,in 14


	You'll find DynaSpell easy to use, even if you've	never run a computer.	Since it is completely menu driven, you can probably run it without reading this manual.	If you would like to try -- type "SPELL <RETURN>".	Then, answer the prompts and enjoy your new writing tool.

,PG
,vt 23


,in 0
3D3y3n3a3S3p3e3l3l3:3 3C3H3A3P3T3E3R3 3I3,3 3A3N3 3O3V3E3R3V3I3E3W
,in 14

	Misspelled words are deadly.	In college journalism courses, they cost you grades.	In business, they cost you sales.	In publishing, they bring rejection slips.

	DynaSpell finds your spelling errors fast	and lets you check your text several ways. It shows you what it's	doing along the way and	beeps when it needs your help.

	DynaSpell lets you check suspect words in context.	When it spots a word that's not in its dictionary, it stops and points to the word.

	DynaSpell then asks you what to do.	You may elect to 2A2c2c2e2p2t2 the word as is, 2A2c2c2e2p2t2 and 2S2a2v2e it for use in an optional dictionary, or 2R2e2p2l2a2c2e it.

	To 2R2e2p2l2a2c2e a word, you simply type it correctly.	DynaSpell places the new word in a table and writes it to your new corrected file.

	You only need to 2A2c2c2e2p2t or 2R2e2p2l2a2c2e a word once.	If you don't want to read your text, you may	2C2h2e2c2k your words one at a time.	Misspelled words stick out like a sore thumb when they're surrounded by a blank screen.

	DynaSpell lets you print a list of suspect words and check the hard copy too.	If you enjoy studying word usage, you'll want to print a list of the valid words that appear in your work.	When you ask to see a list of valid words, DynaSpell prints the words it was able to find in its dictionary.	This helps you by calling attention to words that you have been trying to avoid.

	DynaSpell lets you write a corrected file after you've replaced the misspelled words.	The corrected file keeps the name of your original file with the word, ".corrected" appended.	Your original file	-- complete with spelling errors --	remains on the disk as a backup.

	DynaSpell reports the total word count for	your file, the number of common words used and the number of words specific to your profession.

	DynaSpell operates fast.	Every word in a typical 1500 to 2500 word magazine article	can be compared to the 22,000+ word dictionary in approximately 30 seconds with a two-megahertz 6809 system using eight-inch disks.

	Many months were spent assembling and verifying DynaSpell's dictionary.	Each word was checked several times to insure accuracy.	The most common words in the English language are present.	Unlike many spelling checkers on the market today, DynaSpell doesn't make up words by adding prefixes and suffixes to a list of common root words.

	Now that you're familiar with the features of your new writing aid, we'll move on.	A detailed description of DynaSpell's design is next.
,PG
,sp 16
,in 0
3D3y3n3a3S3p3e3l3l3:3 3T3H3E3 3D3E3S3I3G3N

,in 14
	DynaSpell separates your text into	a list of distinct tokens that contain every word unique to your story.	DynaSpell defines a	token as	a sequence of letters between special characters known as delimiters.	Spaces, commas, periods, colons are common delimiters.

	DynaSpell counts an apostrophe as a letter and its dictionary contains most of the common contractions such as "I'm", "you're", etc.	It also recognizes numbers within a word when the word does not begin with a number.	Otherwise numbers are counted as delimiters and are not checked for typing errors.	For example, if DynaSpell points to "l982," you'll know that you typed a lowercase "L" instead of the numeral "1."

	Hyphens are treated as delimiters by DynaSpell	because they are often used to construct compound words like "German-American" or "great-grandmother."	Each half of a compound word is counted as a separate word and looked up in the dictionary.

	Each letter in a word is changed to lower-case before it is looked up in the dictionary. DynaSpell remembers the original case however and	each character appears the same on your screen	--	or in your corrected file	--	as it did in the original text.

,in 0
3D3y3n3a3S3p3e3l3l3:3 3T3H3E3 3T3H3R3E3E3 3L3E3V3E3L3 3D3I3C3T3I3O3N3A3R3Y3 3C3O3N3C3E3P3T

,IN 14
	After DynaSpell creates a list of unique words, it consults a dictionary to determine if each word is spelled correctly.	In fact, it uses three dictionaries.


	There are several reasons for this approach.	First, each entry in the unique word table takes up the same amount of memory	because it must be large enough to hold the longest word in the dictionary.	Because the amount of memory in a small computer is finite, it can only hold a relatively small number of records.

	Common words are short and can be held in a small table with shorter records.	DynaSpell takes advantage of this fact and uses a common word	table to hold more than 800 of the most used words in English writing.	If a word is found in this table, it is assumed to be correct and doesn't need to be stored as a unique word.

	There's another advantage too.	The 800+ words in DynaSpell's common word table cover more than 50 percent of the words written today.	This means that less than half the words in a typical text file don't need to be stored in the unique word table.	It doubles DynaSpell's capacity.

,in 0
3M3Y3W3O3R3D3S3:3 3A3 3D3y3n3a3S3p3e3l3l3 3E3X3C3L3U3S3I3V3E

,IN 14
	DynaSpell takes this concept another step and lets you build a table containing 75-85 words unique to your profession.

	For example, since doctors use highly specialized words,	DynaSpell lets them put 85 medical terms in a 2M2Y2W2O2R2D2S table.	It then uses these words as an additional filter before building the unique word table.

	While testing DynaSpell we noticed that the average 1,000 word text file contained more than 600 common words.	It also held another 50 words from the MYWORDS table.	This left only 125-150 unique words.

,in 0
3T3H3E3 3U3N3I3Q3U3E3 3W3O3R3D3 3T3A3B3L3E

,IN 14
	Once the unique table is in place, the real work begins.	DynaSpell compares every word in its 22,000+ word dictionary to every unique word, marking each word that is in the dictionary.	After this process, words that remain unmarked are suspect.

	When your terminal beeps, you'll know it's time to pick	your favorite method of checking misspelled words.	DynaSpell then asks you to decide the fate of each suspect.	Experience has shown that an average 1000-word file yields no more than 20-30 suspects.	Of these, 15 are usually surnames.
,pg
,in
,sp 16
3D3y3n3a3S3p3e3l3l3:3 3 3C3H3A3P3T3E3R3 3I3I3,3 3S3Y3S3T3E3M3 3R3E3Q3U3I3R3E3M3E3N3T3S

,IN 14
	DynaSpell runs on 6809 microcomputers.	It needs 23,000 bytes of memory in addition to that used by the OS-9 operating system.	Double-sided or double-density disk drives are best.

,in
3D3y3n3a3S3p3e3l3l3:3 3 3T3E3R3M3I3N3A3L3 3R3E3Q3U3I3R3E3M3E3N3T3S

,in 14
	DynaSpell requires a video terminal which displays at least 64 characters per line and can run at 9600 baud.	It must be able to return the cursor to the upper left-hand corner of the screen	and must scroll the screen upward if a line feed is sent while the cursor is on the bottom line.

	If you plan on using DynaSpell in the self -configuring mode -- without a gotoxy module	--	OS-9's terminal descriptor must report the exact number of lines available.	An erase-to-end-of-line function, although not needed, allows faster screen displays.

,in
3D3y3n3a3S3p3e3l3l3:3 3 3S3O3F3T3W3A3R3E3 3R3E3Q3U3I3R3E3M3E3N3T3S

,IN 14
	DynaSpell needs the OS-9 operating system and several of its utilities.	The GOTOXY module should be present in memory and	the printer device descriptor, "/P," must be in memory if you plan to	print hard copy.	
	
	OS-9 is so powerful that DynaSpell can use an improved method of reading its dictionary and your text files.	DynaSpell operates more than twice as fast on this operating system	and needs only 30 seconds to compare its 22,000+ word dictionary to your unique words.
,pg
,sp 16
,in
3D3y3n3a3S3p3e3l3l3:3 3C3H3A3P3T3E3R3 3I3I3I3,3 3I3N3S3T3A3L3L3I3N3G3 3T3H3E3 3S3Y3S3T3E3M

,IN 14

	First, put the files SPELL and DIR in the current execution directory.	Then, make sure that any other OS-9 module you plan to call from the Shell menu option is in this directory or in memory.

	The text files you're checking should be stored in the current data directory.

,in
3D3y3n3a3S3p3e3l3l3:3 3 3I3N3S3T3A3L3L3I3N3G3 3T3H3E3 3D3I3C3T3I3O3N3A3R3Y3 3F3I3L3E3S

,in 14
	DynaSpell expects to find its dictionary in a directory named "spell".	It further expects to find	that directory on a disk installed in device /d0.	Three files,	DICTIONARY.DAT, COMMON.DAT and MYWORDS.DAT are stored in this directory.
	
	If DynaSpell can't find the directory /d0/spell when it attempts to load COMMON.DAT, it can't find the device, or the device is not ready, it will issue the following prompt:

,in 5
3C3o3u3l3d3 3n3o3t3 3f3i3n3d3 3a3 3d3i3r3e3c3t3o3r3y3 3n3a3m3e3d3 3"3S3P3E3L3L3"3 3o3n3 3d3e3v3i3c3e3 3/3d303.
3T3y3p3e3 3p3a3t3h3l3i3s3t3 3o3f3 3d3e3v3i3c3e3 3h3o3l3d3i3n3g3 3t3h3i3s3 3d3i3r3e3c3t3o3r3y3: /h0

,in 14
	The example above shows you how to answer this prompt.	It assumes you have installed the directory "spell" on a hard disk named "/h0".
,pg
,in 0
,sp 12
3D3y3n3a3S3p3e3l3l3:3 3C3H3A3P3T3E3R3 3I3V3,3 3C3A3L3L3I3N3G3 3D3y3n3a3S3p3e3l3l

,IN 14

	Suppose that you have written a story and saved	it in a file called 2M2Y2S2T2O2R2Y in the current data directory.	How do you check it for spelling errors?

	For the answer, follow the dialogue below.	It should give you a feel for DynaSpell.	We'll show you what happens at each step along the way later.

	First, type:

,in 7
3S3P3E3L3L3 3<3R3E3T3U3R3N3>

,IN 14
	DynaSpell will print a banner, load a few files from the disk and then ask:

,in 7
3W3h3i3c3h3 3M3o3d3e3:3 3(3N3)3o3r3m3a3l3,3 3A3u3t3o3 3(3P3)3r3i3n3t3,3 3o3r3 3A3u3t3o3 3(3S3)3p3o3o3l3?
3P3I3c3k3 3o3n3e3:3 3(3N3)3<3R3E3T3U3R3N3>3,3(3P3)3,3 3o3r3 3(3S3)3?

,in 14
	Now, hit the <RETURN> key.	DynaSpell will respond by asking:

,in 7
3W3h3i3c3h3 3f3i3l3e3 3w3o3u3l3d3 3y3o3u3 3l3i3k3e3 3t3o3 3c3h3e3c3k3?

,in 14
	Answer by typing, 3M3Y3S3T3O3R3Y3 3<3R3E3T3U3R3N3> and	DynaSpell will reply:

,in 7
3D3y3n3a3S3p3e3l3l3 3i3s3 3r3e3a3d3i3n3g3 3y3o3u3r3 3t3e3x3t3!

,in 14
	A few seconds later it will report:

,in 7
3D3y3n3a3S3p3e3l3l3 3h3a3s3 3f3o3u3n3d3 3132363 3w3o3r3d3s3,3 3i3n3c3l3u3d3i3n3g3:

37363 3c3o3m3m3o3n3 3w3o3r3d3s3,
3 323 3w3o3r3d3s3 3c3o3m3m3o3n3 3t3o3 3y3o3u3r3 3p3r3o3f3e3s3s3i3o3n3 3a3n3d
32383 3u3n3i3q3u3e3 3w3o3r3d3s3 3i3n3 3y3o3u3r3 3t3e3x3t3.

3D3y3n3a3S3p3e3l3l3 3i3s3 3l3o3o3k3i3n3g3 3f3o3r3 3y3o3u3r3 3w3o3r3d3s3 3i3n3 3i3t3s3 3d3i3c3t3i3o3n3a3r3y3.
Each STAR means 250 dictionary entries have been checked.

********************
,in 14
	In approximately 30 seconds DynaSpell will finish with the dictionary and print a menu.	You may pick any one of 12 actions.	Detailed descriptions of each appear in the next chapter.

	Now, we'll show you a few options you can use when calling DynaSpell from OS-9.	You run DynaSpell by typing an OS-9 command of the form:

,in 7
3S3P3E3L3L3 3[3 3a3l3t3e3r3n3a3t3e3-3g3o3t3o3x3y3 3]3 3[3 3#3m3e3m3s3i3z3e3 3]

,in 14

	Both parameters on this command line are optional.	The first is the name of an alternate GOTOXY module.	This lets people with a multi-user system use more than one type of terminal at the same time.

	The second parameter is the standard OS-9 memory request.	If it is left out of the command line, DynaSpell automatically reserves approximately 15K bytes of memory for its COMMON, MYWORDS and UNIQUE word	tables.

	It takes 4,700 bytes of memory to hold the unique word table.	This lets you check a text file containing	up to 175 unique words and	should be more than enough for a typical letter or short story.	Each additional page of memory you	request makes room for 11 more words.	Each additional "K" gives space for 45 words.	Here are two examples:
,in 7

3S3p3e3l3l3 3#3131323 3<3R3E3T3U3R3N3>
3S3p3e3l3l3 3#32383K3 3<3R3E3T3U3R3N3>
,in 14

	Both of these lines produce identical results.	The first requests	a data memory	area containing 112, 256-byte pages or 28,672 bytes .	The second requests	28K.	One "K" is equal to four 256 byte pages.

	Typing either line increases the capacity of the unique word table by nearly 600 words.	This lets you check a text file containing more than 800 unique words.	To get an idea about the size of a document that contains 800 unique words, scan this Users Manual.	Although it is more than 6,000 words long, it contains only 724 unique words.	Remember, the common words are filtered out by 2C2O2M2M2O2N2.2D2A2T.
,pg
,IN
3C3A3U3T3I3O3N3 3-3-3 3Y3O3U3R3 3M3E3M3O3R3Y3 3R3E3Q3U3E3S3T3 3I3S3 3V3E3R3Y3 3I3M3P3O3R3T3A3N3T3 3!3!3!

,IN 14


	DynaSpell slows down	if you don't give it enough memory.	This happens because the hashing operation takes much longer when the unique word table is more than 80 percent full.	For this reason you should request as much memory as possible when running DynaSpell.

	Since DynaSpell is designed to operate on OS-9 -- a multi-tasking operating system -- we bring it alive as a process with a unique word table which holds only 213 words.	This is enough to check several pages of text,	yet it leaves plenty of free memory so that you may	run other programs concurrently.	The chart below shows DynaSpell's capacity with a few typical memory requests.

,in
3W3A3R3N3I3N3G3 3!3!3!3 3 3W3A3R3N3I3N3G3 3!3!3!3 3 3W3A3R3N3I3N3G3 3!3!3!3 3 3W3A3R3N3I3N3G3 3!3!3!

,IN 14
	If you see the error message, "Unable to Insert!", run DynaSpell again and request more memory.	Otherwise you may miss a few words and	slow down the dictionary compare process by a factor of three or four.
,in 7
,ll 79
	3C3H3A3R3T3 3I

Command Line	Spell	Spell #20K	Spell #24K	Spell #28K
______________________________________________________________________
Data Area (bytes)	17130	20480
24576		28672
Less Overhead	12440	12440
12440		12440
Unique Table Size	4690	8040
12136		16232
Unique Words
213	365
551
737

,in 14
,ll 62

Note:	If you have more memory available, use it.	A #32K data request lets you handle 924 unique words --	enough to check a very large document.	Requesting #64K of memory lets you check files containing nearly 1900 unique words.

,in
SPEED VS MEMORY SIZE
,in 14
,ll 62

	Here's a comparison.	When we checked a 454 word file, we found that it held 175 unique	words.	If we didn't request additional memory,	the table ran 82.5 per cent full and DynaSpell	took 39 seconds for the dictionary compare.	When we ran the same file again and requested #20K of memory the unique word table ran 47 perqcent full and it	took only 31 seconds to do the qcompare.	Requests for more memory had litle affect.	The moral of the story --	request enough memory to ensure that your unique word table runs no more than 75 to 80 percent full.

	DynaSpell is re-entrant and the same module can be shared by several users on a multi-user system if enough data memory is available.	On a typical 56K system,	two users may run SPELL at the same time if they both use the default memory size (15K).	CAUTION.	Be sure that each user in a multi-user environment has his own working data directory.
	
,in
3A3B3O3U3T3 3T3H3A3T3 3G3O3T3O3X3Y3 3M3O3D3U3L3E
,IN 14

	ThE OS-9 command line -- 3S3P3E3L3L3 3<3R3E3T3U3R3N3> --loads the module SPELL into memory.	SPELL then attempts to link to another module named GOTOXY. Since GOTOXY must	be in memory,	it's a good idea to include an instruction which loads it in your OS-9 STARTUP file.

	If SPELL does not find the module GOTOXY and you have not requested an alternate GOTOXY module in the command line, you will be asked to type the character string that homes the cursor on your terminal.	For example, if your terminal clears itself	when it receives a Control R character,	hold down the Control key on your keyboard and strike the "R" key at the same time.	Then, hit the <RETURN> key.	The prompt looks like this:


,in 7
3O3p3e3r3a3t3o3r3 3i3n3i3t3i3a3l3i3z3a3t3i3o3n3 3r3e3q3u3i3r3e3d3.3 3 3P3l3e3a3s3e3 3t3y3p3e
3t3h3e3 3c3o3n3t3r3o3l3 3s3e3q3u3e3n3c3e3 3f3o3r3 3h3o3m3e3 3c3u3r3s3o3r3 3t3h3e3n3 3a3 3C3R3.
,in 14


	Once you've done this, you'll be asked to type the	character string that erases your screen from the current cursor position to the end-of-line.	Here's the prompt:


,in 7
3N3o3w3 3t3y3p3e3 3t3h3e3 3c3l3e3a3r3-3t3o3-3e3n3d3-3o3f3-3l3i3n3e
3s3e3q3u3e3n3c3e3 3f3o3l3l3o3w3e3d3 3b3y3 3a3 3C3R3.

,in 14

	If your terminal doesn't have this string, answer with a <RETURN> and DynaSpell will send out a series of blanks (spaces) when it needs to erase to the end of a line.

,in
3U3S3I3N3G3 3A3L3T3E3R3N3A3T3E3 3G3O3T3O3X3Y3 3M3O3D3U3L3E3S

,in 14
	To use an alternate gotoxy module, you must type a command line of the following form:

,in 7
3S3P3E3L3L3 3G3O3 3<3R3E3T3U3R3N3>
3S3P3E3L3L3 3G3O3 3#32383K3 3<3R3E3T3U3R3N3>
,in 14


	The first command line causes DynaSpell to attempt to link to a module named GO rather than GOTOXY.	The second command line does the same, except it asks OS-9 for an optional data memory size of 28K bytes.	The GO module must be loaded into memory before this command is entered.	The format of GOTOXY modules used by DynaSpell is identical to those used by the DynaStar editor.	It is printed in Chapter VI.

	If you type the wrong GOTOXY module name in the command line and want to change it --	or if you just want to stop -- use your terminal's standard OS-9 keyboard abort key. DynaSpell intercepts this code and exits smoothly.

,in 0
3U3S3I3N3G3 3D3y3n3a3S3p3e3l3l3'3s3 3A3U3T3O3M3A3T3I3C3 3M3O3D3E3S

,IN 14
	Suppose you need to check the spelling of a long story before you mail it to your editor --but you're late for your coffee break.	You may solve your dilemma by picking	one of two automatic modes when you answer DynaSpell's next prompt:
,in 7

3W3h3i3c3h3 3M3o3d3e3:3 3(3N3)3o3r3m3a3l3,3 3A3u3t3o3 3(3P3)3r3i3n3t3,3 3o3r3 3A3u3t3o3 3(3S3)3p3o3o3l3?
3P3i3c3k3 3o3n3e3:3 3(3N3)3<3R3E3T3U3R3N3>3,3 3(3P3)3,3 3o3r3 3(3S3)3?

,in 14

	Answering this prompt with an "N", "n" or carriage return lets you check the spelling of words in your text file interactively.	Typing a "P", or "p" selects the Auto Print mode.

	This mode causes DynaSpell to list the text file on your printer with ten back-arrows pointing to each word it couldn't find in the dictionary.

	After printing the back-arrows, DynaSpell prints a carriage return, and three line feeds.	The extra white space forces your eye to go directly to each possible mistake without searching all over the page.

	When you come back from your coffee break you can read through the listing, checking possible mistakes at your leisure.	If you're lucky, all suspected errors will be proper names and you can print a smooth copy of the story and mail it.


	When exiting the Auto mode DynaSpell returns to the main menu so that you may make necessary corrections and write a new file immediately.

	If you answer the above prompt with an "S" or "s", you'll invoke	the Auto Spool mode.	This mode works like the Auto Print mode with one exception -- the output is sent to a disk file so that	you may list it to your terminal or printer later.	The spooled	file will have the same root name as the text file you're checking with an .OUT extension appended to it.	After spooling, this mode returns you to the menu.

	If an ".OUT" file with the same name already exists, DynaSpell will ask you if it may delete that file before going ahead with the spool operation.	Answer the prompt line with a "Y" or "y" if you approve.	If you type any other character, DynaSpell returns you to the menu.

	After you	pick a mode, you'll be asked to type the name of the file you want to check:


,in 7
3W3h3i3c3h3 3f3i3l3e3 3w3o3u3l3d3 3y3o3u3 3l3i3k3e3 3t3o3 3c3h3e3c3k3?


,in 14
	If the desired file is in your current data directory, you need only type its name.	If it is in another directory, you must type a complete OS-9 pathlist.	Then, your file is opened for read and the files COMMON.DAT and MYWORDS.DAT are loaded into memory.

	DynaSpell reads	your story, one word at a time.	If it finds a word in	the COMMON word table, it ignores it.	If not, it checks the MYWORDS table.	If it's found there,	it's ignored.	Otherwise, it's entered in the unique word table.

	COMMON.DAT holds 809 of the most used words in the English language,	plus all DynaForm and Stylograph word processor	commands.	MYWORDS.DAT contains the names of SS-50 buss computer dealers.	We'll show you how to build your own MYWORDS.DAT file in a later chapter.
,pg
,sp 16
,in 0
3D3y3n3a3S3p3e3l3l3:3 3C3H3A3P3T3E3R3 3V3,3 3U3S3I3N3G3 3T3H3E3 3M3E3N3U

,IN 14
	DynaSpell's menu makes it easy to use.	This section of the manual shows each option.

	Would you like to see a list of words that DynaSpell could not find in its dictionary?	Would you like to check those words one-by-one?	Or would you rather check each suspect word in context?	You can take your pick with DynaSpell's menu.

	After checking, you'll want to create a new corrected file.	Or you may	want to save a supplementary	dictionary made up of words you have checked and approved.	You can do it all with DynaSpell.

	With DynaSpell's menu, each operation is only a keystroke away.	Each time you see it, you may select one of 12 operations.	Here's a preview of the screen.

,ll 79

,in 7

3W3h3a3t3 3w3o3u3l3d3 3y3o3u3 3l3i3k3e3 3t3o3 3d3o3 3n3o3w3?
31323 3w3o3r3d3s3 3w3e3r3e3 3n3o3t3 3i3n3 3t3h3e3 3d3i3c3t3i3o3n3a3r3y3 3a3n3d3 3m3a3y3 3b3e3 3m3i3s3s3p3e3l3l3e3d3.


,ce
3D3y3n3a3S3p3e3l3l3 3a3t3 3y3o3u3r3 3S3e3r3v3i3c3e3!

3P3=3P3r3i3n3t3 3s3u3s3p3e3c3t3 3w3o3r3d3s3 3 3 3 3 3 3 3 3C3=3C3h3e3c3k3 3w3o3r3d3s3 3i3n3d3i3v3i3d3u3a3l3l3y
3R3=3R3e3a3d3 3a3 3D3y3n3a3S3t3a3r3 3f3i3l3e3 3 3 3 3 3 3 3F3=3R3e3a3d3 3S3t3y3l3o3g3r3a3p3h3 3f3i3l3e
3U3=3U3s3e3 3a3d3d3i3t3i3o3n3a3l3 3d3i3c3t3i3o3n3a3r3y3 3 3B3=3B3u3i3l3d3 3a3l3t3e3r3n3a3t3e3 3d3i3c3t3i3o3n3a3r3y
3W3=3W3r3i3t3e3 3c3o3r3r3e3c3t3e3d3 3f3i3l3e3 3 3 3 3 3 3 3N3=3c3h3e3c3k3 3s3p3e3l3l3i3n3g3 3i3n3 3N3e3w3 3f3i3l3e
3A3=3p3i3c3k3 3A3l3t3e3r3n3a3t3e3 3d3i3r3e3c3t3o3r3y3 3 3 3D3=3l3i3s3t3 3c3u3r3r3e3n3t3 3d3i3r3e3c3t3o3r3y
3S3=3c3a3l3l3 3O3S3-393'3s3 3S3h3e3l3l3 3 3 3 3 3 3 3 3 3 3O3=3R3e3t3u3r3n3 3t3o3 3t3h3e3 3O3p3e3r3a3t3i3n3g3 3S3y3s3t3e3m


,ll 62
,in 14
	You make your selection by typing a single letter.	The valid choices are: P, C, R, F, U, B, W, N, A, D, S or O.	If you type an illegal character, your terminal will beep and you'll be prompted again.	You may use either uppercase or lowercase letters.	Let's look at each option individually.

,in 0
3D3y3n3a3S3p3e3l3l3:3 3P3R3I3N3T3I3N3G3 3A3 3L3I3S3T3 3O3F3 3S3U3S3P3E3C3T3 3W3O3R3D3S

,in 14
	PRINT lets you print a list of suspect words. As soon as you select this mode you will be asked whether you want to list the words on your Terminal or Printer.	A "T", "t"	or <RETURN> sends the list to the terminal.	A "P", or "p"	sends	it to your printer.

	After you tell DynaSpell where to print the list it will ask you if you want a list of suspect words or a list of valid words.	To see the list of suspect words you type "M", "m" or <RETURN>.	To print a list of valid words type "V" or "v".

	The list of valid words contains all words from your text file that were placed in the unique word table.	This means that all common words and words in your MYWORDS table, have been removed.	You'll find this feature handy when studying	your word use.	You'll most likely find several words in the list that you have been trying to remove from your conscious vocabulary.	It's a good reminder.

,in 0
3D3y3n3a3S3p3e3l3l3:3 3 3T3H3E3 3C3H3E3C3K3 3O3P3T3I3O3N

,IN 14
	This routine lets you CHECK each suspect word individually.	Only the word in question and a prompt line will appear on your terminal's screen.	Misspelled words stick out like a sore thumb.	The prompt line reads:
,ll 79

,in 7
3(3A3*3)3c3c3e3p3t3 3<3R3E3T3U3R3N3>3,3 3A3c3c3e3p3t3 3&3 3(3S3)3a3v3e3 3<3S3P3A3C3E3B3A3R3>3,3 3o3r3 3(3R3)3e3p3l3a3c3e3?
,ll 62
,in 14

	To 2A2c2c2e2p2t a word type: an "A", "a"	or <RETURN>.	This action tells DynaSpell that a word is in the dictionary.

	To 2A2c2c2e2p2t and 2S2a2v2e a word type: an	"S", "s"	or hit the SPACEBAR.	This tells DynaSpell to 2A2c2c2e2p2t the word and mark it for inclusion in an alternate dictionary.	We'll tell you how to actually save these words when we describe the 2B2u2i2l2d option.

,in
3D3y3n3a3S3p3e3l3l3:3 3 3R3E3P3L3A3C3I3N3G3 3M3I3S3S3P3E3L3L3E3D3 3W3O3R3D3S

,IN 14
	The 2R2e2p2l2a2c2e function is one of DynaSpell's most important features.	After you have replaced a misspelled word, it forgets the misspelled word ever existed.	If you use the 2R2e2a2d option later or 2W2r2i2t2e a new corrected file to your disk, your replacement word will appear in place of the misspelled word.

	When you ask to 2R2e2p2l2a2c2e a word, DynaSpell erases the screen and prompts:


,in 7
3P3l3e3a3s3e3 3t3y3p3e3 3t3h3e3 3c3o3r3r3e3c3t3 3s3p3e3l3l3i3n3g3 3h3e3r3e3:


,in 14
	You should then type the correct spelling of the word, hitting the <RETURN> key when you are through.	Be sure to use the proper case (upper or lower) since DynaSpell will use the case you type here when it writes your new corrected file.

	If you make a mistake before you hit <RETURN> you may use the line delete key and start over.	You may also use the backspace key to back up and correct a character.

	CAUTION: You must insure that your replacement word is spelled correctly before you hit <RETURN>.	Once you have hit this key the new word is in the table and will be used later when you Write your corrected file.

,in
3D3y3n3a3S3p3e3l3l3:3 3 3C3H3E3C3K3I3N3G3 3S3U3S3P3E3C3T3 3W3O3R3D3S3 3I3N3 3C3O3N3T3E3X3T

,IN 14
	This DynaSpell feature is unavailable on many spelling checkers.	After you use it, you probably won't use the Check option again.

	READ lists your text file until it comes to a suspect word.	Then it stops and prints three back-arrows:


,in 7
3T3h3i3s3 3w3o3r3d3 3i3s3 3a3 3m3i3s3t3e3a3k3<3<3<

,in 14
	After DynaSpell prints the three backarrows, it sends a carriage return and three linefeeds followed by the now familiar prompt:

,in 7
,ll 79
3(3A3*3)3c3c3e3p3t3 3<3R3E3T3U3R3N3>3,3 3A3c3c3e3p3t3 3&3 3(3S3)3a3v3e3 3<3S3P3A3C3E3B3A3R3>3 3o3r3 3(3R3)3e3p3l3a3c3e3?

,IN 14
,ll 62
	Answer this prompt just like you did when using the 2C2h2e2c2k option.	This time you'll see magic take place in front of your eyes.	If you 2A2c2c2e2p2t or 2A2c2c2e2p2t and 2S2a2v2e the suspect word, DynaSpell erases the prompt, moves the cursor to the start of the word and continues to list your text.	If you 2R2e2p2l2a2c2e the suspect word, DynaSpell prints the correct word in place of the suspect word and continues the listing.
	Files edited with DynaStar -- and others containing carriage returns at the end of each line -- are output exactly as they appear on the disk.

	Stylograph files should be checked with the Formatted read option because they don't have a carriage return at the end of each line.	This could cause a word to be broken into two pieces -- with the first half on one line and the second half on the next.	It would make your prose very hard to read.	DynaSpell solves this problem by	keeping	track of its cursor	position.	It automatically sends out a carriage return and	linefeed when it finds a space near the end of the line.

,in
3D3y3n3a3S3p3e3l3l3:3 3 3U3S3I3N3G3 3A3D3D3I3T3I3O3N3A3L3 3D3I3C3T3I3O3N3A3R3I3E3S

,IN 14
	This feature lets you check the words in your text against additional dictionaries.	After you select this option, DynaSpell asks for the name of the dictionary and proceeds to compare each word in it to the words in your unique word table.	It returns to the menu when finished so that you may use the 2C2h2e2c2k or 2R2e2a2d options.	DynaSpell looks for the additional dictionaries in the working data directory.	If you have them stored somewhere else you will need to type a complete OS-9 pathlist.

,in
3D3y3n3a3S3p3e3l3l3:3 3 3B3U3I3L3D3I3N3G3 3A3D3D3I3T3I3O3N3A3L3 3D3I3C3T3I3O3N3A3R3I3E3S

,IN 14
	The BUILD function is included to save you work in the future.	It writes a list of words	-- the ones that you marked to 2S2a2v2e while using the 2C2h2e2c2k or 2R2e2a2d option -- into a disk file.	Any word that you marked by typing "s", "S" or <SPACEBAR> will be saved in a file named "2n2e2w2.2w2o2r2d2s."	If "2n2e2w2.2w2o2r2d2s" already exists in the working data directory you'll be asked to enter an alternate filename.


	Files created by the 2B2u2i2l2d option may be used as additional dictionaries and called	from the menu.	It makes sense to append several of these lists into one file.	MYDICT or NEWDICT are possible names.	After you've used DynaSpell for several weeks,	you'll have discovered most of the words you use regularly.

,in
3D3y3n3a3S3p3e3l3l3:3 3T3H3E3 3W3R3I3T3E3 3O3P3T3I3O3N

,IN 14
	The WRITE option lets you send a corrected file to your disk	after you have 2A2c2c2e2p2t2e2d or 2R2e2p2l2a2c2e2d the words in your text using the 2C2h2e2c2k or 2R2e2a2d2 options.
	Your corrected file has the same name as your original file with the word ".corrected" appended.	Your original file retains its original filename.	If there's an existing ".corrected" file with the same name, you'll be asked if it is OK to delete it.	If you type "Y" or "y", DynaSpell writes your new file.	If you hit any other key, you'll be returned to the menu and no action will be taken.

,in
3D3y3n3a3S3p3e3l3l3:3 3 3C3H3E3C3K3I3N3G3 3A3N3O3T3H3E3R3 3T3E3X3T3 3F3I3L3E

,IN 14
	DynaSpell lets you check as many text files as you desire from the menu.	After you have corrected the spelling errors in your first selection and written a corrected version to the disk you may check the spelling in another story	by picking the 2N2e2w option from the Menu.	Type "N" or "n" to select this option.

	After you have done this, DynaSpell clears the screen and prompts:

,in 7
3W3h3i3c3h3 3f3i3l3e3 3w3o3u3l3d3 3y3o3u3 3l3i3k3e3 3t3o3 3c3h3e3c3k3?

,in 14
	Answer with the name of a text file in the working data directory or type a complete OS-9 pathlist.	DynaSpell will process this file and return you to the menu.

,IN
3D3y3n3a3S3p3e3l3l3:3 3 3P3I3C3K3I3N3G3 3A3N3 3A3L3T3E3R3N3A3T3E3 3D3A3T3A3 3D3I3R3E3C3T3O3R3Y

,IN 14
	You may change the working data directory by using this command.	Type an "A" or "a" from the Menu to request this option.	After you request this option, DynaSpell prompts:

,in 7
3W3h3i3c3h3 3d3a3t3a3 3d3i3r3e3c3t3o3r3y3 3w3o3u3l3d3 3y3o3u3 3l3i3k3e3 3t3o3 3u3s3e3?

,in 14
	Type an OS-9 pathlist naming the desired data directory.	If you have already started to check a file and intend to write a corrected file to your disk, do not change directories until you have written the new file.

	CAUTION -- You may not use the Shell command to change the working data directory.

,in
3D3y3n3a3S3p3e3l3l3:3 3 3L3I3S3T3I3N3G3 3T3H3E3 3C3U3R3R3E3N3T3 3D3A3T3A3 3D3I3R3E3C3T3O3R3Y

,IN 14
	Select this option by typing a "D" or "d" from the Menu.	It displays the names of all files in your working data directory.
,pg
,in
3D3y3n3a3S3p3e3l3l3:3 3 3C3A3L3L3I3N3G3 3T3H3E3 3O3S3-393 3S3H3E3L3L

,in 14
	You 3m3a3y3 3send a command to the OS-9 Shell by selecting this option.	To use it, type a "S" or "s" from the menu.	DynaSpell clears the screen and prompts:

,in 7
3T3y3p3e3 3s3h3e3l3l3 3c3o3m3m3a3n3d3 3l3i3n3e3 3h3e3r3e3:

,in 14
	DynaSpell then calls the Shell with the command line you typed and executes the command.	When the command's operation	is complete, control returns to DynaSpell's Menu.

	You may execute the Shell command as a concurrent process by ending the command line with an ampersand, "&".

	You may temporarily exit from DynaSpell and enter an interactive session with the Shell by answering the	prompt with the <RETURN> key.	After you do this you'll see the standard OS-9 prompt and be free to use any utility command you like -- provided you have enough free memory.	When you're ready to return to DynaSpell, answer the OS-9 prompt with the ESCAPE key.	ESCAPE serves as an end-of-file marker for the Shell.

	The Shell command option is very powerful and also very dangerous.	Be careful how you use it.

,IN
3D3y3n3a3S3p3e3l3l3:3 3 3R3E3T3U3R3N3I3N3G3 3T3O3 3T3H3E3 3O3P3E3R3A3T3I3N3G3 3S3Y3S3T3E3M

,IN 14
	This option lets you return to	OS-9 disk operating system	smoothly.	Type an "O" or "o" from the Menu.
,pg
,sp 14
,in
3D3y3n3a3S3p3e3l3l3:3 3 3C3H3A3P3T3E3R3 3V3I3,3 3M3I3S3C3E3L3L3A3N3E3O3U3S3 3I3N3F3O3R3M3A3T3I3O3N

3F3I3L3E3S3 3S3U3P3P3L3I3E3D3 3W3I3T3H3 3D3y3n3a3S3p3e3l3l

,IN 14
	The disk you receive has two directories named "cmds" and "spell".	If you've ordered the source code,	you'll receive a third directory named "spell.source."

	The directory spell.cmds includes:


spell
compress
makec
makem

	The directory spell includes:

dictionary.dat
common.dat
mywords.dat

	The directory spell.source includes:

spell
spell.write
spell.use
spell.readfile
spell.load
spell.print
spell.build
spell.check
spell.read
spell.prompt
spell.subroutines
spell.strings
spell.hash.dictionary
compress
makemy
makecom
common
mywords
dpequates
,pg
	In the "cmds" directory, 2S2p2e2l2l is the actual program module.	2C2o2m2p2r2e2s2s is the program used to compress the dictionary, 2M2a2k2e2c is the program used to create the common words table, and 2M2a2k2e2m was used to create the mywords table.

	In the "spell" directory, 2d2i2c2t2i2o2n2a2r2y2.2d2a2t is DynaSpell's dictionary.	2C2o2m2m2o2n2.2d2a2t and 2M2y2w2o2r2d2s2.2d2a2t are mirror images of those tables in memory.

	All of the files in the "spell.source" directory except, compress, makecom, makemy, common and mywords are needed to assemble the program.	2C2o2m2p2r2e2s2s is the source file for the compress utility.	2M2a2k2e2c2o2m and 2M2a2k2e2m2y are the source for those utilities.	2C2o2m2m2o2n and 2M2y2w2o2r2d2s both contain the list of words that have been hashed into the 2c2o2m2m2o2n2.2d2a2t and 2m2y2w2o2r2d2s2.2d2a2t tables.

,in
3D3y3n3a3S3p3e3l3l3:3 3 3T3H3E3 3D3I3C3T3I3O3N3A3R3Y3 3F3O3R3M3A3T3S

,IN 14
	DynaSpell uses a compressed dictionary.	However it can also read a DICTIONARY made up of straight ASCII text.

	In a non-compressed dictionary each word in the file is surrounded by a carriage return.	A typical file looks like this:


an (CR)

and (CR)

andy (CR)

another (CR)

	In the compressed dictionary the same words are stored in the following form:


an ($FF)

2d ($FF)

3y ($FF)

2oth ($6E)

	In order to compress a dictionary in this manner, the words must be sorted into alphaqbetical order.

	In addition to the compression at the front of a word,	DynaSpell also	uses a table of common suffixes to save additional space.	In many cases, a word 13 characters long is stored in two bytes.

	The files COMMON.DAT and MYWORDS.DAT contain mirror images of these tables in memory.	Each entry in the table is the same length and begins
with a byte that tells the length of the word.	If a word does not fill the record, the entry is padded with ASCII nulls.

,in
3D3y3n3a3S3p3e3l3l3:3 3 3B3U3I3L3D3I3N3G3 3C3U3S3T3O3M3I3Z3E3D3 3M3Y3W3O3R3D3S3.3D3A3T3 3F3I3L3E3S

,IN 14
	It's easy to build your own MYWORDS.DAT file.	Begin by selecting a set of up to 85 words that are unique to your profession and don't appear in the supplied dictionary.	Enter those words into a standard text file structured like the non-compressed dictionary example above.	Name that file Mywords.

	To actually create the mywords.dat file, assign the cmds file as the current execution directory and place your Mywords	file in the current data directory.	Then type:
,in 7

3M3A3K3E3M3 3M3Y3W3O3R3D3S3 3<3R3E3T3U3R3N3>

,in 14
	2M2a2k2e2m generates a file called MYWORDS.DAT. You should install this file in the directory "spell" in place of the supplied file.	After you have done this, DynaSpell uses your new words automatically.

,in
3A3D3D3I3N3G3 3T3O3 3D3y3n3a3S3p3e3l3l3'3s3 3V3O3C3A3B3U3L3A3R3Y

,IN 14
	The best way to add words to DynaSpell's vocabulary is to build a file containing the new words.	This new dictionary can then be called from the menu by selecting the USE option.	One of the best methods of collecting new words is to use the BUILD option to create a new file of words each time you run DynaSpell.

	Most of the time you'll	only find 10 to 20 new words per story.	But, after a few days you will be able to append a dozen of these files together.	This new file can then be used as an additional dictionary.
,pg

,in
3D3y3n3a3S3p3e3l3l3:3 3 3T3H3E3 3G3O3T3O3X3Y3 3M3O3D3U3L3E

,in 14
	DynaSpell uses a gotoxy module identical to the one	used by DynaStar.	This module must be in memory so that DynaSpell can link to it.

	Here is a listing of the entry points for this 6809 subroutine module:
,in 7
,ll 79

entry
bra gtxy
entry+2	fcb lines-per-page
entry+3	fcb chars-per-line
entry+4	fcb scroll ("1" if terminal scrolls, else "0")
entry+5	fcb length of clear-to-EOL sequence (n)
entry+6	clear-to-EOL sequence (0 if none)
entry+6+n	fcb length of init. sequence (m) (0 if none)
entry+7+n+m	terminal initialization sequence if required
gtxy
equ *

,in 14
,ll 62
	When the subroutine is called, the X-register should contain the desired column position and the B-register should contain the desired row.	The upper left corner of the screen is (1,1).

	The byte at entry+4 is a flag that indicates if the terminal scrolls when a line feed is issued on the bottom line.

	The byte string at entry+6 is used to clear a line from the cursor position to the end of the line.	The use of this function speeds up the use of DynaSpell's 2R2e2a2d option.	If your terminal does not have this function you must set the byte at entry+5 to "0" so that the	program will know it needs to send out a series of spaces to do the job.

	The byte located just after the clear-to-end-of-line sequence holds the length of an optional initialization routine.	If your terminal doesn't need any initialization you should set this byte to zero.

	When no GOTOXY module is found, DynaSpell goes into a self-configuration routine.	It prompts you for the string of characters needed to home the cursor and/or clear-to-end-of-line.	It then checks the OS-9 terminal descriptor to find the number of lines-per-page.	If that number is 16, DynaSpell assumes a 64 character line.	Otherwise it assumes an 80 character line.
,pg
	If you have purchased the complete DynaStar word processing package, you'll find GOTOXY modules for several common terminals included on your disk in both source and object formats.

,in
3D3y3n3a3S3p3e3l3l3:3 3 3I3T3S3 3L3I3M3I3T3A3T3I3O3N3S

,IN 14
	DynaSpell was written to help you find your spelling errors.	Every effort was made to make it fast, accurate and user friendly. There are however, certain things that spelling checkers can't do.

	For example, DynaSpell doesn't know a thing about English language syntax, semantics or grammar.	Nor, does it have any way of knowing if you left a word or a paragraph out of your story.

	DynaSpell assumes that all one letter words are correctly spelled.	There is no other logical choice.	It also has no way of knowing that you meant "there" when you typed "their."	In fact, this is one of the main reasons we gave you the 2R2e2a2d option which allows you to check your text in context.
,pg
,sp 16
,IN
3D3y3n3a3S3p3e3l3l3:3 3 3C3H3A3P3T3E3R3 3V3I3I3,3 3A3 3S3U3M3M3A3R3Y3 3o3f3 3D3y3n3a3S3p3e3l3l3 3C3O3M3M3A3N3D3S

,IN 14

3F3R3O3M3 3T3H3E3 3C3O3M3M3A3N3D3 3L3I3N3E
,in 7

3S3P3E3L3L3 3<3R3E3T3U3R3N3>
,in 14

	This is the most common way to call DynaSpell.	It attempts to link to the module GOTOXY and asks OS-9 for enough memory to build a unique word table approximately 200 words long.
,in 7

3S3P3E3L3L3 3G3O3 3<3R3E3T3U3R3N3>
,in 14

	If this command line is used SPELL attempts to link to a GOTOXY module named GO instead of GOTOXY.	It uses the same memory default as the first example.
,in 7

3S3P3E3L3L3 3G3O3 3#32383K3 3<3R3E3T3U3R3N3>
,in 14

	This command line tries to link Spell to the GOTOXY module named GO and requests a total data memory area of 28,000 bytes from OS-9.	This allows a unique word table which holds approximately 850 words.


3N3o3t3e3:3 3 3A3 3s3u3m3m3a3r3y3 3o3f3 3m3e3n3u3 3o3p3t3i3o3n3s3 3w3i3l3l3 3b3e3 3f3o3u3n3d3 3o3n3 3t3h3e3 3n3e3x3t3 3p3a3g3e3.

,pg


3F3R3O3M3 3T3H3E3 3M3E3N3U

,in
LETTER	MEANING		FUNCTION

3P
PRINT
3Print a list of suspect words
3C
CHECK
3Check words one-by-one
3R
READ
check words in context (DynaStar)
3F
FORMATTED READ	check words in context (Stylo)
3U
USE
3Use an additional dictionary

3B
BUILD
3Build a file for new dictionary
3W
WRITE
3Write a corrected file
3N
NEW
check spelling in a3Nother file

3A
ALTERNATE	pick an 3Alternate data directory
3D
DIR
list the working data 3Directory
3S
SHELL
call the OS-9 3Shell
3O
OS-9
return to 3Operating System


	3F3R3O3M3 3W3I3T3H3I3N3 3T3H3E3 3P3R3O3G3R3A3M

3T
TERMINAL	put list on 3Terminal
3P
PRINTER		put list on 3Printer

3M
MISSPELLED	list suspect words
3V
VALID
list 3Valid words

3A <RETURN>	ACCEPT
3Accept the word
3S <SPACEBAR> SAVE
accept & 3Save the word
,pg
