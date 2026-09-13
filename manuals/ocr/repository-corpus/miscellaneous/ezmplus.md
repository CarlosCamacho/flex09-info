# EZMPLUS

> Source: `misc/archive-series/disk/DISK32 - FLEX Archive Disk - Source Code and Build Files - Includes ADD, CCZ80, COMPRESS.zip!DISK32.DSK!EZMPLUS.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

EZMPLUS USERS GUIDE

	EZMPLUS.COM VERSION 3:0.0

	PROGRAM DESCRIPTION

EZMPLUS.COM is a 'hot-key' oriented communications utility for SK*DOS and is
offered as shareware for a $45.00 registration fee.	While this
registration fee is _STRICTLY VOLUNTARY_ those users of EZMPLUS.COM who
decide to register will receive program updates and enhancements for a
period of one year from the date of registration.	The registration fee
should be sent to the program author:

	Michael Evenson
	200 Ginger CT.
	Southlake, Texas	76092


Announcements regarding program enhancements and other information
(including revisions of this document)	will be periodically posted on
the BBS (817-488-8398). This document describes version 3:0.0,
was last updated on September 25,1988 and any errors contained within are
solely due to Michael Daly, the author of this document and _NOT_ Michael
Evenson, program developer. Please bring any discrepancies between this
document and actual program operation to the attention of Michael Daly
on this BBS.	

	EZMPLUS.COM COMMAND LINE SYNTAX

EZMPLUS.COM is called from the SK*DOS prompt as follows:

	SK*DOS:EZMPLUS

EZMPLUS will look for a default device driver named MODM or alternatively, a
different driver name may be specified on the command line after EZMPLUS.
Baud rate may be specified prior to loading EZMPLUS (using the dosparam
command) or included in a startup.bat file. Inclusion of the default
serial driver name and baud rate into a startup.bat file will greatly
simplify using EZMPLUS. The startup.bat file should contain the following:
	
	device 0.serial1.dvr as modm at 4

	dosparam 4 br=12

These commands will cause EZMPLUS respectively to use the serial1 driver and
name the driver modm and set the baud rate to 1200. If you desire another baud
rate	then the number to enter is equal to the baud rate divided by 100.
The driver name can also be customized and entered on the command line
as described above or changed from within the program itself by
selecting the appropriate menu option.	After EZMPLUS is loaded for the
first time it will create files on the system disk for future reference.
These files contain information relating to the phone numbers to be used
by the auto dialer and parameters governing your particular modem. The
program will update the files as you change the phone list or modify
the modem's parameters by allowing you to save the changes.

	Once EZMPLUS is loaded, the options file can be modified to meet the
specific requirements of the individual user. The user can also modify the phone
directory file through the auto dialer. The auto dialer currently does not
support redial although it does specify a redial interval. This is a feature
that is planned for the future. Also planned for the future is command file
execution. There will be a special command file language defined much the same
as the one for PROCOMM (tm) from DATASTORM TECHNOLOGIES. PROCOMM is a modem
program for the IBM PC. EZMPLUS was designed to be similar in operation to
PROCOMM.


	 FILE TRANSFERS

	Whenever a filename is requested, wild cards may be used. Strange things
will happen if you specify any wildcard filenames to the prompt for a file-
name for an XMODEM transfer. XMODEM will only transfer one file at a time
and the other end will not be ready to send or receive the second file.
Although you may be allowed to specify a filename with wildcards for XMODEM
transfers, I highly recommend against it. Wildcards may be used to transfer
files using YMODEM BATCH mode though. In fact that is the whole idea behind
the batch mode. This mode allows you to give one command to transfer multi-
ple files. Wild card expansion is specified thus:

	The mask can contain any of the following elements:

	c
literal character
	?
any character match except endstring null
	[..]	character class (all of these characters)
	[^..]	negated character class (all but these characters)
	^c		negated character (all but this character)
	*
zone (match zero or more occurences)

	A character class consists of zero or more of the following
	surrounded by [ and ]:

	c1-c2	range of ASCII characters
	c1-c2..c1-c3 multiple ranges

	examples:

	foo*.*


will match all files starting with 'foo' as the first three
	characters and the remaining 5 characters can be anything. The
	extension can be any combination of three charactres.

	*foo.bar


will match any filename whose first 5 charactres can be any-
	thing and the last three characters are 'foo'. The extension must
	be 'bar'.


OTHER SUPPLIED PROGRAMS

	Also included with the EZMPLUS diskette are some 'C' programming utilities.
The program XARC.COM, also provided, will allow you to unarchive files that
have been archived with the program PKARC version 3.5. This is very handy
since most of the files on most bulletin boards are presented in this format.
A $25.00 donation is requested (not required) for XARC. Subscribers to XARC
will receive the ARCING program as soon as it is finished for no charge.
The C programming utilities are provided as FREEware (not SHAREware) since
they were merely ported from another system and are not original works. Both
EZMPLUS and XARC are original works that required a lot of time to research and
develop.


	PROGRAM MENU DISPLAYS

The help menu will appear shortly after EZMPLUS is invoked and will display
at the top of the screen the program version, current date and the
current time. The hot-key setup in EZMPLUS are self-explanatory and very easy
to use. They are briefly described below to assist those who are not familiar
with the operation of communications software as powerful as EZMPLUS.

The hot-key selections are as follows:

	F1=Auto Dialer
	F2=Baud rate select [1200]
	F3=Capture buffer toggle [OFF] 0/912543
	F4=Disk Directory
	F5=File mode select [Binary]
	F6=Block size toggle [1024]
	F7=Receive mode toggle [CRC]
	F8=Name new device [MODM]
	F9=Option file edit
	F10=View capture buffer
	PgDn=Receive file
	PgUp=Send file
	ALT-X=Quit to DOS
	ALT-H=Display Help Screen
	ALT-C=Clear Screen

	Enter command:

EZMPLUS is now in terminal mode and is waiting for the user to select one
of the above choices.

F1 will display the Auto Dialer submenu which allows the selection from a
list of up to 50 user-entered phone numbers along with a brief
description of associated info such as bbs name, baud rate, etc. Other
features of the auto-dialer are listed at the bottom of the screen and
their use is self-explanatory/prompting.

F2 allows the user to enter a different baud rate from 300 to 19,200.

F3 toggles the capture buffer on/off and shows the bytes captured/free

F4 lists the current work directory

F5 select from ascii, binary or cpm file formats

F6 select block size (128 or 1024)

F7 toggle between CRC or CHECKSUM error protocols

F8 name a new device driver for EZMPLUS to access

F9 display submenu to allow customization of modem dial string, dial
command suffix, connect string, connect wait time, redial pause time,
device name, and printer device number.

F10 list capture buffer contents to output device

PgDn notify EZMPLUS to receive file from other computer

PgUp notify EZMPLUS to send file to other computer

ALT-H display help screen

ALT-C clear screen (useful in maintaining readability of screen)

ALT-X exit to operating system

The program will, depending on the option selected, prompt for
additional information from the user and will also inform when an invalid
selection is attempted. Please note that when certain toggle functions are
requested, such as capture buffer, the toggle will take place without
notification to the user. Should confirmation be desired, simply press
ALT-H to display the help screen which will list the current status of most
program options.

	
	PROGRAM BUGS

The program has been rigorously tested and all known bugs have been
eliminated.	In the unlikely event that any bugs are discovered, users are
encouraged to report them to the SYSOP (Michael Evenson) and they will be
quickly exterminated.

	
