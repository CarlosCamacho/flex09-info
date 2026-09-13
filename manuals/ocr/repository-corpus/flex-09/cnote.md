# CNOTE

> Source: `flex-09/distributions/FLEX3010 - FLEX User Archive Volume - Program, Source, and Build Collection.zip!FLEX3010.DSK!CNOTE.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

Regarding "char *q[]":

This is an old confusion about C: the difference between:

	foo (a) char *a[] {}

and

	foo (a) char **a {}

These two will produce exactly the same code, but the first is
technically an utter lie.	The first case declares "a" to be the
address of a block of memory used as type char;	the second declares
"a" to be a pointer-width object which will be used to CONTAIN an
address of a block of memory used as type char.	The technical
difference is one of degree of dereferencing.	That is, one symbol is
bound to an absolute address of a bunch of characters, and the other is
bound to a location which holds the address of a bunch of characters.
In C terms, the second is an lvalue (may be assigned to); the first is not.

All C compilers I have seen will accept the declaration "char a[]" as a
formal paramter and treat it exactly if you had used "char *a".	In
particular, many standard UNIX programs declare the "main" function
as:

	main(argc,argv)
	int argc; char *argv[];

but this is a special case that only applies to formal function parameters.
Everywhere else the two declarations will get you different results.	In
particular, if you use the standard UNIX error messages yourself, the
declaration:

	extern char *sys_errlist[];

will produce correct code and the declaration:

	extern char **sys_errlist;

will get you in trouble.

There is only one case where using the empty bracket notation on
function formals instead of pointer notation is necessary, which is in
the case of passing multi-dimensioned arrays:

	char text[250][512];

	func (text);

	...

	func (array)
	char array[][512];
	...

Now in this case, the declaration should get correct treatment for
indexing into the argument array, even though what the symbol "array"
is bound to is a location on the stack which contains the address
of the array "text" in the calling procedure.	This will work for
any number of dimensions, but you must know the n-1 outer-most sizes
at compile time.	This limits the usefulness of multi-dimensioned
arrays somewhat as you can't pass the dimensions of the array as
arguments to a function.

The use of empty brackets in declarations is a convenience for
externally defined variables; you can declare the name and the empty
brackets establish the type.	This allows you to generate correct code
while leaving it up to the linker to worry about where the object
really resides.

So much for formal parameters.	Private function variables should
follow the same rules for externals, with the exception that the
default storage class is "automatic" instead of "external", and you may
not initialize aggregates (arrays and structures).	Technically, you
can't initialize automatic anythings; code is generated to set the
initial values each time the function is called as part of the entry
prologue.

In this context it makes no sense to defer space binding until link
time, because the space is created as part of the activation record
when the function is called.	The compiler needs to know how much space
to reserve to generate the proper code.	That the compiler accepts
empty brackets for an automatic array is clearly a bug, and probably
derives from the code for the special case of function parameters.

All of this reminds me:	it used to be the case (Ritchie V6,V7 pdp11
compiler) that you could declare structures like:

	struct UNION {
	int	ival[];
	char	cval[512];
	};

and get a poor man's "union", that is accessing the "ival" member would
get you an integer array and accessing the "cval" member would get you
a character array.	I think the V7 compiler warned you about it, but
would go ahead and generate the appropriate structure offsets symbols.
Or perhaps you had to explicitly declare a "0" size; I forget exactly
how it worked.

With the advent of the "union" construct and "pcc", this ability went
away.	Personally, I miss it.	In dealing with data streams used in
communication tasks, you often get structures of the form:

	struct HEADER {
	int	bytecount;
	int	fromaddr, toaddr;
	int	npackets;
	struct	DATA packet[];
	};

where what follows is some number of (struct DATA) types, determined
by the value of "npackets".	Often you have nested structures of this
sort, that is:

	struct DATA {
	int	bytecount;
	int	nlines;
	struct	LINE linedata[];
	};

and so on.	It is convenient to have the "sizeof" operator just give
you the size of the header information.	With the current system, you
have to declare all the sizes as "1", and remember to subtract the size
of the data item.	I would prefer that if you specified a size "0", the
compiler would let you get away with it, but would complain if the size
were unspecified.

	- Alan S. Watt
