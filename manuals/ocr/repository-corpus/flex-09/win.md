# WIN

> Source: `flex-09/distributions/FLEX9WIN - FLEX Operating System - Documentation and Examples.zip!FLEX9WIN.DSK!WIN.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

WINCHESTER DRIVE SYSTEM SOFTWARE

	"Leo Taylor

	#OVERVIEW


The Winchester System Software (called WINSYS) is a series of
	utilities for handling Winchester disk drives using the FLEX or
	STARDOS operating systems. WINSYS consists of the following:


WINDRV - the disk drivers

WINFMT - the disk formatter

WINASN - assigns Winchester volumes

WINPARK - parks the head over landing zone

WINBOOT - bootstrap loader for ROM monitor

WINTABLE - user system equates

WIN.DOC - this document
	WINEXAM.DOC - examples for this document


This group of programs provides several features. The system
	supports maximums of four drives, 1024 tracks per drive, 26 volumes,
	256 tracks per volume, and 10 drive numbers. Each volume can be
	assigned to any drive number at any time using WINASN. FLEX can be
	bootstraped from a winchester drive when WINBOOT is added to EPROM.
	Minor features include proper control of the drive select LED,
	inter-volume protection, compact driver (about 300 bytes), command
	line parameters, readable source code, easy driver install.


The software was written to be easy to use, but since it
	supports many volumes one must be careful not to overwrite a volume.
	Do not try to format the drive until reading the section on setting
	up the table.


!!! IMPORTANT NOTE !!!


If you edit WINTABLE.LIB you must reassemble BOTH the format
	and assign programs. If they get out of sync YOU WILL LOSE DATA.

	#GLOSSARY

	Drive number	- FLEX drive number, usually 0-3.
	Physical drive - winchester or floppy drive select number, from
	a switch on the drive, usually 0-3.
	Logical volume - section of the Winchester designated by a volume
	letter, usually A-Z. The physical drives can have
	up to 26 volumes. A drive number can have any
	volume letter assigned.
	Drive LED	- red indicator on the front of the drive.
	Maximum track	- highest track used for data.
	Parking track	- inside track, slightly higher than maximum track.
	Error correct	- feature of some controllers that fixes data errors.
	EXAMPLE A	- printout obtained from a simple system with one
	disk drive. Each part is numbered, EXAMPLE A1 is
	the WINTABLE.LIB listing, A2 is the WIMFMT listing,
	and EXAMPLE A3 is the WINASN listing.
	EXAMPLE B	- printout obtained from my system with two drives
	and 24 volume letters.


HARDWARE SUPPORTED


Since I only know a few FLEX users with hard disks, I do not
	know the limits of WINSYS. The program should work with any hardware
	compatible with the following tested hardware:

	&1


	1. Western Digital 1000-05 and 1002-05 controllers (not SASI).
	2. Shugart 604 (5 meg) and Seagate 225 (20 meg) drives.
	3. Three chip SS-30 interface (see schematic) and David Graves

SS-50 board (68 MJ, Oct 82).

	UNDERSTANDING VOLUME LETTERS


The entire WINSYS is based on the concept of logical volumes
	which you must understand to use the programs. A logical volume is a
	section of the hard drive which may be from 2 tracks to 256 tracks.
	This program assigns a letter to each volume. In EXAMPLE A, letter B
	is a volume with 70 data tracks starting at track 31. Let's assume
	we formatted volume B with WINFMT and assigned it to drive number 1
	with WINASN. If we catalog this drive (using CAT 1) FLEX will look
	for a directory on track zero of drive 1. Unknown to FLEX, WINDRV
	will add 31 to the track number (volume B starts at 31). The
	directory of volume B will be found at this track, and FLEX will
	display a catalog of the volume. If we save a file on this drive
	(using SAVE 1.TEST 100 200) FLEX will want to start the file on
	track 1 sector 1. WINDRV will add 31 to this track number also, so
	the file will actually start on track 32.


The important things to realize are:

	1. The operation of WINDRV adding offsets to track numbers is

transparent to FLEX. No FLEX program can detect the offset

to the physical track.
	2. Each FLEX drive number can only be assigned one drive letter

(track offset) at one time. WINASN is used to change the

letter (and track offset) assigned to a drive number.
	3. Volumes can be as short as one data track (2 tracks if you

count the directory) or as long as 255 data tracks.
	4. Since a drive can have many volumes of up to 256 tracks, a

drive of up to 1024 tracks (about 65 Megabytes) can be

supported under FLEX.

	SETTING UP WINTABLE.LIB


The file WINTABLE.LIB is a library file used by most of the
	programs in WINSYS. It must be present on the work drive to assemble
	any of the other programs. It contains all of the user defined
	system equates, as well as the volume sizes. It MUST be edited
	before you can begin assembling the programs.


Before you assemble any of the programs, you must consider what
	size volumes you wish to have. It will take awhile (and perhaps
	several false starts) to get the sizes the way you need them. The
	volume sizes can be as small as one data track or as large as 255
	data tracks. Though one track seems too small to be of value, bear
	in mind that with a 4 head drive one track is 128 sectors (over 1/3
	of a SA-400 floppy). For example, I use a single track volume called
	LIBRARY for the 'C' compiler library files.


The first half of WINTABLE.LIB contains several equates
	pertaining to the hardware. These are explained with comments in the
	library file, the following is an expanded description of each item.

	'DEFALT' is the drive number which will be assigned to the first
	volume when WINDRV is loaded, usually drive 3 will be
	volume A. Later, if you are going to boot FLEX from the
	winchester drive, the default drive must be changed to zero
	to allow access to STARTUP.TXT.

	&2


	'DELAY'	is used to time out waiting for the controller to indicate
	ready after indicating busy. This is only used when the
	controller is not powered up. If your drive is always
	powered when the computer is on, you can set the delay to
	10000 and forget it. Too short of a delay may cause
	'DRIVE NOT READY' on the first Winchester access after
	power up. If you power down your controller when not
	using your drive, the time out will prevent hanging the
	system if you access the drive.
	Repeat: most users should use 10000 and forget it!
	'DRV1ST' is the number of the first (or only) physical drive. One
	would expect this to be drive 0, later I'll explain a
	small advantage to having the first drive select at 1.
	'DRVORG' is the start of the drive table and the disk drivers. This
	location must be 'out of the way', where FLEX programs will
	not overwrite the drivers. If you have the interface board
	by Graves it has a RAM chip to hold the disk drivers. If
	you have an SWTP MP-09 there is RAM space on the CPU for
	the drivers. Usually you will want the drivers located in
	the $E800 or $F000 area. WINDRV only needs about 300 bytes.
	'ECFLAG' is a flag used for selecting error correction on the
	controllers that support it such as WD1002-05. If you
	have a WD1000-05, then set the flag to $00. If you have
	a WD1002-05, you will want error correct enabled, set
	the flag to $80.
	'HBASE'	is simply the starting address of the interface.
	'HEADS'	is the number of data heads per drive. For example the
	SA-604 has 4 heads for its two platters.
	'INTERL' is the default interleave factor. You may overide this
	number by letting WINFMT prompt you for interleave. You
	will need to experiment with interleave factors to find
	the optimum number for your system. You can set this to
	16 for now.
	'MAXDRV' is the largest drive number your FLEX/STARDOS system can
	handle. Most FLEX systems are limited to 0-3, STARDOS
	and my FLEX allow drives 0-9.
	'NODRIV' is the phantom drive selected to turn off all the drive
	select LEDs. If you don't have a third drive, use 3. The
	driver will select this number to turn off all lights.
	'OFFSET' is a trick to allow old motherboards to support eight
	address ports. If you have the Graves board, or you have
	at least 8 addresses per port, set this equate to $00.
	If you have 4 addresses per port (like me) then you can
	still use the interface by connecting A5 to an unused
	I/O buss line (such as UD3). This will result in the
	board decoding 8 addresses, though in two groups of 4.
	My card responds to $E010-$E013 and $E030-$E033. Setting
	OFFSET to $1C allows access to this split address.
	'PRKTRK' is set to slightly over TRACKS. The drive manufacturers
	build the drive with extra tracks to provide a 'landing
	zone' where you can safely park the heads. Most users
	allow the heads to fall wherever they were at power off,
	usually on top of a directory!
	'PRECMP' is set to 32 for most drives. This track multiplied by
	four is the start of precompensation.
	'SEEKSP' is set to 0 for most drives. See the section SEEK and
	RESTORE for more information.
	'TRACKS' is simply the number of tracks per drive. For example the
	SA-604 has 160 tracks so TRACKS is 160.


	&3


The latter section of WINTABLE.LIB contains 26 volume size
	equates. The numbers are the size, in DATA tracks, of the volume for
	each letter. If SIZA is equated to 30 then volume A will have 30
	data tracks and 1 directory track (31 total). The directory of
	volume A will be at track zero and the data tracks will be tracks 1-
	30. If SIZB is equated to 70 then volume B will have its catalog at
	track 31, immediately after volume A. The 70 data tracks for volume
	B will be physical tracks 32-101. The total number of tracks
	(SIZA+1,SIZB+1,etc) must add up to multiples of the number of tracks
	per drive. If not, WINSYS will give an error message. In other
	words, a volume can't extend across two drives. If you have more
	than one drive, and a volume ends exactly at the end of the first
	drive, then the next volume will start on the next physical drive.
	You needn't use all the tracks on a drive, WINSYS will not complain
	if the end of the last volume is less than TRACKS. You may skip any
	volume letters by equating them to a size of zero.


WINTABLE.LIB EXAMPLES


All this should become clearer when you look at the examples.
	EXAMPLE A1 is from a simple system, and is the file that is
	distributed as WINTABLE.LIB. The first half should be easy to
	follow. The controller is a WD1000-05 connected to a Graves board,
	so DRVORG, ECFLAG, OFFSET, and HBASE are set accordingly. The drive
	is a 5 MEG ST-506 compatible, so TRACKS, PRKTRK, and HEADS are set
	accordingly. There is only one drive which is jumpered to be
	selected as zero, so DRV1ST and NODRIV are set accordingly.


The size table is set up with only three volumes. They are
	selected to total 160 TRACKS. Note that the sum must include the
	directory tracks:

	SIZA	SIZB	SIZC	MAX
	30+1 + 70+1 + 57+1 = 160


EXAMPLE B1 is from a more elaborate system, mine! The hardware
	equates are set up for 2 drives (jumpered as 1 and 2). The driver is
	addressed in a small space in my version of FLEX. The error correct
	feature of the controller is enabled. The maximum drive number on my
	system is 9, so that I can have 10 Winchester volumes enabled at
	once (or 4 floppies, 5 Winny volumes, and a RAMDISK). All but 2
	volume letters are used, note that I have added the volume names and
	drive numbers as comments. Sometimes I could match the letter to the
	name (S=SOURCE, P=PICTURE). I have duplicate volumes on both drives
	because my main purpose for the second drive is quick backups.

	FORMATTING DISKS


We're getting down to business! Now that you have set up the
	tables you can assemble WINFMT. There are no options to edit in
	WINFMT, it gets the user defined equates from the library file.
	WINFMT is self contained, you do not need to install the drivers
	before formatting. After assembly, enter the command WINFMT (do not
	enter any command line parameters for now). With luck you will see a
	display like EXAMPLE A2. You may get an error message on the bottom
	of the display if WINFMT does not like your table. There will be 3
	items reported for each volume letter. The size is the same number
	you entered in the equate table. WINFMT has computed the drive
	number (always zero in EXAMPLE A2) and the starting track number for
	the volume. If there is an error in your table (such as a volume
	extending past TRACKS) the bad volume will be marked with asterisks.
	All volumes following the error will be marked as bad, since they
	are computed relative to the bad volume. WINFMT will abort if there

	&4

	is an error, you must fix the table and reassemble before
	continuing.


When the program is happy with the table, it will prompt for
	the volume letter to be formatted. The first time through, start
	with volume A. Note that any volume can be formatted without
	disturbing the others. The next prompt is for the number of
	surfaces. You should enter the number of surfaces supported by your
	drive, though you may enter less for testing purposes. Some drives
	use one surface for internal servo information, do not try to format
	that surface! If you enter too high a number, WINFMT will run VERY
	slow since it is getting errors on the non-existent head. Interleave
	factor is the next prompt, enter 16 for now. Interleave is discussed
	in detail later.


The program will now attempt to read the old volume ID, if none
	exists there will be a pause of a couple of seconds. If the volume
	has been formatted before, the old name and number will be reported.
	This is to reduce the chance you will format a volume you need; you
	can exit WINFMT by pressing return. You will now be prompted for the
	volume name. This has the same limitations as a FLEX file name: 8
	characters, first must be alpha, hyphen and underline allowed, 3
	character extension allowed. The last prompt will be for volume
	number which can be up to 65535.


WINFMT will now proceed with the formatting. There will be a
	pause as the drive is restored. Empty sectors will be created on the
	disk, then the sectors are filled with zeroes and the FLEX link. The
	program will display track numbers as it proceeds to let you know
	how it is progressing. The numbers should count quickly, if the
	tracks take over 2 seconds each there is something wrong; check the
	number of heads, or the head data from the 20 pin cable. Unlike a
	floppy, when you change the drive select jumper you must also move
	the head data cable to a different jack on the controller. The speed
	of the linking phase will vary depending on the interleave, but
	please do not judge the interleave factor by the format speed! The
	interleave should be optimized for reading files. If all goes well
	the volume will be formatted. Try formatting the volume again to see
	if the volume name and number is reported! At this point you can
	format the other volume letters, though you may format them several
	times before the day is over! You might format some of the other
	volumes using WINFMT with a command line parameter. To format volume
	C without having to answer several prompts, you can type WINFMT C.
	The number of heads and the interleave factor will be taken from the
	library file to save you some typing.


INSTALLING THE DRIVERS


Assemble WINDRV next. The drivers file is set up as a command
	file, you load the drivers by calling them as a command. Later, you
	may want to append them to FLEX; for now you can call them manually
	or add WINDRV to your STARTUP file. WINDRV will load into two
	sections of memory. The driver itself will be located at the address
	DRVORG found in the library file. There will also be a one time
	initialization program loaded at $C100 which does its thing then
	jumps to the FLEX cold start. The program will save the old FLEX
	driver jump table (usually the jumps to the floppy routines) then
	install its own jump table. Unlike the Zeff-Graves program you do
	not need to change your winchester driver when you change your
	floppy driver. Also, you can load another driver after this one such
	as my RAMDISK.


	&5


If all is going well you should be able to catalog the volume A
	that you formatted earlier (using CAT 3). WINDRV assigns the first
	letter to drive 3, since there will always be a volume starting at
	track zero. Unless you equated SIZA to zero, CAT 3 should display a
	catalog of volume A. It is assumed you will want to change this
	drive 3 = volume A pair with WINASN after the driver is loaded. I
	included this default assignment for test purposes so that you can
	test the drivers without WINASN.

	ASSIGNING WINCHESTER VOLUMES


The next program to assemble is WINASN. Again, no changes need
	to be made to this file. This program is used to select a volume
	letter to be used with a drive number. After loading the drivers you
	could only access volume A, which was assigned to drive 3. Enter the
	command WINASN without any parameters. You should get a list like
	EXAMPLE A3. This varies from the WINFMT report in that it displays
	the volume name (and extension if you entered one). This display
	tells you what volumes are available, sort of a directory of
	directories. I won't go so far as to say "UNIX like", but a small
	step in that direction. Along the bottom of the display is a list of
	drive numbers with their assigned volume letters. 0=- means no
	volume assigned, 3=A means volume A is assigned to drive 3. WINASN
	prompts for drive number/volume letter pairs. If you want to assign
	drive 1 to volume B enter 1B as an answer to the prompt. Now if you
	enter CAT 1 you will catalog winchester volume B.


Several questions may be popping up in your mind... What
	happened to my floppy disk at drive 1? The floppy temporarily
	vanishes from access by FLEX. All references to drive 1 will access
	the winchester volume assigned to drive 1. If you want the floppy
	back, you can enter WINASN 1-. Remember I mentioned 0=- is WINASN's
	way of indicating no volume assigned? The dash (hyphen) is also used
	to deassign a volume. Does that mean I can assign all my drive
	numbers as winchesters? Sure does! Try the command WINASN 1A 2B 3C.
	Assuming you formatted the first three volume letters, you now have
	three winchester volumes assigned (for now you don't want to assign
	a winchester drive as the system drive). Now try CAT 1 2 3 and see
	what appears. What does WINASN accept as parameters? The program
	wants (and insists) on number/letter pairs. There can be several
	pairs on one command line. Commas and spaces can be inserted if you
	find that more readable. For example WINASN 0 A 2,B 3C,4D5E is
	perfectly acceptable. Since I have 4 floppies my STARTUP file
	includes WINASN 4C5G6L7H8W3-, the latter two characters re-enable my
	floppy at drive 3. What other special characters does WINASN have?
	Like WINFMT the asterisk (star) is used to mark a volume whose size
	must be corrected. A pound sign (pig pen) is used to indicate a
	drive not responding when WINASN tries to read the volume ID. How
	can I remember the special characters? By remembering another
	special character of course! I think you all know the familiar plus
	sign, if used as a parameter you will get a help message. Enter
	WINASN + to get some help on how to use this command. Must the
	letters be in any order? No, WINASN 1C,0B,2A,3C will work fine
	though there is little purpose to use the letter C twice. How does
	this relate to the FLEX ASN command? The two perform separate
	functions, but work together as a team. WINASN 3C:ASN W=3 will make
	volume C the work drive. How long will it take to read all those
	volume names? I find it takes about 2 seconds for WINASN to list my
	24 volumes scattered around two 5 megabyte drives. Until all volumes
	have been formatted, the command will take longer.


Since this is the command you will use the most, I'd suggest
	playing with it for awhile. It's really very intuitive since you

	&6

	simply tell it the drive number followed by the volume you want to
	assigned to that drive.


PARKING A WINCHESTER


Most people simply turn off their computers when done with
	them. Unfortunately winchesters do not have any hardware that holds
	the flying head away from the platter. The head just lowers down as
	the disk slows, finally coming to a scraping stop! Thousands of disk
	users do this every day, and little is said about the subject. In my
	profession of servicing computers I've changed my share of winny
	drive mechanisms, often as the customer mumbles about how long it's
	been since the disk was backed up! I don't know if any of the
	failures were due to not parking, but I'd rather not find out the
	hard way. When a winny fails, it usually goes all at once without
	any warning. The makers of the drives have always provided landing
	zones, a section of the disk that is not used for data. They
	recommend resting the heads there, especially if the drive is to be
	moved. I've noticed IBM is now providing parking support for their
	PC-AT, H-P does likewise for their VECTRA. Perhaps PC-XT users have
	learned the hard way...


WINPARK is the final program for you to assemble. You may use
	it if you like, ignore it if you must. There is one option in the
	source: a flag to enable reporting of the drive and track being
	parked. I use the command before powering the system down.

	SEEK and RESTORE


I spent quite a few evenings trying to find the best way to
	handle the seek and restore commands. The Western Digital hard disk
	controller is far more intelligent than the floppy interface boards
	I've worked with. I soon discovered that you never use seek command
	in a single tasking system like FLEX; the controller does an auto-
	matic seek when you do a read or write. The restore command, which
	is used often on a floppy, is almost never needed on a winchester.
	Since the only read errors I've ever experienced with the winchester
	were caused intentionally, FLEX never called the restore command in
	WINDRV. This presents one problem, the restore command tells the
	controller what seek speed to use. The Zeff-Graves program restored
	the drive everytime a program exited to FLEX. I didn't want to do a
	lot of unneeded restores just to set the seek speed, so I came up
	with a 'trick' to force one restore before the first read command.
	The controller remembers the seek speed until powered off or reset.
	To prevent the controller from being reset often, I connected the
	controller reset (pin 39) to 5 volts as shown in the schematic. A
	similar modification can be made to the Graves board. If you don't
	make the modification, and your drive starts to seek slowly (and
	loudly), you can force a restore by entering WINFMT A followed by
	two returns.


The seek speed number requires some explanation. My drives came
	without any documentation, thus I didn't know what seek speed to
	use. To my surprise, the ideal seek speed to use was zero. When the
	controller sends the seek pulses out as fast as it can go, a Seagate
	compatible drive will buffer the pulses and signal the controller
	when the seek is complete. This worked fine with both the SA-604 and
	ST-225 drives I tested. If it doesn't work with your system, the
	equate SEEKSP is in increments of .5 milliseconds.


	&7

	SELECTING INTERLEAVE FACTOR


Those who have read my interleave article (68 MJ, Oct 85) know
	that the interleave factor can be adjusted to maximize the read
	speed of a disk. It will take about an hour to do the following:

	1. Format a volume (the shorter the better) with interleave of 1.
	2. Copy a 100 sector text file called T.TXT to the winchester.
	3. Time how long it takes to do the command LIST T 9999.
	4. Record the results and repeat the process, incrementing the

interleave factor, until a large drop in time is observed.
	5. The fastest time will be the optimum interleave for the list

command. Use that number or perhaps one number higher to

allow for a safety margin.


The time to list a 100 sector file should be around 4 seconds
	for a 2 MHZ 6809, or around 7 seconds at 1 MHZ. The interleave
	number you obtained is not a 'true' interleave factor. 100 sectors
	in 4 seconds is 40 milliseconds per sector. The disk rotates in 16
	milliseconds, so it actually goes around a couple of revolutions
	plus your interleave factor.

	BOOTING FLEX FROM WINCHESTER


WINSYS includes the capability to load an operating system from
	the hard disk. This bootstrap operation is similar to booting from a
	FLEX floppy; a small ROM loader loads a larger disk resident loader
	from track zero sector one. This routine then loads the FLEX.SYS
	file and jumps to the file's transfer address. This requires several
	steps to achieve:

	1. Add the short (64 byte) bootstrap program WINBOOT to your

EPROM monitor. Set the user defined equates to match your

system (use the same values as WINTABLE.LIB). The bootstrap

on the disk can be loaded anywhere, set BOOTMEM to a location

that will not conflict with your FLEX ($C500 is usually OK).
	2. Set the equate for DEFALT in WINTABLE.LIB to zero and assemble

WINDRV. This will allow FLEX to find STARTUP on drive zero.
	3. Append WINDRV to the end of FLEX to make a new FLEX.SYS. This

file must be squeezed to eliminate the extra transfer address.
	4. Copy your new FLEX.SYS onto your first volume (usually A) and

link it. The LINK command will write the starting disk address

of FLEX.SYS into bytes 5 and 6 of the bootstrap.
	5. Try your the new command in your monitor. The EPROM program

should load the bootstrap into BOOTMEM, and that program should

load FLEX. Total time is under a second if the disks are up to

speed. My drives take 18 seconds from a dead start.

	THE LITTLE THINGS THAT COUNT

	1. Winchesters under FLEX do not read much faster than properly

interleaved floppies, but they write many times faster. This

is due to faster rotation speed and lack of verify after write.
	2. Though not intentional, WINSYS will operate with two drives

of different sizes. Lets say you start out with a 5 meg

drive, then add a 15 meg unit. Make the larger unit the

lower number drive, and set TRACKS to match the larger

drive. The volume sizes should be chosen to fill the larger

drive then continue on the smaller drive. Remember that the

software will not be able to check for the last volume

exceeding the size of the smaller drive.


	&8

	3. The parking area is actually disk space that the maker of

the drive does not certify as usable. I've found I can

'cheat' and format my 160 track drives for 180 tracks and

park the heads at track 182.
	4. When the controller is reset it selects drive number zero.

Unfortunately, this lights up the LED on that drive until

WINSYS turns the light out by selecting an unused drive.

This can be avoided by jumpering your first drive to select

as physical drive 1.
	5. After having a silent computer for 10 years, I can't stand

the noise from the winchester motors and fan. The enclosed

interface schematic includes an extra IC to implement a

software power on/off line. This can be used to drive a

solid state relay to control the winchester. WINPARK will

turn off the motors by writing $80 to WCYLH. A short program

can write $00 to WCYLH to power up. This is the second

address of the port, and the upper bits are normally unused.
	6. The controller must be told by WINDRV to turn off the LEDs

after every operation. A side benefit of this is you will be

able to tell what the drive is doing by the flashing LED.

A seek is brightest, a read is dimmer, a write flickers.
	7. The software expects the controller commands to be positive

true, not inverted as in the Graves software. Swap the buss

transceiver between 74LS640 and 74LS245 if you are currently

using inverted data.
	8. As mentioned by Graves, the winchesters appear to have a low

error rate. WINDRV checks and reports errors, but does not

verify after writes. WINFMT does not have any logic to take

bad sectors out of the free chain. I've never encountered an

error, but if you do there are two alternatives. The TSC

utility FLAW can be used to remove a bad sector from the

free chain. Or, you can remove bad sections of the disk by

creating a dummy volume over the bad spot. Remember, if a

sealed drive develops a bad track, you can't replace the disk!
	9. WINDRV compares the track number in a read or write command to

the size in tracks of that volume, returning an error if too

high a track is requested. This prevents a runaway program from

clobbering a track on a volume other than the one assigned.
	10. Since most systems (including OS-9) insist on formatting a

drive starting at track zero, WINSYS provides a means of using

a drive for two operating systems. Note the first volume in

EXAMPLE B3, which is 80 tracks I've reserved for OS-9.
	11. A CRC disk can't be read with ECC enabled, and vice versa.
	12. I have not found an 8 head drive to test, but it SHOULD work.

There may be a problem with some software accessing sector 0.

	#WRAP UP


I hope you enjoy using these programs. Due to the small number
	of FLEX users who can 'BETA TEST' the software for me, there is
	always a chance for a bug or two to pop up. Let me know if you have
	any problems, and keep in touch to get any updates I make as time
	goes by.


I'd like to thank Robert Zeff, David Graves and Phil Gunsel for
	the early winchester programs that inspired WINSYS.

	Leo Taylor
	109 Twin Brook Road
	Hamden, Conn. 06514


	&9
