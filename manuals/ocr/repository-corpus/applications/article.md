# ARTICLE

> Source: `apps/spelling-dictionaries/DICKBFS - Spelling and Dictionary - Program and Support Utilities.zip!DICKBFS.DSK!ARTICLE.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,* 64k color computer article from rich
,HD


,,
,FT


,,
,ll 60
,cs 10
,nps
,ps
,ju
,pc \
,lm 15
,sp 4

,ce
\27,14\23222K2 2R2A2M2 2F2O2R2 2F2R2E2E2!


"How to run Pascal, C, and Cobal, not to mention XFORTH, esther, and spelltest, on the TRS-80 COLOR COMPUTER"

	Someday, as the Honeywell advertisement would say, integrated circuit processing will become so inexpensive that computer memory will be available for free.

	That day is today, for owners of the Radio Shack TRS-80 COLOR COMPUTER.

	The story begins with my early production model (with a 3-digit serial number) of the 4k color computer.	Its logic board had some extra wires and things on it, indicating that the design was not quite perfected when it was produced.	I heard that radio shack would replace the board with a newer version if I purchased their 32k ram upgrade for $149.00, so I decided to give it a try.
	
	When I took the computer to the local computer center, I was told that the upgrade would only cost $99.00. I did learn, however, that radio shack is unwilling to work on a computer which has a modification in it, even if the mod is electrically disconnected. They did complete the upgrade, and indeed they did install a new logic board, containing eight memory chips with unrecognizable part numbers on them.

	Various rumors have been circulating about how the 32k upgrade is accomplished. it is not done by piggybacking 16k rams! Neither is it done by installing 32k rams, as radio shack contends.

	The 32k dynamic ram was actually only available for a short time. These parts were actually attempts at 64k parts that were only half-good, or they had some bad bits in one half or the other. The 32k upgrade was originally designed to take advantage of these parts - a jumper exists on revision E of the color computer circuit board to select which half of the 64k dynamic ram is accessed.

	Since then, memory manufacturers have learned how to produce 64k chips with sufficient yield to drive the cost lower than you or I, or radio shack, expected. these chips are available by mail order, in small quantities, for less than $12.00 each. radio shack can certainly buy them in quantity at a lower price.

	The astute reader will have guessed the punch line by now. The 32k color computer actually contains 64k rams! I am not in a position to guarantee this, of course, but so far it seems to be the case. I will now tell you how the "other 32K" might be useful to you.


,CE
\27,15\2U2S2I2N2G2 2T2H2E2 2F2U2L2L2 26242K2 2R2A2M2.


	None of the versions of radio shack color basic know how to use the other 32k. As a matter of fact, this memory is not available to the cpu at all in an unmodified color computer. This is due to an easily correctible omission in the design of the computer.

	The dynamic memory in the color computer is controlled by a chip known as the sam, or synchronous address multiplexer. The sam bears the Motorola part number 6883, or 74ls783. The sam takes care of refreshing the rams and interlaces the access cycles of the cpu and the video display so that no "specks" occur on the screen. The sam must be programmed differently for 4k, and 16k, and 64k rams. (this is why color basic 1.1 was written - version 1.0 didn't know about 64ks.) the sam also provides address decoding for the three roms, as well as the i/o hardware.

	As the sam was being designed, Motorola considered the possibility that it might be useful in systems which did not use rom, but might want to use 64k of ram (minus 256 bytes for I/O, etc.) For this reason the selection of rom in the sam is programmable. If you whisper the right thing to the sam (POKE &HFFDF,anything), the roms will go away, at least in theory, leaving behind nearly 32k of clean, untouhed ram.

	Well, we need a more sophisticated theory, because it doesn't quite work. The sam will still try to select the roms if the cpu writes to those addresses, regardless of how it is programmed. I guess motorola must have thought that this decoding might be used for something - clearly it wouldn't hurt, since the system designer would have to provide logic to prevent the roms from being turned on in a write cycle anyway. (the rams are "selected" for write purposes all the time.)

	Radio shack, on the other hand, didn't see things the same way; they figured they would avoid writing to that area, so no problems would result. As a matter of fact, the first thing color basic does (after programming the sam) is to test the memory from zero until it finds a byte that won't write. when this test hits address &H8000, the cpu tries to write the roms with exactly the opposite data they contain, and at the same time the roms are reading - resulting in two different chips trying to put different data onto the same bus at the same time.

	The real tragedy is that a few unused nor gates exist on the color computer circuit board. You only need one of these to solve this problem. (radio shack designers - take note.)


,CE
\27,15\2T2H2E2 2M2O2D2I2F2I2C2A2T2I2O2N2 2I2S2 2R2E2V2E2R2S2I2B2L2E2.


	One of the extra nor gates must be connected into the circuit as shown in figure 1. this modification disables the selection circuitry (G2B high) if a write is attempted (r/w low) and a rom is addressed (r/w low). If you have some experience with fine soldering, you can accomplish this modification in a reversible fashion, allowing you to run to radio shack if your color computer breaks. Warning - you must remove that nasty sticker on the back, thus voiding your warranty (if you're still covered), to get inside.

	The procedure is as follows. remove the case and the top of the rf shield, on the right behind the keyboard. you should be able to find the ic's and TP1 as shown in figure 2. They are also marked on the board. U11 is a 74LS138, and U29 is a 74LS02.

	You may wish to obtain a new 74LS138 and a 74LS02, so you can save the "originals" for a rainy day. in reality radio shack probably doesn't remember what brand of ic it put in your computer, but precautions are cheap. Anyway, carefully remove those two ic's. (they are not especially sensitive to static.)	bend pins 4, 5 and 6 of the 74LS02 up in the air, as shown in figure 3. They must be almost straight up so they don't touch the shield. similiarly disfigure pin 5 of the 74LS138. (be gentle!)

	Next, using a short piece of 30-gauge wire, connect pin 6 of the 74LS02 to pin 8. pin 8 must plug back in, so try not to get solder down on the pin - you should tack the wire on the very top of the pin, where it enters the package. if it doesn't come out right, buy another 74LS02 - it costs much less than a new computer.

	You can do the rest of your soldering either before or after you plug the chips back in; use your own judgement. Pin 4 of the 74LS02 must be connected to pin 5 of the 74LS138, and pin 5 of the 74LS02 must be connected to TP1. I recommend that you do not solder to TP1. just use a wire wrap tool to wrap the wire around the pin, so it can be pulled off.

	After you have reinstalled the ic's, the wiring should appear as in figure 4. check carefully for shorts!

	At this point you can turn on the computer and do a "PRINT MEM." if it says the usual number, all is probably well, so put it back together.

,CE
2T2E2S2T2I2N2G2 2Y2O2U2R2 2N2E2W2 2F2R2E2E2 2M2E2M2O2R2Y2.


	The extended color basic program in listing 1 will test the ram which you have just made available. save it before you try to run it, because if you mistype one of those data statements, anything can happen. the program will take about a minute to get set up, after which it will print "ok" if your memory is good. if you do have a problem, it will tell you the address and the data read from the ram, compared to what was expected. I would like to hear from you if you do find errors. If the errors occur in only one or two bit positions, they can be fixed with one or two 64k rams, for one or two ten-dollar bills. No big deal.


,CE
\27,15\2W2H2A2T2 2D2O2 2Y2O2U2 2D2O2 2W2I2T2H2 2I2T2?


	You now own a computer with almost 88k of memory, in a box no bigger than a typewriter. this fact alone may be enough for some of you. However, a large collection of software exists which can now be run on your computer.

	The most important item in this collection is the popular FLEX operating system. (FLEX is a trademark of Technical Systems Consultants, Inc.) Frank Hogg Labs is developing a package which will allow FLEX to be run on the 32k color computer, with the radio shack disc system, and the modification described above. FLEX will reside in memory at addresses &HC000-&HDfff, as always. addresses 0-&HBFFf will be available for user programs. addresses &HE000-&HFFEF will be available for utility programs. (we are working on an enhanced display package, using hi-res graphics to simulate a 41-by-24 screen. that's better than an apple!)
	
	With FLEX you have a whole cosmos of software available to you. besides the items mentioned in the subtitle, there are basic compilers, business programs, adventure games, assemblers and text editors, word processing software, machine-language debug programs, disc system diagnostic packages, and too much more to mention. FLEX is an excellent system which is widely supported.

another way to do it.
=====================

	Frank Hogg Labs is working on a neater way to do the hardware modification. This would be a small printed circuit board which replaces U11, as shown in figure 5. A jumper wire would clip onto TP1 to complete the circuit.

	Figure 6 shows the logic diagram of the board. This circuit is identical to the other method, because U11 pin 3 is connected to U29 pin 8 inside the color computer. one warning - we have not yet tested this board.

	Figure 7 hows the layout of the board. Figure 8 shows the placement of components on the board.


,CE
2S2U2M2M2A2R2Y


	The 32k upgrade of the radio shack trs-80 color computer is accomplished by installing 64k dynamic ram chips. With a simple, reversible modification, nearly all 64k of this ram can be utilized. A package is being developed which will allow the FLEX operating system to be run on the modified 32k TRS-80CC with disc. You can do a lot of stuff with that.

	This article was prepared, using a preliminary version of the FLEX package, on a color computer.
