# FLEXNOTE

> Source: `flex-09/distributions/FLX503TX - FLEX Operating System - Program and Support Utilities.zip!FLX503TX.DSK!FLEXNOTE.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,SP 3
,LM 7
,LL 65
,pc \
,ss 2
,CE
FLEX MEMORY MAP 5.0:3 as of 2/8/83


B800-BFFF
FCOUTPUT
	C000-C0FF		System stack
	C100-C6FF		Utility command area
C700-C83F
INC700.TXT (Keyboard)
	C860-CBBF		System FCB's (3)
	CA00-CAFF	MAININIT.TXT (Initialization sequence)
	CC00-CC2F		FLEX variables
	CC30-CCBF		System misc.
	CCC0-CCF7		Printer vector area
	CCF8-CCFF		System scratch
	CD00-CD4F		User callable jump vectors
	CD60-D36F		Mainflex.txt
D370-D3FF
INMAIN.TXT (Keyboard)
	D600-DDDA		FMS Flexfms.txt
DDDB-DDEB
VARS variable area for output
	DDEC-DDFF		Blank area
DE00-E2FF
DISK.TXT
E300-E3FF
INPOUT.TXT (Printer code)
E400-E5FF
INMAIN.TXT (Keyboard inchne ect)

E600-FDFF
SCREEN

FE00-FEDF
Reserved for alternate I/O for The Solution
FEE0-FEFF
Vectors for solution monitor
,PG
,NPS
,ss 1


Map of FLEX.SYS

File: MAINASMB
,IN 10
CC00-CC3A
CC49-CC49
CC4E-CCA7
CCC0-CCC0
CCD8-CCD8
CCE4-CCE4
CCF8-D36B
D3FD-D3FF
CA00-CAF0
C840-C84E

,SI -10
File: FMSASMB
D400-D408
D435-DDDA
,SI -10
File: DISK
DE00-E2FD
,SI -10
File: INASMB with FCOUTPUT first.

CCB0-CCBF
CD10-CD11
CD13-CD14
D3D7-D3D8
D3DB-D3E4
D3F9-D3FA
E40D-E420
B800-BFB7
C700-C711
C71B-C838
D370-D3CA
D3D1-D3D6
D3D9-D3DA
D3E5-D3F8
D3FB-D3FC
E400-E40C
E421-E5ED
E300-E3B2
CCC0-CCC2
CCD8-CCDF
CCE4-CCE6
CD00
	
,nps

,in
,pg


	The assembly procedure is:

+++ASMB MAINASMB +LSY
+++ASMB FMSASMB +LSY
+++ASMB DISK +LSY
+++ASMB INASMB +LSY +1
(The +1 is for 52X24)
+++APPEND MAINASMB.BIN FMSASMB.BIN DISK.BIN INASMB.BIN FLEX.SYS


	It can also be assembled at one time:


+++ASMB FLEXASMB FLEX.SYS +LSY +1


	As a note of interest, this will produce a listing 129 pages long with 5904 lines.


The file MAINASMB is:	LIB MAINEQU	(unique to this asmb)
	LIB MAINFLEX
	LIB MAININIT

The file FMSASMB is:	LIB FMSEQU	(unique to this asmb)
	LIB FMSFLEX

The file DISK is stand alone.

The file INASMB is:	LIB INEQU	(unique to this asmb)
	LIB FCOUTPUT
	LIB INC700
	LIB INMAIN
	LIB INPOUT

The file FLEXASMB is:	LIB FLEXEQU	(unique to this asmb)
	LIB MAINFLEX
	LIB MAININIT
	LIB FMSFLEX
	LIB DISK
	LIB FCOUTPUT
	LIB INC700
	LIB INMAIN
	LIB INPOUT
