# EZM

> Source: `utilities/system/ECSUTIL - FLEX System Utilities - Documentation and Examples.zip!ECSUTIL.DSK!EZM.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

E Z M Modem program for the PT68K


running SK*DOS version 2.5


	EZM is an interactive modem program that can be used to communicate
with most Electronic Bulletin Board Systems. When EZM is invoked the
operator has the option of providing a device driver name. If no driver
is specified, the default driver name from the OPTIONS default file is
used. If there is no OPTIONS default file when EZM is loaded, it will
create one on drive 0. The default device name then becomes MODM. This
also holds true for the PHONE directory file. If no phone directory file
exists on drive 0 when EZM is invoked, one will be created with the phone
number of the 68000 BBS system already provided.

	example:


ezm emdm<cr>

	will invoke EZM and cause EZM to look for the device driver named EMDM
in the SK*DOS device driver table. EZM will then use this device driver to
communicate with the outside world.

	Once EZM is loaded, the options file can be modified to meet the specific
requirements of the individual user. The user can also modify the phone
directory file through the auto dialer. The auto dialer currently does not
support redial although it does specify a redial interval. This is a feature
that is planned for the future. Also planned for the future is command file
execution. Ther will be special command file language defined much the same
as the one for PROCOMM (tm) from DATASTORM TECHNOLOGIES. PROCOMM is a modem
program for the IBM PC. EZM was designed to be similar in operation to
PROCOMM.


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

	Also included with the EZM diskette are some 'C' programming utilities.
The program XARC.COM, also provided, will allow you to unarchive files that
have been archived with the program PKARC version 3.5. This is very handy
since most of the files on most bulletin boards are presented in this format.
A $25.00 donation is request (not required) for XARC. Subscribers to XARC
will receive the ARCING program as soon as it is finished for no charge.
The C programming utilities are provided as FREEware (not SHAREware) since
they were merely ported from another system and are not original works. Both
EZM and XARC are original works that required a lot of time to research and
develop.


Michael Evenson

200 Ginger Court

Southlake, Texas	76092

	BBS:	1-817-488-8398


	Thank you for your support
