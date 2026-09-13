# KERMIT

> Source: `misc/archive-series/bb/BB180 - BB Archive Disk - Source Code and Build Files - Includes FLBUFF, FLCONN, FLCUTL.zip!BB180.DSK!KERMIT.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

KERMIT-09 Users guide


	"FLEX-09 KERMIT
	"--------------


	Author:	Jur van der Burg
	Nettelhorst 56
	2402 LS	Alphen aan den Rijn
	The Netherlands
	Language:	C (Compiled with Introl (c) compiler)
	Version:	3.0
	Date:	July 1986


	KERMIT	for	FLEX	has it's roots in the UNIX version. It is enhanced in
	several ways, such as data logging, server mode etc.

	It	should	run	on about any version of the FLEX-09 (tm) or SK*DOS (tm)
	operating	system.	It requires 48K of memory. Hardware dependent things
	are kept in the files FLK.H and FLIO.C .

	FLEX-09 KERMIT has most of the features specified in the KERMIT Protocol
	Manual.


	 - 1	-


	KERMIT-09 Users guide


	1. Remote and Local Operation


KERMIT	programs can be run in two ways, remote and local. A remote

Kermit	is usually running on a mainframe, which you have CONNECTed

to	through	a PC or other computer. When KERMIT runs remotely, all

file	transfer	is done over the job's controlling terminal line --

the same line over which you logged in, and to which you would type

interactive	commands.	What	the system thinks is your terminal is

really	another	computer, usually a microcomputer, running its own

copy of Kermit.


When	KERMIT	is	in	"local	mode",	file transfer is done over an

external	device,	such	as	a microcomputer's serial communication

port, or an assigned terminal line on a mainframe. The local Kermit

is	connected	in	some	way	(like a dialout mechanism) to another

computer,	again	running its own copy of Kermit. A local Kermit is

in	control	of the screen, a remote Kermit has no direct access to

it.


Microcomputer	KERMITs	usually	run	in	local	"mode",	whereas

mainframe	Kermits usually need to be given some special command to

run	in	local	mode.	Some	commands	make	sense	only for remote

Kermits,	others	only	for	local,	still	others can be used with

either. Local and remote operation of KERMIT is shown schematically

here:

	Micro is Local, Mainframe is Remote:


	Communication Line
(Packets)
	+-------------------/	/-----------------+	Other terminals
	!	(!	!	!	!
	!	(!	!	!	!
	Micro	!	LOCAL	Mainframe	!	!	!	!	REMOTE
	+----------+----------+	+------------+--+--+--+--------+
	!	Serial Port	!	!
!	!
	!	!	!
!	!
	!	!	!
!	!
	!	+---------------+	!	!
Your job's	!
	!	! Packets: 724	!	!	!
terminal line	!
	!	!	!	!	!
!
	!	! File: FOO.BAR !	!	!
!
	!	+---------------+	!	!
!
	!	Screen
!	!
!
	!	!	!
!
	+---------------+-----+	+------------------------------+
	!
	! (Commands)
	!
		+------------+---------+

\	Keyboard	\

+----------------------+
	You


	 - 2	-


	KERMIT-09 Users guide


The	KERMIT	program on the micro is a local Kermit. It can control

the	screen,	the	keyboard,	and	the port separately, thus it can

update	the	screen	with	status	information, watch for interrupt

signals	from	the	keyboard,	and	transfer	packets	on	the

communications port, all at the same time.


The KERMIT program running on the mainframe is a remote Kermit. The

user	logs	in	to	the mainframe through a terminal port. The host

computer	cannot	tell	that the user is really coming in through a

microcomputer.	The	keyboard,	screen,	and port functions are all

combined	in	user's	mainframe	terminal	line. Therefore a remote

Kermit	is	cut	off	from	your	screen	and	keyboard during file

transfer.


A	KERMIT server is always remote, and must get its commands from a

local	KERMIT.	The	following	descriptions	will	indicate when a

command must be remote or local.

	2. Command Interface


The FLEX-09 implementation has an interactive keyword-style command

interface,	modeled after that of the DEC VAX/VMS operating system,

which is roughly as follows:


In response to the "Kermit-xx>" prompt you may type a keyword, such

as SEND, RECEIVE, or EXIT, possibly followed by additional keywords

or	operands,	each	of which is called a field. You can abbreviate

keywords	(but	not	file	names)	to	any	length	that makes them

distinguishable	from	any	other keyword valid for that field. The

command	is	terminated	by	a carriage return. Before the carriage

return	is	typed,	the command can be edited using RUBOUT or other

command	editing	keys.	Finally, the same command is entered again

with	a	minimum	of keystrokes, with each field abbreviated to its

shortest unique length.

	3. Notation


In the command descriptions, the following notation is used:


anything
	A	parameter	-	the symbol is replaced by an argument of
	the specified type (number, filename, etc).


[anything]
	An	optional	field.	If	omitted,	it	defaults	to	an
	appropriate value.


number
	A	whole	number,	entered	in	hexadecimal	or	decimal
	notation.


character
	A	single	character,	entered	literally, or as a number
	(perhaps	decimal	or hexadecimal) representing the ASCII
	value of the character.


file-spec
	A	file	specification, i.e. the name of a file, possibly
	including a drive number or other qualifying information,

	 - 3	-


	KERMIT-09 Users guide


	and	possibly	containing	"wildcard" or pattern-matching
	characters to denote a group of files.


^X
	A	control	character	may	be written using "uparrow" or
	"caret"	notation,	since	many	systems	display control
	characters	this	way. Control characters are produced by
	holding	down	the	key marked CTRL or Control and typing
	the appropriate character, e.g. X.


Commands	are	shown	in	upper	case,	but	can	be entered in any

combination of upper and lower case.

	4. Summary of KERMIT Commands


Here	is	a	brief list of KERMIT commands as they are found in the

FLEX-09	KERMIT program. The following sections will describe these

commands in detail.


For exchanging files:
	SEND, RECEIVE, GET


For connecting to a remote host:
	CONNECT, SET LINE, SET CONFIGURATION, SET BAUD, SET DUPLEX,
	SET HANDSHAKE, SET ESCAPE, SET PROMPT, SET LOG


For acting as a server:
	SERVER


For talking to a server:
	BYE, FINISH, GET, SEND


Setting nonstandard transmission and file parameters:
	SET BLOCK_CHECK_TYPE, SET DEBUG, SET DELAY, SET FILETYPE,
	SET INCOMPLETE, SET WARNING, SET CONFIGURATION, SET RETRY,
	SET END_OF_LINE, SET START_OF_PACKET, SET PACKET_LENGTH,
	SET TIMEOUT, SET PADDING, SET PADCHAR, SET QUOTE,
	SET REPEAT_QUOTE, SET EIGHT_BIT_QUOTE, TAKE


For interrupting transmission:
	Control-X, Control-Z


Getting information:
	HELP, STATISTICS, SHOW, Control-D


For recording the history of a file transfer operation:
	SET DEBUG LOG


For non-protocol file capture or transmission:
	SET LOG, TRANSMIT


Leaving the program:
	EXIT, QUIT


If	you have a file called KERMIT.INI in your default or home disk,

KERMIT	will	execute	an automatic TAKE command on it upon initial

startup.	KERMIT.INI	may contain any KERMIT commands, for instance

SET	commands	to	configure	KERMIT	to	various	systems	or

communications media.

	 - 4	-


	KERMIT-09 Users guide


	5. The SEND Command

	Syntax: SEND filespec [filespec2] [filspec3...]


The	SEND	command	causes	a	file or file group to be sent to the

other	system. The filespec may contain the commonly used wild-card

characters	'*'	and/or	'?',	where	'*' stands for a string match

(including	null)	and '?' stands for a single character match. Use

of	wildcard	characters	is the most common method of indicating a

group	of	files	in	a	single file specification. For instance if

FOO.BAS	is	a	single	file, a BASIC program named FOO, then *.BAS

might	be a group of BASIC programs. If filespec1 contains wildcard

characters	then	all	matching	files	will be sent, in directory-

listing	order	by name. If a file can't be opened for read access,

it	will	be	skipped. There may be a total of twenty files or file

groups specified.

	SEND Command General Operation


Files	will	be sent with their filename and filetype (for instance

FOO.BAR,	no	device	or	directory	field, no generation number or

attributes).	If	communication	line parity is being used (see SET

CONFIGURATION),	the	sending	KERMIT	will	request that the other

KERMIT	accept	a special kind of prefix notation for binary files.

This	is	an	advanced feature, and not all KERMITs have it; if the

other	KERMIT	does	not	agree	to	use this feature, binary files

cannot be sent correctly.

	SEND Remote Operation


If	you	are	running	KERMIT	remotely	(for	instance,	from	a

microcomputer),	you	should	"escape	back"	to	your local Kermit

within	a	reasonable	amount of time and give the RECEIVE command.

Don't	take	more	than about one minute to complete the switch, or

KERMIT	may	"time	out"	and give up (in that case, you'll have to

CONNECT back to the remote system and reissue the SEND command).

	SEND Local Operation


If	you're running KERMIT locally, for instance on a microcomputer,

you	should have already run KERMIT on the remote system and issued

either a RECEIVE or a SERVER command.


Once	you	give KERMIT the SEND command, the name of each file will

be	printed	on your screen as the transfer begins, and information

will	be	displayed	to	indicate	the	packet	traffic.	When	the

specified operation is complete, the program will sound a beep, and

the	status	of	the	operation	will	be	indicated by the message

Complete, Interrupted, or Failed.


If	you	see	many	packet	retry	indications,	you	are	probably

suffering	from	a noisy connection. You may be able to cut down on

the	retransmissions	by	using	SET	PACKET_LENGTH to decrease the

packet length; this will reduce the probability that a given packet

will	be	corrupted	by	noise,	and	reduce	the	time required to

	 - 5	-


	KERMIT-09 Users guide


retransmit	a	corrupted	packet.	If	you notice a file being sent

which	you do not really want to send, you may cancel the operation

immediately	by	typing	either Control-X or Control-Z. If your are

sending	a	file group, Control-X will cause the current file to be

skipped,	and KERMIT will go on to the next file, whereas Control-Z

will	cancel	sending	the entire group and return you to KERMIT-09

command level.

	6. The RECEIVE Command

	Syntax:	RECEIVE [filespec]


The	RECEIVE command tells KERMIT to wait for the arrival a file or

file	group	sent	by a SEND command from the other system. If only

one	file	is being received, you may include the optional filespec

as	the	name to store the incoming file under; otherwise, the name

is	taken	from the incoming file header. If the name in the header

is	not	a legal file name on the local system, KERMIT will attempt

to	transform	it to a legal name. If an incoming file has the same

name as an existing file, KERMIT will either overwrite the old file

or	else	try to create a new unique name, depending on the setting

of FILE WARNING.


If	you	have SET CONFIGURATION with parity, then 8th-bit prefixing

will	be	requested. If the other side cannot do this, binary files

cannot	be	transferred	correctly.	The	sending	KERMIT	may also

request that repeated characters be compressed.


If	an	incoming	file does not arrive in its entirety, KERMIT will

normally	discard it; it will not appear in your directory. You may

change	this	behavior	by	using	the command SET INCOMPLETE KEEP,

which will cause as much of the file as arrived to be saved in your

directory.

	RECEIVE Remote Operation


If your are running KERMIT remotely, you should escape back to your

local	Kermit	and give the SEND command. You should do this within

about	one	minute,	or	KERMIT	may	time out and give up; if this

happens,	you can CONNECT back to the remote system and reissue the

RECEIVE command.

	RECEIVE Local Operation


If you are running KERMIT locally, you should already have issued a

SEND command to the remote KERMIT, and then escaped back to KERMIT-

09	(not	SERVER	--	use	the	GET command to receive files from a

KERMIT server).


As	files	arrive,	their names will be shown on your screen, along

with a continuous display the packet traffic.


If	a	file	begins	to arrives that you don't really want, you can

attempt to cancel it by typing Control-X; this sends a cancellation

request to the remote Kermit. If the remote Kermit understands this

request	(not	all implementations of Kermit support this feature),

it	will comply; otherwise it will continue to send. KERMIT-09 will

	 - 6	-


	KERMIT-09 Users guide


detect	this situation and send an error packet. If a file group is

being sent, you can request the entire group be cancelled by typing

Control-Z.


	7. GET

	LOCAL ONLY -- Syntax: GET remote-filespec [filespec2...]


The GET command requests a remote KERMIT server to send the file or

file	group	specified	by	remote-filespec.	Note	the distinction

between	the	RECEIVE	and GET commands: RECEIVE puts KERMIT into a

passive	wait	state,	whereas	GET	actively	sends a command to a

server.


The	GET	command	can	be	used	only when KERMIT is local, with a

KERMIT	server	on	the	other end of the line. This means that you

must	have	CONNECTed	to	the	other system, logged in, run KERMIT

there,	issued	the	SERVER	command, and escaped back to the local

KERMIT.


The	remote	filespec	is	any	string	that	can	be	a legal file

specification	for the remote system; it is not parsed or validated

locally.	As	files	arrive,	their names will be displayed on your

screen,	along	with a continuous indication of the packet traffic.

As	in	the RECEIVE command, you may type Control-X to request that

the	current	incoming file be cancelled, Control-Z to request that

the entire incoming batch be cancelled.


If	the	remote KERMIT is not capable of server functions, then you

will	probably	get	an	error	message	back from it like "Illegal

packet	type".	In this case, you must connect to the other Kermit,

give a SEND command, escape back, and give a RECEIVE command.

	8. SERVER

	Syntax: SERVER


The	SERVER	command instructs KERMIT to cease taking commands from

the keyboard and to receive all further instructions in the form of

KERMIT packets from another system. A KERMIT server must be remote;

that	is,	you	must	be	logged	in	to the system through another

computer,	such	as a microcomputer. In addition, your local KERMIT

should	have	commands for communicating with remote servers; these

include GET, FINISH, and BYE.


After	issuing	this	command, escape back to your local system and

issue	SEND,	GET,	BYE,	FINISH, or other server-oriented commands

from	there. If your local KERMIT does not have a BYE command, then

it	does	not	have	the	full ability to communicate with a KERMIT

server	and	you should not put the remote KERMIT into SERVER mode.

If	your	local KERMIT does have a BYE command, use it to shut down

and	log	out	the	KERMIT	server	when	you are done with it. The

KERMIT-09	server	can	also	be	shutdown	by	typing Control-X or

Control-Z. Then the server will stop after the timeout.


Any	nonstandard	parameters	should	be selected with SET commands

before putting KERMIT in server mode, in particular the block check

type and special file modes.

	 - 7	-


	KERMIT-09 Users guide


	9. BYE

	LOCAL ONLY -- Syntax: BYE


When	running as a local Kermit talking to a KERMIT server, use the

BYE	command	to	shut	down and log out the server. This will also

close any debugging log files and exit from the local KERMIT.

	10. FINISH

	LOCAL ONLY -- Syntax: FINISH


When	running	as	a local Kermit talking to a remote KERMIT server

use	the FINISH command to shut down the server without logging out

the remote job, so that you can CONNECT back to it.

	11. FLEX

	Syntax: FLEX command


Execute	the specified command on the local system -- on the system

where	KERMIT	to	which	your	are typing this command is running.

These	commands	provide	some	local	file	management	capability

without	having	to leave the KERMIT program, which is particularly

useful	on microcomputers. Be sure that the programs you run reside

in the utility command space ($C100 - $C6FF).


FLEX DELETE filespec	Delete the specified file or files.


FLEX CAT [filespec]	Provide a directory listing of the specified
	!files.

	12. CONNECT

	LOCAL ONLY -- Syntax: CONNECT [terminal-designator]


Establish	a	terminal connection to the system at the other end of

the	communication	line.	On a microcomputer, this is normally the

serial	port.	On	a mainframe, you will have to specify a terminal

line	number	or	other	identifier,	either in the CONNECT command

itself, or in a SET LINE command. If a log file was opened (see SET

LOG)	then	the	data	will	be	buffered	in memory, which will be

written	to	disk	if it becomes full. Handshaking is provided (see

SET	HANDSHAKE).	Get back to the local KERMIT by typing the escape

character followed by a single character "command".


	 - 8	-


	KERMIT-09 Users guide


Several single-character commands are possible:


C	Close the connection and return to the local KERMIT.

H	Show availability.

S	Show status of the connection.

B	Send a BREAK signal.

0	(zero) Send a NUL (0) character.

Q	Quit logging session transcript.

R	Resume logging session transcript.

?	List all the possible single-character arguments.

^	(or whatever you have set the escape character to be)
	Typing the escape character twice sends one copy of it
	to the connected host.

other	Rings the bell.


You	can	use	the	SET ESCAPE command to define a different escape

character,	and	SET	CONFIGURATION,	SET	BAUD,	SET	DUPLEX,	SET

HANDSHAKE to establish or change those parameters.

	13. HELP

	Syntax: HELP [subject] [sub-subject]


Typing	HELP	alone	prints	a	brief	summary	of	KERMIT	and its

commands.	Help	about a particular topic can be obtained by giving

it as a parameter. The HELP data file will be searched on the drive

KERMIT-09 was loaded from.

	14. EXIT, QUIT

	Syntax: EXIT
	or:	QUIT


Exit	from	KERMIT.	QUIT	is a synonym for EXIT. If a log file was

used	with	CONNECT,	and	the buffer still contains data, then the

buffer will we written to disk before terminating KERMIT-09.

	15. The SET Command

	Syntax: SET parameter [option] [value]


Establish	or	modify	various	parameters	for	file	transfer	or

terminal connection.


When	a	file	transfer	operation	begins,	the	two	KERMITs

automatically	exchange	special	initialization messages, in which

each	program	provides	the	other	with certain information about

itself.	This	information includes the maximum packetsize it wants

to	receive, the timeout interval it wants the other KERMIT to use,

the number and type of padding characters it needs, the end-of-line

character	it	needs	to	terminate each packet (if any), the block

check type, the desired prefixes for control characters, characters

with	the	"high	bit"	set,	and	repeated characters. Each KERMIT

program	has	its own preset "default" values for these parameters,

and	you	normally	need	not	concern	yourself with them. You can

examine	their	values	with	the	SHOW command; the SET command is

provided	to	allow you to change them in order to adapt to unusual

conditions.


	 - 9	-


	KERMIT-09 Users guide


The following parameters may be SET:


BAUD
Set the speed of the current communications port

BLOCK_CHECK_TYPE Packet transmission error detection method

CONFIGURATION	Character parity to use

DEBUG
Mode or log file

DELAY
How long to wait before starting to send

DUPLEX
For terminal connection, full (remote echo) or

half (local echo)

EIGHT_BIT_QUOTE	Character to use for binary file transfer if

parity used

END_OF_LINE	End of line character

ESCAPE
Character for terminal connection

FILETYPE		For setting ascii or binary file type.

HANDSHAKE	Selecting flow control characters, like XON/XOFF

INCOMPLETE	What to do with an incomplete file

LINE
Terminal line to use for terminal connection or

file transfer

LOG	CONNECTion logging file

PACKET_LENGTH	Length of a packet

PADDING
Number of padding characters

PADCHAR
Padding character

PROMPT
Prompt of the local KERMIT

QUOTE
Character used to transfer control characters

REPEAT_QUOTE	Character to use for data compression

RETRY
How many times to retry a packet before give up

START_OF_PACKET	Start of packet character

TIMEOUT
Time to wait for a packet

WARNING
File conflict warning flag


	SET BAUD

	Syntax: SET BAUD number


Set	or change the baud rate (approximate translation: transmission

speed	in bits per second) on the currently selected communications

device.	In	simple	FLEX systems the only allowable baud-rates are

300 and 1200. Other interfaces may provide a complete range.

	SET BLOCK_CHECK_TYPE

	Syntax: SET BLOCK_CHECK_TYPE number


KERMIT	normally	uses a 1-character block check, or "checksum", on

each	packet.	The	sender	of	the packet computes the block check

based	on	the	other	characters	in	the packet, and the receiver

recomputes	it	the same way. If these quantities agree, the packet

is	accepted	and	the transmission proceeds. If they disagree, the

packet is rejected and transmitted again.


However,	the	block	check	is	not	a	foolproof	method of error

detection. The normal single-character KERMIT block check is only a

6-bit	quantity	(the low order 8 bits of the arithmetic sum folded

upon	itself).	With only six bits of accuracy, the chances are one	
	6

in 2	-- that is, 1/64 -- that an error can occur which will not be

detected	in	the	checksum,	assuming	that all errors are equally

likely.

	 - 10 -


	KERMIT-09 Users guide


You can decrease the probability that an error can slip through, at

the	expense	of	transmission	efficiency,	by	using	the	SET

BLOCK_CHECK_TYPE	command	to	select	more	rigorous	block	check

methods.	Note	that	all	three methods will detect any single-bit

error, or any error in an odd number of bits.


The options are:


1-CHARACTER-CHECKSUM:

	The normal single-character 6-bit checksum.


2-CHARACTER-CHECKSUM:

	A	2-character,	12-bit checksum. Reduces the probability
	of an error going undetected to 1/4096, but adds an extra
	character to each packet.


3-CHARACTER-CRC:

	A	3-character,	16-bit	Cyclic	Redundancy	Check, CCITT
	format.	In addition to errors in any odd number of bits,
	this	method	detects double bit errors, all error bursts
	of	length	16	or	less,	and	more	than	99.99% of all
	possible longer bursts. Adds two extra characters to each
	packet.


The	single	character	checksum has proven to be quite adequate in

practice,	much	more effective than straightforward analysis would

indicate,	since	all	errors	are not equally likely, and a simple

checksum	is	well	suited to catching the kinds of errors that are

typical	of	telecommunication	lines.	The other methods should be

requested only when the connection is very noisy.


Note	that the 2- and 3-character block checks are not available in

all	versions	of	KERMIT;	if	the	other KERMIT is not capable of

performing	the	higher-precision	block	checks, the transfer will

automatically use the standard single-character method.

	SET DEBUG

	Syntax: SET DEBUG options [file]


Record	the	packet	traffic, either on your terminal or in a file.

Options are:


ON	Display each incoming and outgoing packet
	(lengthy).


OFF
Don't display debugging information (this is the
	default). If debugging was in effect, turn it off
	and close any open debug log file.


LOG
Log the information to the specified file.


During	data	transfer,	debugging	can	be	toggled	on and off by

pressing Control-D. If a log file was opened, it will be closed.


	 - 11 -


	KERMIT-09 Users guide


	SET DELAY

	Syntax: SET DELAY number


Specify	how	many	seconds to wait before sending the first packet

after	a	SEND	command.	Use when remote and SENDing files back to

your local Kermit. This gives you time to "escape" back and issue a

RECEIVE	command.	The	normal delay is 5 seconds. In local mode or

server mode, KERMIT does not delay before sending the first packet.

	SET DUPLEX

	Syntax: SET DUPLEX keyword


For	use when CONNECTed to a remote system. The keyword choices are

FULL	and	HALF. FULL means the remote system echoes the characters

you	type,	HALF	means	the	local system echoes them. FULL is the

default,	and	is	used	by	most	hosts.	HALF	is	necessary when

connecting	to	IBM	mainframes.	Half duplex is also called "local

echo".

	SET ESCAPE

	Syntax: SET ESCAPE character


Specify	or	change	the character you want to use to "escape" from

remote	connections	back	to	KERMIT.	This	would	normally	be a

character	you	don't	expect	to	be	using	on the remote system,

perhaps	a control character like ^[, ^], ^^, or ^_. KERMIT-09 uses

the up-arrow ('^') by default. After you type the escape character,

you	must	follow	it by a single-character "argument", such as "C"

for	Close	Connection.	The	arguments are listed above, under the

description of the CONNECT command.

	SET FILETYPE

	Syntax: SET FILETYPE parameter


Establish file-related parameter. This may be either ASCII for text

files	or	BINARY	for	non-text	files.	This	is a very important

command	if	you	intend	to transfer binary files, but is normally

unnecessary for transmitting textual files.

	SET HANDSHAKE

	Syntax: SET HANDSHAKE start stop


For	communicating	with	full	duplex	systems.	System-level flow

control is not necessary to the KERMIT protocol, but it can help to

use	it	if	the same method is available on both systems. The most

common	type of flow control on full duplex systems is XON/XOFF. If

the	KERMIT	input	buffer is filled up to 250 characters, the stop

character is sent. If the buffer becomes empty and contains only 10

characters,	the	start	character	will	be send. The defaults for

start is XON (17), and for stop XOFF (19).


	 - 12 -


	KERMIT-09 Users guide


	SET INCOMPLETE

	Syntax: SET INCOMPLETE option


Specify	what	to	do	when	a	file	transfer	fails	before it is

completed.	The	options are DISCARD (the default) and KEEP. If you

choose KEEP, then if a transfer fails to complete successfully, you

will be able to keep the incomplete part that was received.

	SET LINE

	Syntax: SET LINE terminal-designator


Specify the terminal line to use for file transfer or CONNECT. This

command	is	found	on	mainframe	KERMITs,	which	normally run in

"remote	mode"	using	their	own	controlling	terminal	for	file

transfer.	Specifying	a	separate	line puts the program in "local

mode". If the line is specified as 'REMOTE', the communication will

revert to the job's controlling terminal.

	SET CONFIGURATION

	Syntax: SET CONFIGURATION number


Parity	is	a	technique	used	by	communications	equipment	for

detecting	errors	on	a per-character basis; the "8th bit" of each

character acts as a check bit for the other seven bits. KERMIT uses

block	checks	to	detect errors on a per-packet basis, and it does

not	use	character	parity. However, some systems that KERMIT runs

on,	or	equipment	through which these systems communicate, may be

using	character	parity.	If	KERMIT	does	not	know	about this,

arriving	data	will	have	been	modified and the block check will

appear to be wrong, and packets will be rejected.


If	parity is being used on the communication line, you must inform

both	KERMITs,	so	the	desired	parity	can	be added to outgoing

characters,	and	stripped	from	incoming	ones. SET CONFIGURATION

should	be used for communicating with hosts that require character

parity	(IBM mainframes are typical examples) or through devices or

networks that add parity to characters that pass through them. Both

KERMITs	should	be	set	to	the	same	parity.	The	specified

configuration parity is used both for terminal connection (CONNECT)

and file transfer (SEND, RECEIVE, GET).


The choices for SET CONFIGURATION are:


0.	Seven data bits, even parity and two stop bits.

1.	Seven data bits, odd parity and two stop bits.

2.	Seven data bits, even parity and one stop bit.

3.	Seven data bits, odd parity and one stop bit.

4.	Eight data bits, no parity and two stop bits.

5.	Eight data bits, no parity and one stop bit (default).

6.	Eight data bits, even parity and one stop bit.

7.	Eight data bits, odd parity and one stop bit.


Eight	bits	means no parity is affecting the data, and the 8th bit

of	each	character	can	be used for data when transmitting binary

files.


	 - 13 -


	KERMIT-09 Users guide


If	you	have	set	to	use parity then advanced versions of KERMIT

(including	KERMIT-09)	will	request	that	binary	files	will be

transferred	using	8th-bit-prefixing.	If	the KERMIT on the other

side knows how to do 8th-bit-prefixing (this is an optional feature

of	the KERMIT protocol, and not all implementations of KERMIT have

it),	then	binary files can be transmitted successfully. If eight-

bits	communication	is	specified,	8th-bit-prefixing	will not be

requested.

	SET EIGHT_BIT_QUOTE

	Syntax: SET EIGHT_BIT_QUOTE character


What	character to use to process eight_bit bytes over a line using

only	seven data bits. The sending KERMIT will ask the other KERMIT

whether it can handle a special prefix encoding for characters with

the	eighth	bit	on,	using	the	eight_bit_quote	character. This

character	should	be	distinct from the REPEAT_QUOTE character and

the	QUOTE	character.	The default is "&" (38). There should be no

reason to change this.

	SET END_OF_LINE

	Syntax: SET END_OF_LINE character


The ASCII character to be used as a line terminator for packets, if

one	is	required	by the other system, carriage return by default.

You	will	only have to use this command for systems that require a

line	terminator	other than carriage return. The character must be

specified as a hexadecimal number.

	SET LOG

	Syntax: SET LOG filespec


Create	a	transcript	of	a	CONNECT session, when running a local

KERMIT connected to a remote system, in the specified file. Logging

can be "toggled" by typing the connect escape character followed by

Q	(Quit	logging) or R (Resume logging). Session-logging is useful

for	recording	dialog	with	an	interactive	system,	and	for

"capturing"	from	systems that don't have KERMIT. No guarantee can

be made that the file will arrive correctly or completely, since no

error	checking	takes	place.	The	log file will be closed if the

filespec is a dash ("-").

	SET PACKET_LENGTH

	Syntax: SET PACKET_LENGTH number


Maximum	packet	length	to	send	between	10	and	94	(decimal).

Shortening	the	packets	might	allow	more of them to get through

through without error on noisy communication lines. Lengthening the

packets increases the throughput on clean lines.

	SET TIMEOUT

	Syntax: SET TIMEOUT number


How many seconds to wait for a packet before trying again.

	 - 14 -


	KERMIT-09 Users guide


	SET PADDING

	Syntax: SET PADDING number


How much padding to send before a packet, if the other side needs

padding. Default is no padding.

	SET PADCHAR

	Syntax: SET PADCHAR character


What	kind	of	padding	character to send. Default is NUL (0). The

character must be specified as a hexadecimal number.

	SET QUOTE

	Syntax: SET QUOTE character


What	printable character to use for quoting of control characters.

This	character	should	be	distinct	from	the	EIGHT_BIT_QUOTE

character	and the REPEAT_QUOTE character. The default is "#" (35).

There should be no reason to change this.

	SET REPEAT_QUOTE

	Syntax: SET REPEAT_QUOTE character


What	character	to	use	to	process	repeat count characters. The

sending	KERMIT	will	ask the other KERMIT whether it can handle a

special	prefix	encoding	for	repeated	characters,	using	the

repeat_quote	character. This character should be distinct from the

EIGHT_BIT_QUOTE	character	and the QUOTE character. The default is

"~" (126). There should be no reason to change this.

	SET RETRY

	Syntax: SET RETRY number


Set the maximum number of retries for how many times to try sending

a	particular	packet	before	giving up, normally 10. If a line is

very noisy, you might want to increase this number.

	SET START_OF_PACKET

	Syntax: SET START_OF_PACKET character


The	start-of-packet	character	is the only control character used

"bare"	by	the	KERMIT	protocol. It is Control-A by default. If a

bare	Control-A	causes problems for your communication hardware or

software,	you	can	use this command to select a different control

character	to	mark	the	start	of a packet. You must also set the

start_of_packet	character	at	the	KERMIT	on	the	other	system

(providing	it has such a command). The character must be specified

as a hexadecimal number.


	 - 15 -


	KERMIT-09 Users guide


	SET WARNING

	Syntax: SET WARNING keyword


Enable	or	disable the warning if an incoming file already exists,

where	the	keyword	must	be either ON or OFF. When set to ON (the

default)	and	an	incoming file already exists, an attempt will be

made	to	store	the	file under a new and unique name. When set to

OFF, an existing file will be overwritten.

	16. SHOW

	Syntax: SHOW option


The	SHOW command displays the values of the parameters settable by

the SET command. If the option is ALL, then a complete display will

be provided.

	17. STATISTICS

	Syntax: STATISTICS


Give	statistics	about	the most recent file transfer, such as the

total	number	of	characters	transmitted, the effective baud rate

(only if a hardware clock is available), and so forth.

	18. TAKE

	Syntax: TAKE filespec


Execute	KERMIT	commands	from	the	specified	file. The file may

contain any valid KERMIT commands, including other TAKE commands.

	19. TRANSMIT

	Syntax: TRANSMIT filespec


Send the contents of the specified file to the other system "bare",

without	protocol, packets, error checking, or retransmission. This

command	is	useful	for	sending	standard	logon	or	connection

sequences,	or	to	send	commands to a smart modem, or for sending

files	to	systems that don't have KERMIT. No guarantee can be made

that	the	target	system	will	receive	the	file	correctly	and

completely. When receiving a file, the target system would normally

be	running	a	text editor in text collection mode. The tranferred

data will be displayed on the screen if DEBUG is on.


	 - 16 -
