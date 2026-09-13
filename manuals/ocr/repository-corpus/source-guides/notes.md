# NOTES

> Source: `sourcecode/library-disks/LIB48 - FLEX Source Library - Source Code and Build Files - Includes CORDIC, DISAS9, MONITOR.zip!LIB48.DSK!NOTES.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

MICROBOX NOTES
Chas. Yates
Printer BUSY
	I'm using a parallel input keyboard and thought I'd look into the
possibility of using the full 8-bit input to expand the character set
for APL.
	The monitor software masks off bit 7 of the keyboard input; but
this could be fixed. What passes as the `logics' supplied with the
Microbox show bits D0 thru' D7 from the keyboard feeding a '244 chip
and BUSY from the printer going to CB1(pin 18) of the 6821.NOT CORRECT
	The keyboard input is really only D0 thru' D6 and printer BUSY
replaces bit 7 on pin 11 of the '244. CB1 on the 6821 is not used.
One can see why!. It gets very hairy handling BUSY and the SYSCOM reg
(PB0-PB7 6821) together.So,without a lot of `kludging' or a serial
keyboard,I'm stuck with 7-bit input.

FORMATTING AND THE 1770 F.D.C.
	Using TRKDUMP.CMD from library disc #21,I find none of the discs
received from vendors(Micro-Concepts,Compusense) has `SIDE' encoded in
each sector preamble.FLEX doesn't check or care about it!.However,since
I was `dinking' around with interleaves,I re-coded bits of NEWDISK to
put in SIDE and also to make sure there at least 40 bit transitions
between INDEX and the first sector preamble in order to get the read
clock in the 1770 properly `sunk'.
	Later I discovered that one of the causes of the trouble I was having
coding the 1770 was in the monitor!If you power on the MB][ and then do
a HD at $FF10(COMREG for FDC) you'll find a status byte of $C5, which
amongst other things says the FDC is BUSY.The only way to get rid of this
is to do a forced interrupt($D0).This is evidently a design `glich' in
WD 17xx chips.I changed the code in the monitor(MINIT.TXT) and burned a
new ROM.(Since I had no 2764's and no way of blowing a 21volt chip,I used a
12volt 27256 with the code at $6000-$7FFF.Works fine)
	Also on this disc:-
FORMAT.TXT & FORMAT.CMD Faster version of NEWDISK partly using code from
Leo Taylor's INIT.Should be O.K. with MON09 Vers. 4.5 on single density;
but the double density routines also write the directory track(00) in
double density and you'll need to use the MONITOR also on this disc.
Formats an 80 trk. double sided in under 2 mins.
To run enter: FORMAT	or FORMAT <drv.no.>

MONITOR.BIN Main changes: changed MINIT to do force int on 1770
	changed DISK.TXT to allow d.density on trk.00
	got rid of AD utility,now HD gives combined alpha
	and hex dump.(Will need the room later)
NOTA BENE:I have got rid of STEP,STEP0,STEP1 etc in EQUATES since I only
have one 3msec drive.So if you have slower drives you maay need to alter
code.Again I'll need the space if I glue in Chris Lindsay's NEWSUBS.
Also MONITOR is set-up for 27256's in Eprom disc.
	There are bound to be `gotchas' in both these routines. They work
O.K. on my configuration at 2MHZ; but that's not to say they wont crap out
on some other set-up.
	By the way,I'm still able to read/write standard s.density and d.density
discs.
