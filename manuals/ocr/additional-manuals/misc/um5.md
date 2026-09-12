# UM5

> Source: `manuals/misc/TSC_MAN - FLEX Software Archive - Manual and Documentation Archive - Includes APG-MAC, APG-PREF, APG1.zip!TSC_MAN.dsk!UM5.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

in.  The sectors in the
diskette directory on track 0 also have linkage bytes similar  to  those
in the free chain and data files.

A FLEX diskette is not initialized in the strict  IBM  standard  format.
In the standard format, the sectors on the diskf.  It is possible to load a binary
file into a different memory area by using the Loader Address Offset
locations.  The 16-bit value in the Loader Address Offset
locations is added to the addresses read from the binary file.  Any
carry generated out oen to the sector referenced by the track and sector numbers.
.sx
$DE06 - Verify
.bx
.nf
Entry - (No parameters)
.fi
The sector just written is to be verified to determine if there are CRC
errors.
.sx
$DE09 - Restore
.bx
.nf
Entry - (X) = FCB Address
Exn this location indicates that FMS will check each
sector written for errors immediately after writing it.  A zero value
indicates that no error checking on writes is to be performed.  The
default value is "non-zero".
.sx
.pg
