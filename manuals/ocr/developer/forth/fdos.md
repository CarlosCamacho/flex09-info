# FDOS

> Source: `dev/forth/T4THCPY - FORTH Language - Bootable FLEX System and Utilities.zip!T4THCPY.DSK!FDOS.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

PAG
************************************************
*	KENYON MICROSYSTEMS	tFORTH	*
*	.*
*	.*
* 3350 Walnut Bend	(713) 978-6933	*
* Houston, TX 77042
*
*	.*
************************************************
 TTL Copyright 1980
 STTL Kenyon Microsystems
 OPT PAG,NOC,MAC,NOE
*
* FDOS IS A FILE CONTAINING THE ASSEMBLY LANGUAGE ROUTINES WHICH
*	INTERFACE tFORTH WITH A DISK OPERATING SYSTEM
*	AND PERFORM VARIOUS GENERAL I/O FUNCTIONS
* THIS IS	VERSION	1.0 ( 80.9.11)
*
* IT IS SUPPLIED FOR TSC FLEX 9.0
*
* THERE ARE ADDRESSES IN HERE WHICH REFER BACK INTO THE CODE
*	tFORTH AND THESE MUST NOT BE CHANGED
* THERE ARE ENTRY POINTS AT WHICH tFORTH EXPECTS TO FIND
*	VARIOUS ROUTINES, AND THESE ADDRESSES MUST NOT BE CHANGED
* THE STARTING POINT IS	FBGNIO
* THE LAST BYTE OF THESE ROUTINES MUST NOT GO BEYOND $1FFF
*
* IF NECESSARY TO USE MORE SPACE, YOUR MUST ALLOCATE IT SOMEWHERE
*	UP ABOVE THE MEMORY SPACE USED FOR VIRTUAL MEMORY DISK BUFFERS
*	STACKS, AND SIMULATED DISK.
*
********
*
*	THE NEXT WORDS ARE SYSTEM-DEPENDENT I/O SUBROUTINES
*
*
*	WRMENT	the warm restart address
*	FBGNIO	this is the address where these I/O routines are to start.
*
*	FBYTSC	the addr of # of bytes in a sector in the disk IO
*	FDSKER	the addr of byte with disk error code
* XFOUTA	location containing address of output fcb, if one
* XFINA	location containing address of input fcb, if one
* XPRTAD	location with printer base address
* XTERAD	location with terminal base address
* XPRTSP	location of byte with serial/parallel code for	printer
* XTERSP	location of byte with serial/parallel code for terminal
* XOUT	location of OUT variable
*
*
*
*<<<<<<<<<	FROM HERE TO >>>>>>>> THE ADDRESSES CAN NOT BE CHANGED
*
WRMENT	SET $23E	warm restart
FBYTSC SET $202D
FDSKER SET $2004	location of DISK error code
*
FBGNIO SET $1DA0
XFOUTA SET $2044
XFINA	SET $2042
XPRTAD SET $2032
XPRTSP SET $2034
XTERAD SET $202F
XTERSP SET $2031
XOUT	SET $2060
 ORG FBGNIO
*
*
*** * * *
*
* NOW JUMP VECTORS FOR FORTH	-	3 BYTES EACH
*
PEMITP LBRA ZEMITP	code for forth EMIT
PKEYP	LBRA ZKEYP	code for forth KEY
PQTERP LBRA ZQTERP	code for forth ?TERMINAL
PMONITR JMP [$F800] enter monitor
PINCH	JMP	[$F804] monitor get character
PINCHK JMP	[$F808] monitor test for key pressed
POUTCH JMP	[$F80A] monitor out character
PDOSW	JMP [DOSWRM]	return to DOS
PMON LBRA RESMON	close any open files and return to MONITOR
GODOS0 LBRA GODOSI	routine to set up DOS command call
PDFMS LBRA FMSCAL	routine to do call DOS	file	management sys
DSKRW0 LBRA DSKRWI disk sector IO - args on U stack
*	FORTH-BUFFER-ADDRESS -5
*	READ/WRITE CODE	- 1=READ, 0=WRITE	-4
*	SECTOR NUMBER	-3
*	TRACK NUMBER		-2
*	DRIVE NUMBER		-1
OPENF LBRA	OPENFI OPEN file - args on the U stack
*	ADDRESS OF FIRST CHAR (COUNT FIELD) OF STRING WITH
*	NAME OF FILE -3
*	READ/WRITE FLAG	1=READ,0=WRITE	-2
*	ADDRESS OF FCB	-1
*
CLOSEF LBRA CLOSFI	arg is on stack	ADDRESS OF FCB -1
REWNDF LBRA REWNDI	"	"	"	"	"	"	"
DELETF LBRA DELETI	"	"	"	"	"	"	"
*
	RMB 6	reserve space for 2 more vectors
NXTMON EQU $F802 MONITOR LOC of addr to restart,
*	i.e., JMP [NXTMON,PCR]
*
*	NOT ALL OF THESE ARE ACTUALLY USED AT PRESENT.	THE ONES WHICH ARE
*
ARE MARKED WITH < IN COMMENTS AND SO MUST BE SET TO DOS
*
LOCATION WHICH DOES EQUIVALENT FLEX FUNCTION OR YOU MUST
*
CREATE YOUR OWN ROUTINE TO DO EQUIVALENT.
*
DOSFCB FDB $C840 <address of FLEX system FCB
DOSIBF FDB $C080 <beginning of input line buffer for FLEX
DOSSDN FDB $CC0B	address of system drive number
DOSWDN FDB $CC0C <address of working drive number
DOSBPT FDB $CC14 <address of DOS line buffer pointer
DOSDET FDB $CC20 <address of FMS error type number
DOSWRM FDB $CD03 <FLEX WARMS warm start entry
DOSGFL FDB $CD2D <FLEX GETFIL get file specification
DOSEXT FDB $CD33 <FLEX SETEXT	set extension for file
DOSRER FDB $CD3F <FLEX RPTERR reprt File Managemnt Sys error
DOSCMD FDB $CD4B <FLEX call as subroutine
DOSFCL FDB $D403 <FLEX FMS CLOSE close all open files
DOSFMS FDB $D406 <FLEX FMS
*
	RMB 6	reserve space for 3 more system parameters
* GENERAL I/O ROUTINES
*
* LOW LEVEL DRIVERS
*	SUBROUTINE TO WRITE BYTE IN B TO SERIAL PORT	AT X
PSTSE1 LDA ,X get status
 BITA #2 check ready bit
 BEQ PSTSE1
 STB 1,X send character in B
 RTS
*	SUBROUTINE	TO READ BYTE FROM SERIAL PORT AT X INTO B
PATSE1 LDA ,X get status
 ASRA
 BCC PATSE1 no incomming data yet
 LDB 1,X
 CLRA
 RTS
*	subroutine to check status of ser port at X
PQSER1 LDB ,X	look	at status
 ASRB
 BCS PQSER2 if key has been pressed, get it and return
*
in B register;
 CLRB if not, return 0 - note cntl @ = NULL will
 BRA PQSER3
PQSER2 LDB 1,X puts character into B
PQSER3 CLRA
 RTS
* subroutine to initialize serial port at X
PISER1 PSHS A
 LDA #$13
 STA ,X
 LDA #$11
 STA ,X
 TST 1,X
 PULS A
 RTS
* SUBROUTINE TO INITIALIZE PARALLEL IN/OUT AT X/X+2
PIPAR1 PSHA	save A
 LDA #$2F
 STA $1,X INIT PAR IN INTERFACE
 LDA 0,X
 CLR $3,X INIT PAR OUT INTERFACE
 LDA #$FF
 STA $2,X
 LDA #$3E
 STA $3,X
 LDA $2,X
 PULS A
 RTS
*SUBROUTINE TO READ BYTE FROM PARALLEL PORT AT X INTO B
PATPA1 LDA 1,X	get status
 BPL PATPA1 if B7=0 THEN NO DATA
 LDB ,X
 RTS
* SUBROUTINE TO WRITE BYTE IN B TO PARALLEL PORT AT X+2
PSTPA1 STB 2,X
 LDA #$36
 STA 3,X
 LDA #$3E
 STA 3,X
PSTPA7 TST 3,X
 BPL PSTPA7
 LDA 2,X
 RTS
* SUBROUTINE TO TEST PAR PORT AT X FOR A BYTE PRESENT
PQPAR1 LDB 1,X look at status
 BPL PQPAR7	if no data there
 LDB ,X if key pressed get it
 BRA PQPAR8
PQPAR7 CLRB
PQPAR8 CLRA
 RTS
*
*
>>>>>>>>>>>>>	THE ABOVE CODE CAN NOT BE CHANGED
*
*<<<<<<<<<<	THE CODE BELOW MAY BE CHANGED, BUT	THE LAST ADDRESS MAY
*	NOT BE LARGER THAN	1FFF
*
*	THIS	VERSION IS FOR FLEX 9.0 WITH MF-68 DUAL DISK
* The following are variable depending upon the DOS system
*	or the monitor
*
*
ZEMITP LDX XFOUTA	load	and test to see if output file address set
 BEQ PEMIT0 if not, do	terminal	IO
 EXG A,B	get char	into A
 LBSR	PDFMS call DOS FMS
 BRA PEMIT8
PEMIT0 LDX XPRTAD test printer base address
 BEQ PEMIT1 if zero no print
 PSHS B	save chr
 LDA ,S get	chr into A
 TST XPRTSP
 BEQ PEMITS
 LBSR PSTPA1
 BRA PEMITC
PEMITS LBSR PSTSE1
PEMITC PULS B retrieve char
PEMIT1 LDX XTERAD test terminal base address
 BNE PEMIT2	if not	zero use it
 EXG A,B
 JSR POUTCH	use monitor outch routine
 BRA PEMIT8
PEMIT2 TST XTERSP
 BEQ PEMITQ
 LBSR PSTPA1
 BRA PEMIT8
PEMITQ LBSR PSTSE1
PEMIT8 LDX XOUT
 LEAX 1,X	increment by	1
 STX XOUT
 RTS
ZKEYP LDX XFINA load and test if input file address is set
 BEQ	PKEY0 if not, read from terminal or serial port
 LBSR PDFMS call DOS FMS
 BRA PKEY01
PKEY0	LDX XTERAD
 BNE PKEY1	if not zero use it
 JSR PINCH	use terminal routine in monitor
PKEY01 EXG A,B	get char into B
 BRA PKEY2
PKEY1 TST XTERSP
 BEQ PKEYS
 LBSR PATPA1
 BRA PKEY2
PKEYS LBSR PATSE1
PKEY2 CLRA
 RTS
ZQTERP CLRA
 JSR PINCHK
 BNE PQTER01
 CLRB
 BRA PQTER3
PQTER01 JSR PINCH
 EXG B,A
 CLRA
 CMPB #$1B test if it was ESCAPE KEY
 BNE PQTER3 if not, return and just	signal that key pressed
PQTER11 JSR PINCHK look for another key
	BEQ PQTER11
 JSR PINCH get	it
 EXG	B,A
 CLRA
 CMPB #$1B test to see if escape
 BNE PQTER3 if not, then pass it on
 CLRB if so, then treat as if no key pressed
PQTER3 RTS
GODOSI PULU D,X
 PSHS U,Y
 LDU DOSIBF
 STU [DOSBPT,PCR] init	LINE BUFFER POINTER
 TFR D,Y use Y as counter
GODOS1 LDA ,X+
 STA ,U+
 LEAY -1,Y
 BNE GODOS1
 LDA #$0D
 STA ,U
 JSR [DOSCMD,PCR]
 PULS U,Y
 RTS
DSKRWI LDX DOSFCB bufferad rwcode sector track drive
 LDD ,U++ get drive
 STB 3,X drive byte of FCB
 LDD ,U++ get track
 STB 30,X
 LDD ,U++ get sector
 STB 31,X
 LDD #$A WRITE FMS CODE
 SUBD ,U sub rwcode = 0 WRITE,	1 READ
 STB 0,X	store code
 TST 1,U	test rwcode
 BEQ BLKWW
BLKRR LDX DOSFCB
	JSR [DOSFMS]
	BNE RWDSE0
	LDX DOSFCB
	LEAX $40,X
	PSHS Y
	LDY 2,U
	BSR MOVXY
	BRA DSKRTN
BLKWW PSHS Y
	LDX 2,U
	LDY DOSFCB
	LEAY $40,Y
	BSR MOVXY
	LDX DOSFCB
	JSR [DOSFMS]
	BNE RWDSE0
DSKRTN PULS Y
	LEAU 4,U
	RTS
MOVXY PSHS U
	TFR Y,U
	LDY FBYTSC
BLKR1 LDA ,X+
 STA ,U+
 LEAY -1,Y
 BNE BLKR1
 PULS U
 RTS
DRSEL EQU $DE0C
RWDSE0 JSR [DOSRER,PCR] report	error
 JMP WRMENT,PCR	warm start entry point
CHKERR BNE CHKER0 if	any	error	consider what it is
 RTS otherwise	return
CHKER0 LDB 1,X get error code
 CMPB #$8 is it EOF?
 BNE RWDSE0	go report error and warm restart
 CLR XFINA clear input file FCB address so that input
 CLR XFINA+1	will be from terminal
	LDA #$D	return a	car ret	and continue
 RTS
OPENFI PSHS Y
 LDY 4,U	get addr of count byte of string for
*	name of file
 LEAY 1,Y move Y up to first character of name
 LDX DOSIBF,PCR	address of DOS input line buffer
 LDB -1,Y get number of characters in name of file
OPNL1 BEQ OPNL2	br down when out of characters
 LDA ,Y+ get next char
 STA ,X+ store in next buff loc
 DECB decr ctr
 BRA OPNL1
OPNL2 LDA #$D carriage ret denotes end of name
 STA ,X
 LDX DOSIBF,PCR get buffer address again
 STX [DOSBPT,PCR] set buffer ptr to pt to buffer beginning
 LDX 0,U get address of FCB to use for this file
 LDA [DOSWDN,PCR] get DOS working file no to use as default
 STA 3,X
 JSR [DOSGFL,PCR] call DOS GETFIL rtn to parse file name
*	%and set up FCB
 LDA #1	set default extinsion to TXT
 JSR [DOSEXT,PCR] sets extinsion to default if not given.
 LDA 3,U get READ (=1) or WRITE (=0 ) code from	stack
 LEAU 6,U	drop all arguments from stack
 PULS Y
 BNE FMSCL1
 LDA #2	0 = WRITE	, IN FLEX, WRITE IS COMMAND 2
 BRA FMSCL1
FMSCLL LDX ,U++ get FCB address from stack and drop it
FMSCL1 STA 0,X
FMSCAL JSR [DOSFMS,PCR]
 BSR CHKERR
 RTS
CLOSFI LDA #$04	FLEX CLOSE FILE
 BRA FMSCLL
REWNDI	LDA #$5 FLEX REWIND AN OPEN FOR READ FILE
 BRA FMSCLL
DELETI LDA #$0C	DELETE FILE FROM DISK ( CLOSE FIRST)
 BRA FMSCLL
RESMON JSR [DOSFCL,PCR] close all open files
 JMP [NXTMON,PCR] next monitor command processor
FDOSIN EQU *-1 this address FDOSIN must assemble to be <= 1FFF
