# DBINFO

> Source: `misc/archive-series/ab/AB012 - AB Archive Disk - Bootable FLEX System and Utilities - Includes ALFA, ALFA1, CRYPTO.zip!AB012.DSK!DBINFO.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

Filename: DBINFO.TXT
Ready to send DBINFO.TXT
2885 characters to sendz.
You have 40 seconds to start.
Control-C aborts, Control-S pauses.
When transfer done, you'll get 3 beeps.
Strike any key to start ...

	-------------
	I
I
	I	DBDEFN	I
	I
I
	---------------	I
	I
I	I
	I	DBPROG	I	I
	I
I----
	------------------	I
	I	I	I
	I (C)
I	I
	I N-O Johansson	I------
	I Stavangerg.72	I
	I 16333 Sp}nga	I
	I	I
	------------------


 DBPROG {r ett program f|r att behandla
data i form av records p} skiva. Dessa
records inneh}ller information som {r
av intresse f|r anv{ndaren tex register
av olika slag. Varje record kan vara
organiserad i ett antal f{lt	med en
rubrik f|r varje f{lt.	S|kning av en
record sker med nummer eller selektiv
s|kning med hj{lp av nycklar. Sortering
av records i |kande eller minskande
ordning med upp till fem valda nycklar
{r m|jlig. Olika f{lt av records kan
hopsl}s till en ny file.

 Det h{r kan g|ras p} en data file:
L{gga till records
S|kning med nyckel
S|kning av str{ng
S|k recordu nummer
[ndra record
Ta bort record
Sortering
Sammanslagning av f{lt
Formatera utskriften

 Begr{nsningar i programmet:
Antal records i en data file < 32767
eller det som ryms p} en flexskiva.
Antal tecken i en record < 252.
Antal definierade tf{lt (poster) <= 50.
Antal tecken i rubrik <= 14.
Delf{lt vid sammanslagnig <= 20.
Sorteringsnycklar	<= 5.
Antal utskriftsf{lt vid formaterad
utskrift	<= 20.

 DBDEFN anv{nds f|r att definiera data-
filen dvs d{r best{mmer man hur m}nga
positsioner en record ska omfatta, f{lt-
storlek och rubrik f|r varje ing}ende
post, position p} s|kf{lt och delete
(en position som visar om en record {r
borttagen).
Den file som skapas f}r samma namn som
datafilen men med extension "DEF".

P} skivan i
r drive 0 b|r f|ljande filer
finnas:
DBPROG.BAC DBDEFN.BAC (Kompilerad form)
DBINFO.TXT (Denna el. annan text)
PRINT.SYS	CAT.CMD

--------------------------------------
Hur filen "<namn>.DEF" {r uppbyggd:

	"Header" 18 tecken.

 1>>----
	! 2! pekare n{sta record
 3>>----
	!	!
	! 8! namn
	!	!
11>>----
	! 2! record l{ngd
13>>----
	! 2! s|kf{lt start position
15>>----
	! 2! s|kf{lt stopp position
17>>----
	! 2! delete position
19>>----
	!	!"BODY"(18* antal poster) tecken
	!	!
	!14! rubrik no.1
	!	!
33>>----
	! 2! post no.1 start position
35>>----
	! 2! post no.1 stopp position
37>>----
	!	!
	!14! rubrik no.2
	!	!
51>>----
	! 2! post no.2 start position
o53>>----
	! 2! post no.2 stopp position
55>>----
	.	.
	.	.
	.	.
 n>>----
	!	!
	!14! rubrik nn
	!	!
n+14----
	! 2! post nn start position
n+16----
	! 2! post nn stopp position
n+18----
	!	!
	!14! "EOF"
	!	!
n+32----
	! 2! antal rubriker
n+34----
	! 2! "0"
	----

ASCII download complete.

1 file sent OK
