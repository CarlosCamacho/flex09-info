# stardot.org.uk-6809 Flex - stardotorguk

> Source: `newsletters/stardot.org.uk-6809 Flex - stardotorguk.pdf`  
> Method: PDF text extraction

OCR and media-decoding errors may remain.

6809 Flex..... - stardot.org.uk
    stardot.org.uk/forums/viewtopic.php

Prime                                                                               June 17, 2019

6809 Flex.....

Prime
    Posts: 3149
        Joined: Mon Jun 01, 2009 12:52 am

6809 Flex.....

        Quote

Hi all,


I think I remember chatting to someone at one of the meetups that had got Flex working on
the Co-Pro, but had compiled under a modern OS.


Could that person remind me how they did it, I have a disk with the Flex sources on... I need
to try and integrate some disk drivers into the
kernel, and thought now might be a good time to port the Flex sources to a modern 6809
assembler, but would be good to start with something known to work.....


Cheers.


Phill.

Top

                                            User
                                          avatar

sydney
   Posts: 3021
        Joined: Wed May 18, 2005 10:09 am



                                                                                                    1/22
      Location: Newcastle upon Tyne

Re: 6809 Flex.....

      Quote

Post by sydney »

It could well have been JimRussell. He's not been on for a while but he's on the Facebook
group as James Russell so you might have more luck finding him there.
Top 100 games list as voted by you!
Top

                                           User
                                         avatar

danielj
    Posts: 10648
      Joined: Thu Oct 02, 2008 5:51 pm

      Location: Manchester

Re: 6809 Flex.....

      Quote

Post by danielj »

RobC got flex running on the copro too iirc?

Top
Prime
    Posts: 3149
      Joined: Mon Jun 01, 2009 12:52 am

Re: 6809 Flex.....

      Quote

      danielj wrote: Mon Jun 17, 2019 3:01 pm RobC got flex running on the copro too iirc?

Yeah that rings bells.

Cheers.

                                                                                             2/22
Phill.

Top
roland
    Posts: 5334

      Joined: Thu Aug 29, 2013 9:29 pm
      Location: Born (NL)

      Contact:
      Contact roland

Re: 6809 Flex.....

      Quote

Post by roland »

It could be me. I adapted Flex for my 6809 copro. I added drivers for console and disk I/O.
The 6809 send commands to the Atom (non tube) and the Atom executes it.


IIRC there is no boot disk in this setup. Flex is loaded from the boot routine; it simply asks the
Atom to transfer the Flex OS file(s) to the 6809. That stores the files in its memory and then
boots Flex. From then on it will use disk images.


I developed and assembled the Flex files on an OS X machine.

Goodbye Misty ...

Top

                                              User
                                            avatar

dominicbeesley
   Posts: 2681

      Joined: Tue Apr 30, 2013 12:16 pm

Re: 6809 Flex.....

      Quote


                                                                                                     3/22
Post by dominicbeesley »

There's a thread here: viewtopic.php?t=9114&start=120 where RobC helped me get it running
on an LX9/matchbox copro.

I also ported it to my own 6809 viewtopic.php?f=3&t=14125&start=30#p202781 I have to
admit my memory isn't great at the best of times but I've forgotten most of this but if you need
help I can do some digging.

I think I used the Xroar assemblers but I really can't remember. I got a wd1770 native to my
6809 beeb going but didn't do much with it

D

Top

                                             User
                                         avatar

Elminster
    Posts: 4341

      Joined: Wed Jun 20, 2012 9:09 am

      Location: Essex, UK

      Contact:
      Contact Elminster

Re: 6809 Flex.....

      Quote

Post by Elminster »

I also remember talking to RobC about Flex on my 6800 SWTPC. So he could well be the
person.

Top
RobC
      Posts: 4223

      Joined: Sat Sep 01, 2007 10:41 pm




                                                                                                   4/22
Re: 6809 Flex.....

      Quote

Post by RobC »

Hi Phill,



I am at work at the moment but will dig out my notes etc. this evening and, if you PM me your
email address, I'll mail you the details.



I got the sources from Jim Davis in the Flex User Group and, after writing my own drivers,
compiled Flex using a 6809 compiler on Windows (think it was a09 but I might be mistaken). If
you haven't seen it already, the FLEX Adaptation Guide is really useful.


Best wishes,



Rob

Top
Coeus
      Posts: 4094

      Joined: Mon Jul 25, 2016 12:05 pm

Re: 6809 Flex.....

      Quote

Post by Coeus »

Rob,

I'd be interested in what you have too. I am aware of JGH's Flex page which, as far as I can
see, seems to contain the extra bits that are needed to make Flex work on a 6809 2nd
processor but presumably these must be combined with the core OS somehow?

Top
RobC
      Posts: 4223


                                                                                                5/22
      Joined: Sat Sep 01, 2007 10:41 pm

Re: 6809 Flex.....

      Quote

Post by RobC »

I think JGH did his own set of drivers after I'd written mine.


I can put what I've got on Dropbox if you want. Just PM me and I'll send you a link.

Top
Coeus
      Posts: 4094
      Joined: Mon Jul 25, 2016 12:05 pm

Re: 6809 Flex.....

      Quote

Post by Coeus »

I did try the BBCFLEX09.DSD from the other thread but that doesn't seem to boot in the new
B-Em 6809 co-pro. I did start looking at it, though. In looks like the first two sectors are very
clever in that they seem to contain the boot loader, as per the Flex documentation, and yet at
the same time a valid DFS catalogue. That catalogue seems to contain two files both of which
consist only of these two sectors, presumably so Shift-Break and *FLEX both load these boot
sectors.

Top
RobC
      Posts: 4223
      Joined: Sat Sep 01, 2007 10:41 pm

Re: 6809 Flex.....

      Quote

Post by RobC »

The clever dual format catalogue came from JGH'.

                                                                                                    6/22
Did you try running it with *FLEX or SHIFT-Break?

I don't think I ever got SHIFT-Break working

Top
Coeus
    Posts: 4094

      Joined: Mon Jul 25, 2016 12:05 pm

Re: 6809 Flex.....

      Quote

Post by Coeus »

      RobC wrote: Mon Jul 01, 2019 7:55 pm Did you try running it with *FLEX or SHIFT-
      Break?

I was trying Shift-Break. *FLEX does work:




and




                                                                                         7/22
     RobC wrote: Mon Jul 01, 2019 7:55 pm The clever dual format catalogue came from
     JGH'.

But isn't this, from your BBCFLEX09.DSD image doing the same:




The two files both seem to have zero as their disk start address. I'll see if I can work out what
is going on with !BOOT.
Last edited by Coeus on Mon Jul 01, 2019 9:06 pm, edited 1 time in total.
Top
RobC
    Posts: 4223

    Joined: Sat Sep 01, 2007 10:41 pm

                                                                                                    8/22
Re: 6809 Flex.....

      Quote

Post by RobC »

      Coeus wrote: Mon Jul 01, 2019 9:05 pm But isn't this, from your BBCFLEX09.DSD
      image doing the same:



      ...


      The two files both seem to have zero as their disk start address. I'll see if I can work out
      what is going on with !BOOT.

Yes - I couldn't work out why SHIFT-Break wouldn't work as it should do the same as *FLEX

Glad it's working for you though. I've uploaded the sources, documents, utilities and DSK
images I got to Dropbox in case you want to have a play with stuff yourself.

Top
Coeus
   Posts: 4094
      Joined: Mon Jul 25, 2016 12:05 pm

Re: 6809 Flex.....

      Quote

Post by Coeus »

      Coeus wrote: Mon Jul 01, 2019 9:05 pm I'll see if I can work out what is going on with
      !BOOT.

Rob, this loop here doesn't seem to have a terminating condition:
Code: Select all

      C159 8D 35         BSR    $C190
      C15B 81 02         CMPA   #$02
      C15D 27 10         BEQ    $C16F
      C15F 81 16         CMPA   #$16
      C161 26 F6         BNE    $C159
      C163 8D 2B         BSR    $C190



                                                                                                     9/22
    C165 B7 C1 47      STA    $C147
    C168 8D 26         BSR    $C190
    C16A B7 C1 48      STA    $C148
    C16D 20 EA         BRA    $C159
    C16F 8D 1F         BSR    $C190
    C171 B7 C1 49      STA    $C149
    C174 8D 1A         BSR    $C190
    C176 B7 C1 4A      STA    $C14A
    C179 8D 15         BSR    $C190
    C17B 1F 89         TFR    A,B
    C17D 4D            TSTA
    C17E 27 D9         BEQ    $C159
    C180 BE C1 49      LDX    $C149
    C183 34 14         PSHS   X,B
    C185 8D 09         BSR    $C190
    C187 35 14         PULS   B,X
    C189 A7 80         STA    ,X+
    C18B 5A            DECB
    C18C 26 F5         BNE    $C183
    C18E 20 C9         BRA    $C159

That seems to be a loop over the Flex binary record types looking at types $02 and $16 but
when it sees $16 it doesn't then jump to the transfer address, it carries on and, when I ran it in
the debugger, it is looping through "records" with a record type of zero, or more likely just
padding at the end of the file.

Assuming this is the same file for both !BOOT and *FLEX cases that doesn't explain why
*FLEX works, but maybe why !BOOT doesn't.

EDIT: That turns out to be a red herring. It does exit from the subroutine that loads the next
sector, i.e. it is checking EOF by looking at the sector links rather than the record types.

Last edited by Coeus on Mon Jul 01, 2019 9:45 pm, edited 2 times in total.
Top
Coeus
    Posts: 4094

    Joined: Mon Jul 25, 2016 12:05 pm

Re: 6809 Flex.....

    Quote

Post by Coeus »




                                                                                                     10/22
    RobC wrote: Mon Jul 01, 2019 9:30 pm Glad it's working for you though. I've uploaded
    the sources, documents, utilities and DSK images I got to Dropbox in case you want to
    have a play with stuff yourself.

That will be useful. Did you send me a link? There's nothing in my Inbox.
Last edited by Coeus on Mon Jul 01, 2019 9:37 pm, edited 1 time in total.
Top
RobC
   Posts: 4223
    Joined: Sat Sep 01, 2007 10:41 pm

Re: 6809 Flex.....

    Quote

Post by RobC »

    Coeus wrote: Mon Jul 01, 2019 9:32 pm Rob, this loop here doesn't seem to have a
    terminating condition:

That code comes straight from the Bootstrap loader in the Flex Adaptation guide. I think it's
meant to drop out of the get character routine at $C190.

    Coeus wrote: Mon Jul 01, 2019 9:33 pm That will be useful. Did you send me a link?
    There's nothing in my Inbox.

I was in the middle of PMing you when I replied. Should be there now.
Top
Coeus
    Posts: 4094

    Joined: Mon Jul 25, 2016 12:05 pm

Re: 6809 Flex.....

    Quote

Post by Coeus »

    RobC wrote: Mon Jul 01, 2019 9:57 pm That code comes straight from the Bootstrap
    loader in the Flex Adaptation guide. I think it's meant to drop out of the get character
    routine at $C190.



                                                                                                11/22
Yes, I did find that in the end.

     RobC wrote: Mon Jul 01, 2019 9:57 pm I was in the middle of PMing you when I replied.
     Should be there now.

Found the link now. Very useful.
Last edited by Coeus on Mon Jul 01, 2019 11:03 pm, edited 1 time in total.
Top
Coeus
   Posts: 4094
    Joined: Mon Jul 25, 2016 12:05 pm

Re: 6809 Flex.....

    Quote

Post by Coeus »

     RobC wrote: Mon Jul 01, 2019 9:30 pm Yes - I couldn't work out why SHIFT-Break
     wouldn't work as it should do the same as *FLEX

Strangely, it turns out it has not crashed but is waiting for keyboard input. Having released
Shift-Break, if you then type a character the Flex banner and prompt then appear:




Top
Coeus
    Posts: 4094


                                                                                                12/22
    Joined: Mon Jul 25, 2016 12:05 pm

Re: 6809 Flex.....

    Quote

Post by Coeus »

And I do believe I have cracked it. Before printing the banner, Flex calls CRLF1 which calls
ESCTST which does:

Code: Select all

                       *TEST KEYBOARD FOR ESCAPE
 CE90 BDCD4E            ESCTST JSR STAT character ready?
 CE93 2765               BEQ CRLF5 branch if not
 CE95 AD9FD3E5           JSR [INCHNE] input w\o echo
 CE99 B1CC0A             CMPA TTYESC is it escape?
 CE9C 265C               BNE CRLF5 branch if not
 CE9E 7FCC1A            ESCTS1 CLR CURLIN clear line count
 CEA1 AD9FD3E5          ESCTS2 JSR [INCHNE] look for character

So what is happening is when you hit the Break key the OS places the code $DC in the
keyboard buffer which is the softkey code for break (*KEY 10) . This would be expanded when
OSRDCH is called. The STAT routine is using OSBYTE $80 to check the keyboard buffer and
finds the $DC token so then ESCTST calls INCHNE which in turn calls OSRDCH which goes
to read the character. At that point OSRDCH on the host side concludes $DC expands to the
empty string so then waits for a fresh character to enter the keyboard buffer from a real
keypress.

This can be tested. After power-on set *KEY 10 to a single character, for example:




                                                                                               13/22
then do Shift-Break and:




with no need to hit any keys.

As for a neater way around it, one possibility would be to have the bootloader or an init hook
in one of the driver modules clear the keyboard buffer before Flex gets round to the first ESC
check. That would mean no softkey expansion for the break key but that's probably the lesser
of the two evils.

Last edited by Coeus on Tue Jul 02, 2019 12:49 am, edited 1 time in total.
Top
RobC


                                                                                                 14/22
       Posts: 4223
       Joined: Sat Sep 01, 2007 10:41 pm

Re: 6809 Flex.....

       Quote

Post by RobC »

Well done

Now you mention it, I'd noticed the key press thing (or someone else told me about it) but had
forgotten it.

       Coeus wrote: Tue Jul 02, 2019 12:22 am As for a neater way around it, one possibility
       would be to have the bootloader or an init hook in one of the driver modules clear the
       keyboard buffer before Flex gets round to the first ESC check. That would mean no
       softkey expansion for the break key but that's probably the lesser of the two evils.

Agree it's the lesser of two evils - I'll have a think where to put it.

Top
Coeus
    Posts: 4094
       Joined: Mon Jul 25, 2016 12:05 pm

Re: 6809 Flex.....System Information Record (SIR)

       Quote

Post by Coeus »

I have found the Flex adaptation guide to be slighly misleading in the section that deals with
the system information record. The adaptation guide on page 32 dealing with the NEWDISK
program gives this table:

Code: Select all

Begin    End   Information
-----    ---   -----------
   0       1   Two bytes of zeroes (Clears forward link)
  16      26   Volume name in ASCII
  27      28   Volume number in binary
  29      30   Address of first data sector (Track-Sector)


                                                                                                 15/22
  31       32   Address of last data sector (Track-Sector)
  33       34   Total number of data sectors in binary
  35       37   Current date (Month-Day-Year) in binary
  38       38   Highest track number on disk in binary
  39       39   Highest sector number on a track in binary

For the entries from offset 29 through to 34, whilst it is true that the NEWDISK program
should set these to values for the non-bad data sectors on the disk, FLEX actually uses these
to manage the free chain thus these would be better described as:
Code: Select all

  29       30   Address of first free data sector (Track-Sector)
  31       32   Address of last free data sector (Track-Sector)
  33       34   Total number of free data sectors in binary

I had been initially puzzled that the values in these fields on the BBCFLEX09.DSD file in
Rob's download in the linked thread above did not look like the start of track 1 and the end of
track 79 and the total number of sectors didn't look like 80 tracks of 20 sectors.

Then it seemed odd that there should be nowhere else in the SIR documented as holding the
head of the free chain. It would also be expected to cache the amount of free space
somewhere to avoid having to traverse the whole chain to find it.

Finally, suspecting that these may be the free sector chain I checked the count against the
value reported by FLEX itself for this disc, 814, and it matches.

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

I think that's what I worked out as well:
Code: Select all


                                                                                                  16/22
       d_num%=d_sec%:d_bps%=256:d_sec0%=1
       REM            drv trk sid sec num
       A%=FNfdc_disk(&53,mem%,0,0,0,3,1):REM Load System Info Record
       d_free%=256*mem%?&21+mem%?&22
       d_trk%=mem%?&26
       d_sec%=mem%?&27
       IF d_sec%>19:d_sid%=2 ELSE d_sid%=1
       d_num%=d_sec% DIV d_sid%
       d_size% =(d_trk%+1)*d_sec%
       d_used%=d_size%-d_free%
       mem%?&1B=13:d_title$=FNs($(mem%+&10))
       d_cmn%=mem%?&23
       d_cdy%=mem%?&24
       d_cyr%=mem%?&25+1900
      PRINT"System Information Record for ";d_title$;":"
      PRINT"Disk shape:";FNd(d_trk%+1,5);" tracks       ";FNd(d_sec%,3);" sectors
";d_sid%;" sides"
      PRINT"Disk used: ";FNd(d_used%,5);" sectors ";FNd(d_used%*256,8);" bytes
";FNd(d_used%/4,5);"K"
      PRINT"Disk free: ";FNd(d_free%,5);" sectors ";FNd(d_free%*256,8);" bytes
";FNd(d_free%/4,5);"K"
      PRINT"Disk size: ";FNd(d_size%,5);" sectors ";FNd(d_size%*256,8);" bytes
";FNd(d_size%/4,5);"K"
      PRINT"Created:      ";FNd0(d_cdy%,2);"/";FNd0(d_cmn%,2);"/";d_cyr%

Code: Select all

$ bbcbasic
PDP11 BBC BASIC IV Version 0.45
(C) Copyright J.G.Harston 1989,2005-2024
>_

Top
paulxtr
    Posts: 20
      Joined: Sun Apr 15, 2012 5:02 pm
      Location: Manchester, UK

Re: 6809 Flex.....

      Quote

Post by paulxtr »

Any chance of fixing the error reporting in this version of FLEX?




                                                                                    17/22
For example if you try to



DELETE FOO.BAR


you get the following error (assuming the file doesn't exist):


DISK ERROR #4



when you should get the appropriate message from the ERRORS.SYS file:


THE SPECIFIED FILE COULD NOT BE FOUND


I noticed that the File Sector Map Indicator byte is not set to $02 (random access file) in the
ERRORS.SYS file, but the error reporting still doesn't work even when it is set to $02.


Cheers, Paul

Top
Coeus
    Posts: 4094

    Joined: Mon Jul 25, 2016 12:05 pm

Re: 6809 Flex.....

    Quote

Post by Coeus »

     paulxtr wrote: Wed Jul 03, 2019 6:47 pm Any chance of fixing the error reporting in this
     version of FLEX?

Try this one: What I did was mount the original TSCFLX09.DSK as drive 1 (requires to
link/rename/copy it to have .ssd extension in b-em) then with the bbcflex9.dsd as drive 0 and
FLEX booted:
Code: Select all

                                                                                                  18/22
DELETE ERRORS.SYS
COPY,1,ERRORS.SYS,0

I am guessing that as well as the random access flag in the directory it may have lost the FSM
in a previous copy.
Last edited by Coeus on Wed Jul 03, 2019 9:53 pm, edited 3 times in total.
Top
paulxtr
    Posts: 20
    Joined: Sun Apr 15, 2012 5:02 pm
    Location: Manchester, UK

Re: 6809 Flex.....

    Quote

Post by paulxtr »

     Coeus wrote: Wed Jul 03, 2019 9:45 pm

          paulxtr wrote: Wed Jul 03, 2019 6:47 pm Any chance of fixing the error reporting
          in this version of FLEX?

     Try this one:
     bbcflex9.zip

Yes, it's reporting errors properly now.

Excellent work, thanks.

Cheers,
Paul

Top
Coeus
    Posts: 4094
    Joined: Mon Jul 25, 2016 12:05 pm

Re: 6809 Flex.....

    Quote

Post by Coeus »

                                                                                                 19/22
So having got this far has anyone developed anything to run under Flex? If so, what tools did
you use.

RobC sent me a cross assembler which seems to be this one on GitHub. That seems to be
cross-platform and can produce the Flex-specific binary format which is good. How do people
get files to/from Flex discs?

Is there a native assembler? Is that ASMB.CMD is? It doesn't seem to be documented in
either the programmers guide, adaptation guide or user's guide.

Top
RobC
    Posts: 4223

      Joined: Sat Sep 01, 2007 10:41 pm

Re: 6809 Flex.....

      Quote

Post by RobC »

      Coeus wrote: Thu Jul 04, 2019 4:05 pm So having got this far has anyone developed
      anything to run under Flex? If so, what tools did you use.

I've written some small utilities (MODE, FCOL, BCOL) that allow Flex to access the Beeb's
modes and colours.

      Coeus wrote: Thu Jul 04, 2019 4:05 pm
      RobC sent me a cross assembler which seems to be this one on GitHub. That seems to
      be cross-platform and can produce the Flex-specific binary format which is good. How
      do people get files to/from Flex discs?

I use the Windows FloppyMaint application which should be in the dump of stuff I sent you.
Let me know if it's not and I'll send it to you.

      Coeus wrote: Thu Jul 04, 2019 4:05 pm Is there a native assembler? Is that ASMB.CMD
      is? It doesn't seem to be documented in either the programmers guide, adaptation
      guide or user's guide.

The manual (along with many others!) is here.
Top




                                                                                                20/22
                                              User
                                           avatar

jgharston
    Posts: 6467
    Joined: Thu Sep 24, 2009 12:22 pm
    Location: Whitby/Sheffield

Re: 6809 Flex.....

    Quote

Post by jgharston »

I was about to sit down and update the 6809CoPro client code to fix the KBDTST code, then
looking at it remembered the problem I originally had.


It's not possible on the BBC to test if a call to OSRDCH will return a character without actually
removing a character from the keyboard buffer. It is only possible to test if there is a byte (not
a character) in the keyboard buffer, or if there is currently a soft key being expanded. And that
doesn't even get into the problems of if OSRDCH is not reading from the keyboard buffer.


That leaves the edge case of a soft key being the top item in the keyboard buffer, but that soft
key not being defined. So, ADVAL(-1) says "there's a byte available in the keyboard buffer!",
but OSRDCH find "softkey length zero, keep waiting until something to return". You can avoid
the waiting forever bit by using INKEY(0), but that removes a character if one is available. You
can either test if a character is returnable *and* *fetch* *it*, or test if there is a byte in the
keyboard buffer *which* *may* *not* *return* *anything*.


I hit this problem when writing a serial terminal, but in that case using the first option is ok,
because the code never needed to do test if a keypress was pending, but asked: is there a
keypress pending, *and* *if* *so*, *give* *it* *to* *me*. Which is the INKEY(0) action.



The only way around this is a lot of convoluted "smelly"* code, is an exec file open, is it at
EOF?, what stream is OSRDCH connected to?, examine the source buffer, if it's serial, is it
being expanded?, is this is an unescaped topbit byte, is it defined as a soft key (ok so far.....)
and is that soft key defined? (blam!). There is no API to get information about a soft key string,


                                                                                                     21/22
you have to know what the host is and how the host stores soft keys, and examine the soft
keys directly.


So, I ended up resigning to making KBDTEST just do ADVAL(-1) to test for the contents of the
keyboard buffer.


I think the best solution for our purposes is to make the BBC Flex loader clear the keyboard
buffer.


*there's a proper term, but I can't remember it.

Code: Select all

$ bbcbasic
PDP11 BBC BASIC IV Version 0.45
(C) Copyright J.G.Harston 1989,2005-2024
>_

Top
BigEd
    Posts: 7559
      Joined: Sun Jan 24, 2010 10:24 am
      Location: West Country

      Contact:
      Contact BigEd

Re: 6809 Flex.....

      Quote

Post by BigEd »

It would be possible, I think, to hook into OSRDCH (host side) using RDCHV, with a little
stateful routine that has a one-byte buffer and a flag to say if it's full. If INKEY(0) can be
intercepted too, it can get a byte from the modified OSRDCH and then put it back, using a
kind of ungetc() which puts the fetched byte (if there was one) into the buffer and sets the flag.

Top




                                                                                                     22/22
