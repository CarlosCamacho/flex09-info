# REPLACE

> Source: `apps/spelling-dictionaries/DICK_B6 - Spelling and Dictionary - Documentation and Examples.zip!DICK_B6.DSK!REPLACE.MAN`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,ce 1
_R_E_P_L_A_C_E_._C_M_D

,ju
,ll 70
,in 10

	REPLACE is one of those programs that is never available when it is needed.	How many times have you bought a program and found it would not execute because the port address or monitor jump locations were not set up for your monitor.	REPLACE makes it a simple matter to find and replace all these occurances.	When REPLACE locates the requested byte, it prints the address of the byte, plus the preceding two bytes and the following two bytes, in the following way:	Assuming the byte being searched for is an F8.

1016	21 7E F8 14 BD	Replace?

	In this case, F8 is the byte that was asked for and the address 1016 is the address of the F8, not the 21.	If the user answers n or N, the program continues searching for another occurance till the end limit is reached.	If the user answers y or Y, the replacement takes effect and the new code is reprinted thus:

1016	21 7E F8 14 BD	Replace? Y	21 7E E0 14 BD

	On the next call to REPLACE, the 14 would be changed if necessary.
The syntax is:

REPLACE <START ADDR> <END ADDR> <THIS BYTE> <THAT BYTE>

EX: REPLACE 1000 1FFF 7E BD

	Replace would search from location 1000 to location 1FFF for all 7E's and prompt to replace them with BD's.
