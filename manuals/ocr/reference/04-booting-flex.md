# Booting the FLEX Disk Operating System

_OCR transcription from: `Screenshot_20260912-065747.png`_

IX. BOOTING THE FLEX DISK OPERATING SYSTEM
In order to read FLEX from the system disk upon powering up your system,
you must have a short program in RAM or ROM memory. This program is
called a 'bootstrap' loader.
If you are using a Southwest Technical Products disk system and the
S-BUG monitor, there are bootstraps stored in this ROM which you can
use. They are executed by simply typing a 'D' for the full size floppy
or a ''U' for the mini floppy.
Those users of other hardware or monitor ROM should use the boot
supplied with the hardware if compatible with FLEX. A sample boot (for
the SWTPc mini system) is given here for reference.
If the system does not boot properly, re-position the system disk in the
drive and re-execute the bootstrap loader.

0100 B6 £018 START LDA COMREG TURN MOTOR ON

0103 86 00 LDA #0

0105 B7 £014 STA DRVREG

0108 8E 0000 LDX #0000

010B 3D OvR MUL DELAY FOR SPEED UP

010c 30 s«1F LEAX -1,X

010E 26 FB BNE OVR

0110 C6 OF LDB #$0F RESTORE

0112 F7 = £018 STB COMREG

0115 8D 2B BSR RETURN

0117 F6 £018 LOOP1 LOB COMREG

011A C5 O01 BITB #1

Q11C 26 =F9 BNE LOOP1

O11E 86 O1 LDA #1

0120 B7 EOLA STA SECREG

0123 8D «1D BSR RETURN

0125 C6 = -8&C LDB #$8C READ WITH LOAD

0127 F7 £018 STB COMREG

012A 8D 16 BSR RETURN

012c 8E co0d LDX #$C000

Ol2F C5 02 LOOP2 BITB #2 DRQ?

0131 27 05 BEQ LOOP3

0133 B6 £E01B LDA DATREG

0136 A780 STA 0,X+

0138 F6 ~=E018 LOOP3 LDB COMREG

013B C5 (O01 BITB #1 BUSY?

013D 26 «=FO BNE Loop2

013F 7E C000 dMP $c000

0142 8D =00 RETURN BSR RTN

0144 39 RTN RTS

