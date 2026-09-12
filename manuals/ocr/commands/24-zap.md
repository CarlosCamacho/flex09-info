# ZAP

_OCR transcription from: `Screenshot_20260912-071925.png`_


The ZAP command is a file delete utility. Either all files or only
files matching a specified match list are deleted without any prompting.
This command is very convenient for quickly removing a lot of no longer
needed files from a disk.
## Description
The general syntax of the ZAP command is:

ZAP[,<drive list>][,<match list>]
where drive list and match list are the same as described in the CAT
command. Upon execution of ZAP, the name of each file deleted will be
printed at the terminal in the form:

DELETING "FILE"
Be aware that there is no chance for "second thoughts". Once ZAP is
invoked, the files will be deleted without any further intervention by
the user. An example follows:

+++ZAP,1,.BAK
This command would cause all of the files on drive 1 with a .BAK
extension to be deleted. It is wise, before invoking ZAP, to check
which files will be deleted by doing a CAT, DIR, or FILES with the same
match list that will be used with ZAP.

