# KER READ

> Source: `flex-09/distributions/255X32 - Unix Kermit C Source and Terminal Library - 4 MiB Disk Image.zip!255X32.DSK!KER_READ.ME`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

Disk	: UNIX
Vol	: 2
Lib	: kermit and s_kermit

Subject: Further information
Date	: 3/2/85

The KERMIT in the directory KERMIT is a full blown kermit for a number
of UNIX systems.	I know that it compiles and works under VENIX and
ZENIX on XT's using the 4.2 define.	I will try it on UTS UNIX when
I get a chance.	You will need to put tabs back in the makefile (make
is quite touchy about tabs) before you compile.	I think the file
uxkervms.c is used in place of uxkercnu.c and uxkerunx.c when using
the VAX VMS define but I am not sure (will try when I get a C compiler
on the 11/780 I can access).

Anyway, the kermit will connect, send, and rec files either as the host
or target.	The manual is available from:

Kermit Distribution
Columbia Univ. Center for Computing
7th Floor Watson Lab
612 West 115th Street
NYC 10025

KERMIT Protocol Manual.......$5
KERMIT Users Guide...........$5
KERMIT Listing...............$5
KERMIT on 1600bpi TAR TAPE...$100

Make sure you tell them you want the UNIX version 3.0(0) dated
8/1/84.	You might also want to donate an extra $5 or $10 to the
cause...they are good people!

The KERMIT program in s_kermit has also been compiled on VENIX and it
works.	While it has connect, send, and receive, it will only act as
a shell in the send and receive modes.	I don't know the history of
this version.	It was found on the Stony Point UBBS system.	Again,
make sure you put tabs back in the Makefile!

C.dragon will be adding KERMIT protocol when we get the chance.
