# HELPFILE

> Source: `misc/uncategorized/MSIBOOT1 - FLEX Software Archive - Bootable FLEX System and Utilities - Includes ANE, ANR, BADSEC.zip!MSIBOOT1.DSK!HELPFILE.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

The HELP command prints	out	helpful	documentation	on	various
 system features.	The command:

+++HELP
 Will print out this message.

+++HELP <NAME>
 Will look for, and print out the info about	the	system	feature
 named in <NAME>, for example.

+++HELP DIR
 Will print out info on the DIRECTORY command.
 Only the first 8 characters of the argument are looked	at,	they
 must be A-Z, a-z, or 0-9.


$Would you like more information on something. ( Y or N ) ?
*
&What would you like information on ( <CR> for all ) ?

 HELP is available for the following:

	The following is a list of various commands
 and files on the system drive (usually #0)
 with a brief description of what they do.

	.CMD is a command
	.TXT is a text file
	.SYS is a system file
	.LOW is a command that runs in low memory
	.BAK is a backup file
	.DAT is a data file
	.BAS is a basic file in ASCII
	.BAC is a basic file compiled
	.BIN is a binary file
	.OUT is a file for spooling

	Please refer to the FLEX users guide or
 the manual for more information.

$ * USE INTERNAL PROMPT
 NAME	TYPE - COMMENTS

APPEND	.CMD - +++APPEND,<file spec>[,<file list>],<file spec>
@
	This is used to append or concatenate two or more files,
 creating a new file as the result.
ASMB	.CMD - +++ASMB,<file spec>,[<file spec>],+[options]
@
	This is the TSC assembler, see the TSC manual for more info.
ASN	.CMD - +++ASN[,W=<drive>],[,S=<drive>
@
	Where <drive> is a single digit drive number or the letter A.
 'A' refers to ALL drives.
BASIC	.CMD - +++BASIC [<file spec>]
@
	Where <file spec> defaults to the .BAC extension and
 the work drive.
BUILD	.CMD - +++BUILD <file spec>
@
	Where <file spec> defaults to .TXT and the work drive.
 This is a simple text input with no editing. the # is
 used to exit like EDIT.
CAT	.CMD - +++CAT [<drive>],[<matchlist>]
@
	Where drive defaults to the work drive and matchlist will
 list all that match.
CHECK	.CMD - +++CHECK <file spec 1>,<file spec 2>
@
	This is used to compare two disk files. Results reported
 on the terminal.
CMPMEM	.CMD - +++CMPMEM <file spec>
@
	This compares the contents of a binary file and memory
 where it should be loaded. It reports the differences
 on the terminal.
COLD	.CMD - +++COLD
@
	This jumps to $200 which is the cold start address of
 ASMB and EDIT and also PR. It saves reloading.
CONCAT	.CMD - +++CONCAT <file spec list>
@
 This allows the listing and concatenation of several files
 either to the disk (If O.CMD used) or the output device. TTL P

 ORG $A100

PR1 EQU $ACFC
FCB EQU $A840
LSTTRM EQU $AC11
EOL EQU $AC02
PAUSE EQU $AC09
POUT EQU $ACE4
FMS EQU $B406
LOAD EQU $AD30
PINIT EQU $ACC0
OUTCH EQU $AD0F
RENTER EQU $AD06
PSTRNG EQU $AD1E
RPTERR EQU $AD3F
FMSCLS EQU $B403
WARMS EQU $AD03

P BRA P1

 FCB 1 VERSION #

P1 LDAA PR1 CHECK SYS PROCESS FLAG
 BEQ P12 IS IT BUSY
 LDX #FCB
 LDAB #27 SET BUSY ERR
 STAB 1,X PUT IN FCB
 BRA P3 REPORT ERR
P12 LDAA LSTTRM
 CMPA #$D CR?
 BEQ P8
 CMPA EOL
 BEQ P8
 CLR PAUSE DISABLE PAUSE
 LDAA POUT SEE IF PRINT.SYS IN MEM
 CMPA #$39 RTS IF NOT IN MEM
 BNE P15 IF NOT THEN LOADED
 LDX #FCB
 LDAA #1 OPEN FOR READ
 STAA 0,X
 JSR FMS
 BNE P2 CHECK FOR ERR
 LDAA #$FF SET FOR BIN READ
 STAA $3B,X SET COMPRESSION FLAG
 JSR LOAD CALL LOADER
P15 JSR PINIT INIT PORT
 LDX #POUT GET OUTPUT ADDRESS
 STX OUTCH+1 STUFF IN FLEX
 JMP RENTER RETURN TO FLEX

P2 LDAA 1,X GET ERROR CODE
 CMPA #4 IS IT NO SUCH FILE
 BNE P3
 LDX #NOPST NO PRINT.SYS MSG
P25 JSR PSTRNG
 BRA P4

P3 JSR RPTERR REPORT ERR
P4 JSR FMSCLS CLOSE ALL FILES
 JMP WARMS RETURN TO FLEX

P8 LDX #ERSTR NO COMMAND AFTER P
 BRA P25

* STRINGS

NOPST FCC '"PRINT.SYS" NOT FOUND'
 FCB 4
ERSTR FCC '"P" MUST BE FOLLOWED BY A COMMAND'
 FCB 4
*
*
*
 ORG $A843

 FCB $FF
 FCC 'PRINT'
 FCB 0,0,0
 FCC 'SYS'

 END P
