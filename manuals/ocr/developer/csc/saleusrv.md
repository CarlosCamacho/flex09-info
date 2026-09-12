# SALEUSRV

> Source: `dev/csc/CSCPRODS_4 - CSC Development - Programs, Source, and Build Files.zip!CSCPRODS_4.DSK!SALEUSRV.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

CI&M(
L,/PQ,22e
V69Z[7@=:C?=gCAHE&0lINKHQN-9uRUTQgWxM~[]SHadavdmjipljqpus]CjPlzzyn!~s&{|
*u2jB37	?
=

H##4(&DL)+\1/MU2
4fG;9W!_<~>oDB`,hEGEmLMPNn8
ESSRJRh\ZzC]8_ecMigW
j
lj,qsus]ywe
z|k
p&	^

*r0
@3}9J+
=S B,PC
*
DELETE EQU * DELETE CHARACTERS
DELET1 DECB SLIDE TO RIGHT
 BLS DELET2
 LDA $01,X
 STA ,X+
 BRA DELET1
DELET2 LDA #$20 SPACE
 STA ,X
 RTS
*
INPCHR EQU * GET A LOGICAL CHARACTER
 LEAX BUFFER,PCR POINT TO BUFFER
INPCH1 LDB BUFCNT,PCR GET COUNT
 CG]QN4uRSTWyX|Wp\~oc`)Jd5fli2Tm>omruu0`yy4iSq|sLz
s
|Y66
=
ED2##(G(+KmM
1.mU234e8Y836<<I'`ADdfBKGmNJHcMtSPQ;wTUVS\Y"D
Q_baW`ie
lhfk~ootZtwIXzze
"C$3p
	l
xv?
-F."^F#$%V7Y*L+7*3/[620V5bH<9B#+a>@@qFC&.Junder FLEX*, and not under OS/9* and UNIFLEX*.
If 'S' is issued, the object program is loaded for simulated execution.
For the 6809 simulator, the user may enter a complete command line,
starting with the name of the program being executed, with 'S'.
.iate section of
this manual for detailed operating instructions.
.sp 2
* FLEX and UNIFLEX are trademarks of Technical Systems Consultants.
* OS/9 is a trademark of Microware.
.pg
.ce
FUNCTIONAL CHARACTERISTICS OF THE SIMULATORS
.sp 2
.si 5
Some of the ing except when used with one
of the function codes "E", "F", "L", or "P".
.sp
The date of last change will be placed into field 13 at any time that
an entry is retrieved by a matching process.	This is done in order to
assist the user in determining wces before being sorted.	After each of the pieces have been
sorted, the resulting files may then be merged to form the final file.
.pg
.ce
RESEQUENCER AND CROSS-REFERENCER
.sp 2
The TSC BASIC resequencer is a TSC Extended BASIC program which
has severmary only,"
10470 PRINT "	RETURN to print last month's list ";
10480 EN$=INCH$(0)\PRINT\IF EN$>"Z" THEN EN$=CHR$(ASC(EN$)-32)
10490 IF EN$<>CHR$(13) AND EN$<>"E" AND EN$<>"N" THEN GOTO 10450
10500 PRINT "Enter U to update customer list,"
10510 PRINT "L%<12 THEN GOTO 10420
12320 PRINT MID$(LN$,L%+4);TAB(32);"(Was: ";
12330 IF L%=12 THEN PRINT "NULL";\GOTO 12380
12340 FOR I%=12 TO L%\CH$=MID$(LN$,I%,1)
12350 IF (CH$>="0" AND CH$<="9") THEN PRINT CH$;
12360 IF (CH$>="A" AND CH$<="F") THEN PRINT CH$;
1
