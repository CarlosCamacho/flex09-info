# LIBMAN

> Source: `misc/archive-series/disk/DISK09 - Introl-C Compiler - Programs, Source, and Build Files.zip!DISK09.DSK!LIBMAN.HLP`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

CHOOSE THE NUMBER FOR WHICH YOU WANT HELP

The	help	command will print any one message below and then enter interactive
mode. Each message should fit on an 80 by 24 screen.
	
	1	List of Commands
	2	General Information
	3	Help Command Explained
	4	Adding Modules to a Library
	5	Replacing a Module in the Library with Another of the Same Name
	6	Deleting Modules from the Library
	7	Module Classes
	8	Listing Commands
	9	Moving Around a Library
	10 Non-Interactive Modes


END MESSAGE
	ALL COMANDS MAY BE ABBREVIATED TO THE CAPITALIZED LETTERS

Add {<file>{,<module>}}	In each specification those items which are en-
Comfile {<file>}	closed in angle brackets	< & > represent names
CRstep	to	be	inserted.	When	an item is enclosed in
Delete {<module>}	curly braces it means the enclosed item may	be
Exchange {<file>{,<module>}}	be repeated zero or more	times.	The	brackets
ECho {<string>}	and	braces are used only to explain the syntax
Find <module>	of the command and should not by typed in.
Help	
Insert {<file>{,<module>}}	Any place in which a <module> may be	specified
List {<module>}	the user may include an optional class specifi-
LList {<loadedlibrary>}	cation by appending a comma and a number to the
LOad {<file>}	module	name.	If	no	class	is	specified the
OMIT	command will apply to the first module of which
Print {<module>}	has the proper name.
Save {<file>}	
SList {<module>}	
SLList {<loadedlibrary>}	
SPrint {<module>}	
Quit	
QUIEt
END MESSAGE
	GENERAL INFORMATION

The library manager is used to adjust or create a library. It is called by
entering

	libman <lib>	or
libman <lib> <command>

In either case <lib> specifies the library on which the work is to be done.
If you are creating a new library then <lib> specifies the new library name.
If no command is specified on the call line then the library manager will
enter interactive mode otherwise the library manager will execute the one
command specified on the call line and quit. Any command may be used in either
interactive mode or from the call line. The "help" command as well as the
"Interactive" command will place the user in interactive mode.

When in interactive mode the user may step through the library by entering a
"+" or "-" to move forward or backward through the library. A "print" command
will then print information on the current module. The "list" command will
print the information on the entire library. Either of these commands may be
used to print information on particular modules by specifing the name of those
modules after the word "list" or "print". If you prepend any listing command
with an "s" it will give a short listing rather than a long one, as "slist".
END MESSAGE
	THE HELP COMMAND

When	you	type	"help" the library manager attempts to look for a file called
"libman.help". If found the library manager will print out the first	page	of
that	file	which	will prompt the user for a number. Each number represents a
different message contained in the help file and each message is	designed	to
fit nicely on a 80 by 24 screen (The number 0 stands for no message). The user
simply enters the number of the desired information (in this case it was a 3).
The	library	manager	will	then	print	out	the	message and then return to
interactive mode.

Interactive	mode is indicated by the words "Interactive mode" and a semicolon
prompt (just like at the bottem of this message).

If	you	want	to see another message type "help" again and choose a different
number. We suggest you read messages numbered 1 & 2 to help you get acquainted
with the library manager.


END MESSAGE
	TO ADD MODULES TO A LIBRARY

The	easest	way	to	add	modules	to a library is to specify the files which
contain the modules. Since you are in interactive mode that is done by	typing

add file1 file2 file3 ...

The modules will be added to the library you are editing (the one specified on
the	command	line	when you started the library manager). The "files" in this
case are usually those produced by the compiler or the assembler and will only
contain a single module, but they could also have been previously produced	by
the	library	manager and thus may contain any number of modules. In the cases
above all the modules in the given files will be added. If	you	wish	to	add
only	certain modules from a library which has several you may specify exactly
which modules you wish added by appending them to the file name	seperated	by
commas. For example

add file1,mod1,mod2 file2,mod file3 ...

Where	the	"mods"	are	the	names of modules in the given file. This example
Would add mod1 and mod2 of file1, mod of file2 and all the modules	in	file3.
END MESSAGE
	TO REPLACE A MODULE WITH ANOTHER OF THE SAME NAME

The easest way to replace one module in a library with another is to specify
the file, or files, which contain the modules to be replaced, for example:

exchange file1 file2 file3 ...

The modules will be replaced in the library you are editing (the one specified
on the command line when you started the library manager). The "files" in this
case are usually those produced by the compiler or the assembler and will only
contain a single module, but they could also have been previously produced by
the library manager and thus may contain any number of modules. In the cases
above all the modules in the given files will replace old modules of the same
name. If you wish to replace only certain modules by specifing a library which
has several you may specify exactly the modules to be replaced by appending
their names to the file name specified seperated by commas. for example:

exchange file1,mod1,mod2 file2,mod3 file3 ...

Where the "mods" are the names of modules in the given file. This example
Would replace mod1, mod2, mod3 and all the modules in file3.

END MESSAGE
	TO DELETE MODULES FROM A LIBRARY

To delete modules from a library simply list the modules to be deleted by
specifing there names seperated by spaces, for example:

delete modone modtwo modthree ...

The modules will be delete from the library you are editing (the one specifed
on the command line when you started the library manager).


END MESSAGE

MODULE CLASSES

	A module has an attribute called its class. The class of a module is a
number from 0 to 255 and usally has a value of 0. The class may be used by
the linker to decide which modules in a given library to include in the link
process. The reason this concerns the library manager is that it is possible
that there will be more than one module in a library with the same name. When
a module name is specified without a class the library manager will take the
first module of that name which it finds. To specify a particular module one
can specify both the name and the class by following the module name with a
comma and number as in "modname,3". This can be used in ANY command in which
a module specification is appropriate including the add and exchange commands.


END MESSAGE	:
	LISTING INFORMATION ON MODULES

	There are three listing commands. The first called "list" will list out all
the	modules	in	the library you are editing (The one specified on the libman
call line). If you specify one or more module names	after	the	list	command
it will list out just those modules.
	Another type of listing command is the "print" command. Like "list" it will
print out any modules whose names are specified in	the	command	but,	unlike
"list",	when	no modules are specified it will print out only one module (the
current module).	The current module is the last module referenced	(the	last
one	added, replaced, or listed). When libman starts the current module is the
last module in the library. You can move through the library by entering a "-"
to move backward and a "+" to move forward.
	The third type of listing command will list all the loaded files. Any	time
a	file	is	referenced	it	is	loaded. Thus it may be desireable to list the
modules in a loaded file. The load list command	is	"llist".	When	specified
without	any	arguments	it	will list the names of the loaded files. To get a
listing of a loaded file one can specify the file name on the "llist"	command
line.

	Each listing command has a short version specified by prepending an "s" to
the command name as in "slist", "sprint", and "sllist".
END MESSAGE
	MOVING AROUND IN A LIBRARY

When you edit a library using the library manager there exists a pointer which
indicates the "current" module. This pointer is used to as a starting point
for searches when adding, exchanging, and deleting modules. It also points
to the module which will be printed out by a "print" command when specified
with no arguments. Most of the commands affect the position of this pointer.
The user can move this pointer about by indicating using the "find" command.
For example the following moves the cursor to a module named "thing"

find thing

The user can also move around in a relative fashion by specifing a signed
integer on the line. For examble the following will move the curser backwards
four modules.

-4

It is also legal to specify a number of minus or plus signs which indicate the
number of modules to move forward or backward. For example ---- moves backward
four modules while ++ moves forward two. It is also legal to move an absolute
number from the begining of the library by entering an unsigned number.
END MESSAGE
	NON-INTERACTIVE MODES

There are two other methods in which the library manager can execute commands
besides interactive mode. One is when a command is specified on the libman
call line. When a command appears on the call line the library manager will
execute it and quit, saving the library file if it has been modified. Commands
are specified on the call line exactly the same as if in interactive mode. To
add modules to a library, for example, one could type.

libman lib add file1,modone file2 file3 ...

All commands which are legal in interactive mode are also legal in this direct
mode although some wouldn't make too much sense. The use of commas in a call
line may confuse some operating systems in which case the user can use colons
instead of commas. If no command is specified or the "help" command is used
the user will be placed in interactive mode.

Another mode of executing commands is the command file. A command file is a
text file which simply contains a series of commands. The command to process
a command file is "comfile <filename>" this too can be called from either the
call line or from interactive mode. Any command may be executed from a command
file (including the "comfile" command).
END MESSAGE
