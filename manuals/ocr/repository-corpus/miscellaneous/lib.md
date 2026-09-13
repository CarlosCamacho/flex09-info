# LIB

> Source: `misc/archive-series/disk/DISK32 - FLEX Archive Disk - Source Code and Build Files - Includes ADD, CCZ80, COMPRESS.zip!DISK32.DSK!LIB.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

!680x0 C LIBRARY

	IDENTIFICATION


abs - absolute value


	USAGE


int abs(i)

int i;


	NARRATIVE


The abs function returns the	absolute	value	of	its	integer

argument.


It may be defined in a manner similar to the following:
	((i >= 0) ?	i : -i);


	COMMENTS


When using two's-complement binary arithmetic, applying the abs

function	to the most negative integer generates a result which

is also the most negative integer.


Thus,

	abs(0x80000000L)


provides

	0x80000000L


as a result.


	&Page 1


	!680x0 C LIBRARY

	IDENTIFICATION


access - determine accessibility of file


	USAGE


#define R_OK	4/* test for read access */

#define W_OK	2/* test for write access */

#define F_OK	0/* test for presence of file */


int access(path, mode)

char *path;

int mode;


	NARRATIVE


The	access	function	checks	the	given	file	path	for

accessibility	according	to mode, which is a logical inclusive

or of the specified bits R_OK and W_OK.


Specifying mode as F_OK tests whether the path leading	to	the

file can be searched and the file exists.


	RETURN CODES


If	access succeeds, it returns a zero; otherwise, it returns a

-1 and sets errno to indicate the type of	access	problem,	as

follows:

	[ENOTDIR]	A	component	of	the	path	prefix	is	not	a
	directory.

	[ENAMETOOLONG] A component of the file name is too long.

	[ENOENT] The named file does not exist.

	[EACCESS] Search permission is denied for a	component	of
	the path prefix.

	[EROFS]	Write	access	is	requested	for	a	file	on	a
	read-only file system.

	[EFAULT] The path points outside the	process's	allocated
	address space.

	[EIO] An input/output error occurred while reading from or
	writing to the directory.


	&Page 2


	!680x0 C LIBRARY

	IDENTIFICATION


atof,	atoi,	atol, ftoa, int2str, itoa, ltoa, str2int, strtod,

strtol - convert strings to numbers and vice versa


	USAGE


double atof(nptr) (not implemented)

char *nptr;


int atoi(nptr)

char *nptr;


long atol(nptr)

char *nptr;


void ftoa(d, s) (not implemented)

char *s;

double d;


char *int2str(d, radix, val)

char *d;

int radix;

long val;


void itoa(n, s)

char *s;

int n;


void ltoa(l, s)

char *s;

long l;


int str2int(s, radix, lower, upper, val)

char *s;

int radix;

long *val;

long lower;

long upper;


double strtod(nptr, eptr) (not implemented)

char **eptr;

char *nptr;


long strtol(nptr, eptr, base)

char **eptr;

char *nptr;

int base;


	NARRATIVE


These functions convert a string to floating, integer, or	long

integer representation,	or vice versa.	The first unrecognized

character ends the conversion from string representation.


The atof, atoi, and atol functions recognize an optional string

of white-space,	then	an	optional	sign,	then	a	string	of

digits.	The	atof function additionally recogizes an optional

	&Page 3


	!680x0 C LIBRARY


decimal point, then an optional 'e'	or	'E',	followed	by	an

optionally signed integer.


The atof function may be defined as follows:
	strtod(str, (char **)NULL).


The atoi function may be defined as follows:
	(int)strtol(str, (char **)NULL, 10).


The atol function may be defined as follows:
	strtol(str, (char **)NULL, 10).


The int2str function converts the long integer val to character

form	in	base radix and places it in the destination string d,

followed by a terminating zero.


The ftoa, itoa, and ltoa functions convert a double, integer or

long integer value to character form in base 10 and	place	the

result in the destination string.


The itoa function is defined as (void)int2str(s, 10, (int)n).


The ltoa function is defined as (void)int2str(s, 10, l).


The	str2int	function converts the string pointed to by src in

specified radix to a long integer and stores the result at	the

location pointed to by val.	The lower and upper values provide

inclusive limits	on	the	legal value of the long integer.	If

the conversion succeeds, the str2int function returns a pointer

to the terminating character in the input string; otherwise, it

returns null, sets errno, and does not store the result at	the

location pointed to by val.


The	strtol	function	returns,	as	a	long integer, the value

represented by the character string nstr, as follows:

	The	string	is	scanned	up	to	the	first	character
	inconsistent with	the	base.	Leading	white-space
	characters are ignored.

	If the value of eptr is not (char **)NULL,	a	pointer	to
	the	character terminating the scan is returned in **eptr.
	If no integer can be formed, **eptr is set	to	nstr,	and
	zero is returned.

	If base is positive and not greater than 36, it is used as
	the base	for conversion.	After an optional leading sign,
	leading zeros are ignored, and "0x" or "0X" is ignored	if
	base is 16.

	If	base is zero, the string itself determines the base as
	follows:
	after	an	optional	leading	sign,	a	leading	zero
	indicates	octal	conversion,	and	a leading "0x" or
	"0X"	hexadecimal	conversion;	otherwise,	decimal
	conversion is used.

	Truncation	from	long	to	int	can	take	place	upon
	assignment, or by an explicit cast.


	&Page 4


	!680x0 C LIBRARY


The strtod function	returns	as	a	double-precision	floating

point	number,	the	value	represented by the character string

pointed to by nptr, as follows:

	The	string	is	scanned	up	to	the	first	unrecognized
	character.	This function recognizes an optional string of
	white-space characters, then a string of digits optionally
	containing	a decimal point, then an optional sign, then a
	string of digits optionally containing	a	decimal	point,
	then	an	optional	e or E followed by an optional sign or
	space, followed by an integer.

	If the value if eptr is not (char **)NULL,	a	pointer	to
	the	character	terminating	the	scan	is returned in the
	location pointed to by eptr.	If no number can be	formed,
	*eptr is set to nptr, and zero is returned.

	Truncation	from	double	to	float	can	take	place upon
	assignment, or by an explicit cast.


	RETURN CODES


The atof function returns HUGE if an	overflow	occurs,	and	a

zero value if an underflow occurs.


The	strtod function returns HUGE (according to the sign of the

value), if the correct value would cause overflow, and errno is

set to ERANGE.


If the correct value would cause underflow,	zero	is	returned

and errno is set to ERANGE.


	REFER TO


scanf


	&Page 5


	!680x0 C LIBRARY

	IDENTIFICATION


bcmp,	bcopy,	bfill,	bmove,	bzero, ffs - bit and byte string

operations


	USAGE


bcmp(b1, b2, length)

char *b1;

char *b2;

int length;


bcopy(b1, b2, length)

char *b1;

char *b2;

int length;


bfill(b1, length, fill)

char *b1;

int length;

char fill;


bmove(b1, b2, length)

char *b1;

char *b2;

int length;


bzero(b1, length)

char *b1;

int length;


ffs(i)

int i;


	NARRATIVE


The functions bcmp, bcopy, bfill, bmove, and bzero	operate	on

variable length	strings	of bytes.	They do not check for null

bytes as do the strcmp, strcpy, etc.	functions in the C string

library.


The	bcmp	function	compares	string	b1	against	string	b2,

returning zero if they are identical, non-zero otherwise.	Both

strings are assumed to be at least length bytes long.


The bcopy function copies length bytes from string b1 to string

b2.


The bfill function places length fill bytes in string b1.


The bmove function copies length bytes from string b1 to string

b2.


The bzero function places length zero characters in string b1.


The	ffs	finds the first bit set in the argument passed it and

returns the index of that bit.	Bits are numbered	starting	at

1. A return value of zero indicates the value passed is zero.

	&Page 6


	!680x0 C LIBRARY

	COMMENTS


The	bcmp	and	bcopy	functions	take arguments backwards from

strcmp and strcpy.


The bcmp function uses native character	comparison,	which	is

signed on some implementations and unsigned on others.


Character	movement	is	performed	differently	in	different

implementations.	Thus, overlapping moves are not portable.


	&Page 7


	!680x0 C LIBRARY

	IDENTIFICATION


bsearch - binary search


	USAGE


char *bsearch(key, base, nel, size, compar)

char *key;

char *base;

unsigned int nel;

unsigned int size;

int (*compar)();


	NARRATIVE


The bsearch function is a binary	search	function	generalized

from	Knuth	(6.2.1)	Algorithm	B. It returns a pointer into a

table indicating where a datum may be found.	The table must be

previously sorted in increasing order according to	a	provided

comparison function.


The	first	argument	points	to	the datum to be sought in the

table.	It should be of type	pointer-to-element	and	cast	to

type (char *).


The	second	argument	points to the element at the base of the

table.	It should be of type	pointer-to-element	and	cast	to

type (char *).


The third argument is the number of elements in the table.


The fourth argument is the size of each element in the table.


The	fifth	argument	is	the	name of the comparison function,

which is called with two arguments that point to	the	elements

being compared.	This	function	must	return an integer less

than, equal to, or greater than zero	according	as	the	first

argument	is	to	be considered less than, equal to, or greater

than the second.


	RETURN CODES


Bsearch returns a NULL pointer if the key is not in the table.


	NOTES


The	comparison	function	need	not	compare	every	byte,	so

arbitrary	data may be contained in the elements in addition to

the values being compared.


Although	declared	as	type	pointer-to-character,	the	value

returned should be cast into type pointer-to-element.


	&Page 8


	!680x0 C LIBRARY

	IDENTIFICATION


isalnum,	isalpha, isascii, iscntrl, isdigit, isgraph, islower,

isprint, ispunct, isspace, isupper, isxdigit, toascii, tolower,

toupper - character classification and transformation functions


	USAGE


#include <ctype.h>


int isalnum(c)

int c;


int isalpha(c)

int c;


int isascii(c)

int c;


int iscntrl(c)

int c;


int isdigit(c)

int c;


int isgraph(c)

int c;


int islower(c)

int c;


int isprint(c)

int c;


int ispunct(c)

int c;


int isspace(c)

int c;


int isupper(c)

int c;


int isxdigit(c)

int c;


int toascii(c)

int c;


int tolower(c)

int c;


int toupper(c)

int c;


	NARRATIVE


The following functions classify	ASCII-coded	integer	values.

	&Page 9


	!680x0 C LIBRARY


Each	is	a	predicate	returning	nonzero	for	true, zero for

false.	Isascii is defined on all integer values; the rest	are

defined	only	where isascii is true and on the non-ASCII value

EOF.

	isalnum	c is an alphanumeric character [0-9,A-Z,a-z]
	isalpha	c is a letter [A-Z,a-z]
	isascii	c is an ASCII character, code less than 0200
	iscntrl	c is a character, code 0177 or less than 040
	isdigit	c is a decimal digit [0-9]
	isgraph	c is a character, code 041 - 0176
	islower	c is a lower case letter [a-z]
	isprint	c is a character, code 040 - 0176
	ispunct	c is a punctuation character
	isspace	c is a space, tab, cr, nl, or ff
	isupper	c is an upper case letter [A-Z]
	isxdigit	c is a hexadecimal digit [0-9,A-F,a-f]


The following functions	transform	ASCII-coded	integer	value

ranges	into	other	ranges,	as specified by the definition of

each function.	Their arguments may be any integer values.	The

tolower and toupper functions may be called with arguments such

as *p++ without the danger of double evaluation experienced	by

macro implementations of these functions.

	toascii	(c & 0x7f)
	tolower	isupper(c) ? (c | 0x20) : c
	toupper	islower(c) ? (c & 0x5f) : c


	%Page 10


	!680x0 C LIBRARY

	IDENTIFICATION


close - close a file descriptor


	USAGE


int close(fildes)

int fildes;


	NARRATIVE


The	close	function	causes	a file descriptor obtained from a

creat or open function to be closed.	The	close	function	is

performed	automatically	on	all	open file descriptors by the

exit function.


Once a file descriptor has been closed,	it	is	available	for

re-use,	but it may not be closed again without being re-opened

by creat or open.

	RETURN CODES


This function returns zero if it successfully closes	the	file

descriptor	or	-1	if	fildes	is	not	a	valid	open	file

descriptor.	In the latter case, it also sets errno to indicate

the type of problem encountered.


	REFER TO


creat, open


	%Page 11


	!680x0 C LIBRARY

	IDENTIFICATION


ecvt, fcvt, gcvt - output conversion


	USAGE


char *ecvt(value, ndigit, decpt, sign) (not implemented)

double value;

int *decpt;

int *sign;

int ndigit;


char *fcvt(value, ndigit, decpt, sign) (not implemented)

double value;

int *decpt;

int *sign;

int ndigit;


char *gcvt(value, ndigit, buf) (not implemented)

char *buf;

double value;


	NARRATIVE


The ecvt function	converts	the	value	to	a	zero-terminated

string	of	ndigit	ASCII digits and returns a pointer thereto.

The position of the decimal point relative to the beginning	of

the	string	is stored indirectly through decpt (negative means

to the left of the returned digits).	If the sign of the result

is negative, the word pointed to by sign is nonzero,	otherwise

it is zero.	The low-order digit is rounded.


The fcvt function is identical to ecvt, except that the correct

digit has been rounded for floating-format output of the number

of digits specified by ndigits.


The gcvt function converts the value to a zero-terminated ASCII

string in	buf	and	returns	a pointer to buf.	It attempts to

produce ndigit significant	digits	in	floating-point	decimal

format	if possible, otherwise in exponential format, ready for

printing.	Trailing zeros may be suppressed.


	COMMENTS


The return	values	point	to	static	data	whose	content	is

overwritten by subsequent calls.


	%Page 12


	!680x0 C LIBRARY

	IDENTIFICATION


exit - terminate a process


	USAGE


void exit(status)

int status;


	NARRATIVE


The	function	exit	terminates	a	calling	process	with	the

following consequences:

	All of the file descriptors open in	the	calling	process
	are closed.

	Any	system	resources used temporarily by the process are
	released.

	The value of status is made	available	to	the	operating
	system.


Customarily,	a	zero	value	in	status	indicates	successful

completion of	the	process	and	a	non-zero	value	indicates

unsuccessful completion.


Since	the	exit function never returns to the calling process,

it has no return code.


	%Page 13


	!680x0 C LIBRARY

	IDENTIFICATION


fclose, fflush - close or flush a stream


	USAGE


int fclose(stream)

FILE *stream;


int fflush(stream)

FILE *stream;


	NARRATIVE


The fclose function causes any buffers for the named stream	to

be emptied,	and	the	file to be closed.	Buffers allocated by

the standard	input/output	system	are	freed.	The	fclose

function is performed automatically on all open stream files by

the exit function.


The	fflush	function	causes	any	buffered data for the named

output stream to be written to that file.	The	stream	remains

open.


	RETURN CODES


These	functions return EOF if stream is not associated with an

output file, or if buffered data cannot be transferred to	that

file.


	REFER TO


close, fopen, setbuf


	%Page 14


	!680x0 C LIBRARY

	IDENTIFICATION


ferror, feof, clearerr, fileno - stream status inquiries


	USAGE


int feof(stream)

FILE *stream;


int ferror(stream)

FILE *stream;


int clearerr(stream)

FILE *stream;


int fileno(stream)

FILE *stream;


	NARRATIVE


The ferror function returns non-zero when an error has occurred

reading or	writing	the	named stream, otherwise zero.	Unless

cleared by clearerr,	the	error	indication	lasts	until	the

stream is closed.


The	feof function returns non-zero when end of file is read on

the input stream, otherwise zero.


The clearerr	function	resets	the	error	indication	on	the

stream.


The	fileno	function	returns	the	integer	file	descriptor

associated with the stream.	See the	open	function	for	more

information.


These	functions	are	implemented	as	macros;	they cannot be

redeclared without first undef'ing the names.


	REFER TO


open, fopen


	%Page 15


	!680x0 C LIBRARY

	IDENTIFICATION


fgetc, fgets, getc, getchar, gets, getw - get unit from stream


	USAGE


int fgetc(stream)

FILE *stream;


char *fgets(s, n, stream)

FILE *stream;

char *s;

int n;


int getc(stream)

FILE *stream;


int getchar()


char *gets(s)

char *s;


int getw(stream) (not implemented)

FILE *stream;


	NARRATIVE


The getc function returns the next	character	from	the	named

input stream.


The getchar function is defined to be the following:
	getc(stdin)


The	fgetc	function	behaves	like	getc,	but	is	a	genuine

function, not a macro; it may be passed to another function.


The gets function reads a string into s from the standard input

stream stdin.	The string is terminated by a newline character,

which is replaced in s by a zero character.


The fgets function reads (n - 1) characters, up	to	a	newline

character,	whichever	comes	first,	from	the stream into the

string s.	The last character read into s is followed by a zero

character.


The gets function deletes the newline, while fgets keeps it.


The getw function returns the next word from	the	named	input

stream.	It returns the constant EOF upon end of file or error,

but since that is a valid integer value, feof and ferror should

be used	to	check	the	success	of getw.	The getw assumes no

special alignment in the file.


	COMMENTS


Because it is implemented as a	macro,	getc	treats	a	stream

argument with	side	effects	incorrectly.	In	particular,

	%Page 16


	!680x0 C LIBRARY


getc(*f++) does not work as expected.


	RETURN CODES


Most of these functions return the integer constant EOF at	end

of	file	or	upon	error,	rather than returning the character

read.


The gets	and	fgets	functions	normally	return	their	first

argument, but return NULL at end of file or error.


	REFER TO


fopen, fread, putc, puts, scanf, ungetc


	%Page 17


	!680x0 C LIBRARY

	IDENTIFICATION


fopen, freopen - open or close and reopen a stream


	USAGE


FILE *fopen(file_name, type)

char *file_name;

char *type;


FILE *freopen(file_name, type, stream)

FILE *stream;

char *file_name;

char *type;


	NARRATIVE


The	fopen	function	opens	the	file	named	by file_name and

associates a stream with it.	The	fopen	function	returns	a

pointer to the FILE structure associated with the stream.


File_name	points	to a character string that contains the name

of the file to be opened.


Type is a character string having one of the following values:

	"r" open input text
	"rb" open input binary
	"w" truncate or create text
	"wb" truncate or create binary
	"a" open output at eof, or create text
	"ab" open output at eof, or create binary


The freopen function substitutes the named file in place of the

open stream.	The original	stream	is	closed,	regardless	of

whether the	open	ultimately	succeeds.	The freopen function

returns	a	pointer	to	the	FILE	structure	associated	with

stream.


The	freopen function is typically used to attach the preopened

streams associated with	stdin,	stdout	and	stderr	to	other

files.


When	a file is opened for update, both input and output may be

done on the resulting stream.	However,	output	may	not	be

directly	followed	by	input	without	an intervening fseek or

rewind, and input	may	not	be	directly	followed	by	output

without	an	intervening	fseek,	rewind, or an input operation

which encounters end-of-file.


When a file is opened for append (for example, when type is "a"

or "ab"), it is impossible to overwrite information already	in

the file.	The	fseek	function may be used to reposition the

file pointer to any position in the file, but	when	output	is

written	to	the file, the current file pointer is disregarded.

All output is written at the end of the	file	and	causes	the

file pointer	to	be repositioned at the end of the output.	If

two separate processes open the	same	file	for	append,	each

	%Page 18


	!680x0 C LIBRARY


process may write freely to the file without fear of destroying

output being	written	by	the	other.	The output from the two

processes will be intermixed in the file in the order in	which

it is written.


	RETURN CODES


The fopen and freopen functions return the FILE pointer if they

succeed or a NULL pointer if they fail, in which case they also

set errno to indicate the nature of the problem.


	REFER TO


creat, fclose, fseek, open


	%Page 19


	!680x0 C LIBRARY

	IDENTIFICATION


fputc, fputs, putc, putchar, puts, putw - put item to a stream


	USAGE


int fputc(c, stream)

FILE *stream;

char c;


int fputs(s, stream)

FILE *stream;

char *s;


int putc(c, stream)

FILE *stream;

char c;


int putchar(c)

char c;


int puts(s)

char *s;


int putw(w, stream) (not implemented)

FILE *stream;

int w;


	NARRATIVE


The	putc	function appends the character c to the named output

stream.	It normally returns the character written, except,	in

case of error, it returns EOF.


The putchar(c) function is defined as putc(c, stdout).


The fputc function behaves like putc, but is a genuine function

rather than a macro, and may be passed to another function.


The	puts	function	copies the zero-terminated string s to the

standard output stream stdout and appends a newline character.


The fputs function copies the zero-terminated string s	to	the

named output stream.


The puts function appends a newline, while fputs does not.


Neither function copies the terminating zero character.


The putw	function	appends	word	w	to the output stream.	It

returns the word written.	The putw	function	neither	assumes

nor causes special alignment in the file.


	RETURN CODES


These functions return the constant EOF upon error.	Since this

is	a	valid	integer or extended signed value, errno should be

	%Page 20


	!680x0 C LIBRARY


used to detect errors.	In fact,	this	is	the	only	reliable

manner	in	which	to	determine	if errors were encountered in

putting the data to the stream.


	COMMENTS


Because it is implemented as a	macro,	putc	treats	a	stream

argument with side effects incorrectly.	In particular, putc(c,

*f++) doesn't work as expected.


	REFER TO


fclose, fopen, fread, getc, gets, printf


	%Page 21


	!680x0 C LIBRARY

	IDENTIFICATION


fread, fwrite - buffered binary input/output


	USAGE


int fread(ptr, size, nitems, stream)

FILE *stream;

char *ptr;

unsigned int nitems;

unsigned int size;


int fwrite(ptr, size, nitems, stream)

FILE *stream;

char *ptr;

unsigned int nitems;

unsigned int size;


	NARRATIVE


The	ptr	argument	is a pointer to a memory area into which to

place or retrieve the information to be read or written.


The size argument is typically coded	as	sizeof(*ptr)	or	its

equivalent;	it indicates the length of each item to be read or

written.


The nitems argument indicates the maximum number	of	items	of

length size to be read or written.


The stream argument is a file pointer normally obtained from an

fopen function call.


The	fread function reads into a block beginning at ptr at most

nitems of data of	the	type	of	*ptr	from	the	named	input

stream.


If	stream	is	stdin and the standard output is line buffered,

then any partial output line will be flushed before any call to

read to satisfy the fread.


The fwrite function appends at most nitems of data of the	type

of *ptr beginning at ptr to the named output stream.


	RETURN CODES


The	fread	and	fwrite	functions	return the actual number of

items read or written, or zero	to	indicate	end	of	file	or

error.


	REFER TO


fopen, getc, gets, printf, putc, puts, read, scanf, write


	%Page 22


	!680x0 C LIBRARY

	IDENTIFICATION


fseek, ftell, rewind - reposition a file pointer in a stream


	USAGE


int fseek(stream, offset, ptrname)

FILE *stream;

long offset;

int ptrname;


long ftell(stream)

FILE *stream;


void rewind(stream)

FILE *stream;


	NARRATIVE


The	fseek	function	sets	the	position	of the next input or

output operation on the stream.	The new	position	is	at	the

signed	distance	offset	bytes from the beginning, the current

position, or the end of the file, according as ptrname has	the

value 0, 1, or 2.


The fseek function undoes any effects of ungetc.


The	ftell	function	returns	the	current value of the offset

relative to the beginning of the file associated with the named

stream.	It is measured in	bytes	and	is	the	only	portable

manner in which to obtain an offset for fseek.


The rewind(stream) function is equivalent to the following:
	fseek (stream, 0L, 0)


	RETURN CODES


The	fseek	function	returns	-1 for improper seeks, otherwise

zero.


	REFER TO


fopen


	%Page 23


	!680x0 C LIBRARY

	IDENTIFICATION


getenv, putenv - environment variable processing


	USAGE


char *getenv(name)

char *name;


int putenv(string)

char *string;


	NARRATIVE


The getenv function searches the environment list for a	string

of	the	form	name=value	and	returns a pointer to the string

value if such a string is present.


The	putenv	function	expects	an	argument	of	the	form

"name=value".	It	alters	the	environment list such that the

environmental	variable	name	will	subsequently	have	the

specified value.	Since	it actually modifies the environment

list to point to string, the programmer must ensure that string

exists for the appropriate amount of time.


	RETURN CODES


If the getenv	function	cannot	locate	its	argument	in	the

environment list, it returns the value NULL.


If	the	putenv	function	cannot	modify	its	argument in the

environment list, it returns a non-zero	value;	otherwise,	it

returns a zero value.


	%Page 24


	!680x0 C LIBRARY

	IDENTIFICATION


getopt - get option letter from argument vector


	USAGE


extern char *optarg;

extern int optind;


int getopt (argc, argv, optstring)

char **argv;

char *optstring;

int argc;


	NARRATIVE


The getopt function returns the next option letter in argv that

matches a	letter	in	optstring.	The optstring is a string of

recognized option letters; if a letter is followed by a	colon,

the	option is expected to have an argument that may or may not

be separated from it by white space.	The	optarg	is	set	to

point	to	the	start	of	the	option	argument on return from

getopt.


The getopt places in optind the argv index of the next argument

to be processed.	Because optind is external,	it	is	normally

initialized	to	zero	automatically	before	the first call to

getopt.


When all options have been processed (i.e.,	up	to	the	first

non-option argument), getopt returns EOF. The special option --

may	be	used	to	delimit	the end of the options; EOF will be

returned, and -- will be skipped.


	RETURN CODES


The getopt prints an error message	on	stderr	and	returns	a

question	mark	(?)	when	it	encounters	an option letter not

included in optstring.


	EXAMPLE


The following code fragment shows how	one	might	process	the

arguments	for	a	command that can take the mutually exclusive

options a and b, and the options f and o, both of which require

arguments:

	main (argc, argv)
	int argc;
	char **argv;
	{
	int c;
	extern int optind;
	extern char *optarg;
	:
	:

	%Page 25


	!680x0 C LIBRARY

	:
	while ((c = getopt (argc, argv, "abf:o:")) != EOF)
	switch (c)
	{
	case 'a':
	 if (bflg)
	%errflg++;
	 else
	%aflg++;
	 break;
	case 'b':
	 if (aflg)
	%errflg++;
	 else
	%bproc();
	 break;
	case 'f':

	 break;
	case 'o':

	 le = optarg;
	 bufsiza = 512;
	 break;
	case '?':
	 errflg++;
	}
	if (errflg)
	{
	fprintf (stderr, "usage: . . . ");
	exit ;
	}
	for ( ; optind < argc; optind++)
	{
	if (access (argv[optind], 4))
	{
	:
	:
	:
	}


	%Page 26


	!680x0 C LIBRARY

	IDENTIFICATION


calloc, free, malloc, realloc, sbrk - memory allocation


	USAGE


char *calloc(nelem, elsize)

unsigned int elsize;

unsigned int nelem;


void free(ptr)

char *ptr;


char *malloc(size)

unsigned int size;


char *realloc(ptr, size)

char *ptr;

unsigned int size;


char *sbrk(size)

int size;


	NARRATIVE


The calloc, malloc, realloc, sbrk and free functions provide	a

general-purpose memory allocation facility.


The	malloc, realloc, sbrk, (calloc) functions return a pointer

to a block of at least size (nelem * elsize) bytes, aligned	to

an even	address	boundary.	Thus,	each	of these allocation

functions returns a pointer to	space	suitably	aligned	after

possible pointer casting for storage of any type of object.


The	argument	to	free	is	a	pointer	to	a block previously

allocated by calloc, malloc, or realloc (not sbrk).	This space

is made available for further allocation.	The	contents	of	a

freed area of memory must not be accessed.


The memory-allocation facility maintains multiple lists of free

blocks according to size, allocating space from the appropriate

list.	Needless to say, severe malfunctions will result if the

space assigned by calloc, malloc, realloc, or sbrk is corrupted

or if an address is provided to the free function which was not

the result obtained from one of the	allocation	functions,	as

described above.


The	facility	calls	the sbrk frunction to request more memory

from the system when there is no suitable space	already	free.

The	sbrk	function may be used directly by the programmer, but

space provided by it may not be freed.


The realloc function changes the size of the block	pointed	to

by	ptr	to	size	bytes and returns a pointer to the (possibly

moved) block.	The contents will normally be	unchanged	up	to

the lesser	of	the	new	and old sizes.	However, when realloc

fails and returns NULL, the memory	being	reallocated	may	be

corrupted.

	%Page 27


	!680x0 C LIBRARY


The	calloc	function	allocates	space	for	an array of nelem

elements of size elsize.	The space is initialized to zeros.


	RETURN CODES


All of these functions return a pointer to the requested memory

area if they succeed (except free,	which	returns	no	value).

This	(char	*)	pointer	should	be cast into a pointer of the

appropriate type, if necessary.


The malloc, realloc, and calloc functions return a NULL pointer

value if the amount of memory available is insufficient for the

request or if the memory allocation lists have been	detectably

corrupted.


The	sbrk	function	returns -1 if the requested amount exceeds

the actual amount of memory available for allocation	from	the

system.	Since	-1	is of type int, not pointer, the result of

sbrk must be cast into a pointer of the appropriate type,	then

cast to type int.


	%Page 28


	!680x0 C LIBRARY

	IDENTIFICATION


max, min - integer maximum and minimum values


	USAGE


int max(i, j)

int i;

int j;


int min(i, j)

int i;

int j;


	NARRATIVE


The	max	(min)	function returns the larger (smaller) value of

its two arguments.


The max	function	is	defined	in	a	manner	similar	to	the

following:
	((i >= j) ?	i : j);


The	min	function	is	defined	in	a	manner	similar	to the

following:
	((i <= j) ?	i : j);


	%Page 29


	!680x0 C LIBRARY

	IDENTIFICATION


memccpy,	memchr,	memcmp,	memcpy,	memget,	memmov,	memput,

memrchr, memrev, memset, memtrans - memory operations


	USAGE


char *memccpy(s1, s2, c, n)

char *s1;

char *s2;

int c;

int n;


char *memchr(s, c, n)

char *s;

int c;

int n;


int memcmp(s1, s2, n)

char *s1;

char *s2;

int n;


char *memcpy(s1, s2, n)

char *s1;

char *s2;

int n;


char *memmov(s1, s2, n)

char *s1;

char *s2;

int n;


char *memrchr(s, c, n)

char *s;

int c;

int n;


char *memrev(s1, s2, n)

char *s1;

char *s2;

int n;


char *memset(s, c, n)

char *s;

int c;

int n;


char *memtrans(s1, s2, from, to, n)

char *from;

char *s1;

char *s2;

char *to;

int n;


	NARRATIVE


These	functions	operate on memory areas (arrays of characters

	%Page 30


	!680x0 C LIBRARY


specified by a count, not	necessarily	terminated	by	a	zero

character).	The programmer is responsible for ensuring against

the overflow of receiving memory areas.


The memccpy function copies characters from memory area s2 into

s1, stopping after the first occurrence of character c has been

copied, or after n characters have been copied, whichever comes

first.	It returns a pointer to the character after the copy of

c	in	s1,	or a NULL pointer if c was not found in the first n

characters of s2.


The memchr (memrchr) function returns a pointer	to	the	first

(last)	occurrence	of character c in the first n characters of

memory area s, or a NULL pointer if c does not occur.


The memcmp function compares	its	arguments,	looking	at	the

first	n	characters	only,	and	returns an integer less than,

equal	to,	or	greater	than	0,	according	as	s1	is

lexicographically less than, equal to, or greater than s2.


The	memcpy function copies n characters from memory area s2 to

s1.	It returns a pointer to s1.


The memmov function copies n characters from memory area s2	to

s1.	It returns a pointer to (s1 + n).


The	memrev	function copies n characters in reverse order from

memory area s2 to s1.	It returns a pointer to s1.


The memset function sets the first n characters in memory	area

s to the value of character c.	It returns a pointer to s.


The	memtrans	function copies n characters from memory area s2

to s1, translating characters in the string pointed to by	from

to corresponding characters in the string pointed to by to.	It

returns a pointer to s1.


	COMMENTS


The	memcmp function uses native character comparison, which is

signed on some implementations and unsigned on others.


Character	movement	is	performed	differently	in	different

implementations.	Thus, overlapping moves are not portable.


	%Page 31


	!680x0 C LIBRARY

	IDENTIFICATION


frexp, ldexp, modf - split into mantissa and exponent


	USAGE


#include <math.h>


double frexp(value, eptr) (not implemented)

double value;

int *eptr;


double ldexp(value, exp) (not implemented)

double value;

int exp;


double modf(value, iptr) (not implemented)

double *iptr;

double value;


	NARRATIVE


The	frexp function returns the mantissa of a double value as a

double quantity, x, of magnitude less than or equal	to	1	and

stores	an	integer	n such that value = x*n indirectly through

eptr.


The ldexp returns the quantity value * exp.


The modf returns the positive	fractional	part	of	value	and

stores the integer part indirectly through iptr.


	RETURN VALUE


If	ldexp	would cause overflow, HUGE is returned (according to

the sign of value) and errno is set	to	[ERANGE].	If	ldexp

would	cause	underflow,	zero	is	retuned and errno is set to

[ERANGE].


	%Page 32


	!680x0 C LIBRARY

	IDENTIFICATION


open, creat - open a binary file for reading or writing


	USAGE


int creat(file_name, mode)

char *file_name;

int mode;


int open(file_name, oflag)

char *file_name;

int oflag;


	NARRATIVE


The creat function creates the	file	named	by	file_name	and

returns a file descriptor associated with it.


The	open function opens or creates the file named by file_name

and returns a file descriptor associated with it.


The oflag argument is interpreted as follows:

	O_APPEND open for append only.
	O_CREAT open for writing only.
	O_RDONLY open for reading only.
	O_WRONLY open for writing only.


When a file is opened for append (when oflag is	O_APPEND),	it

is	impossible	to	overwrite	information already in the file.

All output is written at the end of the	file	and	causes	the

file pointer	to	be repositioned at the end of the output.	If

two separate processes open the	same	file	for	append,	each

process may write freely to the file without fear of destroying

output being	written	by	the	other.	The output from the two

processes will be intermixed in the file in the order in	which

it is written.


	RETURN CODES


The creat and open functions return a file descriptor, which is

a non-negative	number,	or -1 on failure.	In case an error is

encountered, errno is set to indicate the type of problem.


	REFER TO


close


	%Page 33


	!680x0 C LIBRARY

	IDENTIFICATION


printf, fprintf, sprintf - formatted output conversion


	USAGE


int printf(format [, arg ] ... )

char *format;


int fprintf(stream, format [, arg ] ... )

FILE *stream;

char *format;


int sprintf(s, format [, arg ] ... )

char *format;

char *s;


	NARRATIVE


The printf function places output on the standard output stream

stdout.	The fprintf function places output on the named output

stream.	The sprintf function places output in	the	string	s,

followed by the terminating zero character.


Each	of	these	functions	converts,	formats,	and prints its

arguments after the first under control of the first	argument.

The	first	argument	is	a character string which contains two

types of objects: plain characters, which are simply copied	to

the output stream, and conversion specifications, each of which

causes conversion and printing of the next successive arg.


Each	conversion	specification	is introduced by the character

%.	Following the %, there may be the following:

	zero or more	flags,	which	modify	the	meaning	of	the
	conversion specification;

	an optional minus sign '-' which specifies left adjustment
	of the converted value in the indicated field;

	an	optional digit string specifying a field width; if the
	converted value has fewer characters than the field	width
	it	will	be	blank-padded	on	the left (or right, if the
	left-adjustment indicator has been given) to make	up	the
	field	width;	if	the	field	width	begins	with a zero,
	zero-padding will be done instead of blank-padding;

	an optional period '.' which serves to separate the	field
	width from the next digit string;

	an	optional	digit	string	specifying	a precision which
	specifies the number of digits to appear after the decimal
	point, for e- and f- conversion, or the maximum number	of
	characters to be printed from a string;

	the	character l specifying that a following d, o, x, or u
	corresponds to a long integer arg.


	%Page 34


	!680x0 C LIBRARY

	a character which indicates the type of conversion	to	be
	applied.


A	field	width	or	precision	may	be	'*' instead of a digit

string.	In this case an integer arg supplies the	field	width

or precision.


The flag characters and their meanings are as follows:

	-	The	result	of	the	conversion will be left-justified
	within the field.

	+ The result of a signed conversion will always begin with
	a sign (+ or -).

	blank If the first character of a signed conversion is not
	a sign, a blank will	be	prepended	to	the	result.
	This	implies	that	if	the	blank	and + flags both
	appear, the blank flag will be ignored.

	# The value is to be converted to an alternate form.	For
	c,	d,	s	and u conversions, the flag has no effect.
	For o conversions,	it	increases	the	precision	to
	force	the	first	digit	of the result to be a zero.
	For x or X conversions, a non-zero result	will	have
	0x or	0X	prepended	to	it.	For e, E, f, g and G
	conversions, the result will always contain a decimal
	point, even if no digits follow the point.	A decimal
	point	usually	appears	in	the	result	of	these
	conversions only	if a digit follows it.	For g and G
	conversions, trailing zeroes will not be removed from
	the result as they usually are.


The conversion characters and their meanings are as follows:

	dox The integer arg is converted	to	decimal,	octal,	or
	hexadecimal notation respectively.

	f The float or double arg is converted to decimal notation
	in	the	style	'[-]ddd.ddd'	where the number of d's
	after the decimal point is	equal	to	the	precision
	specification for	the argument.	If the precision is
	missing, 6 digits are	given;	if	the	precision	is
	explicitly	0,	no	digits	and	no decimal point are
	printed.

	e The float or	double	arg	is	converted	in	the	style
	'[-]d.ddde+/-dd'	where there is one digit before the
	decimal point and the number after is	equal	to	the
	precision	specification	for	the argument; when the
	precision is missing, 6 digits are produced.

	g The float or double arg is printed in style d, in	style
	f, or	in	style	e.	The style used depends on the
	value converted style: style e will be used	only	if
	the	exponent	resulting	from the conversion is less
	than -4 or greater	than	the	precision.	Trailing
	zeroes are	removed from the result.	A decimal point
	appears only if it is followed by a digit.


	%Page 35


	!680x0 C LIBRARY

	c The character arg is printed.

	s Arg is taken to be	a	string	(character	pointer)	and
	characters	from	the string are printed until a null
	character or until the number of characters indicated
	by the precision specification is reached; however if
	the precision is zero or missing all characters up to
	a null are printed.

	u The unsigned integer arg is	converted	to	decimal	and
	printed (the result will be in the range zero through
	MAXUINT,	where MAXUINT equals 4294967295 on a 32-bit
	and 65535 on 16-bit machines).

	% Print a '%'; no argument is converted.


In no case does a	non-existent	or	small	field	width	cause

truncation	of	a	field;	padding	takes	place	only	if	the

specified field width exceeds the	actual	width.	Characters

generated by printf are printed by putc.


For example:

	To	print	a	date	and	time in the form 'Sunday, July 3,
	10:02',	where	weekday	and	month	are	pointers	to
	zero-terminated strings, use the following format:

	printf("%s,	%s	%d, %02d:%02d", weekday, month, day,
	hour, min);


	RETURN CODES


The printf, fprintf, and sprintf functions return the number of

characters transmitted, not including the zero, in the case	of

sprintf,	or	return	value	EOF	if	an	output	error	was

encountered.


	REFER TO


putc, scanf


	%Page 36


	!680x0 C LIBRARY

	IDENTIFICATION


qsort - quicker internal sort


	USAGE


void qsort(base, nel, width, compar)

char *base;

int (*compar)();

unsigned int nel;

unsigned int width;


	NARRATIVE


The qsort function is an	implementation	of	the	quicker-sort

algorithm by Knuth.


The first	argument	is a pointer to the base of the table.	It

should be of type pointer-to-element, cast to type (char *).


The second is the number of elements.


The third is the width of an element in bytes.


The fourth is the name of the comparison function to be	called

with	two	arguments	which	are pointers to the elements being

compared.	The comparison function must return an integer	less

than,	equal	to,	or	greater than zero according as its first

argument is to be considered less than, equal	to,	or	greater

than the second.


The	sorted	order	of	two	elements	which	compare	equal is

unpredictable.


	%Page 37


	!680x0 C LIBRARY

	IDENTIFICATION


rand, srand - random number generator


	USAGE


void srand(seed)

int seed;


int rand()


	NARRATIVE


The rand function uses	a	multiplicative	congruential	random

number	generator	with	period	2**32	to	return	successive

pseudo-random numbers in the range from zero to 2**31-1.


The generator may be (re)initialized by calling srand with 1 as

an argument.	It can be set	to	a	random	starting	point	by

calling srand with whatever is desired as argument.


	%Page 38


	!680x0 C LIBRARY

	IDENTIFICATION


read, write - unbuffered binary input/output


	USAGE


int read(fildes, ptr, nbytes)

char *ptr;

int fildes;

unsigned int nbytes;


int write(fildes, ptr, nbytes)

char *ptr;

int fildes;

unsigned int nbytes;


	NARRATIVE


The fildes argument is a file descriptor normally obtained from

a creat or open function call.


The	ptr	argument	is a pointer to a memory area into which to

place or retrieve the information to be read or written.


The nbytes argument indicates the maximum number of bytes to be

read or written.


The read function attempts to read nbyte bytes	from	the	file

associated with fildes into the buffer pointed to by ptr.


The	write	function	attempts to write nbyte bytes to the file

associated with fildes from the buffer pointed to by ptr.


	RETURN CODES


The read	and	write	functions	return	the	number	of	bytes

actually read or written.	In case of error, they return -1 and

set errno to indicate the type of error encountered.


	REFER TO


fread, fwrite, open


	%Page 39


	!680x0 C LIBRARY

	IDENTIFICATION


rename - change the name of a file


	USAGE


rename(from, to)

char *from;

char *to;


	NARRATIVE


The	rename function causes the file named "from" to be renamed

as "to". If "to" exists, then it is first removed.	Both "from"

and "to" must reside on the same file system.


The rename function guarantees that the "to" file	will	always

exist,	even	if	the	system should crash in the middle of the

operation.


	RETURN CODES


The rename function returns zero	if	the	operation	succeeds;

Otherwise	the	rename	function returns -1 and errno is set to

indicate the reason for the failure, as follows:

	[ENOTDIR] A component of	either	path	prefix	is	not	a
	directory.

	[ENOENT] A component of the from path does not exist, or a
	path prefix of to does not exist.

	[EACCES]	A	component of either path prefix denies search
	permission.

	[EPERM] The to file exists.

	[EACCES]	The	requested	link	requires	writing	in	a
	directory with a mode that denies write permission.

	[EROFS] The requested link requires writing in a directory
	on a read-only file system.

	[EFAULT]	The	path points outside the process's allocated
	address space.

	[ENAMETOOLONG] A component	of	either	pathname	was	too
	long.

	[ENOTDIR]	The	from	is	a	directory,	but	to	is not a
	directory.

	[EISDIR] The	to	is	a	directory,	but	from	is	not	a
	directory.

	[ENOSPC] The directory in which the entry for the new name
	is	being	placed cannot be extended because there is

	%Page 40


	!680x0 C LIBRARY

	no space left	on	the	file	system	containing	the
	directory.

	[EDQUOT] The directory in which the entry for the new name
	is being placed cannot be extended because the user's
	quota	of	disk	blocks on the file system containing
	the directory has been exhausted.

	[EIO] An	input/output	error	occurred	while	making	or
	updating a directory entry.


	%Page 41


	!680x0 C LIBRARY

	IDENTIFICATION


scanf, fscanf, sscanf - convert formatted input


	USAGE


int scanf(format [ , pointer ] ... )

char *format;


int fscanf(stream, format [ , pointer ] ... )

FILE *stream;

char *format;


int sscanf(s, format [ , pointer ] ... )

char *s, *format;


	NARRATIVE


The	scanf function reads from the standard input stream stdin.

The fscanf function reads from the named	input	stream.	The

sscanf function	reads	from	the	character	string	s.	Each

function reads	characters,	interprets	them	according	to	a

format, and stores the results in its arguments.	Each expects,

as	arguments,	a	control string format described below, and a

set of pointer arguments indicating where the	converted	input

should be stored.


The	control string usually contains conversion specifications,

which are used to direct	interpretation	of	input	sequences.

The control string may contain the following:

	White-space	characters	(blanks,	tabs,	new-lines,	or
	formfeeds)	which,	except	in	two	cases	described
	below,	cause	input	to	be	read	up	to	the	next
	non-white-space character.

	An ordinary character (not %), which must match	the	next
	character of the input stream.

	Conversion	specifications, consisting of the character %,
	an optional assignment suppressing	character	*,	an
	optional	numerical	maximum field width, an optional
	character l or h indicating the size of the receiving
	variable, and a conversion code.


A conversion specification directs the conversion of	the	next

input field; the result is placed in the variable pointed to by

the	corresponding	argument, unless assignment suppression was

indicated by *. The suppression of assignment provides a way of

describing an input field which is to be	skipped.	An	input

field	is	defined	as	a	string	of	non-space characters; it

extends to the next inappropriate character or until the	field

width, if	specified, is exhausted.	For all descriptors except

'[' and 'c', white space leading an input field is ignored.


The conversion code indicates the interpretation of	the	input

field.	The corresponding pointer argument must usually be of a

restricted type.	For a suppressed field, no pointer argument

	%Page 42


	!680x0 C LIBRARY


is given.	The following conversion codes are legal:

	% a single % is expected; no assignment is done.

	d	a	decimal	integer	is	expected;	the	corresponding
	argument should be an integer pointer.

	u	an	unsigned	decimal	integer	is	expected;	the
	corresponding argument should be an unsigned	integer
	pointer.

	o an octal integer is expected; the corresponding argument
	should be an integer pointer.

	x a	hexadecimal	integer	is expected.	The corresponding
	argument should be an integer pointer.

	e,f,g a floating point number is expected; the next	field
	is	converted	accordingly	and	stored	through	the
	corresponding argument, which should be a pointer	to
	a float.	The input format for floating point numbers
	is	an	optionally	signed string of digits, possibly
	containing a decimal point, followed by	an	optional
	exponent	field	consisting of an E or an e, followed
	by an	optional	+,	-,	or	space,	followed	by	an
	integer.

	s	a	character	string	is	expected;	the	corresponding
	argument should be a character pointer pointing to an
	array of characters large enough to accept the string
	and	a	terminating	zero,	which	will	be	added
	automatically.	The	input	field is terminated by a
	white-space character.

	c a character	is	expected;	the	corresponding	argument
	should be	a character pointer.	The normal skip over
	white space is suppressed in this case; to	read	the
	next	non-space	character, use %1s. If a field width
	is given, the corresponding argument should refer	to
	a character array; the indicated number of characters
	is read.

	[	indicates	string data and the normal skip over leading
	white space is	suppressed.	The	left	bracket	is
	followed	by	a set of characters, which we will call
	the scanset, and a right bracket; the input field	is
	the	maximal	sequence of input characters consisting
	entirely of	characters	in	the	scanset.	The
	circumflex	(^),	when	it	appears	as	the	first
	character in the	scanset,	serves	as	a	complement
	operator	and redefines the scanset as the set of all
	characters not contained	in	the	remainder	of	the
	scanset string.	There are some conventions used in
	the construction	of	the	scanset.	A	range	of
	characters	may	be	represented	by	the	construct
	first-last,	thus	[0123456789]	may	be	expressed
	[0-9].	Using	this	convention,	first	must	be
	lexically less than or equal to	last,	or	else	the
	dash will stand for itself.	The dash will also stand
	for	itself	whenever	it	is	the	first or the last

	%Page 43


	!680x0 C LIBRARY

	character in the	scanset.	To	include	the	right
	square	bracket as an element of the scanset, it must
	appear as the first character (possibly preceded by a
	circumflex) of the scanset, and in this case it	will
	not	be	syntactically	interpreted	as	the	closing
	bracket.	The corresponding argument must point to	a
	character	array	large enough to hold the data field
	and	the	terminating	zero,	which	will	be	added
	automatically.	At least one character must match for
	this conversion to be considered successful.


The	conversion	characters d, u, o, and x may be preceded by l

or h to indicate that a pointer to long or to short rather than

to int is in the argument	list.	Similarly,	the	conversion

characters	e,	f, and g may be capitalized or preceded by l to

indicate that a pointer to double rather than to	float	is	in

the argument	list.	The l or h modifier is ignored for other

conversion characters.


The function conversion terminates at EOF, at the	end	of	the

control	string,	or when an input character conflicts with the

control string.	In the latter case, the offending character is

left unread in the input stream.


The scanf function returns the number of	successfully	matched

and	assigned input items; this number can be zero in the event

of an early conflict between an input character and the control

string.	If	the	input	ends	before	the	first	conflict	or

conversion, EOF is returned.


	EXAMPLES


The following call:

	int i, n;
	char name[50];
	n = scanf("%d%s", &i, name);


with the input line:

	25 thompson


will	assign to n the value 2, to i the value 25, and name will

contain thompson\0.

	int i;
	char name[50];
	(void) scanf("%2d%*d %[0-9]", &i, name);


with input:

	56 0123 56a72


will assign 56 to i, skip 0123, and place the	string	56\0	in

name.	The next call to getchar will return the character a.


	NOTE


	%Page 44


	!680x0 C LIBRARY


Trailing	white-space	(including	a	new-line)	is left unread

unless matched in the control string.


	COMMENTS


The success of literal matches and	suppressed	assignments	is

not directly determinable.


	RETURN CODES


These	functions	return	EOF on end of input and a short count

for missing or illegal data items.


	REFER TO


getc, printf


	%Page 45


	!680x0 C LIBRARY

	IDENTIFICATION


setbuf - modify buffering on a stream


	USAGE


int setbuf(stream, buf)

FILE *stream;

char *buf;


	NARRATIVE


The three types of buffering available	are	unbuffered,	block

buffered, and	line	buffered.	When	an	output	stream	is

unbuffered, information appears	on	the	destination	file	or

terminal	as	soon	as written; when it is block buffered, many

characters are saved up and written as a block; when it is line

buffered,	characters	are	saved	up	until	a	newline	is

encountered or input is read from stdin.


The	fflush	function may be used to force the block out early.

Normally, all files are block buffered.	If the standard stream

stdout refers to a terminal it is line buffered.	The	standard

stream stderr is always unbuffered.


The	setbuf function is used after a stream has been opened but

before it is read or written.	The character array buf is	used

instead of	an	automatically	allocated buffer.	If buf is the

constant pointer NULL, input/output	will	be	unbuffered.	A

constant BUFSIZ tells how big an array is needed.


For example,

	char buf[BUFSIZ];


By default, output to a terminal is line buffered and all other

input/output is fully buffered.


A file can be changed from unbuffered or line buffered to block

buffered by	using	freopen.	A file can be changed from block

buffered or	line	buffered	to	unbuffered	by	using	freopen

followed by setbuf with a buffer argument of NULL.


	REFER TO


fclose, fopen, fread, getc, malloc, printf, putc, puts


	%Page 46


	!680x0 C LIBRARY

	IDENTIFICATION


index,	rindex,	strcat,	strchr,	strcmp,	strcpack, strcpbrk,

strcpy, strcspn, strctrim, strend, strfield,	strfind,	strkey,

strlen,	strmov,	strncat,	strncmp, strncpy, strnend, strnlen,

strnmov, strnrev, strnrpt, strntran, strpack, strpbrk, strpref,

strrchr, strrepl,	strrev,	strrpt,	strspn,	strsuff,	strtok,

strtran, strtrim, substr - string operations


	USAGE


char *index(s, c)

char *s;

int c;


char *rindex(s, c)

char *s;

int c;


char *strcat(s1, s2)

char *s1;

char *s2;


char *strchr(s, c)

char *s;

int c;


int strcmp(s1, s2)

char *s1;

char *s2;


char *strcpack(s1, s2, set, c)

char *s1;

char *s2;

char *set;

int c;


char *strcpbrk(s1, set)

char *s1;

char *set;


char *strcpy(s1, s2)

char *s1;

char *s2;


int strcspn(s1, s2)

char *s1;

char *s2;


char *strctrim(s1, s2, set, ends)

char *s1;

char *s2;

char *set;

int ends;


char *strend(s)

char *s;


	%Page 47


	!680x0 C LIBRARY


char *strfield(s, fields, chars, blanks, tabch)

char *s;

int blanks;

int chars;

int fields;

int tabch;


char *strfind(s1, s2)

char *s1;

char *s2;


char *strkey(s1, s2, s3, opt)

char *opt;

char *s1;

char *s2;

char *s3;


int strlen(s)

char *s;


char *strmov(s1, s2)

char *s1;

char *s2;


char *strncat(s1, s2, n)

char *s1;

char *s2;


int strncmp(s1, s2, n)

char *s1;

char *s2;

int n;


char *strncpy(s1, s2, n)

char *s1;

char *s2;

int n;


char *strnend(s, n)

char *s;

int n;


int strnlen(s, n)

char *s;

int n;


char *strnmov(s1, s2, n)

char *s1;

char *s2;

int n;


char *strnrev(s1, s2, n)

char *s1;

char *s2;

int n;


char *strnrpt(s1, n, s2, k)

char *s1;

char *s2;

int n;

	%Page 48


	!680x0 C LIBRARY


int k;


char *strntran(s1, s2, n, from, to)

char *from;

char *s1;

char *s2;

char *to;

int n;


char *strpack(s1, s2, set, c)

char *s1;

char *s2;

char *set;

int c;


char *strpbrk(s1, set)

char *s1;

char *set;


char *strpref(s1, s2)

char *s1;

char *s2;


char *strrchr(s, c)

char *s;

int c;


char *strrepl(s1, s2, pat, rep, n)

char *pat;

char *rep;

char *s1;

char *s2;

int n;


char *strrev(s1, s2)

char *s1;

char *s2;


char *strrpt(s1, s2, n)

char *s1;

char *s2;

int n;


int strspn(s1, s2)

char *s1;

char *s2;


char *strsuff(s1, s2)

char *s1;

char *s2;


char *strtok(s1, s2)

char *s1;

char *s2;


char *strtrans(s1, s2, from, to)

char *from;

char *s1;

char *s2;

char *to;

	%Page 49


	!680x0 C LIBRARY


char *strtrim(s1, s2, set, ends)

char *s1;

char *s2;

char *set;

int ends;


char *substr(s1, s2, offset, n)

char *s1;

char *s2;

int n;

int offset;


	NARRATIVE


The	arguments	s1,	s2, and s normally point to C-type strings

(arrays of characters terminated by a zero character).	Most of

the functions specified above with	arguments	s1	and	s2	all

modify the	contents	of	s1.	It	is	the	programmer's

responsibility to ensure against overflow of the allocated area

pointed to by s1.


The strcat function appends a copy of string s2 to the	end	of

string s1.	The strncat function copies at most n characters.

Both return a pointer to the zero-terminated result pointed	to

by s1.


The	strcmp	function	compares	its	arguments	and returns an

integer greater than, equal to, or less than 0, according as s1

is lexicographically greater than, equal to, or less	than	s2.

The	strncmp	function	makes the same comparison but checks no

more than n characters.


The strcpy function copies string s2 to s1, stopping after	the

zero character	has	been	copied.	The strncpy function copies

exactly n characters, truncating s2 or adding	zero	characters

to the	contents	of	s1	if necessary.	The result will not be

zero-terminated if the length	of	s2	is	n	or	more.	Both

functions return s1.


The strmov and strnmov functions perform the same operations as

the	strcpy	and	strncpy	functions,	except	that they return

pointers to the last character transferred into s1;	this	will

normally be the zero character.


The strrev and strnrev functions perform the same operations as

the	strrev	and	strnrev	functions, except that they move the

characters in reverse order.


The strlen function returns the number of characters in s,	not

including the terminating zero character.	The strnlen function

does the same, except it checks only n characters.


The strend function returns a pointer to (s + strlen(s)).


The strnend function returns a pointer to (s + strnlen(s, n)).


The	strchr	(strrchr)	function returns a pointer to the first

(last) occurrence of character c in string s, or a NULL pointer

if c	does	not	occur	in	string	s.	The	zero	character

	%Page 50


	!680x0 C LIBRARY


terminating a string is considered to be part of the string.


The	index	and rindex functions are defined to be identical to

the strchr and strrchr functions, repectively.


The strfind function returns a pointer to the first	occurrence

of string pat in string s, or returns NULL.


The	strpack	(strcpack)	function copies characters from s2 to

s1, stopping when it finds a zero.	If c	is	zero,	characters

(not) in	the	set	are	not	copied	to s1.	If c is not zero,

sequences of characters (not) in the set are copied as a single

character c.	Both functions	return	a	pointer	to	the	zero

character that terminates s1.


The	strpbrk (strcpbrk) function returns a pointer to the first

character of the string pointed to by s1 which does	not	occur

in the string pointed to by set.	It relies on zero never being

in a set.	If the search fails, it returns NULL.


The strspn (strcspn) function returns the length of the longest

prefix	of	the	string pointed to by s1 consisting entirely of

characters which are (not) in the	string	pointed	to	by	s2.

Zero is considered to be part of the string pointed to by s2.


The strtrim (strctrim) function copies the string pointed to by

s2	to the string pointed to by s1, skipping leading characters

(not) in the string pointed to by	set	if	ends	<=	zero	and

skipping	trailing characters (not) in the string pointed to by

set if ends >= zero.	Both functions return a	pointer	to	the

string pointed to by s1.


The strfield function is based on the key specifications of the

sort command.	Following is a description of each argument:

	fields is	the	number	of	fields	to	skip	over.	It
	corresponds to m in -m.n or +m.n . There must be at	least
	this	many	fields, and only the last may be terminated by
	zero.

	chars is the number of characters to skip after the fields
	have been skipped.	At least this many non-zero characters
	must remain after the fields have been skipped.	Note that
	it is entirely possible for this skip to cross one or more
	field boundaries.	This corresponds to n in +m.n or -m.n.

	if blanks is nonzero, layout characters will	be	skipped.
	This corresponds to the letter b in +2.0b.

	tabch	corresponds to 'x' in -t'x'. If it is zero, a field
	is leading layout (spaces,	tabs,	etc.)	followed	by	at
	least	one	non-layout character, and is terminated by the
	next layout character or zero.	If it is not zero, a field
	is terminated by tabch or zero.


The result is NULL if the source ran out of fields or	ran	out

of characters.	Otherwise	it	is	a	pointer	to	the	first

character of s which was not skipped.	It is quite possible for

this character to be the terminating zero.


	%Page 51


	!680x0 C LIBRARY


The strkey function copies (s3 - s2) characters from string	s2

to string s1 according to the opt string.	It is intended to be

used	in	the	sort	program, in coordination with the strfield

function.	It returns a pointer to s1.


The strpref function determines whether or not s2 is	a	prefix

of s1.	If it is not, the function returns NULL.	If it is, the

function	returns	a pointer to the first character of s1 after

the prefix (s1 + strlen(s2)).


The strsuff function determines whether or not s2 is	a	suffix

of s1.	If it is not, the function returns NULL.	If it is, the

function	returns a pointer to the character of s1 starting the

suffix (s1 + strlen(s1) - strlen(s2)).


The strrpt function repeats string s2 into string s1	k	times.

The	strnrpt function repeats string s2 into string s1 k times,

but truncates the result	at	n	characters.	Both	functions

return a pointer to s1.


The	strtran function copies characters from the string pointed

to by s2 to the string pointed to by s1, translating characters

in the string pointed to by from to corresponding characters in

the string pointed to by to.	The	strntran	function	copies

characters	from	the	string	pointed	to	by s2 to the string

pointed to by s1, translating characters in the string	pointed

to by from to corresponding characters in the string pointed to

by to.	Both functions return a pointer to s1.


The	function	strrepl	copies	string	s2 to s1, replacing the

first n non-overlapping instances of string pat by	the	string

rep.	It returns a pointer to s1.


The	strpbrk function returns a pointer to the first occurrence

in string s1 of any character from string s2, or a NULL pointer

if no character from s2 exists in s1.


The strspn (strcspn) function returns the length of the initial

segment of string s1 which consists entirely of characters from

(not from) string s2.


The strtok function considers the string s1	to	consist	of	a

sequence	of zero or more text tokens separated by spans of one

or more characters from the separator string	s2.	The	first

call (with pointer s1 specified) returns a pointer to the first

character	of	the	first	token,	and	will have placed a zero

character into s1 immediately	following	the	returned	token.

The	function keeps track of its position in the string between

separate calls, so that subsequent calls (which	must	be	made

with	the	first argument a NULL pointer) will work through the

string s1 immediately following	that	token.	In	this	way,

subsequent	calls	will progress through the string s1 until no

tokens remain.	The separator string s2 may be	different	from

call to	call.	When no token remains in s1, a NULL pointer is

returned.


The substr function copies	up	to	n	bytes	from	the	string

pointed to by (s2 + offset) to the string pointed to by s1.	If

the	offset is negative, it has the same effect as zero, and if

it exceeds strlen(s2), it has the same	effect	as	strlen(s2).

	%Page 52


	!680x0 C LIBRARY


After	the	substring of s2 is moved to s1, a zero character is

moved to terminate the string.	The function retuns	a	pointer

to this zero character.


	COMMENTS


The	strcmp	and	strncmp	functions	use	native	character

comparison,	which	is	signed	on	some	implementations	and

unsigned on others.


Character	movement	is	performed	differently	in	different

implementations.	Thus, overlapping moves are not portable.


	%Page 53


	!680x0 C LIBRARY

	IDENTIFICATION


ungetc - push character back into input stream


	USAGE


int ungetc(c, stream)

FILE *stream;

int c;


	NARRATIVE


The ungetc function pushes the character c	back	on	an	input

stream.	That character will be returned by the next getc call

on that stream.


One character of pushback is guaranteed provided something	has

been	read from the stream and the stream is actually buffered.

Attempts to push EOF are rejected.


The	fseek	function	erases	all	memory	of	pushed	back

characters.


	RETURN CODES


The	ungetc	function	returns	returns its argument, unless it

cannot push a character back, in which case it returns EOF.


	REFER TO


fseek, getc, setbuf


	%Page 54


	!680x0 C LIBRARY

	IDENTIFICATION


unlink - remove directory entry


	USAGE


int unlink(path)

char *path;


	NARRATIVE


The unlink function removes the entry for	the	file	from	its

directory.	If	this	entry was the last link to the file, and

the file is not open, all resources associated	with	the	file

are immediately	reclaimed.	If, however, the file is open, the

actual resource reclamation is delayed until it is closed, even

though the directory entry is gone.


	RETURN CODES


Upon successful	completion,	a	value	of	zero	is	returned;

otherwise,	a	value	of	-1	is	returned	and errno is set to

indicate the type of problem, as follows:

	[ENOTDIR]	A	component	of	the	path	prefix	is	not	a
	directory.

	[ENOENT] The named file does not exist.

	[EACCES]	Search	permission	is denied for a component of
	the path prefix.

	[EACCES] Write	permission	is	denied	on	the	directory
	containing the link to be removed.

	[EROFS]	The	named	file	resides	on	a	read-only	file
	system.

	[EFAULT] The path points outside the	process's	allocated
	address space.

	[ENAMETOOLONG] A component of the file name was too long.

	[EIO]	An	input/output	error occurred while deleting the
	directory entry.


	%Page 55
