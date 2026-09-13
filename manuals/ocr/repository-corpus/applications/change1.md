# CHANGE1

> Source: `apps/screditor/PIESRC - S-CREDITOR Editor - Source Code and Build Files.zip!PIESRC.DSK!CHANGE1.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

STTL Library file "CHANGE1" - Update one screen line
 PAG
*
* "CHGL0" updates one line of the screen.
* The line number is in "ELINE"	( 2 <= ELINE <= SCRNLN+1 ).
* Only those characters that have changed are updated in order
* to minimize I/O calls to the users terminal !
*
* optimized for 6809	March, 1981
*

CHGL0 LDY #SBUF get starting address indecies
 LDX #EBUF into "SBUF" and "EBUF"
 LDA ELINE
 SUBA #2
 PSHS A
 LDB #SLINLN
 MUL multiply the number of lines by the number of characters in the line
 LEAY D,Y to get the starting address
 PULS A ELINE-2
 LDB #EBUFLN
changed
 MUL multiply the numer of lines by the number of characters per line
 LEAX D,X to get the starting address
 LDA 0,X get first character in "EBUF" line
 PSHS A save it
 LDB OFFSET get the offset into "EBUF" line
 ABX
 LDB #SEMI determine left margin character
 PULS A remember first character in line
 TSTA
 BEQ CLP1 ";" if null line (future version)
 LDB #VBAR "|" if zero offset
 LDA OFFSET
 BEQ CLP1
 LDB #LFA	"<" if non-zero offset	changed
CLP1 LDA #1 initial column
 BRA CHGL1

COLOOP LDB 0,X+ get next "EBUF" character
CHGL1 CMPB 0,Y+ same as old character ?
 BNE CHGL3 no, then update the field
CHGL2 INCA increment the column number too
 CMPA #SLINLN-1
 BLS COLOOP
 BRA CHGL8

CHGL3 STA COL save column number
 STB 0,-Y store new character
 LDB ELINE
 BSR SGOTO ( ELINE,COL )
 LDA 0,Y+ get new character ( ELINE )
 CMPA #ICTRL control character marker ?		changed
 BNE CHGL5 no
 LDA #ICTRLO yes, load output representation to avoid screen goofup !
CHGL5 ANDA #STRIP change Ctrls to printable characters for editing ...
 CMPA #RO Rubout ?
 BNE CHGL5A
 LDA #ROCHR if so, change to Rubout Chacter as previously defined
CHGL5A CMPA #$1F control ?
 BHI PUTC1 no, print it !
 CMPA #CR	eol ?
 BEQ CHGL7 yes
 CMPA #TRANS "TRANS" ctrl character ?
changed
 BEQ CHGL6
 LDA #QMARK
 BRA PUTC1

CHGL6 LDA #TRANSO output REP for TRANS ctrl character
 BRA PUTC1

CHGL7 LDA #SPAC	!changed
PUTC1 JSR OUTEEE output to CRT
 INC SCOL
 LDA COL
 BRA CHGL2

CHGL8 LDA #VBAR FIND RIGHT MARGIN CHAR
 LDB 0,X
 CMPB #CR
 BEQ CHGL9
 LDA #RTA	'changed
CHGL9 LDB 0,Y
 CBA PRINT IF DIFFERENT
 BEQ CHGLE
 STA 0,Y
 LDA #SLINLN
 LDB ELINE
 BSR SGOTO
 LDA 0,Y
 BSR CRTOUT
 CLR CUROK COL80 PRINT BOMBS CURS
CHGLE RTS
