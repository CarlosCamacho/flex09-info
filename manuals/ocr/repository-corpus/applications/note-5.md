# NOTE-5

> Source: `apps/screditor/SCREDIT - S-CREDITOR Editor - Program and Support Utilities.zip!SCREDIT.DSK!NOTE-5.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

TO ALL 6809 USERS -

The code provided on this disk is	not	optimized,	native	6809
code. Due to critical bugs found in the	6809	version,	we	are
cross-assembling our 6800 SCREDITOR	II	source	code	for	6809
systems.

Under most conditions, this should present no problems	in	your
system. There	are	certain	things,	though,	about	which	you
should be aware.

First,	be	sure	that	none	of	the	addresses	you	give	the
SCREDITOR II SYSGEN program are indirect	jump	table	addresses
(such as are used by S-BUG or MON-69). Since 6800 code has	been
re-assembled, the SCREDITOR II doesn't know that indirect	jumps
exist! In the case	of,	say,	a	keyboard	input	routine,	the
indirect jump address will contain the address	of	the	handler
itself. This is the address which you should supply	to	SYSGEN.
This same proviso applies to the SYSMON (exit) command.

Second, the manner in	which	interrupts	are	handled	in	your
system may or may not	be	compatible	with	the	SCREDITOR	II.
Until you are sure compatibility	exists,	you	should	not	use
your main system disk or the disk supplied with	this	order	to
test the SCREDITOR II. Make copies	(multiple	is	better!)	and
use a copy to test your program!

Finally, the SCREDITOR II does not set the direct page register.
This is generally not a problem, but if it	is,	then	you	will
have to add a patch to set the register. This	is	easiest	done
by putting the routine just under $0100, the current cold	start
address of the SCREDITOR II,	and	make	your	routine	the	new
start address. This will over-write	your	routine	on	startup,
but not until after the dp register has been set properly.

We have tested the resultant code on Smoke Signal CHIEFTAN	6809
systems and have encountered little or	no	problems,	but	your
system may be more hostile!
