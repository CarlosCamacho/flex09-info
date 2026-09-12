# JUMP

_Source: FLEX User’s Manual (Technical Systems Consultants), 1979 scan._

JUMP

The JUMP command is provided for convenience. It is used to start
execution of a program already stored in computer RAM memory.

## Description
The general syntax of the JUMP command is:
JUMP,<hex address>

where <hex address> is a 1 to 4 digit hex number representing the
address where program execution should begin. The primary reason for
using JUMP is if there is a long program in memory already and you do
not wish to load it off of the disk again. Some time can be saved but
you must be sure the program really exists before JUMPing to it!

As an example, suppose we had a BASIC interpreter in memory and it had a
'warm start' address of 103 hex. To start its execution from FLEX we

type the following:
+++JUMP, 103

The BASIC interpreter would then be executed. Again, remember that you
must be absolutely sure the program you are JUMPing to is actually
present in memory.


