# PDEL

_OCR transcription from: `Screenshot_20260912-071144.png`_

The PDEL command is a prompting delete utility. Either all files or
only files matching a specified match list are displayed by name, one at
a time, giving the option of deleting the file or keeping it. This
command is very convenient for quickly removing a lot of no longer
needed files from a disk.

## Description
The general syntax of the PDEL command is:
PDEL[,<drive list>][,<match list>]

where drive list and match list are the same as described in the CAT
command. Upon execution of PDEL, each file name will be printed at the
terminal along with a delete request:

DELETE "FILE" ?

At this time three responses are valid. If a "N" is typed, the file
will be left intact and the next name will be displayed. If a "Y" is
typed, that file will be deleted. This utility DOES NOT ask if you are
sure you want the file deleted, so make sure the first time! A carriage
return may also be typed in response to the prompt at which time control
will return back to FLEX. If a response other than one the three above
is given, the delete request will be posted again. An example follows:

+++PDEL,1,.TXT
This command line would cause each file on drive 1 which has a TXT

extension to be displayed and the delete option offered. Remember that
once "Y" has been typed to the prompt, that file is gone forever!
