# DBINFO4

> Source: `misc/uncategorized/S09-010 - PL9 Development.zip!S09-010.DSK!DBINFO4.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

Datainmatningsprogrammet	DBINPUT
	=================================

	DBINPUT {r ett hj{lpprogram till databasprogrammen DBASINIT - DBAS.
	Det m|jligg|r ett god kontroll av data innan de matas in i data-
	basen, och {r av speciellt intresse n{r ett st|rre antal poster
	skall genereras. Som resultat av arbetet med DBINPUT erh}lles en
	fil, som omedelbart kan anv{ndas som infil till DBAS.
	DBINPUT {r generellt och flexibelt. Det anpassar sig automatiskt till
	den post-sammans{ttning, som definierats med hj{lp av DBASINIT.

	Arbetsg}ngen {r f|ljande:


1) Definiera en databas (d v s postens utseende med h{nsyn
	till antal f{lt, typer av f{lt etc) med hj{lp av
	programmet DBINPUT. Vid databasinitieringen erh}lls
	d{rvid tv} filer	-	XXXXXX.STA och XXXXXX.RAN, d{r
	XXXXXX f}r st} f|r databasens namn.


2) Anv{nd DBINPUT f|r att generera ett st|rre eller mindre
	antal poster f|r databasen.Utfilen kan ges ett godtyckligt
	namn	-	antag att vi ger den namnet XXXXXX.IND.


3) Inf|r posterna i databasen genom att ge kommandot (i FLEX)
	+++XBASIC DBAS XXXXXX.IND
	Filen XXXXXX.IND anv{nds nu som infil av DBAS, och utan
	ytterligare operat|rsingripanden s{tts databasen upp, s}
	att den omedelbart {r tillg{nglig f|r studium av godtyckliga
	poster p} sk{rm, f|r selektiva listningar sorterade efter
	nyckelf{lt, f|r {ndringar och till{gg, f|r generering av
	nya datafiler etc.

	F|rdelen med att anv{nda DBINPUT enligt ovan {r dels att man f}r
	m|jlighet till kontroll av data och till automatisk ber{kning av
	numeriska f{lt dels att man inte beh|ver v{nta p} den faktiska
	{ndringen av databasen	-	den sker senare utan n{rvaro av operat|r.

	Kort beskrivning av DBINPUT.

	Innan man exekverar programmet DBINPUT b|r man s{tta upp en speciell
	checknings- och ber{kningsfil. Den kallas h{r "COM-fil", emedan den
	skall ha "extension" = COM. Hur COM-filen s{tts upp beskrivs i
	separat information. H{r skall blott n{mnas att textf{lt kan checkas
	mot en lista av godk{nda ord (som kan inneh}lla "don't care
	character" = "?"), att numeriska f{lt kan checkas med avseende p}
	en |vre och en undre gr{ns och att numeriska f{lt kan automatiskt
	ber{knas som funktion av andra numeriska f{lt.


	Programmet fr}gar efter databasens namn. Svara d} med namnet
	utan extension. Ange {ven drivenummer om databasen inte ligger
	p} "working drive". I exemplet ovan blir svaret allts}: XXXXXX.
	Programmet fr}gar sedan efter utfilens namn.V{lj ett l{mpligt
	namn, t ex XXXXXX.IND	(d{r XXXXXX liksom tidigare st}r f|r
	datbasens namn, 1...8 karakt{rer). Om en fil med samma namn
	redan existerar kommer den att strykas.

	Kommandomenyn kan nu erh}llas genom att man sl}r kommandot HJ{lp.
	(Endast de tv} f|rsta bokst{verna i ett kommando {r relevanta.)

	Kontroll av en posts sammans{ttning i f{lt kan man f} genom att
	sl} kommandot POst.F|r varje f{lt visas ocks} om det checkas eller
	ber{knas med hj{lp av COM-filen eller om det utel{mnas vid
	indatagenereringen (som f|ljd av kommandot IF{lt).

	Kommandot IF{lt kan anv{ndas om man har ett eller flera f{lt,
	som tillsvidare skall vara tomma. P} samma s{tt som i DBAS anger
	man efter kommandot IF{lt vilka f{lt som skall vara med vid
	indatagenereringen. Kommandot kan anv{ndas flera g}nger vid samma
	k|rning f|r att s{tta om dessa f{lt.

	F|r inmatning av poster kan man, liksom i DBAS, v{lja mellan
	kommandona SErie eller NY. Vid kommandot SErie sker kontinuerlig
	inmatning utan direkt m|jlighet till {ndring n{r ett f{lt har
	godk{nts. Avbrytande av serieinmatningen sker n{r man svarar med
	tecknet "&". Den post man d} h}ller p} med kommer inte med i utfilen.
	Man }terkommer till kommandomoden. Kommandot NY ger m|jlighet till
	inmatning av en enstaka post, och man har m|jlighet till {ndring
	av godtyckliga f{lt innan posten slutligt godk{nnes (med svaret "N").
	(J=ja, {ndring skall g|ras, N=nej, posten {r OK, V=visa hur
	posten ser ut nu, U=posten stryks)

	[ven om man inte har satt upp n}gon COM-fil sker en viss kontroll
	av inmatade data:


Textf{lt kontrolleras med avseende maximalt antal karakt{rer.

Numeriska f{lt (H, F, K) kontrolleras s} att de inte inneh}ller

n}gra andra tecken {n 0...9 och decimalpunkt.

	Repetering av f|reg}ende inmatning i ett godtyckligt f{lt, d v s
	i f|reg}ende post, sker genom att man svarar med enbart vagnretur,
	RETURN.	Detta f|rfarande kan m|jligg|ra avsev{rd tids- och
	arbetsbesparing.

	Uthopp ur programmet sker med kommandot UThopp. Utfilen st{ngs
	d{rvid, varefter den kan anv{ndas f|r inmatning i DBAS.


	CAD-TEK Datateknik
	JAN 1981
