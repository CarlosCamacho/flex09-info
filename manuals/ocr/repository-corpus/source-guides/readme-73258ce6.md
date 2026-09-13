# README

> Source: `sourcecode/library-disks/LIB29 - FLEX Source Library - Source Code and Build Files.zip!LIB29.DSK!README.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

+++	A24	A	simple programme for use on the MB2 to send files to an IBM
compatible. With thanks to Adrian Cockcroft for making my TX programme send
files. The library Kermit uses interrupts the MB 2 serial port does not, so
an alternative had to be organized hence A24.
	A more comprehensive system is Neil Mackay's Combox on disc No 41
	(C. G. Lindsay

Hardware Requirements-
	Microbox	2	or change the initiation and TX routines to suit

your	system. Serial port 2 used, programme sets the baud rate to

2400.


Crossed serial lead with TXD, RXD, RTS & CTS.


Kermit for your IBM Compatible.
	IBM-PC Kermit-MS V2.29 has been used and found OK
Proceedure-

IBM

KERMIT (rtn)
	>set ?

If	required	change the baud rate to 2400 (this ensures adequate

time for disc accesses), and set the handshake as follows-
	>set baud 2400 (rtn)
	>set handshake xon (rtn)
	>log filename.ext (rtn)
	>c (rtn)


At	this	point the IBM should be waiting for data so back to the

MB 2 to send a file with-


+++A24 (drive)(filename)(ext)	(rtn)


IBM

If	all is well and you are using the right version of IBM kermit

the	text will scroll on your IBM and disc accesses will indicate

it is being saved.


use control ]

followed by c (rtn)
	>close


Then you are ready for the next file.
	8C. G. L.
