# FULLPART

> Source: `dev/csc/CSCFL_S1 - CSC Development - Source Code and Build Files.zip!CSCFL_S1.DSK!FULLPART.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

*
*	PARAMETER FILE FOR CSC FULL SCREEN DISPLAY ROUTINES
*
*	THIS FILE IS FOR ADM-3A ON 6809 WITH ACIA I/O
*
*	THE ROUTINES ARE CODED IN TSC FLEX XBASIC.
*
*	THE FIRST LINE DEFINES THE SCREEN SIZE AND TERMINAL TYPE.
*	THE NEXT LINE SPECIFIES THE LOCATION OF MEMEND.
*	THE NEXT FEW LINES PROVIDE THE OBJECT CODE FOR THE USER FUNCTION.
*	THE END OF THE USER FUNCTION IS DENOTED BY "XX".
*	THE NEXT GROUP OF LINES PROVIDE THE CHARACTER CONSTANTS USED
*	BY THE SUBROUTINES FOR THEIR OPERATIONS.	
*	IF DUPLICATE ENTRY NUMBERS OCCUR, THE LAST ONE IS USED.
*	THE END OF THE LIST IS DENOTED BY ENTRY NUMBER OF -1.
*
*	IN ORDER TO CUSTOMIZE THE FULL-SCREEN DISPLAY ROUTINES FOR
*	A NEW TERMINAL, SOME OF THE CONSTANTS BELOW WILL PROBABLY
*	REQUIRE MODIFICATION TO NEW VALUES.
*	THE CURSOR-CONTROL AND SCREEN OPTION SUBROUTINES WILL
*	PROBABLY ALSO REQUIRE SOME MODIFICATION.
*

80,24,"ADM-3A"," COLUMNS, ROWS, TERMINAL "
"CC2B",""," MEMEND FOR FLEX 9"
"FE","CC","2B","AE","5C","27","17","	","	6809 ACIA I/O "
"EE","84","10","AE","02","27","1D","	","	USER FCN	"
"A6","C0","F6","E0","04","57","57","	","	"
"24","F9","B7","E0","05","31","3F","	","	8 PER LINE	"
"20","EE","B6","E0","04","47","24","FA","	"
"B6","E0","05","84","7F","A7","5D","39","	"
"XX","	","	","	","	","	","	","	","	END = 'XX'	"
00,"15","	","	","	","	"," BACK FIELD INPUT	","(ADM-3A/TVI)"
01,"09","	","	","	","	"," FORWARD FIELD INPUT	","(ADM-3A/TVI)"
02,"0D","	","	","	","	"," CARRIAGE RETURN INPUT ","(ADM-3A/TVI)"
03,"1E","	","	","	","	"," HOME UP INPUT		","(ADM-3A/TVI)"
04,"1A","	","	","	","	"," CLEAR SCREEN INPUT	","(ADM-3A/TVI)"
05,"0C","	","	","	","	"," CURSOR RIGHT INPUT	","(ADM-3A/TVI)"
06,"08","	","	","	","	"," CURSOR LEFT INPUT	","(ADM-3A/TVI)"
07,"1B","	","	","	","	"," ERASE EOF INPUT	","(ADM-3A/TVI)"
08,"0F","	","	","	","	"," INSERT INPUT	","(ADM-3A/TVI)"
09,"10","	","	","	","	"," DELETE INPUT	","(ADM-3A/TVI)"
10,"0E","	","	","	","	"," CURRENT FIELD INPUT	","(ADM-3A/TVI)"
11,"03","	","	","	","	"," BREAK INPUT
","(ADM-3A/TVI)"
12,"12","	","	","	","	"," RESTORE FIELD INPUT	","(ADM-3A/TVI)"
13,"	","	","	","	","	","	"," "
14,"01","	","	","	","	"," DEFINE FIELD INPUT	","(ALL)"
15,"04","	","	","	","	"," DELETE FIELD INPUT	","(ALL)"
16,"05","	","	","	","	"," END FIELD INPUT	","(ALL)"
17,"18","	","	","	","	"," INSERT FIELD INPUT	","(ALL)"
18,"0A","	","	","	","	"," CURSOR DOWN INPUT	","(ADM-3A/TVI)"
19,"0B","	","	","	","	"," CURSOR UP INPUT	","(ADM-3A/TVI)"
20,"7E","1C","	","	","	"," CLEAR SCREEN OUTPUT	","(HAZELTINE)"
20,"1A","00","	","	","	"," CLEAR SCREEN OUTPUT	","(ADM-3A/TVI)"
21,"07","	","	","	","	"," ALARM OUTPUT	","(ALL)"
22,"7E","11","	","	","	"," CURSOR LOAD OUTPUT	","(HAZELTINE)"
22,"1B","3D","	","	","	"," CURSOR LOAD OUTPUT	","(ADM-3A/TVI)"
23,"	","	","	","	","	","	"," "
24,"	","	","	","	","	","	"," "
25,"0C","	","	","	","	"," CURSOR RIGHT OUTPUT	","(ADM-3A/TVI)"
26,"08","	","	","	","	"," CURSOR LEFT OUTPUT	","(ADM-3A/TVI)"
27,"	","	","	","	","	","	"," "
28,"0A","	","	","	","	"," DOWN CURSOR OUTPUT	","(ADM-3A/TVI)"
29,"0B","	","	","	","	"," UP CURSOR OUTPUT	","(ADM-3A/TVI)"
30,"1B","5E","	","	","	"," BLINKING OUTPUT	","(TVI)"
30,"	","	","	","	","	"," BLINKING OUTPUT	","(ADM-3A)"
31,"	","	","	","	","	"," GRAY OUTPUT
","(ADM-3A/TVI)"
32,"1B","6A","	","	","	"," REVERSE OUTPUT	","(TVI)"
32,"	","	","	","	","	"," REVERSE OUTPUT	","(ADM-3A)"
33,"1B","6C","	","	","	"," UNDERLINE OUTPUT	","(TVI)"
33,"	","	","	","	","	"," UNDERLINE OUTPUT	","(ADM-3A)"
34,"	","	","	","	","	","	"," "
35,"	","	","	","	","	","	"," "
36,"	","	","	","	","	","	"," "
37,"	","	","	","	","	","	"," "
38,"	","	","	","	","	","	"," "
39,"	","	","	","	","	","	"," "
40,"1B","71","	","	","	"," UN-BLINKING OUTPUT	","(TVI)"
40,"	","	","	","	","	"," UN-BLINKING OUTPUT	","(ADM-3A)"
41,"	","	","	","	","	"," UN-GRAY OUTPUT	","(ADM-3A/TVI)"
42,"1B","6B","	","	","	"," UN-REVERSE OUTPUT	","(TVI)"
42,"	","	","	","	","	"," UN-REVERSE OUTPUT	","(ADM-3A)"
43,"1B","6D","	","	","	"," UN-UNDERLINE OUTPUT	","(TVI)"
43,"	","	","	","	","	"," UN-UNDERLINE OUTPUT	","(ADM-3A)"
44,"	","	","	","	","	","	"," "
45,"	","	","	","	","	","	"," "
46,"	","	","	","	","	","	"," "
47,"	","	","	","	","	","	"," "
48,"	","	","	","	","	","	"," "
49,"	","	","	","	","	","	"," "
50,"7D","	","	","	","	"," MAX INPUT VALUE	","(HAZELTINE)"
50,"7E","	","	","	","	"," MAX INPUT VALUE	","(ADM-3A/TVI)"
-1,"	","	","	","	","	"," END OF CONSTANTS	"," "
