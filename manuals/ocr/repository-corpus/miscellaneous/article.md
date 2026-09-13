# ARTICLE

> Source: `misc/archive-series/disk/DISK18 - FLEX Archive Disk - Source Code and Build Files - Includes C09, SAMPLE, SLIB.zip!DISK18.DSK!ARTICLE.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

The Ream Screen Editor - BDS-C Version


Reviewed by Nick Hammond


The January 1982 edition of Dr Dobbs Journal (if you

don't read it, stop whatever you are doing now and take out

a subscription) carried an article by Edward K Ream, describing

his screen editor written in Small C and available from the

BDS-C Users Group for those like me who were too lazy to

type it in.	The Group is now offering a slightly modified

version compatible with Leor Zolman's BDS-C compiler.

The new version offers simpler compilation and faster operation

without loosing any of the power or advantages of the original

editor.


Compilation


This is straightforward.	The BDS

compiler is used to compile each of the nine sub-files which

make up the program (actually there are more than 9 but the

remainder are #included).	CLINK is then used to link the

resulting .CRL files and the runtime library.	The disk

contains two SUBMIT files to do this and I have added an

'idiots guide' giving step by step instructions on what files

must be on what disks before you start.


It is possible to compile the editor using

a single disk system since there is room for the source

.CRL and .COM files on one eight inch single density drive with

the compiler or linker.	The Small C version could be done on a

single drive but it would be a major task - the .ASM and .HEX

files alone require over 200K and you would be forever swapping

disks during the process.


Apart from space, the BDS compiler is considerably

quicker.	On my slow 2MHz Z80 system (but with track buffered

drives) the whole process took around 15 minutes as compared

with over 30 for Small C.	This is not really important if you

are just going to compile the editor and use it.	If you have

changes in mind, however, the additional speed and the ability

to separately compile and link modules will make life much

easier.


Changes


The changes to the editor to produce compatibility

with BDS-C are relatively minor - adaption for #includeing

the global #defines and the external declarations as header

files with BDSCIO.H to allow separate compilation of each

module and some small syntactical changes.	It is a tribute

to the utility of both compilers that such a change

can be relatively easily made.


One of the syntactic changes was to replace the

bitwise operators & and | with the connectives && and ||

in relational expressions.	This caused me to discover what

appears to be an error in the Version 1.41a BDS-C compiler

or runtime package I was using.	Number() in ED9.BDS contains

the expression ((c<'0')|(c>'9')) and in the review copy the

| had not been replaced by ||.	The compiled editor would

not accept numeric arguments, thus disabling t
