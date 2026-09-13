# STRM02

> Source: `manuals/misc/REFERENC - Manual and Documentation Archive.zip!REFERENC.DSK!STRM02.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                          TECHNICAL REFERENCE MANUAL

                         SCREDITOR III DOS INFORMATION


.DHE
%TECHNICAL REFERENCE MANUAL                          SCREDITOR III WORD PROCESSOR

                         SCREDITOR III DOS INFORMATION


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                        PAGE 2-%%%%
.DFE
"
 PAGE 2-%%%%                                        (C) 1982, ALFORD & ASSOCIATES
 The information in the first part of this section pertains to the  Smoke  Signal
 Broadcasting   (SSB)  and  Technical  Systems  Consultants  (FLEX)  versions  of
 SCREDITOR III. OS-9 information is contained in part TWO of this section due  to
 the  number  of  differences  between  the  OS-9  version  and  the SSB and FLEX
 versions.  Additional  information  which  pertains  to  these  differences   is
 contained in the GENERAL INFORMATION ADDENDUM at the end of this manual.


SSB AND FLEX OPERATING SYSTEMS


 BEFORE STARTING -

 Before SCREDITOR III can be used, three data files must  reside  on  the  system
 drive,  CONGEN.DAT,  KEYGEN.DAT,  and  PRTGEN.DAT.  These  three  files  contain
 information about your display, keyboard and printer. All three must exist  even
 though  you  may  not be using a printer in your installation. These three files
 are created by the CONGEN, KEYGEN and PRTGEN installation programs described  in
 the SYSTEM INSTALLATION MANUAL.


 CALLING THE EDITOR -

 SCREDITOR  III  is  called from DOS in one of several ways, as shown in the EDIT
 FILE EXTENSIONS section above. The general syntax of the call is

    (EDNAME),(OLD FILE),(NEW FILE)

 where (EDNAME) is the name of SCREDITOR III in your system,  (OLD  FILE)  is  an
 existing  file  on  one of your disk drives, and (NEW FILE) is the file to which
 the edited text will be written, and the three fields are separated by valid DOS
 delimiters (shown as commas here).


 The  following  examples will show the various forms of the call. These examples
 use ED as the name  of  SCREDITOR  III,  although  your  version  may  be  named
 something else. Also, we show commas as the delimiters even though you could use
 any delimiter which is valid for your DOS.

    ED,,FILE
    ED,FILE
    ED,FILE1,FILE2
    ED

 The  first  example will create a file named FILE.TXT on the working drive. Note
 that two commas are typed, indicating that there is no old file to read for  the
 edit  session. These two commas (or any other valid delimiter as defined by your
 DOS) must both be supplied.

 The second example will edit the existing file named  FILE.TXT  on  the  working
 drive.  Refer  to the EDIT FILE EXTENSIONS section below for more information on
 how this is done.

 The third example will edit the existing file named  FILE1.TXT  on  the  working
 drive, creating a file named FILE2.TXT on the same drive.


 In the fourth example, the edit session will start with no files open. This call
 is used when you wish to use SCREDITOR III as an electronic scratch pad, and  do
 not  intend  to save your work. If you change your mind after opening, a COMMAND
 is included in SCREDITOR III to open an  output  file  after  the  edit  session
 starts.

 In  all  of  these  examples,  of course, specific drive numbers could have been
 given for the files. In the case of example two, if  a  drive  number  had  been
 specified, the output file would be created on the same drive as the input file.
 Any time you are editing a file on one drive, and the resulting file  is  to  be
 created  on a different drive, you must supply the filename and drive number for
 both files (unless one or both of them will be on the work drive, in which  case
 you may omit the drive number for the file(s) on the work drive).


 DRIVE ASSIGNMENTS -

 The work drive is the drive on which your operating system expects to find files
 which will be operated on by the various commands such as SCREDITOR III.

 The system drive is the drive on which your operating system expects to find the
 commands themselves.

 Unless  specifically  stated  in  the  call to SCREDITOR III from DOS, all files
 referenced by the program are presumed to exist on the work  drive,  except  for
 the KEYGEN, CONGEN and PRTGEN data files, which must reside on the system drive.

 Files  may be edited which exist any drive by giving explicit drive numbers with
 the file names. When a file is being edited from one  drive  to  another  drive,
 explicit drive numbers for any drive other than the working drive must be given.


 EDIT FILE EXTENSIONS -

 All  MISCELLANEOUS  DOS  COMMANDS, except the SAVE and LOAD SYMBOLS and the LOAD
 PRINTER DATA COMMANDS will default to  a  .TXT  extension  if  not  specifically
 entered. The SAVE and LOAD SYMBOLS and the LOAD PRINTER DATA COMMANDS will FORCE
 .DAT extensions, and if extensions are entered, they will be  ignored  and  .DAT
 will be used.

 Unless  specifically  entered  otherwise,  SCREDITOR  III will use .BAK and .TXT
 extensions for the main edit input and output files.

 If an existing file with a .TXT extension is being edited, and no output file is
 explicitly  given  in  the  call to SCREDITOR III, the output file will be named
 with a .TMP (SSB) or .SCR (FLEX) extension until the end of  the  edit  session,
 and  will  be  created on the same drive as the old file. At the end of the edit
 session, the disk is examined for a file  having  the  same  name  with  a  .BAK
 extension. If found, the old .BAK file will be deleted. The input file will then
 be renamed to a .BAK extension. Finally, the .TMP or .SCR output  file  will  be
 renamed with the .TXT extension. Since no files are deleted or renamed until the
 end of the edit session, there is little chance of losing a  file.  See  example
 one below.


 If  the  input file for an edit session has any extension other than .TXT and no
 output filename is entered, the edit session will operate exactly  as  with  the
 .TXT extension; i.e., the output file will have the same name but with a .TMP or
 .SCR extension. When the edit session is complete, the .BAK file with  the  same
 name will be deleted if it exists, the input file renamed to .BAK and the output
 file will be renamed to the old input file name and extension. See  example  two
 below.

 If an explicit output filename is specified, no renaming or deletion  will  take
 place,  and  the file name given in the call for the output file will be used on
 the output file throughout the edit session. If no extensions  are  given,  .TXT
 will default. See examples three and four below.

 The following are typical calls to the editor from DOS:

    1) ED,FILE
    2) ED,FILE.FOR
    3) ED,FILE.BAS,FILE.TXT
    4) ED,FILE1,FILE2


 DATA FILE EXTENSIONS -

 All  data  files  such  as  those created by CONGEN, KEYGEN, PRTGEN and the SAVE
 SYMBOLS COMMAND will have a .DAT extension.


 FILES EDITED BY SCREDITOR III -

 SCREDITOR  III  accepts  standard  text  files,  of  either  the  compressed  or
 non-compressed  type,  and  generates  compressed  text  files.  Unless you have
 imbedded printer control codes in the text, the files created by  SCREDITOR  III
 will  be  fully  compatible  with  Basic, assemblers, other editors, processors,
 etc...

 When lines are saved by SCREDITOR III,  each  line  is  truncated  to  the  last
 non-space  character  in the line. Trailing spaces are never saved to disk. If a
 line has no non-space characters (a blank line), only a carriage return will  be
 written to disk.

 No end of file mark is written to disk by SCREDITOR III. Any program which which
 requires  an end of file mark (few do anymore) will have problems with SCREDITOR
 III.


 DATA FILES GENERATED BY SCREDITOR III -

 The files created by the SAVE SYMBOLS COMMAND are binary data files, and may not
 be edited.

 The symbol file has the three characters SYM written as the first  data  in  the
 file. In this way, only a symbol file may be loaded by the LOAD SYMBOLS COMMAND.


 OTHER FILES GENERATED BY SCREDITOR III -

 The files generated by the  OPEN  WRITE-OUT  and  OPEN  PRINT-OUT  COMMANDS  are
 standard  compressed  sequential files, and may be edited just as any other such
 file.


 FILES CREATED BY CONGEN, KEYGEN and PRTGEN -

 The files created by CONGEN, KEYGEN and PRTGEN are binary data  files,  and  may
 not be edited.


 FILE ERROR HANDLING -

 If an error occurs in the reading or writing of the main input or output file, a
 DISK  ERROR will be posted and an immediate return to DOS will occur, regardless
 of when the error happens during the operation of SCREDITOR III.

 If an error occurs in the opening, reading or writing of a working  file  during
 the edit session, one of several actions may occur.

 In  the  case  where  a  file does not exist during a file opening for a COMMAND
 which reads but doesn't write, the disk error will be posted and no other action
 takes place.

 In the case where a file already exists with the same name during a file opening
 for a write COMMAND the disk error will be posted  and  no  other  action  takes
 place.

 In  the  case of a read or write error during a disk work COMMAND the error will
 be posted. An attempt will be made to close the file, and all of these  COMMANDS
 may  be  disabled (depending on the type of error) for the remainder of the edit
 session, depending upon the type  of  error,  to  minimize  the  possibility  of
 damaging a disk.

 More  information  about error handling is given with each of the COMMANDS which
 perform disk operations.


PART TWO - OS-9 OPERATING SYSTEM


 BEFORE STARTING -

 Before  SCREDITOR III can be used, three data files must reside in the EDIT_DATA
 directory on drive D0. (Information about using devices other than drive  D0  is
 given  at  the end of the SYSTEM INSTALLATION MANUAL). These three files will be
 named   CONGEN+(five-digit   user   ID),   KEYGEN+(five-digit   user   ID)   and
 PRTGEN+(five-digit  user  ID).  These three files contain information about your
 display, keyboard and printer. All three must exist even though you may  not  be
 using  a  printer  in  your  installation.  These three files are created by the
 CONGEN,  KEYGEN  and  PRTGEN  installation  programs  described  in  the  SYSTEM
 INSTALLATION MANUAL.


 CALLING THE EDITOR -

 SCREDITOR  III is called from OS-9 in one of several ways. The general syntax of
 the call is

    (EDNAME) (OLD PATH) (NEW PATH) (MEMORY MODIFIER)

 where (EDNAME) is the name of SCREDITOR  III  in  your  system,  (OLD  PATH)  is
 generally  an  existing file on one of your disk drives (but could be some other
 device such as a serial communications line) and (NEW PATH) is the file to which
 the  edited  text will be written, and the three fields are separated by spaces.
 Both the OLD PATH and NEW PATH are optional.

 The following examples will show the various forms of the call.  These  examples
 use  ED  as  the  name  of  SCREDITOR  III,  although  your version may be named
 something else.

    ED PATH
    ED PATH1 PATH2
    ED #20K

 The first example will edit the  file  described  by  PATH.  As  with  any  OS-9
 pathname, the actual location of the file will be determined by the pathname. If
 only the filename itself is given, the file is assumed  to  be  located  in  the
 current working directory. If the file does not exist in the path given, it will
 be created.

 The second example will edit the existing  file  described  by  PATH1  and  will
 create a new file described by PATH2. If PATH1 and PATH2 are identical, an error
 will occur.

 The third example will begin the edit session with no file creation or  opening.
 In  addition,  the  memory modifier has been included to allow the use of 20K of
 memory. The default memory allocation  of  SCREDITOR  III  is  10K.  The  memory
 modifier  may  be  used  with  any call to SCREDITOR III. Additional information
 about the memory modifier is contained in the GENERAL  INFORMATION  ADDENDUM  at
 the end of this manual.


 If  an  existing file is being edited, and no explicit output file name is given
 when SCREDITOR III is called, a temporary file named SCRATCH  followed  by  your
 five-digit  user  I.D.  and  the  three digit process number is created (such as
 SCRATCH00018003 for user 18 and process 3). At the end of the edit session,  the
 old  file  will  be deleted and the SCRATCH file will be renamed to the old file
 name.


 FILES EDITED BY SCREDITOR III -

 SCREDITOR III accepts standard OS-9 binary files. Care should be taken to insure
 that you are really editing a text file and not a data file or process file!

 Unless you have imbedded printer control codes in the text, the files created by
 SCREDITOR III will be fully compatible with Basic,  assemblers,  other  editors,
 processors, etc...


 When  lines  are  saved  by  SCREDITOR  III,  each line is truncated to the last
 non-space character in the line. Trailing spaces are never saved to disk.  If  a
 line  has no non-space characters (a blank line), only a carriage return will be
 written to disk.

 No end of file mark is written to disk by SCREDITOR III.


 DATA FILES GENERATED BY SCREDITOR III -

 The files created by the SAVE SYMBOLS COMMAND are binary data files, and may not
 be  edited. In addition, the symbol file has the three characters SYM written as
 the first data in the file. In this way, only a valid symbol file may be  loaded
 by the LOAD SYMBOLS COMMAND.


 OTHER FILES GENERATED BY SCREDITOR III -

 The  files  generated  by  the  OPEN WRITE-OUT and (if a file is specified) OPEN
 PRINTER PATH COMMANDS are standard sequential files, and may be edited  just  as
 any other such file.


 FILES CREATED BY CONGEN, KEYGEN and PRTGEN -

 The  files  created  by CONGEN, KEYGEN and PRTGEN are binary data files, and may
 not be edited. The KEYGEN and  CONGEN  files  will  always  be  created  in  the
 EDIT_DATA  directory  on drive D0 (See the note in the information at the end of
 the SYSTEM INSTALLATION MANUAL about changing the name of D0). These files  must
 exist  in  this  directory  for  SCREDITOR  III  to  be  loaded and executed. In
 addition, a PRTGEN data file must also exist  in  this  directory  on  start-up,
 although an alternate file may be loaded during the edit session to allow you to
 change printers while editing.

 A separate set of the three data files must exist in the EDIT_DATA directory for
 EACH user on the system.
                                                       PATHNAMES DURING EDITING -

 The pathnames you will supply for such COMMANDS as OPEN  READ-IN,  OPEN  PRINTER
 PATH,  OPEN  WRITE-OUT, etc..., should conform exactly to OS-9 syntax, except as
 noted in the individual command descriptions. Specific information  is  included
 in each command description on this.


 DATA FILE EXTENSIONS -

 All  data  files  created  by  CONGEN, KEYGEN, and PRTGEN will have an extension
 which is made up of the five characters of  your  USER  I.D.  Whenever  you  use
 SCREDITOR  III,  your KEYGEN, CONGEN and PRTGEN files will be loaded. If you log
 onto the system with your USER I.D., but at a terminal other than your own, some
 special  problems may occur. If, for instance, the terminal, printer or keyboard
 layout are different, SCREDITOR  III  will  not  operate  properly,  since  your
 KEYGEN, CONGEN and PRTGEN data files will be used when you edit.


 FILE ERROR HANDLING -

 If an error occurs in the reading or writing of the main input or output file, a
 DISK ERROR will be posted and an immediate return to  the  parent  process  will
 occur,  regardless  of  when the error happens during the operation of SCREDITOR
 III.

 If an error occurs in the opening, reading or writing of a working  file  during
 the edit session, one of several actions may occur.

 In  the  case  where  a  file does not exist during a file opening for a COMMAND
 which reads but doesn't write, the disk error will be posted and no other action
 takes place.

 In the case where a file already exists with the same name during a file opening
 for a write COMMAND the disk error will be posted  and  no  other  action  takes
 place.

 In  the  case of a read or write error during a disk work COMMAND the error will
 be posted. An attempt will be made to close the file, and all of these  COMMANDS
 may, depending upon the type of error, be disabled for the remainder of the edit
 session to minimize the possibility of damaging a disk.


                        THIS PAGE IS INTENTIONALLY BLANK
