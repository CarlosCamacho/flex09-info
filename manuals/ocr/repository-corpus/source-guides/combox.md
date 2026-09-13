# COMBOX

> Source: `sourcecode/library-disks/LIB41 - FLEX Source Library - Source Code and Build Files - Includes COMBOX, PAGER, ROVER.zip!LIB41.DSK!COMBOX.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

***	COMBOX.DOC	***
====================

PREAMBLE :---
Shortly before Christmas I took delivery of my first modem and the
comms prog "Termflex". Having come, (with great regret), to the
conclusion that Microcosm is totally inadequate as a primary means
of communication between 68-Group members, my object was to support
the recently inaugurated 6809-BBS, which, as I see it, offers the best
chance of prolonging the active life of the club.
	It soon became obvious that "Termflex", although good as far as
it goes, dose not go nearly far enough. Alternative comms progs for
Microbox seem to be few and what is available costs upwards of #30
with no guarantee that it will be satisfactory. I therefore decided to
write myown comms prog. COMBOX represents the results to date. The prog
is still experimental and not adequately tested...some features have not
been tested AT ALL. I am releasing it in this state in the hope that
other PLM will make some contribution to the R&D effort. All I can
promise is that it is suitable for intercourse with "our" BBS.
	In what follows I express my current opinion on a number of
matters: as an admitted tyro in the comms field, I reserve the right
to change my mind on any of these points in the light of further
experience.

SPECIFICATION :---
	1).	The prog must not be excessively "user antagonistic".
	2).	Must offer a sufficient choice of protocols to converse
		with any normal scrolling-ascii-BBS. ie.It should be as
		versatile as possible consistent with (1).
	3).	Two Microboxes using Combox to be able to exchange ANY
		form of data.
	4).	Microbox/Combox to be able to exchange ascii-text at least
		with any other make of m/c using appropriate software.


	Of the above, I am reasonably satisfied with (1), (2) is not yet
fully implemented but the basics are there, (3)&(4) are, I hope,
implemented but have yet to be tested.

ADAPTING TO YOUR HARDWARE :---
	My system comprises - early issue Microbox - //-keyboard on
port 0 - //-printer on the "Centronics" port - speed-buffering
modem on port 2.
	The program as it stands is suitable for the above. When
writing the prog I bore in mind that many PLM will have either a
keyboard or a printer on port 1 and have tried to cater for these
variations but please note that I have NOT been able to prove that
it works with anything other than myown system.
	a).	If you use a serial KB change the constant "KPORT" from #0
to #1. (I am assuming that your KB is on port 1, as it should be).
	b).	If you use both serial keyboard and serial printer then the
printer will have to be disconnected to make room for the modem.
Many modern modems incorporate a printer port but it is usually not
ecconomic to download directly to printer...even the fastest printers
are too slow.
	c).	If your modem is not speed-buffering and you habitually use
V21 it will pay you to make the default baud-rate 300 bps. Under
"Defaults" change BAUDRT from #$00 to #$FF.
	d).	If you have a V22bis modem you will need to change the default
baud rate to 2400. This would involve appropriate changes to the INIT
routine as well as changing "1200" to "2400" throughout. However if
you go in for extravagant luxuries like V22bis, you are not likely
to be relying on buckshee softwre anyway!
	e).	If you have your modem on port 1 you must be a genuine Old-
English Eccentic. Oddballs of your sort do not take kindly to advice
from me or anyone else so to you I say merely "Good Luck to you Sir,
there are very few of us left".
	f).	Obviously the 'LOGMSG' must be altered to give your personal
details. The ";" seperators are required. (Not all boards accept auto
log-on).
	g).	When calling another Micrbox as opposed to a Bulletin Board,
one of you must have ECHO ON and the other ECHO OFF.

PUTTING IT TO USE :---
	Before loading COMBOX you must first load PAGER. Pager is only
a dual-page version of PRETTY. I have already published Pager via the
6809-BBS but it is included on this disc because I am trying to reach
the PLM that other media cannot reach!
	When loaded Combox displays its command menue. If you have
made the required changes to the prog to suit your hardware as
suggested above the default options should be OK. If in doubt cmd 7
allows you to examine the settings and alter them if neccessary.
Normally you go straight to cmd 1 (Chat mode) then "^R" and open a
file for recording the proceedings then "^T" to disable logging and
finally establish the connection as detailed in your modem manual.
(If you are calling a board which you have not used before it is
advisable to record the entire proceedings. ie. omit "^T" in the
above sequence).
	Further instructions on using the prog are outside the scope
of this Doc and anyway, being a novice myself, I am not competent to
give them. To others in the same boat I would say that it is mainly
a matter of following prompts, using your common sence, and refusing
to panic! All Sysops whom I have encountered to date have been very
helpful. They naturally want as many people as possible to use their
BBS and it pays them to be patient with beginers.


***	PLM	***
This is a convention I have adopted to avoid tedious repetition of
phrases like "other users of Micrbox-2". The initials stand for
"Pugnacious Little Man/Men"...what else could you call a micro-boxer?
