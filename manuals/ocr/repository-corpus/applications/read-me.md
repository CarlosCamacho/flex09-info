# READ-ME

> Source: `apps/finance/BILLPAY0 - Finance and Accounting - Source Code and Build Files.zip!BILLPAY0.DSK!READ-ME.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

READ-ME

	I wrote the Bill Payer System to
help with my personal organization. It
took about 13 months to plan, code,
revise, test and document. It first
appeared for FLEX/XBASIC in 1981 and
has since traveled around the world.
To revise these programs for the
Color Computer running FLEX has been
a pleasure. This software was
designed for use. I trust you will
give it a workout.

	DOCUMENTATION CHANGES
1.
All calls to your printer are in
the format OPEN "0.PRINT.SYS" as 0.
Programs using the printer are
ILIST.BAS, LISTVEND.BAS and CHECK.BAS.
2.
All Clear Screen calls are coded as
CHR$(2). The Documentation will dir-
ect you to these references in each
program.
3.
ORDER9.BIN is automatically imple-
mented in these programs, contrary to
the choices given in the Documen-
tation. ORDER9.BIN would be used only
if you use the TSC Sort/Merge Package
to Sort your invoice/item entries.
A build-in sort package, however, will
do this for you. Unless you have hund-
reds of invoice/items (which is possible
if proper changes as outlined in the
Documentation are made to the source
code), the build-in Sort program should
do just fine.
4.
The screen layout of most programs were
re-designed for the Color Computer.
The CHECK.BAS program, however, must
follow the layout of the check. As
such, viewing the check before it is
printed, (one of the features of The
Bill Payer System), you will notice
overlaping lines on your Display.

Additionally, on the DATA Disk, three
programs may cause overlaping lines.
These programs are PPRINT.BAS from
the Purchase Order System; EXDUE.BAS
and EXAMT.BAS from the Explore
programs


--- Phoenix, Arizona
	February 19, 1983
