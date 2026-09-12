# S05TESTD

> Source: `dev/emulators/SIM68051 - Emulator Tools - Documentation and Examples.zip!SIM68051.DSK!S05TESTD.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

*
* THIS PROGRAM PLACES A TEST PATTERN INTO MEMORY
* TO HELP TEST THE CSC SIMULATOR PROGRAMS.
*
 NAM TEST
 ORG $C100
START CLRA
 LDX #$0000
LOOP STA ,X+
 STA ,X+
 STA ,X+
 STA ,X+
 STA ,X+
 STA ,X+
 INCA
 BNE LOOP
 JMP $CD03
 END START
