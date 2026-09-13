# CONFIGUR

> Source: `utilities/system/VDUP - FLEX System Utilities - Documentation and Examples.zip!VDUP.DSK!CONFIGUR.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

* VDISK, VLOAD and VDUMP read the locations $0000-$0257.
* These locations contain a table that describes the
* current hardware configuration as follows:
*
*     $0000         1 = SWTPc DAT is in use
*                   2 = GIMIX DAT is in use
*
*     $0001         This byte contains the number of 4K blocks
*                   of memory that are 'off limits' to the
*                   virtual disk.
*
*     $0002 - $0257 These locations contain a list of 4K
*                   blocks that are 'off limits' to the
*                   virtual disk. Each entry contains the
*                   most significant 8 bits of the 20-bit
*                   physical address of a 4k block that is not
*                   to be used as part of the virtual disk.

* The values below are for a system with the SWTPc DAT and
* in which addresses $XE000-$XFFFF are not fully decoded.

DATTYP  FCB     1       SWTPc DAT
NOFFLI  FCB     32      length of 'off limits' list
OFFLIM  FCB     $0E,$0F,$1E,$1F,$2E,$2F,$3E,$3F
        FCB     $4E,$4F,$5E,$5F,$6E,$6F,$7E,$7F
        FCB     $8E,$8F,$9E,$9F,$AE,$AF,$BE,$BF
        FCB     $CE,$CF,$DE,$DF,$EE,$EF,$FE,$FF

* Leave room so that object can be patched without reassembling
        RMB     224
