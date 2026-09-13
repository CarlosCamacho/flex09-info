# MODULE

> Source: `misc/archive-series/disk/DISK18 - FLEX Archive Disk - Source Code and Build Files - Includes C09, SAMPLE, SLIB.zip!DISK18.DSK!MODULE.MAN`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

"- 1 -


	_o_r_g_a_n_i_z_a_t_i_o_n _i_n_t_o _m_o_d_u_l_e_s


The screen editor is organized into separate modules (or
	"abstract data types" if you want to use fancy words).	If
	you understand how and why the program is organized into
	these modules then you understand the basics of the program.
	If you don't, you don't understand the program.	It's that
	simple.


I followed three rules religiously while writing this
	program.	If you modify this program I want you to follow
	them too.	Here they are:

	Rule 1:


No program shall use any data contained in another
	module.	That is, all access to data contained in a module
	must be via the "access routines" of that module.

	Rule 2:


No access routine may reveal to the outside world the
	internal representation of data inside the access routine's
	own module.	In other words, the access routines of a module
	only indicate _w_h_a_t the module does, not _h_o_w the module does
	it.

	Rule 3:


Every significant (i.e., relatively complex) data
	structure shall reside in one and only one module.


Each module, then, is responsible for hiding the details
	about some important data structure.	To be more precise,
	each module hides how the module's internal data is
	represented.	The idea is that the organization of the data
	may be changed inside a module without the programs that use
	the module knowing that anything has changed.


Modules not only contain data; just as importantly they
	also contain access routines by which procedures outside the
	module may use or change the data.	The access routines are
	to be considered part of the module's data structure.	I
	will sometimes speak of the "associated operations" of a
	module or data structure.	By that I will mean the
	externally visible access routines of the module.


Since modules (or data structures) have associated
	operations, the concept of data structure widens to include
	dynamic devices such as disk drives, video screens, and
	operating systems!	Indeed, I use modules to shield the rest


	"- 2 -


	of the program from the details of such devices.


Rule 1 says that programs outside a module can only use
	or change the data inside the module by calling the "access
	routines" of the module".	No diddling with other module's
	data is allowed.	Period.


Rule 2 says that these access routines are _f_u_n_c_t_i_o_n_s of
	the data.	That is, the values returned and the effects
	produced by the access routines are independent of how the
	data of the module is represented.	Rule 2 should _e_l_i_m_i_n_a_t_e
	data dependencies between modules.


Rule 2 doesn't quite say enough.	Not only must access
	routines hide their module's representation of data, access
	routines must provide one and only one function to the
	outside world.	In other words, there must not be complex
	links between access functions in the _s_a_m_e module.	(By
	definition there are no links between access functions of
	_d_i_f_f_e_r_e_n_t modules.) Especially to be avoided are
	requirements like: access functions A, B, and C must always
	be called in that order.


Rule 3 says that _a_l_l important data structures are
	protected from meddling from outside sources, or conversely,
	no program needs to know (or can know) about details of data
	structures outside it's own module.


A corollary of these rules is that there are _n_o global
	data structures.	Indeed, there is seldom if ever a need for
	any global variables at all.	Variables may be shared by
	more than one routine, but all such routines will reside in
	the same module.


Not every routine needs to be a member of a module.
	Those routines that are not a member of any module know the
	details of none of the important data structures of the
	program.


There is a certain optimal complexity for the data
	structure enclosed by a module.	If the structure is too
	complex then too many routines (all of them inside the
	module!) know details of the data structure.	On the other
	hand, if a structure is too simple then wrapping a module
	around it increases the overall conceptual overhead of the
	program.	Note that a single variable may often suitable as
	the data structure of a module if the associated operations
	of the module are sufficiently complex.	For example, the
	program counter in an assembler may make an ideal abstract
	data type.


	"- 3 -


sjt:
