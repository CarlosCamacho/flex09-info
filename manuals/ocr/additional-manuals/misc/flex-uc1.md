# FLEX-UC1

> Source: `manuals/misc/ENH_MANL - FLEX Software Archive - Manual and Documentation Archive - Includes FLEX-AIX, FLEX-UC1, FLEX-UC2.zip!ENH_MANL.DSK!FLEX-UC1.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
#                            FLEX UTILITY COMMAND SET


.DHE
#                            FLEX UTILITY COMMAND SET


.DFO
.
                                    PAGE %%%%


.DFE
.
                                    PAGE %%%%


                              UTILITY COMMAND SET


 The  following  pages describe all of the utility commands currently included in
 the UCS. Several utilities are supplied by TSC with FLEX and several others  are
 supplied by Windrush. All Windrush supplied utilities are identified thus:


                              * * UTILITY NAME * *


COMMON ERROR MESSAGES

 Several error messages are common to many of the FLEX  utility  commands.  These
 error messages and their meanings include the following:


 NOT FOUND             This  message  indicates  that  a  file  referenced  in  a
                       particular  command  was  not found on the disc specified.
                       Usually the wrong drive was specified (or defaulted), or a
                       misspelling of the name was made.


 ILLEGAL FILE NAME     This  can  happen  if  the name or extension did not start
                       with a letter, or the name or extension field was too long
                       (limited  to  8 and 3 respectively). This message may also
                       mean that the command being executed expected a file  name
                       to follow and one was not provided.


 FILE ALREADY EXISTS   This  message  will  be output if you try to create a file
                       with a name the same as one which currently exists on  the
                       same  disc. Two different files with the same name are not
                       allowed to exist on the same disc.


 SYNTAX ERROR          This means that the  command  line  just  typed  does  not
                       follow  the  rules stated for the particular command used.
                       Refer to the individual command  descriptions  for  syntax
                       rules.


GENERAL SYSTEM FEATURES

 Any  time  one of the utility commands is sending output to the terminal, it may
 be temporarily halted by typing the  'escape'  character  (see  TTYSET  for  the
 definition  of  this  character).  Once  the output is stopped, the user has two
 choices: typing the 'escape' character again or typing 'RETURN'. If the 'escape'
 character  is  typed  again,  the  output will resume. If the 'RETURN' is typed,
 control will return to FLEX and  the  command  will  be  terminated.  All  other
 characters are ignored while output is stopped.


                                     APPEND


 The  APPEND command is used to append or concatenate two or more files, creating
 a new file as the result. Any type of file may be appended  but  it  only  makes
 sense  to append files of the same type in most cases. If appending binary files
 which have transfer addresses associated with them, the transfer address of  the
 last  file  of  the list will be the effective transfer address of the resultant
 file. All of the original files will be left intact.


DESCRIPTION

 The general syntax for the APPEND command is as follows:

     APPEND,<file spec>[,<file list>],<file spec>

 where  <file  list> can be an optional list of the specifications. The last name
 specified should not exist on the disc since  this  will  be  the  name  of  the
 resultant file. If the last file name given does exist on the disc, the question
 "MAY  THE  EXISTING  FILE  BE  DELETED?"  will be displayed. A 'Y' response will
 delete the current file and cause the APPEND operation to be  completed.  A  'N'
 response  will  terminate  the  APPEND operation. All other files specified must
 exist since they are the ones to be appended together. If only 2 file names  are
 given,  the  first file will be copied to the second file. The extension default
 is TXT unless a different extension is used on  the  FIRST  FILE  SPECIFIED,  in
 which  case that extension becomes the default for the rest of the command line.
 Some examples will show its use:

     APPEND,CHAPTER1,CHAPTER2,CHAPTER3,BOOK
     APPEND,FILE1,1.FILE2.BAK,GOODFILE

 The first line would create a file on the working drive called 'BOOK.TXT'  which
 would  contain  the  files  'CHAPTER1.TXT', CHAPTER2.TXT', and 'CHAPTER3.TXT' in
 that order. The  second  example  would  append  'FILE2.BAK'  from  drive  1  to
 FILE1.TXT  from  the  working  drive  and  put  the  result  in  a  file  called
 'GOODFILE.TXT' on the working drive. The file GOODFILE defaults to the extension
 of  TXT  since  it  is the default extension. Again, after the use of the APPEND
 command, all of the original files will be intact, exactly as they  were  before
 the APPEND operation.


 NOTE: Due to the way the Windrush Bootstrap Loader operates you should  not  use
       APPEND  to  add  extra object files to the FLEX system file unless you use
       the Windrush 'COMPRESS' utility  afterwards.  The  compress  utility  will
       ensure  that the transfer address is in the last binary record of the file
       thus ensuring correct bootstrap operation.


                                      ASN


 The ASN command is used for assigning the 'system' drive and the 'working' drive
 or  to select automatic drive searching. The system drive is used by FLEX as the
 default for command names or, in general, the first name on a command line.  The
 working  drive  is  used by FLEX as the default on all other file specifications
 within a command line. Upon initialization, FLEX assigns drive #0  as  both  the
 system  and working drive. An example will show how the system defaults to these
 values:

     APPEND,FILE1,FILE2,FILE3

 If the system drive is assigned to be #0 and the working drive  is  assigned  to
 drive #1, the above example will perform the following operation: get the APPEND
 command from drive #0 (the system drive), then append FILE2 from drive  #1  (the
 working  drive)  to FILE1 from drive #1 and put the result in FILE3 on drive #1.
 As can be seen, the system drive was the default for APPEND  where  the  working
 drive was the default for all other file specs listed.

 Automatic drive searching causes FLEX to automatically scan the ready drives for
 the file specified. Hardware limitations prevent the 5 1/4" floppy versions from
 searching  for  "ready"  drives.  For this reason, FLEX has been setup to ALWAYS
 assume drive 0 and 1 are ready. Thus if a 5 1/4" floppy version of FLEX attempts
 to  search  a  drive  which does not have a disc loaded, it will hang up until a
 disc is inserted and the door closed. Alternatively, the system reset  could  be
 hit  and  a warm start executed (a jump to address $CD03). The 8" floppy version
 CAN detect a ready condition and will not check drives  which  are  out  of  the
 ready state during automatic drive searching.

 Automatic  drive  searching  causes  FLEX  to  first check drive #0 for the file
 specified. If not there (or if not ready in the 8" floppy version),  FLEX  skips
 to  drive #1. If the file is not found on drive #1 in the 5 1/4" floppy version,
 FLEX gives up and a FILE NOT FOUND error results. In the 8" floppy version  FLEX
 continues to search on drives #2 and #3 before reporting an error.


DESCRIPTION

 The general syntax for the ASN command is as follows:

     ASN[,W=<drive>][,S=<drive>]

 where <drive> is a single digit drive number or the letter A.  If  just  ASN  is
 typed  followed  by  a  'RETURN', no values will be changed, but the system will
 output a message which tells the current assignments of the system  and  working
 drives, for example:

     +++ASN
     THE SYSTEM DRIVE IS #0
     THE WORKING DRIVE IS #0


                                      ASN


 (continued)


 Some examples of using the ASN command are:

     ASN,W=1
     ASN,S=1,W=0

 where the first line would set the working drive to 1 and leave the system drive
 assigned to its previous value. The second example sets the system  drive  to  1
 and  the  working  drive  to  0.  Careful use of drive assignments can allow the
 operator to avoid the use of drive numbers on file specifications  most  of  the
 time!

 If auto drive searching is desired, then the letter A for automatic,  should  be
 used in place of the drive number.

     Example:
     ASN W=A
     ASN S=A, W=1
     ASN S=A, W=A


 NOTE:  A good standard drive assignment is S=0 and W=1. This will  help  prevent
        unwanted files from accidentally being written to your system disc.


                                  SPECIAL NOTE

 As  supplied ASN will not be able to make assignments to a drive numbers greater
 than #3. Since the Windrush implementation of  FLEX  has  facilities  for  drive
 numbers  0  through 7 you will have to modify the command if you wish to use it.
 (We are not allowed to modify TSC utilities under the terms of our license). All
 you  have  to do is use the FIX utility (qv) to make the following modifications
 to the ASN command:


 $C102  $01 -> $02 VERSION BUMP
 $C192  $33 -> $37
 $C196  $03 -> $07


                                     BUILD


 The  BUILD  command  is  provided  for those desiring to create small text files
 quickly (such as STARTUP (qv) and MYSTART (qv) files) or not wishing to use  the
 optionally  available FLEX Text Editing System. The main purpose for BUILD is to
 generate short text files for use by either the  EXEC  command  or  the  STARTUP
 facility provided in FLEX.


DESCRIPTION

 The general syntax of the BUILD command is:

     BUILD,<file spec>

 where <file spec> is the name of the file you wish to be  created.  The  default
 extension  for  the  spec is TXT and the drive defaults to the working drive. If
 the output file already exists the question "MAY THE EXISTING FILE BE  DELETED?"
 will  be  displayed.  A Y response will delete the existing file and build a new
 file while a N response will terminate the BUILD command.

 After you are in the 'BUILD' mode, the terminal will respond with an equals sign
 ('=')  as  the  prompt  character.  This is similar to the Text Editing System's
 prompt for text input. To enter your text,  simply  type  on  the  terminal  the
 desired characters, keeping in mind that once the 'RETURN' is typed, the line is
 in the file and can not be changed. Any time before the 'RETURN' is  typed,  the
 backspace  character  may  be  used  as  well  as  the line delete character (DL
 character defined by TTYSET ... normally control-X) If the delete  character  is
 used,  the prompt will be '???' instead of the equals sign to show that the last
 line was deleted and not entered into the file. It should  be  noted  that  only
 printable  characters  (not  control  characters) may be entered into text files
 using the BUILD command.

 To exit the BUILD mode, it is necessary to type  a  pound  sign  ('#'  ...  $23)
 immediately  following the prompt, then type 'RETURN'. The file will be finished
 and control returned back to FLEX where the three plus  signs  should  again  be
 output  to  the  terminal.  This  exiting is similar to that of the Text Editing
 System.


                                      CAT


 The CATalog command is used to display the FLEX disc file names in the directory
 on each disc. The user may display selected files on one or multiple  drives  if
 desired.


DESCRIPTION

 The general syntax of the CAT command is:

     CAT[,<drive list>][,<match list>]

 where  <drive  list>  can  be one or more drive numbers seperated by commas, and
 <match list> is a set of name and extension characters  to  be  matched  against
 names  in  the directory. For example, if only file names which started with the
 characters 'VE' were to be cataloged, then VE would be in  the  match  list.  If
 only  files  whose  extensions were 'TXT' were to be cataloged, then .TXT should
 appear in the match list. A few specific examples will help clarify the syntax:

     +++CAT
     +++CAT,1,A.T,DR
     +++CAT,PR
     +++CAT,0,1
     +++CAT,0,1,.CMD,.SYS

 The first example will catalog all file names on the working  drive  or  on  all
 drives if auto drive searching is selected. The second example will catalog only
 those files on drive 1 whose names begin with 'A'  and  whose  extensions  begin
 with  'T',  and  also all files on drive 1 whose names start with 'DR'. The next
 example will catalog all files on the working drive (or on  all  drive  if  auto
 drive  searching  is selected) whose names start with 'PR'. The next line causes
 all files on both drive 0 and drive 1 to be cataloged. Finally, the last example
 will catalog the files on drive 0 and 1 whose extensions are CMD or SYS.

 During the catalog operation, before each drive's files are displayed, a  header
 message stating the drive number is output to the terminal. The name of the disc
 as entered during the FORMAT (qv) operation will also be displayed.  The  actual
 directory entries are listed in the following form:

     NAME.EXTENSION    SIZE PROTECTION CODE

 where size is the number of sectors that file occupies on the disc. If more than
 one  set  of  matching characters was specified on the command line, each set of
 names will be grouped according to the characters they match.  For  example,  if
 all  .TXT and .CMD files were cataloged, the TXT types would be listed together,
 followed by the CMD types.

 In summary, if the CAT command is not  parameterized,  then  all  files  on  the
 assigned  working  drive  will  be displayed. If a working drive is not assigned
 (auto drive searching mode) the CAT command will display files on  all  on  line
 drives.


                                      CAT


 (continued)


 If it is parameterized by only a drive number, then all files on that drive will
 be  displayed.  If  the  CAT command is parameterized by only an extension, then
 only files with that extension will be displayed. If only the name is used, then
 only  files  which start with that name will be displayed. If the CAT command is
 parameterized by only name and extension, then only files of that root name  and
 root  extension  (on  the working drive) will be displayed. Learn to use the CAT
 command and all of its features and your work with the disc will become a little
 easier.

 The current protection code options that can be displayed are as follows:

     C     File is catalogue protected (will never be seen with this utility!)
     D     File is delete protected (delete or rename prohibited)
     W     File is write protected (delete, rename and write prohibited)
  (blank)  No special protection


 NOTE: The Windrush 'DIR' utility is also available if more information about the
       file or disc sector allocation is required.


                                  SPECIAL NOTE

 As  supplied  CAT  will  not be able to work with drive numbers greater than #3.
 Since the Windrush implementation of FLEX has facilities  for  drive  numbers  0
 through 7 you will have to modify the command if you wish to use it. (We are not
 allowed to modify TSC utilities under the terms of our license). All you have to
 do  is  use  the FIX utility (qv) to make the following modifications to the CAT
 command:


 $C102  $01 -> $02 VERSION BUMP
 $C16D  $03 -> $07
 $C398  $4B -> $43


                                 * * CLEAN * *


 The  Windrush CLEAN utility is provided to assist in the correct cleaning of the
 heads on disc drive units. After confirming the prompt, the heads will  step  in
 to  the  centre  track  and  back  out  again  for one minute. This ensures even
 coverage of the cleaning media, and therefore extends it's useful life.


DESCRIPTION

 The syntax for CLEAN is:

    CLEAN,<drive>

 where <drive> is a valid on-line logical drive number.


 The  command  will  abort  if  the  <drive>  is  illegal/invalid. The command is
 intelligent enough not to  attempt  to  clean  the  RAM  DISC  or  a  Winchester
 partition!

 If the call is successful the <drive> will be restored (stepped to track #0) and
 a prompt is given to insert the cleaning disc into the drive. When this is done,
 hitting <RETURN> will cause the cleaning to commence.

 On completion of the cleaning, the utility prints  a  confirmatory  message  and
 sends a bell code ($07) to the system console.


 NOTE:    At ANY STAGE including the initial prompt, hitting ^C (control-C)  will
          abort the command and return to FLEX.


                                * * * * * * * * * *
                                *  _____________  *
                                * W A R N I N G *
                                *                 *
                                * * * * * * * * * *

           There  are  some  very  dubious  cleaning  discs  available.
           Confirm with the disc drive supplier that using a particular
           cleaning  disc  on  your  drive  does  not  invalidate   the
           warranty.


                                * * COMPRESS * *


 The Windrush COMPRESS utility enables binary or text files to be compressed into
 the  smallest size. It is mostly used on files which have been APPENDed together
 as the subsequent file will almost definately have wasteful nulls between  files
 and,  in  the case of binary files, may have overlaid areas or multiple transfer
 addresses. Booting with a file containing more than one transfer address  (right
 at  the end) is courting disaster as most boot-loaders will jump straight off to
 the address before checking for end-of-file on receipt  of  the  first  transfer
 address.  A further case for file compression could be that of PL9 produced code
 where large control structures tend to produce several two byte 'fix-ups'.  Look
 at  the  MAP of a large file and you will generally see several backward patches
 applied. This is due to the nature of one pass  compilation  with  limited  look
 ahead. A file so produced is an ideal candidate for the use of COMPRESS.


DESCRIPTION

 The syntax for COMPRESS is:

    COMPRESS,<filename>[,+]

 <filename>   is a file name which defaults to the work drive and an extension of
              .BIN

 +            is an option which means total compression (see below)


 COMPRESS  will  not  process  RANDOM  files as this defeats the object of having
 random access files! Just in case you didn't mean to use the  COMPRESS  utility,
 COMPRESS will rename the <filename> to have an extension called .SCR so that you
 have the original un-touched version. It then creates a file  called  <filename>
 on  the  same drive which will be the end result of the compression. To keep you
 in the picture COMPRESS prints out the source file's name. Next, scratch  memory
 is  prepared  for  holding  records  of <filename>. This causes a slight delay -
 dependant of the amount of memory on your system. COMPRESS works in two distinct
 passes, and depending on the mode (BINARY/TEXT) these do different things:


PASS 1 (TEXT)

 On reading the first few characters, the file is recognised as  TEXT  and  so  a
 note is made of the fact and the pass completes.


PASS 1 (BINARY)

 Disc records are read from <filename> and address information stored  in  memory
 based records. COMPRESS works in terms of 8k byte blocks, so there are 8 sets of
 records. Also transfer  addresses  are  noted,  with  the  last  one  being  the
 important one.


PASS 2 (TEXT)

 The area reserved for memory based  records  is  now  used  as  a  file  buffer.
 <filename>  is  read into the buffer (ignoring the nulls) and then when full, or
 at the end-of-file, the new file is written out. For a large file several buffer
 fill-ups may be required to complete the pass.

                                * * COMPRESS * *


 (continued)


PASS 2 (BINARY)

 If the option was not invoked and a WMS formatted version number was  found  the
 version number record is written to the new file as the first record and removed
 from the memory based records. Then each 8k byte block is processed in  turn  to
 complete the pass. Processing involves reading in the actual binary data records
 (overlaying as required) and then writing out the resultant binary image.

 The resultant text file will be a file without excess nulls. For a binary  file,
 the  result will be a linearly structured file with any overlays implemented (ie
 the original is no longer within the file - removing wasted bytes) and only  one
 (if one existed) transfer address at the end of the file.

 It may be of interest to know that COMPRESS will use binary disc records  of  up
 to  255 bytes (a binary record is not the same thing as a sector!) when creating
 the new file.  This  will  save  on  records,  and  their  resultant  overheads;
 especially if the source was in 80 byte or 248 byte records, as produced by some
 assemblers.

 Use of the "+" option does nothing for a text file. In the case of a binary file
 it  will  result  in a truly minimal file. This is at the expense of the version
 number record header (if it is overlaid)  for  WMS  utilities.  For  any  normal
 binary  type  file  it's inclusion will not do anything. It is only for the sole
 purpose of allowing the version number record header to be overlaid, and as such
 only applies to WMS utilities. These do not need compressing in any case so this
 option will rarely be required (if ever!).

 The creation date of the new file is made consistent  with  the  original.  This
 allows,  for  example:  a  patch file for PL9 fixes to be saved to disc, the old
 PL9.CMD to be renamed PL9.OLD, the patch file appended  to  PL9.OLD  and  called
 PL9.CMD, the result COMPRESSed.

 In this way an overlaid fix may be implemented without extending the  number  of
 sectors in the file, losing the WMS header or changing the date.


                                     COPY-TSC


 The COPY command is used for making copies of files on a disc. Individual  files
 may  be  copied, groups of name-similar files may be copied, or entire discs may
 be copied. The copy command is a very versatile utility. The COPY  command  also
 re-groups  the sectors of a file in case they were spread all over the old disc.
 This regrouping can make file access times much faster. It should be noted  that
 before  copying  files to a new disc, the disc must be formatted first. Refer to
 FORMAT for instructions on this procedure.

 This utility is supplied named 'COPY-TSC.CMD' ' in  order  to  differentiate  it
 from   the  Windrush  copy  utility  named  'COPY-WMS.CMD'.  After  reading  the
 description of these two utilities we suggest that you select the one  you  wish
 to use and rename it 'COPY.CMD'.


DESCRIPTION

 The general syntax of the COPY command has three forms:

     a. COPY,<file spec>,<file spec>
     b. COPY,<file spec>,<drive>
     c. COPY,<drive>,<drive>[,<match list>]

 where  <match  list>  is  the  same as that described in the CAT command and all
 rules apply to matching  names  and  extensions.  When  copying  files,  if  the
 destination  disc  already  contains  a file with the same name as the one being
 copied, the file name and the message, "FILE EXISTS DELETE  ORIGINAL?"  will  be
 output  to  the terminal. Typing 'Y' will cause the file on the destination disc
 to be deleted and  the  file  from  the  source  disc  will  be  copied  to  the
 destination disc. Typing 'N' will direct FLEX not to copy the file in question.

 The  first  type  of  COPY allows copying a single file into another. The output
 file may be on a different drive but if on the same drive the file names must be
 different. It is always necessary to specify the extension of the input file but
 the output file's extension will default to that  of  the  input's  if  none  is
 specified. An example of this form of COPY is:

     +++COPY,0.TEST.TXT,1.TEST25

 This  command  line would cause the file TEST.TXT on drive 0 to be copied into a
 file called TEST25.TXT  on  drive  1.  Note  how  the  second  file's  extension
 defaulted to TXT, the extension of the input file.

 The  second  type  of COPY allows copying a file from one drive to another drive
 with the file keeping its original name. An example of this is:

     +++COPY,0.LIST.CMD,1

 Here the file named LIST.CMD on drive 0 would be copied to drive 1. It is  again
 necessary  to  specify the file's extension in the file specification. This form
 of the command is more convenient than the previous  form  if  the  file  is  to
 retain its original name after the copying process.


                                    COPY-TSC


 (continued)


 The final form of COPY is the most  versatile  and  the  most  powerful.  It  is
 possible  to  copy  all  files  from one drive to another, or to copy only those
 files which match the match list characters given. Some  examples  will  clarify
 its use:

     +++COPY,0,1
     +++COPY,1,0,.CMD,.SYS
     +++COPY,0,1,A,B,CA.T

 The  first  example will copy all files from drive 0 to drive 1 keeping the same
 names in the process.

 The second example will copy only those files on drive 1  whose  extensions  are
 CMD  and  SYS  to  drive 0. No other files will be copied.

 The  last example will copy the files from drive 0 whose names start with 'A' or
 'B' regardless of extension, and those files whose names start with the  letters
 'CA' and whose extensions start with 'T'.,to the output drive which is drive 1.

 The  last  form of copy is the most versatile because it will allow putting just
 the command (CMD) files on a new disc, or just  the  SYS  files,  etc.,  with  a
 single  command  entry.  During  the COPY process, the name of the file which is
 currently being copied will be output to the terminal, as well as the  drive  to
 which it is being copied.


 NOTE 1:  The  COPY  command  supplied  by  TSC  will  change  the  file   record
          information  in the file on the destination disc to reflect the current
          system date. This file date is not  presented  by  the  supplied  'CAT'
          utility but IS presented by the TSC and Windrush 'DIR' utilities.

 NOTE 2:  This  utility  is  generally only present on the non-configured disc we
          supply.

 NOTE 3:  Windrush also supply a 'COPY' command that preserves the file date when
          a file is copied from one disc to  another.  The  description  of  this
          command follows.


                                * * COPY-WMS * *


 The  Windrush  COPY utility allows files to be copied from disc to disc or, if a
 copy to another name is used, to the same disc, this  utility,  unlike  the  TSC
 'COPY' utility, does not alter the file date information record. This command is
 supplied named 'COPY-WMS.CMD' so that it will not conflict with the TSC  command
 which  is  named  'COPY-TSC.CMD'.  Feel  free  to  rename  the  one  you  prefer
 'COPY.CMD'.


DESCRIPTION

 There are three ways of invoking COPY:

    COPY,<drive>,<drive>[,<matchlist>]
    COPY,<filespec>,<drive>
    COPY,<filespec>,<mfilespec>


 <drive>        is a valid on-line drive,
 <matchlist>    is either (or both) part(s) (or all) of a filename or extension,
 <filespec>     is a filename with an extension,
 <mfilespec>    is a minimum of a filename - with an optional extension.

 The  first  case  is  the one mostly used. It allows copying of either an entire
 disc to another, or just matched files from one drive to another. Matching is on
 either  part  (or  all) of the name (or extension) or both. The <drive>s must be
 valid on-line drives or the command will abort. Some examples of  this  type  of
 copy follow:

  +++COPY,0,1
  +++COPY,1,0,.TXT,A_B,STY.T

 The first example will copy ALL files from drive # 0 to drive # 1.

 The  second  will copy those files from drive # 1 to drive # 0 which have a .TXT
 extension, then those which start off with the characters A_B, then  those  that
 start with STY and have an extension starting with '.T'.


 NOTE:    If a file exists on the destination drive, a prompt is issued regarding
          deletion of the file found. If Y is answered an "are you  sure"  prompt
          returns  and  if Y is answered to this one the file will be deleted and
          the source version copied across. Typing N to either  prompt  will  not
          delete  or  copy  the  file and the directory search is continued. This
          prompting method holds true for all invocations of COPY.


 The  second  type  of  call  is useful for copying only one file from a drive to
 another. An example follows:

  +++COPY,0.P.CMD,1

 This copies JUST the file P.CMD from drive # 0 to drive # 1. Using:

  +++COPY,0,1,P.CMD

 would have copied ALL command files starting with a P  -  which  is  not  always
 required!                 ____________________________
                       * *BE AWARE OF THIS DISTINCTION* *
                                * * COPY-WMS * *


 (continued)


 The  last type of call is the one least used. It copies JUST <filename> from the
 source disc, to the destination disc (may be the same disc) using <mfilename> as
 the new name. The extension will remain the same if <mfilename> does not include
 an extension, otherwise the extension will be as requested in <mfilename>.  Some
 examples follow:

  +++COPY,1.WORK.TXT,NEW_VER
  +++COPY,0.P.CMD,0.P_FILE.BIN

 The first example copies the file WORK.TXT from drive # 1 to a file to be called
 NEW_VER.TXT  on  the  assigned  WORK  drive.  The  second  example shows how the
 extension may also be altered. Here the file P.CMD on drive # 0 is copied  to  a
 file called P_FILE.BIN also on drive # 0.


 Both <filename> and <mfilename> may exclude the drive number in  any  calls  and
 the  drive  will  always  default  to  the  WORK  drive,  or drive # 0 if ALL is
 specified as the WORK drive.

 During  copying  the  success,  or  otherwise,  of  the copy is displayed on the
 terminal (unless re-vectored using the O, OUT, P, PR or PRT commands).


 NOTE 1:  At  any  stage, ^C (control-C) may be sent from the terminal. This will
          cause COPY to terminate in an orderly fashion and return to FLEX.


 NOTE 2:  TSC  supply  a utility command of the same name so we supply ours named
          as 'COPY-WMS.CMD'. The TSC 'COPY' command will always  alter  the  file
          date  information record to reflect the current system date when a file
          is copied. The WMS 'COPY' command will always preserve  the  file  date
          information record when the file is copied.

 NOTE 3:  If you wish to use our 'COPY' command in lieu of the TSC 'COPY' command
          we  suggest  that  you  leave  the TSC command named 'COPY-TSC.CMD' and
          rename our command 'COPY.CMD'.


                                  * * CRC * *


 The  Windrush  CRC  utility  is used to perform a 16-bit cyclic redundancy check
 across a specified area of memory. It is most frequently used to determine if  a
 block of memory has changed.


DESCRIPTION

 The syntax for CRC is

    CRC,<ssss>,<eeee> <CR>


 <ssss>       is the address of the first byte of the block you wish  to  CRC  in
              the form of 4 hexadecimal digits.

 <eeee>       is the address of the last byte of the block you wish to CRC in the
              form of 4 hexadecimal digits.


 the  response  of the CRC utility will be to either issue a prompt to inform you
 of the correct syntax or:

 CRC CHECKSUM = $XXXX


 NOTE:  This  routine  uses  a  proper  CRC  algorithm, it is not a simple 16-bit
        addition  as  used  for a checksum. For this reason the routine will take
        several seconds to CRC a large block of memory.


                                      DATE


 The  DATE  command  is used to display or change an internal FLEX date register.
 This date register may be used by future programs and FLEX utilities.


DESCRIPTION

 The general syntax of the DATE command is:

     DATE[,<month,day,year>]

 where  'month'  is the numerical month, 'day' is the numerical day and 'year' is
 the last two digits of the year.

     +++DATE 1,22,84  Sets the date register to January 22, 1984.


 Typing  DATE  followed by a carriage return will return the current system date.
 For example:

     +++DATE
     JANUARY 22, 1984
     +++


 The FLEX date registers are as follows:

 $CC0E ... 'SYSMON'
 $CC0F ... 'SYSDAY'
 $CC10 ... 'SYSYR'

 refer to section 2.3 in the ADVANCED PROGRAMMERS GUIDE for further details. Also
 see the 'YEAR' utility for a method of setting just the system year.


                                * * DATECOPY * *


 The  Windrush  DATECOPY  utility  allows  either updating or archiving of either
 specific files, or all files, between two nominated drives. It also enables  you
 to  invoke  a  global  copy function from one disc and then insert two new discs
 which will be copied one to the other.


DESCRIPTION

 The syntax of DATECOPY is:

    DATECOPY,<from>,<to>[,<type>][,<matchlist>]

 <from>         is the source drive,

 <to>           is the destination drive,

 <type>         omission means UPDATE EXISTING files only (default)

                +   means UPDATE ALL files
                -   means ARCHIVE EXISTING files
                +-  means ARCHIVE ALL files
                -+  means ARCHIVE ALL files

 <matchlist>    is either (or both) part (or all) of a filename or extension.

 A simple summary of operating modes is that inclusion of: "+" may be thought  of
 as  "adding  to" those that already exist, "-" may be thought of as "subtracting
 from" (i.e. deletion of source file after a successful copy) the source disc.

 In UPDATE mode source files are only read, while in ARCHIVE  mode  source  files
 are  subsequently  deleted after a successful copy. This is because a successful
 archive copy has been taken.

 Irrespective  of the operating mode, a copy is only affected if: the date on the
 source is more recent than that of the destination, the date is todays date  (in
 case  of  multiple  modifications  on  one  day), the file does not exist on the
 destination drive AND the ALL mode of operation, rather than the  EXISTING  mode
 of operation, is in use.

 In  the absence of a <matchlist> all files will be checked for processing, while
 supply of a <matchlist> restricts  the  processing  to  files  which  match  the
 supplied list.

 The  banner  title  always  informs the user of the mode of operation and if the
 processing is restricted to a matchlist or not.

 Hitting  any  key will start DATECOPY.

 NOTE:    Hitting ^C (control-C) at any stage will abort  the  copy  cleanly  and
          return to FLEX.

                                   ***********
                                   * WARNING *
                                   ***********

 By  ARCHIVE  we  actually  MEAN  archive. If a file is write protected, DATECOPY
 ignores the fact when it deletes the source. The  destination  file  will  still
 retain the protection that existed on the original.
                                * * DATECOPY * *


 (continued)


 The following set of examples explain the various calls:

    +++DATECOPY,0,1

 This  will  perform  an  update from drive #0 to drive #1 of existing files only
 i.e. UPDATE EXISTING files.

    +++DATECOPY,2,3,+

 This will perform an update from drive #2 to drive #3  of  existing  files  plus
 copying over any that do not already exist on drive #3 i.e. UPDATE ALL files.

    +++DATECOPY,2,0,-

 This will copy from drive #2 to drive #0 newer files that already exist on drive
 #0 followed by deletion of the source file on drive  #2  i.e.  ARCHIVE  EXISTING
 files.

    +++DATECOPY,3,2,+,-  ... or ... +++DATECOPY,3,2,-,+

 This  will  copy  from  drive  #3 to drive #2 newer files that already exist and
 those that do not already exist on drive #2, again followed by deletion  of  the
 source file on drive #3 i.e. ARCHIVE ALL files.


 The above four examples are for bulk copying, however often  only  a  particular
 type  of  file may be important. For these cases a matchlist is supplied and the
 following four examples show how this is done:

    +++DATECOPY,0,1,.TXT

 This will update existing files with a .TXT extension, from drive #0 to drive #1
 i.e. UPDATE EXISTING matched files.

    +++DATECOPY,0,2,+,A,.B

 This will update all files that start with 'A' and then those with an  extension
 that starts with '.B' from drive #0 to drive #2 i.e. UPDATE ALL matched files.

    +++DATECOPY,3,1,-,DEV.C

 This will archive existing files that start with DEV and have got  an  extension
 starting with .C from drive #3 to drive #1 i.e. ARCHIVE EXISTING matched files.

    +++DATECOPY,3,2,-,+,.BAS,HELP  ... or ... +++DATECOPY,3,2,+,-,.BAS,HELP

 This will archive all files that have a .BAS extension and then those that start
 with HELP from drive #3 to drive #2 i.e. ARCHIVE ALL matched files.


 The examples show the various methods in which this useful utility may be  used.
 Before  hitting  the key to start, check that the banner information is correct.
 If the wrong action is taken, this is not detrimental as a file can NEVER VANISH
 from  the  system. An accidental ARCHIVE will merely re-position it to the other
 drive.
                                 * * DATIME * *


 The   Windrush  DATIME  utility  is  used  to  read  the  current  date  from  a
 clock-calendar chip. If the data is valid it will be displayed on  the  terminal
 and the FLEX system information updated accordingly.


DESCRIPTION

 The syntax for DATIME is:

    DATIME<CR>


 There are two basic versions of 'DATIME' available:

 DATIME-N ... which is for the National MM58167 type clock-calendar
 DATIME-H ... which is for the Hitachi HD146818 clock-calendar

 The former is coded in assembly language suitable for MACE and  is  supplied  to
 match the address of the MM58167 chip on the Windrush 3U-TIM1 board.

 The latter is coded in PL/9 and is supplied to match the address of the HD146818
 chip on the Windrush 3U-TIM2 board.

 You should rename the command file that suits your hardware 'DATIME.CMD'

 The source and object files are supplied. The output format of the two  commands
 is somewhat different owing to the ability of a high level language like PL/9 to
 produce a formatted output much easier than can be done in assembly language.


 Invoking the DATIME command for the MM58167 will produce the following format if
 the data in the clock is correct:

                     THURSDAY -- 10 NOVEMBER 1983 -- 7:49 PM

 the data displayed will also be loaded into the FLEX system information, viz:

 SYSMON at $CC0E
 SYSDAY at $CC0F
 SYSYR  at $CC10

 It should be noted that the MM58167 does not keep track of the YEAR nor does  it
 make  any  allowances  for  leap years. The 'YEAR' displayed is derived from the
 FLEX 'SYSYR' which is generally set by  the  'YEAR'  utility,  (qv)  within  the
 STARTUP (qv) file.


 If  the software does not find the thousandths and hundredths of seconds counter
 rolling over it will assume that the TIM1 board has been  removed  or  that  the
 clock has died and present the following message:

                              - CLOCK NOT PRESENT! -

 If the software determines that the data stored in any of the clock registers is
 not valid the following message will be displayed:

                          DATA INVALID --- RE-SET CLOCK

                                 * * DATIME * *


 (continued)


 Invoking  the  DATIME command for the HD146818 will produce the following format
 if the data in the clock is correct:


                * * * * * * * * * * * * * * * * * * * * * * * * *
                *                                               *
                *     TUESDAY,  8 JANUARY 1985   6:36:59 PM     *
                *                                               *
                * * * * * * * * * * * * * * * * * * * * * * * * *


 the data displayed will also be loaded into the FLEX system information, viz:

 SYSMON at $CC0E
 SYSDAY at $CC0F
 SYSYR  at $CC10

 Since the HD146818 has the ability to maintain the current YEAR this information
 is read directly from it.


 If any of the data read is invalid the following will be displayed:

                          * * ILLEGAL DATA IN CLOCK * *


 The files present on the disc are as follows:

 DATIME-N.ASM ... assembly language source for MM58167 version (TIM1).
 DATIME-N.CMD ... FLEX TCA command for MM58167 version.

 DATIME-H.PL9 ... PL/9 source for HD146818 version (TIM2).
 DATIME.H.CMD ... FLEX TCA command for HD146818 version.

 You  should use the 'RE-NAME' utility to rename the FLEX TCA command appropriate
 for your hardware 'DATIME.CMD'

 The clock setting up utility, SETCLOCK, is documented separately.


 NOTE: If this utility is supplied as part of a 'CONFIGURED' system disc only the
       FLEX TCA command appropriate for your system will be present and  it  will
       be named 'DATIME.CMD'.


                                     DELETE


 The DELETE command is used to delete a file from the  disc.  Its  name  will  be
 removed  from  the  directory  and its sector space will be returned to the free
 space on the disc.


DESCRIPTION

 The general syntax of the DELETE command is:

     DELETE,<file spec>[,<file list>]

 where  <file  list>  can  be  an  optional  list  of  file specifications. It is
 necessary to include the extension on each file specified. As the DELETE command
 is executing it will prompt you with:

     DELETE "FILE NAME"?

 The  entire file specification will be displayed, including the drive number. If
 you decide the file should be deleted, type 'Y'; otherwise, any  other  response
 will cause that file to remain on the disc. If a 'Y' was typed, the message 'ARE
 YOU SURE?' will be displayed on the terminal. If you  are  absolutely  sure  you
 want  the  file deleted from the disc, type another 'Y' and it will be gone. Any
 other character will leave the file intact. ONCE A FILE HAS BEEN DELETED,  THERE
 IS  NO  WAY  TO  GET  IT BACK! Be absolutely sure you have the right file before
 answering the prompt questions with Y's. Once the file is deleted, the space  it
 had  occupied  on the disc is returned back to the list of free space for future
 use by other files. Few examples follow:

     +++DELETE,MATHPACK.BIN
     +++DELETE,1.TEST.TXT,0.AUGUST.TXT

 The  first  example  will  DELETE  the  file named MATHPACK.BIN from the working
 drive. If auto drive searching is selected, the file will be  deleted  from  the
 first  drive  it is found on. The second line will DELETE the file TEST.TXT from
 drive 1, and AUGUST.TXT from drive 0.

 There  are  several  restrictions  on  the DELETE command. First, a file that is
 delete or write  protected  may  not  be  deleted  without  first  removing  the
 protection  (see  'PROT' (qv) and 'PROTECT' (qv) for details). Also a file which
 is currently in the print queue (see the PRINT command) can not be deleted using
 the DELETE command.


 NOTE:    The  TSC DIAGNOSTICS package (optional) has a command called 'UNDELETE'
          which can be used to recover a file that has accidentally been  deleted
          provided that you do not make any further writes to the disc. We highly
          recommend that you purchase the DIAGNOSTICS package as it is well worth
          its  price  the  first  time  you crash a disc or accidentally delete a
          file. ... WMS


                                  * * DIR * *


 The Windrush DIR utility is used to produce  a  directory  listing  of  all,  or
 selected,  files  on  one,  or  more, on-line drives. Two options exist: display
 random and protection flags in lieu of the sector count, display  beginning  and
 ending  track/sector  in  lieu  of  the date. In addition the System Information
 Record (SIR) data relating to the disc format is also displayed.


DESCRIPTION

 The syntax for DIR is:

    DIR[<option>][,<drives>][,<matchlist>]

 <option>         \     means display begin/end track/sector,
                  /     means display random/protection flags,
                        (no option) means display file size and creation dates.

 <drives>         is: <drive #>[,<drives>]
                  <drive #> is a valid on-line drive,

 <matchlist>      is: <match>[,<matchlist>]
                  <match>  is either (or both) part (or all) of a filename or
                  extension (if preceded by a period ".").

 Omission  of  <option> defaults to the most commonly required information - date
 and sector counts. Use of the "\" option yields the begin/end  track/sector  for
 each  file  in  lieu  of the date. This option is useful for finding out where a
 file starts and ends on the disc. Using the "/" option  yields  the  random  and
 protection flags in lieu of the sector count.

 Omission  of <drives> defaults to the defined work drive, which in turn defaults
 to each on-line drive if ALL is defined as the work drive.

 Omission of <matchlist> defaults to all the directory entries.  In  this  latter
 case  any "holes" in the directory are printed as blanked out fields. This gives
 a "feel" for where subsequently created files will reside in the directory.

 In order to compress the size of large directory listings, two files are printed
 per  line.  The  actual  information provided on a directory listing are: header
 information detailing the drive #, disc name, version number and creation  date;
 format  information  regarding  number  of  sides, density and number of tracks;
 information on  the  files  that  match  the  <matchlist>;  summary  information
 detailing  the  number  of files found on the disc, the size of the largest, the
 number of sectors used and finally the number of sectors remaining.

 The actual information printed for each file is a function of if  an  option  is
 selected,  and  if  so  which  one. Normal default gives: relative number in the
 directory, name, extension, creation date, total sectors used.  The  "\"  option
 gives:  relative  number  in  the directory, name, extension, first sector used,
 last sector used, total sectors used. The "/" option gives: relative  number  in
 the   directory,   name,   extension,   creation   date,   random   file   flag,
 write/delete/catalogue protection flags.

 Illegal creation dates are printed as such. Unrecognised disc formats,  such  as
 those produced by Winchesters, yield "?S/?D" as the sides/density information.


                                  * * DIR * *


 (continued)


 Some example invocations follow:

    +++DIR

 This will produce a directory listing for the full directory of the  work  drive
 with  file  ceation  dates  and  sector  counts.  If  the  work drive is ALL the
 directories of all on-line drives are printed out.


    +++DIR\

 This will produce a directory listing for the full directory of the  work  drive
 with  sector  counts  and  first/last sector information in lieu of the creation
 date. If the work drive is ALL the directories of all on-line drives are printed
 out.


    +++DIR/

 This  will  produce a directory listing for the full directory of the work drive
 with random and protection flags in lieu of the total sectors used  information.
 If the work drive is ALL the directories of all on-line drives are printed out.


    +++DIR,2

 This will produce a directory listing for the full directory of drive #2.


    +++DIR\,1

 This  will  produce  a directory listing for the full directory of drive #1 with
 sector counts and first/last sector information in lieu of the creation date.


    +++DIR/,3

 This will produce a directory listing for the full directory of  drive  #3  with
 random and protection flags in lieu of the total sectors used information.


    +++DIR,2,L,.S

 This will produce a directory listing for the all files starting with L and then
 all files with an extension starting with .S on drive #2.


    +++DIR\,1,L,.S

 This will produce a directory listing for the all files starting with L and then
 all  files with an extension starting with .S on drive #1 with sector counts and
 first/last sector information in lieu of the creation date.


                                  * * DIR * *


 (continued)


    +++DIR/,3,L,.S

 This will produce a directory listing for the all files starting with L and then
 all  files  with  an  extension  starting  with  .S  on drive #3 with random and
 protection flags in lieu of the total sectors used information.


    +++DIR,1,2,L,.S

 This will produce a directory listing for the all files starting with L and then
 all files with an extension starting with .S on drives #1 and #2.


    +++DIR\,1,0,P,.AS

 This will produce a directory listing for the all files starting with P and then
 all files with an extension starting with .AS on drives #1 and  #0  with  sector
 counts and first/last sector information in lieu of the creation date.


    +++DIR/,3,2,INV,.BIN

 This  will  produce  a directory listing for the all files starting with INV and
 then all files with an extension .BIN on  drives  #3  and  #2  with  random  and
 protection flags in lieu of the total sectors used information.


    +++DIR,1,2,LI.T

 This  will  produce  a  directory listing for the all files starting with LI and
 having an extension starting with .T on drives #1 and #2.


    +++DIR\,1,0,JUNK.AS

 This will produce a directory listing for the all files starting with  JUNK  and
 having an extension starting with .AS on drives #1 and #0 with sector counts and
 first/last sector information in lieu of the creation date.


    +++DIR/,3,2,INV.BIN

 This will produce a directory listing for the all files starting with INV and an
 extension .BIN on drives #3 and #2 with random and protection flags in  lieu  of
 the total sectors used information.

 The  complexity  of  the  <matchlist> is only limited by the maximum size of the
 command line, which is 127 characters plus the  <RETURN>  and  this  value  must
 include  the  DIR  and  separator  characters.  Also any number of drives may be
 referenced, though it only makes sense to do each drive once!


                                  * * DUMP * *


 The  Windrush  DUMP command is used to display the contents of memory in HEX and
 ASCII format.


DESCRIPTION

 The syntax for DUMP is:

    DUMP,<start address>,<end address>

 <start address>  is  any memory address in the form <nnnn> with 'n' representing
                  a hexadecimal digit.

 <end address>    is  any memory address in the form <nnnn> with 'n' representing
                  a hexadecimal digit.

                  the <start address> must be lower than the <end address>.


 Once the command is entered the contents of memory will be  dumped.  The  TTYSET
 pause  facililty is temporarily disabled (if enabled) to allow a continuous dump
 to be performed. You can start and stop the output by hitting the  <ESCAPE>  key
 on the keyboard.

 You can use the PR, and OUT utilities to re-direct the output to a printer or  a
 disc  file  respectively.

 This utility is optimised for an 80 column VDU.


                                  * * ECHO * *

 The  Windrush  ECHO utility is allows you to send messages to the system console
 as an EXEC command file is being run.


DESCRIPTION

 The syntax for ECHO is:

    ECHO,<ASCII STRING>

 where  <ASCII  STRING>  is any string of printable ASCII characters ($20 -> $7F)
 terminated by a carriage return.


 An  example  of  use  would  be as follows assuming that the following lines are
 lines in an EXEC command file:

    ECHO,* * *  FORMATTING NEW DISC  * * *
    FORMAT,+1,D,D,80,N,9
    ECHO,* * *  COPYING ALL FILES  * * *
    COPY,0,1
    ECHO,* * *  LINKING FLEX * * *
    LINK,1.WMFLXXXX.SYS
    ECHO,* * *  ALL DONE! * * *


 The  use  of  ECHO  in  a very long EXEC file serves to keep you informed of the
 progress of the various activities you have set up.


 NOTE: TSC also supply an 'ECHO' utility in their 'UTILITIES' package.  The main
       differences between the Windrush and TSC utilities is that the latter does
       not  allow  multiple  spaces  in  the  string  being  echoed. e.g. the TSC
       utility will echo  '*         *'  as  '* *',  the  multiple  spaces  being
       truncated to a single space.


                                * * ESTATUS * *

 The Windrush ESTATUS utility reports the current memory map that is used by  the
 RESIDENT  drivers.  It  is  useful  as an aid to seeing how RES-CON.SYS was last
 configured. Since 'RSTATUS' is already used for the RAM-DISC we had to  come  up
 with  an  alternative for RESIDENT. Since RESIDENT (E)xtends the memory resident
 command table 'E' seemed appropriate. The same letter is used in SETUP (qv)  for
 compatibility.


DESCRIPTION

 This utility is invoked thus:

    ESTATUS

 It does not require and options or arguments and gives, typically, the following
 output when invoked:


 RESIDENT memory usage:

 PAGE:   $0,     BLOCKS:  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
 PAGE:   $1,     BLOCKS:  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
 PAGE:   $2,     BLOCKS:  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
 PAGE:   $3,     BLOCKS:  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
 PAGE:   $4,     BLOCKS:  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
 PAGE:   $5,     BLOCKS:  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
 PAGE:   $6,     BLOCKS:  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
 PAGE:   $7,     BLOCKS:  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
 PAGE:   $8,     BLOCKS:  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
 PAGE:   $9,     BLOCKS:  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
 PAGE:   $A,     BLOCKS:  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
 PAGE:   $B,     BLOCKS:  -  -  -  - +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F
 PAGE:   $C,     BLOCKS: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F
 PAGE:   $D,     BLOCKS:  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
 PAGE:   $E,     BLOCKS: *0 *1 *2 *3 *4 *5 *6 *7 *8 *9 *A *B *C *D *E *F

 STATISTICS      NOTE: RAM is represented by '+' and ROM by '*'
 ----------
 RAM size:  114688 BYTES (approximately   448 SECTORS)
 ROM size:   65536 BYTES (approximately   256 SECTORS)


 It should be noted that a fully populated memory would provide  960K  bytes  for
 use between the RAM DISC, RESIDENT and, perhaps, your own application programs.


                                      EXEC


 The  EXECute  command is used to process a text file as a list of commands, just
 as if they had been typed from the keyboard. This is a very powerful feature  of
 FLEX  for  it  allows  very complex procedures to be built up as a command file.
 When it is desirable to run this procedure, it is only necessary  to  type  EXEC
 followed  by  the  name  of  the  command  file. Essentially all EXEC does is to
 replace the FLEX keyboard entry routine with a routine which reads a  line  from
 the command file each time the keyboard routine would have been called. The FLEX
 utilities have no idea that the line of input is coming from a file  instead  of
 the terminal.


DESCRIPTION

 The general syntax of the EXEC command is:

     EXEC,<file spec>

 where <file spec> is the name of the command file. The default extension is TXT.
 An  example  will  give  some ideas on how EXEC can be used. One set of commands
 which might be performed quite often is the set to make a new system discette on
 drive  1  (see FORMAT). Normally it is necessary to use FORMAT and then copy all
 .CMD and all .SYS files to the new disc. Finally the  LINK  must  be  performed.
 Rather  than  having  to  type  this set of commands each time it was desired to
 produce  a  new  system disc, we could create a command file called MAKEDISK.TXT
 which contained the necessary commands. The BUILD  utility  should  be  used  to
 create this file. The creation of this file might go as follows:

     +++BUILD,MAKEDISC
       =FORMAT + 1 D D 80 Y 9 SYSTEM 1
       =COPY,0,1,.SYS,.CMD,.LOW
       =LINK,1.WMFLXxxx                   (xxx is the WMS release number)
       =#
     +++

 The first line of the example tells FLEX we wish to BUILD a file called MAKEDISC
 (with the default extension of .TXT). Next, the three  necessary  command  lines
 are  typed  in just as they would be typed into FLEX. The COPY command will copy
 all files with SYS, CMD, and LOW extensions from drive 0 to drive 1. Finally the
 LINK will be performed. Now when we want to create a system disc we only need to
 type the following:

     +++EXEC,MAKEDISC

 We are assuming here that MAKEDISC resides on the same disc which  contains  the
 system  commands.  EXEC  can also be used to simplify the use of many assemblers
 and compilers, i.e. provide a mechanism by which you  can  automate  the  entire
 process.


 IMPORTANT NOTE: The EXEC utility is loaded into  the  very  upper  end  of  user
                 memory. This is done by first loading EXEC into the utility file
                 space, then calculating the proper starting address so  that  it
                 will  reside  right up against the end of the user memory space.
                 Next EXEC is moved to that location and a new end of  memory  is
                 set  to  just below EXEC. When the EXEC file is finished, if the
                 user has not further changed the memory end location, EXEC  will
                 reset it to the original value.

                                   * * F * *


 The Windrush 'F' utility is provided to allow a normal system based text file to
 be  prepared  for  submitting  to  the  spooler.  An  optional  title   may   be
 incorporated,  in  which  case the title and date occur on the top, and the page
 number at the bottom, of each sheet. 'F' fully honours  the  parameters  set  up
 using  the  SETFORM  utility.  If  the  text  file  has  very long lines, F will
 introduce a CR/LF sequence so that the printer width is not exceeded.


DESCRIPTION

 The syntax for 'F' is:

    F,<sfile>[,<dfile>[,<text>]]

 <sfile>    is  a  source  file  which  defaults  to a .TXT extension on the work
            drive. If work is defined as ALL,  'F'  will  search  from  drive  #0
            onwards until the file is found,

 <dfile>    is  the destination file which will become a spooler prepared version
            of <sfile>. It defaults to the same name  as  <sfile>,  with  a  .OUT
            extension  on  the system drive. If system is defined as ALL drive #0
            is used,

 <text>     is the title required on each page and can be a maximum of the  width
            defined  in  SETFORM  less 18. These 18 characters cover the date and
            one space minimum separation between the title and date. The title is
            left  and  the  date  right  justified.  This  puts  a  minimum of 19
            characters on the width to be specified using SETFORM.

            The page number is centered on the page.  Both  the  title  and  page
            number  lines  have  one  guard line associated, and so the printable
            depth will be 4  less  than  specified  in  SETFORM  when  <text>  is
            included.  This  puts  a  minimum  of  5 lines on the printable depth
            defined in SETFORM.


                                  *************
                                  * IMPORTANT *
                                  *************

              If <dfile> is to be completely defaulted AND a title
              is required, <dfile> MUST BE NULLED OUT WITH A COMMA.


                                   * * F * *


 (continued)


 It is very important to realise that <dfile> has  been  given  a  very  powerful
 defaulting mechanism. The following are all valid:

    <#>
    <#>.<body>
    <#>.<body>.<ext>   (conventional)

    <body>
    <body>.<#>
    <body>.<ext>
    <body>.<ext>.<#>   (conventional)

    .<ext>
    .<ext>.<#>


 these are in addition to a complete default. The components are defined as:

    <#>    is a valid drive #,
    <body> is a valid body definition (up to 8 characters),
    <ext>  is a valid extension (up to 3 characters).


 After  being invoked, 'F' displays the source and destination files that it will
 be trying to use. This is to assist the user in knowing just where the file went
 (the  minimum requirement defaults for the destination file are VERY POWERFUL!).
 In the case of <sfile>, a "?" will be shown in place of the drive number if  the
 work  default  is  ALL. This is because the source file could be residing on any
 drive, or none at all.

 Some examples will help to show how the defaults work:

    +++F,BACKUP

 This will Format the file BACKUP.TXT on the work drive into a spoolable  version
 called  BACKUP.OUT  on  the  system  drive. Skips at the top and bottom, and the
 printed depth per page will all honour the current SETFORM parameters.


    +++F,HISTORY,,AN EXAMPLE OF A TITLE !!

 This  will  Format HISTORY.TXT on the work drive into a spoolable version called
 HISTORY.OUT  on  the  system drive. The 24 characters 'AN EXAMPLE OF A TITLE !!'
 will be printed left justified after the top skip with a  right  justified  date
 followed  by  one  spacing  blank  line. On the penultimate line there will be a
 blank spacing line, followed on the ultimate line by a centered "Page <n>" where
 <n>  is  the  current  page  number. As the title and page number eat up 4 extra
 lines, the effective printed depth is 4 lines less than would be printed if  the
 title option was not included.

          YOU  DO NOT NEED TO ALTER SETFORM PARAMETERS IN ANY WAY AS 'F'
          WILL AUTOMATICALLY ADJUST ITSELF TO SUIT THE ADDITIONAL TITLE.


                                   * * F * *


 (continued)


    +++F,INFO.BAK.0,.SCR

 This will format INFO.BAK on drive #0 into a spoolable version  called  INFO.SCR
 on the system drive.


    +++F,DEAD.INF.3,2,RECOVERY OF A DEAD SYSTEM

 This Formats DEAD.INF from drive #3 into DEAD.OUT on drive #2  with  titles  and
 page numbers.


    +++F,PRICES.2,,Summer 1984 price list

 Here a price list text file called PRICES.TXT on  drive  #2  is  Formatted  into
 PRICES.OUT  on the system drive with a suitable title on each page. Note the use
 of double commas to total <dfile> defaulting.


 As  there  are  5  ways of describing the source file, 10 ways of specifying the
 destination and an optional title, there are a total of 100 combinations.  There
 are  far  too many to show examples for ALL possible invocations. The rule is IF
 IT MAKES SENSE TO YOU then 'F' should understand. This is  one  reason  why  the
 file names are displayed for you.


                                * * FASTBACK * *


 The Windrush FASTBACK command is used to make rapid a backup copy of a disc. The
 backed  up  version  will  be identical in every way to the original. As it does
 copying track-by-track and not file-by-file there is no check of  the  structure
 of  the  information.  For  this reason normal COPYing should not be deferred in
 place of FASTBACKing. The verification  phase  of  FASTBACK  may  optionally  be
 suppressed by inclusion of a minus sign.


DESCRIPTION

 The general syntax of the FASTBACK command is invoked:

   FASTBACK,<from>,<to>[,-],N,Y

 <from>         is the source drive.
 <to>           is the destination drive.
 '-'            is the optional 'no verify' which is  about  30%  faster  than  a
                verified  backup.  The  no-verify option is NOT preferred because
                there is no checking that the destination copy is intact.
 N,Y            or a prompt will be issued.

 In the event that there is  an  incompatibility  between  discs,  FASTBACK  will
 report  the  format of the source disc in order to allow the destination disc to
 be similarly formatted.

 We cannot over emphasize that FASTBACK does not check file structure on the disc
 it is copying. If the source disc has a corrupted file on it (with  the  forward
 linkage  corrupted  by  a spurious write for example) the corrupted file will be
 transferred to the destination disc. The TSC 'VALIDATE' utility (part of the TSC
 DIAGNOSTICS package) is about the only utility that will completely check a disc
 for structural flaws. The 'COPY' utility will only trap the more blatent ones!

 FASTBACK  is  provided for those of you out there who do not value their time or
 the data on their discs enough to enforce rigid archive and backup rules.  These
 rules  require rigid self discipline as the backup copies are not reqired 99% of
 the time. The only time that the self discipline pays off is when you  have  the
 enevitable accident, usually caused by operator error or a hardware fault.


                                FOOD FOR THOUGHT

 A  typical  programmers  work  disc generally has in excess of two man-months of
 programming work on it. Most  of  this  work  has  been  tested,  evaluated  and
 debugged. Imagine that you are just logging out of the editor and someone knocks
 the plug out of the wall accidentally or the power fails. The universal laws  of
 chance  are  overwhelmed  by  'MURPHYS LAW' which dictates that any failure will
 occur in the area that will cause the most damage. Thus  the  disc  system  will
 write  random garbage all over the disc directory as the processor goes into its
 death rattle!

 Sure, some of the FLEX 'DIAGNOSTICS' utilities can  help  recover  some  of  the
 files  on the disc. Many files will not be recoverable however and the amount of
 aggravation associated with recovering a disc with a crashed  directory  is  too
 horrific  to  describe! Is the chance of this occuring worth the price of a disc
 and 30 minutes of time to DAILY format a fresh disc and COPY all files from  the
 current disc onto it? Think about it ...

                       DISCS ARE CHEAP, YOUR TIME IS NOT!
                                 * * FDATE * *


 The Windrush FDATE utility will either display or modify a file's creation date.


DESCRIPTION

 The syntax for FDATE is:

    FDATE?[,]<filename>

    FDATE,<filename>

    FDATE,<filename>,<date>


 <filename>     is the filename and defaults to a  .TXT  extension  on  the  work
                drive,

 <date>         is the required new date in the form: DD,MM,YY.


 The first type of call is used to find out the date of the individual file, used
 in preference to either CAT of DIR which give a lot of unrequired information in
 addition.  The  second  type  of call will force the file to appear to have been
 created today, i.e. it uses the current date registers for  modifying  the  file
 creation  date.  Finally  the  last type of call will do the same as the second,
 except that the date will be that which is provided as opposed  to  the  current
 system date. An example of each type follows:


    +++FDATE?PROJECT ... or ...  +++FDATE?,PROJECT (whichever suits you!)

 This  will display the creation date of the file PROJECT.TXT on the current work
 drive.


    +++FDATE,COPY0TO1.CMD

 This  will  update the creation date of the file called COPY0TO1.CMD on the work
 drive so that it appears to have been produced today.


    +++FDATE,2.JUNKET.SCR,1,9,63

 This  will update the creation date of the file called JUNKET.SCR on drive #2 so
 that it appears to have been created on 1 September 1963 !!!


 The main use for FDATE is to put a realistic  date  for  a  file  which  has  an
 illegal  creation date. The WMS DIR and VER utilities, to name but two, will not
 show a date which is invalid. Another use is if YEAR  had  been  used  to  force
 DATECOPY  (another WMS utility) not to copy over files which were created today.
 If, subsequently, more files have been produced, they will reflect the new  year
 (normally something like 99!) unless the YEAR utility had been used to reset the
 real year. In these cases a swift FDATE will restore  a  correct  date  -  after
 resetting the year.


                                  * * FIND * *


 The Windrush FIND utility is used to find a byte string resident in memory.


DESCRIPTION

 The syntax of FIND is:

    FIND,<ssss>,<eeee> <CR>


 <ssss>       is the address of the first byte of the block you wish to search in
              the form of 4 hexadecimal digits.

 <eeee>       is  the address of the last byte of the block you wish to search in
              the form of 4 hexadecimal digits.

 If the syntax of the command is incorrect you will be issued  with  instructions
 on  how to use the command properly! If the syntax is correct the following will
 appear:

 ASCII or HEX?    (A/H) :-

 this  prompting  you  for  the  mode  of the search, ASCII string or a series of
 HEXadecimal bytes.

 If you select ASCII (A) the following prompt will be issued:

 ASCII TEXT :- <string>

 <string>     being up to 16 ASCII characters

              The  search is initiated upon entry of <CR> or 16 ASCII characters.
              The search does not make a  distinction  between  upper  and  lower
              cases in the string supplied or the data being searched.

 If you select HEX (H) the following prompt will be issued:

 BYTES? <nn> <nn> <nn> <nn>

 <nn>         being 2 hexadecimal digits (a byte).

              The  search  is initiated when either a non-hex character, <CR> for
              example, is entered or 16 bytes are entered.

 If no match is found the prompt will be re-issued to allow  you  to  search  the
 same  block  for different data strings. If a match is found a HEX/ASCII dump is
 performed. The address of the first byte of the string is displayed followed  by
 the  6  bytes  which preceed the byte sequence specified as this often serves to
 illuminate the context in which the match was found:

XXXXnn nn nn nn nn nnnnnn nn nn nn nn nn nn nn nn  AAAAAAAAAAAAAAAA
 |                       |
 this ADDRESS ...        |
     corresponds to this BYTE


 The prompt is then re-issued. Hitting any non-hex key at this point will  return
 you smoothly to FLEX.
                               * * FIX * *


 The  Windrush  FIX  utility is used to view or change a binary disc file. A file
 may be FIXed either back to itself, or to another file - thereby preserving  the
 original.  If  no  changes  have  been made the output file is not written as it
 would be redundant!


DESCRIPTION

 The syntax for FIX is:

    FIX,<infile>[,<outfile>]


 <infile>     is  the  input  file which defaults to a .BIN extension on the work
              drive,

 <outfile>    is the output file which defaults to the input filename if  nothing
              is  entered.  Powerful defaulting is used to allow only the minimum
              elements  of  the  filename  specification  to  be  required.   The
              following <outfile> specifications are all legal:

              <#>                  useful for changing drives only
              <#>.<body>
              <#>.<body>.<ext>     conventional

              <body>               useful for changing body only
              <body>.<#>
              <body>.<ext>.<#>     conventional

              .<ext>               useful for changing extension only
              .<ext>.<#>

              these are all in addition to the  complete  default  (i.e.  nothing
              entered).

              <#>                  is a drive number,
              <body>               is a body definition (up to 8 characters),
              <ext>                is an extension (up to 3 characters).


 FIX will load <infile> into memory and display the: nominated input  and  output
 files, blocks used (similar to a MAP (qv) output) and the transfer  address  (or
 absence thereof). This means that files larger than memory from $0000 --> MEMEND
 can not be FIXed. It would be a strange application that used all of  memory  in
 this way so this is not a real restriction in most circumstances.

                                  _____________
                                 W A R N I N G

                  THIS UTILITY MAKES USE OF MEMORY BELOW MEMEND!

                DO NOT CALL IT FROM WITHIN BASIC, PL/9, MACE, ETC.


                               * * FIX * *


 (continued)


 Having loaded the file, you will be prompted for a command.  Hitting  RETURN  or
 space or any invalid command will display the following information:

 --------------------------------------------------------------------------------

 COMMANDS:
 =========

 L                (L)ook at blocks and filenames
 V <from> - <to>  (V)iew a range
 P <addr>         (P)rint 16 bytes from <addr>
 N                print (N)ext 16 bytes
 S                (S)ee previous 16 bytes
 M <addr>         (M)emory modify/examine
 B <from> - <to>  add a (B)lock with nulls
 T                view/change (T)ransfer address
 U                (U)ndo the transfer address
 X                e(X)it without modification
 E                (E)nd - rewrite if any changes.

 NOTEs: <from> must be lower than, or the same as, <to>,
        <from>, <to> and <addr> must be valid hexadecimal characters.


 Command ?

 --------------------------------------------------------------------------------

 The dashed lines are not printed  -  they  are  to  show  the  boundary  of  the
 information displayed.

 Each command will be explained in detail.

 L  is  used  for  displaying  the  filenames,  blocks  used and transfer address
    information. The command executes immediately.


 V  is  used  to  view  a  range  of data (16 bytes per line) in the conventional
    hexadecimal and ASCII formats. Any boundary value may be used and an integral
    number of lines will be printed. Non-existant addresses will show "--" as the
    hexadecimal, and "-" in the ASCII outputs. The command executes on  receiving
    the last address nibble.


 P  is very similar to the "V" command, but only requires the start  address  and
    prints out just 16 bytes worth of data. The command executes on receiving the
    last address nibble.


 N  prints out the next 16 bytes of data - normally used after the  "P"  command.
    The command executes immediately.


 S  allows the previous 16 bytes to be seen - similar to  the  "N"  command,  but
    going backwards in the memory map. The command executes immediately.
                               * * FIX * *


 (continued)


 M  is the memory modify/examine command. It uses the same commands that  GT-BUG9
    uses:

    SPACE-BAR or "+"     advances to the next address,
    "U" or "^" or "-"    retards to the previous address,
    "/"                  re-displays the present data (not much use here!),
    <HEXPAIR>            puts   the   corresponding  data  into  the  address
                         indicated and increments to the next address,
    anything else        will return to the command prompt.

    The command executes on receiving the last address nibble.


 B  is used to add a block of memory. Do not try "B 0000 - FFFF" or you will just
    exhaust memory! If the added block overwrites a previous one, the newer  part
    will  be  visible  to  FIX as will be the actual data after normal loading. A
    block added using this command will be initialised with  nulls.  The  command
    executes immediately.

    NOTE: FIX  does  not  remove redundancy, use COMPRESS (qv) to minimise a file
          with overlays.


 T  immediately  displays  the  present transfer address, or informs you that one
    does not exist. Two options exist:

    RETURN       will return you to command level - acts as a display mode,
    <address>    will update, or add (if none existed), a transfer address to
                 the  file.  A return to command level occurs after receiving
                 the last address nibble.

 U  removes a transfer address from the file. The command executes immediately.


 X  is  used  to exit FIX without writing the file. Most useful if you accidently
    add a 4k block by mis-typing!


 E  ends the FIX. If any changes occurred, the file is written to disc. Should no
    changes have been made, the file is not written. If the output file exists it
    is deleted and then written.


 NOTE 1:  At any stage that a  keystroke  is  required,  ^C  (control-C)  may  be
          entered to terminate FIX in an orderly fashion.

 NOTE 2:  FIX  resolves  multiple transfer addresses, furthermore it ensures that
          it is the last record written to the file. This  is  mentioned  because
          most  boot  loaders  automatically  jump  to  the  transfer  address on
          receiving it. Appending bits and pieces to FLEX will  not  do  anything
          unless  FIX  (or COMPRESS) is used to put the address at the end of the
          file.


                               * * FIXES.SYS * *


 This Windrush supplied file is not a utility, it contains patches and  fixes  to
 the inner workings of FLEX itself.


DESCRIPTION

 The syntax is:

    +++GET,0.FIXES.SYS


 This will load the overlay into memory over the appropriate portions of FLEX. We
 suggest  that you include the above command in your 'STARTUP' sequence. The main
 areas of improvement are:


 1)  Typing ^R (CONTROL-R) for 'REPEAT' will print the last command  line  issued
     to  FLEX and leave the cursor positioned at the end of the line. You can now
     type <RETURN> to re-execute the command line.

     Alternatively  you  may  ammend the end of a command line by <CONTROL-R> and
     <BACKSPACE> over the unwanted characters and then continue as if  the  whole
     lot had been manually typed.

     Finally a mis-spelling at the beginning of a line may be repaired thus:

     +++FORNAT,+7,D,D,80,N<RETURN> ... will give a 'FILE NOT FOUND' error

     ... now type

     +++FORM<CONTROL-R><RETURN>

     This  technique  allows  early mis-spelling to be fixed easily. You may also
     use <BACKSPACE> to  work  toward  the  middle  of  a  command  line,  fix  a
     mis-spelling and then hit <CONTROL-R><RETURN> to execute the command line.


 2)  Accessing  a  drive number greater than #3 (i.e #4 on up) will not result in
     the usual strange behaviour of accessing the drive number specified minus 4!
     i.e.  if you type DIR,4 you will get a directory listing of drive #0 if this
     patch is not in place!


 3)  Hexadecimal  number  letters 'A' through 'F' may be typed in either upper or
     lower case. This patch also applies to  the  low-level  hex  input  routines
     described in the FLEX PROGRAMMERS MANUAL.


 4)  Any attempt to perform a write operation to a write-protected RAM DISC,  for
     example,  will  return a sensible error message instead of 'READ PAST END OF
     FILE'.


 NOTE: The 'CONFIGURED' system disc supplied will have this file already appended
       to FLEX so there is no need to load it again at boot-up.

       Other patches/fixes may be added to this file at a later date.

                                 * * FORMAT * *


 The  Windrush  FORMAT command is used to initialise a disc in order to use it to
 file data and programs. This must be done for all new  discs  and  in  order  to
 retain data integrity should be done as part of a regular archiving operation on
 older discs.

 Single and double density capability is catered for in addition  to  single  and
 double sided formatting. Additionally it is possible on the more advanced 5 1/4"
 96tpi drives (also known as 80 trackers) to emulate a 48tpi drive to enable disc
 interchange  in  the  FLEX standard format of 35 tracks, single sided and single
 density.

 Rapid formatting for a number of similar discs is also included. This is  useful
 for  preparing  a  new  box  of discs for scratch use. When used in this way the
 volume number is automatically incremented and only two single key  strokes  are
 required  once  the  initial  parameters have been defined for the first disc in
 order to produce multiple copies ad infinitum.

 A special inclusion has been provided to enable the directory region of the disc
 to  be  extended  by  one  complete  track from within the fomatter. This is the
 logical place to provide the extension capability and is useful for large system
 discs with many files.

 The  table  below  sumarises  the  the  maximum number of files that can be held
 within the  normal  directory  before  FLEX  will  start  allocating  additional
 sectors,  thereby  fragmenting the directory, which will slow disc accesses down
 appreciably.

 If you elect to extend the directory the table below sumarises the new directory
 entry limits before FLEX will start allocating additional sectors.


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


 NOTE: AS  WITH  MOST WINDRUSH UTILITIES HITTING 'CONTROL-C' AT ANY POINT YOU ARE
       BEING PROMPTED FOR INFORMATION WILL RESULT IN AN IMMEDIATE RETURN TO FLEX.


                                * * FORMAT * *


(continued)


SYNTAX DESCRIPTION

 The general syntax of the FORMAT command has three forms:

 a. FORMAT[,<drive>]

 b. FORMAT,+<drive>,<sides>,<density>,<tracks>,<extend>,(tpi)[,<name>[,<no.>]]

 c. I <filespec> FORMAT


 <drive>   is a valid drive number, e.g. 0 through 8.

 <sides>   is either S or D for single and double respectively.

 <density> is either S or D for single and double respectively.

 <tracks>  is a decimal number from 3 up to the number allowed on the drive.

 <extend>  is either Y or N for Yes or No respectively.

 (tpi)     is  either  4  or  9  for 48tpi or 96tpi respectively and MUST ONLY be
           included for 5 1/4" drives which are capable of holding more  than  40
           tracks and MUST NOT be included otherwise,

 <name>    is a valid filename in the form: 'XXXXXXXX.XXX'

 <no.>     is the integer volume number (0 - 65535)

 The name and number are optonal in the specification, and will default to a name
 of "FLEX6809.WMS", number 0.


 A special provision and a word of caution is in order for owners of 80 track (96
 tpi) disc drives. As you may or may not know the accepted industry standard  for
 transmitting  FLEX  software  on 5 1/4" discs is to supply them in single sided,
 single density, 35 track, 48 tpi format. Windrush FLEX will automatically adjust
 itself  to  'double-step'  the 80 track disc drives in order to 'READ' a disc in
 this format. Since the 48 tpi tracks are physically wider than 96 tpi tracks the
 converse  it  not  true.  You  should NEVER WRITE to a 48 tpi disc that has been
 formatted by a 48 tpi drive if you expect the 48 tpi drive to be able to read it
 reliably.

 It  is,  however,  possible for you to format a fresh disc (or one that has been
 bulk erased) on your 96 tpi drives so that it can be read on a 48 tpi drive.  If
 you  have  an 80 track 96 tpi disc drive and you specify 35/40 tracks and 48 tpi
 as the desired format the formatter will 'zap' all of the odd tracks on the disc
 to 'erase' the existing data before it begins formatting the disc.

 Generally  speaking  you  should  only  use this technique with fresh discs as a
 small amount of signal (in the guard-band) will remain if the disc was formatted
 by  a 48 tpi drive. In an emergency you can, in practice, format a disc that was
 previously formatted by a 48 tpi disc drive and get away with it  9  out  of  10
 times ... we do not recommend that you do it as a general rule however.

                                * * FORMAT * *


 (continued)


INTERACTIVE OPERATION

 Syntax:   FORMAT[,<drive>]


 The first form of FORMAT is the fully  interactive  call  which  is  useful  for
 one-off  discs  and  rapid  formatting  of several discs to the same format. The
 drive  number  is  optional  in the call. If the drive number is not supplied it
 will default to the current work drive. The following  dialogue  occurs  between
 the system and the user:

    PROMPT                    RESPONSE

 Scratch in DRIVE #n            ? Y or N          - if Y skip the next line
 Correct Drive #                ? valid #    <CR> - then back to previous line
 Single or Double SIDED         ? S or D
 Single or Double DENSITY       ? S or D
 No. of TRACKS to FORMAT        ? 3 -> n     <CR> - n is maximum for drive
 EXTEND the DIRECTORY           ? Y or N
 48tpi or 96tpi                 ? 4 or 9          - ONLY with 80 track drives
 Volume NAME                    ? <filename> <CR> - can default (see above)
 Volume NUMBER                  ? 0-65535    <CR> - can default (see above)


 Once the information has all been entered, it will be re-displayed to  show  all
 answers and any of the defaults and then:

 Is the above CORRECT           ? Y or N


 If the response is N, the formatter will start over, otherwise:

 **  ABORT THE FORMAT  **       ? Y or N


 If the response is N, the formatter will return directly to FLEX, otherwise  the
 format  will  take  place. In the case of 48tpi emulation, a ZAPPING action will
 tack place to zero all intermediate tracks (i.e odd tracks) to  cut  down  cross
 talk on a 40 track drive attempting to read the disc.


 After completion of the format, then:

 Do another FORMAT              ? Y or N


 If  the  response  is  N,  the  formatter  will  return  to  FLEX, otherwise the
 information will be re-displayed (with the volume number auto-incremented) and:

 Same FORMAT as the above       ? Y or N

 If  the  response  is  Y,  the  formatter  will start formatting again using the
 information being displayed, if N then the prompts will be started over from the
 top  again.  This  looping can be carried on ad infinitum. It makes sense to put
 different discs in between formats !
                                 * * FORMAT * *


 (continued)


COMMAND LINE OPERATION

 Syntax:   FORMAT,+<drive>,<sides>,<density>,<tracks>,<extend>,(tpi),<name>,<no.>


 This form of the FORMAT command is for the more experienced user and enables you
 to  quickly  format a disc without going through the question/answer dialogue of
 the previous form of the call.

 This form of the FORMAT call should be used with caution as it  does  not  issue
 any  prompts  that  will  stop it from formatting your system disc if you make a
 mistake. The formatter will, however, obey the current software  'PROTECT'  (qv)
 of  the  disc drive that is specified for formatting and is smart enough to know
 if it is being 'aimed' at the RAM-DISC or a Winchester partition.


 The following examples illustrate typical command line entries for a system with
 a 40 track, 48 tpi 5 1/4" drive as drive #1, an 80 track, 96 tpi 5 1/4" drive as
 drive #2, and a 77 track, 48 tpi 8" drive as drive #3.


 a. FORMAT +1,S,S,35,N,TEST,1       Formats  drive  #1  as  single  sided, single
                                    density, 35 tracks, no  directory  extension,
                                    name of 'TEST', volume number '1'.

 b. FORMAT +2,D,D,80,Y,9,TEST,1     Formats  drive  #2  as  double  sided, double
                                    density, 80 tracks, extends the directory, 96
                                    tpi, name of 'TEST', volume number '1'.

 c. FORMAT +2,S,S,40,N,4,TEST,1     Formats  drive  #2  as  single  sided, single
                                    density, 35 tracks, no  directory  extension,
                                    48  tpi  (emulation),  name  of  TEST, volume
                                    number '1'.

 d. FORMAT +3,D,S,77,N,TEST,1       Formats drive  #3  as  double  sided,  single
                                    density,  77  tracks, no directory extension,
                                    name of 'TEST', volume number '1'.


 Further  commands may follow this type of call if required by using the FLEX end
 of line (specfied by TTYSET 'EL') separator (usually ':'). For example supposing
 you want to make a duplicate copy of your systems disc:

 FORMAT +1,D,D,80,Y,9,NEWSYS,2:COPY,0,1:LINK 1.WMFLXxxx.SYS<CR>

 This  form  of  the  formatter  can also be included in commands produced by the
 Windrush text expansion generator command called MAKECMD.

 All the parameters are as for the first type of call except that  to  produce  a
 specific  volume  number,  the  volume  name must be supplied. With this type of
 call, only one format is produced i.e. no looping takes place.


                                 * * FORMAT * *


 (continued)


INPUT RE-DIRECTION OPERATION

 Syntax:   IN,<filespec>,FORMAT


 This  form of the FORMAT call is for those of you that are familiar with SWTP or
 GIMIX FLEX and are used  to  running  the  formatter  via  the  the  FLEX  input
 redirection  facility,  the  'I'  command.  In  this  instance  you must use the
 Windrush 'IN' command in lieu of 'I'.

 Use  of  the 'MAKECMD' utility is preferred to this technique but if you are set
 in your ways you can continue to use the 'IN' command as you have  done  in  the
 past.

 This method of using the formatter requires that you  first  make  a  text  file
 (using  your  editor  or  the 'BUILD' command) containing a string of answers to
 the second form of of the command as follows:

 The format of the file containing answers is identical to the parameter list  in
 a  command  line  call, the only exclusion being the '+' which identifies to the
 formatter that a command line call is being invoked.  The  basic  syntax  is  as
 follows:

 <drive>,<sides>,<density>,<tracks>,<extend>,(tpi),<name>,<no.>


 The file can only contain a single line, e.g.:

 2,D,D,80,Y,9,TEST,1                Formats  drive  #2  as  double  sided, double
                                    density, 80 tracks, extends the directory, 96
                                    tpi, name of 'TEST', volume number '1'.


 As a point of interest, the parameters may optionally be followed by any  normal
 FLEX commands - even though the 'IN' command is being used.


 e.g.

 2,D,D,80,Y,9,TEST:COPY,0,1:LINK,1.FLEX.SYS


 Use of the 'IN' command is not too difficult, but why bother ? -  this  type  of
 call  first  requires  that  you  build a text file and subsequently involves an
 extra file access to get the input file from disc and so is longer in  operation
 than the MAKECMD type of command described in the next section.


 NOTE:  Only  the  Windrush  'IN'  command  may  be  used in this manner. The 'I'
        command supplied by TSC will not work properly. These two  utilities  can
        be  distinguised from one another as the Windrush utility echos all input
        and output to the console while the TSC utility operates in the blind.
                                 * * FORMAT * *


 (continued)


MAKECMD OPERATION

 'MAKECMD' takes a FLEX command line and converts it into a disc resident command
 that you can call as you would any other command. This utility can take a lot of
 the tedium out of the routine formatting and copying of discs.

 For  example  you can make a command called 'FORMDISK' which formats a disc to a
 predetermined format as follows:

 MAKECMD,0.FORMDISK,FORMAT,+,1,D,D,80,N,9


 After  the  above  is  typed  in  you  will have a command called 'FORMDISK.CMD'
 resident on drive #0. Whenever you want to format a  fresh  disc  it  then  only
 necessary  to type: FORMDISK<CR> and the disc in drive #1 will be formatted. The
 form illustrated will supply the default name and volume number. If you want  to
 change  them you can use the 'NAME' utility or supply the name/number as part of
 the command string when using 'MAKECMD'.

 Another useful command to make is 'ARCHIVE' which will format a fresh  disc  and
 copy all files from the old disc to the freshly formatted disc, viz:

 MAKECMD,0.ARCHIVE,FORMAT,+,1,D,D,N,9,ARCHIVE,1:COPY,0,1

 In the above example we supplied the name and  volume  number  as  part  of  the
 command.  We  then  used  the  FLEX command separator ':' to set up the COPY,0,1
 command to follow the FORMAT command. The only restriction to this is  that  the
 total length of the command made by MAKECMD must not exceed 128 characters.


MAKING A NEW SYSTEM DISK

 Whenever you wish to make a new 'FLEX' system disc which can be used to boot the
 operating system you should proceed as follows:

 1. Format a fresh disc using the FORMAT command.

 2. Copy the file called 'ERRORS.SYS' to the disc just formatted.

 3. Copy the file called 'WMFLXxxx.SYS' to the disc just formatted.

 4. Use the LINK command to link the file called 'WMFLXxxx.SYS'.

 The disc thus created can be considered a minimum files system  disc.  The  file
 called  ERRORS.SYS is not actually required to make a bootable disc but if it is
 not preset FLEX will report any errors with numbers rather  than  text  messages
 which  makes  life  a bit more difficult! We suggest that the file ERRORS.SYS be
 copied to the disc first as this will speed up DOS error reporting.

                                  _____________
                                 W A R N I N G

                    THIS UTILITY RUNS IN MEMORY BELOW MEMEND!
                DO NOT CALL IT FROM WITHIN BASIC, PL/9, MACE, ETC.
                                * * FREEMAP * *


 The Windrush FREEMAP utility allows the linked list of free sectors on a disc to
 be reformed so that subsequently created files have the  best  chance  of  being
 formed contiguously and with minimum head movement.


DESCRIPTION

 The syntax for FREEMAP is:

    FREEMAP,<drive>

 <drive> is a valid on-line drive.


 An example of invoking FREEMAP follows:

    +++FREEMAP,2

 This would reform the free chain of drive # 2.


 FREEMAP operates by doing two passes through the disc. On  the  first  pass  the
 complete  free  chain  is  read,  and a sector map is formed for those groups of
 sectors which are logically adjacent. The second, and  final,  pass  alters  the
 free  chain pointers in order to make the free chain linear (in a logical sense)
 starting from the outermost track (track # 0) to the innermost track.

 It is important to realise that following a FREEMAP operation  on  a  disc,  the
 structure  of  deleted  files may be corrupted (this will only occur if the file
 was fragmented when originally created). This information is imparted as it  may
 not  be  obvious  that  a  utility, such as the TSC 'UNDELETE', recovers deleted
 files from the free chain. For this reason if a fragmented file is  deleted  and
 then the disc has its free chain restructured by FREEMAP it will not be possible
 for UNDELETE to recover the file.


           * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
           *                                                         *
           * THIS UTILITY OPERATES IN MAIN MEMORY AND NOT IN THE TCA *
           *                                                         *
           *   DO NOT INVOKE FROM WITHIN BASIC, PL/9, MACE, ETC    *
           *                                                         *
           * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


                                * * FSTATUS * *

 FSTATUS  is  a  Windrush  utility  that is used in conjunction with the Windrush
 enhanced disc drivers, to give status information about the floppy discs.


 DESCRIPTION

 The syntax for FSTATUS is:

    FSTATUS

 After typing the command name, all the floppy tables are interrogated in turn to
 find out how they are configured. Any drives which are off-line are  assumed  to
 be  'as-they-were'  and  the  data tables are assumed to be correct. The on-line
 drives are actually exercised by reading a sector on track #2. This  will  force
 auto-configuration,  if  required, in order to give the correct information. You
 could also use DIR (qv) which displays the number of sides, density  and  number
 of tracks in it's header information.


 For each drive the following information is displayed:

   SYSTEM #      (only applicable to on-line drives),
   MECHANISM #   (the drive's physical number),
   TYPE          be it 5 1/4" or 8",
   STEP SPEED    either 3,6,10,12,15,20 or 30ms,
   TRACKS        the number of physical tracks on the disc,
   DENSITY       either single or double,
   TRACKING      either NORMAL or EMULATE 48tpi.

 It  may  seem strange, but the drivers themselves do not know how many sides the
 disc has - nor do they need to! They do know how many sectors there are on  each
 side of a disc (any density, any size), and so know when to change to side #1 as
 a function of the sector required. It is for this reason that mention  was  made
 of  DIR which actually reads the SIR (System Information Record) of the disc and
 can work out sides and densities from that information.


                                      GET


 The GET command enables you to load a binary file into memory at  its  'natural'
 address range. GET cannot be used to 'offset' load a binary file, 'LOAD' (qv) is
 provided for this purpose.

 The  description  of  GET  does  not  really  belong  in  this  section as it is
 classified as a 'memory resident' utility and was documented  earlier.  Being  a
 memory  resident  utility  it  is  not present on disc, it is loaded into memory
 whenever you boot FLEX.

 Over  the  years  we  have  found that so many people have failed to notice this
 command description we have decided to include a description of it with the rest
 of the FLEX disc utilities.


DESCRIPTION

 The syntax of GET is:

    GET,[<file name list>]

 where ...

 <file name list> is: <file spec>[,<file spec>] etc.

 <file spec>      is: a standard FLEX file name  with  'BIN'  being  the  default
                      extension.


 The action of GET is to load the file or files specified in the list into memory
 for later use.


    GET,TEST

 would load the file named 'TEST.BIN' from the assigned working drive.


    GET,1.TEST,0.TEST2.CMD

 would load  the  file  named  'TEST.BIN'  from  drive  #1  and  the  file  named
 'TEST2.CMD' from drive #0.


 NOTE:  If  you  need  to  load  a  file into memory at an address other than its
        'natural' address, as defined by the 'MAP' utility  (qv),  refer  to  the
        description of the Windrush 'LOAD' utility.


                                       I


 The  I  command  allows  a  utility  to obtain input characters from a disc file
 rather than the terminal.


DESCRIPTION

 The general syntax of the I command is:

     I,<file spec>,<command>

 where  <file  spec> is the name of the file containing the characters to be used
 as input and <command> is the FLEX utility command that  will  be  executed  and
 that  will  receive  that input from <file spec>. The default extension on <file
 spec> is .TXT.

 For example, say that on a startup you always wanted the file  DATA.DAT  deleted
 from the disc without having to answer the "ARE YOU SURE?" questions. This could
 be done in the following manner:

     +++BUILD,YES
     =YY
     =#

 The first Y will answer the "DELETE 0.DATA.DAT?" question  while  the  second  Y
 will answer the "ARE YOU SURE?" question.

     +++BUILD,STARTUP
     =I,YES,DELETE,DATA.DAT
     =#

 Upon  booting  the  disc,  FLEX  will  execute  the STARTUP file and perform the
 following operation: delete the file  DATA.DAT  receiving  all  answers  to  any
 questions from the input file YES.TXT rather than from the terminal.

 See the description of the STARTUP command for more information on STARTUP.


 NOTE:  Windrush also supply an 'IN' command with the same  basic  function.  The
        main difference between the two is that the TSC utility does not echo the
        information coming from the input file to the screen.


                                   * * IN * *


 The  Windrush  IN utility allows input to be fetched from a disc based text file
 instead of the keyboard as does the TSC 'I' command. Unlike the TSC 'I'  command
 'IN' will echo all 'input' from the disc to the system console.


DESCRIPTION

 The syntax for the IN command is:

    IN,<tfile>,<command>

 <tfile>        is the filename of the file which contains the text to be used in
                the command,

 <command>      is the command that is required to be executed.

 When a command is invoked with this preamble, it will take any  input  from  the
 text  file  <tfile>  just  as though it had been typed from the keyboard. Unless
 specified commands, namely certain Windrush ones, say anything to the  contrary,
 the  format  of  the  <tfile>  is  exactly  as  would be typed normally. <tfile>
 defaults to a .TXT extension on the WORK drive.

 The reason that the Windrush commands may be different is in those cases where a
 utility  has a command line invocation, e.g. FORMAT or SETUP. In these cases the
 format of the <tfile> can be very confusing as some inputs  require  a  <RETURN>
 after typing and some get a keystroke immediately. For this reason FORMAT, SETUP
 and possibly future  utilities  will  take  a  <tfile>  input  string  which  is
 identical to it's command line call counterpart.

 Given the following text file:

 1.UP_DATE.TXT is a file which contains just 3 characters: a <RETURN>, a <RETURN>
 and finally a "Y", being created thus:

    +++BUILD,1.UP_DATE
    #<RETURN>  <-------- hit 'carriage return' on your keyboard
    #<RETURN>
    #Y
    ##

 an example of a case for the use of the IN command follows:

    +++IN,1.UP_DATE,NAME

 The  NAME  command allows changing the volume name, version number and date of a
 disc. Entering <RETURN> to a prompt will  leave  the  original  unchanged.  This
 means  that  the  example  will: invoke the NAME command, leave the name intact,
 leave the volume number intact, change the date to today's date.

 It is the ability to re-direct the I/O so that input comes from a file that  can
 give a great deal of flexibility to operating some of the more complex commands.

 In summary - any command that gets input from the keyboard via 'GETCHR' could be
 invoked using "IN" so that the actual data comes from a prepared text  file.  By
 having  several  different  files,  the  way that the command operates becomes a
 function of the actual <tfile> specified.


                                * * INTELHEX * *


 This Windrush utility is used to dump a FLEX binary file out in INTEL HEX format
 via the currently defined printer port. The  main  use  of  the  utility  is  to
 download code to an EPROM programmer or an EMULATOR.


DESCRIPTION

    INTELHEX,<file spec>


 where <file spec> is the name of a FLEX binary file.


 Since Windrush supply the system disc configured for a parallel printer invoking
 this utility will cause the output to appear on the system printer (if on  line)
 or  will  cause  the system to lock-up if the printer is not connected or is off
 line.

 If you wish to direct the output to one  of  the  available  (optional  in  some
 system  configurations)  serial ports simply load the appropriate serial printer
 driver:

    GET,SPRINT-X.SYS <CR>

 Refer to 'SPRINT-X.SYS' which is documented elsewhere.


 Don't forget to re-instate the standard printer driver when you are through:

    GET,PRINT.SYS <CR>


 NOTE: If you wish to create a disc file rather than output to the printer  refer
       to the MAKEHEX utility.


                                      JUMP


 The JUMP command is provided for convenience. It is used to start execution of a
 program already stored in computer memory.


DESCRIPTION

 The general syntax of the JUMP command is:

     JUMP,<hex address>

 where <hex address> is a 1 to 4 digit hex number representing the address  where
 program execution should begin. The primary reason for using JUMP is if there is
 a long program in memory already and you do not wish to load it off of the  disc
 again.  Some  time  can  be saved but you must be sure the program really exists
 before JUMPing to it!

 As an example, suppose we had a BASIC interpreter in memory and it had  a  'warm
 start'  address  of  103  hex.  To  start  its  execution  from FLEX we type the
 following:

     +++JUMP,103

 The BASIC interpreter would then be executed. Again, remember that you  must  be
 absolutely sure the program you are JUMPing to is actually present in memory.


                              * * KERNEL-H.SYS * *


 This  file,  or  KERNEL-N.SYS,  will be an integral part of your configured FLEX
 disc and is used by SPLTITLE (qv) to read the system clock for use when printing
 the banner page.

 KERNEL-H  is  based on the Hitachi HD146818 real time clock chip and it gets the
 clock's address from the system. In the event that the clock is the wrong  type,
 or  the  address  appears to be corrupt, it will return a time of 01:01:01 and a
 day of the week of Monday.

 This file is only present on the unconfigured disc to enable you to  build  your
 own verion of FLEX by APPENDing the various elements you want.


                              * * KERNEL-N.SYS * *


 This  file,  or  KERNEL-H.SYS,  will be an integral part of your configured FLEX
 disc and is used by SPLTITLE (qv) to read the system clock for use when printing
 the banner page.

 KERNEL-N  is  based on the National MM58167 real time clock chip and it gets the
 clock's address from the system. In the event that the clock is the wrong  type,
 or  the  address  appears to be corrupt, it will return a time of 01:01:01 and a
 day of the week of Monday.

 This file is only present on the unconfigured disc to enable you to  build  your
 own verion of FLEX by APPENDing the various elements you want.


                                 * * LCASE * *


 This Windrush utility is supplied  specifically  to  convert  PL/9  source  file
 statements from UPPER to lower case letters.


DESCRIPTION

 The command line syntax of this utility is:

    LCASE,<filespec>

 where <filespec> is any PL/9 source file.


 The utility is intelligent enough to leave the following arguments intact:

 1. A comment field, e.g. /* COMMENT */

 2. A string enclosed within double quotes, e.g. "STRING"

 3. A character following a single quote, e.g. 'A


                                  _____________
                                 W A R N I N G

            THIS UTILITY RUNS IN AND MAKES USE OF MEMORY BELOW MEMEND!

                DO NOT CALL IT FROM WITHIN BASIC, PL/9, MACE, ETC.


                                      LINK


 The  LINK  command is used to tell the bootstrap loader where the FLEX operating
 system file resides on the disc. This is necessary each time a  system  disc  is
 created  using  'FORMAT'.  The  FORMAT  utility  should be consulted for further
 details on the use of LINK.


DESCRIPTION

 The general syntax of the LINK command is:

     LINK,<file spec>

 where  <file spec> is usually 'WMFLXxxx.SYS'. The default extension is SYS. Some
 examples of the use of LINK follow:

     +++LINK,WMFLXxxx
     +++LINK,1.WMFLXxxx

 The  first example will LINK WMFLXxxx.SYS on the working drive, while the second
 example will LINK WMFLXxxx.SYS on drive 1. For more advanced details of the LINK
 utility, consult the Advanced Programmers Guide.

 NOTE: 'xxx' is the Windrush release number.


                                      LIST


 The LIST command is used to LIST the contents of text  or  BASIC  files  on  the
 terminal.  It  is  often  desirable  to examine a files without having to use an
 editor or other such program. The LIST utility allows examining entire files, or
 selected  lines  of  the  file. Line numbers may also be optionally printed with
 each line.


DESCRIPTION

 The general syntax of the LIST command is:

     LIST,<file spec>[,<line range>][,+(options)]

 where the <file spec> designates the file to be LISTed (with a default extension
 of TXT),and <line range> is the first and last line number of the file which you
 wish to be displayed. All lines are output if no range specification is given.

 The  LIST command supports two additional options. If a +N option is given, line
 numbers will be displayed with the listed file. If a +P  option  is  given,  the
 output will be formatted in pages and LIST will prompt for "TITLE" at which time
 a title for the output may be entered. The TITLE may  be  up  to  40  characters
 long. This feature is useful for obtaining output on a printer for documentation
 purposes (see P command). Each page  will  consist  of  the  title,  date,  page
 number, 54 lines of output and an ASCII formfeed character ($0C). Entering a +NP
 will select both options. A few examples will clarify the syntax used:

     +++LIST,RECEIPTS
     +++LIST,CHAPTER1,30-200,+NP
     +++LIST,LETTER,100

 The  first example will list the file named 'RECEIPTS.TXT' without line numbers.
 All lines will be output unless the 'escape character' is used as  described  in
 the Utility Command Set introduction. The second example will LIST the 30th line
 through the 200th line of the file named 'CHAPTER1.TXT'  on  the  terminal.  The
 hyphen  ('-') is required as the range number separator. Line numbering and page
 formatting will be output because of the '+NP' option. The last example shows  a
 special  feature  of  the  range specification. If only one number is stated, it
 will be interpretted as the first line to be displayed. All lines following that
 line  will also be LISTed. The last example will LIST the lines from line 100 to
 the end of the file. No line numbers will be output since the 'N' was omitted.


                                  * * LOAD * *


 The Windrush LOAD utility allows a program or binary  file  to  be  loaded  into
 memory  at  an  absolute address, and informs what the new start address is if a
 program is loaded.


DESCRIPTION

 The syntax of the LOAD utility is:

 LOAD,<address>,<fname>

 <address>      is the base address where the <fname> will be loaded in memory,

 <fname>        is the filename of the command or binary file to be loaded.


 The defaults for <fname> are a .BIN file on the assigned work drive.

 LOAD  has  two  main uses: loading binary files into RAM memory so that an EPROM
 may be programmed, loading a command/utility which has been written in  Position
 Independent Code (PIC) in readiness for it's execution (or debugging) at the new
 address. An example of each use follows:


  +++LOAD,0000,1.NEW_MON.BIN
  +++LOAD,1000,DEBUG


 The  first  example  will load what would appear to be a new version of a system
 monitor into memory starting at $0000. This could be a prerequisite of an  EPROM
 programmer  which  does not itself contain a binary file offset loader. The fact
 that there is no transfer address will be indicated.

 The second example will load the TSC DEBUG utility into memory at a base address
 of  $1000  and  the  transfer  address,  in  this case $1000, will be indicated.
 Execution at this address (via the JUMP command) will perform a  cold  start  of
 the DEBUG package.


 Two  points should be borne in mind about LOAD. Firstly it DOES NOT ALTER ANY OF
 THE CODE THAT IS LOADED, it  merely  positions  it  in  memory  at  a  different
 address.  For this reason, any command/utility which is expected to be relocated
 and execute at the new address ...


               * * * * * * * * * * * * * * * * * * * * * * * * * *
               *                                                 *
               *  MUST BE WRITTEN IN POSITION INDEPENDANT CODE!  *
               *                                                 *
               * * * * * * * * * * * * * * * * * * * * * * * * * *


                                  * * LOAD * *


 (continued)


 The second point is that LOAD has no way of knowing the  structure  of  all  the
 different sections of the file that it may have to load, it therefore places the
 first binary record loaded at the base address specified.  All  further  records
 will  load  into  memory  with  the same offset applied. If the file comprises a
 series of blocks of code at incrementing starting addresses, as will be the case
 for most programs, no special action need be taken when using 'LOAD'.

 If,  however, you are one of those people who write programs with blocks of code
 at higher addresses in front of blocks of code at lower addresses you must do  a
 bit of extra work before using 'LOAD'. The following example will clarify this:

    +++MAP ODD_BALL.BIN.1

    C600 - C6E7
    C100 - C107
    C118 - C4C9

    TRANSFER ADDRESS is at $C3DF

 Given the above program map, consider the following invocation of LOAD:

    +++LOAD,0,ODD_BALL.BIN.1

 The addresses actually loaded into will be:

    C600 - C6E7   -->  0000 - 00E7
    C100 - C107   -->  FB00 - FB07
    C118 - C4C9   -->  FB18 - FEC9

    TRANSFER ADDRESS is at $FDDF

 This is obviously a mistake as the code  will  have  attempted  to  overlay  the
 monitor.  The only reason for this quirk is that the code is mapped in a sort of
 backward way. To overcome this it should be noted that the lowest  address  from
 MAP  was  $C100  and  further  that the first address encountered was $C600. The
 following formula will then hold true:

       LOAD ADDRESS = REQUIRED CODE BASE + FIRST ADDRESS - LOWEST ADDRESS

 In the example then:

                  LOAD ADDRESS = 0 + $C600 - $C100    i.e. $0500

 So using the following invocation:

  +++LOAD,500,ODD_BALL.BIN.1

 The addresses actually loaded into will be:

  C600 - C6E7   -->  0500 - 05E7
  C100 - C107   -->  0000 - 0007
  C118 - C4C9   -->  0018 - 03C9

  TRANSFER ADDRESS is at $02DF

                                * * MAKEBIN * *


 This Windrush utility translates a Motorola or Intel hex record file into one or
 more FLEX binary files on the same drive. An optional flag  specifies  that  the
 output be split into separate files containing even and odd bytes.


DESCRIPTION

 The utility is called as follows:

    MAKEBIN,<name>,[+]

 where <name> is a valid FLEX file specification. The trailing + is optional,  as
 indicated by the [] brackets (these should NOT be typed), and signifies that you
 want the resulting file(s) split into even and odd bytes for use with the  68000
 (et al).

 One  or  more  output files may result. Each has the name of the file specified,
 with an extension that indicates what the file contains, as follows:

 NAME.Pxx    where xx is two hex digits is the result if  the  +  option  is  not
             specified.  The  file contains all of the data present in the source
             file that is origined in page xx (where a page is  64k  bytes).  For
             example,  NAME.P00  is  the  output  for  any 6809 program. NAME.P01
             contains data in the address range  10000-1FFFF,  NAME.P02  contains
             data  in the address range 20000-2FFFF and so on up to NAME.PFF, the
             highest page on a 68000.

 NAME.Hxx    are a pair of files that result if the + option is used. The data is
 NAME.Lxx    split  into  even  and  odd  bytes,  corresponding to most and least
             significant,  respectively,  for  a  68000.  The  xx  has  the  same
             significance as for the Pxx files described above. Note that because
             only half as much data is contained in each file, the  maximum  size
             of a file is 32k bytes, with an address range from 0000 to 7FFF.


 The  most  common  use of this utility is to prepare the output of a 68000 cross
 assembler or cross-compiler for use with the  Windrush  EPROM  programmer  which
 requires that the files be FLEX binary file format.


                                  _____________
                                 W A R N I N G

            THIS UTILITY RUNS IN AND MAKES USE OF MEMORY BELOW MEMEND!

                DO NOT CALL IT FROM WITHIN BASIC, PL/9, MACE, ETC.


                                 * * MAKECMD * *


 The Windrush MAKECMD utility allows a set of FLEX command  calls  to  be  strung
 together  to  make  one command. This may not sound like much but once you start
 using it you will wonder how you ever got along without it!


DESCRIPTION

 The syntax for MAKECMD is:

    MAKECMD,<filename>[<comnd>]

 <filename>     is the name of the command being produced/examined which defaults
                to a .CMD extension on the system drive,

 <comnd>        is ,<command>[<params>][<sep><comnd>]


 <command>      is a system command,

 <params>       is the optional parameter list for the <command>,

 <sep>          is the current TTYSET 'EL' separator, usually a colon ':'.

 If  the  above syntax frightens you, don't worry - it is because MAKECMD is very
 powerful. The recursive definition of <comnd> means that MANY different commands
 may  appear  one  after the other when separated by the present TTYEOL character
 (normally a ":" on default). By leaving off the <comnd> altogether, the existing
 <filename> will be displayed on the terminal.

 MAKECMD works by doing a direct text  substitution  of  the  command  list  when
 invoked  by the actual <filename>. This is mentioned in case a generated command
 list includes another MAKECMD generated command  !!!.  If  a  generated  command
 includes  a  generated  command invokation the rest of the original command list
 will be replaced by the new list. On the other hand, generated commands  may  be
 made to "chain" onto the end of each other which can be highly useful.

 The following examples should unravel the foregoing:

    +++MAKECMD,BACKUP

 This  is  the "examine" mode of using MAKECMD. The text that will be substituted
 for "BACKUP" is displayed on the terminal.

    +++MAKECMD,DIR_TXT,DIR,0,1,.TXT

 This  will  produce  a  command called "DIR_TXT.CMD" on the system drive. Typing
 DIR_TXT would then cause DIR,0,1,.TXT to "appear" to have been typed, the effect
 being to print the file names on drive #0 and then #1 with a .TXT extension.


                                * * MAKECMD * *


 (continued)


    +++MAKECMD,ZAP_TXT,DIR,0,1,.TXT:ZAP,0,1,.TXT

 This will produce a command called "ZAP_TXT" on the system drive. Typing ZAP_TXT
 would then cause:

    DIR,0,1,.TXT:ZAP,0,1,.TXT

 to "appear" to have been typed, the effect now being to print the file names  on
 drive  #0  and  then and #1 with a .TXT extension, then to ZAP those files. This
 allows the user to see if anything important is about to disappear,  and  in  so
 doing  allow  abort of the ZAP by the ^C (control-C) breakout before the file is
 erased.

 The examples have gradually increased in complexity from a simple  "examination"
 of  an  existing file, through building a single command and then on to building
 multiple commands. The final example shows how to produce a set of commands that
 all  chain  each other - WHY BOTHER? The EXEC command is sometimes inappropriate
 for certain tasks, eats into MEMEND and takes  longer  to  load  than  a  single
 sector!

 Let us assume that two "macros" (for want of a better word) are to  be  required
 for making system backups: one to a single density disc, one to a double density
 disc. Further, let us require all .SYS files to be copied first, followed by all
 .CMD  files  and  finally  the  rest of the files on the source disc. The backup
 shall be made from drive #0 to drive #1. For this task  three  files  should  be
 made as follows:

    +++MAKECMD,COPY_SYS,COPY,0,1,.SYS,.CMD:N,COPY,0,1
    +++MAKECMD,MAKSDSYS,FORMAT,+1,D,S,80,Y,9,ARCHIVE.SYS,1:COPY_SYS
    +++MAKECMD,MAKDDSYS,FORMAT,+1,D,D,80,Y,9,ARCHIVE.SYS,1:COPY_SYS

 This has produced three macros: COPY_SYS, MAKSDSYS and MAKDDSYS.

 Typing COPY_SYS at any time will do the actual copying as required.

 Typing  MAKSDSYS  will  firstly  format  drive  #1  as  single density (q.v. the
 Windrush FORMAT utility documentation) and  then  invoke  the  COPY_SYS  by  the
 chaining, thereby copying as required.

 Typing  MAKDDSYS  will firstly format drive #1 as double density and then invoke
 the COPY_SYS by the chaining, thereby copying as required.

 It is far more preferable to use the new  macros  than  type  out  the  complete
 command  lines each time a backup is needed - if only because the probability of
 mis-typing is greatly reduced!


 NOTE:    MAKECMD  always  produces  a  single  sector  -  never  more.  As   the
          substituted  text is placed directly into FLEX's input buffer a command
          line can be up to 127 characters long plus the closing <RETURN>. If the
          length is in doubt use MAKECMD to examine the produced command and this
          can be ascertained.


                                * * MAKEHEX * *


 This Windrush utility translates any FLEX binary file into another file  on  the
 same  drive, containing hex records in either Motorola, Intel or Tektronix ASCII
 format. The output file has the same name as the original but with a .MOT,  .INT
 or .TEK extension as appropriate.


DESCRIPTION

 The command line looks like this:

 +++MAKEHEX <FILENAME> [M/I/T]

 where the optional parameter is  one  of  the  three  letters.  The  default  is
 Motorola hex if nothing is specified.


 The most common use of this utility is convert binary files in  preparation  for
 transmission to another system or accessory.


                                  _____________
                                 W A R N I N G

            THIS UTILITY RUNS IN AND MAKES USE OF MEMORY BELOW MEMEND!

                DO NOT CALL IT FROM WITHIN BASIC, PL/9, MACE, ETC.


                                  * * MAP * *


 The Windrush MAP utility allows a file to be examined  as  a  binary  image,  so
 producing  a  map of where it would fit in memory. It is consistent with the GET
 memory resident command, that is a text file MAY APPEAR to have  binary  records
 in  it and a GET would indeed load those as though they were binary records! Not
 many people realize this fact of life with FLEX!


DESCRIPTION

 The syntax for invoking MAP is:

  MAP,<fname>

 <fname>        is  a filename which defaults to a .BIN type on the assigned WORK
                drive.

 It only makes sense to MAP a file containing binary records, though using it  on
 a text file will show where GET would load it!

 MAP  will  print  out each contiguous block of the <fname> and if no records are
 found will report the fact. In addition the TRANSFER address,  or  lack  of  it,
 will be printed. Two examples follow:


  +++MAP,MONITOR.BIN
  F800 - F816
  F820 - FEEC
  FFE0 - FFED
  FFF2 - FFFF

  File has no TRANSFER ADDRESS


  +++MAP,0.EXEC.CMD
  C100 - C1E8

  TRANSFER ADDRESS is at $C100


 The first example is that of a a system monitor object file. As such it is  just
 straight binary and does not include a transfer address.

 The  second  example  is of the EXEC command. This comprises a single contiguous
 block of memory $E9 bytes long starting at $C100 with an  execution  address  at
 $C100.


                                  * * MEM * *


 The Windrush MEM utility provides the user with  a  simple  memory  and  examine
 facility, identical to that of GT-BUG, from within FLEX.


DESCRIPTION

 The syntax of MEM is:

    MEM,<aaaa>


 <aaaa>       is the memory address of the byte you wish to modify in the form of
              4 hexadecimal digits.


 If  the  syntax  of  the  call is incorrect you will be advised what the correct
 syntax is. If the syntax  is  correct  you  will  be  informed  of  the  options
 available followed by:

 aaaa bb      where  'aaaa'  is the address specified and 'bb' is the contents of
              that location


 The options you now have are:

 <CNTRL C>    Return to FLEX

 <hex hex>    Write  a  HEX  byte  to  current  memory  location. If the write is
              successful the address  will  advance  to  the  next  location  and
              display  its  contents.  If the write is unsuccessful a '?' will be
              displayed and the current location re-read and displayed.

 <space>      Advance to next location

 /            Re-read the same location (useful for I/O ports)

 U            Advance to next location

 +            Advance to next location

 -            Retard to previous location

 ^            Retard to previous location

 ?            Display HELP menu


                                 * * MEMEND * *


 The  Windrush  MEMEND  utility  is  used to examine/change the value of the FLEX
 'MEMEND' two byte variable at $CC2B/C.


DESCRIPTION

 There are three ways of invoking MEMEND, the syntax is:

    MEMEND
    MEMEND?
    MEMEND,[$]<value>

 <value>        is the required highest memory location that any  system  utility
                will use, optionally preceeded by the $ sign. The value is always
                a hexadecimal one.

 The first case is used to find the highest RAM  address  that  can  be  used.  A
 non-destructive  memory  test is carried out and the new value will be placed in
 MEMEND (at $CC2B) if it is lower or the same as the present value. In case  some
 memory  resident  command,  like PROMPT, is sitting up in high memory a "Change"
 prompt is issued if the old value is lower than the new - ANSWER "Y" at your own
 peril.  This  is  a  safety  catch  and only if you are sure that nothing system
 dependant is above the old value should you type "Y". An  example  of  a  system
 dependant feature is PROMPT which catches all output and by altering MEMEND some
 other utility may overwrite PROMPT thereby hanging the  system.  An  example  of
 this invocation follows:

    +++MEMEND .... the following is an example of the output:

    New MEMEND is higher than old:

    NEW is $BFFF
    OLD is $BC41

    Change to new (Y/N) ? N
    MEMEND is set at $BC41

 Here the MEMEND value was left (wisely) untouched.


 The second call just prints out the current value of MEMEND. An example follows:

    +++MEMEND? .... would result in output similar to:

    MEMEND is set at $BF0F


 The  third call is used to set MEMEND manually and again checking is used on the
 old and new values. The output looks very similar to the second example  and  so
 is not reproduced, however it is called thus:

    +++MEMEND,1234

 Here  the  MEMEND will be set to the value $1234. If MEMEND is already lower the
 prompt will be issued for updating it.


                                      MON


 The MON command enables you to return to GT-BUG smoothly,  without  recourse  to
 the RESET button.

 The  description  of  MON  does  not  really  belong  in  this  section as it is
 classified as a 'memory resident' utility  and  was  documented  in  a  previous
 section. Being a memory resident utility it is not present on disc, it is loaded
 into memory whenever you boot FLEX.

 Over  the  years  we  have  found that so many people have failed to notice this
 command description we have decided to include a description of it with the rest
 of the FLEX disc utilities.


DESCRIPTION

 The syntax of MON is:

    MON <CR>

 The result will be a smooth return to GT-BUG.


 To re-enter FLEX simply use the GT-BUG 'W' command or  alternatively  execute  a
 jump to $CD03, the FLEX warm start address.


                                * * MOTORHEX * *


 This  Windrush  utility  is  used to dump a FLEX binary file out in MOTOROLA HEX
 format via the currently defined printer port. The main use of the utility is to
 download code to an EPROM programmer or an EMULATOR.


DESCRIPTION

    MOTORHEX,<file spec>


 where <file spec> is the name of a FLEX binary file.


 Since Windrush supply the system disc configured for a parallel printer invoking
 this utility will cause the output to appear on the system printer (if on  line)
 or  will  cause  the system to lock-up if the printer is not connected or is off
 line.

 If you wish to direct the output to one  of  the  available  (optional  in  some
 system  configurations)  serial ports simply load the appropriate serial printer
 driver:

    GET,SPRINT-X.SYS <CR>

 Refer to 'SPRINT-X.SYS' which is documented elsewhere.


 Don't forget to re-instate the standard printer driver when you are through:

    GET,PRINT.SYS <CR>


 NOTE: If you wish to create a disc file rather than output to the printer  refer
       to the MAKEHEX utility.


                                 * * MOUNT * *


 The  Windrush MOUNT utility is used to manipulate and display the mapping of the
 logical drive numbers, as used by FLEX itself,  to  the  physical  mass  storage
 devices available on the system.


DESCRIPTION

 The general syntax of the MOUNT command has two forms:

    a. MOUNT
    b. MOUNT <logical>=<physical>[,<assignment>]

 <logical>      is  a  logical drive number i.e. 0 to 3 this is a drive number as
                used in FLEX commands.

 <physical>     is one of R         a RAM DISC,
                       or F<fnum>   a FLOPPY mechanism,
                       or W<wnum>   a WINCHESTER partition, "wini floppy",
                       or N         a "NULL" device.

 <fnum>         is a valid floppy mechanism number as given in SETUP qv.

 <wnum>         is a valid wini floppy number as  derived  from  the  information
                given in SETUP, the maximum possible being 249.

 <assignment>   is: <logical>=<physical>[,<assignment>]


 The first call is to interrogate the current logical  drive  to  physical  drive
 mapping.


 The second call is to assign physical drives to logical drives, for example:


 MOUNT,0=W0,1=F0,2=R,3=F1  Mounts wini  floppy  0  as  logical  drive  0,  floppy
                           mechanism  0  as  logical  drive  1,  the  RAM DISC as
                           logical drive 2 and  floppy  mechanism  1  as  logical
                           drive 3.

 MOUNT,0=F0,1=W0           Reverses drives '0' and '1'.

 MOUNT,0=W10,3=R           Mounts wini floppy 10 as logical drive 0, the RAM DISC
                           as logical drive 3. The assignments for logical drives
                           1 and 2 remain unaltered.

 MOUNT 2=N                 Dismounts  the  drive  on logical drive 2. Any further
                           FLEX requests for drive 2 will  no  give  an  "INVALID
                           DRIVE NUMBER" error.


 NOTE: Users are warned NOT to change the logical to physical mapping for a drive
       which is is use at the current time. The major causes of problems would be
       MOUNTING a new device to a drive that contains a file in the spooler queue
       or  MOUNTING  devices from within an EXECed file that changes the physical
       device of the drive that contains the file being EXECed. There is code  in
       the  utility to check for open files on the drives that are being changed,
       but EXEC and PRINT do not operate like normal files.
                                  * * MOVE * *


 The  Windrush  MOVE  utility  is  used  to shift the contents of memory from one
 location to another. The primary  use  of  MOVE  is  to  test  whether  position
 independant code lives up to its name!


DESCRIPTION

    MOVE,<ssss>,<eeee>,<dddd> <CR>


 <ssss>       is the address of the first byte of the block you wish to  move  in
              the form of 4 hexadecimal digits.

 <eeee>       is  the  address  of the last byte of the block you wish to move in
              the form of 4 hexadecimal digits.

 <dddd>       is the address of the first byte of the destination in the form  of
              4 hexadecimal digits.


 The two blocks may overlap.


 If the information supplied is in error a prompt for the correct syntax will  be
 issued.


                                * * MYSTART * *


 This is not a utility! It is the method by which you can overcome  a  limitation
 of 'STARTUP'.

 The  single  start-up command line provided by 'STARTUP' (qv) is only allowed to
 be 128 characters in length (the length of the FLEX command line buffer).  Quite
 often  it  is desirable to execute several commands in succession during startup
 in order to configure the system to your particular requirements. To do this you
 need  only  use  'EXEC'  within 'STARTUP' to invoke a second file, which we call
 MYSTART (you may call it anything you wish).

 Since  'EXEC'  will  relocate itself below MEMEND you should install PROMPT (qv)
 and  SPLTITLE  (qv)  before  making  the  call  to EXEC if you wish to use these
 utilities otherwise MEMEND will end up lower than it needs to be. An example  of
 use would be:


 The following is assumed to be the line in the file entitled 'STARTUP.TXT':

    PROMPT:SPLTITLE:EXEC,MYSTART

 this will install the PROMPT utility, the SPLTITLE utility (both of  which  will
 inform you of the new MEMEND value) and then EXECute the file called MYSTART.


 The following are assumed to be lines in the file entitled 'MYSTART.TXT':

    SETUP,W6 F,5,3,80 5,3,80 R E
    MOUNT 0=W0,1=W1,2=W2,3=W3,4=W4,5=F1,6=F1,7=R
    TTYSET,PS=Y,WD=80,DP=23,BE=8
    ASN,S=0,W=1
    SETFORM,2,62,2,132
    RES-ON
    DATIME

 the call to SETUP will tell the system that one Winchester with  six  partitions
 (0-5)  is  available,  that  two  5",  80  track,  3  msec stepping floppies are
 available, the RAM DISC is available and the  RESIDENT  facility  is  available;
 next  MOUNT  installs  Winchester  partitions  0 through 4 as drives 0 through 4
 (leaving partition 5 unassigned), the two floppies as drives 5  and  6  and  the
 RAM DISC  as drive 7; next TTYSET is called and various parameters are set (note
 that DP is set to one line less than normal to allow for PROMPT);  next  ASN  is
 called  to  define  the system and work drives; next SETFORM is called to define
 the printer paper characteristics for use  by  the  'OUT',  'PRT'  and  'PRINTT'
 facilities  of  the enchanced spooler; next the RESIDENT facilities are enabled;
 and lastly DATIME is called to print the current date and time.


 The  precise  contents  of the 'MYSTART' file are largely determined by your own
 personal requirements.


                                   * * N * *


 The Windrush 'N' utility is used as a source of input which always returns a "N"
 character as though it had been typed from the keyboard in response to a request
 for input.


DESCRIPTION

 The command line syntax for the 'N' command is:

    N,<command>

 <command>      is  the actual command that is to execute followed, if necessary,
                by it's parameters.

 Whenever <command> expects to get input, it will "see" an "N" typed at it.  This
 may  seem  a  trivial  task,  but the following example (where it is often used)
 demonstrates it's usefulness:

    +++N,COPY,0,1

 This will copy all files from drive # 0 to drive # 1. If a file exists on  drive
 # 1, the "delete" prompt will automatically be answered by an "N", therefore the
 effect of this command line would be to copy  all  files  across  which  do  not
 exist.


                                  * * NAME * *


 The  Windrush NAME utility allows the name, and/or version number and/or date to
 be modified on a disc. Any or all the components may be altered.


DESCRIPTION

 The syntax for NAME is:

    NAME[,<drive>]

 <drive>        is the optional drive number which defaults to the work drive.

 The command will print the current banner information in a similar manner to DIR
 and then prompts for the name to be changed. Entering <RETURN>  will  leave  the
 data  untouched,  ^C  (control-C)  will  cause  an  immediate return to FLEX and
 anything else will be taken as  the  replacement  text.  After  name  comes  the
 version  number,  again  the same holds about entering or skipping data. Finally
 the "Change DATE (Y/N) ?" prompt appears. If a "Y" is entered the current system
 date  will be put to the disc, otherwise "N" or ^C should be typed. ^C would not
 touch the disc, while "N" would apply the updates to the disc.

 An example follows:


 This calls NAME using the work drive default. The following banner is an example
 of what is displayed:


 DRIVE: 1        DISC: FLEX    .         VERSION:     0      CREATED: 2-JAN-84

 New NAME          ?   <RETURN>
 New VERSION       ?   <RETURN>
 Change DATE (Y/N) ?   Y


 In  this case only the date was changed, the <RETURN> meaning leave the original
 data intact.

 The main use of NAME is to actually change the  name  of  a  disc  for  archival
 purposes, and/or update the version number.


                                       O


 The  O  (not  zero)  command  can  be  used to route all displayed output from a
 utility to an output file instead of the terminal. The function of O is  similar
 to  P  (the  printer command) except that output is stored in a file rather than
 being printed on the terminal or printer. Other TSC software  may  support  this
 utility. Check the supplied software instructions for more details.


DESCRIPTION

 The general syntax of the O command is:

     O,<file spec>,<command>

 where <command> can be any standard utility command line and <file spec> is  the
 name  of  the desired output file. The default extension on <file spec> is .OUT.
 If O is used with multiple commands per line (using the 'end of line'  character
 ':')  it  will  only  have  affect  on the command it immediately precedes. Some
 examples will clarify its use.


     +++O,CAT,CAT

 writes a listing of the current disc directory into a file called CAT.OUT


     +++O,BAS,ASMB,BASIC.TXT

 writes  the  assembled source listing of the text source file 'BASIC.TXT' into a
 file called 'BAS.OUT' when using the assembler


 NOTE: This utility will only be present on the unconfigured disc.


                                  * * OUT * *


 The Windrush OUT utility is for output re-direction of any command to a file for
 subsequent printing by the spooler. It's effect is identical to the PRT  utility
 except  that  instead  of accessing the printer directly, the output goes into a
 text file. OUT, like PRT, also obeys the 'SETFORM' parameters  in  lieu  of  the
 TTYSET  parameters.  There  is therefore no difference between the paper outputs
 from following two examples:

          +++PRT,DIR
          +++OUT,DIR,DIR:PRINTT,DIR

 except that the second example, using OUT, could be printed n times at the users
 leisure  AND  while  the system can be used for other things. Note that the file
 DIR.OUT will remain available until it is deleted either absolutely  or  by  the
 XXOUT utility.

 Files produced by OUT, unlike those produced by the TSC 'O' utility,  are  fully
 compatible with the Windrush Enhanced Print Spooler.


DESCRIPTION

 The syntax of the OUT utility is:

    OUT,<filename>,<command>

 <filename>     is the file that is to be  produced  which  defaults  to  a  .OUT
                extension on the system drive,

 <command>      is the actual command that is being invoked to produce an output.

 As  with  the  PR  utility, the output file will include top and bottom skips to
 by-pass the fold on fan-fold paper and will honour the current values set up  by
 the  SETFORM utility. If the <command> sends out continuous text with no CR code
 then OUT will do an automatic CR/LF sequence when the width exceeds the  defined
 width of the printer. Some examples of OUT follow:


    +++OUT,DIR,DIR

 This will produce a file called DIR.OUT on the system drive which  will  contain
 the output from the DIR command.


    +++OUT,LISTING,DATECOPY,1,0,-,.CMD

 This is a very useful example of OUT. Here the file LISTING.OUT  on  the  system
 drive  will  give a very thorough history of what happened when drive #1 had all
 it's command files archived onto drive #0.


    +++OUT,LIST_ZAP.1,ZAP,.TXT

 This  example  would  produce  a file called LIST_ZAP.OUT on drive #1 that was a
 history of the ZAP command.


 NOTE: Do not invoke SETFORM when the spooler is in use as it uses the data table
       produced by SETFORM as it is running.
                                       P


 The P command is the system print routine and  will  allow  the  output  of  any
 command  to  be  routed  to the printer. This is very useful for getting printed
 copies of the CATalog or used with the LIST command will allow the  printing  of
 FLEX text files.


DESCRIPTION

 The general syntax of the P command is:

     P,<command>

 where <command> can be any standard utility command line.  If  P  is  used  with
 multiple  commands  per  line  (using the 'end of line' character), it will only
 have affect on the command it immediately preceeds. Some examples  will  clarify
 its use:

     +++P,CAT
     +++P,LIST,MONDAY:CAT,1

 The first example would print a CATalog of the directory of the working drive on
 the printer. The second example will print a LISTing of the text file MONDAY.TXT
 and then display on the terminal a CATalog of drive 1 (this assumes the 'end  of
 line' character is a ':'). Note how the P did not cause the 'CAT,1' to go to the
 printer. Consult  the  'Advanced  Programmer's  Guide'  for  details  concerning
 adaption of the P command to various printers.

 The  P  command  tries to load a file named PRINT.SYS from the same disc which P
 itself  was retrieved. The PRINT.SYS file which is supplied with the system disc
 contains the necessary routines to operate a Centronics parallel printer. If you
 wish   to   use   a  different  printer  configuration,  consult  the  'Advanced
 Programmer's Guide' for details on writing your own printer driver  routines  to
 replace the PRINT.SYS file.


 NOTE 1: The  'P'  command has the obnoxious habit of setting the TTYSET PAUSE to
         'N' but not restoring it when it terminates.

 NOTE 2: Windrush supply a utility called 'PR' (qv) which  performs  exactly  the
         same  function  as  'P'  but it restores the original TTYSET PAUSE value
         before terminating (even when terminated by <ESCAPE> ... <RETURN>).

 NOTE 3: The 'P' command will only be present on the unconfigured disc.


                                 * * PCOPY * *


 The  Windrush PCOPY utility allows files to be copied from disc to disc or, if a
 copy to another name is used, the same disc. It differs from the COPY command in
 that a prompt is always posted before a copy - hence the name P(rompting)COPY.


DESCRIPTION

 There are three ways of invoking PCOPY and the syntax is:

    PCOPY,<drive>,<drive>[,<matchlist>]
    PCOPY,<filespec>,<drive>
    PCOPY,<filespec>,<mfilespec>

 <drive>        is a valid on-line drive,

 <matchlist>    is either (or both) part (or all) of a filename or extension,

 <filespec>     is a filename with an extension,

 <mfilespec>    is a minimum of a filename - with an optional extension.

 The first case is the one mostly used. It allows copying  of  either  an  entire
 disc to another, or just matched files from one drive to another. Matching is on
 either part (or all) of the name (or extension) or both. The  <drive>s  must  be
 valid  on-line  drives  or the command will abort. Some examples of this type of
 copy follow:

    +++PCOPY,0,1
    +++PCOPY,1,0,.SYS,C_D,P.C

 The  first example will copy ALL files where the "Copy" prompt is confirmed from
 drive # 0 to drive # 1. The second will copy those confirmed files from drive  #
 1 to drive # 0 which have a .SYS extension, then those confirmed which start off
 with the characters C_D, then those confirmed that  start  with  P  and  have  a
 extension which starts with a C.


 NOTE:    If a file exists on the destination drive, a prompt is issued regarding
          deletion  of  the file found. If Y is answered an "are you sure" prompt
          returns and if Y is answered to this one the file will be  deleted  and
          the  source  version  copied across. Typing N to either prompt will not
          delete or copy the file and the directory  search  is  continued.  This
          prompting method holds true for all invocations of PCOPY.


 The second type of call is useful for copying just one file from one  work  disc
 to  another  with only two drives on a system. The prompt allows time to change,
 for example, destination and system discs before confirming:

    +++PCOPY,0.P.CMD,1

 This  copies  JUST  the  file P.CMD from drive # 0 to drive # 1 if the prompt to
 copy is confirmed.


                                 * * PCOPY * *


 (continued)


 The last type of call is the one least used. It copies JUST <filename> from  the
 source disc, to the destination disc (may be the same disc) using <mfilename> as
 the new name. As with the second type of call, this is most useful when  copying
 between  different  work  discs  with only two drives on a system. The extension
 will remain the same if <mfilename> does not include an extension, otherwise the
 extension will be as requested in <mfilename>. Some examples follow:

  +++PCOPY,1.WORK.TXT,NEW_VER
  +++PCOPY,0.P.CMD,0.P_FILE.BIN

 The first example copies the file WORK.TXT from drive # 1 to a file to be called
 NEW_VER.TXT  on  the  assigned WORK drive if the prompt is confirmed. The second
 example shows how the extension may also be altered.  Here  the  file  P.CMD  on
 drive # 0 is copied to a file called P_FILE.BIN also on drive # 0, again only if
 the prompt is confirmed.

 Both  <filename>  and  <mfilename> may exclude the drive number in any calls and
 the drive will always default to the  WORK  drive,  or  drive  #  0  if  ALL  is
 specified as the WORK drive.

 During  copying  the  success,  or  otherwise,  of  the copy is displayed on the
 terminal (unless re-vectored using the I command).


 NOTE:    At  any  stage, ^C (control-C) may be sent from the terminal. This will
          cause PCOPY to terminate in an orderly fashion and return to FLEX.
