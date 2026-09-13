# UC-READ

> Source: `flex-09/distributions/255X32 - Unix Kermit C Source and Terminal Library - 4 MiB Disk Image.zip!255X32.DSK!UC-READ.ME`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

Notes on UC.

I have put uc on a number of UNIX systems.	I have found that
you need to watch out for cbreak.	This condition of stty will need
to be changed on input to uc and reset back to -cbreak on exit.
This can be done within uc.	However, I simply make a shell
script to run uc with a menu:

	stty cbreak;uc -z;stty -cbreak

I call this script "modem".	This might be an easy way for
you to try out uc on your UNIX system.

I have made a few changes to the code from the orig.	The
changes are in error control when aborting the program.	It
now seems to work without stty problems on exits.

c.dragon

//12/05/84
