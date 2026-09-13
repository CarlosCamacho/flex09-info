# SCR-REF

> Source: `manuals/misc/REFERENC - Manual and Documentation Archive.zip!REFERENC.DSK!SCR-REF.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

---------------------------------------------
STRMCOPY.TXT

COPY 0.STRMCOPY.TXT 1
COPY 0.SCR3INDX.TXT 1
COPY 0.STRM00.TXT 1
COPY 0.STRM01.TXT 1
COPY 0.STRM02.TXT 1
COPY 0.STRM03.TXT 1
COPY 0.STRM04.TXT 1
COPY 0.STRM05.TXT 1
COPY 0.STRM06.TXT 1
COPY 0.STRM07.TXT 1
COPY 0.STRM08.TXT 1
COPY 0.STRM09.TXT 1
COPY 0.STRM10.TXT 1
COPY 0.STRMA.TXT 1
---------------------------------------------
SCR3INDX.TXT


                          SCREDITOR III WORD PROCESSOR


                                 by John Alford


       The  entire  contents  of this manual and the accompanying software
       are copyright (C) Windrush Micro Systems Limited and John Alford.

       Duplication of this manual is strictly prohibited.  Duplication  of
       the accompanying software for anything other than archival purposes
       is strictly prohibited.


                           First  Release: 15 Oct 1983


                          SCREDITOR III WORD PROCESSOR


                                COPYRIGHT NOTICE

      The  entire contents of this manual and the accompanying software have
      been copyrighted by Windrush Micro  Systems  Limited  and  its  author
      John  Alford.  The reproduction of this material by any means, for any
      reason, is strictly prohibited.


                              SERIAL NUMBER NOTICE

      This  product  has been assigned a unique serial number at the time of
      manufacture. This serial number is encrypted  into  the  body  of  the
      product.  This  product  is  is  therefore  traceable  to the original
      purchaser in the event of plagiarized copies being discovered.

      This  product  is  sold  on  the  basis  of  being  used  on  a SINGLE
      microcomputer system by a SINGLE user.

      We shall consider it to be an attempt to criminally plagiarize  us  if
      duplicate  copies  of  this  manual  or the accompanying disk are made
      available for use by other parties, or on other  microcomputers.  This
      consideration also applies to, but is not limited to, duplicate copies
      being produced for use within the  original  purchasers  organisation,
      establishment, or home for anything other than archival purposes.


                                    WARNING

      We  at  Windrush  Micro  Systems  Limited  and  the author John Alford
      consider the recognition we receive as a result of  the  sale  of  our
      programs  and  manuals  to  be  of  vital  importance  in remaining in
      business.

      Unless written arrangements to the contrary  have  been  made  between
      authorized  agents of Windrush Micro Systems Limited and the purchaser
      of this manual and the accompanying computer program we shall consider
      it  to  be an attempt to criminally plagiarize us if our company name,
      the program name, or the authors name is altered, changed  or  removed
      on  or  from  any of the materials purchased from us regardless of the
      means by which accomplished. This consideration shall include, but not
      be  limited to, the re-writing of this manual, or its reproduction for
      distribution under another company, program or trade name, or any like
      modification of the accompanying computer program.


                                WARRANTY NOTICE

      Although every effort has been made to insure  the  accuracy  of  this
      material,  it  is  sold AS IS and without warranty. No claim as to the
      suitability  or  workability  of  this  material  for  any  particular
      application  or  on any particular computer is made. This statement is
      in lieu of any other statement whether expressed or implied.


 Windrush Micro Systems, Worstead Labs, N. Walsham, Norfolk, NR28 9SA, England

                          SOFTWARE REGISTRATION FORM


 Windrush Micro Systems Limited
 Worstead Laboratories
 North Walsham
 Norfolk
 NR28 9SA

 ENGLAND


 The form below must be completed by the end user. It  should  then  be  detached
 and returned to the above address.

 Once  you have registered your copy of this software you will be notified of any
 'bugs' that are reported to us and how to patch your copy of the software to fix
 them.  As  enhancements  of  this  product are made you will be offered low-cost
 upgrade manuals and disks, again ONLY if you have registered your copy with us.

 We will NOT respond to any query in regard to this product unless  it  has  been
 registered with us.

 We apologize for any inconvenience this procedure may cause you.


 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *                                                                             *
 *  ILLEGAL COPYING KILLS INCENTIVES TO PRODUCE AND SUPPORT SOFTWARE PRODUCTS  *
 *                                                                             *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


                   COMPLETE AND RETURN THIS FORM IMMEDIATELY!

 + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+
 |                                                                              |
 | PRODUCT _____________ REVISION ____________  SERIAL NUMBER _________________ |
 |                                                                              |
 + - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +
 |                                                                              |
 | NAME    ____________________________________________________________________ |
 |                                                                              |
 | ADDRESS ____________________________________________________________________ |
 |                                                                              |
 |         ____________________________________________________________________ |
 |                                                                              |
 |         ____________________________________________________________________ |
 |                                                                              |
 |         ____________________________________________________________________ |
 |                                                                              |
 |                                                                              |
 | This product was purchased for PERSONAL ___ or COMMERCIAL ___ use (tick one) |
 |                                                                              |
 + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+
 |THIS SECTION FOR INTERNAL USE                                               |
 |                                                                              |
 | DATE SHIPPED      ___________________                                        |
 |                                                                              |
 | DATE REGISTERED   ___________________                                        |
 |                                                                              |
 | DEALER            __________________________________________________________ |
 |                                                                              |
 + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+
                              SOFTWARE BUG REPORT


 PRODUCT ______________ REVISION ______________ SERIAL NUMBER __________________

 NAME OF DEALER _______________________________

 DATE    _________________

 NAME    _______________________________________________________________________

 ADDRESS _______________________________________________________________________

         _______________________________________________________________________

         _______________________________________________________________________

         _______________________________________________________________________


 DESCRIBE YOUR SYSTEM HARDWARE AND ANY MODIFICATIONS YOU MAY HAVE MADE.

 _______________________________________________________________________________

 _______________________________________________________________________________

 _______________________________________________________________________________

 _______________________________________________________________________________

 _______________________________________________________________________________

 _______________________________________________________________________________

 _______________________________________________________________________________


 Describe,  in  detail, the problem you are having. Include examples which we can
 run that clearly and REPEATEDLY demonstates the problem. The simpler the example
 the quicker we will be able to locate the cause of it.


 Attach extra sheets or send us a SS/SD disk with upper case file names.

 _______________________________________________________________________________

 _______________________________________________________________________________

 _______________________________________________________________________________

 _______________________________________________________________________________

 _______________________________________________________________________________

 _______________________________________________________________________________

 _______________________________________________________________________________

 _______________________________________________________________________________


 SEND THIS FORM AND ANY ASSOCIATED DOCUMENTATION TO:

 Windrush Micro Systems, Worstead Labs., N. Walsham, Norfolk, NR28 9SA, England
                                SUGGESTION FORM


 We  consider direct comment from our customers a valuable asset in guiding us in
 the evolution of our products.

 We actively encourage users to offer suggestions  on  how  we  may  improve  the
 performance  or  ease  of use of our products. We would also like to know if any
 feature, function, etc. of the product or the associated documentation annoys or
 confuses you.

 If  you  have  any comments, good, bad or indifferent we ask that you take a few
 minutes of your time to let us know.


 PRODUCT ______________ REVISION ______________ SERIAL NUMBER __________________


 NAME    _______________________________________________________________________

 ADDRESS _______________________________________________________________________

         _______________________________________________________________________

         _______________________________________________________________________

         _______________________________________________________________________


 SUGGESTION/COMMENT: ____________________________________________________________

 ________________________________________________________________________________

 ________________________________________________________________________________

 ________________________________________________________________________________

 ________________________________________________________________________________

 ________________________________________________________________________________

 ________________________________________________________________________________

 ________________________________________________________________________________

 ________________________________________________________________________________

 ________________________________________________________________________________

 ________________________________________________________________________________

 ________________________________________________________________________________

 ________________________________________________________________________________

 ________________________________________________________________________________

 ________________________________________________________________________________


  Windrush Micro Systems, Worstead Labs, N. Walsham, Norfolk, NR28 9SA, England


                                 SCREDITOR III


                               COMMAND REFERENCE


 This document is nothing more than the  INDEX,  the  OPERATOR  summary  and  the
 COMMAND  summary  sections  of  the  accompanying  manual.  They are provided to
 assist you in locating information in  the  SCREDITOR  III  TECHNICAL  REFERENCE
 MANUAL.


 The  accompanying  manual  has been arranged in reverse order intentionally. The
 first section you will need to use is the INSTALLATION manual. The next  section
 you  will need to use is the TRAINING manual. Once you have become familiar with
 SCREDITOR III the only section you should require is the REFERENCE manual and on
 occasion  the  TRAINING manual. Thus we have organized the manual to present the
 most frequently used sections first and the least used section last.


                        B E F O R E   Y O U   S T A R T

 1. Have you completed and returned the REGISTRATION form?

 2. Have you made a working copy of the original disks we sent you?

 3. Is the original disk stored in a safe location?


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   If  you  cannot  answer  all  of these questions 'YES' ... GO   *
      *   STRAIGHT TO JAIL, DO NOT PASS GO, AND DO NOT COLLECT $200.      *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


---------------------------------------------
STRM00.TXT

.DHO
%SCREDITOR III WORD PROCESSOR                          TECHNICAL REFERENCE MANUAL

                               TABLE OF CONTENTS


.DHE
%TECHNICAL REFERENCE MANUAL                          SCREDITOR III WORD PROCESSOR

                               TABLE OF CONTENTS


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                          PAGE %%%%
.DFE
"
 PAGE %%%%                                          (C) 1982, ALFORD & ASSOCIATES
 SCREDITOR III DEFINITIONS . . . . . . . . . . . . . . . . . . . . . SECTION ONE
   BUFFER  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   1-1
   CHARACTERS  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   1-1
   COMMANDS  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   1-1
   CURRENT BUFFER  . . . . . . . . . . . . . . . . . . . . . . . . . . . .   1-1
   CURRENT LINE  . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   1-1
   CURRENT COLUMN  . . . . . . . . . . . . . . . . . . . . . . . . . . . .   1-1
   CURSOR  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   1-2
   DELIMITER . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   1-2
   DISK OPERATING SYSTEM (DOS) . . . . . . . . . . . . . . . . . . . . . .   1-2
   ESCAPE COMMANDS . . . . . . . . . . . . . . . . . . . . . . . . . . . .   1-2
   FILE CONTROL BLOCK (FCB)  . . . . . . . . . . . . . . . . . . . . . . .   1-2
   MELD  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   1-3
   MISCELLANEOUS DOS COMMANDS  . . . . . . . . . . . . . . . . . . . . . .   1-3
   MODES . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   1-3
   OPERATOR  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   1-3
   PACK  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   1-3
   SINGLE KEY OPERATOR . . . . . . . . . . . . . . . . . . . . . . . . . .   1-3
   SCROLL  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   1-3
   STRING  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   1-4
   TARGET  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   1-4
   TYPE CHARACTER  . . . . . . . . . . . . . . . . . . . . . . . . . . . .   1-4
   WORD-WRAP . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   1-4


 SCREDITOR III AND DOS . . . . . . . . . . . . . . . . . . . . . . . SECTION TWO

   PART ONE - SSB AND FLEX OPERATING SYSTEMS . . . . . . . . . . . . . . .   2-1
     BEFORE STARTING . . . . . . . . . . . . . . . . . . . . . . . . . . .   2-1
     CALLING THE EDITOR  . . . . . . . . . . . . . . . . . . . . . . . . .   2-1
     DRIVE ASSIGNMENTS . . . . . . . . . . . . . . . . . . . . . . . . . .   2-2
     EDIT FILE EXTENSIONS  . . . . . . . . . . . . . . . . . . . . . . . .   2-2
     DATA FILE EXTENSIONS  . . . . . . . . . . . . . . . . . . . . . . . .   2-3
     FILES EDITED BY SCREDITOR III . . . . . . . . . . . . . . . . . . . .   2-3
     DATA FILES GENERATED BY SCREDITOR III . . . . . . . . . . . . . . . .   2-3
     OTHER FILES GENERATED BY SCREDITOR III  . . . . . . . . . . . . . . .   2-4
     FILES CREATED BY CONGEN, KEYGEN and PRTGEN  . . . . . . . . . . . . .   2-4
     FILE ERROR HANDLING . . . . . . . . . . . . . . . . . . . . . . . . .   2-4

   PART TWO - OS-9 OPERATING SYSTEM  . . . . . . . . . . . . . . . . . . .   2-5
     BEFORE STARTING . . . . . . . . . . . . . . . . . . . . . . . . . . .   2-5
     CALLING THE EDITOR  . . . . . . . . . . . . . . . . . . . . . . . . .   2-5
     FILES EDITED BY SCREDITOR III . . . . . . . . . . . . . . . . . . . .   2-6
     DATA FILES GENERATED BY SCREDITOR III . . . . . . . . . . . . . . . .   2-6
     OTHER FILES GENERATED BY SCREDITOR III  . . . . . . . . . . . . . . .   2-6
     FILES CREATED BY CONGEN, KEYGEN and PRTGEN  . . . . . . . . . . . . .   2-6
     PATHNAMES DURING EDITING  . . . . . . . . . . . . . . . . . . . . . .   2-7
     DATA FILE EXTENSIONS  . . . . . . . . . . . . . . . . . . . . . . . .   2-7
     FILE ERROR HANDLING . . . . . . . . . . . . . . . . . . . . . . . . .   2-7


 SCREDITOR III SCREEN DISPLAY  . . . . . . . . . . . . . . . . . . SECTION THREE
   BANNER LINE . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   3-1
     STATUS FLAG SECTION . . . . . . . . . . . . . . . . . . . . . . . . .   3-1
     NUMERIC STATUS SECTION  . . . . . . . . . . . . . . . . . . . . . . .   3-2
   TAB/MARGIN LINE . . . . . . . . . . . . . . . . . . . . . . . . . . . .   3-2
   SCREEN DISPLAY AREA . . . . . . . . . . . . . . . . . . . . . . . . . .   3-3
   GENERAL DISPLAY INFORMATION . . . . . . . . . . . . . . . . . . . . . .   3-3

 SCREDITOR III MODES . . . . . . . . . . . . . . . . . . . . . . .  SECTION FOUR
   ACTIVE SYMBOL MODE  . . . . . . . . . . . . . . . . . . . . . . . . . .   4-1
   COMMAND MODE  . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   4-1
   INSERT CHARACTER MODE . . . . . . . . . . . . . . . . . . . . . . . . .   4-1
     INSERT CHARACTER MODE OPERATON DURING TEXT MODE . . . . . . . . . . .   4-1
     INSERT CHARACTER MODE DURING LINE MODE  . . . . . . . . . . . . . . .   4-2
   INSERT LINE MODE  . . . . . . . . . . . . . . . . . . . . . . . . . . .   4-2
   LINE MODE . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   4-3
   MULTI-COLUMN MODE . . . . . . . . . . . . . . . . . . . . . . . . . . .   4-3
   NUMBERS DISPLAY MODE  . . . . . . . . . . . . . . . . . . . . . . . . .   4-4
   PAGE FLAG DISPLAY MODE  . . . . . . . . . . . . . . . . . . . . . . . .   4-4
   SCREEN EDIT MODE  . . . . . . . . . . . . . . . . . . . . . . . . . . .   4-4
   SINGLE-COLUMN MODE  . . . . . . . . . . . . . . . . . . . . . . . . . .   4-4
   TEXT MODE . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   4-5
   WORD-WRAP . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   4-5


 SCREDITOR III COMMANDS AND OPERATORS  . . . . . . . . . . . . . .  SECTION FIVE
   ENTERING COMMANDS . . . . . . . . . . . . . . . . . . . . . . . . . . .   5-1
   SPECIAL CHARACTERS  . . . . . . . . . . . . . . . . . . . . . . . . . .   5-2
     DELIMITER . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   5-2
     EOC CHARACTER . . . . . . . . . . . . . . . . . . . . . . . . . . . .   5-2
     EOL   . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   5-2
     TYPE CHARACTERS . . . . . . . . . . . . . . . . . . . . . . . . . . .   5-2
     DELETE (ABORT)  . . . . . . . . . . . . . . . . . . . . . . . . . . .   5-2
   RE-EXECUTING A COMMAND LINE . . . . . . . . . . . . . . . . . . . . . .   5-3
   MULTIPLE COMMANDS   . . . . . . . . . . . . . . . . . . . . . . . . . .   5-4
   ENTERING OPERATORS IN COMMAND MODE  . . . . . . . . . . . . . . . . . .   5-4
   EXCEPTIONS TO EOC USE . . . . . . . . . . . . . . . . . . . . . . . . .   5-4
   ERRORS  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   5-5
   CORRECTING COMMAND MODE ERRORS  . . . . . . . . . . . . . . . . . . . .   5-5
   BUFFER FULL ERROR . . . . . . . . . . . . . . . . . . . . . . . . . . .   5-5
   EXECUTING THE COMMAND LINE  . . . . . . . . . . . . . . . . . . . . . .   5-6
   GENERAL COMMAND DESCRIPTION CONVENTIONS . . . . . . . . . . . . . . . .   5-6


 SCREDITOR III COMMAND DESCRIPTIONS  . . . . . . . . . . . . . . . . SECTION SIX
   AB - ABORT EDIT SESSION . . . . . . . . . . . . . . . . . . . . . . . .   6-1
   BO - MOVE TO BOTTOM OF BUFFER . . . . . . . . . . . . . . . . . . . . .   6-1
   CC - CONTROL CODE IMBEDDMENT  . . . . . . . . . . . . . . . . . . . . .   6-2
   CD - CODE DISPLAY . . . . . . . . . . . . . . . . . . . . . . . . . . .   6-4
   CF - CLOSE READ-IN OR WRITE-OUT FILE  . . . . . . . . . . . . . . . . .   6-4
   CH - CHANGE ONE STRING TO ANOTHER STRING  . . . . . . . . . . . . . . .   6-5
   CM - CLEAR MARK(S)  . . . . . . . . . . . . . . . . . . . . . . . . . .   6-6
   CO - COPY LINES . . . . . . . . . . . . . . . . . . . . . . . . . . . .   6-7
   CP - CLOSE PRINTER PATH (OS-9 VERSION ONLY) . . . . . . . . . . . . . .   6-8
   CT - CLEAR TABS . . . . . . . . . . . . . . . . . . . . . . . . . . . .   6-54
   DF - DEFINE FOOTER  . . . . . . . . . . . . . . . . . . . . . . . . . .   6-8
   DH - DEFINE HEADER  . . . . . . . . . . . . . . . . . . . . . . . . . .   6-8
   DP - DEFINE PRINTER PAGE FORMATTING . . . . . . . . . . . . . . . . . .   6-9
   DS - DEFINE SYMBOL  . . . . . . . . . . . . . . . . . . . . . . . . . .   6-11
   EX - EXIT TO SYSTEM MONITOR (FLEX and SSB versions only)  . . . . . . .   6-13
   FI - FIND STRING OF CHARACTERS  . . . . . . . . . . . . . . . . . . . .   6-13
   GO - GOTO LINE  . . . . . . . . . . . . . . . . . . . . . . . . . . . .   6-14
   GP - GOTO PAGE START  . . . . . . . . . . . . . . . . . . . . . . . . .   6-14
   HR - HELP REQUEST . . . . . . . . . . . . . . . . . . . . . . . . . . .   6-15
   ID - INSERT READ-IN LINE NUMBER DISPLAY . . . . . . . . . . . . . . . .   6-16
   JL - JUSTIFY LINE . . . . . . . . . . . . . . . . . . . . . . . . . . .   6-17

   JM - JUSTIFICATION MODE . . . . . . . . . . . . . . . . . . . . . . . .   6-18
   JP - JUSTIFY PARAGRAPH  . . . . . . . . . . . . . . . . . . . . . . . .   6-19
   KL - KILL (DELETE) LINES  . . . . . . . . . . . . . . . . . . . . . . .   6-20
   LE - LINE EDIT MODE . . . . . . . . . . . . . . . . . . . . . . . . . .   6-20
   LI - LINE INDENT  . . . . . . . . . . . . . . . . . . . . . . . . . . .   6-21
   LM - SET LEFT MARGIN  . . . . . . . . . . . . . . . . . . . . . . . . .   6-21
   LO - LOG EDIT SESSION . . . . . . . . . . . . . . . . . . . . . . . . .   6-22
   LP - LOAD PRINTER DATA FILE . . . . . . . . . . . . . . . . . . . . . .   6-23
   LS - LOAD SYMBOL FILE . . . . . . . . . . . . . . . . . . . . . . . . .   6-24
   MC - MULTI-COLUMN ON/OFF  . . . . . . . . . . . . . . . . . . . . . . .   6-25
   MO - MOVE LINES . . . . . . . . . . . . . . . . . . . . . . . . . . . .   6-26
   NE - NEW BLOCK  . . . . . . . . . . . . . . . . . . . . . . . . . . . .   6-27
   NS - NEW SCREEN . . . . . . . . . . . . . . . . . . . . . . . . . . . .   6-28
   NU - CYCLE NUMBERS DISPLAY  . . . . . . . . . . . . . . . . . . . . . .   6-29
   OD - DELETE DISK FILE . . . . . . . . . . . . . . . . . . . . . . . . .   6-54
   OL - LIST DISK FILES  . . . . . . . . . . . . . . . . . . . . . . . . .   6-54
   OO - OPEN (CREATE) OUTPUT FILE  . . . . . . . . . . . . . . . . . . . .   6-30
   OP - OPEN FILE FOR WRITE-OUT (FLEX and SSB versions)  . . . . . . . . .   6-31
   OP - OPEN PRINTER PATH (OS-9 version) . . . . . . . . . . . . . . . . .   6-32
   OR - OPEN FILE FOR READ-IN  . . . . . . . . . . . . . . . . . . . . . .   6-33
   OS - OPERATING SYSTEM COMMAND (OS-9 version only) . . . . . . . . . . .   6-34
   OV - VIEW DISK FILE . . . . . . . . . . . . . . . . . . . . . . . . . .   6-54
   OW - OPEN FILE FOR WRITE-OUT  . . . . . . . . . . . . . . . . . . . . .   6-35
   PA - CYCLE PAGE START DISPLAY . . . . . . . . . . . . . . . . . . . . .   6-36
   PI - PARAGRAPH INDENT . . . . . . . . . . . . . . . . . . . . . . . . .   6-37
   PL - PACK LINE  . . . . . . . . . . . . . . . . . . . . . . . . . . . .   6-38
   PM - PRINT-MERGE  . . . . . . . . . . . . . . . . . . . . . . . . . . .   6-39
   PP - PACK PARAGRAPH . . . . . . . . . . . . . . . . . . . . . . . . . .   6-42
   PR - PRINT COMMAND  . . . . . . . . . . . . . . . . . . . . . . . . . .   6-43
   PS - CYCLE PRINTER PAGE PAUSE . . . . . . . . . . . . . . . . . . . . .   6-44
   RI - READ-IN LINES FROM FILE  . . . . . . . . . . . . . . . . . . . . .   6-45
   RM - RIGHT MARGIN SET . . . . . . . . . . . . . . . . . . . . . . . . .   6-46
   RS - READ-IN SKIP . . . . . . . . . . . . . . . . . . . . . . . . . . .   6-47
   SA - SAVE LINES TO FILE . . . . . . . . . . . . . . . . . . . . . . . .   6-47
   SM - SET LINE MARK  . . . . . . . . . . . . . . . . . . . . . . . . . .   6-48
   SS - SAVE SYMBOLS TO FILE . . . . . . . . . . . . . . . . . . . . . . .   6-48
   ST - SET TABS . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   6-49
   TA - TALLY COMMANDS . . . . . . . . . . . . . . . . . . . . . . . . . .   6-50
   TE - SELECT TEXT MODE . . . . . . . . . . . . . . . . . . . . . . . . .   6-51
   TO - MOVE TO TOP OF BUFFER  . . . . . . . . . . . . . . . . . . . . . .   6-52
   UH - UNDEFINE HEADERS/FOOTERS . . . . . . . . . . . . . . . . . . . . .   6-52
   WC - COPY LINES TO WRITE-OUT FILE . . . . . . . . . . . . . . . . . . .   6-52
   WE - EXTRACT LINES TO WRITE-OUT FILE  . . . . . . . . . . . . . . . . .   6-53


 SCREDITOR III OPERATOR DESCRIPTIONS . . . . . . . . . . . . . . . SECTION SEVEN
   AS - ACTIVATE SYMBOL  . . . . . . . . . . . . . . . . . . . . . . . . .   7-1
   BS - DESTRUCTIVE BACKSPACE  . . . . . . . . . . . . . . . . . . . . . .   7-1
   CD - CURSOR DOWN  . . . . . . . . . . . . . . . . . . . . . . . . . . .   7-2
   CL - CURSOR LEFT  . . . . . . . . . . . . . . . . . . . . . . . . . . .   7-2
   CR - CURSOR RIGHT . . . . . . . . . . . . . . . . . . . . . . . . . . .   7-2
   CU - CURSOR UP  . . . . . . . . . . . . . . . . . . . . . . . . . . . .   7-3
   DC - DELETE CHARACTER . . . . . . . . . . . . . . . . . . . . . . . . .   7-3
   DL - DELETE LINE  . . . . . . . . . . . . . . . . . . . . . . . . . . .   7-4
   DM - DELETE TO MARGIN . . . . . . . . . . . . . . . . . . . . . . . . .   7-4
   DW - DELETE WORD  . . . . . . . . . . . . . . . . . . . . . . . . . . .   7-4
   ES - ESCAPE (ENTER COMMAND MODE)  . . . . . . . . . . . . . . . . . . .   7-5
   IC - INSERT CHARACTER MODE  . . . . . . . . . . . . . . . . . . . . . .   7-6

   IL - INSERT LINE MODE . . . . . . . . . . . . . . . . . . . . . . . . .   7-7
   IS - INSERT SPACE . . . . . . . . . . . . . . . . . . . . . . . . . . .   7-7
   GM - GOTO MARK  . . . . . . . . . . . . . . . . . . . . . . . . . . . .   7-8
   LC - LOWER CASE . . . . . . . . . . . . . . . . . . . . . . . . . . . .   7-8
   MP - MELD PARAGRAPH . . . . . . . . . . . . . . . . . . . . . . . . . .   7-9
   NL - NEW LINE . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   7-9
   PD - PAGE DOWN  . . . . . . . . . . . . . . . . . . . . . . . . . . . .   7-10
   PU - PAGE UP  . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   7-10
   SD - SCROLL DOWN  . . . . . . . . . . . . . . . . . . . . . . . . . . .   7-10
   SP - SPLIT PARAGRAPH  . . . . . . . . . . . . . . . . . . . . . . . . .   7-11
   SU - SCROLL UP  . . . . . . . . . . . . . . . . . . . . . . . . . . . .   7-11
   TE - TAB TO END OF LINE . . . . . . . . . . . . . . . . . . . . . . . .   7-11
   TL - TAB CURSOR LEFT  . . . . . . . . . . . . . . . . . . . . . . . . .   7-12
   TM - TAB TO MARGIN  . . . . . . . . . . . . . . . . . . . . . . . . . .   7-12
   TN - TAB TO NEXT WORD . . . . . . . . . . . . . . . . . . . . . . . . .   7-12
   TP - TAB TO PREVIOUS WORD . . . . . . . . . . . . . . . . . . . . . . .   7-13
   TR - TAB CURSOR RIGHT . . . . . . . . . . . . . . . . . . . . . . . . .   7-13
   TS - TAB SET/CLEAR  . . . . . . . . . . . . . . . . . . . . . . . . . .   7-13
   UC - UPPER CASE . . . . . . . . . . . . . . . . . . . . . . . . . . . .   7-14


 SCREDITOR III MESSAGES  . . . . . . . . . . . . . . . . . . . . . SECTION EIGHT


 SCREDITOR III OPERATOR SUMMARY  . . . . . . . . . . . . . . . . .  SECTION NINE


 SCREDITOR III COMMAND SUMMARY . . . . . . . . . . . . . . . . . . . SECTION TEN


 GENERAL INFORMATION ADDENDUM  . . . . . . . . . . . . . . . . . .  ADDENDUM 'A'


 SCREDITOR III TRAINING AND USER'S GUIDE . . . . . . . . . . . . . . .  APPENDED


 SCREDITOR III SYSTEM INSTALLATION MANUAL  . . . . . . . . . . . . . .  APPENDED


---------------------------------------------
STRM01.TXT

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


---------------------------------------------
STRM02.TXT

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


---------------------------------------------
STRM03.TXT

.DHO
%SCREDITOR III WORD PROCESSOR                          TECHNICAL REFERENCE MANUAL

                       SCREDITOR III DISPLAY INFORMATION


.DHE
%TECHNICAL REFERENCE MANUAL                          SCREDITOR III WORD PROCESSOR

                       SCREDITOR III DISPLAY INFORMATION


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                        PAGE 3-%%%%
.DFE
"
 PAGE 3-%%%%                                        (C) 1982, ALFORD & ASSOCIATES
 The screen display format presented by SCREDITOR III can be thought of as  being
 made  up  of  three  sections.  The  first is the BANNER LINE, the second is the
 TAB/MARGIN line, and the  third  is  the  SCREEN  DISPLAY  AREA.  The  following
 paragraphs describe each of these in greater detail.


BANNER LINE

 The  banner  line  is physically the top line of the screen, and is divided into
 two sections. The first is the status flag section, and is the left side of  the
 line.  The  second  is  the  numeric status section, and is the remainder of the
 line.


 STATUS FLAG SECTION -

 The status flag section of  the  BANNER  LINE  displays  current  editing  state
 information. The flags used by SCREDITOR III are two-character abbreviations for
 the particular state. When a  particular  MODE  is  active,  the  flag  will  be
 displayed.  At other times, the flag position is blank. Each flag will always be
 displayed in the same position of the status flag section. The flag  assignments
 are as follows:


    IL IC xE AS PR MC Wx Jx Px


 IL    indicates that INSERT LINE MODE is active.

 IC    indicates that INSERT CHARACTER MODE is active.

 xE    indicates  whether LINE or TEXT MODE is active. If LINE is active, LE will
       be displayed. If TEXT MODE is active, TE will be displayed.

 AS    indicates that INSERT SYMBOL MODE is active.

 PR    indicates that the input file has not been fully read. When the last  line
       in the input file has been read, this flag will be cleared.

 MC    indicates that MULTI-COLUMN MODE is active.

 Wx    will  be  displayed  as WP, WR, WW or WE or blank depending upon whether a
       PRINT-OUT, READ-IN or WRITE-OUT is active, or an error has  occurred  (WE)
       which has disabled all of the disk work COMMANDS. If no work file is open,
       the indicator will be blank. The WP state is not used in the OS-9  version
       of SCREDITOR III.

 Jx    will be displayed as JL, JC, JR or JA depending upon whether LEFT, CENTER,
       RIGHT or ALL JUSTIFICATION MODE is active.

 Px    will be displayed as PS or PC  if  a  printer  data  file  is  loaded  and
       printing  may be done. PS indicates that printing will pause at the end of
       each printed page. PC indicates that printing will be  continuous.  If  no
       PRINTER  DATA  file  is loaded, or if the path has been closed in the OS-9
       version, the indicator will be blank.


 NUMERIC STATUS SECTION -

 The  NUMERIC  STATUS  SECTION continuously displays general editing information.
 This information is continuously updated as necessary to reflect  current  data.
 The layout of this section is as follows:


    C:001 R:01 L:00001 T:00001 D:001-072


 C:001         indicates  the  current  cursor column in the SCREEN DISPLAY AREA,
               numbered from 1 to 249.

 R:01          indicates the current cursor row in the SCREEN DISPLAY AREA,  from
               1 to the length of your screen less two (22 for 24 line displays).

 L:00001       indicates the line number of the line on which the cursor resides,
               referenced from the first line of the file, which is line one.  If
               a  file  is  larger than memory and a NEW or SAVE COMMAND has been
               issued, this number will still be relative to  the  start  of  the
               file.

 T:00001       indicates  the line number of the last line in the current buffer,
               referenced from the  first  line  in  the  file,  as  with  the  L
               indicator.

 D:001-079     indicates the current horizontal portion of the display area which
               is being displayed. Whenever  a  horizontal  scroll  occurs,  this
               indicator changes to show which columns of the displayed lines are
               being shown.


TAB/MARGIN LINE

 The TAB/MARGIN line is a general purpose line. When SCREDITOR III is loaded  and
 run, the copyright notice will be displayed on this line, and will automatically
 clear after about one second. After clearing, the remainder  of  the  screen  is
 displayed, and the TAB/MARGIN display becomes active.

 During  normal  screen  editing,  the  tab  settings  and margins of the current
 display area  are  shown.  these  settings  are  continuously  updated  whenever
 horizontal scrolls occur to reflect the tab and margin information pertaining to
 the displayed part of the lines.

 Each tab is displayed as a T, the left margin as an L, and the right  margin  as
 an  R, except in the case where both margins are in the same column, when a B is
 displayed. One or both margins may or may not be displayed  at  any  given  time
 depending  upon  where  the  current  display area is horizontally. Those column
 positions which have no  tab  or  margin  settings  will  be  displayed  as  the
 character which you defined in the CONGEN process as the TAB SEPARATOR. If a tab
 setting exists in the same column as either margin, the margin will be displayed
 until it is moved, at which time the tab becomes active again.

 Whenever  an  error  message  is posted by SCREDITOR III, the TAB/MARGIN LINE is
 cleared, and the error message is displayed in its place.  Only  the  SPACE  BAR
 will clear an error message and restore the TAB/MARGIN LINE.


 Whenever you enter COMMAND MODE, the TAB/MARGIN LINE is cleared, and becomes the
 command entry line. At the conclusion of  COMMAND  MODE  (last  entered  COMMAND
 executed)  the line will return to TAB/MARGIN display. If an error occurs in the
 execution of a command line, the error message will be  displayed  as  described
 above. When the error is cleared, SCREEN EDIT MODE will always be re-entered.


SCREEN DISPLAY AREA

 The remainder of the screen is devoted to the SCREEN DISPLAY AREA. This  is  the
 area in which all screen editing occurs. This area may be thought of as a window
 into the text file which is being edited. The actual screen display area is made
 up of two sections.

 The  first  is the left-most side of the display, and contains line information.
 The first column will contain one of four characters. An asterisk or lower  case
 P indicates a marked line. A lower or upper case P indicates the first line of a
 page as it will be printed. If neither a page or marked line  condition  exists,
 the first column will be blank.

 After  the  line  marker, a line or page number will be displayed if the numbers
 display is turned on. If not on, no display space will be taken. The next column
 after  the line or page numbers (if on) or after the line marker (if numbers are
 off) will always be a blank.

 As a point of interest, the right-most display column is never used by SCREDITOR
 III to eliminate scrolling problems with some terminals. In total therefore, the
 maximum number of text columns displayed will be either the  length  of  a  line
 minus  three  if numbers are off (77 columns for an 80 column display), or minus
 eight if numbers are on (72 columns for an 80 column display).


GENERAL DISPLAY INFORMATION

 During SCREEN EDIT MODE when the either  side  of  the  display  is  passed,  an
 automatic  horizontal  scroll  takes  place  to  keep  the cursor in the display
 window.

 During COMMAND MODE, when the cursor reaches the right side of the display,  the
 line will physically move left one column each time a key is entered which would
 move the cursor right. The line will move to the right under the opposite  input
 conditions.

 Any imbedded control codes in the screen display area will be displayed as an up
 arrow (^). The DC COMMAND will cause these control codes to be displayed as  ^DD
 where DD is the decimal value of the imbedded code.


                        THIS PAGE IS INTENTIONALLY BLANK


---------------------------------------------
STRM04.TXT

.DHO
%SCREDITOR III WORD PROCESSOR                          TECHNICAL REFERENCE MANUAL

                              SCREDITOR III MODES


.DHE
%TECHNICAL REFERENCE MANUAL                          SCREDITOR III WORD PROCESSOR

                              SCREDITOR III MODES


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                        PAGE 4-%%%%
.DFE
"
 PAGE 4-%%%%                                        (C) 1982, ALFORD & ASSOCIATES
 SCREDITOR III is a complex program in that the way it operates can  be  made  to
 vary,  depending  upon  the  state  of  a  number  of things, including previous
 COMMANDS, what is currently being done, etc... These states, or modes,  must  be
 fully  understood  to  make  full  use  of the program. The following paragraphs
 describe each of the defined  MODES  of  SCREDITOR  III,  and  how  the  program
 operation changes when each is active.


ACTIVE SYMBOL MODE

 When the ACTIVE SYMBOL MODE is entered, the next entry from the keyboard will be
 treated as the name of a SYMBOL. When the key is typed, SCREDITOR III will  look
 up  that symbol, and, if it is defined, will replace the keyboard input with the
 string of characters, OPERATORS, and/or COMMANDS which comprise the symbol. Only
 when  the  last character of the symbol has been handled or an error occurs will
 the keyboard again become active.

 Symbols will commonly define strings of characters which would otherwise have to
 be  typed  over and over from the keyboard, such as SCREDITOR III, which appears
 constantly throughout this manual. Read the sections of this  manual  about  the
 DEFINE SYMBOL COMMAND and the ACTIVATE SYMBOL OPERATOR for more information.


COMMAND MODE

 During  COMMAND  MODE,  the  TAB/MARGIN  line is cleared and becomes the command
 line. On this line various COMMANDS are entered, and are  executed  when  a  NEW
 LINE  OPERATOR  is typed. These COMMANDS are entered in this way due to the fact
 that they are either seldom used, or require  some  additional  information  for
 their execution.


INSERT CHARACTER MODE

 Insert character is defined as a distinct mode in SCREDITOR III. This is because
 several automatic operations occur at the start of, during, and at  the  end  of
 this operation, as described in the following paragraphs:


INSERT CHARACTER MODE OPERATION DURING TEXT MODE

 When INSERT CHARACTER MODE is activated and SCREDITOR III is in TEXT MODE, a new
 line  is generated after the current line by scrolling down the remainder of the
 current paragraph. Then the part of the line from the cursor to the right margin
 is moved down onto this new line.

 Once INSERT CHARACTER MODE is active, operation is similar to INSERT LINE  MODE,
 except  that  only  the  DESTRUCTIVE  BACKSPACE  OPERATOR may be entered without
 automatically leaving the mode.


 When  INSERT  CHARACTER  MODE  is  terminated  by the entry of another OPERATOR,
 several things happen. First, the character which was under the cursor when  the
 mode  was entered is examined. If it was not a space, SCREDITOR III assumes that
 an insert was made to the middle of a word, and the part-word is rejoined to the
 last  non-space  character  typed.  If  it  was a space, this rejoining will not
 occur. Next, the remainder  of  the  line  or  paragraph  will  be  MELDED  (see
 DEFINITIONS). Finally, if the keystroke was any OPERATOR other than DELETE LINE,
 DELETE CHARACTER or DELETE WORD, it will be executed. These three OPERATORS  are
 ignored  due  to  the fact that you will generally not know what will be deleted
 due to the automatic paragraph re-forming which just took place.


DURING LINE MODE

 When INSERT CHARACTER MODE is activated and SCREDITOR III is in LINE MODE, no
 immediate action occurs except for the change in the status section of the
 banner line.

 Each time a character is entered after this, however, the part of the line
 from the cursor rightward is moved one column to the right, the character is
 entered at the cursor, and the cursor moves one column to the right. As the
 part-line is moved, any character which was on the right margin will be lost.

 DESTRUCTIVE BACKSPACE will move the right side of the line to the left,
 eliminating characters to the left of the cursor. Spaces will be generated at
 the right side of the line.

 When another OPERATOR is entered, the only indication before the new OPERATOR
 is executed that INSERT CHARACTER MODE has ended will be the update of the
 status section of the command line. Again, DELETE CHARACTER, DELETE WORD and
 DELETE LINE will not be executed.


INSERT LINE MODE

 When  SCREDITOR  III  enters  INSERT  LINE MODE, the part of the screen from the
 current line to the bottom  of  the  display  area  will  move  down  one  line,
 generating a blank line before the current line. This blank line will become the
 new current line. The cursor will move to the  left  margin,  and  a  horizontal
 scroll will occur if necessary to keep the cursor on the screen.

 While  in  INSERT  LINE  MODE,  the NEW LINE OPERATOR will generate new lines by
 means of scrolling the top part of the screen display area up one line from  the
 current line up to the top of the display area. The cursor itself will remain on
 the same display line. Any COMMAND or OPERATOR which would cause the  cursor  to
 move from the current line, such as the CURSOR UP OPERATOR, or the TOP OF BUFFER
 COMMAND, will terminate INSERT LINE MODE.


LINE MODE

 When SCREDITOR III is in LINE MODE, several of the text formatting COMMANDS  are
 turned off, and the action of several others are modified.

 As  has  been  previously  noted, INSERT CHARACTER MODE acts differently in LINE
 MODE. Word-wrap is turned off. The SPLIT LINE and MELD PARAGRAPH  OPERATORS  are
 inactive and no paragraph MELD'ing will ever take place.

 This  mode is used to insure that changes to the text are limited to the current
 line only, and is the mode which would be  used  to  enter  tables  and  program
 source  code,  where  text  must  stay  where it was typed under all conditions.
 Individual  COMMAND  and  OPERATOR  descriptions  will  tell  when  there  is  a
 difference in operation between LINE and TEXT MODES.


MULTI-COLUMN MODE

 MULTI-COLUMN  MODE  is  a  special  capability  of  SCREDITOR  III,  and  allows
 insertions within the current margins without affecting  the  text  outside  the
 margins.

 When  an  insertion in MULTI-COLUMN MODE is made, a new line is always generated
 at the end of the current buffer to  receive  the  last  part-line  between  the
 margins which is being moved down.

 When  a deletion is made in MULTI-COLUMN MODE, text between the margins is moved
 up into the current line, and throughout the current buffer down to its end.  No
 line  is  ever  deleted  from  the  current buffer when this action takes place,
 however, even though after the deletion the bottom  line  in  the  buffer  might
 become  blank.  This is because SCREDITOR III makes no assumptions as to why the
 line at the bottom of the buffer is blank, and an error on the side  of  caution
 is preferred.

 If  you are doing a number of insertions and deletions in MULTI-COLUMN MODE, the
 buffer will gradually grow with blank lines at the end of the text. It is up  to
 you  to  manually  delete these lines periodically by exiting MULTI-COLUMN MODE,
 moving to the bottom of the buffer, deleting the lines, then returning  to  your
 work point and re-entering MULTI-COLUMN MODE.

 A  special  condition  can  occur  during  the insertion or deletion of lines in
 MULTI-COLUMN MODE which should be noted. We call this text tearing. Since  lines
 are truncated to the last displayable character as they are stored in the buffer
 in SCREDITOR III, the length of a blank line is only five characters  long  (due
 to internal bookkeeping characters). If a line is inserted in MULTI-COLUMN MODE,
 however, parts of lines are moved down in the buffer. Blank lines may no  longer
 be blank lines.

 St  is  possible, under some conditions, to double the space used by text in the
 buffer after inserting only one line. Under these  conditions,  the  buffer  can
 fill  extremely  fast.  When an insert line condition would result in the buffer
 overflowing, a NOT ENOUGH ROOM TO INSERT message will be posted, and the  insert
 will not occur. The only way to get around this is to extract part of the buffer
 out to a work file, do the insert, and then read the extracted  text  back  into
 the buffer using the OPEN WRITE-OUT, WRITE-EXTRACT, CLOSE FILE, OPEN READ-IN and
 READ-IN COMMANDS.


 When MULTI-COLUMN MODE is active, insertions and  deletions  of  lines  will  be
 quite  slow due to the fact that SCREDITOR III has to take material from between
 the current margins and move it up or down a line from the current line  to  the
 bottom of the current buffer.


NUMBERS DISPLAY MODE

 When this mode is active, line numbers will be displayed at  the  left  side  of
 each  line.  The  numbers  are  referenced  to the start of the file and will be
 continuously adjusted as insertions and deletions are made.


PAGE FLAG DISPLAY MODE

 When this mode is active, the first line of each new page will  be  marked  with
 the letter P beside it in the left-most column of the display area. In addition,
 if NUMBERS DISPLAY MODE is also active, each line which is the start of  a  page
 will  have  the number of the page which it starts displayed instead of the line
 number.

 The length of a page, which determines where the page start flag  is  displayed,
 is  calculated from the first page in the file, which is page one (unless it has
 been changed by the DEFINE PAGE COMMAND). The actual calculation uses the length
 of odd header and footer definitions on odd pages (or the default top and bottom
 margins if the definitions have not been made, and uses the even definitions  or
 defaults  on  even  pages.  In this way, the page flag always reflects the exact
 position in which a new page will start printing.


SCREEN EDIT MODE

 SCREEN EDIT MODE is the mode used for all  keyboard  text  entry  and  for  most
 manipulation  and  modification  of  the text. In this mode, the cursor is moved
 around on the screen display area as if you were pointing to specific places  on
 a  printed  page.  When  you  reach a place where you want to enter text or make
 changes, the action is similar to working at a typewriter, in that what you  see
 on  the  screen  is a nearly exact image of what the printed document would look
 like.


SINGLE-COLUMN MODE

 When MULTI-COLUMN MODE is not active, SCREDITOR III is in SINGLE COLUMN MODE.

 In this mode, each line in the current buffer is treated as a separate entity by
 such  OPERATORS  as  INSERT  LINE and DELETE LINE, without regard to the current
 margins. In other words, regardless of whether or not text  exists  outside  the
 current  margins,  an  INSERT  LINE  MODE OPERATOR will cause a blank line to be
 generated outside as well as within the margins.

 Although  this is no problem when straight text like this page is being entered,
 it would ruin the entry of a table of information to have extra  lines  inserted
 outside  the  column  of  data being changed. When columnar information is being
 edited, MULTI-COLUMN MODE should be used.
TEXT MODE

 TEXT  MODE  is  the  complementary  function of LINE MODE. When LINE MODE is not
 active, TEXT MODE is.

 In  TEXT  MODE, the text you are entering is dealt with as paragraphs instead of
 lines. Word wrap is active. The SPLIT LINE  and  MELD  PARAGRAPH  OPERATORS  are
 active, and automatic justification will take place.

 Although  TEXT  MODE  will  be used for most text entry, it should NEVER be used
 when tables or other columnar data are being entered, nor should it ever  be  on
 when  information  must stay on the line in which it is entered. If TEXT MODE is
 active, and an INSERT CHARACTER OPERATOR is entered during the typing of a table
 of  information,  the  first  OPERATOR other than BACKSPACE entered after INSERT
 CHARACTER MODE becomes active will cause the table to be nicely  melded  into  a
 well  justified  paragraph.  This can ruin hours of work in a few moments, so be
 careful!


WORD-WRAP

 Although word-wrap is not a mode, a few words are in order as  to  just  how  it
 works. When the end of a line is reached during TEXT MODE text entry, the cursor
 does not move after the character on the margin is typed. Instead, SCREDITOR III
 waits  until one more character is typed. This extra character is then examined.
 If the character is a space or an OPERATOR, the line will be left intact.

 If, the character is not a space or an OPERATOR, SCREDITOR III  assumes  that  a
 part-word has been entered, and the part word along with the extra character are
 removed from the line, and the line is justified as necessary.

 Under the condition of a space or displayable character being  entered  and  the
 current  line  is not the last line in the buffer, a blank line will be inserted
 in the text after the old current line as  if  INSERT  LINE  MODE  were  active.
 Otherwise, a new line will be created at the end of the buffer.

 If a word was removed from the previous line, it will be placed on this new line
 along with the extra character and the cursor will be placed in the column after
 the word.

 If  a space were the extra character, it will be ignored, and the cursor will be
 placed at the left margin in the new line.


                        THIS PAGE IS INTENTIONALLY BLANK


---------------------------------------------
STRM05.TXT

.DHO
%SCREDITOR III WORD PROCESSOR                          TECHNICAL REFERENCE MANUAL

                      SCREDITOR III COMMANDS AND OPERATORS


.DHE
%TECHNICAL REFERENCE MANUAL                          SCREDITOR III WORD PROCESSOR

                      SCREDITOR III COMMANDS AND OPERATORS


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                        PAGE 5-%%%%
.DFE
"
 PAGE 5-%%%%                                        (C) 1982, ALFORD & ASSOCIATES
 As indicated in the  DEFINITIONS  section,  there  are  two  types  of  commands
 recognized  by  SCREDITOR III, ESCAPE COMMANDS (or just COMMANDS) and OPERATORS.
 COMMANDS are entered in COMMAND MODE, and are executed before control returns to
 SCREEN  EDIT  MODE.  These  COMMANDS are so entered either because they are less
 often used than the OPERATORS, or because they  require  additional  information
 before they can execute.

 The  OPERATORS,  on  the  other  hand, with the exception of the ACTIVATE SYMBOL
 OPERATOR, do not require any additional information for their execution, and are
 used  continuously during SCREEN EDIT MODE. For these reasons, they are assigned
 to special keys on the keyboard.


ENTERING COMMANDS

 When COMMAND MODE is entered by  typing  the  ESCAPE  OPERATOR,  the  TAB/MARGIN
 display  will  be  cleared,  and the cursor placed in column one on the line. In
 addition, the last command line entry will be displayed to  allow  you  to  make
 changes and re-execute it, if desired.

 During COMMAND MODE, a number of the normal OPERATORS are available to allow you
 to make changes to the command line, and are active as follows:


 CURSOR LEFT                  SPLIT PARAGRAPH       (*)   INSERT LINE MODE    (*)
 MELD PARAGRAPH        (*)    PAGE UP                     CONVERT TO LOWER    (*)
 SCROLL UP             (*)    NEW LINE              (*)   CURSOR UP           (*)
 DELETE TO MARGIN (1)  (1)    PAGE DOWN             (2)   DELETE CHARACTER
 INSERT CHARACTER MODE (*)    TAB SET/CLEAR         (*)   DELETE WORD         (*)
 INSERT SPACE                 DELETE LINE           (*)   CURSOR DOWN         (*)
 GOTO MARK             (*)    TAB TO MARGIN               ESCAPE              (*)
 DESTRUCTIVE BACKSPACE        SCROLL DOWN           (3)   TAB WORD            (*)
 TAB FOREWARD          (*)    CURSOR RIGHT          (*)   TAB END OF LINE     (*)
 ACTIVATE SYMBOL       (*)    CONVERT TO UPPER      (*)   TAB BACKWARD        (*)
                                                          TAB WORD BACKWARD   (*)

 (*) THIS OPERATOR IS NOT ACTIVE IN COMMAND MODE
 (1) DELETES TO END OF COMMAND LINE
 (2) CAUSES THE COMMAND LINE TO EXECUTE
 (3) MOVES CURSOR TO START OF LINE ONLY


 Those  OPERATORS  in  this  table which are not marked will perform their normal
 function when entered; i.e., CURSOR LEFT  will  move  the  cursor  one  position
 toward  the start of the command line. Those which have different definitions or
 are undefined are so marked.


SPECIAL CHARACTERS

 During COMMAND MODE, certain characters are defined, as follows:


 DELIMITER -

 This character is normally used to separate multiple strings, command arguments,
 etc...  There  is no pre-defined delimiter in this version of SCREDITOR III, but
 rather the delimiter (shown in this manual as  a  slash  (/))  'floats',  or  is
 defined during the entry of each COMMAND which uses it to be the first character
 after the command name.


 EOC CHARACTER -

 (shown in this manual as a semi-colon (;)). This character is normally  used  to
 separate  multiple  COMMANDS.  The EOC character, which is shown as (EOC) in the
 COMMAND descriptions in this manual, is definable during the CONGEN and will not
 necessarily be the same character as shown when you run SCREDITOR III.


 EOL -

 Although  shown  as if it were a character in this manual, actually means END OF
 LINE, or that no more non-space characters exist on the command line. EOL can be
 an EOC, but EOC is not an EOL.


 TYPE CHARACTERS -

 Four  type characters are defined in this version of SCREDITOR III. The first is
 the pounds symbol (#), which is used as an  indication  that  the  number  which
 follows  will  be  an absolute line, column or page number. The second is a 'at'
 symbol (@) which indicates that the number which follows is a  count  of  lines,
 columns  or  pages.  The  third is an asterisk (*) which indicates that the last
 line, column or page is desired. The fourth is the null type character,  and  is
 defined  as  the  absence  of  any  of  the  other  three type characters. These
 characters will be better understood as each the description  for  each  COMMAND
 which uses them is read.


 DELETE (ABORT) -

 When  entered,  SCREDITOR  III will immediately leave COMMAND MODE and return to
 SCREEN EDIT MODE. This key is generally marked DEL or RUB on the  keyboard,  and
 is  the  ASCII  rubout  character $7F. This key is also used to provide an early
 stoppage of the execution of a number of COMMANDS  (such  as  FIND,  CHANGE  and
 PRINT).


RE-EXECUTING A COMMAND LINE

 Many command line entries will be repetitive in nature; that is, you  will  wish
 to  do  them  several times. SCREDITOR III provides an easy way to perform these
 operations without having to continuously enter the sequence  of  COMMANDS  each
 time the function is to be performed.

 For  instance,  if  you  are re-justifying an entire document, you could enter a
 justification COMMAND in COMMAND MODE  to  justify  the  first  paragraph,  then
 position  the  cursor to the next paragraph. To justify this next paragraph, you
 would only have to hit the ESCAPE OPERATOR followed by the NEW LINE OPERATOR and
 the command line would re-execute, justifying this new paragraph. This procedure
 could be followed through the entire buffer, saving quite a bit of typing!

 Although the automatic re-display of the previously  entered  command  line  can
 save  a  lot  of  typing,  it  can also cause problems if you are not reasonably
 careful. If multiple COMMANDS have been entered,  and  an  error  occurs  during
 their  execution,  only  part  of  the command line will generally have executed
 (Murphy's Law). When this occurs, it is easy to re-enter COMMAND MODE, move  the
 cursor over to the incorrect entry, make a spot correction, and then execute the
 entire line again by hitting the NEW LINE OPERATOR, WITHOUT DELETING THE PART OF
 THE  COMMAND  LINE  WHICH  EXECUTED  WITHOUT  AN  ERROR.  This  may  cause  some
 embarrassing things to happen.

 For instance, if the first COMMAND was the  KL  (KILL  LINES)  COMMAND,  and  it
 executed  normally,  and  the  next COMMAND was a JP (JUSTIFY PARAGRAPH) COMMAND
 which aborted because the current line after deleting lines was  a  blank  line,
 the following might happen:

 Seeing  the  paragraph  didn't  justify,  and  knowing why, you quickly move the
 cursor to the start of the paragraph, hit the ESCAPE OPERATOR  followed  by  the
 NEW  LINE  OPERATOR  without  looking,  thinking  that  now  the paragraph would
 justify. Instead of simply justifying the paragraph,  however,  the  KL  COMMAND
 would re-execute, deleting the paragraph, and then the JP COMMAND would execute,
 nicely melding the multi-column table which follows into  a  clean  and  totally
 unreadable paragraph! When entering multiple COMMANDS, take extra care and watch
 carefully. SCREDITOR III will do what you tell it to, even when you  don't  want
 it to!


MULTIPLE COMMANDS

 Multiple  COMMANDS may be entered on the same line in COMMAND MODE by separating
 them with an EOC character, as in the following example:


    TO;FI/SCREDITOR III/;NE;FI/MULTIPLE/;SM;FI/SINGLE/;SM


 Although not shown, you would type the ESCAPE OPERATOR to  enter  COMMAND  MODE.
 Then you would type the above string of COMMANDS, and terminate the COMMAND MODE
 by entering the  NEW  LINE  OPERATOR.  SCREDITOR  III  would  then  perform  the
 following operations.

 First, the display area would move to the top of the current buffer (TO;). Next,
 the first occurrence of 'SCREDITOR III' would be located  (FI/SCREDITOR  III/;).
 Now you hit the ABORT KEY to stop the FIND COMMAND. The part of the buffer up to
 but not including the line containing SCREDITOR III (the new current line) would
 then  be  saved,  and  new lines read from the INPUT file (NE;). Next, the first
 occurrence of 'MULTIPLE' would be found (FI/MULTIPLE/). The ABORT KEY is  struck
 again.  Then  a mark would be set at that line (SM;). Next, the first occurrence
 of SINGLE would be found (FI/SINGLE/;). One more  ABORT  KEY.  Finally,  a  mark
 would be set on that line (SM).

 As  each COMMAND is performed, the cursor is moved to the first character of the
 COMMAND which is in the process of being executed. By watching the cursor  move,
 you  can  tell just what SCREDITOR III is actually doing during the execution of
 the line.


ENTERING OPERATORS IN COMMAND MODE

 Any OPERATOR except the ESCAPE OPERATOR may be entered in the  command  line  by
 entering   an   up-arrow   (^)  followed  by  the  two-character  OPERATOR  name
 abbreviation and an EOC character (EOL if entered as the last entry on the line.
 See SINGLE KEY OPERATORS, elsewhere, for operator name abbreviations). This type
 of entry is shown in the following example:


    ^CR;^TM;^TR;^TR;^DW;^TM


 After entering these characters, you would type the NEW LINE OPERATOR  to  cause
 the command line to execute. This example would move the cursor to the right one
 column (^CR;), return the cursor to the left margin (^TM;), move  to  the  right
 two  tab-stops  (^TR;^TR;),  delete the word existing at that tab setting (DW;),
 and finally, return the cursor to the left margin (^TM).


EXCEPTIONS TO EOC USE

 Certain  COMMANDS  in  SCREDITOR III cannot be followed by other COMMANDS. These
 COMMANDS are either terminal  in  nature  (i.e.,  control  does  not  return  to
 SCREDITOR  III  after  their  execution), or are special in that anything may be
 typed as data for the COMMAND, including the EOC character (such as  the  DEFINE
 SYMBOL  COMMAND).  Those COMMANDS which do not allow EOC and additional COMMANDS
 are shown with (EOL) in the COMMAND DESCRIPTIONS and COMMAND SUMMARIES.

ERRORS

 When an error occurs during the operation of SCREDITOR III, one of three  things
 will  happen.  First,  if  the  error  is  a  simple one (such as running into a
 margin), the bell on your terminal  (if  so  equipped)  will  ring.  This  error
 indication can be considered a warning.

 The  second  thing that can happen is that the TAB/MARGIN line will clear and an
 error message will be posted. After the message is displayed, the terminal  bell
 will ring. This type of error generally requires something to be done to correct
 the situation. When an error message is posted, you must hit the  space  bar  to
 clear  it. After hitting the space bar, control will return to SCREEN EDIT MODE.
 You should then do whatever is necessary to correct the situation.

 The third type of error occurs during the reading or writing of  the  main  edit
 files.  If  such  an  error  occurs, an immediate abort to DOS will occur on the
 assumption that if you do anything else, you may not have a disk to come back to
 when you are finished editing!


CORRECTING COMMAND MODE ERRORS

 When  an  error  occurs  in  the  execution  of  a  command  line,  you can make
 corrections to the erroneous command entry by first clearing the error  message,
 if  any  (by hitting the SPACE BAR), and then entering the ESCAPE OPERATOR as if
 you were going to enter a COMMAND. When this is done, the previous command  line
 will  be  displayed  and  you  may  edit  and  correct it as necessary. When the
 corrections have been made, entering  the  NEW  LINE  OPERATOR  will  cause  the
 command  line  to  be  re-executed.  READ THE WARNING ABOUT RE-ENTRY OF COMMANDS
 GIVEN PREVIOUSLY!


BUFFER FULL ERROR

 There is one error returned by SCREDITOR III which will require  special  action
 on  your  part.  This error occurs when the current buffer becomes totally full.
 When it happens, you cannot move the cursor off of the current line, or  execute
 any COMMAND or OPERATOR which could do so (such as TOP, BOTTOM, etc...).

 The  only way to recover from this error is to make some room in the buffer. The
 easiest way is to use the SAVE COMMAND and save some lines to the  output  file.
 You  can  also open a WRITE-OUT file and extract some lines, or you could simply
 delete the current line. In any case,  you  must  remove  some  lines  from  the
 current buffer in whatever way you choose to make room.


EXECUTING THE COMMAND LINE

 When  the  command  entry is complete, entering the NEW LINE OPERATOR will cause
 the execution of the command line to  begin.  If  multiple  COMMANDS  have  been
 entered,  the  cursor  will  be positioned to the start of each COMMAND as it is
 executed as a visual indication of what is currently  being  done  by  SCREDITOR
 III.

 The  NEW  LINE OPERATOR can be typed to begin execution of the command line with
 the cursor at any position on the line. This makes  it  convenient  to  enter  a
 command  line  and  execute  it,  and then re-execute the line without having to
 re-type it. Simply wait until the execution is complete and control  returns  to
 SCREEN  EDIT  MODE, then hit the ESCAPE OPERATOR followed immediately by the NEW
 LINE OPERATOR. The command line will then re-execute.

 When the NEW LINE  OPERATOR  is  entered,  the  command  line  is  automatically
 truncated  to the last non-space character on the line. Spaces at the end of the
 command line are never retained when the line is executed.


GENERAL COMMAND DESCRIPTION CONVENTIONS

 In this manual, several conventions are used, as  has  been  previously  stated.
 Before reading the following section on SCREDITOR III COMMANDS, it would be good
 to re-state these conventions.

 First, parentheses are used to indicate a field of  information.  For  instance,
 (STRING1) indicates a string of characters, and the parentheses are not actually
 entered. Another example would be (FILE) or (FILENAME) which  indicates  that  a
 filename  valid for your DOS would be entered. Again, the parentheses themselves
 are not typed when you enter the command line.

 Second, (EOC) is used consistently to indicate either that an EOC  character  or
 the  end  of  the  line  exists. In the case of multiple COMMANDS on the command
 line, (EOC) indicates that the EOC character would exist. If no further commands
 follow,  (EOC)  indicates  the end of the line. (EOL) indicates that the COMMAND
 may not be followed by (EOC) and other COMMANDS.

 Third, as indicated previously, the semi-colon is used in this manual as the EOC
 character,  but  you  may  be using some other character depending upon what you
 specified during CONGEN.


---------------------------------------------
STRM06.TXT

.DHO
%SCREDITOR III WORD PROCESSOR                          TECHNICAL REFERENCE MANUAL

                       SCREDITOR III COMMAND DESCRIPTIONS


.DHE
%TECHNICAL REFERENCE MANUAL                          SCREDITOR III WORD PROCESSOR

                       SCREDITOR III COMMAND DESCRIPTIONS


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                        PAGE 6-%%%%
.DFE
"
 PAGE 6-%%%%                                        (C) 1982, ALFORD & ASSOCIATES
 The following pages describe each COMMAND in detail. The COMMANDS are listed  in
 alphabetical  order  by  the two-letter COMMAND NAME. Note that certain COMMANDS
 are only available  in  versions  of  SCREDITOR  III  for  particular  operating
 systems,  or  operate  differently  depending  upon the operating system in use.
 Also, note that some COMMANDS allow other COMMANDS to follow them on  a  command
 line,  and that others do not. Those that do will have (EOC) in the syntax line,
 and those that don't will have (EOL).

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 AB - ABORT EDIT SESSION

 SYNTAX:  AB(EOL)

 GENERAL: The ABORT COMMAND is used to  immediately  quit  an  edit  session  and
          return  to  DOS. If an input file is open, it will be closed intact. If
          an output file is open, it will be deleted. If a work file is open,  it
          will be closed, but will not be deleted.

          This  COMMAND  may  be  used  to  close a file which was opened for the
          express purpose of printing a file or extracting lines to a work  file,
          and  control  will return to DOS without changing the original file(s).
          Also, if it is determined that an  edit  session  has  begun  on  wrong
          files,  this  COMMAND is convenient in that the state of all files upon
          return to DOS is identical to that which existed when the edit  session
          started  except  for  any  WRITE-OUT  files which may have been created
          during the aborted edit session.

 ERRORS:  If another COMMAND follows the AB COMMAND, an ILLEGAL TERMINATOR  error
          will be posted.

          If  an  error  occurs in the file closings, a DISK ERROR will be posted
          and control returned to DOS.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 BO - MOVE TO BOTTOM OF BUFFER

 SYNTAX:  BO(EOC)

 GENERAL: The BOTTOM COMMAND will move the edit display area to the bottom of the
          current buffer. A partial screen of lines will be displayed if there is
          less than a full screen page of lines remaining from the current cursor
          position to the end of the buffer.

          This  COMMAND  is used to rapidly position the edit display area to the
          bottom of the current buffer.

 ERRORS:  If the buffer has become completely full, a BUFFER FULL message will be
          displayed and no movement will occur until a line has been removed from
          the buffer by deletion, NEW, SAVE or WRITE-OUT.

          If the cursor is presently on the last line in the buffer, a BOTTOM  OF
          BUFFER message will be posted.

          If  any  character  other than (EOC) or (EOL) follows the two-character
          COMMAND name, an ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CC - CONTROL CODE IMBEDDMENT

 SYNTAX:  CC#nn(EOC)

          The  command  name  must  be  followed  by  the  pound  symbol (#) type
          character and that in turn by a two-digit number in the range of 1 - 31

          In all versions of SCREDITOR III, the codes 0 and 13 are not allowed.

          In  addition,  in  the  SSB version code 26 is not allowed. In the FLEX
          version, codes 9 and 26 are not allowed. In the OS-9 version,  code  27
          is not allowed.

          It  is  strongly suggested that codes under 14 not be used except where
          pre-defined to  allow  upward  compatibility  with  later  releases  of
          SCREDITOR III.

 GENERAL: When  this  COMMAND is executed, the character under the cursor will be
          replaced by a code which will be used for the control of  your  printer
          during  the  use  of  the PR COMMAND. Each such control code imbeddment
          will be displayed as an up-arrow during  normal  editing,  and  may  be
          erased  by  use  of the DELETE CHARACTER operator, or by over-typing by
          any other key.

          The code entered is used to select the actual  string  of  character(s)
          which will be sent to the printer when the control code is encountered.
          There are seven control strings which are always defined by the same CC
          codes. They are as follows:

          CODE 1  - START FULL UNDERLINE         CODE 7  - OPERATOR STOP
          CODE 2  - END FULL UNDERLINE           CODE 10 - START BROKEN UNDERLINE
          CODE 3  - START BOLDFACE               CODE 11 - END BROKEN UNDERLINE
          CODE 4  - END BOLDFACE                 CODE 14 - START GRAPHICS
          CODE 5  - START DOUBLE WIDTH           CODE 15 - END GRAPHICS
          CODE 6  - END DOUBLE WIDTH

          All of the other codes except as noted in the syntax  comments  may  be
          defined  by  the  user to allow the implementation of specialty printer
          operations.

          The reason that CODES 1-6 are always defined  for  the  same  functions
          involves the way in which SCREDITOR III interprets these codes. Special
          consideration is given to the code since there is an alternate  way  in
          which to generate the functions with some printers.

          In  the  case  of  underline  and  boldface  printing,  printers  which
          backspace but do not support directly implement the codes (such  as  an
          IBM  SELECTRIC)  may  perform  these functions by printing a character,
          backspacing, and then either  typing  an  underline  or  re-typing  the
          character.

          In  the  case of printing double width characters, each character to be
          so printed may be printed followed by a space.


          When SCREDITOR III encounters one of these codes  during  printing,  it
          examines the printer characteristics previously loaded. If the function
          is defined, the sequence of characters defined are sent to the printer.
          In the case of underline and boldface, if the function is not  defined,
          the  backspace function is checked. If backspace is defined, it is used
          as previously described to perform the operation.

          In the case of printing double width, that characteristic is  examined.
          If defined, the defined string will be sent to the printer to implement
          the function. If not defined, spaces are sent after each  character  to
          effectively double space the word.

          When  these  functions  are turned on, they will remain in effect until
          the associated off code is sent.  Only  one  of  these  standard  codes
          should  be  active  at  any  given  time, or unpredictable results will
          occur.

          Even though print double width is a "stock" code, SCREDITOR  III  makes
          no  assumption  as  to whether or not your printer is actually printing
          double width. No attempt at any special display justification is  made.
          Since this type if printing is seldom if ever included within justified
          material (most printers won't allow part of a line to be double width),
          it  was  not considered worth the effort to add the necessary coding to
          SCREDITOR III to maintain display proportion.

          The operator stop  code  is  defined  to  allow  users  of  incremental
          printers  (which  print  a  character  and wait for another) to stop to
          change type elements, ribbon colors, etc... When the OP  STOP  code  is
          encountered,  printing  will cease until any key on the keyboard is hit
          except the ABORT key. Printing will then resume. If the  ABORT  key  is
          hit, printing will stop and control will return to SCREEN EDIT MODE.

          Each  imbedded  code  takes  a  character  space  in  the  line. During
          printing, the space taken by the imbedment will be printed as a  blank.
          Under  some conditions, justification will appear ragged, especially in
          the case of a control code at the start or end of a line. It is  up  to
          the  operator to visually inspect the result of justification to insure
          that the desired result has been obtained.

          During editing, automatic word wrap,  melding,  justification,  etc...,
          will  change  the  position  of  words on lines and between lines. When
          imbedded codes are being used, it is a good idea to look at text before
          it  is  printed  to  insure  that  everything is going to be printed as
          desired.

 ERRORS:  If an attempt is made  to  insert  CODE  0,  CODE  13  or  any  of  the
          proscribed codes listed in the syntax comments, an ILLEGAL CONTROL CODE
          error will be posted.

          If any type character other than  the  pounds  symbol  is  entered,  an
          ILLEGAL TYPE message will be displayed.

          If  the  type  character  is entered, but no number follows, an ILLEGAL
          TERMINATOR message will be posted.

          If neither type character  nor  number  is  entered,  an  ILLEGAL  TYPE
          message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CD - CODE DISPLAY

 SYNTAX:  CD(EOC)

 GENERAL: This  COMMAND  is used to display any printer control codes imbedded by
          the CC COMMAND.

          When the COMMAND is issued, the screen display area  will  be  cleared,
          and any control codes which exist in the display area will be displayed
          decimally.

          When it is desired to return to SCREEN EDIT MODE, hitting the space bar
          will restore the display to normal operation.

 ERRORS:  If  any  character  other  than  (EOC)  or (EOL) follows the two-letter
          command name, an ILLEGAL TERMINATOR message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CF - CLOSE READ-IN, PRINT-OUT or WRITE-OUT FILE

 SYNTAX:  CF(EOC)

 GENERAL: This COMMAND will close a file previously opened by an  OPEN  PRINT-OUT
          (SSB  and FLEX only), OPEN READ-IN or OPEN WRITE-OUT COMMAND. This will
          generally be done in order to release the work file control  block  for
          use by some other routine such as OPEN WRITE-OUT, LOAD or SAVE SYMBOLS,
          or OPEN PRINT-OUT since the  READ-IN  or  WRITE-OUT  file  is  normally
          automatically when returning to DOS.

          Only  one  use can be made of the work file control block at a time. In
          order to allow another COMMAND to use the it, this COMMAND  would  have
          to be executed to release the block for the desired COMMAND.

          Even  though  OS-9  does not use FCB's, this COMMAND is still necessary
          since a number of  pointers  and  temporaries  are  shared  by  several
          different work file COMMANDS.

          This  COMMAND is not active once a PRINT-MERGE COMMAND has been issued.
          If the READ-IN or WRITE-OUT is not active, a FILE NOT OPEN  error  will
          be posted.

          Any  DOS  error  will be posted as DISK I/O ERROR #XXX where XXX is the
          decimal numerical value of the error returned from DOS. If this occurs,
          all  COMMANDS  which  perform disk I/O with the exception of NEW, SAVE,
          LOG and ABORT will be disabled for the remainder of  the  current  edit
          session.

          If  any  character  other  than  (EOC)  or (EOL) follows the two-letter
          command name, an ILLEGAL TERMINATOR error will occur.

          If this  COMMAND  is  issued  after  a  PRINT-MERGE  COMMAND  has  been
          executed, an FCB IN USE error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CH - CHANGE ONE STRING TO ANOTHER STRING

 SYNTAX:  CH/(STRING1)/(STRING2)/(EOC)

          This  COMMAND  utilizes 'floating' delimiters. The slashes shown in the
          syntax line may be any displayable  character,  including  spaces.  The
          only  limitation is that all three delimiters must be the same, and may
          not appear in the strings themselves.

          The second string may be null; i.e., two adjacent delimiters.  The  net
          effect of this is to delete all occurrences of the first string.

          When  this  COMMAND is entered, the first occurrence of STRING1 will be
          located, the cursor placed on the first character  of  STRING1,  and  a
          pause  executed  to  allow  the operator to determine whether or not to
          change the string.

          At this point, one of three entries may be made.  First,  if  a  single
          letter  Y  is  entered,  the string will be replaced and a second pause
          will occur to allow the operator to decide whether or not  to  continue
          the search-and-replace cycle.

          Second,  if the letter C is typed, the remainder of the changes will be
          made without additional pauses for  operator  supervision.  The  screen
          display will operate exactly as if the pauses were being made. Once the
          'continuous' change mode is entered, hitting the ABORT  key  will  stop
          the change function, and hitting any other key will return the function
          to the original pause after location mode.

          Third, if the ABORT key is entered, no further changes  will  be  made,
          and  the  operation will abort and return to COMMAND MODE if additional
          COMMANDS exist to be done, or otherwise to SCREEN EDIT MODE.

          If additional COMMANDS follow the CHANGE COMMAND, care should be taken,
          as  the  COMMAND  returns  a BOTTOM OF BUFFER error when the end of the
          buffer is reached. This will cause the error message and  an  immediate
          return to SCREEN EDIT MODE.

 GENERAL: The  strings  entered  in  this  COMMAND  must exactly reflect the case
          (upper or lower) of both the string being searched for and  the  string
          with  which  to  replace it. The search routine does not consider This,
          THIS and this to be the same string; therefore, if a word occurs at the
          beginning  of  a  sentence  with normal capitalization, it would not be
          located in a search which uses all capital or lower case letters.

          If a string consists of multiple words separated  by  spaces,  and  the
          string in the buffer extends from the end of one line onto another line
          it will not be found by the search routine, which examines each line in
          the buffer separately.

          Since  SCREDITOR  III continuously changes the number of spaces between
          words as it packs, melds and justifies paragraphs, it  is  not  a  good
          practice to search for a string made up of words which are separated by
          spaces.


          The  search routine in SCREDITOR III is fully zoned; that is, will only
          search between the current margins. If an occurrence of the string lies
          outside the current margins, or extends into either margin, it will not
          be found.

 ERRORS:  If  the  search  routine  reaches  the  bottom of the current buffer, a
          BOTTOM OF BUFFER message will be posted.

          If the change routine causes the current buffer to fill, a BUFFER  FULL
          message  will  be  posted  and  the  search  aborted. See special notes
          concerning BUFFER FULL elsewhere.

          If a delimiter character is omitted, a DELIMITER ERROR will occur.

          If the first string is not defined, an ILLEGAL TERMINATOR message  will
          be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CM - CLEARMARK(S)

 SYNTAX:  CM*(EOC)
          CM<(EOC)
          CM>(EOC)
          CM(EOC)

          There are four options supported by this COMMAND.

          The first option is a single asterisk (*). When this  option  is  used,
          all line marks in the current buffer will be cleared.

          The  second  option is the less-than character (<). When this option is
          used, all marks from the start of the buffer up to  and  including  the
          current line will be cleared.

          The third option is the greater-than character (>). When this option is
          used, all marks from the current line to the end of the buffer will  be
          cleared.

          The  last  option  consists of the command name immediately followed by
          (EOC) or (EOL). In this case, only the current line will be unmarked.

 ERRORS:  If one of the four options is not given, an ILLEGAL OPTION message will
          be posted.

          If  (EOC)  or  (EOL)  does  not follow the option character, an ILLEGAL
          TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CO - COPY LINES

 SYNTAX:  CO#nnnn#mmmm(EOC)
          CO#nnnn@mmmm(EOC)
          CO#nnnn*(EOC)
          CO#nnnn(EOC)

          There  are  four  options  supported  by this COMMAND. The first option
          above may be read as "Copy from line nnnn through line mmmm,  inserting
          the copy before the current line."

          The second option above may be read as "Copy  mmmm  lines  starting  at
          line nnnn, placing the copy before the current line.

          The  third option above may be read as "Copy all lines from nnnn to the
          end of the buffer and place the copy before the current line.

          The last option reads as "Copy line nnnn and place the copy before  the
          current  line."  In  all options, 'nnnn' and 'mmmm' are in the range of
          1-65536.

 GENERAL: The COPY COMMAND does not disturb the lines which have been  copied  in
          any  way...even  line marks are copied. Also, the resulting copy of the
          lines is an exact  image  of  the  pre-existant  lines,  including  all
          justification, etc...

          The COPY COMMAND always inserts the lines before the current line; that
          is, before the line on which the cursor was positioned when the COMMAND
          was executed.

          COPY  does  not  honor MULTI-COLUMN MODE. The lines copied will be from
          beginning to end of line irregardless of margins, and will be  inserted
          intact, also irregardless of margins.

          To  copy  a  sentence from the middle of one paragraph to the middle of
          another, you would use the SPLIT OPERATOR to isolate  the  sentence  on
          separate  lines  from  the  rest  of  the  paragraph,  split the target
          paragraph where the sentence will be moved, move the sentence, and then
          use  the  MELD  operator  to  re-format  the  paragraphs. Although this
          appears to be rather slow, in practice, this type of  movement  is  not
          often encountered in actual text editing.

 ERRORS:  The most common error which will be returned by the COPY COMMAND occurs
          when the lines  to  be  copied  overlap  the  current  line.  Under  no
          circumstance can the current line be a part of the block of lines being
          copied. An ILLEGAL TARGET error will be posted when this is attempted.

          The second error occurs when  the  buffer  is  filled.  A  BUFFER  FULL
          message  will  be  posted  under  this  condition.

          If a character other than one of the four  type  characters  #,  @,  *,
          (EOL) or (EOC) follows the command name, an ILLEGAL TYPE message will
          be posted.

          If (EOC) or (EOL) does not follow  the  second  (or  only)  number,  an
          ILLEGAL TERMINATOR error will be posted.
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 CP - CLOSE PRINTER PATH (OS-9 VERSION ONLY)

 SYNTAX:  CP(EOC)

 GENERAL: This COMMAND is designed to allow an early closing of the printer  path
          in  the  case where more than one process or user may want to share the
          output device or file, and the device or  file  is  non-shareable.  The
          path  is  automatically closed by the LOAD PRINTER DATA COMMAND and the
          OPEN PRINTER PATH COMMAND, and when  the  LOG  or  ABORT  COMMANDS  are
          executed.

          When  the  COMMAND  is  issued, the PC or PS printer status flag in the
          banner will be erased, indicating that the printing  COMMANDS  are  not
          available.

 ERRORS:  If  the printer path is not open when the COMMAND is issued, a PATH NOT
          OPEN error will be posted.

          If any character other than  (EOL)  or  (EOC)  follows  the  two-letter
          command name, an ILLEGAL TERMINATOR message will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 DF - DEFINE FOOTER ... DH - DEFINE HEADER

 SYNTAX:  DFE(EOC)      DHE(EOC)
          DFO(EOC)      DHO(EOC)
          DFB(EOC)      DHB(EOC)


          The entry of the HEADER  and  FOOTER  definitions  are  identical,  and
          therefore are being presented together in this command description.

          The  first  option consists of the command name followed by E, and will
          define the header or footer which will be used on even pages.

          The second option consists of the command name followed by O, and  will
          define the header or footer which will be used on odd pages.

          The  third  option consists of the command name followed by B, and will
          define both the even and odd header or footer.

 GENERAL: When entered, the definition will consist of all lines from  the  start
          of the buffer up to, but not including, the current line.

          The  definitions are entered and justified exactly as normal text would
          be. Printer control codes may also be  imbedded  just  as  with  normal
          text.  It  is,  of course, your responsibility to know how your printer
          will respond to control codes which it receives!

          One special string is defined in the header and footer definition...the
          page  number.  Wherever  you  desire  the current page number to appear
          during printing, you will type four percent symbols (%%%%). This string
          will be replaced by the page number when printed.


 ERRORS:  If  any  character  other  than  E, O or B follows the command name, an
          ILLEGAL OPTION message will post.

          If the particular definition has been previously  defined,  an  ALREADY
          DEFINED message will be displayed.

          If  the  cursor  is  on  the  top  line  in  the  buffer,  an   ILLEGAL
          HEADER/FOOTER error will be returned.

          If  the  difference  between the printer page length and the header and
          footer length is less than five lines, a  PAGE  LENGTH  error  will  be
          posted.

          If any character other than (EOC) or (EOL) follows the option character
          an ILLEGAL TERMINATOR error will be returned.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 DP - DEFINE PRINTER PAGE CHARACTERISTICS

 SYNTAX:  DP/(opt)/(opt)/(opt)...(EOL)
          DP/(EOL)

          There are two forms of the DP COMMAND. Both require that the COMMAND be
          the last or only COMMAND on the command line.

          The first is an entry with new page characteristics, as  in  the  first
          line above, where (opt) is defined as one of the following,

          Tnnn   -  PRINTER TOP MARGIN
          Lnnn   -  PRINTER LEFT MARGIN
          Bnnn   -  PRINTER  BOTTOM MARGIN
          Pnnn   -  PRINTER PAGE LENGTH
          Sn     -  SINGLE, DOUBLE or TRIPLE SPACING
          Nnnnnn -  STARTING PAGE NUMBER OF FILE

          and where the allowable range of numbers is from 0-255 for  the  T,  L,
          and  P  options  (or  less,  as noted later), 1-3 for the S option, and
          1-65535 for the N option.

          The options may be entered in  any  order  desired.  A  delimiter  must
          separate  each  option.  As  with  the  FIND  and  CHANGE COMMANDS, the
          delimiter floats, and is defined for the length of the COMMAND  as  the
          first character after the command name.

          The  second  form  of  this COMMAND is the command name followed by any
          delimiter character (other than a number or one  of  the  above  option
          letters),  and  immediately  followed by (EOL). When this form is used,
          the current page characteristics will be displayed,  and  they  may  be
          edited  if  desired. If the ABORT key is struck, control will return to
          SCREEN EDIT MODE and no change to the page characteristics will  occur.
          If the NEW LINE key is struck, the new characteristics will be entered.


 GENERAL: The  top and bottom margins are used whenever a header or footer is not
          defined. For instance, assume that an odd footer  is  defined,  but  no
          even footer. On even pages, then, the B value entered during PRTGEN, or
          as edited by this COMMAND, will be used as the footer line  count,  and
          on  odd pages the footer definition will be used. The two values do not
          have to be the same. The maximum value which many be  entered  is  less
          than 255, as determined by the formula L-M>4 (page length minus margins
          must be greater than four).

          The left margin is used by all printing COMMANDS, and is  included  due
          to  the  fact  that  many  printers  do  not allow paper positioning or
          settable margins. It is easier to use this method to set a  fixed  left
          margin  than  to  enter every line in a text with an offset left margin
          (although this could be done by SCREDITOR III).

          The page length is the actual length of the paper from top  to  bottom,
          counted  in lines. The maximum number of lines actually printed on each
          page will be the difference between the page length and the sum of  the
          top  and  bottom  margins (whether default or header/footer definitions
          lengths),  and  cannot  exceed  255.  See  the  formula  in  the  above
          paragraph.

          The  page  number  is  the  number  of  the first page in the file. For
          instance, if a file contained twelve  pages,  they  would  normally  be
          numbered  1 through 12 when printed. If, however, you entered N12, they
          would be numbered from 12 through 24 when printed.

          The spacing count determins whether the printed output will be single-,
          double-   or   triple-spaced.   This   value  will  not  apply  to  the
          header/footer definitions. When this value is changed, the  page  flags
          in  the  screen  display  area will change to reflect the new number of
          lines to be printed per page. Again, the formula above must be  adhered
          to.

 ERRORS:  If  the  number of lines to be printed excluding headers and footers is
          calculated to be less than five, a PAGE ERROR will be posted.

          If any other option character other than T, L, B, P, S or N is entered,
          an ILLEGAL OPTION will be posted.

          If  a non-numeric value or a value too large or small follows an option
          character, an ILLEGAL TARGET error will be posted.

          Leaving out a delimiter, or using more  than  one  different  delimiter
          character will cause a DELIMITER MISSING error.

          If  the  display form of the COMMAND is entered and and the DP/ part of
          the line is changed, an ILLEGAL SYNTAX error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 DS - DEFINE SYMBOL

 SYNTAX:  DS/(name)/(symbol body)(EOL)
          DS/(name)(EOL)

          There  are  two  forms  of  this  COMMAND.  Both forms require that the
          COMMAND be the last or only COMMAND on the line.

          The first form consists of the  COMMAND  followed  by  a  delimiter,  a
          symbol name and a symbol definition, where (name) is a single character
          from A-Z (lower case is acceptable, as "a" is converted  internally  to
          "A", etc...), and the delimiter floats, and may be any character.

          (symbol  body)  consists  of  a series of keystrokes. Like the entry of
          single-key operators during ESCAPE MODE, an up-arrow (^) followed by  a
          two-letter  OPERATOR  NAME  is  used  to  describe  each OPERATOR entry
          desired as part of the definition. Unlike ESCAPE MODE itself,  however,
          no  EOC  characters  are  entered  between  OPERATORS. Also, a NEW LINE
          OPERATOR must be entered after each call  to  ESCAPE  COMMAND  MODE.  A
          DELETE TO MARGIN OPERATOR should normally precede the NEW LINE OPERATOR
          to insure that no 'left-over' characters remain  on  the  command  line
          when executed.

          The  second  form  of  the  COMMAND  is  the command name followed by a
          delimiter and a symbol name and then immediately by  (EOL).  When  this
          form  is  entered, the definition of the named symbol will be displayed
          for inspection or editing. When editing or inspection is complete,  the
          ABORT  key  will  return control to the SCREEN EDIT MODE without making
          any change to the old symbol definition. The  NEW  LINE  OPERATOR  will
          cause  the  displayed  definition  to replace the old definition in the
          symbol buffer.

 GENERAL: Any series of keystrokes which may be entered from the keyboard may  be
          defined  as  a  symbol. Such keystrokes can range from a string such as
          SCREDITOR III which appears continuously  throughout  this  manual,  to
          very complex combinations of normal characters, COMMANDS and OPERATORS.
          The only limitation is that, unlike normal COMMAND MODE, a symbol which
          includes  a  COMMAND  MODE call cannot include OPERATORS in the COMMAND
          MODE part of the definition. For instance, this line is a legal COMMAND
          in normal entry:

             BO;^SD;^DL;TO

          The  entry  will be typed after hitting the ESCAPE OPERATOR and will be
          executed after hitting a NEW LINE OPERATOR, and will move to the bottom
          of the buffer (BO;), scroll the screen down one line (^SD;), delete one
          line (^DL), and, finally, move to the top of the buffer.

          A symbol, however, to accomplish the  same  thing,  would  have  to  be
          entered as:

             ^ESBO^DM^NL^SD^DL^ESTO^DM^NL


          Which would cause SCREDITOR III to go into COMMAND MODE and execute the
          BO COMMAND (^ESBO^DM^NL), return to SCREEN EDIT  MODE  and  scroll  the
          screen  down  (^SD)  and  delete  one  line (^DL), and finally re-enter
          COMMAND MODE and go to the top of the buffer (^ESTO^DM^NL).
          Note also that DELETE-TO-MARGIN precedes the NEW LINE OPERATOR  in  the
          symbol  definition. Be sure to remember to include it just as you would
          if you entered COMMAND MODE and typed the line.

          By ending a definition with  an  ACTIVATE  SYMBOL  OPERATOR  without  a
          symbol name, a special repetitive operation is created. Once the symbol
          has been run one time, simply typing the symbol name over and over will
          cause  the  symbol  to  re-execute.  Typing some other symbol name will
          allow you to chain from one symbol to another. If each definition  ends
          in  an  ACTIVATE  SYMBOL OPERATOR, the chaining can go on indefinitely.
          When you want to break the repetition or chaining, type the  ABORT  key
          instead  of a symbol name. This allows you to define extremely powerful
          single key functions to perform specific repetitive tasks!

 LENGTH:  The  method  of  storing symbols in SCREDITOR III is such that a symbol
          only uses the amount of space required to store it. In theory, a symbol
          could  be  as  long as the entire symbol buffer (1024 bytes) using this
          method. In practice, two limitations will exist.

          First, the maximum length of a symbol is 244 characters, the length  of
          the  command  line less the DS command name, the two delimiters and the
          single-character symbol name.

          Second, a symbol may only be as long as  the  remaining  space  in  the
          symbol  buffer. If a large number of symbols are defined, the space may
          be reduced to the point that there is not enough room in the buffer for
          another long symbol.

 ERRORS:  Only  twenty-six symbols may be defined (A-Z). Any other character will
          cause an ILLEGAL SYMBOL message to be displayed.

          If a delimiter does not follow the two-character COMMAND name  and  the
          symbol  name  (DS/A/),  a  SYNTAX ERROR will be posted, except when the
          option to display an existing  symbol  is  entered  (EOL  after  symbol
          name).

          If  a  symbol  is  entered of such a length that it will not fit in the
          symbol buffer (due to other symbol definitions having used up too  much
          of  the  available  space),  a  SYMBOL  BUFFER OVERFLOW message will be
          posted, and no part of the symbol will be entered into the buffer.

          The symbol is not parsed when it is  entered.  Any  illegal  operations
          within  the  symbol  definition will only be trapped when the symbol is
          activated and its contents are executed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 EX - EXIT TO SYSTEM MONITOR (FLEX and SSB versions only)

 SYNTAX:  EX(EOL)

 GENERAL: This COMMAND is used to gracefully leave SCREDITOR III  and  enter  the
          SYSTEM  MONITOR. SCREDITOR III may be re-entered by executing a jump to
          the warm start entry point, which is three bytes past the first address
          of SCREDITOR III saved to disk ($0576 for the FLEX version).

          THIS  IS  A  SYSTEMS PROGRAMMER'S CONVENIENCE ONLY, AND SHOULD NEVER BE
          ATTEMPTED BY UNQUALIFIED PERSONNEL.

 ERRORS:  If the SYSMON entry address was given  as  $0000  during  CONGEN,  this
          COMMAND  is  disabled,  and  the  error message ILLEGAL COMMAND will be
          posted if attempted.

          If any character other than (EOL) follows this one on the command line,
          an ILLEGAL TERMINATOR message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 FI - FIND STRING OF CHARACTERS

 SYNTAX:  FI/(STRING)/(EOC)

 GENERAL: A  search  for  (STRING) commences when the command is entered. When an
          occurrence of STRING is found the search will stop, the cursor will  be
          positioned to the start of the target string, and a pause will occur to
          determine your desire as to whether or not to  continue  searching.  If
          you  hit  the  ABORT  key  the search will stop with the cursor left in
          place at the start of the target string in the  display  area  and  any
          additional COMMANDS on the command line will be executed before control
          will return to SCREEN EDIT MODE. Any other key will cause the search to
          resume.

          If  the  search is not aborted before the last occurrence of the string
          is located, any remaining COMMANDS on the line will be ignored  due  to
          the fact that an error message will be posted.

          Like  the  CHANGE COMMAND, FIND is a zoned COMMAND: i.e., the string to
          be located must exist entirely between the current  margins  and  on  a
          single  line  to  be  found.  Also, like CHANGE, the case of the string
          entered on the command line must exactly match the string to be located
          or no occurrence will be found.

          Also,  like CHANGE, the delimiter floats, and the first character after
          the command name will  be  the  delimiter  for  the  remainder  of  the
          COMMAND.

 ERRORS:  If  the  search  routine  reaches the bottom of the buffer, a BOTTOM OF
          BUFFER message will be posted.

          If there is insufficient space in the buffer to  move,  a  BUFFER  FULL
          message will be posted.


          If  the  string  entered  is null (two adjacent delimiters), an ILLEGAL
          TERMINATOR message will be displayed.
          If the final delimiter is omitted, a DELIMITER ERROR will be returned.

          If any character other than (EOC) or (EOL) follows the second delimiter
          an ILLEGAL TERMINATOR error will be generated.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 GO - GOTO LINE

 SYNTAX:  GO#nnnn(EOC)
          GO@nnnn(EOC)
          GO*(EOC)

          There are three forms of the COMMAND.

          The first form above may be read as 'Go to line nnnn.'

          The second form may be read as 'Go toward the bottom of the buffer nnnn
          lines'

          The  third  form  of  the  COMMAND reads as 'Go to the last line in the
          buffer.'

          In the first two forms, 'nnnn' may range from 1-65536.

 GENERAL: The GOTO COMMAND allows quick  movement  to  a  specific  line  in  the
          current buffer.

 ERRORS:  If  the  target line does not reside within the current buffer, ILLEGAL
          TARGET will be posted.

          If any character other than #, @ or * are given after the command name,
          an ILLEGAL TYPE error will be returned.

          If  any character other than (EOC) or (EOL) follows the number in the #
          and @ options, or the asterisk in the third form, an ILLEGAL TERMINATOR
          error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 GP - GOTO PAGE

 SYNTAX:  GP#nnnn(EOC)
          GP@nnnn(EOC)
          GP*(EOC)
          GP(EOC)

          There are four forms of the COMMAND.

          The  first form above may be read as 'Go to page nnnn.'

          The second form may be read as 'Go nnnn pages toward the bottom of  the
          buffer.'

          The  third  form  of  the  COMMAND reads as 'Go to the last page in the
          buffer.'

          The fourth form of the COMMAND reads as 'Go to the start of the current
          page.'
          In the first two forms, 'nnnn' may range from 1-65536.

 GENERAL: The  GOPAGE  COMMAND  allows quick movement to a specific page start in
          the current buffer.

 ERRORS:  If the first line of the target page does not reside within the current
          buffer, ILLEGAL TARGET will be posted.

          If  any character other than #, @, *, or (EOC) or (EOL) are given after
          the command name, an ILLEGAL  TYPE  error  will  be  returned.  If  any
          character  other  than (EOC) or (EOL) follows the number in the # and @
          options, or the asterisk in the third form, an ILLEGAL TERMINATOR error
          will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 HR - HELP REQUEST

 SYNTAX:  HR?(EOL)
          HR?C(EOL)
          HR?O(EOL)
          HR?xx(EOL)

          There are four forms of the COMMAND.

          The first may be read as 'Display information about  the  HELP  REQUEST
          COMMAND.'

          The second may be read as 'Display the COMMAND SUMMARY.'

          The third may be read as 'Display the OPERATOR SUMMARY.'

          The fourth may be read as  'Display  a  summary  of  information  about
          COMMAND xx.'

          The  fourth form of the COMMAND requires that you supply the two-letter
          command name of the COMMAND on which you want information where 'xx' is
          shown above.

 GENERAL: When  this  COMMAND  is entered, the screen display area is cleared and
          the HELP.DAT file on the system drive (FLEX and SSB), or  the  HELP.DAT
          file  in  the EDIT_DATA directory on drive D0 (OS-9) is opened, and the
          requested information is read and displayed.

          When you have finished reading the material, the space bar or the ABORT
          key will close the file and return you to SCREEN EDIT MODE.

          On  some  of  the information displays there is more than one screen of
          information. When this is the case, the message (SPACE BAR TO CONTINUE,
          ABORT  KEY  TO RETURN TO EDIT) will be displayed. Hitting the space bar
          will display the next page of information.

          The information provided in each request is a abridged version  of  the
          information  contained  in this manual, and includes complete syntax as
          is displayed at the start of each COMMAND's description, and  at  least
          one paragraph of additional explanatory information.

          This  COMMAND  is  not available when the work file control block is in
          use, or after the PRINT-MERGE COMMAND has been executed.

 ERRORS:  If the command name in the fourth form of the COMMAND does not exist in
          the help file, an ILLEGAL TYPE message will be posted.

          If  any character other than O or C is entered for the second and third
          forms of the COMMAND, an ILLEGAL TYPE message will be returned.

          If any character other than (EOL) follows the COMMAND, an ILLEGAL  TYPE
          error will result.

          If the delimiter is ommited on the fourth form, an ILLEGAL TYPE message
          will be posted.

          If the delimiter is omitted on the second and  third  forms,  the  HELP
          REQUEST SUMMARY will be displayed.

          If  a  disk  error  occurs during the execution of this COMMAND, a DISK
          ERROR message will be returned.

          If the file control block is in use when this COMMAND is  executed,  an
          FCB IN USE error will be posted.

          If  a  PRINT-MERGE  COMMAND has been previously executed, an FCB IN USE
          error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 ID - INSERT READ-IN LINE NUMBER DISPLAY

 SYNTAX:  ID(EOC)

 GENERAL: This COMMAND is used to display the line number of the first  line  not
          read  in  an open READ-IN file. When the COMMAND is issued, the command
          line will be cleared, and the line number will be displayed as

             IR=nnnnn

          where nnnnn is the number of the first line in the file not yet skipped
          or inserted.

 ERRORS:  If  a  READ-IN  is not active when this COMMAND is executed, a FILE NOT
          OPEN error will be returned.

          If any character other than (EOC) or (EOL) follows the command name, an
          ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 JL - JUSTIFY LINE

 SYNTAX:  JLA(EOC)
          JLC(EOC)
          JLL(EOC)
          JLR(EOC)

          Four options are supported by this COMMAND, and one of  the  four  must
          always be entered.

          JLA will all-justify the current line.

          JLC will center-justify the current line.

          JLL will left-justify the current line.

          JLR will right-justify the current line.

 GENERAL: When the COMMAND is issued, the  current  line  will  be  justified  as
          indicated by the option character.

          In  the  case  of L,C and R option, no packing will take place. The net
          effect is to simply move the line to the left margin, or right  margin,
          or center the line within the current margins.

          The A option will pack the line before justifying it to insure that the
          spacing of the line is made as even as possible.

          This COMMAND may be entered in either LINE or TEXT MODE.

 ERRORS:  If one of the four option characters does not follow the command  name,
          an ILLEGAL OPTION message will be displayed.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  option
          character, an ILLEGAL TERMINATOR message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 JM - JUSTIFICATION MODE

 SYNTAX:  JMA(eoc)
          JMC(eoc)
          JML(eoc)
          JMR(eoc)

 SYNTAX:  Four  options  are  supported by this COMMAND, and one of the four must
          always be entered. The mode selected by this COMMAND is of significance
          only in TEXT MODE.

          JMA  will  place  SCREDITOR  III  in  ALL-JUSTIFY  MODE.  In this mode,
          whenever the right margin is passed and a word-wrap occurs, the current
          line  will  automatically  be packed and all-justified. Whenever a MELD
          operation is performed (MELD operator, exit INSERT CHARACTER  mode,  or
          PARAGRAPH  INDENT  when  in  TEXT MODE), the remainder of the paragraph
          will be melded using this mode.

          JMC will place SCREDITOR III in CENTER-JUSTIFY MODE. Whenever the right
          margin  is  passed causing a word-wrap, the current line will be packed
          and center-justified. Whenever a  MELD  operation  is  performed  (MELD
          operator,  exit  INSERT  CHARACTER  mode, etc...), the remainder of the
          paragraph will be  melded  using  this  justification  (lines  centered
          between margins).

          JML  will  place  SCREDITOR  III  in  LEFT-JUSTIFY  MODE  (default   at
          start-up). Whenever the right margin is passed causing a word-wrap, the
          current line will be packed to eliminate extra spaces and left flush at
          the left margin. Whenever a MELD operation is performed (MELD operator,
          exit INSERT CHARACTER mode, etc...),  the  remainder  of  the  line  or
          paragraph will melded flush at the left margin.

          JMR  will place SCREDITOR III in right-justify mode. Whenever the right
          margin is passed causing a word-wrap, the current line will  be  packed
          and  right-justified.  Whenever  a  MELD  operation  is performed (MELD
          operator, exit INSERT CHARACTER MODE, etc...),  the  remainder  of  the
          line or paragraph will be melded flush at the right margin.

 GENERAL: The JUSTIFY MODE COMMAND can be entered at any time, whether in TEXT or
          LINE MODE; however, the justification mode will  only  have  effect  in
          TEXT MODE.

 ERRORS:  If  any  option  other  than A, C, L or R is entered, an ILLEGAL OPTION
          ERROR will be posted.

          If (EOC) or (EOL) does not follow  the  option  character,  an  ILLEGAL
          TERMINATOR error will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 JP - JUSTIFY PARAGRAPH

 SYNTAX:  JPA(EOC)
          JPC(EOC)
          JPL(EOC)
          JPR(EOC)

          Four options are supported by this COMMAND, and one of  the  four  must
          always be specified.

          JPA will all-justify the current paragraph.

          JPC will center-justify the current paragraph.

          JPL will left-justify the current paragraph.

          JPR will right-justify the current paragraph.

 GENERAL: When  the COMMAND is issued, the current paragraph will be justified as
          indicated by the option character. The end of a paragraph is  indicated
          by a blank line between the current margins.

          The  effect of this command is to perform a JUSTIFY LINE operation over
          all of the lines in the paragraph. Paragraph level packing as with  the
          MELD OPERATOR will not take place. If you wish to re-pack and justify a
          paragraph, you would use the MELD OPERATOR,  or,  in  the  case  of  an
          indented paragraph, the PARAGRAPH INDENT COMMAND.

 ERRORS:  If  any  character other than one of the option characters A, C, L or R
          is entered, an ILLEGAL OPTION message will be posted.

          If (EOL) or (EOC) does not follow  the  option  character,  an  ILLEGAL
          TERMINATOR error will be posted.

          If  the  buffer  becomes full during the COMMAND, a BUFFER FULL message
          will be posted, and the line which was being operated on when the error
          occurred will be the current line after the error message is cleared.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 KL - KILL (DELETE) LINES

 SYNTAX:  KL#nnnn(EOC)
          KL@nnnn(EOC)
          KL*(EOC)
          KL(EOC)

          Four options are specified for this COMMAND.

          The first may be read as  "Delete  all  lines  from  the  current  line
          through line #nnnn."

          The second may be read as "Delete @nnnn lines."

          The  third  may  be  read  as  "Delete  all lines from the current line
          through the end of the current buffer."

          The fourth may be read as "Delete the current line."

          'nnnn' is a number in the range of 1-65535.

 GENERAL: This COMMAND is used to make mass deletions of lines where  typing  the
          DELETE LINE OPERATOR over and over would be rather tedious.

 WARNING: This  COMMAND  does  not  prompt  to  insure that you know what you are
          doing, or that you have correctly entered the line. Be sure you  do  it
          right the first time!

 ERRORS:  If a type character other than #, @, * or (EOL or EOC) is entered after
          the COMMAND, and ILLEGAL TYPE message will be posted.

          If the line number in the # option does not exist in the current buffer
          AFTER the current line, or the number of lines in the @ option does not
          exist from the current line to the end of the buffer, an ILLEGAL TARGET
          error will be posted.

          If any character follows the command and its target (if any) other than
          (EOL) or (EOC), an ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 LE - LINE EDIT MODE

 SYNTAX:  LE(EOC)

 GENERAL: This COMMAND will place SCREDITOR III in the line mode.

 ERRORS:  If either (EOC) or (EOL) does not immediately follow the command  name,
          an ILLEGAL TERMINATOR message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 LI - LINE INDENT

 SYNTAX:  LI#nnnn(EOC)

          Only one option is defined for this COMMAND, the pounds  character  (#)
          followed by a number in the range of 1 to 249.

 GENERAL: This  COMMAND will insert the number of spaces specified by #nnn at the
          beginning of the current line. If line mode is active,  the  action  is
          identical  to  the  repeated  use of the INSERT SPACE OPERATOR. If text
          mode is active, the effect is to insert the number of spaces  specified
          and  to  re-justify  the  remainder  of the line or paragraph as if the
          spaces were a word.

 ERRORS:  If any character other  than  the  pounds  character  (#)  follows  the
          COMMAND  and  precedes  the  number,  an  ILLEGAL  TYPE message will be
          posted.

          If the number specified is larger than the right margin, or larger than
          the  right margin less the length of the first word on the line in TEXT
          MODE, an ILLEGAL TARGET error will result.

          If any character other than (EOC) or (EOL) is entered after the number,
          an ILLEGAL TERMINATOR error will be returned.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 LM - SET LEFT MARGIN

 SYNTAX:  LM#nnn(EOC)
          LM(EOC)

          Two forms of this COMMAND are defined.

          The first form of the COMMAND requires that  a  pounds  type  character
          follow  the  COMMAND  name, and then a number in the range of 1 to 249.
          When this is done, the left margin will be set to that column.

          The second is simply the command name followed by (EOC) or (EOL).  When
          entered  in  this  manner,  If  the  left  margin is set to the current
          column, it will be reset to column one. If the left margin is  not  set
          to the current column, it will be so set.

 GENERAL: If  the  cursor  column  would  fall  outside the left margin after the
          margin is moved, the cursor will be moved to the left  margin.  If  the
          new  left  margin  is  off the display area and the cursor is moved, an
          automatic horizontal scroll will occur.

 ERRORS:  If any character other than (#) or (EOC) or (EOL)  follow  the  command
          name an ILLEGAL TYPE message will be posted.

          If  any character other than (EOC) or (EOL) follows the command target,
          an ILLEGAL TERMINATOR message will result.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 LO - LOG EDIT SESSION

 SYNTAX:  LO(EOL)

          No further COMMANDS may follow this COMMAND.

 GENERAL: If  an  output  file  is  open,  and if nothing has been written to the
          output file, and if headers and/or footer are  defined,  they  will  be
          saved first.

          The  current  buffer will then be written out. If an input file is open
          and additional lines exist in it, the additional lines will be read and
          transferred to the output file. When all lines have been transferred to
          the output file, the screen will be cleared  and  the  message  Closing
          files...  will  be  displayed.  Then  any  open  work files (WRITE-OUT,
          READ-IN, etc...) will be closed. Then the input and output  files  will
          be closed.

 NEXT... (FLEX and SSB VERSIONS)

          If  no  output  filename was specified at edit start-up (using .TXT and
          .BAK extensions), the disk will be examined for a file  with  the  same
          name and a .BAK extension. If found, it will be deleted, the input file
          will be renamed to a .BAK extension, and the output file, which, up  to
          this  point  had  a  .TMP  or .SCR extension, will be renamed to a .TXT
          extension.

          If an output file was specified, the input and output files will simply
          be closed.

 NEXT... (OS-9 VERSION)

          If no output path was specified at edit start-up, the input file (if it
          existed) will be deleted, and the SCRATCH file will be renamed  to  the
          input file name.

          If no I/O files are open, the screen will immediately clear.

 FINALLY...

          If  a  command string was specified during CONGEN, it will be passed to
          DOS for processing, allowing SCREDITOR III to call another program with
          its  last dying gasp. If an error occurs during closing which caused an
          abort to DOS, the command string will not be passed to DOS.

 ERRORS:  If any character other than  (EOL)  follows  the  command,  an  ILLEGAL
          TERMINATOR error will be posted, and the COMMAND will not execute.

          If  disk errors occur during closing, they will be posted in the manner
          normal for your DOS. If this happens, you should check all of the files
          which  were  being  worked  on to see what has been damaged. Methods of
          recovery of files under this condition are beyond  the  scope  of  this
          manual.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 LP - LOAD PRINTER DATA FILE

 SYNTAX:  LP/(NAME)/(EOC)
          LP/*/(EOC)

          The  form of (NAME) should conform to the DOS under which SCREDITOR III
          is running as to length, allowed characters, etc...

          In the OS-9 version, a space must follow the  path  name  and  then  be
          followed  by  the  second delimiter to insure that OS-9 does not try to
          include the remainder of the command line in the path name.

          In the FLEX and SSB versions, no extension should be given. The default
          extension  which  SCREDITOR  III  supplies  is .DAT. If an extension is
          given, it will be ignored, and .DAT substituted.

          The second form of the command is used to load the default  file  which
          was  loaded  on  start-up.  This option is used when you have loaded an
          alternate data file, and wish to return to the original one.

 GENERAL: This COMMAND  allows  you  to  load  a  printer  data  file  which  was
          previously created using the PRTGEN program.

          When  this  COMMAND  is  executed, any previously-existing printer data
          will be erased before the new data is loaded.

          It will generally not be necessary to execute  this  COMMAND,  since  a
          PRTGEN  DATA  FILE  named PRTGEN.DAT (FLEX and SSB) or PRTGEN plus your
          user I.D. (OS-9) file must exist in order for SCREDITOR  III  to  start
          up,  and  will already have been loaded. This COMMAND is used primarily
          by those people who have the capability of using multiple printers.

          In the SSB and  FLEX  versions  this  COMMAND  is  not  active  once  a
          PRINT-MERGE COMMAND has been issued.

          In  the  OS-9 version the old printer path will automatically be closed
          and the new printer path opened whenever this COMMAND is  issued  since
          every printer data file includes a printer path string.

 ERRORS:  If  the  file name supplied does not conform to the syntax used by your
          DOS, an ILLEGAL FILE NAME error will be posted.

          If the file specified does not exist, or an  error  occurs  during  its
          opening  or loading, a DISK ERROR #NNN will be posted, where NNN is the
          decimal value of the error returned from DOS.  Under  some  conditions,
          the  work  file  control block may be disabled for the remainder of the
          edit session. Also, the printing COMMANDS will probably be disabled due
          to the erasure of the old printer data. The printing status flag in the
          banner will be blanked if this is the case.

          If (EOC) or  (EOL)  does  not  follow  the  second  delimiter,  or  two
          delimiters are not entered, an ILLEGAL TERMINATOR error will be posted.

          In  the SSB and FLEX versions, if a PRINT-MERGE COMMAND has been issued
          and this COMMAND is executed, an FCB IN USE error will be posted.


          If a disk error occurs during the loading of the file, the old  printer
          data  will  be  erased. Also, in the OS-9 version, the old printer path
          will be closed and the new printer path will not have been opened. As a
          result,  the printing status flag in the banner line (PS or PC) will be
          extinguished, and no printing commands will be active.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 LS - LOAD SYMBOL FILE

 SYNTAX:  LS/(NAME)/(EOC)

          The  form of (NAME) should conform to the DOS under which SCREDITOR III
          is running as to length, allowed characters, etc...

          In the OS-9 version, a space must follow the  pathname  and  the  space
          must  be  followed by the second delimiter to insure that OS-9 does not
          attempt to use the remainder of the command line for a path name.

          In the SSB and FLEX versions, no extension should be given. The default
          extension,  which  SCREDITOR  III supplies, is .DAT. If an extension is
          given, it will be ignored, and .DAT substituted.

 GENERAL: This COMMAND  allows  you  to  load  a  group  of  symbols  which  were
          previously defined and saved to disk.

          When  this  COMMAND  is issued, any symbols which are currently defined
          will be erased, and the symbols in the file will  be  loaded  into  the
          symbol buffer.

          This  COMMAND  is  not  available  if  a  PRINT-MERGE  COMMAND has been
          executed.

 ERRORS:  If the work file control block is in use when this COMMAND is executed,
          an FCB IN USE error will be posted.

          If an error has occurred previously and the work FCB has been disabled,
          an FCB IN USE error will be posted.

          If the file name supplied does not conform to the syntax used  by  your
          DOS, an ILLEGAL FILE NAME error will be posted.

          If  the  file  specified  does not exist, or an error occurs during its
          opening or loading, a DISK ERROR #NNN will be posted, where NNN is  the
          decimal  value  of  the error returned from DOS. Under some conditions,
          the work file control block may be disabled for the  remainder  of  the
          edit session.

          If  (EOC)  or  (EOL)  does  not  follow  the  second  delimiter, or two
          delimiters are not entered, an ILLEGAL TERMINATOR error will be posted.

          If a PRINT-MERGE COMMAND has been issued and this COMMAND is  executed,
          an FCB IN USE error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 MC - MULTI-COLUMN ON/OFF

 SYNTAX:  MC(EOC)

 GENERAL: If multi-column mode was active when this COMMAND is issued, it will be
          turned off. If off, it will be turned on. The change will be  reflected
          in the status section of the banner line.

 ERRORS:  If (EOC) or (EOL) does not immediately  follow  the  command  name,  an
          ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 MO - MOVE LINES

 SYNTAX:  MO#nnnn#mmmm(EOC)
          MO#nnnn@mmmm(EOC)
          MO#nnnn*(EOC)
          MO#nnnn(EOC)

          There are four options supported by  this  COMMAND.  The  first  option
          above  may be read as "Move from line nnnn through line mmmm, inserting
          the moved lines before the current line."

          The  second  option  above  may be read as "Move mmmm lines starting at
          line nnnn, placing the moved line before the current line.

          The third option above may be read as "Move all lines from nnnn to  the
          end of the buffer and place the moved lines before the current line.

          The  last  option  reads  as  "Move  line  nnnn and place it before the
          current line."

          The targets supplied must be in the range of 1-65535.

 GENERAL: The MOVE COMMAND does not change the lines which have been moved in any
          way, even line marks are moved. Also, the  moved  lines  are  an  exact
          image of the pre-existant lines, including all justification, etc...

          The MOVE COMMAND always inserts the lines before the current line; that
          is, before the line on which the cursor was positioned when the COMMAND
          was executed.

          MOVE  does  not  honor  multi-column mode. The lines moved will be from
          beginning to end of line irregardless of margins, and will be  inserted
          intact, also irregardless of margins.

          To  move  a  sentence from the middle of one paragraph to the middle of
          another, you would use the SPLIT OPERATOR to isolate  the  sentence  on
          separate  lines  from  the  rest  of  the  paragraph,  split the target
          paragraph where the sentence will be moved, move the sentence, and then
          use  the  MELD  OPERATOR  to  re-format  the  paragraphs. Although this
          appears to be rather slow, in practice, this type of  movement  is  not
          often encountered in actual text editing.

 ERRORS:  The most common error which will be returned by the MOVE COMMAND occurs
          when the  lines  to  be  moved  overlap  the  current  line.  Under  no
          circumstance can the current line be a part of the block of lines being
          moved. An ILLEGAL TARGET error will be posted when this is attempted.
          The second error occurs when  the  buffer  is  filled.  A  BUFFER  FULL
          message  will  be  posted  under  this  condition. See special notes on
          BUFFER FULL elsewhere.

          If a character other than one of the four type characters #,  @,  *  or
          (EOL)  or  (EOC) follows the command name, an ILLEGAL TYPE message will
          be posted. If (EOC) or (EOL) does not follow the target(s), an  ILLEGAL
          TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 NE - SAVE LINES TO FILE AND READ NEW LINES

 SYNTAX:  NE#nnnn(EOC)
          NE@nnnn(EOC)
          NE*(EOC)
          NE(EOC)

          Four  options  are  defined  for this COMMAND. The first may be read as
          'Save all lines from the start of the buffer through  line  #nnnn,  and
          read as many lines as possible from the input file, if open.'

          The second may be read as 'Save @nnnn lines, starting at the first line
          of the buffer, and read as many lines as possible from the input  file,
          if open.'

          The  third may be read as 'Save all lines from the start of the current
          buffer up to, but not including, the current line,  and  read  as  many
          lines as possible from the input file, if open.'

          The final option may be read as 'Save the first line in the buffer, and
          read as many lines as possible from the input file, if open.'

          In the first two forms, 'nnnn' is a number in the range of 1-65535.

 GENERAL: This COMMAND is used to save edited lines to the output  file,  and  to
          read  in additional lines from the input file for editing. If the input
          file is not open, this COMMAND is functionally identical  to  the  SAVE
          COMMAND.

          If this is the first time this COMMAND has been executed in the current
          edit session, a check will be made to see if there are  any  header  or
          footer  definitions.  If  so,  they will be saved before lines from the
          current buffer are saved.

          Only lines which are between the start of the current  buffer  and  the
          current  line  may  be saved. The current line and the remainder of the
          buffer may never be saved.

 ERRORS:  If an output file is not open, FILE NOT OPEN will be posted.

          If the current line is the top line in the buffer, NOTHING TO SAVE will
          be returned.

          If  any  character  other  than  #,  @, * or (EOC) or (EOL) follows the
          command name, an ILLEGAL TYPE error will be posted.

          If the line number (first form) or number of lines (second form) do not
          exist in the top buffer, an ILLEGAL TARGET error will be returned.

          If  an  error  occurs  during the save, DISK ERROR #nnn will be posted,
          where #nnn is the error number returned  from  DOS,  and  an  immediate
          abort to DOS will occur.

          If  this  COMMAND  is  entered  after  a  PRINT-MERGE  COMMAND has been
          executed, a FILE NOT OPEN error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 NS - NEW SCREEN

 SYNTAX:  NS(EOC)

 GENERAL: This  COMMAND  is  included  in  SCREDITOR III as a compensation for an
          awkward characteristic of some  terminals;  i.e.,  a  CLEAR  key  which
          clears  the  screen,  but  does  not  send  a  character saying it did!
          TELEVIDEO terminals, in particular, are notorious for  this,  with  the
          CLEAR  SPACE  key  sitting  directly under the BACKSPACE key and to the
          right of the RETURN key. When this COMMAND is issued,  every  character
          on the screen is re-displayed.

          If  you  have  accidentally  hit  a CLEAR key on your terminal, and the
          screen goes blank, you should perform the following operations:

          1) Hit the ABORT key. In case anything was being done which  would  not
             like  a  COMMAND  issued  (such as being in the middle of entering a
             COMMAND), this will return you to screen edit.

          2) Enter the ESCAPE OPERATOR, placing you in COMMAND mode.

          3) Enter the DELETE TO MARGIN OPERATOR, clearing the command line.

          4) Type NS followed by the NEW LINE OPERATOR.

          Voila! Your screen is restored! You may now continue editing.

          Of course, not every time your screen goes blank, has this happened. If
          th  COMMAND  does not bring the screen back, you might check for pulled
          plugs, etc...

 ERRORS:  If any character other than (EOC) or (EOL) follows the command name, an
          ILLEGAL TERMINATOR error will be posted.

          There  are no other errors associated with this COMMAND, except, maybe,
          for pulled plugs, blown fuses, etc...

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 NU - CYCLE LINE NUMBERS DISPLAY ON/OFF

 SYNTAX:  NU(EOL)

 GENERAL: This COMMAND will cause the number of each line to be displayed at  the
          left side of the screen. The numbers are referenced from the first line
          in the file. If the numbers were being displayed when this  COMMAND  is
          executed, they will be turned off.

          In addition, if page display mode is active and numbers display mode is
          turned on, the first line of each page will  be  displayed  as  Pnnnnn,
          where  P  will be lower case or upper depending upon whether or not the
          line is marked, and 'nnnnn' will be the page number of which  the  line
          is  the  first  to  be  printed, referenced from the page number of the
          first page in the file (00001 unless changed by the DP COMMAND).

 WARNING: As indicated in the PRINT-MERGE and PRINT COMMAND descriptions, if  the
          line  number  display  is  on,  the  resulting printed output will also
          contain line numbers. If off, the print-out will not have line numbers.
          You  should  repeat  this over and over until committed to memory. Even
          the author of this manual has a couple of pages of  the  manual  laying
          around  with  line  numbers  printed,  and  keeps  them as monuments to
          forgetfulness!

 ERRORS:  If (EOC) or (EOL) does not  follow  the  two-letter  command  name,  an
          ILLEGAL TERMINATOR message will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OO - OPEN (CREATE) OUTPUT FILE

 SYNTAX:  OO/(NAME)/(EOC)

          (NAME)  must  conform  to  the  syntax for the operating system you are
          using.

          For OS-9 versions, (NAME) is any valid OS-9 pathname. A space should be
          entered after the pathname (before the second delimiter) to insure that
          OS-9 gets the word that the rest of the command line is not part of the
          pathname.

          For  FLEX and SSB versions, (NAME) may be entered without an extension.
          The default extension is .TXT.

 GENERAL: This COMMAND is used to open an output file  to  save  edited  material
          when SCREDITOR III is called from DOS without a filename given.

          This  COMMAND  is  not  available  once  a PRINT-MERGE COMMAND has been
          executed.

 ERRORS:  If the named file does not conform to the conventions  concerning  file
          names under your DOS, an ILLEGAL FILE NAME error will be posted.

          If the file already exists, a DISK ERROR will be posted.

          If an error occurs during opening, a DISK ERROR will be posted.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  second
          delimiter, an ILLEGAL TERMINATOR error will be posted.

          If the file name is omitted, or a delimiter  is  omitted,  a  DELIMITER
          ERROR will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OP - OPEN FILE FOR WRITE-OUT (FLEX and SSB versions only)

 SYNTAX:  OP/(NAME)/(EOC)

          (NAME) must conform to the syntax for  the  operating  system  you  are
          using.

          For  FLEX and SSB versions, (NAME) may be entered without an extension.
          The default extension is .TXT.

 GENERAL: This COMMAND is used to open a file to receive the output of the  PRINT
          COMMAND.  This  COMMAND  may  NOT  be  used  to  open  a  file  for the
          PRINT-MERGE COMMAND.

          The COMMAND is not  available  once  a  PRINT-MERGE  COMMAND  has  been
          executed.

 ERRORS:  If  the  named file does not conform to the conventions concerning file
          names under your DOS, an ILLEGAL FILE NAME error will be posted.

          If the file already exists, a DISK ERROR will be posted.

          If an error occurs during opening, a DISK ERROR will  be  posted,  and,
          depending  upon  the error type, use of the work file control block may
          be prohibited for the remainder of the edit  session  to  minimize  the
          possibility of blowing out a disk.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  second
          delimiter, an ILLEGAL TERMINATOR error will be posted.

          If the file name is omitted, or a delimiter  is  omitted,  a  DELIMITER
          ERROR will be posted.

          If  an  error  has  previously occurred in the use of the MISCELLANEOUS
          DISK COMMANDS, an FCB IN USE message will be displayed.

          If this COMMAND is entered after a PRINT-MERGE COMMAND has executed, an
          FCB IN USE error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OP - OPEN PRINTER PATH (OS-9 version only)

 SYNTAX:  OP/(NAME)/(EOC)
          OP/*/(EOC)

          In the first form, (NAME)  must  conform  to  normal  OS-9  syntax.  In
          addition,  a  space  should precede the second delimiter to insure that
          OS-9 does not try to use the rest of the command line for a path  name!
          If  no  extended path is given and a slash does not precede the name, a
          file will be created in the current working directory for the output of
          the  printing  commands.  If you are using slashes for delimiters, this
          may be a bit confusing since you will  open  a  path  to  a  device  by
          entering

             OP//P /

          which will open a path to the device named P.

          In  the second form, the path which was described in the data loaded at
          start-up, or by the LOAD PRINTER DATA COMMAND will be  used.  No  space
          should  be  entered between the asterisk and the second delimiter. This
          form of the COMMAND is generally used  to  re-open  a  path  which  was
          closed by the CLOSE PRINTER PATH COMMAND.

 GENERAL: This  COMMAND  may  be used to open a file to receive the output of the
          PRINT COMMAND, or may be used to open a path to some other device. This
          COMMAND MAY be used to open a file for the PRINT-MERGE COMMAND, and may
          be executed at any time, regardless of whether a READ-IN  or  WRITE-OUT
          file is open, or whether or not a PRINT-MERGE has been executed.

          To  use  this COMMAND, you do not need to execute the CP (CLOSE PRINTER
          PATH) COMMAND, as the old path is closed automatically (if  open)  when
          the COMMAND executes.

 ERRORS:  If  the  named file does not conform to the conventions concerning file
          names under OS-9, an ILLEGAL FILE NAME error will be posted.

          If opening a path to a file and the file already exists, a  DISK  ERROR
          will be posted.

          If an error occurs during opening, a DISK ERROR will be posted.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  second
          delimiter, an ILLEGAL TERMINATOR error will be posted.

          If the path name is omitted, or a delimiter  is  omitted,  a  DELIMITER
          ERROR will be posted.

          If  an  error  occurs  during  opening,  the printer status flag in the
          banner line will be extinguished to indicate that the printing COMMANDS
          are inoperative.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OR - OPEN FILE FOR READ-IN

 SYNTAX:  OR/(NAME)/(EOC)

          (NAME) must conform to the syntax for  the  operating  system  you  are
          using.

          For OS-9 versions, (NAME) is any valid OS-9 pathname. A space should be
          entered after the pathname (before the second delimiter) to insure that
          OS-9 gets the word that the rest of the command line is not part of the
          pathname.

          For FLEX and SSB versions, (NAME) may be entered without an  extension.
          The default extension is .TXT.

 GENERAL: This COMMAND is used to open a file for a later READ-IN.

          The  COMMAND  is  not  available  once  a  PRINT-MERGE COMMAND has been
          executed.

 ERRORS:  If the named file does not conform to the conventions  concerning  file
          names under your DOS, an ILLEGAL FILE NAME error will be posted.

          If  the  file does not exist, or an error occurs during opening, a DISK
          ERROR will be posted.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  second
          delimiter, an ILLEGAL TERMINATOR error will be posted.

          If  the  file  name  is omitted, or a delimiter is omitted, a DELIMITER
          ERROR will be posted.

          If an error has previously occurred in the  use  of  the  miscellaneous
          disk  COMMANDS,  or  if  this  COMMAND  is  entered after a PRINT-MERGE
          COMMAND has executed, an FCB IN USE message will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OS - PERFORM OPERATING SYSTEM COMMAND (OS-9 version ONLY)

 SYNTAX:  OS/(OS-9 COMMAND LINE)(EOL)

          This COMMAND must be the last or only COMMAND on the line.

          (OS-9  COMMAND LINE) is passed to SHELL via a FORK call for parsing and
          execution, and should be typed exactly as if you were in SHELL.

          When  this COMMAND is executed, the remainder of the command line after
          the delimiter is passed  to  OS-9  for  interpretation  and  execution.
          Control  will  automatically  return  to  SCREDITOR III if the commands
          executed return control to SHELL on completion. If the command line

             OS/SHELL

          is entered, a new incarnation of SHELL will be created and added to the
          process table. When this is done, the only way to return  to  SCREDITOR
          III  will be to KILL the new incarnation of SHELL. Be sure that, if you
          do this, you KILL the RIGHT SHELL, or you may not be returning anywhere
          until you re-boot the system!


          If you fail to enter the delimiter between the  command  name  and  the
          rest of the line which will be passed to SHELL, interesting results may
          occur. For instance, if you entered

             OS/DIR /D1

          you would get a directory listing of the master directory of device D1.
          However, if you leave out the delimiter, as in this example,

             OSDIR /D1

          SCREDITOR III will consider the D in DIR to be the delimiter and pass

             IR /D1

          to OS-9 for processing. If IR is a command which tells OS-9 to take the
          disk in drive one, add it to a bowl of Rice Krispies and eat it, that's
          what will happen! Don't forget the delimiter!

          When control returns to SCREDITOR III, the message 'Waiting...' will be
          displayed. To return to SCREEN EDITING MODE, hit the  space  bar.  This
          message  is  added  to  insure  that a directory listing won't flash by
          before you have a chance to read it.

 ERRORS:  If nothing but (EOL) follows the  two-letter  command  name,  a  SYNTAX
          ERROR will be posted.

          If  an  error is returned by SHELL, it will only be displayed after the
          'Waiting...' message is cleared.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OW - OPEN FILE FOR WRITE-OUT

 SYNTAX:  OW/(NAME)/(EOC)

          (NAME) must conform to the syntax for  the  operating  system  you  are
          using.

          For OS-9 versions, (NAME) is any valid OS-9 pathname. A space should be
          entered after the pathname (before the second delimiter) to insure that
          OS-9 gets the word that the rest of the command line is not part of the
          pathname.

          For FLEX and SSB versions, (NAME) may be entered without an  extension.
          The default extension is .TXT.

 GENERAL: This COMMAND is used to open a file for a later WRITE-OUT.

          The  COMMAND  is  not  available  once  a  PRINT-MERGE COMMAND has been
          executed.

 ERRORS:  If the named file does not conform to the conventions  concerning  file
          names under your DOS, an ILLEGAL FILE NAME error will be posted.

          If the file already exists or if an error occurs during opening, a DISK
          ERROR will be posted, and, depending upon the error type,  use  of  the
          work file control block may be prohibited for the remainder of the edit
          session to minimize the possibility of blowing out a disk.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  second
          delimiter, an ILLEGAL TERMINATOR error will be posted.

          If  the  file  name  is omitted, or a delimiter is omitted, a DELIMITER
          ERROR will be posted.

          If an error has previously occurred in the  use  of  the  MISCELLANEOUS
          DISK  COMMANDS,  or  If  this  COMMAND  is  entered after a PRINT-MERGE
          COMMAND has executed, an FCB IN USE error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PA - CYCLE PAGE START DISPLAY

 SYNTAX:  PA(EOC)

          This COMMAND will turn on or off the display of page start flags.

          If  on  when  the COMMAND is issued, the display will be turned off. If
          off, the display will be turned on.

 GENERAL: SCREDITOR III continuously calculates where each page of the file  will
          start if it were printed, based upon the default top or bottom margins,
          or the even  and  odd  header  and  footer  lengths,  if  defined.  The
          calculation is carried out separately for both odd and even pages.

          When  the  page  start  display  is  turned  on,  the  letter P will be
          displayed in the left-most column of the screen at the  first  line  of
          each  page.  In  addition,  if the line numbers display is on, the page
          number will replace the line number on those lines flagged as the start
          of  each  page.  The  line number displayed will be in reference to the
          first page number of the file (either 00001, or whatever number was set
          using the DEFINE PRINTED PAGE COMMAND).

          If  the  line is also marked (using the SET MARKED LINE COMMAND), the P
          flag character will be displayed as lower case  (p)  instead  of  upper
          case.

 ERRORS:  If any character other than (EOC) or (EOL) follows the command name, an
          ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PI - PARAGRAPH INDENT

 SYNTAX:  PI#nnn(EOC)

          #nnn is a number in the range of 1 to 249 in LINE EDIT MODE, and  1  to
          249  less  the length of the first word on the first line, and 1 to 249
          less the length of the first word on each  additional  line  after  the
          indenting of the previous line in TEXT MODE.

          This  COMMAND  is  used  to  indent a paragraph by a number of columns.
          Remember that #nnn above is not the column to which  the  paragraph  is
          indented,  but  rather the number of columns to the right of the margin
          by which the paragraph will be indented.

          In LINE MODE, this COMMAND has the same  effect  as  the  INSERT  SPACE
          OPERATOR.  Each  line  will be shifted to the right, and any characters
          which move past the right margin on each line will be lost.

          In TEXT MODE, this COMMAND has the same effect  as  if  you  moved  the
          cursor  to the first column of each line, performed an INSERT CHARACTER
          OPERATOR, typed a number of characters equal to #nnn and then used  the
          CURSOR  DOWN  OPERATOR  causing  a  paragraph  meld  to occur, and then
          repeated the action to the end of the paragraph, except that instead of
          characters, spaces are used.

 ERRORS:  If  the  buffer  becomes  full during the indent, a BUFFER FULL message
          will be posted, and the remainder of the paragraph will not  have  been
          indented.

          If #nnn is zero an ILLEGAL TARGET error wil be posted.

          If  #nnn  is  greater  than the limits described in the syntax comments
          above or if the COMMAND is executed on a line which  is  blank  between
          the margins, the bell will ring.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PL - PACK LINE

 SYNTAX:  PLC(EOC)
          PLL(EOC)
          PLR(EOC)

          There are three forms of this COMMAND.

          PLC  will center the current line between the margins, and extra spaces
          will be removed from the line.

          PLL will make the line flush with the left margin and extra spaces will
          be removed from the line.

          PLR  will  make the current line flush with the right margin, and extra
          spaces will be removed from the line.

 GENERAL: This COMMAND is used to remove extra spaces from a line and  perform  a
          specific justification on it, irregardless of the current justification
          mode or whether LINE or TEXT MODE is active. In TEXT MODE,  a  meld  IS
          NOT performed over the paragraph after this COMMAND is executed.

 ERRORS:  If  any option other than C, L or R is entered, an ILLEGAL OPTION error
          will be displayed. If any character other than (EOC) or  (EOL)  follows
          the option character, an ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PM - PRINT-MERGE

 SYNTAX:  PM/(NAME)/(EOL)
          PM/*/(EOL)

          There are two forms of the COMMAND.

          The  first  form  consists of the COMMAND followed be the filename of a
          data file from which the COMMAND will read data to be merged  into  the
          document being edited.

          (NAME)  must  conform  to  the  syntax for the operating system you are
          using.

          For OS-9 versions, (NAME) is any valid OS-9 pathname. A space should be
          entered after the pathname (before the second delimiter) to insure that
          OS-9 gets the word that the rest of the command line is not part of the
          pathname.  For  FLEX and SSB versions, (NAME) may be entered without an
          extension. The default extension is .TXT.

          The first form  of  the  COMMAND  is  used  to  begin  the  PRINT-MERGE
          operation.  The  second  form is used to re-start the PRINT-MERGE after
          editing an individual document, as will be described below.

 GENERAL: When the COMMAND is entered, the current files will be closed  just  as
          if  a  LOG  COMMAND had been executed; however, the program will retain
          control and not return to DOS.

          Next, the file specified by (NAME) will be opened for use as the  input
          data for merging.

          After  this,  the output file which was previously closed is opened and
          loaded for merging.

          Once the files are open, the merge operation begins. The current buffer
          is  searched  for  one  of  two special strings which will be described
          below. When either is found, it is replaced  with  one  line  from  the
          input  data  file.  Once  the  last  special  string has been found and
          replaced, a prompt message will be posted, as follows:

             Continuous, Print, Next, Edit or Abort?

          If the letter C is typed, the  first  document  will  be  printed,  the
          document  form  will be reloaded, the next series of replacements made,
          and so on until the end of the data file is reached. If the  ABORT  key
          is  struck  during  printing,  the  printing will stop and control will
          return to the action prompt  message.  The  document  which  was  being
          printed  will  not be lost, allowing you to re-print the current merged
          form.

          If the letter P is typed, the current document  will  be  printed,  the
          form  will  be  reloaded, the next series of replacements made, and the
          prompt will then be re-issued.


 PM - PRINT-MERGE  (continued)

          If  the letter N is typed, the current document will not be printed and
          the form will be reloaded, the next series of  replacements  made,  and
          the prompt will then be re-issued, thus skipping a form.

          If  the letter E is typed, control will return to SCREEN EDIT MODE. You
          may then make changes to the document with the  merged  data  in-place.
          This  will  allow  you  to  make custom changes to each merged document
          before printing. The second form of the PRINT-MERGE COMMAND above  will
          return control to the action prompt message when editing is complete.

          If  the  letter A is typed, the PRINT-MERGE COMMAND will be stopped and
          the data file will be closed. See the note below about RE-START.

          Any other character will be ignored.

 STRINGS: Two special strings are used in the insertion of data into the document
          during  the  actual merging. (LE) is used to insert data to be inserted
          as if SCREDITOR III were in LINE MODE.  Typical  uses  of  this  string
          would  be in inside addresses, salutations, tables, etc... (TE) is used
          where data will be inserted as if SCREDITOR  III  were  in  TEXT  MODE.
          Typical  uses  of  this  string  would  be  in  personalizations within
          paragraphs. When the (TE) string is used, melding will occur before the
          next string is replaced. Be sure to read the notes below on SETUP.

          In  editing  the  original document, you will use (TE) or (LE) wherever
          you desire to insert data. The actual replacement of the (TE) and  (LE)
          strings  take  place is as if you had used the CHANGE COMMAND to do the
          replacements. Word-wrap and justification will be honored.

 SETUP:   In order to prepare to execute the PRINT-MERGE  COMMAND,  a  number  of
          things must be observed.

          1) Any  paragraph  which  contains  a  (TE)  string must reside totally
             within the current margins. When the string is  replaced  by  actual
             data, automatic merging will take place.

          2) The type of justification you desire any paragraph containing a (TE)
             string to have must have  been  set  using  the  JUSTIFICATION  MODE
             COMMAND  before  issuing  the  PRINT-MERGE  COMMAND,  and  all  such
             paragraphs must have the same margins.

          3) Whenever an (LE) string is replaced, it will be done in  LINE  MODE,
             and no justification will take place. You must be sure that the data
             to be inserted does not cause margin overrun or characters  will  be
             lost just as when characters are inserted in normal LINE MODE.


 PM - PRINT-MERGE  (continued)

 LIMITS:  The  following limitations and provisos must be observed when executing
          a PRINT-MERGE COMMAND:

          1) The  document  into  which  the  data  is  being  merged must reside
             completely within the current buffer.

          2) The resulting document after merging  must  also  reside  completely
             within the current buffer.

          3) Any  defined  headers  or  footers  will  be  used just as in normal
             printing.

          4) No (TE) or (LE) replacement strings may be  imbedded  within  header
             and footer definitions (if they are, they will not be replaced).

          5) There must be at least one (TE) or (LE) string within the document.

          6) It  makes no difference whether LINE or TEXT MODE is active when the
             merge operation begins, but the mode of  the  last  string  replaced
             will  be  active  when  the action prompt is given. If you use the E
             answer to the prompt to make changes to the document, be sure to  be
             aware of this.

 RESTART: When  the  first  data file is exausted, or after the Abort response to
          the activity prompt, a second PRINT-MERGE run may be begun  on  another
          data file by using the first form of the PRINT-MERGE COMMAND.

 DATA:    The  organization  of  the data in the data file must exactly match the
          (LE) and (TE) replacement strings within the document as to the  number
          of  lines  versus strings. For instance, if there are a total of eleven
          strings within the document, there should be eleven data  items  within
          the  file  for  each  document to be printed, and each item in the data
          file should be on a separate line. No special characters  are  used  to
          separate data items or records within the data file.

 NOTE:    Certain  of  the  characteristics and operation of SCREDITOR III change
          when the PRINT-MERGE COMMAND is executed, as follows:

          1) Once the PRINT-MERGE COMMAND has been executed  once,  none  of  the
             COMMANDS  which  use the work file control block may be executed for
             the remainder of the edit session. In addition,  the  NEW  and  SAVE
             COMMANDS may not be used.

          2) DEFINE  and UNDEFINE HEADER and FOOTER COMMANDS may be executed, but
             the re-defined headers and/or footers will only be used in a  single
             printing  of  the  document,  since the document is re-loaded before
             each copy is printed.

          3) When the MERGE-PRINT is complete, either the ABORT or  LOG  COMMANDS
             may  be  used to return to DOS, but the file closing executed by the
             LOG COMMAND will have already been done.

          4) The 'F' option of the PRINT COMMAND may not  be  specified  for  the
             remainder of the edit session.


 PM - PRINT-MERGE  (continued)

 ERRORS:  If  no (TE) or (LE) strings exist within the current document, a CANNOT
          PRINT-MERGE error will be posted.

          If a NEW or SAVE COMMAND  has  been  executed  before  the  PRINT-MERGE
          COMMAND, a CANNOT PRINT-MERGE error will be posted.

          If additional lines exist in the input file past the end of the current
          buffer (partial read), a CANNOT PRINT-MERGE error will be posted.

          If the file given in (NAME) does not exist, or an error occurs  in  its
          opening,  a  DISK  ERROR #nnn message will be posted, where #nnn is the
          number of the error returned from DOS.

          If an error occurs in the special  logging  of  the  input  and  output
          files,  a  DISK  ERROR message will be posted, and an abort to DOS will
          occur.

          If an error occurs in the loading of the merge document, a  DISK  ERROR
          will be posted and an immediate abort to DOS will occur.

          When  the end of the data file is reached, an OUT OF DATA error will be
          posted.

          If a disk error occurs in the reading of input data, a DISK ERROR  will
          be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PP - PACK PARAGRAPH

 SYNTAX:  PPC(EOC)
          PPL(EOC)
          PPR(EOC)

          There are three forms of this COMMAND.

          All  three  forms  will  perform  the  same  operation as the PACK LINE
          COMMAND, but will do so over an entire paragraph, removing  spaces  and
          performing the selected justification.

 GENERAL: This  COMMAND  is used to remove the extra spaces from all of the lines
          of a paragraph. No melding is performed.

 ERRORS:  If any option other than C, L or R is entered, an ILLEGAL OPTION  error
          will be displayed.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  option
          character, an ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PR - PRINT

 SYNTAX:  PRx#nnnn(EOC)
          PRx@nnnn(EOC)
          PRx*(EOC)
          PRx(EOC)

          There are four forms of the COMMAND.

          The  first  may  be  read  as 'Print from the current page through page
          #nnnn.'

          The second may be read as 'Print @nnnn pages, starting with the current
          page.'

          The third may be read as 'Print from the current page to the end of the
          buffer/file (see below).'

          The final form may be read as 'Print the current page.'

          In the first two forms, 'nnnn' is a number in the range of 1-65535.

 OPTIONS: There are two special option characters  recognized  by  this  COMMAND,
          shown above as 'x'. The allowable option characters are B and F.

          If  the  B  option  character  is  entered, printing will stop with the
          bottom of the current buffer. If a part-page exists at  the  bottom  of
          the  buffer, it will be printed as if it were the end of the file, with
          blank lines generated down to the footer point on the page.

          If the F option character is entered, and if there are additional lines
          in  the  input  file  when  the  bottom  of  the  buffer is reached, an
          automatic NEW COMMAND will be executed and printing will continue.

 GENERAL: When this COMMAND is issued, the  beginning  of  the  current  page  is
          located.  Printing  will  start at the first line on the page, and will
          continue through the optioned number of pages.

          If headers or footers are defined, they will be  used.  The  number  of
          lines  actually printed on each page is determined by the length of the
          page less the length of the header and footer (if defined, and even  or
          odd,  depending  upon  whether  the page is even or odd). If either the
          header or footer for a particular page is not defined, the default  top
          or  bottom  margin  value  will  be  used, as defined during PRTGEN, or
          during the execution of the DEFINE PRINTED PAGE COMMAND.

          If any key other than the ABORT key  is  struck  during  printing,  the
          printing  will  stop  at the end of the current line. After this pause,
          any key other than the ABORT key will cause printing to resume. If  the
          ABORT  key is struck at either time, printing will immediately stop and
          control will return to COMMAND or  SCREEN  EDIT  MODE,  depending  upon
          whether or not additional COMMANDS exist to be executed.


          If  an  OP  STOP  control code is encountered during printing, printing
          will stop and the message 'Operator Stop...' will be  posted.  Any  key
          other  than  the ABORT key will cause the message 'Printing Resumed...'
          to be displayed, and printing will, indeed, resume. The ABORT key works
          as described in the previous paragraph.

          Whenever  the  page replacement string (%%%%) is encountered during the
          printing of the header or footer, it will be replaced with the  current
          page number.

 ERRORS:  If  any character other than B or F is entered where 'x' is show in the
          syntax above, an ILLEGAL OPTION error will be posted.

          If any character other than #, @, *  or  (EOL)  or  (EOC)  follows  the
          option  character,  an  ILLEGAL TYPE error will be posted. If no number
          follows the pounds or 'at' type character, an ILLEGAL TARGET error will
          be posted.

          If  any character other than (EOL) or (EOC) follows the COMMAND and its
          options and targets, an ILLEGAL TERMINATOR error will be posted.

          If the first line of the current page is not  in  the  buffer,  a  PAGE
          START NOT FOUND error will be posted, and printing will not occur.

          If  the end of the buffer (B option) or the end of the file (B or F) is
          reached before the target is reached (# and  @  types),  a  TARGET  NOT
          REACHED error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PS - CYCLE PRINTER PAGE PAUSE

 SYNTAX:  PS(EOC)

 GENERAL: This  COMMAND  is used to enable or disable the post-page printer pause
          feature of SCREDITOR III. Each time a page is printed when on, the bell
          on  the  terminal (if so equipped) will ring to indicate the condition,
          and printing will stop.  Any  key  other  than  the  ABORT  will  cause
          printing  to  resume.  The  ABORT key will cause printing to abort, and
          control return to SCREEN EDIT MODE if no additional COMMANDS  exist  to
          be executed.

          This  COMMAND is included to allow the use of printers using "cut page"
          paper.

          If pause was on when this COMMAND is issued, it will be turned off.  If
          off,  it will be turned on. The printing status flag in the banner line
          will reflect the state as PS for pause on, and PC for pause off.

 ERRORS:  If any character other than (EOL) or (EOC) follows the COMMAND name, an
          ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 RI - READ-IN LINES FROM FILE

 SYNTAX:  RI#nnnn(EOC)
          RI@nnnn(EOC)
          RI*(EOC)
          RI(EOC)

          There are four forms of this COMMAND:

          The first may be read as 'Insert all lines from the current line in the
          READ-IN file through line #nnnn, placing them before the current buffer
          line.'

          The  second  may  be read as 'Insert @nnnn lines from the READ-IN file,
          placing them before the current buffer line.'

          The third form may be read as 'Insert the remainder of the READ-IN file
          before the current line in the buffer.'

          The  last  form  may  be read as 'Insert one line from the READ-IN file
          before the current line in the buffer.'

          In the first two forms, 'nnnn' is a number in the range of 1-65535.

 GENERAL: This COMMAND is used to insert selected lines from an open READ-IN file
          into the current buffer. The insertion is always immediately before the
          line on which the cursor resides when the COMMAND is executed.

          The READ-IN file is not closed  at  the  end  of  this  COMMAND  unless
          end-of-file is reached.

 ERRORS:  If  a  READ-IN  file is not open when the COMMAND is issued, a FILE NOT
          OPEN error will be posted.

          If any character other than #, @, or (EOL) or (EOC) follows the command
          name, an ILLEGAL TYPE error will be posted.

          If  the  number  entered  in  the  # option has already been skipped or
          inserted, an ILLEGAL TARGET message will be posted.

          If end-of-file is reached before the # or @ target is reached, the file
          will be closed, and a TARGET NOT REACHED error will be posted.

          If a disk error occurs, a DISK ERROR #nnn message will be posted, where
          #nnn is the error number returned from DOS.

          If there is not enough room to insert the lines, a  BUFFER  FULL  error
          will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 RM - SET RIGHT MARGIN

 SYNTAX:  RM#nnn(EOC)
          RM(EOC)

          Two forms of this COMMAND are defined.

          The first form of the COMMAND requires that a pounds  symbol  (#)  type
          character  follow  the  command  name,  and  the  type characer will be
          followed by a number in the range of 1 to 249. When this is  done,  the
          right margin will be set to that column.

          The  second is simply the command name followed by (EOC) or (EOL). When
          entered in this manner, if the right  margin  is  set  to  the  current
          column,  it will be reset to column 249. If the right margin is not set
          to the current column, it will be so set.

 GENERAL: If the cursor column falls outside the right margin after the margin is
          moved,  the  cursor will be moved to the right margin. If the new right
          margin is off the display area and the cursor is  moved,  an  automatic
          horizontal scroll will occur.

 ERRORS:  If any character other than (EOC) or (EOL) follows the command name, an
          ILLEGAL TERMINATOR error will be posted.

          If a number larger than 249 is entered, or the result  of  the  COMMAND
          would  place  the right margin to the left of the left margin, a MARGIN
          OVERRUN error will be displayed. If any character other than the pounds
          symbol  (#)  is used in the first form, an ILLEGAL TYPE message will be
          displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 RS - READ-IN SKIP

 SYNTAX:  RS#nnnn(EOC)
          RS@nnnn(EOC)

          There are two forms of this COMMAND:

          The first may be read aas 'Skip to line #nnnn in the READ-IN file.'

          The second may be read as 'Skip @nnnn lines in the READ-IN file.'

          'nnnn' is a number in the range of 1-65535.

 GENERAL: This  COMMAND  is  used  to skip over unwanted parts of an open READ-IN
          file before using the READ-IN LINES COMMAND.

 ERRORS:  If the READ-IN file is not open, a FILE NOT OPEN error will result.

          If any charater other than # or @ follows the command name, an  ILLEGAL
          TYPE error will be posted.

          If  the  target in the # option has already been passed or inserted, an
          ILLEGAL TARGET error will be posted.

          If the end of the file is reached before the target number of lines has
          been  skipped, a TARGET NOT REACHED error will occur, and the file will
          be closed.

          If an error occurs during the skip, DISK ERROR  #nnn  will  be  posted,
          where #nnn is the number returned from DOS.

          If  any character other than (EOC) or (EOL) follows the numeric target,
          an ILLEGAL TERMINATOR error will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 SA - SAVE LINES TO FILE

 SYNTAX:  SA#nnnn(EOC)
          SA@nnnn(EOC)
          SA*(EOC)
          SA(EOC)

 NOTE:    The  syntax  and  operation of this COMMAND is identical to that of the
          NEW COMMAND with the exception that no new lines will be read from  the
          input  file.  Refer  to  the  NEW  COMMAND  description  for syntax and
          operation details.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 SM - SET LINE MARK

 SYNTAX:  SM(EOC)

 GENERAL: This  COMMAND  will  mark the current line for later use in conjunction
          with the GOTO MARK OPERATOR. If the line was already  marked,  it  will
          remain marked.

          When the line is marked, an asterisk will be displayed in the left-most
          column of the screen unless the page mode display is on and a P  is  in
          the column. In this case, the P will be changed to p.

 ERRORS:  If any character other than (EOC) or (EOL) follows the command name, an
          ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 SS - SAVE SYMBOLS TO FILE

 SYNTAX:  SS/(NAME)/(EOC)

          (NAME) is the name of a file to be created, and  must  conform  to  the
          syntax  of  the  DOS  you  are using. The delimiters, as will all other
          COMMANDS, float, but must be the same.

          Under FLEX and SSB DOS, no extension should be given, as .DAT is always
          used with this COMMAND. Any extension actually entered will be ignored.
          The file will default to the working drive.

          Under OS-9, the second delimiter should be preceded by a space  to  let
          OS-9 know where to stop parsing the path name. The default directory is
          the current working directory.

 GENERAL: This COMMAND is used to save the currently defined symbols to a  symbol
          datafile.  The symbols are not erased after being saved, so the COMMAND
          may be issued at any time during the edit session.

 ERRORS:  If a filename which does not conform to the conventions  used  by  your
          DOS is entered, an ILLEGAL FILE NAME message will be posted.

          If  the  file  specified  by  the filename already exists, a DISK ERROR
          message will be posted.

          If any error occurs during the creation of the file or  the  saving  of
          the  symbols  to  the file, a DISK ERROR will be posted, and under some
          conditions, no disk I/O except NEW, SAVE and LOG may be allowed for the
          remainder of the edit session.

          If  an  error  has  occurred  previously  with any of the MISCELLANEOUS
          COMMANDS, and FCB IN USE error will be posted, and no  save  will  take
          place.

          If  the PRINT-MERGE COMMAND has been executed, an FCB IN USE error will
          be posted.


          If  any  character  other  than  (EOL)  or  (EOC)  follows  the  second
          delimiter, an ILLEGAL TERMINATOR error will be returned.

          If the name is omitted an ILLEGAL TERMINATOR error will be postd.

          If the trailing delimiter is omitted, a DELIMITER ERROR will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 ST - SET TABS

 SYNTAX:  ST/NNN/NNN/NNN/.../NNN(eol)

          Sets  tabs  in  selected  columns.  Delimiter  may  be  any non-numeric
          character, but must be the same throughout the  entire  line.  As  many
          columns as desired may be set with a single command entry. This COMMAND
          must be the last or only COMMAND  on  the  command  line.  The  columns
          entered in the COMMAND (NNN) must be in the range of 1 to 249.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 TA - TALLY COMMANDS

 SYNTAX:  TAA(EOC)
          TAC(EOC)
          TAD(EOC)
          TAI(EOC)
          TAK(EOC)
          TAR(EOC)

          There are six options defined in the TA COMMAND.
          The first option is the letter A. When this option is used, the  column
          of  numbers  in which the cursor is residing will be decimal aligned to
          the cursor position; that is, all numbers will be shifted left or right
          so  that  their decimal points all appear in the current cursor column.
          The cursor may be on any line in the column, and decimal  justification
          will  be  done  on all numbers before and after the current line. Every
          number must have a decimal point, and the alignment will  stop  at  the
          first  line  above  and below the current line which does not contain a
          decimal number crossing the current column.

          The second option is the letter  C.  When  this  option  is  used,  the
          current  column  of numbers will be added. Numbers may be preceded by a
          dollar sign, a plus sign or a minus sign, or followed by a minus  sign.
          Exponential  values  are  not supported by SCREDITOR III. The column of
          numbers does not have to be aligned for  the  tally  to  be  performed;
          however,  a  valid  digit or decimal point of EACH NUMBER to be tallied
          must be in the cursor column, as in the following example:

          1.23384- <
          175.23   <
          -4.126   <
          $9.95    <
          81.23    <
          11447.8  <
          .000001   <
          ^^^^

          (CURSOR COLUMN INDICATED BY UP-ARROW, CURSOR ROW BY LESS-THAN SYMBOL)

          Any of the four columns indicated by the up-arrow will give the correct
          answer for the tally of the columns. No other column will  do  so.  The
          left-most column will not because both a dollar sign and a numeric sign
          appear in the column. The right-most  two  columns  will  not  give  an
          accurate answer because spaces appear in those columns. any of the rows
          indicated may be the current line.

          The third option letter is the letter D. When this letter is used,  the
          current  tally  value  will be displayed on the command line. The space
          bar will clear the line and return control to SCREEN EDIT MODE.

          The fourth option letter is the letter I. When this letter is used, the
          tally  value will be inserted at the cursor position. The decimal point
          of the value will be placed at the cursor itself. Once  the  value  has
          been inserted, the tally will no longer be active (value cleared).


          The  fifth option is the letter K. This option kills (clears) a current
          tally value to allow another tally to occur without inserting the  last
          one accumulated.

          The  sixth  option  is  the  letter  R. This option will tally a row of
          numbers in a manner similar to the TALLY COLUMN COMMAND.

 GENERAL: These  COMMANDS  are  useful  when  a  spread-sheet  type page is being
          prepared. Applications might include hand-generated financial  reports,
          expense reports, etc...

 ERRORS:  If  an  illegal  option character is entered, an ILLEGAL OPTION message
          will be posted.

          If the character to which the cursor is pointing is not  a  part  of  a
          valid numeric field, an ILLEGAL TALLY FIELD error will be posted.

          If  a  tally  on  a  row  or  column has been done and another tally is
          attempted before the current value has  been  inserted  or  cleared,  a
          TALLY ACTIVITY ERROR will be posted.

          If a number outside the range of + or -99999999.99999999 is accumulated
          or encountered during a tally, an ILLEGAL TALLY  FIELD  error  will  be
          posted.

          If  there is insufficient room to insert the tally total, a NO SPACE TO
          INSERT error will be posted.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  option
          character, in ILLEGAL TERMINATOR error will be posted.

          If  any  character  other  than  the option characters shown follow the
          command name, an ILLEGAL OPTION character will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 TE - SELECT TEXT MODE

 SYNTAX:  TE(EOC)

 GENERAL: This COMMAND is used to turn on TEXT MODE.  If  off  when  the  COMMAND
          executes, TEXT MODE will be turned on. If on, it will remain on.

 ERRORS:  If  any character other than (EOL) or (EOC) follow the command name, an
          ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 TO - MOVE TO TOP OF BUFFER

 SYNTAX:  TO(EOC)

 GENERAL: This COMMAND is designed to rapidly move the display area to the top of
          the current buffer.

 ERRORS:  If  the  cursor  is already on the first line in the buffer, a a TOP OF
          BUFFER message will be displayed.

          If any character other than (EOL) or (EOC) follow the command name,  an
          ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 UH - UNDEFINE HEADERS/FOOTERS

 SYNTAX:  UH(EOC)

 GENERAL: This COMMAND will  'undefine'  any  defined  headers  or  footers.  The
          headers and/or footers will become the top lines in the current buffer.

          When this COMMAND is issued, the default top and bottom margins will go
          into effect.

 ERRORS:  If  any character other than (EOL) or (EOC) follow the command name, an
          ILLEGAL TERMINATOR error will be posted.

          If  no header or footer definitions exist when the COMMAND is executed,
          a NOT DEFINED error will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 WC - COPY LINES TO WRITE-OUT FILE

 SYNTAX:  WC#nnnn(EOC)
          WC@nnnn(EOC)
          WC*(EOC)
          WC(EOC)

          There are four options supported by this COMMAND.

          The first option may be read as 'Starting at the current line, copy all
          lines up to and including the line #nnnn to the WRITE-OUT file.'

          The second option may be read as 'Starting at the  current  line,  copy
          @nnnn lines to the WRITE-OUT file.'

          The  third  option may be read as 'Copy all lines from the current line
          to the end of the current buffer to the WRITE-OUT file.'

          The fourth option may  be  read  as  'Copy  the  current  line  to  the
          WRITE-OUT file.'

          In the first two forms, 'nnnn' is a number in the range of 1-65535.


 GENERAL: Each  time  the COMMAND is issued, the optioned number of lines will be
          copied. No cursor movement will occur.

          The WRITE-OUT file is not closed at the completion of this  COMMAND  to
          allow  additional  lines  to  be copied. If a READ-IN, a WRITE-OUT to a
          different file, a PRINT-MERGE, or other COMMAND  which  uses  the  work
          file  control  block is to be executed, the file should be closed using
          the CLOSE FILE COMMAND.

 ERRORS:  If the file has not be opened, a FILE NOT OPEN error will be posted.

          If  the  file is open for a read-type COMMAND, an FCB IN USE error will
          be posted.

          If the target in the first form is not  the  current  line  or  in  the
          bottom buffer, an ILLEGAL TARGET error will be returned.

          If the number of lines in the second form do not exist from the current
          line through the end of the current buffer,  an  ILLEGAL  TARGET  error
          will be returned.

          If  a  disk  error  occurs  during the execution of the COMMAND, a DISK
          ERROR message will be posted, and under some conditions,  no  disk  I/O
          except  for  the  NEW,  SAVE  and  LOG COMMANDS will be allowed for the
          remainder of the edit session.

          If a previous disk error has occurred in the use of  the  miscellaneous
          disk COMMANDS, an FCB IN USE error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 WE - EXTRACT LINES TO WRITE-OUT FILE

 SYNTAX:  WE#nnnn(EOC)
          WE@nnnn(EOC)
          WE*(EOC)
          WE(EOC)

 NOTE:    The operation of this COMMAND is identical to that of the COPY LINES TO
          WRITE-OUT  COMMAND just presented, with the exception that as the lines
          are copied with this COMMAND, they will be  deleted  from  the  current
          buffer,  whereas with the WC COMMAND, they will not be. Refer to the WC
          COMMAND DESCRIPTION for operation and syntax details.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 CT - CLEAR TABS

 SYNTAX:  CT#NNN#MMM(eoc)
          CT#NNN@MMM(eoc)
          CT#NNN*(eoc)
          CT#NNN(eoc)

          Clears  tabs.  First form will clear all tabs from column NNN to column
          MMM (inclusive). The second form will clear all tabs starting at column
          NNNN  and  continuing  MMM  columns. The third form will clear all tabs
          from column NNN to the end of the line. The last form will clear a  tab
          in  column NNN. In all forms, NNN is a number in the range of 1-249. In
          the second form, the sum of NNN and MMM must be in the range of 2-249.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OD - DELETE DISK FILE

 SYNTAX:  OD/(file name)/(eoc)

          Deletes the file described in (file name). The default  drive  for  the
          file is the working drive. The default file extension is '.TXT'.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OL - LIST DISK FILES

 SYNTAX:  OL#NN(eoc)

          Lists  all  files on drive NN, where NN must be a legal drive number in
          your system. Files are listed in a four-name wide format. When the last
          filename  has  been  listed, a 'Waiting...' message will be posted. The
          space bar will clear the message and  return  control  to  SCREEN  EDIT
          MODE.  The  ABORT key will stop the listing. On some operating systems,
          hitting the abort key will cause the 'Waiting...' message to be posted.
          In this case, hit the space bar to return to editing.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OV/(file name)/(eoc)

          View  the contents of a disk file. The file will be displayed with line
          numbers followed by an '=' character at the left side  of  the  screen,
          followed  by  the  line  of  text.  The  numbers are included to aid in
          determining which line numbers to use with the RI and RS COMMANDS. When
          the  listing  is  complete, the 'Waiting...' message will be displayed.
          The space bar will clear the message and return control to SCREEN  EDIT
          MODE.  The  ABORT key will stop the listing. On some operating systems,
          hitting the ABORT  KEY  will  cause  the  'Waiting...'  message  to  be
          displayed. If this happens, hitting the ABORT or space keys will return
          control to editing.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


---------------------------------------------
STRM07.TXT

.DHO
%SCREDITOR III WORD PROCESSOR                          TECHNICAL REFERENCE MANUAL

                            SCREDITOR III OPERATORS


.DHE
%TECHNICAL REFERENCE MANUAL                          SCREDITOR III WORD PROCESSOR

                            SCREDITOR III OPERATORS


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                        PAGE 7-%%%%
.DFE
"
 PAGE 7-%%%%                                        (C) 1982, ALFORD & ASSOCIATES
 The following pages list each of the OPERATORS which are defined in this version
 of  SCREDITOR  III,  listed in in alphabetical order according to the two-letter
 OPERATOR ABBREVIATIONS.


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 ACTIVATE SYMBOL (^AS)

 GENERAL: When  this  OPERATOR is executed, no apparent action takes place except
          for the AS flag in  the  banner  being  displayed;  however,  the  next
          character  entered  will  be the "name" of a symbol, from A-Z (upper or
          lower case). Once the  symbol  "name"  is  entered,  the  corresponding
          series of previously-defined keystrokes will be performed.

          If  the  ACTIVATE  SYMBOL  OPERATOR  is  accidentally typed, the DELETE
          (ABORT) key may be used to abort the operation.  This  is  particularly
          useful  where  a  symbol  definition  ends in ^AS, as would be the case
          where a symbol is going to be used repeatedly (see  the  DEFINE  SYMBOL
          COMMAND description elsewhere).

 ERRORS:  If  no  definition  was assigned to the particular symbol, nothing will
          happen.

          If a symbol "name" outside the range of A-Z is entered, the  bell  will
          ring.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 DESTRUCTIVE BACKSPACE (^BS)

 GENERAL: The  BACKSPACE OPERATOR performs identically in all modes except INSERT
          CHARACTER MODE. Each time the OPERATOR is entered, the character  under
          the cursor will be changed to a space (blank), and the cursor will move
          one column to the left. If the  left  margin  is  reached,  no  further
          movement  will  occur.  If the left side of the display area is reached
          before the left margin, an automatic horizontal scroll will occur.

          Read the INSERT CHARACTER description below for specific information on
          how DESTRUCTIVE BACKSPACE operates in that mode.

          No  paragraph  melding or justification is performed in TEXT MODE after
          this operation. It is up to the operator to enter a  MELD  OPERATOR  to
          re-space the line and/or paragraph.

 ERRORS:  If  the  cursor  was on the left margin when the OPERATOR was executed,
          the bell will ring to indicate an illegal or incomplete operation.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CURSOR DOWN (^CD)

 GENERAL: This OPERATOR moves the cursor down  one  line  in  the  display  area.
          Movement stops at the bottom line of the display area, or the last line
          of the buffer, whichever occurs first.

          If INSERT LINE MODE or INSERT  CHARACTER  MODE  was  active  when  this
          OPERATOR  is  entered, the mode will be reset. In addition, in the case
          of INSERT CHARACTER MODE in TEXT MODE, the  paragraph  will  be  melded
          before the cursor moves.

 ERRORS:  If the operation is attempted while on the bottom line of  the  display
          area  or  the bottom line of the current buffer, the bell will sound to
          indicate an illegal operation.

          If the buffer is full when typed, a BUFFER FULL message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CURSOR LEFT (^CL)

 GENERAL: This OPERATOR moves the cursor to the left one position on the  screen.
          Movement  stops  at  the  left margin. If the left margin is off of the
          screen to the left, an automatic left scroll  will  be  performed,  and
          after the operation the cursor will be positioned at the next column to
          the left of the previous current column.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  If the operation is attempted at the left margin, the bell  will  sound
          to indicate an illegal operation.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CURSOR RIGHT (^CR)

 GENERAL: This OPERATOR moves the cursor to the right one position on the screen.
          Movement stops at the right margin, or column  250,  whichever  is  the
          lessor.  If  the  right  margin  is  off of the screen to the right, an
          automatic right scroll  will  be  performed  and  the  cursor  will  be
          positioned  at  the  next  column  to the right of the previous current
          column.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  If the operation is attempted at the right margin, the bell will  sound
          to indicate an illegal operation.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CURSOR UP (^CU)

 GENERAL: This OPERATOR moves the  cursor  up  one  line  in  the  display  area.
          Movement stops at the top line of the display area.

          If  INSERT  LINE  MODE  or  INSERT  CHARACTER MODE was active when this
          OPERATOR is entered, the mode will be reset. In addition, in  the  case
          of  INSERT  CHARACTER  MODE  in TEXT MODE, the paragraph will be melded
          before the cursor moves.

 ERRORS:  If the operation is attempted while on the  top  line  of  the  display
          area, the bell will sound to indicate an illegal operation.

          If  the  operation  is attempted when the buffer is full, a BUFFER FULL
          message will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 DELETE CHARACTER (^DC)

 GENERAL: When the DELETE CHARACTER OPERATOR is entered in LINE MODE, the current
          character  will  be  deleted by moving the remainder of the line to the
          left one position. A space will be inserted at the right margin.

          When entered in TEXT MODE, the current character will  be  deleted  and
          the  paragraph  melded.  This  may result in the position of the cursor
          changing relative to the word in which the character was deleted.  When
          in  TEXT MODE, look at the screen to make sure the next character to be
          deleted is still where you thought it would be!

          This OPERATOR will not execute if INSERT CHARACTER MODE was active when
          entered,  but the mode will be reset, and if TEXT MODE was also active,
          a paragraph meld will also occur.

 ERRORS:  There are no errors associated with this OPERATOR.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 DELETE LINE (^DL)

 GENERAL: When this OPERATOR is executed in SINGLE-COLUMN MODE, the entire  line,
          including those parts outside the current margins, will be deleted. The
          total line count in the current buffer will decrement to indicate  that
          the line no longer exists.

          In  MULTI-COLUMN MODE, the part of the line between the current margins
          will be deleted. This may take several seconds if a fairly large buffer
          is  being edited. No actual line deletion is performed, as indicated by
          the total line count in the banner remaining unchanged.

          This OPERATOR will not execute if INSERT CHARACTER MODE was active when
          entered,  but the mode will be reset, and if TEXT MODE was also active,
          a paragraph meld will also be performed.

 ERRORS:  In MULTI-COLUMN MODE, an extreme case of text-tear may result in a line
          being  undeletable.  In this case, the message NOT ENOUGH SPACE will be
          displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 DELETE TO MARGIN (^DM)

 GENERAL: When this OPERATOR is executed, the remainder of the current  line  out
          to  the  right  margin  will  be  deleted.  If TEXT MODE is active, the
          remainder of the paragraph will be melded.

          This OPERATOR will not execute if INSERT CHARACTER MODE was active when
          entered, but the mode will be reset, and if TEXT MODE was also  active,
          a paragraph meld will also be performed.

 ERRORS:  There are no errors associated with this OPERATOR.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 DELETE WORD (^DW)

 GENERAL: In LINE MODE, the current word is replaced by spaces (blanks). No other
          change to the line is made.

          In TEXT MODE, the current  word  is  deleted,  then  the  paragraph  is
          melded.

          This OPERATOR will not execute if INSERT CHARACTER MODE was active when
          entered, but the mode will be reset, and if TEXT MODE was also  active,
          a paragraph meld will also be performed.

 ERRORS:  If  the cursor is sitting on a space (blank), no action takes place and
          the bell is rung to indicate an unperformable operation.

          If the word extends across either margin, the  message  MARGIN  OVERRUN
          will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 ESCAPE (ENTER COMMAND MODE) (^ES)

 GENERAL: When this OPERATOR is executed, the TAB/MARGIN LINE will be cleared and
          the cursor placed in the first column of the display page. COMMANDS may
          then be entered. See COMMAND MODE, elsewhere for specific information.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  There are no errors associated with this OPERATOR.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 INSERT CHARACTER MODE (^IC)

 GENERAL: When this OPERATOR is entered SCREDITOR  III  enters  INSERT  CHARACTER
          MODE.  The  change  in  mode will be reflected by the setting of the IC
          flag in the status section of the banner.

          If LINE MODE is active, the only indication will be the IC flag in  the
          banner. When a displayable key is struck, however, the remainder of the
          line from the cursor to the right margin will move one position to  the
          right,  the character entered will be placed at the cursor position and
          the cursor will move one place to the right. Characters  on  the  right
          margin  will  be  lost.  When  the  cursor  reaches  the  right margin,
          characters will over-strike. If the right margin is off the  screen  to
          the right, an automatic right scroll will take place.

          If  TEXT MODE is active, the action of the INSERT CHARACTER OPERATOR is
          quite different  than  in  LINE  MODE.  First,  when  the  OPERATOR  is
          executed,  the  paragraph  will  split  at  the  current character. The
          remainder of the line will be moved down into a new  line  and  the  IC
          flag  in  the  banner  will  be  displayed. At this point, operation is
          similar  to  normal  TEXT  MODE  in  that   automatic   word-wrap   and
          justification will occur.

          The only OPERATOR available in INSERT CHARACTER MODE is the DESTRUCTIVE
          BACKSPACE. When entered in LINE MODE, the entire line from  the  cursor
          to  the  right  margin will be moved to the left to cover the character
          under the cursor and the cursor will move to the  left  one  column.  A
          space  will  be  generated  on  the  right  margin.  In  TEXT MODE, the
          BACKSPACE OPERATOR operates normally. In either mode, if the left  side
          of  the  display  is reached before the left margin, a scroll left will
          occur. BACKSPACE operation will stop at the left margin.

          Any other OPERATOR will cause INSERT CHARACTER MODE to  be  reset,  and
          the OPERATOR which caused the cessation will be processed in the normal
          way, except for the four  deletes...  DELETE  CHARACTER,  DELETE  WORD,
          DELETE TO END OF LINE and DELETE LINE which will not be performed. When
          any  other  OPERATOR  is  entered  in  TEXT  MODE,  the  paragraph   is
          automatically melded before the mode is reset.

          When  the  auto-meld  is  executed,  special  attention  is paid to the
          character which was under the cursor when INSERT LINE was  entered.  If
          it  was  a space, a space will be left at the cursor position after the
          meld. If it was a character, the part-line will  be  re-joined  to  the
          last  inserted  character. This allows characters to be inserted in the
          middle of words without having to delete spaces afterward,  and  allows
          the insertion of words in lines without having to be concerned with the
          final result.

 ERRORS:  If this operation is attempted in TEXT MODE and the buffer is  full,  a
          BUFFER FULL message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 INSERT LINE MODE (^IL)

 GENERAL: When this OPERATOR is executed, a blank line will  be  inserted  before
          the  current line, and the blank line will become the current line. The
          cursor will be  positioned  at  the  left  margin.  The  mode  will  be
          indicated  by  the  setting of the IL flag in the status section of the
          banner.

          After this, editing  proceeds  as  usual,  except  that  as  you  enter
          characters  and  NEW  LINE  OPERATORS, the text will scroll up from the
          current line leaving the remainder of the screen and buffer intact.

          If you are in MULTI-COLUMN MODE, the  insertion  of  a  line  may  take
          several  seconds  due  to  the amount of text manipulation which has to
          take place to move only part of every line up.

          Any OPERATOR or COMMAND which could change the current  line  (such  as
          CURSOR UP, DOWN, TOP OF BUFFER, etc...) will reset INSERT LINE MODE.

 ERRORS:  If  this  operation  is  attempted  with  a  full buffer, a BUFFER FULL
          message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 INSERT SPACE (^IS)

 GENERAL: The INSERT SPACE OPERATOR is only active in LINE MODE.  When  executed,
          the  line  will  move  to  the right as in INSERT CHARACTER MODE, and a
          single space will be inserted at the cursor position. The  cursor  will
          not move. Any character on the right margin will be lost.

          If  entered  while  in  INSERT  CHARACTER  MODE, the mode will be reset
          before the space is entered.

 ERRORS:  If executed in TEXT MODE, the bell will ring.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 GOTO MARK (^GM)

 GENERAL: When this OPERATOR is executed, the display area will be positioned  to
          the next marked line in the buffer. If no additional marked lines exist
          between the current line and the end of the buffer,  the  first  marked
          line  from  the  start  of  the  buffer will be located. In text INSERT
          CHARACTER MODE, the paragraph will be melded before the GOTO occurs.

          If INSERT LINE MODE or INSERT  CHARACTER  MODE  was  active  when  this
          OPERATOR  is  entered, the mode will be reset. In addition, in the case
          of INSERT CHARACTER MODE in TEXT MODE, the  paragraph  will  be  melded
          before the cursor moves.

 ERRORS:  If no marks exist in the current buffer, the bell will ring to indicate
          an incomplete operation.

          If this operation is attempted when the buffer is full, a  BUFFER  FULL
          message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 LOWER CASE (^LC)

 GENERAL: The character under the cursor will be examined each time this OPERATOR
          is  executed.  If  it  is  a  valid  upper  case  character, it will be
          converted to lower case. If not, no change will take place.

          After the examination and possible change, the cursor will be moved one
          column  to  the  right.  Movement will stop at the right margin. If the
          right side of the  display  area  is  reached  before  the  margin,  an
          automatic scroll right will be done.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  If  the  OPERATOR  is  entered with the cursor on the right margin, the
          character under the cursor will be changed, but no cursor movement will
          take place, and the bell will ring to indicate this condition.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 MELD PARAGRAPH (^MP)

 GENERAL: This  OPERATOR  is  used  to  meld  a  paragraph,  as  described in the
          definition section of this manual, and is only active in TEXT MODE  (TE
          indicator on).

          When this OPERATOR executes, a number  of  things  happen.  First,  all
          extra  spaces  in  the  current line are removed. Then the next line is
          examined, and if the first word on  the  next  line  will  fit  on  the
          current  line,  it  is  moved.  This examination and movement continues
          until the next line is blank or the current line is full. If  the  next
          line  becomes  blank, it will be deleted and the following line will be
          used to continue the testing.

          After  the current line becomes full, the justification mode is checked
          and any necessary justification is performed. After this,  the  current
          line is moved out and the next line is moved in and the examination and
          movement continues. This action continues until the next line is  blank
          between  the  margins  before  any  words  are removed. When the entire
          paragraph has been done, the screen  is  re-displayed  and  the  banner
          updated.

 ERRORS:  If this OPERATOR is executed in LINE MODE, an ILLEGAL MODE message will
          be displayed.

          If the current line is empty when execution occurs, the bell will ring.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 NEW LINE (^NL)

 GENERAL: When INSERT LINE MODE is active, this OPERATOR will cause the cursor to
          move to the left margin and a new blank line will  be  generated,  with
          the previous lines moving up one position.

          If not in INSERT LINE MODE, this OPERATOR will cause the cursor to move
          to the left margin and down one line each time it is entered, until the
          bottom  line  of  the  display  area is reached. When the bottom of the
          display is reached, continued entry will cause the screen to scroll up.

          If the movement of the cursor to the left margin crosses the left  side
          of  the  display  area  before  the  margin  is  reached,  an automatic
          horizontal scroll will take place.

          If the cursor was on the last line in  the  buffer  when  this  key  is
          struck,  a  new  blank  line  will  be  generated,  as reflected by the
          increment of the total lines display in the banner line.

          If INSERT LINE MODE or INSERT  CHARACTER  MODE  was  active  when  this
          OPERATOR  is  entered, the mode will be reset. In addition, in the case
          of INSERT CHARACTER MODE in TEXT MODE, the  paragraph  will  be  melded
          before the cursor moves.

 ERRORS:  If the buffer is full when this key is struck, a BUFFER FULL error will
          be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PAGE DOWN (^PD)

 GENERAL: Each  time  this OPERATOR is executed the display area moves one screen
          of lines closer to the top of the buffer (the text 'MOVES DOWN'  behind
          the window into the file formed by the screen).

          If  INSERT  LINE  MODE  or  INSERT  CHARACTER MODE was active when this
          OPERATOR is entered, the mode will be reset. In addition, in  the  case
          of  INSERT  CHARACTER  MODE  in TEXT MODE, the paragraph will be melded
          before the cursor moves.

 ERRORS:  If the operation is attempted when the top line in the buffer is in the
          display area, the bell will ring.

          If the buffer is full, a BUFFER FULL message will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PAGE UP (^PU)

 GENERAL: Each time this OPERATOR is entered the display area moves one screen of
          lines closer to the bottom of the buffer (text 'MOVES  UP'  behind  the
          window  into  the  file  formed  by  the  screen).  If the operation is
          attempted with the cursor on the last line in the buffer, the bell will
          ring.

 ERRORS:  If the buffer is full, a BUFFER FULL message will be posted.

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 SCROLL DOWN (^SD)

 GENERAL: Each  time  this  OPERATOR is entered the display area scrolls down one
          line. The effect is to move the display area closer to the top  of  the
          buffer.

          If  INSERT  LINE  MODE  or  INSERT  CHARACTER MODE was active when this
          OPERATOR is entered, the mode will be reset. In addition, in  the  case
          of  INSERT  CHARACTER  MODE  in TEXT MODE, the paragraph will be melded
          before the cursor moves.

 ERRORS:  If the first line in the buffer is in the screen display area, the bell
          will ring when this OPERATOR is entered.

          If the buffer is full, a BUFFER FULL message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 SPLIT PARAGRAPH (^SP)

 GENERAL: When  the SPLIT PARAGRAPH OPERATOR executes the operation is similar to
          the INSERT CHARACTER OPERATOR  previously  described  except  that  the
          INSERT CHARACTER MODE does not become active.

          If  MULTI-COLUMN  MODE  is  active, SPLIT LINE may take several seconds
          while the entire buffer is being re-arranged.

          If INSERT LINE MODE or INSERT  CHARACTER  MODE  was  active  when  this
          OPERATOR  is  entered, the mode will be reset. In addition, in the case
          of INSERT CHARACTER MODE in TEXT MODE, the  paragraph  will  be  melded
          before the cursor moves.

 ERRORS:  SPLIT PARAGRAPH is only active in TEXT MODE, and if  entered  while  in
          LINE MODE, an ILLEGAL MODE message will be displayed.

          If  attempted  with  the  buffer  full,  a  BUFFER  FULL  error will be
          displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 SCROLL UP (^SU)

 GENERAL: Each time this OPERATOR is entered, the display  area  scrolls  up  one
          line.  The  effect  is to move the display area closer to the bottom of
          the buffer.

          If INSERT LINE MODE or INSERT  CHARACTER  MODE  was  active  when  this
          OPERATOR  is  entered, the mode will be reset. In addition, in the case
          of INSERT CHARACTER MODE in TEXT MODE, the  paragraph  will  be  melded
          before the cursor moves.

 ERRORS:  If  the last line in the buffer is within the current display area, the
          bell will be rung.

          If the buffer is full, a BUFFER FULL message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 TAB TO END OF LINE (^TE)

 GENERAL: This OPERATOR will cause the cursor will move to the first  space  past
          the  last  word  in  the current line. If the resultant position of the
          cursor is outside of the current display area an  automatic  horizontal
          scroll will occur to reset the cursor for display.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  If  no further spaces or words exist between the current cursor and the
          right margin the bell will sound.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 TAB CURSOR LEFT (^TL)

 GENERAL: Each time this OPERATOR is entered the cursor will move to the next tab
          setting to the left of the current cursor position as displayed in  the
          TAB/MARGIN  display line. If the next tab to the left is not within the
          current display area, an automatic scroll left will occur  to  set  the
          cursor for display.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  If no further tab settings exist before the left margin is reached, the
          cursor will be positioned at the left margin.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 TAB CURSOR TO MARGIN (^TM)

 GENERAL: This OPERATOR, when entered, will move the cursor to the  left  margin.
          If the cursor is on the left margin, it will move to the right margin.

          If  the  destination  margin of the operation is not within the current
          display area, an automatic left or right  scroll  will  take  place  to
          reset the margin for display.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  There are no errors associated with this OPERATOR.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 TAB TO NEXT WORD (^TN)

 GENERAL: Each time this OPERATOR is entered the cursor will move to the start of
          the next word within the current margins. If the start of the next word
          is  outside  the display area an automatic right scroll will execute to
          re-position the cursor.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  If the cursor is currently on or past the last word  in  the  line,  no
          movement will take place, and the bell will be sounded.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 TAB TO PREVIOUS WORD (^TP)

 GENERAL: Each time this OPERATOR is entered the cursor will move to the start of
          the  previous  word  within  the  current  margins. If the start of the
          previous word is outside the display area an automatic left scroll will
          execute to re-position the cursor.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  If  the  cursor  is currently on or past the first word in the line, no
          movement will take place, and the bell will be sounded.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 TAB CURSOR RIGHT (^TR)

 GENERAL: Each time this operator is entered the cursor will move to the next tab
          setting as displayed on the TAB/MARGIN display line. If the next tab is
          not within the current display area, an  automatic  scroll  right  will
          occur to set the cursor for display.

          If no further tab settings are encountered before the right margin, the
          cursor will move to the right margin.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  If the cursor is on the right margin when entered, the bell will  sound
          to indicate an incomplete command.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 TAB SET/CLEAR (^TS)

 GENERAL: When  this  OPERATOR  is  executed,  the  current cursor column will be
          examined. If a tab is currently set in that column, it will be cleared.
          If no tab currently exists, it will be set. The result of the operation
          will immediately be reflected in the TAB/MARGIN LINE, unless the cursor
          is  at either margin. In this case, the tab will be set or cleared, but
          will not be active until the margin is shifted.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  There are no errors associated with this OPERATOR.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 UPPER CASE (^UC)

 GENERAL: The character under the cursor will be examined each time this OPERATOR
          is executed. If it  is  a  valid  lower  case  character,  it  will  be
          converted to upper case. If not, no change will take place.

          After the examination and possible change, the cursor will be moved one
          column to the right. If the right side of the display area  is  reached
          before the margin, an automatic scroll right will be done.

          If INSERT CHARACTER MODE was active when this operator was entered, the
          mode will be reset. If TEXT MODE was also active, a paragraph meld will
          also occur.

 ERRORS:  If  the  OPERATOR  is  entered with the cursor on the right margin, the
          character under the cursor will be changed, but no cursor movement will
          take place, and the bell will ring to indicate an incomplete operation.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


---------------------------------------------
STRM08.TXT

.DHO
%SCREDITOR III WORD PROCESSOR                          TECHNICAL REFERENCE MANUAL

                         SCREDITOR III ERROR MESSAGES


.DHE
%TECHNICAL REFERENCE MANUAL                          SCREDITOR III WORD PROCESSOR

                         SCREDITOR III ERROR MESSAGES


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                        PAGE 8-%%%%
.DFE
"
 PAGE 8-%%%%                                        (C) 1982, ALFORD & ASSOCIATES
 SCREDITOR III is designed to be as user-friendly as possible. In that  interest,
 there  are  no  numeric error messages posted with the exception of those errors
 returned from DOS.

 When SCREDITOR III posts any message, it  does  so  by  erasing  the  TAB/MARGIN
 display  line,  displaying  the  error message on that line, ringing the bell on
 your terminal, and then waits for you to read the message. Once  you  have  read
 it,  you  may  clear  it  by hitting the space bar. When the message is cleared,
 control always returns to SCREEN EDIT MODE. The  following  paragraphs  describe
 each message used by SCREDITOR III.


* SCREDITOR III VSN 1.10 * Copyright 1982, Alford and Associates *

 This message  is  displayed  when  SCREDITOR  III  starts  up.  The  message  is
 automatically cleared in about one second.


ILLEGAL SYNTAX

 Something  was  wrong  in  the  way  you entered the COMMAND which returned this
 error. This error is used when no specific error exists for what you did wrong.


ILLEGAL COMMAND

 A two-character command name which does not exist  was  entered  during  COMMAND
 MODE.


ILLEGAL MODE

 If  you  attempt  to  split a line using the SPLIT OPERATOR, or attempt to put a
 paragraph back together using the MELD OPERATOR, this message will be displayed.
 An  attempt  to use any COMMAND or OPERATOR which is not active during a certain
 mode will cause this error to be posted.


ILLEGAL OPTION

 An illegal option character was entered in a COMMAND. For instance, only B, E or
 O may be entered as option characters with the DEFINE HEADER or FOOTER COMMAND.


ILLEGAL TYPE

 The  type character for a target was incorrect for the COMMAND with which it was
 entered. For instance, the 'to-the-end' type character, an asterisk, may not  be
 entered with the SKIP READ-IN COMMAND.


ILLEGAL TARGET

 A zero was entered for any target value (zero is never legal), or a target value
 which could be determined to be too big or small was entered.


ILLEGAL TERMINATOR

 Most often, a character other than (EOL) or (EOC) followed an otherwise  legally
 entered  COMMAND. Occasionally, a string-oriented COMMAND such as FIND or CHANGE
 will return this error when an entire field is left out.


DELIMITER MISSING

 A leading or trailing delimiter in a string-oriented COMMAND  was  missing.  For
 instance,  three  delimiters  are  required to complete the syntax of the CHANGE
 COMMAND. If you leave one off, this error will occur.


BUFFER FULL

 If the situation occurs during text entry that  the  current  buffer  fills  all
 available  space, this message will be posted. When this occurs, you will not be
 able to leave the current line until at least one line is either saved to a file
 or deleted from the buffer.


TOP OF BUFFER

 An  attempt was made to move the cursor closer to the start of the file, and the
 cursor was already on the first line in the current buffer.


BOTTOM OF BUFFER

 An attempt was made to move the cursor closer to the end of the  file,  and  the
 cursor was already on the last line in the current buffer.

 This  error  is also returned when the FIND or CHANGE COMMAND hits the bottom of
 buffer without finding an occurrence of a target string.


TARGET NOT REACHED

 A target was specified which could not be reached. This error will  be  returned
 when  it cannot be determined whether or not the target is out of range when the
 COMMAND begins execution, and a subsequent target error occurs.  A  page  number
 never  reached  by  a PRINT COMMAND is a good example of this, or a READ-IN to a
 line number beyond the end of a file.


NO ROOM FOR MULTI-INSERT

 This error will be returned when an insert or  delete  operation  could  not  be
 completed in MULTI-COLUMN MODE due to extreme text-tear.


DISK I/O ERROR #nnn

 An  error  occurred during a call to DOS. The number displayed after the message
 is the error number returned by DOS, and is displayed decimally.


NO SUCH FILE

 An illegal file name was entered.


NOTHING TO SAVE

 The SAVE COMMAND was entered with the cursor on the first line of the buffer (no
 lines before the current line).


FCB IN USE

 The  work  FILE  CONTROL  BLOCK  is  being  used by another COMMAND, or has been
 disabled due to a previous MISCELLANEOUS DISK COMMAND error.


FILE NOT OPEN

 The COMMAND which returned this error requires an open file,  and  no  file  was
 open. For instance, you must use the OPEN READ-IN COMMAND before you can use the
 INSERT READ-IN COMMAND.


NO FILES OPEN

 An attempt was made to do a NEW or SAVE without an output file open.


ILLEGAL FILE TYPE

 The LOAD PRINTER DATA COMMAND or the LOAD SYMBOLS COMMAND was given a file which
 was  not of the type required by the COMMAND. These files have unique characters
 written at the start of the file to  identify  the  file  type  to  the  COMMAND
 attempting to load it.


TALLY ACTIVITY ERROR

 An attempt was made to insert a tally total when none existed.


CANNOT INSERT

 There was insufficient room to insert the tally total.


ILLEGAL TALLY DELIMITER

 The  number  to which the cursor was pointing did not have a dollar sign, a plus
 sign, a minus sign or a blank before it, or was not followed by a plus  sign,  a
 minus sign or a blank.


ILLEGAL TALLY FIELD

 The  character  to  which  the  cursor  is pointing is not a number or a decimal
 point.


MARGIN OVERRUN

 An attempt was made to set the left or right margin onto the wrong side  of  the
 other margin.


OUTSIDE CURRENT MARGINS

 The  word  you  just  tried to delete extends past the left or right margin, and
 therefore could not be deleted.


ILLEGAL SYMBOL

 A symbol name outside the range of A-Z (or a-z) was entered.


SYMBOL LENGTH OVERFLOW

 There is not enough room in the symbol buffer to save the  definition  you  just
 entered.


ILLEGAL HEADER/FOOTER

 You  had  the  cursor  on  the  top line of the buffer when you entered a DEFINE
 HEADER or DEFINE FOOTER COMMAND.

ILLEGAL CONTROL CODE

 An attempt was made to enter an illegal printer control code in the CONTROL CODE
 IMBEDMENT COMMAND.


ILLEGAL PAGE LENGTH

 The  total  printed  page  length  less the sum of the top margin and the bottom
 margin must be at least five. This error is returned by the DEFINE PRINTER  PAGE
 COMMAND  if  this  formula does not test true when page definitions are entered.
 Also, the DEFINE HEADER/FOOTER COMMAND will return this error if you attempt  to
 define headers or footers whose lengths do not meet this criteria.


NO PRINTER DATA

 This  error  will  not  normally  occur  unless  a previous LOAD PRINTER COMMAND
 encountered a disk error during loading and  flushed  the  printer  data  areas,
 since  SCREDITOR  III  will  not  start  up  without printer data in the current
 version. When this is the case, the PRINT COMMANDS will return this error.


ALREADY DEFINED

 You attempted to define an even or odd header or  footer  when  it  was  already
 defined.


NOT DEFINED

 You attempted to undefine header/footers when no definitions exist.


PAGE START NOT FOUND

 You  attempted to begin printing on a page whose start has already been saved to
 the output file. Such a page may not be printed.


CANNOT MERGE-PRINT

 The file you are attempting to print has no insertion strings, or a NEW or  SAVE
 COMMAND has been executed, or a partial file read situation exists.


OUT OF DATA

 An end-of-file condition occurred in the data file during PRINT-MERGE.


KEYGEN FILE ERROR!

 An  error  was encountered during the loading of the KEYGEN data file. This will
 always cause an abort to DOS.


CONGEN FILE ERROR!

 An error was encountered during the loading of the CONGEN data file.  This  will
 always cause an abort to DOS.


PRTGEN FILE ERROR!

 An  error  was encountered during the loading of the PRTGEN data file. This will
 always cause an abort to DOS during start-up. If such  an  error  occurs  during
 program operation, a DISK ERROR message will be posted.


FILES FAILED TO RENAME!

 After all files were closed, a disk error occurred which did not allow the .TMP,
 .SCR or SCRATCH file to be renamed. Generally, the only thing you will  have  to
 do  to  remedy the situation is to manually rename the files after you return to
 DOS.


EDIT,

 No file names were entered in the call to the SSB or FLEX version  of  SCREDITOR
 III. See the section on SCREDITOR III AND DOS for more information.


EDITING A .BAK FILE REQUIRES A FILENAME FOR THE OUTPUT FILE!

 If  you  attempt  to  edit  a  file  with a .BAK extension using the SSB or FLEX
 version, you must provide a filename for the output file. If you try to  default
 the output filename, this error will be posted and control will return to DOS.


ILLEGAL MEMORY CONSTANTS!!!

 (SSB  and  FLEX  versions  only) Either the start of buffer value entered during
 CONGEN overlaps SCREDITOR III, or the difference between the end of buffer value
 and the start of buffer value was not at least six thousand bytes.


---------------------------------------------
STRM09.TXT

.DHO
%SCREDITOR III WORD PROCESSOR                          TECHNICAL REFERENCE MANUAL

                         SCREDITOR III OPERATOR SUMMARY


.DHE
%TECHNICAL REFERENCE MANUAL                          SCREDITOR III WORD PROCESSOR

                         SCREDITOR III OPERATOR SUMMARY


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                        PAGE 9-%%%%
.DFE
"
 PAGE 9-%%%%                                        (C) 1982, ALFORD & ASSOCIATES
 The following is a summary of the SINGLE-KEY OPERATORS recognized  by  SCREDITOR
 III.  To  the  left is the two-letter OPERATOR NAME which is used during command
 mode and in the symbol definition. To the right is the function,  such  as  MOVE
 CURSOR  DOWN. The number after each OPERATOR is the page number in the TECHNICAL
 REFERENCE MANUAL on which the description for each may be found.  The  OPERATORS
 are grouped by function; i.e., CURSOR MOVEMENT, CURSOR TAB, etc...


 - - - - - - - - - - - - - -  CURSOR MOVEMENT OPERATORS  - - - - - - - - - - - - -

  CD . . . . . . . . . . . . . . . . . . . . . . . . . . . MOVE CURSOR DOWN   7-12
  CL . . . . . . . . . . . . . . . . . . . . . . . . . . . MOVE CURSOR LEFT   7-2
  CR . . . . . . . . . . . . . . . . . . . . . . . . . .  MOVE CURSOR RIGHT   7-2
  CU . . . . . . . . . . . . . . . . . . . . . . . . . . . . MOVE CURSOR UP   7-3

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - -   CURSOR TAB OPERATORS  - - - - - - - - - - - - - - -

  TE . . . . . . . . . . . . . . . . . . . . . . . . . . TAB TO END OF LINE   7-11
  TL . . . . . . . . . . . . . . . . . . . . . . . . . . .  TAB CURSOR LEFT   7-12
  TM . . . . . . . . . . . . . . . . . . . . . . . . . TAB CURSOR TO MARGIN   7-12
  TN . . . . . . . . . . . . . . . . . . . . . . .  TAB CURSOR TO NEXT WORD   7-12
  TP . . . . . . . . . . . . . . . . . . . . .  TAB CURSOR TO PREVIOUS WORD   7-13
  TR . . . . . . . . . . . . . . . . . . . . . . . . . . . TAB CURSOR RIGHT   7-13
  TS . . . . . . . . . . . . . . . . . . . . . . . . . . . .  TAB SET/CLEAR   7-13

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - PAGE MOVEMENT OPERATORS - - - - - - - - - - - - - - -

  PU . . . . . . . . . . . . . . . . . . . . . . . . . . . . PAGE SCREEN UP   7-10
  PD . . . . . . . . . . . . . . . . . . . . . . . . . . . PAGE SCREEN DOWN   7-10
  SU . . . . . . . . . . . . . . . . . . . . . . . . . . . SCROLL SCREEN UP   7-11
  SD . . . . . . . . . . . . . . . . . . . . . . . . . . SCROLL SCREEN DOWN   7-10
  GM . . . . . . . . . . . . . . . . . . . . . . . . . .  GO TO MARKED LINE   7-8

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - CHARACTER OPERATORS - - - - - - - - - - - - - - - -

  DC . . . . . . . . . . . . . . . . . . . . . . . . . . . DELETE CHARACTER   7-3
  IC . . . . . . . . . . . . . . . . . . . . . . . .  INSERT CHARACTER MODE   7-6
  IS . . . . . . . . . . . . . . . . . . . . . . . . . . . . . INSERT SPACE   7-7
  LC . . . . . . . . . . . . . . . . . . . . . . . .  CONVERT TO LOWER CASE   7-8
  UC . . . . . . . . . . . . . . . . . . . . . . . .  CONVERT TO UPPER CASE   7-14

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 - - - - - - - - - - - - - - - -  LINE OPERATORS - - - - - - - - - - - - - - - - -

  DL . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  DELETE LINE   7-4
  DM . . . . . . . . . . . . . . . . . . . . . DELETE FROM CURSOR TO MARGIN   7-4
  DW . . . . . . . . . . . . . . . . . . . . . . . .  DELETE WORD FROM LINE   7-4
  IL . . . . . . . . . . . . . . . . . . . . . . . . . . . INSERT LINE MODE   7-7
  NL . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . NEW LINE   7-9

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - PARAGRAPH OPERATORS - - - - - - - - - - - - - - - -

  MP . . . . . . . . . . . . . . . . . . . . . . . . . . . . MELD PARAGRAPH   7-9
  SP . . . . . . . . . . . . . . . . . . . . . . . . . . .  SPLIT PARAGRAPH   7-11

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - MISCELLANEOUS/SPECIAL OPERATORS - - - - - - - - - - - - -

  AS . . . . . . . . . . . . . . . . . . . . . . . . . . .  ACTIVATE SYMBOL   7-1
  BS . . . . . . . . . . . . . . . . . . . . . . . .  DESTRUCTIVE BACKSPACE   7-1
  ES . . . . . . . . . . . . . . . . . . . . . . . .  ESCAPE (COMMAND) MODE   7-5

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


---------------------------------------------
STRM10.TXT

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


---------------------------------------------
STRMA.TXT

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


---------------------------------------------
DISKWARN.TXT

                                 W A R N I N G


 We  at  Windrush  Micro  Systems  Limited  are  in  the  business of selling and
 supporting software NOT rebuilding disks crashed by carelessness.

 The first thing you should do with the disk(s) we supply is to  make  a  working
 copy  of it on a system known to be performing properly. Once this has been done
 the original disks should be stored in a safe place.

 You shouldNEVERuse the original disk in a system that you suspect has hardware
 problems ... it can prove to be very expensive if you do!

 If you accidentally wipe out the disk we supply we willREQUIRE that you return
 the disk(s) supplied with this product;  disks  other  than  those  bearing  our
 labels  WILL  NOT  BE ACCEPTED. The disk(s) MUST be returned via REGISTERED mail
 with a cheque or money order for $25.00 (15.00 Pounds Sterling + VAT  in  U.K.).
 This  is  to cover our costs in rebuilding the disk and the return postage. This
 will prove to be a time consuming exercise at the best of times.

                     THERE ARE NO EXCEPTIONS TO THIS POLICY


      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *   DON'T EVER USE THE DISK WE SUPPLY  FOR  ANYTHING  OTHER  THAN   *
      *   MAKING A WORKING COPY OF ITSELF ON A KNOWN GOOD MACHINE!!       *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


                         A N O T H E R   W A R N I N G


 Whenever  you  wish to return a disk to us for a product enhancement upgrade you
 MUST return the original disk we supplied with this product via REGISTERED  mail
 insured for the full value of the new product. If the disk fails to reach us you
 then can make a claim and recover the cost of the product  and  purchase  a  new
 one.  If you send the disk to us by any other means and it fails to reach us you
 will have to purchase the product all over again. We cannot, and  will  not,  be
 held responsible for losses outside of our control.

 We  will  not  accept any reason for your inability to return the original disk.
 Therefore take whatever steps you consider necessary to protect  the  disk  from
 theft, flood, fire, your cat/dog/budgie, mother-in-law, etc. The only way we can
 keep  the  cost  of  our  upgrade  service  down  to  $25.00  is  to   eliminate
 administrative overheads. We do this by ONLY upgrading original disks.

      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
      *                                                                   *
      *          THERE ARE NO EXCEPTIONS TO THIS POLICY EITHER          *
      *                                                                   *
      * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

 If you purchase this product through a dealer and he has had to copy it from our
 original disk onto another disk for compatibility with your hardware ENSURE that
 you get our original disk from the dealer.

 We  apologize  for the harshness of the wording in these warnings. From our past
 experience in these areas it seems that abruptness is the only way we can  drive
 home  the  fact  that  we must follow rigid procedures that prevent unauthorized
 copies of disks  from  being  produced.  In  this  way  we  can  provide  better
 after-sales support and an upgrade service that is unique in the industry.


                                COPYRIGHT NOTICE

      The  entire contents of this manual and the accompanying software have
      been copyrighted by Windrush Micro Systems Limited and its author. The
      reproduction  of  this  material  by  any  means,  for  any reason, is
      strictly prohibited.


                              SERIAL NUMBER NOTICE

      This  product  has been assigned a unique serial number at the time of
      manufacture. This serial number is encrypted  into  the  body  of  the
      product. This product is therefore traceable to the original purchaser
      in the event of plagiarized copies being discovered.

      This  product  is  sold  on  the  basis  of  being  used  on  a SINGLE
      microcomputer system by a SINGLE user.

      We shall consider it to be an attempt to criminally plagiarize  us  if
      duplicate  copies  of  this  manual  or the accompanying disk are made
      available for use by other parties, or on other  microcomputers.  This
      consideration also applies to, but is not limited to, duplicate copies
      being produced for use within the  original  purchasers  organisation,
      establishment, or home for anything other than archival purposes.


                                    WARNING

      We  at  Windrush  Micro  Systems  Limited  and the author consider the
      recognition we receive as a result of the sale  of  our  programs  and
      manuals to be of vital importance in remaining in business.

      Unless written arrangements to the contrary  have  been  made  between
      authorized  agents of Windrush Micro Systems Limited and the purchaser
      of this manual and the accompanying computer program we shall consider
      it  to  be an attempt to criminally plagiarize us if our company name,
      the program name, or the authors name is altered, changed  or  removed
      on  or  from  any of the materials purchased from us regardless of the
      means by which accomplished. This consideration shall include, but not
      be  limited to, the re-writing of this manual, or its reproduction for
      distribution under another company, program or trade name, or any like
      modification of the accompanying computer program.


                                WARRANTY NOTICE

      Although every effort has been made to insure  the  accuracy  of  this
      material,  it  is  sold AS IS and without warranty. No claim as to the
      suitability  or  workability  of  this  material  for  any  particular
      application  or  on any particular computer is made. This statement is
      in lieu of any other statement whether expressed or implied.


 Windrush Micro Systems, Worstead Labs, N. Walsham, Norfolk, NR28 9SA, England


---------------------------------------------
STRM06A.TXT

.DHO
%SCREDITOR III WORD PROCESSOR                          TECHNICAL REFERENCE MANUAL

                       SCREDITOR III COMMAND DESCRIPTIONS


.DHE
%TECHNICAL REFERENCE MANUAL                          SCREDITOR III WORD PROCESSOR

                       SCREDITOR III COMMAND DESCRIPTIONS


.DFO
"
 (C) 1982, ALFORD & ASSOCIATES                                        PAGE 6-%%%%
.DFE
"
 PAGE 6-%%%%                                        (C) 1982, ALFORD & ASSOCIATES
 The following pages describe each COMMAND in detail. The COMMANDS are listed  in
 alphabetical  order  by  the two-letter COMMAND NAME. Note that certain COMMANDS
 are only available  in  versions  of  SCREDITOR  III  for  particular  operating
 systems,  or  operate  differently  depending  upon the operating system in use.
 Also, note that some COMMANDS allow other COMMANDS to follow them on  a  command
 line,  and that others do not. Those that do will have (EOC) in the syntax line,
 and those that don't will have (EOL).

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 AB - ABORT EDIT SESSION

 SYNTAX:  AB(EOL)

 GENERAL: The ABORT COMMAND is used to  immediately  quit  an  edit  session  and
          return  to  DOS. If an input file is open, it will be closed intact. If
          an output file is open, it will be deleted. If a work file is open,  it
          will be closed, but will not be deleted.

          This  COMMAND  may  be  used  to  close a file which was opened for the
          express purpose of printing a file or extracting lines to a work  file,
          and  control  will return to DOS without changing the original file(s).
          Also, if it is determined that an  edit  session  has  begun  on  wrong
          files,  this  COMMAND is convenient in that the state of all files upon
          return to DOS is identical to that which existed when the edit  session
          started  except  for  any  WRITE-OUT  files which may have been created
          during the aborted edit session.

 ERRORS:  If another COMMAND follows the AB COMMAND, an ILLEGAL TERMINATOR  error
          will be posted.

          If  an  error  occurs in the file closings, a DISK ERROR will be posted
          and control returned to DOS.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 BO - MOVE TO BOTTOM OF BUFFER

 SYNTAX:  BO(EOC)

 GENERAL: The BOTTOM COMMAND will move the edit display area to the bottom of the
          current buffer. A partial screen of lines will be displayed if there is
          less than a full screen page of lines remaining from the current cursor
          position to the end of the buffer.

          This  COMMAND  is used to rapidly position the edit display area to the
          bottom of the current buffer.

 ERRORS:  If the buffer has become completely full, a BUFFER FULL message will be
          displayed and no movement will occur until a line has been removed from
          the buffer by deletion, NEW, SAVE or WRITE-OUT.

          If the cursor is presently on the last line in the buffer, a BOTTOM  OF
          BUFFER message will be posted.

          If  any  character  other than (EOC) or (EOL) follows the two-character
          COMMAND name, an ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CC - CONTROL CODE IMBEDDMENT

 SYNTAX:  CC#nn(EOC)

          The  command  name  must  be  followed  by  the  pound  symbol (#) type
          character and that in turn by a two-digit number in the range of 1 - 31

          In all versions of SCREDITOR III, the codes 0 and 13 are not allowed.

          In  addition,  in  the  SSB version code 26 is not allowed. In the FLEX
          version, codes 9 and 26 are not allowed. In the OS-9 version,  code  27
          is not allowed.

          It  is  strongly suggested that codes under 14 not be used except where
          pre-defined to  allow  upward  compatibility  with  later  releases  of
          SCREDITOR III.

 GENERAL: When  this  COMMAND is executed, the character under the cursor will be
          replaced by a code which will be used for the control of  your  printer
          during  the  use  of  the PR COMMAND. Each such control code imbeddment
          will be displayed as an up-arrow during  normal  editing,  and  may  be
          erased  by  use  of the DELETE CHARACTER operator, or by over-typing by
          any other key.

          The code entered is used to select the actual  string  of  character(s)
          which will be sent to the printer when the control code is encountered.
          There are seven control strings which are always defined by the same CC
          codes. They are as follows:

          CODE 1  - START FULL UNDERLINE         CODE 7  - OPERATOR STOP
          CODE 2  - END FULL UNDERLINE           CODE 10 - START BROKEN UNDERLINE
          CODE 3  - START BOLDFACE               CODE 11 - END BROKEN UNDERLINE
          CODE 4  - END BOLDFACE                 CODE 14 - START GRAPHICS
          CODE 5  - START DOUBLE WIDTH           CODE 15 - END GRAPHICS
          CODE 6  - END DOUBLE WIDTH

          All of the other codes except as noted in the syntax  comments  may  be
          defined  by  the  user to allow the implementation of specialty printer
          operations.

          The reason that CODES 1-6 are always defined  for  the  same  functions
          involves the way in which SCREDITOR III interprets these codes. Special
          consideration is given to the code since there is an alternate  way  in
          which to generate the functions with some printers.

          In  the  case  of  underline  and  boldface  printing,  printers  which
          backspace but do not support directly implement the codes (such  as  an
          IBM  SELECTRIC)  may  perform  these functions by printing a character,
          backspacing, and then either  typing  an  underline  or  re-typing  the
          character.

          In  the  case of printing double width characters, each character to be
          so printed may be printed followed by a space.


          When SCREDITOR III encounters one of these codes  during  printing,  it
          examines the printer characteristics previously loaded. If the function
          is defined, the sequence of characters defined are sent to the printer.
          In the case of underline and boldface, if the function is not  defined,
          the  backspace function is checked. If backspace is defined, it is used
          as previously described to perform the operation.

          In the case of printing double width, that characteristic is  examined.
          If defined, the defined string will be sent to the printer to implement
          the function. If not defined, spaces are sent after each  character  to
          effectively double space the word.

          When  these  functions  are turned on, they will remain in effect until
          the associated off code is sent.  Only  one  of  these  standard  codes
          should  be  active  at  any  given  time, or unpredictable results will
          occur.

          Even though print double width is a "stock" code, SCREDITOR  III  makes
          no  assumption  as  to whether or not your printer is actually printing
          double width. No attempt at any special display justification is  made.
          Since this type if printing is seldom if ever included within justified
          material (most printers won't allow part of a line to be double width),
          it  was  not considered worth the effort to add the necessary coding to
          SCREDITOR III to maintain display proportion.

          The operator stop  code  is  defined  to  allow  users  of  incremental
          printers  (which  print  a  character  and wait for another) to stop to
          change type elements, ribbon colors, etc... When the OP  STOP  code  is
          encountered,  printing  will cease until any key on the keyboard is hit
          except the ABORT key. Printing will then resume. If the  ABORT  key  is
          hit, printing will stop and control will return to SCREEN EDIT MODE.

          Each  imbedded  code  takes  a  character  space  in  the  line. During
          printing, the space taken by the imbedment will be printed as a  blank.
          Under  some conditions, justification will appear ragged, especially in
          the case of a control code at the start or end of a line. It is  up  to
          the  operator to visually inspect the result of justification to insure
          that the desired result has been obtained.

          During editing, automatic word wrap,  melding,  justification,  etc...,
          will  change  the  position  of  words on lines and between lines. When
          imbedded codes are being used, it is a good idea to look at text before
          it  is  printed  to  insure  that  everything is going to be printed as
          desired.

 ERRORS:  If an attempt is made  to  insert  CODE  0,  CODE  13  or  any  of  the
          proscribed codes listed in the syntax comments, an ILLEGAL CONTROL CODE
          error will be posted.

          If any type character other than  the  pounds  symbol  is  entered,  an
          ILLEGAL TYPE message will be displayed.

          If  the  type  character  is entered, but no number follows, an ILLEGAL
          TERMINATOR message will be posted.

          If neither type character  nor  number  is  entered,  an  ILLEGAL  TYPE
          message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CD - CODE DISPLAY

 SYNTAX:  CD(EOC)

 GENERAL: This  COMMAND  is used to display any printer control codes imbedded by
          the CC COMMAND.

          When the COMMAND is issued, the screen display area  will  be  cleared,
          and any control codes which exist in the display area will be displayed
          decimally.

          When it is desired to return to SCREEN EDIT MODE, hitting the space bar
          will restore the display to normal operation.

 ERRORS:  If  any  character  other  than  (EOC)  or (EOL) follows the two-letter
          command name, an ILLEGAL TERMINATOR message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CF - CLOSE READ-IN, PRINT-OUT or WRITE-OUT FILE

 SYNTAX:  CF(EOC)

 GENERAL: This COMMAND will close a file previously opened by an  OPEN  PRINT-OUT
          (SSB  and FLEX only), OPEN READ-IN or OPEN WRITE-OUT COMMAND. This will
          generally be done in order to release the work file control  block  for
          use by some other routine such as OPEN WRITE-OUT, LOAD or SAVE SYMBOLS,
          or OPEN PRINT-OUT since the  READ-IN  or  WRITE-OUT  file  is  normally
          automatically when returning to DOS.

          Only  one  use can be made of the work file control block at a time. In
          order to allow another COMMAND to use the it, this COMMAND  would  have
          to be executed to release the block for the desired COMMAND.

          Even  though  OS-9  does not use FCB's, this COMMAND is still necessary
          since a number of  pointers  and  temporaries  are  shared  by  several
          different work file COMMANDS.

          This  COMMAND is not active once a PRINT-MERGE COMMAND has been issued.
          If the READ-IN or WRITE-OUT is not active, a FILE NOT OPEN  error  will
          be posted.

          Any  DOS  error  will be posted as DISK I/O ERROR #XXX where XXX is the
          decimal numerical value of the error returned from DOS. If this occurs,
          all  COMMANDS  which  perform disk I/O with the exception of NEW, SAVE,
          LOG and ABORT will be disabled for the remainder of  the  current  edit
          session.

          If  any  character  other  than  (EOC)  or (EOL) follows the two-letter
          command name, an ILLEGAL TERMINATOR error will occur.

          If this  COMMAND  is  issued  after  a  PRINT-MERGE  COMMAND  has  been
          executed, an FCB IN USE error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CH - CHANGE ONE STRING TO ANOTHER STRING

 SYNTAX:  CH/(STRING1)/(STRING2)/(EOC)

          This  COMMAND  utilizes 'floating' delimiters. The slashes shown in the
          syntax line may be any displayable  character,  including  spaces.  The
          only  limitation is that all three delimiters must be the same, and may
          not appear in the strings themselves.

          The second string may be null; i.e., two adjacent delimiters.  The  net
          effect of this is to delete all occurrences of the first string.

          When  this  COMMAND is entered, the first occurrence of STRING1 will be
          located, the cursor placed on the first character  of  STRING1,  and  a
          pause  executed  to  allow  the operator to determine whether or not to
          change the string.

          At this point, one of three entries may be made.  First,  if  a  single
          letter  Y  is  entered,  the string will be replaced and a second pause
          will occur to allow the operator to decide whether or not  to  continue
          the search-and-replace cycle.

          Second,  if the letter C is typed, the remainder of the changes will be
          made without additional pauses for  operator  supervision.  The  screen
          display will operate exactly as if the pauses were being made. Once the
          'continuous' change mode is entered, hitting the ABORT  key  will  stop
          the change function, and hitting any other key will return the function
          to the original pause after location mode.

          Third, if the ABORT key is entered, no further changes  will  be  made,
          and  the  operation will abort and return to COMMAND MODE if additional
          COMMANDS exist to be done, or otherwise to SCREEN EDIT MODE.

          If additional COMMANDS follow the CHANGE COMMAND, care should be taken,
          as  the  COMMAND  returns  a BOTTOM OF BUFFER error when the end of the
          buffer is reached. This will cause the error message and  an  immediate
          return to SCREEN EDIT MODE.

 GENERAL: The  strings  entered  in  this  COMMAND  must exactly reflect the case
          (upper or lower) of both the string being searched for and  the  string
          with  which  to  replace it. The search routine does not consider This,
          THIS and this to be the same string; therefore, if a word occurs at the
          beginning  of  a  sentence  with normal capitalization, it would not be
          located in a search which uses all capital or lower case letters.

          If a string consists of multiple words separated  by  spaces,  and  the
          string in the buffer extends from the end of one line onto another line
          it will not be found by the search routine, which examines each line in
          the buffer separately.

          Since  SCREDITOR  III continuously changes the number of spaces between
          words as it packs, melds and justifies paragraphs, it  is  not  a  good
          practice to search for a string made up of words which are separated by
          spaces.


          The  search routine in SCREDITOR III is fully zoned; that is, will only
          search between the current margins. If an occurrence of the string lies
          outside the current margins, or extends into either margin, it will not
          be found.

 ERRORS:  If  the  search  routine  reaches  the  bottom of the current buffer, a
          BOTTOM OF BUFFER message will be posted.

          If the change routine causes the current buffer to fill, a BUFFER  FULL
          message  will  be  posted  and  the  search  aborted. See special notes
          concerning BUFFER FULL elsewhere.

          If a delimiter character is omitted, a DELIMITER ERROR will occur.

          If the first string is not defined, an ILLEGAL TERMINATOR message  will
          be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CM - CLEARMARK(S)

 SYNTAX:  CM*(EOC)
          CM<(EOC)
          CM>(EOC)
          CM(EOC)

          There are four options supported by this COMMAND.

          The first option is a single asterisk (*). When this  option  is  used,
          all line marks in the current buffer will be cleared.

          The  second  option is the less-than character (<). When this option is
          used, all marks from the start of the buffer up to  and  including  the
          current line will be cleared.

          The third option is the greater-than character (>). When this option is
          used, all marks from the current line to the end of the buffer will  be
          cleared.

          The  last  option  consists of the command name immediately followed by
          (EOC) or (EOL). In this case, only the current line will be unmarked.

 ERRORS:  If one of the four options is not given, an ILLEGAL OPTION message will
          be posted.

          If  (EOC)  or  (EOL)  does  not follow the option character, an ILLEGAL
          TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 CO - COPY LINES

 SYNTAX:  CO#nnnn#mmmm(EOC)
          CO#nnnn@mmmm(EOC)
          CO#nnnn*(EOC)
          CO#nnnn(EOC)

          There  are  four  options  supported  by this COMMAND. The first option
          above may be read as "Copy from line nnnn through line mmmm,  inserting
          the copy before the current line."

          The second option above may be read as "Copy  mmmm  lines  starting  at
          line nnnn, placing the copy before the current line.

          The  third option above may be read as "Copy all lines from nnnn to the
          end of the buffer and place the copy before the current line.

          The last option reads as "Copy line nnnn and place the copy before  the
          current  line."  In  all options, 'nnnn' and 'mmmm' are in the range of
          1-65536.

 GENERAL: The COPY COMMAND does not disturb the lines which have been  copied  in
          any  way...even  line marks are copied. Also, the resulting copy of the
          lines is an exact  image  of  the  pre-existant  lines,  including  all
          justification, etc...

          The COPY COMMAND always inserts the lines before the current line; that
          is, before the line on which the cursor was positioned when the COMMAND
          was executed.

          COPY  does  not  honor MULTI-COLUMN MODE. The lines copied will be from
          beginning to end of line irregardless of margins, and will be  inserted
          intact, also irregardless of margins.

          To  copy  a  sentence from the middle of one paragraph to the middle of
          another, you would use the SPLIT OPERATOR to isolate  the  sentence  on
          separate  lines  from  the  rest  of  the  paragraph,  split the target
          paragraph where the sentence will be moved, move the sentence, and then
          use  the  MELD  operator  to  re-format  the  paragraphs. Although this
          appears to be rather slow, in practice, this type of  movement  is  not
          often encountered in actual text editing.

 ERRORS:  The most common error which will be returned by the COPY COMMAND occurs
          when the lines  to  be  copied  overlap  the  current  line.  Under  no
          circumstance can the current line be a part of the block of lines being
          copied. An ILLEGAL TARGET error will be posted when this is attempted.

          The second error occurs when  the  buffer  is  filled.  A  BUFFER  FULL
          message  will  be  posted  under  this  condition.

          If a character other than one of the four  type  characters  #,  @,  *,
          (EOL) or (EOC) follows the command name, an ILLEGAL TYPE message will
          be posted.

          If (EOC) or (EOL) does not follow  the  second  (or  only)  number,  an
          ILLEGAL TERMINATOR error will be posted.
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 CP - CLOSE PRINTER PATH (OS-9 VERSION ONLY)

 SYNTAX:  CP(EOC)

 GENERAL: This COMMAND is designed to allow an early closing of the printer  path
          in  the  case where more than one process or user may want to share the
          output device or file, and the device or  file  is  non-shareable.  The
          path  is  automatically closed by the LOAD PRINTER DATA COMMAND and the
          OPEN PRINTER PATH COMMAND, and when  the  LOG  or  ABORT  COMMANDS  are
          executed.

          When  the  COMMAND  is  issued, the PC or PS printer status flag in the
          banner will be erased, indicating that the printing  COMMANDS  are  not
          available.

 ERRORS:  If  the printer path is not open when the COMMAND is issued, a PATH NOT
          OPEN error will be posted.

          If any character other than  (EOL)  or  (EOC)  follows  the  two-letter
          command name, an ILLEGAL TERMINATOR message will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 DF - DEFINE FOOTER ... DH - DEFINE HEADER

 SYNTAX:  DFE(EOC)      DHE(EOC)
          DFO(EOC)      DHO(EOC)
          DFB(EOC)      DHB(EOC)


          The entry of the HEADER  and  FOOTER  definitions  are  identical,  and
          therefore are being presented together in this command description.

          The  first  option consists of the command name followed by E, and will
          define the header or footer which will be used on even pages.

          The second option consists of the command name followed by O, and  will
          define the header or footer which will be used on odd pages.

          The  third  option consists of the command name followed by B, and will
          define both the even and odd header or footer.

 GENERAL: When entered, the definition will consist of all lines from  the  start
          of the buffer up to, but not including, the current line.

          The  definitions are entered and justified exactly as normal text would
          be. Printer control codes may also be  imbedded  just  as  with  normal
          text.  It  is,  of course, your responsibility to know how your printer
          will respond to control codes which it receives!

          One special string is defined in the header and footer definition...the
          page  number.  Wherever  you  desire  the current page number to appear
          during printing, you will type four percent symbols (%%%%). This string
          will be replaced by the page number when printed.


 ERRORS:  If  any  character  other  than  E, O or B follows the command name, an
          ILLEGAL OPTION message will post.

          If the particular definition has been previously  defined,  an  ALREADY
          DEFINED message will be displayed.

          If  the  cursor  is  on  the  top  line  in  the  buffer,  an   ILLEGAL
          HEADER/FOOTER error will be returned.

          If  the  difference  between the printer page length and the header and
          footer length is less than five lines, a  PAGE  LENGTH  error  will  be
          posted.

          If any character other than (EOC) or (EOL) follows the option character
          an ILLEGAL TERMINATOR error will be returned.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 DP - DEFINE PRINTER PAGE CHARACTERISTICS

 SYNTAX:  DP/(opt)/(opt)/(opt)...(EOL)
          DP/(EOL)

          There are two forms of the DP COMMAND. Both require that the COMMAND be
          the last or only COMMAND on the command line.

          The first is an entry with new page characteristics, as  in  the  first
          line above, where (opt) is defined as one of the following,

          Tnnn   -  PRINTER TOP MARGIN
          Lnnn   -  PRINTER LEFT MARGIN
          Bnnn   -  PRINTER  BOTTOM MARGIN
          Pnnn   -  PRINTER PAGE LENGTH
          Sn     -  SINGLE, DOUBLE or TRIPLE SPACING
          Nnnnnn -  STARTING PAGE NUMBER OF FILE

          and where the allowable range of numbers is from 0-255 for  the  T,  L,
          and  P  options  (or  less,  as noted later), 1-3 for the S option, and
          1-65535 for the N option.

          The options may be entered in  any  order  desired.  A  delimiter  must
          separate  each  option.  As  with  the  FIND  and  CHANGE COMMANDS, the
          delimiter floats, and is defined for the length of the COMMAND  as  the
          first character after the command name.

          The  second  form  of  this COMMAND is the command name followed by any
          delimiter character (other than a number or one  of  the  above  option
          letters),  and  immediately  followed by (EOL). When this form is used,
          the current page characteristics will be displayed,  and  they  may  be
          edited  if  desired. If the ABORT key is struck, control will return to
          SCREEN EDIT MODE and no change to the page characteristics will  occur.
          If the NEW LINE key is struck, the new characteristics will be entered.


 GENERAL: The  top and bottom margins are used whenever a header or footer is not
          defined. For instance, assume that an odd footer  is  defined,  but  no
          even footer. On even pages, then, the B value entered during PRTGEN, or
          as edited by this COMMAND, will be used as the footer line  count,  and
          on  odd pages the footer definition will be used. The two values do not
          have to be the same. The maximum value which many be  entered  is  less
          than 255, as determined by the formula L-M>4 (page length minus margins
          must be greater than four).

          The left margin is used by all printing COMMANDS, and is  included  due
          to  the  fact  that  many  printers  do  not allow paper positioning or
          settable margins. It is easier to use this method to set a  fixed  left
          margin  than  to  enter every line in a text with an offset left margin
          (although this could be done by SCREDITOR III).

          The page length is the actual length of the paper from top  to  bottom,
          counted  in lines. The maximum number of lines actually printed on each
          page will be the difference between the page length and the sum of  the
          top  and  bottom  margins (whether default or header/footer definitions
          lengths),  and  cannot  exceed  255.  See  the  formula  in  the  above
          paragraph.

          The  page  number  is  the  number  of  the first page in the file. For
          instance, if a file contained twelve  pages,  they  would  normally  be
          numbered  1 through 12 when printed. If, however, you entered N12, they
          would be numbered from 12 through 24 when printed.

          The spacing count determins whether the printed output will be single-,
          double-   or   triple-spaced.   This   value  will  not  apply  to  the
          header/footer definitions. When this value is changed, the  page  flags
          in  the  screen  display  area will change to reflect the new number of
          lines to be printed per page. Again, the formula above must be  adhered
          to.

 ERRORS:  If  the  number of lines to be printed excluding headers and footers is
          calculated to be less than five, a PAGE ERROR will be posted.

          If any other option character other than T, L, B, P, S or N is entered,
          an ILLEGAL OPTION will be posted.

          If  a non-numeric value or a value too large or small follows an option
          character, an ILLEGAL TARGET error will be posted.

          Leaving out a delimiter, or using more  than  one  different  delimiter
          character will cause a DELIMITER MISSING error.

          If  the  display form of the COMMAND is entered and and the DP/ part of
          the line is changed, an ILLEGAL SYNTAX error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 DS - DEFINE SYMBOL

 SYNTAX:  DS/(name)/(symbol body)(EOL)
          DS/(name)(EOL)

          There  are  two  forms  of  this  COMMAND.  Both forms require that the
          COMMAND be the last or only COMMAND on the line.

          The first form consists of the  COMMAND  followed  by  a  delimiter,  a
          symbol name and a symbol definition, where (name) is a single character
          from A-Z (lower case is acceptable, as "a" is converted  internally  to
          "A", etc...), and the delimiter floats, and may be any character.

          (symbol  body)  consists  of  a series of keystrokes. Like the entry of
          single-key operators during ESCAPE MODE, an up-arrow (^) followed by  a
          two-letter  OPERATOR  NAME  is  used  to  describe  each OPERATOR entry
          desired as part of the definition. Unlike ESCAPE MODE itself,  however,
          no  EOC  characters  are  entered  between  OPERATORS. Also, a NEW LINE
          OPERATOR must be entered after each call  to  ESCAPE  COMMAND  MODE.  A
          DELETE TO MARGIN OPERATOR should normally precede the NEW LINE OPERATOR
          to insure that no 'left-over' characters remain  on  the  command  line
          when executed.

          The  second  form  of  the  COMMAND  is  the command name followed by a
          delimiter and a symbol name and then immediately by  (EOL).  When  this
          form  is  entered, the definition of the named symbol will be displayed
          for inspection or editing. When editing or inspection is complete,  the
          ABORT  key  will  return control to the SCREEN EDIT MODE without making
          any change to the old symbol definition. The  NEW  LINE  OPERATOR  will
          cause  the  displayed  definition  to replace the old definition in the
          symbol buffer.

 GENERAL: Any series of keystrokes which may be entered from the keyboard may  be
          defined  as  a  symbol. Such keystrokes can range from a string such as
          SCREDITOR III which appears continuously  throughout  this  manual,  to
          very complex combinations of normal characters, COMMANDS and OPERATORS.
          The only limitation is that, unlike normal COMMAND MODE, a symbol which
          includes  a  COMMAND  MODE call cannot include OPERATORS in the COMMAND
          MODE part of the definition. For instance, this line is a legal COMMAND
          in normal entry:

             BO;^SD;^DL;TO

          The  entry  will be typed after hitting the ESCAPE OPERATOR and will be
          executed after hitting a NEW LINE OPERATOR, and will move to the bottom
          of the buffer (BO;), scroll the screen down one line (^SD;), delete one
          line (^DL), and, finally, move to the top of the buffer.

          A symbol, however, to accomplish the  same  thing,  would  have  to  be
          entered as:

             ^ESBO^DM^NL^SD^DL^ESTO^DM^NL


          Which would cause SCREDITOR III to go into COMMAND MODE and execute the
          BO COMMAND (^ESBO^DM^NL), return to SCREEN EDIT  MODE  and  scroll  the
          screen  down  (^SD)  and  delete  one  line (^DL), and finally re-enter
          COMMAND MODE and go to the top of the buffer (^ESTO^DM^NL).
          Note also that DELETE-TO-MARGIN precedes the NEW LINE OPERATOR  in  the
          symbol  definition. Be sure to remember to include it just as you would
          if you entered COMMAND MODE and typed the line.

          By ending a definition with  an  ACTIVATE  SYMBOL  OPERATOR  without  a
          symbol name, a special repetitive operation is created. Once the symbol
          has been run one time, simply typing the symbol name over and over will
          cause  the  symbol  to  re-execute.  Typing some other symbol name will
          allow you to chain from one symbol to another. If each definition  ends
          in  an  ACTIVATE  SYMBOL OPERATOR, the chaining can go on indefinitely.
          When you want to break the repetition or chaining, type the  ABORT  key
          instead  of a symbol name. This allows you to define extremely powerful
          single key functions to perform specific repetitive tasks!

 LENGTH:  The  method  of  storing symbols in SCREDITOR III is such that a symbol
          only uses the amount of space required to store it. In theory, a symbol
          could  be  as  long as the entire symbol buffer (1024 bytes) using this
          method. In practice, two limitations will exist.

          First, the maximum length of a symbol is 244 characters, the length  of
          the  command  line less the DS command name, the two delimiters and the
          single-character symbol name.

          Second, a symbol may only be as long as  the  remaining  space  in  the
          symbol  buffer. If a large number of symbols are defined, the space may
          be reduced to the point that there is not enough room in the buffer for
          another long symbol.

 ERRORS:  Only  twenty-six symbols may be defined (A-Z). Any other character will
          cause an ILLEGAL SYMBOL message to be displayed.

          If a delimiter does not follow the two-character COMMAND name  and  the
          symbol  name  (DS/A/),  a  SYNTAX ERROR will be posted, except when the
          option to display an existing  symbol  is  entered  (EOL  after  symbol
          name).

          If  a  symbol  is  entered of such a length that it will not fit in the
          symbol buffer (due to other symbol definitions having used up too  much
          of  the  available  space),  a  SYMBOL  BUFFER OVERFLOW message will be
          posted, and no part of the symbol will be entered into the buffer.

          The symbol is not parsed when it is  entered.  Any  illegal  operations
          within  the  symbol  definition will only be trapped when the symbol is
          activated and its contents are executed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 EX - EXIT TO SYSTEM MONITOR (FLEX and SSB versions only)

 SYNTAX:  EX(EOL)

 GENERAL: This COMMAND is used to gracefully leave SCREDITOR III  and  enter  the
          SYSTEM  MONITOR. SCREDITOR III may be re-entered by executing a jump to
          the warm start entry point, which is three bytes past the first address
          of SCREDITOR III saved to disk ($0576 for the FLEX version).

          THIS  IS  A  SYSTEMS PROGRAMMER'S CONVENIENCE ONLY, AND SHOULD NEVER BE
          ATTEMPTED BY UNQUALIFIED PERSONNEL.

 ERRORS:  If the SYSMON entry address was given  as  $0000  during  CONGEN,  this
          COMMAND  is  disabled,  and  the  error message ILLEGAL COMMAND will be
          posted if attempted.

          If any character other than (EOL) follows this one on the command line,
          an ILLEGAL TERMINATOR message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 FI - FIND STRING OF CHARACTERS

 SYNTAX:  FI/(STRING)/(EOC)

 GENERAL: A  search  for  (STRING) commences when the command is entered. When an
          occurrence of STRING is found the search will stop, the cursor will  be
          positioned to the start of the target string, and a pause will occur to
          determine your desire as to whether or not to  continue  searching.  If
          you  hit  the  ABORT  key  the search will stop with the cursor left in
          place at the start of the target string in the  display  area  and  any
          additional COMMANDS on the command line will be executed before control
          will return to SCREEN EDIT MODE. Any other key will cause the search to
          resume.

          If  the  search is not aborted before the last occurrence of the string
          is located, any remaining COMMANDS on the line will be ignored  due  to
          the fact that an error message will be posted.

          Like  the  CHANGE COMMAND, FIND is a zoned COMMAND: i.e., the string to
          be located must exist entirely between the current  margins  and  on  a
          single  line  to  be  found.  Also, like CHANGE, the case of the string
          entered on the command line must exactly match the string to be located
          or no occurrence will be found.

          Also,  like CHANGE, the delimiter floats, and the first character after
          the command name will  be  the  delimiter  for  the  remainder  of  the
          COMMAND.

 ERRORS:  If  the  search  routine  reaches the bottom of the buffer, a BOTTOM OF
          BUFFER message will be posted.

          If there is insufficient space in the buffer to  move,  a  BUFFER  FULL
          message will be posted.


          If  the  string  entered  is null (two adjacent delimiters), an ILLEGAL
          TERMINATOR message will be displayed.
          If the final delimiter is omitted, a DELIMITER ERROR will be returned.

          If any character other than (EOC) or (EOL) follows the second delimiter
          an ILLEGAL TERMINATOR error will be generated.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 GO - GOTO LINE

 SYNTAX:  GO#nnnn(EOC)
          GO@nnnn(EOC)
          GO*(EOC)

          There are three forms of the COMMAND.

          The first form above may be read as 'Go to line nnnn.'

          The second form may be read as 'Go toward the bottom of the buffer nnnn
          lines'

          The  third  form  of  the  COMMAND reads as 'Go to the last line in the
          buffer.'

          In the first two forms, 'nnnn' may range from 1-65536.

 GENERAL: The GOTO COMMAND allows quick  movement  to  a  specific  line  in  the
          current buffer.

 ERRORS:  If  the  target line does not reside within the current buffer, ILLEGAL
          TARGET will be posted.

          If any character other than #, @ or * are given after the command name,
          an ILLEGAL TYPE error will be returned.

          If  any character other than (EOC) or (EOL) follows the number in the #
          and @ options, or the asterisk in the third form, an ILLEGAL TERMINATOR
          error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 GP - GOTO PAGE

 SYNTAX:  GP#nnnn(EOC)
          GP@nnnn(EOC)
          GP*(EOC)
          GP(EOC)

          There are four forms of the COMMAND.

          The  first form above may be read as 'Go to page nnnn.'

          The second form may be read as 'Go nnnn pages toward the bottom of  the
          buffer.'

          The  third  form  of  the  COMMAND reads as 'Go to the last page in the
          buffer.'

          The fourth form of the COMMAND reads as 'Go to the start of the current
          page.'
          In the first two forms, 'nnnn' may range from 1-65536.

 GENERAL: The  GOPAGE  COMMAND  allows quick movement to a specific page start in
          the current buffer.

 ERRORS:  If the first line of the target page does not reside within the current
          buffer, ILLEGAL TARGET will be posted.

          If  any character other than #, @, *, or (EOC) or (EOL) are given after
          the command name, an ILLEGAL  TYPE  error  will  be  returned.  If  any
          character  other  than (EOC) or (EOL) follows the number in the # and @
          options, or the asterisk in the third form, an ILLEGAL TERMINATOR error
          will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 HR - HELP REQUEST

 SYNTAX:  HR?(EOL)
          HR?C(EOL)
          HR?O(EOL)
          HR?xx(EOL)

          There are four forms of the COMMAND.

          The first may be read as 'Display information about  the  HELP  REQUEST
          COMMAND.'

          The second may be read as 'Display the COMMAND SUMMARY.'

          The third may be read as 'Display the OPERATOR SUMMARY.'

          The fourth may be read as  'Display  a  summary  of  information  about
          COMMAND xx.'

          The  fourth form of the COMMAND requires that you supply the two-letter
          command name of the COMMAND on which you want information where 'xx' is
          shown above.

 GENERAL: When  this  COMMAND  is entered, the screen display area is cleared and
          the HELP.DAT file on the system drive (FLEX and SSB), or  the  HELP.DAT
          file  in  the EDIT_DATA directory on drive D0 (OS-9) is opened, and the
          requested information is read and displayed.

          When you have finished reading the material, the space bar or the ABORT
          key will close the file and return you to SCREEN EDIT MODE.

          On  some  of  the information displays there is more than one screen of
          information. When this is the case, the message (SPACE BAR TO CONTINUE,
          ABORT  KEY  TO RETURN TO EDIT) will be displayed. Hitting the space bar
          will display the next page of information.

          The information provided in each request is a abridged version  of  the
          information  contained  in this manual, and includes complete syntax as
          is displayed at the start of each COMMAND's description, and  at  least
          one paragraph of additional explanatory information.

          This  COMMAND  is  not available when the work file control block is in
          use, or after the PRINT-MERGE COMMAND has been executed.

 ERRORS:  If the command name in the fourth form of the COMMAND does not exist in
          the help file, an ILLEGAL TYPE message will be posted.

          If  any character other than O or C is entered for the second and third
          forms of the COMMAND, an ILLEGAL TYPE message will be returned.

          If any character other than (EOL) follows the COMMAND, an ILLEGAL  TYPE
          error will result.

          If the delimiter is ommited on the fourth form, an ILLEGAL TYPE message
          will be posted.

          If the delimiter is omitted on the second and  third  forms,  the  HELP
          REQUEST SUMMARY will be displayed.

          If  a  disk  error  occurs during the execution of this COMMAND, a DISK
          ERROR message will be returned.

          If the file control block is in use when this COMMAND is  executed,  an
          FCB IN USE error will be posted.

          If  a  PRINT-MERGE  COMMAND has been previously executed, an FCB IN USE
          error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 ID - INSERT READ-IN LINE NUMBER DISPLAY

 SYNTAX:  ID(EOC)

 GENERAL: This COMMAND is used to display the line number of the first  line  not
          read  in  an open READ-IN file. When the COMMAND is issued, the command
          line will be cleared, and the line number will be displayed as

             IR=nnnnn

          where nnnnn is the number of the first line in the file not yet skipped
          or inserted.

 ERRORS:  If  a  READ-IN  is not active when this COMMAND is executed, a FILE NOT
          OPEN error will be returned.

          If any character other than (EOC) or (EOL) follows the command name, an
          ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 JL - JUSTIFY LINE

 SYNTAX:  JLA(EOC)
          JLC(EOC)
          JLL(EOC)
          JLR(EOC)

          Four options are supported by this COMMAND, and one of  the  four  must
          always be entered.

          JLA will all-justify the current line.

          JLC will center-justify the current line.

          JLL will left-justify the current line.

          JLR will right-justify the current line.

 GENERAL: When the COMMAND is issued, the  current  line  will  be  justified  as
          indicated by the option character.

          In  the  case  of L,C and R option, no packing will take place. The net
          effect is to simply move the line to the left margin, or right  margin,
          or center the line within the current margins.

          The A option will pack the line before justifying it to insure that the
          spacing of the line is made as even as possible.

          This COMMAND may be entered in either LINE or TEXT MODE.

 ERRORS:  If one of the four option characters does not follow the command  name,
          an ILLEGAL OPTION message will be displayed.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  option
          character, an ILLEGAL TERMINATOR message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 JM - JUSTIFICATION MODE

 SYNTAX:  JMA(eoc)
          JMC(eoc)
          JML(eoc)
          JMR(eoc)

 SYNTAX:  Four  options  are  supported by this COMMAND, and one of the four must
          always be entered. The mode selected by this COMMAND is of significance
          only in TEXT MODE.

          JMA  will  place  SCREDITOR  III  in  ALL-JUSTIFY  MODE.  In this mode,
          whenever the right margin is passed and a word-wrap occurs, the current
          line  will  automatically  be packed and all-justified. Whenever a MELD
          operation is performed (MELD operator, exit INSERT CHARACTER  mode,  or
          PARAGRAPH  INDENT  when  in  TEXT MODE), the remainder of the paragraph
          will be melded using this mode.

          JMC will place SCREDITOR III in CENTER-JUSTIFY MODE. Whenever the right
          margin  is  passed causing a word-wrap, the current line will be packed
          and center-justified. Whenever a  MELD  operation  is  performed  (MELD
          operator,  exit  INSERT  CHARACTER  mode, etc...), the remainder of the
          paragraph will be  melded  using  this  justification  (lines  centered
          between margins).

          JML  will  place  SCREDITOR  III  in  LEFT-JUSTIFY  MODE  (default   at
          start-up). Whenever the right margin is passed causing a word-wrap, the
          current line will be packed to eliminate extra spaces and left flush at
          the left margin. Whenever a MELD operation is performed (MELD operator,
          exit INSERT CHARACTER mode, etc...),  the  remainder  of  the  line  or
          paragraph will melded flush at the left margin.

          JMR  will place SCREDITOR III in right-justify mode. Whenever the right
          margin is passed causing a word-wrap, the current line will  be  packed
          and  right-justified.  Whenever  a  MELD  operation  is performed (MELD
          operator, exit INSERT CHARACTER MODE, etc...),  the  remainder  of  the
          line or paragraph will be melded flush at the right margin.

 GENERAL: The JUSTIFY MODE COMMAND can be entered at any time, whether in TEXT or
          LINE MODE; however, the justification mode will  only  have  effect  in
          TEXT MODE.

 ERRORS:  If  any  option  other  than A, C, L or R is entered, an ILLEGAL OPTION
          ERROR will be posted.

          If (EOC) or (EOL) does not follow  the  option  character,  an  ILLEGAL
          TERMINATOR error will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 JP - JUSTIFY PARAGRAPH

 SYNTAX:  JPA(EOC)
          JPC(EOC)
          JPL(EOC)
          JPR(EOC)

          Four options are supported by this COMMAND, and one of  the  four  must
          always be specified.

          JPA will all-justify the current paragraph.

          JPC will center-justify the current paragraph.

          JPL will left-justify the current paragraph.

          JPR will right-justify the current paragraph.

 GENERAL: When  the COMMAND is issued, the current paragraph will be justified as
          indicated by the option character. The end of a paragraph is  indicated
          by a blank line between the current margins.

          The  effect of this command is to perform a JUSTIFY LINE operation over
          all of the lines in the paragraph. Paragraph level packing as with  the
          MELD OPERATOR will not take place. If you wish to re-pack and justify a
          paragraph, you would use the MELD OPERATOR,  or,  in  the  case  of  an
          indented paragraph, the PARAGRAPH INDENT COMMAND.

 ERRORS:  If  any  character other than one of the option characters A, C, L or R
          is entered, an ILLEGAL OPTION message will be posted.

          If (EOL) or (EOC) does not follow  the  option  character,  an  ILLEGAL
          TERMINATOR error will be posted.

          If  the  buffer  becomes full during the COMMAND, a BUFFER FULL message
          will be posted, and the line which was being operated on when the error
          occurred will be the current line after the error message is cleared.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 KL - KILL (DELETE) LINES

 SYNTAX:  KL#nnnn(EOC)
          KL@nnnn(EOC)
          KL*(EOC)
          KL(EOC)

          Four options are specified for this COMMAND.

          The first may be read as  "Delete  all  lines  from  the  current  line
          through line #nnnn."

          The second may be read as "Delete @nnnn lines."

          The  third  may  be  read  as  "Delete  all lines from the current line
          through the end of the current buffer."

          The fourth may be read as "Delete the current line."

          'nnnn' is a number in the range of 1-65535.

 GENERAL: This COMMAND is used to make mass deletions of lines where  typing  the
          DELETE LINE OPERATOR over and over would be rather tedious.

 WARNING: This  COMMAND  does  not  prompt  to  insure that you know what you are
          doing, or that you have correctly entered the line. Be sure you  do  it
          right the first time!

 ERRORS:  If a type character other than #, @, * or (EOL or EOC) is entered after
          the COMMAND, and ILLEGAL TYPE message will be posted.

          If the line number in the # option does not exist in the current buffer
          AFTER the current line, or the number of lines in the @ option does not
          exist from the current line to the end of the buffer, an ILLEGAL TARGET
          error will be posted.

          If any character follows the command and its target (if any) other than
          (EOL) or (EOC), an ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 LE - LINE EDIT MODE

 SYNTAX:  LE(EOC)

 GENERAL: This COMMAND will place SCREDITOR III in the line mode.

 ERRORS:  If either (EOC) or (EOL) does not immediately follow the command  name,
          an ILLEGAL TERMINATOR message will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 LI - LINE INDENT

 SYNTAX:  LI#nnnn(EOC)

          Only one option is defined for this COMMAND, the pounds  character  (#)
          followed by a number in the range of 1 to 249.

 GENERAL: This  COMMAND will insert the number of spaces specified by #nnn at the
          beginning of the current line. If line mode is active,  the  action  is
          identical  to  the  repeated  use of the INSERT SPACE OPERATOR. If text
          mode is active, the effect is to insert the number of spaces  specified
          and  to  re-justify  the  remainder  of the line or paragraph as if the
          spaces were a word.

 ERRORS:  If any character other  than  the  pounds  character  (#)  follows  the
          COMMAND  and  precedes  the  number,  an  ILLEGAL  TYPE message will be
          posted.

          If the number specified is larger than the right margin, or larger than
          the  right margin less the length of the first word on the line in TEXT
          MODE, an ILLEGAL TARGET error will result.

          If any character other than (EOC) or (EOL) is entered after the number,
          an ILLEGAL TERMINATOR error will be returned.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 LM - SET LEFT MARGIN

 SYNTAX:  LM#nnn(EOC)
          LM(EOC)

          Two forms of this COMMAND are defined.

          The first form of the COMMAND requires that  a  pounds  type  character
          follow  the  COMMAND  name, and then a number in the range of 1 to 249.
          When this is done, the left margin will be set to that column.

          The second is simply the command name followed by (EOC) or (EOL).  When
          entered  in  this  manner,  If  the  left  margin is set to the current
          column, it will be reset to column one. If the left margin is  not  set
          to the current column, it will be so set.

 GENERAL: If  the  cursor  column  would  fall  outside the left margin after the
          margin is moved, the cursor will be moved to the left  margin.  If  the
          new  left  margin  is  off the display area and the cursor is moved, an
          automatic horizontal scroll will occur.

 ERRORS:  If any character other than (#) or (EOC) or (EOL)  follow  the  command
          name an ILLEGAL TYPE message will be posted.

          If  any character other than (EOC) or (EOL) follows the command target,
          an ILLEGAL TERMINATOR message will result.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 LO - LOG EDIT SESSION

 SYNTAX:  LO(EOL)

          No further COMMANDS may follow this COMMAND.

 GENERAL: If  an  output  file  is  open,  and if nothing has been written to the
          output file, and if headers and/or footer are  defined,  they  will  be
          saved first.

          The  current  buffer will then be written out. If an input file is open
          and additional lines exist in it, the additional lines will be read and
          transferred to the output file. When all lines have been transferred to
          the output file, the screen will be cleared  and  the  message  Closing
          files...  will  be  displayed.  Then  any  open  work files (WRITE-OUT,
          READ-IN, etc...) will be closed. Then the input and output  files  will
          be closed.

 NEXT... (FLEX and SSB VERSIONS)

          If  no  output  filename was specified at edit start-up (using .TXT and
          .BAK extensions), the disk will be examined for a file  with  the  same
          name and a .BAK extension. If found, it will be deleted, the input file
          will be renamed to a .BAK extension, and the output file, which, up  to
          this  point  had  a  .TMP  or .SCR extension, will be renamed to a .TXT
          extension.

          If an output file was specified, the input and output files will simply
          be closed.

 NEXT... (OS-9 VERSION)

          If no output path was specified at edit start-up, the input file (if it
          existed) will be deleted, and the SCRATCH file will be renamed  to  the
          input file name.

          If no I/O files are open, the screen will immediately clear.

 FINALLY...

          If  a  command string was specified during CONGEN, it will be passed to
          DOS for processing, allowing SCREDITOR III to call another program with
          its  last dying gasp. If an error occurs during closing which caused an
          abort to DOS, the command string will not be passed to DOS.

 ERRORS:  If any character other than  (EOL)  follows  the  command,  an  ILLEGAL
          TERMINATOR error will be posted, and the COMMAND will not execute.

          If  disk errors occur during closing, they will be posted in the manner
          normal for your DOS. If this happens, you should check all of the files
          which  were  being  worked  on to see what has been damaged. Methods of
          recovery of files under this condition are beyond  the  scope  of  this
          manual.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 LP - LOAD PRINTER DATA FILE

 SYNTAX:  LP/(NAME)/(EOC)
          LP/*/(EOC)

          The  form of (NAME) should conform to the DOS under which SCREDITOR III
          is running as to length, allowed characters, etc...

          In the OS-9 version, a space must follow the  path  name  and  then  be
          followed  by  the  second delimiter to insure that OS-9 does not try to
          include the remainder of the command line in the path name.

          In the FLEX and SSB versions, no extension should be given. The default
          extension  which  SCREDITOR  III  supplies  is .DAT. If an extension is
          given, it will be ignored, and .DAT substituted.

          The second form of the command is used to load the default  file  which
          was  loaded  on  start-up.  This option is used when you have loaded an
          alternate data file, and wish to return to the original one.

 GENERAL: This COMMAND  allows  you  to  load  a  printer  data  file  which  was
          previously created using the PRTGEN program.

          When  this  COMMAND  is  executed, any previously-existing printer data
          will be erased before the new data is loaded.

          It will generally not be necessary to execute  this  COMMAND,  since  a
          PRTGEN  DATA  FILE  named PRTGEN.DAT (FLEX and SSB) or PRTGEN plus your
          user I.D. (OS-9) file must exist in order for SCREDITOR  III  to  start
          up,  and  will already have been loaded. This COMMAND is used primarily
          by those people who have the capability of using multiple printers.

          In the SSB and  FLEX  versions  this  COMMAND  is  not  active  once  a
          PRINT-MERGE COMMAND has been issued.

          In  the  OS-9 version the old printer path will automatically be closed
          and the new printer path opened whenever this COMMAND is  issued  since
          every printer data file includes a printer path string.

 ERRORS:  If  the  file name supplied does not conform to the syntax used by your
          DOS, an ILLEGAL FILE NAME error will be posted.

          If the file specified does not exist, or an  error  occurs  during  its
          opening  or loading, a DISK ERROR #NNN will be posted, where NNN is the
          decimal value of the error returned from DOS.  Under  some  conditions,
          the  work  file  control block may be disabled for the remainder of the
          edit session. Also, the printing COMMANDS will probably be disabled due
          to the erasure of the old printer data. The printing status flag in the
          banner will be blanked if this is the case.

          If (EOC) or  (EOL)  does  not  follow  the  second  delimiter,  or  two
          delimiters are not entered, an ILLEGAL TERMINATOR error will be posted.

          In  the SSB and FLEX versions, if a PRINT-MERGE COMMAND has been issued
          and this COMMAND is executed, an FCB IN USE error will be posted.


          If a disk error occurs during the loading of the file, the old  printer
          data  will  be  erased. Also, in the OS-9 version, the old printer path
          will be closed and the new printer path will not have been opened. As a
          result,  the printing status flag in the banner line (PS or PC) will be
          extinguished, and no printing commands will be active.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 LS - LOAD SYMBOL FILE

 SYNTAX:  LS/(NAME)/(EOC)

          The  form of (NAME) should conform to the DOS under which SCREDITOR III
          is running as to length, allowed characters, etc...

          In the OS-9 version, a space must follow the  pathname  and  the  space
          must  be  followed by the second delimiter to insure that OS-9 does not
          attempt to use the remainder of the command line for a path name.

          In the SSB and FLEX versions, no extension should be given. The default
          extension,  which  SCREDITOR  III supplies, is .DAT. If an extension is
          given, it will be ignored, and .DAT substituted.

 GENERAL: This COMMAND  allows  you  to  load  a  group  of  symbols  which  were
          previously defined and saved to disk.

          When  this  COMMAND  is issued, any symbols which are currently defined
          will be erased, and the symbols in the file will  be  loaded  into  the
          symbol buffer.

          This  COMMAND  is  not  available  if  a  PRINT-MERGE  COMMAND has been
          executed.

 ERRORS:  If the work file control block is in use when this COMMAND is executed,
          an FCB IN USE error will be posted.

          If an error has occurred previously and the work FCB has been disabled,
          an FCB IN USE error will be posted.

          If the file name supplied does not conform to the syntax used  by  your
          DOS, an ILLEGAL FILE NAME error will be posted.

          If  the  file  specified  does not exist, or an error occurs during its
          opening or loading, a DISK ERROR #NNN will be posted, where NNN is  the
          decimal  value  of  the error returned from DOS. Under some conditions,
          the work file control block may be disabled for the  remainder  of  the
          edit session.

          If  (EOC)  or  (EOL)  does  not  follow  the  second  delimiter, or two
          delimiters are not entered, an ILLEGAL TERMINATOR error will be posted.

          If a PRINT-MERGE COMMAND has been issued and this COMMAND is  executed,
          an FCB IN USE error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 MC - MULTI-COLUMN ON/OFF

 SYNTAX:  MC(EOC)

 GENERAL: If multi-column mode was active when this COMMAND is issued, it will be
          turned off. If off, it will be turned on. The change will be  reflected
          in the status section of the banner line.

 ERRORS:  If (EOC) or (EOL) does not immediately  follow  the  command  name,  an
          ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 MO - MOVE LINES

 SYNTAX:  MO#nnnn#mmmm(EOC)
          MO#nnnn@mmmm(EOC)
          MO#nnnn*(EOC)
          MO#nnnn(EOC)

          There are four options supported by  this  COMMAND.  The  first  option
          above  may be read as "Move from line nnnn through line mmmm, inserting
          the moved lines before the current line."

          The  second  option  above  may be read as "Move mmmm lines starting at
          line nnnn, placing the moved line before the current line.

          The third option above may be read as "Move all lines from nnnn to  the
          end of the buffer and place the moved lines before the current line.

          The  last  option  reads  as  "Move  line  nnnn and place it before the
          current line."

          The targets supplied must be in the range of 1-65535.

 GENERAL: The MOVE COMMAND does not change the lines which have been moved in any
          way, even line marks are moved. Also, the  moved  lines  are  an  exact
          image of the pre-existant lines, including all justification, etc...

          The MOVE COMMAND always inserts the lines before the current line; that
          is, before the line on which the cursor was positioned when the COMMAND
          was executed.

          MOVE  does  not  honor  multi-column mode. The lines moved will be from
          beginning to end of line irregardless of margins, and will be  inserted
          intact, also irregardless of margins.

          To  move  a  sentence from the middle of one paragraph to the middle of
          another, you would use the SPLIT OPERATOR to isolate  the  sentence  on
          separate  lines  from  the  rest  of  the  paragraph,  split the target
          paragraph where the sentence will be moved, move the sentence, and then
          use  the  MELD  OPERATOR  to  re-format  the  paragraphs. Although this
          appears to be rather slow, in practice, this type of  movement  is  not
          often encountered in actual text editing.

 ERRORS:  The most common error which will be returned by the MOVE COMMAND occurs
          when the  lines  to  be  moved  overlap  the  current  line.  Under  no
          circumstance can the current line be a part of the block of lines being
          moved. An ILLEGAL TARGET error will be posted when this is attempted.

          The second error occurs when  the  buffer  is  filled.  A  BUFFER  FULL
          message  will  be  posted  under  this  condition. See special notes on
          BUFFER FULL elsewhere.

          If a character other than one of the four type characters #,  @,  *  or
          (EOL)  or  (EOC) follows the command name, an ILLEGAL TYPE message will
          be posted. If (EOC) or (EOL) does not follow the target(s), an  ILLEGAL
          TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 NE - SAVE LINES TO FILE AND READ NEW LINES

 SYNTAX:  NE#nnnn(EOC)
          NE@nnnn(EOC)
          NE*(EOC)
          NE(EOC)

          Four  options  are  defined  for this COMMAND. The first may be read as
          'Save all lines from the start of the buffer through  line  #nnnn,  and
          read as many lines as possible from the input file, if open.'

          The second may be read as 'Save @nnnn lines, starting at the first line
          of the buffer, and read as many lines as possible from the input  file,
          if open.'

          The  third may be read as 'Save all lines from the start of the current
          buffer up to, but not including, the current line,  and  read  as  many
          lines as possible from the input file, if open.'

          The final option may be read as 'Save the first line in the buffer, and
          read as many lines as possible from the input file, if open.'

          In the first two forms, 'nnnn' is a number in the range of 1-65535.

 GENERAL: This COMMAND is used to save edited lines to the output  file,  and  to
          read  in additional lines from the input file for editing. If the input
          file is not open, this COMMAND is functionally identical  to  the  SAVE
          COMMAND.

          If this is the first time this COMMAND has been executed in the current
          edit session, a check will be made to see if there are  any  header  or
          footer  definitions.  If  so,  they will be saved before lines from the
          current buffer are saved.

          Only lines which are between the start of the current  buffer  and  the
          current  line  may  be saved. The current line and the remainder of the
          buffer may never be saved.

 ERRORS:  If an output file is not open, FILE NOT OPEN will be posted.

          If the current line is the top line in the buffer, NOTHING TO SAVE will
          be returned.

          If  any  character  other  than  #,  @, * or (EOC) or (EOL) follows the
          command name, an ILLEGAL TYPE error will be posted.
---------------------------------------------
STRM06B.TXT


          If the line number (first form) or number of lines (second form) do not
          exist in the top buffer, an ILLEGAL TARGET error will be returned.

          If  an  error  occurs  during the save, DISK ERROR #nnn will be posted,
          where #nnn is the error number returned  from  DOS,  and  an  immediate
          abort to DOS will occur.

          If  this  COMMAND  is  entered  after  a  PRINT-MERGE  COMMAND has been
          executed, a FILE NOT OPEN error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 NS - NEW SCREEN

 SYNTAX:  NS(EOC)

 GENERAL: This  COMMAND  is  included  in  SCREDITOR III as a compensation for an
          awkward characteristic of some  terminals;  i.e.,  a  CLEAR  key  which
          clears  the  screen,  but  does  not  send  a  character saying it did!
          TELEVIDEO terminals, in particular, are notorious for  this,  with  the
          CLEAR  SPACE  key  sitting  directly under the BACKSPACE key and to the
          right of the RETURN key. When this COMMAND is issued,  every  character
          on the screen is re-displayed.

          If  you  have  accidentally  hit  a CLEAR key on your terminal, and the
          screen goes blank, you should perform the following operations:

          1) Hit the ABORT key. In case anything was being done which  would  not
             like  a  COMMAND  issued  (such as being in the middle of entering a
             COMMAND), this will return you to screen edit.

          2) Enter the ESCAPE OPERATOR, placing you in COMMAND mode.

          3) Enter the DELETE TO MARGIN OPERATOR, clearing the command line.

          4) Type NS followed by the NEW LINE OPERATOR.

          Voila! Your screen is restored! You may now continue editing.

          Of course, not every time your screen goes blank, has this happened. If
          th  COMMAND  does not bring the screen back, you might check for pulled
          plugs, etc...

 ERRORS:  If any character other than (EOC) or (EOL) follows the command name, an
          ILLEGAL TERMINATOR error will be posted.

          There  are no other errors associated with this COMMAND, except, maybe,
          for pulled plugs, blown fuses, etc...

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 NU - CYCLE LINE NUMBERS DISPLAY ON/OFF

 SYNTAX:  NU(EOL)

 GENERAL: This COMMAND will cause the number of each line to be displayed at  the
          left side of the screen. The numbers are referenced from the first line
          in the file. If the numbers were being displayed when this  COMMAND  is
          executed, they will be turned off.

          In addition, if page display mode is active and numbers display mode is
          turned on, the first line of each page will  be  displayed  as  Pnnnnn,
          where  P  will be lower case or upper depending upon whether or not the
          line is marked, and 'nnnnn' will be the page number of which  the  line
          is  the  first  to  be  printed, referenced from the page number of the
          first page in the file (00001 unless changed by the DP COMMAND).

 WARNING: As indicated in the PRINT-MERGE and PRINT COMMAND descriptions, if  the
          line  number  display  is  on,  the  resulting printed output will also
          contain line numbers. If off, the print-out will not have line numbers.
          You  should  repeat  this over and over until committed to memory. Even
          the author of this manual has a couple of pages of  the  manual  laying
          around  with  line  numbers  printed,  and  keeps  them as monuments to
          forgetfulness!

 ERRORS:  If (EOC) or (EOL) does not  follow  the  two-letter  command  name,  an
          ILLEGAL TERMINATOR message will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OO - OPEN (CREATE) OUTPUT FILE

 SYNTAX:  OO/(NAME)/(EOC)

          (NAME)  must  conform  to  the  syntax for the operating system you are
          using.

          For OS-9 versions, (NAME) is any valid OS-9 pathname. A space should be
          entered after the pathname (before the second delimiter) to insure that
          OS-9 gets the word that the rest of the command line is not part of the
          pathname.

          For  FLEX and SSB versions, (NAME) may be entered without an extension.
          The default extension is .TXT.

 GENERAL: This COMMAND is used to open an output file  to  save  edited  material
          when SCREDITOR III is called from DOS without a filename given.

          This  COMMAND  is  not  available  once  a PRINT-MERGE COMMAND has been
          executed.

 ERRORS:  If the named file does not conform to the conventions  concerning  file
          names under your DOS, an ILLEGAL FILE NAME error will be posted.

          If the file already exists, a DISK ERROR will be posted.

          If an error occurs during opening, a DISK ERROR will be posted.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  second
          delimiter, an ILLEGAL TERMINATOR error will be posted.

          If the file name is omitted, or a delimiter  is  omitted,  a  DELIMITER
          ERROR will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OP - OPEN FILE FOR WRITE-OUT (FLEX and SSB versions only)

 SYNTAX:  OP/(NAME)/(EOC)

          (NAME) must conform to the syntax for  the  operating  system  you  are
          using.

          For  FLEX and SSB versions, (NAME) may be entered without an extension.
          The default extension is .TXT.

 GENERAL: This COMMAND is used to open a file to receive the output of the  PRINT
          COMMAND.  This  COMMAND  may  NOT  be  used  to  open  a  file  for the
          PRINT-MERGE COMMAND.

          The COMMAND is not  available  once  a  PRINT-MERGE  COMMAND  has  been
          executed.

 ERRORS:  If  the  named file does not conform to the conventions concerning file
          names under your DOS, an ILLEGAL FILE NAME error will be posted.

          If the file already exists, a DISK ERROR will be posted.

          If an error occurs during opening, a DISK ERROR will  be  posted,  and,
          depending  upon  the error type, use of the work file control block may
          be prohibited for the remainder of the edit  session  to  minimize  the
          possibility of blowing out a disk.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  second
          delimiter, an ILLEGAL TERMINATOR error will be posted.

          If the file name is omitted, or a delimiter  is  omitted,  a  DELIMITER
          ERROR will be posted.

          If  an  error  has  previously occurred in the use of the MISCELLANEOUS
          DISK COMMANDS, an FCB IN USE message will be displayed.

          If this COMMAND is entered after a PRINT-MERGE COMMAND has executed, an
          FCB IN USE error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OP - OPEN PRINTER PATH (OS-9 version only)

 SYNTAX:  OP/(NAME)/(EOC)
          OP/*/(EOC)

          In the first form, (NAME)  must  conform  to  normal  OS-9  syntax.  In
          addition,  a  space  should precede the second delimiter to insure that
          OS-9 does not try to use the rest of the command line for a path  name!
          If  no  extended path is given and a slash does not precede the name, a
          file will be created in the current working directory for the output of
          the  printing  commands.  If you are using slashes for delimiters, this
          may be a bit confusing since you will  open  a  path  to  a  device  by
          entering

             OP//P /

          which will open a path to the device named P.

          In  the second form, the path which was described in the data loaded at
          start-up, or by the LOAD PRINTER DATA COMMAND will be  used.  No  space
          should  be  entered between the asterisk and the second delimiter. This
          form of the COMMAND is generally used  to  re-open  a  path  which  was
          closed by the CLOSE PRINTER PATH COMMAND.

 GENERAL: This  COMMAND  may  be used to open a file to receive the output of the
          PRINT COMMAND, or may be used to open a path to some other device. This
          COMMAND MAY be used to open a file for the PRINT-MERGE COMMAND, and may
          be executed at any time, regardless of whether a READ-IN  or  WRITE-OUT
          file is open, or whether or not a PRINT-MERGE has been executed.

          To  use  this COMMAND, you do not need to execute the CP (CLOSE PRINTER
          PATH) COMMAND, as the old path is closed automatically (if  open)  when
          the COMMAND executes.

 ERRORS:  If  the  named file does not conform to the conventions concerning file
          names under OS-9, an ILLEGAL FILE NAME error will be posted.

          If opening a path to a file and the file already exists, a  DISK  ERROR
          will be posted.

          If an error occurs during opening, a DISK ERROR will be posted.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  second
          delimiter, an ILLEGAL TERMINATOR error will be posted.

          If the path name is omitted, or a delimiter  is  omitted,  a  DELIMITER
          ERROR will be posted.

          If  an  error  occurs  during  opening,  the printer status flag in the
          banner line will be extinguished to indicate that the printing COMMANDS
          are inoperative.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OR - OPEN FILE FOR READ-IN

 SYNTAX:  OR/(NAME)/(EOC)

          (NAME) must conform to the syntax for  the  operating  system  you  are
          using.

          For OS-9 versions, (NAME) is any valid OS-9 pathname. A space should be
          entered after the pathname (before the second delimiter) to insure that
          OS-9 gets the word that the rest of the command line is not part of the
          pathname.

          For FLEX and SSB versions, (NAME) may be entered without an  extension.
          The default extension is .TXT.

 GENERAL: This COMMAND is used to open a file for a later READ-IN.

          The  COMMAND  is  not  available  once  a  PRINT-MERGE COMMAND has been
          executed.

 ERRORS:  If the named file does not conform to the conventions  concerning  file
          names under your DOS, an ILLEGAL FILE NAME error will be posted.

          If  the  file does not exist, or an error occurs during opening, a DISK
          ERROR will be posted.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  second
          delimiter, an ILLEGAL TERMINATOR error will be posted.

          If  the  file  name  is omitted, or a delimiter is omitted, a DELIMITER
          ERROR will be posted.

          If an error has previously occurred in the  use  of  the  miscellaneous
          disk  COMMANDS,  or  if  this  COMMAND  is  entered after a PRINT-MERGE
          COMMAND has executed, an FCB IN USE message will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OS - PERFORM OPERATING SYSTEM COMMAND (OS-9 version ONLY)

 SYNTAX:  OS/(OS-9 COMMAND LINE)(EOL)

          This COMMAND must be the last or only COMMAND on the line.

          (OS-9  COMMAND LINE) is passed to SHELL via a FORK call for parsing and
          execution, and should be typed exactly as if you were in SHELL.

          When  this COMMAND is executed, the remainder of the command line after
          the delimiter is passed  to  OS-9  for  interpretation  and  execution.
          Control  will  automatically  return  to  SCREDITOR III if the commands
          executed return control to SHELL on completion. If the command line

             OS/SHELL

          is entered, a new incarnation of SHELL will be created and added to the
          process table. When this is done, the only way to return  to  SCREDITOR
          III  will be to KILL the new incarnation of SHELL. Be sure that, if you
          do this, you KILL the RIGHT SHELL, or you may not be returning anywhere
          until you re-boot the system!


          If you fail to enter the delimiter between the  command  name  and  the
          rest of the line which will be passed to SHELL, interesting results may
          occur. For instance, if you entered

             OS/DIR /D1

          you would get a directory listing of the master directory of device D1.
          However, if you leave out the delimiter, as in this example,

             OSDIR /D1

          SCREDITOR III will consider the D in DIR to be the delimiter and pass

             IR /D1

          to OS-9 for processing. If IR is a command which tells OS-9 to take the
          disk in drive one, add it to a bowl of Rice Krispies and eat it, that's
          what will happen! Don't forget the delimiter!

          When control returns to SCREDITOR III, the message 'Waiting...' will be
          displayed. To return to SCREEN EDITING MODE, hit the  space  bar.  This
          message  is  added  to  insure  that a directory listing won't flash by
          before you have a chance to read it.

 ERRORS:  If nothing but (EOL) follows the  two-letter  command  name,  a  SYNTAX
          ERROR will be posted.

          If  an  error is returned by SHELL, it will only be displayed after the
          'Waiting...' message is cleared.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OW - OPEN FILE FOR WRITE-OUT

 SYNTAX:  OW/(NAME)/(EOC)

          (NAME) must conform to the syntax for  the  operating  system  you  are
          using.

          For OS-9 versions, (NAME) is any valid OS-9 pathname. A space should be
          entered after the pathname (before the second delimiter) to insure that
          OS-9 gets the word that the rest of the command line is not part of the
          pathname.

          For FLEX and SSB versions, (NAME) may be entered without an  extension.
          The default extension is .TXT.

 GENERAL: This COMMAND is used to open a file for a later WRITE-OUT.

          The  COMMAND  is  not  available  once  a  PRINT-MERGE COMMAND has been
          executed.

 ERRORS:  If the named file does not conform to the conventions  concerning  file
          names under your DOS, an ILLEGAL FILE NAME error will be posted.

          If the file already exists or if an error occurs during opening, a DISK
          ERROR will be posted, and, depending upon the error type,  use  of  the
          work file control block may be prohibited for the remainder of the edit
          session to minimize the possibility of blowing out a disk.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  second
          delimiter, an ILLEGAL TERMINATOR error will be posted.

          If  the  file  name  is omitted, or a delimiter is omitted, a DELIMITER
          ERROR will be posted.

          If an error has previously occurred in the  use  of  the  MISCELLANEOUS
          DISK  COMMANDS,  or  If  this  COMMAND  is  entered after a PRINT-MERGE
          COMMAND has executed, an FCB IN USE error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PA - CYCLE PAGE START DISPLAY

 SYNTAX:  PA(EOC)

          This COMMAND will turn on or off the display of page start flags.

          If  on  when  the COMMAND is issued, the display will be turned off. If
          off, the display will be turned on.

 GENERAL: SCREDITOR III continuously calculates where each page of the file  will
          start if it were printed, based upon the default top or bottom margins,
          or the even  and  odd  header  and  footer  lengths,  if  defined.  The
          calculation is carried out separately for both odd and even pages.

          When  the  page  start  display  is  turned  on,  the  letter P will be
          displayed in the left-most column of the screen at the  first  line  of
          each  page.  In  addition,  if the line numbers display is on, the page
          number will replace the line number on those lines flagged as the start
          of  each  page.  The  line number displayed will be in reference to the
          first page number of the file (either 00001, or whatever number was set
          using the DEFINE PRINTED PAGE COMMAND).

          If  the  line is also marked (using the SET MARKED LINE COMMAND), the P
          flag character will be displayed as lower case  (p)  instead  of  upper
          case.

 ERRORS:  If any character other than (EOC) or (EOL) follows the command name, an
          ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PI - PARAGRAPH INDENT

 SYNTAX:  PI#nnn(EOC)

          #nnn is a number in the range of 1 to 249 in LINE EDIT MODE, and  1  to
          249  less  the length of the first word on the first line, and 1 to 249
          less the length of the first word on each  additional  line  after  the
          indenting of the previous line in TEXT MODE.

          This  COMMAND  is  used  to  indent a paragraph by a number of columns.
          Remember that #nnn above is not the column to which  the  paragraph  is
          indented,  but  rather the number of columns to the right of the margin
          by which the paragraph will be indented.

          In LINE MODE, this COMMAND has the same  effect  as  the  INSERT  SPACE
          OPERATOR.  Each  line  will be shifted to the right, and any characters
          which move past the right margin on each line will be lost.

          In TEXT MODE, this COMMAND has the same effect  as  if  you  moved  the
          cursor  to the first column of each line, performed an INSERT CHARACTER
          OPERATOR, typed a number of characters equal to #nnn and then used  the
          CURSOR  DOWN  OPERATOR  causing  a  paragraph  meld  to occur, and then
          repeated the action to the end of the paragraph, except that instead of
          characters, spaces are used.

 ERRORS:  If  the  buffer  becomes  full during the indent, a BUFFER FULL message
          will be posted, and the remainder of the paragraph will not  have  been
          indented.

          If #nnn is zero an ILLEGAL TARGET error wil be posted.

          If  #nnn  is  greater  than the limits described in the syntax comments
          above or if the COMMAND is executed on a line which  is  blank  between
          the margins, the bell will ring.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PL - PACK LINE

 SYNTAX:  PLC(EOC)
          PLL(EOC)
          PLR(EOC)

          There are three forms of this COMMAND.

          PLC  will center the current line between the margins, and extra spaces
          will be removed from the line.

          PLL will make the line flush with the left margin and extra spaces will
          be removed from the line.

          PLR  will  make the current line flush with the right margin, and extra
          spaces will be removed from the line.

 GENERAL: This COMMAND is used to remove extra spaces from a line and  perform  a
          specific justification on it, irregardless of the current justification
          mode or whether LINE or TEXT MODE is active. In TEXT MODE,  a  meld  IS
          NOT performed over the paragraph after this COMMAND is executed.

 ERRORS:  If  any option other than C, L or R is entered, an ILLEGAL OPTION error
          will be displayed. If any character other than (EOC) or  (EOL)  follows
          the option character, an ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PM - PRINT-MERGE

 SYNTAX:  PM/(NAME)/(EOL)
          PM/*/(EOL)

          There are two forms of the COMMAND.

          The  first  form  consists of the COMMAND followed be the filename of a
          data file from which the COMMAND will read data to be merged  into  the
          document being edited.

          (NAME)  must  conform  to  the  syntax for the operating system you are
          using.

          For OS-9 versions, (NAME) is any valid OS-9 pathname. A space should be
          entered after the pathname (before the second delimiter) to insure that
          OS-9 gets the word that the rest of the command line is not part of the
          pathname.  For  FLEX and SSB versions, (NAME) may be entered without an
          extension. The default extension is .TXT.

          The first form  of  the  COMMAND  is  used  to  begin  the  PRINT-MERGE
          operation.  The  second  form is used to re-start the PRINT-MERGE after
          editing an individual document, as will be described below.

 GENERAL: When the COMMAND is entered, the current files will be closed  just  as
          if  a  LOG  COMMAND had been executed; however, the program will retain
          control and not return to DOS.

          Next, the file specified by (NAME) will be opened for use as the  input
          data for merging.

          After  this,  the output file which was previously closed is opened and
          loaded for merging.

          Once the files are open, the merge operation begins. The current buffer
          is  searched  for  one  of  two special strings which will be described
          below. When either is found, it is replaced  with  one  line  from  the
          input  data  file.  Once  the  last  special  string has been found and
          replaced, a prompt message will be posted, as follows:

             Continuous, Print, Next, Edit or Abort?

          If the letter C is typed, the  first  document  will  be  printed,  the
          document  form  will be reloaded, the next series of replacements made,
          and so on until the end of the data file is reached. If the  ABORT  key
          is  struck  during  printing,  the  printing will stop and control will
          return to the action prompt  message.  The  document  which  was  being
          printed  will  not be lost, allowing you to re-print the current merged
          form.

          If the letter P is typed, the current document  will  be  printed,  the
          form  will  be  reloaded, the next series of replacements made, and the
          prompt will then be re-issued.


 PM - PRINT-MERGE  (continued)

          If  the letter N is typed, the current document will not be printed and
          the form will be reloaded, the next series of  replacements  made,  and
          the prompt will then be re-issued, thus skipping a form.

          If  the letter E is typed, control will return to SCREEN EDIT MODE. You
          may then make changes to the document with the  merged  data  in-place.
          This  will  allow  you  to  make custom changes to each merged document
          before printing. The second form of the PRINT-MERGE COMMAND above  will
          return control to the action prompt message when editing is complete.

          If  the  letter A is typed, the PRINT-MERGE COMMAND will be stopped and
          the data file will be closed. See the note below about RE-START.

          Any other character will be ignored.

 STRINGS: Two special strings are used in the insertion of data into the document
          during  the  actual merging. (LE) is used to insert data to be inserted
          as if SCREDITOR III were in LINE MODE.  Typical  uses  of  this  string
          would  be in inside addresses, salutations, tables, etc... (TE) is used
          where data will be inserted as if SCREDITOR  III  were  in  TEXT  MODE.
          Typical  uses  of  this  string  would  be  in  personalizations within
          paragraphs. When the (TE) string is used, melding will occur before the
          next string is replaced. Be sure to read the notes below on SETUP.

          In  editing  the  original document, you will use (TE) or (LE) wherever
          you desire to insert data. The actual replacement of the (TE) and  (LE)
          strings  take  place is as if you had used the CHANGE COMMAND to do the
          replacements. Word-wrap and justification will be honored.

 SETUP:   In order to prepare to execute the PRINT-MERGE  COMMAND,  a  number  of
          things must be observed.

          1) Any  paragraph  which  contains  a  (TE)  string must reside totally
             within the current margins. When the string is  replaced  by  actual
             data, automatic merging will take place.

          2) The type of justification you desire any paragraph containing a (TE)
             string to have must have  been  set  using  the  JUSTIFICATION  MODE
             COMMAND  before  issuing  the  PRINT-MERGE  COMMAND,  and  all  such
             paragraphs must have the same margins.

          3) Whenever an (LE) string is replaced, it will be done in  LINE  MODE,
             and no justification will take place. You must be sure that the data
             to be inserted does not cause margin overrun or characters  will  be
             lost just as when characters are inserted in normal LINE MODE.


 PM - PRINT-MERGE  (continued)

 LIMITS:  The  following limitations and provisos must be observed when executing
          a PRINT-MERGE COMMAND:

          1) The  document  into  which  the  data  is  being  merged must reside
             completely within the current buffer.

          2) The resulting document after merging  must  also  reside  completely
             within the current buffer.

          3) Any  defined  headers  or  footers  will  be  used just as in normal
             printing.

          4) No (TE) or (LE) replacement strings may be  imbedded  within  header
             and footer definitions (if they are, they will not be replaced).

          5) There must be at least one (TE) or (LE) string within the document.

          6) It  makes no difference whether LINE or TEXT MODE is active when the
             merge operation begins, but the mode of  the  last  string  replaced
             will  be  active  when  the action prompt is given. If you use the E
             answer to the prompt to make changes to the document, be sure to  be
             aware of this.

 RESTART: When  the  first  data file is exausted, or after the Abort response to
          the activity prompt, a second PRINT-MERGE run may be begun  on  another
          data file by using the first form of the PRINT-MERGE COMMAND.

 DATA:    The  organization  of  the data in the data file must exactly match the
          (LE) and (TE) replacement strings within the document as to the  number
          of  lines  versus strings. For instance, if there are a total of eleven
          strings within the document, there should be eleven data  items  within
          the  file  for  each  document to be printed, and each item in the data
          file should be on a separate line. No special characters  are  used  to
          separate data items or records within the data file.

 NOTE:    Certain  of  the  characteristics and operation of SCREDITOR III change
          when the PRINT-MERGE COMMAND is executed, as follows:

          1) Once the PRINT-MERGE COMMAND has been executed  once,  none  of  the
             COMMANDS  which  use the work file control block may be executed for
             the remainder of the edit session. In addition,  the  NEW  and  SAVE
             COMMANDS may not be used.

          2) DEFINE  and UNDEFINE HEADER and FOOTER COMMANDS may be executed, but
             the re-defined headers and/or footers will only be used in a  single
             printing  of  the  document,  since the document is re-loaded before
             each copy is printed.

          3) When the MERGE-PRINT is complete, either the ABORT or  LOG  COMMANDS
             may  be  used to return to DOS, but the file closing executed by the
             LOG COMMAND will have already been done.

          4) The 'F' option of the PRINT COMMAND may not  be  specified  for  the
             remainder of the edit session.


 PM - PRINT-MERGE  (continued)

 ERRORS:  If  no (TE) or (LE) strings exist within the current document, a CANNOT
          PRINT-MERGE error will be posted.

          If a NEW or SAVE COMMAND  has  been  executed  before  the  PRINT-MERGE
          COMMAND, a CANNOT PRINT-MERGE error will be posted.

          If additional lines exist in the input file past the end of the current
          buffer (partial read), a CANNOT PRINT-MERGE error will be posted.

          If the file given in (NAME) does not exist, or an error occurs  in  its
          opening,  a  DISK  ERROR #nnn message will be posted, where #nnn is the
          number of the error returned from DOS.

          If an error occurs in the special  logging  of  the  input  and  output
          files,  a  DISK  ERROR message will be posted, and an abort to DOS will
          occur.

          If an error occurs in the loading of the merge document, a  DISK  ERROR
          will be posted and an immediate abort to DOS will occur.

          When  the end of the data file is reached, an OUT OF DATA error will be
          posted.

          If a disk error occurs in the reading of input data, a DISK ERROR  will
          be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PP - PACK PARAGRAPH

 SYNTAX:  PPC(EOC)
          PPL(EOC)
          PPR(EOC)

          There are three forms of this COMMAND.

          All  three  forms  will  perform  the  same  operation as the PACK LINE
          COMMAND, but will do so over an entire paragraph, removing  spaces  and
          performing the selected justification.

 GENERAL: This  COMMAND  is used to remove the extra spaces from all of the lines
          of a paragraph. No melding is performed.

 ERRORS:  If any option other than C, L or R is entered, an ILLEGAL OPTION  error
          will be displayed.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  option
          character, an ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PR - PRINT

 SYNTAX:  PRx#nnnn(EOC)
          PRx@nnnn(EOC)
          PRx*(EOC)
          PRx(EOC)

          There are four forms of the COMMAND.

          The  first  may  be  read  as 'Print from the current page through page
          #nnnn.'

          The second may be read as 'Print @nnnn pages, starting with the current
          page.'

          The third may be read as 'Print from the current page to the end of the
          buffer/file (see below).'

          The final form may be read as 'Print the current page.'

          In the first two forms, 'nnnn' is a number in the range of 1-65535.

 OPTIONS: There are two special option characters  recognized  by  this  COMMAND,
          shown above as 'x'. The allowable option characters are B and F.

          If  the  B  option  character  is  entered, printing will stop with the
          bottom of the current buffer. If a part-page exists at  the  bottom  of
          the  buffer, it will be printed as if it were the end of the file, with
          blank lines generated down to the footer point on the page.

          If the F option character is entered, and if there are additional lines
          in  the  input  file  when  the  bottom  of  the  buffer is reached, an
          automatic NEW COMMAND will be executed and printing will continue.

 GENERAL: When this COMMAND is issued, the  beginning  of  the  current  page  is
          located.  Printing  will  start at the first line on the page, and will
          continue through the optioned number of pages.

          If headers or footers are defined, they will be  used.  The  number  of
          lines  actually printed on each page is determined by the length of the
          page less the length of the header and footer (if defined, and even  or
          odd,  depending  upon  whether  the page is even or odd). If either the
          header or footer for a particular page is not defined, the default  top
          or  bottom  margin  value  will  be  used, as defined during PRTGEN, or
          during the execution of the DEFINE PRINTED PAGE COMMAND.

          If any key other than the ABORT key  is  struck  during  printing,  the
          printing  will  stop  at the end of the current line. After this pause,
          any key other than the ABORT key will cause printing to resume. If  the
          ABORT  key is struck at either time, printing will immediately stop and
          control will return to COMMAND or  SCREEN  EDIT  MODE,  depending  upon
          whether or not additional COMMANDS exist to be executed.


          If  an  OP  STOP  control code is encountered during printing, printing
          will stop and the message 'Operator Stop...' will be  posted.  Any  key
          other  than  the ABORT key will cause the message 'Printing Resumed...'
          to be displayed, and printing will, indeed, resume. The ABORT key works
          as described in the previous paragraph.

          Whenever  the  page replacement string (%%%%) is encountered during the
          printing of the header or footer, it will be replaced with the  current
          page number.

 ERRORS:  If  any character other than B or F is entered where 'x' is show in the
          syntax above, an ILLEGAL OPTION error will be posted.

          If any character other than #, @, *  or  (EOL)  or  (EOC)  follows  the
          option  character,  an  ILLEGAL TYPE error will be posted. If no number
          follows the pounds or 'at' type character, an ILLEGAL TARGET error will
          be posted.

          If  any character other than (EOL) or (EOC) follows the COMMAND and its
          options and targets, an ILLEGAL TERMINATOR error will be posted.

          If the first line of the current page is not  in  the  buffer,  a  PAGE
          START NOT FOUND error will be posted, and printing will not occur.

          If  the end of the buffer (B option) or the end of the file (B or F) is
          reached before the target is reached (# and  @  types),  a  TARGET  NOT
          REACHED error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 PS - CYCLE PRINTER PAGE PAUSE

 SYNTAX:  PS(EOC)

 GENERAL: This  COMMAND  is used to enable or disable the post-page printer pause
          feature of SCREDITOR III. Each time a page is printed when on, the bell
          on  the  terminal (if so equipped) will ring to indicate the condition,
          and printing will stop.  Any  key  other  than  the  ABORT  will  cause
          printing  to  resume.  The  ABORT key will cause printing to abort, and
          control return to SCREEN EDIT MODE if no additional COMMANDS  exist  to
          be executed.

          This  COMMAND is included to allow the use of printers using "cut page"
          paper.

          If pause was on when this COMMAND is issued, it will be turned off.  If
          off,  it will be turned on. The printing status flag in the banner line
          will reflect the state as PS for pause on, and PC for pause off.

 ERRORS:  If any character other than (EOL) or (EOC) follows the COMMAND name, an
          ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 RI - READ-IN LINES FROM FILE

 SYNTAX:  RI#nnnn(EOC)
          RI@nnnn(EOC)
          RI*(EOC)
          RI(EOC)

          There are four forms of this COMMAND:

          The first may be read as 'Insert all lines from the current line in the
          READ-IN file through line #nnnn, placing them before the current buffer
          line.'

          The  second  may  be read as 'Insert @nnnn lines from the READ-IN file,
          placing them before the current buffer line.'

          The third form may be read as 'Insert the remainder of the READ-IN file
          before the current line in the buffer.'

          The  last  form  may  be read as 'Insert one line from the READ-IN file
          before the current line in the buffer.'

          In the first two forms, 'nnnn' is a number in the range of 1-65535.

 GENERAL: This COMMAND is used to insert selected lines from an open READ-IN file
          into the current buffer. The insertion is always immediately before the
          line on which the cursor resides when the COMMAND is executed.

          The READ-IN file is not closed  at  the  end  of  this  COMMAND  unless
          end-of-file is reached.

 ERRORS:  If  a  READ-IN  file is not open when the COMMAND is issued, a FILE NOT
          OPEN error will be posted.

          If any character other than #, @, or (EOL) or (EOC) follows the command
          name, an ILLEGAL TYPE error will be posted.

          If  the  number  entered  in  the  # option has already been skipped or
          inserted, an ILLEGAL TARGET message will be posted.

          If end-of-file is reached before the # or @ target is reached, the file
          will be closed, and a TARGET NOT REACHED error will be posted.

          If a disk error occurs, a DISK ERROR #nnn message will be posted, where
          #nnn is the error number returned from DOS.

          If there is not enough room to insert the lines, a  BUFFER  FULL  error
          will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 RM - SET RIGHT MARGIN

 SYNTAX:  RM#nnn(EOC)
          RM(EOC)

          Two forms of this COMMAND are defined.

          The first form of the COMMAND requires that a pounds  symbol  (#)  type
          character  follow  the  command  name,  and  the  type characer will be
          followed by a number in the range of 1 to 249. When this is  done,  the
          right margin will be set to that column.

          The  second is simply the command name followed by (EOC) or (EOL). When
          entered in this manner, if the right  margin  is  set  to  the  current
          column,  it will be reset to column 249. If the right margin is not set
          to the current column, it will be so set.

 GENERAL: If the cursor column falls outside the right margin after the margin is
          moved,  the  cursor will be moved to the right margin. If the new right
          margin is off the display area and the cursor is  moved,  an  automatic
          horizontal scroll will occur.

 ERRORS:  If any character other than (EOC) or (EOL) follows the command name, an
          ILLEGAL TERMINATOR error will be posted.

          If a number larger than 249 is entered, or the result  of  the  COMMAND
          would  place  the right margin to the left of the left margin, a MARGIN
          OVERRUN error will be displayed. If any character other than the pounds
          symbol  (#)  is used in the first form, an ILLEGAL TYPE message will be
          displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 RS - READ-IN SKIP

 SYNTAX:  RS#nnnn(EOC)
          RS@nnnn(EOC)

          There are two forms of this COMMAND:

          The first may be read aas 'Skip to line #nnnn in the READ-IN file.'

          The second may be read as 'Skip @nnnn lines in the READ-IN file.'

          'nnnn' is a number in the range of 1-65535.

 GENERAL: This  COMMAND  is  used  to skip over unwanted parts of an open READ-IN
          file before using the READ-IN LINES COMMAND.

 ERRORS:  If the READ-IN file is not open, a FILE NOT OPEN error will result.

          If any charater other than # or @ follows the command name, an  ILLEGAL
          TYPE error will be posted.

          If  the  target in the # option has already been passed or inserted, an
          ILLEGAL TARGET error will be posted.

          If the end of the file is reached before the target number of lines has
          been  skipped, a TARGET NOT REACHED error will occur, and the file will
          be closed.

          If an error occurs during the skip, DISK ERROR  #nnn  will  be  posted,
          where #nnn is the number returned from DOS.

          If  any character other than (EOC) or (EOL) follows the numeric target,
          an ILLEGAL TERMINATOR error will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 SA - SAVE LINES TO FILE

 SYNTAX:  SA#nnnn(EOC)
          SA@nnnn(EOC)
          SA*(EOC)
          SA(EOC)

 NOTE:    The  syntax  and  operation of this COMMAND is identical to that of the
          NEW COMMAND with the exception that no new lines will be read from  the
          input  file.  Refer  to  the  NEW  COMMAND  description  for syntax and
          operation details.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 SM - SET LINE MARK

 SYNTAX:  SM(EOC)

 GENERAL: This  COMMAND  will  mark the current line for later use in conjunction
          with the GOTO MARK OPERATOR. If the line was already  marked,  it  will
          remain marked.
          When the line is marked, an asterisk will be displayed in the left-most
          column of the screen unless the page mode display is on and a P  is  in
          the column. In this case, the P will be changed to p.

 ERRORS:  If any character other than (EOC) or (EOL) follows the command name, an
          ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 SS - SAVE SYMBOLS TO FILE

 SYNTAX:  SS/(NAME)/(EOC)

          (NAME) is the name of a file to be created, and  must  conform  to  the
          syntax  of  the  DOS  you  are using. The delimiters, as will all other
          COMMANDS, float, but must be the same.

          Under FLEX and SSB DOS, no extension should be given, as .DAT is always
          used with this COMMAND. Any extension actually entered will be ignored.
          The file will default to the working drive.

          Under OS-9, the second delimiter should be preceded by a space  to  let
          OS-9 know where to stop parsing the path name. The default directory is
          the current working directory.

 GENERAL: This COMMAND is used to save the currently defined symbols to a  symbol
          datafile.  The symbols are not erased after being saved, so the COMMAND
          may be issued at any time during the edit session.

 ERRORS:  If a filename which does not conform to the conventions  used  by  your
          DOS is entered, an ILLEGAL FILE NAME message will be posted.

          If  the  file  specified  by  the filename already exists, a DISK ERROR
          message will be posted.

          If any error occurs during the creation of the file or  the  saving  of
          the  symbols  to  the file, a DISK ERROR will be posted, and under some
          conditions, no disk I/O except NEW, SAVE and LOG may be allowed for the
          remainder of the edit session.

          If  an  error  has  occurred  previously  with any of the MISCELLANEOUS
          COMMANDS, and FCB IN USE error will be posted, and no  save  will  take
          place.

          If  the PRINT-MERGE COMMAND has been executed, an FCB IN USE error will
          be posted.


          If  any  character  other  than  (EOL)  or  (EOC)  follows  the  second
          delimiter, an ILLEGAL TERMINATOR error will be returned.

          If the name is omitted an ILLEGAL TERMINATOR error will be postd.

          If the trailing delimiter is omitted, a DELIMITER ERROR will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 ST - SET TABS

 SYNTAX:  ST/NNN/NNN/NNN/.../NNN(eol)

          Sets  tabs  in  selected  columns.  Delimiter  may  be  any non-numeric
          character, but must be the same throughout the  entire  line.  As  many
          columns as desired may be set with a single command entry. This COMMAND
          must be the last or only COMMAND  on  the  command  line.  The  columns
          entered in the COMMAND (NNN) must be in the range of 1 to 249.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 TA - TALLY COMMANDS

 SYNTAX:  TAA(EOC)
          TAC(EOC)
          TAD(EOC)
          TAI(EOC)
          TAK(EOC)
          TAR(EOC)

          There are six options defined in the TA COMMAND.

          The first option is the letter A. When this option is used, the  column
          of  numbers  in which the cursor is residing will be decimal aligned to
          the cursor position; that is, all numbers will be shifted left or right
          so  that  their decimal points all appear in the current cursor column.
          The cursor may be on any line in the column, and decimal  justification
          will  be  done  on all numbers before and after the current line. Every
          number must have a decimal point, and the alignment will  stop  at  the
          first  line  above  and below the current line which does not contain a
          decimal number crossing the current column.

          The second option is the letter  C.  When  this  option  is  used,  the
          current  column  of numbers will be added. Numbers may be preceded by a
          dollar sign, a plus sign or a minus sign, or followed by a minus  sign.
          Exponential  values  are  not supported by SCREDITOR III. The column of
          numbers does not have to be aligned for  the  tally  to  be  performed;
          however,  a  valid  digit or decimal point of EACH NUMBER to be tallied
          must be in the cursor column, as in the following example:

          1.23384- <
          175.23   <
          -4.126   <
          $9.95    <
          81.23    <
          11447.8  <
          .000001   <
          ^^^^

          (CURSOR COLUMN INDICATED BY UP-ARROW, CURSOR ROW BY LESS-THAN SYMBOL)

          Any of the four columns indicated by the up-arrow will give the correct
          answer for the tally of the columns. No other column will  do  so.  The
          left-most column will not because both a dollar sign and a numeric sign
          appear in the column. The right-most  two  columns  will  not  give  an
          accurate answer because spaces appear in those columns. any of the rows
          indicated may be the current line.

          The third option letter is the letter D. When this letter is used,  the
          current  tally  value  will be displayed on the command line. The space
          bar will clear the line and return control to SCREEN EDIT MODE.

          The fourth option letter is the letter I. When this letter is used, the
          tally  value will be inserted at the cursor position. The decimal point
          of the value will be placed at the cursor itself. Once  the  value  has
          been inserted, the tally will no longer be active (value cleared).


          The  fifth option is the letter K. This option kills (clears) a current
          tally value to allow another tally to occur without inserting the  last
          one accumulated.

          The  sixth  option  is  the  letter  R. This option will tally a row of
          numbers in a manner similar to the TALLY COLUMN COMMAND.

 GENERAL: These  COMMANDS  are  useful  when  a  spread-sheet  type page is being
          prepared. Applications might include hand-generated financial  reports,
          expense reports, etc...

 ERRORS:  If  an  illegal  option character is entered, an ILLEGAL OPTION message
          will be posted.

          If the character to which the cursor is pointing is not  a  part  of  a
          valid numeric field, an ILLEGAL TALLY FIELD error will be posted.

          If  a  tally  on  a  row  or  column has been done and another tally is
          attempted before the current value has  been  inserted  or  cleared,  a
          TALLY ACTIVITY ERROR will be posted.

          If a number outside the range of + or -99999999.99999999 is accumulated
          or encountered during a tally, an ILLEGAL TALLY  FIELD  error  will  be
          posted.

          If  there is insufficient room to insert the tally total, a NO SPACE TO
          INSERT error will be posted.

          If  any  character  other  than  (EOC)  or  (EOL)  follows  the  option
          character, in ILLEGAL TERMINATOR error will be posted.

          If  any  character  other  than  the option characters shown follow the
          command name, an ILLEGAL OPTION character will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 TE - SELECT TEXT MODE

 SYNTAX:  TE(EOC)

 GENERAL: This COMMAND is used to turn on TEXT MODE.  If  off  when  the  COMMAND
          executes, TEXT MODE will be turned on. If on, it will remain on.

 ERRORS:  If  any character other than (EOL) or (EOC) follow the command name, an
          ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 TO - MOVE TO TOP OF BUFFER

 SYNTAX:  TO(EOC)

 GENERAL: This COMMAND is designed to rapidly move the display area to the top of
          the current buffer.

 ERRORS:  If  the  cursor  is already on the first line in the buffer, a a TOP OF
          BUFFER message will be displayed.

          If any character other than (EOL) or (EOC) follow the command name,  an
          ILLEGAL TERMINATOR error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 UH - UNDEFINE HEADERS/FOOTERS

 SYNTAX:  UH(EOC)

 GENERAL: This COMMAND will  'undefine'  any  defined  headers  or  footers.  The
          headers and/or footers will become the top lines in the current buffer.

          When this COMMAND is issued, the default top and bottom margins will go
          into effect.

 ERRORS:  If  any character other than (EOL) or (EOC) follow the command name, an
          ILLEGAL TERMINATOR error will be posted.

          If  no header or footer definitions exist when the COMMAND is executed,
          a NOT DEFINED error will be displayed.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 WC - COPY LINES TO WRITE-OUT FILE

 SYNTAX:  WC#nnnn(EOC)
          WC@nnnn(EOC)
          WC*(EOC)
          WC(EOC)

          There are four options supported by this COMMAND.

          The first option may be read as 'Starting at the current line, copy all
          lines up to and including the line #nnnn to the WRITE-OUT file.'

          The second option may be read as 'Starting at the  current  line,  copy
          @nnnn lines to the WRITE-OUT file.'

          The  third  option may be read as 'Copy all lines from the current line
          to the end of the current buffer to the WRITE-OUT file.'

          The fourth option may  be  read  as  'Copy  the  current  line  to  the
          WRITE-OUT file.'

          In the first two forms, 'nnnn' is a number in the range of 1-65535.


 GENERAL: Each  time  the COMMAND is issued, the optioned number of lines will be
          copied. No cursor movement will occur.

          The WRITE-OUT file is not closed at the completion of this  COMMAND  to
          allow  additional  lines  to  be copied. If a READ-IN, a WRITE-OUT to a
          different file, a PRINT-MERGE, or other COMMAND  which  uses  the  work
          file  control  block is to be executed, the file should be closed using
          the CLOSE FILE COMMAND.

 ERRORS:  If the file has not be opened, a FILE NOT OPEN error will be posted.

          If  the  file is open for a read-type COMMAND, an FCB IN USE error will
          be posted.

          If the target in the first form is not  the  current  line  or  in  the
          bottom buffer, an ILLEGAL TARGET error will be returned.

          If the number of lines in the second form do not exist from the current
          line through the end of the current buffer,  an  ILLEGAL  TARGET  error
          will be returned.

          If  a  disk  error  occurs  during the execution of the COMMAND, a DISK
          ERROR message will be posted, and under some conditions,  no  disk  I/O
          except  for  the  NEW,  SAVE  and  LOG COMMANDS will be allowed for the
          remainder of the edit session.

          If a previous disk error has occurred in the use of  the  miscellaneous
          disk COMMANDS, an FCB IN USE error will be posted.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 WE - EXTRACT LINES TO WRITE-OUT FILE

 SYNTAX:  WE#nnnn(EOC)
          WE@nnnn(EOC)
          WE*(EOC)
          WE(EOC)

 NOTE:    The operation of this COMMAND is identical to that of the COPY LINES TO
          WRITE-OUT  COMMAND just presented, with the exception that as the lines
          are copied with this COMMAND, they will be  deleted  from  the  current
          buffer,  whereas with the WC COMMAND, they will not be. Refer to the WC
          COMMAND DESCRIPTION for operation and syntax details.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 CT - CLEAR TABS

 SYNTAX:  CT#NNN#MMM(eoc)
          CT#NNN@MMM(eoc)
          CT#NNN*(eoc)
          CT#NNN(eoc)

          Clears  tabs.  First form will clear all tabs from column NNN to column
          MMM (inclusive). The second form will clear all tabs starting at column
          NNNN  and  continuing  MMM  columns. The third form will clear all tabs
          from column NNN to the end of the line. The last form will clear a  tab
          in  column NNN. In all forms, NNN is a number in the range of 1-249. In
          the second form, the sum of NNN and MMM must be in the range of 2-249.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OD - DELETE DISK FILE

 SYNTAX:  OD/(file name)/(eoc)

          Deletes the file described in (file name). The default  drive  for  the
          file is the working drive. The default file extension is '.TXT'.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OL - LIST DISK FILES

 SYNTAX:  OL#NN(eoc)

          Lists  all  files on drive NN, where NN must be a legal drive number in
          your system. Files are listed in a four-name wide format. When the last
          filename  has  been  listed, a 'Waiting...' message will be posted. The
          space bar will clear the message and  return  control  to  SCREEN  EDIT
          MODE.  The  ABORT key will stop the listing. On some operating systems,
          hitting the abort key will cause the 'Waiting...' message to be posted.
          In this case, hit the space bar to return to editing.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 OV/(file name)/(eoc)

          View  the contents of a disk file. The file will be displayed with line
          numbers followed by an '=' character at the left side  of  the  screen,
          followed  by  the  line  of  text.  The  numbers are included to aid in
          determining which line numbers to use with the RI and RS COMMANDS. When
          the  listing  is  complete, the 'Waiting...' message will be displayed.
          The space bar will clear the message and return control to SCREEN  EDIT
          MODE.  The  ABORT key will stop the listing. On some operating systems,
          hitting the ABORT  KEY  will  cause  the  'Waiting...'  message  to  be
          displayed. If this happens, hitting the ABORT or space keys will return
          control to editing.

 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
