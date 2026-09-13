# FLEX-UIX

> Source: `flex-09/distributions/FLEX_MAN - FLEX Operating System - Documentation Disk.zip!FLEX_MAN.DSK!FLEX-UIX.TXT`  
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


            First Release: 1 January 1984 with Version 4.00 Software


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
 _________     ________________________________________________________     ____
 SECTION                            SUBJECT                            PAGE

CHAPTER 1

    I          Introduction                                                 1.1
    II         System Requirements                                          1.2
    III        Getting the System Started                                   1.2
    IV         Disks Files and Their Names                                  1.3
    V          Entering Commands                                            1.5
    VI         Command Descriptions (GET) ... (MON)                         1.7


CHAPTER 2

    I          Disk Capacity                                                2.1
    II         Write Protect                                                2.1
    III        The 'RESET' Button                                           2.1
    V          Accessing Drives Not Containing a Disk                       2.1
    VI         System Error Numbers                                         2.2
    VII        System Memory Map                                            2.3
    VIII       FLEX Input/Output Subroutines                                2.4
    IX         Booting the FLEX Disk Operating System                       2.6
    X          Requirements for 'PRINT.SYS' driver                          2.7


CHAPTER 3

    I          Utility Command Set                                          3.1

                  APPEND                                                    A.1
                  ASN                                                       A.2
                  BUILD                                                     B.1
                  CAT                                                       C.1
                  COPY                                                      C.2
                  DATE                                                      D.1
                  DELETE                                                    D.2
                  EXEC                                                      E.1
                  FORMAT                                                    F.1
                  GET                                  (see chapter 1, page 1.7)
                  I                                                         I.1
                  JUMP                                                      J.1
                  LINK                                                      L.1
                  LIST                                                      L.2
                  MON                                  (see chapete 1, page 1.7)
                  O                                                         O.1
                  P                                                         P.1
                  PRINT                                                     P.2
                  PROT                                                      P.3
                  PROTECT                                                   P.4
                  QCHECK                                                    Q.1
                  RENAME                                                    R.1
                  SAVE                                                      S.1
                  SETUP                                                     S.2
                  SPOOL                                                     S.3
                  STARTUP                                                   S.4
                  TTYSET                                                    T.1
                  VERIFY                                                    V.1
                  VERSION                                                   V.2
                  XOUT                                                      X.1

      II       Utility Command Set Summary                                  3.2

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
 | PRODUCT ____________  REVISION ____________  SERIAL NUMBER _________________ |
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
