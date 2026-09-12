# S02QSIM3

> Source: `dev/csc/CSCPRODS_4 - CSC Development - Programs, Source, and Build Files.zip!CSCPRODS_4.DSK!S02QSIM3.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

A4                            AAAAA                                                                                     CITY           CA             30004                                                                                    09-MAR-81CONT15 FCB $04,$FF delete field input	c D
CONT16 FCB $05,$FF end field/mod input	c E
CONT17 FCB $18,$FF insert field input	c X
CONT18 FCB $0a,$FF cursor down input	down
CONT19 FCB $5e,$FF cursor up input	up
CONMAX EQU 1 MAX INPUT CONTROL SEQUENCE
R. SEQUENCES ARE NOT REQUIRED
* SET LEADIN, LEAD1, & LEAD2 ALL TO ZERO.
* IF ONLY ONE LEADIN CHAR IS REQUIRED, SET LEAD2 TO ZERO.
*
LEADIN EQU 1 NUMBER OF LEADIN CHAR IN CONTROL SEQUENCE
LEAD1 EQU $1B LEADIN CHAR 1
LEAD2 EQU $00 LEADIN CHAR 2
MAXPRN EQCDE2 EQU *
 RTS
OPCDE3 EQU *
 RTS
OPCDE4 EQU * CPX DIR
 JSR GETVAL
 STAB CCHAR
 LDAB XREGST
 JMP OPCGC0
OPCDE5 EQU * SBC DIR
 BRA OPCDE1
OPCDE6 EQU * INC DIR
 JSR GETVAL
 INCB
 JMP OPCHC6
OPCDE7 EQU *
 RTS
OPCDE8 EQU * INX
 INC XREGST
OPCHE8 JMP OPCH88cause from minor
to severe problems in conversion.	Simply changing the
EQU statements will probably not affect the complete
conversion because of the differences in handling of the
various I/O devices, such as VIO's, VIA's, PIA's, ACIA's,
etc.
These dhx|Dl}H
'=T'+0D['=T'&
}.  File couldn't be closed.8x}?.  File has been copied.&*$'
&( ' &Z&m94T@C{?$
4L~;#a3k
4 3d2I~<oiB3iDfX~/\0I~<
)'
0I~<
)(&ro  0F*0(,\#d2X~5Tg'=T&9'=T&&'sC'p
