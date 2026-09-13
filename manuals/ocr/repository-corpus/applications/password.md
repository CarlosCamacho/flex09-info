# PASSWORD

> Source: `apps/spelling-dictionaries/DICK_B6 - Spelling and Dictionary - Documentation and Examples.zip!DICK_B6.DSK!PASSWORD.MAN`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,ce 1
_P_A_S_S_W_O_R_D_ _P_R_O_T_E_C_T_I_O_N_ _P_A_C_K_A_G_E

,ju
,ll 70
,in 10

	The included programs will allow a user to create a system disk that cannot be booted without knowing the built-in password.	This program does not protect each individual file, it only prevents un-authorized access to the system from the point of booting.	Included are several files.	The function of each is explained below.

PASSGEN - This program actually makes the system disk password protected.	To execute this program, type PASSGEN.	The requirements of usage are thus:	The disk to be gen'd must be a system disk and it should contain a copy of CODEWORD.CMD listed below.

CODEWORD - This program prompts the user to type in his desired password.	Any valid printable ascii character letters or numbers are allowed.	Up to eight characters are allowed.	If less than 8 characters are entered, terminate with a carriage return.	If 8 characters are entered, the program terminates autoqmatically.	The entered characters are not echoed to the screen.	If it is desired to view the password, another program called DPASWORD is used.	When the '>' character appears, the programs are expecting the user to type his password.	This will occur upon execution of PASSGEN and also CODEWORD.
CODEWORD may be used at any time to change the existing password.

DPASWORD - This program displays the current password to the screen.

INITS	- This program must be included in the STARTUP.TEXT file of your

system disk in order to call the password program into effect.

An example STARTUP.TEXT is listed below.

TTYSET BE=8 WD=80 DP=24:INITS

	The password is further encoded (scrambled) before being saved, there-fore, even being able to read the place on the disk where it is stored will not ensure access to the system.	The algorithm used to encode the password would have to be known to be able to unscramble it.

	Any or all of these programs may, and in fact should, be catalogue protected.	Anyone could type DPASWORD to find out your valid password if he can see that the program exists.	Also, CODEWORD cannot be changed to another name as PASSGEN searchs for this program to load and execute upon gen'ing a disk.
