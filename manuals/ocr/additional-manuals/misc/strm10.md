# STRM10

> Source: `manuals/misc/REFERENC - Manual and Documentation Archive.zip!REFERENC.DSK!STRM10.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
%SCREDITOR III WORD PROCESSOR                          TECHNICAL REFERENCE MANUAL

                         SCREDITOR III COMMAND SUMMARY


.DHE
%TECHNICAL REFERENCE MANUAL                          SCREDITOR III WORD PROCESSOR

                         SCREDITOR III COMMAND SUMMARY


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                       PAGE 10-%%%%
.DFE
"
 PAGE 10-%%%%                                       (C) 1982, ALFORD & ASSOCIATES
 When a command is followed by (EOL), this indicates that the command in question
 must  either  be  the  only  entry on the command line, or the last entry on the
 command line. Where (EOC) is shown, other commands may  follow  the  command  in
 question  when  separated  by  the  EOC  (End-Of-Command) character defined when
 CONGEN was run. All numbers (shown as 'nn') which refer  to  columns  may  range
 from  1  to 249. All numbers (shown as 'nnnn') which refer to lines or pages may
 range from 1 to 65536. Wherever a slash (/) is shown for a  delimiter,  you  may
 substitute  any  character of your choice which will not appear in the remainder
 of the command entry.

 In each of these entries, the COMMAND NAME and syntax appears at  the  left  and
 the  description  appears  at  the  right,  followed  by  the page number in the
 TECHNICAL REFERENCE MANUAL where the description for the COMMAND may be found.


 - - - - - - - - - - - - - - SYSTEM-ORIENTED COMMANDS - - - - - - - - - - - - - -

 AB(EOL) . . . . . . . . . . . . . . . . . . . . . . . . ABORT EDIT SESSION  6- 1
 EX(EOL) . . . . . . . . . . . . . . . . . . . . . . EXIT TO SYSTEM MONITOR  6-13
 LO(EOL) . . . . . . . . . . . . . . . . . . . .  LOG (FINISH) EDIT SESSION  6-22
 NE#nnnn(EOL)  SAVE LINES FROM START THROUGH LINE #nnnn AND READ MORE LINES  6-27
 NE@nnnn(EOL)  . . . . . .  SAVE @nnnn LINES FROM START AND READ MORE LINES  6-27
 NE*(EOL)  . . . . . . . . . . . . . .  SAVE TOP BUFFER AND READ MORE LINES  6-27
 NE(EOL) . . . . . . . . . . . . . . . .  SAVE ONE LINE AND READ MORE LINES  6-27
 NS(EOC) . . . . . . . . . . . . . . . . . . . . . . . . . . . . NEW SCREEN  6-28
 OD/(FILENAME)/(EOC) . . . . . . . . . . . . . . . . . . . DELETE DISK FILE  6-54
 OL#nn(EOC). . . . . . . . . . . . . . . . . . . . . . . .  LIST DISK FILES  6-54
 OO/(FILENAME)/(EOC) . . . . . . . . . . . . . . . . . . . OPEN OUTPUT FILE  6-30
 OS/(OS-9 COMMAND LINE)(EOL) . . . . . . . . . .  EXECUTE OS-9 COMMAND LINE  6-34
 OV/(FILENAME)/(EOC) . . . . . . . . . . . . . . . . . . . . VIEW DISK FILE  6-54
 SA#nnnn(EOC) . . . . . . . . LINES FROM START OF BUFFER THROUGH LINE #nnnn  6-47
 SA@nnnn(EOC)  . . . . . . . . . . .  SAVE @nnnn LINES FROM START OF BUFFER  6-47
 SA*(EOC)  . . . . . . . . . . . . . . . . . . . .  SAVE TOP BUFFER TO DISK  6-47
 SA(EOC) . . . . . . . . . . . . . . . . . . . . . .  SAVE ONE LINE TO DISK  6-47

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - -  DISPLAY POSITION MOVEMENT COMMANDS  - - - - - - - - - - -

 BO(EOC) . . . . . . . . . . . . . . . . . . . . . . . . .  BOTTOM OF BLOCK  6- 1
 GO#nnnn(EOC)  . . . . . . . . . . . . . . . . . . . . . . GO TO LINE #nnnn  6-14
 GO@nnnn(EOC)  . . . . . . . . . . MOVE @nnnn LINES TOWARD BOTTOM OF BUFFER  6-14
 GO*(EOC)  . . . . . . . . . . . . . . . . . . .  GO TO LAST LINE IN BUFFER  6-14
 GP#nnnn(EOC)  . . . . . . . . . . . . . . . . . . . . . . GO TO PAGE #nnnn  6-14
 GP@nnnn(EOC)  . . . . . . . . . . . . . . . . . .  GO FOREWARD @nnnn PAGES  6-14
 GP*(EOC)  . . . . . . . . . . . . . . . . . . .  GO TO LAST PAGE IN BUFFER  6-14
 GP(EOC) . . . . . . . . . . . . . . . . . . .  GO TO START OF CURRENT PAGE  6-14
 FI/(STRING)/(EOC) . . . . . . . . . . . . . . . FIND OCCURRENCES OF STRING  6-13
 TO(EOC) . . . . . . . . . . . . . . . . . . . . . .  MOVE TO TOP OF BUFFER  6-52

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - -  HEADER/FOOTER COMMANDS  - - - - - - - - - - - - - -

 DHE(EOC)  . . . . . . . . . . . . . . . . . . . . . . . DEFINE EVEN HEADER  6- 8
 DHO(EOC)  . . . . . . . . . . . . . . . . . . . . . . .  DEFINE ODD HEADER  6- 8
 DHB(EOC)  . . . . . . . . . . . . . . . . DEFINE BOTH EVEN AND ODD HEADERS  6- 8
 DFE(EOC)  . . . . . . . . . . . . . . . . . . . . . . . DEFINE EVEN FOOTER  6- 8
 DFO(EOC)  . . . . . . . . . . . . . . . . . . . . . . .  DEFINE ODD FOOTER  6- 8
 DFB(EOC)  . . . . . . . . . . . . . . . . DEFINE BOTH EVEN AND ODD FOOTERS  6- 8
 UH(EOC)   . . . . . . . . . . . . . . . . . . . . UNDEFINE HEADERS/FOOTERS  6-52

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - MISCELLANEOUS FILE COMMANDS - - - - - - - - - - - - -

 CP(EOC) . . . . . . . . . . . . . . . . . . . .  CLOSE PRINTER PATH (OS-9)  6- 8
 CF(EOC) . . . . . . . . . . . . . . . . . . . . . . . . .  CLOSE WORK FILE  6- 4
 ID(EOC) . . . . . . . . . . . . . . . . . DISPLAY NEXT READ-IN LINE NUMBER  6-16
 LP/(FILENAME)/(EOC) . . . . . . . . . . . . . . . . . .  LOAD PRINTER DATA  6-23
 LP/*/(EOC)  . . . . . . . . . . . . . . . . . . . LOAD DEFAULT PRTGEN DATA  6-23
 LS/(FILENAME)/(EOC) . . . . . . . . . . . . . . . . LOAD SYMBOLS FROM FILE  6-24
 OP/(FILENAME)/(EOC) . . . . . . .  OPEN FILE FOR PRINTER OUTPUT (FLEX/SSB)  6-31
 OP/(PATH)/(EOC) . . . . . . . . . . .  OPEN PATH FOR PRINTER OUTPUT (OS-9)  6-32
 OR/(FILENAME)/(EOC) . . . . . . . . . . . . . . . . . .  OPEN READ-IN FILE  6-33
 OW/(FILENAME)/(EOC) . . . . . . . . . . . . . . . . .  OPEN WRITE-OUT FILE  6-35
 RI#nnnn(EOC)  . . . . . . . . . . . . . . . . . READ-IN THROUGH LINE #nnnn  6-45
 RI@nnnn(EOC)  . . . . . . . . . . . . . . . . . . . .  READ-IN #nnnn LINES  6-45
 RI*(EOC)  . . . . . . . . . . . . . . . . . . .  READ-IN REMAINDER OF FILE  6-45
 RI(EOC) . . . . . . . . . . . . . . . . . . . . . . . .   READ-IN ONE LINE  6-45
 RS#nnnn(EOC)  . . . . . . . . . . . . . SKIP TO LINE #nnnn IN READ-IN FILE  6-47
 RS@nnnn(EOC)  . . . . . . . . . . . . . . SKIP @nnnn LINES IN READ-IN FILE  6-47
 SS/(FILENAME)/(EOC) . . . . . . . . . . . . . . . . . SAVE SYMBOLS TO FILE  6-48
 WC#nnnn(EOC)  . . . . . . . . .  COPY THROUGH LINE #nnnn TO WRITE-OUT FILE  6-52
 WC@nnnn(EOC)  . . . . . . . . . . . . . COPY #nnnn LINES TO WRITE-OUT FILE  6-52
 WC*(EOC)  . . . . . . . . . . . COPY REMAINDER OF BUFFER TO WRITE-OUT FILE  6-52
 WC(EOC) . . . . . . . . . . . . . . . . .  COPY ONE LINE TO WRITE-OUT FILE  6-52
 WE#nnnn(EOC)  . . . . . . . . EXTRACT THROUGH LINE #nnnn TO WRITE-OUT FILE  6-53
 WE@nnnn(EOC)  . . . . . . . . . . .  EXTRACT #nnnn LINES TO WRITE-OUT FILE  6-53
 WE*(EOC)  . . . . . . . . . . EXRACT REMAINDER OF BUFFER TO WRITE-OUT FILE  6-53
 WE(EOC) . . . . . . . . . . . . . . . . EXTRACT ONE LINE TO WRITE-OUT FILE  6-53

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - DEFINITION COMMANDS - - - - - - - - - - - - - - -

 DP/(opt)/(opt)/(opt)...(EOL)  . . . . . . . . . . DEFINE PRINTER PAGE DATA  6- 9
 DP/(EOL)  . . . . . . . . . . . . . . . . DISPLAY & EDIT PRINTER PAGE DATA  6- 9
 DS/(name)/(symbol body)(EOL)  . . . . . . . . . . . . . . .  DEFINE SYMBOL  6-11
 DS/(name)/(EOL) . . . . . . . . . . . . . . . . . .  DISPLAY & EDIT SYMBOL  6-11

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - -  TEXT MOVEMENT COMMANDS  - - - - - - - - - - - - - -

 CM>(EOC)  . . . . . . . . . . . . . . . .  CLEAR MARKS FROM CURRENT TO END  6- 6
 CM<(EOC)  . . . . . . . . . . . . . . .  CLEAR MARKS FROM START TO CURRENT  6- 6
 CM*(EOC)  . . . . . . . . . . . . . . . . . . . . . . . .  CLEAR ALL MARKS  6- 6
 CM(EOC) . . . . . . . . . . . . . . . . . . . . .  CLEAR CURRENT LINE MARK  6- 6
 CO#nnnn#mmmm(EOC) . . . . . . . . . . . . .  COPY FROM #nnnn THROUGH #mmmm  6- 7
 CO#nnnn@mmmm(EOC) . . . . . . . .  COPY @mmmm LINES STARTING AT LINE #nnnn  6- 7
 CO#nnnn*(EOC) . . . . . . . . . COPY ALL LINES FROM #nnnn TO END OF BUFFER  6- 7
 CO#nnnn(EOC)  . . . . . . . . . . . . . . . . . . . . . .  COPY LINE #nnnn  6- 7
 MO#nnnn#mmmm(EOC) . . . . . . . . . . . . .  MOVE FROM #nnnn THROUGH #mmmm  6-26
 MO#nnnn@mmmm(EOC) . . . . . . . .  MOVE @mmmm LINES STARTING AT LINE #nnnn  6-26
 MO#nnnn*(EOC) . . . . . . . . . MOVE ALL LINES FROM #nnnn TO END OF BUFFER  6-26
 MO#nnnn(EOC)  . . . . . . . . . . . . . . . . . . . . . .  MOVE LINE #nnnn  6-26
 SM(EOC) . . . . . . . . . . . . . . . . . . . . . SET MARK ON CURRENT LINE  6-48

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - PRINTER-RELATED COMMANDS - - - - - - - - - - - - - -

 CC#nn(EOC)  . . . . . . . . . . . . . . . . . . . . IMBED CONTROL CODE #nn  6- 2
 CD(EOC) . . . . . . . . . . . . . . . . . . . . . . DISPLAY IMBEDDED CODES  6- 4
 PRx#nnnn(EOC) . . . . . . . . . . . . . . . . . . PRINT THROUGH PAGE #nnnn  6-43
 PRx@nnnn(EOC) . . . . . . . . . . . . . . . . . . . . .  PRINT @nnnn PAGES  6-43
 PRx*(EOC) . . . . . . . . . . . . . . . . . .  PRINT TO END OF BUFFER/FILE  6-43
 PRx(EOC)  . . . . . . . . . . . . . . . . . . . . . . . PRINT CURRENT PAGE  6-43
 PM/(FILENAME)/(EOC) . . . . . . . .  PRINT-MERGE USING (FILENAME) FOR DATA  6-39
 PM/*/(EOC)  . . . . . . . . . . . . . . . . . . . . . RE-START PRINT-MERGE  6-39
 PS(EOC) . . . . . . . . . . . . . . . . . .  CYCLE PAGE PRINTER PAGE PAUSE  6-44

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - -  JUSTIFICATION COMMANDS  - - - - - - - - - - - - - -

 JLA(EOC). . . . . . . . . . . . . . . . . . . . . . . . . ALL-JUSTIFY LINE  6-17
 JLC(EOC)  . . . . . . . . . . . . . . . . . . . . . .  CENTER-JUSTIFY LINE  6-17
 JLL(EOC)  . . . . . . . . . . . . . . . . . . . . . . .  LEFT-JUSTIFY LINE  6-17
 JLR(EOC)  . . . . . . . . . . . . . . . . . . . . . . . RIGHT-JUSTIFY LINE  6-17
 JMA(EOC)  . . . . . . . . . . . . . . . . . . . . . . . . ALL-JUSTIFY MODE  6-18
 JMC(EOC)  . . . . . . . . . . . . . . . . . . . . . .  CENTER-JUSTIFY MODE  6-18
 JML(EOC)  . . . . . . . . . . . . . . . . . . . . . . .  LEFT-JUSTIFY MODE  6-18
 JMR(EOC)  . . . . . . . . . . . . . . . . . . . . . . . RIGHT-JUSTIFY MODE  6-18
 JPA(EOC)  . . . . . . . . . . . . . . . . . . . . .  ALL-JUSTIFY PARAGRAPH  6-19
 JPC(EOC)  . . . . . . . . . . . . . . . . . . . . CENTER-JUSTIFY PARAGRAPH  6-19
 JPL(EOC)  . . . . . . . . . . . . . . . . . . . . . LEFT-JUSTIFY PARAGRAPH  6-19
 JPR(EOC)  . . . . . . . . . . . . . . . . . . . .  RIGHT-JUSTIFY PARAGRAPH  6-19
 PPC(EOC)  . . . . . . . . . . . . . . . . . . . . . .PACK PARAGRAPH CENTER  6-42
 PPL(EOC)  . . . . . . . . . . . . . . . . . . . . . .  PACK PARAGRAPH LEFT  6-42
 PPR(EOC)  . . . . . . . . . . . . . . . . . . . . . . PACK PARAGRAPH RIGHT  6-42
 LI#nnn(EOC) . . . . . . . . . . . . . . . . . . . LINE INDENT #nnn COLUMNS  6-21
 PI#nnn(EOC) . . . . . . . . . . . . . . . .  PARAGRAPH INDENT #nnn COLUMNS  6-37
 PLC(EOC)  . . . . . . . . . . . . . . . . . . . . . . . . CENTER-PACK LINE  6-38
 PLL(EOC)  . . . . . . . . . . . . . . . . . . . . . . . . . LEFT-PACK LINE  6-38
 PLR(EOC)  . . . . . . . . . . . . . . . . . . . . . . . .  RIGHT-PACK LINE  6-38

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - -  MODE COMMANDS  - - - - - - - - - - - - - - - -

 MC(EOC) . . . . . . . . . . . . . . . . . . . . .  CYCLE MULTI-COLUMN MODE  6-25
 NU(EOC) . . . . . . . . . . . . . . . . . . . .  CYCLE LINE NUMBER DISPLAY  6-29
 PA(EOL) . . . . . . . . . . . . . . . . .  CYCLE PAGE START DISPLAY ON/OFF  6-36
 LE(EOC) . . . . . . . . . . . . . . . . . . . . .  . .  SET LINE EDIT MODE  6-20
 TE(EOC) . . . . . . . . . . . . . . . . . . . . .  . .  SET TEXT EDIT MODE  6-51

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - MARGIN COMMANDS - - - - - - - - - - - - - - - -

 LM#nn(EOC)  . . . . . . . . . . . . . . . .  SET LEFT MARGIN TO COLUMN #nn  6-21
 LM(EOC) . . . . . . . . . . . . . . SET LEFT MARGIN TO/FROM CURRENT COLUMN  6-21
 RM#nn(EOC)  . . . . . . . . . . . . . . . . SET RIGHT MARGIN TO COLUMN #nn  6-46
 RM(EOC) . . . . . . . . . . . . . . SET LEFT MARGIN TO/FROM CURRENT COLUMN  6-46

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - -  MISCELLANEOUS COMMANDS  - - - - - - - - - - - - - -

 CH/(STRING1)/(STRING2)/(EOC)  . . . . . . . . . . . . . . . CHANGE STRINGS  6- 5
 CT#nnn#mmm(EOC) . . . . . . . . . CLEAR TABS FROM COLUMN nnn TO COLUMN mmm  6-54
 CT#nnn@mmm(EOC) . . . .  CLEAR TABS FROM COLUMN nnn, mmm NUMBER OF COLUMNS  6-54
 CT#nnn*(EOC). . . .  CLEAR ALL TABS FROM COLUMN nnn TO THE END OF THE LINE  6-54
 CT#nnn(EOC) . . . . . . . . . . . . . . . . . . . . . . . .  CLEAR TAB nnn  6-54
 HR?(EOL)  . . . . . . . . . . . . . . . . . . REQUEST HELP ON HELP REQUEST  6-15
 HR?C(EOL) . . . . . . . . . . . . . . . . . . . . REQUEST HELP ON COMMANDS  6-15
 HR?O(EOL) . . . . . . . . . . . . . . . . . . .  REQUEST HELP ON OPERATORS  6-15
 HR?xx(EOL)  . . . . . . . . . . . . . . . . . . REQUEST HELP ON COMMAND xx  6-15
 KL#nnnn(EOC)  . . . . . . . . . . . . . . . . . .  KILL THROUGH LINE #nnnn  6-20
 KL@nnnn(EOC)  . . . . . . . . . . . . . . . . . . . . . . KILL @nnnn LINES  6-20
 KL*(EOC)  . . . . . . . . . . . . . . . . . . . . .  KILL TO END OF BUFFER  6-20
 KL(EOC) . . . . . . . . . . . . . . . . . . . . . . . . . .  KILL ONE LINE  6-20
 ST/nnn/nnn/nnn/.../nnn(EOL) . . . . . . . . . . . SET TABS AT nnn, nnn ...  6-49

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - -  TALLY COMMANDS  - - - - - - - - - - - - - - - -

 TAA(EOC)  . . . . . . . . . . . . . . . . . . . . . . DECIMAL ALIGN COLUMN  6-50
 TAC(EOC)  . . . . . . . . . . . . . . . . . . . . . . . . . . TALLY COLUMN  6-50
 TAD(EOC)  . . . . . . . . . . . . . . . . . . . . .  DISPLAY CURRENT TALLY  6-50
 TAI(EOC)  . . . . . . . . . . . . . . . . . . . . . . INSERT CURRENT TALLY  6-50
 TAK(EOC)  . . . . . . . . . . . . . . . . . . . . . . . . . . . KILL TALLY  6-50
 TAR(EOC)  . . . . . . . . . . . . . . . . . . . . . . . . . . .  TALLY ROW  6-50

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


                        THIS PAGE IS INTENTIONALLY BLANK
