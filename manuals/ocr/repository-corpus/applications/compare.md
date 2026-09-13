# COMPARE

> Source: `apps/stylograph/PT69-HD - Stylograph Word Processor - Bootable Hard-Disk FLEX System and Utilities.zip!PT69-HD.DSK!COMPARE.DOC`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

*****	COMPARE	*****
*
* AUTHOR: Frank J. Wilson
*	USE: Text file comparison. Each file can be up
*		to 90 blocks in length.
*	SCOPE: Intended for the public domain.
*	C-P-U: 6809

*		All lines are assumed to end with a carriage
*		return. No other control characters are
*		checked for except NUL ($00), which is
*		eliminated.

* THEORY:
* Put the two file specifications on the command line.
* The default extension is "TXT".
* All non-matching sections will be printed out,
* together with the line numbers. The lines will
* be preceded by a number indicating whether the
* associated file was the first or second one on the
* command line.
* Three options (preceded by a "+" sign) are allowed.
* They are space compression, line compression and
* the number of match lines (1 to 9, default= 3) to
* assure file match. Line compression ignores blank
* lines and space compression treats multiple spaces
* as a single space.
*
* Sample command line:
*
* +++COMPARE FILE FILE.BAK +SL2
*
