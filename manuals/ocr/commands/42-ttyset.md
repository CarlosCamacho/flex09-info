# TTYSET

_Source: FLEX User’s Manual (Technical Systems Consultants), 1979 scan._

TTYSET

The TTYSET utility command is provided so the user may control the
characteristics of the terminal. With this command, the action of the
terminal on input and the display format on output may be controlled.

## Description
The general syntax of the TTYSET command is:

TTYSET[, <parameter list>]

where <parameter list> is a list of 2 letter parameter names, each
followed by an equals sign ('='), and then by the value being assigned.
Each parameter should be separated by a comma or a space. If no
Parameters are given, the values of all of the TTYSET parameters will be
displayed on the terminal.

The default number base for numerical values is the base most
appropriate to the parameter. In the descriptions that follow, 'hh' is
used for parameters whose default base is hex; 'dd' is used for those
whose default base is decimal. Values which should be expressed in hex
are displayed in the TTYSET parameter listing preceded by a ''$'. Some
examples follow:

++4TTYSET
+++TTYSET, DP=16, WD=63
+++TTYSET,BS=8,ES=3

The first example simply lists the current values of all TTYSET
Parameters on the terminal. The next line sets the depth 'DP' to 16
lines and the terminal width, 'WD' to 63 columns. The last example sets
the backspace character to the value of hex 8, and the escape character
to hex 3.

The following fully describes all of the TTYSET parameters available to
the user. Their initial values are defined, as well as any special

characteristics they may possess.

BS=hh BackSpace character

This sets the 'backspace' charcter to the character having the ASCII hex
value of hh. This character is initially a 'control H' (hex 08), but
may be defined to any ASCII character. The action of the backspace
character is to delete the last character typed from the terminal. If
two backspace characters are typed, the last two characters will be
deleted, etc. Setting BS=0 will disable the backspace feature.

-T.ll-


BE=hh Backspace Echo character

This defines the character to be sent to the terminal after a
'backspace' character is received. The character printed will have the
ASCII hex value of hh. This character is initially set to a null but
can be set to any ASCII character.

The BE command also has a very special use that will be of interest to
some terminal owners, such as SWTPC CT-64.

If a hex 08 is specified as the echo character, FLEX will output a space
(20) then another 08 This feature is very uesful for terminals which
decode a hex 08 as a cursor left but which do not erase characters as
the cursor is moved.

Example: Say that you mis-typed the word cat as shown below:
++4CAY

typing in one CTRL-H (hex 08) would position the cursor on top of the Y
and delete the Y from the DOS input buffer. FLEX would then send out a
space ($20) to erase the Y and another 08 (cursor left) to re-position
the cursor.

DL=hh DeLete character

This sets the 'delete current line' character to the hex value hh. This
character is initially a 'control X' (hex 18). The action of the delete
character is to 'erase' the current input line before it is accepted
into the computer for execution. Setting DL=0 will disable the line
delete feature.

EL=hh End of Line character

This character is the one used by FLEX to separate multiple commands on
one input line. It is initially set to a colon (':'), a hex value of
3A. Setting this character to 0 will disable the multiple command per
line capability of FLEX. The parameter 'EL=hh' will set the end of line
character to the character having the ASCII hex value of hh. This
character must be set to a printable character (control characters not
allowed).

DP=dd DePth count

This parameter specifies that a page consists of dd (decimal) physical
lines of output. A page may be considered to be the number of lines
between the fold if using fan folded paper on a hard copy terminal, or a
page may be defined to be the number of lines which can be displayed at
any one time on a CRT type terminal. Setting DP=0 will disable the
paging (this is the initial value). See Ed and PS below for more
details of depth.



WD=dd WiDth

The WD parameter specifies the (decimal) number of characters to be
displayed on a _ physical Jine at the terminal (the number of columns).
Lines of text longer than the value of width will be 'folded' at every
multiple of WD characters. For example, if WD is 50 and a line of 125
characters is to be displayed, the first 50 characters are displayed on
a physical line at the terminal, the next 50 characters are displayed on
the next physical line, and the Tast 25 characters are displayed on the
third physical Tine. If WD is set to 0, the width feature will be
disabled, and any number of characters will be permitted on a _ physical
Tine. 2

NL=dd NuL] count

This parameter sets the (decimal) number of non-printing (Null) 'pad'
characters to be sent to the terminal at the end of each line. These
pad characters are used so the terminal carriage has enough time to
return to the left margin before the next printable characters are sent.
The initial value is 4. Users using CRT type terr'nals may want to set
NL=0 since no pad characters are usually requires on this type of
terminal.

TB=hh TaB character

The tab character is not used by FLEX but some of the utilities may
require one (such as the Text Editing System). This parameter will set
the tab character to the character having the ASCII hex value hh. This
character should be a printable character.

EJ=dd EJect count

This parameter is used to specify the (decimal) number of 'eject lines'
to be sent to the terminal at the bottom of each page. If Pause is
'on', the 'eject sequence' is sent to the terminal after the pause is
terminated. If the value dd is zero (which it is by default), no 'eject
lines' are issued. An eject line is simply a blank line (line feed)
sent to the terminal. This feature is especially useful for terminals
with fan fold paper to skip over the fold (see Depth). It may also be
useful for certain CRT terminals to be able to erase the previous screen
contents at the end of each page.

PS=Y or  PS=N  PauSe control

This parameter enables (PS=Y) or disables (PS=N) the end-of-page pause
feature. If Pause is on and depth is set to some nonzero value, the
output display is automatically suspended at the end of each page. The
output may be restarted by typing the 'escape' character (see ES
description). If pause is disabled, there will be no _ end-of-page
pausing. This feature is useful for those using high-speed CRT terminals


to suspend output long enough to read the page of text.

ES=hh EScape character

The character whose ASCII hex value is hh is defined to be the 'escape
character'. Its initial value jis $1B, the ASCII ESC character. The
escape character is used to stop output from being displayed, and once
it is stopped, restart it again. It is also used to restart output
after Pause has stopped it. As an example, suppose you are LISTing a
Jong text file on the terminal and you wish to temporarily halt the
output. Typing the 'escape character' will do this (this feature is not
supported on computers using a Control Port for terminal
communications). At this time (output halted), typing another 'escape
character' will resume output, while typing a RETURN key will cause
control to return to FLEX and the three plus sign prompt will be output
to the terminal. It should be noted that line output stopping always
happens at the end of a line.


