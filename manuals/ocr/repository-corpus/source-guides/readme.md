# README

> Source: `sourcecode/library-disks/LIB18 - FLEX Source Library - Source Code and Build Files - Includes CHARS, COMTABLE, FDB.zip!LIB18.DSK!README.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

SCREEN.CMD is used the switch between viewing the text screen
	and viewing the graphics screen
	Use	+++SCREEN G to go from text to graphics
	and	+++SCREEN T to return from graphics to text

SCOPY.CMD	is a sector copy programme for use between identical format
	discs the receiving disc must be empty at the start.


 MODS TO CHANGE MICROBOX ][ TO USE DOUBLE SIDED DISK DRIVES.
 -----------------------------------------------------------

 Software mods.

 These text files make new control program with
modified DISK ( 12mS step & double side )
modified GDCOUT ( compressed )
modified MINIT	( set port 1 to internal K/B serial input )
modified MINIT1 ( set SYSREG to 3 inputs 5 outputs )

 Hardware mods.

 Cut the track from pin 14 on IC 19 to switch 1,
fit a 7404 under the board by the socket to the disk drives
run a lead from pin 14 of IC 19 to an input on the 7404 &
a lead from the output to pin 32 of the disk drive socket.

Librarians note-
	As switch one was used to indicate the input type
users of a parallel keyboard would have to change the modified
MINIT to read ldb #$00 instead of ldb #$01 when setting the INPORT
	Better still use the 7220A version of the GDC and version
4.5 monitor which uses the RTC to set disc drive stepping rates
leaving pin 16 free to be used for disc side control.
	The LS version of the 7404 is not adequate unless two
sections are used in parallel to give the required drive.
