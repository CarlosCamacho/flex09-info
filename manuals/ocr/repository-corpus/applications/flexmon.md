# FLEXMON

> Source: `apps/stylograph/PT69-HD - Stylograph Word Processor - Bootable Hard-Disk FLEX System and Utilities.zip!PT69-HD.DSK!FLEXMON.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

* USE:
* On the FLEX command line, the names of files (.BIN default)
* after the monitor callout will be loaded and the last
* transfer address put into the program counter. Use the "R"
* command to verify.	In addition, before the monitor starts
* up a message will be displayed asking for any command line
* options to be put into the Flex line buffer.	The monitor
* is loaded into the Flex Utility Command Space at $C100.
*
* NOTE: The monitor expects an emulated ACIA at $E004.
*
* THEORY:
* On initial entry all program registers except the
* stack and program counter are set to 0. The stack
* is set to the incoming value and the PC points
* back to the monitor command decode. The program stack
* length MUST include enough room for the SWI. Note that
* Interrupts are turned off on initial monitor entry, and
* that the SWI also turns off the interrupts while in the
* monitor. Since the NMI interrupt cannot be turned off,
* extra space is included in the monitor stack.
* Breakpoints use the SWI, which is vectored via [$F3FA].
* If an SWI exit is taken from the program and the
* breakpoint is not found in the breakpoint table, the
* program cannot continue execution until the SWI is
* removed using the M command or is bypassed using the
* "control" P command. This problem can be detected by
* the presence of a question mark after the monitor prompt
* when the breakpoint is hit.
* CMNDS:
* The monitor prompt is ">", and is followed by the
* keyboard commands. In the following explanation, <CR>
* represents a carriage return, Hex numbers are shown as
* H and ASCII characters as A. Keyboard inputs are
* underlined. Some commands do not require a carriage
* return. A mistake in a command sequence will cause an
* immediate exit. To halt a printout use the ESCAPE key.
* Another ESCAPE will resume printing, while a <CR> will
* return to the monitor.
*
* 1) >M HHHH <CR>
*	- ---- ----
* This opens a memory location for examination or change.
* Memory contents are printed in Hex and ASCII. Four
* operations are now possible. A left arrow "<" will go to the
* next lower location, while a right arrow ">" will go to the
* next higher one and a carriage return will return to
* the monitor. While a location is open the contents can
* be changed using either Hex or ASCII input. For hex,
* input two Hex digits (0-9 or A-F). For ASCII, first
* enter a single quote followed by the character. When a
* location has been changed the next higher one is
* automaticaly opened.
*
* 2) >B HHHH
*	- ----
* Put a breakpoint in memory. When program execution
* reaches this point the monitor is recalled and the
* previous memory contents are restored. The program may
* be continued (using the G command) or other operations
* may be performed.
*
*	>B <CR>
*	- ----
* When no memory location is input a list of the present
* breakpoints will be printed. Each item will include the
* location number in the breakpoint table for use in the
* X command. The breakpoint the monitor was entered from
* (except on initial entry or when it has been removed
* by the X command) will be followed by an asterisk.
* On the next break it will be restored.
*
* 3) >R
*	-
* A list of the program registers will be printed out.
* Register contents can be changed by using a control
* character (such as "control" A for the A register)
* followed by the new contents. Condition codes are a
* special case. The codes will be printed out as the
* ASCII prompts for the active positions. All the prompts
* will then be printed underneath. Eight keyboard inputs
* are required to make a change. For each bit position, 1
* will activate the bit, 0 will deactivate it and a space
* will leave it as is.
*
* 4) >G
*	-
* Continue to execute the program. The breakpoint jump at
* memory locations $106 through $108 is reinstalled and
* an RTI instruction is done.
*
* 5) >X HH
*	- --
* Delete a breakpoint. Input the breakpoint table entry
* number. This can be found with the B command.
*
*	>X <CR>
*	- ----
* Delete all breakpoints.
*
* 6) >T
*	-
* Prints the change in program flow if the next program
* instruction is an RTS.
*
* 7) >W
*	-
* Jump to the operating system warm start entry point.
*
* 8) >D HHHH HHHH
*	- ---- ----
* Print the contents of memory in Hex and ASCII. Give
* the start and finish locations as four digit Hex
* numbers. Finish must be >= start.
*
*	>D <CR>
*	- ----
* Same as above, using the addresses from the last D, F
* or S command.
*
* 9) >F HHHH HHHH HH
*	- ---- ---- --
* Fill memory. The start and finish addresses are input
* first, followed by the desired fill byte.
*
* 10) >S HHHH HHHH HH 'A 'A HH <CR>
*	- ---- ---- -- -- -- -- ----
* Search memory for a data string. Hex (or ASCII as
* in the M command) is input after the start and finish
* addresses. Miximum string length is given by BUFLEN. If
* the buffer is full only a <CR> will be accepted.
*
* 11) >H
*	-
* Prints all the command prompts.

* SYSTEM EQUATES:
* The calls INCHNE, PUTCHR and STAT must
* not modify the X or Y registers.
* INCHNE and PUTCHR use the A register.
* STAT returns with a not = condition if
* keyboard input is present.

PUTCHR EQU $CD18 PRINT CHARACTER.
UTIL EQU $C100 Utility command space ($C100 through $C6FF).
WARMS EQU $CD03 FLEX START.
MEMEND EQU $CC2B POINTER TO END OF USER MEMORY.
STAT EQU $CD4E Keyboard status.
BRKJMP EQU $F3FA SWI breakpoint vector location.
UPAROW EQU $3C	Code for up(left) arrow key.
DNAROW EQU $3E	Code for down(right) arrow key.
ACIA	EQU $E004 Location of emulated ACIA.
Xflag	equ	$CC1D
Non 0 if transfer address found.
Xaddr	equ	$CC1E
Transfer address (from program load).
DOCMND	equ	$CD4B
Call operating system as a subroutine.
TTYEOL	equ	$CC02
TTYSET end of line character.
Lptr	equ	$CC14
Line buffer pointer.
INBUFF	equ	$CD1B
Input into line buffer.
Lsttrm	equ	$CC11
Last terminator.
Nxtch	equ	$CD27
Get next buffer character.

* MONITOR EQUATE.

NBP EQU 16 # OF BREAKPOINTS.
BUFLEN EQU 20 String buffer length.
