# ASYINFO

> Source: `sourcecode/library-disks/LIB38 - FLEX Source Library - Source Code and Build Files - Includes ASY-COM, ASY-END, ASY-PDM.zip!LIB38.DSK!ASYINFO.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

ASYLUM! (Follow the Cheese and Pickle Sandwich)

A Doppel-Ganger Adventures Incorporated Production 1986

	Part 1. Setting up your Asylum Play disk.

		Here is the directory from an Asylum Play	disk	set	up	for
		optimum	efficiency, in that the most used files are near the
		beginning of the Directory.


DRIVE: 0	VOLUME: Asylum-P.lay	1	CREATED: 14-OCT-86


LOCATION.DAT MOVEMENT.DAT FRIENDY .DAT DOM-SUB .DAT

OBWANT	.DAT DOORS	.DAT EXAMINE .DAT TOKENS	.DAT

ATTRIB	.DAT FLAGS	.DAT PRINT	.SYS ASYLUM	.BAC

ASY-PDM .BAC ASY-COM .BAC ASY-END .BAC OBJTEXT .DAT

SHORTLOC.DAT R1	.DAT R2	.DAT R3	.DAT

R4	.DAT R5	.DAT R6	.DAT R7	.DAT

R8	.DAT R9	.DAT R10	.DAT R11	.DAT

R12	.DAT R13	.DAT R14	.DAT R15	.DAT

R16	.DAT R17	.DAT R18	.DAT R19	.DAT

R20	.DAT R21	.DAT R22	.DAT R23	.DAT

R24	.DAT R25	.DAT R26	.DAT R27	.DAT

R28	.DAT R29	.DAT R30	.DAT R31	.DAT

R32	.DAT R33	.DAT R34	.DAT R35	.DAT

R36	.DAT R37	.DAT R38	.DAT R39	.DAT

R40	.DAT R41	.DAT R42	.DAT R43	.DAT

R44	.DAT R45	.DAT EX9	.DAT EX11	.DAT

EX12	.DAT EX13	.DAT EX15	.DAT EX16	.DAT

EX17	.DAT EX19	.DAT EX20	.DAT EX21	.DAT

EX22	.DAT EX23	.DAT EX24	.DAT EX25	.DAT

EX28	.DAT EX29	.DAT EX30	.DAT EX31	.DAT

EX32	.DAT EX34	.DAT EX37	.DAT EX38	.DAT

EX40	.DAT EX41	.DAT EX42	.DAT EX45	.DAT

EX46	.DAT EX47	.DAT EX48	.DAT EX50	.DAT

EX51	.DAT EX56	.DAT EX57	.DAT EX59	.DAT

EX63	.DAT BANNER	.DAT MAD	.DAT DRINK	.DAT

CHEW	.DAT SUCK	.DAT WAVE	.DAT WIPE	.DAT

SIT58	.DAT SIT65	.DAT SIT66	.DAT SIT67	.DAT

NOKILL	.DAT HDOG	.DAT IDOG	.DAT PANIC	.DAT

PLAY9	.DAT PLAY24	.DAT GATED	.DAT D36	.DAT

D33	.DAT D34	.DAT D35	.DAT D32	.DAT

E32	.DAT E33	.DAT E34	.DAT E35	.DAT

E36	.DAT TCUP	.DAT LOCKUP	.DAT DOPFIGHT.DAT

DOPF2	.DAT CALCOP	.DAT CALTIM	.DAT CALELS	.DAT

SCCDOOR .DAT SCRIPT	.DAT OFFSCRPT.DAT NAME	.DAT

PLAY44	.DAT HELP	.DAT C0	.DAT C1	.DAT

C2	.DAT C3	.DAT C4	.DAT C5	.DAT

C6	.DAT C7	.DAT C8	.DAT FRIENDLY.DAT

ENEMY	.DAT FLEX	.SYS XBASIC	.CMD LIST	.CMD

PRINT	.CMD ASN	.CMD TTYSET	.CMD P	.CMD

CAT	.CMD COPY	.CMD ZAPFILES.CMD STARTUP .TXT


FILES=160	LARGEST=158	SECTORS=910/910	FREE=484

		As	you	can see, there are rather a lot of files used by the
		program, basically because practically all the text, and	all
		the program data, is held on disk.


	$Asylum Instructions. Page No. 1


	ASYLUM! (Follow the Cheese and Pickle Sandwich)

A Doppel-Ganger Adventures Incorporated Production 1986


This is what you do...

		First,	take	a	freshly	formatted disk and insert it in the
		drive that you plan to use for running "Asylum!".	As	I	use
		auto drive searching on all drives, I chose to use Drive #0.

		On your program disk. there are six program files :-

		ASYLUM.BAS - This is the intro and initialisation program.
		ASY-PDM.BAS - This parses your commands and decides what the
	characters are going to do.
		ASY-COM.BAS - The workhorse program. This converts command
	tokens into actions, reporting these actions
	where necessary on screen (and printer if in
	SCRIPT mode.)
		ASY-END.BAS - Tells you how you did when you QUIT the game or
	bring things to their rightful conclusion...
		ASYMAKE1.BAS - Creates some of the huge amount of data files
	which Asylum! requires.
		ASYMAKE2.BAS - Creates the rest of the data files.

		From Xbasic, chain "ASYLUM.BAS". When it asks you if you want
		to	start	a	new	game,	enter "Y" and it will begin writing
		files LOCATION to FLAGS. It will then ask you for your	name,
		at	this	time	press	Control-C	(Break).	Then	COMPILE the
		program onto the Asylum Play disk (In this example Drive #0.)
		The	PRINT.SYS	file	is used if you're in SCRIPT mode, so it
		helps to have	that	somewhere	near	the	beginning	of	the
		directory too.

		Load and Compile programs ASY-PDM, ASY-COM and ASY-END.

		ASYMAKE1	and	ASYMAKE2	are	both	set up to save files onto
		Drive #0, so if you should wish to	save	the	files	onto	a
		different	drive,	edit the programs first. Then load and run
		ASYMAKE1.	This	sets	off	creating	the	files,	and	when
		finished, chains ASYMAKE2 which finishes the job.

		Finally,	if you want to have the disk so you can boot-up and
		go straight into Asylum!, the .CMD files at the	end	of	the
		directory	are	the minimum recommended, so your Startup file
		should end with XBASIC ASYLUM.

		By this time, you should have something	like	the	directory
		shown	on	page	1.
		(N.B. Should your drives not have that capacity, you'll	have
		to	alter	the definitions of DR$ in ASYMAKE1 and ASYMAKE2 to
		split the data across disks.)

		ASYMAKE1 and ASYMAKE2 need not be put on	the	play	disk	as
		once	run, you'll never need them again unless your disk gets
		corrupted.

		WARNING: During the operation of Asylum!,	the	drive	is	in
		constant	use.	It	might then be a good idea every couple of
		hours to take out the disk and wave it around a bit	to	cool
		it	off	as	during	the testing of the Asylum Prototype, the
		disk got quite warm and started to smell a little.
	$Asylum Instructions. Page No. 2


	ASYLUM! (Follow the Cheese and Pickle Sandwich)

A Doppel-Ganger Adventures Incorporated Production 1986

	Part 2. The Story so Far and the Cast list.

	It all began on a dark, cold, rainy night. Settling back
		in	your favourite chair, listening to some of your favourite
		music, you decided to risk your sanity by running that	piece
		of	nonsence	known	as	the	Paula	Nancy Millstone Jennings
		Simulator, when suddenly, there came a knocking at the	door.
		You	opened	the door and there stood a tall dark-haired girl
		with a strange kind of look in her eye.
	"Hello yes?" you said.
		"You've heard of the Man from the Pru?"
	"Yes..."
		"Well I'm the Pru from the man. I'm	Prudence	Nausea	and	I
		need your help!"
	"P. P. P.", you	stuttered,	like	something	out	of	a
		Chocolate bar commercial, "Come in....."

		She	walked in, and, with a passing glance at the screen, now
		full of outrageous rubbish, began	to	pace	moodily	up	and
		down.
	"What can I	do	for	you,	er,	Prudence.",	you	said,
		regaining	the	composure you had lost on meeting someone you
		didn't know existed outside of a zany name in a bunch of Data
		statements.
		"It all began", she said, "A week ago. The phone rang in	the
		middle	of	the	night.	I answered the phone, and it was The
		Doppel-Ganger. He told me that he'd just	had	some	kind	of
		crazy	dream and some wild sort of mystical experience, and a
		strange compulsion to follow it up, which he felt he	had	to
		do.	I	told	him	to	go	back	to bed and stop eating those
		zarking cheese and pickle sandwiches before bedtime. The next
		morning I decided to pay him a visit, but he'd gone, complete
		with his 'Ford Prefect' bag, and left a note blu-taked to the
		wall."
	"What's it say?"
		"It	says,	'The	Doppel-Ganger	is out to lunch - Cheese and
		Pickle all around'."
	"So then what?"
		"So then this morning I got a call	from	a	guy	called	Leo
		McDeux,	the director of some sort of Asylum. He told me that
		The Doppel-Ganger was in one of his Padded Cells!"
	"So where do I come into this?"
		"I want your	help	to	get	him	out!	I	mean	OK,	so	the
		Doppel-Ganger is a bit weird at times, but not that bad! Will
		you help me?"

	You think for a moment that anyone who could write	such
		utter	garbage	as the Paula Nancy Millstone Jennings program
		deserved to be in an asylum,	but	dismiss	this	thought	as
		being unnecessarily evil. "Ok", you say, "I'll come. Where is
		this Asylum anyway?"
		"Cults."
	"I beg your pardon?"
		"Cults, there really is a place. Come on, follow me."

	You climb	into	Prudence's	navy	blue	Mini,	Prudence
		starts	the	engine	and	away	the	two	of	you	go, to the
		accompaniment of a song about Dolphins....
	$Asylum Instructions. Page No. 3


	ASYLUM! (Follow the Cheese and Pickle Sandwich)

A Doppel-Ganger Adventures Incorporated Production 1986

	The Cast of Characters..


1. The Doppel-Ganger.
		Born under the influence of a	passing	Improbability	drive,
		The	Doppel-Ganger's	life	has	been a string of meaningless
		coincidences. He first achieved minor notoriety in	the	late
		Seventies	as	a	regular contributor to a late night show on
		local independent radio, writing as many as a dozen humourous
		letters each week, and getting around a fifty percent success
		rate. In the Eighties moved into Computing, originally with a
		Tangerine	Microtan	system,	but	recently	scrapped this in
		favour of a Mandarin IP-68 FLEX system	(Eddie	II).	Does	a
		pretty	neat	Roger	Moore impression, and loves to drink Pan
		Galactic Gargle Blasters, after which he has	been	known	to
		dress	up as a mattress called 'ZEM' Also the inventor of the
		Super Doppy Snack, and the saying "Never eat	more	than	One
		Super Doppy Snack unless your name is Bernard Manning.."


2. Prudence Nausea.
		Of Prudence's origins little is known, except to say that she
		too achieved a notoriety by writing to the same radio show as
		The Doppel-Ganger. Here is someone who does not	live	up	to
		her	name,	as	prudent she is not! Despite a recent gloss of
		sophistication, she often finds it	hard	to	shake	off	her
		Heavy-Metal hippy-esque origins..

	!3. Mad Clive.
		What can you say about Mad Clive, or	Dame	Sir	(Mad)	Clive
		Sinklair Z.B.E. (Zeeb of the British Empire), to give him his
		full title, that hasn't already been said. Mad	Clive	has	a
		Huge	I.Q.,	is	balding (wore out his hair from the inside),
		has a ginger beard and wears glasses. He was admitted to	the
		Asylum	after	the	recent	C5	debacle	and sellout to Allan
		Sucrose, boss of Amtrak, for five million Yorkie bars.	Plans
		for	a	C6,	a four seater Family runabout, had to be dropped
		after Hanna Barbera threatened to sue on a	clear	breach	of
		their	copyright, saying that the design, and motive force of
		the C6 was clearly stolen from the	vehicles	in	their	well
		known Cartoon series, "The Flintstones".

	 4. Crazy Chris.
		Crazy Chris was one of Mad Clive's early proteges, and turned
		into	a	rival,	until	his nutty computer company reached an
		economic crisis and	Crazy	Chris	was	given	'an	offer	he
		couldn't	refuse'	by some Italians, resulting in a change of
		company name to Acornetto, and a new	liking	for	Spaghetti!
		Anyone	who	would	expect	to sell machines for the Barnsley
		Breadcake Company in this day and age at those sort of prices
		is clearly barking up the wrong oak tree.

	 5. Leo McDeux.
		Leo McDeux is the Asylum Director. Big Bossman,	the	man	at
		the top, or is he? He pompously and bombastically strides the
		corridors of the Asylum, continually stating, to use his	own
		words,	"I'm	the Boss!". But is there, in some secret hiding
		place, a 'Number One', a real big boss, using good old Leo as
		a mere figurehead?

	$Asylum Instructions. Page No. 4


	ASYLUM! (Follow the Cheese and Pickle Sandwich)

A Doppel-Ganger Adventures Incorporated Production 1986


6. Diana Dymchurch.
		Diana	Dymchurch	is	the	deliciously	evil Asylum Nurse. Of
		medium	height	and	slender	build	she	stalks	the	Asylum
		corridors	in her dark blue uniform, with black stockings and
		sharp stiletto heels, but her idea of a fashion accessory	is
		a rather evil looking Hypodermic Syringe. She really wants to
		give you the treatment, but what kind of treatment	does	she
		have in mind?

	7. Linda StClair.
		Linda is the Asylum Receptionist. Really	friendly	and	very
		helpful	she's	a	recent	graduate of the British Rail Charm
		School. She's fairly short, and plump,	but	don't	let	that
		confuse	you	as	she's	also	very	strong!	She	has a soft
		liverpudlian accent, but thankfully nothing up	to	(or	down
		to)	Cilla Black standards! Rumour has it that this member of
		the Asylum Staff is crazier than the inmates!!

	8. Dinky the little Shih-Tzu.
		Dinky is a small, but vicious, little Shih-Tzu who'se hobbies
		include terrorising Alsations, ripping papers to shreds	when
		the	paper-boy	arrives,	barking,	lots	and lots of walkies
		(Shh! Don't say that word!). He may only be small,	but	he's
		pure dynamite....

	9. You'll find out who this is later on...
		Ssssshhhh! Top secret very hush hush. This	character	is	an
		all-out bad guy, a real sort of 'Mr Hyde' character..!


	$Asylum Instructions. Page No. 5


	ASYLUM! (Follow the Cheese and Pickle Sandwich)

A Doppel-Ganger Adventures Incorporated Production 1986


Part 3. Parallel World Simulation and how to use it.
	The Doppel-Ganger writes....

		Hello there and welcome to Asylum!, the first Parallel	World
		Simulator	in	this	series	of Doppy and Pru adventures. The
		program (or should I say programs) act as	your	entry	point
		into	a	whole	Parallel	World,	which is just like the real
		world, only more so! In fact, it's	just	like	life!	(Life!
		Don't talk to me about life (Oh can it Marvin!))
	In this part of the parallel world, you find yourself at
		the	beginning	sitting	in a Mini with Prudence Nausea, just
		one of the Cast you'll already have read about, for	in	this
		parallel	world you are not alone! Others are there with you,
		free to move around, and do many of the things	you	yourself
		can	do. You'll soon find out that after typing in a command,
		it takes some time for it to execute that command,	and	some
		more	time for it to come back to ask you what you want to do
		next. Remember, the other characters need time to decide what
		to	do	and then to perform their actions, and the program to
		program chaining, and file opening, all take time, over	half
		of the move to move time, so please be patient, your computer
		is doing the best it can, but it's chained to the disk like a
		cartoon prisoner with ball and chain..
	On running ASYLUM, you'll be asked whether you	wish	to
		start	a	new	game. Answering "Y" at this point will restore
		the disk array files (LOCATION to FLAGS	-	see	page	1)	to
		their original values. As the simulation runs on these values
		are changed by various actions, so when you QUIT the game the
		values remain. Answering "N" will cause the program to resume
		from where you left off,	so	rendering	the	SAVE	and	LOAD
		commands you might expect useless.
	To talk to characters, either to pass the	time	of	day
		with	them,	or ask them to do something, just type something
		like:-
	PRUDENCE, HELLO
	CLIVE, GIVE ME THE AARDVARK.
		As	a	word	of	warning.	Some	characters	don't like being
		ordered around and will begin to resent it if you	give	them
		orders.	Politeness	does	count,	and	a 'Please' added will
		often make all the difference between a character doing	what
		you ask, or not.
	Asylum's parser can understand quite complex sentences,
		so something like :-
		PUT THE BEJEWELLED AARDVARK STATUETTE IN THE BATTERED OLD
		BRIEFCASE.
		or
		THROW THE DELICIOUS CUSTARD PIE INTO ETHEL'S FACE
		are all perfectly acceptable (or would be if the objects
		mentioned were in Asylum!) Just use grammatical english and
		all should be well. If you manage to type in something the
		computer doesn't understand, it'll let you know...

		Finally, two other	special	commands	(I've	mentioned	QUIT
		already) are SCRIPT and UNSCRIPT.
	SCRIPT	is	the	command	to	turn	on	Printer	output.
		Everything	will	then	appear on the printer, as well as the
		screen.
	UNSCRIPT will stop output going to the printer.
	$Asylum Instructions. Page No. 6


	ASYLUM! (Follow the Cheese and Pickle Sandwich)

A Doppel-Ganger Adventures Incorporated Production 1986


Part 4. Hints and Tips.

		Examine things when you can. Try not only doing an	inventory
		of	yourself,	but	also	try	doing	inventories	on	other
		characters. Learn who are your friends, and who	aren't	your
		friends.	He	who fights and runs away lives to fight another
		day!
	You	can	learn	a	lot	from	other	characters by just
		following them around	and	watching	them.	Remember	to	be
		polite	to	your friends, it doesn't really matter about your
		enemies though! In the Asylum, not all is as it appears, even
		when things appear to be what they appear to be, they're not!
		There are those that say that reality	is	an	illusion,	and
		life	just	a	figment	of the imagination, and is the answer
		really Forty-Two?
	Music	helps, as does a knowledge of little dogs' eating
		habits, and if you really find a record by	It's	a	Beautful
		day in any local record shop, let me know!

		Mad	Clive	is	now appearing in "No Computers please - we're
		members of MENSA" at the Cults Zeebodrome.

		Diana Dymchurch is NOT a member of the National Theatre..

		Leo McDeux is now available for Bank advertising, TV	series'
		about Legal persons and other thespian activities.

		This	Parallel World Simulator carries a Doppel-Ganger Health
		Warning :-

	$WARNING
		Many of the text descriptions in this program are of a rather
		long length and should	not	be	attempted	by	inexperienced
		operators.	Towels	are	harmful	if	swallowed	in	large
		quantities. Little Shih-Tzus can damage your ankles.


		This	has	been	a	Doppel-Ganger	Adventures	Incorporated
		production (C) MCMLXXXVI from the original idea (C) MCMLXXXV.

		There really is a place called Cults, and all the	characters
		in	this	adventure	game	are	based on people in Computing,
		Show-biz,	fellow	weirdos,	and	members	of	the	medical
		profession.	Swedish Railway Ticket joke from small column in
		Daily Mail. Brown bag by	Millets.	"It's	a	Beautiful	Day"
		cassette CBS 40-32133.

	Be Seeing You - Doppel-Ganger!


	$Asylum Instructions. Page No. 7
