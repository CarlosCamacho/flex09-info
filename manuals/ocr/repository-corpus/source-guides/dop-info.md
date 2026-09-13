# DOP-INFO

> Source: `sourcecode/library-disks/LIB37 - FLEX Source Library - Source Code and Build Files - Includes DOP-INFO, HALFRUNT, INSULTER.zip!LIB37.DSK!DOP-INFO.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

;Orchard Cottage,
	;Saville Hall Lane,
	;Dodworth,
	;Barnsley,
	;Yorks.,
	;S75 3NG

		Dear Reader...
	Doppel-Ganger here with some information on the
		programs on this here disk. The first few come from other
		sources and I thought maybe deserved a wider audience, and
		the last few are all my own work.

		TRAVESTY.BAS - This appeared in the July 1985 issue of 'BYTE'
		magazine for the IBM PC, and converted rather easily to
		Xbasic. This program takes in a text file, and from the
		probabilities of one letter coming after a certain sequence
		of other letters creates a travesty of the original! I'm not
		letting on as to the rumour that many Computer manuals have
		been produced using something similar! The output from the
		program is displayed on the screen and sent to a file called
		'TRAVESTY.DOC' so you can if you want do travesties of
		travesties!!

	The next four programs are sort of grouped together,
		as basically they're all slightly different versions of
		a certain type of program, the Conversational program.

		MARVIN.BAS is by far the best, this was originally for the
		Sirius 1 (Apt I guess.) and appeared in the May 1984 issue
		of Personal Computer World. Marvin the Paranoid Android is
		(for those who don't know) a character from 'The Hitch-
		Hiker's Guide to the Galaxy' and is a maniacally depressed
		robot. MARVIN simulates a conversation with Marvin, and
		has the nice feature of letting you add new keywords to its
		vocabulary. When first run it has to set up some files so
		you need quite a bit of space on the disk to run it, for
		both the sequential access Keyword file (only accessed on
		starting the program or when adding or deleting keywords)
		and the random access Reply file, used for replies to your
		input.

		INSULTER.BAS originally appeared in the October 1981 issue
		of Micro-Computer Printout and was orignally for the Pet.
		It's rather different to the more usual 'Eliza' type program
		as it excells in User Unfriendlieness, throwing insults at
		you on any occasion! If you want a good argument without
		upsetting anyone, try this!

		SLAVE.BAS is a modification of my own devising to the
		Insulter program, Slave is the Uriah Heep of computers,
		the idea originating from the final series of Blake's
		Seven, Slave still manages to be smarmily annoying
		by protesting how "very 'umble" he (it) is.

		HALFRUNT.BAS is a further modification, coming perhaps
		closer to the Eliza type by being a simulation of a
		session with Gag Halfrunt, (Zaphod Beeblebrox's private
		brain care specialist) another Hitch Hiker's Guide to
		the Galaxy character. It talks with the nearest you can
		get in text to a heavy germanic accent, and calls you
		names like 'Psychoid Werewolf' to boot (Which is what
		you'll feel like doing)

		Next time you want to confuse someone, let them have
		a go on one of the last four programs!!

		Finally we come to some Doppel-Ganger Originals!

		WAMDEMO.BAS is a program based around a few routines
		to allow the creation of a phoney 'Windows' type
		program in XBasic. Simply modify the reverse video on
		and off strings set up in line 50, the Clear Screen
		subroutine in line 70, and the Cursor control subroutine
		at line 90 to suit your own system, and then Wamdemo
		will run. At the heart of the program are what I
		call the 'Doppy-Glaze' routines, Windowmaker and
		Text Handler. Windowmaker when given certain
		parameters will print a Window in one part of the
		screen. Texthandler will make sure that if you put all
		output into a string and pass it to this routine, the
		text will be printed in the window and not allowed to
		go outside the border. When the window fills up,
		Texthandler calls Windowmaker to clear the window and
		starts putting text in the window again. The program
		contains a copious amount of REM statements concerning
		all variables used by the program, which with the
		exception of the Reverse Video strings, start with a
		'W'. The rest of the program demonstrates a menu-bar
		and pulldown menus. These routines are the basis of
		a Database program with full 'WAM' system. Why WAM?
		Well you can be sure it's got nothing to do with
		George Michael (who?) but instead in the same way that
		WIMP stands for Windows Icons Mice Programs, WAM is a
		nice acronym for Windows And Menus.

		PNMJS.BAS is rather an odd filename. PNMJS stands
		for 'Paula Nancy Millstone Jennings Simulator',
		Paula Nancy Millstone Jennings being yet another
		Hitch Hiker's Guide to the Galaxy character, credited
		with writing the worst poetry in the whole known
		universe! This program is far more sophisticated
		than the old Poet program in the library, as PNMJS
		creates perfectly grammatical sentences out of
		its word lists, all broken up into grammatical
		'building blocks'. Unlike previous versions I
		have written before, PNMJS has quite a little
		conuinity, being able to hold on to the first
		noun phrase, the second noun phrase, swap them
		around, or replace the first with the second
		and create a new second, and the verbs are all
		divided into groups, and PNMJS can use verbs from
		the same group again, leading to (sometimes) quite
		interesting output, which has been likened to some
		modern poetry. I myself have seen it come up with
		six lines which when looked at on their own, form
		a title, and a five line verse. There is the option
		to send all the output to a file named 'PNMJS-C.RAP'
		(good title eh?) for further perusal, or even to
		make a Travesty of it!!(if you're off your rocker
		that is..)

	But that's it for now - Watch out for more
	Doppel-Ganger Produce in the pipeline - Bye
	Doppel-Ganger.
