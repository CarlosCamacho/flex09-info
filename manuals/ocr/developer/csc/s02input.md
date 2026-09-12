# S02INPUT

> Source: `dev/csc/CSCPRODS_4 - CSC Development - Programs, Source, and Build Files.zip!CSCPRODS_4.DSK!S02INPUT.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

,126)
32722 FOR Q%=Q0%+14 TO 2 STEP -1\PUT#4,RECORD Q%\NEXT Q%
32724 LSET DT$="677677677"\PUT#4,RECORD 1
32726 CLOSE 4\GOTO 32750
32740 RESUME 32742
32742 ON ERROR GOTO 32746\CLOSE 4\GOTO 32750
32746 RESUME 32750
32750 ON ERROR GOTO 0\RETURN
32760 END
