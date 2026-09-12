# DELETE

_OCR transcription from: `Screenshot_20260912-070446.png`_

DELETE

The DELETE command is used to delete a file from the disk. Its name
will be removed from the directory and its sector space will be returned
to the free space on the disk.
## Description
The general syntax of the DELETE command is:

DELETE,<file spec>[,<file list>]
where <file list> can be an optional list of file specifications. It is
necessary to include the extension on each file specified. As the
DELETE command is executing it will prompt you with:

DELETE "FILE NAME"?
The entire file specification will be displayed, including the drive
number. If you decide the file should be deleted, type 'Y'; otherwise,
any other response will cause that file to remain on the disk. If a 'Y'
was typed, the message 'ARE YOU SURE?' will be displayed on the
terminal. If you are absolutely sure you want the file deleted from the
disk, type another 'Y' and it will be gone. Any other character will
leave the file intact. ONCE A FILE HAS BEEN DELETED, THERE IS NO WAY TO
GET IT BACK! Be absolutely sure you have the right file before
answering the prompt questions with Y's. Once the file is deleted, the
space it had occupied on the disk is returned back to the list of free
space for future use by other files. Few examples follow:

+++DELETE ,MATHPACK.BIN

+++DELETE, 1. TEST. TXT,0.AUGUST. TXT
The first example will DELETE the file mamed MATHPACK.BIN from the
working drive. If auto drive searching is selected, the file will be
deleted from the first drive it is found on. The second line will
DELETE the file TEST.TXT from drive 1, and AUGUST.TXT from drive 0.

. There are several restrictions on the DELETE command. First, a file
that is delete or write protected may not be deleted without first
removing the protection. Also a file which is currently in the print
queue (see the PRINT command) can not be deleted using the DELETE
command.


## 1979 FLEX User’s Manual version

_Source: FLEX User’s Manual (Technical Systems Consultants), alternate scan._

DELETE

The DELETE command is used to delete a file from the disk. Its name
will be removed from the directory and its sector space will be. returned
to the free space on the disk.

DESCRIPTION
The general syntax of the DELETE command is:
DELETE,<file spec>[,<file list>]

where <file list> can be an optional list of file specifications. It is
necessary to include the extension on each file specified. As the
DELETE command is executing it will prompt you with:

DELETE "FILE NAME"?

The entire file specification will be displayed, including the drive
number. If you decide the file should be deleted, type 'Y'; otherwise,
any other response will cause that file to remain on.the disk. If a 'Y'
was typed, the message 'ARE YOU SURE?' will be displayed on the
terminal. If you are absolutely sure you want the file deleted from the
disk, type another 'Y' and it will be gone. Any other character will
leave the file intact. ONCE A FILE HAS BEEN DELETED, THERE IS NO WAY TO
GET IT BACK! Be absolutely sure you have the right file before
answering the prompt questions with Y's. Once the file is deleted, the
space it had occupied on the disk is returned back to the list of free
space for future use by other files. Few examples follow:

+++DELETE,MATHPACK. BIN
+++DELETE, 1. TEST. TXT, O.AUGUST. TXT

The first example will DELETE the file mamed MATHPACK.BIN from the
working drive. If auto drive searching is selected, the file will be
deleted from the first drive it is found on. The second line will
DELETE the file TEST.TXT from drive 1, and AUGUST.TXT from drive 0.

There are several restrictions on the DELETE command. First, a file
that is delete or write protected may not be deleted without first
removing the protection. Also a file which is currently in the print
queue (see the PRINT command) can not be deleted using the DELETE
command.

-D.2.1-

