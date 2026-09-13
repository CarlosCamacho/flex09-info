# BROWSE

> Source: `apps/spelling-dictionaries/DICK_B6 - Spelling and Dictionary - Documentation and Examples.zip!DICK_B6.DSK!BROWSE.MAN`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,ce 1
_B_R_O_W_S_E_._C_M_D
,ju
,ll 70
,in 10

	BROWSE is an enhanced LIST command, which in addition to allowing listing a text type file to the crt or printer, also allows paging forward and backward thru the file.
	
Syntax: BROWSE <DRV #>.<FILENAME>[<.EXT>] - where ext defaults to .TXT

	Upon entry to browse, the question 'How many lines on display (xx)' is asked.	Answer with the number of lines the crt device is capable of displaying.	If viewing a BASIC file, it many be necessary to entered a number several lines less than the crt device can handle due to the fact that the BASIC file may have line lengths greater than the character width of the crt, and wrap around.	This will cause the top lines to scroll off the screen before viewing is possible.

	The next prompt asks; 'F(orward, B(ackward, J(ump, M(ore or E(xit'
Typing F causes the program to scroll one screen worth of text forward into the file.	B causes the program to back up one screen full of text.	J produces another prompt; 'B(egin or E(nd'.	Typing B re-displays the first page of the text file and typing E displays the last page of the file.	M will read more of the file into memory if not all fit in during the initial load.	Otherwise, nothing will occur and the header prompt will re-appear.	E jumps to Flexs' warm start.
