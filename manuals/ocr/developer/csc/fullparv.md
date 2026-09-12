# FULLPARV

> Source: `dev/csc/CSCFL_S2 - CSC Development - Documentation and Examples.zip!CSCFL_S2.DSK!FULLPARV.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

*
*	PARAMETER FILE FOR CSC FULL SCREEN DISPLAY ROUTINES
*
*	THIS FILE IS FOR THOMAS VIDEO ON 6809 WITH ACIA KEYBOARD
*
*	THE ROUTINES ARE CODED IN TSC FLEX XBASIC.
*
*	THE FIRST LINE DEFINES THE SCREEN SIZE AND TERMINAL TYPE.
*	THE NEXT LINE SPECIFIES THE LOCATIONS OF MEMEND AND VIDEO BOARD.
*	THE NEXT FEW LINES PROVIDE THE OBJECT CODE FOR THE USER FUNCTION.
*	THE END OF THE USER FUNCTION IS DENOTED BY "XX".
*	THE NEXT GROUP OF LINES PROVIDE THE CHARACTER CONSTANTS USED
*	BY THE SUBROUTINES FOR THEIR OPERATIONS.	
*	IF DUPLICATE ENTRY NUMBERS OCCUR, THE LAST ONE IS USED.
*	THE END OF THE LIST IS DENOTED BY ENTRY NUMBER OF -1.
*
*	IN ORDER TO CUSTOMIZE THE FULL-SCREEN DISPLAY ROUTINES FOR
*	A NEW VIDEO BOARD, SOME OF THE CONSTANTS BELOW WILL PROBABLY
*	REQUIRE MODIFICATION TO NEW VALUES.
*	THE SCREEN OPTION SUBROUTINES AND CURSOR LOGIC WILL
*	PROBABLY ALSO REQUIRE SOME MODIFICATION.
*

64,16,"THOMAS"," COLUMNS, ROWS, VIDEO "
"CC2B","E800"," MEMEND FOR FLEX 9, VIDEO BOARD ADDRESS"
"FE","CC","2B","AE","5C","27","17","	","	6809 ACIA I/O "
"EE","84","10","AE","02","27","1D","	","	USER FCN	"
"A6","C0","F6","E0","04","57","57","	","	"
"24","F9","B7","E0","05","31","3F","	","	8 PER LINE	"
"20","EE","B6","E0","04","47","24","FA","	"
"B6","E0","05","84","7F","A7","5D","39","	"
"XX","	","	","	","	","	","	","	","	END = 'XX'	"
00,"15","	","	","	","	"," BACK FIELD INPUT	","(KBD)"
01,"09","	","	","	","	"," FORWARD FIELD INPUT	","(KBD)"
02,"0D","	","	","	","	"," CARRIAGE RETURN INPUT ","(KBD)"
03,"1E","	","	","	","	"," HOME UP INPUT		","(KBD)"
04,"1A","	","	","	","	"," CLEAR SCREEN INPUT	","(KBD)"
05,"0C","	","	","	","	"," CURSOR RIGHT INPUT	","(KBD)"
06,"08","	","	","	","	"," CURSOR LEFT INPUT	","(KBD)"
07,"1B","	","	","	","	"," ERASE EOF INPUT	","(KBD)"
08,"0F","	","	","	","	"," INSERT INPUT	","(KBD)"
09,"10","	","	","	","	"," DELETE INPUT	","(KBD)"
10,"0E","	","	","	","	"," CURRENT FIELD INPUT	","(KBD)"
11,"03","	","	","	","	"," BREAK INPUT
","(KBD)"
12,"12","	","	","	","	"," RESTORE FIELD INPUT	","(KBD)"
13,"	","	","	","	","	","	"," "
14,"01","	","	","	","	"," DEFINE FIELD INPUT	","(KBD)"
15,"04","	","	","	","	"," DELETE FIELD INPUT	","(KBD)"
16,"05","	","	","	","	"," END FIELD INPUT	","(KBD)"
17,"18","	","	","	","	"," INSERT FIELD INPUT	","(KBD)"
18,"0A","	","	","	","	"," CURSOR DOWN INPUT	","(KBD)"
19,"0B","	","	","	","	"," CURSOR UP INPUT	","(KBD)"
20,"	","	","	","	","	","	"," "
21,"07","	","	","	","	"," ALARM OUTPUT	","(TERMINAL)"
22,"	","	","	","	","	","	"," "
23,"	","	","	","	","	","	"," "
24,"	","	","	","	","	","	"," "
25,"	","	","	","	","	","	"," "
26,"	","	","	","	","	","	"," "
27,"	","	","	","	","	","	"," "
28,"	","	","	","	","	","	"," "
29,"	","	","	","	","	","	"," "
30,"	","	","	","	","	","	"," "
31,"	","	","	","	","	","	"," "
32,"	","	","	","	","	","	"," "
33,"	","	","	","	","	","	"," "
34,"	","	","	","	","	","	"," "
35,"	","	","	","	","	","	"," "
36,"	","	","	","	","	","	"," "
37,"	","	","	","	","	","	"," "
38,"	","	","	","	","	","	"," "
39,"	","	","	","	","	","	"," "
40,"	","	","	","	","	","	"," "
41,"	","	","	","	","	","	"," "
42,"	","	","	","	","	","	"," "
43,"	","	","	","	","	","	"," "
44,"	","	","	","	","	","	"," "
45,"	","	","	","	","	","	"," "
46,"	","	","	","	","	","	"," "
47,"	","	","	","	","	","	"," "
48,"	","	","	","	","	","	"," "
49,"	","	","	","	","	","	"," "
50,"7E","	","	","	","	"," MAX INPUT VALUE	","(KBD)"
-1,"	","	","	","	","	"," END OF CONSTANTS	"," "
