# CHECK

> Source: `utilities/system/CHECK645 - FLEX System Utilities - Source Code and Build Files.zip!CHECK645.DSK!CHECK.HLP`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

This file is called from the CHECK program.

The options that you have during various times are;

CHECK	# ?	'@' or '+' will increment and
	display the next sequential #
	if there is one. A error mesg
	will be displayed if there was
	no previous check number.
	You can of course enter a num-
	ber here and if a '0' is enter-
	ed then a cash expendenture can
	be listed.
	There are also several system
	commands that can be used here.
	'END','STOP' OR 'DONE' will write
	the file to disk and stop.
	'SAME' entered will print the
	information from the previous
	check for use when you have
	more than one dispersment for a
	single check.

PAYEE	_# ?	Here we want the name the check
	is made out to. We can also enter
	a '#' followed by a number to speed
	the entry of payroll information.
	'#1" entered will print out
	FRANK HOGG and also save the emplo-
	yee number for later use (see payroll).

DAY	?	Here we're looking for just the day of
	the month (we already know the month and
	year) you can also enter a '@' to use
	the previous day if there is one.

ACCOUNT_# ?	Now we need the account number that the
	money should be filed under. To aid you
	in making sure that you have the right
	number the account name will be printed
	out and if wrong you can change it.
	If the number is beyond the names that
	we now use a message will be printed but
	this doesn't mean you can't use it.
	Also if you have a PAYROLL entry this is
	the place to do it. All you do is type
	a '@' or 'PAY' and you can enter payroll
	(see PAYROLL) information.

AMOUNT	$ ?	Here of course we need the amount that
	goes with the previous account #. If this
	is the only account then the total amount
	would go here. But if you are dispersing
	the check or receite to more than one account
	then put just the amount that goes with the
	previous account #. Here is where the 'SAME'
	feature is used to ease multiple entries.


 There are several things that can be done during any one
of the previous prompts and they are.

	'ERR' or '^' will back up one entry
	and print it with a ? now you can
	do one of three things.
	1 Type 'ERR' or '^' to back up again.
	2 Type in new information to replace
	whats there.
	3 Type a RETURN which will leave the
	entry as it was. (note that this
	only works one time - if you go
	back more than one entry you have
	to renter the information.)
	'HELP' will list this file.
	'+++'<flex command> will execute
	<flex command>.

*******************PAYROLL************************

 If you type a '@' or 'PAY' to the ACCOUNT_# prompt you
will be able to enter payroll information. Here is what the
prompts mean.

 If you did not use one of the predefined employee numbers
when the 'PAYEE	_#' prompt was issued then the program will
Will ask for that information now.

EMPLOYEE # ?	Type in the employee's number.

 The program will now print the employee and their number.

EMPLOYEE xxxxxxxxxxxx #xx

 Now the program wants 'NUMBERS ONLY' for the payroll information.
If you want to exit then just enter "0's" to the prompts and use
'ERR' to delete the entry.

 GROSS PAY ?	Type in the pay before taxes.
	NET PAY ?	Type in the amount after all deductions.
	FED TAX ?	Type in the federal tax witheld.
 STATE TAX ?	Type in the state tax witheld.

 The program will now calculate the social securety tax
and print it for verification. Also if the total deductions
and the net pay do not balance you will be informed and asked
if you want to renter.

 SOC SEC = xx.xx
TOTAL OFF BY (GROSS,TOTAL) ggg	ttt
DO YOU WISH TO RENTER ?

 Where xx.xx is the social securety tax and ggg is the gross pay
and ttt is the total that the program came up with.
If you type a 'Y' to the renter question the you will
go back to the gross pay prompt.
 If you type a 'N' or if the amounts were correct then the
next question will be.

DO YOU HAVE ANOTHER PAYROLL ENTRY ?

 Any answer here will not be apparent right away and
only a 'Y' answer will do anything. All that happens
is that when on the next entry when the account prompt
is issued you will go to the payroll portion without
having to type in 'PAY'.

If you have any futher questions ask Frank.
