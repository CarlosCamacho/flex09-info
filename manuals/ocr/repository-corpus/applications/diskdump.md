# DISKDUMP

> Source: `apps/spelling-dictionaries/DICK_B6 - Spelling and Dictionary - Documentation and Examples.zip!DICK_B6.DSK!DISKDUMP.MAN`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,ce 1
_D_I_S_K_D_U_M_P_._C_M_D
,ju
,ll 70
,in 10

	DISKDUMP is a program to transfer a text or basic file from disk directly to any specified port.	Useful when you want to send a file over a modem or to cassette.	The syntax is:

DISKDUMP <DRV #>.<FILENAME>[.<EXT>] <PORT #> [<# OF ADDR'S OF YOUR I/O>]

EX: DISKDUMP 1.HILO.BAS 2,16	-	PORT 2 W/16 ADDR IO'S (SWTPC)
	DISKDUMP 1.HILO.BAS 2	-	PORT 2, DEFAULTS TO 16 ADDR'S
	DISKDUMP 1.HILO.BAS 2,4	-	PORT 2 W/4 ADDR IO'S (SMOKE)
	DISKDUMP 1.HILO.BAS 2,10	-	PORT 2, DEFAULTS TO 16 ADDR'S (10 IS ILLEGAL)

	DISKDUMP sends out 80 null characters in the front of the file and also at the end of the file.	If the file is going to tape, there is no need to supply a header since DISKDUMP does it for you.	The 80 nulls also gives a modem time to settle before the data starts arriving.
