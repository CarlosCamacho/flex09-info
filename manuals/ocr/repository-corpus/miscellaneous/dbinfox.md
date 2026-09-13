# DBINFOX

> Source: `misc/uncategorized/S09-010 - PL9 Development.zip!S09-010.DSK!DBINFOX.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.PL 64
.DM HD
:SP 2
.IF %-1 .TL '''Data base program'
:SP 2
.NS
.OS
..
.DM FT
:SP 3
.TL ''-%-''
:PG
..
.DM PP
.SP
.NL 5
.SI 3
..
.AT 1 HD
.AT -5 FT
.LM 4
.CE 7
.DW
=====	D B A S	=====
.DH
.LM 8

A data base management program

Developed by CAD-TEK Datateknik,Jarfalla,Sweden

Copyright (C) CAD-TEK Datateknik, J{rf{lla

=======================

.JU N
'DBAS' is a general, very flexible data base program
for storing, modifying and listing of data records.

 Three files belong to this package:

 'DBASINFO' :
:IN 15
The file you are reading now
.IN 0
 'DBASINIT' :
.IN 15
This program is used to define the record
for a specific data base, and to generate
the 'status' file (extension .STA) and
to initialize the data file (extension .RAN)
.IN 0
 'DBAS' :
:IN 15
This is the main program for storing,modifying,
deleting and listing of records.
.IN 0
.SP
The programs run with XBASIC from TSC (FLEX).
56 k of memory is required (including the 8k used by
the operating system).

The programs are basically self explanatory, but a few
complementary notes will be given below.

A record may contain up to 50 fields.Maximum record size
permitted is 252 locations total (se below).
 A field may be :
	1) a string (1..80 characters= 1..80 locations)
	2) a floating point number (=8 locations)
	3) an integer number (=2 locations)
	4) an 'automatic' date field (=8 locations)
	There is also a special field called
	5) 'kronor-field' of type floating point number but
	with a special output formatting suitable for
	currency amount.
Further, for each field which is defined as key field
4 more locations are required.
Any field may be defined as key field.
'Automatic' date fields are defined by setting the
name of a field:
	*DE :	for automaic insertion of date of entry of

a record
	*DC :	for automatic insertion of date of latest

modification of a record
The program (DBAS) then handles these 'date' fields
without operator intervention. They may be key fields
and they may be listed in the same way as other fields.
The format is :	yy-mm-dd

.PP
DBASINIT
.SP
As mentioned above, 'DBASINIT' generates two files, both
with the same file name (set by the user) but with
different extionsions, '.STA' and '.RAN'.
The '.STA' file is a sequential file, containing
information about the definition of the record,
current number of records in the other file, the
data file (with extension .RAN), and a map of the
deleted records.
The '.STA' file is updated by 'DBAS'.
The '.RAN' file is the real data file. Its size
is increased automatically when more records are
inserted. The number of records is limited by the
available disk space.

.PP
DBAS
.SP
Records may be entered (modified etc.) either manually
by the operator or from file. The first question put by
the program is:
	Ange om indata skall komma fr}n terminalen eller fil (RET=vagnretur)
	Indata fr}n (RET=fr}n terminal)
The operator answers with carriage return if he wants
to handle the commands himself. He gives a file name
(with extension) if he wants further input to come from
that file.
The commands are the same, irrespective of if they come
from the keyboard or from file.
The prompting sign is '>'
Available commands may be obtained by typing 'HJ[LP'.
Only the first two characters of a command are relevant.
.PP
ENTER
.SP
To enter a record:
	'NY' for manual entry (with possibility of correction)
	one record at a time
	'SE' for entry from file (or keyboard) of several records
	in sequence.
.PP
FIND
.SP
To find a record:	'S\\'.
 Search may be by
 1) record number (answer e.g. '#21' to get record #21)
 2) by key field
.IN 8
For string fields the search is 'generic'. All
records which have corresponding fields starting
with the given string will be produced by this
search.If more than one matching record is found,
the programs displays one at a time and asks
'Denna post (J-N)'.
Answering 'J' makes the displayed record the
'current' record.
(A maximum of 50 matching records may be found
at each search.)
 For the first key field a fast search method is also
 available, by means of the command VI.
 This search is performed with the aid of the auxiliary file '.F01'
 NOTE: When the command 'VI' is used the search is NOT generic.
 In this case the complete (and unique) field content is required.

.IN 0

.PP
MODIFY and DELETE
.SP
The 'current' record may be modified or deleted.
To modify : type	'MO'.
Any field may then be modified until the user is
satisfied (answer: 'N'). If he wants display of
the record : 'V'. If he simply wants to exit from the
modifying process : 'U'.

To delete : 'ST'.
The 'current' record is displayed. The user has a
chance to change his mind before the actual deletion.
(The released space is reused at later record insertion.)

.PP
LISTING
.SP
The commands connected with displaying on the terminal
and with listing on printer or on disk file are:
	'LI'	'PL'	'FL'	'F['	'GR'	'AG'	'FO'	'F\\'
.SP
Data is always immediatly avalaible (after entry) for
listing in ascending order for any key field.
The first three commands select the listing device:
	'LI' : terminal
	'PL' : printer	(operated by the 'PRINT.SYS' driver)
	'FL' : disk file (file name given by user)
 Before any of these commands is given the formatting of
 the output should be defined by the commands
	'F['	'GR'	and 'FO'.
	'F[' : select which fields should be included in the

output. Field '0' is the line 'record #...'.
	'GR' : define within which range a specific field

should be in order for the record to be

included in the listing (and the 'totaling').

Restrictions may be imposed on several fields

simultanously in this way.

(To check the current restrictions: type 'AG')
	'FO' : defines which numeric fields should be added up to

a total sum for the listed records.

Pairs of numeric fields may also be multiplied

before summing (e.g. 'number' times 'price per unit')
.PP
EXIT
.SP
To exit from 'DBAS' :
 Always by the command 'UT'.
(Avoid using Ctrl C)

	+++++++++++++++++++++++++++++++++++
