# FLEX

> Source: `flex-09/distributions/CCFLDOC - FLEX Operating System - Documentation and Examples.zip!CCFLDOC.DSK!FLEX.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,ll 65
,ju
,in 7
,ce 1
Introduction to FHL Color FLEX (*)

*FLEX is a trademark of Technical Systems Consultants, Inc.

1. Introduction

FHL Color FLEX, prepared by Frank Hogg Laboratory, Inc., is an enhanced version of the FLEX Disk Operating System by Technical Systems Consultants, Inc., for the Radio Shack TRS-80 Color Computer.	FHL Color FLEX allows the Color Computer to be used with a wide array of hardware and software products, far beyond the capabilities of the basic system as supplied by Radio Shack. For a list of some of the software products available for FLEX, see Appendix D.

The rest of Section 1 details the minimum hardware configuration required to run FHL Color FLEX. Section 2 of this document describes some of the features of FHL Color FLEX. Features of FLEX as supplied by TSC are not described here; some articlesc are referenced in Appendix A. Section 3 provides a tutorial on the use of some of the commands provided with FHL Color FLEX.

Minimum Hardware Configuration.

To run FHL Color FLEX you must have a TRS80 Color Computer with Disk Extended Color Basic and at least one disk drive.	This implies that the Extended Color Basic ROM is installed in the Color Computer.	In addition, 64K dynamic RAMs must be installed in the Color Computer, which must be configured as a 32K Color Computer. Finally, a small hardware modification is required inside the case of the Color Computer to allow the ROMs to be disabled under software control, allowing the full 64K of RAM (minus the top 256 bytes) to be accessed.

If you do not have a Color Computer, you may purchase one already modified and ready to run FHL Color FLEX. Some vendors are listed in Appendix B. If you have a Color Computer that does not have 32K, Radio shack will upgrade it for you.	The RAM chips used by Radio Shack will probably be full 64K RAMs, but they must be tested after performing the modification, and one or two may need to be replaced.	Alternatively, if your computer is a recent revision (D or E), a 64K upgrade kit is available.

If you have a 32K Color Computer, Appendix C tells you how to perform the modification to use the full 64K.

Running FHL Color FLEX on the modified 64K Color Computer with the Radio Shack disk system and Disk Extended Color Basic is accomplished by inserting the system disk in drive zero and entering:

	RUN "FLEX"

2. Features of FHL Color FLEX

Disk Drive Support

The disk drive supplied with the Color Computer disk system by Riadio Shack is a 35-track, single-sided, double-density drive with a stepping rate of 30 milliseconds.	It is possible to purchase an 80-track, double-sided, double-density drive with a stepping rate of 6ms.	This disk will store more than four times as mucjh information as the Radio Shack disk, and will perform track seeking oprations five times faster.	FHL Color FLEX allows these high-performance drives to be used with the Color Computer.

A section of memory in the FLEX operating system is reserved for ak Drive Configuration Table.	This table contains information about each drive in the system, up to a total of four drives. (Only three drives may be used if double-sided drives are included.) The information about each drive in the table includes whether or not the drive exists, whether or not it is double-sided or double-density, how many tracks it has, and what its stepping rate is.	This means that not only may you use high-performance drives in the system, but also you may mix high-performance drives with standard Radio Shack drives in any combination. Another feature of the Drive Configuration Table allows the drive number used by FLEX (the logical drive number) to be different from the drive number according to the wiring (the physical drive number).	Care must be exercised using this feature, because the number switching is not in effect during boot-up, and because different logical drives may be assigned to the same physical drive and vice-versa, possibly confusing the FLEX file management system.

FHL Color FLEX contains another feature rarely found in FLEX systems for five-inch disks.	A five-inch drive has no provision for telling the computer that there is no disk in the drive, or that the door is open.	This means that on most five-inch FLEX systems the software will hang up if you accidently access a drive which does not exist, or which exists but does not contain a disk.	In FHL Color FLEX, an access to a nonexistent drive will immediately return an error (because the Drive Configuration Table indicates that the drive doesn't exist.)	A time limit is imposed on accesses to existing drives so that if the drive is not ready, an error will occur.

Another feature of the disk package in FHL Color FLEX is that the time delay before motor shutoff occurs is adjustable.	The time delay may be overridden by striking the CLEAR key, which will cause the motors to shut off immediately.

Keyboard Features.

Every ASCII code may be generated from the Color Computer keyboard under FHL Color FLEX.	To allow for this, some of the keys must serve dual functions.	Keycodes commonly used in FLEX have been assigned so that they may be easily generated.

If the up-arrow key is struck alone, an up-arrow or circumflex is generated.	However, if the shift key is held down, the up-arrow key serves as the CTRL key.	In the shifted or unshifted mode, the break key generates an escape code.	In control mode, however, the break key is another case-shifting key, called super-shift.	The super-shift feature and the CTRL feature allow all codes to be generated. Appendix E contains a list of the codes generated by each of the keys, in each mode.

Some special function keys are worthy of note.	The clear key (unshifted) causes the drive motors to stop immediately. A shift-zero toggles the alpha-lock function; If alpha-lock is on, only upper-case letters are generated.

The number of times that the keyboard is scanned for debouncing purposes is adjustable, using the SETUP command. This feature allows the debouncing operation to be optimized for faster typists or, on the other hand, for bouncier keyboards.

Display Features

The display package included in FHL Color FLEX contains many features and adjustable parameters to enhance the capabilities of the Color Computer display.	Either normal or inverse video character display may be selected; in either case, lower-case letters are displayed using the opposite mode.	The user may select either a blinking or non-blinking cursor, which either blocks over or inverts the character under it. The cursor may also be disabled. The color of the display screen may be either orange or green.

Characters which scroll off the top of the screen are saved in a buffer area of memory.	These characters may be rolled back onto the screen for inspection. Since scrolling characters through this buffer area slows down the output, the size of the buffer may be decreased by the user to alleviate this problem.

Other features of the display package include direct cursor addressing, clear end-of-line and end-of-screen, home, and cancel line.	When a line longer than 32 characters wraps around the screen, a special wraparound indicator appears at the left margin, consisting of a half-width character block.


The control-G bell is adjustable in pitch and duration. See the SETUP command for information on these adjustments; for information on the control codes for various screen operations, see Appendix E.

A Note about Motor Shutoff

There is no means to automatically shut off the drive motors in the Color Computer while running FLEX.	Automatic motor shutoff is provided only while a program is waiting for keyboard input.	If no key is pressed for a certain time, the motors are shut off.	This time is adjustable using the SETUP command.	The shutoff occurs after the cursor has blinked a certain number of times; thus the delay is also changed by changing the blink frequency.	Note that virtual cursor blinks occur even if a nonblinking cursor is selected.

Printer Support

The P command (used to redirect output from a program to the printer) has been included as a memory-resident command.	It redirects output to the Color Computer RS-232 port.	Several options, adjustable using the SETUP command, allow almost any ASCII printer to be used.	The baud rate isk adjustable from 110 to 9600.	The number of stop bits may be changed from 1 to 255. The printer may be either an auto-linefeed printer or a normal CR-LF printer.

Access to Color Basic

Programs are provided to copy Color Basic and Extended Color Basic to RAM (the MOVEROM command) and to run Extended Color Basic without disturbing FLEX (the CBASIC command.) This allows Color Basic to be run quickly for scratchpad calculations and so on while working under FLEX. Disk Extended Color Basic is not usable under FLEX at this time.	Note that CBASIC is a very fast command; In fact Color Basic starts faster from typing CBASIC than it does from the Reset button!

2. FHL Color FLEX tutorial

The very first thing you should do with your FHL Color FLEX disk (the disk that you purchased) is to write protect it.	Do this by placing a write protect sticker over the square notch on one edge of the disk.	The sticker should wrap around the disk, covering the notch on both sides.

Now you can install the disk in Drive 0 of your Radio Shack TRS80 Color Computer and Disk System.	Type the folowing:

	RUN "FLEX"

Shortly the screen will clear and you will see the FHL Color FLEX banner.	FLEX will prompt you for the date; enter today's date. This will allow FLEX to remember the date you create any files.

Type "CAT" to see the files on the disk.	The .CMD files are commands; notice that CAT is one of them.	All of the files are explained in this documentation.

Creating a new system disk.

The following assumes that you have only one drive in your system.	To create a new system disk, you must first format a blank disk.	Do this by typing "NEWDISK 0".	Newdisk will then ask you if you're sure; use this opportunity to remove your system disk from Drive 0 and install the blank disk before typing "Y". ANY FILES ON THIS DISK ARE GOING TO BE ERASED!

To continue the operation, type "Y" to the next question as well.	Answer the remaining questions appropriately.	Typical answers would be single sided, double density, 35 tracks.	If your drive is capable of other configurations and you have informed FLEX of this using the SETUP command, you may use the other configurations.	See the documentation on NEWDISK for more information.

When formatting is completed, reinstall the system disk and type "PUTBOOT.LDR 0". Reinstall the new disk before answering the question. This program will put the Radio Shack files and directory on the disk, so FLEX can be bootstrapped.

Next reinstall the system disk and type "SDC 0.FLEX.SYS".
The Single Drive Copy program will prompt you to swap disks as it copies the FLEX system from the old disk to the new disk.

Reinstall the system disk and type "LINK 0.FLEX.SYS". Put the new disk back in before typing "Y". This program tells the boot loader where to find the FLEX system.

You are now ready to copy the command files and so on to the new disk.	DO NOT COPY PUTBOOT.LDR!!! If you attempt to do this, the results will not be useful.	You must use your original master disk to create a new bootable disk.

If your system has more than one drive, the procedure is basically the same.	The swapping of disks is no longer required.	Place the new disk in a different drive and specify the drive number instead of 0 in all the commands. You may also use COPY instead of SDC.

To add a new drive to the system, run the SETUP command.	This command is directed by arguments typed on the command line.	See the documentation on SETUP for complete information. For example, if you want to add Drive 1 which is a regular Radio Shack drive, just type "SETUP 0".	If, on the other hand, the drive is double sided, has 80 tracks, and uses a 6ms step rate, type "SETUP 0DT80,6".

Running COLOR BASIC

Suppose you want to run COLOR BASIC to do a quick calculation, or even a short program that you will type in.	Just type "CBASIC" and before you can say "PMODE 4,1", you'll be ready to go.	CBASIC prevents the use of the DISK BASIC so that FLEX can remain in memory.	To return to FLEX, type "EXEC".	If you have changed the EXEC pointer (by loading a machine language program from casette, for example), type "EXEC &HC100".

It is of course possible to erase FLEX from memory and run the full DISK BASIC.	Do this by typing "MON". FLEX must be rebooted after doing this.

Other FLEX Features.

Suppose you're playing SANCTUM on the Color Computer under FLEX and you forgot what you saw a couple of turns ago.	The critical information has disappeared off the top of the screen.	Just start typing Control-D	(SHIFT ^ D simultaneously) until what you are looking for comes back.	Obviously a limit exists; when you run into it, Control-D won't work anymore.	It's best not to type any letters or carriage return, etc. while "rolled back" as this can confuse the output software.	When you're done looking, type Control-F to roll back to your original position.

It may bother you that the scrolling of the screen under FLEX is slower than it is under COLOR BASIC.	This is because time is required to scroll the charcters through the extra memory that Control-D lets you see.	You can speed up the scroll, while sacrificing the extra memory, by typing "SETUP TSFBE0,".	Once again, see SETUP for what's going on here and what your other options are.

You may like to make some of these options permanent installations in your FLEX system. Of course, you could put the required SETUP command in your STARTUP file, but this uses up some time during bootup.	A better way is to include the options right in the FLEX.SYS file.	To do this you must create a temporary file, called OPTIONS.BIN perhaps, to contain the options.	Type "SETUP FOPTIONS " followed by your options.	Instead of effecting the options in memory, SETUP places them in the file.	Now append FLEX.SYS to OPTIONS, creating a new file which will become your new FLEX.SYS.	On a single drive system:

	"APPEND FLEX.SYS OPTIONS.BIN NEWFLEX.SYS"
	"DELETE FLEX.SYS"
	"RENAME NEWFLEX.SYS FLEX.SYS"
	"LINK FLEX.SYS"

On a two-drive system:

	"SETUP F1.OPTIONS ..."
	"APPEND 0.FLEX.SYS 1.OPTIONS.BIN 1.FLEX.SYS"
	"LINK 1.FLEX.SYS"


Hooking Up a Printer.

You can attach a printer to your Color Computer and run it under FLEX very easily.	The hookup is the same as it is for using the printer under COLOR BASIC.	Serial data will come out the RS232 Data Out pin, as long as the Data In pin is held high.

Use the SETUP command to tell FLEX what kind of printer you have.	Set the baud rate by typing "SETUP PB1200," for a 1200 baud printer, as an example.	If the printer does NOT perform automatic linefeeds for each carriage return, type "SETUP PN".	You may want to add more stop bits, by typing "SETUP PS3," for 3 stop bits.	These three	commands can be combined by typing "SETUP PNS3,B1200,".

On some printers it may be necessary to adjust the baud rate count by +/- six per cent to achieve reliable transmission.	FLEX generates the best approximation of the baud rate you type that it can.

You may use the printer in two different ways.	If you type a Control-P, everything that goes to the screen will also go to the printer until another Control-P is sent.	Also, you may use the P command, which redirects the output from a command to the printer.	Try "P CAT".

4. Conclusion.

The information above should get you started with FHL Color FLEX.	The rest of this manual contains more detailed information about all of the commands and features of FLEX.	Good luck and have fun!
