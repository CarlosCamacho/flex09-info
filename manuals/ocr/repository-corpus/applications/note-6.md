# NOTE-6

> Source: `apps/screditor/SCREDIT - S-CREDITOR Editor - Program and Support Utilities.zip!SCREDIT.DSK!NOTE-6.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

TO ALL 6809 USERS -

Referring to NOTE-5, this version of SCREDITOR II	is	a	cross-
assembly of the 6800 version of SCREDITOR II. Because	of	this,
the various hardware options assume a 6800-type	system.	Common
to essentially all 6800 systems is echo control...that is,	some
method of determining whether or not a character	received	from
the keyboard port will then be echoed to the display port.	Many
6809 systems lack this facility.

If your operating system	automatically	echos	characters	from
keyboard to screen, and cannot be disabled from doing	so	(such
as with many versions of flex), you should run	SYSGEN,	specify
either a TYPE ONE or TWO keyboard (depending	on	your	system),
and then make one of the following changes:

1) FOR A TYPE ONE (ACIA) KEYBOARD -

	Replace INPSET with the following code:

	INPSET	RTS
RETURN DOING NOTHING

	Replace INPRES with the following code:

	INPRES	RTS
RETURN DOING NOTHING

	Replace INPCHR with the following code:

	INPCHR	LDX	PORTAD	POINT TO PORT
	LDAA	1,X	GET THE INPUT
	ANDA	#$7F	MASK PARITY
	RTS
AND RETURN

2) FOR A TYPE TWO (PIA) KEYBOARD -

	Replace INPSET and INPRES as above.

	Replace INPCHR with the following code:

	INPCHR	LDX	PORTAD	POINT TO PORT
	LDAA	X		GET THE INPUT
	ANDA	#$7F	MASK PARITY
	RTS
AND RETURN

After making these changes, you should then	be	able	to	close
the new file, assemble it and overlay the version	of	SCREDITOR
II which matches your system just as the manual specifies.
