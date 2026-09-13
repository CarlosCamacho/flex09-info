# UGINDEX

> Source: `misc/uncategorized/USERV4_2 - FLEX Software Archive - Program and Support Utilities - Includes GUIDEPT1, GUIDEPT2, GUIDEPT3.zip!USERV4_2.DSK!UGINDEX.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

(P)rogramming (L)anguage for the Motorola MC680(9)

                                 by Graham Trott


       The  entire  contents  of this manual and the accompanying software
       are copyright (C) Windrush Micro Systems Limited and Graham  Trott.

       Duplication of this manual is strictly prohibited.  Duplication  of
       the accompanying software for anything other than archival purposes
       is strictly prohibited.


             Initial Release: 1 Janaury 1982 with version 2.XX Software.
             Second  Release: 1 June 1983 with version 3.XX Software.
             Third   Release: 1 June 1984 with version 4.XX Software.


               (P)rogramming (L)anguage for the Motorola MC680(9)


                                COPYRIGHT NOTICE

      The  entire contents of this manual and the accompanying software have
      been copyrighted by Windrush Micro  Systems  Limited  and  its  author
      Graham  Trott. The reproduction of this material by any means, for any
      reason, is strictly prohibited.


                              SERIAL NUMBER NOTICE

      This  product  has been assigned a unique serial number at the time of
      manufacture. The ASCII code for this serial number, which is encrypted
      into  the  body  of  the product, is also part of the start-up banner.
      This product is is therefore traceable to the  original  purchaser  in
      the event of plagiarized copies being discovered.

      This  product  is  sold  on  the  basis  of  being  used  on  a SINGLE
      microcomputer system by a SINGLE user.

      We shall consider it to be an attempt to criminally plagiarize  us  if
      duplicate  copies  of  this  manual  or the accompanying disk are made
      available for use by other parties, or on other  microcomputers.  This
      consideration also applies to, but is not limited to, duplicate copies
      being produced for use within the  original  purchasers  organisation,
      establishment, or home for anything other than archival purposes.


                                    WARNING

      We  at  Windrush  Micro  Systems  Limited  and the author Graham Trott
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

               (P)rogramming (L)anguage for the Motorola MC680(9)


                                 TABLE OF CONTENTS
 _________     ________________________________________________________     ____
 SECTION                            SUBJECT                            PAGE

  9.00.00      PL/9 USERS GUIDE                                                1
  9.00.01         Introduction                                                 1
  9.01.00         Data Sizes and Types                                         2


  9.02.00         PROGRAM STRUCTURE                                            3
  9.02.01            Branching and Looping                                     5
  9.02.02            IF...THEN...ELSE                                          5
  9.02.03            BEGIN...END                                               6
  9.02.04            IF... CASE1...THEN, CASE2...THEN, ELSE                    9
  9.02.05            LOGICAL  .AND  .OR  .EOR                                 10
  9.02.06            WHILE...                                                 13
  9.02.07            REPEAT...UNTIL                                           14
  9.02.08            FOR...NEXT                                               15
  9.02.09            Why Didn't You.......?                                   15

  9.03.00         ADVANCED CONTROL TECHNIQUES FOR REAL TIME PROGRAMMING       16
  9.03.01            BREAK                                                    17
  9.03.02            GOTO                                                     23
  9.03.03            RETURN                                                   24


  9.04.00         GETTING AT THE OUTSIDE WORLD                                26
  9.04.01            AT                                                       26
  9.04.02            CALL and JUMP                                            28
  9.04.03            ACCA, ACCB, ACCD, XREG, STACK and CCR                    31
  9.04.04            GEN                                                      32
  9.04.05            ASMPROC                                                  33


  9.05.00         ARITHMETIC IN PL/9                                          34
  9.05.01            Numeric Quantities                                       34
  9.05.02            Variables and Data Types                                 35
  9.05.03               Local Variables                                       35
  9.05.04               Global Variables                                      36
  9.05.05               Constant                                              36
  9.05.06               Procedures as Variables                               37
  9.05.07               Read-only Data                                        38
  9.05.08            Printing Numbers                                         39
  9.05.09            "INTEGER" versus "REAL" Arithmetic                       40
  9.05.10            Arithmetic Operators and Evaluators                      41
  9.05.11            Arithmetic Operator Precedence                           42
  9.05.12            Mixed Mode Arithmetic                                    43
  9.05.13            Unsigned Integer Arithmetic (to BITS or not to BITS)     44
  9.05.14            PL/9 Functions                                           49


  9.06.00         ADVANCED PROGRAMMING STRUCTURES                             51
  9.06.01            Custom Functions (ENDPROC & RETURN)                      51
  9.06.02            Vectors and Data Tables                                  53
  9.06.03            Pointers                                                 54
  9.06.04            Using Vectors                                            63
  9.06.05            Combining Functions, Vectors and Pointers to Data        67
  9.06.06            Two Dimensional Arrays                                   70


                                        _
                                       I
               (P)rogramming (L)anguage for the Motorola MC680(9)


                                 TABLE OF CONTENTS
 _________     ________________________________________________________     ____
 SECTION                            SUBJECT                            PAGE


  9.07.00         BITWISE OPERATIONS                                          72
  9.07.01            Bitwise AND                                              73
  9.07.02            Bitwise OR                                               74
  9.07.03            Bitwise EOR (XOR)                                        75
  9.07.04            Bitwise NOT                                              76
  9.07.05            Bit Oriented Terminal I/O                                77
  9.07.06            Bitwise AND - OR - EOR Demonstration Program             80
  9.07.06            Operating on Specific Bits; An Individual Approach       82
  9.07.07            Operating on Specific Bits; More General Approaches      87
  9.07.08            Bit Manipulation through Data Tables                     91
  9.07.09            Prioritized I/O Handling through Data Tables             94
  9.07.10            Non-prioritized I/O Handling through Data Tables         96
  9.07.11            Everything but the Kitchen Sink through Data Tables      98


  9.08.00         RECURSIVE PROGRAMMING                                      103


  9.09.00         MULTI-TASKING PROGRAMS                                     105
  9.09.01            A Multi-Tasking Kernel in PL/9                          119
  9.09.02            Multi-Tasking with Interrupts (SWI)                     124
  9.09.03            Multi-Tasking with Interrupts (IRQ)                     129
  9.09.04            Better Control of an IRQ Driven Multi-Tasking Program   133


  9.10.00         PROGRAM ENTRY AND EXIT                                     143
  9.10.01            Origin                                                  144
  9.10.02            Stack                                                   145
  9.10.03            Global                                                  146
  9.10.04            Dpage                                                   146
  9.10.05            Endproc End                                             147


  9.11.00         HANDLING INTERRUPTS (SWI, SWI2, SWI2, NMI, FIRQ and IRQ)   150


  9.12.00         STARTING A PL/9 PROGRAM FROM POWER-UP (RESET)              153
  9.12.01            Dumb-Bug ... A Self Starting Program                    154
  9.12.02            A PL/9 Mini-Monitor for the MC6809                      157


  9.13.00         LARGE PROGRAMS                                             185


  9.14.00         PROGRAMMING HINTS                                          186
  9.14.01            Spacing                                                 186
  9.14.02            Indenting                                               186
  9.14.03            Syntax                                                  187
  9.14.04            Saving Code                                             188
  9.14.05            When Things Don't Go According to Plan                  189


                                        __
                                       II
               (P)rogramming (L)anguage for the Motorola MC680(9)


                                 TABLE OF CONTENTS
 _________     ________________________________________________________     ____
 SECTION                            SUBJECT                            PAGE


 10.00.00      SAMPLE PL/9 PROGRAMS                                          191

 10.01.01         Sieve of Eratosthenes                                      193
 10.01.02         Damped Sine Wave Demonstration Program                     196
 10.01.03         Lunar Lander                                               199
 10.01.04         Upper-case to lower-case Conversion Program                205
 10.01.05         Lower-case to upper-case Conversion Program                209
 10.01.06         Sorted FLEX Disk Directory Utility                         213
 10.01.07         Binary Move Utility                                        222
 10.01.08         INTEL HEX dump routine                                     224
 10.01.09         MOTOROLA HEX dump routine                                  228


                                       ___
                                      III
