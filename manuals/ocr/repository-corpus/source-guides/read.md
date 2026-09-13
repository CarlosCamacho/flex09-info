# READ

> Source: `sourcecode/library-disks/LIB29 - FLEX Source Library - Source Code and Build Files.zip!LIB29.DSK!READ.ME`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

Many apologies for the long delay, but I have been heavily
involved with work on our VAX systems, and the Gandalf PACX
units, since early December.

When your disk first arrived, I tried to transfer kermit onto
it, but ran into problems.	I could get a directory off your
disk, but not all files were readable, and my guess is that
you are able to use more than 35 tracks.

from the 13th December until Christmas, and from then on, I
have had my hands full with some of the work involved in a
major change to our systems.	We have 7 VAX systems, and over
the "vacation" (14/12-4/1) made a "cluster", connecting
2 x 780 and 2 x 750 systems together, sharing all 6 x 450 Mbyte
user disks and allowing batch and print jobs to be run on any.

I was one of a team which wrote the 6809 software to control the
older of our two PACX systems, and had to set up new definitions
so the terminal load gets shared (reasonably) across the 4 VAX.

Once term started, all hell broke loose!	We have had a couple
of problems, one a microcode error, and then a power failure in
the night that put everything off!


With regard to the KERMIT for Flex...	I have a Dragon 64 and 32
at home (though my double drive is dead at the moment) and I plan
to do some work on versions of Kermit for DragonDos, Flex, OS9.

Please feel free to pass on source code to the 6809 Users' Group,
with the proviso that if anyone makes improvements (such as the
sorting out of the "file in use" problem) a copy comes back to
me.	Full credit for all changes is guaranteed.

The problem, essentially is that after a file transfer (say a
file receive to Flex) the NEXT transfer does not get processed,
but reports "File already in use" even when it is a different
file.	I've been unable to spend any time on looking at the
code since the summer, and any help would be appreciated.

Also, if you have seen other versions of Kermit, you might
throw your hands in the air with horror when you see this,
simply because it gives so limited a range of options.	I
cannot tell you, at this stage, for example, whether it sends
7 or 8 bits (I expect it only uses the 7 bits and ignores
parity, because of our data comms network).

Good luck, and belated Happy New Year....


Peter Morgan,	Computer Centre,	Watts Building,
Brighton Polytechnic, Lewes Road, Brighton, BN2 4GJ.

18/01/86 @ 10:45
