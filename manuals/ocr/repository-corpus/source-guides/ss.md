# SS

> Source: `sourcecode/library-disks/LIB14 - FLEX Source Library - Source Code and Build Files - Includes ALIGN, ANADEX, COPYNEW.zip!LIB14.DSK!SS.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

NAME:	SS
PURPOSE:	To Single-Step a machine code program (one instruction at a time).
FILES:	SS.CMD	SS.TXT
LANG:	Assembly
HARD:
USAGE:	The FLEX2 operating system must be booted in before the program to be

single stepped is entered into store.

Enter SS after the +++ prompt, followed by RETURN.

Push SINGLE STEP SWITCH DOWN on the back of the computer (for details

of the connections required for this switch please refer to the diagram

which is sent with this software.)

Enter 4 hex digits to indicate the START ADDRESS of single stepping

operations. DO NOT enter RETURN.

A heading is displayed followed by information about the instruction at

the address specified. The $ sign finally appears.

To single step each instruction in turn type G after each $ sign.

After each instruction has been executed a $ sign appears. This indicates

a return to SWATBUG COMMAND level. You may wish at this time to carry out

one of the SWATBUG commands such as:
	R	register dump
	M	examine or change memory etc.

You can do this providing you remember to turn the single step switch off.

To continue single stepping from where you left off simply turn the switch

ON again and type G.

To exit the single step mode RETURN SWITCH TO THE UP POSITION. You are

now at SWATBUG COMMAND LEVEL. To return to FLEX2 command level type JAD03.

DO NOT enter RETURN. The +++ prompt should appear.

This program is 2 yrs old and the purely software methods of single stepping

which are now common are probably preferable.

When the program SS is run the following is output:
+++SS
THIS PROGRAM ALLOWS YOU TO STEP THROUGH YOUR OWN
PROGRAM ONE INSTRUCTION AT A TIME.

THE "SINGLE STEP" SWITCH ON THE BACK OF THE COMPUTER
MUST BE ON (IE. UP). ***DO THIS NOW***

TYPE "G" EACH TIME TO EXECUTE THE NEXT INSTRUCTION

RETURN TO FLEX BY TYPING "J AD03".

*******************************************************
PUT "SINGLE STEP" SWITCH DOWN AFTERWARDS
*******************************************************

START ADDRESS OF PROGRAM? INPUT 4 HEX CHARACTERS---0000

	ADDR INSTRTN	HINZVC B	A	INDX	PC	SP
	0000 86 32	110001 12 32 12F3 0002 A049	LDA A #$32
	$G 0002 C6 17	110001 17 32 12F3 0004 A049	LDA B #$17
	$G 0004 CE ABCD	111001 17 32 ABCD 0007 A049	LDX	#$ABCD
	$G 0007 etc...................
