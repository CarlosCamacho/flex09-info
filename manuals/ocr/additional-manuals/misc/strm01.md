# STRM01

> Source: `manuals/misc/REFERENC - Manual and Documentation Archive.zip!REFERENC.DSK!STRM01.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                          TECHNICAL REFERENCE MANUAL

                           SCREDITOR III DEFINITIONS


.DHE
%TECHNICAL REFERENCE MANUAL                          SCREDITOR III WORD PROCESSOR

                           SCREDITOR III DEFINITIONS


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                        PAGE 1-%%%%
.DFE
"
 PAGE 1-%%%%                                        (C) 1982, ALFORD & ASSOCIATES
 Many words are used in this manual with which you  might  not  be  familiar,  or
 which  are  used  in a special way. This section gives information about many of
 these terms, and should be read and referred to as you read  the  rest  of  this
 manual.


 BUFFER -

 A buffer is a place in which something is stored until it is needed, or a  place
 in  which  to  put  something  while  you are working on it. SCREDITOR III has a
 number of buffers, but one in particular is of interest  to  you.  This  is  the
 current buffer, described later.


 CHARACTERS -

 A  character  can  be  a  number, punctuation mark or letter; in short, anything
 which is displayable by SCREDITOR III.


 COMMANDS -

 Commands are those directives you give to SCREDITOR III to tell it how to  work,
 and  are entered during COMMAND MODE. In this manual, when a COMMAND is referred
 to, both the COMMAND name and the word COMMAND will  be  typed  in  upper  case.
 COMMANDS  are distinct from OPERATORS (see below), which although also commands,
 are entered differently. Occasionally in this manual, COMMANDS will be  referred
 to  as  ESCAPE  COMMANDS, since you will 'escape' from SCREEN EDIT MODE to enter
 the COMMANDS.


 CURRENT BUFFER -

 The  current  buffer  is  both  that  part  of  a file which is in memory and is
 available for editing, and the  place  in  memory  where  it  is  put.  The  two
 definitions are used interchangeably in this manual.


 CURRENT LINE -

 This is the line on which the cursor is sitting when in SCREEN EDIT MODE.


 CURRENT COLUMN -

 This is the column in which the cursor is sitting when in SCREEN EDIT MODE.


 CURSOR -

 This is the indicator which your terminal uses to show where the next  character
 will  be typed on the screen. Usually the cursor is a box or underline which, on
 some displays, blinks.


 DELIMITER -

 A  delimiter  is a character which is used to separate, or mark the beginning or
 end  of  groups  of  characters  which  together  comprise  a  single  unit   of
 information.


 DISK OPERATING SYSTEM (DOS) -

 DOS  is  the  program which controls the loading and execution of your programs,
 and which manages the space on disk in the creation, changing  and  deletion  of
 files. Your DOS may be called FLEX, DOS68, OS-9, etc...


 ESCAPE COMMANDS -

 See COMMANDS, above.


 FILE CONTROL BLOCK (FCB) -

 Most  DOS's  use a special block of memory to allow programs to pass data to and
 from disk files. This block of memory is called file control block. There is one
 file  control  block in SCREDITOR III for the old file being edited, one for the
 new file being created and one for any working files which might  be  open.  The
 OS-9  version  does  not  use  FCB's,  but does have a path number byte which is
 associated with each file. For this reason, even though FCB's are  not  used  in
 the  OS-9  version,  discussions  about open FCB's in this manual still apply in
 principal, if not in detail. Generally, file control block will be typed as  FCB
 in this manual.


 MELD -

 Meld  means 'to merge.' In SCREDITOR III, meld is used to describe the action of
 merging a group of words comprising a paragraph into the minimum number of lines
 possible  by  removing extra spaces from each line, bringing words onto the line
 from the line which follows to completely fill the line, justifying the line  to
 whatever is set for the current justification mode, and continuing to the end of
 the paragraph, deleting lines as they become empty. Melding only occurs in  TEXT
 MODE,  and  is  effected  by the use of the MELD OPERATOR or an exit from INSERT
 CHARACTER MODE.

 This is a different action than paragraph packing, described below, which simply
 removes extra spaces from each line and then justifies the line according to the
 COMMAND entered.

 MISCELLANEOUS DOS COMMANDS -

 These are the COMMANDS which use the work file control block such as CLOSE FILES
 (CF), LOAD PRINTER DATA (LP), etc...


 MODES -

 A  mode,  as it is defined in SCREDITOR III, is a particular state of operation;
 that is, while a certain mode is active, SCREDITOR III will act differently than
 when the mode is not active.


 OPERATOR -

 An  OPERATOR  is a special type of command which is performed by typing a single
 special purpose key on the keyboard, such as CURSOR LEFT,  INSERT  LINE,  etc...
 OPERATORS,  although  they are commands in the strict sense, are not referred to
 as such in this manual in order to  differentiate  them  from  ESCAPE  COMMANDS.
 Whenever  a  single-key OPERATOR is referred to in this manual, it will be typed
 in upper case to differentiate it from you, the operator.


 OPTION CHARACTER -

 Option characters are an extension  of  a  command  name,  and  are  similar  in
 function  to  the  various type characters used in COMMANDS which have numerical
 targets. For instance, the JUSTIFY LINE COMMAND, JL, must be followed by  either
 A,  C,  L  or  R  to  indicate the type of justification. These four letters are
 option characters.


 PACK -

 This is the action of removing extra spaces from a line, and is  different  than
 MELD, described above. Although a MELD packs, a PACK does not MELD.


 SINGLE KEY OPERATOR -

 See OPERATOR, above.


 SCROLL -

 Scrolling  is  the  action  of moving all or part of the screen display area up,
 down, left or right during editing.


 STRING -

 A  string  is  a  group  of  characters  which  is  treated  as a single unit of
 information by a COMMAND or OPERATOR. Your name could be thought of as a string.
 Typical  uses  of strings in SCREDITOR III are the entries which are used by the
 CHANGE and FIND COMMANDS.


 TARGET -

 A target is any numerical or string argument in a COMMAND. For instance, if  you
 wanted  to  go  to  line  1000, 1000 would be the target. Also, if you wanted to
 delete 17 lines, 17 would be the target. If you wanted to set the  right  margin
 at column 95, 95 would be the target.


 TYPE CHARACTER -

 Every  numerical  target in every COMMAND in SCREDITOR III must be preceded by a
 type character, which tells the COMMAND how the number will be used.  There  are
 four type characters defined in this version of the program, as follows:

 1) The  pounds symbol (#), followed by a number, which indicates that the number
    which follows is an absolute column, line or page number.

 2) The ampersand, or 'at' symbol (@), which  indicates  that  the  number  which
    follows is an offset, or number of columns, lines or pages.

 3) The  asterisk  (*), which means 'to the last' column, line or page. This type
    character is never followed by a number, and SCREDITOR  III  determines  what
    the number will be as the COMMAND using it is executed.

 4) The  end  of  the  command  entry (either end of line (EOL) or end of command
    (EOC) ) which indicates that the current or a default column, line or page is
    indicated.


 WORD-WRAP -

 Word-wrap  is the action of automatically moving a part-word from the end of one
 line onto the next line during text entry. The actual  action  of  word-wrap  in
 SCREDITOR  III is described in detail at the end of the TEXT MODE description in
 the modes section of this manual.
