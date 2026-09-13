# ASM096809assembler

> Source: `newsletters/ASM096809assembler.pdf`  
> Method: PDF text extraction

OCR and media-decoding errors may remain.

so                â€”ASMOO                :



                         6809OPTIMIZING
                                     ASSEMBLER
                                         VERSION
                                              3.2




                                         â€œUSER'SGUIDE



                                    IMPORTANT
                                        NOTE
       Although every         effort      has   been made to makethesuppl fed
oes
       Software and its documentation as accurate                     and     functional    Â©
      a3    possible, Southw west  Technical    Products
                                                       a



                                                            Corporation
                                                                   ik    es
       Specifically disclaims any responsibility for any         damages
       incurred    or generated     by such material.
       Technical Products                                      Southwest â€”
                     roducts   Corporation reserves     â€˜the right    to
                                                                                            â€”




       change   or   revise      this       material       at   any    time       without




                                   #09

                         Â° | -ASMOS
                                          Copyright
                                                1970
                â€˜SouthwestTechnical
                                 ProductsCorporation                             â€”_




                                 RIGHTS
                               ALL    RESERVED
                                                                      Tableof Contents.
Preface           *     s    e   *
                                     Ca    Â°     o     e    *
                                                                 eo       Â°.   *    a         *         *         *      e         s         >    *         .    Â°     e          .
                                                                                                                                                                                            es    *         .        *            *     3       iv

1.0
            SHTPC
                Assembler                              .    6
                                                                 0
                                                                          ee        ee                  ee               eee                      ee             ew               ee
                                                                                                                                                                                                  we        ww                    ww          bed
          1.1          Required.Environment                                                         ee
                                                                                                         ae ee ee                  ee
                                                                                                                                                                                                                                              1-1
          1.2          Assembler Distr ibut fon                                               Oe                         OO                  8                   ee                                         ee                    eos         â€˜q-1
          1.3          CommandSyntax                             Ce            6    ee                  ee               be                  ee          we            ew                   ee              ee                8                1-2
          1.4          Options          eeeOOO                                      ee                  ee               .         eo             Boe
                                                                                                                                                                     we we        8         6
                                                                                                                                                                                                  ew        wee                   ee           1-2
          1.5          Convers fon                    Programs                 Oe             ee                  ee               ee             ee             8     ee                   ee          ke                                     1-4

2.0             Input       Language Syntax                               o    Â©    Â©
                                                                                              Â©         8
                                                                                                                  ee               6         ee          wee                      eee                       eee                               2-1

          2.1          Character                 Classification                                     2...                                     6.                  ee               ee              eee                             we          el
          252          Identifters                    wee                      8    8         we                  ew               8         ee                  8     ee                   ee                                                2-1
          2.3          Implicitly Defined Identifters    â€œ@
                                                                                                                                                                                                                                              2-2
                                                                                                                                                                                                                                                             Â°




                                                                                                                                   @              Â¢      @       @     8          @                         Â©        e@           8     8
                                                                                                                                                                                            se
          2.4          Input Statements         ee ee ee              a             ee                       ee                                   6      Â©       Â©     Â©          Â©         Â©     Â©         Â©        we
                                                                                                                                                                                                                                              2-3
          2.5          CommentStatements                                                                                                                                                                                                      2-3
                                                                               Cr   ee                                                                                 ee
                                                                                                                                                                                       ee                                               er)


          2.6          Source Statements                                                      SS                                                                                            SS
                                                                                                                                                                                                                              oe              2=3
          2.7          Assembler  Directives              eee
                       Table         2.1
                                                                                    ee                  ee               ee                                                                 ee              eh       el
                                                                                                                                                                                                                                              2-6
                                                 7    Â©     &Â©   Â©        Â©    Â©    Â©         6         &         Â©      eo        8              ee             hE
                                                                                                                                                                      hl
                                                                                                                                                                       hl                   lel                      Hl
                                                                                                                                                                                                                                              2-7
                       Table         2.2                                       .
                       Table
                                                 oe    e    @-   8        @         oo        Â©         Â©         Â©      Â©         Â©         6    &      8       we                         8     ee                 eee
                                                                                                                                                                                                                                              2-8        :




                                     2.3         Cr   a     a
                                                                 eo                                                                                                               ry    *         *         Â©        Â«Â©           @     @     2-9
                       Table         2.4         *    *     6    Â©        Â©    Â©    Â©         Â©         Â©                6         ee             ee                   lh                   le              hee                               2<9

3.0             6809 Software Architecture                                                    Sie                                                                                                                                             3-1
                                                                                                                  ee               ee             Oe                   Ce
                                                                                                                                                                                                                         ee ee

          3.1          Arithmetic Registers                                                                                                                                       Se                                                          3-1
                                                                                    Ce                  a
                                                                                                                       oeee                                     eS                          ee              Se,
          3.2           Pointer            Registers                      Cr   ee
                                                                                                                                                                                                ee ee ee             2            ee    |     3-1
          3.3          ProgramCounter        ee                  Ce                      ee        ee   ee        eee
                                                                                                                                        ee   Se
                                                                                                                                                                           ee                      vs owe                                     3-2
          3.4          Condition Flag Register                                                oo                  6
                                                                                                                         Few                      ee                   wee                        wee                                         3=2
                                                                                                                                                                                                                           *
          3.5          Direct Page Register                                                                                                                                                                                                   3-4
                                                                                              8
                                                                                                            me    6
                                                                                                                          Oe                 8    ee            ee                8
                                                                                                                                                                                        UL                  8        eee
          3.6          Address ing Modes                                                                                                                                                                                                      3-4
      :




                                            .                             o    Â©    Â©         &         Â©         Â©      Â©         Â©     8        ee             ee               8         ee          ee                        ee}




4.0             Assembler Expressions                                     ee
                                                                                                                                                       ee                         ee
                                                                                                                                                                                                       ee       ee
                                                                                                                                                                                                                         ee             |     4-1

          4.1          Terms in. Expressions                                             eo   ee.                 8      8         68             8      ee                       el              ee                 ew
                                                                                                                                                                                                                                              4-1
          4.2          Operators  in Assembler Expressions                                                                                        2...                            60              0         0        eee                      43
          4.3          Grouping Operators      2...                            .                                                   eee                   ee            tw                   ew              we                    wo
                                                                                                                                                                                                                                              bud
          4.5          Truth Value Operators        6.                              .                             2                ee             ce             ew          ee                   we                              ee
                                                                                                                                                                                                                                        Anh
          4.6          Relational  Operators                                        2...                                 6         ee                    ee            ee                   we              www
                                                                                                                                                                                                                                              Med
          4.7          Bitwise LogicalOperators                                                         e         ..     e         ee             e      s       Â°     e          .         *     *         *        s            *     +     4.5
          4.8          Shift Operators                           Oe            8    6         we                  ee               8         ee          eke                      ek              ee                              ee          4-6
          4.9
                       Logical Connectives
                       Table
                                                                               .    2.                  2         ce               ce             ee             ee               ee              ee                 ee
                                                                                                                                                                                                                                              MH
                             4.1...                         a
                                                                                                                                                                                  oe                                                    Â«     4-8

5.0             6809        Operation Mnemonics                                     ..                  2...                       6              e      *       e     cee                        .         .        â€˜See Bel     Â«.



                                                                                                                                                                                                                                                     .




          5.1          Condition                 Flags           e    .        o    Â©         Â©         &         6      .     â€˜
                                                                                                                                   *         Â©    @      Â©       Â©     Â©          Â©         ee              6                     ws
                                                                                                                                                                                                                                              5-1]
          5.2          ExtendedNnemonies                                       *    *         e         Â¢         8      8         s.        Â©    @Â©     Â©       #     Â©          Â©         @Â©    #8        @        Â¢        Woe             5al
          5 a33        6800 Family       ics                                                                                                                                                                                                  5-1
                                                      Hinemon                       eo        Â©         @         Â©      6         ee             8      8      ee                ew        ee              ee




                                                                                              ~ti-
         6.0.                  Assembler
                                                             Directives
                                                                     ae                                                          rere                                   Â°         .            Â°        *         *             *          *               Â»        *        .         *           6-1


                                                                                                                                                                                                                                                                    ee,ee6-1
                               b+        BSZ      ~~
                                                              Block           Storage                    of        Zeros                   ...
                                                                                                                                                                                                                  ee 8 o
                                                                                                                                                                                                        eS
                eee                                                                                                                                                     vs eeeoo                                                                                             eee
                           .




                                         END      --
                                                              End        of       Block...                                                                                                                                                                               6-1
                  GON
                                                                                                                         1.4%.                                                                                    ee            8          *


                 ee                     ~ EQU
                                                  ~-
                                                             Equate Symbol to Expression                                                                                                                          ee                       .                                                       6-1
                                            ERR   --
                                                             Generate an Error...                                                                                                                       eee                               ..              ee                                       6-2

                                                                                                   eee                                               Be ee
                                                                                                                                                                                                                  ek



                           OTe                                  Generate a Conditional
                                                                                           eee   ee 6-2
                                                                                                                                                    Erro
                                                                                                                                                                                                                                                       ee
                            ERRIF
                                                                                      ee
                                                             ~~                                                                                                                                        Par                                 *


                                                                                              ob

                eee
                                                               Generate an Error...                                                               .                                                                                                                                                6-2
                             FAIL
                                                                                          Cee
                                                        --



                           EON
                       *                                                                                                                                        Â»
                                                                                                                                                                                                                                          â€œe.
                                                                                       ee        ee
                             FCB                  --
                                                              Form Constant Bytes
                                                                                     eer       ee
                                                                                                                                 ..
                                                                                                                                                          Oe
                                                                                                                                                                *                                       eo                                     +                                                   6-2
                                                                                                                                                                                                                                                                                                   6-4

                                                                                          ees mee
                                                                                             ee
                                    FEC
                       s                          -+
                                                              Form      | Characters
                                                                   entire                  eee                                                            hue   Â¢


                                                                                                                                                                *                         we
                                                                                                                                                                                               8        &


                                                                                                                                                                                                        me
                                                                                                                                                                                                                                           .
                                                                                                                                                                                                                                               on
                                                                                                                                                                                                                                                                    8
                                                                                                                                                                                                                                                                            oe
                                                                                                                                                                                                                                                                                                   6-4
                                                                                                        â€˜Bytes
                 it        ee
                       ee â€œLIB                    -
                                                              LibraryInclusion...
                                                                                  I          e                                                            Oe
                                                                                                                                                                >



                                                                                                                                                                                               ee                               ee
                                                                                                                                                                                                                                               .                                 ee


                                                                                                                                                                                                                                                                                       ee6-4
                                                                                                                                                                                                                                                                                                   6-4


                      ee
                                                                                                                                                           @    Â»                                                                              s



                                                                                                                                                                                                                                                                   ee




                                                                                                                                                                    eee
                                                                              Name.                                                                                                             ere
                                                                                                                                                                                                  ee


                                                                                                                                                                    Cee
                       *
                               hadWAM --                      Provide Module                                                               .               2    *                                  8                            6          .
                                                                                                                                                                                                                                               a
                                                                                                                                                                                                                                                                                                   6-5
                  6.13                      OPT   --
                                                                  Specify             |
                                                                                                  â€˜am




                                                                                                             Optior                                   .         .                              8                                               *
                                                                                                                                                                                                                                                       ee                   re
                                                                                                                                                                                                                                                                                       ee6-5
            ;
                      6.14
                      6.15  PAG
                                            ORG   --


                                                  â€œ
                                                              Start
                                                                   froaren
                                                                  Set     Counter Origin
                                                                      New Page&                                    eee                     ee
                                                                                                                                                                *



                                                                                                                                                                e
                                                                                                                                                                                                   8  eeewe
                                                                                                                                                                                                    eee     ee ee                          #.
                                                                                                                                                                                                                                               *           ee                                      6-6
                                                                                                                                                                                                                                                                                                   6-6
                6.16       PROC -- Begin a Procedure Block                                                                                                 .    *                                  ee oe
                                                                                                                                                                                                       oe a                                    Â«

                                                                                                                                                                                                                                                       ee
                                                                                                                                                                                                                                                                                       8           6-6
                      6.17 PUBLIC      Begina Public Dictionary
                                                              ~-                                                                                                                                                                                                    eeee                           67
                                                                                                                                                                                           eee
                                                                                                                                                                                                                                               e


                      6.18  QUAL Begin                                                     Qualified                                                                                                                            ee                                                     886-8
                                                                                                                                                                                           eee
                                                                              a
                                                      Data Block |
                                                                                                                                                                                          Fee
                                --                                                                                                                                                                                                             *           Pe .

                      6.19 RMB     Reserve Memory Bytes...
                                                  --
                                                              ..
                                                                                                                                                                                                                           ew
                                                                                                                                                                                                                                               2       .                e                  @
                                                                                                                                                                                                                                                                                                   6-8
                                                                                                                                                                                                                                Â©                                   6 ee
                 6.20 SETDP
                      6.21 SPC on Space Listing
                                                  oe
                                                        as
                                                             --     Set       Direct                    Page Pseudo
                                                                                                              ee         8       ee                       Register
                                                                                                                                                           8



                                                                                                                                                            es
                                                                                                                                                               ee ee
                                                                                                                                                                ee


                                                                                                                                                                   eeoe                            .
                                                                                                                                                                                                            re


                                                                                                                                                                                                                           0
                                                                                                                                                                                                                                               e


                                                                                                                                                                                                                                               Cl
                                                                                                                                                                                                                                                                            ee
                                                                                                                                                                                                                                                                            ee
                                                                                                                                                                                                                                                                                           6       6-8
                                                                                                                                                                                                                                                                                                   6-9
                      6.22 TTL = Title . Ee
                                                                                                                                                                                                        eeee                                                                                       6-9
                                                         -                                                                                                                                                                          6      e!

                      6.23        Use         Counter
                                            USE
                                                   ~-


                                                                        Program                                                Section                                      ..                     .
                                                                                                                                                                                                                               â€œeo
                                                                                                                                                                                                                                                   @       eeÂ«                                 6-10.


8   eee 7.0            Figures...ss                                                                                              ee                                                                                                                                                                T-1
                                                                                                                                                                                                                                                                                           Â«




                                                                                                                                                                                                            >:        *             *              .           e        Â»        *             *




         BLO
                               Assenbler     ee
                                    ErrorMessages aa a                                                                                                                                                      *         *.            .              Â«           *        e         *            *   8-1

                      8.1                   Message
                                                 Format                                                                                                                                                                                            .
                                                                                                                                                                                                                                                                                                   B-1
                                                                                                                                                                                                                                                                                                   8-1
                      8.2   â€œNotes                           se         ee            ee                Ce
                                                                                                               ce oe                                                                  ele                   ele                                                ee

                                                                   elaigls7
                                                                                                                                                                                                                                                                                  ee

                      8.3 s Caution                                                          a                    oe ee   ee                                                 oe                e            oe                      ee                                            ee               8-1   :




                 Â»:

                      8.4           -       WarningMessages                                 See               ee          ee                   eee                      *             *        -            O28                     eee                             ee                 @ 8-1
                      8.5               :   Error Messages *. â€œee                                             2     6     6           ee         ee                 .        oO                             8         wm            &              eee                            ee               8-2       .




                      8.6
                                    . Disaster
                                            eee                                                                                                                                                                                                                                                    8-20




                                                                                                                   ott
                                PREFACE



 This    publication   was      designed as a reference         manual for
the     SWTPC 6809      Optimizing Assembler, Version        3.     It is not
  intended     as a tutorial
                                  on assembly
 nor       fs
                                                 language _




                                                              programming,
                   it    intended as        a reference     on     the 6809
 microprocessor. Although detailed descriptions                             are
 provided         for     the     native   -
                                             6809 instructions,          these
 descriptions        should not be considered
 Motorola MC6809Programing Manual should be consulted
                                                       exhaustive.          The
â€˜more      information
                                                                            for
                            on-   the 6809. microprocessor.             For    a
 tutorial        introduction       to
 the book COMPUTER         ORGANIZATION
                                         _assembly
                                                 language
                                            AND PROGRAMMING
                                                             programming,
 is an excelTent choice.                                       by W. Gear
                                                                          ae




                                 =
                                     Tys
                                                                                                                                                                Users Guide _
                                                                                                                                                        â€˜Assembler
OO




     pe
                             1.0                    Southwest
                                                                        Technical
                                                                             Products                       Assembler.
                                           =




                                                   The    SWTPC6809resident                  assembler isa very powerful
                                                                                                                      disk assembler.
                             designed                     to    provide       a versatile         programming     tool.                                    It             has               many          special
                             features
                                added to                                     support   structured         programming                                   techniques                             and        enhance
                    code modularity     and readability.                                                  In addition,                            the  assembler provides  a
                 -
                    multi-pass   optimizer   that                                                           to         reduce               the     size and execution. time
                 of     assembled object code.         Two                               attempts
                                                                                              options                               are
                                                                                                                                                  provided to selectively
            es
                             disable           typesâ€ â€œot optimization
                                                          certain                                                                     in
                                                                                                                                                  order to reduce the â€˜time:
                             required for an assembly.
                                                                                                                                :
                                                                                                                                                            Suess.                                   :




                             le1
                     .                     -



                                                   Required
                                                       Environment
                              oe The asscubierruns on                                          a        â€˜goittiwede
                                                                                                                â€œTechnicalâ€
                                                                                                                         â€˜Products 6809
                             microcomputersystem funning.                                           the   FLEX              A
                                                                                                                            operating                      system.    minimum of
                             16Kof                              memory is required                                          24K total
                                                     user    (implying                                                                                     memory) and provides |
                             approximately     4.8K of symbol    table space.        The assembler      does  not
                             support a virtual    symbol table,
                                                              so   that     in systems with limited      memory,
                             it  is  possible  to overflow the symbol table         with very large programs.
                             The assembler requires approximately       (8.4 + La) * Ns      bytes  of.    symbol |
                         .   tablespace, where is is the average number of characters   in a symbol
                                                                                                                                                                                                                          :
                                  is                of
                             andNs â€˜the  total number   symbols to be
                                                                      â€˜keptin the dictionary.
                                       |




                                               â€˜Both:qualifiedâ€œdaeâ€œstructuresand proceduresrequirelarger
                             (48 byte)                      entries          in      Â¢       ymbol               table,                    so       that                  the               use          of    many
     itr,                    structures       procedures will somewhat reduce the | amountof available
                                                                 and                                                                                                                                                          |


                     - Symbol    table    space.   Similarly, each level of library inclusion requires â€”
                       a  buffer      area (336 bytes) dn the symbol table, and will also reduce      the â€”
                       amount of available        â€˜symbol1 table   space.  Note  that   this space   is    â€”
                      required       for each | level | of                not  for each inclusion  file
                                                                inclusion,
                             processed.
                              1.2              +
                                                    Assembler
                                                         Distribution.
                                                                         on Flex formatSeinch and 8=inch.
                                           â€˜The ASMO9programis distributed
                             floppy                      disk.         The        disk   contains           the
                                                                                         Flex operating system,                                                                                   the         "CAT",
                         â€”â€œCoPy", "NEWDISK",                                         "LINE" utility
                                                                                        programs (to enable
                                                                                                                                                                                            tionof                        S
                                          and
                             the
                                       disk),                  and the four suppliedassemblerfilesi 0                                                                     =
                                                                                                                                                                                   Â¥



                                                                                                                                                                                       dapltea
                                           ~tagMo9.cHD"
                                                    Theâ€˜mainassembler comaansd
                                                                           file.                                                                                              ey




                                                         The: assembler symbol table overlay.
                                                â€œASMOS.CMV"                                                                                                                             9




                                   -
                                               â€œMIKCV.CMD" The binary file to Mikbug format converter.
                                                                                                                      to
                                                       CMD"
                                                   SBINCY.          format
                                                           The Mikbug                                                      binaryfile converter.
                                                   Theansenblet
                                                             eoriaandfile and eveting               as: tong a
                                                                                    may be. renuned:-
                             the â€”command                          â€˜file  and the              overlay          file                      are     given               the              same       name.          For
                              example,                    if     the   command file          were           named             "ASM.CMD",the overlay                                                            name           ~
                             would                   then         be        "â€œASM.CHV". If                the              overlay file is not renamed,                                                             the
                              assembler will                           be        to. produce                                                                         or
                 S
                              listing.
                                                                             unable         addressfile          an                                                                a

                                                                                                                                                                                            syabolsais.



                                                                                                    _      1-1        =
     Assembler                        Users           Guide



      1.3        ~       Assembler                    Command               Syntax

                     The             general              syntax of                    the          ASM09             command          is:

                                  +++ASM09 <input                           file>             [,<output file>] [,+<option                                                      list>]

     The                                                                                                                 name of
                     first                   file          specification                             is         the                           the         file            to       be     assembled.
     This            file             specification                         is         required.                       The      second              file                specification                             is
     the             name               of          the     binary file     to                                  be generated                   by the                                                    Tf       no-
     output                   file          is                     ita name
                                                                                                                                                                        assembler.
     If          the                 output
                                                     specified,
                                                          file                                       is
                                                                                                                defaults. to
                                                                                                                not.
                                                                                                                                              that
                                                                                                                                                         it
                                                                                                                                                              of        the
                                                                                                                                                                   defaults
                                                                                                                                                                                      input.            file.
                                                                                                                                                                                                    "BIN".
                                                                       extension                            specified,                                                                    to
     If      the              specified                   output    file                     already     exists    on disk,                                        the      old           file             will â€”
     be
            automatically
             .



                                                             deleted                        and    replaced      by    the                                    new         file.                Assembler
    options      are   specified                                       on        the          commandâ€™ line     by placing                                         them        after                a      plus
     sign,               to          separate              them         from file                         specifications.
      1.4        +
                         Assembler                    Options

_
                     The option                       list         consists                    of         single characters,optionallyseparated
     by commas,                         and          terminated                   by. a    carriage     return                                      or             FLEX            end         of        line
     character.                         The          options            that            may be specified       are                                  listed                below:

                     A        -
                                      Generate                   AddressFile.                            The "a" option          will        cause
                                                                                                                                                                                                           the
                                      assembler                    symbol                   table    overlay     to generate   an     external                                                          symbol
                                      address              file.             Only              those    symbols defined      as entry                                                                           too
                                      the           global
                                                                   dictionary                     will       included.
                                                                                                                      be
                                                                                                                                                                                          points
                     B-               Suppress binary output
                                      generation                       of         a         binary
                                                                                                                     The
                                                                                                                      output
                                                                                                                                    "B"
                                                                                                                                       file.
                                                                                                                                               option
                                                                                                                                                                   If
                                                                                                                                                                             willbinarysop
                                                                                                                                                                             the                           file
                                                                                                                                                                                                                        5
                                      already exists                         on disk,                      it         will     not        be        deleted.

                     C
                              -       Suppress                   Cautions.                           The "C"                 option           will            euppressall                           caution
                                      messages               produced                   by the                  assembler.

                     E-               Suppress
                                      error,
                                                                 Error
                                                           warning,
                                                                                      Messages.
                                                                                       and  produced           the
                                                                                                          caution
                                                                                                         by
                                                                                                                         The          "EB"
                                                                                                                               messages
                                                                                                                                        optionwill                                    scojede'                all
                                                                                                                                                                                                                        â€”

                                      assembler.        Since   all  diagnostic messages        produced    by the
                                      assembler     are
                                                            suppressed,- it is possible that errors        in the
                                      source     program                       will go undetected    by the users
                                                                                 beingassembled
                 F-                                                                                                                                                                                             the
                                      Optimize
                                      assembler
                                                                 Assenbly
                                                                   to
                                                                    suppress any
                                                                                The "F"      option
                                                                                   optimization
                                                                                               Time.
                                                                                                                                                                        of
                                                                                                                                                                          will
                                                                                                                                                                                   object
                                                                                                                                                                                          cause
                                                                                                                                                                                                         code.
                                      Foreward                   references                          will              be       assembled                      â€œusing                    the             least
                                                                                                                                                                                                                        oe
                                      restrictive                       addressing                              modes.          .

                                                                                                                                      This.              option                will            force            the.
                                      assembler                  to     complete                     in         two      passes,              but  â€˜object..   code       may.  be
                                      considerably                       larger                     than         required.                    This   option    is    especially
                                      useful               while                 debugging                       a       program               which      will      later       be
                                      optimized.                        Note                that          the         "R"     option           takes priority          over
                                      option     in              the
                                                                determination of â€˜branch
                                                                                       lengths.
                                                                                                                                                                                                           this
                     G        =
                                      Enable               generated eode output. The "G" option will
                                                                                        -




                                                                                                              cause  the                                                                                                     __




                                      assembler    to     print      all generated binary object        code.   If this
                                      option    is    not    specified,       the   assembler will print up to eight
                                      bytes of object           code      the     same line  as the source
                                                                       on
                                                                                                                                                                                               statement
                                                                                                                                        Assembler
                                                                                                                                                Users Guide

           and
           this
                            then               â€œsuppress
                                                does
                                                       any                             additional printed                                       output.                    Note that                          :




                                                                          affect
                                                                                                                                                                                 :




                                                             not                          the
                            option                                                             binary file                                  producedÂ»
           Suppresslisting. The                                                             "L"         option           will
                                                                                                                                          suppress any â€˜printed
           cutput             from the                      assembler,                       except             for       lines               containing                             errors
           detected â€˜by.
                       the assembler.                                                                                           Â»
                                                                                                                                                                                               oe




          â€œSpecifyMotorola
           non-Motorola                                      Compatability.
                                                            extended
                                                                     â€œthe    Sptton
                                                                                 willâ€ -gupresa.                          yn
     fy
                        isâ€
                                                    .
                                                                 processing.       addressing                                       =

                                                                                                                                                Index            -
           optimization
                                                                                                                                                                                               â€”




                                                               suppressed                               and          branch               â€œrange         checking   ais.)
           selected.  Alls                                         labels                   ate.              internally                        truncated     to  six
          characters Of â€˜significance.      Arithmetic                                                                                            expressions      are                 .




          evaluated  â€˜using| 4 strict    left-to-right                                                                                      order.                         Character
          constants revert to the single    quote only                                                                                    Motorola                   format.                                 If
          Mikbug                   format                   object                code             is     desired,                      the          assemblers                      binary
           output             may
                                               be converted                       using
                                                                     utilityprogram.
                                                                 MIKCV                              the


           Suppress
                                       -




                                                            The vgn option will cause "the
                                               jdne- â€˜Musibers.
          assembler. to suppress line                                                        number output.                                   This              option can be.
       used to reduce
                    the   size of                                                            the
                                                                                                         assemblerlieting.â€”
     -
        Format Page put .
                  Out         The                                                            "p"    cause
                                                                                                       option                  will                                    â€˜asseabler
         output                    to          be   formatted                     for         a   assembler will
                                                                                                    printer.                    The                                         ask
          for           a
                            heading for                                  assembly,    and perform page counting                                                                                             and
           title              functions.                       the   If     this option   is not specified,   the
          and           TITLEmnenonics                               are    ignored by the assembler.                                                                                      PACE     :
                                                                                                                                                                                                                   meek



                         Â© Range. the Mg option
           Suppress â€œBranch        â€”




                                                                                                                                                 |    will           cause                     Be
          assembler  to â€˜suppress branch/long branch optimization. | The
       assembler      â€˜normally treats branch and long branch mnemonics as
     identical,       and computes which type of branch   is
                                                             required.                                                                                                                     |




       this      feature    is    â€œsuppressed, branches are limited     oe
          approximately127bytes                                                   range,                 and     an       error                      message will                                       |
                                                                                                                                                                                                             be
oe
          producedif                                    a    range                error                  is      detected.                             This       option                   will
                                               passes              ee
          normally
                 reducethe number of optimization     required.
                 -ayabottable.
          Suppress                Wheneverthe andenbietÂ®
                                                      â€˜produces an                                                   -



          object code listing,
                            it                                         normally produces     a
                                                                                                sorted,   formatted
          listing  of   its  symbol                                   table.     â€˜The "s" option
                                                                                                    suppresses  this                                                                                                   ee




          output.              It              is   not       possible     to produce    a symbol    table.
     _




          withoutproducingobject code listing.                an
                                                                                                                                                                           _




                                                                                                                                                                               eee
                                                                                                                                                                                     Mating,                      fe


          Truncateâ€˜Printâ€˜OutputThe "Tr" optionwill                    .                                                                         reduce               the             Muabena
          of        bytes
                   oÂ£                      Â©



                                                        object                  code               per        line        in            order              to    decrease   the
          width of the outputlisting.                                                              Together                 with                     the         "N". option,                                      ~~
          othe output width is decreased                                                                                                   to         obtain
          on
                eighty column printer. sufficiently
                   an                                               printouts)
          Print â€˜UnnamedDictionaries.       The nye optionwill cause the
          assembler to print unnamed procedures (ise., procedures WLth aoeee
          name   of  "Â®PRannn")  found   in  the  symbol table.      Unnamed
          procedures  are.  normally   procedures  included    from   system >
          ifbrary â€˜files | and                                            are          of                               table
                                                                                              marginalvalue in the symbol


                                                                          13-5
Assembler                    Users             Guide



          W = Suppress                                                                               "W"
                                                                                                                                                         all warning
                                                           Warnings.                         The               option         will    suppress
                             and                                                                               by the         assembler.
                                         caution messages                                 produced
1.5       =



                Conversion
                         Programs

suitable
               The     output of
                                           the
                                                         the        assembler                    â€˜program
                                                                                                        is binary filea                            in        a   format
                            for                          system                loader.             This         format        is compact          and       efficient,
but       it        is not                compatable                      with         the
                                                                                                  Mikbugpaper tape                    format            object         code
required                   by             several                   prom           monitors               and     cassette      tape interfaces.                        Two
utility  programs have been provided                                                                to        convert      from     binary format                         to
Mikbug  format  and
                    conversly.
               The MIKCV
                       program converts                                                      a     binary file (such as is    output) from
the                                            into                 text
               assembler)                                      a                  file           in Mikbug format.
                                                                                                                     Similarly, the BINCV
program will convert                                           a
                                                                    Mikbugformat and text                         file        into    a   binary      file,       at           a

significant  savings                                       in       disk                                                                    The                  of     the
two       commands                   is        as        follows:
                                                                                  space
                                                                                                         execution
                                                                                                                 time.                             syntax


                    -++HIKCV <input file>,                                                <output             file>

                     HHBINCV
                           <input                                        file>,           <output             file>

               In     each           case,     input. file specification
                                                         both            the and   the  output file
specification                            are      For MIKCV, the input file
                                                     required.                  must   be a binary.
file              (an    extension    of    .BIN is assumed)     and   the output file must be a
text           file     (a .TRT extension      is    assumed). For     the  BINCV. program,      the
 input             file     must   be   a text     file  (a .TXT extension   is  assumed) and the
â€˜output             file                            be
                                   must                    a
                                                                   binary          file           (with ah assumed extension    of     Â«BIN).
If        the              output              file             exists            on      disk      it                      be deleted    and
                                                                                                       will automatically
replacedwith the     output file...                  new


     In â€˜general, Mikbug format - files will be approximately
                                                           2.7â€˜times
larger              than           the      equivalent    binary    file.         Mikbug format                                                    files.
records                    .of       16.
                                                                                                                                                                 output
                                              bytes    maximum,   and       include    a  transfer                                             address in the
header              block.                 The name                       file
                                                       of the output               is used as the                                              name placed in
the            Mikbug               header                     by         MIKCV.                 â€˜The name        placed         in   the    Mikbug header  is
ignored              by the                BINCV program.                                                                 :




                                                                                                   1-4
                                                                                             =            -
                                                                                                                                                                                                                       __
                                                                                                                                               Assembler                       Users             Guide



ory,
            2.0       ~

                                  Input          LanguageSyntax:
                              Input              to.         the         assembler consistsof oneor more disk files...                                                                       These
            files              are         expected                 to    be      in      8-bit             ASCII        code,      with       the              sign           bit           always
            set.              to         zero.                These             files             may         be      space       compressed,                     and          may         contain
            control                    characters.                The. assembler     treats                                   carriage         returns,                      form           feeds,                 .
            and                                                                                                            The    horizontal                     tab         character                   is
                   rubouts                             as     input line delimiters.
            treated    as a white                                   noise character                          (same asa              biank)- All            Mo
                                                                                                                                                                            other          control ~
            charactersare                                   ignoredby the assembler.
                                                                                                                                         wo
                                                                                                                                                                       ae




             2.1          -

                                        Classifications
                                  Character
                              â€˜Eachcharacter                              in the input                       stream      is.       classified into                             one          of         four    .        :

       â€œgroups:_alphabetic type characters,
        characters,
                                                     type   characters,â€”special â€”                                  numeric
                      andSeparatorâ€˜characters(whitenoise)Â«
               Alphabetic. type characters
                                         â€˜consist
                                               of both   upper aad lower    case ve
             letters,       the     underbar      character,        and      the        backslash       character.          In

             general,     the assembler        will make a distinction                  between upper and           lower.
            case      letters      in     symbols     defined        by   the     user,     but   will    not make      that.
            distinction        for      symbols    defined        internally            to    the   assembler.            For
                                                                                                                               â€”
             example,       user      labels    â€œlabel"       and     â€œLABELâ€are separate and distinct,
             while    the   register       name "IX" is identical            to     â€œix",     or for     that      matter,
              "Ix"    or   "ix".     This    permite the assembler              to   be    used   in   either    upper     or

                      case:                     with a maximum          of
             tower: environments:                                                                                            compatability.
                 Numeric â€˜type.chakactace
                                       consist                                                                             of the digits zero. chrough
                                                                                                                                                    nine,
             the              crosshatch                    "#",         the dollor sign                       "$",        the question                mark                  "?",          and         the.
             at  sign                       "@".              It                 type characters |
                                                                         is. important to                      realize            that        numeric
            are  not  necessarily digits.    When the    assembler      is recognising a number, _
            the digits in the number start at zero         and continue     to one' less     than the â€”
            numberâ€™ s radix.    In the case   of  hexadecimal         numbers,    the    letters    A vee
            through    F. are                         even    though thay are alphabetic type
             characters.                    digits,           considered
                                    â€˜gharactere:are
                              â€˜Special                                                             used.            by     the. â€œassembleras                                    comment or
            conditional                           assembly                 â€˜designators,                       quoted             string          delimiters,                               and           as
             operators.                          Since         the        function                of        special         characters           depends heavily                                       upon
             the              context             in        which they                                                             they         are
       along.                      with          the
                                                                                        are            encountered,                                              cbest documented
                                 functions bheyperforms
                    â€˜Separatorâ€˜havacters eonatet.of the horizontal       tab                                                                                           character, the
             carriage.    return      character, the rubout   character,                                                                                           and               the           space
                                                  These                             to separate   assembler tokens      and  in
             character.                                             characters                serve

             general,                    have     no           significance themselves.       A special separator    character                                                                                         |    :




                                                                            besides   being   a white  noise character,      is
              is      the              semicolon,               "3",  which
             used                 to                      of
                                        denote the presence                   soutce statements.
                                                             secondary aseonbler
              262             =


                                       Identifiers
                              â€˜Identifiers. â€˜consist of                                                 a
                                                                                                                    alphabetic
                                                                                                              leading        type character,
        _
              followed
              maximum
                                          by
                                           length
                                                  one         or
                                                                   of
                                                                        more
                                                                           an
                                                                                 alphabetic
                                                                                  identifier
                                                                                               numeric
                                                                                             permitted by
                                                                                                                or     type characters.      ~
                                                                                                                                                     the          assembler                      is.
                                                                                                                                                                                                        The
                                                                                                                                                                                                        127
              characters,                          While
                                                                    theminimum
                                                                             length is                                     two
                                                                                                                                  characters. Note that                                            while




                                                                                                        =
                                                                                                             Da]      ae
 Assembler                  Users                  Guide



 single-character                                     identifiers                                      are            not               expressly                    prohibited,              defining
                                                                                                                                                                                                                       â€”




                                                                                                                                                                                                                           EN
 identifiers                       with             names              like                 "A"            or     "B"             can      lead           to           unexpected               results
 when
              using indexed addwessingmodes.                                                                                      In      general,              it         is
                                                                                                                                                                                  considered            good
 coding practice      to                                   use
                                                                       identifiers                                 with                   names           that              are          contextually
 meaningful     instead                                      of        identifiers                                with             arbitrary                   and
                                                                                                                                                                          meaningless names.
              In      certain     cases,                               special terminating  charactersmay be reference
                                                                                                                used to
 denote               the     end     of                         an
                                                                         identifier, for example, the qualified
        PENSION"
 â€œEMPLOYEE.   contains the period character                                                                                                               as         a terminator               of       the
 identifier                         "EMPLOYEE".The                                                terminating character                                              is    not       considered   as
 part     of          the          identifier;     it                                       is                                               as
                                                                                                            considered                                 part               of       the    qualified.
 reference.                         It.  is important                                             to         understand                             that characters                           like       the   .
 underbar                 and       the             backslash                          are         valid                identifier                   characters   and                         are        not
 equivalent                        to
                                              special                   purpose       terminator                                                   characters.    The                       assembler
 treats             all           characters                       of    an   identifier   as significant.
              Some                                         of
                            examples
                                                                   valididentifiers                                                are?



                            MONTH                                                       -




                            THIS IS A. VERY_LONG
                                               IDENTIFIER
                            \Break\,                                               .




                            lower case _identifer
                            task_done?
                            PLMSSTYLESIDENTIFIER
              If          the            Motorola
                                      compatability option has been. selected, the
 assembler                   will
                            internally       truncate     all    identifiers      to six characters.
â€˜If   the    identifier      was   originally      longer     than    six   characters,      the
                                                                                                    excess                                                                                                         _




is     simply     discarded.       No warning       is issued      unless    the  truncation     process
results        in multiple
                                 definitnions       of a single       identifier.
 2.3      -

                   Implicitly                       Defined               Identifiers
              Assembler initialization                                                           places several     identifers    in     the                                                   global _
dictionary                   and
                                              assigns                  their                 values prior                            first
the       input             source                  file.      These
                                                                                                                to  beginning  the                                                            pass.on
                                                                                              identifiers       are  protected    symbols,                                                           i.e.,â€”
any           attempt                    to           redefine       their                                      value             will        result             in        an     error      message,
with          no change                       in      in         the    identifier                                      value.                    These               implicitly              defined          â€”
identifiers
                                                                                                       :




                                   are         as      follows:

              DAY                         The
                                                                                                                            month, as                        ASCII characters inâ€™
                             -~


                                                       current                     day of                       the                                    two
                                          a         sixteen              bit                value                 with             the
                                                                                                                                           star         attribute   set.
              FALSE          --
                                          The          truth             value "FALSE".
              MONTH          â€”-
                                          The          current                 month                       of the                 year,           as    two ASCII characters                             in
                                          a         sixteen              bit                value                with              the      star        attribute set.

              TRUE -~                     The truth                     value "TRUE,
              YEAR                        The last                                                               of
                            -~                                          two            digits                               the          current               year,              as two ASCII
                                          characters                          in            a      sixteen                   bit          value                                   star
                                          set.
                                                                                                                                                        with              the               attribute
                                                                                                                                                      Users Guide
                                                                                                                                               Assembler                                  â€”




          2h          =

                              Input Statements
                          â€˜The
                        assembler input       consists      of     â€˜one or more           files      containing
         assembler        language  source     statements,       assembler         directives,    and comment â€”
           statements.        Source statements         assemble           into     actual -    machine    code
           instructions,     and    in     general     have      a    one.      to one    corespondence    with -
           machine operations.      Assembler directives              set    environmental           parameters   â€”


           affecting                      machine           code             generation,                       listing                 format,          and   dictionary
                                                                                                                                  document             and-   format. an
           structure. Comment statements                                                    are         used           to.
                                                                                           but                       otherwise.                   unprocessed    by.     the
           assembler â€” program listing                                                                 are
                                                                                                                             wo
                                                                                                                                         BES
                                                                                                                                                                                 pe

           assembler.                                                  Es




         2.5              =
                              Comment
                                 Statements                                   ~




                                                       ementsbeginwitheither                                          a     plus sign "+", an asterisk
            getteo or
           tt
                                                            terminated            with    a   carriage   return
                         a period
                                      ".", and are via             the assembler "P" option,                  the.
           character.       If paginat fon is selected
                                                                                                 significance.
                                     :




                   sign and asterisk.                  comments      assume        special
           plus                               type                              a
                                                                                the assembler
           Those    comments beginning with a plus sign force                                        to 4 new
           page,      ae if    a   PAGE mnemonic had            immediately preceded the comment.
           Comments beginning with an asterisk            cause      the assembler          to   force    a new
                                                                                                                   |
                                                                                      page-     This   facility
           page if fewer than 14 lines remain              on    the    current
           ds extremely       convenient for preventing logically                 connected sections of â€”                                                    |




           source code from overflowing page                                                     boundaries.                       4




lettin          2.6       -

                              Source Statements
                 â€˜The   assembler classifies                source          statements               primary                                        into                              and
            secondary statements according            to      their         position       in     an    input lines
            Primary    statements begin          in      column        one        of.  the   input    line,   and are
                                                                        a                         If  the    primary
            terminated   by a carriage           return         or            semicolon.
                                                                                                     more secondary
                                                                                                                        =                                                                     __




            statement was terminated              with a semicolon,                   cone    or
                                                 on the same                line,     each     terminated.      by a   â€”
            statements may follow it
            semicolon     of carriage     return.      The       only     restriction        on                 format =                                   statement
            is that optional       f
                                   optilide,  if  present,         must     start     by   column        30 of the
           input record,        or   be    separated         from     the
                                                                               preceeding field by only one
                                                                                                       ed
                                                                                                                                  wien
                                                                                                                                                      es




                                                                                                                                                                            ea
           space.                           pe                                       :




                2.601- Primary
                           Statements
                          _
                              Primary      consistof and label
                                    statements                   field, an mnemonic
                                                                                 operation =           an

                                                            an                  statement                                                                         All
                code          field,            an             comment
                                                           operand                field,                                                          field.
                fields           are       optional            however,an operation                                       codefield                 must     be present     1f
                an  operand field is to be used.                                Some                                  operations    have                    restrictions     on
                label and/or operand fields. Notice                                                          that       a null             line      is     a valid    primary                     â€”~
                statement;                 as         is      a             line         with         only       a     comment             (which          must     begin         after
                 input colum 30).                                  _
                              Labels,            if        present;                  must             begin            in         colum             one
                                                                                                                                                            of          a   primary
                 statement,          consist of a valid
                                           and              assembler        identifier.                  label                                                         The
                                                                    or     colon.      Labels     terminating
                 should terminate with a space, a period,              a                  of    the
Pati
                 with   a colon  are   defined:  in the.    parent     dictionary                     current
                                       represent explicitly     declared               addresses.        Labels
                 dictionary     and
                                                    defined      in    the
                                                                             entry
                                                                                global      dictionary       and
                 terminating    with a period are



                                                                                                 me
                                                                                                       930
                    Assembler                          Users          Guide



                    represent                        global                   definitions.          â€˜The value      of                                                    a
                                                                                                                                                                                    primary source                       statement
                    label     is                   the value                  of the program counter at                                                                  the
                    evaluation,                                and                                                                                                                  beginning      of                    statement
                                                                             has.    the relocation        attributes                                                                    of
                    program                    counter.
                                                                                                            -
                                                                                                                                                                                                 the     currently            active
                                                                                                                                                                                                   my                                            te




                                       In          order              to         clear                               up          some             of          the         details
                                                                                                                                                                                                                                                               â€”
                             _




                   paragraphs,                            an
                                                                                                                                                                                                     of       the previous
                                                             example of assembly                                                            source             statements
         ..




                   Section                   of         code
                                                                                                                                                                                                   is provided.           This                                 â€”
                                                               is a subroutine  to                                                        perform                   a   single                   bit    right    arithmetic
                   shift on                        a
                                                        multi-byte    field.                                                                                                  an




                                                                                                                                                                                                                wf       ES


                                                                                1.             Â®                                              :                                                             :




                                                                                                                                                                                                                                ce
                                                                                2-             +
                                                                                                                     SUBROUTINE                        TO     SHIFT                A FIELD              ONE     BIT RIGHT
                                                                                4-                              ENTER
                                                                                               +
                                                                                                                                       WITH X =>. FIELD TO SHIFT
                                                                                5.                                                          B =   BYTE COUNT OF FIELD
                                                                                6.             Â»
                                                                                                                                                                                                  ae
                                                                                                                                                                                                                            .




                   Ok
                                                                                7.                      .
                                                                                                                                      PROC                                                see     Sed
                                 0000          A6 84                            8.            SHIFT:                                LDA           0,x-                             GET FIRST BYTE                                                     ae



                                 0002           47
                        ~


                                 06003         A7        80
                                                                            9.                                                      ASRA                                           SHIFT RIGHT
                                                                                                                                                                                                                     ARITHMETIC.
                                                                                                                                                                                                                               -
                                                                           10.
                                 0005
                                                                                                                                    STA            0, X+                            PUT
                                                                                                                                                                                         IN MEMORY
                                                                                                                                                                                      BACK
                                               5A
                                 0006          A6
                                                                           ll.                                                      DECB                                           DECREMENT
                                                                                                                                                                                           THE BYTE COUNT
                                                         84                12.                ROTATE                                LDA                0,x                         GET          NEXTBYTE                             fe
                                 0008          46
                                                                           13.                                                  RORA
               -.                0009          A7. 80                      4,                                                       STA            0, X+
                                                                                                                                                                                   ROTATERIGHT  ONEBIT
                                                                                                                                                                                   PUT BACKIN MEMORY  _
                                 0008          5A                          5,                                                       DECB
                                 000C          26 F8                       16.
                                                                                                                                                                                   DECREMENT BYTE COUNT                                           .




                                                                                                                                    BNE            ROTATE
                                 OOOE          39                          17,
                                                                                                                                                                                   CONTINUETILL DONE                                         ~




                        a
                                                                                                                                  IS
                                                                           18.                                                    END

                                   Lines                 1-6 of            the            above                           subroutine                    are         comments
                                                                                                                                                                         explainingwhat the
               routine                      does          and         how            it        is               to             be
                                                                                                                                        â€˜parameterized.                 Such
              strictly                    speaking, unnÃ©cessary in
                                                                                                                                                        Â©
                                                                                                                                                                comments are,                                                                                  -
              are
                                                                                                                                   that. the assembler    ignores them.    They                                                                            =â€”
                                  provided    to
     .                                            benefi Programmers                                                                  (perhaps     yourself)    attempting  to
              understand                                the           code.               .        It                ig        always considered good coding practice
              type                 a     few
                                                       extra          lines               to                                                                                to                                                                                 :
              line                 1 is                                                             thoroughly document.                                                subroutines.                            Notice                    that.
              routine                       will
                                                an
                                                          asterisk-type
                                                         not  cross over
                                                                                                    comment.                              This   line helps
                                                                                                                                                                                                to assure              that               this
                                                                                                                a          page         fold   in a printed
                                                                                                                                                                                                 listing.
                                  Lines                8-17
|




                                                                       are                assembler                                    source                                                   and represent
         6809machine                                       instructions.                                            The
                                                                                                                                                            statements
                                                                                                                                                                                                            actual.
     appears      to                                   the                                                                       object code generated by                                                 the
                                                                                                                                                                                                                       assembler
                                                              left of the                                   line           number.     The label
      an explicitly                                        declared                entry                              point    to  the
                                                                                                                                                                           "SHIFT:"on line 8 is
       0000    (Hex).                                           The             "LDA"    in
                                                                                                                                        subroutine                          and has the value
       Accumulator".
                                                                                                                               line       8       is     an      assembler   mnemonic                                 for            "Load _
                                                           The
                                                         "0,X" is the operand        and
    Mode       (see                                                                          signifies    indexed     addressing                                                                                                                           =
                                                addressing        modes). The label        "ROTATE" on line          is a local
              label                    and  has    the  value      0006 (Hex).    It     is not
                                                                                                                  12
              of            the            subroutine
                                                                                                    defined anywhere outside
                                                              and    will                                                       not           conflict                  with             other          similarly
              labels..                                                                                                                                                                                                               named
                                  Lines 7 and                        18      are              assembler                             directives                      and                         used to delimit the
                                                                                                                                                                                   are
                                                                                                                                                                                                                                                           _
    oS subroutine.  For   more                                                       details                              on
                                                                                                                                    their          function,                       consult          the chapter on
                                                                                                                                                                                                                                                                   ae




       assembler directives.
                                                                                                                         Assembler Users Guide

          20662                   =

                                           Secondary       Statements

              . Secondary    statements begin
          primary statement,     and consist of                                       a
                                                                                        after
                                                                                          mnemonic
                                                                                                   the
                                                                                                           semicolon  terminating
                                                                                                                   code
                                                                                                                                                                        a

                                                                                                       operation                               field,               an
         operand                            field,        and     a
                                                                  comment             field.       Labels     may             not       be    defined        in             a
         secondary                           statement.          As    before,             operand        and            comment              fields         are
          optional.       Note                     codes    that
                                                          are      operation
                                                                required in     secondary
          Statements.  If    the Motorola compatabilityoption hae been      selected,  no
          secondary statements     will    be recognised.   A    short   segment of code
          containing  secondary statements will serve to
                                                            illustrate their utility:
                                        LDDs CHERSUM=â€”â€”iâ€”=â€œit*Â«Ã©k     Cp the Checkoum     ce
                            _
                                        LSRA; ROLB             â€˜Shift  it Left. one Bit
                                        ADDD
                                               -NEWORD
                                                     = =â€”â€”sÃ©sAddsin'     the Next Word â€”
                                        STD     CRERSUM      Stuff    ==
                                                                       Back in
                                                                                Sun
          2.6.3 = Mnemonic
                                                                                                                   |




                                                          Operation
                                                                 Codes
                        -




                                Assembler sourcestatement mnemonic                   operation   codes may be 6809
         Operation                               mnemonicslisted           Table  2.1,   6800   Family compatability
          mnemonics,                             listed    in table  2.2, or 6809 extended
          table
                                                                                               mnemonics, listed     in Ley
                                     2.3.             The 6809
                                                                   and6800 Family mnemonics        identical     those are                              to
          defined byMotorola in                                                         and
                                                                      the 6809 Programming                   Macro              manual,
                                                                                                                                Assemblers
          publication                             M68MASR.          The 6800 Family compatability                                        mnemonics                are
          provided to simplify                                   the process of upgrading previously                      written 6800
          software           on the 6809.   to     run
                                                  that not all               Note                                  6800 Familyoperations =
fT       have equivalent    6809 operations, and that the assembler             will generate
         instruction _-gequences that emulate the 6800                operations.     Several                                                                                           -




          extendedmnemonics are provided    as an aid   to structured
                                                                             programming, and
          to. simplify syntax for several types of
                                                      operations.
                            For
          label
                â€˜


                                        primary s tatements,
                                                         the mnemonic mustbe                                                 separated from the
         made
                                       (1Â£ any) by       oneat    least
                                                              separator   character. No distinction    is
                                between  upper case and lower case mnemonics, so that.
     _




                                                                                          the mnemonic
         for                    a
                                     6809 no-operation        be   either   "NOP" or "nop", or for that
                                                         can
     Matter,                               "Nop" or "nOp", ete.             In
                                                                                     general, each mnemonic code coresponds
                                                                                                                                                                                _




         with    a 6809
                        machine instruction.                                             This                                also
                                                                                                    assembler                          recognises            6800
          Family mnemonics, and                                                       a
          equivalent
                                   performs                                                    cross-assembly                   into
                                                                                                                                              functionally _
                                                 6809instructions.
           :




                    -       The 6800Familyoperations   have been  included to provide for a
         simple                 and
                                    -Yapidupgtade to 6809from other members of the family. In
         most                   cases, the code can simply be reassembled
                                                                                    for the 6809. There are
         certain                 functional differences     that   may create problems.        In particular,
                                                                                                                  â€”
         the                     of constructs
         any.
                            use
                            event, the
                                                  like  "BNE
                                           cross assembled code
                                                                +12" are likely
                                                                   is
                                                                                       to be troublesome.
                                                                                   to be much less
                                                                                                               In                                                                   _

                                                                        likely                       effecient,
         both                 in terms    of time and code space,     than     code rewritten  for the 6809.
                                                            __




          266.4 Operands         =




                                Source       are required with
                     statement
         â€œmnemonic operations. operand
                                If
                                      fields the
                                   present,      operand
                                                                                                                                    many of        the 6809                                 =


                                                                                                             field must                        begin  before
         column                       30    of    the     input statement,         or be                                                     the
                                                                                                    separated from                                   mnemonic
         field                        by exactly              one space.         Operands          can   consist             of register                 or flag



                                                                                 ~
                                                                                     2n5       =
             Assembler                      Users
                                                                     Guide

             designators,                              addressing                          mode indicators,                                  and                  expressions.                            The            exact
             format               of        an         operand                      varies                             the
                                                                                                    with                           addressing                      mode           capabilities                      of          the
             particular                               instruction.                                A         detailed               functional
                           6809
                                                                                                                                                                              description                         of           the
            Various                 addressing modes                                                                      is    covered       in                     a        later     chapter                   of          this
            publication.         Any information         in                                                           the    operand      field                          of
            do not     have     operands   is    treated    as
                                                                                                                                                                                    instructions â€˜that
                                                                                                                             statement
                                                                                                                                                           comments
             2.6.5           =

                                   Statement Comments
                           Statementcommentsfollow                                                                       the.            operand â€˜field (de present)and
             continue          until                                 the                                    statement
        _




             Statement                                          be
                                                                                    end      of                                            is              encountered.                             The           end                 of   |
                                                 may                       the           carriage                return           at    the            end      of a line,                       or        it       may         be.



             a
                 semicolon                       character.                                A semicolon                        indicates                      that                                     statements
                                                                                                                                                                              secondary
             will          follow                     on         the         same
                                                                                          source.input line.
                           One         complication                                      caused by the ability                                        to          have         multiple                   statements
             per           line                  is        that              statement                     comments                 (as
                                                                                                                                                                                                                                                   Â©.

                                                                                                                                            opposed                      to     comment              statements)
             may       not         contain                        the             semicolon                character                     unless                   certain
             noted.                       the
                                                                                                                                                                              restrictions                                are
                                 First,         semicolon                                                   should appear                             after            column    30 on   the
                                                                                                                                                                                                                                               Â©




                                                                                                                                                                                                                        input
            line,            and  second,   the    semicolon                                                  should. be                              followed                      by      at        least                    two                 ee
             spaces.                     This                  will                 inform            the             assembler             that              no         more          statements                   may be.
                                                                                                                                                                                                                                                        -




             found           on        this                line.

                           Another                         consideration that must be noted
             Statements                                         line
                                                                                                                                                                              when.          using multiple
    _


                                              per                              is that                it         is     possible                 to         make              the        assembler                      think â€”
        that                 the             first                         statement                  comment                      on       a              line          should           be        treated              as           a
             secondary             statement.       In order to avoid  this  difficulty,  it  is suggested
             that            the     last   secondary statement on a line be terminated       with   a space
             instead             of a                  Some examples of this
                                         semicolon.                             technique are   shown: _

                           FILL                  STA                                                                                             Filla
                                                 ASRA; RORB
                                                                0,X+; DECB; BNE FILL
                                                                                                                                                 Shift
                                                                                                                                                                     field                                      >
                                        _




                                                                                                             a                                                      D-Register                   Right
             2.7.      +
                             Assembler                            Directives.
                           Assembler                        directives
             primary
                                                                                                  must always                      be     encountered                           in the contextof                                          Ae
             line          of
                              statement,                                         i.e.,        they               must         bethe only operation      appearing ona
                                       input                     text.                     Several                     directives     have    restrictions        on
            presence                        of             label                  fields
                                                                                                                                                                       the
_                                                                                                      and             will generate     an error    message   if    these _
            â€˜Yestrictions                                  are              not            met.                       Similarly,                       several                       directives                        have                â€”
             restrictions                                                  the
                                                           on                             presence                of operand                     fields.           Assembler                          directives
            â€˜vary          widely                 in        function                       and        are         discussed                 in                separate chapter                               of
_




                                                 Valid
                                                                                                                                                       a
                                                                                                                                                                                                                          this
            document.                                                  assembler                   directives                      are      listed                  in         table       2.4.




                                                                                                                  â€œ     Qa6 ~
                                                                                                                                                                                                                                                          Assembler
                                                                                                                                                                                                                                                                UsersGuide

es   oe            Be
                                              oS                                                                              me
                                                                                                                                               Fable                             2.1
                                                                                                                                                                                                                          =




                                                                6809 Assembler                                                                 Mnemonic                                                          Codes
                                                                                                                                                                                                         Operation
          ABX                                                                                                                                                                                                                               Add      B to         IXR
                                                                                                             eae.
                                                                                                                                                                                                          2
                                                                         =
                                                                                                                                      *                                      *



          ADCA.                     ApcE.                                    *         *            *
                                                                                                    a                     8
                                                                                                                                      *                                      *                   we                                         Add      with Carry
          ADDA
          ANDA
          ASL= ASLA-â€œASLB
          ASR ASRAâ„¢â€˜ASRB
                                â€”
                                    ADDB- ADDD
                                                    ANDCC
                                                                             *




                                                                             oe
                                                                             ee
                                                                                       .            *




                                                                                                    ee
                                                                                                    a
                                                                                                             eeee
                                                                                                                  ee
                                                                                                                      ee
                                                                                                                         Logical
                                                                                                                          Arithmetic
                                                                                                                                      *



                                                                                                                                      2



                                                                                                                                      *



                                                                                                                                      *
                                                                                                                                                            .




                                                                                                                                                           ee
                                                                                                                                                                             *



                                                                                                                                                                             *



                                                                                                                                                                             .



                                                                                                                                                                             e
                                                                                                                                                                                                 we

                                                                                                                                                                                                         er
                                                                                                                                                                                                                               eee} Add              without


                                                                                                                                                                                                                                            Arithmetic
                                                                                                                                                                                                                                                              Carry
                                                                                                                                                                                                                                                                 And       -
                                                                                                                                                                                                                                                                     Shift Left
                                                                                                                                                                                                                                                                     SHift Right
               LBCC
          BCS...                    LBCS|
                                                    Â«
                                                            i    e



                                                                                                             eeee Ceele eeBranch      *


                                                                                                                                                           ee
                                                                                                                                                                                                 @



                                                                                                                                                                                                                                            Branch
                                                                                                                                                                                                                                                            on      Carry Clear
                                                                                                                                                                                                                                                                    Carry         Set
                                                                                                                                                                                                                                                                                                           â€”




                                                                                                    eee
                                                    *       *                                                                         *                                                          @                                                          on

          BEQ-                      LBEQ.                                    ee                               i                       *                                      *           o.                                             Branch              on      Equal                                                         ss
                                                    eeee                                              ee                                                                                                                       weâ€˜Branch on                         Greater           or Equal

                                                                eeeee ee
          BGE
          BET LBGE
                                                                                                                                                                                                                                                                                                                                           =:




                                                                                                                                      s                     Â°*               +.                  Â»


                                                                                                                                                                                                         ee

                                                                                                    eeee
                                                    ae                       ee                                                       *                     *                *                   Â»
                                                                                                                                                                                                                                            Branch          on      Greater                    o


          BHI LBL
          BS - â€˜LBHS: a
                                                    we er      ee                                                                     e                         2            *.                  *
                                                                                                                                                                                                         ee

                                                                                                                                                                                                         cee
                                                                                                                                                                                                                                    .

                                                                                                                                                                                                                                            Branch          on      Higher
                                                                                                                                                                                                                                                                                             ne
                                                                                                                                                                                                                                                                                                                                 oy
                                                                                                             ee                        .                    Â°*                Â°                  o
                                                                                                                                                                                                                                        Branch on                                     or â€˜Same
          BITA- â€˜BITE we
                       a                                                                                                               Â«                        Â°            .               .
                                                                                                                                                                                                         er
                                                                                                                                                                                                                                        â€˜Bit Test                   Higher
                                                                  ee ee,
      _




          BLE.                      LBLE-            ce    ae        eeee                                     ee                       *                        s             2                  .       Pr
                                                                                                                                                                                                                                        Branch.             on      Less or
                                                                                                                                                                                                                                                                         Equal
                                                                                                                                                                                                                               aeBranch on
          BLT                       LBLT                             Â»       a                                ae                       *                        Â¢                +               *        2?
                                                                                                                                                                                                                                : Branch                            Less

                                                    eeee
                                                                                                                                                      ee
          BMI
          BNE
           BPL
                                    â€œLBMI
                                     LBNE                  oe
                                                                                                                  ee
                                                                                                                    ee ee                 *

                                                                                                                                                      ee
                                                                                                                                                            7Â°.




                                                                                                                                                                .
                                                                                                                                                                                 s


                                                                                                                                                                                 .
                                                                                                                                                                                                 8
                                                                                                                                                                                                 e
                                                                                                                                                                                                              .


                                                                                                                                                                                                                  e
                                                                                                                                                                                                                                         on Minus â€”
                                                                                                                                                                                                                                        â€œBranch on Not Equal
                                                                                                                                                                                                                                                                                                   â€”




                                    LBPL                        oe                                                     ee                 *                     e                .               Â°                2
                                                                                                                                                                                                                                        Branch on Plus

                                                                             Rege                                                                                                                                              ee
                                                                                                                                                      ee
                            -




           BRA      ee
                  eee                LBRA-                                                                                                                                                                                                Branch
                    eo
                                                                                                                                          *                     o                *                                e
                        -
                                                                     .
          â€œBRN
          BSR
                           eeee Pe   LBRN
                                        LESR
                                                           a         ae
                                                                     â€œ
                                                                                                                                           *



                                                                                                                                           s
                                                                                                                                                                 *



                                                                                                                                                                 *
                                                                                                                                                                                 *


                                                                                                                                                                                  e
                                                                                                                                                                                                  *



                                                                                                                                                                                                     *
                                                                                                                                                                                                              :




                                                                                                                                                                                                                  *
                                                                                                                                                                                                                                    Â»
                                                                                                                                                                                                                                         Branch Never
                                                                                                                                                                                                                                        Branch to â€˜Subroutine
                                                                                                                                                                                                                                                                                  :




                                                                                                                                                                                                                                                                                                           Oe
                                                                                                                                                                                                                                                                                                                ws




          BVG-
          BVS     ee
              LBVC:
          BZC LBZC.
                    ee
                       ee
                           ee
                          weeeee
                           ee.
                                 ewe ee                          .
                                                                     *                                                                     2



                                                                                                                                           Â¢                    *.
                                                                                                                                                                    .             *


                                                                                                                                                                                     *
                                                                                                                                                                                                     *



                                                                                                                                                                                                     2
                                                                                                                                                                                                                  *



                                                                                                                                                                                                                  Â°
                                                                                                                                                                                                                                        Branch on Overflow Clear
                                                                                                                                                                                                                                        Branch on Overflow Set.
                                                                                                                                                                                                                                          Branch on Zero
                                                                                                                                                                                                                                                                                                                             -




          BZS.                            - eeee*
                                        LB2S
                                                                e.



                                                                                                    ee ee
                                                                                                                                           *



                                                                                                                                           .          ee        +
                                                                                                                                                                     *               *



                                                                                                                                                                                     *               eo.
                                                                                                                                                                                                                  s



                                                                                                                                                                                                                      e
                                                                                                                                                                                                                                         â€˜Branch on Zero Set
                                                                                                                                                                                                                                                                                  Clear
                                                                                                    eo
          CLR
          CMPA                          CHPB                                                   g: wee     QÂ¢
                                                                                                       Wyse  a   eeClear
                                                                                                                  Compare
                                                                                                                  &
                                                                                                                                              e

                                                                                                                                                      eh
                                                                                                                                                           ba)
                                                                                                                                                                     a               Â°
                                                                                                                                                                                                     Pe
                                                                                                                                                                                                                      Â°                                                                   ae




                                                                                                                  Compliment
                                                                                                                                                                                                                                                                            Sos

          COM                                                                                                                                                                                             &


           CWATee
          â€œDEC.DECA
                                        toe    *
                                                                                           :




                                                                                                aeee
                                                                                               es
                                                                                                     BS
                                                                                                    ee
                                                                                                    ee
                                                                                                       ee
                                                                                                      eee
                                                                                                       ew
                                                                                                         eeee eoOR
                                                                                                             eee
                                                                                                         eeee le
                                                                                                                  Conditioned    Wait
                                                                                                                   â€˜Decimal Adjust                                                                                             le




                                                                                                 Oe
                                                                                                                                                                                         :




                  =D                                                                                                                                                                                      a                             Decrement
                                                                                                                          WO
           EORA|
                                                                                                                    ee 8   eo
                                                                                                                                                       8                Ce

                                                                                                                                                                                                     eee
                                                                                                                                                                                                       eeeae                            Exclusive                      Or


                                                                                                                                                                                                                                                                  Registers
                                                                                                                                                                                                                                                                      |
                                                                                                    eeeee
           EXG                                                                                                             Exchange
                                                                                                                              a

           INC                      INCAâ€               INCB.                                                    ee                       ae
                                                                                                           oe ee weae ee_ inerement
                                                                                                                                                                                                                                        _
           IMP                          os     Â¢.                                              en
                                                                                                                            Jump                                                                                                                      _

          ISR                   eee                                                                              oe       - Jump to Subroutine
                                                                                                                                             <
           LDA                                                                                               Dt
                                                                                                                beoo oo.
                                                                                                                   the   be
                                                                                                                          Load
                                                                                                                              a
                                                                                                                                 Register
                                                                                                                                                           ee
                                                                                                        SP
           LEAS_ LEAU LEAX                                                                                                    ew                                             we                                       -
                                                                                                                                                                                                                               oy Load Effective                             Address                                     |



                                                                                                                                                      eeee:
                                                                                                                                                                                                                                                                                                                     5

                                                                                                                              8

           LSL   LSta LSLB                                                                                                                                                                                                *
                                                                                                                                                                                                                                             Logical             Shift      Left
                                                    SRB                                                                                                  ew                                                                    a




                                                                                               Be
           LSR                                                                                                                             ee                                                                                                                    Shift
                                                                                                                                                                                                                                            â€˜Logical




                                                                                                eee
                 LSRA                                                                                                         â€˜Â«

                                                                                                                                                                                                                                                                            â€˜Right

                                                                                               ee                                                                       eeee
                                                                                                        ee                    .
                                                                                                                                                                             Oe
                                                                                                                                                                                                                      we

                                                                                                                                                                                                                                        Multiply.




                                                                                                ew
                                                                                  .)



          NEG NEGA                                  â€˜NEGB                                                                                                                                                                               - Negate
                                                                                                                               eeeeee ~Inclusive
                                                                                                        ee        Se



           NOP                                                                                      ee
                                        eee              eee

                                                        ORCC
                                                                                                    ee Se                     Ree    ee
                                                                                                                                        No-Operation
                                                                                                                                                      a
                                                                                                                                                                                                                          *



                                                                                                                                                                                                                          *
                                                                                                                                                                                                                                    _
                                                                                                                                                                                                                                                                       Or
           PSHS
           PULS                     PSHU
                                    â€”
                                                                                                    ee ee
                                                                                                    ee ee
                                                                                                                              *                      |                    ee
                                                                                                                                                                         ee ww
                                                                                                                                                                                                                          .             -

                                                                                                                                                                                                                                            Push      â€˜Ragistersâ€™stack
                                                                                                                                                                                                                                                                    Ce                S
                                                                                                                                                                                                                                                                                                                                                ts
                                                                                                                                                                                                                                                                                                                                                |




                                                                                                              ane
                                                                                                                              Â°


                                                                                                                                           Se
                                                                                                                                                                                                                          *
                                                                                                                                                                                                                                        Pull              Registers           from                                                    oe
           ROL.
           ROR
               ROA                                      ROLB
                                                        RORB                                            Pee        Peer
                                                                                                                               a



                                                                                                                                  *               a                      ee ee
                                                                                                                                                                                                                          *



                                                                                                                                                                                                                           *    ee      -


                                                                                                                                                                                                                                 Rotate Right
                                                                                                                                                                                                                                             Rotate          Left                                      :

                                                                                                                                                                                                                                                                                                                                      oe




                                                                                                                                                                         2-7
                         Assembler                       Users                  Guide

                                                                                                                             -           Table                             2.1                     contâ€™

                                                                          6809                            Assembler                                      Mnemonic                                            OperationCodes
                         RTI                                     eo         6
                                                                                    es                               Â«           *                                                    Â°                     Â«Â©                       *
                                                                                                                                                                                                                                           Return          from
                                                                                                                                                                                                                                                                        Interrupt
                         RTS         .

                                         e           .   Â°
                                                                     eo     8   6                                    .           Â°                                               Â«6                    ee        Â«                   s     Return  from. Subroutine
                                                                                                                                                                                                                                                                                              .




                         SBCA.           SBCB                    eee                                                 e           s                                               Â«Â©

                                                                                                                                                                                                            8                        *
                                                                                                                                                                                                                                          Subtract    with borrow
                     ~




                         SEX             Â°           Â°   *       e
                                                                          Pd        *                                >           @                       ee        Â«                                                                 *.
                                                                                                                                                                                                                                          Sign: Extend
                         STA
                                         â€˜STB st                                                 Re                  STU                          CBee
                                                                                                                                                   eIbe Ge                                                                           *
                                                                                                                                                                                                                                          Store:
                                                                                                                                                                                               emg
                                                                                                                                                                                                                                                                   wg




                         SUBA
                         SWI.
                                         SUBB:
                                         SWI2
                                                             SUBD
                                                             SwI3
                                                                                                 e                   *                            Â«Â©
                                                                                                                                                                   Â©             29.                                                 e
                                                                                                                                                                                                                                          Subtract.   without                    Carry
                                                                                                 @                   .                            â‚¬Â¢
                                                                                                                                                                   8                                                                 Â»
                                                                                                                                                                                                                                           Software              Interrupt
                                                                                                                                                                                 38 ce
                         SYNC                                    eee                                                 Â°                            e@               Â©                  @                                              +
                                                                                                                                                                                                                                           Synchronize                  to. Event
                         TFR                                                                     ee
                         TST             TSTA
                                                                  ee
                                                                 eo
                                                                   TSTB
                                                                                                                     Â°                            eo               @



                                                                                                                                                                   Â¢
                                                                                                                                                                                      8



                                                                                                                                                                                      e
                                                                                                                                                                                               oe                                    *
                                                                                                                                                                                                                                          Transfer
                                                                                                                                                                                                                                          Test.
                                                                                                                                                                                                                                                                 Registers                .




                                                                                                                                             -           Table                            2.2                        -




                                                                     Supported                                 6800 Family Mnemonic
                                                                                                                                Operation                                                                                                                        Codes

                         ABA                     e       *   .         ..                                                                Â°           Â°             *              e                *                             *        Add  B to A
                         ASLD                Â°

                                                                                        le
                                                                                                                                         e           Â»            *    mee, le
                                                                                                                                                                                 *                                               e
                                                                                                                                                                                                                                          Arithmetic     Left                Shift
                         CBA                                                                               eeee                                                          @
                                                                                                                                                                                               @ee
                         CLC
                                             *                                          es



                                                                                                     wee                     8           *        e            *                 @                                            e
                                                                                                                                                                                                                                          Compare   B to    A
                                                                                                                         kl
                                                                                                                                                                       ee ee
                                             o
                                                                                                           a                             e        e            s
                                                                                                                                                                                                                                          Clear        Carry




                                                                                                                                                                       Ce
                                                                                                                                                                                 Â°             8                              *


             _
                         CLI                 e

                                                                                         eeme ltl     ee                                 Â°        e                              *             o
                                                                                                                                                                                                                                          Clear        Interrupt.            Mask
                         CLV
                         CPx
                                             Â°                                          ew

                                                                                                           eelel
                                                                                                              ee Compare
                                                                                                                                         2        Â«            *
                                                                                                                                                                       a         *             *                             *            Clear        Overflow              _
                                                                                                       eee
                                             *                                                       8
                                                                                        le                                               e        e           Â°.                 Â°
                                                                                                                                                                                                                                                            to     Index
                                                                                                           Oe
                                                                                                                                                                                           Â©.                                A
                                                                                                                                                                                                                                                                                  .




                     â€˜DES                    e                                           8
                                                                                                           8                         Cy          2Â°            +                 e             *

                                                                                                                                                                                                       oe
                                                                                                                                                                                                                             e
                                                                                                                                                                                                                                          Decrement               Stack      Pointer
                         DEX                 e                                                       we le      me

                                                                                                                         Index           e       e            *                  *             .            8
                                                                                                                                                                                                                                          Decrement                          Pointer
                     â€œINS                    Â°
                                                                                             ee      &mhlUl                              e       e            e                  Â°             Â¢            Â©                .
                                                                                                                                                                                                                                          Increment Stack Pointer
                         INX     â€”

                                                                                        ew     meeeeelhl                             s           e            a                  Â»             e       oe                    e
                                                                                                                                                                                                                                          Increment Index
                 ~


                         LDAA                                                                        8                   el ca                   *            *        Â©         @             @       6Ã©                    e
                                                                                                                                                                                                                                          Load Accumulator
                                                                                             ee ew
                                                                                                 eeel
 ~




                     LSRD                                                                                                                e       eo           *        #         Â©        wf                8            e
                                                                                                                                                                                                                                          Logical Right Shift                                           ae
                                                                                                     ee
                                                                                                                                                                                                                                                                                              =

                                                                                        we
                                                                                                           a                         Â°           *            s        Â«         Â©             Â©        8                e
                                                                                                                                                                                                                                          Inclusive               Or Accumulator                  =
                          PSHA                               PSHX                                                        ee                                                  Â©                                                            Push on           System Stack
                                                                                                                                                                                                                                                                                                  eee



                                                                                             OeOe
                                                                                                                                     #8          s            *        Â©                       @                         e

                         PULA                                PULX                               OeOO[8                                           *            e        Â©     *             6                me Pull      e
                                                                                                                                                                                                                                                     from         System         Stack
                     SEC
     SEI
         -




               SEV
                                                                                             a



                                                                                             *       weee      6
                                                                                                                 8       Oe 0.6      e



                                                                                                                                     *



                                                                                                                                                         Â©.
                                                                                                                                                                       â‚¬

                                                                                                                                                                       Â©
                                                                                                                                                                             e



                                                                                                                                                                             @
                                                                                                                                                                                          8. ew
                                                                                                                                                                                           Â©


                                                                                                                                                                                                            ee
                                                                                                                                                                                                                         e



                                                                                                                                                                                                                         Â°
                                                                                                                                                                                                                                          Set
                                                                                                                                                                                                                                          Set
                                                                                                                                                                                                                                                  Carry
                                                                                                                                                                                                                                                  Interrupt              Mask
             - STAA
                                                                                             e       ow   Â©      #                   e                                 Â©     eo            &                             ca
                                                                                                                                                                                                                                          Set Overflow
                                                                                             â‚¬       Oe


                                                                                                             eB 0.                                                                                                                        Store Accumulator                           â€”



                                                                                                                                     *                                 @     e            Â©
                                                                                                               Â©                                              Â©
                                                                                                                                                                                                                         *

as                                                                                           *            ae   @Â©    ee              e                                 @.    s             Â©                             e
                                                                                                                                                                                                                                          â€˜Transfer Accumulators
                         TAP                                                                 *                 @Â©
                                                                                                                        Transfer
                                                                                                                         8           *

                                                                                                                                        Flags                          Â©
                                                                                                                                                                                                                                                                 Condition

                                                                                                     eee
                                                                                                                                                                             Â°             8                             .

 _9sx
     ~




                 WAI
                                                                                             Â°


                                                                                             *            eeevee @.@.e086
                                                                                                                 6


                                                                                                                 Â©
                                                                                                                                 Stack
                                                                                                                                     Â«




                                                                                                                        Wait Interrupt
                                                                                                                                     *
                                                                                                                                       Index             se
                                                                                                                                                              @              s


                                                                                                                                                                             Â°
                                                                                                                                                                                           Â©


                                                                                                                                                                                           ee
                                                                                                                                                                                                                         Â©â‚¬


                                                                                                                                                                                                                         *
                                                                                                                                                                                                                                          Transfer
                                                                                                                                                                                                                                                     for
                                                                                                                                                                                                                                                                           and
                                                                                                                                                                                                                                                                                                  uF




                                                                                                                                                         = 268 â€”-
                                                                                                                                                                                                                                                                                                            Assembler Users Guide

                                                                                                                                                                    ~

                                                                                                                                                                                         Table 2.3 =
                                                                                       â€˜Extended
                                                                                               Mnemonic Operation
        ~




             GEC             .
                                                                                             =
                                                                                                                                                                                                                                                                                                       Codes
                                                                                                              ee                          oe                *                    *                .            *
                                                                                                                                                                                                                            *           *               *                   *                    Clear      Condition           Codesâ€
             EWAL 2                                                                              eo           8            ce                               *                    e                Â«            *            *           *
                                                                                                                                                                                                                                                                                                 Enable    and Wait
            EXIT                                                                                                                          oe
                                                       eee
                             ..
                                                                                                 *@.                       ae                                                                                                           *
                                                                                                                                                                                                                                                                                                Exit    from  Procedure.
            MARK ..
                                                                                                                                                        Â®




                                                                                             oe                                           *              2                       Â°                .            *        *               â‚¬           +                       *                    Mark      Stack      for Procedure.
            RET     os                                                                           se                        BSE                                                                                                          Â»
                                                                                                                                                                                                                                                                                            -


                                                                                                                                                                                                                                                                                                Return       with      Registers
             sce,                                    oe                                      oe           .             BS
                                                                                                                                                                                                                                                                                                 Set                       Codes
                                                                                                                                                                                                                                                                                                                                                  _




                                                                                                                                                                                                                                        *
                                                                                                                                                                                                                                                                                                          Condition


                                                                                                                                                                -
                                                                                                                                                                                     Table                                      2.4                         -




                                                                                                                                 Assembler                                                                          Directives

            BSZ              4                       oe:                                     eee
            END              +    ew                            ee ee
                                                                                                                                      *                 9                    Â©                8            6            we                                              *
                                                                                                                                                                                                                                                                                    _




                                                                                                                                                                                                                                                                                                Block       Storage        of         Zeros       â€”
                                                                                                                                                                                                                                                                                                -End of
                                                                             *               eee                                     *                  Â»                    Â°               *

            ENDF                                  ee
                                                                                                                                                                                                           *            Â°           .               +                   .
                                                                                                                                                                                                                                                                                                              Segment
                                                                                  we
                                                                                             ee                        a                                                                                                                                                                        End of
            EQU              ee:
                              we                                            we
                                                                                                                                      e              @Â¢                      Â©               @             Ue       Â©               Â«Â©
                                                                                                                                                                                                                                                *&                      Â°
                                                                                                                                                                                                                                                                                                             File       (Generated)
            ERR     eeee
                   ee    ee  we
                                                                                             Â«            *
                                                                                                                           ..        Â¢               Â©                    @Â©                 Â©            te        &               #8          8                   *
                                                                                                                                                                                                                                                                                                Equate Value

            ERR ee
                                                                                             6            ee                         ee                                                                                                                                                         Generate
                                                                                                                                                                          e                  8            ee                        ee                                  *
                                                                                                                                                                                                                                                                                                                   Error    Message
                        ww   8
                                           ge
                                                                                             .         ee                            ee)                                 8                   ee                                     e                               *
                                                                                                                                                                                                                                                                                                Conditional             Error Message
                     OeOe
    .



            FCB                                                                        Sa             ee oe we                                                                                                                                                                                  Form Constant
               ee
                                                                                                                                                                                             eee

                        OO
                                                                                                                                                                                                                                    ee                              Â¥

            FCC          oe                                                                                                                                                                                                                                                         .
                                                                                                                                                                                                                                                                                                                           Bytes
                                      LE                                                 eee                                         oe                                                                                          Re.                                                            Form:
    FD.            ee                                                       is    ge                                            OO
                                                                                                                                                                         eee                                        et                                              *
                                                                                                                                                                                                                                                                                            .             Constant Characters
                                                                                             ewe.                                                                                         aw                                                                                                    Form      Double
                                                                                                                                                    ee
                                                                                                                                                                                                                                                                                                                       Bytes
                                                                                                                                                                                                                                                                                                                                                      =


                                                                                                                                                                                                                    Ã©                           .
     FMB       eeee                            ee *:
                                                                                                                                                                                                                                                                    Â°                   .
                                                                                                                                                                                                                                                                                                                                      ;




                       eee
                                                                                                                                                                ,




                                                                            *                         eee                            oe                                  oe                            @            @            @              Â¢                   *
                                                                                                                                                                                                                                                                            Form                          Multiple         Bytes
            LIB                   ae                                    *
                                                                                         ee,                           .             oe        Â©.                        ee                            Â©
                                                                                                                                                                                                                                                                                                Include
               ee ee eee                                                                                                                                                                                                                                                                                     Library
                                                                                                                                                                                                                    eee.                                            *
                                                                                                                                                                                                                                                                                                                                File

    OPT
        ORGâ€
                     ae
                                  a



                                  ee
                                           eeee   ae
                                                               we       â€˜2

                                                                        Â«        ee    ee
                                                                                         oe
                                                                                                                       si .
                                                                                                                       7         oe
                                                                                                                                                    o
                                                                                                                                                                    8
                                                                                                                                                                        8
                                                                                                                                                                                          8


                                                                                                                                                                                         hm
                                                                                                                                                                                                       Â©



                                                                                                                                                                                                      hUehlUe
                                                                                                                                                                                                                    ew


                                                                                                                                                                                                                                 Ue         Ue
                                                                                                                                                                                                                                                                    oe:


                                                                                                                                                                                                                                                                    Â«
                                                                                                                                                                                                                                                                                -
                                                                                                                                                                                                                                                                                                Name
                                                                                                                                                                                                                                                                                                Set
                                                                                                                                                                                                                                                                                                          Module
                                                                                                                                                                                                                                                                                                        Assembler
                                                                                                                                                                                                                                                                                                                                 er



                                                                                                                                                                                                                                                                                                                           Options
                                                                        *
                                                                                         oes                                    eee                                                      os           8            ee                        ee                     *
                                                                                                                                                                                                                                                                                            Begin  Program                 Counter            |
                                  oe ae
                                    ee
        PAG

                                      eee                                               ee
-
                         e
                                                                        fe
                                  oe                       a                                                                     ee                                     ee                            we           el                                           .
                                                                                                                                                                                                                                                                                             Begin New Page
        PROC             *                                              8
                                                                                                      ee                         eee                                                     ee                        eee                                          Â«
                                                                                                                                                                                                                                                                                                Begin Procedure :


                                  eee.
            PUBLIC                Â©                                     ee               *
                                                                                                      .            .                                                    8
            Qua   ee
                                                                                                                                 Coe                                                     ee                        ee                                           *
                                                                                                                                                                                                                                                                                                Begin Public  Library                         _




               Oa                                                                       wee                                                                                                                        ew es
                                                                        *
                                                                                                                                                                        ee
                                                                                                                                 Oe                                                                   8                                                         *
                                                                                                                                                                                                                                                                                                Begin Qualified Structure
                                                                        *               *             Â«            Â«
                                                                                 re                                             Oe                                      we               8
                                                                                                                                                                                                                                                                                            â€˜Reserve
        SETDP    Ce                              Oe        Be           *               eee
                                                                                                                                                                                                      ee                        eS                              *
                                                                                                                                                                                                                                                                                                              MemoryBytes
                                                                                                                                *               e                       Â©                Â©
                                                                                                                                                                                                      â‚¬            ew                       |e,                                                 Set Direct          Page
                                                                                                                                                                                                                                                                                                                                Addressing
                                                                    :
                                                                                                                                                                                                                                                                .

         SPC
             |
                     Ee
                                                           Â°

                   ee
                                  Â®
                                           *                                           ele                         .
        TTL                                                                      Eeeae
                                                                                                                                                8                       ee                            oe           we                                           s
                                                                                                                                                                                                                                                                                            Space-         Listing
            USE
                                                                                                                                â€œ@
                                                                                                                                                                        eo 6                          Â©            Â©            &           6                   *   ,



                                                                                                                                                                                                                                                                                                Provide. Title
                                                 *                               ee *                              a             Be
                                                                                                                                                                                                                                                                                            Use                                           â€”



                                                                                                                                                                                                                                                                                                             Counter
                                                                                                                                                                        ww                            ew           eee                                          *



                                                                                                                                                                                                                                                                                                        Program




                                                                                                                                                                                     =
                                                                                                                                                                                                      2-9 =
                                                                                                         â€˜Assembler
                                                                                                                Users Guide_

                              3-0            6809
                                                                    Architecture
                                     -

                                                      Software

                          6809      ~The
                          :




                                     microprocessor          is      a
                                                                          stack-oriented,     one-address
           microprocessor        containing      two accumulators,        four pointer      Yegisters,     a
                                                                                                              ve
            direct
              _       page register,       anda     condition      flag register.       With the addition
       _   of more pointer registers            and a powerful         complement of addressing        modes,
          the    6809     is    a major improvement          over    previous 6800 Family processors.
          Figure 3-1 1s a programming model of the 6809 microprocessor. The _
         following         paragraphs      give     a
                                                      brief description         of each register andof
     how                  referencedit ts    the programmer         by
                                                                     when    writing assembler source
                  eedes                                              oe     ae
                                                                                             ne
                                                                                                   nen
                                                                                                                      ee
                                                                                                                                       Oe       Us.




                  3s] = Arithmetic
                                Registers
             ae
                                   The 6809 has two eight                        bit   accumulators
                                                                                                 (called the
                                                                                                   Aand                                B
              -
                              accumulators) that are used to
                                                           perform arithmetic    and logic  operations.
                          For mattyoperations     the A. and      B accumulators can be treated like a                                      "




                           Single sixteen bit accumulator (called    the    D accumulator),
oe                                                                                            providing.
              much                           improved performance              in multiple-precision    operations.     The 6809
                          performs              all    arithmetic      operations    in twoâ€™s    complement format.     The 6809.
     S                :
                          arithmetic tegisters                       are  refered    to  by the single letters      "A", "B", or
                              Wp,        .




                                                aes




     |: 362= Pointer
                  Registers
                                     The 6809hasfoursixteenbitpointer
                                                                    registersthat can be used as.
             - base addresa                            registers
                                     for indexed mode addressing.              There are two index
             Ue
         â€˜Fegisters,           to  as the "X" and     refered"Y" registers,          the user      stac
                      pointerrefered
                              to as the       "Uv"  register, and the system stack pointer,
                                                                                                  â€˜eombihations
                  S

          refered  â€˜to ap the â€œS" register.         The various                         webs  He      cary
       -
         Andexed
         -




                                        allows  odeaddressing
                                                  all   four    pointer    registers     to
                                                                                             be used    asâ€
         explicit stack pointers.         In addition,       the two stack registers            have     a
     _                    g@ries
                    of PUSH and PULLinstructions                facilitate             to
                                                                                zero addres        (stack).                 }


                          Programing. Thesystem atack  pointer   is  implicitly                          used    by        the 6809.
                          microprocessorfor subroutine calls and    interrupts.
          Assembler                      Users                    Guide



          3-3       -

                             Program                        Counter

                        The             6809                maintains                 an   internal                                          sixteen                  bit     program     counter    register
          refered                  to         as            the          "PC"       register.                                  At                                                     the  PC register
                                                                                                                                              any      given                time,                           may
         be         thought                        of        as         a
                                                                             pointer                 to the next                                       instruction                         to       be         executed.                  ~Two
          indexed       addressing                                                                         available
          for     their
                                      modes
                             base address.
                                                                                          are                                                        that     utilize                 the program counter                                                 _




                                                                                                    These                 addressing
          of      writing                    program                        modules                 that
                                                                                                                                                                      modes
                                                                                                                                                                                    provide the capability
                                                                                                                        are                  position                   independent.
                                                                                                                                                                                                           â€”




          3.4
                    ~-Condition                                   Flag        Register
                        The
                                   Condition                                Flag         Register                         is
                                                                                                                                  conceptually                                     and          eight-bit                     â€˜register               _
          that            contains                                the
                                                                      processor                                 condition
                                                                                                                                                                                                                                                              â€”




                                                                                                                                        flags.                                     It      is       refered                 to    as            the
          "CC"          register.                                 The bit positions                                            of the   condition                                       register                  are          shown             in
         figure               3-2.                  A detailed                           description                              of each flag                                     follows.

                                                        -



                                                                                          ZT                        ERE                                                                         oo
                                                            gtare             â€”â€”_â€”}
                                                                                                |                                   2




                                                                                                                                        pk
                                                                                                                                                                Cea                                 |
                                                      â€”                                                                                                                                 OVERFLOW
                                         _
                                             rena
                                              1ROmaak       MASK                                :




                                                                                                    oon
                                                                                                                                                                                    ove
                                       HALF
                                         CARRY                                                                                                                                     2

         3.4.1           -

                                  Carry Flag
                        Bit        zero                     is     the       carry flag refered                                                   to  by the single             letter           It                           "Cc".
         represents                          thebinary carry   from                                                           an             arithmetic
         For       these
                                                                                                                                                                        shift type operation.
                                                                                                                                                                              or


         In
                                        operations,   the carry flag                                                                          is      an
                                                                                                                                                                unsigned overflow      indicator.
                   general,                                 move-type                     and                  logical                             operations                      do not               affect              the
         flag.                                                                              a                                  te                                sy                             "
                                                                                                                                                                                                                        :
                                                                                                                                                                                                                                     is
                                                                                                                                                                                                                                          carry       Â©

364.2                   = Two's Compliment
                                      Overflow
                                             Flag
                   Bit                 one is                     the        twoâ€™s                         flag and is
                                                                                          complementoverflow                                                                                               refered
         the            single
                                                                                                                                                                                                                                     to
                                                                                                                                                                                                                                                by
                         arithmetic
                                                   letter                        "V".       It                 is        set                  by an             operation                  that            causes                a        two's
         complement                                                               overflow.                         Loads, stores,                                            and         â€œlogical       operations
         generally      clear       the                                             overflow                            flag,                  while arithmetic                               operations     set it                                                       ae
         appropriately.

                        Since                all
    |




        (eight               or         sixteen
                                                                    6809
                                                                        bits),
                                                                                  arithmetic
                                                                                    it
                                                                                           operations are of limited precision
                                                                                          possible to generate invalid
                                                                                                         1s.
         results
                                                                                                                                                                                                                                 signed
                       when performing         arithmetic          operations.         For   example,     when
a
         performing an eight           bit addition,       it is possible        to     add  75   (base     10)
          (01001011     base    2). to 85 (base 10) (01010101              base     2) and get the invalid
         result     -96 (base                                                                                                                                                                                                                                     =
                                  10) (10100000       base     2).   What has occured          is that the
                         of   the
         carry
         the
                  out               most
                                           significant bit (the sign bit) is different from                                                                                                                                                                                    |
                carry into    the    sign bit,     hence     the sign        (and Â©the      value)      of the                                                                                                                                                .
         result                   is         invalid.                               It              is         under                               these               conditions                       that            the               twoâ€™sâ€
         complement                          overflow                             flag        is.        Asanother  set.example, consider     Â©
        performing
         The
                                             an arithmetic
                                             is
                                                                                            left shift on 96 (base   10) (01100000 base 2).                                                                                                                       >
                                                                                                                                                                                                                                                                      â€˜


                   result                               -64             (base            10) (11000000 base  2). Since the signed     result
         is       invalid,                                                                                                                                 ae

                                              the overflowflag
                                                                                                                                                                                                                                                      |




                                                                                                           is
                                                                                                                    set.                                                                             eee                                  Ben




                                                                                                                    =
                                                                                                                              B2~
                                                                                                                                                            Assembler Users                               Guide

          3.4.3            =
                                Zero             Flag
                      Bit            two           is          the            zero             flag
                                                                                to by the single          and         is
         "2".         It        is
                                                                   refered                                        letter                                                                                                      _
                                       set
                                                    whenever the result operation          is        zero.
                                                                                                                of
                                                                                                                    After
                                                                                                                              an
         compare     operations,          this bit represents      the equal        condition.              After      BIT
         type operations,         this flag represents         the    state       of the           tested.         bits,
         Arithmetic,        load,      -. store,     and
                                                                                                                                                                                                                              â€”
                                                             logical
                                             â€”




                                                                          operations           set       this         flag
         appropriately.               eee
                                                                                                                                       â€œSoe                  gS
                                                                                                                                                                              ge

                                                                                                                                                                                    te
                                                                                                                                                                                                eo
                                                                                                                                                                                                               aN


                                                                                                                                                                                                                         oy




                                                           _




         3.4.4 - Sign Flag
             â€˜Bit three is                                 the         signflag and                                       refered
                                                                                                                is                               to    by the single letter
         "N" (for Negative).                           whenever the    It is
                                                                      most significant set
                                                                                         bit                                                                                                            of
         result.
                                                                                                                                                                                                                    the           Â©
     valid
                           is a one bit.
                                          For arithmetic    operations, this flag is set                                                                                                                 if    a
                           negative twoâ€™s   complement result is obtained.          Note that                                                                                                             twoâ€™s
         complement branches                                     use
                                                                           both the                     N and             V                     so
     branch
                                                                                                                                flags                   that           the                the           proper                ~
                 path is taken                                      even        if         a        twoâ€™s                                                                   has
                                                                                                                complement                       overflow                                occured.



                     Bit
                                four   is the IRQ
                                                mask
                                                   bit                                                   and         is     refered   to                    by the                 single letter
     "I",
     set.
                     the
                           The
                                 processor                     will           not      recognize                          IRQ interrupts                          if         this               flag                is
     inhibit
                                           interrupt                    â€˜acknowledgesequence sets                                                           the      IRQ mask flag to
                                subsequent                              terrupt                      requests                      until              the
    â€˜routine                   completes                       o
                                                                           explicitly                         clears                the
                                                                                                                                                                  interrupt    service                                        â€”
     from                                                                                                                                   interrupt                       mask. Areturn
                    interrupt instruc:                                     on       will             restore               the         state of the                         interrupt
    flag            from  the                    stack.                                                                                                                                                        mask
:




     344.6 -
                               Halfâ€”Carry
                                      Flag
              _
     letter        Bit"H".five Thisis flag
                                       the half-carry flag and
                                              used          eight        is                             after
                                                                                                                                          ie     refered to by the single
                                                                                                                                                bit  addoperations       to
     indicate the carry                    out of bit threein   the                                                                    arithmetic    unit.   This     flag
    -is.used                   by the DAAinstructions
     adjustment.                                  In.
                                                         perform                                 to                                 packed decimal (BCD)addition
                                                          general,               the             half           carry               flag state    is undefined     after
     non=add operations                                    and          add type                    instructions
                                                                                                               on
                                                                                                                  sixteenbit operands.We
     364.7            =

                               PIRQInterrupt Mask
                    Bit six
                        is the FIRQ
    â€˜single    letter       "F".   This
                                                                           interruptmask bit and                                                 4s      refered to by the
                                          flag                                                          affects                  the       FIRQ         interrupt in the same
    manner  that      the I   flag affects the                                                            IRQ interrupt.                                  Remember
    interrupts do not stack the entire                                                                   machine
                                                                                                                                                                                            hat FIRQ
                                                                                                                                   state.                              eo    hee

     3.4.8           = Entire
                      StateFlag
            Bit sevenis the
              "E". It is used Entire
          |

                                   State flagand is refered   to by the single
     letter                    only
                                  by  the returnfrominterrupt               to
    determine    how                                            instruction    |
    at        the
                         of the
                          time         of        much   onto
                                                 an interrupt.
                                                               machine
                                                                   Two saved
                                                                                                        state             was

                                                                                                                      states
                                                                                                                                       pushed      the system
                                                                                                                                            defined:
                                                                                                                                                                                                        atack
    state                  (E= 1)
                                                                                                                                               are                                 the                 entire                 â€”
                                                   in          which            all
                                                                            registers     have                                         been pushed ontothe system
    stack,                and        the          subset            state
    and             the
                                                                           (E =   0)  in which                                          only           the  program                                  counter
                                 condition                         flags have been pushed                                            onto            the stack.     In
    the           state          of
                                    the E flag                          is indeterminate                                                                                                    general,
                                                                                                                              except            after         an interrupt.

                                                                                                =
                                                                                                        343     -
    Assembler                    Users. Guide

                                                                                                                                                                                                    |




    3.5       ~
                   Direct              Page       Register                                                                               Los                                                            ORS
                                                                                                                                                                          :




                                                                                                                                                        :


                  The     Direct Page Register is an eight           bit                    that    is     used
|
                                                                            register                                to
|
    provide       the       most      significant      eight     bits       of   the    sixteen        bit  address
    generated        by instructions            using direct    addressing.          It     is   refered      to as
    the       "DP" register        and   is                  to. zero    at
                                                                 initialized              time...                            RESET                                                    eh




    366       =


                   Addressing
                           Modes
              One. of
    wide variety
                              the     most    useful
                             of addressing modes.              The use of
                                                                             features
                                                                   of the 6809
                                                                                these.     addressing
                                                                                                           is   its
                                                                                                             modes
                                                                                                                                adicropedesanse:
    permits         the        6809      to     be:  programmed either as a zero address (stack)
    machine,        or    as    a   one    address      (accumulator)       machine Â«        In  addition         to
    memory        addressing modee,- several. implicit                       addressing modes reference
    internal        processor           registers     and status     indicators.          Four   instructions
    have       been       provided           that   explicitly      perform        stack                      that
                                                                                                                                                                              â€”




    reference                       through                                                                                               operations
                       memory                         two
                                                                 the
                                                             stack             registers.
                                                                                                  pointer
    306.1          â€”
                        Inherent                addressing
            Inherent   addressing includesthose                                                        instructions which haveno- user
    specifiable      addressing options. All data                                                        references              within
                                                                                                                                   are
    the       instruction                     itself.                              :                                                       implicit
                                                                                                                                                 ee




                                                                                                                                                                                                :




                                                            -




                       Example:.                        MUL                                                               -
                                                                                                                  Aceumulators
                                                                                                           Multiply.                                                :




                                                        SWI2                                               Do     User        Software
                                                                                                                                               Interrupt
                                                                                                  -.




                                                                                   >.
                                                                                                                                                      |

    3-6.2          -
                        Accumulator                     Addressing
                  Accumulator                   addressing             refers           to   data               values        contained within the
    accumulator                        registers                and     does  not generate                                                reference
                                                                                               a                              memory                                    cycle.
    Most     instructions                               perform                                                                            bit              A           or
                                                                        operations    on   the                               eight                                                         8B
    accumulators,         while                           some         instructions                         also.        perform         operations                     â€˜on           the
    sixteen             bit        D        accumulator.               The     accumulator
    appended                to                mnemonic
                                                                                                                    apecification is Sormalty
                                   the                           root specification.
                                                                                                                                                            :




|
                       Example: CLRA                                    oe                   -.




                                                                                                       Clear             A    kÃ©ounulator
                                                        NEGB                       ~

                                                                                                           Negate         B    Accumulator

    3.663          ~
                        Register                Addressing

                  Register                          refers
                                             addressing         to    data    values    contained   within     one of                                                                           â€”
|   the       MPU       data      pointer
                                       or
                                               registers.            The   selected     register    or     registers.
    must      be       explicitly          specified             instruction        operands.     A
    consists        of   a    series      of   register
                                                            as

                                                               specifications, . separated           =by commas.
                                                                                                                   list                               register  .




    Some     instructions             having     register        addressing       implicitly.
    through       the     two     stack                   registers.
                                                          pointer                                      â€”
                                                                                                                                         â€˜Feferstice:
                                                                                                                                                  memory
                        Example:                        TFRs,                                              MoveData from D to IXâ€
                                                        PSHS.         A,B,X                                Push      Registers            on          Stack                       -




                                                                               =
                                                                                       Fah    a
                                                                                                                                                                                     Guide
                                                                                                                                          -




                                                                                                                                               Assembler               Users


             3+6.4
                                                Flag
                              >=

                                        Condition: Addressing
                     Conditionflag. addressing
                                             refers â€˜to specific.flag bits                                                                                                     in:        the
             condition                       â€”


                                                 flag           register.             This         form             of        Â©addressing                is    used            for
                                                                                                                                                                                          the
             condition                        code        operations.               A condition                    flag         list          consists        of         a     series
             of
                    condition
                            flag specificattons,separated                                                                      by      commas.
                                  BWAI LF
                          â€œExample:                                                                                      Wait for IRQor FIRQ
                                 sec. Ws                                                                            Set             the       Overflow        Flag           â€”

             366.        5 -Menory
                              Addressing
                              ~

                                      Nodes:
                  Memory     addressing    nodes are used
                                                 _
                                                                specify  operacions  :   operanda             to                                                   on

            residing    in  main   memory.: Several memory addressing     modes  are   available.
            Immediate addressing       â€” accesses       operand  that is  contained within thean
                                                                                                                                                                                                _




            instruction    itself.                addressing requires an operand whose
                                                                    â€˜Absolute:                                                                                                       exact
            â€œmemory.   address.    is known at assembly   time.     Indexed     addressing    accesses.
            an  operand    at   an address that is developed     from the contents         of  one   of
            the    MPU pointer                                                                                                                                                                           â€”
                                                                    the
                                                       thus   is   registers: and
                                                                           most
                                                                                    flexible     of the
                                                                                                                                                                                                ene
            addressing +a
                    modes
                                                                                                                                                                   :




             3-666            =




                                            Addressing
                                        Immediate
                         â€œImmediate
                                  addressing
                                         refers to.                                                       a    data â€œvaluethat 4e â€œcontained
            within                     the.          â€œbyte or bytes immediately
                                                                            following the                                                          instruction                 opcode.               :


         This            mode ig used to access a value
i                                                       that                                                        is        known at             assembly              time             and â€”
        which               will   not  be. changed during                                                                                                                                    Ps

        addressing                               is
                                                                                                                    program                   eÃ©xecution.                Immediate
                           specified
            crosshatch, "#".       byPrefixingâ€”
                                                                                                              the
                                                                                                                          o   operand      with
                                                                                                                                   expression  |
                                                                                                                                                eg                                    .




                    ie mn
                          |




             Branple:                      SS
                                So
                                                            :
                                  |




                                                                                                          *
                                 See
                     CMPD Â«#ADDRESS-â€”=â€”s
                                       ADDRESS                                                                                 1f      D =


        3 67 Absolute
                   â€˜Addressingâ€œ
                                                                                                                                                                                1




             eoluee.addressing
                     â€œ




                                                                   by:teas ay
                                        data valuethat is referenced            referstoa
        â€œaddres:
              word or byte
            â€˜There
                           immediately following the instruction
                                  dre.
                                                                 â€”                                                                                                             opcode.es
                                                 two            program selectable                   modes           of        absolute. addressing: Direct
            and
                     Extended.(Bothof these modesare                   Aepentlents
                                                               position,
                     â€˜Direct â€˜badveaetag
                                                     necengartly
                                        uses the  eight bit â€œtomedtatevalue.of the                                                                                                              â€”



            instruction                              as   the low       order
                                                                   address.   The     eight
                                                                                    high order     bits        of         an
            eight                     bits            are        obtained
                                                              page register    (DPR). In this
                                                                                    from the         direct
        way,     an instruction wtilizi:     direct. addressing can reference         one  of 256 _
        -
         locations      in     a "page" of memory selected      by the direct    page registers
         Extended addressing.-usea the           sixteen    bit     immediate    value of the
         instruction       as.  the. addressâ€ of                  value
                                                                                                                                                                                                ee




            anywhere memory,             in                           data          access         the data                                        and can

        data       the   as
                                  | absoluteaddtessing,
                In order to â€˜specify
                                                          â€˜theaddressof.keâ€
                                                    â€˜apectty                                                                                                                                    â€”

                           operand field of the instruction.   The    assembler . computes
                                                                            .




            the
                  specified.    address and compares the high order portion with the
    _
            assumed   contents   of the direct page register (specified via      the SETDP ES

            directive) in order: to. determineabsolute        paddresetag     mode.af â€˜the
                                                                                _
                    -




                         Assembler Users                                   Guide

                         â€˜programmer
                                  wishes                                       to
                                                                                   explicitly       specify      direct     or extended
                         two         significance                               forcing       characters      are
                                                                                                                                              addressing,                                      |




                                                                                                                       provided.    The
                         "<"       forces                  the           assembler       to create         an      eight     bit  addrÃ©ss.
                                                                                                                                          less-than  sign
                         greater-than                                                  ">"                                                     while                                                                    the
                                                                     sign                           forcea              a    sixteen                bit       address.                  In   the                    of
                                   bit                                                                                                                                                                case                     an
                         eight                           address,                   a warning                  is                              if     the
                         eight     bits                    is
                                                                                                                            issued                              assembler                determines                     that
                                                                     insufficient...

                                             Example:                                  LDB              BYTE __                                      Load a Byte
                                                   :




                                                                                      TST              _<LOWBYTE                        â€”Ss_
                                                                                                                                                     Test       a
                                                                                                                                                                         Byte - Direct
                                                                                      CLR >HIBYTE                                                    Clear          a
                                                                                                                                                                           Byte -        Extended
                         3-648                    Relative                  Addressing
                                         ~




                                    Relative addressing is                                                   used            for branch address calculations     and
                        refers               to                an        address             that
                        value
                                                                                                         is             computed    from the updated program counter
                                         and             the        byte         or        word         of      offset               contained                    within     the                   instruction.
                        Short     relative                               addressing                   uses          an
                                                                                                                              eight             bit         offset       and
                        addresses        of                     -128        to             +127         bytes.                     Long.                  relative
                                                                                                                                                                                    provides                relative                |
                        sixteen               bit                                                                                                                         addressing                         uses
                                                                                                                                                                                                                                a
                                                               offset            and          can     address                   anywhere                    in
                                                                                                                                                                    memory.
                                    The                assembler
                             _




                                                                                 normally computes   the   offset                                                         required           and
                        either                    long              or       short                                                                                                                          assignes |
                                                                                        relative   addressing                                                       as
                                                                                                                                                                             appropriate.                    If          the
                        programmer                             wishes                 to          explicitly                    assign                                         or
                        addressing,                             the        two
                                                                                                                                                            short                        long.          relative
                                                                                       significance                           forcing characters                                 may be        used          similar
                                                                                                                                                                                                                                        -




                        to       absolute
                                                           addressingabove.                                         A
                                                                                                                            warningmessage is                                  produced                if           short
                .




                        addressing                        is        selected                 and       an     eight           bit offset is                                insufficient.

                                             Example:                               BRA                LABEL                                        Relative               Addressing
                                                                                    â€˜BNE               <SHORT                                       Short
                                                                                    BEQ                >LONG
                                                                                                                                                                    Relative            Addressing
                                                                                                                                                    Long Relative                      Addressing
                                                                                                                                                                                                                    â€”




                        3+669        =
                                              Indexed
                                                                         Addressing

                        from
                                  â€œIndexed
                                         addressingrefers                                                           to       data      values                whoseaddress is developed.
                                     the                 value
        _ Specific                                 register
                                                                            contained                    in                 one of             the          MPUpointer
                                                                                                                                                                        registers.    The
                                                                                                                                                                                                                                    -



                                                                            used
                                                           develop the address               to
                        the
                          effective       address)      is
                                                                                                                                                            of the actual  data (called
                                                             called     the index  base   register.     ~The register
                _to    be used
                                  for a base           address      must   always      be
                                                                                            explicitly.
                  Certain      indexing         ihodes     have     the    ability  to    use  the
                                                                                                            specified.
                Tegister       as   their     index base                     .
                                                                                                     program counter                                                                                                                _
                                                                                                             register.
        :




                    byte
                                   Indexedaddressingrequires          presence    of an
                                                                                                              post
                                                                                                                              the
                                                                                                                                                                                 indexing
                                                                                                                                                                                        mode
                                   following
                                           the
                                                                            instruction
                                                                       This post                                opcode.
    .




                the        â€˜type of- indexed addressing      to be used
                                                                                      byte     Specifies      both
                                                                            and which    index    base
                 to   use.       If   an offset   or
                                                                                                         register
                                                               is required
_




                                                     address                   by the  indexing
            .
                 Value       follows.      the  post  byte     in the   immediate       data   field. Several â€˜this                                                                            mode,
                    options                  are
                                         The
                                                          available to conserve                                              both      execution
                                                                                                                                                                         time       and      object code â€”
      â€œSpaces                                                  assembler                   automatically                            selects               the            instruction
    - will                         require                     minimun                object            code                                                                                   formatthat
                                                                                                                            space and time.




                                                                                                                    -
                                                                                                                            366-
                                                                                                                                       UsersGuide
                                                                                                                                â€˜Assembler
              3.6.10 = Constant Offset Indexing

                Constant
                       offset indexed addressinggenerates
                      |




                                                              effective address                                                 an                                          __   a



         - by adding fixed offset  to the contents
                                     a              one  of the       MPU                                           of                   four              pointer
              -registers.                The     offset
                                               contained          is
                                                             within    the instruction      itself    and 9
          follows     the indexing      mode post    byte.
     _
                                                              Offsets     are  signed values, and may
        be five,
         offset
                       eight, or sixteen        bits in length. The assembler computes the
                     and           selects
                                       the smallest      adequate     format.     The base
                                                                                            register                                                                  is
        Specified                following
                                      the     offset  expression.     If    an explicit   offset     size
       is      desired,             the
                                   significance         forcing charactera        "<" and ">"
                                                                                                   may be                                             "
             used to select
                               eight       or
                                           sixteen bit offsets                                                           respectively.
                     Example:                             Â«LDA sÂ«125X.                                    -




                                                                                                               Constant Offset  from X
                                                                                                                                                           â€”

                                                                                                                                                                           oS
                                                          BRA            a
                                                                                                      -




                                                                                                               Constant Offset from Y
                                                 -        LDX                <0,0U-                            Forced 8-bit Offset
                                                     STX   Forced 16-bit>12,8
                                                                            Offset               _




               366411   =ConstantOffsetIndirect Indexing
                    Like most of the
             may specifya singleindexed       addressing    modes, constant   offset indexing _
                                        level  of
             generated by adding the fixed offset
                                                  indirection.
                                                           the
                                                                  The effective address        is oe
                                                       to
                                                               value of the index        base.
         _
              register,   and then using that address to fetch a sixteen bit effective
              address from memory.â€”Indirection is specified â€œby       enclosing the    operand _
             in square               brackets                 Any significance
              â€˜the
                          expression       and        b                        forcingcharactersmustprecedeâ€”
                                                             nside of the brackets.
                            Ewample:               Offset tadirect
                             IMP_=â€”â€”s[0,X)_â€”==â€”Sâ€”Sâ€”sGonatant
                                 [12,0]
                                ee
                                           Forced    EDD
                                                  16-bit Offeet                              :




              (366012 Accumulator
                     ~
                             OffsetIndexing
at                        Accumulator offset indexed addressing adds                                                         the      contentsof an.
             accumulator      register     to the value of an                                                      index: baseregister
             an                                                                      to generate
                 effective address.
     -
                                                            If         indirection
                                                                            this address is then     is
             used          to fetch the effective
                                                                specified,
             the          A or B accumulators
                                                     addressvalue from memory. In the case of
              D
                                              the offset is a signed eight: bit value. For the.
                accumulator,   the offset is a signed sixteen bit value. Accumulator
             offsetsare selected by specifing the accumulatorregister as the
             operand          followed               by     the          index           base                 register          specification.                 Like
                    offset
              constant
                  insideofindexing,indirection specifiedby placing                                            is                                                the
             operand        Ã©quare brackets.

                 Emample: Â«STABLY.=â€”â€”=â€”s=~=Â«Ã©Â«
                             LOX DU
                                             A   AcCmULatO OFFect
                                                          CMPB
                                                                                                              bat           Accumulator Offset                         8
                                                                        [A,X].                                Ssbit        OffsetIndirect â€”                    ae
                               Autoincrement
                                        Indexing
                                  indexed addressing
                          Autoincrement             uses the value of an index base
             register       as            the
                                           address.  effective
                                                      If                      indirection is specified, this
              address is thenused                      to fetch the effective   address valuefrom memory.
              After the effective                       address is     determined,    the                is                          base       register
             incremented             by one                two.         Note          that
                                                     or                                              the            increment        mustbe                two if


                                                                                  ~ er
     Assembler                          Users             Guide                                                                       r




     indirection                                  . is
     autoincrement
                                                                    specified.                     No             .
                                                                                                                      offset                    is
                                                                                                                                                           permitted when                              using
                                                    addressing.         Autoincrement                                             is         selected               by          following                        the
     base         register                                specification      by either                                                 one     or         two      plus         signs "+",                       for
     increments                              of. one.
     indirection                               is
                                                                  or.        two
                                                                                                 addressing,
                                                                                         respectively.                         Like           other             forms          of
                                                                                        by
                                                         specified enclosing the operand
                                                                                       in squarebrackets.
                  |    Exemple: 0,Â¥++                       LDA
                                                              -




                                                                 0, Rt os
                                                                         STD
                                                                             & AutoTactement
                                                                                           BR:One
                                                                                                                  .~â€”-            AutoIncrement                         by Two               |

                                                                         Lou                 [0, S++)                     -

                                                                                                                                 AutoIncrement                          Indirect

      3.6.14                   ~
                                       Autodecrement Indexing

                 Autodecrement
              index
                                                                    indexed                           â€˜gubtracts either
                                                                                             addressing                                                                 one          or
                                                                                                                                                                                           - two         from
     an                                base
                                        If
                                                    register                       and       subsequently    that value        uses                                       as         the         effective
     address.                                      indirection                          is
                                                                                       address specified,
                                                                                                   is                         this.                                             then              used     to
     fetch                 the               effective     address value    from  memory. Note that                                                                                  the         decrement
     value            must                   be two    if: indirection   is specified.     No offset                                                                                 is          permitted             â€”




     with             autodecrement.
                            indexing.                                                                 |
                                                                                                              Autodecrement                         addressing                  is         selected               by
     preceding the base register                                                              specification                           by either                   one           or           two       minus
     signs   "=", for decrements    of   "                                                     one or             two   respectively.                                    Like.             â€˜other.     forms
     of
     in
             indexed
             square
                                          addressing
                                        brackets.  iedivection           ,                                      is speci
                                                                                                                                  ited enclosing operand
                                                                                                                                 by                                                        the



                           Example:                       2
                                                                        CLR
                                                                        LDY
                                                                                             es
                                                                                             Ome
                                                                                                          |
                                                                                                                      .
                                                                                                                                 Autotecrement
                                                                                                                                          by One.
                                                                                                                                                                                Two
                                                                                                                          _
                                                                                                                                 .AutoDecrement by                                                 .




                                                                        STY                  [05-8]
                                   |
                                                                                                                                 AutoDecrement
                                                                                                                                           Indirect
     306615.                           Extended
                                                                       Indirect
                                                                  Absolute
                           =




                                                                             Addressing
                 Extendedabsoluteindirect addressidg
                                                   uses                                                                                                           the           address                 word
     contained                 instruction   in
                                              to   fetch an effective
                                                    the                   address      from memory.
     This    addressing     mode    allows the programmer to define        a    pseudo     register
     vector.     (in    IBM    terminology)      for   use. in                    between
     modules.        Since the instruction                        communicating             program
                                                                                                    is                                                        it
     necessarily
                                                               an
                                                                                                   contains                                    absolute address,
                                              position dependents:                                                                                                  :




                           Example: BITA. _
                                 Extended Absolute
     3.6.16 Program
                         (DEVICE)               Indirect
                 Counter
                        Relative
                           â€œ




                             Mdressing
     counter
                 Programcounter
                               register                             as
                                                                             addressing
                                                                              the
                                                                                     uses
                                                                                         base index
                                                                                                                  the            value of
                                                                                                                               value.                 A
                                                                                                                                                            the
                                                                                                                                                           fixed
                                                                                                                                                                        â€˜updated
                                                                                                                                                                               propia:
                                                                                                                                                                          offset
                                                                                                                                                                            contained
-




     within                the    instruction                to the updated program counter
                                                                                   is    added              value        to                                                                                  â€”




      obtain      the     effective         address,       Tf indirection          is                 â€œthis     address
      is    then                    fetch the effective
                                                                                      specified,
                   used       to
                                                                   address. from memory.           The expression
      value      specified         in   the   eource code is the desired               value    of the      effective        â€”
      address;        the                              that
                              assembler uses                   value to compute        the    required          offset.     .
      Program counter                  relative        addressing is specified            â€˜by affixing        the     "Pc".
                                                                                                                                                                                                                           â€”




      register        specification           to   the    requested       address.     Like     other       forms        of
    .indexing,            indirection           4s     specified      by enclosing       the  operand       in    square
                                                                                                                                                                                                                           â€”




     brackets.-


                       :
                           Example:                                     LDA
                                                                        STX
                                                                                         BYTE,PC                                -â€”S=Program
                                                                                                                                      Counter Relative
                                                                                         _ {ADDR,
                                                                                                PC]                              Program Counter                               Indirect



                                                                                                   =
                                                                                                               348    -
                                                                                                                                                                    Assembler
                                                                                                                                                                          Users
                                                                                                                                                                              Guide
     4.0       -

                    Assembler
                                              Expteseions
                    Expressions                 â€œconsist. of                                     one      or            more                       terms combined with                          assembler
     operators.                  Each         term represents                                      a     sixteen                                  bit    signed value,                                          the.
                                                                                                                                                                                                 and
     result                of   â€”expression evaluation           â€”




                                                                                                           is                                     sixteen
     expression                  value.â€œmay be absolute, : relocatable,
                                                                                                               also                                                 bits        and_
                                                                                                                                                                                         signed.                The
                                                                                                                                                          or           complex           relocatable,
     depending on                            the      relocation                                   attributes                                      of     the       various             terms       and         the
     operators                  used
                                            upon.them.                             In addition                              toâ€™               the relocation attributes,                                        the
     expres@ion may have                                    the                   starred attribute.                                                    This           attribute     will             be        set
    Lf    any of                the         terms in             the               expression                           have                       the          star         attribute.                    More
    information                        on          starred.                                                                 can
                                                                                                                                                  oe found in the chapter
                                directives. sapresaions
                                                                                                                                                                                                                    on
    assembler                                               eee                                                     .
                                                                                                                                          :




                   â€˜Under certain. â€˜eiveuaatences
                                                â€œexptessione:
                                                         may.be preceded
                                                                       or
    â€˜surrounded
    must be
            by. special characters
                      understood
                                           used to-                                                                                   specify addressing                                  modes.                    It
                                clearly
                                   that                                                                   these                       mode characters                              are    not part                  of
     the expression
                propry and hence must                                                                                   not                     within                          an
                                                                                                                                          â€˜appear                                       expression.
    hel
                   -Termsin Expressions
                   Termsin expressions.
                                   may consist                                                                          of            symbolic:
                                                                                                                                            references, location
     coumter reference                                ,



                                                            numeric                              constants,                                  constants,
                                                                                                                                                  character                                      or        truth
     value                constants.
                                                                                                                                      ~




                                                                                                                                              have
                                                          Symbolic references                                                                                  an      explicit             relocation
     attribute                  set    when the â€˜symbol is defined.                                                                                 Location counter                         references.
     have            the         relocation    attributes  of    the                                                                               eurrent                  program             counters                 =
                                                                                                                                                                                                                             =




    Constants    havea relocation
           â€˜always                 attributeof absolute.
    Aad1. Symbolic  erences
|




                      _


       â€œSymbolic
               re erences.â€œmay â€˜consist  of â€œa lost: geference:global                                                                                                                           a
     reference, op               a                           _

                                                                            reference,                         or            a                    structure                 reference.                     Local
     references                       consi             yf an identifier     with no                                                                     qualifier              characters                 (".")
     and           refer        to the             most local     definition     of                                                                     that            identifier.                   Global
     references                       consist   of                          the global,                   qualifier                                 character                 (". "y followed by
     an       identifier                 and Â©refer                               to        that            identifier                                     defined               in. the  â€˜global.
     dictionary.                       â€˜Parental                 references                               consist      of                                  the             parental Â© qualifier
     character    ("â€œ") followed by an identifier           and refer   to   that  identifier
    defined     in the. â€˜pa ent dictionary             the current.
    refetences,      which may be      local,
                                                  of
                                                    global,
                                                                      procedure.
                                                                or. parental,
                                                                                    â€˜Structure.
                                                                                  consist    of                                                                                                                                  me
    identifiers      â€˜separated by. global qualifier
    â€œsyabot  te references   are:
                                                                              Someexamples of                                                   characters.                       Cee
                                                                                                                                                                                                                8




                                                          : eee                                     ee                            a
                                                                                                                                              somLocal -tetetence  _
                                                          wee               ee              ee
                                                                                                                        =         +
                                                                                                                                              =    a
                                                                                                                                                  global reference                                     _




                                                    see                     ee         ee          ee          ee                             =
                                                                                                                                                    a     parental              reference
                                                    tet                     ttt             eee                               =
                                                                                                                                          - a8 local                       structure
                                               :            Se       Rodi
                                                                                            ae

                                                                                                         - 7777                                          global             structure
                                                                                                                        -â€”---â€”â€œ
                                                                                                                                                   @ parental                   structure                  ~


                    PAGE.
                      PARAGRAPH
                          PERASE.
                              LEPTER
                            WORD.                                                                                                 -~-â€”
                                                                                                                                                    a    local             structure                       oo




                                                                                                  =      be]
    Assembler                            Users                 Guide



    4.02                  -
                                   Location                         Counter
                                                                                      References                                                                                                                                        oN
                     Location-counter                                              references                          consist                         of         the          asterisk            "k"        used         in
    place                 of        a         symbolic                      reference.                           The value                   and             relocation                     attributes                of     a
    location                             counter                       reference                      are         those   of                 the             current
                                                                                                                                                                                   program counter at
    the  beginning of primary
    assembler     source input.
                                                                                      statementprocessing
                                                                                        Note
                                                                                                            for                                                         the
                                                                                                                                                                                      current within
                                                                                                                                                                                              line.   |
                                                                                                                                                                                                                           of

    line             of
                                                                                                      value  that             this                                does          not         change                              a
                                  source                  code,
    For      example,                                          in       the
                                                                             regardless                      of changes                           in           program                 counter                values.
                                                                                      following                        statements,                                both               location
    references     have                                        the          same      value                  (which              is        the              value               of     the
                                                                                                                                                                                                 counter
                                                                                                                                                                                            â€˜identifier
    â€œLABEL"):

           |
                                                   ORG              $0200
                LABEL
                                                                                                                                      oe




                                         CLR                        0,X+;          DECB; BPL *; DECA;                                        BPL             #;
    4.1.3                 ~
                                  Numeric                      Constants

                     Numeric                      type                  constants                       consist                       of              an      optional                     radix    designator
character,                                   followed                  by a           string of digits.                                               If      the        radix               is
                          the
                                                                                                                                                                                                 greater    than
ten,                                         larger                   digits           are   specified as                                             letters,                  with         the     letter            "A"
having                        a     value                 of         ten,      "B"              for         eleven,                                   so          forth.
checked                                                                                                                           and                                                       Each          digit            is

radix.
                                    to
                                  Por
                                                    be
                                                   the
                                                       sure that            value is less       its                                                        than         that          of
                                                                                                                                                                                             the designated
treats
                                                             purposes of numeric constant                                                                  evaluation,                       the          assembler
                              letters                     of   lower case and upper case                                                              as      identical.

                     Permissible                                     redix           designator                                characters.       are
hexidecimal                                                                                                                                              "$"    denoting
octal
                                                    numbers,                  Â©"z"               denoting                     binary    numbers,     and   "@", denoting
                      numbers.
are
                                                          In          the          absence                  of     a radix
                                                                                                              designator,       decimal                                                                      numbers
                     assumed.                             Numeric                  type
of
                                                                                            constants   always have     a
                                                                                                                          relocation                                                                      attribute
               absolute.                              Examples                 of         numeric    constants are as follows:
                Decimal   Constant                                                         ~-

                                                                                                       21845
                Hexidecimal     Constant                                                  -<~
                                                                                                       $5555.
                Binary Constant                                                      _s=                %101010101010101
                Octal                   Constant                                          ae
                                                                                                       @52525      |




4.1.4                 =

                                  Character                         Constants
                     Character                            type          constants         consist                                 of             an           opening                  quote.             character
followed                                by           a
                                                                string               of characters                                         followed                      by           the     closing             quote
character.                                    This          assembler                       recognises      three        characters         as       quote
characters:                                      the         double
and
                                                                                        quote    """, the single         quote (apostrophe)             "â€™",
                the               grave                         "et
                                                     accent                            Any of these        characters      may be used         to.   begin
a
           character                                 constant,                       however, the closing          .     quote     must be the same
character                               as          the        opening               quote.      Character     constants       are   limited         to      a
precision                                    of           16          bits ë­ùé¼­zÊ&ŠÛ^t€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÄÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÄÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1•™Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€´¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1½¥…°M¡¥™Ð€¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ €€€€€€€€€€€€€€€”€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
¬€€€€€€€€€€€€€€€€€€€€€€€€ƒ
¬€€€€€€€€€€€€€€€”(€€€€€€€ð¬€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1•™Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
¬Ø€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
À€€€€€€€€€€€€€€Ý•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€á(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É¥Ñ¡µ•Ñ¥ŒM¡¥™Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€ø(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸€€€€€€€€€€€€€€€€¸€€€€€€€€€€€à€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”€€€€€€€€€€Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…•Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€à((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€È¸€€€€€€€€€”(€€€€€€€ðÈ€€€€€€€€€€€€€€€€€€€´((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1•™ÐI½Ñ…Ñ”€€€€€€•”€€€€€€•Ü€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¨€€€€€€€€€€€à€€€€€€€€€€€€€€€”€€€€€€€€€€ €€€€€€€€€€€€€€€€€€€€€€€€€ €€€€€€€€€€€€€€€€€€€€€€€€ƒ
À€€€€€€€€€€€€€€€”€€€€€€€€€€€¨€€€€€€€€€€€€€€€Œ€€€€€€€€€€€€€€€ €€€€€€€€€€€€€€€ƒ
ˆ€€€€€€€€€€€à(€€€€€€€øø€€€€€€€€€€€€€€€€€€ø(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I¥¡Ð1½¥…°ƒŠaM¡¥™Ðè€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”€€€€€€€€€€ä€€€€€€€€€€€€€ƒ
¤€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
¤€€€€€€€€€€€Ý½”€€€€€€€€€”(€€€€€€€¬ø€€€€€€€€€€€€€€€€€€ø((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I¥¡ÐÉ¥Ñ¡µ•Ñ¥Œ€€€€€€€€€€€€€€€€€€€€€€€M¡¥™Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¨€€€€€€€€€€€¬€€€€€€€€€€€€€€½”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€à(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¨€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
¤€€€€€€€€€€€€€€€€€€€€€€€€€€˜€€€€€€€€€€€€€€€€€€€€€€€„€€€€€€€L€€€€€ƒ
À€€€€€€€€€€€¨€€€€€€€€€€€¸€€€€€€€€€€€€€€€€€€€”€€€€€€€€€€€€€€€ƒ
À€€€€€€€€€€€€à(€€€€€€„ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I¥¡ÑI½Ñ…Ñ”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(€€€€€€€€€€€€€€€€€€€€€€€€´((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸¸€€€€€€€€€€€€€€€•”€€€€€€€€€€€€€€€€€€€€€€¨€€€€€€€€€€€€€¨€€€€€€€€€€€€€€€€€€€€€€€€ƒ
¤€€€€€€€€€€€€€€€€€€€€€€€€€€€€”€€€€€€€€€€€€€€€€€€€€€€€€€¨€€€€€€€€€€€€€€€€¨€€€€€€€€€€€¨€€€€€€€€€€€€€€€¸€€€€€€€€€€€€€€€Ì€€€€€€€€€€€€€€€€¨€€€€€€€€€€€€à((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•±…Ñ¥½¹…°1•ÍÌQ¡…¸(€€€€€€€€€€€€€€€€€€€€€€€€´(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€à((€€€€€€€€€€€€€€€€€€€€€€€€´€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½” €€€€€€€€€€€€€€€€€€€€€€€€€ƒŠ
°€€€€€€€€€€€€Ü(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•±…Ñ¥½¹…°€€€€€€€€1•ÍÌ€€€€€€€€€€€Q¡…¸€€€€€€€€€€€€€€€€€€€€€€€€€€½È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡M…µ”¤€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÅÕ…°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¨€€€€€€€€€€€ƒ
¬€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€È€€€€€€€€€€€€ƒ
À€€€€€€€€€€€€€€€€€€€¨€€€€€€€€€€€€Ü((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•±…Ñ¥½¹…°€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¼(€€€€€€€€€€€€€€€€€€€ø€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠ`(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÅÕ…°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¨(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¨€€€€€€€€€€€€¨€€€€€€€€€€€¨€€€€€€€€€€€€¨€€€€€€€ƒ
ˆ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ø€€€€€€€€€€€€€€€´Ø(€€€€€€€€€€€€€€€€€€€ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•±…Ñ¥½¹…°€€€€€€€€É•…Ñ•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡…¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€½È€€€€€€€€€€€€€€ÅÕ…°€€€€€€€€€€€€€€€€€€€€€€€€€Q¼€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¨€€€€€€€€€€€€”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ü(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡M…µ”¤(€€€€€€€€€€€€€€€€€€€€´(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•±…Ñ¥½¹…±É•…Ñ•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡…¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€”€€€€€€€€€€Ì€€€€€€€€€€€ƒ
ˆ€€€€€€€€Œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¨€€€€€€€€€€€€€€€€Ü(€€€€€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•±…Ñ¥½¹…°€€€€€€€€€9½ÐÅÕ…°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¼¸€€€€€€€€€€€€€€€€€€€€€€€€€€€¨(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í•”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡M…µ”¤((€€€€€€€€€€€€¬(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡M…¹”¤(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	‘ÑÝ¥Í”€€€€€9€€€€€€¨€€€€€€€”€€€€€€€€¨€€€€€€€€€€€€€€€”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€••”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€O
œ(€€€€€€€€€€€€€€€ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	¥ÑÝ¥Í”€€€€€€á±ÕÍ¥Ù”€€€€€€€€€€€€€€€€€€€€€=H€€€€€€€€€€€€€€€€€€€Ñ”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ì€€€€€€€€€€€€€€€€¨€€€€€€€€€€€€€€€”€€€€€€€€€€€€€€€Ð(€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	¥ÑÝ¥Í”€€€€€€€%¹±ÕÍ¥Ù”€€€€€€€€€€€€€€€€€€€€€½H€€€€€€€€€€€€€€€€€€€¨€€€€€€€€€€€Ô(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MÌ€€€€€€€€€€€€€€•”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ì(€€€€€€€€€€€€€€€€´((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1½¥…°€€€€€€€½¹¹•Ñ¥Ù”(€€€€€€õ€€€€€€€ø((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1½¥…°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹¹•Ñ¥Ù”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=H¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
¤€€€€€€€€€€€€€€€•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ä(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%8(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ø€€€€€€€€€€€€Ðà€€€€€€€€€€€€€€€€€€€€€ƒ
¬(0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÍ•µ‰±•È€€€€€€€€€€€€€€€UÍ•ÉÌÕ¥‘”((€€€€€€€€€€€€€Ô¸À(€€€€€€€€€€€€€€€€€€€€€€=Á•É…Ñ¥½¹5¹•µ½¹¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ØàÀä(€€€€€€€€€€€€€€€€€€€€€€€€€ô(((((€€€€€€€€€€€€€€€€€€€€€™½±±½Ý¥¹œƒŠaÁ…•Í½¹Ñ…¥¹„‘•Ñ…¥±•€€€€€€‘•ÍÉ¥ÁÑ¥½¸(€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€Q¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜¸Ñ¡”€ØàÀä(€€€€€€€€€€€€½Á•É…Ñ¥½¹ÌÍÕÁÁ½ÉÑ•‰äÑ¡”M]QA…ÍÍ•µ‰±•È¸Q¡•Í”½Á•É…Ñ¥½¹Ì€€€€€½¹Í¥ÍÐƒŠP(€€€€€€€€€€€€½˜€€€€€€€€€€ØàÀä€€€€€€€€€€€€€ÁÉ¥µ¥Ñ¥Ù•Ì€€€€…¹}„™•Ü€€•áÑ•¹‘•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ¹•µ½¹¥Ì‘•Í¥¹•€€€€€€€€€€€€€€€€€€€€€€€Ñ¼€€€€Í¥µÁ±¥™ä€€€€€€€€€€€€€€€€€€€€€€ƒŠP((€€€€€€€€€€€€ÍÑÉÕÑÕÉ•€€€€€€€€€€€€€€€€€€€€€€€ÁÉ½É…µµ¥¹œÁÉ…Ñ¥•Ì¸€€€€… €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ…‰±”€€€€€€€€€€½¹Í¥ÍÑÌ€€€€€€€€€€€€€€€€€€€€€€€€€€½˜(€€€€…ÍÍ•µ‰±•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¹ÑÉä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”ƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ¹•µ½¹¥Œ°„‘•ÍÉ¥ÁÑ¥½¸€€€€€€€€½˜€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€™Õ¹Ñ¥½¸€€€€€€€€€€€€€€€€½˜€€€€€•… €€€€€€€½˜€€€€€Ñ¡”(€€€€€€€€½Á•É…Ñ¥½¹Ì°€€€€€€€€€€€€€€€€€€€€€€€€€€€„±¥ÍÐ½˜…™™•Ñ•€€½¹‘¥Ñ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹¸€€€€€€Ñ¡”€€€€€€€Ù…±¥((€€€€€€€€€€€€µ½‘•Í™½È¸Ñ¡…Ð½Á•É…É¥½¹Ì´€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™±…Ì°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…‘‘É•ÍÍ¥¹œ¸¸¸(€€€€€è(€€€€€€€€€€€€M•°½¹‘¥Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€±…Ì(€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”€€€€€€€€€ƒŠa½¹‘¥Ñ¥½¹™±…œ±¥•ÐƒŠa½¹Ñ…¥¹Ì¸€€€€€€…‰½ÕÐÝ¡¥ ½¹‘¥Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹™½Éµ…Ñ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(€€€€€€€€€€€€™±…Ì€€€€€€€€€€€€€€€…¸¸½Á•É…Ñ¥½¸¸…±Ñ•ÉÌ€€€€€€€€€€€€€€€€€€€€€…¹€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€É¥Ñ•É¥„€€€€€€€€€€€€€€™½È€€€€€€€€Ñ¡”€€€€€É•ÍÕ±Ð¸€€€€€€€€€€€€€U¹±•ÍÌ€€€€€€€€€€€€€€€€€€€€€€€€´((€€€€€€€€€€€€½Ñ¡•ÉÝ¥Í”€¸ÍÁ•¥™¥…±±ä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaµ•¹Ñ¥½¹•°€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€%¹Ñ•ÉÉÕÁÐ€€€€€€€€€€€€€€€€5…Í¬€¡%ID¤€€€€€€€€€€€€…¹€€€€€€€…ÍÐ¸€€€€€€€€€€€€€€€ø¸(´¸(€€€€€€€€€€€€%¹Ñ•ÉÉÕÁÐ€€€€€€€€€€€€€€€€€€€€5…Í¬€¡%ID¤€€€€…É”Õ¹¡…¹•‰äÑ¡”½Á•É…Ñ¥½¸¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”¹Ñ¥É”€€€€€€€€€€€€€€€€€€€€MÑ…Ñ”€€€€€€€€€€€€€€€€€€€€€¸(((€€€€€€€€€€€€™±…œ€€€€€€€€€€€€€€€€¡¤€€€€€¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Õ¹‘•™¥¹•¥¸Ñ¡”½¹‘¥Ñ¥½¸™±…œÉ•¥ÍÑ•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹€€€€¥Ì€€€€Ù…±¥€€€€€€€½¸€€€€€Ñ¡”€€€€€€€€€€€€€€€ƒ
¤(€€€€€€€€€€€€€ÍÑ…¬€½¹±ä€€€€€€€€€€€€€€€€€€€€…™Ñ•È…¸ƒŠa¥¹Ñ•ÉÉÕÁÐ€»ŠPQ¡”Í±½Üµ…Í­…‰±”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€™½¸µµ…Í­…‰±”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹Ñ•ÉÉÕÁÐ€€€€€€€€€¡%ID¤°€€€€€€€€€€ƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹Ñ•ÉÉÕÁÐ€€¡95$¤°…¹…±°Ñ¡É•”€€€½˜Ñ¡”€€Í½™ÑÝ…É”€€€€€€€¥¹Ñ•ÉÉÕÁÑÌ€€€€€|(€€€€€¡M]$¤€€€€€€€€€€€€€€€€€€€€€€€€Í•Ð€€€€€Ñ¡”¹Ñ¥É”MÑ…Ñ”™±…œ‰•™½É”€€€€ÁÕÍ¡¥¹œÑ¡”€€€5AT€€É•¥ÍÑ•ÉÌ€€€€€€½¸€€€€Ñ¡”ƒŠP(€´µÑ…¬¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=¹±äÑ¡”™…ÍÐµ…Í­…‰±”¥¹Ñ•ÉÉÕÁÐ€€€€€€¡%ID¤±•…ÉÌ€€€€€€Ñ¡”€€€•¹Ñ¥É”€€€ÍÑ…Ñ”)™±…œ€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹€€€€€Ñ¡•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á…ÍÑ•ÌèÑ¡”½¹‘¥Ñ¥½¸™±…Ì…¹Ñ¡”ÁÉ½É…µ½Õ¹Ñ•È½¸¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½µä(€€€€€€€€€€€€Ñ¡”ÍÑ…¬¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€Ô¸€ËŠPáÑ•¹‘•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5…•µ½¹¥Ì(€€€€€€€€€€€€€€€€€‰M•Ù•É…±½˜Ñ¡”ÍÕÁÁ½ÉÑ•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ¹•µ½¹¥Ì…É”¸¹½”éÍÑÉ¥Ñ±çŠaÍÁ•…­¥¹œ€ØàÀä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€½Á•É…Ñ¥½¹Ì°…¹€€€€€½˜€€€€€€€€€€€€€€€€€€€ØàÀå½¹Í¥ÍÐ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹ÍÑÉÕÑ¥½¹Ì€€€€€€€€€€€€ƒŠa•¥Ñ¡•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µÕ±Ñ¥Á±”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½È€€€€€€€€€€½˜€€€€€€ƒ
¤(€€€€€ƒŠaÍå¹Ñ…à€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¥™™•É•¹Ð€€€€€€€€€€€€€€€™É½´€€€€€Ñ¡”€€€€€€€€€€€€€€€€5½Ñ½É½±„€€€€€€€€ÍÑ…¹‘…É¸€€€€€€€€€€€€€€€€€ƒŠaQ¡•Í”¥¹ÍÑÉÕÑ¥½¹Ì€€€€€€€€€€€€€€€€€€€€€€€€…É”((€€€€µ…É­•Ý¥Ñ Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹½Ñ…Ñ¥½¸€€€€€€€€€‰•áÐˆ…™Ñ•È€€€€€€€€€€€€€€€€€€€€€€Ñ¡”…ÍÍ•µ‰±•È€€€€€€€€€€€€€€€€€€€µ¹•µ½¹¥Œ¸€€€€€€€€€€€€€€€€€Q¡•ä€€€€€€€€¡…Ù”¸(€€‰••¸€€€ÁÉ½Ù¥‘•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™½È€€€€€€Ñ¡”€€€Í…­”€€€€€€€€€€€€€€€½˜€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ½É…´±…É¥Ñä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½‘¥¹œ€€€€€€€€½¹Ù•¹¥•¹”¸€€€€€€€€€€€€€€€€€€€¸€€€€€€€€€€€€€€€€€€€€è(((()±°€€€€•áÑ•¹‘•µ¹•µ½¹¥Ì€Ý¥±°¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠqÁÉ½‘Õ”•ÉÉ½È¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ•ÍÍ…•ÌÑ¡”5½Ñ½É½±‡Šd(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥˜€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€¼(€€€€€½µÁ…Ñ…‰¥±¥ÑäÁÑ¥½¸¡…Ì¸ƒŠa‰••¹•Ð¸(€€€€•…Ì€ØàÀÁe…¹Ñ±ä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€]½•¹½¹¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Õ±°€€€€€€€€€ÍÕÁÁ½ÉÐ€€€€€€€€€€€‰••¸ÁÉ½Ù¥‘•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡…Ì€€€€™½È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ØàÀÀ…µ¥±å¥µ•µ½¹¥½Á•É…Ñ¥½¸(€€€€€€€€€€€€½‘•Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜€€€€€€€½ÕÉÍ”(|€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡•á•ÁÐ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”¸€€€€€€€ØàÀÔ¤¸€€€€€€€€€€€€€€€%¸€€€€€€€€•ÉÑ…¥¸€€€€€€…Í•Ì°€€€€€€€€€€€€€€€Ñ¡•Í”€€€€€€€€€½Á•É…Ñ¥½¹Ì€€€€€€€€€€€€€€€€€€€€€€ƒ
¤(Ý¥±°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÍÍ•µ‰±”€€€€€€€€€€€€€€€¥¹Ñ¼€€€€ùµÕ±Ñ¥Á±”€€€€€€€€€€€€€€€€€€€€€€€¥¹ÍÑÉÕÑ¥½¸€€€€€€€€€€€€€€€€Í•ÅÕ•¹•Ìè‘•Í¥¹•Ñ¼•µÕ±…Ñ”ƒŠP(€€€€€´€€€€€€€Ñ¡”€€€€€€€€€€€ÍÁ•¥™¥•€€€€€€€€€€€€€€ØàÀÀ½Á•É…Ñ¥½¹Ì¸ƒŠaµÕ±…Ñ¥½¸€€€¥Ì•á…Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸€…±°€€€€€€€€€€€€€€€€€€…Í•Ì€€€€€€€€•á•ÁÐ¸(™½È€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€ØàÀÄ€5U0¥¹ÍÑÉÕÑ¥½¸Ý¡¥ €€€¥ÌÕÁÝ…É½µÁ…Ñ…‰±”¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”€€€€€€€€ØàÀä€€€€€€€5U0€€€€€€€€€€€€€€ƒŠP(((((€€€€€€€€€´(€€€€€€€€€€€€€½Á•É…Ñ¥½¸€€€€€€€€€€€€€€€€€€€€€€€Í•ÑÌÑ¡”ƒŠai•É¼€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€ØàÀÄ(€¼((€€€€€€€€€€€€‘½•Ì¹½Ñ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa™±…œ°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¡•¹…ÁÁÉ½ÁÉ¥…Ñ”Ý¡¥±”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…Ñ¥½¸€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¸M•ˆ€€€€€€€€€€€€ô(1ÍÍ•µ‰±•È€€€€€UÍ•ÉÌ€€€Õ¥‘”((()	`€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	%¹Ñ¼€€€€€€€€€€€€€€€€€€€€€€€€€€€€%`()MI%AQ%=8è€€€€€€€€€€€€€€€€€€€‘(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÕµÕ±…Ñ½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”•¥¡Ð¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥Ð€€€€€€€€€€€€ÝÍ¥¹•€€€€€€€€€€€€€€€€€€€€€€€Ù…±Õ”€€€€€€€€€€€€¥¸€€€€€€€Ñ¡”€€€€€€€€á(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹Ñ¼€€€€€€Ñ¡”€€€€€€€€€€`€€€€¥¹‘•à€€€€€€€€€€€€€€€€€€€€€€€É•¥ÍÑ•È¸€€€€€€€€€€€€€€€€€€€€ƒŠaQ¡¥Ì¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹ÍÑÉÕÑ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì€€€€€ÁÉ½Ù¥‘•€€€€€€€€€€€€€™½È€€€€€€€€€ØàÀÄ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½µÁ…Ñ¥‰¥±¥Ñä¸)=9%Q%=8€€€€€=Lè€€€€€€€€€€9½Ð™™•Ñ•¸)IMM%95=Lè€€€€€€€€€€€€€€%¹¡•É•¹Ð€€€€€€€€€€€€€€€€€€€´(((()€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¥Ñ …ÉÉä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘‘Ì¸Ñ¡”€€€€€€€€€€€€€€€€€€€€€€ƒŠa•…ÉÉä™±…œ)MI%AQ%=8è((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¥¡Ð€€€€€€€€€‰¥Ð€€€€€€€€€€€€É•¥ÍÑ•È¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰åÑ•¥¹Ñ¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ•µ½Éä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¸()=9%Q%=8€€€€€=Lè€€€€€€€€€€ è€€€M•Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡É•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥˜€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€½Á•É…Ñ¥½¹…ÕÍ•Ì€™É½´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÉÉä€€€€€€€€€€€€€€€€€€€€€€€‰¥Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”1T¹¥¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€8è€€€M•Ð€Ñ˜€€€Ñ¡”‰¥ÐÍ•Ù•¸½˜Ñ¡”É•ÍÕ±Ð€€€€€€€€€€€€€€€€€¥ÌM•Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ì€€€M•Ðƒ

Œ…±°€€€€€€‰¥ÑÌ€€½˜Ñ¡”€€€€É•ÍÕ±Ð€€€€…É”€€€€±•…È¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Y¤€€€M•Ð€€€¥˜€€€Ñ¡”€€€€€½Á•É…Ñ¥½¸€€€€€…ÕÍ•Ì€€€€€€€€ÑÝ¿ŠeÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É¥Ñ¡µ•Ñ¥Œ€€€€€€½Ù•É™±½Ü¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½µÁ±•µ•¹Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è€€€M•Ð¥˜Ñ¡”½Á•É…Ñ¥½¸€€€€€€€€€€€…ÕÍ•Ì€€€€€„…ÉÉä€€€€€™É½´Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½É‘•È‰¥Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡¥ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸Ñ¡”1T¸)IMM%95=Lè(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¹µ•‘¥…Ñ”°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥É•Ð³Ša%¹‘•á•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€°áÓ¥¹‘•((()€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘]¥Ñ¡½ÕÑ…ÉÉä)MI%AQ%=8è€€€€€€€€€€€€€€€€€€€‘‘Ìµ•µ½Éä¥¹Ñ¼É•¥ÍÑ•È¸((€€€€€€€€€€€€€€=Lè€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½‰•É…Ñ¥½¸)=9%Q%=8€€€€€€€€€€€€€€€€€€€€€€ è€€€½È•¥¡Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÕÍ•Ì¸€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥Ð€½Á•É…Ñ¥½¹Ì°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÉÉä€™É½´€€€€Ñ¡É•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í•Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€1T¸€€€€€€€€½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í¥áÑ••¸€€€€€€€€€€€€€€€€€€€€‰¥Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…Ñ¥½¹Ì°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€ €€€™±…œ€€€€€€€€€€€¥ÌÕ¹…™™•Ñ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa]8èM•Ð€€€€€€€€¥˜€€€€€€€€€€€Ñ¡”¡¥ ½É‘•È€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥Ð€€€€€€€½˜€€€€€€€Ñ¡”€€€€€€€É•ÍÕ±Ð€€€€€€€€€€€€€€€¥Ì€€M•Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€hè€€€€M•Ð€€€€€€¥˜€€€€€€€€€€€€…±°€€€€€€€€‰¥ÑÌ€€€€€½˜€€€€€Ñ¡”€€€€€€€€É•ÍÕ±Ð€€€€€€€€€€€€€…É”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±•…ÉÌ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Xè€€€M•Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É¥Ñ¡µ•Ñ¥Œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥˜€€€€€€€€€€€€€Ñ¡”€€€€€€€€€½Á•É…Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Ù•É™±½Ü¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÕÍ•Ì€€€€€€€€€€€€€€„€€€ÑÝ¿ŠeÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠq½µÁ±•¹•¹Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€èM•Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½É‘•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€½Á•É…Ñ¥½¸€€€€€€€€€€€€€€€€€€€€€€€™É½·ŠaÑ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÕÍ•Ì„…ÉÉä€€€€€¡¥ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸Ñ¡”€€€€€€€€€€€€€€€€€€1T¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½L(((()IMM%9(€€€€€€µ5=Lè(€€€€€€€€€€%µµ•‘¥…Ñ”°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥É•Ð°%¹‘•á•±áÑ•¹‘•(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€õø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M…(0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÍ•µ‰±•ÉUÍ•ÉÌÕ¥‘•|€€€€€€€€€€½”(()9(€€€€€€€€€€€€€€€€€€€€€€€€€€1½¥…°9)MI%AQ%=8èA•É™½Éµ……¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¥¡Ð€€€€€€€€‰¥Ð€€±½¥…°€€€€€€€€€€€9½Á•É…Ñ¥½¸‰•ÑÝ••¸|€€€€€€€€€€€€€€••Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaÑ¡”½¹Ñ•¹ÑÌ€€€€€€€€€€€€€½˜€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•¥ÍÑ•È€€€€€€€€€€€€…¹€€€€€€Ñ¡”€€½¹Ñ•¹ÑÌ€½˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹”(((()=9%Q%=8(€€€=Lè(€€€€€€€€!Ì9½Ñ™™•Ñ•¸(€€€€€€€€9Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M•Ð€€€€€€¥˜€€‰¥Ð€€€€€€€€€€€€€€€€€€€€€½˜(€€€€€€€€€€€€€€€€€€€€€€€€€€µÐM•Ð€€€€€€€€Ñ˜…±°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í•Ù•¸€€€€€€€€€€€€€Ñ¡”€€€É•ÍÕ±Ð€€€€€€€¥˜M•Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥ÑÌ€€€€½˜Ñ¡”€€€€€€€€€€€É•ÍÕ±Ð€€€€€€…É”±•…È¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠq9½Ð™™•Ñ•¸()IMM%9(€€€€5=Lé%µµ•‘¥…Ñ”°(€€€€€€€€€€€€€€€€€€€¥É•Ð°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¹‘•á•±áÑ•¹‘•(((€€€€€€€€€€€ƒŠq1½¥…°(€€€€€€€€€€€€€€€€€½”(€€€€€€€€€€€€€€€€€9%¹Ñ¼½¹‘¥Ñ¥½¸€€½‘”I•¥ÍÑ•È)MI%AQ%=8A•É™½ÉµÍ…¸•¥¡Ð‰¥Ð±½¥…°9€€€€€‰•ÑÝ••¸Ñ¡”(€€€	½”€€€€€€€€€€€€½‘”(€€€€€€€€€€€€€€€€€€€€€€€•½¹‘¥Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€É•¥ÍÑ•È…¹€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€¥µµ•‘¥…Ñ”€€€€€€€€€‰åÑ”€€…¹(€€€€€€€€€€€€€€€€€€€€€€€€€€Á±…•ÌÑ¡”€€€€€€€€É•ÍÕ±Ð€€€€€€€€€€€¥¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”½¹‘¥Ñ¥½¸½‘•É•¥ÍÑ•È¸)=9%Q%=8(€€€€€€€=Lè(€€€€€€€€€€€€€€€€€€€€€€€Q¡”€½¹‘¥Ñ¥½¸½‘•Í…É”Í•ÐÑ¼¸Ñ¡”É•ÍÕ±Ð(€€…½”€€€€€€€€€€€|€€€€€€€àõ‰¥Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±½¥…°9½˜Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÕÉÉ•¹Ð½¹‘¥Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½‘”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥ÑÌ(€€€€€€€€€€€€€€€€€€€€€€Ý¥Ñ €€€€Ñ¡”¥µµ•‘¥…Ñ”€€€€€€€€€ƒŠq¹ä€€€€€½Á•É…¹¸€€€€€€€€€€€€€€€€€€€€€½¹‘¥Ñ¥½¸€€€€€€€€½‘”‰¥Ð(€€€€€€€€€€€€´¸¸€€€€€€€€€€‘µ•±Õ‘¥¹œÑ¡”€€€€€€€€€€€€€€€¥¹Ñ•ÉÉÕÁÐ€€€€€€€€€€€µ…Í­Ì€€€€€µ…ä‰”±•…É•€€€€€€€€€€€€€‰äÑ¡¥Ì(€€€€€€€€€€€€€€€€€½Á•É…Ñ¥½¸¸¸¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”()IMM%9(€€€€€€€5=Lè%µµ•‘¥…Ñ”€€€€€€€€€€€€€€€€€€€€€€€€€€|(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„	…œ(1ÍÍ•µ‰±•È€€€UÍ•ÉÌ€€€Õ¥‘”()M0€€€€€€€€€€€€€€€€€€€€€€É¥Ñ¡µ•Ñ¥Œ€€€€€€€€€€€€€€€€€€€€€€€€M¡¥™Ð€€€€€€€€€€€€€€€€1•™Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¼)MI%AQ%=8è€€€€€€€€€€€€€M¡¥™ÑÌ€€€€€€€€€€€€€€€…±°€€€€€€€€€€€€€€‰¥ÑÌ€€€€€€€€€€€€€€€½˜€€€€€€€€€Ñ¡”€€€€€€€€€€€€€½Á•É…¹€€€€€€€€€€€€€€€€€½¹”€€€€€€€€€Á±…”€€€€€€€€€Ñ¼€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€±•™Ð¸µ	¥Ð€€€€€€€€€€€€€€€€€€é•É¼€€€€€€€€€€€€€€¥Ì€€€€€€€€€±½…‘•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¥Ñ €€€€€€€€€€€€€€€€€€€€„µ½é•É¼¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡¥ (€€€€€€€€€€€€€€€€€€€€€€€€€½É‘•È€€€€€€€€€‰¥Ð€€€€€€€€€€€€€€€€€½˜€€€€€€€€Ñ¡”€€€€€€€€€½Á•É…¹€€€€€€€€€€€€€€€€¥Ì€€€€€€€€€€€€Í¡¥™Ñ•€€€€€€€€€€€€€€€€¥¹Ñ¼€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€™±…œ¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•…ÉÉä(((()=9%Q%=8€€€=Lè€€€€€€!Ð€€€€€€U¹‘•™¥¹•¸ô€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•Ì((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¬€€M•Ð€€€€¥˜€€€€€€€€Ñ¡”€€€€€€€€€€¡¥ €€€€€€€€€€€€€€€€€½É‘•È€€€€€€€€‰¥Ð€€€€€€€€€€€€½˜€€€€€€€€Ñ¡”€€€€€É•ÍÕ±Ð€€€€€€€€€€€€€€€ÅÌ€€€€€M•Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€ÈèM•Ð€€€€€€€€€€¥˜€€€€€€€€…±°€€€€€€€€€€‰¥ÑÌ€€€€€€€€€€€€€½˜€€€€€Ñ¡”€€€€€€€€É•ÍÕ±Ð€€€€€€€€€€€€€€€€€€€ƒŠa…É”€€€€€€€±•…È¸(€€€€€€€€€€€€€€€€€€€€€€€€€Y¤€€€€€€M•Ð€€€€€€€€€¥˜€€€€€Ñ¡”‰¥Ð€€€€€€€€€€€€€€€€€€€€€€€€€€Í¡¥™Ñ•€€€€€€€€€€€€½ÕÐ€€€€€€€€€€€€½˜€€€€€Ñ¡”€€€€€€€€€€€¡¥ €€€€€€€½É‘•È€€€€€€€€€€‰¥Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì€€€¹½Ð¸€€€€€€€€•ÅÕ…°€€Ñ¼€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€‰¥Ð€€€€€€€€€€€€€Í¡¥™Ñ•€€€€€€€€€€€€€€€€€€€€€¥¹Ñ¼€€€€€€€€€€€€Ñ¡”€€€€€€€€¡¥ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½É‘•È€€€€€€€€€‰¥Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€è€€€€€€1½…‘•Ý¥Ñ €€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€€€¡¥ ½É‘•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥Ð€€€€€€€€€€½˜€€€€€€€€€€€Ñ¡”€€€€€€€€€½É¥¥¹…°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹¸)IMM%9€€€€5=Lè€€€€ÕµÕ±…Ñ½È€€€€€€€€€€€€€€€€€€€€°€€€€€€€¥É•Ð±%¹‘•á•°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€áÑ•¹‘•((()MH€¸€€€€€€€€€€€€€€€€€€€€É¥Ñ¡µ•Ñ¥Œ€€€€€€€€€€€€€€€€€€€€€€€€M¡¥™Ð€€€€€€€€€€€€€€€€I¥¡Ð)MI%AQ%=8è€€€€€€€€€€€€€€€€€M¡¥™ÑÌ€€€€€€…±°€€€€€€€€€€‰¥ÑÌ½˜€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€½Á•É…¹‘½É”±•”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É¥¡Ð€€€€€€€€€€€€€€€€…¹(€€€€€€€€€€€€€€€€€€€€€€€€€Í•ÑÌ€€€€€€€€€€Ñ¡”€€€€€€€€€€…ÉÉä€™±…œ€€€™É½´‰¥Ð€€é•É¼½˜Ñ¡”½É¥¥¹…°(€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹¸€€€€€€€€€€€€€€€€€€Q¡”¡¥ ½É‘•È¸‰¥Ð€€€€€€¥Ì¡•±€€½¹ÍÑ…¹Ð€€€€Ñ¼(€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ½Ù¥‘”¸ƒŠaAÉ½Á•È€€€€€€€€€€€€€€€€€ÑÝ¼¨Ì½µÁ±•µ•¹Ð€€€Í¥¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•áÑ•¹Í¥½¸¸((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€<¤)=9%Q%=8€€€=Lè€€€€€€€€€€ è€€U¹‘•™¥¹•¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€8è€€€€€€M•Ð€€€€¥˜€€€€€€€€Ñ¡”€€€€€€€€€€€Í¥¸‰¥Ð€€€€€€€€€€€€€€€€€€€€½˜€€€€€Ñ¡”É•ÍÕ±Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì€€€€€€€€€€M•Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€hè€€€€€€M•Ð€€€€€Å˜€€€€€€€€…±°€€€€€€€€€€€‰¥ÑÌ€€€€€€€€€€€€€€€€½˜É•ÍÕ±Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€Y¤9½Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±•…È¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™™•Ñ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€è€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€é•É¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1½…‘•‘Ý¥Ñ ‰¥Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜€€€€€€€Ñ¡”€€€€€€€€€€€€€½É¥¥¹…°)IMM%95=Lè€€€€€€€€€€€€€€€€€€€¥É•Ð°%¹‘•á•áÑ•¹‘•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹¸(€€€€€€€€€€€€€€€€€€€€€€€€€€ÕµÕ±…Ñ½È°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ ô(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Õ„Ð€ô(0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰ÍÍ•µ‰±•ÈUÍ•ÉÌÕ¥‘”(€€€€€€€€€€€€€€€€	€€€€€€€€€€€€€€•Ì((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ù”ƒŠa	É…¹ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¸…ÉÉä€€€€€€€€€€€€€€€€€€€€±•…È€€ð(((((€€€€€€€€€€€€€€€€MI%AQ%=8é5•¹Ñ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”ÍÑ…Ñ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜€€€€€Ñ¡”…ÉÉå‰¥Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ˜€€…ÉÉä€€€€€€¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±•…È¸€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹‘…ÕÍ•Í„‰É…¹ (€€€€€€€€€€€€€è(€€€€€€€€€€€€€€€€=9%Q%=8(€€€€€€€€€€€€€€€€€€€=Lè(€€€€€€€€€€€€€€€€€€€€€€€9½Ñ™™•Ñ•¸(€€€€€€€€€€€€€€€€€€€€€€€I•±…Ñ¥Ù”°(€€€€€€€€€€€€€€€€IMM%9(€€€€€€€€€€€€€€€€€€€5=Lè€€€€1½¹I•±…Ñ¥Ù”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”((((€€€€€€€€€€€€€€€€	•Ì(€€€€€€€€€€€€€€€€€€€€€€	É…¹ €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¸€€€€€…ÉÉåM•Ð(€€€€€€€€€€€€€€€€MI%AQ%=8è(€€€€€€€€€€€€€€€€€€€€€€€€ƒŠPôø€Q•ÍÑ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÐÑ¡”ÍÑ…Ñ”½˜(€€€€€€€€€€€€€€€€€€€€€€€M¡…((((€€€€€€€€€€€€€€€€€€€€€€€€€€€…Ð…ÉÉå¥Ì	Ð¸€€€€€Ñ¡•…•Éä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥Ñ…¹‘…ÕÍ•Ì°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„‰É…¹ €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™¼(((((€€€€€€€€€€€€€€€€=9%Q%=8(€€€€€€€€€€€€€€€€€€€€€€½ÁÌëŠP9•Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa™™•Ñ•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€5=Lè(€€€€€€€€€€€€€€€€IMM%9(€€€€€€€€€€€€€€€€€€€€€€€€€I•±…Ñ¥Ù”±1½¹œI•±…Ñ¥Ù”(€€€€€€€€€€€€€€€€	DÍ”€€€€€€€€€€€€€€€€€€€€€€€€€€è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ŠPµ	É…¹• (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¸ÅÕ…°((€€€€€€€€€€€€€€€€MI%AQ%=8è(€€€€€€€€€€€€€€€€€€€€€€Õ”]••€€…™Ñ•È„ƒŠaÍÕ‰ÑÉ…Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½ÈƒŠq½µÁ…É”€€€€€€€€€Ñ¡¥”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…Ñ¥½¸³ŠP)|€€€€€€€€€€€€€€€€€€€€€€€€€¥¹ÍÑÉÕÑ¥½¸Ý¥±°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥˜Ñ¡”¹A•ÍÑ…•È±•ÅÕ…±Ñ¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€¡”I•Í•Éä€€€€€€€‰É…¹ €€€€€€€€€€€€¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹»Št(€€€½Ì(€€€€€€€€€€€€€€€€=9=8(€€€€€€€€€€€€€€€€€€€€½ÁéÌé9½Ð™™•Ñ•¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”((((€€€€€€€€€€€€€€€€IMM%9(€€€€€€€€€€€€€€€€€€€€5½Ù•ÌèÑ¥Ù”±1½¹I•±…Ñ¥Ù”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ä(((((€€€€€€€€€€€€€€€€	(€€€€€€€€€€€€€€€€€€€€€€•”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	É…¹ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¸É•…Ñ•È(€€€€€€€€€€€€€€€€MI%AQ%=8éUÍ•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÅÕ…°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…™Ñ•È…Õ‰•É…•Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½È¸½µÁ…É”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…Ñ¥½¹½¸¡Í¥¹•¸€€€€€€€„((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥¹…ÉäÙ…±Õ•Ì°€€€€€€€€€€€€€€€€€Ñ¡¥Ì¸€€€€€€¹ÍÑÉÕ¥½¸Ý¥±°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¥ÍÑ•ÈÝ…Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰É…¹ ¥˜€€Ñ¡”€€€ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡MÉ•…Ñ•ÉÑ¡…¹½È¸}•Å……°Ñ¼€€€€€€€€€€€€€€€€€€€€€€€€€¡”5•µ½Éä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É¥¹“
¬€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”€€€€€€€€€¡•Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”(((((€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€=9%Q%=8(€€€€€€€€€€€€€€€€€€€€€€€„9½ÑÍÑ™•Ñ•¸(€€€€€€€€€€€€€€€€€€€€½Á•Ìè(€€€€€€€€ð(((((€€€€€€€€€€€€€€€€IMM%9(€€€€€€€€€€€€€€€€€€€€5=Lè(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•±…Ñ¥Ù”¸(€€€€€€€€€€€€€€€€€€€€€€€€5¥…Ñ•¡ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ½¹œ°€¼È|€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€L(0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”(€€€ÍÍ•µ‰±•È€€€€€UÍ•ÉÌ€€€Õ¥‘”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ù”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€	P€€€€€€€€€€€€€€€€€€€€€€€€€€€€	É…¹¡½¸€€€€€€€€€€É•…Ñ•È(€€€MI%AQ%=8è€€€€€€€€€€€€€€€€€€€UÍ•€€€€…™Ñ•È€€€€€€„€€€€€€ÍÕ‰ÑÉ…Ð€€€€€€€€€€€€€€½È€€€€½µÁ…É”€€€€€€€€€€€½Á•É…Ñ¥½¸€€€€€€€€€€€€€€½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í¥¹•€€€€€€€€€€€|(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥¹…Éä€€€€€€Ù…±Õ•Ì°€€€€€€€€€€€ƒŠaÑ¡¥Ì€€€€€€€€€€€¥¹ÍÑÉÕÑ¥½¸€€€€€€€€€€€€€€€€Ý¥±°€€€€€€€‰É…¹ €€€€€€€€€€€€€¥˜€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•¥ÍÑ•ÈÝ…ÌÉ•…Ñ•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡…¸€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ•µ½Éä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
¬(((((€€€€€€€€€=è(€€€=9%Q%=8€€€€€€€€€€€€€€€€€€€€€€9½Ð€€€€€™™•Ñ•¸(€€€IMM%9(€€€€€€€€€€€5=LèI•±…Ñ¥Ù”°€€€€€€€€€€€€€€€€€€€€€€€€€€€1½¹I•±…Ñ¥Ù”(((€€€	!$€€€€€€€€€€€€€€€€€€€€€€€€€€€€	É…¹ ¥˜€€€€€€€€€€!¥¡•ËŠP(€€€MI%AQ%=8è€€€€€€€€€€€€€€€€€€€UÍ•‘…™Ñ•È¸€€€€€€€€€€€€€€€€€€„ÍÕ‰ÑÉ…Ð¸½È€€€€€€€€€€€€€€€€€€€€€€€€€€€½µÁ…É”½Á•É…Ñ¥½¸€€€€€€€½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Õ¹Í¥¹•€€€€€€€€€€‰¥¹…Éä€€€€€€€€€€€Ù…±Õ•Ì€€Ñ¡¥Ì€€€€€€€€€€€€€€€€€€¥¹ÍÑÉÕ¥½¸Ý¥±°€€€€‰É…¹ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥˜€€€€Ñ¡”€€€€€€É•¥ÍÑ•È€€€€€€€€€€€€€Ý…Ì¡¥¡•È€€€€€€€€€€€€€€€€€€€Ñ¡…¸€€€€€Ñ¡”€€€€€€€µ•µ½Éä€€€€€€€€€€€½Á•É…¹¸€€€€€€€€€€€|((€€€=9%Q%=8€€€€€=Lè((€€€IMM%95=Lè€€€€€€€€€€€€€€I•±…Ñ¥Ù”°€€€€€€€€€€1½¹I•±…Ñ¥Ù”(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥˜(€€€€	!L€€€€€€€€€€€€€€€€€€€€€€€€€€€	É…¹ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€!¥¡•ÈM…µ”€´€€€€€€½È(((€€€€MI%AQ%=8è€€€€€€€€€€€€€€€€€€]¡•¸´ƒŠaÝ••»Ša…™Ñ•È€€€€€€€€€€€€€€€€€€€€€€€€€€€É„ÍÕ‰ÑÉ…Ð€€€€€€€€€€€€€€€½È€€€€€½µÁ…É”½¸€€€€€€€€€€€€€€€€€Õ¹Í¥¹•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥¹…Éä¸Ù…±Õ•Ì°€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡¥Ì€€€€€€€€€€€€€¥¹ÍÑÉÕÑ¥½¸€€€€€€€€€€€€€€€€€€€Ý¥±°€€€€€€€€‰É…¹ €€€€€€€€€€¥˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•¥ÍÑ•È€€€€€€€€€€€€€€€€€€€€€€€¡¥¡•È€€€€€€€€€€€€€€€€€€€Ñ¡…¸€€€€€€€€½È€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý…Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í…µ”€€€€€€€€…”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ•µ½Éä€€€€¸(((((€€€€=9%Q%=8(€€€€€€€€€€€€=Lè€€€€€€€€€€€€€€€€€9½Ð€€€€™™•Ñ•¸(€€€€IMM%9€€€€€5=LèI•±…Ñ¥Ù”°€€€€€€€€€€€€€€€€€€1½¹I•±…Ñ¥Ù”(((€€€€	%P€€€€€€€€€€€€€€€€€€€€€€€€€€€€	¥Ð€€€€Q•ÍÐ(€€€€MI%AQ%=8è€€€€€€€€€€€€€€€€€€€€€€€€€€…¸•¥¡Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠqA•É™½ÉµÌ€€€€€ƒŠaÁ¥Ð±½¥…°½˜Ñ¡”½¹Ñ•¹ÑÌ½˜”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„€€€€€€É•¥ÍÑ•È€€€€€€€€€€€€€€…¹„€€€€€€€€€€€€€€€Å•µ½Éä€€€€€€€€€€€€½Á•É…¹€€€€€€€€€€€€€€€€…¹€€€€€€€€µ½‘¥™¥•Ì€€€€€€€€€€€ƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹‘¥Ñ¥½¸½‘•Ìé…½É‘¥¹±ä¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”€€€€€€€€€€€€½¹Ñ•¹ÑÌ€€€€€€€€€€€€€½˜€€€Ñ¡”((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•¥ÍÑ•È…É”¡½Ð…™™•Ñ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(((((€€€€=9%Q%=8(€€€€€€€€€€€½ÁLè€€€€€€€€€€€€€€€€€€ è€€€9½Ñ™™•Ñ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€8è€€€M•Ð€€€¥˜€€€‰¥Ð€€€€€€€•Ù•¸½˜Ñ¡”É•ÍÕ±ÐƒŠaÑ”M•ÑÌ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€hè€€€M•Ð€€€¥˜€€€…±°€€€€€€€‰¥ÑÌ½˜Ñ¡”É•ÍÕ±Ð…É”•…È¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€]Ì€€€±•…É•¸€€€€€€€€€€¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è€€€9½Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™™•Ñ•¸¸(´((€€€€IMM%95=Lè€€€€€€€€€€€€€€€€€€€¥É•ÐïŠa%¹‘•á•°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%µµ•‘¥…Ñ”°€€€€€€€€™áÑ•¹‘•((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÔÐØ€€€€€€€€€€€€€ô(0€€€€€€€€L)…”M•Ð••¸€€€€L(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaÍÍ•µ‰±•È€€UÍ•ÉÍÕ¥‘”(€€€€€€€€€€€€€€€€€€€€€€€	1(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	É…¹ 1•ÍÍ½ÈÅÕ…°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¸(((€€€€€€€€€€€€€€€€€€€€€€€MI%AQ%=8èƒŠaUÍ•‘…™Ñ•È„ÍÕ‰ÑÉ…Ð½È½µÁ…É”ƒŠa½Á•É…Ñ¥½¹Í¥¹•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¸((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠ`(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥¹…ÉäÙ…±Õ•Ì°€€€€€€€€€€€€€€€€€€€Ñ¡¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹ÍÑÉÕÑ¥½¸Ý¥±°‰É…¹ ¥˜Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•¥ÍÑ•È€€Ý…Ì€€€€€€€€€€€€€€€€€€€±•ÍÌ€€€€€ð(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡…¸¸½È¸•ÅÕ…°Ñ¼¸°Ñ¡”µ•µ½Éä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ð€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€=9%Q%=8(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=Lé9½ÓŠa™™•Ñ•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•±…Ñ¥Ù”°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1½¹I•±…Ñ¥Ù”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€€€€€€€€	1<€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠq	É…¹ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¸1½Ý•È(€€€€€€€€€€€€€€€€€€€€€€€MI%AQ%=8è€€€€€€€€€€€€€€€€€€€€€€]¡•¹ÕÍ•…™Ñ•È€€ÁÕ‰Ñ•…Ðé½È½µÁ…É”€…½¸Õ¹Í¥¹•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥¹…ÉäÙ…±Õ•Ì°Ñ¡¥Ì¥¹ÍÑÉÕÑ¥½¸Ý¥±°‰É…¹ ¥˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¥ÍÑ•ÉÝ…Ì±½Ý•ÈÑ¡…¸Ñ¡”µ•µ½Éä½Á•É…¹¸(€€€€€€€€€€€€€€€€€€€€€€€=9%Q%=8(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=Lè(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9½É™™•Ñ•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((€€€€€€€€€€€€€€€€€€€€€€€IMM%9(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5=Lè€€€€€€L(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•±…Ñ¥Ù”±I•±…Ñ¥Ù”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1½¹œ¸(€€€€€€€€€€€€€€€€€€€€€€€	1L|€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¸1½Ý•È½ÈM…µ”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€••Ì((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	É…¹ €€€€€€€€€€€€”(€€€€€€€€€€€€€€€€€€€€‰MI%AQ%=8è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€èƒŠaUÍ•…™Ñ•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý…‰ÑÉ…”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa‘”¸½ÕÁÕÉ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Õ¹Í¥¹•‘‰¥¹…ÉäÙ…±Õ•Ì°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡¥Ì¸€€¥¹ÍÑÉÕ¥Ñ½¸Ý¥±°‰É…¹ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ðà€€€€€€€€€€€€€€€€€€€€Ñ¡”€€É•¥ÍÑ•È€€€€€€€€€€€€€€€€€€€€Ý…Ì€€€€€€±½Ý•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹¹µ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ•¹½Éä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡…¸½È€€ƒŠaÑ¡”¡Í…µ•…ÌƒŠaÑ¡”(€€€€€€€€€€€€€€€€€€€€€€€=9%Q%=8(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=Lé|9½ÓŠa™™•Ñ•¸(€€€€€€€€€€€€€€€€€€€|(€€€€€€€€€€€€€€€€€€€€€€€€€€€€5=LëŠq	…±…¥Ù”°(€€€€€€€€€€€€€€€€€€€€€€€IMM%9€€€€€€€€€€€I•±…Ñ¥Ù”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1½¹œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á…±•Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€	É…¹ ½¸1•ÍÌ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ä(((((€€€€€€€€€€€€€€‰MI%AQ%=8ëŠqÕ•‘…™Ñ•ÈÍÕ‰ÑÉ…Ð½µÁ…É”€€€€€€€€½Á•É…Ñ¥¼½¸Í¥¹•„€€€€€€€€€€€€€€€€€€€€€€€€€€½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥¹…ÉäÙ…±Õ•Ì°Ñ¡¥Ì¸¥¹ÍÑÉÕÑ¥½¸Ý¥±°‰É…¹ €€˜}Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€•”Q•¥ÍÑ•ÈèÝ…Ì±•ÍÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¡…¸€Ñ¡”µ•µ½Éä€€€€€€€€€€˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹(€€€€€€€€€€€€€€€€€ƒŠa=9%Q%=8(€€€€€€€€€€€€€€€€€€€€€½Ù•Ìè(€€€€€€€€€€€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€9½Ñ™™•Ñ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ML(€€€€€€€€€€€€€€•”(€€€€€€€€€€€€€€€IMM%9(€€€€€€€€€€€€€€€€€€€€€€5=Lè(€€€€€€€€€€€€€€€€€€€€€€€€€€€I•±…Ñ¥Ù”±I•±…Ñ¥Ù”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q½¹œ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…”(0€ÍÍ•µ‰±•È€€UÍ•ÉÌ€€Õ¥‘”(((€€	5$(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	É…¹ €€€€€€€€€½¸€€€€5¥¹ÕÌ(€MI%AQ%=8è€€€€€€€€€€€€€€€UÍ•€€€€€€€€€…™Ñ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡¥Ì€€€€€€€€€¥¹ÍÑÉÕ¥Ñ½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¥±°€‰É…¹ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¸€€€Í¥¹•€€€€€€‰¥¹…Éä€€€€€€€€€€€€€Ù…±Õ•Ì°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥˜€€€Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•ÍÕ±Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹•…Ñ¥Ù”¸(€=9%Q%=8=Lè€€€€€€€€€€€9½Ð€€€€™™•Ñ•¸€€€€€€€€€€€€€€€€€€€€¸(((((€IMM%9(€€€€€€€5=LéI•±…Ñ¥Ù”°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1½¹œI•±…Ñ¥Ù”€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€	9(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	É…¹ €€€€€€€€9½ÐÅÕ…°((€MI%AQ%=8è€€€€€€€€€€€€€UÍ•€€€€€€€€€€…™Ñ•È€€€€€€€€€„€€€€€€€€€€€€€€€ÍÕ‰ÑÉ…Ð€€€€€€€€€€€€€€½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½µÁ…É”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…Ñ¥½¸±Ñ¡¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€¥¹ÍÑÉÕÑ¥½¸€€€€€€€€€€€€€€€€€€€€Ý¥±°€€€€€€€€€€€€€‰É…¹ €€€€€€¥˜€€€€€€Ñ¡”€€€€€€€É•¥ÍÑ•È€€€€€€€€€¥Ì€€€€€€¹½Ð€€€€€•ÅÕ…°(€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼€€€€€€Ñ¡”€€€€€µ•µ½Éä€€€€€€€€€€€½Á•É…¹¸(€=9%Q%=8=Lè€€€€€€€€9½Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™™•Ñ•¸(€IMM%9(€€€€€€€€€€5=Lè€€€€€€€€€I•±…Ñ¥Ù”°€€€€€€€€€€€€€€€1½¹œI•±…Ñ¥Ù”(((€	A0(€€€€€€€€€€€€€€€€€€€€€€€€€€	É…¹ €€€€€€€€€€€½¸€€€€A±ÕÌ(€MI%AQ%=8è€€€€€€€€€€€€UÍ•€€€€€€€€€€€€€€€€€€€€€€€€€€€…¸½Á•É…Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…™Ñ•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í¥¹•‘‰¥¹…ÉäÙ…±Õ•Ì°Ñ¡¥Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|(€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹ÍÑÉÕÑ¥½¸€€€€€€€€€€€€€€€€€€€Ý¥±°€€€€€€€€€€€€€‰É…¹ €€€€€€Ñ˜€€€€€€€Ñ¡”€€€€€É•ÍÕ±Ð€€€€€€¥Ì€€€€Á½Í¥Ñ¥Ù”¸(€=9%Q%=8=Lè€€€€€€€€9½Ð€€€€€€™™•Ñ•¸(€IMM%95=Lè(€€€€€€€€€€€€€€€€€€€€€€€€€€I•±…Ñ¥Ù”°1½¹œI•±…Ñ¥Ù”((	I€€€€€€€€€€€€€€€€€€€€€€	É…¹ ((ƒŠaMI%AQ%=8è€€€€€€€€€€€€…ÕÍ•Ì…¸€€€€€€€€€€€€€€€Õ¹½¹‘¥Ñ¥½¹…°€€€€€€€€€€€€€€€€€€€€€€‰É…¹ ¸(=9%Q%=8=Lè€€€€€€€€€9½Ð€€€€€€™›¥Ñ•»ŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¥ô(()|IMM%9(€€€€€€€€€€5=Lè€€€€€€€€I•±…Ñ¥Ù”°€€€€€€€€€€€€€€€€1½¹œI•±…Ñ¥Ù”(((	I8(€€€€€€€€€€€€€€€€€€€€€€€€€	É…¹ €€€€€€€€€€€9•Ù•È((MI%AQ%=8è€€€€€€€€€€€€€½•Ì¹½Ð€€€€€€€€€€€€€€€€€…ÕÍ”€€€€€€€€€€€€€€€€€€€€€€€€€‰É…¹ ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡¥Ì€€€€€€€¥¹ÍÑÉÕÑ¥½¸€€€€€€€€€€€€€€€€¥Ì(€€€€€€€€€€€€€€€€€€€€€|(((((€€€€€€€€€€€€€€€€€€€€€€€€€•ÍÍ•¹Ñ¥…±±ä€€€€€€€€€€€€€€€€„€€€€€€9<µ½@¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((=9%Q%=8(€€€€€€€€=Lè€€€€€€€€€€9½Ð€€€€€€™™•Ñ•¸)IMM%9(€€€€€€€€5=Lè€€€€€€€€€€I•±…Ñ¥Ù”°€€€€€€€€€€€€€€€€1½¹œ€€€€€€I•±…Ñ¥Ù”(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ì´à(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ø€€€€€€€€€€€€€€€€€€€€€´(0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÍ•µ‰±•ÉUÍ•ÉÌÕ¥‘”((€€€€€€€€€€€	MH€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	É…¹ €€€€€€Ñ¼€€MÕ‰É½ÕÑ¥¹”((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÕÑ•¸½¹Ñ¼Ñ¡•ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸(((((€€€€€€€€€€€ƒŠaMI%AQ%=8è€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”ÕÁ‘…Ñ•€€€€€€€€€€€€€€€€ÁÉ½É…´½Õ¹Ñ•È€€€€€€€€€€€€€€€€€€€€€¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍåÍÑ•´ÍÑ…¬€€€€€€€€€€€€€€€…¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹ÑÉ½°Ì¸ÑÉ…¹Í™•ÉÉ•€€€€€€€€€€€€€€€€Ñ¼¸€€Ñ¡”€€ƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•™™•Ñ¥Ù”€€€€€€€€…‘‘É•ÍÌ¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((()…Ì€€€ƒŠa=9%Q%=8(€€€€€€€€€½Ù•ÌëŠa9½Ð™™•Ñ•¸(€€€€€€€€€5=Lè(€€€LIMM%9I•±…Ñ¥Ù”°1½¹œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•±…Ñ¥Ù”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€	[Št€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	É…¹¡=Ù•É™±½Ü€€€€€€€€€€€€€€€€€€€€€€€€€±•…È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¸((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ì(((((€€€€€€€€€€€€€€€€€€€€€€Ñ•ÍÑ”Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸(((((€€€€è€€€€€€ƒŠaMI%AQ%=8è€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑ…Ñ”½˜Ñ¡”½Ù•É™±½Ü€€€™±…œ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹‘…ÕÍ•Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰É…¹ ¥˜Ñ¡”½Ù•È™±½Ü™±…œ¥ÌÍ•ÑÌ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€=Lè(€€€€€€€€€€€=9%Q%=8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9½Ñ™™•Ñ•¸(€€€€€€€€€€€€€€€€€5=LéI•±…Ñ¥Ù”°1½¹I•±…Ñ¥Ù”(€€€€€€€€€€€IMM%9((€€€€€€€€€€€	L€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹=Ù•É™±½Ü(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa	É…¹ €€€€M•Ð(((€€€€€MI%AQ%=8èQ•ÍÑÌÑ¡”ÍÑ…Ñ”½Ñ¡”½Ù•É™±½Ü™±…œ…¹…ÕÍ•Ìñ„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô(((((€€€€€€€€€€€€€€€€€€€‰É…¹¡¥˜Ñ¡”½Ù•É™±½Ü™±…¥Ì±•…È¸(€€€€‰=9%Q%=9=Lè9½Ñ™™•Ñ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•±…Ñ¥Ù•I•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•±…Ñ¥Ù”°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q½¹œè(€€€€€€€€€€€é”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	É…¹ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¸i•É¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±•…È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¤€€€€€€€€€€€€€€€€€ð(((()…”€€€€€€€€€€€€€€€€€€€Q•ÍÑÍÑ¡”ÍÑ…Ñ”€€€€Ñ¡”é•É¼¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹‘}…ÕÍ•Íð„‰É…¹ (€€€€€€€€€€€ƒŠaMI%AQ%=8è(€€€€€€€€€€€€€€€€€€€€…˜Ñ¡”€€€€€ƒŠa™±…œ¥Ì±•…Éø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™±…œ€€€€€ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€é•É¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜è((´((€€€€€€€€´(€€€€€€€€€€€€€€€€½Ù•ÌèèÉÑ•Ñ•¸(€€€€€€€€€€€½¹ÁÉÉÑ½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”((((€€€€€€€…”(€€€€€€€€€€€€IMM%9(€€€€€€€€€€€€€€€€€€€ƒŠqI•±…Ñ¥Ù”±1½¹I•±…Ñ¥Ù”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€5=Lè(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€€€€€€€€€	É…¹¡½¹i•É¿ŠaM•Ð(€€€€€€€€€€€€MI%AQ%=8ëŠaQ•ÍÑÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”¹ÍÑ…Ñ”½˜Ñ¡•Í•Ñ”é•É¼•±…Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€é•É¼€€€€€€€€€€€€€€€€€€€€€€€…¹‘…ÕÍ•Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa‰É…¹ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½™˜€€€€€€€€€€€€€€€€€€€€€€€™±…œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”¸€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì€€€€€€€€€€€€€€€€€€½”(€€€€€€€|€€€€€€€€€=Lè9½Ð¹™™•Ñ•¸(€€€€€€€€€€€€=9%Q%=8€€€€€€€€€ƒŠP€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¼(((€€€€€€€€€€€€IMM%9(€€€€€€€€€€€€€€€€€€€5=Lè€€€€€€€¡½¹I•±…Ñ¥Ù•½¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•±…Ñ¥Ù”°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=”€€€€€€€€Á…”(0€€€€€€€ÍÍ•µ‰±•È€€€€€€UÍ•ÉÌ€€Õ¥‘”(((((€€€•”€¡•áÐ¤€€€€€€€€€€€€€€€€€€€€€€€€€€±•…È€€€€€€€€€½¹‘¥Ñ¥½¸€€€€€€€€€€€€€€€€€€½‘”(€€€€€€€€MI%AQ%=8è€€€€€€ƒ
¤(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€áÁ±¥¥Ñ±ä¸±•…ÉÌ…¹ä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÕ‰Í•Ð½˜Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹‘¥Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5AT(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™±…Ì¸€€€€€€€€€€€Q¡¥Ì€€€€€€€€€€€€½Á•É…Ñ¥½¸€€€€€€€€€€€¥Ì…¸•áÑ•¹‘•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Íå¹Ñ…àÙ•ÉÍ¥½¸(´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9¸(€€€€€€€€=9%Q%=9=Lè€€€€€€€€€€€€€€€±°€€€€€€€½¹‘¥Ñ¥½¸™±…Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÁ•¥™¥•€€€€€€€€€€€€€€€€€€€€€€€€…Ì½Á•É…¹‘Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±•…É•¸€€€€€€€€€€€€€€€€%Ð€€€€€€€€€€¥Ì€€€¹½Ð€€€€€€Á½ÍÍ¥‰±”€€€€€€€€€€€€€€€Ñ¼€€€€€€€€ÍÁ•¥™äÑ¡”€€€€€€€€€€€€€€€€€¹Ñ¥É”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MÑ…Ñ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™±…œ¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ì(((((€€€€€€€€IMM%9(€€€€€€€€€€€€€€€€5=Lè(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹‘¥Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1¥ÍÐ(((€€€€€€€€1H€€€€€€€€€€€€€€€€€€€€€€€€€€€±•…È¸((€€€€€€€€MI%AQ%=8è€€€€€€€€€€€€€€€€€€Q¡”€€€€€€€É•¥ÍÑ•È€€€€€€€€€€€€€€€€€€½È€€€€€€€µ•µ½Éå¥Ì±½…‘•‘Ý¥Ñ é•É¼¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÉÉå™±…œ€€€€€€€€€€€€€€€¥Ìè€€€€€€€€€€€€€€€€€€€€€€€€€™½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½µÁ…Ñ¥‰¥±¥Ñä¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±•…É•€ØàÀÀ(€€€€€€€€=9%Q%=8(€€€€€€€€€€€€€€€=Lè€€€€€€€€€€€€€€€€€ è9½Ð€€€€€€€€€™™•Ñ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€8è€€€€€±•…É•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€hè€€€€€M•Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Y¤€€€€€±•…É•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±•…É•(€€€€´(€€€€€€€€IMM%95=Lè€€€€€€€€€€€€€€€€€€€•Ñ•Ðì%¹‘•á•°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÕµÕ±…Ñ½È€€€€€€ƒŠaáÑ•¹‘•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€°(((((€€€€€€€€5@(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5•¹½Éä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½µÁ…É”Ñ½„¸M…ÁÑ••(€€€€€€€ƒ
ìMI%AQ%=8è€€€€€€€€€€€€€€€€€€€€€€„µ•µ½ÉçŠa½Á•É…¹‘Ñ¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½µÁ…É•Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€½¹Ñ•¹ÑÌ€€€€€€€€€€€€½˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹‘¥Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÁ•¥™¥•€€€€€€€€€€€€€€€€€É•¤€€€€€€€€€€€€€€€€€€€€€…¹è€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
¤(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½‘•Ì¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€È€€€€€€€€€€€€€€€Í•ÑÌ…ÁÁÉ½ÁÉ¥…Ñ”(´=9%Q%=8(€€€€€€€€€=Lè€€€€€€€€€€€€€€€€€€€€€€€!Ì€€€€€U…‘•™¥¹•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¥¡Ð€€€€€€€€€‰¥Ð€€€€€€€€€€€€€€€€€€€€€MÁ••ÉÑ½¹Ì±……„»Št(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Õ¹…™™•Ñ•€€€€€€€€€€€€€€€€€€™½È€ÄØñ‰¥Ð€€€€€€€€€€€€€½Á•É…Ñ¥½¹Ì¸€€€€€€€€€€€€€€€€€€€€€€€€¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€8è€€€€€M•Ð¥˜Ñ¡”€€€€€€€€€€€€€€€€€¡¥ ½É‘•È€€€€€€€€€€€€€€‰¥Ð€€€½˜€€€€€€€€€€€€Ñ¡”€€€€€€É•ÍÕ±Ð€€€€€€€€€€€¥Ì€€€€M•Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€hè€€€€€€M•Ð€€€€€Ç
Œ€€€…±°€€€€€€€€€€‰¥ÑÌ€€€€€€½˜€€€€Ñ¡”€€€€É•ÍÕ±Ð€€€€€€€€€€€€€€€…É”€€€€€€€±•…È¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Xè€€€€€€M•Ð€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥˜€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÑÝ¼‰Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Ù•É™±½ÝÌ€€€€€€€€€€€€€€€€€€€€€€½Á•É•ÑÑ½¸…ÕÍ•Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¤((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½µÁ±•µ•¹Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è€€€€€M•Ð€€€€¥˜Ñ¡”€€€€€€€€€€€€€ÍÕ‰ÑÉ…Ñ¥½¸‘¥„¹½Ð…ÕÍ”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„€€€€€€…ÉÉä€€€€€€™É½´€€€€€€Í•”((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ½ÍÑÍ¥¹¥™¥…¹Ñ‰¥Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜€€€€€€€€Ñ¡”€€€€€€€€€€€1T¸(€€€€€€€IMM%9(€€€€€€€€€€€€€€€€5=Lè€€€€€€€€€€€€€€€€€€€€€€€€¥É•Ð±%¹‘•á•°áÑ•¹‘•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±…µ…‘¥…Ñ”°(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Õ„Ää€€€€€€€ð(0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÍ•µ‰±•È€€€€€€€|(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€UÍ•ÉÌÕ¥‘”((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½µÁ±•µ•¹Ðè€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
ˆ(((((€€€€MI%AQ%=8éI•Á±…•Ì(€€€€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€½¹Ñ•¹ÑÍ½˜€€€€€€€€€€€€€€€€…É•¥ÍÑ•Èµ•µ½ÉåÝ¥Ñ è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥ÑÌ€€½¹—ŠeÏŠt½µÁ±•µ•¹Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÉÉä™±…œ¥ÌÍ•Ð™½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€„€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€ØàÀÃŠa½µÁ…Ñ¥‰¥±¥Ñä¸(€€€€€=Lè™¤èƒŠa9½Ñ™™•Ñ•¸)D=9%Q%=8(€€€€€€€€€€€€]8èM•Ð€Å˜‰¥ÐÍ•Ù•¸½˜Ñ¡”éË¥…¹±Ðé¥ÌƒŠaM•Ð(€€€€€€€€€€€½”M•Ð¥˜…±°‰¥ÑÌ¸½˜Ñ¡”É•ÍÕ±Ðé…É”±•…È(è((€€€€€€€€€5=Lè(€€€€IMM%9€€€€€€€€¥É•Ð°%¹‘•á•°áÑ•¹‘•|(€€€€€€€€€€€€€€ÕµÕ±…Ñ½È°((€€€ƒŠQ]$€€€€€€€€€€€€€€€€€€€€€€€€€±•…É…¹‘]…¥Ñ™½È¸%¹Ñ•ÉÉÕÁÐ(€€€€MI%AQ%=8è(€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaÑ¡•]1¥¹•ÑÉÕÑ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½‘”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9Í…¸¥µµ•‘¥…Ñ”‰åÑ”¸Ý¥Ñ¡Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ñ¥½¸¸€€€€€¡Ý¡¥ µ…ä±•…È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•¥ÍÑ•È€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹Ñ•ÉÉÕÁÐ€€|(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑ…­Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¤°¸€€€Ñ¡”•¹Ñ¥É”€€€µ…¡¥¹”€€€€ÍÑ…Ñ”€€€½¸€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍåÍÑ•µÍÑ…¬°…¹Ñ¡•¸Ý…¥ÑÌ™½È…¹¹¼¥¹Ñ•ÉÉÕÁÐ¸€€€€€€€€€]¡•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¸µµ…Í­•¥¹Ñ•ÉÉÕÁÐ€€€€€½ÕÉÌ°€€€™ÕÉÑ¡•È€€€€µ…¡¥¹•|(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€”à€€€€€€€€€Ý¥±°€€€€€€‰”¸€€Í…Ù•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰•™½É”¸€€€€€€€€€€€€ð€€€€€€€€€€€€Ñ¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ù•Ñ½É¥¹œÑ¡”(€€€€€€€€€€€€€€¥¹Ñ•ÉÉÕÁÐè(€€€€€€€€€€€€€€€€€€€€€€ €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹œÉ½ÕÑ¥¹”¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸(((()|=9%Q%=8(€€€€€€€½Á•Ìè€€€€½¹‘¥Ñ¥½¹½‘•Ì¹…É”Í•Ð¸Ñ¿ŠtƒŠaÑ¡”¸ƒŠqÁ…ÍÕ±Ð½˜Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9½˜€€€€€€€€ÕÉÉ•¹Ð½¹‘¥Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥Ð±½¥…°€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½‘”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™•È€€€€€€€€€€€€€€€€€€€€ð½¹‘¥Ñ¥½¹½(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑ¸½Á•É…¹‘Í¹ä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP((((€€€€‰IMM%95½Lé$(((((€€€€€€€€€€€€€€€€€€€€€€€ô((€€€MI%AQ%=8è((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½ÈÁ½Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰M¡½Õ±‘‰”¸ƒŠaÕÍ•Q…¥•È…¸ƒŠa(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€€€€€€€¥…Ñ•”°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¥ É•ÍÕ±Ñ¡•±‘¥¸¡”	•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€à((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠq…•‰¥ÐÍ•Ù•¹½˜••‰ÕÑÑÑ„‘•Ñ—Št€€€€€€€€€€€€€€€€€€€€€€€€€€Ù”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaM•Ñ¥˜…±°‰¥ÑÌ½˜Ñ¡”Q••…­”…É”€¡±•…È¸((((€€€€€€€€€5=Lè(€€€IMM%9(1ÍÍ•µ‰±•È€€UÍ•ÉÌ€€Õ¥‘”((()€€€€€€€€€€€€€€€€€€€€€€€€•É•µ•¹Ð)MI%AQ%=8è€€€€€€€€€€€€€€€MÕ‰ÑÉ…Ð½¹”™É½´€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€½Á•É…¹¸€€€€€€€€€€€€€€€€Q¡”€€€€€€€€€…ÉÉä€€€€€€€€€™±…œ¸Ñ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€¹½Ð…™™•Ñ•°Ñ¡ÕÌ€€€€€€€€€€€€€€€€€€€€€€€€€€€€…±±½Ý¥¹œ€€€€€€€€€€€€€€€€€€€Ñ¼€€€€‰”€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±½½Àµ½Õ¹Ñ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µÕ±Ñ¥Á±”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ•¥Í¥½¹½µÁÕÑ…Ñ¥½¹Ì¸)=9%Q%=8=Lè€€€€€€€€€€€!”€€€€9½Ð¸ƒŠa™™•Ñ•¸€€€€€€€€€€€€€€€€€€€€¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€8è€€€€M•Ð€€€€€¥˜€€€€‰¥Ð€€€€€€€Í•Ù•¸€€€€€€€€½˜É•ÍÕ±Ð€€€€€€€€€€€€€€¥Ì€€€€€€€€€M•Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€hè€€€€M•Ð€€€€€€Ç
Œ…±°€€€€€€€€€€€‰¥ÑÌ€€€€€€€€½˜É•ÍÕ±Ð€€€€€€€€€€€€€€…É”€€€€€±•…È¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€Y¤€€€€M•Ð¥˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½ÕÉÌ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„€€€€€€€€ÑÝ¿ŠeÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½µÁ±•µ•¹Ñ…É¥Ñ¡µ•Ñ¥½Ù•É™±½Ü(€€€€€€€€€€€€€€€€€€€€€€€€€€€è€€€€9½Ð™™•Ñ•¸)IMM%9(€€€€€€€€5=Lè€€€€€€€€€€€€ÕµÕ±…Ñ½È¥É•Ð°€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¹‘•á•°áÑ•¹‘•(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=H)=H(€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠqá±ÕÍ¥Ù”)MI%AQ%=8è€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹¥Ì•á±ÕÍ¥Ù•=I•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ•µ½Éä€€€€€€€€€€€€€€€€€€€€¥¹Ñ¼€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¸€€€•¥¡Ñ‰¥Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€É•¥ÍÑ•È¸()=9%Q%=9=Lè€€€€€€€€€€€€ è9½Ð™™•Ñ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€8è€€€€€M•Ð€€€€¥˜€€€€‰¥Ð€€€€€€€Í•Ù•¸€€€€€€€€½˜É•ÍÕ±Ð€€€€€€€€€€€€€€€¥Ì€€€€€€€€M•Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€hè€€€€€M•Ð€Å˜…±°€€€€€€€€€€€€€€€‰¥ÑÌ€€€€€€€€½˜€€€€€€€€É•ÍÕ±Ð€€€€€€€…É”€€€€€€€€±•…È(€€€€€€€€€€€€€€€€€€€€€€€€€€€Xè€€€€€±•…É•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9½Ð¹™™•Ñ•¸)IMM%95=Lè€€€€€€€€€€€%µµ•‘¥…Ñ”°¥É•Ð°€€€€€€€€€€€€€€€€€€€€€€€€€€€áÑ•¹‘•°%¹‘•á•“ŠP(()]€¡•áÐ¤€€€€€€€€€€€€€€€€€€¹…‰±”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¹Ñ•ÉÉÕÁÑÌ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹€€€€€€€€]…¥Ð()MI%AQ%=8è€€€€€€€€€€€€€€€€áÁ±¥¥Ñ±å±•…ÉÌ……äÍÕ‰Í•Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜€€€€€€€€€Ñ¡”5AT½¹‘¥Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€™±…Ì°€€€€€€€€€€€€€ÍÑ…­Ì€€€€€€Ñ¡”½¹Ñ•¹ÑÌ€€€€€€€€€€€€€€€€€€€€€€€€€½˜€€€€€Ñ¡”€€€€€€€5AUÉ•¥ÍÑ•ÉÌ€€€€€€€€€€€€½¸€€|(€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€ÍåÍÑ•´€€€€€€€€€€€ÍÑ…¬°…¹Ý…¥ÑÌ€€€€€€€€€€€€€€€€€€€€€€€€€™½È€€€€€€…¸€€€€€€€¥¹Ñ•ÉÉÕÁÐ¸€€€€€€€€€€€€€Q¡¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…Ñ¥½¸€€€€€€€€€€€€€€€€€¥Ì€€€…¸•áÑ•¹‘•€€€€€€€€€€€€€€€€€€Íå¹Ñ…à€€€€€€€€€€Ù•ÉÍ¥½¸€€€€€€€€€€€€€½˜€€€=QL(+Ša=9%Q%=8=Lè€€€€€€€€€€±°€€€€€€€€€€½¹‘¥Ñ¥½¸€€€€€€€€€€€€€™±…Ì€¡¥¹±Õ‘¥¹œƒŠq¥¹Ñ•ÉÉÕÁÐ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ…Í­Ì¤(€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÁ•¥™¥•€€€€€€€€€€€€€€€€€…Ì€€€€€½Á•É…¹‘Ì€€€€€€€€€€€€€€€€€…É”€€€€€€€€€€€±•…Ñ•¸€€€€€€€€€€€€€€€€%Ð€€€€¥Ì€€€¹½Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€¹Ñ¥É”€€€€€€€€€€€MÑ…Ñ”™±…œ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€Á½ÍÍ¥‰±”€€€€€€€€€€€€€ƒŠaÑ¼ÍÁ•¥™ä)IMM%9(€€€€€€€5=Lè(€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹‘¥Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1¥ÍÐ(0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÍ•µ‰±•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€UÍ•ÉÍÕ¥‘”(€€€€€€€€€€€€€€a(€€€€€€€€€€€€€€€€€€€€€€€€€€€€á¡…¹”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•¥ÍÑ•ÉÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€p(((((€€€€€€€€€|(((((€€€€€€€€€€€€€MI%AQ%=8èá¡…¹”ÑÝ¼É•¥ÍÑ•ÉÙ…±Õ•ÌëŠa9½Ñ—ŠaÑ¡…ÓŠa••‰¥¹Ñ•Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ…ä€€€€€€€€½¹±ä€€€€€€€€€‰”•á¡…¹•€€€€€€€€€€€€€€€€€€€€€€Ý¥Ñ €€€€€€€€€€€É•¥ÍÑ•ÉÌ€€€€€€€€€€€€½˜€€±¥­”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘••Ì°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M¥é”°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¥¡Ð€‰¥Ð€Ý¥Ñ €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M¥áÑ••¹‰¥Ð¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•…¸‰¥”°€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í¥áÑ••¹‰¥ÐÝ¥Ñ ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”((·ŠP(((((€€€€€·ŠP(€€€€€€€€€€€€€½9ÉQÉ½8(€€€€€€€€€€€€€€€€€€½Ù•Ìé9½Ñ™™•Ñ•¸(€€€€€€€€€€€€€Á•…MÍ%9(€€€€€€€€€€€€€€€€€€5=LéI•¥ÍÑ•È€€€€€€€€€€€€€€€€€€€€€€€€€€h(((((€€€€€€€€€€€€€•à(€€€€€€€€€€€€€€€€€€€€€¡•áÐ¤€€€€€€€€€€€€€I•Ñ”°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™É½´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€AÉ½•‘ÕÉ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠp((€€€€€€€€€€€€€MI%AQ%=8è(€€€€€€€€€€€€€€½•Ì(€€€€€€€€€€€€€€€€€€€€Ñ¡”¥¹ÍÑÉÕÑ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±½…‘ÍÑ¡”•åÍÑ••ÍÑ…¬ƒŠaÁ½ÑÑ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™É½´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á½¥¹Ñ•È°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€á¥Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡•¸€€€€€€€€€ÕÍ•È€€€€€€€€€€€€€€ÍÑ…¬€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹€€€€€€€€€€€€€€ÁÕ±±Ì€€€€€€€Ñ¡”€€|(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÑ•Ù¥½ÕÌ€€€€€€€€€€€€€€€€€€€€ÕÍ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑ…¬Á½¥¹Ñ•È°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€ÍÁ•¥™¥•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
••¥ÍÑ•ÉÌ°€€€€€€€€€€€€€€€€€…¹€€€€€€€€€€ƒŠaÑ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ½É…´½Õ¹Ñ•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡Ý¡¥ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•™™•ÑÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€é„(€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€•ÑÕÉ¹™É½µÍÕˆÉ½Õ‰¥¹”¤è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€|(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™½”Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍåÍÑ•´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑ…¬°€€€€€…”(€€€€€€€€€€€€€€€€€=Lè9½Ñ™™•Ñ•¸(€€€€€€€€€€€€€=9%Q%=8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€‰IMM%9(€€€€€€€€€€€€€5=Lè(€€€€€€€€€€€€€€€€€I•¥ÍÑ•È(€€€€€€€€€€€€€€€€€€€€€€1¥ÍÐ((€€€€€€€€€€€€€€€€€€€€€€€€€€€€|(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹•É•¹•¹Ð)L€€€€€€€€€€€€MI%AQ%=8è€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡•…ÉÉäƒŠa™±…Ñ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡ÕÌ€€€€€€€€€€€€€€€€€€€…±±½Ý¥¹œ%9€€€€€€€€€€€€€€€€€€€Ñ¼€€€€€€€€€€‰”€€€ÕÍ•€€€€€€€€€Ð(((((€€€€€€€€€€€€€€€½Á”è(€€€€€€€€ƒŠq=9%Q%=8(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½½Àµ½µÑ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸5Õ±Ñ¥Á±”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€AÉ•¥Í¥½¸½µÁÕÑ…Ñ¥½¹Ì¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M•Ð¥˜‰¥ÐÍ•Ù•¸½˜€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÐÉ•ÍÕ±Ð¥ÌƒŠaM•Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M•Ð¥˜€€€€€€€€…±°€€€€€€€‰¥ÑÌ€€€€€€€€€€€€€€€€½˜Ñ¡”e•ÍÕ±Ð…É”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€YÌ€€€M•Ð¥˜¸„€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±•…È¸€€€€€€€€ƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÑÝ¿ŠuÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½ÕÉÌ¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M•µÁ•¹•ÑÐ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É¥Ñ¡µ•Ñ¥Œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Ù•É™±½Ü(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=Ì(((((€€€€€€€€€IMM%9(€€€€€€€€€€€€€5=Lè(€€€€€€€€€€€€€€€€ÕµÕ±…Ñ½È°(€€€€€€€€€€€€€€€€€€€€€¥É•Ð°(€€€€€€€€€€€€€€€€€€€€€€€€€€%¹‘•á•°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€áÑ•¹‘•((€€€€€€€€=5€€€€€€€€€€€€€€€€•Ì‘ÕµÀ)…”MI%AQ%=8è(€€€€€€€€€€€€	•…ÌƒŠa•½¹ÑÉ½±¥Ì(€€€€€€€€€€€€€…‘‘É•ÍÌ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÑÉ…¹Í™•ÉÉ•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•™™•Ñ¥Ù”€€€€€€€€€€€À((€€€€€€€€€€€€€=9%Q%=8(€€€€€€€€€€€€€€€€€€€€€=Lè(€€€€€€€€€€€€€€€€€€€€€€€€€9½Ñ™™•Ñ•¸(€€€€€€€€€€€€€IMM%9(€€€€€€€€€€€€€€€€€€5½ÁÌè¥É•Ð°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¹‘•á•°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€áÑ•¹‘•((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô€Ô´ÄÌ€€€€€€€€€€€€€€€€€€´(0€€€ÍÍ•µ‰±•ÉUÍ•ÉÌ€€€€€€€Õ¥‘”(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(€€€)MH€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€)ÕµÀÑ¼(€€€€€€€€€€€€€€€€€€€€€€MÕ‰É½ÕÑ¥¹”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•½Ì€€€€€€€€€€™…‘•Ì(€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(€€€MI%AQ%=8èQ¡”ÕÁ‘…Ñ•(€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ½Ñ…¸½Õ¹Ñ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑ…¬€€€€€€€€€…¹€€€€€€€€€½¹ÑÉ½°€€€€€€€€€€€€€€€¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì€€€€€€€€ÁÕÍ¡•‘½¹Ñ¼Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÑÉ…¹Í™•ÉÉ•€€€€€€€€€Ñ¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍåÍÑ•´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•™™•Ñ¥Ù”€€€€€€€€€€€€€€€€…‘‘É•ÍÌ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€=9%Q%=8=Lè€€€€€€€€€€€€€€€€€€€€€9½Ð€€€€€™™•Ñ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|(((((€€€IMM%9€€5=Lè¥É•Ð°%¹‘•á•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€°áÑ•¹‘•((€€€1(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1½…‘I•¥ÍÑ•É™É½µ5•µ½Éä(€€€MI%AQ%=8è€€€€€€€€€€€€€€€€€€€€€1½…ƒŠaÑ¡”€€€€€€€€€€€€€€€€½¹Ñ•¹ÑÌ€€€€€€€€€€½˜€€€€€€Ñ¡”…‘‘É•ÍÍ•€€€€€€€€€€€€€€€€€€€€€µ•µ½Éä¸€€€€€€€¥¹Ñ¼€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠqÉ•¥ÍÑ•È((€€€=9%Q%=8€€€=Lè€€€€€€€€€€€€€€!Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9Ì¸M•Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™™•Ñ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa9½Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ˜€€€€€€€€½˜1½…‘•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘…Ñ„¥Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M•Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í•Ù•¸€€€€€€‰¥Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€hè€€€M•Ð€€€€€€€¥˜€€€€€€…±°€€€‰¥ÑÌ€€€€½˜€€€€€€€€€€±½…‘•€€€€€€€‘…Ñ„€€€€€€€€€€…É”€€€€±•…È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Xè€€€±•…É•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è€€€9½Ð€€€€€€€™™•Ñ•¸)|(((((€€€€€€€€€€€€5=Lé%µµ•‘¥…Ñ”±¥É•Ð°%¹‘•á•°(€€€IMM%9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€áÑ•¹‘•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M<(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|(((((€€€1(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1½…‘™™•Ñ¥Ù”‘‘É•ÍÌ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€°(((((€€€MI%AQ%=8€€€€€€€€€€€€€€½É´€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€•™™•Ñ¥Ù•…‘‘É•ÍÍÑ¼‘…Ñ”ÕÍ¥¹œÑ¡”µ•µ½Éä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…‘‘É•ÍÍ¥¹œµ½‘•Ì€€1½…Ñ¡…Ð¸…‘‘É•ÍÌ°¹½Ð€€€€‘…Ñ„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥ÑÍ•±˜¥¹Ñ¼Ñ¡”Á½¥¹Ñ•ÈÉ•¥ÍÑ•Èè(€€€=9%Q%=9=Lè€€€€€€€€€€€€€€€€€€ƒŠqU•…á…¹ƒŠa1d™•ÐÑ¡”i•É¼™±…œÑ¼…±±½ÜÕÍ”…Ì´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹™½È€ØàÀÀ¹%9`½`(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•½Õ¹Ñ•ÉÌ€€€€€€€€€€€€€€€€€€€€€€€½µÁ…Ñ¥‰¥±¥Ñä¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠq1T€€€€€€€€ô(€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹€€€€€1L‘¼¸¹½Ð…™™•ÐÑ¡”€€i•É¼™±…œ€€€€Ñ¼…±±½Ü€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™½È€€€ð((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±•…¹¥¹œ€€€ÕÀ€€Ñ¼€Ñ¡”ÍÑ…¬€Ý¡¥±”€É•ÑÕÉ¹¥¹œÑ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€i•É¼ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™±…œ€€€€€€€…Ì€€€€€€€„€€€Á…É…µ•Ñ•È€€€€€€€€€€€€€Ñ¼€€€€„´€€…±±¥¹œ€€€€€€€€€€€€€€€É½ÕÑ¥¹”°€€€€€€€…¹¸€€€¸™½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ØàÀÀ€€€€€€€€€€€€%9L½L¸°½Ñ¡•È½¹‘¥Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½µÁ…Ñ¥‰¥±¥Ñä¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™±…Ìé…É”Õ¹…™™•Ñ•¸(€€€€IMM%9€ƒŠP%¹‘•á•(€€€€€€€€€€€€5=Lè(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠpõM”ÄÐ€€€€€€€€´(0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”€€€€ÍÍ•µ‰±•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€UÍ•ÉÌÕ¥‘”()•”€€MH(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰1½¥…°€€€€€ƒŠaM¡¥™Ð€€€€€€€€€1•™Ð(((€€€€€€€€MI%AQ%=8è(€€€€€€€€€€€€€€€€€€€€€€€ƒŠSŠPõÌ(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M¡¥™ÑÌ€€€€€€…±°€€€€€€€€€‰¥ÑÌ€€€€€€€€½˜€€€€€€€€€€€€Ñ¡”·Ša½Á•É…¹¹Á±…•Ñ¼¸Ñ¡”½¹”(€€€€€€€€€=”€€€É”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1•™Ð¸€€€€€€	¥Ð€€€é•É¼€€€€€€€€¥Ì€€€±½…‘•€€€€€€€€€€€Ý¥Ñ „˜é•É½Ì€€€€€€€€€€€€€€€€€€€€	¥Ð€€€Í•Ù•¸€€€€€€€€€€€€€€€€€€€€¥Ì€€€ƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¹Ñ¼€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÉÉå™±…Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
ì((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”€€•”((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…”(((((€€€€€€€€=9%Q%=8(€€€€€€€€€€€€€=Lè(€€€€€€€€€€€€€€€€€€|€ƒŠqU¹‘•™¥¹•¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€QU(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹Ì(€€€€•”€€€€€€€€€€€€€€èM•Ð¥˜‰¥ÐÍ•Ù•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•ÍÕ±Ñ¥”M•Ð¸•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaM•Ð€€€…±°€€€€€€€€€€€€€€‰¥ÑÌ€€€€½˜€€€€€€€€€€€€€€€€€€É•ÍÕ±Ñ…É”±•…È¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠ`ÍM•Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ì(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥˜€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÉÉä€€€€€€€€€€€€€€€€€€€€€€½ÕÐ€€€€€€½˜¸Ñ¡”¡¥ ½É‘•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥Ð€€€€€€€€€€€€€€€€€ƒŠaÑ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q…¤±±…Ù•„Ñ¡…¸€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€…ÉÉä€€€€€¥¹Ñ¼Ñ¡”¡¥ è½É‘•È‰¥Ñ”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¥Ñ ‰¥Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„àé1½…‘•€€€€€€€€€€€€€€€€€€€€€€€€€€€Í•Ù•¸€€€€€€€€€€½˜¡”¹½É¥¥¹…°€€€€€€€€€€€€€€€€€€€€€€€€€=Á•É„(€€€€IMM%9Õµ¥±…Ñ½È°(€€€€€€€€€5=Lè€€€€€€€€¥É•Ð°%¹‘•á•°€€½¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€áÑ•¹‘•(€€€€UH€€€€€€€€€€€€€€€€€€€€€€€€€€±½¥…°€I¥¡Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaM¡¥™Ð(€€€€€€€€MI%AQ%=8è™½ÉµÌé•É½±½¥…°€€€€€€€€€€„€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É¥ €€€€€€€€¥¥˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥™Ð½¸Ñ¡”½Á•É…¹¸€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹Œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M¡¥™ÑÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹Ñ¼€€€€€„€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€¡¥œ€€€€€©•È€€€€€€€€‰¥Ð€€€€€€€€€€€…¹‰¥Ð€€€€€€€€€€€€€€€€€€€€é•É¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹Ñ¼Ñ¡••ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™±…Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í•”(€€€€€´(((((€€€€€€€€€€€€€€€€5=Lè(€€€€€€€€€IMM%9€´€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥É•Ð°€€€€€€€€€€€€€€€€ƒŠaáÑ•¹‘•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¹‘•á•°(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ø(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ô´ÄÔô¤(0€€€€ÍÍ•µ‰±•È€€UÍ•ÉÌ€€Õ¥‘”((((€€€€5I,¡•áÐ¤€€€€€€€€€€€€€€€€€€5…É¬€€€€€€€€MåÍÑ•´€€€€€€€€€€€€MÑ…¬((€€€€MI%AQ%=8è€€€€€€€€€€€€€€€Q¡”€€€€€5…É¬€€€€€€€¥¹ÍÑÉÕÑ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÕÍ¡•Ì€€€€€€€€€€Ñ¡”€€€€€€€€€€€ÍÁ•¥™¥•€€€€€€€€€É•¥ÍÑ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±¥ÍÐ€€€€€€€€€…¹€€€€€€Ñ¡”€€€€ÕÍ•È€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑ…¬€€€€€€€€€€€€€€€Á½¥¹Ñ•È€€€€€€€€€½¹Ñ¼Ñ¡”€€€€€€€€ÍåÍÑ•´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MÑ…¬°…¹€€€€€€€€€€€€€€€Ñ¡•¸±½…‘Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€ÕÍ•È€€€€€€€€€€€€€€ÍÑ…¬€€€€€€Á½¥¹Ñ•È€€€€€€€€€€™É½´€€€€€€€€€€ƒ
¤(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€ÍåÍÑ•´€€€€€€€€€€€ÍÑ…¬Á½¥¹Ñ•È¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•L(((((€€€€=9%Q%=9=Lè€€€€€€€€€€€€9½Ð€€€€€™™•Ñ•¸(€€€IMM%9€€€€5=LèI•¥ÍÑ•É1¥ÍÐ(((€€€5U0(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5Õ±Ñ¥Á±ä•ÕµÕ±…Ñ½ÉÌ(€€€MI%AQ%=8è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5Õ±Ñ¥Á±äÑ¡”Õ¹Í¥¹•‰¥¹…Éä¹Õµ‰•ÉÌ¥¸Ñ¡”…¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÕµÕ±…Ñ½ÉÌ€€€€€€€€€€€€€€€€€€€€€€€€…¹€€€€€€€€€€€Á±…”€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€€€€É•ÍÕ±Ð€€€€€€€¥¸€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÕµÕ±…Ñ½È¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¸(€€€=9%Q%=8=Lè€€€€€€€€€€€€ è9½Ð€€€€€€€€€™™•Ñ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=8è9½Ð€€€€€€€€™™•Ñ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€hèM•Ð€¥˜€…±°€€‰¥ÑÌ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Y¤è9½Ð™™•Ñ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜€€€€€€€€€€€€€€€€€€É•ÍÕ±Ð€€€€€€€€€€€€€€…É”€€€€±•…È¸€€€€€€ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è€€€€M•Ð€€€¥˜€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÕµÕ±…Ñ½È)|(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥Ð€€€€€€€€€€€Í•Ù•¸€€€€€€€€€€€½˜Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥ÌM•Ð¸€€€€€€€€€€€€€€€|(€€€IMM%95½Lè€€€€€€€€€€€€%¹¡•É•¹Ð|(((€€€I€€€€€€€€€€€€€€€€€€€€€9•…Ñ”(€€€MI%AQ%=8è€€€€€€€€€€€€€€€€I•Á±…•Ì€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€€€€€€€½Á•É…¹€€€€€€€€€€€€€€€€Ý¥Ñ €€€€€€€€€€€€€€¥ÑÌ€€€€€€ÑÝ¿ŠeÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€9½Ñ”€€€€€€€€Ñ¡…Ð€€€€€€€€€àÀ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½µÁ±•µ•¹Ð¬(€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡!•à¥¥ÌÉ•Á±…•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰ä¥Ñ••¥˜€€€€€…¹½¹±ä€€€€€€€€€€€€€€€€¥¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Í”€€€€€€€€€€€€€¥Ì€€€€€€€€½Ù•É™±½Ü€€€€€€€€€€€€€€€€€€€Ï¥Ð¸€€€€€€€€Q¡”Ù…±Õ”€€€€€€ÀÀ€¡!•à¤€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP((€€€€€€€€€€€€€€€€€€€€€€€€€€€€…±Í¼€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•Á±…•€€€€€€€€€€€€€€€€€€‰ä¥ÑÍ•±˜°€€€€€€€€€€€€€€€€€€€€€€€…¹€€€€€€½¹±ä¥¸€€€€€Ñ¡¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÉÑä€€€€€€€€€€€±•…É•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Í”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ìƒ
¤(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€U¼€€€€€€€€€€€€€€€€€€€€€€€€•L(€€€=9%Q%=8=Lè€€€€€€€€ è€€€€€€€€U¹‘•™¥¹•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Íä¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€8è€€€€€€€€M•Ð€€€€€€Å˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½…­Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥Ð€€€€€€€€€€€Í•Ù•¸€€€€€€€€€€€½˜€€€€€€€€É•ÍÕ±Ð€€€€€€€€€€€€€€¥Ì€€€€€€M•ÑÌ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€hè€€€€€€€€M•Ð€Ç
Œ€€€€€€€…±°€€€€€€€€€€€‰¥ÑÌ€€€€€€€½˜€€€€€€€€€€€€É•ÍÕ±Ð€€€€€€€€€€…É”€€€€€€€€€±•…È¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€Xè€€€€€€€€M•Ð¥˜€€€€€€€Ñ¡”€€€€€€€€€€€½É¥¥¹…°€€€€€€€€€€€€€€€€€€€½Á•É…¹€€€€€€€€€€€€€€€Ý…Ì€€€€€€àÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡!•à¤¸€€€€€€€€€€€€€€€½”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€è€€€€€€€€±•…É•€€€€€€€€€¥˜€€€€€€€€€Ñ¡”½É¥¥¹…°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý…Ì€ÀÀ€€€€€€€€€€€€€€€€€€€€€¡!•à¤¸(€€€IMM%95½Lè(€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÕµÕ±…Ñ½È°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥É•Ð°%¹‘•á•°áÑ•¹‘•(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÔÄØ€€€€€€€€€ô(0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€UÍ•ÉÍÕ¥‘”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÍ•Õ‰±•È((€€€€€€€=€€€€€€€€€€€€€€€€€€9¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=Á•É…Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡¥Ì¥Ì„€€€€€€€€€€€€€€€€Í¥¹±•‰åÑ”¥¹ÍÑÉÕÑ¥½¹Ñ¡…Ð…ÕÍ•ÌèÑ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ½É…´½Õ¹Ñ•È€€€€€€€€€€€€€€€€€€€€€€¥¹É•µ•¹Ñ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼€€€€€€€€€€€€‰•9¼¸¸¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Ñ¡•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹Ñ•¹ÑÌ…É”¸…™™•Ñ•¸(€€€€€€€€€€€€€€€€É•¥ÍÑ•ÉÌ€€€€€€€€€€€€€€€€€€€€€½È€€€€µ•µ½Éä(((€€€€€€€€€€=Lé9½Ñ™™•Ñ•¸(€€€€€=9%Q%=8(€€€|(€€€€€IMM%9ƒŠqQ•¡•É•¹Ð(€€€€€€€€€€€5=Lè€€€€€ƒŠP(((()ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠq%¹±ÕÍ¥Ù”€€€€€€€€=H(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€˜(((((€€€€€€€€€€€€€€€€€€€A•É™½ÉµÌ€€€€€€€€€€€€€€€€€€€€€€€=HMÁ•Ñ…Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹±ÕÍ¥Ù•Ñ¡”(€€€€€€€MI%AQ%=8éÑ¡”€€€€€…¸•¥¡Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ•µ½ÉäƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa‰•ÑÝ••¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥Ð(€€€€€€€€€€€€€€€€€€€€€€€½¹Ñ•¹ÑÌ½˜€€É•¥ÍÑ•È…¹¸€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹¸(€€€€€€€€€€€€€€€€€€€€…¹Ñ¡”É•ÍÕ±Ð¥ÌÍÑ½É•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¸Ñ¡”É•¥ÍÑ•È¸…L(€€€€€€€€€€€€€€€€€€€€€!”!½•™™•Ñ•¸(€€€€€€€€=9%Q%=8(€€€€€€€€€€€€€½Lè(€€€|(((((€€€€€€€€€€€€€€€€€€ƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa9¥M•Ð€Å›
Œ¡¥ ½É‘•È‰¥Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜É•ÍÕ±Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M•Ð	”€€€€€€€€€€€€€€€€€€½˜É•ÍÕ±Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€hèM•Ð¥˜…±°‰¥ÑÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É”ƒŠa±•…È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€Y”€€±•…É•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¼€€9½Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™™•Ñ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¹‘•á•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥É•Ð°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€%µµ•‘¥…Ñ”°€€€áÑ•¹‘•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=I¥¹Ñ¼€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¥Ì½‘•É•¥ÍÑ•È°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¹±ÕÍ¥Ù”€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý½Õ(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¸€€€•¥¡Ð€€€€€€€‰¥Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=I½Á•É…Ñ¥½¹‰•Ñ••…¸è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹±ÕÍ¥Ù”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹€€€€€€Ñ¡”¹É•ÍÕ±Ð€€€€€€€€€€€€€€€€€€€€¥Ì€€€€€€€€€€Á±…•¸¥¸€€€€€€€€€€€Ñ¡”€€€½¹‘¥Ñ¥½¸½‘”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaÉ•¥ÍÑ•È¸€€€€€€Q¡¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ…Í­Ì¸€€€€€€¥¹ÍÑÉÕÑ¥½¹µ…ä‰”ÕÍ•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í•Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€UI(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€MI(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ì(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”€€½¹‘¥Ñ¥½¸½‘•Ì€€€€€€€€€€€€€€€€€€€€€€€€€…É”¸€€€€€€€€€€•ÐÑ¼€€€Ñ¡”éÁ•Í•±Ð¸½˜½‘”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€ô€€•¥¡Ð€€€€€€€‰¥Ð€€€€€€€€€±½¥…°€€€€€€€€€€€€€€€€€€ÕÉÉ•¹Ð½¹‘¥Ñ¥½¸½‘”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=H½˜Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥ÑÌÝ¥Ñ ¡”¥µµ•‘¥…Ñ”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹¹ä½¹‘¥Ñ¥½¸€¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥Ð¥¹±Õ‘¥¹œÑ¡”€€€€€€€€€€€€€€€€€€€€€€€€¥¹Ñ•ÉÉÕÁÑµ…Í­Í…¸‰”¸Í•Ð‰ä•”€€€€€€€€€€€€€€€€Ð(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…Ñ¥½¸¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½•Ì(((((€€€€€€€€IMM%9(€€€€€€€€€€€5=Lè(€€€€€€€€€€€€€€€µ•‘¥…Ñ”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô€Ô´ÄÜ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô(0€€€€€€€€€¸(((((€€€€€€€€€€€€ÍÍ•µ‰±•È€€UÍ•ÉÌ€€Õ¥‘”(((€€€€€€€€€€€€AM!L¸€€€€€€€€€€€€€€€€€€€€€€AÕÍ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•¥ÍÑ•ÉÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¸Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MåÍÑ•´€€€€MÑ…¬(€€€€€€€€€€€€MI%AQ%=8è¹ä(€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑ…¬(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÕ‰Í•Ð½˜€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€5ATÉ•¥ÍÑ•ÉÌ€€€€€€€€€€€•á•ÁÐ€€€€€€€€€Ñ¡”ÍåÍÑ•´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á½¥¹Ñ•È€€€€€€€€¥ÑÍ•±˜€€€€€€€€€€€€€€€€…É”€€€€€€€€€ÁÕÍ¡•¸€€½¹Ñ¼€€€€€€€€€€Ñ¡”€€€ÍåÍÑ•´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑ…¬¸((€€€€€€€€€€€€=9%Q%=8(€€€€€€€€€€€€€€€€€€€€=Lè€€€€€€€€€€€9½Ð™™•Ñ•¸(€€€€€€€€€€€€IMM%9(€€€€€€€€€€€€€€€€€5=Lè(€€€€€€€€€€€€€€€€€€€€€€I•¥ÍÑ•È1¥ÍÐ(((€€€€€€€€€€€€AM!T€€€€€€€€€€€€€€€€€€€€€AÕÍ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•¥ÍÑ•ÉÌèÑ¡”UÍ•ÈMÑ…¬½¸(((€€€€€€€€€€€€MI%AQ%=8è€€€€€€€€€€€€¹ä€€€€€€€ÍÕ‰Í•Ð½˜€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€5ATÉ•¥ÍÑ•ÉÌ•á•ÁÐÑ¡”ÕÍ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑ…¬€€€€€€€€€€€€€€€€€€€€€€€€€¥ÑÍ•±˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á½¥¹Ñ•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÕÍ¡•½¹Ñ¼Ñ¡”ÕÍ•ÈÍÑ…¬¸(€€€€€€€€€€€€€€€€€€€€=Lè(€€€€€€€€€€€€=9%Q%=8€€€€€€€€€€€€€€€€9½Ð€€€€€™™•Ñ•¸€€€€€€€€€€€€ƒŠP(((((€€€€€€€€€€€€IMM%(€€€€€€€€€€€€€€€€€€5=éI•¥ÍÑ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1¥ÍÐ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|(((((€€€€€€€€€€€€AU1L€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™É½´MåÍÑ•µMÑ…¬(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€AÕ±°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•¥ÍÑ•ÉÌ€€€€€€€€€€€€€€ô€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô(((((€€€€€€€€€€€€MI%AQ%=8è€€€€€€€€€€€€¹äÍÕ‰Í•Ñ½˜€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€5ATÉ•¥ÍÑ•ÉÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑ…¬€€€€€€Á½¥¹Ñ•È€€€€€€€€€€€€€€€€€€€€¥ÑÍ•±˜€€€…É”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•á•ÁÐ€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍåÍÑ•´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÕ±±•€€™É½´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”ÍåÍÑ•´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MÑ…¬¸((€€€€|(((((€€€€€€€€€€€€=9%Q%=8(€€€€€€€€€€€€€€€€€½Á•ÌèU¹…™™•Ñ•‘Õ¹±•ÍÌÑ¡”½¹‘¥Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½‘•É•¥ÍÑ•É¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€€€ÁÕ±±•€€€€€€€€€€€€€€€€€€€™É½´€€€€€€€€€Ñ¡”€€€€€€€€€€ÍåÍÑ•´€€€€€€€€ÍÑ…¬¸€€€€€ƒŠP((((€€€€€€€€€€€€IMM%9(€€€€€€€€€€€€€€€€€€5=Lè((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€AÕ±°(€€€€€€€€€€€€A=1T€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™É½µÑ¡”UÍ•ÈƒŠaMÑ…¬(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•¥ÍÑ•ÉÌ(€€€€€€€€€€€€MI%AQ%=8è€€€€€€€€€€€€€€€€€€€€€€€€••Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5AT(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑ…¬(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•¥ÍÑ•ÉÌ•á•ÁÐÑ¡”ÕÍ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á½¥¹Ñ•È¥ÑÍ•±˜€€€€€€€€€€€€€€€€€€€€€€€…É”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÕ±±•‘™É½´Ñ¡”ÕÍ•ÈÍÑ…¬¸(€€€€€€€€€€€€=9%Q%=8(€€€€€€€€€€€€€€€€€€€=LèƒŠaU¹…™™•Ñ•Õ¹±•ÍÌÑ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÕ±±•™É½´Ñ¡”ÕÍ•ÈÍÑ…¬°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´€€€€€€€€€€€€€€€€€€€€€€€€€½‘•É•¥ÍÑ•È¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹‘¥Ñ¥½¸)½”(€€€€|€€€€€€IMM%9(€€€€€€€€€€€€€€€€€5=Lè(€€€€€€€€€€€€€€€€€€€€€€€€I•¥ÍÑ•É1¥ÍÐ(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÕÔÄà€€€€€€€€€€€€ô(0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€UÍ•ÉÌÕ¥‘”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÍ•µ‰±•È(Ü(((((€€€•IP¸€¡•áÐ¤€€€€€€€€€€€ƒŠqI•ÑÕÉ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaI•¥ÍÑ•ÉÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÄÐáÐ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÕ±±Ì¹Ñ¡”…Á•Ð(€€€€€€€€€€€€€€Q¡”É•ÑÕÉ¸¥¹…ÑÉÕ‘Ñ¥½¸(€€€€€ƒŠq…Í•…é•Q¥½¸è€€€€€€€€€€€€€€€€€€…¹€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™¥•‘Á•Í±…•ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•™™•ÑÌ„É•Ñ…ÉÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ½É…´€€€€€€€€€€€€½Õ¹Ñ•È€€€¡Ý¡¥ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™É½´(€€€€€€€€€€€€€˜(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€™É½µÍÕ‰É½ÕÑ¥¹”¤Ñ¡”ÍåÍÑ•´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•Ñ…­ûŠP(€€€€€€€€€=Lè(€€€€€=9%Q%=8(€€€€€€€€€€€€€9½Ð(€€€€€€€€€€€€€€€€€™™•Ñ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€¸(((€€€€€€€€€€€€5•ÁÑ½Ñ•È(€€€€€¹½Ì5=Lè€€€1¥ÍÐ¸(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaI½Ñ…Ñ•1•™Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Ñ”…±°€€€‰¥ÑÌ€€€€€€€€€½˜€€€€€€€€€€€€€€€€€€€€€€Á±…”¹±•™Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaÑ¡”Á…•“Ša½¹”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É½Õ Ñ¡”…ÉÉä€€€€€€™±…œ¸€€€€€€€€€€ƒŠQQ¡¥ÌÄà„ƒŠaM¥¹•Í‰¥È°(€€€€€€€€€€€€€€€€€€€½ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¡¥Ñ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…Ñ¥½¸¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½‘•€€€€€€€€€€½˜½É¥¥¹…°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¥Ñ ‰¥ÐÍ•Ù•¸Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ø(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥É•Ð°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Õ¹…±…Ñ½È°%¹‘•á•°€ÇŠa	•Ñ•¹‘•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´€€€Ô´Ää€€€€€€€€´(0€€€ÍÍ•µ‰±•È(€€€€€€€€€€UÍ•ÉÌÕ¥‘”(€€€I=H€€ð€€€€€€€€€€€€I½Ñ…Ñ”€€€€€€€I¥¡Ð(€€€|MI%AQ%=8è(€€€€€€€€€€€€€€€€€€ð€€€I½Ñ…Ñ•Ì€€€€€€€€€€€…±°¸€€€‰¥Ñ”½˜Ñ¡”½Á•É…¹É¥¡Ðð½¹”¸Á±…”€¸(€€€€€€€€€€€€€€€€€€€€€€€Ñ¡É½Õ €€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€½Á•É…Ñ¥½¸¸€€€€€€€€€€€€€€€€€€…ÉÉä™±…œ¸Q¡¥•Ì¥Ì¹¥¹”µ‰¥ÓŠaM¡¥Ñ”è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(((((€€€=9%Q%=9=Lè€€€€!”€€€I½Ñ™™•Ñ•¸€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€8è(€€€€€€€€€€€€€€€€€€€€€€hè(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M•Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M•Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…±°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í•Ù•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥ÑÌ€€€€€€€€€€€½˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜€€€Ñ•…Õ¥•¥ÌM•Ð¸(€€€€€€€€€€€€€€€€€€€€€€€Xè€€€9½ÐƒŠa™™•Ñ•¸€€€€€€€€€€€€€€€€€€€€€€€€€€è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•ÍÕ±Ð…É”¸±•…È¸€€€€€€€€€€€€€€€(((((€€€€€€€€€€€€€€€€€€€€€€È((€€€IMM%9(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1½…‘•‘Ý¥Ñ£Ša‰¥ÐÍ•É¼€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•Ñ•¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½É¥¥¹…°€€€€€€€€€€€ƒ
¬((((€€€€€€€€€€€€5=Lè(€€€€€€€€€€€€€€€€€€€€€€€€€€€¥É•Ð±%¹‘•á•áÑ•¹‘•(€€€€€€€€€€€€€€€€€€€€€€ÕµÕ±…Ñ½È°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€°(((((€€€IQ$(€€€€€€€€€€€€€€€€€€€€€€€€€™É½´(€€€MI%AQ%=8è(€€€€€€€€€€€€€€€€€€€€€€I•ÑÕÉ¸€%¹Ñ•ÉÉÕÁÐ(€€€€€€€€€€€€€€€€€€€€€€Q¡”¸Í…Ù•¥…Í¡¥…”ÍÑ…Ñ”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì€€€€€Ó¥½Ù•É•™É½ÕÑ¡”ÍÙÍÑ•¸¹„(€€€€€€€€€€€€€€€€€€€€€€ÍÑ…¬€€€€€€€€…¹€€€€€€€€€€€€€€€€€€€€€€€¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹ÑÉ½°€€€€€€€€€€€€€€€€€€€€€€€€€€É•ÑÕÉ¹•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼¸Ñ¡”ƒ
¤(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€!…Á•ÉÙ•Á•¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„((((€€€€€€€€€€€€€€€€€€€€€€ƒŠqÁÉ½É…´¸(€€€=9%Q%=8(€€€€€€€€€€=Lè)|(€€€€€€€€€€€€€€€€€€€€€€€€€€€™É½µMÑ…¬(€€€€€€€€€€€€€€€€€€€€€€I•½Ù•É•(€€€IMM%9(€€€€€€€€€€5=Lè%¹¡•É•¹Ð(((€€€IQL(€€€€€€€€€€€€€€€€€€€€€€I•ÑÕÉ¸¹™É½µMÕ‰É½ÕÑ¥¹”(€€€ƒŠaMI%AQ%=8è€€€€€AÉ½É…´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹ÑÑ½°€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™É½´Ñ¡”ÍÕ‰É½ÕÑ¥¹•Ñ”•¼(€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•ÑÕÉ¹•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…±±¥¹œ€€€€€€€€€€€€ÁÉ½É…´¸€€€€€€€€€€€€€€€€€€€Q¡”É•ÑÕÉ¸(€€€€€€€€€€€€€€€€€€€€€€™É½´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”¸ÍåÍÑ•´ÍÑ…¬¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…‘‘É•ÍÍ¥”Á¥Ñ¥•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(((((€€€=9%Q%=8(€€€€€€€€€€€½Ìè€€€€9½Ð€€€€™™•Ñ•¸(€€€ƒŠqIMM%9(€€€€€€€€€€5=Lè(€€€€€€€€€€€€€€€%¹¡•É•¹Ð(0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ìÍÍ•µ‰±•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€UÍ•ÉÌÕ¥‘”L„((€€€€€€¸(€€€€€€€€€M	(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaMÕ‰…ÑÉ…ÐÑ½ÉÉ½Ü€€€Ý¥Ñ (((€€€€€€€€€MI%AQ%=8è(€€€€€€€€€€€€€€€€€€€½ (€€€€€€€€€€€€€€€€€€€€€€MÕ‰ÑÉ…ÑÌÑ¡”½¹Ñ•¹ÑÌ½˜µ•µ½Éä…É¸Ñ¡”‰½ÉÉ½Ü™±…ŸŠt(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á´€€€€€€€€Ñ¡”€€€€½¹Ñ•¹ÑÌ€€€€€€€€€€€€€€€€€€½˜€€€„(((€€€€€€€€€€€€€€€€€€€€€€€•ÍÕ±Ð€€€€€€€€€€ð€€€€ƒŠa•¥ÍÑ•È±…¹A±…•Ì¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸€€€€Ñ¡…Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¥ÍÑ•È(€€€€€€€€€€€€€€€=Lè!4è(€€€€€€€€€=9%Q%=8€€€€€€ƒŠaU¹‘•™¥¹•¸(€€€€€€€€€€€€€€€€€€€€€9ÈM•Ð¥˜‰¥ÐÍ•Ù•¸½˜Ñ¡”É•ÍÍ±Ð¥ÌƒŠaM•Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	ˆ€€€€€€€€€€M•Ð˜€€€€€…±°€€€€€€€€‰¥ÑÌ€€€€€€€€€½˜Ñ¡”€€€€€€É•ÍÕ±Ðè…É”±•…È¸€€€€€€€€€€€€€€€€€€€´((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Õ4ƒ
¹•Ð¥˜€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€À€€€€€€€€€€€€½Ù•É™±½Ü¸€€€€€€€€€€€€€½Á•É…Ñ¥½¸€€€€€€€€€€½µÁ±•¹•¹Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÕÍ•Ì„ÑÝ¼ˆ€à(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…”€€	”€€€€€€M•Ð¥˜€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…Ñ¥½¹Ñ¹½Ñ…ÕÍ”…ÉÉä™É½´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€€€è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	…—ŠaÁ•Ù•¸€€€€1T¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥É•Ðì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ…Ñ”°€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¹‘•á•°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q•Ñ•¹‘•(€€€€€€€€€Í”€¡•áÐ¤¼€ÌÍ•Ð(€€€€€€€€€€€€€€€€€€€€€€½¹‘¥Ñ¥½¸€½‘•Ì(€€€€€€€€€€€€€€€€€€€ðƒŠPI•ÁÑÑÑ•Ñä(€€€€€€€€€MI%AQ%=8è€€€€€€€€€€€€€€ÍÕ‰Í•Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í•Ñ”…¹ä½˜Ñ¡•5A=•••¥ÑÑ½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(((((€€€€€€€€€MI€€±¼(€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡¤è(€€€€€€€€€€€€€€€€€€½•µ•”(€€€€€´=9QQe=\(€€€€€€€€€€€½ÁÌè€€€€€€€€€€€™±…ÍÌ(€€€€€€€€€€€€€€€€€€€€€½¹‘¥Ñ¥½¸ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„ÁMÁ•Ù¥•¹‘Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É”ƒŠa•Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€‘Ì€€€€€€€€€€Ñ¼€€€€€€€€€€€€€€€€€€€€€€¹½Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MÑ…Ñ”€€€€€€€€€€€€€Á½ÕÍ¥‰¥”ÍÁ…ÑÑä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ðÑ¡”	…Ñ¥É”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™±…œ¸((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…”ƒŠaí¹•ÑÉÕÑ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ…‰¥Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÑÉ…¹ÌèµÌ„€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaÍ¥¹•‰¥¹…Éä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ù…±Õ”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸€€€€€€Ñ¡”…Ý¡Õ±…Ñ½ÈÑÕÑ¼€€€€€€€€€€€€€€€€€„Í¥¹•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥áÑ••¸µ‰¥ÑÙ…±Õ”¥¸Ñ¡”„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™•´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”ƒŠq¡¥ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘•Ñ•ÍÐ€€€€€€€€€€€€€€€€€€€€€€€€€€€€½ÐÑ¡”»Ša™•…¥Ð°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥ÌM•Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥ÑÌ€€€€€€€€€€€€½˜Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…±°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€••ÍÑ•…Ñ”±•…È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
¬(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€˜(((()…”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´LÈÄ(0€€€€œ(((((€€€€€€€ÍÍ•µ‰±•È€€UÍ•ÉÌ€€Õ¥‘”((((€€€€€€€MP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MÑ½É”¸€€€%¹Ñ½5•µ½Éä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•¥ÍÑ•È(€€€€€€€MI%AQ%=8è]É¥Ñ•ÍÑ¡”½¹Ñ•¹ÑÌ½˜…¸5AT(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•¥ÍÑ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹Ñ¼µ•¹½Éä)ð(((((€€€€€€€€€€€€€€€€€€€€€€€ð((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„€€€€€€€€€€€€€€€€„((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±½…Ñ¥½¸¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(((((€€€€€€€€€€€€=Lè(€€€€´=9%Q%=8€€€€€€€€€€€€ƒŠP8é!•9½Ñ™™•Ñ•¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M¼(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M•Ð¥˜€€€€€€€€€€€€€‰¥Ðè€€€€€Í•Ù•¸¸½˜ÍÑ½É•€€€€€€€€€€€€€€€€€€€€€€…Ñ„éÝ…ÌM•Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±•…È¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaM•Ñ…˜…±°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
ˆ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¨(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥ÑÌ½˜ÍÑ½É•‘…Ñ„…É”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¼Ð™™•Ñ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€IMM%9(€€€€€€€€€€€€€€€ƒŠa5=Lè(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥É•Ð±%¹‘•á•°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa•Ñ•¹‘•(€€€€€€€MU(€€€€€€€€€€€€€€€€€€€€€MÕ‰ÑÉ…Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€5•µ½Éä€€€I•¥ÍÑ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™É½´€€€€€•”€ô(€€€€€€€MI%AQ%=8è(€€€€€€€€€€€€€€€€€è€€€Á•‰Ñ•••Ñ„Ù…±Õ•¥¸µ•µ½ÉçŠa™É½´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”½¹Ñ•¹ÑÌ€€€€€Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€ƒŠa•¥ÍÑ•È¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€=9%Q%=8(€€€€€€€€€€€€€€€=Lè€€€€€€€€€€€€€€€€€€€€U¡‘•™¥¹•„¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€!¤€€€€€€€€½”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½É‘•É‰¥Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠq!8éM•Ð¥˜Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€hè¸M•Ð€€€€€€€¥˜€€€€€€€…±°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡¥ €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜Ñ¡”É•ÍÕ±Ð¥ÌƒŠaÍ•Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥ÑÌ€€€€€€€€€€½˜€€€€€€€€€Ñ¡”€€€É•ÍÕ±Ð…É”±•…È¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠqY¤M•Ñ}¥˜€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÕÍ•Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…Ñ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„}ÑÝ¿ŠdÔ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa½µÁ±•µ•¹Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa½Ù•Ñ™±½Ü¸ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠ
°è€€€€€€	•Ð¥˜€€€€€€€€€€€€€Ñ¡”€€€€€€ƒŠa½Á•É…Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¥¹½Ð…ÕÍ”ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÉÉå™É½´…”(€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaÑ¡•¡¥ ½¹‘•É‰¥Ð¥¸Ñ¡”1T¸(€€€€€€€IMM%95=LèÑ•¹Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™…Ñ”±¥É•Ð±%¹‘•á•³Ša	•Ñ•¹‘•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€à(((((€€€€€€€ƒŠaM]$€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Ì((((€€€€€€€MI%AQ%=8è€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½ÑÑ¿ŠeÑ¡”ÍåÍÑ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€˜Ñ¡”M¤(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑ…¬…¹½É¥ÑÉ½°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”€€€€€€€€€€€€€…¹Ñ…È€€€€€€€€€€€€€€¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É”€€ÁÕÍ¡”€€€€ð(((€€€€€€€€€€€€€€€€€€€€€9•‰È€€€€€€€€€€€€€€ÑÉ…¹Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ•ÑÉ…‘¥•ÌˆÑ¡”M!$¸€€€€€€€•„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€U”(((((€€€€€€€€€€€€€€€=LèQ µÄ…‘É¥”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰…­•…É”•Ð½”½¹‘¥Ñ¥½¸(€€€€€€€=9%Q%=;Šd(€€€€€€€€€€€€€€€€€€€€€ƒŠq™±„€€€€€€€€€€µ…Í¬€€€€€€€€€€€€•¥ÍÑ•È¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠqÕ¹…™™•Ñ•¸(€€€€€€€IMM%9(€€€€€€€€€€€€€€€5=Lè%¹¡•É•¹Ð((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ä(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¹Ñ•ÉÉ•Á”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M½™ÑÝ…É”€€È(€€€€€€€MI%AQ%=8è€€€€€€€€€€€€€€€€€€±°¸½˜Ñ¡—Ša5AT(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑ…¬¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™Ë¥¥Í•ÉÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa…É”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á…±„½¹Ñ¼¹Ñ¡”¸Ý…Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹ÑÉ½°½¥ÌÑÉ…¹Í™•ÉÑ•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M••¸Ñ¡”µ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ù•Ñ½È¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô€€€€€€€€€€€”€€€€€€€€€€€€€€€€è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€È(((((€€€€€€€=9%Q%=8(€€€€€€€€€€€€€€€=Lè€€€€€€€€€€€€€€€€€€€€9½Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™™•Ñ•¸(0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÍ•µ‰±•ÉUÍ•ÉÍÕ¥‘”(€€€€€€€€€€|IMM%9(€€€€€€€€€€€€€€€€€€€€€€5=Lè(€€€€€€€€€€€€€€€€€€€€€€€€€|%¹¡•É•¹Ð(((((€€€€€€€€€€€€€€€M]$Ì€€€€€€€€€€¤¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M½™ÑÝ…É”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¹Ñ•ÉÉÕÁÐ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ì((€€€€€€€€€€€€MI%AQ%=8è(€€€€€€€€€€€€€€€€€€€€€õ„(€€€€€€€€€€€€€€€€€€€€€€Ñ…¬(€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜Ñ¡”5AT(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á•¥…Ñ…á„¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É”ÁÕÍ¡•‘½¹Ñ¼Ñ¡”å…Ñ•Ì”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹ÑÉ½°¥ÌÑÉ…¹Í™•ÉÉ•(€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€Ý•”€É”€€€€€€€€€€€€€€€€€€€€€€Ñ¡•…±Ñ¡•MQL€€€€€€€€€€€€€€€€€€€€€€€5”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
ˆ€€€€€€€€•”(((((€€€€€€€€€€”(€€€€€€€€€€€€½¹ÁÈ(€€€€€€€€€€€€€€€€ÄÀãŠa=Lè€€™™•Ñ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠq]½”è(€€€€€€€€€€€€€€€€€€€€€€Ñ•¡•É•¹Ð(€€€€€€€€€€€€€€€€€€€5½Ù•Ìè(€€€€€€€€€€€€€€€IMM%9(€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€Me9(€€€€€€€€€€€€€€€€€€€€€€€€€€Må¹¡É½¹¥é”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”(((((€€€€€½”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€áÑ•É¹…°Ù•¹Ð€€€€€€€€€€€€€€€€Ñ¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð€€€€€€€€€€€€€€€€€€€€€€€€€€•”(€€€€€€€€€€€€€€€MI%AQ%=8è€Me9€€€€€]¡•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹ÍÑÉÕÑ¥½¸€€€€„€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì€€•á•ÕÑ•±Ñ¡”5AU•¹Ñ•ÉÌÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€O
•]¥¹œÍÑ…Ñ”°€€€€ÍÑ½ÁÌ¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€AÉ½•ÍÍ¥¹œ¥¹ÍÑÉÕ¥Ñ½¹Ì°€€€€€€€€€€€€…¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´€€€Ý]•‘Ñ•Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¸…¸¥¹Ñ•ÉÉÕÁÐ¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€]¡•¸…¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹Ñ•ÉÉÕÁÐ€€€€€€€€€€½ÕÉÌ°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Me9¥¹ÍÑ…Ñ”€€€€€€ƒ
¤(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì€€€€€€€€€€€…¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ½•ÍÍ¥¹œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´€€‘½¹Ñ¥¹Õ•Ì¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q˜€Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±•ÍÑ•Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹Ñ•ÉÉÕÁÐ|€•¹…‰±•°Ñ¡”ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥••”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ••ÍÍ½È€Ý¥±°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á•É™½É´Ñ¡”Ñ½É…ÑÉ…ÐÉ½ÕÑ¥¹”¸S¤€À¤(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€¥¹Ñ•ÉÉÕÁÐ€€€€€€€€€€€€€€€€€€¥Ìµ…Í­•°Ñ¡”¸€€€€€€€€€€€€€€Í¥µÁ±ä)½Ñ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼™¡”¹•áÐ€€€€€€€€€É••¹Ñ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹Ñ¥¹Õ•Ì€€€€€€€€€™…¹ÑÉ•Ñ¥½¸¸•”€€€€€€€€€€¬(((((€€€€€€€€€€€€€€€=9%Q%=8(€€€€€€€€€€€€€€€€€€€½¹•ÌèÑ½•™™•Ñ•¸(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í™•ÉI•Á¥½Ñ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ð€€€I•¥ÍÑ•È€€€€€€€€€€€€€Ñ¼(((€€€€€€€€€€€€€€€MI%AQ%=8è€€€€€€€€€€€€€€€€€€€€€€€€€€€€€°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ð€€€€€€€€€€€€€€€M½ÕÉ”€€Ñ¼¸„¸‘•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaÁ•¹Ñ••È€€€€€€€€€€€€€€€€€€€€€€€€€¥¹…Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•¥ÍÑ•ÉÌµ…ä½¹±ä‰äÑÉ…¹Í™•ÉÉ•‰•ÑÝ••¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¼(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è€€€€€Ñ„½˜€€€±¥­”Í¥é”ì¥—
ì°•¥¡Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¥áÐ€€€•¸‰¥ÐÑ¼Í¥áÑ••¸€€€€€€€€€€€‰¥Ð	¼€€€€€€€€€€€€€€€€€€€€€€€€€„€€€€€€€€€€€€€€€€€€	•ÑÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•Ñ”€€€€€€€€€€€€€€€€…¹”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€È€€€€€€€€€€€9½Ð™™•Ñ•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€M¤((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•¥ÍÑ•È(0€€€€€€€€€€€€€€€€€ÍÍ•µ‰±•È€€UÍ•ÉÌ€€€Õ¥‘”((€€€€€€€€€€€€€€€€€QMP€€€€€€€€€€€€€€€€€€€€€€€€Q•ÍÐ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”µ…¹¥ÑÕ‘”€€€€€€€½˜€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥Ð€€½Á•É…¹¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¥¡Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP)ø(((((€€€€€€€€€€€€€€€€€MI%AQ%=8è€€€€€€€€€€€€€€Q¡”QMP¥¹ÍÑÉÕÑ¥½¸½¹•ÁÑÕ…±±ä…‘‘Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¸€€€¥µµ•‘¥…Ñ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ù…±Õ”½˜é•É¼€Ñ¼Ñ¡”½Á•É…¹…¹Í•Ñ„€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”½¹‘¥Ñ¥½¸¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½‘•ÏŠt…½É‘¥¹±ä¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘…Ñ„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9¼€€€€€€€‘…Ñ„€€€¥Ì€€€€€€€ÝÉ¥ÑÑ•¸€€€Ñ¼µ•µ½Éä€€€	0(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•¥ÍÑ•ÉÌ¸(€€€€€€€=9%Q%=8€€€€€€€€€€€€=Lè€€€€€€€€!ÌƒŠa9½Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™™•Ñ•¹…”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÙL(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸(((((€€€€€€€€€„¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9ˆ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Èè(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M•Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M•Ð€¥˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1˜‰¥Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥ÑÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í•Ù•¸€€€€€½˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€™•ÍÕ±Ð¹¥Ì5•ÑÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€YÐ€€€€€€€€€€±•…É•¸…±°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•ÍÕ±Ð…É”±•…È¬(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ð€€€€€9½Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™™•Ñ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¼è(((((€€€€‰IMM%9(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5=Lè(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥É•Ð±%¹‘•á•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÕµÕ±…Ñ½È°€€€€¨(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaáÑ•¹‘•è(00€€€€€€€€ÍÍ•µ‰±•È€€€€€€€€€€€€€€€€€€€€€€€€UÍ•ÉÌ€€€€€€€€€€€€€€€€€Õ¥‘”((((€€€€€€€€€€Ø¸Ì¸Ä€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”€€€€€€€€€€€€€MÑ…È€€€€€€€€€€ÑÑÉ¥‰ÕÑ”|(€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”€€€€€€€€€•ÅÕ…Ñ”€€€€€€€€€€€€€€€€€€‘¥É•Ñ¥Ù”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ…ä‰”ÕÍ•(€€€€€€€€€€€€€€€€€€€€€€€€¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼€€€€‘•™¥¹”€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Íåµ‰½°¡…Ù¥¹œÑ¡”€€€€€€€ÍÑ…È(€€€€€€€€…ÑÑÉ¥‰ÕÑ”¸€€€€€€Q¡¥Ì€€™±…œ¥ÌÕÍ•‰äÑ¡”‘¥É•Ñ¥Ù”(€€€€€€€€½¹”½È€€€€€€ÑÝ¼€‰åÑ•Ì€€€½˜‘…Ñ„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼€€€‘•Ñ•Éµ¥¹”€€€Ý¡•Ñ¡•È¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹••‰”•¹•É…Ñ•¸€€€€€€€€Q¡”€€ÍÑ…È€€€™±…œ¥ÌÍ•±•Ñ•(€€€€€€€€‰äÁÉ••‘¥¹œ€€€€€Ñ¡”•ÅÕ…Ñ”€€€€½Á•É…¹Ý¥Ñ €€€€€€É½ÍÍ¡…Ñ (€€€€€€€€ÍÑ…È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡…É…Ñ•È°€€€€€€€€€€€€€€€€€€€€€€€€ˆŒˆ¸€€€€€€€€€Q¡”(€€€€€€€€€€€€€€€™±…œ€€¥Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…±Í¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í•±•Ñ•€€€€¥˜€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Íåµ‰½±¥Œ(€€€€€€€€•áÁÉ•ÍÍ¥½¸€¡…Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥ÑÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹ä€€€€€€€€€€€€€€€€É•™•É•¹”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸€€€€Ñ¡”€€€€€€€½Á•É…¹ƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑ…È€€€€€™±…œÍ•Ð¸€€€€€€€€€€€€€€€€€€€€€€€€¸€€€€€€•á…µÁ±”½˜Ñ¡”€€€ÕÍ”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜¸€€€€€€€€€€€€Ñ¡”ÍÑ…È´(€€€€€€€€™±…œ™½±±½ÝÌè€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€­•”(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€=Á€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€H€€€€€€€€€€µET¸€€€€€€€€€€€€€€€LÁÁ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M•Ð€€€€€€MÑ…È€€€€€€€€€€€€€±…œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÀÈÀÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÀÈÀÀ€€€€€€€€€€€Ñ€ÔÌ€€€€€€€€€€€€€€€€€€ÐÜ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=I€€€€€€€€€€€€€€€ÈÀÀ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5M€€€€€€€€€€€€€€€€€€€€€€€€€€‰5Mˆ€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5•ÍÍ…”Q•áÐ(€€€€€€€€€€€€€€€€€€€€ÀÈÀÌ€€€€€€€€€€€€€€€€€€=€Á€€€€€€€€€€€€€€€€€€ÀÀ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€H±<€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹½˜Q•áÐ((€€€€€€€€€Ø´Ð€€€€€€€€€€€€ô(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€IH€€€€€€€€€€€´´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¹•É…Ñ”€€€€€€€€€€€€€€…¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÉÉ½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”€€€€€€€€€€IKŠt€€€€€€€€€€€€€€€€€‘¥É•Ñ¥Ù”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÕÍ•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥œ€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼€€€€€€€€€€•¹•É…Ñ”€€€€€€€€€€€€€€€€€€€€€€€€…¸…ÍÍ•µ‰±•È€€€€€€€€€€€€€€€€€€€€€€€€€€€•ÉÉ½È€€€€€€€€™½È(€€€€€€€€‘½Õµ•¹Ñ…Ñ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÕÉÁ½Í•Ì¸€€€€€€€€€€€€€€€€€€]¡•¸€€€€€€€€€€€€€Ñ¡”€€€€€€€€€IH€€€€€€€€€€€€‘¥É•Ñ¥Ù”¸€€€€€€€€€€€€€€€€€€€€€€€€¥Ìè(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¹½Õ¹Ñ•É•°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€…ÍÍ•µ‰±•È€€€€€€€€Ý¥±°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¹•É…Ñ”€€€€€•ÉÉ½È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹Õµ‰•È€€€€€€€€€€€€€€€€€€€€€€€ØÔ°€€€€€€€€€AÉ½É…µµ•ÈM¥¹…±•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÉÉ½È¸(€€€€€€€€Q¡¥Ì€€€‘¥É•Ñ¥Ù”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ…ä‰”ÕÍ•€€€€€€Ñ¼…±°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÑÑ•¹Ñ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼€€€€€€€€•ÉÑ…¥¸€€€€€€€€€€€€€€€…É•…Ì€€€€€€€€€€€€€½˜€€€€€Í½ÕÉ”(€€€€€€€€½‘”°€€€€€€½È€€€€€€€€€€€€€€€€€€µ…ä€€€€€€€€€€€€€‰”ÕÍ•€€€€€€¥¸½¹‘¥Ñ¥½¹…°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸€€€€€½É‘•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÍÍ•µ‰±ä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼€€€€€€‘•Ñ•Ð€€€€€€€€€€•ÉÑ…¥¸(€€€€€€€€•á•ÁÑ¥½¹…°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹‘¥Ñ¥½¹Ì¸€€€€€€€€€€€€€€€€€€€€€€€€€€€½È€€€€½µÁ…Ñ…‰¥±¥Ñä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÕÉÁ½Í•Ì°Ñ¡”µ¹•µ½¹¥Œ€‰%0ˆ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(((((€€€€€€€€¥Ì€€€€…±Í¼€€€€€€€€€€€€€€€É•½¹¥Í•€€€€€€€€€€€€€€€€€€€€€€€€€€€™½È€€€Ñ¡¥Ì€€€€€€€€€€€€½Á•É…Ñ¥½¸¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M@(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Ì(((((€€€€€€€€€ØØÔ€€€€€€€€€€€€€€€€II%€€€€€€€€€€€€€€€€€€€õø((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹‘¥Ñ¥½¹…°(€€€€€€€€€€€€€€€€€€€ø(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¹•É…Ñ”(€€€€¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„€€€€€€€€€€€€ÉÉ½È((€€€€€€€€€€€€€€€€€€€Q¡”€€€€€€€€€€€€€€€€€€II%(€€€€€€€€ÑÉÕÑ µÙ…±Õ•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¥É•Ñ¥Ù”€€€€€€€€€€€€€€€€€€€€É•ÅÕ¥É•Ì…¸½Á•É…¹°Ý¡¥ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ð•áÁ•ÑÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼‰”„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•áÁÉ•ÍÍ¥½¸¸€€€€€€€€€€€€€€€€€€€€€€%˜€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•áÁÉ•ÍÍ¥½¸€€€€€Ù…±Õ”€¥Ì€€€ÑÉÕ”°…¸•ÉÉ½È(€€€€€€€€µ•ÍÍ…”€€€€€€€€€€€€€€€€€€€€¥Ì€€€€€€€€€€€€•¹•É…Ñ•€€€€€€€€€€€€€€€€€€€€€€€€€…Ì€¥¸€€Ñ¡”€€€IH€€‘¥É•Ñ¥Ù”°€½Ñ¡•ÉÝ¥Í”€Ñ¡”II%(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(((((€€€€€€€€‘¥É•Ñ¥Ù”€€€€€€¥Ì€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹½É•¸€€€€€€€€€€€€€€€€€€€€€€€9½Ñ”Ñ¡…Ð(€€€€€€€€€ˆ¼ˆ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”Õ¹…ÉäÑÉÕÑ Ù…±Õ”½Á•É…Ñ½ÉÌ€ˆüˆ…¹(€€€€€€€€M½µ”(€€€€€€€€€€€€€€€€€µ…ä‰”€€€€€€€€€€€€€€€€€€€€€€€€€€€ÕÍ•Ñ¼€€€€€€€€€€€€€€€€½¹Ù•ÉÐ€€€€€€€€…¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É¥Ñ¡µ•Ñ¥Œ€€€€€€€€€€€•áÁÉ•ÍÍ¥½¸€€€€€€€€€„€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹Ñ¼ÑÉÕÑ Ù…±Õ”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€á…µÁ±•Ì€€€€€€€€€€€€€€€€€€€€€€½˜€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€II%‘¥É•Ñ¥Ù”™½±±½Üè(€€€€€€€€€€€€€€€€€€€€€€€€€€€ÜÀÈ(€€€€€€€€€€€€€€€€€€€€€€€€€€€ÜÀÈ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|€€€€€€II%€ÐÔðÄÈ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…±Í•½¹‘¥Ñ¥½¸€€€ô(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¨¨¨”€€€€€€€€€II=H€€€€€€€€€€€€€€€¨¨¨(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÀØÕø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|€€€€€€€II%€€Œôû
ÜÀÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€AÉ½É…µµ•È€€M¥¹…±±•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q½½ÉÉ½È5•µ½ÉäUÍ•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5Õ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Mä€€€€€€€€€€€€€•Ì((€€€€€€€€€Ø´Ø€€€€€€€ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€%0€€€€€€€€€€€€€€ƒŠP((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¹•É…Ñ”€€€€€€€€€€€€€€€…¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÉÉ½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”€€€€€€€€€€%0(€€€€€€€€€€€€€€€|€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¥É•Ñ¥Ù”€€€€€€€€€€€€€€€€€€€€€€¡…Ì€€€€€€€€€€€€€€€‰••¸(´€€€€€€€5½Ñ½É½±„€€€€€€€€€€€€€€€€€€€…ÍÍ•µ‰±•ÉÌ€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì¥‘•¹Ñ¥…°€€€€€€€€€€€€€€€€€€€€€€Ñ¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ½Ù¥‘•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€€IH(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¥É•Ñ¥Ù”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½µÁ„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ•‰¥±¥Ñä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¥Ñ (€€€€Ø¸Ü€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½É´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	åÑ•Ì(€€€€€€€€€€€€€€€€€€€€ô(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€õø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹ÍÑ…¹Ð((€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”€€€€€€€€€€€€€€€€€€‘¥É•Ñ¥Ù”€€€€€€€€€€€€€€€€€€¥Ì€€€€€€€ÕÍ•Ñ¼€€€€€€€€€€€€€€€‘•™¥¹”€€€€€€€€€€€€…É•…Ì½˜‘…Ñ„(€€€€€€€€µ…¹€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Ð„(€€€€€€€€€€€€€€€€€€€€€€€€€€€µ…ä€€€€€€€€€€¡…Ù”€€€€€€€€€€€€€€€€€€€½¹”€€€€€½È€€€€µ½É”½Á•É…¹‘Ì°Í•Á…É…Ñ•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰ä½µµ…Ì¸(€€€€€€€€€€€€€€€€€€€‰”€€€€€€€€€€€•¥Ñ¡•È(€€€€€€€µ…ä(€€€€€€€¥µÁ½ÉÑ…¹Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„É•…±¥é”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡…É…Ñ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡…Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑÉ¥¹œ½È…¸€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÍÍ•µ‰±•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•áÁÉ•ÍÍ¥¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡…É…Ñ•È€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑÉ¥¹Ì€€€€€€€€€€€€€€€€€€€€€€€€¡ÍÕ …ÌÔ(€€€€€€€€‘¥É•Ñ¥Ù”¤€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É€€€€€€€€€€€€¡…É…Ñ•È€€€€€€€€€€€€€€€€€€€€½¹ÍÑ…¹ÑÌ(€€€€€€€€½¹ÍÑ…¹ÑÌ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡…Ù”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É”€€€€€€€€€€€€€€€€¹½Ð€€€€€€€€•ÅÕ¥Ù…±•¹Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„€€€€€µ…á¥µ½´€€€€€€€€€€€€€€€€ÁÉ•¥Í¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€½˜€€€€€€€€Í¥áÑ••¸€€€€€€€€€€€€€€€‰¥ÑÌ€€€€€€€€€€€€€€¡ÑÝ¼¸€€€€€€€€€€€€€€€€€€É…Ñ•ÉÌ¤(´(((((€€€€€€€Ý¡¥±”€€€€€€€€€€€€€€€¡…É…Ñ•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑÉ¥¹Ì€€€€€€€€€€€€µ…ä€€€€€€€€€€€€€€€€½˜€€€€€€…¹ä€€€€€€€€±•¹Ñ ¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
œôÈ¸€€€€€€€ô(0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”€€€€€€€€€€€€€½”Õ¥‘”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%˜€€€…¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰•¥¹Ì¹Ý¥Ñ ½¹”½˜Ñ¡”(€€€€€€€€€€€€€€€€€€€€¸(((((€€€€€€€€€€€€€€€€€€€€€€€™”€€€€€€€½¹Í¥‘•É•€€€€€€€€€Ñ¼‰”€€€€€€€€€€€€€€€„€€¡…É…Ñ•È€€€€€€€€€€€€€€€€€ÍÑÉ¥¹œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÍÍ•¹‰±•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹ÍÑ…¹Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÅÕ½Ñ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡…É…Ñ•ÉÍ¥Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘…Ñ„¸•¹•É…Ñ•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸(((((€€€€€€€€€€€€€€€•½¹•¥ÍÑÌ€€€€€€½˜ƒŠdƒŠaÑ¡”M%$¡…É…Ñ•ÉÌ€•¹±½Í•(€€€€€€€€€€€€€€€€€€€€€‰”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰äÑ¡”ÅÕ½Ñ•Ì¸€€€€€€€€€%˜„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÅÕ½Ñ”¥Ì(€€€€€€€€€€€€€€Ñ¼€€€€€€€€•¹±½Í•Ý¥Ñ¡¥¸Ñ¡”¡…É…Ñ•ÈÍÑÉ¥¹œ€€€€€€€€€€€€€€€€€€€¥Ñ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰äÑÝ¼ÍÕ•ÍÍ¥Ù”ÅÕ½Ñ”¡…É…Ñ•ÉÌ¹¥ÑÍ•±˜°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ•Í•¹”€€€€€µÕÍÐ€€€€€€‰”(€€€€€€€€€€€€€€€€¥¹‘¥…Ñ•(€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€)=!;Šd©OŠt¸½¹Í¥ÍÑÌ½˜Í¥à¡…É…Ñ•ÉÌ°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð€½È€€€•á…µÁ±”°€€€€Ñ¡”¸€€€ÍÑÉ¥¹œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹½Õ±…±Í¼‰”‘•™¥¹•(€€€€€€€€€€€€€€€€€€€€Ä€€€…±Ñ•É¹…Ñ”Íå¹Ñ…à€‰)=!;ŠeLˆ¸%˜¡…É…Ñ•È½¹ÍÑ…¹ÑÌ…Ñ”É•ÅÕ¥É•‘ÕÍ¥¹œ€€€€€€€€€‰ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Ì(€€€€€€€€€€€€€€€€€€…É”é½˜àÄÀé…à•áÁÉ•ÍÍ¥½¸°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¨(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡•ä€€µÕÍÐ¸€€¹½Ð€‰”€€Ñ¡”ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™¥É•Ð¸€€€€Ñ•É´€€€€¥¸€€€€Ñ¡”€€¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð½Á•É…Ñ½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Õ¹…ÉäÁ±ÕÌ€€€€€€€€€€€€€€€€…¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰”¸Ý••Ñ¼™½É”(€€€€€€€€€€€€€€€•áÁÉ•ÍÍ¥½¹•Ù…±ÕÍÑ¥½¸°€Ñ¡”€€•¹Ñ¥É”€€•áÁÉ•ÍÍ¥½¸…¸€‰”€€€€€€€€€€€€€½È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…”(((((€€€€€€€€€€€€€€Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€…¸(€€€€€€€€€€€€€€€€A•Ù•¹¥•¹•Ð•á…µÁ±”€½˜Ñ¡¥Ì€Ñ•¡¹¥ÅÕ”¥Ù•¹±…Ñ•È¸•¹±½Í•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì€€€€€€€€€€€€€€€€€€€€€€€€€¤(€€€€€€€€€€€€€€€€€€€%˜Ñ¡”½Á•É…¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘½•ÌƒŠq¹½Ð‰•¥¸Ý¥Ñ „ÅÕ½Ñ”¡……•Ñ•°€€€€€€€…Ð¥”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¸€€€€€€€€€€€€•áÁÉ•ÍÍ¥½¹…¹€€€€€€€€€€€€€€€€€€€€€€¥Ì€€€•Ù…±Õ…Ñ•€€€€€€€€€Ñ¼€€€€€€€„€€€Í¥áÑ••¸€€€€‰¥Ð((€€€€€€€€€€€€€€€€€€€€€€€€€€…±±ä•¹•É…Ñ•Ì‰”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Ñ”€€€€€€€€€€€€€€€Á•Éµ¥ÑÑ•…¹€€€€€€€€€€€€€€€€€€€€€€€¡…Ù”€€€€€Ñ¡”€€€€Ù…±Õ”€€€€€€€€€€€€€€€€€é•É¼¸€€€€Q¡”€€€€€€€€€€Á°(€€€€€€€€€€€€€€½Õ‰±”‰åÑ”€€€€€€€€€€€€€€€€€€€€€Í¥¹¥™¥…¹•µ…ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™½É•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰åÑ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜‘…Ñ„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÕÍ¥¹œÑ¡”Í¥¹¥™¥…¹”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™½È€€€•… €€€€¡Á•…Í•¥½œ¸(€€€€€€€€€€€€€€€€€€¡…É…Ñ•È°€€€€€€€€€€€€€€€€€€€ˆøˆ€€€€€€€…Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”™¥ÉÍÐ€€€€€€€€€€€½˜Ñ¡”•áÁÉ•ÍÍ¥½¸€€€€€€€€€€€¡…É…Ñ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™½É¥¹œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÑÝ¼ƒŠa‰åÑ•Í½˜‘…Ñ„Ý¥±°‰”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸€€Ñ¡¥Ì(€€€€€€€€€€€€€€€€€€…Í”°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¹•É…Ñ•¸ƒŠQQ¡¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€…‘ÑÉ•ÍÍ½É•Í¥¹Í¥‘•½˜M½¹ÍÑ…¹ÑÌ¬™•…ÑÕÉ”}	••™Õ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½È¸€€€€€€€€€€€€¥Ì(€€€€€€€€€€|(€€€€€€€€€€€€€€€€€€•Ñ¥‰•‘‘¥¹œ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q˜…¸¸(€€€€€€€€€€€€€€€€€€€…”€€€€€€€€€€€€€€€€€€€€€€•áÁÉ•ÍÌ€€€è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í¥½¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”è•áÁÉ•Í…¥•à(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ù…±Õ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠq!•É•Ñ¥Ù”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡…”°Ñ¡”•Ñ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€íÌ€€€€€€€€€€€€€ÕÍ•Ñ¼‘•Ñ•Éµ¥¹”(€€€€€€€€€€€€€€€€€€Ý¡•Ñ¡•È(€€€€€€€€€€€€€€Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹•½àƒŠaÑÝ¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€å•Ì½˜€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ„¹Ý¥±°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰”€€€€•¹•É…Ñ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€øÄÈà…¹±•ÍÌÑ¡…¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%˜Ñ¡”Ù…±Õ”½˜Ñ¡”((€€€€€€€€€€€€€€€€€€…ˆ½ÏŠq½È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Ñ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜‘…Ñ„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•ÅÕ…°Ñ¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…±°½Ñ¡•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¬ÔÈà°Ñ¡•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ù…±Õ•Ì€¡¥¹•±Õ‘¥¹œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É”•¹•É…Ñ•¸9½Ñ”Ñ¡…ÐÑ¡”ÍÑ…È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Õ Ñ¡”ÕÍ”½˜Ñ¡”™½É¥¹œ¡…É…Ñ•È€Ñ”œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠqM•Ù•É…°€€ð½˜…±”•Í……Á•Ñ¥Ù”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•á•…Á±•Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaMÑ…Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™¥´‡Ša	•Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M•Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±…œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ•åÑ”ÑåÑ•Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa¡…É…Ñ•ËŠaMÑÉ¥¹œƒ
¤(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€EÕ½Ñ”€¥¸MÑÉ¥¹œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡Ñ…Ñ”€ÄØ¤¡…É…Ñ•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•ÁÉ•ÑÍ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…8ˆ€€€€€€‰¡…É…Ñ•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€áÁÉ•ÍÍ¥½¸|(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|€øÔÀÁ|(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÔÀÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½É•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=¹”ƒŠa	åÑ”¸€€€€€€€€€€€M¥¹¥™¥…¹”Ü(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±•ÍÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í……Ð°€€€€€€€€€€€€€€€€€€€€€€€€ÄÌ€€€€ÑÝ¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠpÄà°°°ÄÔ9Õ±°©=••Ñ•¹‘Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€H°P€€€€¡••=Á•É…¹‘Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™±…œ••(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¼(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
­H„½É•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ML€€€€€€€€€€€€€€€€€€€€€€€€€€€€	¥¹¥™¥…¹”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ”M½¥Á…•‰¥±¥Ñå½ÁÑ¥½¸ÅÌÍÁ•¥™¥•±•¥Ñ¡•ÈƒŠa½¸Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½ÈÑ¡É½Õ Ñ¡”½ÁÈ‘¥É•Ñ¥Ù”°€€€€¡…É…Ñ•È¸€€€€ÍÑÉ¥¹œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¬Q•ÉµÍ‰¥•¥¹¹¥¹œÝ¥Ñ „ÅÕ½Ñ”¡…É…Ñ•È¸€€€€€€€€€…É”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaL…¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘É”ÕÍ•€€€€¥¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•áÁÉ•ÍÍ¥½¸€´)••”(€€€€€½Ì€€€€€€€€€€€€€€€‘…¥Ñ¥½¸°(€€€€€€€€€€•”‰¥ÑÍM•……Ñ”=˜•­•ÍÑ…Ñ”€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”Í¥¹¥™¥…¹”½˜ð•… ½Á•É…¹¥Ì™½É•Ñ½|(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”ƒŠqÍÑ…È™±…œ½ÈÑ¡”™½É¥¹œ€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€€€¡…É…Ñ•ÉÌ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(0€€€€€€€€€€€€€€€€€€€€€œ(((((€€€€€€€€€€€€€€€€€€€€€€€€ÍÍ•µ‰±•È€€€€€€€€€€€€€€€€€€€€€€€€UÍ•ÉÌ€€€€€€€€€€€€€€€€Õ¥‘”(((Ø¸Øà€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ñø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½É´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹ÍÑ…¹Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡…É…Ñ•ÉÌ((€€€€€€€€€€€€€€€€€èQ¡”¡…É…Ñ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”€€€€€€€€€€€€€€€¸€€€‘¥É•Ñ¥Ù”€€€€€€¥ÌÕÍ•Ñ¼ƒŠa‘•™¥¹”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ•µ½Éä¸€€€€€€€€€€€€€€€€€€€€¡…É…Ñ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•ÑÉ¥¹Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑÉ¥¹œ€€€€€ÍÑ…ÉÑÌÝ¥Ñ Ñ¡”™¥ÉÍÐ€€€€¹½¸µÍ•Á…É…Ñ½È€€€€€€€€¡…É…Ñ•È€€…™Ñ•È€´(€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€½Á½‘”°€€€€€€…¹€€€€Ñ•Éµ¥¹…Ñ•Ì€€Ý¥Ñ €€Ñ¡”€€€€ƒŠaÍ•½¹€€€½ÕÉÉ…¹”€€€€½˜Ñ¡…Ð(€€€€€€€€€€€€€€€€€€€€€€€€¡…É…Ñ•È¸€€€€€€€€€€€€€€€€€€€€€€€€Q¡•Í”€€€€‘•±¥µ¥Ñ•ÉÌ€€€€µ…ä‰”…¹äÁÉ¥¹Ñ…‰±”€€€€€€€€M%$€€€€€¡…É…Ñ•È°€¸…¹(€€€€€€€€€€€€€€€€€€€€€€€€…É”€€€€€€€€€€€¹½Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹Í¥‘•É•€€€€€€€€€€€€€€€€€€€€€€€€€€€…Ì€€€€€€€Á…ÉÐ€€€€€€€€½˜€€€€€€€€€€€€€€Ñ¡”€€€€€€¡…É…Ñ•È)=Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¥É•Ñ¥Ù”€€€€€€€€€€€€€€€€€€€€€€€€€€™½±±½ÝÌè€è€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑÉ¥¹œ¸Í½¹••á…µÁ±•Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€E==ÐÄÐÈ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÀÀÄÌ¸€€€€€€€€€€€€€€€€€€€ØÔ€ØØ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÐÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ØÜ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÐÐ€€€Øà(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½	½M±…Í•±¥µ¥Ñ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÑŒ€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠq•™ ˆ€€€€€€€€€€€€€€EÕ½Ñ••±¥µ¥Ñ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€Ø¸ä€€€€€€€€€€€€€€€€€€(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Éµ½Õ‰±”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	åÑ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´€€€€€€€€€€€€€€€€€€€€€€€µø(((((€€€€€€€€€€€€€€€€€è((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”¸€€€€€€€€€€€€€€€€€€€€€€‘¥É•Ñ¥Ù•¥ÏŠuÕÍ•è€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´Ñ”ƒŠaµ…ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘•™¥¹”€ÄØµ‰¥Ð¸Ý½É‘Í¥¸…µ½ÉåÌ(€€€€€€€€€€€€€€€€€€€€€€€€¡…Ù”€€€€€€€€€€½¹”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹‘Ì°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½È€€€€€€€€€€€€µ½É”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€›¥Á…É…Ñ•€€€€€€€€€€€€€€€€€€€€€€€€€€€‰ä½µµ…Ì°€€€€€€€€€€€€€€€€€€…¹€€€€€€€€€€€€€€Ý¥±°€€€‘•™¥¹”¸Í½¹”€€€€€€€€€€€€€Ý½É(€€€€€€€€€€€€€€€€€€€€€€€€€™½È€€€€€€€€€•… (€€€€€€€€€€€€€€€€€€€€€€€€…‘‘É•ÍÍ•Ì¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•áÁÉ•ÍÍ¥½¸¸€€€€€€€€€€€€€€€€€€€€€€€Q¡¥Ì€€€€€€€€€€€€€€€€€€€‘¥É•Ñ¥Ù”€€€€€€€€€€¥Ì€€€€€€€€€¹½Éµ…±±ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½½ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÕÍ•€€€€€Ñ¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½•Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘•™¥¹”(€€€€€€€€€€€€€€€€€€€€€€€€€€Ø´ÄÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½É´€€€	åÑ•Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5Õ±Ñ¥Á±”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´€€€€€€€€€€€€€€€€€€€€€€ùø(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”€€€€€€€¸5€€€€€€€€€€€€€€€€€€€€€‘¥É•Ñ¥Ù•¥ÏŠtÕÍ•Ñ¼¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•Í•ÉÙ”…É•…Ì€€€€€€€€€€€€€€€€€€€€€€µ•µ½Éå…¡‘½˜¸€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼¸(€€€€€€€€€€€€€€€€€€€€€€€€¥¹¥Ñ…±¥é”(€€€€€€€€€€€€€€€€€€€€€€€€€‘¥É•Ñ¥Ù”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡•´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘•™¥¹•Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í¥¹±”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ù…±Õ”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€àµ‰¥Ð€€€€€€€€€€™¥ÉÍÐ€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹½˜Ñ¡”€€5¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±•¹Ñ ½˜Ñ¡”Ñ¥•µ½Éä…Ñ•„Ñ¼‰”‘•™¥¹•]¡¥±”Ñ¡”¸(€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€Í•½¹€€€€€€€€€€€€€€€€½Á•É…¹€€€€€€€€€€€€€€€€‘•™¥¹•”€€€€€€€€€€€€€€€€€€€€€Ñ¡”‰åÑ”½˜‘…Ñ„Ñ¼‰”ÍÑ½É•¥¸Ñ¡”µ•µ½Ñä…É•„(€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”(€€€€|(((€€€€€€€€€€€€€€€€€€€€€€€€€%˜€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í•½¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	Mh(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹€€€¥Ì€€€€€€€€€€€€€€€€€€€½ÁÑ¥½¹…°°…¹€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥˜€€€€½µ¥ÑÑ•°€€€€€€€€€€€€€€€€€€€ÅÌ€€€€€€€€€……ÍÕµ•Ñ¼€€€€€€€€€€€€‰”€€€€€€™•É¼¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¥É•Ñ¥Ù”€€€€€€€€€€€€€€€€€€€€€€¥Ì€€€€ÕÍ•°€€€€€€€€€€€¥Ð€€€€€€€€€€€€€€€¥Ì¸€€€€€€€ƒŠaÁÉ½•ÍÍ•°•á…Ñ±ä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ðÑ¡”5(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±¥­”€€€€€€¸(((€€€€€€€€€€€€€€€€€€€€€€€€€‘¥É•Ñ¥Ù”€€€€€€€€€€€€…¹€€€€€Í¥¹”€€€€¹¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í•½¹€€€€€€€€€€€€¥ÌÍÁ•¥™¥•°Ñ¡”€€€€€€€€€€€€€€€€€€€€€½Á•É…¹€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý•µ¹½Éä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É•„¥Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ½Á•É±ä€€€€€€€€€€¥¹¥Ñ¥…±¥é•€€€€€€€€Ñ¼€€é•É½•Ì¸€€Q¡”€™¥ÉÍÐ½Á•É…¹½˜5€¡…¹€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜€€€€€€€	Mh¤(€€€€€€€€€€€€€€€€€€€€€€€€µÕÍÐ€€€€€€€€€€€¹½Ð€€€½¹Ñ…¥¸€€€€€€€€€€€€€€€€€€€€€€½È•áÑ•É¹…°€´(€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€5‘¥É•Ñ¥Ù”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™½±±½Ü„€´€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™½ÉÝ…É€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰•Ñ•É•¹•¹Ìè(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€A=I€€Í…Á¥•¹•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M½µ”I”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÀÀÄä€€€€€€€€€€€€€€€€€€€€ÀÀ€€€€€€€€€€ÀÀ€€€€€€€ÀÀ€€€€ÀÀÀÀ¸5€Ô€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ù•	åÑ•Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=<Å€€€€€€€€€€€€€€€€===(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9€€€€€€€€€€€€€€€€€€€€€€€€€€Ì°€ÄÀ€€€€€€€€€€€€€€ðQ¡É•—Ša	åÑ•Ì½”(€€€€€€€€€€€€€€€€€€€€€€€€•±°€€€€€€€€€€€€€€€€€€±¥‰É…Éä%¹±ÕÍ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1%(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ùø((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”1%‘¥É•Ñ¥Ù•¥”ƒŠa…•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼€€€€€€€€€™¥¹•±Õ‘”…‘”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(((((€€€€€€€€|(((((€€€€€€€€€€€€€€€€€€€±…¹Õ…”¥¹ÁÕÐ(€€€€€€€€€€€€€€€€€€€€€€€€€Í½ÕÉ”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¸•™™•Ð°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€%¹•±¥‘•€€€€€€€€€€€Ñ¼€€€Ñ¡”€€€€€€€€…ÍÍ•µ‰±•È¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í½ÕÉ”€€€€€€€€€€€|(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€}™¥±”É•Á±…•Ì€€€€€Ñ¡”€€€±¥‰É…Éä‘¥É•Ñ¥Ù”€€€€¥¸Ñ¡”…ÍÍ•µ‰±ä¸=¹±ä¸½¹”(€€€€€€€€€¥Ì(€€€€€€€€€€€€€Á•Éµ¥ÑÑ•°€€€€€€…¹¥ÐµÕÍÐ¡…Ù”€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ù…±¥‘¥Í¬™¥±”¹…µ”™½Éµ…Ð¸(€€€€¥¹±ÕÍ¥½¸€€€€€€€™¥±•Ìµ…ä‰”¹•ÍÑ•°…¹ÕÁÑ¼€€€€€€€€€€¹¥¹•ÑäµÍ¥¹”è±¥‰É…Éäè€€™¥±•ÌƒŠP€€€å•”(|(((((€€€€€€‰”€€€€€¥¹±Õ‘•€€€¥¸€€€½¹”€€€…Í•µ‰±ä¸€€€€%˜€€¹¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™…ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•áÑ•¹…Ñ•¸è¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
¬µ•É¤(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((()…”±¥‰É…Éä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™¥±”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í…¹Ð°€€€€€€€€€€€€€€…¸€€€€€€€€•áÑ•¹Ñ¥½¸ƒŠaQáÑ¥Ì°…ÍÍÕµ•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ØàÀä€€€€€€€€€€€€€€€€ÄÜ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½é½€äÄ¸	d€€€€€€€€€€€äÈ¸À(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	MH(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€}5=Y(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€äÌ¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1%	LƒŠaÍÕ	L(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÄÀÄ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€È¸ÀÄ¸¸¸€€€€€€€€€€€€€€€€€€€€€MU	I=UQ%9L((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ø€€€€€€€€€€€€€€àÀ€€€€€€€€€ô€€€€€€€€€€€€€€Ð¸ÀÄ¸€€€€€€€5=Y(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÜÀØä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1€À°”¬(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÜÀÙ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€<(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ü€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ô¸ÀÄ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MQ€€€€€€€€€À°€€€€d¬((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ø´Ð€€€€ð(0€€€€€ØØÄÈ(€€€€€€€€€€€€€€€€€5½‘Õ±•9…µ•|(€€€€•È€€€€€…”(€€€€Q¡”€È94(€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰••¸ƒŠqÁÉ½Ù¥‘•“Št(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í½ÕÉ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa™½È)Ýä(((()…”(€€€€€€€€€€€€Ý¥Ñ (€€M••…Ñ•‰…¥ÑÑä€€€½±„(€€€€€€€€€€€€€€€€€€€€€€ÁÉ¤…ÍÍ•µ‰±•ÉÌ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡”(0€€€€€€€€€€€€€€€ÍÍ•µ‰±•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€UÍ•ÉÌ€€€€€€€€€€€€€€€€€€€Õ¥‘”((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€´(((((€€€€€€€€€€€€€€€€Ø€€€€€€€€€€€€€€ÄÐ€€€€ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=I€€€€€€€ùø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M•Ð€€€€€€€€AÉ½É…´€€€€€€€€€€½Õ¹Ñ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=É¥¥¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaQ¡”€€€€€€€€€€€€€€€€…ÍÍ•µ‰±•È€€€€€€€€€€€€€€€€€€€€€€€ÍÕÁÁ½ÉÑ…µÕ±Ñ¥Á±”€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ½É…´€€€€€€€€€€€€€½Õ¹Ñ•ÈÍ•Ñ¥½¹Ì°•… €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜¸(€€€€€€€€€€€€€€€Ý¡¥ €€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ…ä€€€€€€€€‰”€€€€€€€€€€€€€€€€€…‰Í½±ÕÑ”€€½È¸€É•±½…Ñ…‰±”¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”€€€€€€€€€€=I€€€€€€€€‘¥É•Ñ¥Ù”€€€€€€€€€€€€€€€€€€€€€€€€€¥ÌÑ¡”¸(´µ•¡…¹¥Í´€€€ÕÍ•Ñ¼‘•™¥¹”è€€€ÁÉ½É…´½Õ¹Ñ•È€Í•Ñ¥½¸°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹€€€€€€€€€€€€€Ñ¼€€€€€€€€€€€€€Í•Ð¥ÑÌ(½É¥¥¸¸€€€%˜€„€±…‰•°€Å„ÍÁ”¥™¥•½ÈÑ¡”=IÍÑ…Ñ•µ•¹Ð°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡¥Ì€€€€€€€€€€€€±…‰•°€€€€€€€€ÕÍ•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÅÌ(€€€€€€€€€€€…Ì€€€€€€€€€€€€€€€Ñ¡”ÁÉ½É”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€€€€€¹…µ”€€€€€€€€€€€½˜€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Õ¹Ñ•ÈÍ•Ñ¥½¸¸€€%˜€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹¼±…‰•°€€€€€€€€€€€€€€€€€€€¥Ì€€€€€€€€€ÍÁ•¥™¥•(€€€€€€€€€€€Ñ¡”€	M=1UQÁÉ½É…´½Õ»Š`€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÑÌÍ•±•Ñ•¸€€Q¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹½˜Ñ¡¥Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€½™•ÍÑ¥å”+
¤(€€€€€€€€€€€€µÕÍÐ¹½Ð½¹Ñ…¥¸€€€™½ÉÝ…È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•áÑ•É¹…°€€€€€€€€€€É•™•É•¹•Ì¹M½¹Ì•á…µÁ±•Ì½˜€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(((((€€€€€€€€€€€€€€€€€€€€€€€™½±±½Üè(€€€€€€€€€€€€€€€MÑ…Ñ•µ•¹ÑÌ(€€€€€€€€€€€€€€€€€€€€ÀÈÀÀ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÀÈÀÀ€€€€€€€€€€€€€€€€€€€€€€€I•Í½±ÕÑ”AŠt€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠpÀÐÀÀ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€È€€€€€€€€€€€€ÀÐÀÀ€€€€€€€€€€€€€€€€€€€€€€€|(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	U€€€€½Õ¹Ñ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaAÉ½É…¸(€€€€€€€€€€€€€€€€ØÄÔ(€€€€€€€€€€€€€€€€€¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€A€€€€€€€€€€€ƒŠP((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MÑ…ÉÐ9•ÌA…”ƒŠa„(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”€€€€€€€€€€€€€€€€Á…”€€€€€€€€€€€€€€€€€€€€‘¥É•Ñ¥Ù”€™ÕÍ•¸Ñ¼™½É”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€‘••½¹‘±•ËŠd€Ñ¡”‰½Àƒ
À€€€€Ñ¼((€€€€€€€€€€€€€€€€€€€€…ÍÁ•¥™å¥¹œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜€€€€€€€€€€€±¥ÍÑ¥¹œ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%˜Ñ¡”€€€€€ƒŠqÁ…•½ÁÑ¥½¸¡…Ì¹½Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠqAÃŠt½ÁÑ¥½¸µ½¸Ñ¡”…ÍÍ•µ‰±•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰••¸Í•±•Ñ•°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±¥¹”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½µµ…¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¥Ñ¡•È€‰ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½È€€€€€€€Ù¥„€€€€€€€€Ñ¡”€€€€=AP(€€€€€€€€´((((€€€€€€€€€€€€€€€€€€€€€MÑ…Ñ•µ•¹Ð°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”A‘¥É•Ñ¥Ù”¥Ì¥¹½É•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹€€€€€…ÁÁ•…ÉÌ€€€€€€€€€€€€€€€€¥¸€€€€Ñ¡”€€€€€€€€€€€€±¥ÍÑ¥¹œ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ð(€€€€€€€€€€€€€€€Á…¥¹…Ñ¥½¸¥Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•™™•ÈƒŠaÑ¡”A‘¥É•Ñ¥Ù”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™É½´¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥ÑÍ•±˜¹‘¥Í…ÁÁ•…ÉÌ(€€€€€€€€€€€€€€€AÉ½É…µ±¥ÍÑ¥¹œ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€ØØÄØ€€€€€€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	•¥¸AÉ½ÕÉ”	±½¬(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€AI=€€€€€€€€€€ƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„((((€€€€€€€€€€€€€€€€€€€€•”€€€€€€€€€€€€€€€€€€€€€€Q¡”ÁÉ½Ñ•‘ÕÉ•‘¥È€€Ñ•Ý••‘Ñ¼‰•¥¸€€€€€€‰±½¬»ŠqQ•Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„ÁÉ½•ÑÕÉ”(€€€€€€€€€€€€€€€øÁÉ½•‘ÕÉ—Šd€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑ…Ñ•µ•¹Ð€€€€€€€€€€€€€€€€€€€ƒŠa¡…Ìè€€€€€€€€€€‰•°°Ñ¡•¸Ñ¡…Ð±…‰•°¥ÌÕÍ•…ÌÑ¡”¹…µ”½˜(€€€€€€€€€€€€´(((€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€ÁÉ½•‘ÕÉ”€€€€‘¥Ñ¥½¹…È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€©Ó¥¸€€€%˜Ñ¡”‘¥Ñ¥½¹…Éä€¡…Ì€€€…±É•…‘ä¸‰••¸(€€€€€€€€€€€€€€€€€€€€‘•™¥¹•°€€Ñ¡•¸€€€€Ñ¡¥Ì‘¥Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa¥Ù”¥Ì¸½¹Í¥‘•É•Ñ¼‰”„½¹Ñ¥¹Õ…Ñ¥½¸¸€€€€€½˜Ð(€€€€€€€€€€€€€€€ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘•™¥¹¥¥½¸¸€€€€€ÁÈ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€©ÕÉ”¸€€€€€€€€€€€€Ý¥Ñ €€¹¼±…‰•°€€€€€É•…Ñ•Ì(€€€€€€€€€€€€€€€€€ÁÉ•Ù¥½ÕÌ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Ñ…Ó¥µ•¹Ð(€€€€€€€€€€€€€€€ƒŠcŠq¥Ñ¥½¹…Éä€€€€€µ…µ•¸ƒŠp¨€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É”€©½¹¹»Št¥Ì„¸™½ÕÈµ‘¥¥Ñ¹Õµ‰•ÉÕÍ•(€€€€€€€€€€€€€€€µ…­”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€‘¥Ñ¥½¹…Éä¹…µ”(€€€€€€€€€€‰Ñ¡”Íåµ‰½°Ñ…‰±”Õ¹¥•ÍÌ(€€€€€€€€€€€€€€€Måµ‰½±Ì¸(€€€€€€€€€€€€€€€€€€€€iÌ‘•™¥¹•‘¥¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Õ™¥±•ÍÌèÑ¡•ä…É”(€€€€€€€€´€€€€€€€€€€€€€€€€•…¹¹½Ð€€€€€€€€€€€€€€€€€€€€€€€€‰”€€É•™•É•¹•ƒŠP€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…°Ñ¼Ñ¡”€€€€€€€€€€€€€€‰±½¬¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•áÁ±¥¥Ñ°è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ˆèˆ(€€€€€€€€€€€€€€€€€€€€‘•±…É•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Ì•¹ÑÉä‘•™¥¸è€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ååÕÍ¥¹œèƒŠaÑ¡”½±½¸¡…É…Ñ•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ•Éµ¥¹…Ñ½Èè€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì…ÁÁ•…È¥¸Ñ¡”‘¥Ñ¥½¹…Éä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡…Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹Ñ…ÍÐ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±…‰•°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á••••ÉÉÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á¥‘œ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€QÐ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥É”‰”€€€€€€€€€€€€€€€€€€€€…ÕÑ…¹”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…½”¥Ý••‘Ý¥Ñ¡Ñ…­”€€€‘¥É•Ñ¥Ù•Ì°Ñ¡”ëŠaÁÉ½œè(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í¡½Õ±€€€€€Á¥…•„€€€€€€€€€€ˆÁÉ½•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ð(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÈ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý•€€€d¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á•½Õ…Ñ”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡•…°±•Ñ¡”ƒŠa±½…°(€€€€€€€€€€€€€€€€€€€€€€€€€”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€€€€€€€ÕÉÉ•¹ÓŠd€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¥Ñ¥½¹…Éä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¥Ñ¥½¹…Éä¤¸€Ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•™•É•¹”€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡…Ì€€€€€€€€€€€¹½ÐÉ•Í‘±Ù•°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰••¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€Á…É•¹Ð‘¥Ñ¥½¹Í•Éä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì€€€€€€€€Í•…É¡•°€€€€€€€€€€€€€€€ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡•¸€€€€€¥ÑÌ€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á…É•¹Ð°€€€€€€€€€€€€€€€€€…É¸€€€€€ƒŠ
°À¸€€€€½¸°€€€€€Õ¹Ñ¥°€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±½‰…±‘¥Ñ¥½¹…Éä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡…œ¸€€€€€€€‰•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í•…É¡•¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%˜€€€€Ñ¡”€€€€€É•™•É•¹•¡…Ì€€€€€€€€€€€€€€€€€…Ñ¤€€€€€€€€€€€€€ƒŠa¹½Ð‰••¸€€€€€€€€€€€€€É•Í½±Ù•°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”¹Ù•Ì)½¼‘¥Ñ¥½¹…É¥•Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í•…É¡•¸(0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€}ÍÍ•¹‰±•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€UÍ•ÉÍÕÐ)É•…Ð(€€€€€€€Q¡”€€€…‰¥±¥Ñä‘•±…É”•¹ÑÉä¸Á½¥¹ÑÍ…¹(€€€€€€€€€€€€€…Í•¥ÍÑ…¹”(€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼€€€¡…Ù”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±½…°€€±…‰•±Í¥Ì¸€€½˜(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸€€€€€ÝÉ¥Ñ¥¹œ€€€€€€€µ½‘Õ±…È°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰±½¬€€€€€ÍÑÉÕÑÕÉ•)A…É…µ•Ñ•É¥é…Ñ¥½¸(€€€€€€€€€€€|(€€€€€€€€€€€€€€€€€€€€€€€€€€…¸€€‰”€€€€Ý•±°€€€€‘•™¥¹•€€€…¹€€€€€€€€€€€€€€€€€€€€€€€€€€½¹ÑÉ½±±•‰ä¤ÁÉ½¡¥‰¥Ð)Í•É•Í”¹Ñ¼€€€€€€€€€ÍÕ‰É½ÕÑ¥¹”€€€€€€€€€€€€€€€€Ñ•Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É¥•Ì¸(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™½±±½ÝÌè(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•á…µÁ±”Í¡½Ý¸¸€€M¡”¸ÕÍ”€À((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	eQ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð=5AI€A1I½Ý•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€]%Q!`(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9QH€€€€€M=UI(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%1¸€€€€€€€€€€€€€€€€€€€ôø((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€d€Ý½”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¨ø€€QIP%1(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	½Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€AQ1Ša19Q (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€AI=€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•±…É”M¡¥¹ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€A½¥¹Ñð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1€À±`¬´€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•Ð€€€€€€€M½ÕÉ”€€	åÑ”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5A€À±d¬€€€€€€€€€€€€€€€€€€€€€€€ô(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠQÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½µÁ…É•Q¼Q…É•Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	9€€€€€€€€€€€€€€€€€€€€%0€€€€€€€€€€€€Íè€€€€€€€€€€€€9½ÐÅÕ…°°€€€€á¥Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•É•µ•¹Ð½Õ¹ÓŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ù•Ì€€€€€€€€€€	9ÕÀ€€€€€€€€ƒ
À(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa1½½ÀQ ÄÄ¸½¹”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¬€€€€%0€€€€€€€€IQL€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€á¥ÑQ½ÕÉ¥¹œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa…±Í½…ÕÍ•ÌÑ¡”ÍÁ¥‰•ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰µ”ˆ€€€€€€€€€€€€€€€€€€€€€ƒŠq½ÁÈÑ¼€€€€€€€|(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”ÁÉ½•‘ÕÉ•¥ÌÑ•Éµ¥¹…Ñ•(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaÑ¡•Í•‘¥Ñ¥½¹„€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹½Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÅÕ¤(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Õ¹±•ÍÍÑ¡”½Ð½ÁÐèÑ•Ì…É”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€AÉ¥¹Ñ•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÕÉÉ•¹Ð±½…°ƒŠa…ÐÍ½…‰•ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹Ñ¡•¹Á¥½Ñ•…‘Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠqÑ¡É•Í (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¥Ñ¥½¹…ÉåÕ¹Ñ¥°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”±½‰…°‘¥Ñ¥½¹…Éä¡„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±½…±‘¥Ñ¥½¹…ÉäÕÀÑ¡É½Õœ((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´€€€€€€€€€€€€€…¹‘½¹±åÑ¡•¸é…Ñ”Ñ¡”(0€€€€ÍÍ•µ‰±•È€€€€€€€€€€€€€€€€€€€€€€€€€€€UÍ•ÉÌ€€€€€€€€Õ¥‘”((((€€€€€€€€€€€€€€€Q¡”€€€€€€€€€€€€€€€€€€€€€€½É‘•È€€€€€€€€€€¥¸€€€€€€€µÕ±Ñ¥Á±”€ÐÁÕ‰±¥Œ¸€€€€€€€€€€€€€€€€€€€€€€€‘¥Ñ¥½¹…É¥•Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É”€€€€€€€€€€€€€€€Í•…É¡•€€€€€€€€€€€€€€€€€€€€¥Ì€€€€€€€¹½Ð€€€ƒŠP(€€€€‘•™¥¹•¸€€5½É”ÁÉ•¥Í•±ä°€€€€€€ÁÕ‰±¥Œ‘¥Ñ¥½¹…É¥•Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É”€€€€€€€€€€€€€€€€¹½Ð€€€€€€€€€€€€€€€€€€€¥¸€€€€€€€•¹•É…°€€€€€€€€€€€€€€€€€€€€€Í•…É¡•(€€€€¥¸Ñ¡”Í…µ”€½É‘•È€€€¥¸€€Ý¡¥ €€ÁÕ‰±¥Œ‘¥É•Ñ¥Ù•Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÁÁ•…È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸€€€€€€€€€€€Ñ¡”€€€€€€€€€€€¥¹ÁÕÐ€€€€€€€€€€€€€ÍÑÉ•…´¸(¸¸€€Q˜‘ÕÁ±¥…Ñ”€€±…‰•±Ì€€€€…ÁÁ•…È€€¥¸½¹”½È€€€€€µ½É”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÕ‰±¥Œ€€€€€€€€€€€€€€€€€€€€€€€€€‘¥Ñ¥½¹…É¥•Ì°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¡¥ €€€€€€€€€€½¹”((€€€€Ý¥±°¸€€€€€€€‰”€€€€€€€€€€€€€€€€€€€€€ÕÍ•€€ƒŠa™¥¹…±±ä¸Ë¥Í½±Ù”Ñ¡”É•™•É•¹”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼¸€€€€€€€€€€€€€€€€€€€€€€€€¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Õ¹ÁÉ•‘¥Ñ…‰±”°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜¸Ñ¡”ÕÍ”½˜„ÁÕ‰±¥‘¥Ñ¥½¹…Éä¥Ì(€€€€•á…µÁ±”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í¡½Ý¸è€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP€€€€€€€€€€€€€€€€€€€€€€€€€€€Ì(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MÑ…ÉÐ€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1¥‰É…Éä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€°(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€AU	1%(€€€€€€€„ÀÌ(€€€€€€€€€€€ð((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€]I5L(€€€€€€€€€€€€•”ÈÐ(€€€€€€€€€€€€€€€€€€€€€€è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Èä¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÌÀ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ET(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€A=I1ET(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘ÀÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘ÈÐ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€]…É´MÑ…ÉÐ‘‘È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€àØ¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€9(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€ÀÈÀä	€ÈÐ€ä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€)MH¸€€€€€€€AI1´€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¼1¥¹”€€€€€€€€€€€€€€€€€€€€€€€€€••(€€€€€€€€€€€€€€€€ÀÈÁ€Ý€ÀÌ€äÈ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%5A]I5L€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠq	…¬Ñ¼	=L€´((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€EU0¸	•¥¸„ƒŠaEÕ…±¥™¥•ƒŠa	±½¬(€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€=”€Äà€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ùø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Ñ„(€€€€€€€€€€€€€€€€€ø(((((€€€€€€€€€€€€€€€€Q¡”€€€€€€€€€€€€€€€€€€€€‘¥É•Ñ¥Ù”¥ÌÕÍ•Ñ¼¸ƒŠaÍÑ…ÉÐ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€EU0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘…Ñ„€¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹Ñ•É¹…°ÅÕ…±¥™¥•(€€€€‘¥Ñ¥½¹…Éä¸€€€€€€€€€€€€€€€€€€€€€€€€Q¡”‘¥É•Ñ¥Ù”€µÕÍÐ¡…Ù”„±…‰•°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™¥•±Ý¡¥ Ñ”ÕÍ•…ÌÑ¡”€´(€€€€€¹…µ”€€€€€€€½˜€€€€€€€€€€€€€€€€Ñ¡”€€€€€ÅÕ…±¥™¥•€€€€€€€€€€€€€€€‘¥Ñ¥½¹…Éä¸€€€€€€€€€€€€€€€€€€€€Måµ‰½±Ì€€€€€€€€€€€€€€‘•™¥¹•€€€¥¹Í¥‘”½˜„ÅÕ…±¥™¥•(€€€€€‘…Ñ„€€€€€€€€€€€€€€€€€€€€ÍÑÉÕÑÕÉ”€€€€€€€€€€€€€€€€€µÕÍÐ€€€€€€€€€€€€€‰”€€€É•™•É•¹•€€€€€€€€€€‰ä€€€€€€€€€€€€€€€€€€€ÕÍ¥¹œ€€€€Ñ¡”¹…µ”½˜Ñ¡”Íåµ‰½°(€€€€€ÅÕ…±¥™¥•€€€€€€€€€€€€€€€€€€€€€€€€€€€‰äÑ¡”€€€€€€€€€€€€ÍÑÉÕÑÕÉ”€€€€€€€€€€¹…µ”¸€€€€€€€€€€€€€•á…µÁ±”€€€€€€€€€€€€€€€€€€€€€€½˜(€€€€€…¹€€€€€€¥ÑÌ€€€€€€€€€€€€€€€€€É•™•É•¹•Ì€€€€€€€€€€€€€€€€¥Ì¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í¡½Ý¸è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý•…±Ñ•¥…‘ðÍÑÉÕÑÕÉ”(€€€€€€€€€€€€€€€Øä€€€€€€€€€€€€€€€€€€€€€€€€ØÀÌ€ÔÔ€€€€€€€€€€€€€€€€€€€ÔÈ°€€€€€€€€€€€€€€€€€€€€€€1¸€€€€€€€€€€€€€€€€€€€€€€Y…±Õ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•ÐM•à(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I=I¹M`(€€€€€€€€€€€€€€€€€ÈÙ€€€€€€€€€€€€€€€€€€€€€€€àÄÐØ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5A€€€€€€€€€å¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M•”€€€€€€€€€€€€€€€€€€€€¥˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÔÌ¸¸¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¨€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
¬¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ù…¥±…‰±”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaI=I(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaEU0(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	H€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MÑ…ÉÐ(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ã
œ(€€€€€€€€€€€€€€€€€ÀÌÔÔ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥•±(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€àÌ¸55I5ƒ
¬ÄÀÀÈõø«
¬óŠsŠ`ë§Šc
¯¥H(€€€€€€€€€€€€€€€€ÀÌÕ€€€€€€€€€€€€€€€€€€€€€€€õ¤€€€€€€€€€€€€€£ŠqÝ”€€€€€€€€€€€€€€€€€€M`€€€€€€€€€€€ôI5€€€€€€€€€€‘€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
­=”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡ÑÍÐ©Ð«§
­(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€àØ¸€€€€€€€€€€€€€€€€€€€€€€€€9((((€€€€½ÌI5(€€€€€€€€€M…‘I•Í•ÉÙ”(€€€€€€€€€€€€€€€€€€€€€5•¹½Éä(€€€€€€€€€€€€€€€€€€€€€€€€€€	åÑ•Ì(€€€€€€€€€€€€€€€€€€€€€¥”ÕÍ•Ñ¼Ñ•Í•ÉÙ”Á±½¬…”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Ì((€€€€€€€€I5	‘¥É•Ñ¥Ù”(€€€€€€€€€€€€€€€€€ƒŠaQ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaµ•µ½Éä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´‰åÐ€€€€€€€€€€€€€€€Í˜(((€€€€€€¥¹¥Ñ¥…±¥é…Ñ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì€€€€€€€Á•É™½Éµ•€€€€€€€€€½¸€€€€€€€Ñ¡”€€€€€€É•Í•ÉÙ•€€€€€€€€€€€€€€€€µ•µ½Éä¸(€€€€€µÕÍÐ€€€€€€€€€€€€€€€™•Ð€€€€€€€€€€€€½¹Ñ…¥¸€€€€€€€€€€€€…¹ä€€€€™½ÉÝ…É€€€€€€€€€½È•áÑ•É¹…°€€€€€€€€€É•™•É•¹•Ì°€€€€…¹€€€€ÍÁ•¥™¥•ÌÑ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…”(((€€€€€±•¹Ñ €€€€€€€€€€€€€€€€€€€€€€€€€½˜€€€€€Ñ¡”€€€€€€€‰±½¬€€€€€€€€€€€½˜€€€€µ•µ½ÉåÑ¼€€€€‰”€€€€€€€É•Í•ÉÙ•¸€€€€M¥¹”€€€¹¼€€½‰©•Ð½‘”¥Ì(€€€€•¹•É…Ñ•°I5	‘¥É•Ñ¥Ù•Ì‘¼¹½Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•ÅÕ¥É”€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½‘”€´(€€€€€€€€€€€€ƒŠaM½µ”€€€€€€€½°…•Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹äÍÁ…”¥¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…”(€€€€½Q±…”MÁ…µÀ(€€€€€€€€€€€€€€±•”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™½±±½Üè(€€€€€€€€€€äÄÀÀ€ô·ŠSŠsŠc
­ø«Ša¤«§Šc
­MI€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì(€€€€€€€€€|€ÀÈÀÀÝ”•ä€€€	UI5ø€ÄÀÀÀÀ1…É”ƒŠa	Õ™™•ÈƒŠP(€€€€€€€Ø¸ÈÀƒŠaM•É”´€€M•Ð¥É•ÐA…•A…•Õ‘¼I•¥ÍÑ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€´€€€€€€€€€€€€€€€€€€€€€€€ƒŠP€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€ƒŠqQ¡”(€€€€€€€€€€€€€€€€€€€MQA‘¥É•Ñ¥Ù”ƒŠa¥ÌÕÍ•Ñ¼¥¹™½É´€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”…ÍÍ•µ‰±•È¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Áô€€ƒŠqÁÉ•ÍÕµ•(€€€€€€½¹Ñ•¹ÑÌ€€€€½˜€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€‘¥É•Ð¸€€€€€€€€€€€€€Á…”€€€€€€€€€€€É•¥ÍÑ•È¸€€€€€€€€€€€€€€€€€€€€Q¡¥Ì€€€€€€€€€€€€€€€€€€€€Ù…±Õ”€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰ä¸€€€€€€€Ñ¡”(€€€€€€…ÍÍ•µ‰±•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼€€‘•¥‘”€€€€€€€€€€€€€€€€€€Ý¡•Ñ¡•È€€€€€€€€€€€€€€‘¥É•Ð€€€€€€€€€€€½È€€€€€€€€€€€•áÑ•¹‘•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…‰Í½°è€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
¤½<(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘‘É•Í•¥¹œ(€€€€€€Í¡½Õ±€€€€€€€€€€€€€€€€€€€€€€€‰”€€€€•¹•É…Ñ•¸€€€€€€€€€€€€€€€€€€€Q¡”µ½ÍÐ€€€€€€€€€€€€€Í¥¹¥™¥…¹Ð•¥¡Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥ÑÌ€€€€€€€€€€€€€€€€€½˜€€€€€Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€•áÁÉ•ÍÍ¥½¹ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…±Õ±…Ñ¥½¹Ì¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”(€€€€€€™¥•±€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaÕÍ•‘™½È€€€€€€€€€€€€€€€€€…‘‘É•ÍÍ¥¹œ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•áÁÉ•ÍÌ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€UÍ•ÉÍÕ¥‘•|(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÍ•Õ‰±•È(€€€€€€€€€€€¡…Ù”€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•±½…Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÑÑÉ¥‰ÕÑ”€€€€€€€€€€€€€€€€€€€€€€€½˜€€…‰Í½±ÕÑ”¸€€€€€€€€€%¸…‘‘¥Ñ¥½¸°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(è(((€€€€€€€€€€€€€€€½¹Ñ…¥¹™½ÉÝ…É•áÑ•É¹…±É•™•É•¹•Ì€´€€½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô½”€€€€€ML((((€€€€€€€€€€€„€€€€€QÐ€¥Ì¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¥É•Ñ¥Ù—Ša¥¸ƒŠa¹¼„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaÑ¼¹Ñ•…±¥é”Ñ¡…Ð¸Ñ¡”MQA|(€€€€€€€€€€€€€€€€€€€€€€€€€€µÁ½ÑÑ…¹Ð¸(è€€€€€€€€€€€€€€…™™•Ñ„Ñ¡”è(€€€€€€€€€€€€€€€€€€€€€€€½¹Ñ•¹ÑÌ½˜Ñ¡”‘¥É•ÐÁ…”É•¥ÍÑ•È¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÑÑ…°€€€€€€€€€€€€€€€€€€%Ð¸Ñ”Ñ¡”(€ƒŠqÁÉ½É…µµ•ËŠtÉ•…Á½¹Í¥‰¥±¥Ñä€Ñ¼€¥¹ÍÕÉ”€€Ñ¡…Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€à€€€Ñ¡”€ÁÉ½Á•È€€Ù…±Õ•Ì€€…É”€€±½…‘•¸)ø€€€€€€Ñ¡¥Ì¸}•Í•É•È€€€€€€•ÕÑ¥½¸€€Ñ¥µ”¸€€ƒŠaQ¡”€‘¥É•Ñ¥Ù”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…™™•ÑÌ€€½¹±äÑ¡”€è€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•L(€€€€€€€€€€€€€€€Í½Ô€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=€€€€€€€¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÑÌ€á‘•¥Í¥½»ŠaÁÉ½•ÍÌ°•±”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜Ñ¡”ÕÍ”¸((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½µ”ƒŠqÑ••ÉÑ…°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘‘È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1Qøøá|(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1•…€€€ƒŠa5M@€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€L(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€QH±AH€1½…‘¥É•ÐA…”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MQA%Ñ•±±ÍÍ•¹‰±•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸€€€]%P€€€€€1€€€€€€€Q€€€€€€€€€€€€€€€€€€€€€€•ÐMÑ…ÑÕÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MI¸€€€€€€€€€€€€€€€€€€€€€€€€€€¡••¥Ù•Èè(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠSŠQ§ŠaÑ¥ÑÍÐè¨è«§
­M•¬(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	=€€€€]%P€ô€€€€€€€€€€€€€€€€€€€€€€Í½¼€€€€€€€€€€€€¥˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1ðQ­0=I…Ñ„…åÑ”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I½Ñ¡¥¹œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½µÁ…Ñ…‰¥±¥Ñä€€ƒŠa½ÁÑ¥½¹¡…ÌƒŠa‰••¸Í•Ð€¡•¥Ñ¡•É½¸»ŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=AP‘¥É•Ñ¥Ù”¤°€€Ñ¡”€€MQ@‘¥É•Ñ¥Ù”€ÕÍ•ÌÑ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í¥¡Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÑÌ½ÈÑ¡”Ù…±Õ”€€Ñ¼Í•ÐÑ¡”‘¥É•Ð¹Á…”(€€€€€€€€€€€€€€€€€€€™•…ÍÐ(€€€€€€€€€€€€€€€€€€€É•¥ÍÑ•È¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á•ÑÍñ…Ì(€€€}	••É•Ñ•Ðè(€€€€€€€	A€€€€€€€€€€€€€€€€€€€€€€€ô(€€€€€€€€€€€€€€€€€€€€ØØÈÄ)Y•”€€€€€€€€€€€€€€€€€€€Ñ¡”MÐ(((((€€€€€€€€€€€€€€€€€€€ƒŠq…Í•Ý…‰±•Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€1¥Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á•É…¹ƒŠ`à€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¹”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ð•…Ñ¥¹„½”(€€€ƒŠp€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹€Ðà•…”¸(€€€€€€€€´(€€€€€€€€€€€€€€€€€€€•¹•É…Ñ•¸ƒŠP((€€€€€€€€€€€€€€€€€€€Ñ¡”¹Õµ‰•È½˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ð€€€ƒŠaÁ•¥Ñ¥•°€€€€€€€€€€€€€¤(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹¥ÏŠtÉ”€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€¥Ð€€€€ÍÁ•¥™¥•Ì(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô(€€€€€€€€€€€€ØÈÈQP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ”ÕÍ•‘Í¡¥ÑÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaÑ¼€€€€€€€€€€€€€€€€€€€€€€€„€€€€€€€€Ñ¬€€€€€€€€€€€€½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…‰±”è(((((€€€€€€€€€€€€€€€€€€€1‘•Ñ¥¹œ¸€€€€€€€€€€€€€€€€€€ÄÄ€€€Ñ¡”€€€€€€€½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹½Ð‰••¸Í•±•Ñ••¥Ñ¡”‰ä…Á•¥™å¥¹ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ¥…¹(€€€€€€€€€€€Ñ¡”€€€€€€€€€€‰CŠˆ½ÁÑ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ¤€€±¥¹”½ÈÙ¥„Ñ¡”=AP‘¥É•Ñ¥Ù”±Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•ÁÑ¥½¸((+ŠP€€€€€€€€€€€€€€€€€€€Ñ¡”€QQ0‘¥É•Œ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì€€€…Ñ¥Ù”°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
ì €€¹•ÜÁ…”½˜(€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€ÁÉ¥µ•¥¹½˜Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€€€€Ñ¡•Ñ¹•ÜÁ…•¡•…(0€€€€€€€€ÍÍ•µ‰±•È€€€€€€€€€€€€€€€UÍ•ÉÌÕ¥‘”(((€€€€€€€€€€ÀÈÌUM(€€€€€€€™”ü(€€€€€€€€€€€€€€€€€€€€ƒŠp€€€€€€€€€€€€ø(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€UÍ•AÉ½É…´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Õ¹Ñ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M•Ñ¥½¸(€€€€€€€€€€€€€€€€ƒŠqÑ¡”èUM‘¥É•Ñ¥Ù•…ÕÍ•Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÍÍ•µ‰±•È(€€€€€€€½Õ¹Ñ•È€€€€€€€€€Í•Ñ¥½¸è€€€€€€€€€€€€€€€€€€ƒŠq9¼±…‰•°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼€€€€€€€€€€Í•±•Œ€€€€€€€€€€€€„¹•Ü€€€€€€€€€ÁÉ½É…´¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹…ä‰”ÍÁ•¥™¥•€€€€€€€€€€€€€€€€€½¸€€€€€€€€€€€€ÕÍ”(€€€€€€€½Á•É…¹ƒŠa™¥•±µÕÍÑ•¥Ñ¡•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰”„Í¥¹±”€€€…ÍÑ•É¥Í¬°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€œŒˆ€€€€€€€€€€€€€Ñ…Ñ•µ•¹Ð°…¹‘½˜Ñ¡”|(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=ÈÑ¡”(€€€€´€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
ì€€€€€€€€€€€€€€€€€€€¹…µ”€€€€€€€€€€€„¸(€ÁÉ½É…´½Õ¹Ñ•ÈÍ•Ñ¥½¸¸€€€€€€€%˜„¹…µ”¥Ì€€€€€€€€€€€€€€€Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÕÉÉ•¹ÐÁÉ½É…´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÁ•¥™¥•°(€€½Õ¹Ñ•ÈƒŠQÍ•Ñ¥½¸¥œµ…‘”Ñ¡”ÁÉ•Ù¥½ÕÌÁÉ½É…´½Õ¹Ñ•È(€€¹…µ•¸Í•Ñ¥½¸Ñ¡•¸‰•½µ•ÌèÑ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¥½¸°€€…¹Ñ¡”€€€€€€€€€€€€€€€€•”()…ÍÑ•É¥Í¬(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÕÉÉ•¹Ñ±ä€€€…Ñ¥Ù”ÁÉ½Èè€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Õ¹Ñ•È¸¸´Q˜…¸(€€€€€€€€€€€€¥ÌÍÁ•¥™¥•°Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ•Ù¥½ÕÌ€ÁÉ½É…´€€½Õ¹Ñ•ÈÍ•Œ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¸€€¥Ì€€µ…‘”Ñ¡”(€€€€€€€ÕÉÉ•¹Ñ±ä€€€€€´€€€€€€ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Ñ¥Ù”€€€€€€€€€€€€€Í•Ñ¥½¸¸¸¸€€€€€€€€€%˜€€€€€Ñ¡•É”€€€€€€€¥Ì€€€€€¹¼ÁÉ•Ù¥¼€€€€€€€€€€€€€€€€€€€€€€€•Ñ¥½¸°…¸•ÉÉ½È)5•ÍÍ…”€€€€€€€€€€€€€€€€€¥Ì€€€€€€€€€€€ƒŠa…¹Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€AÉ½‘Õ•€€€€€ƒŠaIM=1UQ€€€€€€ƒ
Œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Õ¹Ñ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ½É…´€€€€€€Í•±•Ñ•¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(((€€€…”(€€€•á…µÁ±”°€€€€€€€€€€€€€€€€€€µ ÁÕÉ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥”€½‘”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¥™™•É•¹Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ½•‘ÕÉ”É•™•É•¹•Ì„ÍÑ…Ñ¥Œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ•¹½Éä±½…Ñ¥½¹Ì¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€à…É•„¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™½±±½Ý¥¹œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”ÑÝ¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥…±±ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹¹•Ñ•(€€€€€€€M•Ñ¥½¹Ì€€€€€€€€€…É”€€€€€€€€€­•ÁÐ‘¥ÍÑ¥¹Ð¥¸µ•µ½Éä‰äÕÍ¥¹œµÕ±Ñ¥Á±”ÁÉ½É…´½Õ¹Ñ•ÉÌ¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|(´(((((€€€€€€€9½Ñ¥”€€€€€€€€€€Ñ¡…Ð€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€}Ñ•™•É•¹•ÏŠaÑ¼€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€‘…Ñ„¸€€€€€Í•Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¤¸€€€ÕÑ¥±¥é”(€€€€€€€…‘‘É•ÍÍ¥¹œ¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€L(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€È€€€€€€€€€€€€€€€€€€€€¬((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¥É•”€€€€€•Ì((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€È(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„°€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	•„€€€€€€€€€€€€A…¬„]½É(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠq„€€€€ÌØ€€€€€ƒ
À€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MÑÉ¥¹œ€€€€€€€€Ð(((((€€€€€€€€€€€€€€€€€ÈÐÅ(€€€€€€€€€€€€€€€€€ÈÐÅ€€€€€€€€€€€€€á(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡”€€€€€€€€€€€€€€€€Q	€€€€€€€€€€½Á”(€€€€€€€€€€€€€€€€€ÈÐÅ%€ÄÈÀÈ€Ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M”€€€€€ÀÀ¸€€€€€€€€€€€€€€€€€€€€€€A,1åà¸€€€€€ƒŠa=½I(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÑMQHad(€€€€€€€€€€€€€€€ ´ÈÐÅ€€€€€€€€€€€€Ø€ÈÀÀ(€€€€€€€€€€€€€€€€€ÈÐÈÄ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½À€€€€€€€€€€€€€18¸(€€€€€€€€€€€€€€€€€ÈÐÈÌ(€€€€€€€€€€€€€€€€€€€€€€€€€=(€€€€€€€€€€€€€€€€€€€€€€€€€ØàÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÈÀ€ôà€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I0ÓŠPôóŠQÏ
¬ñL(((€€€€€€€€€€€€€€€€ÈÐÈÔÈÜÀÐ€€€€€€€€€€€€€€€€€€€€€€ÄÀ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I4é
¬(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1=<°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€`¬(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	D1==@(€€€€€€€€€€€€€€ÈÐÈÜ€€€€€€€€€€€P<(€€€€€€€€€€€€€€€€€É¼Èä=€È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ä¸€€€€€€€€€€€€€€€€€MQ€€€€€=<°(€€€€€€€€€€€€€€€ ÈÐÈà€€€€€€€€€€€€€M(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%90(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÄÌ¸€€€€€€€€€€€€€€€==@€€€€€€€€H(€€€€€€€€€€€€€€€€ÈÐÈ´ÈØ€€€€€€€€€€€€€€€€L€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I4(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	I(€€€€€€€€Ñ”€€€€€€€€€€€€€€€€€€€åÌ¸€€€€€€€€€€€€€€€€€ (€€€€€€€€€€€€€€€€=½é”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€UMQ(€€€€€€€€€€€€€€€€ÀÀÉŒ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I5¥¬(€€€€€€€€€€€€€€€€ÀÀÈ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I5¸€ÌÈ(€€€€€€€€€€¸(((((€€€€€€€€€€€€€€€€€ÈØÈà€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€UM(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´€Ø´ÄÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€AU	1%(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%Q%=9Id€€€€€€€€€€€ƒŠqA½••Èˆ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è€€9<€€AI9P((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
¤´¬­ð´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠq5=YŠt(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€<ÄÀˆÁ•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Me5	=0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=U9QH(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€AI=I4¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠq	M=1UQŠt(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€A½‘‘•³Št(((((€€€€€€€€€€€€€€€€€€€€€€€¥ŠqMe5	=0(€€€€€€€€€€€€€€€€€€€€€€€€€€€€AQQI8(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠqM5A1ŠtÅ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÈÔMe5	=0(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¼(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÀØ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€••”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€L€€€€€€€€€€€€´€€€€€€€€¤(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1=L(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•Ì((€€€€€€€€€€€€€€€€€€€€€€€€´ô(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠqKŠt(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%Q%=9Id(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€QI==UI€€€€€€QI$€à€Ðè(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|M=0(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Ð((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MÉ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý”ð5¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€}MÉ…ÌÁÐ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½œ(((((€€€€€€€€€€€Q¡”(€€€€€€€€€€€™É½´(€€€€€€€€€€€€€€€€€€€ðÁÉ½É…´(€€€€€€€€€€€€€€€€Í…µÁ±”(€€€€€€€€€€€€€€€€€€€€€	(€€€€€€€€€€€€€€€€€€€€‘•¥µ…°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í¡½Ù”€¡Á…­•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥”9•MÕ‰¥½½Ð¥¹”©=5Hˆ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹Õµ‰”è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡•Ð¥ÌÕÑ•‘Ñ¼¸½¹Ù•ÉÑAÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É”QÕÐ((€€€€€€€€€€€¥¹Í•ÉÑ¥½¸€€€€€€½˜½µµ…Ì€€€€€€‘•¥µ…°¤¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼€€€€€€€€€€€€€€‘¥ÍÁ±…ä™½Éµ…Ð°½µÁ±•Ñ•Ý¥Ñ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€°‘½±±…ÈÍ¤€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘•¥µ…°Á½¥¹ÑÌ°€€€€€€€€€€€€€…¹€€Ý¡…Ñ•Ù•È¸€€€€€€€€€€€€Q¡¥Ì¸(€€€€€€€€´(€€€€€€€€€€€€¥±±ÕÍÑÉ…Ñ•ÍÍ•Ù•É…°½˜ƒŠaÑ¡•…Á…‰¥±¥Ñ¥•Í½˜ƒŠaÑ¡•M!QA(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÍÍ•µ‰±•È¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ½É•Ì€€€€€¹”(((((€€€€€€€€€€€Q¡•…‰•°M5A1…Ð„‘•™¥¹•Í…¸¹½É‘¥¹…ÉåÍåµ‰½°(€€€€€€€€€€€5%8(€€€€€€€€€€€€€€€€€€…±½¹œÝ¥Ñ €€€€€€€€€€€€€¥ÑÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹…ÁÁ•…ÉÌ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ù…±Õ”°€ÀÀÀÀ°Íµ…±°ÍÕ‰É½ÕÑ¥¹”5=Y¡…Ì‰••¸¥¹±Õ‘•°…¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€À(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠq‘••±•¹…Ñä(€€€€€€€€€€€ƒŠqÁ±…•€¥¸(€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€¥Œ‘¥Ñ¥½¹…ÉäÙ¥„Ñ¡”AU	1%ÍÑ…Ñ•µ•¹Ð…Ð(€€€€€€É•™•É•¹•€€€€€€€€ÁÕ‰°„(€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰ˆ¸ƒŠaQ¡”±…‰•°5=Y•”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸Ñ¡”‘¥Ñ¥½¹…Éä(€€€€€€€€€€€ƒŠa]%8¸(€€€€€€€€€€€€€€©AÀÀÀÄ¸€€€€€€€€ˆ€€€€MÔ€€€€¡”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¹½É‘¥¹…Éä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ù•¹Ð(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ…Ñ•µ•¹Ð…Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Íåµ‰½°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð€™½Õ¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠqˆ€Ñ•Éµ¥¹…Ñ•Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™½•Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•Ì(((((€€€€€€€€€€€€€€€€€Q¡•ÍÕ‰Ù…ÕÐ(€€€€€€‘¥Ñ¥½¹…Éä¸€¸(€€€€€€€AI=ÍÑ…Ñ•µ•¹Ð(€€€€€€€€€€€€€€€€€€€€€€€€¥”(€€€€€€€€€€€€€€€€€€€€€€€€€€€…Ð€‰ˆ‘•™¥¹•Ì„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5,€€€¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹±Õ‘•Ù¥„Ñ¡”1%ÍÑ…Ñ•µ•¹Ð…Ðµ•¹”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÕ‰±¥Œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Õ”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™½•‘ÕÉ”€€€€‘¥Ñ¥½¹…Éä€€€€¹…µ•ƒŠa5%8¹=5,(€€€ûŠPÍåµ‰¼ü€€€€€€µ5,€€¥¸€€ƒŠaÑ¡”ƒŠa±½‰…°ôè€€€€€€€©½¹…Éä¸Q¡”Íåµ‰½°‘•™¥¹¥Ñ¥½¸É•ÁÉ•Í•¹ÑÌ…¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹€€€„(€€€€€€€•áÁ±¥¥Ð€€€€€€€€€€€€€€€€€€€€€€…Ì‘•¹‘Ñ•‰äÑ¡”½Ñ½¸½¸Ñ¡”((€€€€€€€€€€€€€€€€€€€€€€€M½´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€U5,(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É”€À(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±½„((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
¬ÙÑ¡”ë
­ÁÉ½•‘ÕÉ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±…‰•°¸1…‰•±ÌÝ¥Ñ¡¥¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹…ÁÁ•…È½¹±ä¥¸‘¥Ñ¥½¹…Éä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”¸(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€È¹Ñ¡¥Ì¸(€€€€€€€€€€€€€€€€€€€€€€€€°(€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…t±…‰•±Ì€€€€€…É”%%Q…¹9aQÍ¡½Ý¸…Ð€‰ˆ¸(€€€€€€…‘‘¥Ñ¥½¹…°ƒ
ïŠq¥¹Ñ•É•ÍÑ¥¹œ€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€±½…°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ì((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=¹”(€€€€|Ñ¡”€€ÍÑ…¬€€‰äÍÕ‰É½ÕÑ¥¹”€€€€€€€€€€€€€€€€€€€€(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ù…É¥…‰±”€€€U01Ñ¡…Ð¥ÌÉ•…Ñ•€€€€½¸¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ù…É¥…‰±”€€€€¥Ì¸(€€€€€€€™É½µÑ¡”ÕÍ•ÈÍÑ…¬€€€€€€€€€€€€€€€€€€…Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á½¥¹Ñ•È°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaÍ¡½Ý¸€€…Ð€‰!L€€€€€€€€€€€€€€€€€€€…Ù”„••É¥”¹½™™Í•ÓŠuÉ•™•É•¹•€µ¡Ð(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5”(00€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M…¸•L(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”…”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á•”è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠq1%M% €€€€€€€€€€€€€M…¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€ˆµM €€€€51=YY!<(€€€€€€€€€€€€€€€€€€€µ•…	1Y(€€€€€€€€€€€€€€	1=YY!€€€€€€€€€€€€¡MY0€€1%=MeÍ…Õ‘…Ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
Q=% €€€€€€€€ƒŠq…LM€€€€€€€€€€€€€€€€€M<(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|(((((€€€€€€€€€€€€€€€M%%½Ù‡Š
±%Å (€€€€€€€€€€€€€€€€€€€€€€€€€€!%=9QPµ%%(€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠPµ5=9%9=9Q9=d(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MU%(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M1%%Õ…Ç
•¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1UY0(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5E9Y=Q%9%L(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MMY…­(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÐÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¥¼Å„€€=Y¥(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Y]%X€€€€€€€µ5=9Y=%%9=%L(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™¥™…‡Ša…ÑÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa¹Ñ‡ŠaL´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%9Y=1%9=%L(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1%<Å(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%Y(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”|¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠp(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M5OŠqÕ¹Å„(€€€€€€€€€€€€€€€€€%Q$€€M!=1L€€€€€€5=Y(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€]…¼¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=Pµ!=%(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÕÉ¼Å„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€M=91%9=(€€€€€€€€€€€€€€€UY%9=5(€€€€€€€€€€€€€M‘0(€€€€€€€€€€€!%%=MX€€€€€Q%±€€€€€€€]9=€€€€€€M€€€€€€€€•”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Õ…°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Éœ(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=IY=Q19(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=¬(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ø((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€e=M!(€€€€€€€€€€€€€€€€1…Ì(€€€€€€€€€€€€€1Y!(€€€€€€€€€€5]!1%Y(€€€€€€€€€9ä¸€€€€€€€€	=9Y=1%9=%L(€€€€€€€€€€€€€€€€€€€1=YY(€€€€€€€€€€€€€€€€€€€€€€€€!!0(€€€€€€€€€€€€€€€€€€€€€€€ƒŠa=]9hµ9=8€=5$(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5=Q (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€]…%9Q=(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1!%d(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€519Q=H(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É½Íä=Y%(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa1%=%(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9M%9=(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1%ÄÀ€€€€€€…Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9%Y (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%9Y=1Q9=QLè(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Y]!eL(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Ù…à(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Í¥Ù„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ……!<(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÅÔ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠq<ÅL(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€!E4(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€i=9Y=%$(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ù„€€€€€€€€€€€€€€€€€€€€€€5=0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€à(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=9QU1L(€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa=99hµ9=4€€€É„À€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€(€€€€€€€€€€€€€€ƒŠae9=% (€€€€€€€€€€€€€€€ƒŠq5=$(€€€€€€€€€€€€€€€€ƒŠqQÙå¹‰„€€19]9=L€€€€€€€€€€€€€€€€€€€€€%M]±„€€€€€€€€€ÄÌää€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í•Ø((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%9…9QQ…]=<(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘8(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa½ÝÍéh=]9h	•”€€€€€€€€€€€€€€€€€€Í•”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…P(€€€€€€€€€€€€€	ÅQ=9¸(€€€€€€•ÉÌ€ÄÈä(€€€€€€€€Ý…1=YUe9…„€0àÈÄ(€€€€€€€€€€€€€€€€€€€€€€€€€å¥„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½„(€€€€€€€€€€€€€€€€€€€€Q%1‘Ð!=U(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÄÈ€€€€]9¹9åd(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€119L(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€!=1M……¹¥Ì]=µ!<(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa½Ý…èµ9½Ü(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Ñ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€!=5(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…±…¥Í…Õ‘¥ÍÔ1M••”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…$(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€U/Šp(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9h(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MQ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÀÀÀÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€$‘°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
ŒÈÀÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=L(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
•hÀÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¼ÀÀ°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€]<(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€$(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô€€€€€€€€¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„Ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ôô(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
¤(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€P(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M•…Ì€€€€€€€€€€€€€€€€€€€UL…”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÀäÀÀÀÈè(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô½”((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‡Š`(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1%=Q€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í](€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ù…Í¹ÑÙ…É¥ÑÙ…É…Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹Ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Ñ„UYI%¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€……Å€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„©…±(€€€€€€€€€€€€€€€€€€€€€€€€€€]1=Ù]!<¸(€€€€€€€€€€€€€€€€€€€€9U1%Y(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	•¥½É„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%=IH(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%ILŠa=Y%€€€€€€€€€€€€I<€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€€€€E=%a…8(€€€€€€€€€€€€€€€€€€€€€€€%MUL(€€€€€€€€€€€€€€€€€€€€€€1%<€€€€á‡Šd(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý!=Q!„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€M5=1L¸(€€€€€€€€€€€€€€€€€€€€€€€ô¡¤©ÍPQ=MX€€€5Q„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaQ]Ý•É½…„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	=P€€€€QM(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€i=ÕY=QL(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ie<(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1%-!=%L(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Í%M±…Ì]…Ì€€€å=ÕÑÐÍ„€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…I!8(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½……áÑ¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠqQ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…½„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€!(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥‘¹50€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í„(((€€€€€€€€€€½Ì(€€€€€€€€€€€€€€€¥á…¸(€€€€€€€€€€€€€€€ƒŠqÁä(€€€€€€€€€€€€€€€€€]=P(€€€€€€€€€€€€€€€…!0€%=QH(€€€€€€€€€€€€€€€€€€€€€!€€ÄÄäã
”(€€€€€€€€€€€€€€€€€€€€€€€€ÕÍ(€€€€€€€€€€€€€€€€€€€€€€€ƒ
­UMMÙ…ÉI(€€€€€€€€€€€€€€€€€€€€€€€€€€€€1…(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€i=9Y=1Q9=$(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€-„……½Ðôå…Ë
­Íå•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€59P(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
­5H(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÄÀÀÁÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠ
°äÀÀ´ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±…‘‘„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠq½¸Ì…”…Í (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€á¥ÍQ9%L€€€€€€=9P(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9Šu•Ý…à¹”Ñ…Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÅÝ½¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
¬ô(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…„(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÝÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¸€€€ÀÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÄäÀÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€å¼ÀÀˆ°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
ŒÐÀÀÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ôô(((((€€€€€€a4€ƒŠaÕÑ…¹½Íä€€€€€€€€€€€€€€€€€€ƒŠq	%Í¥…ÌQ%=Md(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5=0Ý…!=%€€€€€€€€€€€€€€5¥(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¼€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠp(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	18((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•œ(€€€€€€€€€€½Ì(((€€€€€€€€€•”€€€€€€€€€€€½H(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½•Ì(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9U51%Y‘5!=Q$(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÈÀää(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ô(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¨(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=9QÕÌ…Á”ƒŠq…Ý½ÉÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¨€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¨(((((€…Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	==8(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…á„(€€€€€€€€€€€€€€€€€€€ÈÃ
À”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¤((Ã
Àä€€€€hÃ
Ái(€€€€€€µi<ÐÃŠ
°(€€€€€€€	=Q(€€€€€€€€=	=M(€€€€€€€€€€=€€€ÈÀˆ(€€€€€€€€€€€€€A=1(€€€€€€€€€€€€€€€ÈÃ
ÀáÐ(€€€€€€€€€€€€€€€•”((((€€€€€€€€€€€€€€€€€€€€€€ƒŠq=Ñ±•ä(€€€€€€€€€€€€€€€€€€€€€€€€½ÉÁ…•	½ÉÌ(€€€€€€€€€€€€€€€€€€€€€=Q= (€€€€€€€€€€€€€€€€ÈÀØ€µœÀ•”(€€€€€€€€€€€€€€€€€€€€€€€	=I€€	=ML(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	”¸€€€€€€€ÈÃ
À(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÜÃ
ÀØä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÈÃ
ÀÐä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý½•Ì°€€€€€€€€<ÀÀ¸ÑÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÀÀÀÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÜÀÀ€€€€ÀÀÀÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€é½¼ÀÅÌÀÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÜÈÃ
À€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M•… (((€€€€€€€€€€€€€€€€€€€ÀáÍ•Œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ä(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ääÀÀ(€€€€€€€€€€•¤•••Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
ˆ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„€€€€€€€€€€€€€€€€€€€€€€€œ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(Ñ„(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÑÐ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€äÐ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€e”(”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=d(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Ì=M=T(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´€€€€€€€€€€…Í¤(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€©“ŠaL€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µä(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•ÍÌ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€H(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=H(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
—
•…Ð€ÈÀ„Á”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q”€å(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	ä(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€àÀ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ•„äÀ¸Èà(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á•¹Ì(((((ä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…L€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€i<ƒ
ŒÀÀØ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€å(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ù(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€å”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•…µÁ•1%-i<(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÍÌ(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M½””€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÄÀÀÁ‘‘”(€€€€€„ä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…½”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€QP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¥•5=P(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÉÌ(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€!19=\(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=Xƒ
Œä)!”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Xà(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ç
”ÄàMh(€€€€€€€€€€€€€€€€•”•P€€€€€€€€€€€€€€€€ÀÉ…Ü€€…œ¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€LäÈ±YX9(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€åé}€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa	= (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=(ô€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ML((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÄÀÃ
ŒÈÀÀ€€€€€½<½œM”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q<(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€”(((€€€€€€€€€€€äÀÀ€äÐÀÁQ=<€ÐØÀÀ(€€€€€€€€€€€€€€€€àÀÁY=€€ØÔÀÀ(€€€€€€€€€€€€€€€€€€€€€€€€ÀÁ=<(€€€€€€€€€€€€€€€€€€€€€€€€€€ØÔÀÀ€€€€€€€ØäÀÀÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÌÀÀäÀÁ„äÀÀ´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÔäÀÁ„äÀÀ€LÄÀÀA1L(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1hÀÁÀÀ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€iQ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q=<$ÀÀ€€½¹”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÄàÀÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÈäÀÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÉLÀÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÄàÀÀ€€€€€€€€€€€€€€¸((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÈäÀÀÀ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q”°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´€€€€€€€ð((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€å”¹…”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý½”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½L(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=0(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€È(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q½•Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=I€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”€€€€€€€€€€€€€€€€€€€€€€€€€€€µ•”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=H((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¥”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€AÀ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	I(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€AL°(€€€€€€€€€€€€€€€€€€€€€¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í…”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=H%(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½L(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€åä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ML€€€€€€€€€€€€€€•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ð(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ”€€€€L(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ì(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½•”••”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=8(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€••Q”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¬€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€U(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I€€€€€€€€€€€€€€€€€€€€€€€=P€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ü••”•”½<(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q•Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%”€•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•…”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”…œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
À(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€D((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Í”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M…¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•œ(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰½Ì€••”€€€€€€€€€€€€ÁL€€€€€€€€€I(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€••M”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€!Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ML(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€A”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MÈ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M1Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•Ì€€€€€€€€„€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=8(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¼(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¼(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€••”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€••Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M¼(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ø(€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€måä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ML(((((€€€€€€€€€€€€€€€ €€€„€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¤€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¼((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=H€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ €€€€€€€5€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¼((€€€€€€€€€€Ñ„€€€€…Ì€€€]½Ý…Ì€€€€€€€=L(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
¸´€€€€€ €€€€€€€€€„€€€€€€€€€€€€€€€ €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„	­L(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¼(((€€€€€€€€€€€€€€€€€€€€€€ÕÉ…¥Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M=9L€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€• (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Ì(((((€€€€€€€€€€€€€€€€ƒŠqµÕ…Ù„(€€€€€€€€€€€€€9%51L€€€€€€€ƒŠq•”(€€€€€€€€€€€€€€€€€€€€€€€€€••Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á…Á…å„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€í9…Ñ„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€991Y€€€åå…œ€AY$(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5%9%=(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M½É„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
Ã
À(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=<(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•Ì(€€€€€€€€€€€€Ý•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€••”€€€€€€€Ý”€€ÍÔ€€€€€€€€€€€€€€€€€€€€€€€5%9P(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€L((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€••”€€€€€€€€€€€€€€€€€€…”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”(€€€€€€€€€€€€€€€€€€=9Q1L(€€€€€€€€€€€€€€€!%=9LÄ€YMP(€€€€€€€€€€€€€€€€€€€€ƒŠa=9Q1L(€€€€€€€€€€€€€€€€€€€€€€€€€€•”€€€€€€€€€€€€€€€€E9¸Àä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…„€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”°(€€€€€€€€€€€€€€€€€€€€€€€€€9Q1L€€€€€•”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M!€€€€€ÄÄÀÄ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Y€µ…ÕÉ…¹½Õ…¹Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€!0€€€¹‘¥¹¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€É•”€€€€€€€€€€•”€€€€€€Á•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9]10€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”½Ý¹½Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%M!0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1%=%(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	I=€€€€€€€€€€%=8(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€1¹…‘¹¼€€€€€€€€€€€€€€€€€M5!0€…ä°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý½Õ½…µ…Ì€€€€€€•”…É½É„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=%9$(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€äÅL51<(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠ`(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠq„À(((€€€€€€€€€€€€€€€€€Í=]Ý…¥½ÙÕÙ¥¼(€€€€€€€€€€€€€€€€€€€€=(€€€€€€€€€€599]1%Y(€€€€€€€€€€€€€9U11Y(€€€€€€€€€€€€€€€€€€€€€€€€Å!0(€€€€€€€€€€€€€€€€€€€€€€5!0€€€Ù„€€€€€€=0€€€=19P(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€19(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9$•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€AA@(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹Ñ…ä€€€€€€€€€€€€€€€€€€€€€€€€=0(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=9Q1L€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÐÀ€€€€€€€€½”(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”ÐÀ=0€€€€€€€€€€€€€€€€€€€€€€€€€€…L€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€U…9<ˆ(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q=a19=€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€1]!9=€‰I= €ô=9P(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”€€€€M1MÀ€€€€€€€€€€€€€€1X(0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€UÍ•ÉÌÕ¥‘”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÍ•µ‰±•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€à´À€µÍÍ•µ‰±•ÉÉÉ½È€€€€€€€5•ÍÍ…•Ì¸(€€€€½L(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ø((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaQ¡”…ÍÍ•µ‰±•È€€€€Á•É™½ÉµÌè•áÑ•¹Í¥Ù”•ÉÉ½È¡•­¥¹Ý¡¥±•ÁÉ½•ÍÍ¥¹œ€€€€€€€€€€€€¥¹”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í½ÕÉ”€€¥¹ÁÕÐ¸€€€€Q¡”Á¡¥±½Í½Á¡å‰•¡¥¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”¥¸•ÉÉ½È€€€¡…¹‘±•È€€€¥Ì€€€€Ñ¡…ÐÑ¡”€•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÍÍ•µ‰±•È€€€€€€Í¡½Õ±…ÍÍ¥ÍÐ€€Ñ¡”ÁÉ½É…µµ•È€€€€€€€…Ñ…å¥¹œ½ÕÐ€½˜€€€ÑÉ½Õ‰±”¸€€=˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½ÕÉÍ”°€€€€€€€€€€€€€€€€¹¼€€€€€€€…ÍÍ•µ‰±•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹Ð­”„ÁÉ½É…µµ•ÈÝÉ¥Ñ”Á•É™•Ð€¸ÁÉ½É…µÌ°ÁÕÑ¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ð€€€€€…¸€€€€€€€€€€€€€€€€€¡•±À(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¥¹œ…Ìµ…¹ä™…Õ±ÑÌ€€€€€€€€€‘”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•ÌÁ½ÍÍ¥‰±”°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰ä€€€€€€€€€€€…¹‰äµ…­¥¹œ(€€€€€€€€€€€€€€€€€€€€€€€Õ¹±•Í¸½‘¥¹œÁÉ…Ñ¥•Ì‘¥™™¥Õ±Ð¸Q¼Ñ¡¥Ì¸•¹°Ñ¡”…ÍÍ•µ‰±•È€€€€€€™½É•Ì(€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€€€•ÉÑ…¥¸€€€€€½¹Ù•¹Ñ¥½¹Ì°€€ÍÕ …ÌÉ•ÅÕ¥É¥¹œÁÉ½•‘ÕÉ”•¹ÑÉäÁ½¥¹Ñ•ðÑ¼‰”(€€€€€€€€€€€€€€€€€€€€€€•áÁ±¥¥Ñ±ä(€€€€€€€€€€€€€€€€€€€€€€€‘¥Ñ¥½¹…É¥•Ì¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘•±…É•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘…Ñ„É•™•É•¹•Ì€€€¥¹Ñ½„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÑÕÉ”€€ÁÉ½¡¥‰¥Ñ¥¹œ€€€€€€€€€•Ì€€€€€€€€€€€€ÁÉ¼(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±…É”•áÑ•¹ÐÍ•±˜((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	•±ð€µø€€€€€½Éµ…Ð(€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5•ÍÍ…”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠqI• é•ÉÉ½È¸™••Ì¥¹±Õ‘•Í½±Õµ¸(€€€€€€€€Ñ¡…Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑ…Ñ•µ•¹ÐÍŒ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹Õ±‰•ÈíÝ¡¥¡¥”Ñ¡”½±Õµ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý…Ì±½½­¥¹œ…ÐÝ¡•¸Ñ¡”•ÉÉ½È€€Ý…Ì‘•Ñ•Ñ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€°(((((€€€€€´€€€€€€€€€€€€€€€€€€€€€€€€Q¡¥Ì½±Õ´€€€€€ÙØ€€€€€€€€€€€€€€€Á½¥¹Ñ”€…Ð€€Ñ¡”•¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Éµ…±±å½”¡½Ý•Ù•È°¥¸•ÉÑ…¥¸€€€½˜€€€€€€€€€€Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”¸Íåµ‰½°½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•áÁÉ•ÍÍ¥½¸™½Õ¹Ñ¼‰”•ÉÉ½Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€•á•ÁÑ¥½¹…°…Í•Ìì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½±Õµ»ŠQ½Õ¹Ñ•Éµ…ä‰•Í•Ù•É…±½±Õµ¹Í‘¥™™•É•¹ÓŠaÑ¡…¸Ñ¡”¥Ñ•Ì¥¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•ÉÉ½È¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¸€Ñ¡”‘•ÍÉ¥ÁÑ¥½¹½˜ƒŠaÑ¡”¸•ÉÉ½Èµ•ÍÍ…•Ì±Ñ¡”Ñ•É¸€‰Á½¥¹Ñ•‘¥Ñ•¸ˆ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•™•ÉÌÑ¼Ñ¡”¥Ñ•´€€€€€¥¹œÑ¡”½±Õµ„½Õ¹Ñ•È¸ÍÍ•µ‰±•È•ÉÉ½ÉÌ¡…Ù”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰••¸€€€€€€€€€€€€‘¥Ù¥‘•€€€€€€€€€€€€€€€€€€¥¹Ñ¼€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9½Ñ•Ìì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÍÍ•Ìè€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÕÑ¥½¹Ì±]…É¹¥¹Ì°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MÑÑ½É”°(ƒŠPÍ…ÍÑ•ÉÌ°(€€€€€€€€€€€¥»Šd(€€€€€€€€€€€€€€€¥¹•É•Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥„€€€€€€€€€€€€€€€€€€€€€€½˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½É‘•ÈèƒŠaÍ•™Ù•ÉÑÑäè(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Í”(((+
¤€˜(€€€€à¸È€µ9½Ñ•Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠq9½Ñ•Í…É”¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”ƒŠa…•‘•¹‰±…È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡…ÏŠtÁ¥Í•Ìè„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Õ¹±¥­•±å½Á•É…Ñ¥½¸¹Ý•(€€€€€€€€€½¼(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¡•¸°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ù…±¥ƒŠq‰ÕÐ€€€€€€€€€€€€€€€€€€€€•Ì((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½È•á…µÁ±”°¥Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥”€€€€•¹Ñ¥É•±ä€€€€€€€€€€€Ù…±¥€€€€Ñ¼€€€€ÕÍ”€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹‘¥Ñ¥½¹…°€€€€€€€€€€€€€€€€€€€€€€‰É…¹ ¥¹”ÕÑ¥½¸Ý¥Ñ €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¸€€€€€½™™Í•Ð€€€€€€€€€€€€€€½˜€€é•É¼¸€€M¥¹”Ñ¡¥Ì€€€€€€€€€€€€€€€€€€|(€€€€€´€€€€€€€€€€€€€€€€€€€€€€€€Ù•ÍÕ±ÑÌ€€€€€€€€€€€€€€€€€€€€€¥¸€€€ÑÝ¼¥‘•¸€€°‰É…¹ €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á…Ñ¡Ì°€€€€€€€€€€€€Ñ£¤€€€€€€€€…ÍÍ•µ‰±•È€½¹Í¥‘•ÉÌÑ¡”€€€€€€€€€€€€€€€€€€€€€€ô(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€}|(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Õ¹±¥­•±ä¸½Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…Ñ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡¥Ì•¹•”€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€€¹½Ñ”€€€€€€€€€€€€€€€€€€€€ƒŠa=™™Í•Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€i•É¿Št€€€€€€€€€€€€€¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ½‘Õ•¹½”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É•¹•ÌM••…¹•¬)½”(€€€€€	´…ÕÑ¥½¹5•ÍÍ…•Ì(€€€€Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€•”°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÑÑ¥½¹Ì´…É”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¡•¸€€€€€€€€€€€€€€€€€€€€€€ƒ
¬ƒŠa½¹‘¥Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”…ÍÍ•µ‰±•É¡…Ì‘•Ñ•Ñ•€€€€€€€€€€½Á”(€€€€€€€€„€€€€€€€€€€€€€€€€€€€€Ñ¡…Ñµ…äÁÉ½‘Õ”Õ¹”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™•ÑÌ¸Q¡•Í”€€€€€€€¹½Éµ…±±ä½ÕÈ€€€€€€€€€€€€€€€€€µ•ÍÍ…•Ì€€€€€€€€€€€€€€€€€€€€€ØàÀÀ(€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™½È€€€€€€€€€€€€É½ÍÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÍÍ•µ‰±•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Ñ¥¥±ä¥¹ÍÑÉÕÑ¥½¹Ì¸½È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•á…µÁ±”°Ñ¡”(€€€€‘µÍÑÉÕÑ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	ƒ
ˆ€€€€€€€€€€€€€Ñ¥Á…É”€€€€€€€€€€€€€€€€€€€€€€Ñ¼¤‘½•Ì¹½Ð•¹•É…Ñ”„€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ•µ½Éä€€€É•™•É•¹”ƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¡•¸€€€€€€€€€€€ÉÕ¸€€€€€€€€€½¸€€€„€€€ØàÀÃŠaÁÉ½•ÍÍ½È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¡¥±”Ñ¡”€€€€€€€€€€€€€€€€€€€€€€É½ÍÌ€€€€€€…Í••µ‰±•¥¹•ÑÉÕÑ¥½¹Ìµ…­”(€€€€€€€€€€€€€€ÕÍ”€€€€€€€€€€€€€€€€€€€€€€€€½˜€€€€€€€½¹”€€€€€€€€±•Ù•°€€€€€€€€€€€ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€Íå…Ñ•´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”ÍÑ…¬¸ƒŠaQ¡•…ÕÑ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1•”€€€€€€€€€€€€€€€€ƒŠaUÍ”½˜(€€€€€€€€€€€€€€€Ð€€€€€€€€€€€€€€MåÍÑ•µMÑ…¬‰!•Á•¹”è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5•ÍÍ…•Ì(((((€€€€…”(€€€€€€€€€€€€€€€€€€€´à¸Ñù]…É¹¥¹œ(€€€€€€€€€€€€€€€€€€€€€€€€€]…É¹¥¹œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¤(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ½‘Õ•€€]¥•¸ƒ
¬½¹Ñ¥Ñ¥½¹¡•Í‰••¹‘•Ñ••°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Ì(€€€€€€€€€€€€€€€€€€€ÉÑ¡…Ðµ…ä€€€€€€€€€€€€€€€€€€€€€€ÁÑ½‘Õ”¸Ñ¥¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥ÑÌ¸½È¸€€€€€€€€€€€…¸¥¹ÍÑÉÕÑ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•á…µÁ±”°Ó
Œ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€°(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€€•¹•É…Ñ¥½¸½˜…¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¥¡Ð‰¥Ð€€€€€€€€€€€€€€€€€€Ù…±Õ”€…¹Ñ¡”•áÁÉ•ÍÍ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÕÁÁ±¥•€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡…Ð€€€€€€€€€€Ù•±Õ”€€€€€€€€€€€€¡…Ìµ½É”Ñ¡…¸•¥¡Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥Ñ”€€€€€€€€€½˜Í¥¹¥™¥…¹”°¥Ðµ…ä½È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ…ä¹½Ð(€€€€€€€€€€€€€€€€€€½¹ÍÑ¥ÑÕÑ”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¸€•ÉÉ½È¸€€%¸Ñ¡¥Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Í”((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý½Õ±(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠq¡•µ•Ñ¥…Ù”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”Ý…É¹¥¹µ•¹•…”€€Y…±Õ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€}	•½¹•¹••Ì‰µ•Ñ•É•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€”(0€€ÍÍ•µ‰±•È€€€€€€€€€€€€€€€€€€€€€UÍ•ÉÌ€€€€€€€€Õ¥‘”(((€€€à¸Ô€€€€€€€€€ø(€€€€€€€€€€€€€€€€€€€€€ÉÉ½È€€€€€€€€€€€5•ÍÍ…•Ì(€€€€€€€€€€€€€€€€€€€ÉÉ½È(€¥¹Ù…±¥€€€€€€€€€€€€€€€€€€‰ÕÐ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ•ÍÍ…•Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹½Ð¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É•ÁÉ½‘Õ•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹••ÍÍ…É¥±ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¡•¸€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€…ÍÍ•µ‰±•È€€€€€€€€€€€€€€¡…Ì€€€€€‘•Ñ•Ñ•€€€€€€€€€€€€…¸ð)}¹ÍÑÉÕÑ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€É•™•É•¹•Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™…Ñ…°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¸Õ¹‘•™¥¹•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹‘¥Ñ¥½¸¸€€€€€€€€€€€€€€€€½È€€€€€€€€•á…µÁ±”°€€€€€€Å˜€€€€€€€€…¸)MÑ…Ñ•µ•¹Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Íåµ‰½°°€€€€€€€€€Ñ¡”€€€€€€€½‘”€€€ÁÉ½‘Õ•€€€€€€™½È€€€€€€€€€€€€€€€€Ñ¡¥ÌƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹Ù…±¥(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•ÉÑ…¥¹±ä€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰ÕÐ€€½Ñ¡•È€€€€€€€€ÍÑ…Ñ•µ•¹ÑÌ€€€€€€€€€€€€…É”€Õ¹…™™•Ñ•¸€€€€€€€€€€€€€€€€€€€€%¹|(Ñ¡¥Ì€€€€€€€€€€€€€€…Í”€€€€Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€µ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•ÉÉ½È€€€€€€€€€€€€€€€€ÍÍ…”€€€‰U¹‘•™¥¹•)Ý½Õ±€€€€€€€€€€€€€€€€‰”€€€€ÁÉ½‘Õ•¸€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý•Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Måµ‰½°€€€€€€€€I•™•É•¹•‘¥¸€€€€€€€€€€€€€€€€€€áÁÉ•ÍÍ¥½¸‹ŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I”€€€€€€€€€€€€€€€€€€€€€€€½”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠQÌ(((((€€à¸Ø€€€€€€ø(€€€€€€€€€€€€€€€€€€€€¥Í…ÍÑ•È€€€€€€€€€€€€€5•ÍÍ…•Ì(€€€€€€€€¥Í…ÍÑ•È(½¹‘¥Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ•ÍÍ…•Í…É”€€€€€€€ÁÉ½‘Õ•‘Ý¡•¸Ñ¡”…ÍÍ•µ‰±•È¡…Ì‘•Ñ•Ñ•„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ø(((((€€€€€€€€€€€€€€Ý¡¥ (½È€€€€€€€€€€€€€€€•á…µÁ±”°€€€€€€€€€€€€€€¥˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¥±±…ÕÍ”½‘”€ÍÕ‰Í•ÅÕ•¹Ñ±åÁÉ½‘Õ•Ñ¼‰”¥¹Ù…±¥¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((MÕ‰Í•ÅÕ•¹Ð€€€€€€€€€€€€€€€€€€€€€€±…‰•±Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¥±°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Íåµ‰½°Ñ…‰±”½Ù•É™±½ÝÌ€…Ù…¥±…‰±”€µ•µ½Éä±…±°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™•µ…¥¸Õ¹‘•™¥¹•€€€€€€€€€€€€€€€€€€€€€…¹€€€€¹½Ð€€€€‰”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á±…•¥¸Ñ¡”€€Íåµ‰½°(Ñ…‰±”¸€€€€€€€€€€€€€€€€€€€Q¡•É”¥Ì(½ÉÉ•Ð¸€€€€€€€€€€€€€€€€€€€€Q¡”‘¥Í…ÍÑ•È€€€€€€€€±¥ÑÑ±”¡…¹”½˜Ñ¡”€€€€€€€€€€€€€€€€€€€ÁÉ½‘Õ•€€€€€€€€€€€½‘”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰•¥¹œ…¹åÝ¡•É•¹•…È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ•ÍÍ…”€€€€€€€‰%¹ÍÕ™™¥¥•¹Ð€€€€€€€€€€€5•µ½ÉåÑ¼•™¥¹”Måµ‰½°ˆ¥Ì(ÁÉ½‘Õ•¸((€€€€€€€€€€€€€€€€€€€Q¡”(ÁÉ½‘Õ•(€€€€€€€€€€€€€€€€€€€€€€€€€€€™½±±½Ý¥¹œ€€€€€€€€€€€€€€Ñ…‰±”¥Ì¸€€€€½µÁ±•Ñ”±¥ÍÐ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠq½˜Ñ¡”•ÉÉ½Èµ•ÍÍ…•Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰äÑ¡”€€€€€€€€€€€€€…ÍÍ•µ‰±•È¸Q¡•ä¡…Ù”‰••¸±¥ÍÑ•¥¸¹Õµ•É¥…°½É‘•È½˜(•ÉÉ½È€€€€€€€€€€€€€€…¹€€€€€…É”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹½Ð€€€€€€€€€€€€€¹••Í•…É¥±äÉ½ÕÁ•‰ä™Õ¹Ñ¥½¸½È…ÕÍ”¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ü(0€¸(€€€€€€´(((((€€€€€€€€€ÉÉ½È(€€€€€€€€€€€€€´ƒŠaU¹‘•™¥¹•(€€€€€€€€€€€€€€€€€€´(((€€€€€€€€€€€€€€€€€€€5¹•µ½¹¥Œ(€€€€€€€€€€€€€€€€€€€€€€€€€=Á•É…Ñ¥½¸¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½‘”€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(((((•”(€€€€€€€€€€Q¡•…ÍÍ•µ‰±•È(€€€€€€€€€€€€€€€€€€€€½Õ±‘¹½Ð€€€€€€€€€€€€™¥¹€€€Ñ¡•Á½¥¹Ñ•€€€•´¥¸€Ù•¥Ñ¡•È„)…¼€€€€€€€¥Ñ”¸€€µ¹•¹¥½¹¥ŒƒŠaÑ…‰±”€€½È€€¥¸€€Ñ¡”µ…É½‘¥É•Œè€€€€€€¥Ù”¹¼µ½Á„(€€€€€€€€€€¥¹ÍÑÉÕÑ¥½¹Ìè(€€€€€€€€€€€€€€€€€€€€…É”•¹•É…Ñ•‘¥¸‘•Ü½˜Ñ¡”µ•¹‘•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡ÝÁ‘•Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€L((((€€€€€€€€€€ÉÉ½È¸(€€€€€€€€€€€€€€AÉ•Ù¥½ÕÍ±ä(€€€€€€€€€€€€€€€€€€ð(€€€€€€€€€€€€€€€€€€€•™¥¹•(€€€€€€€€€€€€€€€€€€€€€€€€Må¹‰½°(1ÍÍ•µ‰±•È€€€€€€€€€€€€€€€€€€UÍ•ÉÌ€€€€€€€€€€€€€€€€€€€€Õ¥‘”((€€ÄÀ€€€€€€€€€€€€€€€€€€€€€ÉÉ½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1…‰•°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•ÅÕ¥É•‘™½È€€€€€€€€€€€€€€€€Q¡¥Ì€€€€€€€€€€€€€=Á•É…Ñ¥½¸€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€€€€€€Q¡”¸€€€€€ÕÉÉ•¹Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑ…Ñ•µ•¹Ð€€€€€€€€€€€½¹Ñ…¥¹Ì€€€€€€€€€€€€€€€€€…¸€€€€…ÍÍ•µ‰±•È€€€€€€€€€€€Ñ¡…Ð„¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¥É•Ñ¥Ù”(€€€€€€€€€€€€€€€€€€ø(€€€€€€€€€€€€€€€€€€€€€€€€€•…ÕÑÉ…Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±…‰•°…¹¹½¹”€€€€€€€€€€€€€€€€€€€¡…Ì€€€€€€€‰••¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÁ•¥™¥•¸(€±°(€€€€€€€€€ÉÉ½È=Á•É…¹‘I•ÅÕ¥É•€€€€€€™½ÈQ¡¥Ì=Á•É…Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´((((€€€€€€€¸ƒŠqQ¡”ÕÉÉ•¹Ð¸ÍÑ…Ñ•¹•¹Ð½¹Ñ…¥¹”…ÍÍ•µ‰±•È‘¥É•Ñ¥Ù•Ñ¡…Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¸(((€€€€€€€€€•ÅÕ¥É•Ìé…¸½Á•É…¹…¹€€€€€€€€€€€€€€‰••¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•Á•¥™Ñ•ð€€€€€€€€€•Ì€€€€€€€€€€€€€€€€€€€€€€€¹½¹”€€€€€¡…Ì((€€€€€€€€ÉÉ½œƒŠq%¹Ù…±¥(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€ƒŠpÄÈ€€€€€€€€€€õø(€€€€€€€€€€€€€€€€€€€€€€€€€€€Q•Éµ¥¹…Ñ½È€™½È%¹‘¥É•Ñ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€Q¡•ð…ÍÍ•µ‰±•È€€€€€€€€€…ÑÑ•µÁÑ¥¹œ€€€€€€Ñ¼ÁÉ½•ÍÌ¸€€…¸¸ƒŠa½Á•É…¹€€€€€Ý…Ì((€€€€€€€€MÁ•¥™å¥¹œ¥¹‘¥É•Ð…‘‘É•ÍÍ¥¹œ€€€€€Ý¡•¸€€€Ñ•Éµ¥¹…Ñ½È€€€¡…É…Ñ•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€Ý…Ì€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€•¹½Õ¹Ñ•É•€€ÁÉ¥½È€€€€€€€€€±½Í¥¹œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹‘¥É•Ñ¥½¸€€€‰É…­•Ð¸€€€€€€€€€€€€€€€€€Ñ¼€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|(((€ƒŠpÄÌà(€€€€€€€€€€€€€€€€€€€€€€ÉÉ½È´I•¥ÍÑ•ÉÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9½Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M…µ—ŠaM¥é”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€UÑÉ…¹Í™•É½È•á¡…¹”¥¹ÍÑÉÕÑ¥½¸ÍÁ•¥™¥•‘ÑÝ¼(€€€€€€€€€€€€€€€€€€€€€Ñ¡…Ð€€€€€€€€€€€€€€€€€€€Ý•É”€€€€€€€€€€€€€€€€€€€€¹½Ð€€€€€€€‰½Ñ €€€€€€•¥¡Ð€€€€€€€€€€€€€€‰¥Ð€€€€€€€€€€½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰½Ñ Í¥áÑ••¸‰¥Ð„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•¥ÍÑ•ÉÌ(€€€€€€€€€€€€€€€€€€€€€É•¥ÍÑ•ÉÌ¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€ÄÐ€€€€€€€€€€€€€€€€€ÉÉ½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M¥¹¥™¥…¹•¥¸ƒŠa%µµ•‘¥…Ñ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5½‘”(€€€€€€€€€€€€ø´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½É•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¹Ù…±¥((€€€€€€€€€€€€€€€€€€€€€¸€€ƒŠa½Ã¥É•¹ÍÁ•¥™å¥¹œ€€€‘µµ•‘¥…Ñ”€€€€€…‘‘É•ÍÍ¥¹œ…±Í¼¹ÍÁ•¥™¥•(€€€€€€€€€€€€€€€€€€€€€„€€€€€™½É•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í¥¹¥™¥…¹”¸€€€€€€€%µµ•‘¥…Ñ”€€€€€µ½‘”¸((€€€€€€€€€€€€€€€€€€€€€µÁ±¥¥Ð±Ý¥Ñ €€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹ÍÑÉÕÑ¥½¸¹‰•¥¹œÁÉ½•ÍÍ•¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M¥¹¥™¥…¹”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	½”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q”(€€€€€€€€€€€€€€€€€€€€€]…É¹¥¹œ€€´¥É•ÑI•™•É•¹”€€€€€€5…ä€€€€	”%¹Ù…±¥(€€€€€€€„(€€ÅL€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€¸€€ƒŠa½Á•É…Ñ¥½¹ÕÍ¥¹œ€€€ð…¸ƒŠa…‰•½±ÕÑ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…‘‘É•Í•¥¹œ…½”¡…Ì…¹”(€€€€€€€€€€€€€€€€€€€€€½Á•É…¹Ñ¡…Ð€€™½É•Ì€€‘¥É•Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…‘‘É•ÍÍ¥¹œ¸€€€€€€€€€€€€€€€€€€€€€€Q¡”…ÍÍ•µ‰±•È€€€€€€€€€€€€€€€€€€€€€¡…Ì(€€€€€€€€€€€€€€€€€€€€€‘•Ñ•Éµ¥¹•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡…Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€È(€€€€€€€€€€€€€€€€€€€€€Ñ…É•Ð€€€€€€€€€€€€€€€€€€€€€€€€€…‘‘É•ÍÌ¸€€€€€€€€€€€€€€€€€€€•áÑ•¹‘•€€€€€€¥ÌA•…µ¥É•°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…‘‘É•ÍÍ¥¹œ€€€€™¼èÉ•… è€€€€€€€€€€€€€€€€€€€€€€€€€€ì€€€€€€€€€€€€€€€€€€€€€ƒŠP(((((€€€ÄØ€€€€€€ƒŠP(€€€€€€€€€€€€€€€€€€€€€ÉÉ½È€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¹‘•à€€€€€€€€€€€€	…”€€€€€€¡¥¥•Ñ•°è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•ÅÕ¥É•(€€€€€€€€€€€€€€€€€€€€€%¹‘•á•(€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa…‘‘É•ÍÍ¥¹œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|Ý…ÌÍÁ•¥™¥•±‰ÕÐ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…”¹¥Ñ”(€€€€€€€€€€€€€€€€€€€€€‘•Í¥¹…Ñ½È¸™½±±½Ý•‘Ñ¡”½µµ…Ì¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”°€€€€€€€€€€€€€€€€€€€€…”(((((€€0Ü€€€€€€Íµ”(((€€€€€€€€€€€€€€€€€€€€ÉÉ½ÈAÉ•‘•Œ%¹Ù…±¥(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¹‘•á¥¹œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¥Ñ¡AH(€€€€€€€€€€€€€€€€€€€€ƒŠq%¹‘•á•…‘‘É•ÍÍ¥¹Ý…Ì¤ÍÁ•¥™¥•‘Ù…‘„¸Ñ¡”Á•ÍÑ”•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((´€Äà(€€€€€€€€€€€€€€€€€€€€ÁÉ•‘•É•µ•¹Ð(€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€AÉ½É…´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ½‘”°‰ÕÐ(((€€€€€€€€€€€€€€€€€€€€€ÉÉ½È´AÉ•‘•Œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Õ¹Ñ•È¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€É•¥ÍÑ•È‘•…¥…¹Ñ½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M¤€€€€€€€€€€€€€€€€ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¹‘•á¥¹œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q…Ù…±¥ÕµÕ±…Ñ½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Ñ™•Ð(€€€€€€€€ô€€€€€€€€€€€€€€€€€€€€€€€€€€ø((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¥Ñ ((€€€€€€€€€€€€€€€€€€€€€%¹‘•á•ƒŠQ…‘‘É•ÍÍ¥¹œ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÕÍ¥¹ŸŠaÑ¡•ð}•¥ÍÑ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠqÍÁ•¥™¥•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý…Ì(€€€€€€€€€€€€€€€€€€€€€ÁÉ•‘•É•µ•¹Ð€€€€€€‰ÕÐ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ½‘”¸€€€€€…¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½™™Í•ÐÝ…Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÕµÕ±…Ñ½Èè(€€€€€€€€€€€€€€€€€€€€€ÍÁ•¥™¥•è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Ì(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô	€ô(1„€€€€€½”€€€€€€€€€Á•¹”(€€€€€€€€€€€€€€€€€…‘(€€€€€€€€€€€€€€€€€€€µ½‘”(€€€€€€€€€€€€€€€€€€€€€€€€Ý…ÏŠqÍÁ•¥™¥•€‰½Ñ (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaÕ‰¥¹œè(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É…±••È½”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”((€€€€€AÉ•‘•É•µ•¹Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™”((€€€}|€€€€€€´…¹Ñ¡”É•¥ÍÑ•È€€€€€€€€µ½‘”»ŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á½ÍÑ¥¹É•µ•¹Ð(((((€€€€€€€€€€€€€€€€€€€€€€€”¬M¥¹”Ñ¡¥Ì€€€€€€€€€€€‰”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹•å…ÉÑ•Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í™•¥…¹ä(€€€€€$€€€€€€„(((((€€€€€€€€€Ñ¡•½ÕÑ½µ—Šd(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€L(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€œ(((((€€€€€€€€€€€€€€€€€½˜Ñ¡”)…À‘¤(€€€€€¥¹Ù„(1ÍÍ•µ‰±•È€€€€€€€€UÍ•ÉÌ€€€€€€€€€€€€€€Õ¥‘”((((€€€€Èä€€€€€€ÉÉ½È€€€€€€€€€€€€€€€€€€€€€€€€%¹‘•á¥¹œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ø(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MÁ•¥™¥•€€€€€€€€€€€€€€€€€€€€€€€€€Ý¥Ñ €€€€€€€€€€€€€€€€€%µµ•‘¥…Ñ”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘‘É•ÍÍ¥¹œ(€€€€€€€€€€€€€%µµ•‘¥…Ñ”€€€€€€€€€€€€€€€€€€€€€€€€€…‘‘É•ÍÍ¥¹œ€€€€€€€€€€€€€€€€€€€€µ½‘”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰ÕÐ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý…Ì€€€€€€€€€€€€€€€€€€ÍÁ•¥™¥•°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¸€€€€€€€€€€¥¹‘•à(€€€€€€€€€€€€É•¥ÍÑ•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘•Í¥¹…Ñ½È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý…Ì€€€€€€€€€€€€€€€€€±½…Ñ•€€€€€€€€€€€€€€€€€€€€€€€€€€½È€€€€€€€€€€€€€€€¥µÁ±¥•¸€€€€€€€€€€€€€€€€€€€‰ä€€€€€€Ñ¡”(€€€€€€€€€€€€•áÁÉ•ÍÍ¥½¸¸((€€€€ÌÀ€€€€€€]…É¹¥¹œ€€€€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5…á¥µÕ´€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9Õµ‰•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9•…Ñ¥Ù”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9•…Ñ•€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼€€€€€€€€€€i•É¼((€€€€€€€€€€€€]¡¥±”€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€€…ÍÍ•µ‰±•È€€€€€€€€€€€€€€€€€€€€€€Ý…Ì€€€€€€€€€€€€€€€€•Ù…±Õ…Ñ¥¹œ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¸€€€€€€€€€€•áÁÉ•ÍÍ¥½¸°€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€µ…á¥µÕ´€€€€€€€€€€€€€€€€€€€€€€€¹•…Ñ¥Ù”€€€€€€€€€€€€€€€€¹Õµ‰•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÑÝ¿ŠeÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý…Ì€€€€€€€€€€€€€¹•…Ñ•¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•ÍÕ±¥¹œ(€€€€€€€€€€€€½µÁ±¥µ•¹Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Ù•É™±½Ü€€€€€€€€€€€€€™½É•€€€€€€€€€€€€€€€€€€€€„€€€€€€€€é•É¼€€€€€€€€€€€€€É•ÍÕ±Ð¸((€€€€ÌÄ€€€€€€ÉÉ½È€€€€€€€€€€€€€€€õø((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=Á•É…Ñ½È€€€€€€€€€€€€€€€€€€€MÑ…¬€€€€€€€€€€€€€=Ù•É™±½Ü((€€€€€€€€€€€€Q¡”€€€€€€ÕÉÉ•¹Ð€€€€€€€€€€€€€€€€€€€€€€€•áÁÉ•ÍÍ¥½¸€€€€€€€€€€€€€€€€€½¹Ñ…¥¹Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…Ñ½ÉÌ€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹•ÍÑ•€€€€€€€€€€€€€€€€Ñ½¼¸€€€€€€€€€‘••À(€€€€€€€€€€€€™½È€€€€€€Ñ¡”€€€€€€€€€€€€…ÍÍ•µ‰±•È€€€€€€€€€€€€€€€€€€€•Ù…±Õ…Ñ½È€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼€€€€€€€€€€Á…ÉÍ”¸(€€€€ÌÈ€€€€€€ÉÉ½È€€€€€€€€€€€€€€ƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Y…±Õ”€€€€€€€€€€€€€€MÑ…¬€€€€€€€€€€=Ù•É™±½Ü((€€€€€€€€€€€€Q¡”€€€€€€€€€€€€€€€€ÕÉÉ•¹Ð€€€€€€€€€€€€€€€€€€€€•áÁÉ•ÍÍ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡…Ì€€€€€€€€€€€€€€€€€€Ñ½¼€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ…¹ä€€€€€€€€€€€€€€€€€€€Ñ•ÉµÌ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€…ÍÍ•µ‰±•È€€€€€€€€€€€€€€€€€€€€€€€€€€•Ù…±Õ…Ñ½È€€€€€€€€€€€€€€€€Ñ¼€€€€€€€€Á…ÉÍ”¸((€€€€ÌÌ€€€€€€ÉÉ½È€€€€€€€€€€ø((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=Á•É…Ñ½È€€€€€€€€€€€€€€€€€€€¹½Õ¹Ñ•É•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=ÕÐ€€€€€€€€€½˜€€€€€€€€€€€€½¹Ñ•áÐ((€€€€€€€€€€€€Q¡”€€€€€€…ÍÍ•µ‰±•È€€€€€€€€€€€€€€€€€€€€€€€€€€Ý…Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á…ÉÍ¥¹œ€€€€€€€€€€€€€€€€€€€€€…¸€€€€€€€€€€€€€€•áÁÉ•ÍÍ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹€€€€€€€€€€€€€€•áÁ•Ñ•€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€Ù…±Õ”€€€€€€€€€€€€€€€€€€€€Ñ½­•¸€€€€€€€€€€€€€€€€€€€€Ý¡•¸€€€€€€€€€€€€€€€€…¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ•Éµ¥¹…Ñ½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…Ñ½È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý…Ì(€€€€€€€€€€€€•¹½Õ¹Ñ•É•¸((€€€€ÌÐ€€€€€€ÉÉ½È€€€€€€€€€€€€€€€€€€€€5¥ÍÍ¥¹œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€ø((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I¥¡Ð€€€€€€€€€€A…É•¹Ñ¡•Í•Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸€€€€€€€€áÁÉ•ÍÍ¥½¸(€€€€€€€€€€€€Q¡”€€€€€€Á½¥¹Ñ•€€€€•áÁÉ•ÍÍ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡…Ì€€€€€€€€€€€€€µ½É”€€€€€€€€€€€€€€€€€€±•™Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡…¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á…É•¹Ñ¡•Í•Ì(€€€€€€€€€€€€É¥¡Ð€€€€€€€Á…É•¹Ñ¡•Í•Ì¸((€€€€ÌÔ€€€€€€ÉÉ½È€€€€€€€€€€€€€€€€€€€€Q½¼€€€€€€€€€€€5…¹äI¥¡Ð€€€€€€€€€€€€€€€€€€€€€A…É•¹Ñ¡•Í¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€ø((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸€€€€€€€€áÁÉ•ÍÍ¥½¸(€€€€€€€€€€€€Q¡”€€€€€€€€€Á½¥¹Ñ•€€€€€€€€€€€€€€€€€€€€€€€€€•áÁÉ•ÍÍ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€¡…Ì€€€€€€€€€€€€€€µ½É”€€€€€€€€€€€€€€€€É¥¡Ð€€€€€€€€€€€€€€€€€€€€Á…É•¹Ñ¡•Í•Ì€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡…¸(€€€€€€€€€€€€±•™Ð€€€€€€€€Á…É•¹Ñ¡•Í•Ì¸(€€€€ÌØ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¹Ù…±¥(€€€€€€€€€€€€ÉÉ½È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€	¥¹…Éä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€ø´(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=Á•É…Ñ½È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸€€€€€€€€áÁÉ•ÍÍ¥½¸((€€€€€€€€€€€€Q¡”€€€€€€€€€Á½¥¹Ñ•€€€€€€€€€€€€€€€€€€€€€€€€€¡…É…Ñ•È€€€€€€€€€€€€€€€€€€€€€€€ÍÑÉ¥¹œ€€€€€€€€€€€€€€€€€€€€€€€€€€Ý…Ì€€€€€€€€€€€€€€€€€•¹½Õ¹Ñ•É•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸€€€€€Ñ¡”(€€€€€€€€€€€€½¹Ñ•áÐ€€€€€€€€€€€€€€€€€€€€€€€½˜€€€€€€€€„€€€€€€€€‰¥¹…Éä€€€€€€€€€€€€€€€½Á•É…Ñ½È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹€€€€€€€€€€€€¥Ì€€€€€€€€€€€€¹½Ð€€€€€€€€€€€€€€€€€Ù…±¥(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
¤(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„€€€€€€€€€€€€€€€€€€€€€€€€€‰¥¹…Éä(€€€€€€€€€€€€½Á•É…Ñ½È¸((€€€€ÌÜ€€€€€€ÉÉ½È€€€€€€€€€€ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¹Ù…±¥€€€€€€€€€€€€€€€€€€U¹…Éä€€€€€€€€€€=Á•É…Ñ½È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€áÁÉ•ÍÍ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…”è((((€€€€€€€€€€€Q¡”€€€€€€€€€€Á½¥¹Ñ•€€€€€€€€€€€€€€€€€€€€€€€€€¡…É…Ñ•È€€€€€€€€€€€€€€€€€€€€€€€ÍÑÉ¥¹œ€€€€€€€€€€€€€€€€€€€€€€€€€€Ý…Ì€€€€€€€€€€€€€€€€€•¹½Õ¹Ñ•É•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸€€€€€Ñ¡”(€€€€€€€€€€€½¹Ñ•áÐ€€€€€€€€€€€€€€€€€€€€€€€½˜€€€€€€€€€„€€€€€€€€Õ¹…Éä€€€€€€€€€€€½Á•É…Ñ½È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹€€€€€€€€€€€€€€€€€€¥Ì€€€€€€€€€¹½Ð€€€€€€€€€€€„€€€€Ù…±¥€€€€€€€€€€€€Õ¹…Éä(€€€€€€€€€€€=Á•É…Ñ½È¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€à´Ø€€€€€€€€€€€€ø(0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠqÍÍ•µ‰±•ÈUÍ•ÉÌ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Õ¥‘”((((Ìà€€€€€õø(€€€€€€€€€€€€]…É¹¥¹œ€€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€UÍ”€€€€€€€€½˜€€€€€€]$€€€€€€€€€¥Ì€€€€€€¹½Ð€€€€€€€€€€ÅÕ¥Ù…±•¹Ð€€€€€€€€€€€€€€€€€€€€€Ñ¼€€€€]$((€€€€€€€€€€€€€€€€€€€€€ØàÀÀ€€€€€€€€€€€€€€]$5¹•µ½¹¥Œ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É½ÍÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡…Ì€€€€€€€€€€€€€€€‰••¸€€€€€€€€€€•¹½Õ¹Ñ•É•€€€€€€€€€€€€€€€€€€€€€€€…¹(€€€€€€€€€€€€…ÍÍ•µ‰±•€€€¥¹Ñ¼€€€€„½¹‘¥Ñ¥½¹•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý…¥Ð€€€€€€¥¹ÍÑÉÕÑ¥½¸¸€€€€€€€€€€€€€€€€€€€€€€€9½Ñ”Ñ¡…Ð(€€€€€€€€€€€€Ñ¡”€€ØàÀÀ¥¹ÍÑÉÕÑ¥½¸€€€€€€Í•ÅÕ•¹”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9=@ì€€€€€€€€€€1$ì€€€€€€€€€€]$ì€€€€€€€€€€€Í¡½Õ±€€€€€€€€€€€€€€€€‰”(€€€€€€€€€€€€µe•Á±…•€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¥Ñ €€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€ØàÀä€€€€€€€€€€€€€€€€¥¹ÍÑÉÕÑ¥½¸€€€€€€€€€€€€€€€€€€€€€€]%0€‘¸€€€€€€€€€€€€€€€€€€€€€€€Q¡”(€€€€€€€€€€€€É½ÍÍù…ÍÍ•µ‰±•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í•ÅÕ•¹”€€€€€€€€€€€€€€€€€€€½˜€€€€€€€¥¹ÍÑÉÕÑ¥½¹Ì€€€€€€€€€€€€€€€€€€€€€€€€…¸€€€€€€€€É•ÍÕ±Ð€€€€€€€€€€€€¥¸€€€€€€€€…¸(€€€€€€€€€€€€€¥¹Ñ•ÉÉÕÁÐ€€€€€€€€€€€€€€€€€€€€€€€€€€€€½ÕÉÉ¥¹œ€€€€€€€€€€€€€€€€€€€€€€€€€…™Ñ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€•á•ÕÑ¥½¸€€€€€€€€€€€€€€€€€€€€½˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€€€€€1$(€€€€€€€€€€€¥¹ÍÑÉÕÑ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰ÕÐ€€€€€€€€‰•™½É”€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€]$¸(€Ìä€€€€€€€€€¥Í…ÍÑ•È€€€€€€€€€€€€€€€€€€€€ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¹ÍÕ™™¥¥•¹Ñ5•µ½ÉäÑ¼•™¥¹”Måµ‰½°(€€€€€€€€€€€€€Q¡”€€€€€€…ÍÍ•µ‰±•È€€€€€€€€€€€€€€€€€€€€€€€€™½Õ¹€€€€€€€€€€€€€€€Ñ¡…Ð€€€€€€€€€Ñ¡•É”€€€€€€€€€€€€€€€Ý…Ì€€€€€¥¹ÍÕ™™¥¥•¹Ñµ•µ½Éä¸ƒŠaÑ¼(€€€€€€€€€€€€€¥¹Í•ÉÐ€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€±…‰•°€€€€€€€€€€€€€€€ƒŠa½˜(€€€€€€€€€€€€€Ñ…‰±”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”ÕÉÉ•¹Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑ…Ñ•µ•¹Ð¥¹Ñ¼Ñ¡”Íåµ‰½°(€ÐÀ(€€€€€€€€€€€€¥Í…ÍÑ•È%¹ÍÕ™™¥¥•¹Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ø(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5•µ½Éå1¥‰É…Éä%¹±ÕÍ¥½¸(€€€€€€€€€€€€Q¡”…ÍÍ•µ‰±•È™½Õ¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹±ÕÍ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡…Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™¥±”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹ÍÕ™™¥¥•¹Ðµ•µ½ÉäÑ¼¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡•É”€€€€€€€€€€€€€€€Ý…Ì(€€€€€€€€€€€€½Á•¸€€€€€€€€€€Ñ¡”±¥‰É…Éä(€ÐÄ€€€„(€€€€€€€€€€€€ÉÉ½È€€€€€€€€€€€€€€ø((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1¥‰É…Éä€€€€€€€€€€€€€€€€€€€€¥±”€€€€€€€€€€½Õ±9½Ð€€€€€€€€€€€€€€€€€€€€€€€€	”€€€€=Á•¹•((€€€€€€€€€€€€€Q¡”€€€€€€ÍÁ•¥™¥•±¥‰É…Éä™¥±”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¥€€€€€€€€¹½Ð€€€€€•á¥ÍÑ½¸‘¥Í¬°½ÈÑ¡•É”(€€€€€€€€€€€€Ý…Ì€€€€€€€€€€‘¥É•Ñ½Éä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥™…¥±ÕÉ”½˜Ñ¡”½Á•¸½¸(€€€€€€€€€€€€€€€€€€€€€€€„€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•ÉÉ½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•ÍÕ±Ñ¥¹œ(€€€€€€€€€€€€€Ñ¡”€€€€€€±¥‰É…Éä€€€€€™¥±”¸((€€€€€€€€€€€€ÉÉ½È(€ÐÈ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1¥‰É…Éä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥±”MÁ•¥™¥…Ñ¥½¸%¹Ù…±¥(€€€€€€€€€€€€€Q¡”€€€€€€€€€€™¥±”€€€€€€€€€€€€€€€ÍÁ•¥™¥…Ñ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑ…Ñ•µ•¹Ð€€€€€€€€€€€€€€€€€€€€€€Ý…Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±¥‰É…Éä(€€€€€€€€€€€€¥¹Ù…±¥¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€ÐÌ€€€€€€€€€ÉÉ½È€€€€€€€€€€€€€€€€€€1¥‰É…Éä€€€€€€€€€€€€€€€€€€€€¥±”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MÁ•¥™¥…Ñ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•ÅÕ¥É•((€€€€€€€€€€€€€Q¡”€€€€€€±¥‰É…Éä€€€€€€€€€€€€€€€€ÍÑ…Ñ•µ•¹Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•ÅÕ¥É•Ì€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™¥±”€€€€€€ÍÁ•¥™¥…Ñ¥½¸¸(€ÐÐ(€€€€€€€€€€€€]…É¹¥¹œ(€€€€€€€€€€€€€€€€€€€´1¥‰É…Éå%¹±ÕÍ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9Õµ‰•ÉÌ€€€€€€€€€€€€5…ä	”€€€€€€€€€€€€€€€€%¹Ù…±¥((€€€€€€€€€€€€Q¡”…ÍÍ•µ‰±•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¥±°€€€€€€€€€€€…±±½Ü€€€€€€€€€€€€€…¹ä€€€€€€€€€€€¹Õµ‰•È€€€€€€€€€€€€€€½˜€€€€€€€€¥¹±ÕÍ¥½¸€€€€€€€€€€€€€€€€€€€€€™¥±•Ì°(€€€€€€€€€€€€¡½Ý•Ù•È°(€€€€€€€€€€€€€%˜(€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹±ÕÍ¥½¸€€€€€€€€€€€€€€€€€€€€½Õ¹Ð€€€€€€€€€€€€€€€¥Ì¸€€€ÑÝ¼€€€€€€‘•¥µ…°€€€€€€€€€€€€€€‘¥¥ÑÌ±½¹œ€¸´(€€€€€€€€€€€€€€€€€€€€µ½É”€€€€€€€€€€€€€€€Ñ¡…¸€€€€€€€€€ää€€€€€€¥¹±ÕÍ¥½¹Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É”€€€€€€€€ÕÍ•°€€€€€€€€€Ñ¡”(€€€€€€€€€€€€Ý¥±°€€€€€€€€€€¹¼€€€€€€±½¹•È€€€€€€€€€€€€€€€‰”€€€€€€€Ù…±¥¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹•±ÕÍ¥½¹¹Õµ‰•È(€ÐÕ|€€€€€€€€]…É¹¥¹œ€€€€€€€€€€€€€€€€€´((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5Õ±Ñ¥Á±ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÕÍ•‘QÝ¿ŠdÌ€€€€€€€€€€€€€€€€€€€€€€€€€½µÁ±•µ•¹Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=Ù•É™±½Ü€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”(€€€€€€€€€€€€Q¡”€€€€ÁÉ½‘ÕÐ(€€€€€€€€€€€€½¹Ñ…¥¹•€€€€€€¥¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÑÝ¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í¥áÑ••¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í¥áÑ••¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹Õµ‰•ÉÌ€¸€€€€€€€€€€€€€½Õ±(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹½Ð€€€€€€‰”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•ÍÕ±Ð»Šd€€€€€€€€€€€€€€€€€€€€€€±•…ÍÐ€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP(€€€€€€€€€€€€Í¥¹¥™¥…¹Ð€€€€€€€Í¥áÑ••¸€€€€€€€€€‰¥ÑÌ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜€€€€€€€€Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý…Ì€€€€€€ÕÍ•€€€€€€€€€€…Ì€€€€€€Ñ¡”€€€€€€´(((€€€€€€€€€€€€É•ÍÕ±Ð¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaÁÉ½‘ÕÐ(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€áøÜ€€€€€€€€€€€ø(1ÍÍ•µ‰±•È€€€€€€€€€UÍ•ÉÌ€€€€€€€€€€€€€€€€Õ¥‘”((((€€€€ÐØ€€€€€€€]…É¹¥¹œ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ù¥‘”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€i•É¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€Q¡”€€€€€€€€€‘¥Ù¥Í½È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ù…±Õ”€€€€€€€€€€€€€Ý…Ì€€€€€€€™½Õ¹€€€€€€€€€€€€€€€€€€€Ñ¼€€€€€€€€€€€€€€‰”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€é•É¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÍÍ•µ‰±•È(€€€€€€€€€€€€¡…Ì€€€€€€€€€€ÍÕ‰ÍÑ¥ÑÕÑ•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€µ…á¥µÕ´Á½Í¥Ñ¥Ù”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹Õµ‰•È€€€€€€€€€€€€€€…Ì€€€€€€€€€€Ñ¡”€€€€€€€€É•ÍÕ±Ð¸((€€€€ÐÜ€€€€€€€ÉÉ½È€€€€€€€€€€€€€€€€€ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰Í½±ÕÑ”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Y…±Õ”€€€€€€€€€€€I•ÅÕ¥É•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰ä=I((€€€€€€€€€€€€Q¡”€€€€€€€€€€€=I€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¥É•Ñ¥Ù”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™½É•Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€ÁÉ½É…´€€€€€€€€€€€€€€€€€€€€€€½Õ¹Ñ•È€€€€€€€€€€€€€€€€€€€Ñ¼€€€€€€€€‰•½µ”(€€€€€€€€€€€€…‰Í½±ÕÑ”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡•¹”€€€€€€Ñ¡”€€€€€€€€€€€€€€€€€€€Ù…±Õ”€€€€€€€€€€€€€½˜€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€=I(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•áÁÉ•ÍÍ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹½¸((€€€€€€€€€€€€ÍÑ…Ñ•µ•¹Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µÕÍÐ€€€€€€€€€€€€€€€€€€€€¡…Ù”€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•±½…Ñ…‰¥±¥Ñä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÑÑÉ¥‰ÕÑ”€€€€€€€€€€€€€€€€€€€€€€€€€€½˜(€€€€€€€€€€€€…‰Í½±ÕÑ”¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€Ðà€€€€€€ÉÉ½È€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰Í½±ÕÑ”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Y…±Õ”€€€€€€€€€€€I•ÅÕ¥É•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰ä€€€€€€€I5(((€€€€€€€€€€€€Q¡”€€€€€€I5€€€€€€€€€€€€€€€€€€€€€€€‘¥É•Ñ¥Ù”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•ÅÕ¥É•Ì€€€€€€€€€€€€€€€€€€€€€€„€€€€€€€€€€€€€€¹½¸µÉ•±½…Ñ…‰±”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±•¹Ñ (€€€€€€€€€€€€¥ÑÌ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
¬(€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€Ðä€€€€€€…ÕÑ¥½¸½¹‘¥Ñ¥½¸€€€€€€€€€€€€€€€€€€€ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±…œ€€€€€€€€€€€€€€€U¹‘•™¥¹•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€á•ÁÐ€€€€€€€€€€€€€€½¸€€€€€€€€€€MÑ…¬((€€€€€€€€€€€€Q¡”€€€€€€€€€€€9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½È€€€€€€€€€€€=I½Á•É…Ñ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•™•É•¹•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€‰ˆ€€€€€€€€€€½¹‘¥Ñ¥½¸(€€€€€€€€€€€€™±…œ€€€€€€€€€€Ý¡¥ €€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì€€€€€€€€€€¹½Ð€€€€€€€€€€µ•…¹¥¹™Õ°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•á•ÁÐ€€€€€€€€€€€€€€€€€€€€€½¸€€€€€€€€Ñ¡”€€€€€€€€€ÍÑ…¬¸((€€€€ÔÀ€€€€€€ÉÉ½È€€€€€€€€€€€€€€€´((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÑÑ•µÁÐ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•‘•™¥¹”AÉ½Ñ•Ñ•€€€€€€€€€€€€€„€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Måµ‰½°(€€€€€€€€€€€€Q¡”€€€€€€ÕÉÉ•¹Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑ…Ñ•µ•¹Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼€€€€€€€É•‘•™¥¹”€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÑÑ•µÁÑÌ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ù…±Õ”€€€€€€€€€€€€€€½˜€€€€€€€€€€€€„(€€€€€€€€€€€€ÁÉ½Ñ•Ñ•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Íåµ‰½°¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=L(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÑÐ°(€€€€ÔÄ€€€€€€]…É¹¥¹œ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1…‰•°€€€€€€€€€€€€€€€€€MÕ‰Í•ÅÕ•¹Ñ±ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•‘•™¥¹•((€€€€€€€€€€€€Q¡¥Ì€€€€€€€€€€€€€€€€€€€€€€€¥Ì€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€€€€€€€€™¥ÉÍÐ€€€€€€€€€€€€€€€€½ÕÉ…¹”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜€€€€€€€€€€„€€€€€€€€€±…‰•°€€€€€€€€€€€€€€€€Ñ¡…Ð€€€€€€€€€€€€€€€€¥Ì(€€€€€€€€€€€€ÍÕ‰Í•ÅÕ•¹Ñ±ä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•‘•™¥¹•¸((€€€€ÔÈ€€€€€€¥Í…ÍÑ•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½‘”€€€€€€€€€€€€€€•¹•É…Ñ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€A…ÍÌ€€€€€€€€€€€€€€€€€€€€€€A¡…Í¥¹œ€€€€€€€€€€€€€€€€€€ÉÉ½È€€€€€€€€€€€€€•Ñ•Ñ•(€€€€€€€€€€€€Q¡¥Ì€€€€€€€€€€€€€€€•ÉÉ½È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹‘¥…Ñ•Ì€€€€€€€€€€€€€€€€€€€€€€€€…¸€€€€€€€€€€€€€€€¥¹Ñ•É¹…°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ…±™Õ¹Ñ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€…ÍÍ•µ‰±•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹€€€€€€€€€€€€€€€€Í¡½Õ±€€€€€€€€€€€€€€€€€‰”€€€€€€€€€€€€€€€É•Á½ÉÑ•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Ð€€€€€€€€½¹”€€€€€€€€€€Ñ¼€€€€€€€€€€M½ÕÑ¡Ý•ÍÐ(€€€€€€€€€€€€Q•¡¹¥…°¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á¥•Ì€€€€€€€€€€€€€€€€€€½˜€€€€€Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡¥Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ½É…´€€€€€€€•¹•É…Ñ¥¹œ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•ÉÉ½È(€€€€€€€€€€€€…±½¹œ€€€€€€€€€€€€€€€€€€€€€€Ý¥Ñ €€€€€€€€€€€€€€€€€€€€€€€€€€…¥°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘…Ñ„€€€Í¡½Õ±€€€€‰”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¥Ñ €€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€É•Á½ÉÐ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•±•Ù•¹Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹±Õ‘•(€€€ÔÌ€€€€€€€ÉÉ½È€€€€€€€€€€€€€€€€€€€€€€€U¹‘•™¥¹•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9½‘”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MÑÉÕÑÕÉ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•™•É•¹•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸((€€€€€€€€€€€€Q¡”(€€€€€€€€€€€€€€€€€€€€€€…ÍÍ•µ‰±•ÈÁÉ½•ÍÍ¥¹œ(€€€€€€€€€€€€•¹½Õ¹Ñ•É•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý…Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„€€€€€€€€ÅÕ…±¥™¥•€€€€€€€€€€€€€€€€€€€€€€€€€‘…Ñ„€€€€€€€€€€¹…µ”€€€€€€€€€€€€€Ý¡•¸€€€€€€€€€€€¥Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„€€€€€€€€€¹½‘”€€€€€€€€€€€€¹…µ”€€€€€€€€€€€€€€€€€€€€Ñ¡…Ð€€€€€€€€€€€€€€€€€€€€€€€Ý…Ì€€€€€€€€€€€€€€€¹½Ð€€€€€€€€€€™½Õ¹€€€€€€€€€€€€€€€€€€€€¥¸€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€}MÑÉÕÑÕÉ—ŠeÌ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¥Ñ¥½¹…Éä¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ä(((€€€ÔÐ€€€€€€€ÉÉ½È€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9Õ±°€€€€€€€€€€€€€€€€€€€€€€€€9½‘”€€€€€€€€€€€€9…µ”€€€€€€€€€€€€%¹Ù…±¥€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸€€€€€€€MÑÉÕÑÕÉ”((€€€€€€€€€€€€Q¡”€€€€€€…ÍÍ•µ‰±•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý…Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ½•ÍÍ¥¹œ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„€€€€€€€€ÅÕ…±¥™¥•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘…Ñ„€€€€€€€€€€¹…µ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¡•¸¥Ð¸(€€€€€€€€€€€€•¹½Õ¹Ñ•É•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„€€€€€€€¹Õ±°€€€€€€€€€Íåµ‰½°€€€€€€€€€€€€€€€€½È€€€€€€€€€€€€€€€€€Ñ•Éµ¥¹…Ñ½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡…É…Ñ•ÉÌ((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µø€à´à€€€€€€€€€€€€€€€€€€´(0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÍ•µ‰±•ÈUÍ•ÉÌ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Õ¥‘”((€€€€€€€€€€€€€€€€€€€€€ÔÔ€€€€€€€€€€€€€€€ôô((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Í…ÍÑ•È%¹ÍÕ™™¥¥•¹Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ø´((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5•µ½Éä€€€€€€€€€€€€€€€€€Ñ¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•™¥¹”€€€€€€€€€€€€€€€€€€AÉ½•‘ÕÉ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¹ÍÕ™™¥•Ñ•¹Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ•µ½ÉäÉ•µ…¥¹•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼€€€€€€€€€€€…±±½…Ñ”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸€€€€Ñ¡”…ÍÍ•µ‰±•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¥Ñ¥½¹…Éä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÁ…”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÁ…”€€€€€€€€€€€€™½È€€€€€€€€€€€€„€€€€€¹•Ü(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ½•‘ÕÉ”€€€€€€€€€€€€½È€€€€€€€‘…Ñ„((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¥Ñ¥½¹…Éä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹è€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹•Ü‘¥Ñ¥½¹…Éä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡…Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹½Ð€€€€€€‰••¸¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘•™¥¹•¸(€€€€€€€€€€€€€€€€€€€€€ÔØ€€€€€€€€€€ƒŠSŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Í…ÍÑ•È%¹ÍÕ™™¥¥•¹Ð5•µ½ÉäÑ¼€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•™¥¹”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€AÉ½É…µ½Õ¹Ñ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¹ÍÕ™™¥¥•¹Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaµ•µ½Éä€€€€€€€€€€€€€€€€€€€€€É•µ…¥¹•€€€€€€€€€€€€€€€€€€€€€€¥¸€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÍÍ•µ‰±•È(€€€€€€€€€€€€€€€€€€€€€€€€€Á…”¸Ñ¼…±±½…Ñ”„¹•ÜÁÉ½É…´½Õ¹Ñ•È¸€€€€‘¥Ñ¥½¹…Éä(€€€€€€€€€€€€€€€€€€€€ÔÜ€ôôÉÉ½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´%¹ÍÕ™™¥¥•¹Ð€€€5•µ½Éä€™½È…Ñ…¥Ñ¥½¹…Éä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µÍÕÑ™Ñ•‘•¹Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaµ•µ½ÉåÉ•µ…¥¹•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸Ñ¡”€€€€€€€€€€€€€…ÍÍ•µ‰±•É‘¥Ñ¥½¹…Éä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MÁ…”€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼€€€€€€€€€€€€€€¹…±±……Ñ”€€€€€€€€€€€€€€€€€€€€€€€€€ÍÁ…”€€€€€€€€€€€€€€€€™½È€„€€€€€€€€€€€€€€€€€€€€¹•Ü€‘…Ñ„€ÅÕ…±¥™¥•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¥Ñ¥½¹…Éä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€¹•Ü€€€€€€€€€€€€ÅÕ…±¥™¥•€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹…µ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡…Ì´¹½Ð¸‰••¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ML€€€€€€€€€€€€€•Ì€€€€€€€½¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘•™¥¹•¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½L((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…”(((((€€€€€€€€€€€€€€€€€€€€€Ôà(€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠPÉÉ½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€!¥¡Ð%¹‘•à€€€€€€€€€	¥Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¹•Õ™™¥Ñ•¹Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=™™Í•Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¥±°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹ÍÑ…¹Ñ½™™Í•Ð¥¹‘•á•…‘‘É•ÍÍ¥¹œÝ…ÌÍÁ•¥™¥•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€à(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¥Ñ Ñ¡”€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½™™Í•Ð€€€€€€€€€€€€€€€€€€€€€™½É•€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼€€€€€•¥¡Ð€€€€€€€€€€€‰¥ÑÌ¸€€€€€€€€€€€€€€€€€€€ƒŠaQ¡”…ÍÍ•µ‰±•È€€€€€€€€€€€€€€€€€€€€€€€€¡…Ì€€€‘•Ñ•Éµ¥¹•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡…Ð€€€€€€€€€€Ñ¡¥Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€½™™Í•Ð€€€€€€€€€€€€€€€€€€€€€Ý¥±°€€€€€€€€€€€€€‰”€€€€€€€€€€€€¥¹ÍÕ™™¥¥•¹Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹ÍÑÉÕÑ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•… €€€€€€€¥ÑÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¿Št…±±½ÜÑ¡”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ…É•Ð¸(€€€€€€€€€€€€€€€€€€€€ÔäƒŠP€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M¡½ÉÐ¹	É…¹¡…¹¹½ÐI•… (€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÉÉ½È€´€€€½É•€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaQ…É•Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”•áÁÉ•ÍÍ¥½¸)„)I(€€€€€ÝÌ(€€€€€€€€€€M¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€½™™Í•Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠa™¥•±‰¥ÑÌ¸‰É…¹¡¥¹ÍÑÉÕÑ¥½¹¡…Ì¸™½É•€€€€€€€€€€€€€€€€€€€€€½˜€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼€€€€€€€€€€€€€€•¥¡Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”…ÍÍ•µ‰±•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡…Ì€€€‘•Ñ•Éµ¥¹•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡…Ð€€€€€Ñ¡¥Ì€€€€€€€€€€€€€€€€€€€€€½™™Í•Ð€€€€€€€€€€€€€€€€€€€€€€¥Ì€€€€€€€¥¹ÍÕ™™¥¥•¹Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ”€€€€É•… €€€€€€€€€€€€€€€€€€€€€¥ÑÌ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼…±±½ßŠaÑ¡”±¹•ÑÉÕÑ¥½¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ…É•Ð¸(€€€€€€€€€€€€€€€€€€€€ØÀ€ô€€€€€€€€€€€€€€€€€€€€€€€€€€ÉÉ½Èù	É…¹ €½ÕÐ½˜I…¹”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaQ¡•…ÍÍ•µ‰±•È€€€É…¹”µ¡•­½ÁÑ¥½¸Ý…ÌÍÁ•¥™¥•‘…¹¹Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í¡½ÉÐ€‰É…¹ ¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÕÉÉ•¹Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹¹½ÑÉ•… ¸¥ÑÌÑ…É•Ð¸(€€€€€€€€€€€€€€€€è(€€€€€€€€€€€€€€€€€€€€ØÄ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠQø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÉÉ½Éð€€€€€€´((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´€€€€€€€€Y…±Õ•I•ÅÕ¥É•™½È5(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰Í½±ÕÑ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠqÑ¡•5‘¥É•Ñ¥Ù•É•ÅÕ¥É•Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±•¹Ñ¡™½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹½¸µÉ•±½…Ñ…‰±”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥ÑÌ€€€€€™¥ÉÍÐ€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€”((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„€€€€€€€€€€€€€€€€€€€è(((€€€€€€€€€€€€€€€€€€€€ØÈ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÉÉ½Èð½ÉÝ…É(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´´€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•™•É•¹”™½È¹5¸¸¸€€€€€€€€€€€%¹Ù…±¥(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ì(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠqQ¡”€€€€€ƒŠa±•¹Ñ¡•áÁÉ•ÍÍ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜€€€€€€€€€€€€…¸€€€€€€€€5¹‘¥É•Ñ¥Ù”€€€€€€€€€€€€€€€€€€€€€€€€€½¹Ñ…¥¹•€€€€€€€€€€€€€„€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€]=(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€­Ì(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™½ÉÝ…É€€€€€€€€€€€€€€€€€€€€€€€€€É•™•É•¹”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€M¥¹”€€€€€€€€€Ñ¡”€€€€€€€€€€É•™•É•¹”€€€€€€€€€€€€€€€€€€€€€€€µ…ä‰”…™™•Ñ•€€€€€€€€€€€€€€€€€€€€€‰ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€½ÕÑ½µ”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½˜€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€5(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¥É•Ñ¥Ù”°Ñ¡¥Ì½¹ÍÑ¥ÑÕÑ•Ìè(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹Ù…±¥€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥ÉÕ±…ÉÉ•™•É•¹”¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€°(((((€€€€€€€€€€€€€€€€€€€€ØÌƒŠQø(€€€€€€€€€€€€€€€€€€€€€€€ÉÉ½È´ƒŠaM¥áÑ••¹	¥Ð¸AÉ•¥Í¥½¸€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™½ÉA(€€€€€€€€€€€€€€€€€€€€€€€Q¡”Ù…±Õ”•áÁÉ•ÍÍ¥½¸½˜…¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹¹½Ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½É•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€5‘¥É•Ñ¥Ù”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥áÑ••¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡…Ì„™½É•€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥Ð(€€€€€€€€€€€€€€€€€€€€€€€€€¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ•¥Í¥½¸¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰¥ÑÌ€€€½˜€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q¡”€€€€€€€€€€€€…ÍÍ•µ‰±•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡…Ì€€€€€€€ÕÍ•€€€€€€ƒŠaÑ¡—ŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘½Ý½É¹‘…È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰½¡•¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•áÁÉ•ÍÍ¥½¸è€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Ì€€€€€€€€€€€™¥±°¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰åÑ•Ì€€€€€€€€€€€€€€€€€€€½”(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€„(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Í”(1ÍÍ•µ‰±•È€€€€€€€€UÍ•ÉÌ€€€€€€€€€€€€Õ¥‘”((((€€€€€ØÐ€€€€ÉÉ½È€€€€€€€€€€€ô(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¹Ù…±¥€€€€€€€€€€€€€€€€€€€€€€€=ÁÑ¥½¸€€€€€€€€€€€€€MÁ•¥™¥•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”(€€€€€€€€€€€ƒŠaQ¡”€€€€€€ÍÁ•¥™¥•€€€€€€½ÁÑ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Ì€€€€€€€€¥¹Ù…±¥€€€€€€€€€€€€€€€™½È€€€€€€€€Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¹(€€€€€€€€€€€¡…Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=AQ‘¥É•Ñ¥Ù”(€€€€€€€€€€€€€€€€€€€€€€‰••¸€€€¥¹½É•¸((€€€€€ØÔ€€€€€ÉÉ½È€€€€€€€€€€ô((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€AÉ½É…µµ•ÈµM¥¹…°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€±•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÉÉ½È((€€€€€€€€€€€¸€€€€€€€€•ÉÉ½È¸€€€€€€€€€€€€€€€€€€€€€€€€µ•ÍÍ…”€€€€€€€€€€€€€€€€€¡…Ì€€€€€€€€€€€‰••¸€€€€€€€€€€•¹•É…Ñ•€€€€€€€€€€€€€€€€€‰ä€€€€€…¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€IH(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€II%(€€€€€€€€€€€½¹‘¥Ñ¥½¹…°€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÍÍ•µ‰±ä€€€€€€€€€€€€€ÍÑ…Ñ•µ•¹Ð¸((€€€€€ØØ€€€€ÉÉ½È€€€€€€€€€€ûŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€MÁ•¥™¥•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€I•¥ÍÑ•È€€€€€€€€€€€€€€%¹Ù…±¥€€€€€€€€€€€€€€…Ì€€€€€€€€%¹‘•à€€€€€€€€€€	…Í”(((€€€€€€€€€€€€%¹‘•á•…‘‘É•ÍÍ¥¹œµ½‘”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý…Ì€€€€€€€€ÍÁ•¥™¥•€€€€€€€€€€€€€€€€€€€€€€‰ÕÐ¸€€€€€€€€€Ñ¡”€€€€€€€€ƒŠqÉ•¥ÍÑ•È(€€€€€€€€€€€€ÍÁ•¥™¥•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…Ì€€€€€€€€€€€Ñ¡”€€€€€€€€€¥¹‘•à€€€€€€€€€€€€€€…‘‘É•ÍÌ€€€€€€€€€€€€€€‰…Í”€€€€€€€€€…¹¹½Ð€€€€€€€€€€€€€‰”€€€€ÕÍ•€€€€™½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¸(((((€€€€€€€€€€€€¥¹‘•á•€€€€€€€€€€€€€€€€…‘‘É•ÍÍ¥¹œ¸(€€€€€ØÜ€€€€€ÉÉ½È€€€€€€€€€€´((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€=Á•É…¹€€€€€€€€€€€€€€€€€€€€€€€€I•ÅÕ¥É•€€€€€€€€€€€€€€€€€™½È€€€€€€%¹‘¥É•Ñ¥½¸((€€€€€€€€€€€€Q¡”€€€€€€€€€…ÍÍ•µ‰±•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý…Ì€€€€€€€€€ÁÉ½•ÍÍ¥¹œ€€€€€€€€€€€€€€€€€€€€€€€€…¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹€€€€€€€€€€€€€€€€ÍÁ•¥™å¥¹œ€€€€€€€€€€€€€€€€€€€ƒŠP(€€€€€€€€€€€€¥¹‘¥É•Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…‘‘É•ÍÍ¥¹œ€€€€€€€€€€€€€€€€€€€€€€€Ý¡•¸€€€€€€€€€€€¥Ð€€€€€€€€€•¹½Õ¹Ñ•É•€€€€€€€€€€€€€€€€€€€€€€€€…¹€€€€€€€€€•¹€€€€€€€€€€½˜(€€€€€€€€€€€€ÍÑ…Ñ•µ•¹Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…Ñ½È¸€€€€€€€€€€€€€€€€€€€9Õ±°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Á•É…¹‘Íð…É”€€€€€€€€€€€€€€€€€€€€€€€€€€€¹½Ð€€€€€€€Ù…±¥€€€€€€€€€€€€€€Ý¡•¸(€€€€€€€€€€€ÕÍ¥¹œ€€€€€€€€€€€€€€¥¹‘¥É•Ð€€€€€€€€€€€€€€€€€€€€€€€€€€…‘‘É•ÍÍ¥¹œ¸(€€€€€Øà€€€€]…É¹¥¹œ€€€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%µµ•‘¥…Ñ”€€€€€€€€€€€€€€€€€€Y…±Õ”€€€€€€€€€€€€QÉÕ¹…Ñ•€€€€€€€€€€€€€€|(€€€€€€€€€€€€Q¡”€€€€€€€€€€…ÍÍ•µ‰±•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¡…Ì€€€€€€ÑÉÕ¹…Ñ•€€€€€€€€€€€€€€€€€€€€€€€€Í¥¹¥™¥…¹Ð€€€€€€€€€€€€€€€€€€€€€€€‰¥ÑÌ€€€€€€€€€€™É½´€€€€€€€€€€€€€„€€D(€€€€€€€€€€€€Í¥áÑ••¸€€€€€€€€€€€€€€€€‰¥Ð€€€€€€€€€€€€€€€€€€•áÁÉ•ÍÍ¥½¸€€€€€€€€€€€€€€€€€€Ñ¼€€€€€€€½‰Ñ…¥¸€€€€€€€€€€€Ñ¡”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•¥¡Ð€€€€€€€‰¥Ð(€€€€€€€€€€€€¥µµ•‘¥…Ñ”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ù…±Õ”¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•ÅÕ¥É•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½ä((€€€€€Øä€€€€€ÉÉ½È€€€€€€€€€€€´((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€1•…‘¥¹œ€€€€€€€€€€€€€€€€€€€€€€€€€€	É…­•Ð€€€€€€€€€€€€€€I•ÅÕ¥É•€€€€€€€€€€€€€€™½È€€€€€€€€€%¹‘¥É•Ñ¥½¸((€€€€€€€€€€€€Q¡”€€€€€€€€€Á½¥¹Ñ•€€€€€€€€€€€€€€€€€€€€€€€€€•áÁÉ•ÍÍ¥½¸€€€€€€€€€€€€€€€€€€¡…Ì€€€€€€€€Ñ•Éµ¥¹…Ñ•€€€€€€€€€€€€€€€€€€€€€€Ý¥Ñ €€€€€€€„€€€±½Í¥¹œ€€€€€€€€€€€€€É¥¡Ð(€€€€€€€€€€€‰É…­•Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¹‘¥…Ñ¥¹œ€€€€€€€€€€€€€€€€€€€€¥¹‘¥É•Ð€€€€€€€€€€€€€€€€€€€€€€€…‘‘É•ÍÍ¥¹œ€€€€€€€µ½‘”°€€€€€€€€€€€€€€€€€€€€€€€€€€‰ÕÐ€€€€€€€€€€€¹¼((€€€€€€€€€€€€±•…‘¥¹œ€€€€€€€€€€€€€€€€€€€€±•™Ð€€€€€€€€€€€€€€€‰É…­•Ð€€€€€€€€€€€€ÁÉ•••‘•€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€•áÁÉ•ÍÍ¥½¸¸((€€€€€ÜÀ€€€€€]…É¹¥¹œ€€€€€€€€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9¼€€€€€€I•¥ÍÑ•ÉÌ€€€€€€€€€€€€€€€€€MÁ•¥™¥•€€€€€€€€€€€€€€€€€€¥¸€€€€€€€€1¥ÍÐ((€€€€€€€€€€€€€€€€€€ÁÕÍ €€€€€€€€€€€€€€€€€€€½È€€€€€€€€€€€€€€ÁÕ±°€€€€€€€€€€€½Á•É…Ñ¥½¸€€€€€€€€€€€€€€€€€€€€€Ý…Ì€€€€€€€€€ÍÁ•¥™¥•€€€€€€€€€€€€€€€€€€€€Ý¥Ñ €€€€€€€€„€€€€€¹Õ±°(€€€€€€€€€€€}e•¥ÍÑ•È€€€€€€€€€€€€€€€€€€€€€€€€€€€€±¥ÍÐ¸((€€€€€ÜÄ€€€€€ÉÉ½È€€€€€€€€€€€ô€€€€€€€€€€A…É•¹Ð€€€€€€€€€€€€€€€€€€€I•™•É•¹”€€€€€€€€€€€€€€€€€%¹Ù…±¥€€€€€€€€€€€€€¥¸€€€€€€€€€±½‰…°€€€€€€€€€€€¥Ñ¥½¹…Éä(€€€€€€€€€€€€¸€€€•áÁ±¥¥Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Á…É•¹Ñ…°É•™•É•¹”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý…Ì€€€€€€€€€€•¹½Õ¹Ñ•É•€€€€€€€€€€€€€€€€€€€€€€€Ý¡¥±”€€€€€€€€€€€€€€ƒŠP(((((€€€€€€€€€€€€ÁÉ½•ÍÍ¥¹œ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½‘”€€€€€€€€¥¸€€€€Ñ¡”€€€€€€€€€±½‰…°€€€€€€€€€€€€€‘¥Ñ¥½¹…Éä€€€€€€€€€€€€€€€€€€€Ý¡•É”€€€€€€€€€€€€€€€€€€€€€€±½…°(€€€€€€€€€€€€½È(€€€€€€€€€€€€€€€€€€€ƒŠa±½‰…°É•™•É•¹•Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…É”€€€€€€€€€Ù…±¥¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠP€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½¹±ä(€€€€€ÜÈ€€€€€ÉÉ½È€€€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥É•Ñ¥Ù”€€€€€€€€€€€€€€€€€€€€€€€€€€I•ÅÕ¥É•Ì€€€€€€€€€€€€€€€AÉ¥µ…Éä€€€€€€€€€€€€€MÑ…Ñ•µ•¹Ð((€€€€€€€€€€€€¸€€€€€…ÍÍ•µ‰±•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘¥É•Ñ¥Ù”¥É•Ñ¥Ù•Í•¹½Õ¹Ñ•É•µÕÍÐ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý…Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥¸€€€€€Ñ¡”€€€€€½¹Ñ•áÑ½˜…”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰”(€€€€€€€€€€€€Í•½¹‘…Éä€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑ…Ñ•µ•¹Ð¸€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…±Ý…åÌ€€€€€€€€€€€€€€€€€€€€ÍÁ•¥™¥•è(€€€€€€€€€€€€…Ì€ÁÉ¥µ…Éä€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÑ…Ñ•µ•¹ÑÌ¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€à´ÄÀ€€€€€€€€€€€ô(0€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€UÍ•ÉÌ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Õ¥‘”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÍ•µ‰±•È((€€€€€€€€€€ÜÌ€€€€€€€ðô]…É¹¥¹œ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰Í½±ÕÑ”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½Õ¹Ñ•ÈM•±•Ñ•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€AÉ½É…´((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q½¼€€€µ…¹ä€€€€€€€€€€±•Ù•±Ì€€€€€€€€€€€€€€€€€€½˜€€€€€€€€€€€UM€€€€€€€€€AÉ•Ù¥½ÕÌ€€€€€€€€€€€€€€€€€€€€€€€Ý•É”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÁ•¥™¥•¸€€€€€€€€€€€€€€€€€€€€Q¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‘•™…Õ±Ð€€€€€€€€€…‰Í½±ÕÑ”€€€€€€€€€€€€€€€€€€€€€ÁÉ½É…´€€€€€€€€€€€€€€€€€½Õ¹Ñ•È€€€€€€€€€€€€€€€¡…Ì€€€€€€€€€€€€‰••¸€€€€€Í•±•Ñ•¸(€€€€€€€€€ƒŠpÐ€€€€€€€€€€€€€€€€€€€€ƒŠaÉÉ½Èô%¹Ù…±¥AÉ½É…´½Õ¹Ñ•ÉMÁ•¥™¥•(€€€€€€€€€€€€€€€€€€€€€€€Šd€€€€€€€€€€€€€€€UMÍÑ…Ñ•µ•¹Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€ÍÁ•¥™¥•Ì€€€€€€€€€€€€€€€€€€€€€…¸€€€€€€¥‘•¹Ñ¥™¥•ÈÑ¡…Ñ¡…Ì¹½Ð€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰••¸€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ•Ù¥½ÕÍ±ä€€€€€€€€€€€€€€€€€‘•™¥¹•€€€€€€€€€€€€€€€€…Ì€€€€€€€„€€€ÁÉ½É…´€€€€€€€€€€€€€€€€€½Õ¹Ñ•È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¹…µ”¸ƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9½Ñ”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€´	É…¹ =™™Í•Ñ¥Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€i•É¼((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€‰É…¹ €€€€€€€€€€€€€€€€¥¹ÍÑÉÕÑ¥½¸Ý…Ì•¹½Õ¹Ñ•É•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý¥Ñ €€€€€€€„€€€€€€½µÁÕÑ•(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€|=™™Í•Ð€€€€€€€€€€€€Ù…±Õ”€€€€€€€€½˜€€€€€€€€€™Õ±±é•É¼¸€€€€€€€€€€€€€€%˜(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½ÁÑ¥µ¥é…Ñ¥½¸€€€€€€€€€€€€€€€€€€€€€Ý…Ì€€€€€€€€Í•±•Ñ•°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”•¹Ñ¥É”€€€€€€€€€€€€€€€€€€€‰É…¹ €€€€€€€€€€€€€€¥¹ÍÑÉÕÑ¥½¸€€€€€€€€€€€€€€€€€€€€€€€€€€€ÅÌ€€€€€ÍÕÁÉ•ÍÍ•¸(€€€„€€€€€ÜØ€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô(€€€€€€€€€€€€€€€€€€ùø(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€]…É¹¥¹5¥ÍÍ¥¹œ¹€€€€MÑ…Ñ•µ•¹Ñ„°(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaQ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÍÍ•µ‰±•É¡…Ì‘•Ñ•Ñ•€€€€…¸•¹½˜€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€™¥±”€€€€€€€€€€€½¹‘¥Ñ¥½¸ÁÉ¥½È(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€9¼(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÁÉ½•ÍÍ¥¹œ€€€€€€€€€€€€€€€€€€€€€€€Ñ¡”€€€€€€€€€€€€€€€€•¹€€€€€€€ÍÑ…Ñ•µ•¹Ð€€€€€€€€€€€€€€€€€€€™½È€€€€Ñ¡”€€€€€€€€€5%8€€€€€€€€€€€ÁÉ½•‘ÕÉ”¸€€€€€€€€€€€€€€€€€€€€€ð(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ÑÉ…¹Í™•È€€€€€€€€€€€€€€€…‘‘É•ÍÌ€€€€€€€€€€€€€€€€€¡…Ì€€€€€€€€‰••¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ñ¼Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ð(((((€€€€€€€€€€€€€€€¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÍÍ¥¹•€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½‰©•Ð€€€€€€€€€€€€½‘”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ý”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ½‘Õ±”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ä(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€è€€€€€€€€€€€€€€¸(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€è(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€½”((((€€€€€€€€äää€€€€€€€€¬(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€¥Í…ÍÑ•È€€€€€€€€€€€€´(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€%¹Ù…±¥ÉÉ½È‘‘É•ÍÌ(€€€€€€€€€€€€€€€€€€€€€€€€´(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒŠaQ¡¥Ì¸•ÉÉ½È¥¹‘¥…Ñ•Ì€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…¸€€€€€€€€€¥¹Ñ•É¹…°€€€€€€€€€€€€€€€€€€€€€€€€µ…±™Õ¹Ñ¥½¸€€€€€€€€€€€€€€€€€¥¹|€€€€€€€Ñ¡”€€ð)„€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…ÍÍ•µ‰±•È…¹Í¡½Õ±€‰”€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•Á½ÉÑ•€€€€€€€€€€€€€€€€€€€€…Ð€€€€€€€€€½¹”€€€€€€€€€Ñ¼€€€€€€M½ÕÑ¡Ý•ÍÐ(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Q•¡¹¥…°¸€€€€€€€€€€€€€€€€€€€€€€€€€€½Á¥•Ì¸€€€€€€€€€€€€€€€½˜€€€€€€€€€€€€Ñ¡”€€€€€€€€ÁÉ½É…´€€€€€€€€€€€€€€€•¹•É…Ñ¥¹œ€€€€€€€€€€€€€€€€€€€Ñ¡¥Ì•ÉÉ½È€€€€€€€€€€ƒŠP(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€…±½¹œ€€€€€€€Ý¥Ñ €€€€€€€€€€€€€…±°€€€€€€€€É•±•Ù•¹Ð€€€€€€€€€€€€€€€€€€‘…Ñ„€€€€€€€€€€€Í¡½Õ±€€€€€€€€€€€€€€€€‰”€€€€¥¹±Õ‘•€€€€€€€€€€€€€€€€€Ý¥Ñ €€€€€€€€Ñ¡”(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€É•Á½ÉÐ€€€€€€€•¼€€€€€€€€€€€€€€€€€€€€€€€¸(€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€•œ(((((€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ô€€€€à´ÄÄµ”(