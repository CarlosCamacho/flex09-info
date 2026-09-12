# RENAME

_OCR transcription from: `Screenshot_20260912-071206.png`_

RENAME:

The RENAME command is used to give an existing file a new name in the
directory. It is useful for changing the actual name as well as changing
the extension type.
## Description
The general syntax of the RENAME command is:

RENAME, <file spec 1>,<file spec 2>
where <file spec 1> is the name of the file you wish to RENAME and <file
spec 2> is the new name you are assigning to it. The default extension
for file spec 1 is TXT and the default drive is the working drive. If
no extension is given on <file spec 2>, it defaults to that of <file
spec 1>. No drive is requird on the second file name, and if one is
given it is ignored. Some examples follow:

+++RENAME , TEST1.BIN, TEST2

+++RENAME,1.LETTER,REPLY

+++RENAME , 0. FIND. BIN, FIND. CMD
The first example will RENAME TESTI.BIN to TEST2.BIN. The next example
RENAMES the file LETTER.TXT on drive 1 to REPLY.TXT. The last line
would cause the file FIND.BIN on drive 0 to be renamed FIND.CMD. This
is useful for making binary files created by an assembler into command
files (changing the extension from BIN to cMDY. If you try to give a
file a name which already exists in the directory, the message:

FILE EXISTS
will be displayed on the terminal. Keep in mind that RENAME only
changes the file's name and in no way changes the actual file's
contents.
One last note of interest. Since utility commands are just like any
other file, it is possible to rename them also. If you would prefer
some of the command names to be shorter, or different all together,
simply use RENAME and assign them the names you desire.


## 1979 FLEX User’s Manual version

_Source: FLEX User’s Manual (Technical Systems Consultants), alternate scan._

RENAME

The RENAME command is used to give an existing file a new name in the
directory. It is useful for changing the actual name as well as changing
the extension type. ,

DESCRIPTION
The general syntax of the RENAME command is:
RENAME, <file spec 1>,<file spec 2>

where <file spec 1> is the name of the file you wish to RENAME and <file
spec 2> is the new name you are assigning to it. The default extension
for file spec 1 is TXT and the default drive is the working drive. If
no extension is given on <file spec 2>, it defaults to that of <file
spec 1>. No drive is requird on the second file name, and if one is
given it is ignored. Some examples follow:

+++RENAME, TESTI.BIN, TEST2

+++RENAME,1.LETTER,REPLY
+++RENAME, 0. FIND. BIN, FIND. CMD

The first example wil] RENAME TEST1.BIN to TEST2.BIN. The next example
RENAMES the file LETTER.TXT on drive 1 to REPLY.TXT. The last line
would cause the file FIND.BIN on drive 0 to be renamed FIND.CMD. This
is useful for making binary files created by an assembler into command
files (changing the extension from BIN to CMD). If you try to give a
file a name which already exists in the directory, the message:

FILE EXISTS

will be displayed on the terminal. Keep in mind that RENAME only
changes the file's name and in no way changes the actual file's
contents.

One last note of interest. Since utility commands are just like any
other file, it is possible to rename them also. If you would prefer
some of the command names to be shorter, or different all together,
simply use RENAME and assign them the names you desire.

-R.1.1-

