# ESTERDOC

> Source: `apps/misc/ESTHER01 - FLEX Application - Program and Support Utilities - Includes ESTERDOC, JCPVIEW, ANNOUNCE.zip!ESTHER01.DSK!ESTERDOC.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.sp 13
.ce
ESTHER
.sp
.ce
An exercise in artificial intelligence
.sp
.ce
By Dale L. Puckett
.sp 5
.ce
HELP FILE
.SP
.pp
Persons in a hurry to run ESTHER are invited to LIST the file, ESTHER.HLP on the disk.
That file provides more than enough information to get you started.
Those who have a desire to know how the program works or those that are interested in its development are invited to read
this manual first.
.sp 2
.ce
HISTORY
.SP 2
.PP
The program ESTHER is an experiment with artificial intelligence
and is dedicated to my wife, Esther, who has patiently witnessed its development.
.pp
ESTHER's roots can be traced to ELIZA which was originally written in LISP
by Joseph Weizenbaum at MIT.
Later, Jeff Shrager converted ELIZA to run in BASIC on a large mainframe.
And finally, Steve North of Creative Computing magazine modified it to work in Microsoft BASIC.
.pp
At the time Creative Computing published the micro version of ELIZA most 6800 users
were using SWTPC BASIC.
Many converted the Microsoft code to SWTPC code and typed RUN.
Yet, there was a major problem.
ELIZA's speed in this interpreter was totally unsatisfactory.
If you typed in a long answer it often took over two minutes for a response.
.pp
This problem and a stong desire to learn 6800 assembly language programming resulted in version l.0 of ESTHER in
the fall of 1977.
The machine code performed as expected and ESTHER's response appeared to be instantaneous.
She emulated the BASIC version of ELIZA perfectly.
In fact, ESTHER worked as well, if not faster, than the many compiled versions of ELIZA on the market.
.pp
Several years of experimenting resulted in the desire to make ESTHER smarter.
She, like those BASIC-based ELIZA's, was too redundant.
She should be able to reply to certain third person sentences.
She should remember the player's name.
She should recognize names mentioned by the player.
And, maybe she should remember them for later use.
These problems were addressed and many bells and whistles were added to this program, ESTHER, Version 2.0.
.SP 2
.CE
DESCRIPTION
.SP 2
ESTHER accepts natural English from the player's keyboard as its input.
It then carries on a reasonably coherent conversation based on several techniques of psychoanalysis.
.pp
ESTHER gets a string from the player and puts it into an input buffer.
While it is being moved into the buffer, the string is also processed.
All proper nouns are recognized and the location of the first one is saved in a pointer.
All characters in the string are forced to lowercase to facilitate searching.
.pp
After the player hits return the program makes several checks.
It ensures that there has indeed been some input, ie, no null strings are allowed.
And, it ensures that the player has not repeated the same answer.
Varied and appropriate responses result if either condition is discovered.
.pp
Once the string is in the buffer a search routine which looks for certain keywords is called.
If a keyword is found, ESTHER prints an appropriate reply.
If none is found, a non-committal answer is printed.
ESTHER contains more than 20 non-committal replys, a fact that helps avoid redundancy.
.pp
One print routine handles all of ESTHER's output.
It features automatic line length computations which prevents breaking words at the end of a line.
.pp
The print routine also checks for several special characters in the reply strings.
These characters let the routine know that it must conjugate the remainder of the player's sentence--or,
output the players name, a proper noun, or the middle part of the player's sentence.
The print routine also converts all lower case "i's" to uppercase "I's."
.pp
This version of ESTHER contains nearly 75 unique keywords or phrases.
Each one of the keywords points to one of 48 different sets of replys.
Many of the sets contain more than a half dozen replys.
.sp 2
.ce
HARDWARE NOTES
.SP 2
.PP
ESTHER loads into memory from 0020 hex to 3210 hex
and reserves several buffers above this address.
However, she will run in a machine with 16K of memory.
Her transfer address is 0020 hex.
.pp
ESTHER expects the input from the keyboard to contain both upper and lowercase letters.
She is able to identify proper nouns because they are capitalized.
.sp 2
.ce
SOFTWARE SUPPORT
.SP 2
.PP
ESTHER does all of her input and output through routines in FLEX, the accepted standard operating system
for 6800 and 6809 based micros.
.pp
All input is received through calls to FLEX's GETCHR routine at $AD15.
All output is through the FLEX PUTCHR routine at $AD18
or its PCRLF routine at $AD24.
.pp
ESTHER disables the FLEX pause feature during her initialization and enables it before exiting.
She uses the FLEX WIDTH, line delete, backspace and backspace echo characters located at $AC04, $AC01, $AC00, and
$AC07, respectively.
.sp 2
GETTING ESTHER RUNNING
.SP 2
.pp
ESTHER clears the screen at the beginning of the program and before
printing every answer.
The routine, CLRSCR at $056C is used since FLEX does not supply one.
CLRSCR prints the string, CLRCST at $08B3.
As supplied, CLRSCT contains four nulls followed by a $04.
To use ESTHER with the CT-1024, you should replace the first two nulls with $10 and $16 if your terminal uses the standard SWTPC convention.
The nulls were placed in the code as distributed because the $10, $16 string has been known to upset several intelligent terminals
in the past.
.pp
Otherwise, if you have given the program a .CMD extension you need only type ESTHER to run it.
When you get tired of your conversation, you need only type "shut up."
When ESTHER recognizes this phrase she will immediately deliver a terse message and return you to FLEX.
.SP 2
.ce
HINTS FOR PLAYERS
.SP 2
.PP
Do not expect ESTHER to be an English professor.
In fact, she would probably drive your favorite professor crazy.
.pp
If you give her a fighting chance she is bound to amaze your friends.
To do this, try to restrain your replys to the old fashioned simple sentence.
For players like the programmer who couldn't seem to stay awake during English class,
a simple sentence contains simply--a subject, a verb and an object.
.pp
Tell ESTHER, "I am tired and sleepy."
If you do you, you will most likely get a straight answer.
.pp
If however you give her a complex sentence--"I am tired today but sometimes I get very lazy." for example-- you may find yourself
scratching your head.
A simple computer can only do so much.
.pp
It is best to leave out your punctuation when you talk to ESTHER.
With the exception of the single quote, she is not prepared to handle your punctuation and the form of
the reply she gives you may look strange if you insist on using punctuation.
She will however, punctuate her replys.
.sp 2
.ce
SOME GOOD ADVISE
.sp 2
.pp
Since you receive only one copy of ESTHER on the disk from the Frank Hogg Dental Lab, you should immediately write protect it.
See your system hardware manual to find out how.
Then, make a copy that you will run and put the original disk in a safe place.
.sp 2
.ce
MEMORY MAP
.sp 2
.pp
Temporary storage begins at $0026 with the location TEMP.
Counters and pointers here are initialized to $00 with the exception of NXPNLO,
the position where the next proper noun will be stored.
It is set to the beginning of the proper noun buffer, PNBUFF, $352C.
.pp
A table which contains the current reply and the maximum reply for each keyword follows the temporary storage area.
It begins at $0057.
Each keyword has a two byte counter.
The first byte contains the current reply and is inititialized to $00 by the assembler.
The second byte of each pair contains the number of replys in the reply table for the keyword.
The reply count table ends at $00B6.
.pp
The stack is set to $00FF.
The main body of the program runs from $0100 to $064F.
.pp
A number of strings which contain the intro message, etc., follow the body of the program.
These strings follow the standard 6800 convention and uses $04 as a delimiter.
.pp
The message strings are followed by the keyword table, KEYTAB.
It begins at $08BA and runs through $0E02.
.pp
KEYTAB is structured in the following manner.
The first byte contains the number of characters in the word or phrase.
The spaces are included in this count, ie, the keyword " can you " has nine or $09 as its first byte.
The keyword or phrase itself follows starting at byte number two.
Immediately after the keyword you will find two 16 bit words or addresses.
The first two bytes contain the address of the first reply for that particular keyword.
The next two bytes contain the address of that keyword's reply counter at the beginning of the program.
.pp
Here is an example.
.sp 2
.nf
	FCB 9
	FCC / can you /
	FDB CANYOU
	FDB CYCNT
	...
	(The next keyword entry goes here)
.sp
.fi
.pp
The KEYTAB is followed by the CONTAB at $0E03.
This table gives the conjugation printing routines in ESTHER the information they need to do their job.
CONTAB is structured almost like KEYTAB in order to allow the use of the same search routine.
.pp
The first byte in a CONTAB entry contains the number of bytes in a word.
The word itself starts with the second byte.
The ASCII word is followed by two, two-byte words.
The first two bytes following the word to be conjugated contain the address of the word produced by conjugation.
The next two bytes contain the length of the other half of the conjugated pair followed by a zero or $00.
.pp
Here is an example.
.sp
.nf
	FCB 5
ARE	FCC / are /
	FDB AM
	FCB 4,0
	FCB 4
AM	FCC / am /
	FDB ARE
	FCB 5,0
	...
	(The next pair of conjugates goes here)
.fi
.sp
.pp
Looking at the table.
The length of the string " are " is $05.
After the $05 and the word itself you see code which will assemble as the address of the string " am ".
In the next line the code 4,0 tells the conjugation routine that the word that is the result of the conjugation is four ($04)
characters long.
An examination of the line "AM FCC / am /" reveals that this is true.
.pp
The reply strings follow CONTAB beginning with CANYOU at $1065.
They run until $3210, the last byte loaded from the disk.
.pp
Beginning with INBUFF at $3211, three 250 byte buffers are used by ESTHER.
INBUFF holds the string as it is input from the keyboard.
RPTBUF holds a copy of the last string input to check for repeats.
And, CONJBU holds the portion of the users reply that is conjugated.
.pp
The PNBUFF, which begins at $352C, stores or remembers proper nouns or names
that have been used by the player.
It is the last table or buffer in the program and therefore can run until the end of memory.
Needless to say, ESTHER can remember a lot of names.
Even in a 16K machine.
.sp 2
.ce
PROGRAM INITIALIZATION
.sp
.pp
The user is invited to refer to the source listing on the disk for complete details about the routines described here.
.pp
The first actual code in the program sets the stack pointer to $0100 and disables the FLEX pause feature.
An introduction is printed and a few of the rules of the game
are given to the player.
ESTHER asks the player for his/her name at this time and then asks for the name of the player's
favorite person.
The name of the favorite person is placed in PNBUFF, the table of proper nouns, as the first entry.
This insures that there is always one name in the table.
.sp 2
.ce
MAIN LOOP
.SP
.pp
The main program loop begins with the label GETANS at $015B.
Several carriage return - line feed strings are output and the routine INSTR at $02E6 is called.
.pp
After the call to INSTR, ESTHER checks to see if the string "shut up" is in the input buffer.
If the string is found a terse message is printed,
the FLEX pause feature is turned back on and control is returned to FLEX at the FLEX warmstart address, $AD03.
.pp
If "shut up" is not found, the player's current answer is compared to his/her last answer which has been placed
in RPTBUF.
If the user has repeated himself, he is scolded and told not to do it again.
If the answer is ok, ESTHER calls the routine FINKEY which is the workhorse of the program.
.pp
FINKEY is the workhorse of the program and checks for the presense of one of the 75 plus keywords in the player's answer.
If a keyword is found, an appropriate answer is printed.
If a keyword is not found, a non-committal answer is generated.
There are more than 20 non-committal answers in this version of ESTHER to provide variety.
To provide additional spice, many of the non-committal answers refer to the players name and/or ask a question about a person
the player has named earlier in the program.
.pp
FINKEY also checks for the presence of a proper noun in the current answer every time it is called.
If a proper noun is present, a special type of question is generated which refers to the person (or place) named.
.pp
Proper nouns follow the standard English language definition of a proper noun, ie, the program
will recognize "Dale" or "Dale L. Puckett" as a proper noun.
It will not recognize "dale" or "dale l. puckett."
.pp
If a proper noun is found in the input buffer and it is the first proper noun in the sentence,
it is saved in the table of proper nouns, PNBUFF.
.pp
FINKEY calls a routine called GETREP at $0474 which points the print routine to a reply that has not been used recently.
After a reply is printed FINKEY returns control of the program to GETANS were the whole process is started over again.
.pp
It should be noted that if a proper noun is found in the player's answer FINKEY always calls the routine, DOPRNO at $0232.
This routine is structured exactly like the routine that prints
ESTHER's non-committal replys.
However, the replys which it uses (located at PRNOAS, $11E0) are all written so that they
require the printing of a name or other proper noun if they are going to make any sense.
It should be noted here also that all of ESTHER's replys end with a question so that the player
realizes that he/she is supposed to provide more input.
The original BASIC versions of ELIZA sometimes left the player hanging with a statement and
this programmer watched several computer novices just sitting at the terminal wondering
what to do next when this happened at a computer show.
.sp 2
.ce
PRINT ROUTINE
.SP
.pp
Even though all of ESTHER's output is through the FLEX PUTCHR routine, the program contains its own special output
routine.
First, the FLEX width parameter is read and a constant is subtracted from it.
The result is placed in the B-register which is used as a counter.
The counter is decremented every time a character is output.
When it reaches zero the print routine begins to look for a space.
When a space is reached an automatic carriage return line feed is issued and the process starts over.
.pp
ESTHER's print routine checks for the special characters: "@", "#", "\", and "^".
These characters are imbedded in the reply strings and flag routines which
insert a name or take some other required action.
.pp
The characters force PRINT to branch to DONAME, ECHMID, DOKEYW and DONOUN, respectively.
DONAME prints the players name.
ECHMID prints part of the player's reply in the middle of ESTHER'S reply.
DOKEYW echos the keyword which caused the current reply.
This allows ESTHER to make intelligent replys to certain player responses which appear to be written
in the third person.
An example: "'there is' a plot against the queen."
DONOUN is called to output a proper noun within ESTHER's answer.
If the player has not used a proper noun in his current reply, the program
generates a random number less than the maximum number of entries in the proper
noun buffer, points to that particular entry and prints it.
.pp
It should be noted that PRINT also handles the special case of the lowercase "i".
Since the input routine has converted everything to lowercase, the print routine must
convert the singular "i" back to an "I" if ESTHER is to appear intelligent.
.sp 2
.ce
INPUT ROUTINE
.sp
.pp
Input is done through INSTR at $02E6.
This routine reads the text character by character from the keyboard by calling FLEX's GETCHR.
Additional processing is done and the character is placed in the input buffer, INBUFF, at $3211.
.pp
Before INSTR accepts a string it clears the proper noun flag and the space flag.
This logic helps it identify proper nouns.
The X-register is used to point to INBUFF and the B-register is used as a counter.
It is set to a value of 250 at the beginning of INSTR.
.pp
INSTR places a space, $20, in the first byte of INBUFF so that the search routine
can determine if the first word in the sentence is a keyword.
Input into the buffer is terminated when a carriage return, $0D, is received.
.pp
During input INSTR checks for the occurance of the FLEX delete and backspace characters and takes appropriate action if
either is encountered.
.pp
INSTR also converts all uppercase letters to lowercase and checks for the presence of any propr nouns.
Proper nouns are defined as any capital letter following a space ("I" is an exception).
If a proper noun is located, its address in INBUFF is saved so that it may be printed by DOPRONO.
It is also copied into the table, PNBUFF.
The first word in a sentence is not counted as a propr noun.
.pp
INSTR also makes sure the player answers ESTHER's questions by checking to see that the buffer
pointer has moved past the beginning when a carriage return is received.
If it hasn't, ie, a null string has been input, the player is encouraged
by one of several prompts.
.sp 2
.ce
KEYWORDS
.sp
.pp
For those who want to impress their non-computerist friends when they demonstrate ESTHER, this list of keywords is
provided.
There are a few that aren't printed here, but don't worry, you'll hear about it (at
least read about it) if you use them.
.sp 2
.nf
.ss
brother	wife
child		kid
mother
sister	mom
father	dad
can you
can I	could I	I could	sad
unhappy
depressed	sick
happy		elated	glad
better	if
I was		were you	was I
you are	youre		I dont	I feel	why dont you
why cant I	are you	I cant	I am
im
we are	we will	i want	what
how
who
where		when
why
name
cause	sorry		dream		hello		hi
maybe	no
your
always	think
like		you
yes
friend	compute
everybody	everyone	nobody	noone		believe
we are	my
mine
it is		it was
there are	they are	they will	there was	they were
there is	this is	same
remember	recall
remind	machine	may i		perhaps	work
job
ill
i will	sure
shut up
no
yes
.ms
.sp 2
.fi
.ce
FOR ADDITIONAL INFORMATION
.sp
.pp
Hopefully we have given you enough information to understand ESTHER's operation.
Users are invited to study the source listing on the disk to find out how the various search and conjugation routines work.
They may also take a look at all of the replys in the program by listing the latter part of the source file.
.pp
Writing ESTHER has been a very educational experience, as well as, a lot of fun.
I hope you will have as much fun amazing your friends with her quick wit as we have had
writing the program.
If you are the experimenting type, I think we have provide you with enough information here
and in the source file to allow you to add your own keywords and replys.
Maybe you'll even be able to add a few bells and whistles.
.sp
.ce
HAVE FUN ! ! !
.rm
