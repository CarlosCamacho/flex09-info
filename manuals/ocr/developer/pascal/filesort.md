# FILESORT

> Source: `dev/pascal/PL4 - Pascal Language - Documentation and Examples.zip!PL4.DSK!FILESORT.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

TTL M6809 FILE CATALOGING UTILITY
 STTL FILESORT V6.3C	(4/6/80 --- BRIAN F. BAILEY	WB4MMP)
 OPT PAG
 PAG
 ORG $0600 (Relocatable code)
*
*
*	FILESORT V6.3C COPYRIGHT 1980 BY BRIAN F. BAILEY	WB4MMP
*	Modified to work with ASM. October 2, 1983 by Kent Meyers.
*
*
*	"FILESORT" is a program for the cataloging of FLEX2 and FLEX9
*	disk files.	It has commands for reading, writing, cataloging,
*	deleting, sorting, and printing the file list according to
*	one or more sets of user-entered parameter limits.	The program
*	is written using position-independent code for the powerful
*	MOTOROLA M6809 microprocessor.	FILESORT may be moved and
*	run anywhere in memory without any changes;	however, since the
*	initialization routine places the catalog buffer space either
*	above or below FILESORT, whichever has more room, placing FILESORT
*	near either end of memory will yield maximum catalog capacity.
*	Each file entry requires 32 bytes, which includes File Name,
*	File Extension, File Size, File Creation Date, Disk Name, Disk
*	Extension, Disk Volume Number, and Disk Creation Date.
*	The sorting subroutine is an extremely fast multiple key sort using
*	the SHELL-METZNER algorithm.	The sort may be keyed on any or all
*	of the file or disk parameters, in any order.	The cataloging
*	commands may also be followed by a parameter list with the
*	lower and upper limits of any or all parameters.
*
*
LPERPG EQU 50 Catalog entry lines per page
*
*
*	The following references are to the "FLEX" disk operating system,
*	by Technical Systems Consultants (TSC).	All references to FLEX
*	subroutines and variables are made using absolute addresses
*	since FLEX resides at a fixed address.	All subroutines and
*	variables within FILESORT are referenced using relative addresses
*	since it is position-independent.
*
TRACK EQU 30 FCB Track offset
DSKNAM EQU 80 Disk name offset in System Information Record (SIR)
FCB EQU $C840 File Control Block
ESCRTN EQU $CC16 Escape return pointer
OUTFLG EQU $CC22 Output flag
MEMEND EQU $CC2B User memory limit
FMS EQU $D406 File Management System
FMSCLS EQU $D403 Close all open files
RPTERR EQU $CD3F Report disk error
OUTDEC EQU $CD39 Output decimal number
GETFIL EQU $CD2D Parse file specification
INCHR EQU $CD15 Input single character
INBUFF EQU $CD1B Input characters to line buffer
LINBUF EQU $CC14 FLEX line buffer pointer
OUT EQU $CD18 Output character
GETCHR EQU $CD15 Input character
PCRLF EQU $CD24 Print CR, LF, and null(s)
DOCMND EQU $CD4B Process FLEX command line
WARMS EQU $CD03 FLEX re-entry point upon FILESORT termination
*
*	"FILESORT" begins here:
*
BEGPRG EQU * Program origin address
FILSRT BRA COLD Bypass version number and branch to cold start
VERSN FCB 63 Version number
WARM LBRA MNLOOP Warm start
COLD LBRA INIT Cold start
*
*	The following variables are local to FILESORT.	Since they are
*	referenced either by PCR addressing, or relative to the U
*	register which is the variable base register initialized with
*	PCR addressing, this program is completely position-independent.
*	The U register is initialized so that all of the variables may
*	be accessed using the shorter five bit signed offset.	The equates
*	represent the offset from the base U register value.
*
VARBEG RMB 59 Reserve space for variables and stack
VARBSE EQU VARBEG+14 Make use of 5 bit signed offset
I EQU -14 SHELL-METZNER sort index
J EQU -12 SHELL-METZNER sort index
K EQU -10 SHELL-METZNER sort index
L EQU -8 SHELL-METZNER sort index
M EQU -6 SHELL-METZNER sort index
BUFBEG EQU -4 Address of start of catalog buffer
BUFEND EQU -2 Address of end of catalog buffer
BUFPTR EQU 0 Catalog buffer pointer
SIZE EQU 2 Size of catalog buffer
START EQU 4 Starting address for sort
PAGENO EQU 6 Current page number
LINENO EQU 8 Line number on current page
*
 RMB 256

STACK EQU * Top of stack
SCHTBL RMB 20 Sort key table
ENDSCH EQU SCHTBL+17 Reserve default key storage
*
*	"LO" and "HI" are the lower and upper parameter limit tables.
*
LO RMB 32 Lower table
HI RMB 32 Upper table
*
*	"CMDTBL" contains the available commands and the offsets from
*	CMDTBL of the processing subroutines for each command.
*
CMDTBL FCC /R/ Read catalog file from disk
 FDB CMDR-CMDTBL
 FCC /W/ Write catalog file to disk
 FDB CMDW-CMDTBL
 FCC /C/ Catalog disk
 FDB CMDC-CMDTBL
 FCC /P/ Print data
 FDB CMDP-CMDTBL
 FCC /T/ Output to terminal
 FDB CMDT-CMDTBL
 FCC /D/ Delete one or more catalog entries
 FDB CMDD-CMDTBL
 FCC /N/ Clear buffer for new entries
 FDB CMDN-CMDTBL
 FCC /E/ End FILESORT
 FDB CMDE-CMDTBL
 FCC /S/ Sort buffer
 FDB CMDS-CMDTBL
 FCC /X/ Process FLEX command
 FDB CMDX-CMDTBL
 FCB 0 End-of-table flag
*
*	"PRMTBL" contains the parameter names and associated values
*	(offset from beginning of catalog entry, length of parameter,
*	and parameter data type).
*
PRMTBL FCC /FN/,0,8,0,/FE/,8,3,0,/FD/,11,3,$FF
 FCC /FS/,14,2,1,/DN/,16,8,0,/DE/,24,3,0
 FCC /DV/,27,2,1,/DD/,29,3,$FF,/XX/,$FF,0,0,0
*
*	MESSAGES:
*
TTL FCC $FF,$FF,!FILESORT V6.3C	4/6/80 BRIAN F. BAILEY	WB4MMP!,4
STTL FCC $FF,$FF,/FILENAME EXT	SIZE	DATE	DISKNAME EXT	VOL#	DATE/
 FCC $FF,$FF,4
PAGE FCC /	PAGE /,4
NOTFND FCC $FF,/WHAT?/,$07
PROMPT FCC $FF,$FF,/===>	/,4
SYNERR FCC $07,$FF,/*** SYNTAX ERROR ***/,4
DRVRDY FCC $FF,/READY?	/,4
DUPMSG FCC $FF,/CHECKING FOR DUPLICATION/,4
NTCAT FCC $FF,/*** NOT A CATALOG FILE ***/,4
DSKNOT FCC $07,$FF,/*** DISK READ ERROR ***/,4
OVRMSG FCC $07,$FF,/*** BUFFER OVERFLOW ***/,4
SURMSG FCC $FF,/Are you SURE?	/,4
*
*	The program code begins here:
*
*
INIT LEAS STACK,PCR Point to stack area
 LEAX MIDPNT,PCR Point to middle of FILESORT
 CMPX MEMEND Compare with FLEX user memory limit
 BHI ALL If above, use all of user memory for buffer
 LDD MEMEND Get FLEX memory end value
 LSRA Divide MSB by two
 RORB Divide LSB by two using carry (if any) from MSB
 PSHS D Save on stack
 CMPX 0,S++ Compare with midpoint of program and restore stack
 BHI LOWMEM If higher, use low memory for buffer
 LDD MEMEND Get memory end again
 LEAX ENDPRG,PCR Point to end of FILESORT
 EXG D,X Exchange pointers
 BRA SETBUF Set buffer parameters
LOWMEM LEAX BEGPRG-1,PCR Point to byte before FILESORT
 BRA LOWLIM Set lower limit
ALL LDX MEMEND Get FLEX user memory end
LOWLIM CLRA Clear MSB of lower limit
 CLRB Clear LSB of lower limit
SETBUF LEAX -32,X Allow for buffer overflow
 STX BUFEND+VARBSE,PCR Set buffer end location
 STD BUFBEG+VARBSE,PCR Set buffer start location
 STD BUFPTR+VARBSE,PCR Set buffer pointer to initial value
*
*	MAIN PROGRAM LOOP
*
MNLOOP LEAS STACK,PCR Point to stack area
 LEAU VARBSE,PCR Set variable base register
 LEAX <MNLOOP,PCR Point to warm start location
 STX ESCRTN Set FLEX escape return register
 LDA #$FF Output flag for terminal
 STA OUTFLG Direct output to terminal
 LEAX TTL,PCR Point to title message
 LBSR OUTLN Print it
 LEAX PROMPT,PCR Point to prompt
AGAIN LBSR OUTLN Print message
 JSR INBUFF Get command line
 LDY LINBUF Get FLEX line pointer
 LEAX CMDTBL,PCR Point to command subroutine table
GETCMD LDA 0,Y+ Get character and increment pointer
 CMPA #$20 Is it a space?
 BEQ GETCMD Skip it if yes
CMDLOP CMPA 0,X Compare with entry in command table
 BEQ CMDFND Branch if found
 LEAX 3,X Point to next entry
 TST 0,X Check for end-of-table flag
 BNE CMDLOP Check next entry if not
 LEAX NOTFND,PCR Point to error message
 BRA AGAIN Print it and get new command
CMDFND LDD 1,X Get command subroutine offset from table
 LEAX CMDTBL,PCR Point to command table base address
 JSR D,X Command subroutine address = base + offset
 BRA MNLOOP Get next command
*
*	"CHKPTD" checks the parameter line syntax for the "P", "T",
*	and "D" commands.
*
CHKPTD BSR DELIM Skip delimiter
 PSHS Y Save line pointer
 BCS CHKEOL Branch if end-of-line
CHKLP LBSR PARSE Parse file specification limits
 BNE CHKERR Branch on syntax error
 BCC CHKLP Check next parameter unless at end of line
CHKEOL PULS Y,PC Restore line pointer and return if syntax correct
CHKERR LEAX SYNERR,PCR Point to syntax error message
 LBSR OUTLN Print it
 BRA MNLOOP Get new command (stack is re-initialized)
*
*	"CHKRWC" checks the parameter line syntax for the "R", "W",
*	and "C" commands.
*
CHKRWC BSR DELIM Skip delimiter
 BCS CHKERR Branch on error (no file name or drive number)
 PSHS Y Save line pointer
 BSR CHKPTD Check file specification limits
 PULS Y,PC Restore line pointer and return if syntax correct
*
*	"DELIM" advances the line pointer to the character after the
*	next delimiter (space, comma, or semicolon), or to the C/R
*	if at the end of the line.
*
DELIM LDA 0,Y+ Get character and increment pointer
 CMPA #$0D Is it a C/R?
 BEQ DMEOL Branch if yes
 CMPA #$20 Is it a space?
 BEQ DLMFND Branch if yes
 CMPA #', Is it a comma?
 BEQ DLMFND Branch if yes
 CMPA #'; Is it a semicolon?
 BEQ DLMFND Branch if yes
 BRA DELIM Check next character
SKPSPC LEAY 1,Y Increment pointer by one
DLMFND LDA 0,Y Check next character
 CMPA #$20 Is it a space?
 BEQ SKPSPC Skip it if yes
 ANDCC #$FE Clear carry bit
 RTS Return
DMEOL LEAY -1,Y Point to C/R
 ORCC #$01 Set carry bit
 RTS Return
*
*	The "R" command reads a catalog file from disk.	The default
*	extension is ".CAT" and the command may include lower and
*	upper parameter limits.
*
CMDR BSR CHKRWC Check command line syntax
 BSR OPENRD Open file for read
 LBSR READ Get catalog file flag
 CMPA #$03 Is it correct?
 BNE NOTCAT Branch if not a catalog file
RLOOP1 LBSR PARSE Parse file match specification(s)
 BCS XCLOSE Close file and return if done
NXTFIL LDX BUFPTR,U Get current buffer pointer
 LDB #32 Set counter to 32 bytes (one entry)
RLOOP2 LBSR READ Get byte from disk
 BCS RDEOF Branch on end-of-file
 STA 0,X+ Save byte and increment pointer
 DECB Decrement counter
 BNE RLOOP2 Repeat until done
 LDX BUFPTR,U Get buffer pointer again
 LDA 0,X Get first byte of file name
 BMI RDEOF Branch if end-of-file flag
*
*	NOTE:	It is necessary to flag EOF because if the file length
*		is not an integer multiple of 256 bytes then FLEX will
*		pad the last sector with zeroes;	although this will
*		not affect a text file, a catalog file is binary data,
*		but is not in record format like a FLEX binary file.
*
 LBSR MATCH Check if file is within parameter limits
 BNE NXTFIL Try next file if not
 LEAX 32,X Include this file in buffer
 CMPX BUFEND,U Compare with buffer limit
 BHS OVRFLW Branch on buffer overflow
 STX BUFPTR,U Save new pointer value
 BRA NXTFIL Check next file
NOTCAT LEAX NTCAT,PCR Point to message
 BRA OVRNOT Print it, close file, and return
RDEOF LBSR PARSE Parse next file match specification
 BCS XCLOSE Close file and return if done
 BSR REWIND Rewind file to beginning for next set of parameter limits
 BSR READ Skip catalog file indicator
 BRA NXTFIL Continue checking files
OVRFLW LEAX OVRMSG,PCR Point to overflow message
OVRNOT LBSR OUTLN Print it
XCLOSE BSR CLOSE Close file
 LBRA DUPLCT Check for duplicate entries
*
*	"OPENRD" opens a file for read.
*
OPENRD BSR FILNAM Get file specification and set up FCB
FMSBIN BSR FMSJMP Open file for read
 LDA #$FF Load binary file flag
 STA 59,X Save in FCB
 RTS Return
FMSJMP JSR FMS Call FMS
 BEQ RDRTN Return if no error
DSKERR JSR RPTERR Report disk error
 JSR FMSCLS Close all files
 LBSR DUPLCT Check for duplicate entries
 LBRA MNLOOP Branch to main program loop
RDRTN RTS Return
*
*	"OPENWT" opens a file for write.
*
OPENWT BSR FILNAM Get file specification and set up FCB
 INC 0,X Increment FMS function code to "open for write"
 BRA FMSBIN Open file and return
*
*	"FILNAM" sets up the file FCB.
*
FILNAM STY LINBUF Set up line buffer pointer for "GETFIL"
 LDX #FCB Point to FCB
 JSR GETFIL Parse file specification
 LBCS CHKERR Branch on syntax error
 LDX #FCB Point to FCB
 TST 12,X Check extension
 BNE NTDFLT Skip default extension if one is present
 LDA #'C Load first letter of default extension
 STA 12,X Save in FCB
 LDA #'A Load second letter of default extension
 STA 13,X Save in FCB
 LDA #'T Load third letter of default extension
 STA 14,X Save in FCB
NTDFLT LDA #1 FMS "open for read" function code
 STA 0,X Save in FCB
 LBRA DELIM Skip file name in line buffer and return
*
*	"REWIND" Rewinds a file for re-reading.
*
REWIND LDA #5 FMS "rewind file" function code
REWCLS LDX #FCB Point to FCB
 STA 0,X Save in FCB
 BRA FMSBIN Rewind binary file
*
*	"CLOSE" closes a file.
*
CLOSE LDA #4 FMS "close file" function code
 BRA REWCLS Close file and return
*
*	"READ" reads one byte from the disk.
*	"WRITE" writes one byte to the disk.
*	Since these routines are functionally equivalent, the same code
*	is used for both.
*
READ EQU * Read routine
WRITE EQU * Write routine
 PSHS X Save buffer pointer
 LDX #FCB Point to FCB
 JSR FMS Call FMS
 BEQ RWRTN Return if no error
 LDA 1,X Get error code
 CMPA #8 Is it read end-of-file?
 BNE DSKERR Branch if not
 ORCC #$01 Set carry bit
 PULS X,PC Restore pointer and return
RWRTN ANDCC #$FE Clear carry bit
 PULS X,PC Restore pointer and return
*
*	"CMDW" writes a catalog file to the disk.
*
CMDW LDX BUFBEG,U Get buffer start
 CMPX BUFPTR,U Compare with buffer pointer
 BLO CMDW1 Branch if data in buffer
 RTS Return if buffer empty
CMDW1 LBSR CHKRWC Check command line syntax
 BSR OPENWT Open file for write
 LDA #$03 Load catalog file flag
 BSR WRITE Write it to disk
CMDW2 LDX BUFBEG,U Point to beginning of buffer
 LBSR PARSE Parse file specification limit
 BCS WTDN Branch if no more
CMDW3 LBSR MATCH Check present catalog entry for parameter limit match
 BNE NOWRT Do not write file to disk if no match
 PSHS X Save pointer
 LDB #32 Set byte count to 32
WTLOOP LDA 0,X+ Get byte from buffer and increment pointer
 BSR WRITE Write byte to disk
 DECB Decrement counter
 BNE WTLOOP Repeat until done
 PULS X Restore pointer
NOWRT LEAX 32,X Point to next buffer entry
 CMPX BUFPTR,U Compare with buffer pointer (current buffer limit)
 BLO CMDW3 Check next catalog entry if lower
 BRA CMDW2 Get next parameter limit and check buffer from beginning
WTDN LDA #$FF Load end-of-file flag
 BSR WRITE Write it to disk
 BRA CLOSE Close file and return
*
*	"CMDC" reads a disk's catalog and adds the disk and file
*	attributes to the catalog buffer.
*
CMDC LBSR CHKRWC Check parameter syntax
 LDA 0,Y Get drive number
 CMPA #'0 Compare with ASCII zero
 LBLO CHKERR Print error message and return to main loop on error
 CMPA #'3 Compare with ASCII three
 LBHI CHKERR Print error message and return to main loop on error
 ANDA #$03 Convert to binary
 STA FCB+3 Set drive number in FCB
 LBSR DELIM Skip delimiter
 PSHS Y Save line buffer pointer
 PSHS Y Save line buffer pointer again
RDYQ LDD 2,S Get original Y value
 STD 0,S Save as working value
 LEAX DRVRDY,PCR Point to message
 LBSR OUTLN Print it
 JSR GETCHR Get character
 CMPA #$0D Is it a C/R?
 BEQ CMDCDN Branch if done
 CMPA #'Y Is it a "Y"?
 BNE RDYQ Repeat question if not
 LDX #FCB Point to FCB
 LDD #$0003 Track zero, sector three (System Information Record)
 STD TRACK,X Set FCB track and sector values
 LDA #9 FMS "read single sector" function code
 STA 0,X Set function code
 JSR FMS Call FMS
 BEQ DSKNM Branch if no error
ERR1 JSR RPTERR Report disk error
 LEAX DSKNOT,PCR Point to message
 LBSR OUTLN Print it
 BRA RDYQ Try next disk
CMDCDN LBSR DUPLCT Check for duplicate entries
 PULS X,Y,PC Restore stack and return
*
*	"COPY" is a block move subroutine.
*
COPY LDA 0,X+ Get byte
 STA 0,Y+ Copy it
 DECB Decrement counter
 BNE COPY Repeat until done
 RTS Return
*
*	"DSKNM" gets the file and disk attributes and saves them
*	in the catalog buffer.
*
DSKNM LEAY SCHTBL,PCR Point to variable space for disk attributes
 LEAX DSKNAM,X Add offset to pointer (point to disk specification)
 LDB #13 8 byte name + 3 byte extension + 2 byte volume number
 BSR COPY Copy disk data to variable space
*	NOTE:	Dates are stored in the disk catalog as MONTH/DAY/YEAR;
*		however, they must be stored in the buffer as
*		YEAR/MONTH/DAY for proper sorting.
 LDA 8,X Get disk year
 STA 0,Y Save it
 LDD 6,X Get disk month and day
 STD 1,Y Save it
CATLOP LDY 0,S Get parameter working pointer
 LBSR PARSE Parse parameter limits
 STY 0,S Save new pointer value
 BCC RDCAT Branch if not end of parameter limit specification
 BRA RDYQ Get next disk
RDCAT LDX #FCB Point to FCB
 LDA #6 FMS "open disk catalog" function code
 STA 0,X Set function code
 JSR FMS Call FMS
 BNE ERR1 Branch on error
 INC 0,X Increment FMS function code to "get next catalog entry"
DSKCAT LDX #FCB Point to FCB
 JSR FMS Call FMS
 BEQ GDREAD Branch if no error
 LDA 1,X Get error code
 CMPA #8 Is it read end-of-file?
 BNE ERR1 Branch if not
 BRA CATLOP Get next parameter specification
GDREAD LDA 4,X Check first byte of file name
 BMI DSKCAT Skip deleted files
 BEQ CATLOP Empty entry indicates end-of-directory
 LDY BUFPTR,U Get buffer pointer
 LEAX 4,X Point to beginning of file name in directory entry
 LDB #11 8 byte file name + 3 byte extension
 BSR COPY Copy data
 LDA 12,X Get file year
 STA 0,Y+ Save it and increment pointer by one
 LDD 10,X Get file month and day
 STD 0,Y++ Save it and increment pointer by two
 LDD 6,X Get file size
 STD 0,Y++ Save it and increment pointer by two
 LEAX SCHTBL,PCR Point to disk attribute variable area
 LDB #16 16 bytes of disk attributes
 BSR COPY Copy disk data to buffer
 CMPY BUFEND,U Check for buffer overflow
 BLO FILCHK Branch if no overflow
 LEAX OVRMSG,PCR Point to overflow message
 LBSR OUTLN Print it
 BSR DUPLCT Check for duplicate entries
 LBRA MNLOOP Return to main loop (stack is re-initialized)
FILCHK LDX BUFPTR,U Get buffer pointer again
 LBSR MATCH Is file within parameter match limits?
 BNE DSKCAT Try next file data if no
 LEAX 32,X Point to next available space in catalog buffer
 STX BUFPTR,U Save new pointer value
 BRA DSKCAT Get next file data
*
*	"DUPLCT" is a subroutine which checks the catalog buffer for
*	duplicate entries.	It is called after the "R" and"C" commands,
*	and deletes identical entries which could result from reading
*	catalog files containing the same entries, from cataloging
*	the same disk twice with the "C" command, or from having
*	one or more files which match several different sets of
*	parameter limits.
*
DUPLCT LEAX DUPMSG,PCR Point to message
 LBSR OUTLN Print it
 LDX BUFBEG,U Point to beginning of catalog buffer
ID1 CMPX BUFPTR,U Compare with current buffer end
 BHS PACK Pack deleted entries if higher or same
 LEAY 32,X Set Y pointer to next entry
ID2 CLRB Clear byte counter
 LDA 0,Y Check for deleted entry
 BEQ ID4 Skip deleted entry
ID3 LDA B,X Get byte
 CMPA B,Y Compare it
 BNE ID4 Branch if entries not identical
 INCB Increment counter
 CMPB #32 Compare to limit
 BLO ID3 Repeat until done
 CLR 0,Y Flag identical entry as deleted
ID4 LEAY 32,Y Advance pointer to next entry
 CMPY BUFPTR,U Compare with buffer end
 BLO ID2 Check next file if lower
 LEAX 32,X Advance X pointer
 BRA ID1 Continue checking files
*
*	"CMDD" is a subroutine to delete all files which match the
*	given parameter limits.	After all matching files have been
*	flagged as deleted, the remaining files are packed in the buffer.
*
CMDD BSR SURE Make sure command is intended
 LBSR CHKPTD Check parameter line syntax
CMDD1 LBSR PARSE Parse file parameter limits
 LDX BUFBEG,U Point to start of buffer (carry is not affected)
 BCS PACK Branch if ready to pack data
CMDD2 LBSR MATCH Is file within limits?
 BNE NODEL Do not delete it if not
 CLR 0,X Flag file as deleted
NODEL LEAX 32,X Point to next file
 CMPX BUFPTR,U Compare with current buffer end
 BLO CMDD2 Check next file entry if lower
 BRA CMDD1 Parse next parameter limit
PACK LDX BUFBEG,U Point to start of buffer
PK1 TST 0,X Is file flagged as deleted?
 BNE NXTPCK Advance pointer if not
 TFR X,Y Copy pointer to Y register
PK2 LEAY 32,Y Point to next entry
 CMPY BUFPTR,U Is Y pointing past the current buffer end?
 BHS NOMORE Branch if no more undeleted entries
 TST 0,Y Check entry for deletion indicator
 BEQ PK2 Try next one if this one is flagged as deleted
 LDB #32 Set up counter for one entry (32 bytes)
MOVLP LDA 0,Y+ Get byte and increment pointer
 STA 0,X+ Move byte and increment pointer
 DECB Decrement counter
 BNE MOVLP Repeat until done
 CLR -32,Y Flag moved file as deleted
 BRA PK3 Check pointer against limit
NXTPCK LEAX 32,X Point to next entry
PK3 CMPX BUFPTR,U Compare with current buffer end
 BLO PK1 Check next file if lower
 RTS Return
NOMORE STX BUFPTR,U Set new buffer end
 RTS Return
*
*	"CMDN" clears the catalog buffer and restarts FILESORT.
*
CMDN BSR SURE Make sure command is intended
 LBRA INIT Restart FILESORT
*
*	"CMDE" ends FILESORT and returns to FLEX.
*
CMDE BSR SURE Make sure command is intended
 JMP WARMS Jump to FLEX warm start location
*
*	"SURE" is a subroutine to prevent accidentally entering the
*	"N" or "E" command through mistyping and thereby erasing
*	the entire catalog buffer inadvertantly.
*
SURE LEAX SURMSG,PCR Point to message
 LBSR OUTLN Print it
 JSR GETCHR Get answer
 CMPA #'Y Is answer yes?
 LBNE MNLOOP Get new command if not (stack is re-initialized)
 RTS Return
*
*	"CMDT" and "CMDP" are the command subroutines to output the
*	catalog entries to the terminal and printer respectively (note
*	that the "P" command assumes that the system print driver is
*	available;	e.g. using "P,FILESORT" to call this program).
*	Each file is checked against the parameter list(s).
*
CMDP CLR OUTFLG Clear output flag for printer
 BSR CMDT Print catalog list
 DEC OUTFLG Set output flag for terminal
TDONE RTS Return
CMDT CLRA Clear MSB of initial page number value
 CLRB Clear LSB of initial page number value
 STD PAGENO,U Save it
 LDX BUFBEG,U Point to start of catalog buffer
 CMPX BUFPTR,U Is buffer empty?
 BEQ TDONE Branch if buffer empty
*
*	NOTE:	The following three lines are used with my
*		homebrew time/date board and firmware.
*
*	PSHS	X,Y,U	Save registers
*	JSR	GETTIM	Update time and date values
*	PULS	X,Y,U	Restore registers
*
 LBSR CHKPTD Check parameter syntax
TLOOP1 LBSR PARSE Parse parameter limits
 LBCS FMFEED Output form feed and return if done
 LDX BUFBEG,U Get buffer start
 PSHS X Save buffer pointer
 BSR NEWPG Output heading for new page
TLOOP2 LDX 0,S Get buffer pointer
 LBSR MATCH Check whether file is within parameter limits
 BNE NXTPT Skip file if not
 BSR OUTFIL Print file attributes
NXTPT LDX 0,S Get pointer again
 LEAX 32,X Point to next entry
 STX 0,S Save new value
 CMPX BUFPTR,U Past last entry?
 BLO TLOOP2 Check next file if not
 LEAS 2,S Restore stack
 BRA TLOOP1 Output files for next parameter list
OUTFIL LBSR PRTNAM Print file name and extension
 LDB #1 Count for one space
 BSR SPC Print the space
 PSHS X Save pointer
 LEAX 3,X Point to file size
 LDB #$FF Set leading space flag
 JSR OUTDEC Print decimal number
 LDB #1 Count for one space
 BSR SPC Print the space
 LDX 0,S Get pointer
 LBSR PDATE Print file date
 LDB #4 Count for four spaces
 BSR SPC Print the spaces
 LDX 0,S Get pointer again
 LEAX 5,X Point to disk attributes
 LBSR PRTNAM Print disk name and extension
 STX 0,S Save pointer
 LDB #1 Count for one space
 BSR SPC Print the space
 LDB #$FF Set leading space flag
 JSR OUTDEC Print decimal number
 LDB #2 Count for two spaces
 BSR SPC Print the spaces
 PULS X Get pointer again and restore stack
 LEAX 2,X Point to disk date
 BSR PDATE Print disk date
 JSR PCRLF Print CR/LF
 DEC LINENO,U Decrement line number
 BNE OLRTN Return if not zero
NEWPG BSR FMFEED Advance to next page
 JSR PCRLF Print CR/LF
 JSR PCRLF Print CR/LF
 LEAX TTL,PCR Point to page heading
 BSR OUTLN Print it
*
*	NOTE:	The following three lines are used with my
*		homebrew time/date board and firmware.
*
*	PSHS	X,Y,U	Save registers
*	JSR	PTIMDT	Print time and date
*	PULS	X,Y,U	Restore registers
*
 LEAX PAGE,PCR Point to page number message
 BSR OUTLN Print it
 LEAX PAGENO,U Point to two byte binary page number
 LDB #$FF Set leading space flag
 JSR OUTDEC Print decimal number
 LEAX STTL,PCR Point to subtitle heading
 BRA OUTLN Print it and return
FMFEED LDB #LPERPG Load number of catalog lines per page
 STB LINENO,U Save it as line counter
 TST OUTFLG Test output flag
 BNE SKIPFF No form feed for terminal (screen would be erased)
 LDA #$0C Load ASCII form feed character
 JSR OUT Print it
SKIPFF LDD PAGENO,U Get current page number
 ADDD #1 Increment it by one
 STD PAGENO,U Save new page number
OLRTN RTS Return
SPC LDA #$20 Load ASCII space character
 JSR OUT Print it
 DECB Decrement space counter
 BNE SPC Repeat until done
 RTS Return
SLASH LDA #'/ Load ASCII slash character
OUTBRA JMP OUT Print it
OUTLN1 BSR OUTBRA Print character
*
*	"OUTLN" prints a character string pointed to by "X" and
*	terminated by EOT ($04).	In order to save space in messages,
*	a CR,LF, and null(s) sequence is replaced by a single negative
*	byte.	This routine then replaces the negative byte with the
*	required CR sequence.
*
OUTLN LDA 0,X+ Get character and increment pointer
 BPL ON1 Branch if positive
 PSHS X Save X register
 JSR PCRLF Print CR, LF, and null(s)
 PULS X Restore X register
 BRA OUTLN Get next character
ON1 CMPA #$04 Is message ended?
 BNE OUTLN1 Continue if not
 RTS Return
PDATE LDB #1 Count for one space
 BSR SPC Print the space
 LDA 1,X Get month
 BSR DEC Print one byte decimal number
 BSR SLASH Print slash
 LDA 2,X Get day
 BSR DEC Print one byte decimal number
 BSR SLASH Print slash
 LDA 0,X Get year
DEC PSHS X,A Save pointer and number
 CLRA Clear MSB of number
 PSHS A Save it
 LEAX 0,S Point to number on stack
 LDA 1,X Get number
 CMPA #10 Is it a one digit number?
 BHS DC1 Branch if not
 LDA #$20 Load ASCII space character
 BSR OUTBRA Print it
DC1 CLRB Clear space suppression flag
 JSR OUTDEC Print decimal number
 PULS D,X,PC Restore stack and pointer and return
PRTNAM LDB #11 8 byte name + 3 byte extension
PM1 LDA 0,X+ Get byte
 BNE PM2 Skip if non-zero
 LDA #$20 Substitute space for null character
PM2 BSR OUTBRA Print character
 CMPB #4 Is name done (ready for extension)?
 BNE PM3 Branch if not
 LDA #'. Load name/extension separator
 BSR OUTBRA Print it
PM3 DECB Decrement counter
 BNE PM1 Repeat until done
 RTS Return
*
*	"CMDX" calls the FLEX DOCMND subroutine, enabling the use
*	of FLEX utilities from FILESORT;	however, the user is
*	cautioned against using utilities which may overwrite
*	FILESORT or its buffer space.
*
CMDX LBSR DELIM Skip delimiter
 STY LINBUF Set FLEX line pointer
 JSR DOCMND Do FLEX command
 RTS Return to MNLOOP
*
*	"CMDS" establishes the sort parameters and then calls "SORT", the
*	sorting routine.
*
CMDS LBSR DELIM Skip delimiter
 LEAX ENDSCH,PCR Point to end of sort key table
 PSHS X Save it
 LEAX SCHTBL,PCR Point to beginning of sort key table
 PSHS X Save it
SLOOP1 LDD 0,Y++ Get parameter name and increment pointer by two
 CMPA #$0D Is it a C/R?
 BEQ SORTIT Branch if yes
 LEAX PRMTBL,PCR Point to parameter name table
SLOOP2 CMPD 0,X Compare name with table entry
 BEQ SFND Branch if found
 LEAX 5,X Point to next entry
 TST 0,X Check for end-of-table
 BNE SLOOP2 Check next entry if not end-of-table
SRTERR LBRA CHKERR Print error message and get new command
SFND LDD 2,X Get offset and length parameters
 LDX 0,S Get key table pointer
 STD 0,X++ Save keys in table and increment pointer by two
 STX 0,S Save new pointer value
 CMPX 2,S Check for table overflow
 BHI SRTERR Branch on overflow
 LDA 0,Y+ Get separator character
 CMPA #$0D Is it a C/R?
 BNE SLOOP1 Get next parameter if not
SORTIT LDD #$0020 Set default sort parameters
 STD 0,X Save in key table
 DECA Set accumulator A to $FF ($00-$01=$FF)
 STA 2,X Set key table end flag
 LEAS 4,S Restore stack
*
*	"SORT" is an extremely fast multiple key SHELL-METZNER sort.
*
SORT LDD BUFPTR,U Get present buffer end
 SUBD BUFBEG,U Subtract buffer start to get buffer size
 STD SIZE,U Save it
 LDD BUFBEG,U Get buffer start
 SUBD #32 Subtract 32 bytes (one entry)
 STD START,U Save it
 LDD SIZE,U Get buffer size
 STD M,U Set initial M value
*
*	The SHELL-METZNER algorithm is an extremely fast sorting method
*	which uses five indices (I, J, K, L,	and M) to search and
*	compare in a binary fashion.
*
LOOPA LDD M,U Get index M
 LSRA Divide MSB by two
 RORB Divide LSB by two, using carry (if any) from MSB
 ANDB #$E0 Round off quotient to an integer multiple of 32
 STD M,U Save new M
 BNE ST1 Continue sorting if not zero
 RTS If M=0, then the buffer is sorted;	return
ST1 LDD SIZE,U Get buffer size
 SUBD M,U Subtract index M
 STD K,U The result is K
 LDD #32 Load value for one entry (32 bytes)
 STD J,U This is the initial J value for this loop
LOOPB LDD J,U Get J
 STD I,U Initialize I (I=J)
LOOPC LDD I,U Get I
 ADDD M,U Add M
 STD L,U Save as L
 ADDD START,U Add lower boundary
 PSHS D,U Save U register and address of second entry for comparison
 LDD I,U Get I index
 ADDD START,U Add lower boundary
	PSHS D Save address of first entry for comparison
 LEAU SCHTBL,PCR Point to key table
SCHLP LDX 0,S Get first base address
 LDY 2,S Get second base address
 PULU A,B Get key table entries
*
*	A = Starting offset for comparison for this key
*	B = Number of bytes to be compared for this key
*
 TSTA Check for end of key table
 BMI LOWER End of table indicates equal entries (no switch)
 LEAX A,X Add offset to first base address
 LEAY A,Y Add offset to second base address
CMPLP LDA 0,X+ Get byte for comparison and increment pointer
 CMPA 0,Y+ Compare with byte in other entry and increment pointer
 BLO LOWER Branch if lower
 BHI HIGHER Branch if higher
 DECB Decrement key length counter if equal
 BNE CMPLP Continue comparison with this key if count not zero
 BRA SCHLP Get next key and continue comparison
HIGHER PULS X,Y,U Restore registers
 LDB #32 Load number of bytes to be switched
 PSHS B Save counter on stack
HR1 LDA 0,X Get byte from first entry
 LDB 0,Y Get byte from second entry
 STA 0,Y+ Store first byte and increment pointer
 STB 0,X+ Store second byte and increment pointer
 DEC 0,S Decrement counter
 BNE HR1 Repeat until done
 LEAS 1,S Restore stack
 LDD I,U Get index I
 SUBD M,U Subtract index M
 BLO LOWER1 Branch if lower
 STD I,U Save as new index I
 BNE LOOPC Branch if I<>0
 BRA LOWER1 Skip next instruction
LOWER PULS X,Y,U Restore registers
LOWER1 LDD J,U Get index J
 ADDD #32 Add one entry (32 bytes)
 STD J,U Save new value
 LDD K,U Get index K
 SUBD J,U Subtract index J
 BHS LOOPB Repeat second loop if not lower
 BRA LOOPA Repeat first loop
*
*	"PARSE" is the subroutine which parses the file specification
*	limits.	The lower file specification limit is stored in the
*	32 byte "LO" area, and the upper file specification limit is
*	stored in the 32 byte "HI" area.	Flags are set as follows:
*	End-of-line:	Carry set
*	Syntax error: Zero clear, Carry clear
*	Normal exit:	Zero set, Carry clear
*	The "Y" register must point to the line portion to be parsed
*	on entry.	The routine will return when either a C/R (end of
*	line) or a semicolon (end of parameter set) is reached.
*
PARSE PSHS X Save X register
 LBSR DEFLT Set default parameter limits
PARSE1 LDA -1,Y Check previous terminator
 CMPA #$0D Is it a C/R?
 BEQ PRSEOL Process end-of-line if yes
 BSR CHKCHR Get and classify character
 BCS PRSOK Branch on null line
 BEQ PRSERR Branch on syntax error
 TFR A,B Move character to B accumulator
 BSR CHKCHR Get and classify next character
 BLS PRSERR Branch on syntax error
 EXG A,B Exchange order of characters
 LEAX PRMTBL,PCR Point to parameter table
PE1 CMPD 0,X Compare with entry in parameter table
 BEQ PE2 Branch if found
 LEAX 5,X Point to next entry
 TST 5,X Check for end-of-table past next entry
*	NOTE:	Skip last entry since "XX" is a valid parameter
*		only for sorting.
 BNE PE1 Branch if not end-of-table
 BRA PRSERR Branch (syntax error)
PE2 LDA 0,Y+ Get parameter name separator character
 CMPA #'= Is it an equals sign?
 BNE PRSERR Branch on syntax error
 LDD 2,X Get offset and length data from table
 PSHS D Save data
 LDB 4,X Get parameter data type flag
*	0 = Alphanumeric format (Name or extension)
*	- = Calendar format (Date)
*	+ = Numeric format (Size or Volume number)
 PSHS B Save flag
 LEAX LO,PCR Point to base address for lower limit
 LEAX A,X Add offset to base pointer
 BSR PRSDAT Parse data into lower limit
 LEAX HI,PCR Point to base address for upper limit
 LDB 1,S Get offset
 ABX Add offset to base pointer
 CMPA #': Check for double data separator
 BNE SAME Branch if only one value given
 BSR PRSDAT Parse data into upper limit
 BRA PRSOK1 Branch (syntax correct)
SAME LDB 2,S Get length of parameter data
SM1 LDA -32,X Get byte from LO
 STA 0,X+ Save in HI and increment pointer
 DECB Decrement counter
 BNE SM1 Repeat until done
PRSOK1 LEAS 3,S Restore stack
 LDA -1,Y Get terminator character
 CMPA #', Is it a comma (more parameters in this set)?
 BEQ PARSE1 Parse next parameter if yes
PRSOK ANDCC #$FE Clear carry bit
 ORCC #$04 Set zero bit
 PULS X,PC Restore X register and return
PRSERR ANDCC #$FA Clear zero and carry bits
 PULS X,PC Restore X register and return
PRSEOL ORCC #$05 Set zero and carry bits
 PULS X,PC Restore X register and return
CHKCHR LDA 0,Y+ Get character and increment pointer
 CMPA #$0D Is it a C/R?
 BEQ CREOL Branch if yes
 CMPA #'; Is it a semicolon?
 BEQ CR10 Branch if yes
 CMPA #', Is it a comma?
CR10 RTS Return answer
CREOL ORCC #$01 Set carry bit
 RTS Return
PRSDAT LDA 2,S Get data type flag
 BEQ NAME Branch if alphanumeric format
 BMI DATE Branch if calendar format
*	Numeric format
 BSR GETNUM Get decimal number
 STD 0,X Save in parameter limit area
 LDA -1,Y Get number terminator character
 RTS Return
GETNUM CLRA Clear MSB of total
 CLRB Clear LSB of total
 PSHS D Save on stack
NUMLP LDA 0,Y+ Get ASCII number and increment pointer
 CMPA #'0 Compare with ASCII zero
 BLO NOTNUM Branch if lower
 CMPA #'9 Compare with ASCII nine
 BHI NOTNUM Branch if higher
 ANDA #$0F Convert to binary
 PSHS A Save it
 ASL 2,S Multiply LSB of total by two
 ROL 1,S Multiply MSB of toal by two with carry (if any)
 LDD 1,S Get doubled total
 ASL 2,S Multiply LSB by two
 ROL 1,S Multiply MSB by two with carry (if any)
 ASL 2,S Multiply LSB by two
 ROL 1,S Multiply MSB by two with carry (if any)
 ADDD 1,S Add partial product
*	NOTE: N*10=(N*2*2*2)+(N*2)
 ADDB 0,S+ Add new digit to LSB of total and restore stack
 ADCA #0 Add carry (if any) to MSB of total
 STD 0,S Save new total
 BRA NUMLP Get next digit
NOTNUM PULS D,PC Get total and return
NAME LDB 4,S Get byte count
LTRLP1 BSR CLASFY Get letter and classify it
 BNE NOTLTR Branch if not valid name character
 STA 0,X+ Save in parameter limit area and increment pointer
 DECB Decrement counter
 BNE LTRLP1 Repeat until done
LTRLP2 BSR CLASFY Get letter and classify it
 BEQ LTRLP2 Branch if alphanumeric
NOTLTR RTS Return
CLASFY LDA 0,Y+ Get letter and increment pointer
 CMPA #'? Is it the "wild card" character?
 BEQ LTR Branch if yes
 CMPA #'- Is it a hyphen?
 BEQ LTR Branch if yes
 CMPA #$5F is it an underscore?
 BEQ LTR Branch if yes
 CMPA #'0 Compare with "0"
 BLO NTLTR Branch if lower
 CMPA #'9 Compare with "9"
 BLS LTR Branch if lower or same
 CMPA #'A Compare with "A"
 BLO NTLTR Branch if lower
 CMPA #'z Compare with "z"
 BHI NTLTR Branch if higher
LTR ORCC #$04 Set zero bit
 RTS Return
NTLTR ANDCC #$FB Clear zero bit
 RTS Return
DATE BSR DATNUM Get one byte decimal number
 STB 1,X Save month
 CMPA #'/ Correct separator?
 BNE DATERR Branch on syntax error
 BSR DATNUM Get one byte decimal number
 STB 2,X Save day
 CMPA #'/ Correct separator?
 BNE DATERR Branch on syntax error
 BSR DATNUM Get one byte decimal number
 STB 0,X Save year
 RTS Return
DATNUM BSR GETNUM Get decimal number
 LDA -1,Y Get separator character
 RTS Return
DATERR LEAS 5,S Restore stack
 LBRA PRSERR Return error condition
*
*	"MATCH" checks the catalog entry pointed to by "X" against the
*	lower and upper limits stored in "LO" and "HI".	It returns
*	an equal condition if the file is within the limits and a
*	not equal condition if the file is not within the limits.
*
MATCH PSHS X,Y Save registers
 LEAY LO,PCR Point to lower limit base register
 LDB #8 Load data length for file name
 BSR MCHNAM Check alphanumeric data item
 BLO NG Branch if below lower limit
 LDB #3 Load data length for file extension
 BSR MCHNAM Check alphanumeric data item
 BLO NG Branch if below lower limit
 LDB #3 Load data length for file date
 BSR MCHNUM Check numeric data item
 BLO NG Branch if below lower limit
 LDB #2 Load data length for file size
 BSR MCHNUM Check numeric data item
 BLO NG Branch if below lower limit
 LDB #8 Load data length for disk name
 BSR MCHNAM Check alphanumeric data item
 BLO NG Branch if below lower limit
 LDB #3 Load data length for disk extension
 BSR MCHNAM Check alphanumeric data item
 BLO NG Branch if below lower limit
 LDB #2 Load data length for disk volume number
 BSR MCHNUM Check numeric data item
 BLO NG Branch if below lower limit
 LDB #3 Load data length for disk date
 BSR MCHNUM Check numeric data item
 BLO NG Branch if below lower limit
 LDX 0,S Reset catalog entry pointer
 LDB #8 Load data length for file name
 BSR MCHNAM Check alphanumeric data item
 BHI NG Branch if above upper limit
 LDB #3 Load data length for file extension
 BSR MCHNAM Check alphanumeric data item
 BHI NG Branch if above upper limit
 LDB #3 Load data length for file date
 BSR MCHNUM Check numeric data item
 BHI NG Branch if above upper limit
 LDB #2 Load data length for file size
 BSR MCHNUM Check numeric data item
 BHI NG Branch if above upper limit
 LDB #8 Load data length for disk name
 BSR MCHNAM Check alphanumeric data item
 BHI NG Branch if above upper limit
 LDB #3 Load data length for disk extension
 BSR MCHNAM Check alphanumeric data item
 BHI NG Branch if above upper limit
 LDB #2 Load data length for disk volume number
 BSR MCHNUM Check numeric data item
 BHI NG Branch if above upper limit
 LDB #3 Load data length for disk date
 BSR MCHNUM Check numeric data item
 BHI NG Branch if above upper limit
 ORCC #$04 Set zero bit if entry is within limits
 PULS X,Y,PC Restore registers and return
NG ANDCC #$FB Clear zero bit if entry is outside limits
 PULS X,Y,PC Restore registers and return
MCHNAM LDA 0,X+ Get character and increment pointer
 CMPA 0,Y+ Compare character and increment pointer
 BEQ DECMCH Branch if equal
 PSHS CC Save results of comparison
 LDA -1,Y Check for "wild card"
 CMPA #'? Is it the "wild card" character?
 BNE NH1 Branch if not
 PULS CC Restore stack
DECMCH DECB Decrement counter
 BNE MCHNAM Branch if counter not zero
 CLRB Clear carry bit
 RTS Return equal condition
MCHNUM LDA 0,X+ Get character and increment pointer
 CMPA 0,Y+ Compare character and increment pointer
 BNE NOMTCH Branch if no match
 DECB Decrement counter
 BNE MCHNUM Branch if counter not zero
 CLRB Clear carry bit
 RTS Return equal condition
NOMTCH PSHS CC Save condition codes
NH1 DECB Decrement counter
 BEQ MTCHDN Branch if done
 LEAX 1,X Increment catalog entry pointer
 LEAY 1,Y Increment parameter limit pointer
 BRA NH1 Repeat
MTCHDN PULS CC,PC Restore condition codes and return comparison
*
*	"DEFLT" sets the default values for all of the parameter
*	limits which are not explicitly set by the user.
*
DEFLT LEAX LO,PCR Point to lower parameter limit table
 LDB #11 Set counter for 8 byte name + 3 byte extension
 LDA #'? Load "wild card" character
FILL1 STA 48,X Store in upper disk name limit
 STA 32,X Store in upper file name limit
 STA 16,X Store in lower disk name limit
 STA 0,X+ Store in lower file name limit and increment pointer
 DECB Decrement counter
 BNE FILL1 Repeat until done
 LDB #5 Reset counter for remaining bytes
 CLRA Clear A accumulator
FILL2 DECA Upper limit = $FF
 STA 48,X Store in upper disk area
 STA 32,X Store in upper file area
 CLRA Lower limit = $00
 STA 16,X Store in lower disk area
 STA 0,X+ Store in lower file area and increment pointer
 DECB Decrement counter
 BNE FILL2 Repeat until done
 RTS Return
ENDPRG EQU *
MIDPNT EQU ((ENDPRG-BEGPRG)/2)+BEGPRG Program midpoint
 END FILSRT
