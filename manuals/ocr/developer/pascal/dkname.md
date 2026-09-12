# DKNAME

> Source: `dev/pascal/PL4 - Pascal Language - Documentation and Examples.zip!PL4.DSK!DKNAME.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

OPT PAG
 NAM DISK NAME UTILITY
 PAG
*
*		DKNAME Disk Name Utility
*
*		Don Van Beek (V1.0)
*		John Higley (extensively revised to V2.0)
*		Component Engineering
*		Tektronix, Inc.
*
*		Misc Equates
DRVLOC EQU 3 Loc of Drive number in FCB
TRKLOC EQU 30 Loc of track and sector for reading
NAMLOC EQU 80 Loc of disk name
EXTLOC EQU 88 Loc of disk extension
VLMLOC EQU 91 Loc of disk volume number
*
*		FLEX Variables
BUFPTR EQU $CC14
LSTTRM EQU $CC11 Last terminator from line buffer
WRKDRV EQU $CC0C Working drive number
*
*		FLEX routines
INBUFF EQU $CD1B
INDEC EQU $CD48
NEXTCH EQU $CD27
OUTDEC EQU $CD39
PCRLF EQU $CD24
PSTRNG EQU $CD1E
PUTCHR EQU $CD18
RPTERR EQU $CD3F
WARMS EQU $CD03
*
*		FMS routines
FMSCLS EQU $D403
FMSCLL EQU $D406
*
*		File Control Block
FCB EQU $C840
*
 ORG $C100
DKNAME BRA START
VERSION FCB $21 Version 2.1 2 Dec 81
START JSR INDEC Get drive number
 BCS WORKING Invalid..use working drive
 TSTB .any number?
 BEQ WORKING . No, use working drive
 TFR X,D Drive number into B
 ANDB #3 Remove garbage (0-3 only)
 BRA SETDRV
WORKING LDB WRKDRV Get working drive number
SETDRV LDX #FCB Point to FCB
 STB DRVLOC,X Put drive num into FCB
 LDD #$0003 Set up to read system trk and sec
 STD TRKLOC,X Store track and sec into FCB
 LDA #$09 Set for read a sector
 STA $00,X
 JSR FMSCLL Read the sector
 LBNE ERROR .report any error
 LDX #DSKNAM
 JSR PSTRNG Put out disk name
 LDX #FCB+NAMLOC .Point to it
 LDB #8 .Eight characters
 LBSR PSTNGL
 LDA #'. Put out disk extension
 JSR PUTCHR .Output a dot
 LDB #3 .Three characters
 LDX #FCB+EXTLOC .Point to disk ext
 BSR PSTNGL . Output it
 LDX #VOLNUM Output the volume number
 JSR PSTRNG
 LDX #FCB+VLMLOC
 JSR OUTDEC
 JSR PCRLF
 LDX #DSKNAM Get new disk name
 JSR PSTRNG .output disk name messsage
 LDA #'? .make it a question
 JSR PUTCHR
 JSR INBUFF . answer into line buffer
 LDY BUFPTR Point to buffer
 LDA 0,Y Change the name?
 CMPA #$0D .CR?
 BEQ NOCHNG .Yes. No name change
*
*		Get name and extension from buffer
 LDB #11 Eleven characters
 LDY #FCB+NAMLOC Point to name
NAMLUP JSR NEXTCH Get a character
 CMPA #'. A dot as a delimeter (name.ext)
 BEQ EXTENS .Yes.. next 3 for extension
 CMPA #$0D CR?
 BNE SETIT .No.. store the character in name
 LDA #0 .Yes.. remaining bytes are null
SETIT STA ,Y+ Save the byte and point to next
 DECB Done yet?
 BNE NAMLUP .No.. Get next char (CR will be maintained)
 BRA VOLUME Get volume number
EXTENS CMPB #3 3 bytes left for ext
 BEQ NAMLUP .Yes.. get them
 LDA #0 .Else.. clear rest of name
 STA ,Y+
 DECB Done yet?
 BRA EXTENS .check
VOLUME LDX #VOLNUM Get new volume number
 JSR PSTRNG .output the message
 LDA #'? .make it a question
 JSR PUTCHR
 JSR INBUFF . answer into line buffer
 LDX #BUFPTR Get volume number from buffer
 JSR INDEC
 STX FCB+VLMLOC .store it
WRITE LDX #FCB Write a single sector
 LDA #$0A
 STA $00,X
 JSR FMSCLL .do it
 BNE ERROR .report any errors
NOCHNG JSR FMSCLS Close the file and goto FLEX
 JMP WARMS
ERROR JSR RPTERR Report error, close file, goto FLEX
 JSR FMSCLS
 JMP WARMS
*
*		PSTNGL:	Output 'B' char or until null
PSTNGL LDA ,X+ Read the character
 BEQ PSTRTS .null, stop output of string
 JSR PUTCHR Output it
 DECB Done yet?
 BNE PSTNGL .No..get next char
 RTS .Yes..go back
PSTRTS CLRB Clear counter (no string left)
 RTS .go back
*
*		Messages
DSKNAM FCC /NAME OF DISK: /
 FCB 4
VOLNUM FCC /VOLUME NUMBER: /
 FCB 4
 END DKNAME
