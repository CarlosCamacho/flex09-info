# KERMIT

> Source: `misc/uncategorized/S09-010 - PL9 Development.zip!S09-010.DSK!KERMIT.HLP`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

0Help available:
 BYE	CONNECT	EXIT	FINISH	FLEX	General	GET
 QUIT	RECEIVE	SEND	SERVER	SET	SHOW	STATISTICS
 TAKE	TRANSMIT
1BYE
 This command will cause Kermit-09 (when in local mode)	to	tell	the
 other	Kermit	(which	should	be in server mode) to exit from Kermit
 and, if applicable, terminate	its	job	(or	process,	etc.).	When
 Kermit-09	receives	the	acknowledgement that this is being done, it
 will exit to FLEX.


Kermit-09>BYE
1CONNECT
 The CONNECT command will	allow	you	to	connect	in	as	a	virtual
 terminal over the line that was specified by the SET LINE command, or
 to the terminal line specified in the	command.


Kermit-09>CONNECT
 or

Kermit-09>CONNECT address

 where address is the hexadecimal terminal port address to be used.
1EXIT
 The	EXIT command	will cause	Kermit to	return to the	FLEX command
 level. It is the same as the 'QUIT' command.


Kermit-09>EXIT
1FINISH
 This command will cause Kermit-09 (when in local mode)	to	tell	the
 other	Kermit	(which	should be in server mode) to exit from Kermit.
 After	receiving	the	acknowledgement	that	this	is	being	done,
 Kermit-09 will prompt for another command.


Kermit-09>FINISH
1FLEX
 This command	provides the	user with a	possibility to execute	FLEX
 commands. Make sure that	the command called	resides in the	utility
 command space (hex C100 - C6FF). If this is not the case,	bad things
 might happen!


Kermit-09>FLEX
 or

Kermit-09>FLEX command

 Where command is a legal FLEX command string.	There will be a prompt
 for the string when not given.
1GENERAL
 Type ctrl-X to abort a	single file	transfer in progress,	or ctrl-Z
 to abort the current file and all coming files.

 Typing a ctrl-D during file transfer will toggle debug mode on / off.
 An open debug log file will be closed.

 Wild cards known in filespecs are '*',	which stands	for	"match all
 characters" or '?', which stands for "match one character".
1GET
 This command will cause the other Kermit (which should be running	in
 server mode)	to transmit one or	more files to Kermit-09.	Kermit-09
 must	be running as a local	Kermit (i.e., no SET LINE REMOTE command
 may	be done).	Kermit-09	will then	request	the	other	Kermit	to
 transfer the specified file (or set of files) to Kermit-09.	The file
 specification must be in the format of the system on which the server
 Kermit is running.


Kermit-09>GET file-spec [,file-spec...]

 Where	"file-spec" is any	valid file specification on the	system on
 which the server Kermit is running.
1QUIT
 The	QUIT command	will cause	Kermit to	return to the	FLEX command
 level. It is the same as the 'EXIT' command.


Kermit-09>QUIT
1RECEIVE
 The	RECEIVE command	is used	to put	Kermit-09	into	receive	mode
 waiting	for	a	single	file	transfer	transaction.	If	no	file
 specification	is given,	Kermit-09	will	store	the incoming	files
 under the names specified in the received packets. If one filespec is
 given,	the incoming	file will be stored	under	that name,	so that
 strange filenames can be overruled.


Kermit-09>RECEIVE
 or

Kermit-09>RECEIVE file-spec

 Where "file-spec" is a valid FLEX file specification.
1SET
 The SET command is used to set various parameters in Kermit.

 Commands available:

 BAUD
BLOCK_CHECK_TYPE CONFIGURATION	DEBUG
DELAY
 DUPLEX
EIGHT_BIT_QUOTE	END_OF_LINE	ESCAPE		FILE_TYPE
 HANDSHAKE	INCOMPLETE	LINE
LOG
PACKET_LENGTH
 PADCHAR		PADDING
QUOTE
REPEAT_QUOTE	RETRY
 START_OF_PACKET TIMEOUT
WARNING


Kermit-09>SET command
2BAUD
 This command sets the baud rate to use for communications.


Kermit-09>SET BAUD n

 Where n is one of 50, 75, 110, 135, 150, 300, 600, 1200, 1800, 2400,
 3600, 4800, 7200, 9600, 19200. (If the hardware supports it).
2BLOCK_CHECK_TYPE
 The SET BLOCK_CHECK_TYPE command is used to	determine	the	type	of
 block	check	sequence	which	will be used during transmission.	The
 block check sequence is used to detect	transmission	errors.	There
 are	three	types	of	block	check	available.	These are the single
 character checksum (default), the two	character	checksum,	and	the
 three character CRC (cyclic redundancy check).	This command does not
 ensure that the desired type of block check will be used, since	both
 Kermit's involved in the transfer must agree on the block check type.
 Kermit-09 will request that the type	of	block	check	set	by	this
 command be used for a transfer.	If the other Kermit has also had the
 same block check type requested, then the desired	block	check	type
 will be used.	Otherwise, the single character checksum will be used.
 (See Kermit protocol manual for more information.)


Kermit-09>SET BLOCK_CHECK_TYPE n

 Where n is a number of 1 - 3.
2CONFIGURATION
 This command determines the type of parity and the data length to use
 on	the transmission line.	Kermit	normally	uses	characters	which
 consist of eight data bits	with no	parity	bit.	For	systems which
 require	a	specific parity	type or	data	length,	Kermit can	send
 characters as seven data bits plus a parity bit.


Kermit-09>SET CONFIGURATION number

 Where number is one of:

 0.	Seven data bits, even parity and two stop bits.
 1.	Seven data bits, odd parity and two stop bits.
 2.	Seven data bits, even parity and one stop bit.
 3.	Seven data bits, odd parity and one stop bit.
 4.	Eight data bits, no parity and two stop bits.
 5.	Eight data bits, no parity and one stop bit (default).
 6.	Eight data bits, even parity and one stop bit.
 7.	Eight data bits, odd parity and one stop bit.
2DEBUG
 The SET DEBUG command is used to set the debug type out on the user's
 terminal. The command will accept either the keywords ON, OFF or LOG.
 Kermit-09 can only do debugging type	out	when	running	as	a local
 Kermit	(no	SET LINE REMOTE	command	done).	This	is	because the
 debugging type-out would interfere with the file transfer if it	were
 sent to the controlling	terminal line in	remote mode.	If 'LOG'	is
 specified,	a filename	must be given.	All debug	info will	then be
 displayed on the screen as well as in the log file. This can be	very
 handy in debugging transfer problems.	An eventual open log file will
 be closed if 'ON' or 'OFF' is specified.


Kermit-09>SET DEBUG state
 or

Kermit-09>SET DEBUG LOG file-spec

 Where state is either 'ON' or 'OFF'.
2DELAY
 The DELAY parameter is the number of seconds to wait	before	sending
 data	after	a SEND command is given.	This is used when Kermit-09 is
 running in remote mode to allow the user time to escape back	to	the
 other Kermit and give a RECEIVE command.


Kermit-09>SET DELAY number-of-seconds

 Where number of seconds is the (decimal) number	of	seconds to	wait
 before sending data.
2DUPLEX
 The SET DUPLEX command specifies whether characters should	be echoed
 locally	when CONNECTing to another system.	If DUPLEX is set to	ON,
 any	character	typed	on	the	terminal will	be	echoed immediately
 to	the	terminal,	as	well	as being sent to the other	system.	If
 DUPLEX	is set to OFF (the	default),	the	characters typed	on	the
 terminal	are only sent to the other system (which would normally	be
 echoing the characters).


Kermit-09>SET DUPLEX keyword

 Where keyword is either ON or OFF.
2EIGHT_BIT_QUOTE
 This command sets the character to be used (when necessary) to	quote
 characters	which	have the eight bit (parity bit) set.	This is used
 to transfer eight-bit bytes	on	a	transmission	medium	which	only
 supports	seven	data	bits.	The	default value	is $26 (ASCII "&").
 Eight-bit quoting will only be used if both Kermit's can	handle	it,
 and the transmission	medium	does	not transmit	eight data bits (as
 indicated by the SET CONFIGURATION command).


Kermit-09>SET EIGHT_BIT_QUOTE n

 Where n is the ASCII character to	use	for quoting	characters which
 have	the eight	bit set.	The character	'N' will disable	eight_bit
 quoting.
2END_OF_LINE
 This will set the end of line	character	the	Kermit-09	expects	to
 receive	from	the	remote	Kermit.	This	is	the	character	which
 terminates a packet.	The default value is $13 (ASCII CR, CTRL-M).


Kermit-09>SET END_OF_LINE n

 Where	n is the	value of the	character to	use for the end of	line
 character (in hex).
2ESCAPE
 This	command	will	set	the	escape	character	for	the	CONNECT
 processing.	The	command will take the ascii value of the character
 to use as the escape character.	This is the character which is	used
 to	"escape"	back	to Kermit-09 after using the CONNECT command.	It
 defaults	to	^ (hex 5E).	It is usually a	good	idea	to	set	this
 character	to	something which is not used (or at least not used very
 much) on the system being to which Kermit-09 is CONNECTing.


Kermit-09>SET ESCAPE character

 Where character is the ASCII character to use as the escape character.
2FILE_TYPE
 This command will set the file type that Kermit is receiving.	A file
 type	of	ASCII	should be used to receive text files which are to be
 used as text files on the FLEX system. The file type BINARY should be
 used for binary files, such as FLEX .CMD files, which need to be kept
 in a format that allows the file to be returned without any changes.


Kermit-09>SET FILE_TYPE type

 Where type is either ASCII or BINARY.
2HANDSHAKE
 This	command sets the	characters used to synchronize the data	flow.
 If the	input buffers	become full,	the stop character	will be sent.
 The	start character will be	sent if	Kermit is	able to receive data
 again. The defaults are XOFF (hex 19) and XON (hex 17).


Kermit-09>SET HANDSHAKE start stop

 Where start and stop are hexadecimal numbers.
2INCOMPLETE
 The	SET INCOMPLETE allows the user to determine what	is done	with a
 file	that is not completely received. If the disposition is KEEP, all
 files	received will be kept, even if	only a portion	of the file	is
 received.	If the	disposition is DISCARD (the	default),	files which
 are not completely received are discarded.


Kermit-09>SET INCOMPLETE keyword

 Where keyword is either DISCARD or KEEP.
2LINE
 This	will set the terminal line that you are using.	It may be either
 a	hexadecimal address,	or 'REMOTE'	to indicate that	the line	from
 which	KERMIT gets	it's commands will be used.	Kermit	automatically
 detects the type of interface being used.


Kermit-09>SET LINE address

 Where address is either 'REMOTE' or the hexadecimal port address to be
 used.
2LOG
 This	will open	a log file	where the data from	the CONNECT command
 will be stored. The file will be closed when Kermit is terminated, or
 when the filespec is a dash ("-").


Kermit-09>SET LOG file-spec


 Where "file-spec" is a valid FLEX file specification.
2PACKET_LENGTH
 This will set the packet length. The value for this parameter must be
 between 10 and 94.	Packet lengths outside of this range are illegal.
 The default value is 94.


Kermit-09>SET PACKET_LENGTH n

 Where n is a decimal number.
2PADCHAR
 This parameter is the padding character that is sent	to	the	remote
 Kermit. The parameter must be a decimal number	in the range of 0	to
 31. The default value is 0	(an ASCII NUL).


Kermit-09>SET PADCHAR n

 Where n is the	value of the character to be used as a	pad character
 (in decimal).
2PADDING
 This command will set the number of padding characters that	will	be
 sent to the other Kermit.	The default value is 0.


Kermit-09>SET PADDING n

 Where n is the decimal number of padding characters to use.
2PROMPT
 This command allows you to set the prompt of Kermit.	This is	useful
 if you are working	with two Kermit's	and get confused to	which one
 you are talking to.


Kermit-09>SET PROMPT string

 Where string is any character string up to twenty characters.
2QUOTE
 This will set the quoting character that	Kermit-09	will	expect	on
 incoming	messages.	This	is	the	character	used to quote control
 characters.	The default value is $23 (ASCII "#").


Kermit-09>SET QUOTE n

 Where n is the ASCII character to be used as a quoting character.
2REPEAT_QUOTE
 This command sets the character to be used as the	lead-in	character
 for	a	repeat sequence (a string of characters which represents some
 number of characters which are repeated in the data).	Both	Kermit's
 must	support	repeat	compression	for	this	to	be in effect.	The
 character set by this command must be in the range $21	("!")	to $3E
 (">") or $7B ("{") to $7E ("~") or $60 ("`"). The character will only
 be	used on	files	which are being transmitted	by	Kermit-09.	The
 REPEAT_QUOTE character used for	incoming files is	decided on by the
 other Kermit. The	default value is $7E ("~").


Kermit-09>SET REPEAT_QUOTE character

 Where	character	is	the	ASCII	character	for	the	repeat quoting
 character. The character 'N' will disable repeat compression.
2RETRY
 This command sets the maximum number of times Kermit-09 should try to
 send or receive a specific packet. The default value is 10.


Kermit-09>SET RETRY n

 Where n is the decimal number of retries to attempt.
2START_OF_PACKET
 This command will set the start of packet character for Kermit.	The
 start	of packet character	must be in the range of 0 to 31	decimal.
 The default value is 1 (ASCII SOH, CTRL-A).	This value	should	only
 be changed if absolutely	necessary.	It must be set the same in both
 Kermit's.


Kermit-09>SET START_OF_PACKET n

 Where n is the value of the character to be used as a start character
 (in hex).
2TIMEOUT
 This will set the number of seconds before Kermit-09	will	time	out
 the	attempt	to	receive a message.	This time out is used to handle
 transmission errors which totally lose a message.	The default	value
 is 5 seconds.


Kermit-09>SET TIMEOUT n

 Where n is the number of seconds to wait for a message (in decimal).
2WARNING
 This	will set	the	filename conflict	warning flag.	If	Kermit	is
 directed to store an incoming file under a name which already exists,
 and the warning is on,	an attempt will be made	to create a new	and
 non-existing filename.	If the flag is off, the existing file will be
 overwritten. The default is 'ON'.


Kermit-09>SET WARNING state

 Where state is 'ON' or 'OFF'.
1SEND
 The SEND command will allow you	to	send	a	file(s)	to	the	other
 Kermit.	The SEND command will allow file wild card processing as is
 found in UNIX. If Kermit-09 is running in remote mode, the file	will
 be	sent on the controlling terminal line after waiting the number of
 seconds specified by the SET DELAY command.	This gives the user time
 to	escape	back to the other Kermit and issue a receive command.	If
 Kermit-09 is running in local mode, the file will be sent immediately
 on the terminal line specified by the SET LINE command.


Kermit-09>SEND file-spec [,file-spec...]

 Where "file-spec" is any normal FLEX file specification.	Wild cards
 are fully supported.
1SERVER
 This command will cause Kermit-09 to enter server	mode.	The	other
 Kermit	can	then	issue	server	commands	to send and receive files
 without having	to	give	SEND	or	RECEIVE	commands	to	Kermit-09.
 Kermit-09	may	be	put	into	SERVER	mode while running as either a
 remote Kermit (transmitting over the controlling terminal	line),	or
 as	a	local	Kermit (transmitting over a terminal specified by a SET
 LINE command).	Note that in order to correctly receive binary	files
 while	in	SERVER mode, a SET FILETYPE BINARY must be done first.	At
 this time there is no way	for	Kermit-09	to	determine	whether	an
 incoming file is ASCII or binary.


Kermit-09>SERVER
1SHOW
 The SHOW command will allow you to show the various	parameters	that
 are set with the SET command.

 Commands available:

 ALL
BAUD
BLOCK_CHECK_TYPE CONFIGURATION	DEBUG
 DELAY
DUPLEX
EIGHT_BIT_QUOTE	END_OF_LINE	ESCAPE
 FILE_TYPE	HANDSHAKE	INCOMPLETE	LINE
LOG
 PACKET_LENGTH	PADCHAR
PADDING
QUOTE
REPEAT_QUOTE
 RETRY
START_OF_PACKET	TIMEOUT
WARNING


Kermit-09>SHOW command
1STATISTICS
 The transfer statistics of Kermit-09 will be displayed. This includes
 the	number of characters	that have been sent	and received from the
 remote Kermit.	Also included	is an estimate of the effective	baud-
 rate of the	transfer (only if a hardware	clock is available).	This
 number	is not intended	to be exact,	but only an indication of what
 range of throughput has been provided.


Kermit-09>STATISTICS
1TAKE
 This command allows KERMIT commands to be executed from a file.	This
 makes a quick change of parameters possible. The file may contain any
 valid KERMIT commands, including other TAKE commands.


Kermit-09>TAKE file-spec

 Where "file-spec" is a valid FLEX file specification.
1TRANSMIT
 This command allows you to send a file "as it is", without	protocol.
 That might be useful if the other side doesn't have a Kermit.


Kermit-09>TRANSMIT file-spec

 Where "file-spec" is a valid FLEX file specification.
