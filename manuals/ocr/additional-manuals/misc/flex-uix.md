# FLEX-UIX

> Source: `manuals/misc/ENH_MANL - FLEX Software Archive - Manual and Documentation Archive - Includes FLEX-AIX, FLEX-UC1, FLEX-UC2.zip!ENH_MANL.DSK!FLEX-UIX.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

FLEX DISK OPERATING SYSTEM USERS GUIDE


   ____________________________________________________________________________
  THIS PRODUCT IS DISTRIBUTED UNDER LICENSE FROM TECHNICAL SYSTEMS CONSULTANTS


       The  entire  contents  of this manual and the accompanying software
       are copyright (C) Technical Systems Consultants, Incorporated.

       This  product is sold on the basis that it will be used on a single
       microcomputer system by a single user.

       Duplication of this manual is strictly prohibited.  Duplication  of
       the accompanying software for anything other than archival purposes
       is strictly prohibited.


            First Release: 1 January 1984 with Version 4.XX Software
            Second Release: 1 August 1985 with Version 6.XX Software


                         _______________________________
                        T R A D E M A R K   N O T I C E

                       'FLEX' is a registered trademark of:

                       Technical Systems Consultants, Inc.
                               111 Providence Road
                       Chapel Hill, North Carolina   27514

                     FLEX DISK OPERATING SYSTEM USERS GUIDE


                                COPYRIGHT NOTICE

      The entire contents of this manual and the accompanying software  have
      been copyrighted by Technical Systems Consultants. The reproduction of
      this material by any means, for any reason, is strictly prohibited.

                                COPYRIGHT (C) 1979

                       Technical Systems Consultants, Inc.
                                   PO Box 2574
                          West Lafayette, Indiana 47906

                               ALL RIGHTS RESERVED


                               CONDITIONS OF SALE

      This product is sold on the basis that it will be  used  on  a  SINGLE
      microcomputer  system  by  a  SINGLE  user  for  the  personal use and
      enjoyment of the purchaser. Use of this program, or any part  thereof,
      for  any  purpose  other  than  single  end  use  by  the purchaser is
      prohibited.

      We shall consider it to be an attempt to criminally plagiarize  us  if
      duplicate  copies  of  this  manual  or the accompanying disk are made
      available for use by other parties, or on other  microcomputers.  This
      consideration also applies to, but is not limited to, duplicate copies
      being produced for use within the  original  purchasers  organisation,
      establishment, or home for anything other than archival purposes.


                                WARRANTY NOTICE

      Although every effort has been made to insure  the  accuracy  of  this
      material,  it  is  sold AS IS and without warranty. No claim as to the
      suitability  or  workability  of  this  material  for  any  particular
      application  or  on any particular computer is made. This statement is
      in lieu of any other statement whether expressed or implied.


 Windrush Micro Systems, Worstead Labs, N. Walsham, Norfolk, NR28 9SA, England

                     FLEX DISK OPERATING SYSTEM USERS GUIDE

                                 TABLE OF CONTENTS
 __________    ________________________________________________________     ____
 SECTION                            SUBJECT                            PAGE

    1.0        Introduction                                                   1


    2.0        Windrush FLEX Implementation Information                       3
    2.1           Windrush Enhanced FLEX Features                             3
    2.2           System Hardware Requirements                                4
    2.3           Standard Hardware Configurations                            5


    3.0        FLEX Drivers, General Information                              6
    3.1           Winchester Drives                                           7
    3.2           Floppy Drives                                               7
    3.3           RAM Disc                                                    7
    3.4           RESIDENT                                                    8
    3.5           AUTOFLEX                                                    8


    4.0        FLEX Drivers, Implementation Information                       9
    4.1           Bootstrap Implementation                                    9
    4.2           Floppy Disc Implementation                                 10
    4.3           RAM Disc Implementation                                    11
    4.4           Memory Resident Command Table Implementation               14
    4.5           Winchester Driver Implementation                           15
    4.6           AUTOFLEX Implementation                                    16


    5.0        Interrupt Handling                                            17


    6.0        Enhanced Print Spooler Implementation                         18


    7.0        Booting Up The System From A Floppy Disc                      19


    8.0        Booting Up The System From A Winchester Disc                  20


    9.0        Disc Files And Their Names                                    21


   10.0        Lower Case File Names And Extensions                          23


   11.0        Entering Commands                                             23
   11.1           Editing Commands                                           25


   12.0        Command Descriptions                                          26
   12.1           GET                                                        26
   12.2           MON                                                        26


   13.0        Disc Capacity                                                 27


   14.0        Disc Format                                                   27

                                         _
                                        I
                     FLEX DISK OPERATING SYSTEM USERS GUIDE

                                 TABLE OF CONTENTS
 __________    ________________________________________________________     ____
 SECTION                            SUBJECT                            PAGE

   15.0        Directory Extension                                           28


   16.0        Write Protect                                                 28


   17.0        Accessing Drives Not Containing A Disc                        28


   18.0        FLEX Disc Standards                                           29


   19.0        Non Standard Drives                                           29


   20.0        System Error Numbers                                          30


   21.0        The 'RESET' Button                                            31


   22.0        Input Re-direction                                            31


   23.0        Output Re-direction                                           31


   24.0        Directing Output To A Printer                                 31


   25.0        Command List Execution                                        31


   26.0        Building A Bootable Floppy Disc                               32


   27.0        Building A Bootable Winchester Partition                      34


                                          __
                                         II
                     FLEX DISK OPERATING SYSTEM USERS GUIDE

                                 TABLE OF CONTENTS
 __________    ________________________________________________________     ____
  SOURCE                     UTILITY COMMAND SET                       PAGE


     -         Common Error Messages                                         37

     -         General System Features                                       37

               APPEND                                                        38
               ASN                                                           39
               BUILD                                                         41
               CAT                                                           42
     *         CLEAN                                                         44
     *         COMPRESS                                                      45
               COPY-TSC                                                      47
     *         COPY-WMS                                                      49
     *         CRC                                                           51
               DATE                                                          52
     *         DATECOPY                                                      53
     *         DATIME                                                        55
               DELETE                                                        57
     *         DIR                                                           58
     *         DUMP                                                          61
     *         ECHO                                                          62
     *         ESTATUS                                                       63
               EXEC                                                          64
     *         F                                                             65
     *         FASTBACK                                                      68
     *         FDATE                                                         69
     *         FIND                                                          70
     *         FIX                                                           71
     *         FIXES.SYS                                                     74
     *         FORMAT                                                        75
     *         FREEMAP                                                       81
     *         FSTATUS                                                       82
               GET                                                           83
               I                                                             84
     *         IN                                                            85
     *         INTELHEX                                                      86
               JUMP                                                          87
     *         KERNEL-H.SYS                                                  88
     *         KERNEL-N.SYS                                                  89
     *         LCASE                                                         90
               LINK                                                          91
               LIST                                                          92
     *         LOAD                                                          93
     *         MAKEBIN                                                       95
     *         MAKECMD                                                       96
     *         MAKEHEX                                                       98
     *         MAP                                                           99
     *         MEM                                                          100
     *         MEMEND                                                       101
               MON                                                          102
     *         MOTORHEX                                                     103
     *         MOUNT                                                        104
     *         MOVE                                                         105
     *         MYSTART                                                      106
     *         N                                                            107
     *         NAME                                                         108
               O                                                            109
     *         OUT                                                          110
                                         ___
                                        III
                     FLEX DISK OPERATING SYSTEM USERS GUIDE

                                 TABLE OF CONTENTS
 __________    ________________________________________________________     ____
  SOURCE                     UTILITY COMMAND SET                       PAGE

               P                                                            111
     *         PCOPY                                                        112
     *         PDEL                                                         114
     *         PPRINT-X.SYS                                                 115
     *         PR                                                           118
               PRINT                                                        119
     *         PRINT.SYS                                                    121
     *         PRINTT                                                       122
     *         PROMPT                                                       124
               PROT                                                         125
     *         PROTECT                                                      126
     *         PRT                                                          127
               QCHECK                                                       128
     *         QCHECK.SYS                                                   129
     *         QCHECKK                                                      130
     *         RAM-CON                                                      135
     *         RAM-CON.SYS                                                  137
     *         RAM-FORM                                                     138
     *         REFORMAT                                                     139
               RENAME                                                       142
     *         RE-NAME                                                      143
     *         RESIDENT                                                     144
     *         RES-CON                                                      147
     *         RES-CON.SYS                                                  148
     *         RES-OFF                                                      149
     *         RES-ON                                                       150
     *         RES-SAVE                                                     151
     *         RSTATUS                                                      152
     *         S                                                            153
               SAVE                                                         155
               SAVE.LOW                                                     156
     *         SETCLOCK                                                     157
     *         SETFORM                                                      160
     *         SETUP                                                        161
     *         SKIP                                                         164
     *         SPLTITLE                                                     165
     *         SPOOL.SYS                                                    166
     *         SPOOL-XX.SYS                                                 167
     *         SPRINT-X.SYS                                                 168
     *         STARTUP                                                      171
               TTYSET                                                       173
     *         UCASE                                                        177
     *         UPLOAD                                                       178
     *         VER                                                          180
               VERIFY                                                       181
               VERSION                                                      182
     *         WIN-FORM                                                     183
     *         WSTATUS                                                      188
               XOUT                                                         189
     *         XXOUT                                                        190
     *         Y                                                            191
     *         YEAR                                                         192
     *         ZAP                                                          193

     -         Utility Command Set Summary                                  194

     *         signifies a Windrush supplied utility

                                       __
                                      IV
