# FLEX User Group FAQ

_Searchable transcription extracted from the repository PDF. Form-feed boundaries are retained as page headings._

## PDF page 1

               FLEX User Group


               FAQs
+ + + Home          Frequently Asked Questions are a popular means of exchanging
FLEX User           basic information, normally pointed to by RTFM or 'Read That
Group               Fine Manual' (amongst other more stressed meanings).
FLEX History        Please send me any questions that you've been asked, or that
Documentation       you'd like an answer to anyway.
Copyrights          If you have an answer already - please send both your Q and A!
FLEX Software
Software
Library             What is FLEX?
DSK Library         What is the format of a FLEX disk?
FLEX Emulators      What is a random file?
FLEX Utilities      What is the directory structure?
Links               What are DSK files?
Members             What is the difference between 6800 and 6809 FLEX?
Hardware            What is UniFlex?
Project
FAQs
File Exchange       What is FLEX?
fufulist            FLEX is the name of the Disk Operating System created by
Useful info         Technical Systems Consultants for the Motorola 6800 and 6809
CD status           microcomputer based computers. FLEX first arrived in 1977
Joining FUG         with the 6800 version, later versions were for 8" and 5.25" disks
What's New          and also for the 6809.
                    top
Return to
Ian Blythe's        What is the format of a FLEX disk? NEW!
Homepage            (Contributed by Michael Evenson)
                    Track 0 does not have a sector 1. All of the other tracks don't
                    have a sector 0. SWTPC Flex always had track 0 side 0 formatted
                    as Single Density. Other manufacturers may have allowed track
                    0 side 0 to be Double Density. Gimix was one of these.
                    All of the sectors except the boot sector and sectors that
                    belonged to random files were linked to the next logical sector
                    by the first two bytes of each sector. This created a sector link
                    chain. The chain was broken at the of the file by having the link
                    set to 00 00. The start of the chain for each file is kept in the
                    Directory entry for the file. Each linked sector also contains 2
                    bytes that signify its sequence number in the file. Flex uses this
                    to determine the integrity of the file when it is read using the
                    File Management System calls. This leaves 252 usable bytes in
                    each sector to store the file.

                    This is the disk layout:
                    track 0    sector    0     boot sector
                          0              2     extended boot sector
      0              3    System Information Record (SIR)

## PDF page 2

      0              3    System Information Record (SIR)
      0              4    not used
      0              5    start of the directory area.
     ...            ...   the rest of track 0 is used for
                          directory storage
       1             1    start of the data and program
                          storage area of diskette

On double sided diskettes, the sector numbers on the second
side continue on from the numbers on the first side. That is, if
track 1 sector 10 is the last sector on side 0, then track 1 side 1
will start with sector number 11 and end with sector number
20. Track 2 side 0 will start over with sector number 1.

This is the layout of the SIR:
The first 16 bytes are not used (all zeros)
offset(hex)     size(hex)     contents
-----------     ---------     -------------------------
   $10             $0B         Volume Label
   $1B             $01         Volume Number High byte
   $1C             $01         Volume Number Low byte
   $1D             $01         First User Track
   $1E             $01         First User Sector
   $1F             $01         Last User Track
   $20             $01         Last User Sector
   $21             $01         Total Sectors High byte
   $22             $01         Total Sectors Low byte
   $23             $01         Creation Month
   $24             $01         Creation Day
   $25             $01         Creation Year
   $26             $01         Max Track
   $27             $01         Max Sector

The First User Track and Sector mark the beginning of the free
chain. This is the chain of available unused sectors. The Last
User Track and Sector mark the end of this chain.
top

What is a random file?
Coming soon...
top

What is the directory structure of a FLEX disk? NEW!
(Contributed by Michael Evenson)

Each Directory Entry is laid out as follows:
The first 16 bytes are not used (all zeros)

offset(hex)       size(hex)        contents
-----------       ---------        -------------------------
   $10               $08            File Name
   $18               $03            File Extension
   $1B               $02            Unused
   $1D               $01            Start Track
   $1E               $01            Start Sector
   $1F               $01            End Track
   $20               $01            End Sector
   $21               $01            Total Sectors High byte
   $22               $01            Total Sectors Low byte
   $23               $01            Random File Indicator
           $24                $01         Unused

## PDF page 3

           $24                $01         Unused
           $25                $01         Creation Month
           $26                $01         Creation Day
           $27                $01         Creation Year

       The Start Track and Sector mark the beginning of the linked list
       of sectors that make up the file. The directory sectors are linked,
       but do not contain a sequence number like other linked sectors
       do.
       top

       What are DSK files?
       DSK files, or files with the file name extension DSK, are file
       representations of a FLEX disk. The complete disk structure is
       copied, the only difference being that the inter-sector and inter-
       track bit strings used by the floppy disk controllers are not
       present.

       FLEX DSK files are a very useful way of saving the contents of
       aging floppy disks. Also, and fortunately, all the FLEX software
       emulators use the DSK format as their basic FLEX disk format.
       Using DSK files then becomes a true representation of the
       floppy-based age for the FLEX Disk Operating System.

       Software on this website and CD is stored in the DSK format.
       Tools are available to extract and insert FLEX files into the FLEX
       DSK images.
       top

       What is the difference between 6800 and 6809 FLEX?

       Coming soon...
       top

       What is UniFlex?
       UniFLEX was the last generation of the TSC FLEX Operating
       Systems. UniFLEX was a true multi-user unix-like operating
       system running on the 8/16 bit 6809 microprocessor.
       Unfortunately for TSC the development of UniFLEX coincided
       with the introduction of the IBM PC Jr and the 8-bit 8088 and
       then the 16-bit 8086, so as the market fell for 8-bits bad, 16-bits
       better, UniFLEX saw its market share disappear and UniFLEX
       was sold to an investor and then faded from view.
       Fortunately Randy Lewis found one of the master tapes for
       UniFLEX and has put all the UniFLEX source files onto his
       website (see Links). Download these files to see just what an
       accomplishment was made in putting unix onto an 8-bit
       machine.
       top

        Copyright © 1998-2001 Ian P. Blythe on behalf of the FLEX User Group
Mailto: f_u_g@ipblythe.com (remove underlines from e-mail address - Say NO to UCE)


## PDF page 4


