# ASN

_Source: FLEX User’s Manual (Technical Systems Consultants), 1979 scan._

ASN

The ASN command 'is used for assigning the 'system' drive and the
'working' drive or to select automatic drive searching. The system
drive is used by FLEX as the default for command names or, in general,
the first name on a command line. The working drive is used by FLEX as
the default on all other file specifications within a command line.
Upon initialization, FLEX assigns drive #0 as both the system and
working drive. An example will show how the system defaults to these
values:

APPEND FILEL,FILE2,FILE3

If the system drive is assigned to be #0 and the working drive is
assigned to drive #1, the above example will perform the following
operation: get the APPEND command from drive #0 (the system drive), then
append FILE2 from drive #1 (the working drive) to FILE1 from drive #1
and put the result in FILE3 on drive #1. As can be seen, the system
drive was the default for APPEND where the working drive was the default
for all cther file specs listed.

Automatic drive searching causes FLEX to automatically scan the ready
drives for the file specified. Hardware limitations prevent the mini
floppy versions from searching for "ready" drives. For this reason,
FLEX has been setup to ALWAYS assume drive 0 and 1 are ready. Thus if a
mini floppy version of FLEX attempts to search a drive which does not
have a disk loaded, it wil] hang up until a disk is inserted and the
door closed. Alternatively, the system reset could be hit and a warm
start executed (a jump to address $CD03). The full size floppy version
CAN detect a ready condition and will not check drives which are out of
the ready state during automatic drive searching.

Automatic drive searching causes FLEX to first check drive #0 for the
file specified. If not there (or if not ready in the full size
version), FLEX skips to drive #1. If the file is mot found on drive #1
in the mini floppy version, FLEX gives up and a file not found error
results. In the full size version FLEX continues to search on drives #2
and #3 before reporting an error.

## Description

The general syntax for the ASN command is as follows:
ASNE ,W=<drive> J[,S=<drive>]

where <drive> is a single digit drive number or the letter A. If just
ASN is typed followed by a 'RETURN', no values will be changed, but the
system will output a message which tells the current assignments of the
system and working drives, for example:

+4++ASN
THE SYSTEM DRIVE IS #0
THE WORKING DRIVE IS #0



Some examples of using the ASN command are:

ASN, W=1
ASN, S=1,W=0

where the first line would set the working drive to 1 and leave the
system drive assigned to its previous value. The second example sets
the system drive to 1 and the working drive to 0. Careful use of drive
assignments can allow the operator to avoid the use of drive numbers on
file specifications most of the time!

If auto drive searching is desired, then the letter A for automatic,
should be used in place of the drive number.

Example:
ASN W=A
ASN S=A, Wel
ASN S=A, W=A

~A.2.2-

