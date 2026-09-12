# S05A9OVL

> Source: `dev/emulators/SIM68051 - Emulator Tools - Documentation and Examples.zip!SIM68051.DSK!S05A9OVL.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

* OVERLAY FOR 6809 cross assembler to form ASM9

* Must leave room at end of A9 because
* of undocumented data table there.

 ORG $303
MANUAL FCB $FF
SOURCE FDB $34A0,$389F	1K
*	1/4k overflow area (minimum)
MACNAM FDB $39A0,$419F MUST be multiple of 8 bytes	2K
MACACT FDB $41A0,$429F	1/2 K
MACTXT FDB $42A0,$569F	5K
SYMBOL FDB $56A0,$989F MUST be multiple of 8 bytes 16K
* Must leave $720 bytes for stack

 END
