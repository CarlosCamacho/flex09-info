# SHARE

> Source: `utilities/communications/F_SHARE - Communications Utilities - Documentation and Examples.zip!F_SHARE.DSK!SHARE.MAN`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,VT 5
,CE 1
SHARE
,SP 3
,PL 64
,ju
,ll 70
,in 10

	SHARE is a program which turns your system from a single terminal system into a system capable of supporting up to 8 terminals or 7 terminals plus a serial printer.	
,SP 1
	SHARE is not a multi-user system in the strict sense of the word, however, it does give the user the ability to access the computer from several different remote locations at any time.	The limitation exists that only allows one program to run at any particular time.
,SP 1
	SHARE also has several internal commands which can be used to customize the I/O at any time.	The normal control port, (E004) in most systems, is defined as the master port and cannot be dis-abled.	The other ports, including the printer, may be selecqtively enabled or dis-abled.	The master can also request privacy by dis-abling all other ports.	Note that by dis-abled, only the screen display function is dis-abled, the keyboard will still be active and anything typed on a remote terminal will appear on the master screen.	The number of ports on-line can be increased or decreased at anytime.

The syntax is:

SHARE

	The internal commands are as follows with the allowable access availqability from each port.	All commands are preceded by a control C (3).

	EX: ^ch	-	Toggles the printer port.

If it was enabled, it now is dis-abled.	If it was dis-abled, now is enabled.
,IN 4

COMMANDS:
PORTS THAT ARE ALLOWED THIS COMMAND:

	'N'
Turn port on
Any port at any time
	'F'
Turn port off		Any port at any time
	'P'
Privacy	Master port only, at any time
	'H'
Toggle printer	Any port at any time
	'A'
Add a port on-line	Any port at any time
	'S'
Take port off-line	Any port at any time
	'R'
Remote port on/off	Any port at any time

EX: ^CR2F	-	Turn off port 2
	^CR2N	-	Turn on port 2

,IN 10
,FT
,LL 70
,CE
PAGE ##

,,
,HD


,CE
SHARE

,,
,PG

	When the command has been taken and executed, the bell will ring on all enabled ports.	This is an indication of a successful command.	If the bell does not ring, it is an indication there was an error made and the command should be re-typed.
,SP 1
	Keep in mind that the character returned to FLEX is the first character hit on any port.	Thus, if a user on port 1 is working, and another user on port 4 hits a key, it will be included in the users' command on port 1.	Some discretion is advised when more than one person can access the system.	In some circumstances, such as a multi-user game for instance, the fact of first key hit taking precedence, will be desired.	The ports are handled in such a manner that the I/O address assigns the highest port least precedence.	Doing a subtract port command will delete the highest numbered port.	Executing the same command will remove the next highest port.	The order of preference for your system can be set as desired in the FDB table located at the beginning of the code.	Also, note that the master must be the first address in the FDB table and the printer, if one is being used, must be the second address in the table.
,SP 1
	Failure to follow this convention make result in some un-predictable results.	Also, this program, even though it allows a printer on-line is not designed to replace P.CMD.	It is allowed having a printer on-line only for those times when a quick and short dump is desired.	SHARE will not support hand-shaking with a printer, since an off-line condition would hang up the entire port track.	Thus, if doing a dump to the printer fills up the printer buffer, an over-run condition, where the printer loses data is to be expected.
