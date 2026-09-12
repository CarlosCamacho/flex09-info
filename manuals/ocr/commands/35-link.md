# LINK

_Source: FLEX User’s Manual (Technical Systems Consultants), 1979 scan._

LINK

The LINK command is used to tell the bootstrap loader where the FLEX
operating system file resides on the disk. This is necessary each time
a system disk is created using NEWDISK. The NEWDISK utility should be
consulted for complete details on the use of LINK.

## Description
The general syntax of the LINK command is:

LINK,<file spec>

where <file spec> is usually FLEX. The default extension is SYS. Some
examples of the use of LINK follow:

+++ LINK, FLEX
+++LINK,1.FLEX

The first line wil] LINK FLEX.SYS on the working drive, while the second

example will LINK FLEX.SYS on drive 1. For more advanced details of the
LINK utility, consult the "Advanced Programmers Guide".

-L.1l.l-

