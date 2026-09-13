# CHANGES

> Source: `flex-09/distributions/9XXMASTR - FLEX 9xx Master System with Clock and Spooler Drivers.zip!9XXMASTR.DSK!CHANGES.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

UPDATING VERSIONS
=================

 1. Modify all occurrences of 7x for 7y in the file MAKE-SYS.TXT
    where 'x' is the old variant and 'y' is the new variant of
    WMFLEX7.

 2. Modify the version number patch in DRIVFLOP.ASM from 7x to 7y.

 3. MODIFY THE VER.1 AND VER.2 EQUATES IN 'CONSOLE.ASM'. THEN
    INVOKE 'ASM-CONS.CMD' TO ASSEMBLE IT.

 4. MODIFY THE 'compatible_with' constant in 'HEADER.LIB'. THEN
    RE-COMPILE THE FOLLOWING FILES:

    A. WIN-FORM.PL9
    B. REFORMAT.PL9
    C. SCSI    .PL9
    D. STREAMER.PL9

    THEN RUN ADDVER TO ADD A VERSION NUMBER TO THEM.


CHANGING BOOT STEP RATE
=======================

 1. MODIFY 'STEP_?' CONDITIONAL FLAG IN THE FOLLOWING FILES
    TO MATCH THE REQUIRED BOOT STEP RATE:

    A. BOOTFDSA.ASM
    B. FORMAT  .ASM
    C. RAM-FORM.ASM
    D. FLOPLOAD.ASM
    E. DRIVCOMM.ASM


 2. ASSEMBLE/COMPILE THE FOLLOWING FILES AS INDICATED:

    A. MACE,BOOTFDSA.ASM,O=BOOTFDSA.BIN
    B. MACE,FORMAT.ASM,O=FORMAT.CMD
    C. MACE,RAM-FORM.ASM,O=RAM-FORM.CMD
    D. MACE,FLOPLOAD.ASM,G,L=FLOPLOAD.LIB
    E. RUN 'ASM-DVRS.CMD' THEN 'MAKE-SYS.CMD'


    "PL9STUFF" WILL DO ALL OF THE FOLLOWING FOR YOU ...

    A. PL9L,SCSI.PL9,O=SCSI.CMD
    B. PL9L,WIN-FORM.PL9,O=WIN-FORM.CMD
    C. PL9L,REFORMAT.PL9,O=REFORMAT.CMD
    D. PL9L,STREAMER.PL9,O=STREAMER.CMD

 3. RUN 'ADDVER' ON THE FOLLOWING FILES TO ADD VERSION NUMBERS
    TO THEM, E.G. 7:1.3 ...

    A. SCSI.CMD
    B. WIN-FORM.CMD
    C. REFORMAT.CMD
    D. STREAMER.PL9

 4. COMPRESS THE FOLLOWING FILES:

    A. SCSI.CMD
    B. WIN-FORM.CMD
    C. REFORMAT.CMD
    D. STREAMER.PL9


CONVERTING FROM VERSION 7.X TO 9.X
==================================

The only differences between these two versions are as follows:
  a. The 'FDSA' address is $E100 in the former and $E3D0 in the latter.
  b. The spooler timer is in a different place (see 'SPOOL-RW.ASM')
  c. The clock calendar is in a different place ($E380).

THE FOLLOWING FILES MUST BE MODIFIED THEN RE-ASSEMBLED ...

     FILE NAME                  MODIFICATIONS                LINE #
 === ============       ===================================  ======
  1. DRIVCOMM.ASM ..... SCSIADDR  -> $E3D0                     89

  2. DRIVFLOP.ASM ..... FCB 7X    -> 9X                         8

  3. CONSOLE .ASM ..... V:7.X     -> V:9.X                      1
                        VER.1     -> EQU '9                     8

  4. FORMAT  .ASM ..... COMPWITH  -> 9X                        31
                        SCSI      -> $E3D0                    165
                        VERSION   -> "9"                      176
                        WMSFLEX7  -> WMSFLEX9                 229
                        SCSI      -> $E3D0                   1996

  5. XFORM   .ASM ..... 7.X       -> 9.X                     1927
                        SCSI      -> $E3D0                   2034

  6. PROTECT .ASM ..... COMPWITH  -> 9X                        23
                        VERSION   -> "9"                       54

  7. SETUP   .ASM ..... COMPWITH  -> 9X                        12
                        VERSION   -> "9"                       91

  8. MOUNT   .ASM ..... COMPWITH  -> 9X                         8
                        SCSI      -> $E3D0                     11
                        VERSION   -> "9"                      161

  9. WSTATUS .ASM ..... COMPWITH  -> 9X                        11
                        VERSION   -> "9"                       43

 10. FSTATUS .ASM ..... COMPWITH  -> 9X                        12
                        VERSION   -> "9"                       66

 11. CLEAN   .ASM ..... COMPWITH  -> 9X                        21
                        VERSION   -> "9"                       53

 12. HEADER  .LIB ..... COMPWITH  -> 9X                        13
                        WINIADDR  -> $E3D0                     15

 13. BOOTFDSA.ASM ...... VERSION  -> "9"                       16
                         SCSIADDR -> $E3D0                     22
     (RENAME FILE 'BOOT-WS.ASM')

 14. RAM-CON .ASM ...... COMPWITH -> 9X                        18
                         VERSION  -> "9"                      141

 15. RES-CON .ASM ...... COMPWITH -> 9X                        18
                         VERSION  -> "9"                       70

 16. RAM-FORM.ASM ...... COMPWITH -> 9X                        40
                         VERSION  -> "9"                      105

 17. RESIDENT.ASM ...... COMPWITH -> 9X                        24
                         VERSION  -> "9"                      108

 18. RES-SAVE.ASM ...... COMPWITH -> 9X                        18
                         VERSION  -> "9"                      101

 19. RES-ON  .ASM ...... COMPWITH -> 9X                         9
                         VERSION  -> "9"                       21

 20. RES-OFF .ASM ...... COMPWITH -> 9X                         9
                         VERSION  -> "9"                       21


 NOW RUN THE FOLLOWING:
  a. ASM-CLKS
  b. ASM-DVRS
  c. MAKE-SYS
  d. PL9STUFF
