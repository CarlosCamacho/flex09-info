# READ-ME

> Source: `dev/forth/FTHCMD1 - FORTH Language - Program Disk.zip!FTHCMD1.DSK!READ-ME.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

Frank,
Everything seems to be working correctly.
To get it running, execute FORTH.CMD, then put
the disk marked "DRIVE 0" in drive 0 and the
disk marked "DRIVE 1" into drive 1 and follow
the manual.

If you make changes to anything on blocks 12 through 84,
execute FORTH5.COR, put the FORTH disks in and enter
	12 load
and hit return.	You will have to wait for a while.
To create a new command file, from FORTH enter
	here hex .
and note the number.	Return to FLEX with
	system mon
then enter
	SAVE,FORTH.CMD,0000,<number>,0000
Be sure you put FLEX disks back in.

You must use LOWER CASE with FORTH.

Hope it works, and I hope you (and others) enjoy it.

Chuck
