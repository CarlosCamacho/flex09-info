# GETDATE

> Source: `dev/pascal/PASCAL - Pascal Language - Program and Support Utilities.zip!PASCAL.DSK!GETDATE.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

ttl Pascal/Assembly Interface Example
 pag
*
*  These definitions describe the interface to the Pascal
*  runtime system.  They are from the FLEX Pascal manual.
*
Start equ  $0003 Begin a Pascal program
Term equ $0009 Terminate a Pascal program
Wln equ $0126 Writeln
Eio equ $012C End I/O Operation
Wrs equ $0138 Write string
*
*  FLEX data values
*
Month equ $CC0E
Day equ $CC0F
Year equ $CC10
 pag
*
*  Program begins here
*
 org 0
 fdb Size Size in bytes of my program
*
*  Program execution will being at this location
*
Begin jsr Start Initialize Pascal environment
 fdb 0 Parameters for Start
 fdb 12    **** NOTICE - not the same as in manual ****
 fdb 0     ****   This value must be 12!           ****
 fdb 0
 pshs u,y Save registers just to be safe
*
*  At this point, the stack looks like this:
*    12,Y  -  address of paramter list passed to this program
*    14,Y  -  address of INPUT file
*    16,Y  -  address of OUTPUT file
*
*  Write the string: 'Entering "', parameter text, '"' on the
*  terminal.  This process is not completely described in the
*  FLEX Pascal guide, but could be determined by examining the
*  assembly language output from a Pascal program which performs
*  this function.
*
 leax str1,pcr address of 'Entering "'
 pshs x
 ldd #-1 Default width
 pshs d
 pshs d
 jsr [Wrs] Write string
 ldx 12,y get parameter list address
 leax 2,x point at param[1].ID
 pshs x
 ldd #-1 more default values
 pshs d
 pshs d
 jsr [Wrs]
 leax str2,pcr address of '"'
 pshs x
 ldd #-1
 pshs d
 pshs d
 jsr [Wrs]
 jsr [Wln] Writeln
 jsr [Eio] done with I/O operations
*
*  Now pick up the current date from FLEX cells and return
*  them to the calling program.
*
 ldx 12,y get parameter list address
 ldb Month pick up Month value
 clra
 std (2-1)*18+2,x param[2].INT
 ldb Day pick up Day value
 std (3-1)*18+2,x param[3].INT
 ldb Year pick up Year value
 std (4-1)*18+2,x param[4].INT
*
*  All done - return to calling program
*
 puls u,y restore proper environment
 jsr Term Terminate program
*
*  Strings and other constants go here - they must be included
*  in the Size value computed.
*
str1 fcc 'Entering "',0  Strings are null terminated
str2 fcc '" ',0
*
Size equ * Size in bytes of entire program
*
 end
