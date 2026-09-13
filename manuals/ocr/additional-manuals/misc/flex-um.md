# FLEX-UM

> Source: `manuals/misc/ENH_MANL - FLEX Software Archive - Manual and Documentation Archive - Includes FLEX-AIX, FLEX-UC1, FLEX-UC2.zip!ENH_MANL.DSK!FLEX-UM.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
#FLEX DISK OPERATING SYSTEM                                    USERS GUIDE  R:6.0


.DHE
#USERS GUIDE  R:6.0                                    FLEX DISK OPERATING SYSTEM


.DFO
.
                                       %%%%


.DFE
.
                                       %%%%


                               FLEX USER'S GUIDE


                                   PREFACE

 The  purpose  of  this User's Guide is to provide the user of the FLEX Operating
 System with the information required to make  effective  use  of  the  available
 system  commands  and utilities. This manual applies to Windrush implementations
 of FLEX 9 for 8 inch, 5 1/4 inch floppy discs, Winchesters  and  RAM  DISC  mass
 storage  devices.  The user should keep this manual close at hand while becoming
 familiar with the system. It is organized to  make  it  convenient  as  a  quick
 reference guide, as well as a thorough reference manual.


1.0  INTRODUCTION

 The FLEX (tm) Operating System  is  a  very  versatile  and  flexible  operating
 system.  It  provides the user with a powerful set of system commands to control
 all disc operations directly from the user's terminal.  The  systems  programmer
 will  be  delighted  with  the  wide  variety of disc access and file management
 routines available for personal use. Overall, FLEX is one of the  most  powerful
 operating systems available today.


 The  FLEX  Operating  System  is  comprised  of three parts, the File Management
 System (FMS), the Disc Operating System  (DOS),  and  the  Utility  Command  Set
 (UCS).  Part of the power of the overall system lies in the fact that the system
 can be greatly expanded by simply adding additional utility  commands.  Some  of
 the  other  important features include: fully dynamic file space allocation, the
 automatic "removal" of defective sectors  (found  during  formatting)  from  the
 disc, automatic space compression and expansion on all text files, complete user
 environment control using the TTYSET utility command, and uniform disc wear  due
 to the high performance dynamic space allocator.


 The UCS currently contains many very useful commands supplied by TSC and several
 more supplied by Windrush. These programs reside on the system disc and are only
 loaded  into  memory  when  needed.  Advanced  systems  with   dynamic   address
 translation  (DAT) have a facility called RESIDENT which enables UCS commands to
 reside in extended memory, either in RAM or ROM, for virtually  instant  access.
 This  means that the set of commands can be easily extended at any time, without
 the necessity of replacing the entire operating system. The  utilities  provided
 with  FLEX  perform  such  tasks  as  the  saving,  loading,  copying, renaming,
 deleting, appending, and listing of disc files. There is an extensive  DIRectory
 command  for examining the disc's file directory (supplied by Windrush). Several
 environment control commands are also provided. Overall, FLEX  provides  all  of
 the necessary tools for the user's interaction with the disc.


 * FLEX (tm) is a registered trademark of Technical Systems Consultants, Inc.


1.0  INTRODUCTION  (continued)

 There  are several features in the Windrush implementation of FLEX which make it
 unique in the industry, e.g.


                           AUTO-LOADING FLEX FROM ROM


                         100% SILICON SYSTEMS POSSIBLE


                      AUTO-CONFIGURING FLOPPY DISC DRIVERS


                     A RAM DISC WHICH USES EXTENDED MEMORY


               THE ABILITY TO RE-ASSIGN THE LOGICAL DRIVE NUMBERS


           A WINCHESTER WHICH MAY BE PARTITIONED INTO SEVERAL DRIVES


       AN ENHANCED PRINT SPOOLER WHICH MAKES SPOOLING MUCH EASIER TO USE


      THE ABILITY TO MOUNT UP TO EIGHT DRIVES, 4 OF WHICH MAY BE FLOPPIES


 THE ABILITY TO EXPAND THE RESIDENT COMMAND TABLE INTO EXTENDED RAM/ROM MEMORY


 In spite of all these enhancements ALL software written for FLEX will run on our
 implementation.  The Windrush implementation of FLEX makes no distiction between
 a FLOPPY, a WINCHESTER partition or the RAM DISC ... they all appear as FLOPPIES
 to the application software. Since FLEX will look in the memory resident command
 table for commands before it looks to disc the  commands  loaded  into  extended
 memory by the 'RESIDENT' utility are automatically catered for.

 The only enhancement that is not universal is the ability to mount eight  drives
 simultaneously.  FLEX  was  designed  to  support  only  four  drives  and  many
 applications packages will have internal limit checks to ensure that  the  drive
 number specified is between 0 and 3. This does not pose any real problems as you
 can simply use 'MOUNT' to move the drive assignments around in order to get  the
 drives  to be accessed by this type of software in positions 0 - 3. All Windrush
 utilities   and  application  software  (PL/9,  MACE,  etc)  supplied  with  our
 implementation of FLEX will work with drive numbers 0 - 7.


2.0  WINDRUSH FLEX IMPLEMENTATION INFORMATION

 Windrush's implementation of the FLEX operating system employs a set of enhanced
 disc  driver routines which fully support: Winchesters (up to 16 in any mix) via
 the SASI interface, 5 1/4" and/or 8" (up to 4 drives in  any  mix)  floppy  disc
 drives via the SHUGART interface, a high speed  RAM  DISC  (sometimes  called  a
 silicon  disc)  via  the Dynamic Address Translator (DAT) and additional RAM (in
 excess of the normal 64k map). The enhanced drivers permit a total of  8  drives
 to be mounted on the system at any one time. In addition the DAT is also used to
 provide facilities which extend the FLEX memory resident command table  allowing
 commonly used FLEX utilities to reside in extended memory either in RAM or ROM.


2.1  WINDRUSH ENHANCED FLEX FEATURES

 The following is  a  list  of  some  of  the  features  found  in  our  enhanced
 implementation  of FLEX. Many of these features are unique to our implementation
 so don't expect to find them in anyone else's!

 a) The  ability  to  load a fully configured version of FLEX into RAM from EPROM
    as a sytem monitor command in 6U systems. 100% silicon systems are possible.

 b) A  large  collection of useful FLEX utilities that are not available anywhere
    else, e.g. COMPRESS, DATECOPY, DIR, FASTBACK, FDATE, FIX,  LOAD,  MAP,  NAME,
    PCOPY, PDEL and many others.

 c) Our enhanced implementation of FLEX is optimised for a 2 MHZ system. The FLEX
    drivers  are  fully  integrated to give you the highest performance possible.
    Compare our implementation with other systems and you will probably find some
    startling differences in disc access timings and general ease of use.

 d) The ability to read a clock calendar  chip  during  the  bootstrap  operation
    thereby eliminating the need to prompt for the date each time FLEX is booted.
    If the data in the clock is corrupted or the clock not present then the  date
    prompt will automatically be issued.

 e) An enhanced Print Spooler with a full set of  support  utilities  that  makes
    print spooling easy to use and more flexible.

 f) A  RAM  DISC  which  offers all of the flexibility of a floppy but runs about
    five to ten times faster. The RAM DISC may be as small as 36K or as large  as
    960K. The RAM DISC option is only available with systems that include DAT.

 g) A 'RESIDENT' utility to extend the FLEX memory resident  command  table  into
    extended  memory.  The data in extended memory can be placed in ROM or RAM as
    desired. This option is only available with systems that include DAT.

 h) A  Winchester  option  which utilises the SASI bus and intelligent Winchester
    controllers to support up to sixteen Winchesters of virtually  any  capacity.
    Our  implementation  allows you to split up a Winchester into several working
    partitions or to use it as a single drive with up to 16 MB  of  storage.  The
    partitioning scheme, unique to the Windrush implementation of FLEX, makes the
    Winchester storage capacityMUCHmore manageable. In fact you will  find  the
    partitioning so useful that you will wonder why no one did it before us!

 i) A utility which enables you mount/dismount the floppy disc drive(s), the  RAM
    DISC, or Winchester partitions. It also enables you to re-arrange the logical
    drive assignments at will. Up to8drives may be mounted simultaneously.

    THREE WORDS DESCRIBE IT COMPLETELY: 'FAST', 'SMOOTH' and 'PROFESSIONAL'
2.2  SYSTEM HARDWARE REQUIREMENTS

 FLEX requires, as a minimum, random access memory from  location  $0000  through
 location $2FFF (12K). A further 8K of memory is also required from $C000 through
 $DFFF where the actual operating system resides. For serious applications 56K of
 contiguous  RAM should be present in the system between $0000 through $DFFF this
 will provide FLEX with the 8K it requires and  will  leave  48K  free  for  user
 programs.  Most Windrush systems meet this requirement with battery backed (non-
 volatile) CMOS static RAM.

 The enhanced implementation of FLEX is available on all standard Windrush 3U and
 6U  system  configurations.  In  smaller  systems  only  certain  aspects of the
 enhanced drivers are available due to hardware limitations.


 The following is a list of the primary hardware requirements:

 a) A  Windrush  DSK1 floppy disc controller addressed at $E010 with at least one
    disc drive attached to it configured as drive #0. The drive should be  linked
    to load the head with the 'motor on' signal.

 b) If  you  wish to have a Winchester present in the system then you must have a
    Windrush SASI interface addressed at  $E100,  connected  to  a  XEBEC  S1410A
    Winchester  controller,  which  is,  in  turn, connected to any of the RODIME
    family of Winchesters as drive #0. A second Winchester may be  added  to  the
    XEBEC as drive #1 at any time.

 c) A CPU card with Dynamic Address Translation (DAT) it  you  wish  to  use  the
    RAM DISC  or the 'RESIDENT' utility. At present only the Windrush 6U CPU/MEM1
    board fulfills this requirement. If you only require  floppy  and  Winchester
    drives the 6U-CPU/MEM1 or the 3U-CPU1 board may be used.

 d) 1K of RAM between $E800-$EBFF for the floppy, and Winchester drivers. This is
    available on 3U-CPU1 and 6U-CPU/MEM1.

 e) 1K  of  RAM between $EC00-$EFFF if you wish to use the RAM DISC facilities or
    the 'RESIDENT' utility. This is only available on 6U-CPU/MEM1.

 f) The  new  (Version 6.XX) bootstrap loader in ROM between $F000-$F2FF. This is
    essential to the operation of the Winchester and floppy  disc  drivers  which
    use code present in the ROM.

 g) The 'GT-BUG' system monitor. Our  FLEX  implementation  expects  to  find  an
    'SBUG-E'  compatible  I/O  vector table at $F800-$F813, the IRQ RAM vector at
    $E744 and the SWI3 RAM vector at $E74A. FLEX will automatically configure its
    console drivers to use the addresses present in the I/O vector table and will
    re-aim the IRQ and SWI3 vectors to point at the spooler drivers.

 h. 56k of contiguous memory between $0000 and $DFFF as described above.


 For the technically minded the disc drivers occupy: $DE00-DFFF, $E800-$EBFF  and
 $EC00-$EFFF.  The  lower  block  contains  data  and  dispatch tables. The block
 between $E800-$EBFF contains code for the  Winchester  drivers  and  the  floppy
 drivers.  The  dblock  between  $EC00-$EFFF  contains  the RAM DISC and RESIDENT
 drivers.

 NOTE:  The RAM between $E800-$EFFF ('d' and 'e' above) clashes with the  3U-VID1
        board's  standard address. 3U-VID1 and 3U-CPU1 can be modified for 'write
        only' operation at $F000-$F7FF  as  can  6U-VID1.  Contact  Windrush  for
        details.
2.3  STANDARD HARDWARE CONFIGURATIONS

 Windrush  incorporate  the enhanced version of FLEX in several standard hardware
 configurations. Although all of the drivers are present they can only be used if
 the  required  hardware  is  present.  Any attempt to use the enhanced facilites
 without the corresponding hardware will probably result in either a system crash
 or a system lock-up.

 The following general restrictions apply:


 3U SYSTEMS    The RAM DISC and RESIDENT facilities  cannot  be  used  under  any
               circumstances  as  there  is  no Dynamic Address Translation (DAT)
               present in this hardware. Since the RAM on 3U-CPU1 is mapped to 2K
               the  3U-VID1  board  (if  used)  may not be used at its 'standard'
               address.


 6U SYSTEMS    No  restrictions  ...  providing  that the appropriate hardware is
               present!


 The  following  is  a  summary  of  our standard system configurations and their
 restrictions:


 3U-SYS2       Floppy, Winchester, RAM DISC and  RESIDENT  drivers  are  present.
               Only   the  floppy  capability  may  be  used;  a  Winchester  may
               optionally be added at a later date.  The  RAM DISC  and  RESIDENT
               facilities may not be used as there is no DAT in this hardware.


 3U-SYS2W      Floppy, Winchester, RAM DISC and RESIDENT drivers are present. The
               floppy  and  Winchester  capability  may be used. The RAM DISC and
               RESIDENT facilities not be  used  as  there  is  no  DAT  in  this
               hardware.


 6U-SYS3       Floppy, Winchester, RAM DISC and  RESIDENT  drivers  are  present.
               Only   the  floppy  capability  may  be  used;  a  Winchester  may
               optionally be added at a later date. The  RAM  DISC  and  RESIDENT
               facilities  only  require  that  the  user  add additional 'paged'
               memory to the system; 36K to 960K additional memory is  supported.
               Use of 3U-MEM3 or 6U-QMBM are recommended.


 6U-SYS3W      Floppy, Winchester, RAM DISC and RESIDENT drivers are present. The
               floppy  and  Winchester  capability  may be used. The RAM DISC and
               RESIDENT facilities only require  that  the  user  add  additional
               'paged'  memory  to  the  system; 36K to 960K additional memory is
               supported. Use of 3U-MEM3 or 6U-QMBM are recommended.


 We will only support this software when it is run with the above hardware ...

                    _________________________________________
                   WE WILL NOT SUPPORT HYBRID CONFIGURATIONS


3.0  FLEX DRIVERS, GENERAL INFORMATION

 Windrush's  implementation  of  FLEX  contains  a powerful configuration of disc
 drivers. Depending on the specific hardware configuration, there is support for:
 floppy  discs  (3/5/8"),  Winchester  hard  discs,  RAM DISC (silicon high speed
 disc), RESIDENT (RAM and/or ROM based extension  of  the  FLEX  memory  resident
 commands) and automatic loading of a fully configured copy of FLEX from ROM.

 Up  to  8  (yes  EIGHT!)  drives  may be on-line for FLEX at any time. The total
 available number of drives is: 4 physical floppy drives (any mix  of  size);  16
 Winchester  drives,  giving up to 250 partitions of any size up to 16 MB each; 1
 RAM DISC, which can be as large as the available  RAM  using  the  DAT  (Dynamic
 Address Translatior) available in some systems.

 A  minimal  configuration  is a 3U CPU without DAT capability. This will provide
 both floppy  and  Winchester  capability  and  gives  an  excellent  development
 environment in a small compact unit.

 A  system  which uses 6U CPU with DAT may also incorporate additional RAM and/or
 ROM. This will provide an even more useful system. This is because both the  RAM
 DISC  and  RESIDENT  features  may  be  usefully  put  to  work for you. A brief
 explanation of what DAT does/means should help here:

 DAT allows the processor to access 1Mbyte of memory in units of 4kbytes normally
 known  as  "segments".  Sixteen  such segments together form a "page" (not to be
 confused with the 256  byte  page  that  the  6809  processor  uses  for  direct
 addressing)  of  64kbytes. The pages range from $0 to $F, but the last page ($F)
 is used as the system page and is mapped onto the processor to appear like  it's
 own 64kbyte memory.

 This  leaves  pages  $0..$E  available  for population with RAM and/or ROM using
 6U-QMBM (Quarter MegaByte Memory) or 3U-MEM3 (64K memory)  boards.  The  maximum
 possible expansion is 960k bytes!

 It  is  left to yourself to decide how to partition this memory between your own
 use (if you use the DAT in your own programs) and system  use.  If  you  do  not
 allocate  any  for  system  use  then  RAM DISC and RESIDENT will not be able to
 perform - this may be the case  if  you  decide  to  use  the  system  to  do  a
 data-logging function and so use the maximum amount of available RAM.

 If  you  do  allow  the  system  to access the extra memory, it may be allocated
 between three areas: RAM DISC, to provide a high speed silicon disc;  RAM  based
 RESIDENT storage; ROM based RESIDENT storage.

 The  RAM  DISC  and  RESIDENT  drivers  only access their own areas and will not
 access anywhere not directly allocated to them. It is up to you to  ensure  that
 your  own code stays within the rest of the extended memory and does not trample
 over memory not allocated to you!

 Configuration of memory to the RAM DISC is  performed  using  the  RAM-CON  (qv)
 utility, and the RES-CON (qv) utility for RESIDENT.

 The  detail  of  how  DAT works is left to other Windrush documentation as it is
 beyond the scope of this manual.


3.1  WINCHESTER DRIVES

 These  are  provided two to a XEBEC (tm Xebec Systems Inc.) controller and eight
 XEBECs to a SASI interface  (which  talks  to  host  system).  The  conventional
 configuration would be a Winchester on one XEBEC with  a  5"  floppy  drive  for
 archiving/interchange.  Provisions  have  also  been  made  for  the forthcoming
 generation of Winchesters which have integral SCSI/SASI interfaces.

 Stand-alone booting and running can be performed on the Winchester(s) but if you
 ever crash the Winchester you may find yourself in a lot of trouble!

 After performing what is known as a HARD FORMAT to a Winchester  (which  enables
 the  XEBEC  controller  to find its way around) the total media may be logically
 broken down into partitions (if desired) for management of the large data  area,
 these  operations  being  performed  by the WIN-FORM (qv) utility. The system is
 informed of the number of partitions allocated to  Winchester(s)  by  the  SETUP
 (qv) command at boot or any subsequent time. They are mounted (made available to
 the system) by using the MOUNT (qv) utility.

 It is very useful to have partitions which emulate a floppy size as the FASTBACK
 (qv)  utility  can  then  be used to make rapid archives to floppy, or reinstate
 data to the Winchester from floppy.


3.2  FLOPPY DRIVES

 Up to four physical drives,  of  any  mixed  sizes,  may  be  connected  to  the
 controller. Both 3" and 5" drives share the 34 way bus, while the 8" drives have
 their own 50 way bus. Both buses follow the defacto industry standard  developed
 by Shugart Associates.

 Stand-alone booting and running can be performed on the floppy(s).

 Auto reconfiguration occurs when media of different  formats  are  used  in  the
 drives,  as  well  as automatic double stepping of 96tpi 80 track drives to read
 48tpi 40 track formatted discs. This feature  eliminates  the  need  to  know  a
 "foreign"  discs  format  and then running a configuration program to set up the
 drive.

 FORMAT (qv) is used to format floppy drives while SETUP  is  used  to  tell  the
 drivers  abount  the  physical characteristics of the drive, and MOUNT to make a
 drive 'on-line' for FLEX.


3.3  RAM DISC

 A RAM DISC looks just like a fast floppy drive to the system, meaning  that  ALL
 software  and  FLEX  utilities  will  run just as they do on floppy/hard discs -
 except a lot faster!

 Booting is not possible as the data can not be guaranteed following a  power-off
 (unless  using  battery-backed  CMOS  RAM).  For  a  100%  silicon  disc  system
 'AUTOFLEX' booting from ROM (qv) is available.

 RAM-FORM (qv) is used to format the RAM DISC while RAM-CON is used  to  allocate
 memory to it and SETUP to load the memory map.

 If sufficient memory is allocated then it is possible to emulate standard floppy
 disc formats and thus use the 'FASTBACK' (qv) utility.
3.4  RESIDENT

 Though  not actually like a disc, it is covered here because it's drivers are an
 integral part of the disc driver code.

 FLEX as supplied has two resident commands: GET which loads a  binary  file  and
 returns  to  the  operating  system  and MON which jumps into the system monitor
 code. There are documented ways (qv "USER WRITTEN COMMANDS" in the FLEX Advanced
 Programmer's  Guide)  in  which a user may extend these, e.g. making some of the
 monitor commands a part of his/her FLEX. RESIDENT is an addition to this and  in
 no way interferes with the documented way that FLEX works.

 When RESIDENT is enabled, the order of handling commands is:

 is it GET or MON?
    if so do the FLEX resident command,
    else ... is it a user extension?
                if so do that,
                else... is it a RAM RESIDENT command? -
                           if so do that,
                           else... is it a ROM RESIDENT command? -
                                      if so do that,
                                      else... offer the command to the discs.

 Allowing  RAM  residency to be checked before ROM residency allows a new version
 of a command to be used in preference to the old one in ROM (until new ROMs  are
 blown).

 RES-CON (qv) is used to allocate memory for RESIDENT use and  RESIDENT.CMD  (qv)
 is  used  to  view  RAM/ROM commands and to purge/add/delete commands to the RAM
 area. ROM-RES (qv) allows the current RAM based RESIDENT commands to be  written
 to  disc  files  for  subsequent blowing into EPROM to then become ROM RESIDENT.
 This helps because ROM is cheaper than RAM and also frees off the  RAM  for  use
 with the RAM DISC or other use.

 RESIDENT  may be enabled by using RES-ON (qv) or disabled by using RES-OFF (qv).
 The current status and memory map of RESIDENT may  be  interrogated  by  ESTATUS
 (qv).

 It should finally be noted that RESIDENT is even quicker than the  RAM  DISC  as
 there  is  no involvement with FLEX (with its FMS latency overhead) when loading
 files.

 For those who may be interested, the disc driver code is allocated thus:

 $DE00 - $DFFF    Data tables and driver despatcher code,
 $E800 - $EBFF    Winchester and floppy driver code,
 $EC00 - $EFFF    RAM DISC and RESIDENT driver code (6U only).


3.5  AUTOFLEX

 This is the primary building block  for  a  100%  silicon  system  and  is  only
 available  on  6U  systems which incorporate the optional 27256 (32K x 8) system
 monitor ROM. When this ROM is fitted GT-BUG is given an extra command 'A'  which
 automatically  loads a compressed form of FLEX created by the user from ROM into
 main memory. This enables you to instantaneously 'boot' the system. This  option
 is  supplied  and documented separately. It is only mentioned in this manual for
 the sake of completeness.

4.0  FLEX DRIVERS, IMPLEMENTATION INFORMATION

 This  section  describes  the various elements of the Windrush implementation in
 greater detail for those system programmers who are writing programs which  make
 use of the facilities in FLEX or for those of you that are just curious.


4.1  BOOTSTRAP IMPLEMENTATION

 The version 6.XX bootstrap loader code which resides in ROM between  $F000-$F2FF
 has three user addressable entry points as follows:

 $F000    auto-boot
 $F003    boot from floppy
 $F006    boot from Winchester

 The 'GT-BUG' 'Q' command normally executes 'auto-boot' as  this  will  cater  to
 most  systems.  Several  other  entry  points  follow these but they are present
 specifically for use by the  enhanced  FLEX  drivers.  The  entry  point  called
 'auto-boot'  will normally attempt to locate the SASI controller, test the XEBEC
 intelligent Winchester controller and, if all is well, automatically execute the
 Winchester  boot.  If  the  SASI controller is not present or there are problems
 with it or the Winchester controller control  will  automatically  pass  to  the
 floppy  bootstrap  routine.  Worth noting is that the Winchester bootstrap, just
 like a floppy bootstrap, cannot tell in advance  that  the  Winchester  data  is
 intact  (or  otherwise).  If you attempt to boot a crashed Winchester the result
 will, in all likelihood, be a system crash or lock-up just as it would be if you
 attempted  to  boot  a  crashed  floppy. The entry point at $F003 is provided to
 cater for this possibility. If the Winchester has  been  damaged  simply  put  a
 fully  configured  system disk in physical floppy drive number zero (0) and type
 'J F003' when the GT-BUG prompt is present.

 Assuming that there is no 'STARTUP' file (qv) present on  the  boot  device  the
 FLEX  drivers  will only have knowledge of the basic characteristics of the boot
 device when the FLEX '+++' prompt appears. The 'SETUP' (qv) utility  should  now
 be run to define the mass storage devices available to the system. Once this has
 been done the 'MOUNT' (qv) utility should be run to  define  the  logical  drive
 assignments. The 'PROTECT' (qv) utility may now be optionally  run  to  software
 write  protect  selected drives. Usually all of these tasks are performed in the
 users 'STARTUP' (qv) and 'MYSTART' (qv) files.

 It  should  be noted that 'SETUP' and 'MOUNT' (qv) access reserved tracks on the
 Winchester when they are invoked with Winchester  parameters.  This  means  that
 before you can use these utilities in conjunction with a Winchester it must have
 been  hard  formatted  and  the  FLEX  partition(s)  established.  This  task is
 performed by 'WIN-FORM' which does not require that  the  drive  be  'SETUP'  or
 'MOUNT'ed.

 NMI, FIRQ and IRQ interrupts are not permitted during the bootstrap operation.


4.2  FLOPPY DISC IMPLEMENTATION

 The  floppy drivers are fully auto-configuring in use and support the ability to
 read and write 48 tpi discs on a 96 tpi drive. The only  action  required  after
 booting  FLEX  is  to give the drivers the following information for each drive:
 size, track-to-track step rate and the number of physical tracks on  the  drive.
 This  information,  as well as some for the Winchester and RAM DISC, is provided
 using the SETUP (qv) utility as part of system startup.

 A useful feature of the enhanced drivers is that any physical  drive  (be  it  a
 Winchester,  floppy or RAM DISC) can appear to the system as any logical number.
 That is to say, for example, that physical floppy #0 could be made to be logical
 drive  #3  in  the  system.  Up  to  4  physical  floppy  drives  may be mounted
 simultaneously.

 This  logical/physical  mapping  is  defined using the MOUNT (qv) utility, which
 should be called immediately after SETUP as part of the system startup sequence.
 MOUNT can be used at any other time to either check what the present mapping is,
 or to remount/dismount off-line/on-line drives.

 A utility called FSTATUS (qv) can be called at any stage to  determine  how  the
 floppy  drivers  have  configured themselves. Off-line drives will show the last
 configuration, while on-line drives will  be  accessed  for  a  successful  read
 operation  to ensure that the information is up-to-date. This utility also shows
 the logical number of any on-line floppy disc drives.

 A  useful  feature of the enhanced floppy disc drivers is that the drive is only
 selected when a disc access takes place. This shows itself by the fact that  the
 activity  LED  on  the  front  of  the  floppy  disc drive will flash briefly at
 periodic intervals rather than remain  illuminated  continuously.  To  use  this
 feature effectively you should ensure that the head loads with 'motor on' rather
 than 'drive select'. If you fail to do this  the  head  load  noise  may  become
 obtrusive. A second feature of the enhanced floppy disc drivers is that whenever
 drive activity terminates, drive #3 (which is not present in  most  systems)  is
 automatically  selected.  These  features  substantially reduce the chances of a
 system crash destroying the data on your valuable discs.


4.3  RAM DISC IMPLEMENTATION

 The Windrush RAM DISC implementation was purpose designed to offer  the  maximum
 storage  capacity  available  in a system with a 1 MB memory map, e.g. 960K, the
 remaining 64K being devoted to the page ($F) where FLEX and the  users  programs
 reside.  It  is also possible to have a RAM DISC based on a small 36K block or a
 combination of 4K blocks (36K minimum to 960K maximum) scattered throughout  the
 1  MB  memory  map.  The  blocks  need  not be contiguous! The RAM DISC makes it
 possible to have a 100% silicon system with the blistering speed associated with
 it.

 The RAM DISC includes several support utilities: RAM-CON, RAM-FORM and  RSTATUS.
 There is also a file called RAM-CON.SYS which must be on the system drive.

 In order to use the RAM DISC: there must be memory management  hardware  in  the
 form  of  DAT and extra RAM in extended memory available, RAM-CON must have been
 used to configure the RAM-FORM formatter and RAM-CON.SYS file, SETUP  must  have
 been  called  to get the RAM-CON.SYS overlay and to tell the dispatcher that the
 RAM DISC is available, MOUNT must have been called to mount  the  RAM  DISC  and
 RAM-FORM  must  have  been used to format up the RAM DISC (unless it has already
 been formatted at some stage, or is battery-backed).

 As RAM-CON is only used if the extended memory  configuration  is  changed,  and
 SETUP  and  MOUNT are usually called by 'STARTUP' (qv) there is only one utility
 to worry about (after initial configuration to your particular installation) and
 that is RAM-FORM.

 RAM-FORM  should  not  be called as part of 'STARTUP' (qv). Doing so would would
 cause the loss of ALL  information  on  the  RAM  DISC  if  your  system  needed
 rebooting  after a fatal crash. Indeed, if you are using the low power CMOS 256k
 byte memory boards with battery-back up, data will be  retained  for  many  days
 when the system is powered down thereby negating the requirement to re-format it
 every time you boot the system.

 You should note that to ensure the maximum sectors available  for  data  storage
 there  is  no  sector  CRC  stored  within  the  RAM DISC. The recommended modus
 operandi is: use FASTBACK (qv) to quickly load the RAM DISC from a normal drive,
 do your development using the speed advantage of the RAM DISC, and then FASTBACK
 up to the normal drive at the end of the session/day for the  archive/master  of
 the  development. This approach is only valid if you format your floppy discs or
 Winchester partitions identically to the RAM DISC.  An  alternative  is  to  run
 RAM-FORM,  use  'COPY'  to  copy  the source disc or Winchester partition to the
 RAM-DISC. At the end of the days work session you can  then  either  FORMAT  the
 source  disc/REFORMAT  the  Winchester  partition  and use 'COPY' to archive the
 RAM-DISC. You could also simply use 'DATECOPY' with the '+' option to  copy  the
 updated files plus any new ones you created to the original media.

 A brief overview of the RAM DISC support utilities follows:

 RAM-CON    is used to convey  to  RAM-FORM  the  number  of  tracks,  sides  and
            density.  It  also modifies the RAM-CON.SYS overlay which is a map of
            the memory availability for use by the FLEX drivers.

 RAM-FORM   is used to format the RAM DISC memory. It should be used  if  you  do
            not  have battery-backed up CMOS RAM after a startup, or at any other
            time as required.

 RSTATUS    is used to check the memory usage and format of the  RAM  DISC.  This
            utility  also  tells  you  where  (logically)  the RAM DISC is on the
            system.

4.3  RAM DISC IMPLEMENTATION  (continued)

 RAM-FORM and RSTATUS are only operable if the  RAM  DISC  is  installed  on  the
 system.  RAM-CON  may  be  run at any time, but to use the new configuration the
 RAM-CON.SYS overlay and RAM-FORM invocation options are needed.

 A word on memory usage for those who may wish to know. The RAM DISC alloctes  16
 sectors to each 4k byte segment of memory. The segments are accessed by page and
 then segment. That is to say the RAM DISC uses  each  available  segment  on  an
 available page before stepping on to the next available page.

 If you have a dud RAM chip somewhere, or are just interested in how it is  done,
 the  following  detailed description explains how to convert from a track/sector
 address into a page and segment.

 Three discrete steps are required: convert from track/sector to RELATIVE_SECTOR,
 convert RELATIVE_SECTOR into an INDEX (within a segment) and a RELATIVE_SEGMENT,
 convert the RELATIVE_SEGMENT into the actual page and segment.


CONVERSION OF TRACK/SECTOR TO RELATIVE_SECTOR

 The formula for this conversion is:

    if TRACK = 0

       then RELATIVE_SECTOR = SECTOR - 1

       else RELATIVE_SECTOR = SECTOR - 1 + TRACK0 + (TRACK - 1) * TRACKN

 where:

 TRACK    is the track of interest,
 SECTOR   is the sector of interest,
 TRACK0   is the number of sectors on track #0 (see below),
 TRACKN   is the number of sectors on tracks other than track #0 (see below).


 The  following table gives values for TRACK0 and TRACKN for various sizes, sides
 and densities. The reason for this complication  is  that  track  #0  is  ALWAYS
 written in single density - regardless of the overall disc density.


                 5 1/4" SSSD    5 1/4" DSSD    5 1/4" SSDD    5 1/4" DSDD
             +-------------------------------------------------------------+
      TRACK0 |        10             20             10             20      |
      TRACKN |        10             20             18             36      |
             +-------------------------------------------------------------+


                   8"   SSSD      8"   DSSD      8"   SSDD      8"   DSDD
             +-------------------------------------------------------------+
      TRACK0 |        15             30             15             30      |
      TRACKN |        15             30             26             52      |
             +-------------------------------------------------------------+


 So  by  applying  the  formula to the required track/sector and using TRACK0 and
 TRACKN, from above, you will get the RELATIVE_SECTOR number.

4.3  RAM DISC IMPLEMENTATION  (continued)


CONVERSION OF RELATIVE_SECTOR TO INDEX AND RELATIVE_SEGMENT

 As has been stated, a segment contains 16 sectors. This means that:

 INDEX            = remainder on dividing RELATIVE_SECTOR by 16,
 RELATIVE_SEGMENT = quotient  on dividing RELATIVE_SECTOR by 16.


CONVERSION OF RELATIVE_SEGMENT TO A PAGE AND SEGMENT ADDRESS

 By examining the memory map produced from RSTATUS, and counting along with  your
 finger  (top row, left to right, down one, left to right, down one...), you will
 be able to locate the absolute segment which corresponds to the RELATIVE_SEGMENT
 (remembering  that the first usable segment is RELATIVE_SEGMENT 0, the second is
 RELATIVE_SEGMENT 1 ... the 24th is RELATIVE_SEGMENT 23 ...).

 Your finger will be pointing to the absolute SEGMENT and the  left  hand  column
 will reveal the absolute PAGE.

 So  by  following the three stages, you will have a PAGE, a SEGMENT and an INDEX
 value that corresponds to the original track/sector of interest.  The  PAGE  and
 SEGMENT  will  home into a 4k byte block of memory, while the INDEX will further
 home in on the 256 byte sector within the 4k byte block.

 Fortunately, the RAM DISC drivers do all the above very quickly!


 NOTE:  Development  systems  incorporating 6U-CPU/MEM1 may have the CPU watchdog
        circuitry configured to show RAM DISC activity. The LED will normally  be
        at  half  intensity  and will flash to full intensity whenever a RAM DISC
        access takes place.


4.4  MEMORY RESIDENT COMMAND TABLE IMPLEMENTATION

 The 'RESIDENT' utility, DAT and additional memory are the prime elements in this
 option. FLEX is supplied with two memory resident commands 'MON' and 'GET' which
 are always available to the user, even when there are no discs installed in  the
 system  to draw utilities from. FLEX has the ability to have the memory resident
 command table extended.

 Memory resident commands have two distinct advantages:

 1. A disc need not be present in the system to use them.
 2. They execute virtually instantaneously.

 Generally  speaking 'RESIDENT' commands will tend to be the more frequently used
 FLEX utilities such as ASN,  COPY,  DATECOPY,  DATIME,  DELETE,  DIR,  FASTBACK,
 FORMAT,  FREEMAP, LIST, LOAD, MAP, MEMEND, MOUNT, PCOPY, PDEL, PR, RENAME, SAVE,
 TTYSET, XOUT, and ZAP to name but a few of the most  common  ones.  It  is  also
 possible  to  put  larger application programs such as MACE, PL9, and D-BUG into
 the resident command table.

 The 'RESIDENT' utility takes care of setting up the the command table  extension
 and  maintenance  of  the  memory  resident  commands.  An additional utility is
 provided to facilitate saving the extended memory resident code blocks to  disc.
 Once  the code blocks are on disc they may be transferred to an EPROM programmer
 buffer and programmed into EPROM  which  may  be  substituted  for  the  RAM  in
 extended memory in the interest of economy. (EPROM  is  generally  cheaper  than
 RAM!)

 The  'RESIDENT'  utility also supports a mixture of ROM and RAM with the ability
 to have a utility in ROM superseded by a utility of the same  name  loaded  into
 RAM.


 A brief overview of the RESIDENT support utilities follows:

 RESIDENT   is the main utility which mangages the utilities resident in extended
            memory.

 RES-ON     turns the RESIDENT facility on.

 RES-OFF    turns the RESIDENT facility off.

 RES-CON    is  used  to  convey  to  RESIDENT driver overlay RES-CON.SYS overlay
            which is a map of the memory availability for  use  by  the  RESIDENT
            drivers.

 ESTATUS    is used to check the memory usage and status of RESIDENT.

 RES-SAVE   is  used  to  save  the  RESIDENT  memory  commands out to disc as 8K
            segments suitable for programming into  EPROM  devices  such  as  the
            2764.


4.5  WINCHESTER DRIVER IMPLEMENTATION

 The Windrush Winchester implementation uses the SASI bus in conjunction with  an
 intelligent  Winchester  controller  to gain not only increased storage capacity
 but also increased system throughput.

 FLEX was conceived long before the days of the relatively low cost mass  storage
 of Winchester technology. As a result FLEX is limited to a storage device with a
 maximum of 255 tracks with a maximum of 255 sectors per track,  i.e.  16,646,400
 bytes  of unformatted storage. The limit of 16 megabytes is not really a problem
 in itself but the lack of a hierarchical directory structure in FLEX poses  some
 potential problems to users, for example:

 1. Have you ever seen a 'CAT'alog or 'DIR'ectory listing of a 16 MB disc?
 2. Have you ever tried to REMEMBER what you have stored on a 16 MB disc?
 3. Have you ever run 'UNDELETE' on a 16 MB disc?
 4. Have you ever tried to back-up a 16 MB disc?
 5. Have you ever run 'FREEMAP' on a 16 MB disc?
 6. Have you ever tried to 'RECOVER' a crashed 16 MB disc!!!!?

 FLEX is a great operating system but unless you are running a big database 16 MB
 of  storage  on  one drive can cause more aggravation than one bargained for. In
 order to make the whole system more managable and to  enable  the  user  to  use
 Winchesters with capacities greater than 16 MB without waste we have implemented
 a partitioning scheme for our Winchester package.

 The partitioning scheme will allow you to take advantage of the benefits of  the
 Winchester technology e.g. faster access times and larger storage capacity for a
 given physical size of drive without encountering any of the problems caused  by
 a  lack of a hierarchical directory structure. The drivers have been designed to
 cater for Winchester storage capacity in excess of  4000  MB  which  means  that
 there  is  no practical limit to the amount of Winchester storage other than the
 financial considerations! At the same time it is possible to  create  partitions
 on  the Winchester that look like floppy discs, so that ALL your floppy oriented
 utilities, such as FASTBACK, can still work with them. A benefit of partitioning
 the  Winchester  into floppy 'look alikes' (we call them 'wini floppies'), which
 is possibly more important, is that you can never get more data into a partition
 than  can  be  held  on  a  floppy disc. This eliminates potential problems with
 backing up the Winchester. A further benefit of the partitioning scheme is  that
 the  storage  capacity  is not limited to 16 MB (255 tracks with 255 sectors per
 track is a limitation of FLEX).

 Should it be necessary to have a drive with a larger capacity  than  that  of  a
 floppy  disc  then  larger  partitions can be made. Once the partitioning of the
 disc has been decided on and  the  partitions  made  and  formatted  it  is  not
 possible  to  change  the  size  of the partitions unless the Winchester is hard
 formatted again. It is possible, however, to reformat a partition in  the  event
 you  wish  to  tidy  up the directory, sector allocation or if the partition has
 been damaged by a system crash. For the technically minded we use the  first  32
 sectors  on  the  first  track  of  the  first  platter  to  hold the Winchester
 configuration information, RAM bootstrap loader and the partition information.

 The primary advantages of the ability to partition the Winchester are:

 1. Each  partition  can  be made to emulate a standard physical floppy, e.g. 5",
    DS, DD, and hence may be 'FASTBACK'ed to another similar partition,  RAM DISC
    or to a floppy for back-up purposes.

 2. The  partitions  may  be  'MOUNT'ed  and dis'MOUNT'ed freely thus providing a
    method by which you  place  certain  utilities,  projects,  etc  in  specific
    partitions, much as you would with a hierarchical directory structure.
4.6  AUTOFLEX IMPLEMENTATION

 The AUTOFLEX configuration enables the user to boot up FLEX  and  configure  the
 system  as desired using SETUP, MOUNT, etc and then build a compressed file that
 can be programmed into EPROM and automatically loaded into the appropriate areas
 of memory upon execution of a system monitor command.

 AUTOFLEX  is only available in our 6U systems at the present time. The CPU board
 must incorporate a 27256 EPROM (32K x 8) to be able to use this facility.

 AUTOFLEX,  RESIDENT  and  the  RAM  DISC  may be combined to form a 100% silicon
 system that posseses exceptional speed for  use  in  data  logging  applications
 amongst  others.  This capability may be combined with a floppy disc for archive
 storage as required.

 As AUTOFLEX is supplied as a separate package, a detailed description is  beyond
 the scope of this manual.


5.0  INTERRUPT HANDLING

 This is an integral part of the Windrush implementation of FLEX and is mentioned
 in case you intend to use interrupts with the development system.

 Many  devices  may interrupt the 6809, but one is of particular importance - the
 timer for driving the spooler interrupts. For  this  reason,  any  interrupt  is
 transferred  to  code  (contained in a SPOOL-xx.SYS overlay) which checks if the
 spooler timer device was responsible. In the event that it was, the interrupt is
 cleared  and  the  spooler  scheduler  is  invoked. If the spooler timer was not
 responsible for the interrupt, control is passed to a handler which  you  should
 provide. The address of this handler should be deposited at locations $D370/1 in
 the normal address order (high-low) by your application program. If you  do  not
 provide a routine, control will be passed to the default interrupt handler which
 was found in GT-BUG's IRQ vector at $E744/5 when the system was booted. This  is
 to  say,  the  vector  that  GT-BUG used as a default is used as the default for
 FLEX. All of this is arranged by the FLEX cold  and  warm  start  initialisation
 code.

 FLEX  handles  SWI3 interrupts in a slightly different manner in that FLEX takes
 control of the GT-BUG SWI3 vector at $E74A/B when FLEX is cold or warm  started.
 There is no recourse to a user SWI3 routine when FLEX is in use. This should not
 cause any problems in most applications as you still have free use  of  SWI  and
 SWI2.

 NMI  interrupts  may  not  occur  during  floppy   disc   accesses   under   ANY
 circumstances.  FIRQ  and  IRQ  interrupts  are  automatically masked (disabled)
 whenever a disc read or write operation takes place and the  original  FIRQ  and
 IRQ  mask  pattern  reinstated  when  the  disc activity terminates. The longest
 period that the interrupts will remain masked is one revolution of the disc plus
 the  time to read the sector. On 3", 3 1/2" and 5 1/4" floppies this will be 220
 milliseconds and on 8" floppies this will be  178  milliseconds.  It  should  be
 noted that the verify, restore, select, status check,  initialisation  and  seek
 operations  ALL leave the FIRQ and IRQ flags alone. It should also be noted that
 leaving a door open on a 5" drive and then performing a  read  or  write  access
 will result in the interrupts remaining masked until the door is closed.

 NMI  interrupts  may not occur during RAM DISC accesses under ANY circumstances.
 FIRQ and IRQ interrupts are automatically masked (disabled)  whenever  a  access
 takes place and then the original mask  pattern  reinstated  when  the  activity
 terminates.  The  longest  period  that  the  interrupts  will  remain masked is
 1.53 milliseconds (subject to future modifications).

 NMI interrupts may not occur during RESIDENT accesses under  ANY  circumstances.
 FIRQ  and  IRQ interrupts are automatically masked (disabled) whenever an access
 takes place and then the original mask  pattern  reinstated  when  the  activity
 terminates.  The  longest  period that the interrupts will remain masked is 1.36
 milliseconds (subject to future modifications).

 NMI, FIRQ and IRQ interrupts ARE permitted during Winchester accesses  therefore
 these interrupts are NOT masked during Winchester accesses.


 In  summary  FIRQ  and  IRQ  are masked (inhibited) by the system whenever their
 presence will upset critical timing loops within FLEX (i.e. trying to gain  sync
 with a sector on the disc) or when the RAM DISC or RESIDENT drivers have altered
 the memory map of the system. When the time-critical events have  terminated  or
 the normal memory map is restored the FIRQ and IRQ interrupts flags are restored
 to their previous state. This means that FLEX gets priority  when  an  interrupt
 occurs ... FLEX will complete the current activity and then, and only then, will
 the IRQ be serviced.
6.0  ENHANCED PRINT SPOOLER IMPLEMENTATION

 The  Windrush  implementation  of  FLEX  includes  an enhanced print spooler and
 several support  utilities.  Some  of  the  improvements  to  the  spooler  are:
 automatic  seeking  to  the  top  of the next page after a file has been output,
 intelligent handling of the N(ext) file command in QCHECKK to  ensure  that  the
 next  printed  file really is the requested one, ability to F(reeze) the spooler
 immediately in QCHECKK, skipping to a given page number (SKIP) if the system had
 to  be killed while spooling (i.e. looping in a user process), devolving of most
 of the FMS function into the spooler thereby  minimising  the  interruptions  to
 foreground  disc  activity,  increase  in the number of queued files (20 in this
 release) and the ability to print a title/banner page.

 The enchanced spooler needs the  same  routines  that  the  original  TSC  print
 spooler  used  for  initialising,  starting  and stopping of the interrupt timer
 source. Similary you should have an interrupt handler which  determines  if  the
 spooler  needs  servicing or if another device caused the interrupt. The console
 driver table should reflect the location of both your IRQ and SWI3  vectors  and
 the handler routine.

 A brief synopsis of the function of each of the utilities follows:

 F       .CMD      is used to Format a standard FLEX text file into  a  spoolable
                   version. Optional titles can be included.

 OUT     .CMD      this utility produces a file for submission to the spooler. As
                   with the new PRT it honours the SETFORM parameters.

 PRINTT  .CMD      this  is  the  utility used to submit files to the spooler for
                   subsequent printing. If the spooler is inactive, this  utility
                   will also start it running.

 PRT     .CMD      this  is  a new version of P and PR which is included here for
                   completeness as it draws on a data table within  the  spooler.
                   Using  PRT  will format the output to the parameters set using
                   SETFORM (qv).

 QCHECKK .CMD      this is the spooler management utility which allows changes to
                   both the spooler itself and/or the queue.  Note  this  utility
                   requires  that  the  file  called  'QCHECK.SYS' resides on the
                   system drive.

 QCHECK  .SYS      this is a help file for use with the QCHECK utility.

 S       .CMD      is  used  to  Strip LFs from a spoolable file. Its main use is
                   for producing a file to be merged into a word processor.

 SETFORM .CMD      allows various parameters to be modified regarding the printer
                   and/or paper used by the printer.

 SKIP    .CMD      this is the utility which allows seeking to, say, page 71 of a
                   long document which was terminated in mid-flow.

 SPLTITLE.CMD      this prints out a large title banner.

 SPOOL   .SYS      this is the actual memory resident spooler code.

 SPOOL-XX.SYS      this is the timer hardware driver and interrupt handler.

 XXOUT   .CMD      this  utility  deletes  all  .OUT  files  which areNOTin the
                   spooler queue.
7.0  BOOTING UP THE SYSTEM FROM A FLOPPY DISC

 The 'CONFIGURED' disc supplied with your system is fully configured for  booting
 and  should  be  inserted  into  physical  floppy  #0. If there is no Winchester
 present 'GT-BUG's 'Q' command should be executed. If a Winchester is present and
 you  wish  to  'force'  the bootstrap operation to the floppy disc (as you might
 after a Winchester has been crashed!)  type  'J  F003'.  This  will  bypass  the
 automatic  bootstrap  selection  routine  and  execute  the  floppy bootstrap. A
 message will be  posted  informing  you  that  the  bootstrap  operation  is  in
 progress:

 WINDRUSH FLOPPY DISC BOOTSTRAP LOADER  V:6.XX


 If the bootstrap operation is successful, i.e. FLEX is  loaded  from  disc  into
 memory, the following banner will appear:

 Windrush Micro Systems Limited   FLEX  V:6.XXX


 If  the system has a clock calendar chip, e.g. the HD146818 on the 'TIM2' board,
 the boot routine will attempt read the clock  data  into  the  memory  locations
 reserved  by FLEX for date information. If the clock contains illegal data or is
 not present a prompt for the date will be issued by FLEX in the form:

 DATE (MM,DD,YY)?


 The 'STARTUP' file will then be executed. The 'standard' startup  file  supplied
 by  Windrush  installs 'PROMPT' (which also reports the 'MEMEND' value) and then
 'EXEC'utes a file called 'MYSTART'. The  standard  'MYSTART'  file  supplied  by
 Windrush  will  make a call to 'DATIME' to read the system clock, make a call to
 'SETUP' to define the available mass storage devices, make a call to 'MOUNT'  to
 define  the  logical  drive  assignments,  make a call to 'TTYSET' to define the
 terminal/printer characteristics, make a call to 'ASN' to define the system  and
 work  drives  and will load the standard printer driver 'PRINT.SYS'. Since these
 files a simple text files they may be 'LIST'ed to see their  contents  and  they
 may  also be edited with any text editor. Alternatively you can use 'BUILD' or a
 text editor to generate new ones.

 As  the  'STARTUP'  and  'MYSTART'  files  are executed a series of banners will
 appear on the screen. Once the system configuration is over the  following  will
 appear on the system console:

 +++

 FLEX is now ready to work for you.


8.0  BOOTING UP THE SYSTEM FROM A WINCHESTER DISC

 Windrush pre-format the Winchester supplied with systems as follows:

 Partition 0 = The equivalent of a DS/DD 80 track floppy.
 Partition 1 = As many of the remaining sectors as possible.

 We also put a copy of the 'CONFIGURED' system disc on Partition 0  so  that  you
 can boot up from the Winchester the day you receive the system.


 After power is applied to the system you should wait for  about  15  seconds  to
 allow  the  Winchester  time  to  wind  up  to  speed  and complete its internal
 diagnostics. The RODIME drives we use signify that these events are taking place
 by  blinking  the status LED on the drive. As soon as the drive is ready the LED
 will stop blinking and remain illuminated.  At  this  time  you  should  execute
 'GT-BUG's  'Q' command. The boot routine will first verify that the SASI card is
 present and then perform the intelligent controller internal diagnostic  checks.
 If either of these is unsucessful control will pass to the FLOPPY BOOT described
 a few pages back. If all is well the following banner will appear:


 WINDRUSH WINCHESTER BOOTSTRAP LOADER   V:6.XX


 If the bootstrap operation is successful, i.e. FLEX is  loaded  from  Winchester
 partition 0 into memory, the following banner will appear:

 Windrush Micro Systems Limited   FLEX  V:6.XX


 If  the system has a clock calendar chip, e.g. the HD146818 on the 'TIM2' board,
 the boot routine will attempt read the clock  data  into  the  memory  locations
 reserved  by FLEX for date information. If the clock contains illegal data or is
 not present a prompt for the date will be issued by FLEX in the form:

 DATE (MM,DD,YY)?


 The 'STARTUP' file will then be executed. The 'standard' startup  file  supplied
 by  Windrush  installs  'PROMPT' (which also informs you of the 'MEMEND' value')
 then 'EXEC'utes a file called 'MYSTART'. The standard 'MYSTART' file supplied by
 Windrush  will  make a call to 'DATIME' to read the system clock, make a call to
 'SETUP' to define the available mass storage devices, make a call to 'MOUNT'  to
 define  the  logical  drive  assignments,  make a call to 'TTYSET' to define the
 terminal/printer characteristics, make a call to 'ASN' to define the system  and
 work  drives  and will load the standard printer driver 'PRINT.SYS'. Since these
 files a simple text files they may be 'LIST'ed to see their  contents  and  they
 may  also  be  edited with any text editor. Alternatively you can use 'BUILD' to
 generate new ones.

 As  the  'STARTUP'  and  'MYSTART'  files  are executed a series of banners will
 appear on the screen. Once the system configuration is over the  following  will
 appear on the system console:

 +++

 FLEX is now ready to work for you.


9.0  DISC FILES AND THEIR NAMES

 All  disc  files  are  stored  in  the form of 'sectors' on the disc and in this
 version, each sector contains 256 'bytes' of information. Each byte can  contain
 one  character  of  text or one byte of binary machine information. A maximum of
 340 user-accessible sectors will fit on a single-sided 35 track 5 1/4" mini disc
 or  1140  sectors on a single-sided 77 track 8" floppy. Double-sided discs would
 hold exactly twice that number of sectors. Double-density systems will hold more
 still.  The  user,  however,  need  not  keep  count,  for  the system does this
 automatically. A file will always be at least one sector long and  can  have  as
 many  as  the  maximum  number  of  sectors  on the disc. The user should not be
 concerned with the actual placement of the files on the disc since this is  done
 by the operating system. File deletion is also supported and all previously used
 sectors become immediately available again after a file has been deleted.

 All files on the disc have a name. Names such as the following are typical:


     PAYROLL
     INVNTORY
     TEST1234
     APRIL-78
     WKLY-PAY


 Anytime a file is created, referenced, or deleted, its name must be used.  Names
 can  be  most anything butMUSTbegin with a letter (not numbers or symbols) and
 may be followed by at most 7 additional characters,  called  'name  characters'.
 These  'name  characters'  can be any combination of the letters 'A' through 'Z'
 any digit '0' through '9', or one of the two special characters, the hyphen  (-)
 or the underscore '_', (a left arrow on some terminals).

 File  names must also contain an 'extension'. The file extension further defines
 the file and usually  indicates  the  type  of  information  contained  therein.
 Examples  of  extensions  are: TXT for text type files, BIN for machine readable
 binary encoded files, CMD for utility command files, and BAS  for  BASIC  source
 programs.  Extensions may contain up to 3 'name characters', the first character
MUST be a letter (not numbers or symbols) and may be  followed  by  at  most  2
 additional   characters   called   'extension   characters'.   These  'extension
 characters' can be any combination of the letters 'A' through 'Z' any digit  '0'
 through  '9',  or  one  of  the  two  special  characters, the hyphen (-) or the
 underscore '_', (a left arrow on some terminals).


 Most of the FLEX commands assume a default extension on the file  name  and  the
 user  need  not be concerned with the actual extension on the file. The user may
 at anytime assign new extensions, overiding the default  value,  and  treat  the
 extension  as just part of the file name. Some examples of file names with their
 extensions follow:


     APPEND.CMD
     LEDGER.BAS
     TEST.BIN


 Note  that  the extension is always separated from the name by a period '.'. The
 period is the name 'field separator'. It  tells  FLEX  to  treat  the  following
 characters as a new field in the name specification.


9.0  DISK FILES AND THEIR NAMES  (continued)

 A file name can be further refined. The name and  extension  uniquely  define  a
 file  on  a  particular  drive,  but  the  same name may exist on several drives
 simultaneously. To designate a particular drive a 'drive number' is added to the
 file  specification.  It  consists of a single digit (0-3) and is separated from
 the name by the field separator '.'. The drive number may appear  either  before
 the  name  or after it (after the extension if it is given). If the drive is not
 specified, the system will default to either the 'system' drive or the 'working'
 drive. These terms will be described a little later.

 Some examples of file specifications with drive numbers follow:


     0.BASIC
     MONDAY.2
     1.TEST.BIN
     LIST.CMD.1


 In summary, a file specification may contain up to three fields separated by the
 field  separator.  These fields are; 'drive', 'name', and 'extension'. The rules
 for the file specification can be stated quite  concisely  using  the  following
 notation:


     [<drive>.]<name>[.<extension>]
       or
     <name>[.<extension>][.<drive>]


 The  '<>'  enclose  a field and do not actually appear in the specification, and
 the '[]' surround optional items of the specification.  The  following  are  all
 syntactically correct:


     0.NAME.EXT
     NAME.EXT.0
     NAME.EXT
     0.NAME
     NAME.0
     NAME


 Note that the only required field is the actual  'name'  itself  and  the  other
 values will usually default to predetermined values. Studying the above examples
 will  clarify  the  notation  used.  The  same  notation  will  occur  regularly
 throughout the manual.


10.0  LOWER CASE FILE NAMES AND EXTENSIONS

 Even  though  you  may enter a file name and its extension in lower case letters
 this version of FLEX will convert them to upper case when writing  them  to  the
 disc  directory.  If  you  wish to have the capability of using a combination of
 upper-case and lower-case letters you can change  the  contents  of  the  memory
 location known as 'MAPUP' ($CC49) from $60 to $FF.

 We do not recommend this practice as disc files with lower-case letters will not
 be readable on 99% of FLEX systems  and  not  everyone  knows  about  the  MAPUP
 facility  of  FLEX. We are only telling you about it in case you ever get a disc
 from someone else with lower case file names or extensions.


11.0  ENTERING COMMANDS

 When FLEX is displaying '+++', the system is ready to accept a command  line.  A
 command  line  is usually a name followed by certain parameters depending on the
 command being executed. There is no 'RUN' command in FLEX. The first  file  name
 on a command line is always loaded into memory and execution is attempted. If no
 extension is given with the file name, 'CMD' is the default. If an extension  is
 specified,  the  one  entered is the one used. Some examples of commands and how
 they would look on the terminal follow:


     +++TTYSET
     +++TTYSET.CMD
     +++LOOKUP.BIN


 The first two lines are identical to FLEX since the first would  default  to  an
 extension  of  CMD.  The third line would load the binary file 'LOOKUP.BIN' into
 memory and, assuming the file contained a transfer address, the program would be
 executed. A transfer address tells the program loader where to start the program
 executing after it has been loaded. If you try to load and execute a program  in
 the above manner and no transfer address is present, the message, 'NO LINK' will
 be output to the terminal, where 'link' refers to  the  transfer  address.  Some
 other   error   messages  which  can  occur  are  'WHAT?'  if  an  illegal  file
 specification has been typed as the first part  of  a  command  line,  and  'NOT
 FOUND' if the file typed does not exist on the disc.

 During  the  typing  of a command line, the system simply accepts all characters
 until a 'RETURN' key is typed. Any time before typing the RETURN key,  the  user
 may use one of two special characters to correct any mistyped characters. One of
 these characters is the 'back space' and allows deletion of the previously typed
 character.  Typing  two back spaces will delete the previous two characters. The
 back space is initially defined to be a 'control H' but may be redefined by  the
 user  using the TTYSET utility command. The second special character is the line
 'delete' character. Typing this character will effectively  delete  all  of  the
 characters  which  have  been  typed  on  the current line. A new prompt will be
 output to the terminal, but instead of the  usual  '+++'  prompt,  to  show  the
 action  of  the  delete character, the prompt will be '???'. Any time the delete
 character is used, the new prompt will be '???', and  signifies  that  the  last
 line  typed  did  not  get  entered  into  the computer. The delete character is
 initially a 'control X' but may also be redefined using TTYSET.

 NOTE:    If the backspace echo (BE) facility  of  TTYSET  is  set  to  $08  then
          characters will automatically be rubbed off the screen as you backspace
          the cursor over them.
11.0  ENTERING COMMANDS  (continued)

 As  mentioned earlier, the first name on a command line is always interpreted as
 a command. Following the command is an optional list of  names  and  parameters,
 depending  on the particular command being entered. The fields of a command line
 must be separated by either a space or a comma. The general format of a  command
 line is:

     <command>[,<list of names and parameters>]

 A comma is shown, but a space may be used. FLEX also allows several commands  to
 be entered on one command line by use of the 'end of line' (EOL) character. This
 character is initially a colon (':'), but may be user defined  with  the  TTYSET
 utility.  By  ending a command with the end of line character, it is possible to
 follow it immediately with another command. FLEX will execute  all  commands  on
 the  line before returning with the '+++' prompt. An error in any of the command
 entries will cause the system to terminate operation of that  command  line  and
 return with the prompt. Some examples of valid command lines follow:


     +++CAT 1
     +++CAT 1:ASN S=1
     +++LIST LIBRARY:CAT 1:CAT 0


 As many commands may be typed in one command line  as  desired,  but  the  total
 number  of  characters  typed must not exceed 128. Any excess characters will be
 ignored by FLEX. This same limit is applicable to the command line used in  your
 'STARTUP.TXT' file (qv).

 One last system feature to be described is the idea of  'system'  and  'working'
 drives.  As  stated  earlier,  if  a  file  specification  does not specifically
 designate a drive number, it will assume a default  value.  This  default  value
 will  either  be  the current 'system' drive assignment or the current 'working'
 drive assignment. The system drive is the default for all command names,  or  in
 other  words,  all file names which are typed first on a command line. Any other
 file name on the command line will default to the working drive.  When  FLEX  is
 first  booted the system drive and work drive are both initialized to drive '0'.
 If you wish to alter this default assignment you may do so via the disc resident
 'ASN'  command  either as part of your 'STARTUP' file or by a manual entry after
 the FLEX prompt (+++) appears.

 This version of FLEX also supports automatic drive searching. When in  the  auto
 search  mode  if no drive numbers are specified, the operating system will first
 search drive 0 for the file. If the file is not found, drive 1 will be  searched
 and  so  on.  When the system is first initialized the auto drive searching mode
 will be deactivated. At this time, all drive defaults will be to drive 0. It  is
 sometimes  convenient  to  assign drive 1 as the working drive in which case all
 file references, except commands, will automatically look on drive 1. It is then
 convenient  to have a disc in drive 0 with all the system utility commands on it
 (the 'system drive'), and a disc with the files being worked on in drive 1  (the
 'working  drive').  If the system drive is 0 and the working drive is 1, and the
 command line was:


     +++LIST TEXTFILE


 FLEX  would  go  to  drive  0  for  the command LIST and to drive 1 for the file
 TEXTFILE. The actual assignment of drives is  performed  by  the  disc  resident
 'ASN' utility. See its description for details.
11.1  EDITING COMMANDS

 When the Windrush 'FIXES.SYS' file (qv) is installed the use of <CONTROL-R> will
 cause  the rest of the old command line to be displayed up to the <RETURN>. This
 may be used in response to the '+++' prompt to allow a  subsequent  <RETURN>  to
 re-execute the same command line again.

 Alternatively  you  may  ammend  the  end  of  a command line by <CONTROL-R> and
 <BACKSPACE> over the unwanted characters and then start typing as if  the  whole
 lot had been manually entered.

 And finally a mis-spelling at the beginning of a line may be repaired thus:

 +++FORNAT,+7,D,D,80,N<RETURN> ... will give a 'FILE NOT FOUND' error

 ... now type

 +++FORM<CONTROL-R><RETURN>

 This technique allows early mis-spelling to be fixed easily. You  may  also  use
 <BACKSPACE>  to work toward the middle of a command line, fix a mis-spelling and
 then hit <CONTROL-R><RETURN> to execute the command line.


12.0  COMMAND DESCRIPTIONS

 There  are  two types of commands in FLEX, memory resident (those which actually
 are part of the operating system) and  disc  utility  commands  (those  commands
 which reside on the disc and are part of the UCS).

 If  your system posseses suitable hardware the memory resident command table can
 be extended via the 'RESIDENT' (qv) utility.

 There are only two resident commands, GET and MON, supplied with FLEX. They will
 be  described  here  while  the  Utility  Command  Set (UCS) is described in the
 following sections.


12.1  GET

 The GET command is used to load a binary file  into  memory.  It  is  a  special
 purpose command and is not often used. It has the following syntax:

    GET[,<file name list>]

 where <file name list> is: <file spec>[,<file spec>] etc.

 Again  the  '[]'  surround  optional  items.  'File spec' denotes a file name as
 described earlier. The action of the GET command is to load the  file  or  files
 specified  in the list into memory for later use. If no extension is provided in
 the file spec, BIN is assumed, in other words, BIN  is  the  default  extension.
 Examples:

    GET,TEST
    GET,1.TEST,TEST2.0

 where the first example will load the file named 'TEST.BIN'  from  the  assigned
 working  drive,  and  the  second  example  will  load TEST.BIN from drive 1 and
 TEST2.BIN from drive 0.


12.2  MON

 MON  is  used  to  exit  FLEX  and return to the hardware monitor system such as
 GT-BUG. The syntax for this command is simply MON followed by the 'RETURN' key.


 NOTE:    To re-enter FLEX after using the MON  command,  you  should  enter  the
          program at location $CD03 via the GT-BUG 'W' (warm start) facility.


 As this section is frequently overlooked we have also documented 'GET' and 'MON'
 in the description of the utility command set which follows.


                           GENERAL SYSTEM INFORMATION


13.0  DISC CAPACITY

 Each  sector  of  a  FLEX  disc contains 252 characters or bytes of user data (4
 bytes of each 256 byte sector are used by the system). Thus  a  single-sided  5"
 disc  has  340  sectors  or  85,680  characters  or bytes of user information. A
 single-sided 8" disc has 1140 sectors or 287,280 bytes of user data.  The  table
 below,  which sumarises the various disc capacitites, is based on the assumption
 that the disc directory has NOT been extended:

                                   ____________
                                  FREE SECTORS

        +-------------------------------+-------------------------------+
        |     5 1/4" 35 TRACK DISCS     |     5 1/4" 40 TRACK DISCS     |
        +-------------------------------+-------------------------------+
        | SS/SD | DS/SD | SS/DD | DS/DD | SS/SD | DS/SD | SS/DD | DS/DD |
        +-------+-------+-------+-------+-------+-------+-------+-------+
        |  340  |  680  |  612  | 1224  |  390  |  780  |  702  | 1404  |
        +-------+-------+-------+-------+-------+-------+-------+-------+

        +-------------------------------+-------------------------------+
        |     5 1/4" 80 TRACK DISCS     |       8" 77 TRACK DISCS       |
        +-------------------------------+-------------------------------+
        | SS/SD | DS/SD | SS/DD | DS/DD | SS/SD | DS/SD | SS/DD | DS/DD |
        +-------+-------+-------+-------+-------+-------+-------+-------+
        |  790  | 1580  | 1422  | 2844  | 1140  | 2280  | 1976  | 3952  |
        +-------+-------+-------+-------+-------+-------+-------+-------+

 To calculate the disc capacity in Kbytes multiply the free sector count  by  252
 and  then  divide  the result by 1024 ... alternatively multiply the free sector
 count by 0.246.


14.0  DISC FORMAT

 The physical number of sectors per track on our FLOPPY disc, the  RAM  DISC  and
 WINI FLOPPIES are as follows:
                                        _________________
                                       SECTOR ALLOCATION

                +-------------------------------+-------------------------------+
                |         5 1/4" DISCS          |           8" DISCS            |
                +-------------------------------+-------------------------------+
                | SS/SD | DS/SD | SS/DD | DS/DD | SS/SD | DS/SD | SS/DD | DS/DD |
                +-------+-------+-------+-------+-------+-------+-------+-------+
 Track 0        |  10   |  20   |  10   |  20   |  15   |  30   |  15   |  30   |
                +-------+-------+-------+-------+-------+-------+-------+-------+
 Other tracks   |  10   |  20   |  18   |  36   |  15   |  30   |  26   |  52   |
                +-------+-------+-------+-------+-------+-------+-------+-------+


 The following two rules apply to sector allocation:

 1. Track  #0 (both sides if a double sided disc) is reserved for use by FLEX and
    isALWAYSrecorded in single density.

 2. The next track (both sides if a double sided disc) may optionally be used  to
    extend the directory during formatting.
15.0  DIRECTORY EXTENSION

 When a disc is formatted several sectors on track #0 are allocated for directory
 storage use. When all of  these  sectors  are  used  FLEX  will  take  the  next
 available  sector  from  the  free chain and allocate it for directory use. This
 process will continue adinfinitum with the result  being  fragmentation  of  the
 directory, which can appreciably slow down disc accesses.

 The  Windrush  floppy  and  Winchester formatters (qv) include the capability to
 extend the directory sector by one  additional  track.  When  the  directory  is
 extended  each sector in the track used (both sides of the disc if double sided)
 will add 10 directory entries to the directory capacity before the directory  is
 extended into the next available sector. The table below sumarises the directory
 capacity before fragmentation for discs with and without directory extension:

                                _________________
                               DIRECTORY ENTRIES

 +--------------+-------------------------------+-------------------------------+
 |              |         5 1/4" DISCS          |           8" DISCS            |
 |   DIRECTORY  |-------------------------------+-------------------------------+
 |              | SS/SD | DS/SD | SS/DD | DS/DD | SS/SD | DS/SD | SS/DD | DS/DD |
 +--------------+-------+-------+-------+-------+-------+-------+-------+-------+
 | NOT EXTENDED |  60   |  160  |  60   |  160  |  110  |  260  |  110  |  260  |
 +--------------+-------+-------+-------+-------+-------+-------+-------+-------+
 |   EXTENDED   |  160  |  360  |  240  |  520  |  260  |  560  |  370  |  780  |
 +--------------+-------+-------+-------+-------+-------+-------+-------+-------+


16.0  WRITE PROTECT

 Floppy discs can usually be physically write  protected  to  prevent  FLEX  from
 performing  a write operation. Any attempt to write to such a disc will cause an
 error message to be issued. It is good practice to  write  protect  discs  which
 have important files on them.

 A  5 1/4" disc can be write protected by placing a piece of opaque tape over the
 small rectangular cutout on the edge of  the  disc.  8"  floppys  are  just  the
 opposite.  In  order  to write protect an 8" disc, you must remove the tape from
 the cutout. In other words, the notch must be exposed to write protect the disc.
 Some 8" discs do not have this cutout and therefore cannot be write protected.

 Additional  software  write  protection  is  also provided via the PROT (qv) and
 PROTECT (qv) commands.


17.0  ACCESSING DRIVES NOT CONTAINING A DISC

 If an attempt is made to access a 5 1/4" drive not containing a disc, the system
 will  hang  up  attempting to read until a disc is inserted and the door closed.
 Alternatively, you could reset the machine and begin execution at the warm start
 location  $CD03  by  typing 'W' when the GT-BUG prompt is present. An attempt to
 access an 8" drive which does not contain a disc will result in the error 'DRIVE
 NOT READY'.


18.0  FLEX DISC STANDARDS

 There  are  only  two  disc formats which are condidered to be 'UNIVERSAL', i.e.
 every FLEX system should be capable of reading them. These are the only two disc
 formats which TSC, the originators of FLEX, will supply software on:

  _____________________________________________________________________________
 5 1/4" SINGLE SIDED, SINGLE DENSITY, 35 TRACKS, 48 TPI, UPPER CASE FILE NAMES

  _____________________________________________________________________________
 8"     SINGLE SIDED, SINGLE DENSITY, 77 TRACKS, 48 TPI, UPPER CASE FILE NAMES


 The modern 5 1/4" 80 track disks are NOT standard and you will  find  that  many
 software houses cannot (or will not) supply FLEX software on anything other than
 35 track, 48 tpi discs. This does not pose any problems for Windrush systems  as
 the   floppy   disc   drivers   will  automatically  reconfigure  themselves  to
 'double-step' (i.e emulate a 48 tpi drive) whenever you place this  disc  format
 in  a  drive  and  try  to  read  any of the files on it, a simple DIR or CAT is
 usually not sufficient as they only read the directory sectors which are  ALWAYS
 in  single  density  and  start  on  track  #0  (which can be accessed by simply
 restoring the drive to track #0).


19.0  NON STANDARD DRIVES

 There has been an increase in the use of 3" and 3 1/2" disc  drives  and  the  5
 1/4"  drives which can emulate 8" drives thoughout the industry. We consider the
 use of these drives in development systems to be ill advised as we  know  of  no
 FLEX  software  house IN  THE  WORLD that  will  supply software on these disc
 formats.

 The 3" and 3 1/2" drives do, however, have significant advantages in  industrial
 systems  where  the  semi-rigid  media  case can protect the discs from physical
 abuse. There is nothing in the architecture  of  our  software  or  hardware  to
 prevent  you  from  using either of these drive sizes providing that they have a
 Shugart compatible interface. We have used the YE DATA 3 1/2" YD-640  drive  and
 the SONY 3" drives in our systems without any problems whatsoever.


20.0  SYSTEM ERROR NUMBERS

 Any  time  that  FLEX detects an error during an operation, an appropriate error
 message will be displayed on the terminal. FLEX internally translates a  derived
 error  number  into  a  plain  language  statement  using a look-up table called
 ERROR.SYS. If you have forgotten to copy this .SYS file onto a disc that you are
 using, FLEX will report a corresponding number as shown below:


     DISK ERROR  #xx


 where 'xx' is a decimal error number. The table below is a list of these numbers
 and what error they represent.


           ERROR #                      MEANING

               1          ILLEGAL FMA FUNCTION CODE ENCOUNTERED
               2          THE REQUESTED FILE IS IN USE
               3          THE FILE SPECIFIED ALREADY EXISTS
               4          THE SPECIFIED FILE COULD NOT BE FOUND
               5          SYSTEM DIRECTORY ERROR-REBOOT SYSTEM
               6          THE SYSTEM DIRECTORY IS FULL
               7          ALL AVAILABLE DISK SPACE HAS BEEN USED
               8          READ PAST END OF FILE
               9          DISK FILE READ ERROR
              10          DISK FILE WRITE ERROR
              11          THE FILE OR DISK IS WRITE PROTECTED
              12          THE FILE IS PROTECTED-FILE NOT DELETED
              13          ILLEGAL FILE CONTROL BLOCK SPECIFIED
              14          ILLEGAL DISK ADDRESS ENCOUNTERED
              15          AN ILLEGAL DRIVE NUMBER WAS SPECIFIED
              16          DRIVE NOT READY
              17          THE FILE IS PROTECTED-ACCESS DENIED
              18          SYSTEM FILE STATUS ERROR
              19          FMS DATA INDEX RANGE ERROR
              20          FMS INACTIVE-REBOOT SYSTEM
              21          ILLEGAL FILE SPECIFICATION
              22          SYSTEM FILE CLOSE ERROR
              23          SECTOR MAP OVERFLOW-DISK TOO SEGMENTED
              24          NON-EXISTENT RECORD NUMBER SPECIFIED
              25          RECORD NUMBER MATCH ERROR-FILE DAMAGED
              26          COMMAND SYNTAX ERROR-RE-TYPE COMMAND
              27          THAT COMMAND IS NOT ALLOWED WHILE PRINTING
              28          WRONG HARDWARE CONFIGURATION

 For  more  details  concerning the meanings of these error messages, consult the
 'Advanced Programmer's Guide'.


21.0 THE 'RESET' BUTTON

 The RESET button (and the NMI button if fitted) on your computer should NEVER BE
 PRESSED DURING A DISC OPERATION. There should never be a  need  to  'reset'  the
 machine while in FLEX except as noted in section 17.0. If the machine is 'reset'
 and the system is writing data on the disc, it is possible that the entire  disc
 may be damaged. Again, never press 'reset' while the disc is operating! Refer to
 the 'escape' character in TTYSET for ways of stopping FLEX.


22.0  INPUT RE-DIRECTION

 FLEX, via disc resident utilities, has facitities to re-direct the input that is
 normally expected from the system console to  input  from  a  disc  file.  These
 facilities  will  only  work  when the program is getting input via the 'GETCHR'
 routine (described in the ADVANCED PROGRAMMERS GUIDE).  See  the  'I'  and  'IN'
 utility descriptions for further details.


23.0  OUTPUT RE-DIRECTION

 FLEX,  via  disc  resident utilities, has facilities to re-direct output that is
 normally going to the system console to a disc file. These facilities will  only
 work  when  the program is outputing data via the 'PUTCHR' routine (described in
 the ADVANCED PROGRAMMERS GUIDE). See the 'O' and 'OUT' utility descriptions  for
 further details.


24.0  DIRECTING OUTPUT TO A PRINTER

 Three  utilities are provided for re-directing output that would otherwise go to
 the system console to a hard-copy device. Before these facilities may be used  a
 'printer  driver'  must be loaded into memory. See the 'SPRINT-X' and 'PPRINT-X'
 descriptions of the standard printer drivers supplied with Windrush systems  and
 the ADVANCED PROGRAMMERS GUIDE if you wish to write your own.

 Output can only be re-directed if the program is outputing data via the 'PUTCHR'
 routine (described in the ADVANCED PROGRAMMERS GUIDE). See  the  'P',  'PR'  and
 'PRT' utility descriptions for further details.


25.0  COMMAND LIST EXECUTION

 FLEX,  via disc resident utilities, has facilities for automatically executing a
 series of commands just as though they  were  input  from  the  system  console.
 Typical  activities  might  include  the assembly of a several programs and then
 combining the various object files together to make a single composite file. See
 the 'ECHO', 'EXEC', 'IN' and 'MAKECMD' utility descriptions for further details.


26.0  BUILDING A BOOTABLE FLOPPY DISC

 The  following  is a suggested sequence of events to follow whenever you wish to
 build a new bootable disc from the 'CONFIGURED' disc we supplied you:

  1. Install the 'CONFIGURED' disc in drive #0 and boot the system.


  2. Place  a  blank SINGLE sided, SINGLE density disc certified for 80 tracks at
     98 tpi into drive #1.


  3. Invoke the FORMAT utility as follows:

     +++FORMAT +1 S S 80 N 9 <CR>

     wait until the format operation is completed ...


  4. Invoke the FASTBACK utility as follows:

     +++FASTBACK 0 1 N Y <CR>

     wait until the fastback operation is completed ...

  5. Remove the original 'CONFIGURED' disc and place  it  in  a  safe  place.  It
     should  NEVER  be  used again except to make a working copy of itself as you
     have just done. Take the disc out of drive #1, label it  'CONFIGURED  SYSTEM
     DISC ... BACKUP', and install it in drive #0.


  6. Perform any alterations you may wish to make to the 'STARTUP' and  'MYSTART'
     files using 'BUILD' or a text editor of your choice called from drive #1.


  7. Install a blank DOUBLE sided, DOUBLE density disc certified for 80 tracks at
     96 tpi into drive #1.


  8. Invoke the FORMAT utility as follows:

     +++FORMAT +1 D D 80 Y 9 <CR>

     wait until the format operation is completed ...


  9. Use  'COPY-WMS'  to  copy  the  following files, in the order indicated from
     drive #0 to drive #1 using the following syntax:

     +++COPY-WMS,0.FILENAME.EXT,1 <CR>

     ERRORS.SYS, WMFLXxxx.SYS, STARTUP.TXT, MYSTART.TXT, PROMPT.CMD,  MEMEND.CMD,
     EXEC.CMD,   DATIME.CMD,   SETUP.CMD,   MOUNT.CMD,  TTYSET.CMD,  ASN.CMD  and
     PRINT.SYS.

     Note: The 'xxx' in WMFLXxxx.SYS is the version  number.  You  can  find  out
           what the full name of the file is by typing:

           +++DIR,0,WMFLX <CR>


26.0  BUILDING A BOOTABLE FLOPPY DISC  (continued)

 10. If  you  intend  to  use the RAM DISC or the RESIDENT utility you should now
     copy the files associated with these facilities (qv).


 11. You should now copy any any other commands or files you have included in the
     modified versions of 'STARTUP' or 'MYSTART'.


 12. Invoke the LINK utility as follows:

     +++LINK,1.WMFLXxxx.SYS <CR>   (the 'xxx' is the version number)


 13. You  now have what can be considered to be a 'MINIMUM' system disc that will
     boot and configure the system.


 14. You should now copy across the rest of the FLEX utility commands, preferably
     in the order of frequency of use. For example frequently used utilities such
     as  'COPY',  'DIR'  and  'LIST' should be copied before less frequently used
     utilities like  'JUMP',  'SAVE'  and  'XXOUT'.  Alphabetical  order  is  NOT
     necessary! This operation will place the most frequently used files out near
     the  disc directory (track #0) and the less frequently used files toward the
     inner part of the disc. FLEX can gain access to the files near track #0 much
     quicker than the files near the inner part of the disc.


 15. Remove the disc from drive #0 and store it with the original configured disc
     as a back-up copy. Remove the disc from drive #1, label it 'SYSTEM DISC  ...
     MASTER' and place it in drive #0.

     You  should now place each of the applications discs for MACE, XMACE, ASM05,
     D-BUG, PL/9 and SCREDITOR III into drive #1 and copy their  contents  across
     to drive #0 using the following syntax:

     +++COPY-WMS,1,0 <CR>


 16. You  now  have  a  fully configured system disc with all of the applications
     software on it ... THIS IS NOW YOUR MASTER SYSTEM DISC! You should now place
     yet another DS/DD 80 track disc into drive #1 and invoke FORMAT and FASTBACK
     thus:

     +++FORMAT +1 D D 80 N 9:FASTBACK 0 1 N Y <CR>

     this will format the disc in drive #1 and then fastback the disc in drive #0
     onto drive #1 ... it will take a few minutes so go get some coffee ...


 17. Now  remove  the disc from drive #0 and place it with the 'CONFIGURED' disc.
     Take the disc out of drive #1, label it 'SYSTEM DISC  ...  WORK  COPY',  and
     place it into drive #0.  Re-enter the 'GT-BUG' system monitor thus:

     +++MON <CR>


 18. The  'GT-BUG'  prompt will be issued ... refer to section 7.0 for details of
     the 'BOOT' procedure.

27.0  BUILDING A BOOTABLE WINCHESTER PARTITION

 This section assumes that if any valuable data is present on the Winchester you
 have downloaded it to floppy.


  _____________________________________________________________________________
 FOLLOWING THESE INSTRUCTIONS WILL COMPLETELY ERASE ALL DATA ON THE WINCHESTER


 The following is a suggested sequence of events to follow whenever you  wish  to
 build  a  bootable  Winchester  partition from the 'CONFIGURED' disc we supplied
 you:

  1. Install  the  'RAW'  (unconfigured)  disc in drive #0 and boot the system by
     typing 'J F003' when the 'GT-BUG' prompt is present.


  2. Invoke the SETUP and MOUNT utilities as shown below:

     +++SETUP F 5 3 80 <CR> ... (F0 is 5", 3 MS steps, 80 tracks)
     +++MOUNT 0=F0 <CR>     ... (install F0 as D0)


  3. Invoke the WIN-FORM utility as follows:

     +++WIN-FORM <CR>

     Refer  to  the  section  on  'WIN-FORM' in this manual for details of how to
     answer the various prompts presented.

     The main point is that you SHOULD initiate a hard/internal format  and  then
     wait  for  the  message  that  informs  you  of  how  many  free sectors are
     available. If you multipy this number  by  256  (the  number  of  bytes  per
     sector) you will have a general idea of how much storage is available. Don't
     forget that FLEX will use some of the sectors for  its  own  purposes.  This
     means  that  the  total  storage of a partition will always be slightly less
     than the number of raw sectors allocated to it, and less still if  you  take
     the option of extending the directory.

     ONLY you  can  decide  how  you  want  to  partition  the  Winchester.  Your
     application  may  find  a  single  drive with approximately 10 MB of storage
     ideal. If this is the case select the (S)pecial option, take the square root
     of  the  available  sectors,  round  it down to the nearest whole number and
     supply this number as the number of sectors per  track  and  the  number  of
     tracks to format.

     Most  people  will,  however,  find  that  partitioning  the Winchester into
     several floppy 'look alikes' is more desirable. Since the back-up  drive  we
     supply as standard is a DS/DD 80 track drive it makes sense (to us at least)
     to use this format as a standard  partition  size.  When  prompted  for  the
     partition  information simply select the 5" floppy emulation option and then
     answer the prompts as appropriate. To speed up the exercise we suggest  that
     you  opt  to format the maximum number of partitions possible. When prompted
     for a Volume Name and Number we suggest that you  hit  <CR>  to  accept  the
     defaults  as  you  can always go back and use the 'NAME' utility to name the
     partitions later.

     The  FLEX format initialisation is now in progress ... wait until the format
     operation is completed (it takes about half an hour!)
27.0  BUILDING A BOOTABLE WINCHESTER PARTITION  (continued)

  4. Now invoke SETUP to install the Winchester and the floppy disc drive:

     +++SETUP W,<nn>,F,5,3,80 <CR>

     where <nn> is the number of partitions formatted.


  5. You  should  now  use  'MOUNT'  to mount Winchester partition 0 as drive #1,
     assuming that the floppy is mounted as drive #0:

     +++MOUNT 1=W0 <CR>

     NOTE: ONLY WINCHESTER PARTITION 0 MAY BE USED TO BOOT THE SYSTEM.


  6. Use  'COPY-WMS'  to  copy  the  following files, in the order indicated from
     drive #0 to drive #1 using the following syntax:

     +++COPY-WMS,0.FILENAME.EXT,1 <CR>

     ERRORS.SYS, WMFLXxxx.SYS,


     Note: The 'xxx' in WMFLXxxx.SYS is the version  number.  You  can  find  out
           what the full name of the file is by typing:

           +++DIR,0,WMFLX <CR>


  7. Perform any alterations you may wish to make to the 'STARTUP' and  'MYSTART'
     files  (present  on the 'CONFIGURED' disc) using 'BUILD' or a text editor of
     your choice called from drive #0. The main points are  that  'SETUP'  should
     reflect  the  current number of formatted partitions and that 'MOUNT' should
     mount the partitions where you want them.

     Ensure that the output of 'BUILD' or the editor is directed to drive #1.

     Drive  #1  should  now  contain:  ERRORS.SYS,  WMFLXxxx.SYS, STARTUP.TXT and
     MYSTART.TXT.


  8. Now copy the following files across to drive #1 in the order indicated:

     PROMPT.CMD,  MEMEND.CMD,   EXEC.CMD,   DATIME.CMD,   SETUP.CMD,   MOUNT.CMD,
     TTYSET.CMD, ASN.CMD and PRINT.SYS.


  9. If you intend to use the RAM DISC or the RESIDENT  utility  you  should  now
     copy the RAM-CON.SYS file across to drive #1.


 10. You should now copy any any other commands or files you have included in the
     modified versions of 'STARTUP' or 'MYSTART'.


 11. Invoke the LINK utility as follows:

     +++LINK,1.WMFLXxxx.SYS <CR>   (the 'xxx' is the version number)

27.0  BUILDING A BOOTABLE WINCHESTER PARTITION  (continued)

 12. The  boot  partition  of the Winchester now has what can be considered to be
     the 'MINIMUM' information required to boot and configure the system.


 13. You should now copy across the rest of the FLEX utility commands, preferably
     in the order of frequency of use. For example frequently used utilities such
     as  'COPY',  'DIR'  and  'LIST' should be copied before less frequently used
     utilities like  'JUMP',  'SAVE'  and  'XXOUT'.  Alphabetical  order  is  NOT
     necessary! This operation will place the most frequently used files out near
     the  disc directory (track #0) and the less frequently used files toward the
     inner part of the disc. FLEX can gain access to the files near track #0 much
     quicker than the files near the inner part of the disc.


 14. Remove the disc from drive #0 and store it in a safe place.

     You  should now place each of the applications discs for MACE, XMACE, ASM05,
     D-BUG, PL/9 and SCREDITOR III into drive #0 and copy their  contents  across
     to drive #1 using the following syntax:

     +++1.COPY-WMS,0,1 <CR>


 15. You   now  have  a  fully  configured  system  partition  with  all  of  the
     applications software on it ... THIS IS NOW  YOUR  MASTER  SYSTEM  DISC!  It
     would  now  be prudent to get a copy of it for archival purposes. You should
     now place a DS/DD 80 track disc into drive #0 and  invoke  FORMAT,  COPY-WMS
     and LINK thus:

     +++1.FORMAT +0 D D 80 N 9:1.COPY-WMS 1 0:1.LINK 0.WMFLXxxx.SYS <CR>

     this will format the disc in drive #0 and then copy all of the  contents  of
     the Winchester partition (drive #1) onto drive #0 and then link the disc for
     boot operations ... it will take a few minutes so go get some coffee ...


 16. Take  the  disc  out of drive #0, label it 'SYSTEM PARTITION ... WORK COPY'.
     Re-enter the 'GT-BUG' system monitor thus:

     +++MON <CR>


 17. The 'GT-BUG' prompt will be issued ... refer  to  section  8.0  for  details
     of the 'BOOT' procedure.


     If you have done everything we asked  the  system  will  boot  up  from  the
     Winchester  instead  of  the floppy disc. You will have the system partition
     configured the way YOU want it.


 NOTE:  Should  you  ever  find  it necessary to rebuild the system partition you
        only  need to run REFORMAT (qv) to clean it up ... it is not necessary to
        run WIN-FORM again unless you wish to re-define the Winchester partitions
        or,  after  some considerable period of use, wish to perform a confidence
        test on the Winchester media.
