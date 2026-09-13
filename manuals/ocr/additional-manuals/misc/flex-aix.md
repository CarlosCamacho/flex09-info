# FLEX-AIX

> Source: `manuals/misc/ENH_MANL - FLEX Software Archive - Manual and Documentation Archive - Includes FLEX-AIX, FLEX-UC1, FLEX-UC2.zip!ENH_MANL.DSK!FLEX-AIX.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

FLEX DISK OPERATING SYSTEM ADVANCED PROGRAMMERS GUIDE


   ____________________________________________________________________________
  THIS PRODUCT IS DISTRIBUTED UNDER LICENSE FROM TECHNICAL SYSTEMS CONSULTANTS


       The  entire  contents  of this manual and the accompanying software
       are copyright (C) Technical Systems Consultants, Incorporated.

       This  product is sold on the basis that it will be used on a single
       microcomputer system by a single user.

       Duplication of this manual is strictly prohibited.  Duplication  of
       the accompanying software for anything other than archival purposes
       is strictly prohibited.


            First Release:  1 January 1984 with Version 4.XX Software
            Second Release: 1 August  1985 with Version 6.XX Software


                         _______________________________
                        T R A D E M A R K   N O T I C E

                       'FLEX' is a registered trademark of:

                       Technical Systems Consultants, Inc.
                               111 Providence Road
                       Chapel Hill, North Carolina   27514

             FLEX DISK OPERATING SYSTEM ADVANCED PROGRAMMERS GUIDE


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


             FLEX DISK OPERATING SYSTEM ADVANCED PROGRAMMERS GUIDE

                                 TABLE OF CONTENTS
 _________     ________________________________________________________     ____
 SECTION                            SUBJECT                            PAGE

    1.0         INTRODUCTION                                                  1


    2.0         THE DISK OPERATING SYSTEM                                     2
    2.1            SYSTEM MEMORY MAP                                          2
    2.2            DOS MEMORY MAP                                             3
    2.3            FLEX MEMORY MAP                                            4
    2.4            USER-CALLABLE SYSTEM ROUTINES                             16


    3.0         USER-WRITTEN COMMANDS                                        27
    3.1            MEMORY-RESIDENT COMMANDS                                  27
    3.2            DISK-RESIDENT COMMANDS                                    28
    3.3            GENERAL COMMENTS ABOUT COMMANDS                           28
    3.4            PROCESSING ARGUMENTS                                      28
    3.5            PROCESSING ERRORS                                         28


    4.0         EXAMPLES OF USING DOS ROUTINES                               29


    5.0         THE FILE MANAGEMENT SYSTEM                                   30
    5.1            THE FILE CONTROL BLOCK (FCB)                              31
    5.2            DESCRIPTION OF AN FCB                                     31
    5.3            FILE MANAGEMENT SYSTEM - Entry Points                     36
    5.4            GLOBAL VARIABLES                                          37
    5.5            FMS FUNCTION CODES                                        38


    6.0         RANDOM FILES                                                 47


    7.0         FLEX ERROR NUMBERS                                           48


    8.0         DISK DRIVERS                                                 52


    9.0         DISC INITIALISATION                                          54
    9.1            DESCRIPTION OF A DIRECTORY SECTOR                         55
    9.2            DESCRIPTION OF A DATA SECTOR                              55
    9.3            DESCRIPTION OF A BINARY FILE                              56
    9.4            DESCRIPTION OF A TEXT FILE                                57


   10.0         WRITING UTILITY COMMANDS                                     58


   11.0         THE DOS LINK UTILITY                                         62


   12.0         PRINTER FACILITIES WITHIN FLEX                               63
   12.1            'PRINT.SYS' FILE REQUIREMENTS                             64
   12.2            THE SYSTEM PRINTER SPOOLER                                64
   12.3            THE 'P' UTILITY COMMAND                                   65


   13.0         INTERRUPTS IN FLEX                                           67
                                        _
                                       I
