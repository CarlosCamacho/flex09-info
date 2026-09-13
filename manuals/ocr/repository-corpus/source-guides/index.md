# INDEX

> Source: `sourcecode/library-disks/LIB22 - FLEX Source Library - Source Code and Build Files.zip!LIB22.DSK!INDEX.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

nam INDEX
 sttl program to generate file index for diskettes
 opt pag
 pag
 org $a000
*
* INDEX program to generate file index for diskettes
*
* copyright 1981 by Tom Weaver
*	825 N. Sherry
*	Norman, Okla 73069
*	(405) 364-6856
*
linbuf equ $c080 flex9 line buffer
bufpnt equ $cc14 flex9 line buffer pointer
warms equ $cd03	flex9 warm start address
inch equ $cd0c flex9 terminal character input
pdata equ $cd1e flex9 terminal string output
rpterr equ $cd3f flex9 error report
flex9s equ $cd4b flex9 as a subroutine entry point
fms equ $d406 file management system entry point
opnin equ 1
opnout equ 2
close equ 4
opndir equ 6
getdir equ 7
delete equ 12
opninf equ 16
*
*
*
index ldx #remark
 jsr pdata give prompt for drive 1
 jsr inch wait until ready
 ldx #tmpfil
 jsr fms delete any garbage
 ldx #filout
 jsr fms open initial work file
 lbne rpterr
*
mainlp ldx #prompt
 jsr pdata output prompt for new disk
 jsr inch input reply
 cmpa #'S stop ?
 beq done yes
 cmpa #'s stop ?
 beq done yes
 ldx #filin
 lda #opninf
 sta ,x
 jsr fms open sys info rec
 lbne error disk read error - attempt recovery
 lda #getdir
 sta ,x
 jsr fms read sys info record
 lbne error disk read error - attempt recovery
 ldx 15,x disk number
 ldu #diskno
 jsr cvtnum convert binary to ASCII
 ldx #filin
 lda #opndir
 sta ,x
 jsr fms open directory
 lbne error disk read error - attempt recovery
*
inloop lda #getdir
 sta ,x
 jsr fms read directory entry
 beq inok
 lda 1,x load error code
 cmpa #8 end of file ?
 beq mainlp yes
 jmp error no - attempt recovery
inok tst 4,x directory entry used ?
 beq mainlp no - never
 bmi inloop yes - deleted
 ldu #size
 ldx filin+21 size of file
 jsr cvtnum convert binary to ASCII
 ldu #filin+4
 ldx #filout
 jsr outit output file name
 ldu #size jsr outit
 jsr outit output file size and disk number
 ldx #filin
 bra inloop go read next entry for this disk
*
*
done ldx #filout
 lda #close
 sta ,x
 jsr fms close output file
 ldx #master
 jsr pdata get pgm disk back in drive 0
 jsr inch
 ldu #linbuf flex9 line buffer
 ldx #srtcal
 stx bufpnt flex9 line buffer pointer
callop ldd ,x++
 std ,u++
 cmpb #$0d carriage return ?
 bne callop
 jsr flex9s call flex sort as a subroutine
 tstb everything ok ?
 lbne badsrt no
 lda #delete
 ldx #filout
 sta ,x
 jsr fms delete initial work file
asktit ldx #title prompt for title/date
 jsr pdata
 ldx #headr2
 ldb #80 maximum title length
titlop jsr inch input char from terminal
 cmpa #$08 backspace ?
 lbeq backup yes
 cmpa #$0d return
 beq titdun yes - end of title
 cmpa #$1d line cancel ?
 beq asktit yes - start title over
 sta ,x+ save character
 decb title too long ?
 bne titlop no - get more
titdun ldd #$0d0d
 std ,x++
 lda #4
 sta ,x
 ldx #innam-1
 ldu #sorted
 jsr movnam name of sorted work file
 ldx #outnam-1
 ldu #dskidx
 jsr movnam name of final file
 ldx #filout
 lda #delete
 sta ,x
 jsr fms delete any old INDEX
 ldx #outnam-1
 ldu #dskidx
 jsr movnam name of final file
 ldx #filout
 lda #opnout
 sta ,x
 jsr fms open output file
 jsr phdr output top of page header
 lda #opnin
 sta ,x
 jsr fms open sorted work file
 ldb #8
 ldu #line+10
finnam jsr indata read file name
 ldu #line+19
 ldb #13
finish jsr indata read file name ext, size, and disk numb
 tfr u,y save end of line pointer
 jsr fms read carriage return
 ldu #line+10 point to start of file name
dupfin jsr fms read char of new file name
 bne atend must be end of file
 sta -22,u save this character
 cmpa ,u+ does it match prev file name char ?
 bne notsam no
dupinc incb
 cmpb #8
 beq ovrdot skip over period
 cmpb #11
 bne dupfin check rest of name
 ldb #5
duppit jsr fms ignore file size
 decb
 bne duppit
 tfr y,u end of line pointer
 ldb #5 just append disk number
 bra finish
*
ovrdot leau 1,u skip over period
 bra dupfin
*
notsam eora #$20 check upper/lower case
 cmpa ,-u match now ?
 bne newnam no
 leau 1,u yes - continue comparison
 bra dupinc
*
newnam pshs b,u save current position
 ldd #$0d04
 std ,y
 ldu #line
 jsr outlin output file info
 dec curlin number lines left on this page
 bne newlin
 jsr endpag skip lines and print header
newlin ldu #line+10
 ldb #12
newfil lda -22,u copy name of new file
 sta ,u+
 decb
 bne newfil
 puls b,u restore pointers
 leau 1,u
 negb
 addb #7 length of name to finish
 beq finish-5
 bpl finnam
 addb #13
 bra finish
*
outit ldb #11 process 11 characters
outchr lda ,u+ pick up character
 bne nonull
 lda #$20 replace null by blank
nonull jsr fms write to disk file
 decb number of char to go
 bne outchr
 rts
*
atend ldd #$0d04
 std ,y++
 ldu #line
 jsr outlin output last line of file info
 ldb curlin
 addb #11
 ldx #filout
endskp lda #$0d
 jsr fms space to end of page
 decb
 bne endskp
 lda #close
 sta ,x
 sta filin
 jsr fms close final output file
 ldx #filin
 jsr fms close sorted work file
 lda #delete
 sta ,x
 jsr fms delete sorted work file
 ldu #linbuf flex9 line buffer
 ldx #printt
 stx bufpnt flex9 line buffer pointer
endlop ldd ,x++
 std ,u++
 cmpa #$0d return ?
 bne endlop
 jsr flex9s call flex to print index
 jmp warms finished
*
error ldx #errmsg
 jsr pdata disk read error message
 jmp mainlp try it again
*
backup leax -1,x backspace one position
 incb
 jmp titlop
*
indata jsr fms read a char from disk
 sta ,u+
 decb
 bne indata go read more
 rts
*
phdr ldu #header top of page header
 bra *+5
endpag ldu #skip don't print on perforation
 bsr outlin
 lda #53 number of lines left per page
 sta curlin
 rts
*
outlin ldx #filout output FCB address
 lda ,u+
 cmpa #4 end of line ?
 beq outdun yes
 jsr fms output a character
 bra outlin+3
outdun ldx #filin input FCB address
 rts
*
badsrt ldx #srtbad
 jsr pdata sort error message
 jmp warms give up
*
cvtnum clra turn off significance
 sta filler
 ldb #'0
cvtl1 cmpx #10000 over ten thousand ?
 blt cvttho no
 stb filler turn on significance
 ora #'0 force to print
 leax -10000,x subtract ten thousand
 inca
 bra cvtl1
cvttho sta ,u store ten thousands digit
 lda filler
cvtl2 cmpx #1000 over one thousand
 blt cvthun no
 stb filler turn on significance
 ora #'0 force to print
 leax -1000,x subtract a thousand
 inca
 bra cvtl2
cvthun sta 1,u store thousands digit
 lda filler
cvtl3 cmpx #100 over a hundred ?
 blt cvtten no
 stb filler turn on significance
 ora #'0 force to print
 leax -100,x subtract a hundred
 inca
 bra cvtl3
cvtten sta 2,u store hundreds digit
 lda filler
cvtl4 cmpx #10 over ten ?
 blt cvtone no
 ora #'0 force to print
 leax -10,x subtract ten
 inca
 bra cvtl4
cvtone leax d,x combine digits and force units to print
 stx 3,u store tens and units digits
 rts
*
movnam ldb #12 move 12 characters
 lda ,u+
 sta ,x+
 decb
 bne movnam+2 go move more
 rts
 spc 5
*
* FCB directory offsets
*
*	0	-function code
*	3	-drive number
*	4-11 -file name
* 12-14 -file extension
* 21-22 -file size
*
* - - - - - - - - - - - - - - - - - - - -
*
* work file format
*
*	1-8	-file name
*	9-11 -file extension
* 12-16 -file size
* 17-21 -disk number
*	22	-carriage return
*
* - - - - - - - - - - - - - - - - - - - -
*
* final output file format
*
* 11-18 -file name
*	19	-period
* 20-22 -file extension
* 23-27 -file size
* 28-32 -first disk number
* 33-37 -second disk number
*	...	-additional disk numbers
*	?	-carriage return
*
 pag
curlin fcb 0
filler fcb 0
size rmb 5
diskno rmb 5
 fcb $0d
*
sorted fcb 1
 fcc 'Q-XZVJGWQHB'
dskidx fcb 1
 fcc 'DISKINDXTXT'
*
printt fcc '0.S 0.LIST 1.DISKINDX'
 fcb $0d,$0d
srtcal fcc '0.PSORT 0.SORTSPEC (1.Q-XZVJGW.QHB) 1.Z-X--XZQ.V-J'
 fcb $0d,$0d
*
srtbad fcc 'Sort bombed - index aborted.'
 fcb 4
remark fcc 'Insert clean disk in drive 1 and press return. '
 fcb 4
master fcc 'Insert program disk back in drive 0 '
 fcc 'and press return. '
 fcb 4
errmsg fcc 'Disk read error.	Reseat disk and try again.'
 fcb 4
prompt fcc 'Insert disk in drive 0 and press return.	'
 fcc 'Enter "S" to stop:	'
 fcb 4
title fcc 'Date/Title:	'
 fcb 4
*
 fcc '	.	'
line fcc '	.	'
 rmb 130
*
skip fcb $0d,$0d,$0d,$0d,$0d,$0d,$0d,$0d,$0d,$0d,$0d
header fcc '
File name	Size	Disks	'
headr2 fcc '	('
 fcc '	,'
 fcc '	,'
*
filin fcb opndir,0,0,0
innam rmb 316
*
filout fcb opnout,0,0,1
outnam fcc 'Z-X--XZQV-J'
tmpfil fcb delete,0,0,1
 fcc 'Z-X--XZQV-J'
 rmb 305
*
 end index
