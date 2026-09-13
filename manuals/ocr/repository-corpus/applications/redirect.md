# REDIRECT

> Source: `apps/spelling-dictionaries/DICK_B6 - Spelling and Dictionary - Documentation and Examples.zip!DICK_B6.DSK!REDIRECT.MAN`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,ce 1


_R_E_D_I_R_E_C_T_ _I_/_O

,ju
,ll 70
,in 10

	The redirect utility gives the user the option and ability to transfer control of FLEX to a pheripheral on another port, usually another terminal or printer device with input capabilities.

	Redirect assumes the system has 16 addresses per I/O slot, however, a parameter may be passed to indicate a system with 4 address I/O.	The following syntax will demonstrate how to accomplish this.

SYNTAX:	REDIRECT 2	CONTROL TRANSFERRED TO PORT 2, 16 ADDRESS I/O
		REDIRECT 2,4	CONTROL TRANSFERRED TO PORT 2,	4 ADDRESS I/O
		REDIRECT	CONTROL TRANSFERRED TO PORT 0, 16 ADDRESS I/O
		REDIRECT 2,16	CONTROL TRANSFERRED TO PORT 2, 16 ADDRESS I/O
	ALSO THE DEFAULT OPTION

	To return control to the normal port (port 1), type RESTORE, another utility included with this package.


	 _R_E_S_T_O_R_E

	This command returns control back to port 1 after having redirected I/O with the above command.

SYNTAX:	RESTORE
