# USERINFO

> Source: `apps/spelling-dictionaries/DICK_BTX - Spelling and Dictionary - Documentation and Examples.zip!DICK_BTX.DSK!USERINFO.MAN`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

,in 10
,ce 1


_U_S_E_R_I_N_F_O

,ll 70
,ju
	USERINFO is a utility written for the purpose of freeing the user of having to make notes on a piece of paper or printing small pieces of information about a particular diskette.	A small amount of information may be stored on the disk in an unused area that can contain up to 128 characters of whatever the user decides to type in.
	The ability to display, edit, write and get a current character count are included.	Any valid ascii codes may be entered.	Typing a carriage return generates a CR/LF combination both in editing and display modes.	The edit capabilities are limited to being able to move the cursor to a particular character and overlaying or retyping the text from that point on.
	Types of information that may be stored on the disk include:	the date the disk was created, what types of program are stored on the disk, the last disk backup date, etc.	Uses are limited only by the users' imagination.
	Upon typing USERINFO, the following prompt will appear on the top of the screen.

R(EAD, W(RITE, E(DIT, C(OUNT, H(ALT?

	Typing the first letter of the desired command will cause that command to be executed.	If this is the first time this utility has been used, the rest of the screen will be blank.	After entering data the first time, the next time the utility is called up, upon entering, an automatic read will take place and the current data on disk will be displayed.
	Typing C will display the string; CHARACTER COUNT=XXXX, where XXXX is the total number of characters already stored on disk.	Remember, a maximum of 128 are allowed.	If more than this are typed in, the edit mode will automatically be exited, and the cursor will appear on the command prompt line.	Also, the message; BUFFER OVERFLOW: INPUT TERMINATED, will appear.	Upon execution of the next command, this error message will disappear.
	Typing the E key will put the program in the edit mode.	The cursor will drop down a few lines and wait for the user to key in his data.	The valid control codes are backspace, which backs up and deletes the last entry, and control C which terminates the edit mode.	If an edit session is entered and the need to change some existing text exists, type a control L to move the cursor until it appears at the point where changes are to be made.	If data is to be deleted, spaces can be used, however, they are counted in the total character count, and this could be deceiving as to how much room is left in the buffer.	A better delete character is the control @, which will place a null in the buffer and not appear in the character count.	The first encountered control @ determines the end of valid data.	If a null is placed in the middle of a string of ascii characters, the next display would cease at the location of the control code and the rest of the string is effectively deleted.	Experimenting with this program is the best teacher.	Typing W will write the contents of the screen in the edit area onto the diskette.	Typing R will re-read the data just written and verify the operation.	Type H to exit.
