# PL9INDEX

> Source: `manuals/misc/REF_MAN - FLEX Software Archive - Manual and Documentation Archive - Includes PL9-FLY, PL9COMPL, PL9CONFG.zip!REF_MAN.DSK!PL9INDEX.TXT`  
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

                                 by Graham Trott


                                 TABLE OF CONTENTS
 _________     ________________________________________________________     ____
 SECTION                            SUBJECT                            PAGE


  1.00.00      INTRODUCTION                                                    1
  1.00.01         Acknowledgements                                             2
  1.00.02         How to use this manual                                       3
  1.00.03         History of PL/9                                              4
  1.00.04         Existing Tools                                               5
  1.00.05         A 'Better Mousetrap'                                         5
  1.00.06         Compatibility with Other Text Editors                        6
  1.00.07         Variations Between Versions                                  6


  2.00.00      PRODUCT OVERVIEW                                                7
  2.00.01         Benchmark Performance Figures                               12


  3.00.00      CONFIGURING PL/9 TO YOUR SYSTEM HARDWARE ENVIRONMENT           13
  3.01.00         Memory Map                                                  19

  3.02.00         PL/9 and the Flex Environment                               20
  3.02.01            PL/9 and Flex Printer Drivers                            20
  3.02.02            PL/9 and Flex Itself                                     20

  3.03.00         Just to prove that it works.                                21
  3.03.01            Other Modes of Operation                                 23


  4.00.00      EDITOR TECHNICAL REFERENCE MANUAL                              25
  4.00.01         Detailed Description of Editor Commands                     26

  4.00.02         Editor Command Symbols                                      26
                     MODE CONTROL                                             27
                     LINE POSITIONING COMMANDS                                28
                     FILE ORIENTED COMMANDS                                   29
                     LINE EDITING                                             30
                     GLOBAL EDITING                                           32
                     DISK FILE HANDLING                                       33
                     Recovering a File in Memory                              36


  5.00.00      COMPILER TECHNICAL REFERENCE MANUAL                            29
                  Calling the Compiler from Flex                              40
                  Error Handling                                              41


  6.00.00      TRACER TECHNICAL REFERENCE MANUAL                              35
                  MODE CONTROL COMMANDS                                       46
                  SOURCE FILE RELATED COMMANDS                                46
                  TRACER CONTROL COMMANDS                                     47
                  BREAKPOINTS                                                 48
                  VARIABLES                                                   48
                                        _
                                       I
               (P)rogramming (L)anguage for the Motorola MC680(9)


                                 TABLE OF CONTENTS
 _________     ________________________________________________________     ____
 SECTION                            SUBJECT                            PAGE


  7.00.00      PL/9 LANGUAGE TECHNICAL REFERENCE MANUAL                       49
  7.00.01         Comments                                                    49
  7.00.02         Symbols                                                     49
  7.01.00         Keyword Descriptions                                        50

                  ACCA        (87)                 INCLUDE     (58)
                  ACCB        (87)                 INT         (111) -
                  ACCD        (87)                 INTEGER  (57)   (88)*
                  AND         (109) +              IRQ         (90)
                  .AND        (73)                 JUMP        (79)
                  ASMPROC     (81)                 MATHS       (89)
                  AT          (52)                 NMI         (90)
                  BEGIN       (72)                 NOT         (110) -
                  BREAK       (76)                 OR          (109) +
                  BYTE      (57) (88)*             .OR         (73)
                  CALL        (78)                 ORIGIN      (53)
                  CASE        (71)                 PROCEDURE   (60)
                  CCR         (88)                 REAL        (57)
                  CONSTANT    (51)                 REPEAT      (75)
                  DPAGE       (56)                 RESET       (90)
                  ELSE        (71)                 RETURN      (67)
                  END         (72)                 SHIFT       (110) -
                  ENDPROC     (64)                 SQR         (111) -
                  ENDPROC END (70)                 STACK    (54)   (87)
                  EOR         (109) +              SWAP        (110) -
                  .EOR        (73)                 SWI         (90)
                  EXTEND      (110) -              SWI2        (90)
                  FIRQ        (90)                 SWI3        (90)
                  FIX         (111) -              THEN        (71)
                  FLOAT       (111) -              UNTIL       (75)
                  FOREVER     (75)                 WHILE       (74)
                  GEN         (80)                 XOR         (109) +
                  GLOBAL      (55)                 .XOR        (73)
                  GOTO        (77)                 XREG        (87)
                  IF          (71)

                  !           (96)
                  .           (101)
                  "           (107)


                  (+) in section 7.05.00  .........  (-) in section 7.06.00
                  (*) in this section and section 7.06.00


                                        __
                                       II
               (P)rogramming (L)anguage for the Motorola MC680(9)


                                 TABLE OF CONTENTS
 _________     ________________________________________________________     ____
 SECTION                            SUBJECT                            PAGE


  7.01.01            CONSTANT                                                 51

  7.01.02            AT                                                       52

  7.01.03            ORIGIN                                                   53

  7.01.04            STACK                                                    54

  7.01.05            GLOBAL                                                   55

  7.01.06            DPAGE                                                    56

  7.01.07            BYTE, INTEGER, REAL                                      57

  7.01.08            INCLUDE                                                  58

  7.01.09            A Program Header                                         59

  7.01.10            PROCEDURE                                                60

  7.01.11            ENDPROC, RETURN and ENDPROC END                          64

  7.01.12            IF...THEN...ELSE & IF...CASE1.THEN...CASE2.THEN...       71

  7.01.13            BEGIN...END                                              72

  7.01.14            Logical .AND, .OR & .EOR (.XOR)                          73

  7.01.15            WHILE...                                                 74

  7.01.16            REPEAT...UNTIL and REPEAT...FOREVER                      75

  7.01.17            BREAK                                                    76

  7.01.18            GOTO                                                     77

  7.01.19            CALL                                                     78

  7.01.20            JUMP                                                     79

  7.01.21            GEN                                                      80

  7.01.22            ASMPROC                                                  81
                        How data is passed to and from procedures             84
                        The architecture of REAL (floating point) numbers     85
                        Examples of REAL number formats                       86

  7.01.23            ACCA, ACCB, ACCD, XREG and STACK                         87

  7.01.24            CCR                                                      88

  7.01.25            MATHS                                                    89

  7.01.26            RESET, NMI, FIRQ, IRQ, SWI, SWI2 and SWI3                90

  7.02.00         Interfacing with Assembly Language                          91
                                        ___
                                       III
               (P)rogramming (L)anguage for the Motorola MC680(9)


                                 TABLE OF CONTENTS
 _________     ________________________________________________________     ____
 SECTION                            SUBJECT                            PAGE


  7.03.00         Variables                                                   92
  7.03.01            Arithmetic Quantities                                    92
  7.03.02            Unsigned Bytes and Integers                              93
                        Hex Numbers                                           95
                        The Exclamation Mark (!)                              96
                        Integer                                               97
  7.03.03            Data Types                                              100
  7.03.04            Pointers                                                101

  7.04.00         Arithmetic and Operator Precedence Rules                   108

  7.05.00         Bit Operators                                              109

  7.06.00         Functions                                                  110

  7.07.00         Anatomy of PL/9 Programs                                   112
  7.07.01            Variable Allocation
  7.07.02               Global Variables                                     112
  7.07.03               Local Variables                                      113
  7.07.04               Absolute Variables                                   113
  7.07.05               Data                                                 113
  7.07.06            Assignments
  7.07.07               Simple Assignments                                   114
  7.07.08               Vectors                                              114
  7.07.09            Procedure Calls                                         114
  7.07.10            Procedures                                              115
  7.07.11            Built-in Arithmetic Functions                           115
  7.07.12            Register Preservation                                   115
  7.07.13            Pointers                                                116
  7.07.14            Memory use by PL/9 during compilation                   120
  7.07.15            Disk Binary Files                                       120


  8.00.00      PL/9 LIBRARIES TECHNICAL REFERENCE MANUAL                     121

  8.00.01         TRUFALSE.DEF                                               123

  8.01.00         IOSUBS.LIB                                                 124
  8.01.01            Monitor                                                 124
  8.01.02            Warms                                                   124
  8.01.03            Getchar                                                 124
  8.01.04            Getchar_Noecho                                          124
  8.01.05            Getkey                                                  125
  8.01.06            Convert_Lc                                              125
  8.01.07            Get_Uc                                                  125
  8.01.08            Get_Uc_Noecho                                           125
  8.01.09            Putchar                                                 126
  8.01.10            Printint                                                126
  8.01.11            Remove_Char                                             126
  8.01.12            Input                                                   127
  8.01.13            Crlf                                                    128
  8.01.14            Print                                                   129
  8.01.15            Space                                                   130


                                         __
                                        IV
               (P)rogramming (L)anguage for the Motorola MC680(9)


                                 TABLE OF CONTENTS
 _________     ________________________________________________________     ____
 SECTION                            SUBJECT                            PAGE


  8.02.00         TERMSUBS.LIB                                               135
  8.02.01            Nulls                                                   135
  8.02.02            Erase_Eol                                               136
  8.02.03            Erase_Eop                                               136
  8.02.04            Cursor                                                  136
  8.02.05            Home                                                    136
  8.02.06            Home_N_Clr                                              136
  8.02.07            Attr_On                                                 136
  8.02.08            Attr_Off                                                136


  8.03.00         HEXIO.LIB                                                  140
                     HEXGLOBL.DEF                                            140
  8.03.01            Get_Hex_Nibble                                          141
  8.03.02            Get_Hex_Byte                                            141
  8.03.03            Get_Hex_Address                                         141
  8.03.04            Put_Hex_Nibble                                          141
  8.03.05            Put_Hex_Byte                                            142
  8.03.06            Put_Hex_Address                                         142


  8.04.00         BITIO.LIB                                                  146
  8.04.01            Bitsin                                                  146
  8.04.02            Bitsout                                                 146
  8.04.03            Bitin                                                   147
  8.04.04            Bitout                                                  147
  8.04.05            Bitz8in                                                 147
  8.04.06            Bitz16in                                                148
  8.04.07            Bitz8out                                                148
  8.04.08            Bitz16out                                               149


  8.05.00         HARDIO.LIB                                                 152
  8.05.01            Peek                                                    152
  8.05.02            Dpeek                                                   152
  8.05.03            Poke                                                    152
  8.05.04            Dpoke                                                   152


  8.06.00         STRSUBS.LIB                                                155
  8.06.01            Strlen                                                  155
  8.06.02            Strcopy                                                 155
  8.06.03            Strcat                                                  155
  8.06.04            Strcmp                                                  156
  8.06.05            Strpos                                                  156


  8.07.00         BASTRING.LIB                                               159
  8.07.01            Left                                                    159
  8.07.02            Right                                                   159
  8.07.03            Mid                                                     159
                                         _
                                        V
               (P)rogramming (L)anguage for the Motorola MC680(9)


                                 TABLE OF CONTENTS
 _________     ________________________________________________________     ____
 SECTION                            SUBJECT                            PAGE


  8.08.00         FLEX.LIB                                                   163
  8.08.01            Flex                                                    163
  8.08.02            Get_Filename                                            163
  8.08.03            Set_Extension                                           163
  8.08.04            Report_Error                                            163
  8.08.05            Open_For_Read                                           164
  8.08.06            Open_For_Write                                          164
  8.08.07            Set_Binary                                              164
  8.08.08            Read                                                    164
  8.08.09            Write                                                   164
  8.08.10            Close_File                                              164
  8.08.11            Read_Sector                                             164
  8.08.12            Write_Sector                                            165
  8.08.13            Delete_File                                             165
  8.08.14            Rename_File                                             165


  8.09.00         SCIPACK.LIB                                                169
  8.09.01            Ln                                                      169
  8.09.02            Log                                                     169
  8.09.03            Exp                                                     169
  8.09.04            Alog                                                    170
  8.09.05            XtoY                                                    170
  8.09.06            Sin                                                     170
  8.09.07            Cos                                                     170
  8.09.08            Tan                                                     170
  8.09.09            Atn                                                     170


  8.10.00         REALCON.LIB                                                176
  8.10.01            Binary                                                  176
  8.10.02            Ascbin                                                  176
  8.10.03            Ascii                                                   177


  8.11.00         REALIO.LIB                                                 184
  8.11.01            Finput                                                  184
  8.11.02            Fprint                                                  184


  8.12.00         NUMCON.LIB                                                 187
  8.12.01            Bintodec                                                187
  8.12.02            Prdec                                                   187
  8.12.03            Prnum                                                   187
  8.12.04            Getnum                                                  187


  8.13.00         SORT.LIB                                                   191
                     Sort                                                    191


                                       __
                                      VI
