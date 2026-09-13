# MANUAL

> Source: `misc/uncategorized/S09-012 - FLEX Software Archive - Bootable FLEX System and Utilities - Includes MANUAL, DISCCHK, HIER.zip!S09-012.DSK!MANUAL.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

"


	"DISCLAIMER


	PLEASE READ BEFORE OPENING SEALED DISCETTE ENVELOPE


	The installation of HIER is not for beginners. It is assumed that the
	purchaser has a good knowledge of assembly language programming. I
	cannot be held responsible for the installation of HIER of any data
	lost using HIER. Liability is strictly limited to the original license
	cost.

	Read this manula thoroughly and decide if you can carry out the
	necessary software changes to install HIEr. If not, return the HIER
	discette unopened, and your money will be refunded ( less shipping and
	damage charges ).


	ONCE THE DISCETTE ENVEKOPE HAS BEEN OPENED NO RETURNS WILL BE ACCEPTED
	----------------------------------------------------------------------
	


	


HIERARCHICAL FILE SYSTEM
	Copyright (c) 1983,1984,1985 & 1986 by

	%Ray Goff
	134 Robin Hill Rd.

Chelmsford MA 01824
	Tel. 617-256-5216


	This entire manual and the accompanying discetees are copyrighted and
	shoould not be reproduced in any form, except for backup purposes
	by the original licensed purchaser, without the express wriiten consent
	of Ray Goff. Proctecting this software from unauthorised use will help
	ensure the availability of good software. If your friends want a copy
	let them buy one too!

	
	
	
	
	
	
	FLEX is a trademark of Technical Systems Consultants
	
	


	!INTRODUCTION

	One of the delights of FLEX is the friendly interface it offers to the
	computer. It was, however, originally designed in the heyday of the
	eight-inch floppy disc. In those days drives were expensive and it
	seemed unthinkable that anyone would own more that four.

	Today Winchester drives are no more expensive than eight-inch drives
	were then. Although a single Winchester drive can hold more files than
	four eight-inch drives it is simply not possible to come up with enough
	unique names to fill it, and if one did, the time taken to search the
	directory would be prohibitive.

	It was from these frustrations and the desire to continue to use FLEX
	that HIER was born.

	Having a hierarchical file directory system means that a single drive
	can be segmented into a number of smaller directories. For example if
	you are an avid C programmer you can keep a C directory which can in
	turn hold the directories of all your different C programmes. Another
	directory can be set up for assembly language programmes, again with
	a directory for each program.

	The advantages are that it is now possible to have a large number of
	directories each holding a few programmes. The limitation of file names
	being unique is then only true in a given directory - FLEX is not aware
	of other directories on the disc.

	Each directory looks to FLEX like a file with the extension .DIR.

	If it sounds too good to be true, be advised that there are some
	disadvantages. It is only reasonable to make small changes to FLEX
	which means that some overhead is required for the system to function
	correctly.

	FLEX is only aware of one directory per disc and the command line
	interpeter is not capable of decoding a directory path. Also, since the
	sub-directories are transparent to FLEX, additional disc accesses are
	required to ensure that FLEX is always working in the correct directory.

	


	All the additional disc reads required to keep the hierarchical
	directory system working are handled by HIER.CMD when it is activated.

	Do not be too dismayed the utilities that come with HIER make up for
	just about all the limitations.

	SYNTAX

	The syntax that I have adopted for HIER consists of inserting the path
	to the directory containing the file in square brackets between the
	optional file number and the drive name. The original FLEX directory
	I have called the HOME directory, and a period is used to delimit each
	directory in the path. You are not required to specify a path for files
	in the current directory. For example to list a file called backup.c in
	the backup directory on the work drive simply type:

		+++list [home.c.backup]backup.c
	
	The only difference between this and the usual synax for list is the
	directory description contained within the square brackets. This assumes
	that the HOME directory ( the FLEX directory at track zero sector five)
	contains a file C.DIR which in turn contains a file called BACKUP.DIR
	which holds the file BACKUP.C. The number of directories on a disc is
	limited only by the storage.

	If you simply enter:

		+++list [.backup]backup.c

	it will be assumed that the backup directory is below the current
	directory, that is, from the example above you are currently in the C
	directory.

	LIMITATIONS

	The only program that I am aware does not function correctly is QCHECK.
	it is unable to correctly list the files in the print queue if they are
	not in the current directory. Instead int generates an error and exits.
	Therefore if you enter files into the print queu and then change
	directory you cannot use the facilities of QCHECK unless you return to
	the original directory. The files will still print correctly; they just
	cannot be listed.

	


	This problem can be overcome simply by copying the files to the system
	disc before printing them - assuming that you are less likely to want
	to change directories on the system disc.

	A second limitation is that in order to change directories, or access
	files in another directory the HIER utilities must be able to WRITE
	to the system information record on track zero sector three - which
	means that the disc cannot be write-protected during these operations.

	Because HIER installs itself at the top of user memory it is very
	important that programs take note of the FLEX memory limit so that
	they do not overwrite HIER.
	
	HIER automatically installs itselk at the top of user memory whenever
	it is invoked. In oder to ensure HIER does not take up more memory than
	it needs, it should not be invoked from an EXEC file. This is because
	the storage EXEC uses at the top of user memory is not released if HIER
	has been installed on top.

	To avoid this problem I use the following text in my STARTUP.TXT file

		HOME 0:HIER:EXEC START

	where START contains al the programs I execute at startup.

	ADVANTAGES

	Just in case the advantages of HIER have not become fully obvious, let
	me list just a few for you:

		1). The limitation of four disc drives is removed; each disc can

be sub-divided into any number of directories.

		2). With smaller directories, the time taken to open a file is

greatly reduced.

		3). Backing up your work is made easier because only the files in

the directory you have been working on need to be backed up.

		4). The limitation on unique file names is only true in a directory

and not across the entire disc.
	


	#ADAPTATION

	INTRODUCTION

	HIER is a collection of files which when properly installed add the
	power of a hierarchical directory system to FLEX.

	HIER has been designed for easy installation, but to allow the installer
	to estimate if the amount of work required is more than he / she is
	capable of, an installation program is provided on a seperate disc.
	Running this program will give an assessment of the amount of work
	required. Once you have run the install program and determined that the
	installation exceeds your skill level then HIER can be returned for a
	refund IF THE ENVELOPE CONTAINING THE HIER DISC HAS NOT BEEN OPENED.

	To better understand how HIER interfaces to FLEX, and therefore how to
	install it, it is first necessary to understand a little more of the
	inner workings of FLEX.

	The FLEX file management system, FMS, is responsible for managing the
	files on a disc. To do this it sub-divides each disc into two
	sections - system and user.

	The system section, which occupies track zero, is further divided into
	three sub-sections.

		1). The bootsrap, which normally occupies the first sector.

		2). The system information record, sector three, which maintains

a record of the number and position of free sectors on the

disc.

		3). The directory, which extends from sector five to the end of

the track and holds a record of all the files on the disc

along with the sectors allocated to them.

	The user section occupies the remaining sectors on the disc and holds
	the user files.
	


	Whenever a file is opened, FMS searches the directory for the file. To do
	this is first executes an open directory call to point to the start of
	the directory, followed by get information calls to read every entry in
	the directory. Each file-name is then compared against the requested
	name until it is found - or in the case of a new file, the end of
	directory is detected.

	When the hierarchical directory software is running HIER intercepts
	FMS open directory calls to substitute the current directory pointer
	( which is stored in the system information record ) for track zero
	sector five - where FMS usually expects to find the directory.

	HIER utilities which change directories such as SETDIR manipulate
	the directory pointer in the system information record.

	Since an empty directory looks to FLEX like a file of unused sectors
	( ones filled with hex zero ), creating a new directory is simply a
	matter of creating a file filled with hex zeros.

	Initially all sub-directories are made four sectors long, enough for 40
	files, but this is not a limitation because FLEX will extend the
	directory provided spare sectors exist on the disc.

	The installation of HIER consists of two parts

		1). Identifying the address within FLEX of the FMS open directory

routine so that a jump to HIER can be inserted.

		2). Identifing the addresses within FLEX that contain 0005 - the

FLEX start of directory sector - so that HIER can substitute

the track and sector of the current directory.

	The installation program, INSTALL, scans through FLEX to identify the
	addresses within FLEX that HIER needs to operate successfully.

	If any addresses in your version of FLEX differ form the addresses in
	the version of HIER.CMD provided as part of this software package, the
	new addresses must be edited into HIER.TXT. This new HIER.TXT must then
	be assembled using the FLEX assembler ASMB to generate a working
	version of HIER.CMD.

	


	HIER.CMD must then be executed each time FLEX is booted up. It moves
	itself into the top of user memory, protects itself by adjusting
	the FLEX top of memory pointer, and patches the changes into FLEX
	so that it gets called whenever an FMS open dirctory call is executed.

	INSTALLATION

	The installation program, INSTALL, on the disc marked installation will
	assess the amount of installation work required as outlined above.
	Before running it take a look at the listing of HIER.TXT in the
	appendix. You will notice that it has three sections of code which
	potentially need modifing depending on the outcome of running the
	install program.

	After your version of FLEX has been booted, remove the disc marked
	INSTALLATION from its sleeve and insert it into drive zero.

	Type:

		+++0.install

	to run the installation program. First is should print:

		install v1.1

	followed by:

		processing section one

	if there are no changes to section one it will print:

		no changes necessary to section one

	otherwise it will print:

		FIND5x	EQU	$Dxxxx

		edit HIER.TXT to change this value
	


	it will then print

		processing section two

	here it will print out one of three messages

		no changes necessary to section two

	or

		READSEC	EQU	$Dxxx
		OPNDIR	equ	$Dxxx

		edit these changes into HIER.TXT

	or

		Install was unable to to identify the required addresses
		refer to the section DIGGING DEEPER for more
		instructions.

	finally, provided it can identify the addresses in section two it will
	print:

		processin section three

	and either:

		no changes necessary in section three.

	or

		further invsetigation of open directory routine required

		xx xx xx xx xx

	where x is a hexadecimal number.

	If INSTALL indicates that no further changes are required to HIER.TXT
	proceed to the section on testing HIER.
	


	EDITING HIER

	Should INSTALL identify any changes to HIER.TXT, it will include as
	much information as possible to assist in editing HIER.TXT

	IF AND ONLY IF YOU FEEL COMFORTABLE WITH CHANGING HIER.TXT OPEN THE
	SEALED HIER DISCETTE.

	Remove this discette from its sleeve and place it in drive 1, put
	your system discette in drive 0. Listing the direcory of drive 1 should
	show the following files:

		BACKUP.CMD
CHGDIR.CMD
COPY.CMD
		DELDIR.CMD
DIR.CMD	DISCCHK.CMD
		HIER.TXT
HIER.CMD	HOME.CMD
		LIST.CMD
MAKEDIR.CMD
MOVE.CMD
		RUN.CMD	RUN.LOW	SETDIR.CMD
		TEST.DIR
TREE.CMD	UNDER.CMD
		WHERE.CMD

	The output from INSTALL along with the listing of HIER.TXT, which can
	be found in the Appendix, should enable you to make any changes
	that are necessary.

	Using your editor make the changes suggested by INSTALL and proceed
	to the next section.

	ASSEMBLING HIER

	HIER.TXT should be assembled as follows:

		+++ASMB 1.HIER 1.HIER.CMD +LSY

	if all is well no errors will be reported so HIER can be tested.

	TESTING HIER

	If you arrived here without having to edit HIER.TXT now is the time to
	open the sealed discette, it should contain the files listed above.
	


	FIRST MAKE A COPY OF YOUR SYSTEM DISCETTE FOR USE DURING TESTING.

	With the new copy of of your system disc in drive 0, copy all the .CMD
	files from drive one on to it. Then type:

		+++0.HOME 0

	This will set the current directory pointer to home for future use.
	Once this has been done WRITE PROTECT both discs, then type

		+++0.HIER

	to invoke HIER. At this point the familiar +++ prompt should be on the
	terminal. If not HIER did not install correctly. So re-boot the system
	and check your editing.

	If you feel that HIER.TXT is correct and HIER will still not install
	correctly, change the line:

		DEBUG	SET 0
	to
		DEBUG	SET 1

	in HIER.TXT and reassemble the file. This will cause HIER.CMD to print
	debugging messages as it proceeds through the installation phases.

	If the FLEX prompt is on the terminal, try listing the directory of
	drive 1. If HIER is working correctly, the following files will appear
	in the directory:

		SUCCES.TXT
		NEW.DIR

	Try listing success - it should tell you that you have sucessfully
	installed HIER.

	If you used the new DIR to get the directory listing you should notice
	that the directory is TEST.

	If that effort was successful, remove the write protect from drive 1
	


	Using BUILD make a small file and make sure that is can be read back
	from the disc.

	Now it is time to try moving to a new directory. Enter:

		+++CHGDIR >1.NEW

	and then obtain a directory of drive 1. This time you should see the
	following files:

		SUCCESS.TXT
		ANOTHER.DIR

	List SUCCESS again - this time it should tell you that you have
	successfully moed to a new directory.

	If all is works, try experimenting with the new commands to ensure
	that they all work.

	CONGRATULATIONS! YOU HAVE NOW ADDED THE POWER OF A HIERARCHICAL
	DIRECTORY SYSTEM TO THE FRIENDLIEST OPERATING SYSTEM AVAILABLE
	


	DIGGING DEEPER

	You are unfortunate enough to have to investigate deeper into FLEX.
	To do this you will need a monitor program capable of examining
	memory - while the ability to set breakpoints will increase your
	chances of success.

	The amount of digging around will depend on the error message from
	INSTALL.

	SECTION ONE ERRORS

	Section one of INSTALL searches through FLEX looking for occurances
	of the track and sector of the home directory - 0005.

	Two errors are possible from SECTION ONE either INSTALL found too many
	occurances of 0005, or it did not find enough.

	In either case it will advise which parts of HIER.TXT need changing
	and should not present a problem.

	SECTION TWO ERRORS

	Section two of INSTALL searches through FLEX to find the jump table
	to the FMS routines. It then validates the jumps to READ SECTOR and
	OPEN DIRECTORY are the same as the values in HIER.TXT. The worst
	error that can occur is that INSTALL was totally unable to identify
	the jump table - in which case it prints:

		install was unable to identify the required addresses
		read the section on DIGGING DEEPER for further advice.

	To satisfy the equates in HIER.TXT it is necessary to find the jump
	table inside FLEX and enter the correct addresses for the two
	routines.

	SECTION THREE ERRORS

	Section three of the INSTALL program inspect the code at the start of
	the open directory code inside FLEX. If this is not the same as is
	


	expected in HIER.TXT it will have printed the following:

		further investigation of the open directory routine required

		xx xx xx xx xx

	where each xx is a hexadecimal number.

	The first xx printed is the opcode which the jump to HIER will overlay
	it is necessary to know the length of this opcode in order to be able
	to adjust the return address in HIER.TXT. More detail is contained in
	the listing of HIER.TXT

	It is difficult to give advice on how to identify the necessary code
	because everybody has a different approach - but it is certainly not
	an easy job.

	Technical Systems Consultants have not changed FLEX for a number of
	years, so if you do see an error it is quite likely that you have an
	older version of FLEX. you might consider an upgrade as a simpler
	way of solving the problem.

	If you feel that the problem is beyond your capabilities AND YOU HAVE
	NOT OPENED THE SEALED DISC, HIER can be returned for a refund.
	

	


	#UTILITIES
	


	#BACKUP

	The backup utility allows a directory and any sub-directories it might
	contain to be copied from one disc to another. This is particularly
	useful for backing up a disc - hence the name.

	DESRIPTION

	The syntax for the command is:

		+++BACKUP <source_drive> <destination_drive>

	Before backup is invoked, however, it is first necessary to set both
	the source and destination drives into the correct directories using
	either CHGDIR or SETDIR.
	
	Whenever backup encounters a sub-directory on the source drive, it
	creates an identical sub-directory on the destination drive and
	copies all files from the source sub-directory to the destination
	sub-directory.
	
	


	#CHGDIR

	CHGDIR is used to move to a different directory. It is a shorthand
	version of SETDIR and can move in three directions - laterally, down
	to the next lowest level, or back up to a higher level. The syntax
	of CHGDIR makes moving to adjacent directories faster than SETDIR.

	DESCRIPTION

	The syntax is:

		+++CHGDIR <
		+++CHGDIR ^NEWDIRECTORY
		+++CHGDIR >NEWDIRECTORY
		+++CHGDIR >2.NEWDIRECTORY
		+++CHGDIR <0
	
	The first example moves the directory on the current work drive to the
	next higher directory level.

	The second example moves the directory on the current work drive to a
	new directory at te same level.

	The third example moves the directory on the current work drive to the
	next lowest level.

	The fourth example works the same as example three except that it works
	on drive 2.

	The last example moves the current directory on drive zero up one level.
	


	#COPY

	The COPY command is identical to the standard FLEX copy command except
	that files can be copied from other directories on the disc to the
	current directory. It is not possible to copy a file from the current
	directory to another directory - this can be done by setting oneself
	into the other directory and copying from the one you were originally
	in.

	DESCRIPTION

	The general syntax is identical to the FLEX copy command with the
	addition of a directory path in the source file.

		+++COPY <source file spec> <destination file spec>
		+++COPY <source file spec> <drive>
		+++COPY <source file spec> <drive> <<match list>>

	Only the source file spec can accept a directory path.

	The first example allows a single file to be copied from one directory
	to another. For example:
	
		+++COPY 1.[HOME.FRED.JIM]GAMES.TXT LIFE.TXT

	copies the file GAMES.TXT in the directory JIM on drive 1 to a file
	called LIFE.TXT in the current directory on the work drive. Similarly

		+++COPY 1.[HOME.FRED.JIM]GAMES.TXT 0.LIFE.TXT

	copies the file to the current directory on drive 0.

	Directory paths need not be specified.

		+++COPY GAMES.TXT LIFE.TXT

	would copy the files in the same directory on the work drive, and

		+++COPY GAMES.TXT 0.LIFE.TXT
	


	would copy the file from the current directory on the work drive to the
	current directory on drive 0.

	To specify a directory which is a sub-directory of the current one,
	the following syntax can be used:

		+++COPY [.JON]TIC-TAC.TXT TIC-TAC

	Assuming the current directory is [HOME.JIM] then the file would be
	copied from [HOME.JIM.JON] on the work drive to the current directory
	on the work drive.

	The second example of copy is used to copy a file from one directory
	to another while still retaining the original name:

		+++COPY 1.[HOME.FRED.JIM]LIFE.TXT 1

	would copy LIFE.TXT from the JIM directory on drive 1 to the current
	directory on drive 1. NOTE that the destination will not default
	to the work drive and must be specified.

	The third example of copy is used to copy from either the current
	directory, or a specified directory on the source drive to the
	destination drive. If a match list is also specified only matching
	files will be copied.

		+++COPY 1.[HOME.FRED.JIM] 0 .TXT

	would copy all fiels with the extension .TXT in the directory JIM on
	drive 1 to the current directory on drive 0.
	


	LIMITATIONS

	Copy cannot be used to copy files with the extension .DIR because this
	does not preserve the backpointer contained in the directory. Any
	attempt to do this will be flagged as an error.

	NOTE:

	It is of course possible to rename a .DIR file to another extension,
	copy it and rename it back again.

	This is not advised because the backpointer, which is used by several
	HIER utilities, will be corrupted. This can cause upredicatble results
	and even loss of files.

	


	#DELDIR

	DELDIR is used to delete a directory from the current directory. All
	files in the specified directory, and any sub-directories which it
	might contain are deleted before the directory itself is finally
	deleted. DELDIR will prompt the user before deleting a file but will
	automatically delete an empty directory..

	Files which have been delete or write protected using the FLEX PROT
	utility will not be deleted unless the -p option is used.

	DESCRIPTION

	The general syntac for the command is:

		+++DELDIR directory_name <-p>

	Normally DELDIR will prompt the user for each file deletion, in a
	manner similar to the FLEX DELETE utility. This can, however, become
	rather tediioys if the directory being deleted holds a large number
	of files or sub-directories, and so the -p option allows all files
	to be deleted without prompting.

	Because the -p option is rather powerful, DELDIR tries three times to
	discourage the user from making a mistake before proceeding to delete
	all the files.

	Should the user decide to to continue with the -p option, DELDIR will
	revert to prompting for each deletion.

	A directory will only be deleted if all the files it contains have
	been deleted, including any sub-directories and their files.
	


	For example if DIR produced the following

	Directory of drive 3

	Disc: GAMES	#2	Directory JIM

	First free sector 0B 05
Last free sector 4C 0f

	Name	Ext	Prt	Start	End	Size	Type	Date

	LIFE	.TXT		01 01	03 04	27	00	2-7-84
	GAMES	.DIR	D	03 05	03 08	4	00	31-12-83

	216 Free Sectors

	then:

		+++DELDIR GAMES -p

	would delete alll the files in the GAMES directory along with any
	files in sub-directories under GAMES, after prompting:

		Delete all files with no further prompting ?
		Even write protected files will be deleted - continue ?
		Are you sure ?

	if the user decided against the -p option by answering any prompt
	with anything but Y, DELDIR prints the following message before
	continuing:

		You will be prompted for each deletion

	DELDIR prompts for deletion in the following way

		Delete "3.[HOME.JIM.GAMES]TIC-TAC.TXT ?
		Are you sure ?

	Answering Y to each prompt will delete the file.
	


	#DIR
	
	DIR is an extension of the standard FLEX CATalog utility. The
	enhancements include the ability to specify a directory path, to
	optionally list deleted files and a more informative display.

	DESCRIPTION

	The general syntax for the command is

		+++DIR <<+D>> <<drive list>> <<mach list>>

	The +D option causes DIR to include all deleted files. Drive list
	includes the optional directory path and the match list defines the
	types of files DIR is to list.

		+++DIR 1.[.FRED.JIM] .TXT

	would list all the files in the sub-directory JIM below the current
	directory on	drive 1 with the extension .TXT

		+++DIR +D 1..TXT

	would list all files on drive 1 with the extension .TXT, including
	any deleted files whose directory entries had not been reused.

	The format of the display on the terminal has been enhanced to include
	the directory name, the first and last free sectors on the disc, and
	more file related information.
	


	For example
	
		+++DIR
	
	would produce
	
	
	Directory of drive 1

	Disc: GAMES	#2	Directory JIM

	First free sector 0B 05
Last free sector 4C 0f

	Name	Ext	Prt	Start	End	Size	Type	Date

	LIFE	.TXT		01 01	03 04	27	00	2-7-84
	GAMES	.DIR	D	03 05	03 08	4	00	31-12-83

	216 Free Sectors


	where

		Start is the starting track and sector of the file in hex.

		End is the ending track and sector in hex.

		Size is the decimal number of sectors the file occupies.

		Type shows the file typw - usually 00 for an ordinary file and
		02 for a random file.

		Date is the file creation date.
	


	#DISCCHK


	The disc check utility DISCCHK is used to check the entire structure of
	the specified disc. It does this in the folling manner:

		1). Starting at the HOME directory and continuing through all the

sub-directories, each file is opened and its sectors read to

make sure they are not damaged. As each sector is read its

sequence number is the file is checked; any out-of-sequence

sectors are flagged to the user. Finally the last sector of

the file is checked against its last sector entry in the

directory.

		2). As each sector of a file is read it is marked as used in a

table maintained by DISCCHK. Should another file subsiquently

claim to own the same sector, DISCCHK reports an error and

marks the disc as UNSTABLE; meaning that the free chain cannot

be re-linked until the clash has been rectified.

		3). Once DISCCHK has built the table of used sectors it gives the

user the option to re-link the free chain.

		4). Processing the free chain is done in two parts. First DISCCHK

assumes that all sectors not in its allocation table are

either defective or they belong in the free chain. It

therefore reads all the unallocated sectors in its table to

see if they are defective. Any defective sectors are marked

as used in the table. At the end of this phae DISCCHK reports

the number of sectors it beleives should be in the free chain.

		5). Finally DISCCHK asks the user if he / she wishes to re-link

the chain. If the user replies Y and there have been no

multiply allocated sectors, DISCCHK uses its table to relink

the free chain into ascending order and updates the system

information record.
	


	DESCRIPTION

	The syntax is for the command is:

		+++DISCCHK <drive number>

	MESSAGES

	DISCCHK produces a number of error and informative messages as it
	processes the disc.

		Informative messages:


Processing home directory

Processing files

		These messages tell the user where in the sequence DISCCHK is.

		Warning messages:


SIR read failure, code <n>


This indicates that DISCCHK was unable to read the system

information record to obtain the necessary data to start

processing the disc. The error number is the one returned by

the FLEX FMS.


Sector read failure - error <n> , track <aa> sector <bb>


While processing the disc, DISCCHK was unable to read a sector

from the disc. This error is not fatal if the sector is in the

free chain.


Directory CLASH at track <aa> sector <bb>


A sector in the home directory has been allocated more than

once. This error will not cause DISCCHK to terminate but may

show up as other errors later on.
	


Insufficient memory to run DISCCHK


This message can means that either the system has too little

memory to run or that the system information record on the disc

is corrupted. DISCCHK uses the highest track and sector

information from the system information record to allocate

enough memory for the sector useage table. 16Kb of memory

starting at 0000 is enough to check a 5 Mb drive.


Last sector incorrect in directory of file <filenmae>


The track and sector that DISCCHK determined were the last in

the file do not agree with the directory entry.


Warning orphaned directory - <directory name>


This message means that the backpointer in the directory

<directory name> does not point to a parent directory or the

home directory. In order to ensure that no files are lost the

directory concerned should be copied using BACKUP which will

restore the backpointer.


<directory name><filename> SEQUENCE ERROR track <aa> sector<bb>


This message means that the sequence number contained in bytes

2 and 3 of the sector are not the next in the logical sequence.

This error is normally an early indication that there will be

a sector clash with another file. This error is not fatal but

the file should be checked, if possible, to ensure that it

contains the correct information.


<directory name><filename> - UNSTABLE
	

DISCCHK has decided that the file is unstable, often due to

a sector read failure.
	


<directory name><filename> CLASH at track <aa> sector<bb>


This message indicates the the file named claims to own

sectors which DISCCHK beleives belong to a previously

processed file. This error will prevent the free chain from

being relinked and the offending file or files must be

deleted. Normally if the files are deleted and the chain is

not re-linked the disc will remain in an unstable condition.


ERROR - setbit called with a sector larger than disc size.


DISCCHK has tried to mark as allocated a sector which is

larger than the system informatio record claims the disc will

hold.


sub-directory overflow


DISCCHK currently has enough room to process 300

sub-directories, and the current disc contains more than 300.
	


	#HOME

	HOME is used to return the specified disc to the HOME directory
	It is VERY IMPORTANT that ALL discs are HOMED before they are used

	DESCRIPTION

	The syntax is:

		+++HOME <drive>

	HOME will report an error if it is unable to update the system
	information record, or the first directory sector, track 0 sector 5.
	


	#LIST

	The LIST command is identical to the FLEX utility of the same name,	
	except that a directory path can be specified before the filename.

	DESCRIPTION

	The general syntax is:

		+++LIST <file spec> <<line range>> <<+options>>

	The file spec can include a directory path if required, otherwise it
	will default to the current directory.

		+++LIST [HOME.FRED.JIM]LIFE.TXT

	would list the file LIFE.TXT in the directory JIM on the current work
	drive.

	The line number range and options are the same as the standard FLEX
	LIST.
	


	#MAKEDIR

	MAKEDIR is used to create a sub-directory in the current directory on
	the specified drive. The directory is delete protected to prevent the
	accidental erasure of valuable files. A directory path is not
	permitted with this command.

	DESCRIPTION

	The syntax for the command is:

		+++MAKEDIR JIM

	This will make a new directory called JIM ( a file called JIM.DIR ) in
	the current directory on the work drive.

		+++MAKEDIR 2.FRED

	This will make a neq directory called FRED ( a file called FRED.DIR )
	in the current directory on drive 2.

	If the directory already exists, MAKEDIR will report the error and exit.
	
	MAKEDIR will initially allocate four sectors to te new directory,
	which is enough room for 40 files. FLEX will automatically allocate
	additional sectors to the directory if more than 40 files ae created.
	


	#MOVE

	MOVE is used to move a file, or directory from one node in the HIER
	file structure to another.

	DESCRIPTION

	The syntax for MOVE is:

		+++MOVE <source> <destination>

	for example:

		+++MOVE [HOME.GAMES]LIFE.TXT [HOME]

	The first parameter defines the path to the file to be moved, and the
	second parameter defines the new path to the file.

	A drive number can be specified as follows:

		+++MOVE 2.[HOME.GAMES]LIFE.TXT [.JIM]

	in this case LIFE.TXT in the GAMES directory on drive 2 is moved to
	the JIM directory below the current directory on drive 2.

	To move a file into the working directory only the drive number need be
	specified:

	+++MOVE [HOME.GAMES]LIFE.TXT 1

	This assumes that the current work drive is drive 1, and the working
	directory is not GAMES.

	Finally MOVE can change the name of the file as it is moved:

		+++MOVE [HOME.GAMES]LIFE.TXT [.JIM]OLDLIFE.TXT

	Note that all file names must include both the name and the extension,
	and files cannot be MOVEd from one disc to another.
	


	#RUN

	RUN is used to activate a .CMD file in another directory on the disc.
	It comes in two forms RUN.CMD and RUN.LOW. The .LOW version is used to
	run files which reside in te FLEX utility command area.

	DESCRIPTION

	The syntax for RUN is:

		+++RUN [HOME.BACKUP]BACKUP

	This will activate the file BACKUP.CMD in the directory BACKUP.

	If the file runs in the FLEX utility area the syntax is:

		+++RUN.LOW [HOME.BACKUP]BACKUP
	


	#SETDIR

	SETDIR is used to set the current working directory on a given disc.

	DESCRIPTION

	The syntax for SETDIR is:

		+++SETDIR [HOME.FRED.JIM]
		+++SETDIR 2.[HOME.FRED.JIM]
		+++SETDIR [.JIM]

	The first example sets the current directory on the work drive to JIM
	along the path FRED from the HOME directory.

	The second example does the same thing for drive 2.

	The third example assumes that the current directory contains a
	sub-directory called JIM.

	ERROR MESSAGES

	SETDIR will give an error:

		Directory specification error

	if the directory could not be found. In this case the current directory
	remains as it was before SETDIR was invoked.
	


	#TREE

	The TREE utility prints a listing of all the directories and files on
	a disc. Each sub-directory level is indented two spaces from the left
	margin.

	DESCRIPTION
	
	The syntax is:

		+++TREE <drive>

	Starting at the home directory and proceeding through all the
	directories, TREE will list all the files on the chosen disc.
	


	#UNDER

	UNDER is used to determine the number of sectors, files and directories
	under a given node on the disc. This can be important when using BACKUP
	since it allows the user to determine if there is enough room on the
	destination disc.

	DESCRIPTION

	The syntax is:

		+++UNDER <drive>

	and is issued when the user is at the desired directory node.


	UNDER will then search all the files under the specified node and give
	the following response:

	sectors: <nnn>, files: <nnn>, directories: <nnn>

	each <nnn> is in decimal.

	For example, if the user is in directory FRED, then UNDER would search
	FRED an JIM and print out

	sectors: 125, files: 3, directories: 1
	


	#WHERE


	WHERE prints the path to the current directory on the disc.

	DESCRIPTION

	The syntax is:

		+++WHERE <<drive>>

	If a drive is not specified the current work drive is used.

	A typical output from WHERE is

		[HOME.JIM.GAMES]
	


	#APPENDIX
	

	NAM	HIER
	*
	****************************************************************
	*		This software is copyright 1983,1984,1985 by		*
	*		Ray Goff. Copying for purposes other than backup	*
	*		by the original licensee is STRICTLY PROHIBITED.	*
	*	>*
	****************************************************************
	*	>*
	*		The following address need to be changed according	*
	*		to the instructions in the accompanying manual	*
	*	>*
	*		They are correct for the latest versions of FLEX	*
	*		namely general FLEX V3.01.	*
	*	>*
	****************************************************************
	*	section one	!*
	*	-----------	!*
	*		change the any of the next four addresses
*
	*		and add more as required if install	*
	*		indicated that it is necessary.	*
	*	>*
	*	>*
	FIND50	EQU	$D413	**
	FIND51	EQU	$D415	**
	FIND52	EQU	$D441	**
	FIND53	EQU	$D8AB	**
	*	>*
	****************************************************************
	*	>*
	*	section two	!*
	*	-----------	!*
	*	>*
	*		change either of the next two addresses if install	*
	*		indicates that it is necessary.	*
	*	>*
	OPNDIR	EQU	$D81D	**
	READSEC	EQU	$D641	**
	*	>*
	****************************************************************
	*
	*		general flex equates
	*
	MEMLIM	EQU	$CC2B
	WARMS	EQU	$CD03
	FMS	EQU	$D406
	*
	ORG	$C100
	*
	BEGIN	BRA	BEG1
	*
	FCB	1	version number
	*
	BEG1	LDD	MEMLIM
	*
	*		copy hier into top of memory
	*
	SUBD	#END-START
	STD	MEMLIM
	TFR	D,X
	LEAX	1,X
	LEAY	END,PCR	end of program
	PSHS	Y
	*
	*		copy Y = source, X = destination
	*
	LEAY	START,PCR
	COPY	LDA	0,Y+
	STA	0,X+
	CMPY	0,S
	BLO	COPY
	*
	LEAS	2,S
	*
	*		jump to the routine at the new address for installation
	*
	LDX MEMLIM
	JMP 1,X
	*
	START	LEAX HIER,PCR
	STX OPNDIR+1
	*
	LDA #$7E
	STA OPNDIR
	*
	LEAX -1,X
	STX MEMLIM
	JMP	WARMS
	*
	*		main body of code which remains in memory at all times
	*
	HIER	PSHS D
	*
	LDX $D40B
get the FCB address
	*
	LDD 30,X
get 'next sector' address
	PSHS D
	*
	LDD #3	read the sir sector down
	STD 30,X
	*
	JSR READSEC
	*
	LDX $D40B
set up fcb pointer
	
	BCS ERROR
	*
	LDD 88,X
get the current directory address
	*
	BRA OK
	*
	ERROR	LDD #5	force home directory
	*
	*		substitute the new directory pointer
	*
	OK	STD FIND50
	STD FIND51
	STD FIND52
	STD FIND53
	*
	****************************************************************
	*	>*
	*	section four	 *
	*	-----------	!*
	*		add any extra lines of text here if install
*
	*		indicates that it is necessary.	*
	*	>*
	*	>*
	****************************************************************
	*
	PULS D	restore the old 'next sector' address
	STD 30,X	-
	*
	PULS D	restore registers
	*
	****************************************************************
	*	>*
	*	section three	*
	*	-------------	*
	*	>*
	*		At this point the instruction in the unmodifed FLEX	*
	*		OPNDIR which the jump to HIER replaced must be	*
	*		executed.	,*
	*	>*
	*		If the three bytes that the jump to HIER replaced	*
	*		are not:	-*
	*	>*
	*	F6 D4 13	!*
	*	>*
	*		INSTALL will warn that more work is required.	*
	*	>*
	*		If so, INSTALL will have printed the five bytes at	*
	*		the start of OPNDIR. If the first byte is a three	*
	*		byte opcode then simply substitute it for the line:	*
	*	>*
	*	LDB $D413	 *
	*	>*
	*		below.	/*
	*	>*
	*		Otherwise detemine the length of the opcode.		*
	*	>*
	*		Substitute the opcode and all the operands for the	*
	*		line:	0*
	*	>*
	*	LDB $D413	 *
	*	>*
	*		below. If the opcode is only two bytes long the next *
	*		opcode and operand(s) must also be added below.	*
	*	>*
	*		Now add up the number of bytes the subtituted code	*
	*		contains and adjust the offset into OPNDIR in the	*
	*		line:	0*
	*	>*
	*	JMP OPNDIR+3
*
	*		below.	/*
	*	>*
	****************************************************************
	*
	LDB $D413
	*
	*		substitute any other additional code here
	*
	JMP OPNDIR+3	current offset of 3 might need adjusting
	*
	END	EQU *
	*
	END BEGIN
