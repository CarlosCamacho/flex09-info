# FILES

_OCR transcription from: `Screenshot_20260912-070808.png`_

The FILES utility is similar to the CAT command but displays only the
file names and extensions. This command is useful for getting a short
and quick report of the directory contents.
## Description
The general syntax of the FILES command is:

FILES[,<drive list>][,<match list>]
where <drive list> and <match list> are the same as described in the CAT
command. The file names will be listed across the page and in a
columnar fashion. The number of names displayed per line is determined
by the TTYSET Width parameter. If the Width is zero, 80 columns are
assumed to be available and 5 names will be listed on each line.
Smaller Width values will result in fewer names per line being
displayed. A few examples follow:

+++FILES

+++FILES,1,A.T,FR
The first example would list all files on the working drive. The second
example would list only those files on drive 1 whose names began with
"A' and extensions began with 'T', as well as those files whose names
started with 'FR'.

