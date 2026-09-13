# MSTOOLS

> Source: `misc/archive-series/disk/DISK31 - FLEX Archive Disk - Source Code and Build Files - Includes ANSICON, CC68K, COMPRE.zip!DISK31.DSK!MSTOOLS.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

The following programs are included in the MSTOOLS offering. This is a
shareware product. You can have it for free or anyway you can get it.
It's available from my BBS at 1-817-488-8398. The SK*DOS users group
is distributing it. And it's available from Peter Stark's BBS. Like I
said - it's free, but all donations are graciously accepted. If you
don't contribute, don't complain about what it doesn't do. If you do
contribute, you have the right to call my BBS and let me know what
else you'd like it to do. If I think it's a grand idea, I'll add it
and you'll get a diskette mailed to the address you gave me when you
registered. That's how my interpretaion of SHARWARE goes. Donations
for registration for MSTOOLS start at $25.00. That gives you one full
year of attention at the complaint window.

	Now on to the programs:

	msdir - display's a directory of the MSDOS diskette with filesize

date and time.

	syntax: msdir <drive no><cr>

	msread - Read a file from the MSDOS diskette to your SK*DOS system.

	syntax: msread <source drive> <dest drive> <filename><cr>

	mswrite - Write a file from your SK*DOS system to the MSDOS diskette.

	syntax: mswrite <source drive> <dest drive> <filename><cr>


Wildcard expansion is allowed with mswrite with the following

rules in effect:


<filename> can contain any of the following elements:


c
literal character

?
any character match except endstring null

[..]	character class (all of these characters)

[^..]	negated character class (all but these characters)

^c		negated character (all but this character)

*
zone (match zero or more occurences)


A character class consists of zero or more of the following

surrounded by [ and ]:


c1-c2	range of ASCII characters

c1-c2..c1-c3 multiple ranges


Copyright (c) 1989 by:

	Michael Evenson
	200 Ginger Court
	Southlake, TX. 76092


	BBS # 817-488-8398	(24 hours/7 days 300/1200/2400)
