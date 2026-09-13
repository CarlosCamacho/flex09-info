# CTHELP

> Source: `utilities/system/ECSUTIL - FLEX System Utilities - Documentation and Examples.zip!ECSUTIL.DSK!CTHELP.HLP`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

?CTHELP


C TOOLS
	

"UNIX-like Utilities for Managing C Source Code"

	July 1988

	Version 2.00


OVERVIEW:

	C Tools is a series of programs to support programming in the
	C Language.

COMPONENTS:

	C Tools includes the following separate programs:

	FCHART:

	creates a complete list of a system whether it has to use
	one or many files. It shows where functions are called; shows
	the full code for the program the first time it is called and
	then refers back to it when it is called again. Produces a
	chart using a normal screen or printer - not graphics.

	PP:

	is primarily used to make someone else's program easier to
	understand. It increments the indentation level within loops,
	etc. The indentation level is variable. You can set the tab
	increment to suit your taste.
	
	CUTIL:

	for processing of special characters. Will make control
	characters be displayed, eliminate form feeds, convert Tabs to
	spaces, convert UPPER to lower case. Has numerous other
	capabilities all of which are useful for converting programs
	from the syntax required by one compiler to another. This is a
	general purpose file filter with numerous features, and includes
	FUNCTION PRINT and LINE LOOK features as well.

	CBC:
	
	checks for pairing of curly braces, parentheses, quotes and
	comments. Displays brace levels along with the program source.
	Can help the programmer to understand the programs.
	
	DIFF:

	A file comparison program that is fairly "intelligent". When
	2 files start to vary, it searches for where they become
	consistent again on a "lead" or "lag" basis. Will give a report
	of the lines that were different in the two files. A very useful
	tool to use when comparing different versions of program source.
	Works on 'C', assembler, and other standard text files.
	DIFF works a line at a time. CMP was recently added to make byte
	by byte comparisons.
	
	GREP:

	a program that searches for patterns in files - very much
	like the same program under UNIX. This can be very useful in
	searching large documents for certain strings of characters. One
	popular use of grep is to implement a telephone list.

	CCREF:

	cross references all of the variables used by function and by
	line number within function.

	DOCMAKE:

	produces an output file consisting of all the text outside
	brace pairs in the input file.

	ASCII:

	generates an ASCII table of characters 0 through 127.

?CBC

	CBC: Brace, parenthesis, quote and comment nesting checker.
	
		CBC is a program written to check the placement and nesting
		of braces, parentheses, quotes and comments in a C program. It
		lists the program, displaying each line begining with its line
		number, then a number representing the depth of braces and
		parentheses and then the line's text. This number can
		represent comments too, or just braces or just parentheses
		by entering the appropriate flag(s). When the depth of
		counted braces, parentheses and, if desired, comments is
		incremented and then decremented to a zero, a dotted line is
		displayed on the following line and if desired (i.e. to print
		the program a FUNCTION PER PAGE) a formfeed can be printed
		along with the dotted line. If the depth count is negative,
		CBC will indicate this, displaying a "nesting error" message.
		To simplify the use of this program, a brace or parenthesis
		can be entered as a flag (i.e. -{ -( ) to inhibit the
		respective counting of braces and parentheses. for a
		list of flags, execute the program with the -? flag.

?CCREF

	CCREF: 'C' program lister and cross-reference utility.
	
		CCREF is a program written to list a C program and then sort
		and list all of its the symbols, etc. in a table along with
		the line numbers of where they appear in the program's
		listing. This utility requires the entry of flags to list
		reserved words or to include #include files in the listing
		and table. By executing CCREF without any arguments it will
		provide a list of flags and their definitions. Formfeeds are
		printed at the beginning of each page to allow paginated
		printing.

?DIFF

DIFF: An ASCII file comparison utility.

		DIFF is a program written to compare two ASCII files. It has
		flags to select options which allow changes in the output
		display. The options flags allow display of the appropriate
		file name on each line output as not matching, also the
		display of lines that match, along with lines that are
		different and to inhibit line numbers from being displayed on
		lines that are different. If DIFF is executed without any
		arguments, the flags along with their descriptions are
		listed. The program is used by entering the flags, (if any)
		and then the names of the files to compare. If there are
		great differences in file size, enter the name of the largest
		file first.

?GREP


	GREP: Global Regular Expression Parser.

		GREP is a utility written to find all occurrences of a string
		contained within an ASCII file. It is derived from DECUS (the
		DEC users group) and slightly modified. It works in the same
		way as the GREP included with UNIX from what we have been
		able to determine.	Help information and a list of flags and
		options can be obtained by executing the program with ? for
		an argument.

?FCHART

	FCHART: Top-Down, Structured-Pseudocode function call charter.

		FCHART is a program written to analyze a C program and
		display the results of this analysis in a form of Top-Down,
		structured-pseudocode list of function calls. The analysis
		consists of the evaluation of the function calls within the
		program and the calls within each function. These function
		calls are displayed in a table, one on a line, with a line
		number at the beginning of each line for reference. If a
		function is external to the program being analized, its name
		is followed by [ext] (ie. tolower [ext]). If a function calls
		another function within the program, these calls are listed.
		They are indented from the name of the function calling it,
		after the calling function. If external functions are called
		they are followed by [ext] as described above. If a function
		internal to a program is called again, it is followed by a
		reference to the line it is initially described, unless the
		verbose flag has been entered, which causes all of the calls
		internal to the function to be listed every time the function
		is listed. If a function is called recursively, it is sur-
		rouned by carets (i.e. ^ output ^ ).

		To enable printing on a line printer or to see the resultant
		chart on a CRT screen with clarity, FCHART has a width flag.
		The default width is 78. Any indentation greater than 78
		columns is symbolically represented in the output, to
		maintain continuity.
	
		FCHART will start plotting functions beginning with main
		unless otherwise indicated. A function name or list of names
		can be entered as flags on the program's command line if
		desired. It starts listings from the indicated function(s).

?PP

	PP: The C beautifier.

		PP is a program written to format, beautify or pretty print
		a C program. It has no options and no flags. To use PP, enter
		the file name of the input C program on the command line and
		if output to a file or printer is needed, redirect the output.
		PP allows you to change the number of spaces per nesting level.
		The default is 4 spaces.

?CUTIL

	CUTIL: A multi purpose filter for 'C' programmers.

		Cutil is a package of file and programming utilities written
		to assist the programmer. It displays a list of flags and
		options upon entry of an incorrect flag or a ?. The program
		does the following:
	
		Change case of comments, text or both.

		Filter control characters from file (with and without form-feed)
	
		Display representation of control characters and characters with
		8th bit set. (control characters represented by ^, 8th bit by ~)
	
		Number lines

		Display a specific line in a program with the 3 lines before and after
		(to aid in the location of errors from compiler error messages)

		Print a C program, with headings and titles, one function per page.

		Remove tabs from an an ASCII file.

		Replace appropriate spaces in an ASCII file with tabs.

?DOCMAKE

	DOCMAKE: A documentation aid for C programmers.

		Will generate as output a file of everything in the input that
		was not enlosed in {brace} pairs.	Thus, it is useful for stripping
		header comments and declarations out of a file during the production
		of external documentation.

?ASCII

ASCII: ASCII Table Generator

		Generates an ASCII table.

?PRNT

	PRNT - simple print formatter. Allows you to set right margin,
		number of lines per page, and top margin. Puts
		form feeds into the output file. This program is
		intended for dumping of simple files (source code)
		to printers.
