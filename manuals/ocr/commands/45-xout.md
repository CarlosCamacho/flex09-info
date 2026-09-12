# XOUT

_Source: FLEX User’s Manual (Technical Systems Consultants), 1979 scan._

XOUT

XOUT is a special form of the delete command which deletes all files
having the extension .OUT.

DESCRIPTION The general syntax of XOUT is:
XOUTL,<drive spec>]

where <drive spec> is the desired drive number. If no drive is
specified all, .OUT files on the working drive will be deleted and if
auto drive searching is enabled, all .OUT files on drives 1 and 2 will
be deleted. XOUT will not delete any files which are delete protected
or which are currently in the print queue.

Example:

+++XOUT
+++XOUT 1


