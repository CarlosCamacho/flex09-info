# DECOMPIL

> Source: `apps/spelling-dictionaries/DICK_B6 - Spelling and Dictionary - Documentation and Examples.zip!DICK_B6.DSK!DECOMPIL.MAN`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,ce 1
 _*_*_*_ _W_E_L_C_O_M_E_ _T_O_ _T_H_E_ _X_B_A_S_I_C_ _D_E_C_O_M_P_I_L_E_R_ _*_*_*
,ll 70
,ju
,in 10

	To use the decompiler, type 'DECOMPIL,FILENAME.EXT'.	The file extension will default to a '.BAC' extension if none is typed in.	When the decompiler asks if you want to BUILD a disk file, type 'Y' if you do and 'N' if you don't. The decompiler will then prompt for a filename of the program that will be created. The DEFAULT EXTENSION for the new file will be a '.BAS' and DECOMPIL will exit back to FLEX if the file already exists, albeit non-destructively.	(DECOMPIL WILL NOT ERASE ANY FILES!).

	For a printout, type;	P,DECOMPIL,FILENAME.EXT

	DECOMPIL will follow all of the TTYSET parameters, so use them for a neater looking printout, as line length generally exceeds the normal 80 characters.	DECOMPIL will, in some cases, put in extra spaces for a better looking printout. XBASIC will not accept over 127 characters and will give ERROR #51 (ILLEGAL CHARACTER IN LINE) when you try to load a long line. While in XBASIC, type "LIST" and the last line printed was the last line that made it in. You will have to EDIT the created file and change lines that are greater than 127 characters (remove spaces, make two lines out of one, etc).	NOTE... DECOMPIL will take up to 255 characters of .BAC, so it will decompile longer lines, such as created using the PRECOMPILER.

	DECOMPIL will only decompile T.S.C. XBASIC (EXTENDED BASIC),and will not work for other BASIC compilers (including T.S.C. regular BASIC).	Also, you should have at least 16K of work RAM.
