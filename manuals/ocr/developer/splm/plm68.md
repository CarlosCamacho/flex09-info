# PLM68

> Source: `dev/splm/PLM68 - SPLM Language - Documentation and Examples.zip!PLM68.DSK!PLM68.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

CMPA #$F8
 BEQ M12F8
 CMPA #$F0
 BNE M12E8
 JSR M1378
 BRA M12F8
*
M12E8 CMPA #$F2
 BNE M12ED
 BRA M12F8
*
M12ED CMPA #$F3
 BEQ M12F2
 SWI
*
M12F2 DECA
 STAA TOKEN
 INC M0059
M12F8 RTS
