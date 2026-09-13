# DBINFO3

> Source: `misc/uncategorized/S09-010 - PL9 Development.zip!S09-010.DSK!DBINFO3.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

; PARAMETERFIL F\R DATAINMATNINGSPROGRAMMET "DBINPUT.BAC"

; DENNA FIL SKALL HA ETT NAMN = XXXXXX.COM,

;	D[R XXXXXX = DATABASENS NAMN

; Kommandoord : CH	och	BE

; CH = 1) checka omr}de f|r numeriska f{lt, eller

;	2) checka f|r textf{lt att textstr{ng finns i lista

;		Fr}getecken kan anv{ndas f|r att ange att god-

;		tyckligt alfanumeriskt tecken accepteras p}

;		ifr}gavarande plats. S} betyder t ex A??? att

;		alla str{ngar som b|rjar p} "A" och som har

;		fyra tecken godtages.

;

; BE = ber{kna f{lt som funktion av andra f{lt (med l{gre

;	f{ltnummer)

;	Uttrycket f|r ber{kning av det aktuella f{ltet

;	skall st} p} en (!) separat rad och vara skrivet

;	med omv{nd polsk notation. De fyra r{knes{tten {r

;	till}tna. Komma anv{nds f|r separering av operander

;	och operatorer. Konstanter skrivs 'normalt' medan

;	f{ltnumren skall f|reg}s av 'F', t ex 'F12'.

;

; Se exempel nedan

;

;DATA	F|rklaring


CH		checka

2
f{lt nr 2

0,100	m a p gr{nserna 0 och 100

CH		checka

3
att f{lt nr 3

0,1000	ligger mellan 0 och 1000

CH		checka

1
att str{ng f|r f{lt nr 1

AAA,B?B,CCC,DDD,E??	finns i denna lista

CH

1

,AAAA,BCDEF,H,IJ	...eller i denna forts{ttningslista


; godtyckligt m}nga forts{ttningsrader {r till}tna


BE
ber{kna

3
f{lt nr 3

F2,11,*	som :	(f{lt nr 2) * 11

;	==== OBS ==== Kommentarer kan inf|ras med rader, som

;	b|rjar med semikolon.
