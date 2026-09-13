# stardot.org.uk-6809 Flex - Page 2

> Source: `newsletters/stardot.org.uk-6809 Flex - Page 2.pdf`  
> Method: PDF text extraction

OCR and media-decoding errors may remain.

6809 Flex..... - Page 2
   stardot.org.uk/forums/viewtopic.php

Prime                                                                              June 17, 2019

6809 Flex.....

jgharston
    Posts: 6467
        Joined: Thu Sep 24, 2009 12:22 pm
        Location: Whitby/Sheffield

Re: 6809 Flex.....

        Quote

Post by jgharston »

That would require psychic abilities to know what the host is, and would probably need more
code space in the client than is available for the 6502 code and the chuck-across-the-Tube
code. It would need to be done on the client side. Remembering the C stdio library I think it
can be done with:



INIT:
flag=0, ret
KBDTST:
if (flag) return TRUE
result=INKEY(0)
if result=-1, return FALSE
lastchar=result
flat=true
return TRUE
GETKEY:
if (flag) flag=FALSE, return lastchar
return OSRDCH


That allows the 6809 BIOS entry block called by Flex to implement KBDTST and GETKEY
*for* *the* *6809* *API*. Trying to mess with the Tube API would mean making the client Tube


                                                                                                   1/14
code have psycic abilities having to hook into anything that might end up fetching something
from the OSRDCH input stream and anything that may be a KBDTEST call, OSRDCH,
OSBYTE, OSWORD, OSBGET, knowing *which* OSBYTE and OSWORD calls might end up
fetching something from the input stream. The Tube API should be a clean API that purely and
simply passes calls across to the host, anything else specific for the code running on the
client should be built on top of that API.

Code: Select all

$ bbcbasic
PDP11 BBC BASIC IV Version 0.45
(C) Copyright J.G.Harston 1989,2005-2024
>_

Top

                                           User
                                         avatar

jgharston
    Posts: 6467

      Joined: Thu Sep 24, 2009 12:22 pm
      Location: Whitby/Sheffield

Re: 6809 Flex.....

      Quote

Post by jgharston »

I've done a test build of the 6809 Tube Client with updatd KBDTST and KBDIN code.

Tightening up the specification of KBDTST to mean 'will the next call to KBDIN return
immediately, with no waiting?', KBDTST actively samples the input stream and if a character
is available, saves it for a subsequent KBDIN call. KBDIN now loops calling KBDTST, either
fetching that saved character or waiting until the input stream does supply a character.

You can replace the 6809 client on a live CoPro until the next Break with the reload
command.

Code: Select all

$ bbcbasic
PDP11 BBC BASIC IV Version 0.45


                                                                                               2/14
(C) Copyright J.G.Harston 1989,2005-2024
>_

Top
rharper
    Posts: 780
      Joined: Sat Sep 01, 2012 6:19 pm

      Location: Dunstable, LU6 1BH
      Contact:
      Contact rharper

Re: 6809 Flex.....

      Quote

Post by rharper »

This appears to be the most recent thread on this topic so I'll post here. I have a disc made
from BBCFLEX9.zip I have it on a BBC Master 128 under DFS. The 6809 Tube is v1.00 not
1.05 which may be the problem. However when I try *FLEX or SHIFT+BREAK there is a
horrible rattling sound from the 5.25 floppy drive which repeats every few seconds till I
CTRL+BREAK to stop it. There is nothing actually wrong with the drive. Thanks, Ray

Attachments




Raycomp

Top

                                             User
                                           avatar



                                                                                                3/14
dominicbeesley
      Posts: 2681

      Joined: Tue Apr 30, 2013 12:16 pm

Re: 6809 Flex.....

      Quote

Post by dominicbeesley »

I can't remember much about the 2P FLEX, I'm sure RobC or JGH will be here with help
soon...one thing to check though - is it an 80T disk, how did you write the disk, I seem to
remember there's something different about how tracks/sides/sectors are numbered but I've
slept since I last looked at Flex so I may be talking out of the back of my head.



D

Top

                                            User
                                          avatar

hoglet
      Posts: 13637

      Joined: Sat Oct 13, 2012 7:21 pm
      Location: Bristol

      Contact:
      Contact hoglet

Re: 6809 Flex.....

      Quote

Post by hoglet »

      rharper wrote: Wed Mar 08, 2023 3:45 pm The 6809 Tube is v1.00 not 1.05 which may
      be the problem.

What are you using as a second processor that has version 1.00?

An original Matchbox Co Pro?

                                                                                              4/14
Dave

Top
RobC
   Posts: 4223

      Joined: Sat Sep 01, 2007 10:41 pm

Re: 6809 Flex.....

      Quote

Post by RobC »

Could you post details of your setup (which co-pro hardware, disk drive etc.), a copy of the
disk image you wrote to the disk and details of how you wrote the image to disk please?

Top
rharper
      Posts: 780
      Joined: Sat Sep 01, 2012 6:19 pm

      Location: Dunstable, LU6 1BH

      Contact:
      Contact rharper

Re: 6809 Flex.....

      Quote

Post by rharper »

      hoglet wrote: Wed Mar 08, 2023 4:14 pm What are you using as a second processor
      that has version 1.00?

      An original Matchbox Co Pro?

      Dave

Yes, a Matchbox CoPro.

      RobC wrote: Wed Mar 08, 2023 5:15 pm Could you post details of your setup (which co-
      pro hardware, disk drive etc.), a copy of the disk image you wrote to the disk and details
      of how you wrote the image to disk please?

                                                                                                   5/14
The master has a plinth with a 5.25 & 3.5" drives, the 5.25 is drive 0/2.
I formatted a 3.5" disc on the Master, copied the dsd to a 3.5" floppy with omniflop, then
BACKUP from 1 to 0 - ERROR! -this does not do side 2 and BACKUP 3 2 does not work. The
horrible sound is no doubt Flex looking for code on side 2.
I have another machine in the loft with Windows XP+omniflop that can write to a 5.25" drive.
Might be a day before I get back on this.
Ray
Raycomp

Top
RobC
   Posts: 4223

      Joined: Sat Sep 01, 2007 10:41 pm

Re: 6809 Flex.....

      Quote

Post by RobC »

Yes - I think the *BACKUP of side 2 won't work because it doesn't contain a valid DFS
catalogue.



What's needed is a disk copier that will do a sector by sector, track by track copy. I am aware
of one in the Advanced Disk User Guide but I think that assumes the 8271 rather than the
1770 controller. Do you have a Beeb with an 8271? If so, I can supply a disk image with the
copier on it.

Top
RobC
      Posts: 4223

      Joined: Sat Sep 01, 2007 10:41 pm

Re: 6809 Flex.....

      Quote

Post by RobC »




                                                                                                  6/14
Scratch that - I've made a quick hack of Colin Pharo's disk copier program from the Advanced
Disk User Guide. Testing in BeebEm, I think the only bits that didn't work on a Master were
the track formatting routine and the way it got the number of tracks.


I've just hacked these out as a quick fix.



With a formatted 80-track disk in the destination drive, it should be able to copy both sides of
the source disk well enough to clone the Flex disc...

Attachments
    adug.ssd
       (7.5 KiB) Downloaded 27 times

Top

                                               User
                                             avatar

jgharston
    Posts: 6467

      Joined: Thu Sep 24, 2009 12:22 pm
      Location: Whitby/Sheffield

Re: 6809 Flex.....

      Quote

Post by jgharston »

      RobC wrote: Thu Mar 09, 2023 2:50 pm What's needed is a disk copier that will do a
      sector by sector, track by track copy.

BACKUP
Code: Select all

$ bbcbasic
PDP11 BBC BASIC IV Version 0.45
(C) Copyright J.G.Harston 1989,2005-2024
>_

Top


                                                                                                   7/14
rharper
    Posts: 780

    Joined: Sat Sep 01, 2012 6:19 pm
    Location: Dunstable, LU6 1BH
    Contact:
    Contact rharper

Re: 6809 Flex.....

    Quote

Post by rharper »

Not having much joy here. My XP+omniflop system would not write the disc. I put JGH's
BACKUP onto the adug.ssd and then to a floppy. The copier reported - Write : bad result =
&18 I have formatted and verified sides 0+2 of the 5.25" floppy.



JGH's BACKUP I was not sure what to do with. I copied it from the web page to a text editor
(in Ubuntu so possible wrong line endings), saved it, imported it to the above ssd with
Beebem. However, DFS has a *BACKUP command that would clash with this *BACKUP so I
renamed the file COPYIT and tried *COPYIT which gives a Bad program error. Because of
the way I created it, the file does not have load or execution addresses so I am not sure how it
would work. Any advice welcome. Ray

Raycomp

Top
Coeus
    Posts: 4094
    Joined: Mon Jul 25, 2016 12:05 pm

Re: 6809 Flex.....

    Quote

Post by Coeus »

    rharper wrote: Fri Mar 10, 2023 3:28 pm JGH's BACKUP I was not sure what to do with.
    I copied it from the web page to a text editor (in Ubuntu so possible wrong line endings),
    saved it, imported it to the above ssd with Beebem.

                                                                                                   8/14
     However, DFS has a *BACKUP command that would clash with this *BACKUP so I
     renamed the file COPYIT and tried *COPYIT which gives a Bad program error. Because
     of the way I created it, the file does not have load or execution addresses so I am not
     sure how it would work.

This looks to me like an executable file that is also a BASIC program created by one of JGH's
own utilities. At the start of the file is a normal, tokenised BASIC program which can be loaded
into BASIC with LOAD or CHAIN. Then, on the end, is an assembler program that can receive
control from the OS and arrange for BASIC to load and run the program so you can invoke it
from a * command. The end of the BASIC program is here:
Code: Select all

000011B0 - 6F 73 28 41 24 29 3A E0       0D 04 38 07 E0 3A E1 0D      os(A$):...8..:..
000011C0 - FF A9 01 A0 00 A2 A8 20       DA FF B9 34 7B 99 00 07      ....... ...4{...

Note the &0D on the end of the first line and the &FF at the start of the next line.

So, for the time being, you would need to save it as a binary file on your PC, i.e. right click the
link or let the browser stick it in Downloads rather than open it, then transfer it to an
SSD/floppy disc as a binary file. Then, you can probably just CHAIN it.

EDIT: JGH's program is called MCODE. See viewtopic.php?p=381621#p381621

Last edited by Coeus on Fri Mar 10, 2023 11:39 pm, edited 1 time in total.
Top
RobC
    Posts: 4223

    Joined: Sat Sep 01, 2007 10:41 pm

Re: 6809 Flex.....

    Quote

Post by RobC »

     rharper wrote: Fri Mar 10, 2023 3:28 pm The copier reported - Write : bad result = &18
     I have formatted and verified sides 0+2 of the 5.25" floppy.

That's odd - error &18 is apparently "Sector not found".

Do you know which track it was writing when you got this error?




                                                                                                      9/14
I'll try doing this for real (as opposed to on an emulator) to see if I can recreate the problem.
Also, PM me if you want to go through this together or if you want me to send you a working
5.25" disc.

Top
Coeus
    Posts: 4094

    Joined: Mon Jul 25, 2016 12:05 pm

Re: 6809 Flex.....

    Quote

Post by Coeus »

     RobC wrote: Fri Mar 10, 2023 4:08 pm That's odd - error &18 is apparently "Sector not
     found".

Does this have anything to do with some disc formats starting the sector numbers on a track
at zero and others at one? If the image you're trying to transfer has the sectors numbered 1-
10 and the destination has them numbered 0-9, it will fail after 9 sectors have been written.
Top
rharper
    Posts: 780
    Joined: Sat Sep 01, 2012 6:19 pm

    Location: Dunstable, LU6 1BH
    Contact:
    Contact rharper

Re: 6809 Flex.....

    Quote

Post by rharper »

     RobC wrote: Fri Mar 10, 2023 4:08 pm

          rharper wrote: Fri Mar 10, 2023 3:28 pm The copier reported - Write : bad result =
          &18
          I have formatted and verified sides 0+2 of the 5.25" floppy.



                                                                                                    10/14
     That's odd - error &18 is apparently "Sector not found".

     Do you know which track it was writing when you got this error?

     I'll try doing this for real (as opposed to on an emulator) to see if I can recreate the
     problem. Also, PM me if you want to go through this together or if you want me to send
     you a working 5.25" disc.

It doesn't indicate the track but the light on the 5.25" drive has just flashed for the second time
when the error reports and there is "STOP at line 2700"
Ray
Raycomp

Top
RobC
    Posts: 4223

    Joined: Sat Sep 01, 2007 10:41 pm

Re: 6809 Flex.....

    Quote

Post by RobC »

     Coeus wrote: Fri Mar 10, 2023 4:30 pm

          RobC wrote: Fri Mar 10, 2023 4:08 pm That's odd - error &18 is apparently
          "Sector not found".

     Does this have anything to do with some disc formats starting the sector numbers on a
     track at zero and others at one? If the image you're trying to transfer has the sectors
     numbered 1-10 and the destination has them numbered 0-9, it will fail after 9 sectors
     have been written.

Possibly - although it worked for me in BeebEm using DFS to format the disk and cloning the
BEEBFLEX9.dsd disk.

     rharper wrote: Fri Mar 10, 2023 5:52 pm It doesn't indicate the track but the light on the
     5.25" drive has just flashed for the second time when the error reports and there is
     "STOP at line 2700"

Does COPIER not show you the current track and sectors on the screen like this?:



                                                                                                      11/14
Top
Coeus
    Posts: 4094
    Joined: Mon Jul 25, 2016 12:05 pm

Re: 6809 Flex.....

    Quote

Post by Coeus »

    RobC wrote: Fri Mar 10, 2023 9:42 pm Possibly - although it worked for me in BeebEm
    using DFS to format the disk and cloning the BEEBFLEX9.dsd disk.

But that is presumably using a local DSD file as the source so BeebEm will report logical
sectors starting at zero, as is the convention for DFS discs, and this then matches the
destination, presumably also a DSD file.

I suspect what has gone wrong here is that Omniflop has created the source disc, the 3.5"
one, with logical sector numbers 1-10 instead of 0-9. I think starting at one is the convention
normally used on the PC and Omniflop is piece of PC software to it would presumably have to
be told to start numbering from zero if this is what is required.

    RobC wrote: Fri Mar 10, 2023 9:42 pm Does COPIER not show you the current track
    and sectors on the screen like this?:
    copier.png



                                                                                                  12/14
I think taking a picture of this screen and posting it would be helpful.

BTW, that cloning program is a nice piece of work. Just as a warning, though, it uses
parameter passing of byte indirect values, e.g. PROCwrite(?sectab). There is a bug in this in
BASIC 2 (and probably BASIC 1), Fixed in BASIC 3. So it will be OK on the Master but the
construct may be better avoided. See viewtopic.php?f=54&t=26336&p=383817#p383817

Top
RobC
    Posts: 4223
     Joined: Sat Sep 01, 2007 10:41 pm

Re: 6809 Flex.....

     Quote

Post by RobC »

     Coeus wrote: Fri Mar 10, 2023 11:26 pm I suspect what has gone wrong here is that
     Omniflop has created the source disc, the 3.5" one, with logical sector numbers 1-10
     instead of 0-9. I think starting at one is the convention normally used on the PC and
     Omniflop is piece of PC software to it would presumably have to be told to start
     numbering from zero if this is what is required.

I thought Omniflop understood Acorn (and other) formats and assumed it would create the
disk faithfully. However, I'll try it for myself.

     Coeus wrote: Fri Mar 10, 2023 11:26 pm BTW, that cloning program is a nice piece of
     work. Just as a warning, though, it uses parameter passing of byte indirect values, e.g.
     PROCwrite(?sectab). There is a bug in this in BASIC 2 (and probably BASIC 1), Fixed
     in BASIC 3. So it will be OK on the Master but the construct may be better avoided. See
     viewtopic.php?f=54&t=26336&p=383817#p383817

Ah - I didn't spot that. I didn't write the program - it comes straight from Colin Pharo's
Advanced Disk User Guide.
Top
rharper
     Posts: 780
     Joined: Sat Sep 01, 2012 6:19 pm

     Location: Dunstable, LU6 1BH



                                                                                                13/14
    Contact:
    Contact rharper

Re: 6809 Flex.....

    Quote

Post by rharper »

RobC & Coeus thanks for your help. I have got JGH's BACKUP software running and as you
might expect from JGH's utilities everything worked fine - prompts for drives, tracks ,No. of
sides and away it goes. *FLEX prompts for the date. I now have the +++ Flex prompt and can
investigate Flex which is the point of the exercise. Thanks, Ray

Raycomp

Top
RobC
    Posts: 4223
    Joined: Sat Sep 01, 2007 10:41 pm

Re: 6809 Flex.....

    Quote

Post by RobC »

     rharper wrote: Sat Mar 11, 2023 12:01 pm I now have the +++ Flex prompt and can
     investigate Flex which is the point of the exercise.

Excellent - have fun with it.
Top




                                                                                                14/14
