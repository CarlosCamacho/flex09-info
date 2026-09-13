# PDEL

> Source: `apps/graphics-cad/LEO4 - Graphics and CAD - Documentation and Examples.zip!LEO4.DSK!PDEL.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

!PDEL

The PDEL command is a prompting delete utility. Either all files or
only files matching a specified match list are displayed by name, one
at a time, giving the option of deleting the file or keeping it. This
command is very convenient for quickly removing a lot of no longer
needed files from a disk.

DESCRIPTION

The general syntax of the PDEL command is:

	PDEL[,<drive list>][,<match list>]

where drive list and match list are the same as described in the CAT
command. Upon execution of PDEL, each file name will be printed at the
terminal along with a delete request:

	DELETE "1.FILENAME.EXT" (Y/N/P)?

At this time several responses are valid. If a "N" is typed, the file
will be left intact and the next name will be displayed. If a "Y" is
typed, that file will be deleted. This utility DOES NOT ask if you are
sure you want the file deleted, so make sure the first time! If a "P"
is typed the (Y/N/P) prompt will be turned off. The remaining files
that fit the match list will be deleted without waiting for your
response. This is a WILDCARD DELETE and will erase files very quickly.
Look at the first file carefully and be sure you have the right drive
number before pressing "P". A carriage return may typed to return to
FLEX. Any other key will be treated the same as "N", advancing to the
next file without deleting. An example follows:

	+++PDEL,1,.TXT

This command line would cause each file on drive 1 which has a TXT
extension to be displayed and the delete option offered. Remember that
once "Y" or "P" has been typed to the prompt, the file is gone forever!

If, after typing "P", you see files being deleted that you wanted to
keep DO NOT RESET THE COMPUTER! Aborting in the middle of a delete
could have dire consequences; at worst you could loose the entire disk.
The proper way to stop a wildcard delete is press your "ESCAPE" key (or
its equivalent on your system). PDEL will pause at the end of the
current file. Press carriage return to exit PDEL.
