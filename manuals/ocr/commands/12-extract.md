# EXTRACT

_OCR transcription from: `Screenshot_20260912-070752.png`_

example follows:

EXTRACT NEW, INPUT
This command tells EXTRACT to create the file "NEW.TXT" from parts of
the files mentioned on directives contained on the directive file
"INPUT. TXT".
Assume that the directive file for the above example contains:

)FILEONE ,5,7~-10,2-3,50-

ADDITIONAL TEXT TO BE INSERTED

)FILETWO

)FILEONE,-10,15,20,

30,40-80
The file NEW will then contain, in order, lines 5, 7 through 10, 2
through 3, and 50 through the end of the file from the file FILEONE.TXT;
the line ADDITIONAL TEXT TO BE INSERTED; all of FILETWO.TXT; and lines
from the beginning of the file through line 10, lines 15, 20, 30, and
40 through 80 from the file FILEONE.TXT.

