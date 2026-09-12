# S02SIMUL

> Source: `dev/csc/CSCPRODS_4 - CSC Development - Programs, Source, and Build Files.zip!CSCPRODS_4.DSK!S02SIMUL.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

prce9z ldx buffo,pcr store quote
 ldb [xaddr,pcr]
 stb ,x+
 stx buffo,pcr
procea ldx buffo,pcr put eot on end
 ldb #eot
 stb ,x
proceb ldx buff3,pcr check spaces
prceba cmpa #space
 bne procec
 sta ,x+
 lbsr inchrt
 bra prceba
procec stx buff3,pcr put nking output
CONT31 FCB $FF gray output
CONT32 FCB $FF reverse output
CONT33 FCB $FF underline output
CONT34 FCB $FF
CONT35 FCB $FF
CONT36 FCB $FF
CONT37 FCB $FF
CONT38 FCB $FF
CONT39 FCB $FF
CONT40 FCB $FF un-blinking output
CONT41 FCB $FF un-gray out file.	An output file name is requested.
If the start and end addresses have not been provided, they
are requested.	A non-OS/9 output file reflects only that program code
between the start and end addresses, exclusive of ignored address
ranges.	Ignotuet[liT`Pnn< r
Hr `
~{adj1in
rx.


2:6>(g-
,$!T)&
-*Q.00-3U]
3^a5DL<K2C@&75UET;LI4@HQN49UR8CyVXXU[}1[	gscrYjgC^S|l{bspVgouk|y_pe~~L}
+y
mw
qrmv
H<D@^H:5"#)&l
.+)B/7%63y*;8
)_<>>;DA
,HE+5lIKKHQN9URByVXXU[}[ents the 6502 opcode name (three
characters), starting in the first position.	There are currently
six suffixes (A,X,Y,ZX,ZY,null), representing instruction address
modes accumulator, indexed-indirect, indirect-indexed,
zero page plus X, zero page pluswill generally be in the following areas:
.nf
	-monitor, operating system, and subroutine library
	entry points,
	-I/O addresses and hardware,
	-memory-mapped video facilities,
	-miscellaneous tradeoffs made in translation.
.fi
.sp
Entry points ma
