# READ-ME

> Source: `apps/stylograph/STYLOGR - Stylograph Word Processor - Program and Support Utilities.zip!STYLOGR.DSK!READ-ME.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

Flex must be in the 51 column mode to run Stylo.
The Stylograph program on this disk is configured
for the Data Comp version of Flex. To run it
immediately, place the disk in drive 1 and type:
	+++1.STYLO,1.INTRO
Stylo will load and bring in the sample file
called "INTRO.TXT".

If you have the FHL version of Flex just type:
	+++1.STYLO,1.INTRO +T1
Stylo will load just as above. Later configure
your own version of Stylo using the "STYFIX.CMD".

6/30/83
The following applies to copies of "STYLO" with
serial number greater than 306180000.

It is no longer necessary to have a printer
driver names "STYPRINT.CMD" on your system disk.
STYLO.CMD has been modified so that it looks
for a printer driver named "PRINT.SYS" by
default.

When printing from STYLO and it asks you
'Different Printer (Y/N*)' respond by typing
"<RETURN>", which is "NO" by default.

If your system uses a driver with a name other
than "PRINT.SYS", you must respond to the
'Different Printer (Y/N*)' prompt by typing "Y"
for YES and then give the appropriate name. For
convenience, you can include a copy of your
printer driver renamed to "PRINT.SYS" on your
system disk. You can then respond to the
prompt by typing "<RETURN>".

See the file "HISTORY.TXT" for further details.
