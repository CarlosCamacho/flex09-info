# READ-ME

> Source: `flex-09/distributions/FLEX_93W - FLEX Operating System - Programs and Utility Collection.zip!FLEX_93W.DSK!READ-ME.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

MODEL 121 HARDWARE DRIVERS
                         ==========================


This file details the hardware specific drivers used by FLEX.  These  drivers
fall into four categories:

1. PARALLEL PRINTER DRIVERS
2. SERIAL PRINTER DRIVERS
3. CLOCK CALENDAR DRIVERS


This disc contains several files that fall into the  above  categories.  Only
the  object files will be present on this disc. The source files are supplied
on the 'unconfigured' disc.


PRINT   .SYS    This  file  is  identical  in  all respects to the file named
                'SPRINT-W.SYS', the serial printer driver for  use  with  the
                serial printer port 'SP2'.

                The reason this file is present  is  that  'BASIC'  and  many
                BASIC  programs  will  search  the  system disk for a printer
                driver of this name. If the driver is not found  the  program
                will  abort.  If  you intend to use another printer driver we
                suggest that you DELETE this file and take a  'COPY'  of  the
                driver  you  intend  to use and give it this name, e.g. 'COPY
                0.PPRINT-W.SYS,0.PRINT.SYS'.


PPRINT-W.SYS    This  is  a  general  purpose parallel printer driver for use
                with   the  Rockwell  R6522  on  the  MODEL  121  board.  The
                printer port is designated as 'PP1'.


SPRINT-W.SYS    This  is a general purpose serial printer driver for use with
                the Rockwell R6551 on the MODEL 121 board. The  printer  port
                is designated as 'SP2'.


DATIME  .CMD    This is the clock read utility.  It  is  configured  for  the
                HD146818 on the MODEL 121 board.


SETCLOCK.CMD    This is the clock setting utility. It is configured  for  the
                HD146818 on the MODEL 121 board.


                                    NOTE
                                    ====

'KERNEL-H.SYS', the HD146818 clock kernel for  'SPLTITLE',  'FIXES.SYS',  the
FLEX  patches  file, 'SPOOL-RW.SYS', the spooler timer for the R6522 on MODEL
121, 'SPOOL.SYS', the enhanced spooler itself, are all an integral part of of
FLEX.


                                PRINT SPOOLER
                                =============

Before you attempt to use the print spooler 'PRINTT' command ensure that  the
interrupt   link   for  the  spooler  timer  is  installed.  In  this  system
configuration  the  spooler timer is the R6522 VIA on the MODEL 121 board. To
enable the IRQ interrupts link 'C' on this board should  be  installed.  This
link is part of the PCB artwork so it is normally installed.


                                  RAM DISC
                                  ========

This system configuration does not support a RAM DISC. Any attempt to install
or use the RAM DISC will crash the system. For this  reason  these  utilities
have not been supplied.


                      RESIDENT COMMAND TABLE EXTENSION
                      ================================

This  system configuration does not support the RESIDENT facilities described
in the FLEX manual. Any attempt to install or use  RESIDENT  or  any  of  its
associated  utilities  will crash the system. For this reason these utilities
have not been supplied.


                                 WINCHESTER
                                 ==========

This system configuration supports Winchester hard  discs.  The  most  common
configuration  is  a 20 MB half height winchester and a DS/DD 80 track drive.
The system is now capable of being configured for 10 on-line drives not 8  as
indicated  in  documentation (drives 0 through 9). The winchester is supplied
formatted as twenty six DS/DD 80 track floppies with winchester partitions  0
through  8  mounted  as  drives  0  through  8 and the floppy disc drive (F0)
mounted as drive number 9. Drive 0 contains a fully configured copy  of  FLEX
and all files present on the 'configured' system disc we have supplied.


                                STARTUP FILES
                                =============

There  are  two configured startup files on a configured system disc supplied
with a winchester system. One is called 'MYSTART.TXT' and is  configured  for
booting  from  a  floppy  disc.  The  second  is called 'WINSTART.TXT' and is
configured for booting from a Winchester disc. If you ever  have  to  rebuild
the  system  partition  on  the  Winchester  all  you  have to do is copy the
'configured' disc on to it and  then  RE-NAME  the  'MYSTART  .TXT'  file  to
'FLPSTART.TXT'  and  RE-NAME  the 'WINSTART.TXT' file to 'MYSTART.TXT'. Don't
forget to LINK the 'WMFLEXxxx.SYS' file.


                         CHANGES TO SETUP AND MOUNT
                         ==========================

SETUP  no  longer  needs  to be informed of the disc size (5 or 8) as the new
disc controller is only capable of supporting 5.25"  and  3.5"  disc  drives.
Therefore  simply  leave  off the references to '5' or '8' when invoking this
command.

MOUNT is now capable of mounting 10 drives and not just 8 as indicated in the
accompanying documentation. The drive assignments are 0 through 9.

SETUP  and  MOUNT  now  have a 'quiet' option that suppresses reporting. If a
minus sign (-) appears on the command line IMMEDIATELY after the command  and
before  any  options  any  reporting  that  would normally take place will be
suppressed.


                                 -- o O o --


If you have any problems with the system or its configuration do not hesitate
to contact us.


Windrush Micro Systems Limited
Worstead Laboratories
North Walsham
Norfolk, NR28 9SA
England

TEL: (0692) 404086
TLX: 975548 WMICRO G
