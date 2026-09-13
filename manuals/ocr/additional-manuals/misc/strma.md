# STRMA

> Source: `manuals/misc/REFERENC - Manual and Documentation Archive.zip!REFERENC.DSK!STRMA.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                          TECHNICAL REFERENCE MANUAL

                                GENERAL ADDENDA


.DHE
%TECHNICAL REFERENCE MANUAL                          SCREDITOR III WORD PROCESSOR

                                GENERAL ADDENDA


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                        PAGE A-%%%%
.DFE
"
 PAGE A-%%%%                                        (C) 1982, ALFORD & ASSOCIATES
 This addendum provides some detailed information  about  SCREDITOR  III  running
 under  various  operating systems, hints and kinks, etc... Although much of this
 information has been presented in other parts of the manual, this quick  summary
 will probably be of help in the learning and understanding of the program.


OS-9 GENERAL NOTES

 1) OS-9  is a multi-user operating system. As with all other programs written to
    run under OS-9, SCREDITOR III/OS-9 supports  multi-user  operation.  However,
    due  to  memory  space  limitations,  SCREDITOR  III/OS-9 will generally only
    support a single user on OS-9 Level one systems with full memory.

 2) SCREDITOR III/OS-9 handles printer,  keyboard  and  screen  devices  somewhat
    differently  than  other  versions of the program. Inherent in OS-9, programs
    other than device drivers should never communicate  directly  with  hardware.
    SCREDITOR   III/OS-9   is  no  exception.  Because  of  this,  there  are  no
    port-related questions in CONGEN.

 3) OS-9 is written to  support  unified  I/O  (input-output).  This  means  that
    devices  and  files  are  generally  interchangeable.  Because of this, it is
    possible for SCREDITOR III/OS-9  to  edit  material  taken  directly  from  a
    communications  line, a disk file, or other device and send the edited output
    to any such device. Also, as will be discussed in greater detail  later,  the
    printed  output of SCREDITOR III/OS-9 can be sent to a file, a communications
    line, a printer, a screen, etc... It is up to  the  operator  to  know  which
    combinations of input and output make sense when using SCREDITOR III/OS-9.

 4) The  OS-9  version of SCREDITOR III does not provide any source files for the
    adaptation of SCREDITOR III to memory-mapped displays. These  files  are  not
    provided  since  most  people  do  not  have  the  level of assembly language
    programming capability needed  to  code  in  this  language  under  OS-9.  In
    addition,  most  systems  do  not  have an OS-9 assembler, making such source
    files useless in any case.

 5) Since each 'run' of KEYGEN (and  CONGEN  and  PRTGEN)  by  a  different  user
    produces  a  file  in  the  EDIT_DATA  directory  identified  by user number,
    problems may occur in multi-user  installations.  If  a  user  signs  onto  a
    terminal  other  than  his  or  her  normal  one, SCREDITOR III will use that
    person's ID for the data files; however, the data may or may not  be  correct
    for  the  actual  terminal  being  used.  Since  this should not be a regular
    occurrence, no provision has been made to overcome it. The only  solution  at
    this  time  is to rename the data files prior to running SCREDITOR III at the
    'wrong' terminal!

 6) THERE  MUST  BE A DRIVE D0 IN THE SYSTEM FOR SCREDITOR III TO OPERATE. IF YOU
    HAVE  RE-WRITTEN YOUR D0 DEVICE DESCRIPTOR AND RE-NAMED IT TO SOMETHING ELSE,
    SCREDITOR III CANNOT BE USED WITHOUT MODIFYING THE PROGRAM FILE ON DISK.

    To modify the program file, you will have to have Microware's debug  or  some
    similar  program.  Using  the  program inspect the beginning of the SCREDITOR
    III, CONGEN, KEYGEN and PRTGEN program files. Near the beginning of each, you
    will  find a string of characters which will consist of /D0 followed by about
    twelve spaces (the number may vary). The string is not otherwise  terminated.
    You  should  change  this string to whatever device name you will be using to
    hold the EDIT_DATA directory. Once this is done, run verify  on  the  program
    file to correct the CRC count at the end of the file.

OS-9 GENERAL NOTES  continued

 7) SCREDITOR III does a FORK to the RENAME command  when  the  scratch  file  is
    renamed. If you have used the SHELL memory size modifier in calling SCREDITOR
    III  and  have  specified all of the available memory in the system, an error
    will occur when the FORK is issued, unless some other process has died during
    the  edit session, releasing enough memory for the RENAME to load and run. If
    this out of memory condition occurs, the scratch file  will  not  be  renamed
    even though the old file has been deleted!


GENERAL FLEX and SSB NOTES

 1) There must always be a CONGEN.DAT, KEYGEN.DAT  and  PRTGEN.DAT  file  on  the
    system  drive in order for SCREDITOR III to operate. If you have used the SET
    command (SSB DOS) or the ASN (ASSIGN) command (FLEX)  to  change  the  system
    drive,  SCREDITOR  III  will  not start up unless the new drive also contains
    these files.

 2) SCREDITOR III assumes that your printer drivers are always loaded  and  ready
    to run. Since this is often not  the  case,  especially  when  running  under
    FLEX-09,  the easiest way in which to insure that they are really there is to
    always precede the call SCREDITOR III with the P  command,  or  whatever  the
    name of your printer command is. Alternatively  you  can  'GET'  the  printer
    driver  as  part  of  the FLEX 'STARTUP' file. If you do not specify files on
    start-up, SCREDITOR III will still send the prompt to the  screen  as  it  is
    then using its own output handlers.

 3) Unless you specified an end of memory value during CONGEN, SCREDITOR III uses
    the MEMAX (SSB DOS) or MEMEND (FLEX) value as the end of the  memory  it  can
    use,  and  it uses ALL of it. If you have some other program running and want
    it running when you get back from SCREDITOR III,  be  sure  that  it  is  not
    sitting  under  this  value.  Also,  SCREDITOR  III uses the DOS command area
    before it has assigned its own buffers during start-up. A program sitting  in
    the command area will also be clobbered by SCREDITOR III, even though the use
    of FIND or MAP does not indicate that that part of memory is used.
