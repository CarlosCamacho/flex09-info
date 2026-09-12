# STRINGS

> Source: `dev/assemblers/RA68NO2 - Assembler Development - Documentation and Examples.zip!RA68NO2.DSK!STRINGS.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

TTL STRINGS
 PAG
*
HEADR FDB $0D0A
 FDB $0D0A
 FDB $0D0A
HEADER FCC /	/
 FCC /
/
DATE FCC /	/
 FCC /	RA6800ML MACRO ASSEMBLER/
 FDB $0D0A
 FDB $0D0A
 FDB $0D0A
 FCB $4
*
BLANK FCC /	/
BLANK3 FCC /	/
BLANK5 FCC / /
BLANK6 FCC /	/
 FCB 4
*
KIOK FDB 10000
 FDB 1000
 FDB 100
 FDB 10
 FDB 1
*
ERNUM RMB 2
ERMSA FCC /**** ERROR # /
ERMSB RMB 3
 FCC / /
ERMSC RMB 5
 FCC / :/
 FCB 4
*
REDEF FCC / REDEFINED/
 FCB 4
*
ENDMA FCC /THERE WERE: /
ENDMB RMB 5
 FCC / ERRORS/
 FCB 4
*
CMSG FCC /COMMON LENGTH = /
 FCB 4
*
ZZZ FCC /[[[[[[/
 FDB 0000
 FCB 00
*
MEND FCC /MEND/
*
IFSMSG FCC /ILLEGAL FILE SPECIFICATION/
 FCB 4
*
DELMSG FCC / FILE ALREADY EXISTS - OK/
 FCC / TO DELETE? (Y OR N) : /
 FCB 4
*
NSFMSG FCC /FILE NOT FOUND/
 FCB 4
*
LIBFCB RMB 320
RFCB RMB 320
WFCB RMB 320
*
TABLES EQU *
*
