# FLEX-UCS

> Source: `manuals/misc/ENH_MANL - FLEX Software Archive - Manual and Documentation Archive - Includes FLEX-AIX, FLEX-UC1, FLEX-UC2.zip!ENH_MANL.DSK!FLEX-UCS.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
#                            FLEX UTILITY COMMAND SET


.DHE
#                            FLEX UTILITY COMMAND SET


.DFO
.
                                    PAGE %%%%


.DFE
.
                                    PAGE %%%%


                            UTILITY COMMAND SUMMARY


     APPEND,<file spec>[,<file list>],<file spec>
         Default extension: .TXT
         Description      : page 38


     ASN[,W=<drive>][,S=<drive>]
         Description      : page 39


     BUILD,<filename>
         Default extension: .TXT
         Description      : page 41


     CAT[,<drive list>][,<match list>]
         Description      : page 42


     CLEAN,<drive>
         Description      : page 44


     COMPRESS,<filename>[,+]
         Description      : page 45


     COPY,<filename>,<filename>
     COPY,<filename>,<drive>
     COPY,<drive>,<drive>[,<match list>]
         Description      : page 47 (COPY-TSC) and page 49 (COPY-WMS)


     CRC,<from address>,<to address>
         Description      : page 51


     DATE[,<mm,dd,yy>]
         Description      : page 52


     DATECOPY,<from>,<to>[,<type>][,<matchlist>]
         Description      : page 53


     DATIME
         Description      : page 55


     DELETE,<filename>[,<file list>]
         Description      : page 57


     DIR[<option>][,<drives>][,<matchlist>]
         Description      : page 58


     DUMP,<address>
         Description      : page 61
                            UTILITY COMMAND SUMMARY


     ECHO,<ASCII STRING>
         Description      : page 62


     ESTATUS
         Description      : page 63


     EXEC,<filename>
         Default extension: .TXT
         Description      : page 64


     F,<sfile>[,<dfile>[,<title>]]
         Default extention: .TXT
         Description      : page 65


     FASTBACK,<from>,<to>[,-][,N,Y]
         Description      : page 68


     FDATE?[,]<filename>
     FDATE,<filename>
     FDATE,<filename>,<dd,mm,yy>
         Default extension: .TXT
         Description      : page 69


     FIND,<start address>,<end address>
         Description      : page 70


     FIX,<filename>
         Default extension: .BIN
         Description      : page 71


     FORMAT,+<drive>,<sides>,<density>,<tracks>,<extend>,<tpi>,<name>,<number>
         Description      : page 75


     FREEMAP,<drive>
         Description      : page 81


     FSTATUS
         Description      : page 82


     GET,<filename>[,<file list>]
         Default extension: .BIN
         Description      : pages 26 and 83


                              UTILITY COMMAND SUMMARY


     I,<filename>,<command>
         Default extension: .TXT
         Description      : page 84


     IN,<filename>,<command>
         Description      : page 85


     INTELHEX,<filename>
         Default extension: .BIN
         Description      : page 86


     JUMP,<hex address>
         Description      : page 87


     LCASE,<filename>
         Description      : page 90


     LINK,<filename>
         Default extension: .SYS
         Description      : page 91


     LIST,<file spec>[,<line range>][,N]
         Default extension: .TXT
         Description      : page 92


     LOAD,<address>,<filename>
         Default extension: .CMD
         Description      : page 93


     MAKEBIN,<filename>[,+]
         Description      : page 95


     MAKECMD,<filename>,[<command line>]
         Default extension: .CMD
         Description      : page 96


     MAKEHEX,<filename>[,M/I/T]
         Description      : page 98


     MAP,<filename>
         Default extension: .BIN
         Description      : page 99


     MEM,<address>
         Description      : page 100

                              UTILITY COMMAND SUMMARY


     MEMEND
     MEMEND?
     MEMEND,[$]<value>
         Description      : page 101


     MON
         Description      : pages 26 and 102


     MOTORHEX,<filename>
         Default extension: .BIN
         Description      : page 103


     MOUNT
     MOUNT,<logical> = <physical>[,<assignment>]
         Description      : page 104


     MOVE,<start address>,<end address>,<destination address>
         Description      : page 105


     N,<command>
         Description      : page 107


     NAME[,<drive>]
         Description      : page 108


     O,<filename>,<command>
         Default extension: .OUT
         Description      : page 109


     OUT,<filename>,<command>
         Default extension: .OUT
         Description      : page 110


     P,<command>
         Description      : page 111


     PCOPY,<drive>,<drive>[,<matchlist>]
     PCOPY,<filename>,<drive>
     PCOPY,<filename>,<mfilename>
         Description      : page 112


     PDEL[,<drives>][,<matchlist>]
         Description      : page 114


     PR,<command>[<args>]
         Description      : page 118
                              UTILITY COMMAND SUMMARY

     PRINT,<filename>
         Default extension: .OUT
         Description      : page 119


     PRINTT,<filename>[,+,<number>
         Default extension: .OUT
         Description      : page 122


     PROMPT
         Description      : page 124


     PROT,<filename>[,(options)]
         Description      : page 125


     PROTECT
     PROTECT,<drive>=<protection>[,<assignment>]
         Description      : page 126


     PRT,<command>[,<args>]
         Description      : page 127


     QCHECK
         Description      : page 128


     QCHECKK
         Description      : page 130


     RAM-CON
         Description      : page 135


     RAM-FORM[,Y,N]
         Description      : page 138


     REFORMAT,<drive>
     REFORMAT,+<drive>,<extend>[<name>[,<number>]]
         Description      : page 139


     RENAME,<file spec 1>,<file spec 2>
         Default extension: .TXT
         Description      : page 142


     RE-NAME,<filename 1>,<filename 2>
         Default extension: .TXT
         Description      : page 143


                              UTILITY COMMAND SUMMARY


     RESIDENT
         Description      : page 144


     RES-CON
         Description      : page 147


     RES-OFF
         Description      : page 149


     RES-ON
         Description      : page 150


     RES-SAVE
         Description      : page 151


     RSTATUS
         Description      : page 152


     S,<sfile>,<dfile>
         Default extension: .OUT
         Description      : page 153


     SAVE,<file spec>,<begin adr>,<end adr>[,<transfer adr>]
         Default extension: .BIN
         Description      : page 155


     SAVE.LOW,<file spec>,<begin adr>,<end adr>[,<transfer adr>]
         Default extension: .BIN
         Description      : page 156


     SETCLOCK
         Description      : page 157


     SETFORM[,<tskip>,<depth>,<bskip>,<width>]
         Description      : page 159


     SETUP[,W<partitions>][,F<data>][,R]
         Description      : page 161


     SKIP
         Description      : page 164


     SPLTITLE
         Description      : page 165

                              UTILITY COMMAND SUMMARY


     TTYSET[,<parameter list>]
         Description      : page 173


     UCASE,<filename>
         Description      : page 177


     UPLOAD
         Description      : page 178


     VER,<filename>[,<filename]
         Default extension: .CMD
         Description      : page 180


     VERIFY[,<ON or OFF>]
         Description      : page 181


     VERSION,<filename>
         Default extension: .CMD
         Description      : page 182


     WIN-FORM
         Description      : page 183


     WSTATUS
         Description      : page 188


     XOUT[,<drive>]
         Default extension: .OUT
         Description      : page 189


     XXOUT[,<drive>]
         Default extension: .OUT
         Description      : page 190


     Y,<command>
         Description      : page 191


     YEAR
     YEAR,<year>
         Description      : page 192


     ZAP[,<drives>][,<matchlist>]
         Description      : page 193


                        (THIS PAGE IS INTENTIONALLY BLANK)
