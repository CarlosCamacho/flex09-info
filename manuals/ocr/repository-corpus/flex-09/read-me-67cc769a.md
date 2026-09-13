# READ-ME

> Source: `flex-09/distributions/FLX_SOLN - FLEX 5.05 System with Solution Utility.zip!FLX_SOLN.DSK!READ-ME.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

Changes made to FHL FLEX for version 5.0:5

1. SOLUTION.CMD added.

	SOLUTION.CMD switches FLEX console I/O over to the
	SOLUTION ACIA port.	It works like EXT does.	There are
	no parameters required on the command line.

	SOLUTION sets up an interrupt-driven routine that turns off
	the motors in about the same amount of time that the internal
	timer did (it is adjustable by changing MOBL and BLINKP with
	SETUP, though this has not been tested), but the timeout is
	independent of input scanning, etc.

	This required extensive changes to FLEX and caused many
	problems.	I recommend we hold off on this till it has been
	much more thoroughly tested.

	I think we should change SOLUTION so it will not run unless
	it finds the ACIA.

	NEWDISK will need to be changed to disable interrupts while
	writing tracks.

	We should run as many applications as we can under the new FLEX,
	both with and without the SOLUTION.

2. Some new vectors added to the disk drivers:

	$DE2A	DACCES	Three bytes at this location are reserved
	for a jump to a routine which is called
	whwnever a disk access occurs.	FLEX.SYS
	originally contains an RTS and two NOPS here.

	$DE2D	IRQV	Two bytes, contains $010C.	If the IRQ vector
	is changed, this value must be changed to
	point to it.

	$DE2F	NMIV	Two bytes, contains $0109.	If the NMI vector
	is changed, this value must be changed to point
	to it.

3. The keyboard translation routine has been changed so the control
	function (shift-up arrow) is not needed to produce < and >.

4. EXT and INT were changed for compatibility with the new FLEX and
	with SOLUTION.
