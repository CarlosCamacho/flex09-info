# GUIDEPT3

> Source: `misc/uncategorized/USERV4_2 - FLEX Software Archive - Program and Support Utilities - Includes GUIDEPT1, GUIDEPT2, GUIDEPT3.zip!USERV4_2.DSK!GUIDEPT3.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
#PL/9 EDITOR-COMPILER FOR THE MC6809                                  USERS GUIDE


.DHE
#USERS GUIDE                                  PL/9 EDITOR-COMPILER FOR THE MC6809


.DFO
.
                                    PAGE %%%%


.DFE
.
                                    PAGE %%%%


9.07.07  OPERATING ON SPECIFIC BITS; AN INDIVIDUAL APPROACH

 One of the most frequent tasks to be performed in bit oriented I/O work  is  the
 examination  of,  the  setting  of,  or the clearing of, one or more bits to the
 exclusion of all others.

 The bitwise AND and OR functions are designed to provide  the  basic  tools  for
 this  type  of  work.  The  use  of  these  bit  functions  may be alien to many
 programmers and may therefore take a bit of getting used to.  In  this  and  the
 following  section we are going to introduce you to a few simple techniques that
 will enable you to 'hide' the bit operations in a few procedures. Once  the  bit
 operation  functions are defined you can get on with the control job at hand and
 forget about bit operations for the remainder of the program!

 For example supposing that you had a PIA initialized with bits b0, b1,  b3,  b6,
 and b7 as outputs and bits b2, b4, and b5 as inputs.

 This is not a particularly good way to assign data bits but often  you  have  no
 choice  in how the customer wants them or how your predecessor decided to design
 the hardware. If you have a choice it makes life a little simpler  if  you  keep
 inputs in one group and outputs in another group.

 You can save yourself a lot of confusion in your main program, at the expense of
 some code efficiency, if you write a series of short procedures to  handle  each
 bit  as  an  individual  element.  It  is  then possible to assign a name to the
 procedure that is closely related to the  the  function  of  the  bit.  In  this
 example  let  us  assign  the  functions of the 8 data bits mentioned earlier as
 follows:

   BITFUNCTION          DATA DIRECTION     SIGNAL DEFINITIONS

    b0   CIRCULATING PUMP        (OUT)            1=ON,       0=OFF
    b1   FUEL PUMP               (OUT)            1=ON,       0=OFF
    b2   BOILER TEMPERATURE      (IN )            1=HIGH,     0=NORMAL
    b3   BOILER ON               (OUT)            1=ON,       0=OFF
    b4   INPUT PRESSURE (FUEL)   (IN )            1=NORMAL,   0=LOW
    b5   OUTPUT PRESSURE (WATER) (IN )            1=HIGH      0=NORMAL
    b6   MAIN FUEL VALVE         (OUT)            1=CLOSE,    0=OPEN
    b7   EMERGENCY SHUTDOWN      (OUT)            1=RUN,      0=ESD

 One of the more important aspects of the table above is the  SIGNAL  DEFINITIONS
 column.  This  is  very crucial as not every system one works with has the logic
 oriented in the same manner. If you start  programming  a  control  job  on  the
 ASSUMPTION  that  '1' means 'ON' and '0' means 'OFF' you might be in for a nasty
 surprise later in the job.

 It is vitally important to obtain this type of information BEFORE you start  the
 main  body  of any control program as the entire logic of the bitwise AND and OR
 constructions depend on it. IF IN DOUBT ASK SOMEONE! If it does not form  part
 of  your  customers  specification GET IT IN WRITING!. A wrong assumption in the
 early stages of program development can cost you dearly in lost time  later,  as
 well as a great deal of embarrassment with your customer as you 'really ought to
 have known better!',

 Armed with the knowledge of what each bit on the I/O port is supposed to do  you
 should  declare a set of CONSTANTS for the conditions you will be looking for in
 subsequent sections of your program. This is  VERY  useful  when  '1'  does  not
 always mean 'ON' or 'NORMAL', or '0' does not always mean 'OFF' or 'ABNORMAL'.

 The  following  example  actually  works. In order to simulate a PIA at a 'hard'
 address we have declared DATAPORT to be in the FLEX line buffer.
9.07.07  OPERATING ON SPECIFIC BITS; AN INDIVIDUAL APPROACH  (continued)

 0001 AT$C090:BYTE DATAPORT;
 0002
 0003 CONSTANT CIRCON=1, CIRCOFF=0,  /* CIRCULATION */
 0004          FPON=1,   FPOFF=0,    /* FUEL PUMP */
 0005          BTOK=0,   BTHI=1,     /* BOILER TEMP */
 0006          BLRON=1,  BLROFF=0,   /* BOILER */
 0007          IPOK=1,   IPLO=0,     /* IN PRESS */
 0008          OPOK=0,   OPHI=1,     /* OUT PRESS */
 0009          FVOPN=0,  FVCLS=1,    /* FUEL VALVE */
 0010          RUN=1,    ESD=0;      /* ESD */
 0011
 0012

 One  very  important  reason  for defining the status of each bit via a CONSTANT
 declaration is that you will not be embedding comparisons with ones and zeros in
 the  main  body  of  your  code.  If you diligently USE the constant definitions
 throughout your program a change in signal requirements will only necessitate  a
 quick  change to the CONSTANT table rather than searching the length and breadth
 of your program for hidden references.

 The very nature of control  programming  demands  that  the  programmer  prepare
 himself, AND HIS PROGRAMS, for the inevitable...changes or modifications due  to
 oversights or errors in the original specification or design.

 Once armed with a table of constants defining the I/O signals AND the  knowledge
 of  which  bit  represents  what, you can then write a series of special purpose
 functions to handle each bit as a separate entity, viz:


 0013 PROCEDURE CIRCULATION_PUMP(BYTE STATUS);
 0014    IF STATUS  /* IMPLICIT <> 0 */
 0015       THEN DATAPORT=DATAPORT OR $01;
 0016       ELSE DATAPORT=DATAPORT AND $FE;
 0017 ENDPROC;
 0018
 0019 PROCEDURE FUEL_PUMP(BYTE STATUS);
 0020    IF STATUS  /* IMPLICIT <> 0 */
 0021       THEN DATAPORT=DATAPORT OR $02;
 0022       ELSE DATAPORT=DATAPORT AND $FD;
 0023 ENDPROC;
 0024
 0025 PROCEDURE BOILER_TEMP:BYTE STATUS;
 0026    IF DATAPORT AND $04 <> 0
 0027       THEN STATUS=1;
 0028       ELSE STATUS=0;
 0029 ENDPROC STATUS;
 0030
 0031 PROCEDURE BOILER_POWER(BYTE STATUS);
 0032    IF STATUS  /* IMPLICIT <> 0 */
 0033       THEN DATAPORT=DATAPORT OR $08;
 0034       ELSE DATAPORT=DATAPORT AND $F7;
 0035 ENDPROC;
 0036
 0037 PROCEDURE INPUT_PRESSURE:BYTE STATUS;
 0038    IF DATAPORT AND $10 <> 0
 0039       THEN STATUS=1;
 0040       ELSE STATUS=0;
 0041 ENDPROC STATUS;

9.07.07  OPERATING ON SPECIFIC BITS; AN INDIVIDUAL APPROACH  (continued)

 0042
 0043 PROCEDURE OUTPUT_PRESSURE:BYTE STATUS;
 0044    IF DATAPORT AND $20 <> 0
 0045       THEN STATUS=1;
 0046       ELSE STATUS=0;
 0047 ENDPROC STATUS;
 0048
 0049 PROCEDURE FUEL_VALVE(BYTE STATUS);
 0050    IF STATUS  /* IMPLICIT <> 0 */
 0051       THEN DATAPORT=DATAPORT OR $40;
 0052       ELSE DATAPORT=DATAPORT AND $BF;
 0053 ENDPROC;
 0054
 0055 PROCEDURE EMERGENCY_SHUTDOWN(BYTE STATUS);
 0056    IF STATUS  /* IMPLICIT <> 0 */
 0057       THEN DATAPORT=DATAPORT OR $80;
 0058       ELSE DATAPORT=DATAPORT AND $7F;
 0059 ENDPROC;
 0060
 0061

 If you have read and understand section 9.06.01 you should have no difficulty in
 understanding what each of the preceeding and each of the  following  procedures
 is doing.

 Now with a set of procedures to handle all of the bit oriented side of your  I/O
 you  can sit down to write the body of your program and forget about bitwise AND
 and bitwise OR! Viz:


 0062 PROCEDURE CONTROL;
 0063
 0064    IF INPUT_PRESSURE = IPLO
 0065       THEN FUEL_PUMP = FPON;
 0066       ELSE FUEL_PUMP = FPOFF;
 0067
 0068    IF OUTPUT_PRESSURE = OPHI
 0069       THEN CIRCULATION_PUMP = CIRCOFF;
 0070       ELSE CIRCULATION_PUMP = CIRCON;
 0071
 0072    IF BOILER_TEMP = BTOK
 0073       THEN BEGIN
 0074            FUEL_VALVE = FVOPN;
 0075            BOILER_POWER = BLRON;
 0076            EMERGENCY_SHUTDOWN = RUN;
 0077            END;
 0078       ELSE BEGIN
 0079            FUEL_VALVE = FVCLS;
 0080            BOILER_POWER = BLROFF;
 0081            CIRCULATION_PUMP = CIRCOFF;
 0082            EMERGENCY_SHUTDOWN = ESD;
 0083            END;


 Note that we have not used the conventional set of brackets to enclose the  data
 we  are passing to the function procedure. This form improves the readability of
 the program substantially. See section 9.14.03 for further details on  permitted
 variations in syntax.

9.07.07  OPERATING ON SPECIFIC BITS; AN INDIVIDUAL APPROACH  (continued)

 This program may not be a model of code efficiency, as each of the bit operation
 procedures requires about 30 bytes of memory, BUT it is VERY, VERY readable.  If
 you  are  working  with  an  application  that  leaves you with plenty of memory
 (EPROMs are cheap these days) and the application does  not  require  blistering
 speed  this  type of structure will make your life as a control programmer a lot
 easier.

 The  following  is  an  adaptation  of the previous program sent to us by a PL/9
 programmer. If he lets us know who he  is  we  would  be  happy  to  include  an
 acknowledgement  here.  This  program  uses  a  much  more general purpose input
 routine (SENSE) and a much more general purpose output routine (SWITCH). As  you
 can tell from the program it is every bit as readable as the preceeding example,
 but it is significantly more code efficient. The only two elements that  require
 a  bit  of  thought to figure out how they work are 'SENSE' and 'SWITCH'. If you
 understand what we have outlined in the preceeding section you should  not  have
 any trouble understanding them.


 0001 AT $C000:BYTE DATAPORT;
 0002
 0003 /* DEFINE THE PIA BITS */
 0004
 0005 CONSTANT
 0006    CIRC_PUMP          = $01,  /* (OUTPUT)  1 = ON, 0 = OFF */
 0007    FUEL_PUMP          = $02,  /* (OUTPUT)  1 = ON, 0 = OFF */
 0008    BOILER_TEMP_NORMAL = $04,  /* (INPUT)   1 = HI, 0 = OK  */
 0009    BOILER_POWER       = $08,  /* (OUTPUT)  1 = ON, 0 = OFF */
 0010    IN_PRESS_LO        = $10,  /* (INPUT)   1 = OK, 0 = LOW */
 0011    OUT_PRESS_HI       = $20,  /* (INPUT)   1 = HI, 0 = OK  */
 0012    FUEL_VALVE         = $40,  /* (OUTPUT)  1 = ON, 0 = OFF */
 0013    EMERG_SHUTDN       = $80,  /* (OUTPUT)  1 = ON, 0 = ESD */
 0014
 0015    OFF                = $00,
 0016    ON                 = $FF,
 0017    OK                 = $FF,
 0018
 0019 /*
 0020    THE STATUS OF THE BITS IN THE FOLLOWING BYTE DEFINES THE ACTIVE
 0021    STATE OF THE 'IN' OR 'OUT' BIT:
 0022
 0023    '1' MEANS THE INPUT OR OUTPUT IS ACTIVE 'LOW'
 0024    '0' MEANS THE INPUT OR OUTPUT IS ACTIVE 'HIGH'
 0025 */
 0026    INVBYTE            = $C4;  /* 1100 0100 */
 0027
 0028
 0029 PROCEDURE SENSE(BYTE DEVICE);
 0030    IF (DATAPORT EOR INVBYTE) AND DEVICE = 0
 0031       THEN RETURN OFF;
 0032 ENDPROC ON;  /* SAME AS 'ELSE RETURN ON' BUT GENERATES LESS CODE */
 0033
 0034
 0035 PROCEDURE SWITCH(BYTE DEVICE, STATUS);
 0036    DATAPORT = (DATAPORT AND (NOT(DEVICE)))
 0037               OR
 0038               (DEVICE AND (STATUS EOR INVBYTE));
 0039 ENDPROC;
 0040
 0041
9.07.07  OPERATING ON SPECIFIC BITS; AN INDIVIDUAL APPROACH  (continued)

 0042 PROCEDURE CONTROL;
 0043    IF SENSE (IN_PRESS_LO) = OK
 0044       THEN SWITCH (FUEL_PUMP, ON);
 0045       ELSE SWITCH (FUEL_PUMP, OFF);
 0046
 0047    IF SENSE (OUT_PRESS_HI) = OK
 0048       THEN SWITCH (CIRC_PUMP, OFF);
 0049       ELSE SWITCH (CIRC_PUMP, ON);
 0050
 0051    IF SENSE (BOILER_TEMP_NORMAL) = OK
 0052       THEN BEGIN
 0053            SWITCH (FUEL_VALVE, ON);
 0054            SWITCH (BOILER_POWER, ON);
 0055            SWITCH (EMERG_SHUTDN, OFF);
 0056            END;
 0057       ELSE BEGIN
 0058            SWITCH (FUEL_VALVE, OFF);
 0059            SWITCH (BOILER_POWER, OFF);
 0060            SWITCH (EMERG_SHUTDN, ON);
 0061            END;


9.07.08  OPERATING ON SPECIFIC BITS; MORE GENERAL APPROACHES

 The  preceeding  section presented a technique that involves a 30 byte procedure
 for each of the bits that need to be operated on in an I/O port.  This  is  fine
 when  only a relatively small number of bits is involved in the system I/O. When
 the system becomes a fair bit larger this approach is still valid providing  you
 have sufficient memory available.

 This  section will present an alternative solution that uses only two procedures
 and can perform the  bit  evaluation  or  assignment  of  any  INTEGER  or  BYTE
 variable. These procedures are part of the BITIO library.


 0001 AT $C090: INTEGER DATAPORTA;
 0002 AT $C092: BYTE    DATAPORTB;
 0003
 0004 INTEGER BIT_TABLE $0001,$0002,$0004,$0008,$0010,$0020,$0040,$0080,
 0005                   $0100,$0200,$0400,$0800,$1000,$2000,$4000,$8000;
 0006
 0007 PROCEDURE BITIN(INTEGER DATA:BYTE POSITION):BYTE STATUS;
 0008    IF DATA AND BIT_TABLE(POSITION) /* IMPLICIT <> 0 */
 0009       THEN STATUS=1;
 0010       ELSE STATUS=0;
 0011 ENDPROC STATUS;
 0012
 0013 PROCEDURE BITOUT(INTEGER DATA:BYTE POSITION, STATUS);
 0014    IF STATUS /* IMPLICIT <> 0 */
 0015       THEN DATA=DATA OR BIT_TABLE(POSITION);
 0016       ELSE DATA=DATA AND NOT(BIT_TABLE(POSITION));
 0017 ENDPROC INTEGER DATA;
 0018
 0019 PROCEDURE DEMO;
 0020    DATAPORTA=$F00E;
 0021    DATAPORTB=$FE;
 0022
 0023    IF BITIN(DATAPORTA,0) = 0
 0024       THEN DATAPORTA=BITOUT(DATAPORTA,15,0);
 0025
 0026    IF BITIN(DATAPORTB,6) = 1
 0027       THEN DATAPORTB=DATAPORTB,7,0);


 The preceeding program outlines the details of two procedures which may be  used
 for general purpose bit manipulation of BYTES and INTEGERS. The first procedure,
 BITIN is 41 bytes, the second BITOUT is 60 bytes. Both procedures  execute  very
 quickly  as the majority of the code is divided between two conditional branches
 in each program.


9.07.08  OPERATING ON SPECIFIC BITS; MORE GENERAL APPROACHES  (continued)

 The last part of the above is a simple demonstration  program  that  illustrates
 how BITIN and BITOUT are used.

 The standard form of BITIN would look like:

 IF BITIN(DATAPORTA,0)=0
          |         |  |
          |         |  +-- The value of the bit we are looking for.
          |         +----- The position of the bit we are looking at.
          +--------------- The name of the variable we are interested in.

 BITIN can be used as part of a much more  complicated  expression  if  required,
 viz:

 IF BITIN(DATAPORT1,3)=0 .AND BITIN(DATAPORT2,7)=1 .AND BITIN(DATAPORT2,3)=0
    THEN ...


 The standard form of BITOUT would look like:

 THEN DATAPORTB=BITOUT(DATAPORTB,7,0);
      |                |         | |
      |                |         | +-- The value we wish to assign to the bit.
      |                |         +---- The position of the bit of interest.
      |                +-------------- The name of the READ variable.
      +------------------------------- The name of the WRITE variable.


 As the above implies the READ variable does not necessarily need to be the  same
 as  the  WRITE variable. The WRITE variable could just as easily be another data
 port or variable.


 Another technique is also available for output bit  manipulation  that  operates
 directly  on  the  port/variable  of  interest.  The  technique  we are about to
 introduce differs in two respects from the BITOUT procedure just described.

 a. The procedure will handle only 8-bit or 16-bit data. If you need to work with
    both sizes of data you will require two different procedures.

 b. The  procedure  operates  directly  on  the data port or variable. You cannot
    assign the result of the operation to another variable.


 0013 PROCEDURE BIT_16_OUT(INTEGER .DATA:BYTE POSITION, STATUS);
 0014    IF STATUS  /* IMPLICIT <> 0 */
 0015       THEN DATA = DATA OR BIT_TABLE(POSITION);
 0016       ELSE DATA = DATA AND NOT(BIT_TABLE(POSITION));
 0017 ENDPROC;
 0018
 0019 PROCEDURE BIT_8_OUT(BYTE .DATA:BYTE POSITION, STATUS);
 0020    IF STATUS  /* IMPLICIT <> 0 */
 0021       THEN DATA = DATA OR BIT_TABLE(POSITION);
 0022       ELSE DATA = DATA AND NOT(BIT_TABLE(POSITION));
 0023 ENDPROC;
 0024

9.07.08  OPERATING ON SPECIFIC BITS; MORE GENERAL APPROACHES  (continued)

 If  you  look  closely  you  will  hardly  notice any difference between the two
 preceeding procedures other than lines 13  and  19.  Since  each  of  these  two
 procedures  is  being passed a pointer (.DATA) which will contain the address of
 the variable  the  procedure  must  know  the  SIZE  of  the  data  it  will  be
 manipulating.  Since  pointers  are  always INTEGERS (see the Language Reference
 Manual) the reference to INTEGER on line 13 and to BYTE on line  19  tells  PL/9
 the  size  of  the  data  pointed  to.  In the first instance the data is 16-bit
 (INTEGER) and in the second the data is 8-bit (BYTE).

 Note also that these two procedures no longer return a variable  as  structured.
 They  could  return  the  final  value  of the data if desired by simply stating
 'ENDPROC DATA;'. This may be useful in some circumstances.

 The remainder of the program demonstrates the new structure required to use  the
 two new BITOUT procedures.


 0025 PROCEDURE DEMO:BYTE INDEXA, BITA, INDEXB, BITB;
 0026
 0027    DATAPORT_A = $F00E;
 0028    DATAPORT_B = $FE;
 0029
 0030    IF BITIN(DATAPORT_A,0) = 0
 0031       THEN BIT_16_OUT(.DATAPORT_A,15) = 0;
 0032
 0033    IF BITIN(DATAPORT_B,0) = 0
 0034       THEN BIT_8_OUT(.DATAPORT_B,7) = 0;
 0035
 0036
 0037 /*   O R   S O M E T H I N G   M U C H   M O R E   E L A B O R A T E    */
 0038
 0039
 0040    DATAPORT_A = $F00E;
 0041    DATAPORT_B = $FE;
 0042
 0043    INDEXA=0;
 0044    BITA=1;
 0045
 0046    IF BITIN(DATAPORT_A,INDEXA) = 0
 0047       THEN BIT_16_OUT(.DATAPORT_A,7) = BITA;
 0048
 0049
 0050 /*              O R               */
 0051
 0052
 0053    INDEXB=0;
 0054    BITB=1;
 0055
 0056    IF BITIN(DATAPORT_B,0) = 0
 0057       THEN BIT_8_OUT(.DATAPORT_B,INDEXB,BITB);


 The  main difference between this program and its predecessor is the lack of the
 "=" in the THEN statement. This is because the  new  BITOUT  procedures  operate
 directly on the data pointed to and do not require a data assignment operator.


9.07.08  OPERATING ON SPECIFIC BITS; MORE GENERAL APPROACHES  (continued)

 These new forms of BITOUT are structured as follows:

 THEN BIT_8_OUT(.DATAPORTB,7,1);
                ||         | |
                ||         | +-- The value we wish to assign to the bit
                ||         +---- The position of the bit of interest.
                |+-------------- The name of the READ/WRITE variable.
                |
                +--------------- NOTE the '.' to pass the address NOT the value!


 As mentioned previously this structure requires that YOU, the programmer, ensure
 that the correct procedure is used to operate on 8-bit and 16-bit data. Although
 this  technique  requires  more code (there are now two routines instead of one)
 than the general purpose routine outlined in  the  preceeding  section  it  will
 execute MUCH faster.


 When the application  is  simple  and  is  not  likely  to  GROW  the  techniqes
 illustrated  in this and the preceeding section form a simple method of avoiding
 the complexity of embedding bitwise  operations  into  the  main  body  of  your
 program.

 Where the control program is likely to remain small or is fairly straightforward
 the use of data tables (discussed in the following sections) should be  avoided.
 Unless a data table oriented program is heavily documented by comments they tend
 to be very difficult to work with for the uninitiated  but  can,  in  the  right
 circumstances, produce very compact and FAST programs.


 See section 9.14.03 for permitted variations in syntax  which  may  be  used  to
 improve   the  readability  of  programs  when  passing  variables  to  function
 procedures.


9.07.09  I/O BIT MANIPULATION THROUGH DATA TABLES

 In this and the following sections we are going to introduce  and  elaborate  on
 working with bit intensive I/O through the use of data tables.

 It might seem counter-productive to develop  a  technique  that  would,  on  the
 surface,  appear  to cloud the actual I/O operations taking place. This would be
 true except for the one cardinal rule of working with data tables. This rule  is
 that  the data tables must be thoroughly documented in the comments section of a
 program. Once the data involved in I/O work is placed in hex form in data tables
 it  will  take  a  clever  programmer  indeed to figure out what is going on six
 months after he wrote the program. Flow  charts  can  also  be  very  useful  in
 defining  the  inner  workings of a data table oriented program, but they can be
 difficult to integrate into the program comments section due to the  limitations
 of  the  ASCII  code  set.  It  is far better to integrate two or three pages of
 comments into the source file of a program than to rely on a separate  sheet  of
 paper  with  a flow chart on it. Murphy's law dictates that this one vital piece
 of paper will not be found when it comes time to modify the program.

 When should data tables be used and when should  they  not  be  used?  Generally
 speaking when IF...THEN or IF...CASE statements begin to exceed 6 or 7 arguments
 is the time to think of  structuring  a  program  around  data  tables.  Control
 arguments  much  in  excess  of  15  IF...THEN  arguments  can  start to produce
 excessive amounts of code and slow the I/O transfer down  in  the  process.  Not
 only  do data tables require less memory than the equivalent number of IF...THEN
 statements they will also execute exceedingly fast in comparison. The code  that
 PL/9 produces in normal IF...THEN arguments is very efficient by most standards,
 the code PL/9 produces when working with data tables rivals that produced by  an
 assembly language program!

 A  working example is in order here. Supposing that you have to write a sequence
 of 16-bit binary patterns out through an output  port  that  will  generate  the
 patterns  defined  on the following page in a step-by-step sequence forever. Add
 to this that the customer wants a one second delay between patterns, AND to test
 a  switch  to  see  if  the routine is to be stopped or continued, AND to test a
 second switch to determine if the routine is to be terminated.

 If you started writing a program like this:


    PORT=$0000;
    DELAY;
    TEST_SWITCH1; /* STOPS DISPLAY */
    IF SWITCH2=1 THEN RETURN;

    PORT=$0001;
    DELAY;
    TEST_SWITCH1;
    IF SWITCH2=1 THEN RETURN;

    PORT=$0002;
    .
    .
    .


 You would probably run out of patience very quickly, but you'd get the job  done
 and  it  would  work  but it would not be particularly easy to modify the binary
 sequence or add other facilities which the customer might come back and ask  you
 for in three months time (and this ALWAYS happens!).

9.07.09  I/O BIT MANIPULATION THROUGH DATA TABLES  (continued)

 The following represents the binary sequence desired by the customer:

  1. 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0   ($0000)
  2. 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1   ($0001)
  3. 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0   ($0002)
  4. 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0   ($0004)
  5. 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0   ($0008)
  6. 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0   ($0010)
  7. 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0   ($0020)
  8. 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0   ($0040)
  9. 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0   ($0080)
 10. 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0   ($0100)
 11. 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0   ($0200)
 12. 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0   ($0400)
 13. 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0   ($0800)
 14. 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0   ($1000)
 15. 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0   ($2000)
 16. 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0   ($4000)
 17. 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0   ($8000)
 18. 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0   ($0000)
 19. 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1   ($8001)
 20. 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0   ($4002)
 21. 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0   ($2004)
 22. 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0   ($1008)
 23. 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0   ($0810)
 24. 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0   ($0420)
 25. 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0   ($0240)
 26. 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0   ($0180)
 27. 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0   ($0240)
 28. 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0   ($0420)
 29. 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0   ($0810)
 30. 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0   ($1008)
 31. 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0   ($2004)
 32. 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0   ($4002)
 33. 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1   ($8001)
 34. 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0   ($0000)
 35. 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1   ($8001)
 36. 1 1 0 0 0 0 0 0 0 0 0 0 0 0 1 1   ($C003)
 37. 1 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1   ($E007)
 38. 1 1 1 1 0 0 0 0 0 0 0 0 1 1 1 1   ($F00F)
 39. 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1   ($F81F)
 40. 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1 1   ($FC3F)
 41. 1 1 1 1 1 1 1 0 0 1 1 1 1 1 1 1   ($FE7F)
 42. 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1   ($FFFF)
 43. 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0   ($7FFE)
 44. 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0   ($3FFC)
 43. 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0   ($1FF8)
 46. 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0   ($0FF0)
 47. 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0   ($07E0)
 48. 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0   ($03C0)
 49. 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0   ($0180)

 The other elements of the 'specification' are:

 1. There is to be a one second delay between output bit patterns.
 2. The  position  of  a  switch  is to be tested for an ON-OFF condition. If the
    switch is ON the sequence is to RUN; if it is OFF the sequence is to STOP.
 3. The  position  of another switch is to be tested. If it is ON the sequence is
    to be terminated immediately.
9.07.09  I/O BIT MANIPULATION THROUGH DATA TABLES  (continued)

 As a control programmer you probably know  that  when  repetitive  sequences  of
 events  take  place  they are best done within a loop. But how do you organize a
 loop around a changing pattern of input or output data?

 The program below illustrates the use of a data table being used  to  solve  the
 problem  of supplying changing data to a loop. This demonstration program is one
 of many possible solutions to the problem posed by our 'customer'.

 Due to the keyboard  polling  technique  used  this  program  will  not  operate
 properly  within  the  tracer.  It  should  be  assembled  to  disk as a command
 (A:O=DEMO1.CMD<CR>) and then called from FLEX (+++DEMO1<CR>)

 Once the program is loaded and running holding down the space bar will allow the
 output display to run, releasing it will stop the display. Hitting ESCAPE at any
 time will terminate the display and return to FLEX.


 0001 GLOBAL BYTE ENDFLAG;
 0002
 0003 INCLUDE 0.IOSUBS;
 0004 INCLUDE 0.BITIO;
 0005
 0006 INTEGER OUTDATA $0000,$0001,$0002,$0004,$0008,$0010,$0020,$0040,$0080,
 0007                       $0100,$0200,$0400,$0800,$1000,$2000,$4000,$8000,
 0008                 $0000,$8001,$4002,$2004,$1008,$0810,$0420,$0240,$0180,
 0009                       $0240,$0420,$0810,$1008,$2004,$4002,$8001,$0000,
 0010                 $8001,$C003,$E007,$F00F,$F81F,$FC3F,$FE7F,$FFFF,$7FFE,
 0011                 $3FFC,$1FF8,$0FF0,$07E0,$03C0,$0180;
 0012
 0013 PROCEDURE DELAY:
 0014    BYTE CHAR,COUNT;
 0015    COUNT=5;
 0016    REPEAT
 0017       CHAR=GETKEY;
 0018       IF CHAR=$1B
 0019          THEN BEGIN
 0020               ENDFLAG=0;
 0021               BREAK;
 0022               END;
 0023       IF CHAR=$20
 0024          THEN COUNT=COUNT-1;
 0025    UNTIL COUNT=0;
 0026 ENDPROC;
 0027
 0028 PROCEDURE PATTERN_OUT:
 0029    BYTE COUNT;
 0030    ENDFLAG=1;
 0031    COUNT=0;
 0032    PRINT("\N\N");
 0033    REPEAT
 0034       PUTCHAR(CR);
 0035       BITSOUT(OUTDATA(COUNT));
 0036       PRINT("    ");
 0037       DELAY;
 0038       IF ENDFLAG=0
 0039          THEN BREAK;
 0040       COUNT=COUNT+1;
 0041    IF COUNT=49 THEN COUNT=0;
 0042    FOREVER;
9.07.09  I/O BIT MANIPULATION THROUGH DATA TABLES  (continued)

 The use of data tables provides an elegant solution to the requirement to supply
 different  data  to  the loop on each iteration. Not only can the data be simple
 write only data like this example, the data can be bit masking  tables,  vectors
 to  various subroutines, data for comparison with incoming data, etc. Proper use
 of data tables will not only speed up program development  but  will  also  make
 future modifications and/or additions that much easier!


9.07.10  PRIORITIZED I/O HANDLING THROUGH DATA TABLES

 The  following  procedure demonstrates the ability of PL/9 to work with a 16-bit
 input data table and a vector table of output data rather than  use  a  mass  of
 "IF...THEN...ELSE" or "IF...CASE1...CASE2..." statements

 A prime ingredient for successful use  of  tables  is  a  well  defined  set  of
 input-output  conditions.  If  the  I/O  combinations are to be prioritized very
 careful consideration must be given to the order presentation in the table.

 This  demonstration  will  produce one of sixteen messages based upon the binary
 input pattern. Only one logical '1' is  permitted  in  the  input  pattern,  all
 others  are  considered  illegal  and  an  error  message to this effect will be
 posted.

 The table and program are organized to accept the  highest  priority  input  and
 output the corresponding message. Obviously a binary pattern could be sent to an
 I/O port in lieu of a message in a practical application.

 To  try  this  demonstration  program  out  type it in and run it under the PL/9
 tracer.

I/O ASSIGNMENTS

  BINARY INPUT      MESSAGE

 1000000000000000  TOTAL SHUTDOWN
 0100000000000000  HYDRAULIC SHUTDOWN
 0010000000000000  PNEUMATIC SHUTDOWN
 0001000000000000  ELECTRICAL SHUTDOWN
 0000100000000000  COOLANT SHUTDOWN
 0000010000000000  MAIN FUEL PUMPS OFF
 0000001000000000  AUX FUEL PUMPS OFF
 0000000100000000  MAIN PRODUCT PUMPS OFF
 0000000010000000  AUX PRODUCT PUMPS OFF
 0000000001000000  VALVE 7 OFF
 0000000000100000  VALVE 6 OFF
 0000000000010000  VALVE 5 OFF
 0000000000001000  VALVE 4 OFF
 0000000000000100  VALVE 3 OFF
 0000000000000010  VALVE 2 OFF
 0000000000000001  VALVE 1 OFF


 Any other input pattern is to be considered invalid.


9.07.10  PRIORITIZED I/O HANDLING THROUGH DATA TABLES  (continued)


 0001 INCLUDE 0.IOSUBS;
 0002 INCLUDE 0.BITIO;
 0003
 0004 CONSTANT BELL=$07, ESCAPE=$1B;  /* ASCII EQUATES */
 0005
 0006 INTEGER DATAIN $8000,$4000,$2000,$1000,$0800,$0400,$0200,$0100,
 0007                $0080,$0040,$0020,$0010,$0008,$0004,$0002,$0001;
 0008
 0009 /*
 0010    NOTE: EACH MESSAGE MUST BE PADDED TO EQUAL THE LENGTH OF THE
 0011          LONGEST MESSAGE OR SOME STRANGE THINGS WILL HAPPEN!
 0012 */
 0013 BYTE MESSAGEOUT "TOTAL SHUTDOWN        ",
 0014                 "HYDRAULIC SHUTDOWN    ",
 0015                 "PNEUMATIC SHUTDOWN    ",
 0016                 "ELECTRICAL SHUTDOWN   ",
 0017                 "COOLANT SHUTDOWN      ",
 0018                 "MAIN FUEL PUMPS OFF   ",
 0019                 "AUX FUEL PUMPS OFF    ",
 0020                 "MAIN PRODUCT PUMPS OFF",
 0021                 "AUX PRODUCT PUMPS OFF ",
 0022                 "VALVE (7) CLOSED      ",
 0023                 "VALVE (6) CLOSED      ",
 0024                 "VALVE (5) CLOSED      ",
 0025                 "VALVE (4) CLOSED      ",
 0026                 "VALVE (3) CLOSED      ",
 0027                 "VALVE (2) CLOSED      ",
 0028                 "VALVE (1) CLOSED      ";
 0029
 0030 PROCEDURE BITS_IN_AND_OUT_DEMO:
 0031    BYTE COUNT,FLAG,TCOUNT:
 0032    INTEGER CHAR;
 0033
 0034    REPEAT
 0035       FLAG=FALSE;
 0036       COUNT=0;
 0037       PRINT("\N\N INPUT A 16-BIT BINARY PATTERN WITH A SINGLE '1'\N\N");
 0038       CHAR=BITSIN;
 0039          REPEAT
 0040             IF DATAIN(COUNT)=CHAR
 0041                THEN BEGIN
 0042                   PRINT("\N\N");
 0043                   PRINT(.MESSAGEOUT(COUNT*23));
 0044                   FLAG=TRUE;
 0045                END;
 0046             IF FLAG=TRUE THEN BREAK;
 0047             COUNT=COUNT+1;
 0048             IF COUNT=16
 0049                THEN BEGIN
 0050                     PRINT("\N\NINVALID INPUT!  TRY AGAIN.");
 0051                     PUTCHAR(BELL);
 0052                     END;
 0053          UNTIL COUNT=16;
 0054       PRINT("\N\NHIT ESCAPE TO TERMINATE, ANY OTHER KEY TO CONTINUE\N");
 0055       UNTIL GETCHAR=ESCAPE;


9.07.11  NON-PRIORITIZED I/O HANDLING THROUGH DATA TABLES

 This  demonstration  will  produce one of sixteen messages based upon the binary
 input pattern. As the word 'VALVE'  and  'OPEN/CLOSED'  are  repeated  from  one
 message  to  the  next  we  will  'assemble' the message in software rather than
 define the entire message in a data table as we did in  the  last  demonstration
 program.

 This  technique  is  only  practical where there is a large degree of similarity
 between several messages  and  or/the  messages  are  lengthy.  There  are  many
 applications  that the number of messages required will tend to gobble up memory
 space at an alarming rate if the programmer allocates each message  a  dedicated
 string. This program demonstrates one of the techniques that can be used to save
 a  very  large  amount of memory in such a program. For if this program were not
 structured the way it is we would have to  provide  storage  for  the  following
 messages sixteen times!

 VALVE 1 = (|) OPEN
 VALVE 1 = (/) CLOSED

 This would  require  considerably  more  code  storage  than  the  structure  we
 illustrate  in the following program. Also note that we are taking the effort in
 the program structure to keep an orderly column presentation as we move from one
 one  digit  valve  numbers  (0  -  9) to two digit valve numbers (10 - 16). This
 program will work properly in the PL/9 tracer.


I/O ASSIGNMENTS

  BINARY INPUT      MESSAGE

 1000000000000000  VALVE 16 OPEN IF '1', CLOSED IF '0'.
 0100000000000000  VALVE 15 OPEN IF '1', CLOSED IF '0'.
 0010000000000000  VALVE 14 OPEN IF '1', CLOSED IF '0'.
 0001000000000000  VALVE 13 OPEN IF '1', CLOSED IF '0'.
 0000100000000000  VALVE 12 OPEN IF '1', CLOSED IF '0'.
 0000010000000000  VALVE 11 OPEN IF '1', CLOSED IF '0'.
 0000001000000000  VALVE 10 OPEN IF '1', CLOSED IF '0'.
 0000000100000000  VALVE  9 OPEN IF '1', CLOSED IF '0'.
 0000000010000000  VALVE  8 OPEN IF '1', CLOSED IF '0'.
 0000000001000000  VALVE  7 OPEN IF '1', CLOSED IF '0'.
 0000000000100000  VALVE  6 OPEN IF '1', CLOSED IF '0'.
 0000000000010000  VALVE  5 OPEN IF '1', CLOSED IF '0'.
 0000000000001000  VALVE  4 OPEN IF '1', CLOSED IF '0'.
 0000000000000100  VALVE  3 OPEN IF '1', CLOSED IF '0'.
 0000000000000010  VALVE  2 OPEN IF '1', CLOSED IF '0'.
 0000000000000001  VALVE  1 OPEN IF '1', CLOSED IF '0'.


9.07.11  NON-PRIORITIZED I/O THROUGH DATA TABLES  (continued)


 0001 INCLUDE 0.IOSUBS;
 0002 INCLUDE 0.BITIO;
 0003
 0004 CONSTANT BELL=$07, ESCAPE=$1B;  /* ASCII EQUATES */
 0005
 0006 CONSTANT OPEN=$FF,CLOSED=0;     /* VALVE STATUS FLAGS */
 0007
 0008 INTEGER INMASK $8000,$4000,$2000,$1000,$0800,$0400,$0200,$0100,
 0009                $0080,$0040,$0020,$0010,$0008,$0004,$0002,$0001;
 0010
 0011 /*
 0012    NOTE: EACH MESSAGE MUST BE PADDED TO EQUAL THE LENGTH OF THE
 0013          LONGEST MESSAGE OR SOME STRANGE THINGS WILL HAPPEN!
 0014          IN THIS PROGRAM NOTE THE WAY WE HANDLE THE DIFFERENT
 0015          MESSAGE LENGTHS IN THE TWO TABLES.
 0016 */
 0017 BYTE HIVALVENO "16","15","14","13","12","11","10";
 0018 BYTE LOVALVENO "9","8","7","6","5","4","3","2","1";
 0019
 0020 BYTE VALVETABLE "\N\N\N\N\N\N\N\N
 0021 INPUT VALVE STATUS AS A SERIES OF ONES (1) AND ZEROS (0)\N\N
 0022       0 = VALVE CLOSED ...... 1 = VALVE OPEN\N
 0023       ======================================\N\N
 0024                1 1 1 1 1 1 1\N
 0025 VALVE NUMBER:- 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1\N
 0026                | | | | | | | | | | | | | | | |\N
 0027                ";
 0028
 0029 PROCEDURE BITS_IN_AND_OUT_DEMO:
 0030    BYTE COUNT:
 0031    INTEGER CHAR;
 0032
 0033    REPEAT
 0034       COUNT=0;
 0035       PRINT(.VALVETABLE);
 0036       CHAR=BITSIN;
 0037       CRLF;
 0038          REPEAT
 0039             PRINT("\NVALVE ");
 0040             IF COUNT <= 6
 0041                THEN BEGIN         /* TWO DIGIT NUMBER */
 0042                     PRINT("(");
 0043                     PRINT(.HIVALVENO(COUNT*3));
 0044                     END;
 0045                ELSE BEGIN         /* ONE DIGIT NUMBER */
 0046                     PRINT(" (");
 0047                     PRINT(.LOVALVENO((COUNT-7)*2));
 0048                     END;
 0049             PRINT(") = ");
 0050             IF CHAR AND INMASK(COUNT) <> 0
 0051                THEN PRINT("(|)  OPEN");
 0052                ELSE PRINT("(/)  CLOSED");
 0053             COUNT=COUNT+1;
 0054          UNTIL COUNT=16;
 0055       PRINT("\N\NHIT ESCAPE TO TERMINATE, ANY OTHER KEY TO CONTINUE\N");
 0056       UNTIL GETCHAR=ESCAPE;


9.07.12  EVERYTHING BUT THE KITCHEN SINK THROUGH DATA TABLES

 This  final  sample program is a representation of a process control program and
 is hoped to give you some insight into how to construct  simple  but  very  code
 efficient  programs  using the facilities in PL/9 that we have discussed in this
 and other sections. You are encouraged to type this program in and try it out as
 it uses many constructions that you should become familiar with.

 This program will not run under the PL/9 tracer due to the keyboard polling used
 and will have to be compiled to disk  as  a  command  (A:O=1.DEMO4.CMD<CR>)  and
 executed  from  FLEX  (+++DEMO4<CR>).  When  the  program  is terminated it will
 re-enter FLEX.

 Once running the program will prompt you for the initial status of the system as
 follows:


 +------------------------------- EMERGENCY SHUTDOWN  (INPUT)
 | +----------------------------- FIRE                (INPUT)
 | | +--------------------------- PRODUCTION SHUTDOWN (INPUT)
 | | | +------------------------- OVER TEMPERATURE    (INPUT)
 | | | |
 | | | | +----------------------- VALVE 4 RESPONSE    (INPUT)
 | | | | | +--------------------- VALVE 3 RESPONSE    (INPUT)
 | | | | | | +------------------- VALVE 2 RESPONSE    (INPUT)
 | | | | | | | +----------------- VALVE 1 RESPONSE    (INPUT)
 | | | | | | | |
 | | | | | | | | +--------------- VALVE 4 DEMAND      (OUTPUT)
 | | | | | | | | | +------------- VALVE 3 DEMAND      (OUTPUT)
 | | | | | | | | | | +----------- VALVE 2 DEMAND      (OUTPUT)
 | | | | | | | | | | | +--------- VALVE 1 DEMAND      (OUTPUT)
 | | | | | | | | | | | |
 | | | | | | | | | | | | +------- VALVE 4 MANUAL      (INPUT)
 | | | | | | | | | | | | | +----- VALVE 3 MANUAL      (INPUT)
 | | | | | | | | | | | | | | +--- VALVE 2 MANUAL      (INPUT)
 | | | | | | | | | | | | | | | +- VALVE 1 MANUAL      (INPUT)
 | | | | | | | | | | | | | | | |
 E F P O R R R R D D D D M M M M
 S I R V V V V V V V V V V V V V
 D R D T 4 3 2 1 4 3 2 1 4 3 2 1


 You then supply a series of 1's and 0's which represent the  system  status.  If
 any  of the top four bits are set the system will take over and provide a preset
 set of valve openings and closures and then prompt you for the  valve  response.
 If  the  valve response does not match the demand signals then 'FAILED' warnings
 will be displayed. If the top four bits are all  zero  the  system  will  be  in
 normal  operation  where  the input from the MANUAL inputs will be echoed to the
 the DEMAND outputs. The system will again prompt for a valve RESPONSE  which  is
 matched  against the demand signal, if they do not match the FAILED message will
 be posted where appropriate.

 If  we  constructed  this  program on IF...THEN or IF...CASE arguments alone the
 program would have run to over ten pages and taken five times as much code!


9.07.12  EVERYTHING BUT THE KITCHEN SINK THROUGH DATA TABLES  (continued)


 0001 ORIGIN=$B000;
 0002
 0003 GLOBAL INTEGER INCHAR,OUTCHAR,OPIN,BITCHAR,INBITS,OUTBITS:
 0004        BYTE INCOUNT,COUNT;
 0005
 0006 INCLUDE 0.IOSUBS;
 0007 INCLUDE 0.BITIO;
 0008
 0009 CONSTANT START=0,END=$FF,ESCAPE=$1B;
 0010
 0011 INTEGER INMASK       $8000,$4000,$2000,$1000;
 0012 INTEGER OUT_ONMASK   $0030,$0010,$0000,$0020;
 0013 INTEGER OUT_OFFMASK  $FF3F,$FF1F,$FF3F,$FFFF;
 0014
 0015 BYTE STATUS " EMERGENCY SHUTDOWN ",
 0016             "  * * * FIRE * * *  ",
 0017             "PRODUCTION EMERGENCY",
 0018             "  OVER TEMPERATURE  ",
 0019
 0020             "  NORMAL OPERATION\N\N
 0021 OPERATOR COMMANDS ARE\N
 0022 =====================\N";
 0023
 0024 BYTE SYSTEM_RESPONSE "\N\N
 0025 THE SYSTEMS RESPONSE IS\N
 0026 =======================";
 0027
 0028 BYTE VALVE_RESPONSE "\N\N
 0029 WHAT IS THE VALVE RESPONSE?\N
 0030 ===========================";
 0031
 0032 BYTE OP_OPEN "OPEN  VALVE (4)",
 0033              "OPEN  VALVE (3)",
 0034              "OPEN  VALVE (2)",
 0035              "OPEN  VALVE (1)";
 0036
 0037 BYTE OP_CLOSE "CLOSE VALVE (4)",
 0038               "CLOSE VALVE (3)",
 0039               "CLOSE VALVE (2)",
 0040               "CLOSE VALVE (1)";
 0041
 0042 BYTE OPEN_VALVE "OPENING VALVE (4)",
 0043                 "OPENING VALVE (3)",
 0044                 "OPENING VALVE (2)",
 0045                 "OPENING VALVE (1)";
 0046
 0047 BYTE CLOSE_VALVE "CLOSING VALVE (4)",
 0048                  "CLOSING VALVE (3)",
 0049                  "CLOSING VALVE (2)",
 0050                  "CLOSING VALVE (1)";
 0051
 0052 BYTE VALVE_OPEN "VALVE (4) = (|)    OPEN",
 0053                 "VALVE (3) = (|)    OPEN",
 0054                 "VALVE (2) = (|)    OPEN",
 0055                 "VALVE (1) = (|)    OPEN";
 0056


9.07.12  EVERYTHING BUT THE KITCHEN SINK THROUGH DATA TABLES  (continued)


 0057 BYTE VALVE_CLOSED "VALVE (4) = (/)  CLOSED",
 0058                   "VALVE (3) = (/)  CLOSED",
 0059                   "VALVE (2) = (/)  CLOSED",
 0060                   "VALVE (1) = (/)  CLOSED";
 0061
 0062 BYTE MAIN_PROMPT "
 0063 WHAT IS THE SYSTEM STATUS?\N
 0064 ==========================";
 0065
 0066 BYTE IO_PROMPT "\N\N
 0067 E F P O R R R R D D D D M M M M\N
 0068 S I R V V V V V V V V V V V V V\N
 0069 D R D T 4 3 2 1 4 3 2 1 4 3 2 1\N
 0070 | | | | | | | | | | | | | | | |\N";
 0071
 0072 PROCEDURE NEW_SCREEN;
 0073    COUNT=24;
 0074    REPEAT
 0075       CRLF;
 0076       COUNT=COUNT-1;
 0077    UNTIL COUNT=0;
 0078 ENDPROC;
 0079
 0080 PROCEDURE DELAY;
 0081    PRINT("\N\NHIT ESCAPE TO CONTINUE");
 0082    REPEAT
 0083    UNTIL GETKEY=$1B;
 0084    PRINT("\N\N");
 0085 ENDPROC;
 0086
 0087 PROCEDURE SYSTEM_STATUS;
 0088    INCOUNT=0;
 0089    REPEAT
 0090       IF !INCHAR AND INMASK(INCOUNT) <> 0
 0091          THEN BREAK;
 0092       INCOUNT=INCOUNT+1;
 0093    UNTIL INCOUNT=4;
 0094    CRLF;
 0095    PRINT(.STATUS(INCOUNT*21));
 0096 ENDPROC;
 0097
 0098 PROCEDURE OPERATOR_COMMAND_IN;
 0099    OPIN=INCHAR;
 0100    OPIN=SWAP(OPIN);     /* THIS SAVES US FROM DOING SHIFT(OPIN,12)! */
 0101    OPIN=SHIFT(OPIN,4);  /* PUT OPERATOR VALVE DEMANDS INTO TOP 4-BITS */
 0102    OPIN=OPIN AND $F000; /* CLEAR THE LOWER 12 BITS */
 0103
 0104    COUNT=0;
 0105    REPEAT
 0106       PRINT("\N  ");
 0107       IF OPIN AND INMASK(COUNT) <> 0
 0108          THEN PRINT(.OP_OPEN(COUNT*16));
 0109          ELSE PRINT(.OP_CLOSE(COUNT*16));
 0110       COUNT=COUNT+1;
 0111    UNTIL COUNT=4;
 0112 ENDPROC;
 0113

9.07.12  EVERYTHING BUT THE KITCHEN SINK THROUGH DATA TABLES  (continued)


 0114 PROCEDURE OPERATOR_COMMAND_OUT;
 0115    OUTCHAR=INCHAR;
 0116    BITCHAR=INCHAR;
 0117    BITCHAR=SHIFT(BITCHAR,4);    /* SHIFT OPERATOR INPUT TO COMMAND OUT */
 0118    BITCHAR=BITCHAR AND $00F0;   /* CLEAR ALL SURROUNDING BITS TO 0 */
 0119    OUTCHAR=OUTCHAR OR BITCHAR;  /* SET OPEN COMMANDS TO 1 */
 0120    BITCHAR=BITCHAR OR $FF0F;    /* SET ALL SURROUNDING BITS TO 1 */
 0121    OUTCHAR=OUTCHAR AND BITCHAR; /* SET ALL CLOSE COMMANDS TO 0 */
 0122 ENDPROC;
 0123
 0124 PROCEDURE EMERGENCY_COMMAND_OUT;
 0125    OUTCHAR=INCHAR;
 0126    OUTCHAR=OUTCHAR OR OUT_ONMASK(INCOUNT);   /* SET OPEN COMMANDS TO 1 */
 0127    OUTCHAR=OUTCHAR AND OUT_OFFMASK(INCOUNT); /* ALL CLOSE CMDS TO 0 */
 0128 ENDPROC;
 0129
 0130 PROCEDURE VALVE_COMMAND_OUT;
 0131    PRINT(.SYSTEM_RESPONSE);
 0132    PRINT(.IO_PROMPT);
 0133    BITSOUT(OUTCHAR);
 0134    CRLF;
 0135    BITCHAR=SWAP(OUTCHAR); /* GET COMMAND BITS INTO TOP 4-BITS */
 0136    COUNT=0;
 0137    REPEAT
 0138       CRLF;
 0139       IF BITCHAR AND INMASK(COUNT) <> 0
 0140          THEN PRINT(.OPEN_VALVE(COUNT*18));
 0141          ELSE PRINT(.CLOSE_VALVE(COUNT*18));
 0142       COUNT=COUNT+1;
 0143    UNTIL COUNT=4;
 0144 ENDPROC;
 0145
 0146 PROCEDURE VALVE_STATUS_IN;
 0147    COUNT=0;
 0148    BITCHAR=SWAP(INCHAR);
 0149    CRLF;
 0150    REPEAT
 0151       CRLF;
 0152       IF BITCHAR AND INMASK(COUNT) <> 0
 0153          THEN PRINT(.VALVE_OPEN(COUNT*24));
 0154          ELSE PRINT(.VALVE_CLOSED(COUNT*24));
 0155       COUNT=COUNT+1;
 0156    UNTIL COUNT=4;
 0157 ENDPROC;
 0158


9.07.12  EVERYTHING BUT THE KITCHEN SINK THROUGH DATA TABLES  (continued)


 0159 PROCEDURE VALVE_RESPONSE_IN;
 0160    PRINT(.VALVE_RESPONSE);
 0161    PRINT(.IO_PROMPT);
 0162    INCHAR=BITSIN;
 0163
 0164    OUTBITS=SWAP(OUTCHAR);
 0165    INBITS=SHIFT(INCHAR,4);
 0166    COUNT=0;
 0167    CRLF;
 0168    REPEAT
 0169       CRLF;
 0170       IF INBITS AND INMASK(COUNT) <> 0
 0171          THEN PRINT(.VALVE_OPEN(COUNT*24));
 0172          ELSE PRINT(.VALVE_CLOSED(COUNT*24));
 0173       IF INBITS AND INMASK(COUNT) <> OUTBITS AND INMASK(COUNT)
 0174          THEN PRINT("   * FAILED *");
 0175       COUNT=COUNT+1;
 0176    UNTIL COUNT=4;
 0177 ENDPROC;
 0178
 0179 PROCEDURE NORMAL_OPERATION;
 0180    OPERATOR_COMMAND_IN;
 0181    DELAY;
 0182    OPERATOR_COMMAND_OUT;
 0183    VALVE_COMMAND_OUT;
 0184    DELAY;
 0185    VALVE_RESPONSE_IN;
 0186 ENDPROC;
 0187
 0188 PROCEDURE EMERGENCY_OPERATION;
 0189    VALVE_STATUS_IN;
 0190    DELAY;
 0191    EMERGENCY_COMMAND_OUT;
 0192    VALVE_COMMAND_OUT;
 0193    DELAY;
 0194    VALVE_RESPONSE_IN;
 0195 ENDPROC;
 0196
 0197 PROCEDURE REAL_SYSTEM_DEMO:BYTE ENDFLAG;
 0198    REPEAT
 0199       INCOUNT=0;
 0200       NEW_SCREEN;
 0201       PRINT(.MAIN_PROMPT);
 0202       PRINT(.IO_PROMPT);
 0203       INCHAR=BITSIN;
 0204       CRLF;
 0205       SYSTEM_STATUS;
 0206       IF INCOUNT = 4
 0207          THEN NORMAL_OPERATION;
 0208          ELSE EMERGENCY_OPERATION;
 0209       PRINT("\N\NHIT ESCAPE TO CONTINUE ... ANY OTHER KEY TO EXIT\N");
 0210       REPEAT
 0211          ENDFLAG=GETKEY;
 0212          IF ENDFLAG <> 0 .AND ENDFLAG <> ESCAPE
 0213             THEN ENDFLAG=END;
 0214      UNTIL ENDFLAG <> 0;
 0215    UNTIL !ENDFLAG=END;

9.08.00  RECURSIVE PROGRAMMING

 Recursion  is  a  natural and elegant solution to many programming problems that
 can otherwise be solved only by far more complicated  non-recursive  algorithms.
 Simplicity  is a key to reliability, hence faster program development. PL/9 is a
 stack-oriented language and is therefore able to handle recursive  programs,  as
 long  as  the  programmer  is  aware of the potential pitfalls. To introduce the
 concept of recursion, consider the following example:


 0001 INCLUDE IOSUBS;
 0002
 0003 PROCEDURE PRINTINT(INTEGER NUM:BYTE BASE);
 0004
 0005    IF NUM<0 THEN
 0006    BEGIN
 0007       PUTCHAR('-);
 0008       NUM=-NUM;
 0009    END;
 0010
 0011    IF NUM >= BASE
 0012       THEN PRINTINT(NUM/BASE,BASE);
 0013    NUM = NUM\BASE + '0
 0014    IF NUM > '9
 0015       THEN NUM=NUM + '7;
 0016    PUTCHAR(NUM);
 0017
 0018 ENDPROC;
 0019
 0020 PROCEDURE TEST: INTEGER N;
 0021    N=-1000;
 0022    REPEAT
 0023       PRINTINT(N,10);
 0024       CRLF;
 0025       N=N+1;
 0026    UNTIL N=1000;


 The  task  of  the  recursive procedure PRINTINT is to print an integer, without
 leading zeros. To do this it first detects if the supplied number  is  negative,
 printing  a  minus sign and negating if it is (lines 5-9), then if the number is
 greater than the BASE it calls itself  (this  is  what  is  meant  by  recursive
 programming)  with  the  same  number  divided by BASE. After this it prints the
 remainder of the same division (the modulus operator \ performs  this  function)
 after it adjusts the number for the specified BASE.

 Consider  the  number 1234 passed to PRINTINT with BASE equal to 10. In line 12,
 123 will be passed to a second invocation of PRINTINT, which in turn passes 12 a
 to  third invocation, which passes 1 to a fourth invocation. At last the test in
 line 11 fails, so the 1 is printed. Returning to level 3  causes  the  2  to  be
 printed.  3  gets printed in level 2 and finally 4 is printed in the outer level
 before the procedure finishes. This process may sound complicated but it  is  in
 fact  quite  simple; the difficulty is only in explaining what is happening. The
 following table should make things a little clearer:

        LEVEL OF CALL     VALUE OF NUM       DIGIT PRINTED

               1                  1234              (123)4
               2                   123               (12)3
               3                    12                (1)2
               4                     1                   1
9.08.00  RECURSIVE PROGRAMMING  (continued)

 This procedure will produce  rather  strange  results  (but  they  are  in  fact
 correct) when negative numbers to base 2 or base 16 are passed to it.


 Recursion can also be applied to functions, as in the following example:

 0001 INCLUDE IOSUBS;
 0002 INCLUDE REALCON;
 0003 INCLUDE PRNUM;
 0004
 0005 PROCEDURE FACTORIAL(REAL NUM);
 0006
 0007    IF NUM<=1 THEN RETURN REAL 1;
 0008
 0009 ENDPROC REAL NUM*FACTORIAL(NUM-1);
 0010
 0011 PROCEDURE TEST: REAL NUM;
 0012
 0013    NUM=0;
 0014    REPEAT
 0015       NUM=NUM+1;
 0016       PRINT("\NFACTORIAL "); PRNUM(NUM);
 0017       PRINT(" IS "); PRNUM(FACTORIAL(NUM));
 0018    UNTIL NUM=20;


 The function procedure FACTORIAL is passed a REAL parameter NUM, and returns the
 factorial of that parameter. It does this by subtracting one from the number and
 calling  itself  recursively,  until the value of the parameter passed as NUM is
 one or less, at which point the function returns unity. Each invocation  of  the
 procedure  only  performs  one  of  the  multiplications needed to get the final
 result.

 A point to note is that since the return type (BYTE, INTEGER or REAL) of a  PL/9
 procedure  is  determined by the argument of an ENDPROC or RETURN statement then
 the recursive call must follow a RETURN otherwise PL/9 does not know  what  type
 the  function  returns  (and  assumes INTEGER). If there is no RETURN before the
 recursive call then a dummy must be put in, such as

    IF FALSE THEN RETURN REAL 0;

 which fixes the type of the function without causing a return.


 An  alternative,  available in PL/9 version 4.XX onwards, is to declare the size
 of the returned variable in the procedure declaration thus:

     PROCEDURE FUNCTION(REAL NUM):INTEGER I:REAL;
                                            ----    This  forces the procedure to
                                                    return a REAL sized variable.

 See section 7.01.11 (PROCEDURE FIVE) for further details.

 Recursive programs can eat into stack at a surprising rate, so always be sure to
 leave a generous amount. The last example, for instance, uses six bytes for each
 nested call, resulting in 120 bytes being used when calculating the factorial of
 20. If any local variables were declared by FACTORIAL (as they might well be  in
 other  examples) then these appear in each of the 20 invocations, greatly adding
 to the space needed.
9.09.00  MULTI-TASKING PROGRAMS

 One  of the more powerful aspects of program architecture 'aided and abetted' by
 PL/9 is the construction of true multi-tasking programs. Multi-tasking  programs
 appear  to  be doing several jobs at once, when in reality they are only doing a
 little bit of each program and then going on to do a  little  bit  of  the  next
 program, and so on.

 The key to writing multi-tasking programs is in the basic rule...


                * * * * * * * * * * * * * * * * * * * * * * * * * *
                *                                                 *
                *  NEVER  WRITE  A  PROCEDURE  THAT 'GRABS' THE   *
                *                                                 *
                *  PROCESSOR FOR ANY APPRECIABLE PERIOD OF TIME   *
                *                                                 *
                * * * * * * * * * * * * * * * * * * * * * * * * * *


 This means that you can NEVER use routines like GETCHAR in the IOSUBS library as
 part of a multi-tasking program. The GETKEY routine on the other hand is ideally
 suited  for  multi-tasking  programs.  Examine the differences between these two
 routines and you should be able to tell why.

 This  rule is also very important where delay routines are concerned. This seems
 to be a contradiction in terms doesn't it? How do you write a delay routine that
 doesn't  delay? The answer lies in how you construct the delay routine. Take the
 following example:


 0001 GLOBAL INTEGER DCOUNT1, DCOUNT2;
 0002
 0003 INCLUDE 0.IOSUBS;
 0004
 0005 PROCEDURE DELAY1;
 0006    IF DCOUNT1=0
 0007       THEN DCOUNT1=231; /* RESET THE DELAY COUNTER */
 0008       ELSE DCOUNT1=DCOUNT1-1;
 0009 ENDPROC;
 0010
 0011 PROCEDURE DELAY2;
 0012    IF DCOUNT2=0
 0013       THEN DCOUNT2=148;
 0014       ELSE DCOUNT2=DCOUNT2-1;
 0015 ENDPROC DCOUNT2;
 0016
 0017
 0018 PROCEDURE MAIN;
 0019    DCOUNT1=1;
 0020    DCOUNT2=1;
 0021
 0022    REPEAT
 0023       DELAY1;
 0024       IF DCOUNT1=0
 0025          THEN PRINT("\NHELLO");
 0026
 0027       IF DELAY2=0
 0028          THEN PRINT("   GOODBYE");
 0029    FOREVER;

9.09.00  MULTI-TASKING PROGRAMS  (continued)

 In the example note that  all  of  the  delay  counts  are  declared  as  GLOBAL
 variables.  Also  note  that  we  have  written  the two delay routines slightly
 differently. One is written as a normal procedure with no  local  variables  and
 the other is written as a function.

 The  difference  is  only  to  illustrate  that  there  is  more than one way to
 accomplish the same end. In this example the structure of 'DELAY2' results in  a
 slightly more readable structure in the main program.

 Look at the way DELAY1 is structured.


 0005 PROCEDURE DELAY1;
 0006    IF DCOUNT1=0
 0007       THEN DCOUNT1=231; /* RESET THE DELAY COUNTER */
 0008       ELSE DCOUNT1=DCOUNT1-1;
 0009 ENDPROC;


 Note that there is no way for this routine to 'lock up' and steal the processor.
 On line 6 we simply test whether the global variable DCOUNT1 has reached 0  yet.
 If  it  has we reset it to the delay time constant via line 7. If it is not 0 we
 simply decrement DCOUNT in line 8. Since this procedure does not pass any  value
 back  to  who  called it the main program must also refer to the global variable
 DCOUNT1.

 Now look at the way we structured DELAY2. Again we are using a  global  variable
 for  the  delay  counter  DCOUNT2,  but this time we pass a 'copy' of it back to
 whoever called it. This allows us to effectively call DELAY2 and find  out  what
 it did to DCOUNT2 as one single statement.


 0011 PROCEDURE DELAY2;
 0012    IF DCOUNT2=0
 0013       THEN DCOUNT2=148;
 0014       ELSE DCOUNT2=DCOUNT2-1;
 0015 ENDPROC DCOUNT2;


 The differences in structure between DELAY1 and DELAY2 are  highlighted  in  the
 main program.


 0022    REPEAT
 0023       DELAY1;
 0024       IF DCOUNT1=0
 0025          THEN PRINT("\NHELLO");
 0026
 0027       IF DELAY2=0
 0028          THEN PRINT("   GOODBYE");
 0029    FOREVER;


 To  use  DELAY1 we have to first 'CALL' it in line 23. Then find out what DELAY1
 did to DCOUNT1 we have to evaluate DCOUNT1 as illustrated in line 24.


9.09.00  MULTI-TASKING PROGRAMS  (continued)

 The structure of DELAY2 is much more suited to the job we wish to accomplish  in
 this  example  as  line 27 illustrates. Here we simply treat DELAY2 as though it
 were a variable. This has the effect of greatly simplifying the code as well  as
 improving  the readability of the program.

 The structure of DELAY1 does have its advantages in some circumstances  such  as
 those where you wish to put all of the delay counters into one single routine in
 order to simplify the control flow of a program.

 Another important point to note is that all delay counters MUST be  declared  as
 global variables. If they are declared as local variables they will be lost when
 the procedure terminates. Generally speaking multi-tasking programs will tend to
 rely  heavily  on  GLOBAL  variables for two reasons. First so that they are not
 lost between procedures. Second so that they may be accessed by all procedures.

 The sample program presented actually works. You are encouraged to  type  it  in
 and  run it under the PL/9 tracer. Try fiddling with the counter reset values in
 lines 7 and 13 and see what effect it has on the ratio and speed of presentation
 of the two messages.


 The  program  presented  on  the  following  pages  is  a  much  more  elaborate
 demonstration  of  how  to write a multi-tasking program. It also works but will
 have to be compiled to memory or disk and run directly as it  will  not  operate
 properly in the PL/9 tracer due to the keyboard polling technique used.

 This  demonstration  program  runs  FIVE  tasks  simultaneously.  The tasks will
 appear on the video display as follows:


 HIT ESCAPE TO TERMINATE PROGRAM    <---- this message will flash on and off.

 |----------------------------|     <---- is a 30 column  buffer  where  you  may
                                          type in characters and back-space.

 99 <------------------------------------ is a fast counter moving between +/- 99
 99 <------------------------------------ is a slightly slower counter.
 99 <------------------------------------ is an even slower counter.


 This program will work best with a fast video display. If  you  use  it  with  a
 terminal we suggest that the baud rate be no less than 9600 baud.

 Four  constants in the program must also be set to the values recognized by your
 terminal or video display for:

 non-destructive cursor right
 non-destructive cursor left  (usually back-space)
 non-destructive cursor up
 non-destructive cursor down


 We  will present a full explanation of each section of the program following the
 source listing.


9.09.00  MULTI-TASKING PROGRAMS  (continued)

                       A FIVE TASK MULTI-TASKING PROGRAM


 0001 GLOBAL INTEGER DNUMBER(3), DCOUNT(3), PASSES, FLASH_COUNT:
 0002        BYTE COL_COUNT, INCHAR, FLASH_TOGGLE, TOGGLE(3), DISPLAY_DELAY,
 0003             CURSOR_MOVE_FLAG;
 0004
 0005 INCLUDE 0.IOSUBS;
 0006 INCLUDE 0.REALCON;
 0007
 0008 /* DISPLAY DEPENDANT EQUATES */
 0009
 0010 CONSTANT NON_DESTRUCTIVE_CURSOR_UP=$0B,
 0011          NON_DESTRUCTIVE_CURSOR_DN=$0E,
 0012          NON_DESTRUCTIVE_CURSOR_RT=$0C,
 0013          NON_DESTRUCTIVE_BACKSPACE=$08;
 0014
 0015 CONSTANT ESCAPE=$1B, _SPACE=$20, BELL=$07, _RETURN=$0D,
 0016          LOLIMIT=$20, HILIMIT=$7D, COL_LIMIT=30, UP=0, DN=1,
 0017          CDELAY=20, FDELAY=30, PCOUNT=200;
 0018
 0019 PROCEDURE PRNUM(REAL NUMBER):BYTE BUFFER(20);
 0020    PRINT(ASCII(NUMBER,.BUFFER));
 0021 ENDPROC;
 0022
 0023 PROCEDURE CURSOR_UP(BYTE NUMBER);
 0024    REPEAT
 0025       PUTCHAR(NON_DESTRUCTIVE_CURSOR_UP);
 0026       NUMBER=NUMBER-1;
 0027    UNTIL NUMBER=0;
 0028 ENDPROC;
 0029
 0030 PROCEDURE CURSOR_DN(BYTE NUMBER);
 0031    REPEAT
 0032       PUTCHAR(NON_DESTRUCTIVE_CURSOR_DN);
 0033       NUMBER=NUMBER-1;
 0034    UNTIL NUMBER=0;
 0035 ENDPROC;
 0036
 0037 PROCEDURE CURSOR_RT(BYTE NUMBER);
 0038    NUMBER=NUMBER-1;
 0039    IF NUMBER=0
 0040       THEN RETURN; /* DON'T MOVE */
 0041    REPEAT
 0042       PUTCHAR(NON_DESTRUCTIVE_CURSOR_RT);
 0043       NUMBER=NUMBER-1;
 0044    UNTIL NUMBER=0;
 0045 ENDPROC;
 0046
 0047 PROCEDURE DELAY_TIMERS:BYTE TIMER;
 0048    TIMER=0;
 0049    REPEAT
 0050       IF DCOUNT(TIMER)=0
 0051          THEN DCOUNT(TIMER)=CDELAY*(TIMER+1);
 0052          ELSE DCOUNT(TIMER)=DCOUNT(TIMER)-1;
 0053       TIMER=TIMER+1;
 0054    UNTIL TIMER=3;
 0055 ENDPROC;
 0056
9.09.00  MULTI-TASKING PROGRAMS  (continued)


 0057 PROCEDURE COUNT:BYTE COUNTER;
 0058    COUNTER=0;
 0059    DELAY_TIMERS;
 0060
 0061    REPEAT
 0062       IF DCOUNT(COUNTER)=0
 0063          THEN IF TOGGLE(COUNTER)=UP
 0064                  THEN BEGIN
 0065                       DNUMBER(COUNTER)=DNUMBER(COUNTER)+1;
 0066                       IF DNUMBER(COUNTER)=99
 0067                          THEN TOGGLE(COUNTER)=DN;
 0068                       END;
 0069                  ELSE BEGIN
 0070                       DNUMBER(COUNTER)=DNUMBER(COUNTER)-1;
 0071                       IF DNUMBER(COUNTER)=-99
 0072                          THEN TOGGLE(COUNTER)=UP;
 0073                       END;
 0074       COUNTER=COUNTER+1;
 0075    UNTIL COUNTER=3;
 0076 ENDPROC;
 0077
 0078 PROCEDURE NEW_LINE(BYTE LINES);
 0079    CURSOR_MOVE_FLAG=TRUE;
 0080    CURSOR_DN(LINES);
 0081    PUTCHAR(_RETURN);
 0082    SPACE(4);
 0083    PUTCHAR(_RETURN);
 0084 ENDPROC;
 0085
 0086 PROCEDURE DISPLAY_COUNTS:BYTE COUNTER;
 0087    COUNTER=0;
 0088
 0089    REPEAT
 0090       IF DCOUNT(COUNTER)=0
 0091          THEN BEGIN
 0092               NEW_LINE(COUNTER+2);
 0093               PRNUM(DNUMBER(COUNTER));
 0094               CURSOR_UP(COUNTER+2);
 0095               END;
 0096       COUNTER=COUNTER+1;
 0097    UNTIL COUNTER=3;
 0098 ENDPROC;
 0099
 0100 PROCEDURE FLASH_MESSAGE;
 0101    IF FLASH_COUNT=0
 0102       THEN BEGIN
 0103            CURSOR_UP(2);
 0104            CURSOR_MOVE_FLAG=TRUE;
 0105            PUTCHAR(_RETURN);
 0106            FLASH_COUNT=FDELAY;
 0107            FLASH_TOGGLE=NOT(FLASH_TOGGLE);
 0108            IF FLASH_TOGGLE=TRUE
 0109               THEN PRINT("HIT ESCAPE TO TERMINATE PROGRAM");
 0110               ELSE SPACE(31);
 0111            CURSOR_DN(2);
 0112            END;
 0113    FLASH_COUNT=FLASH_COUNT-1;
 0114 ENDPROC;
9.09.00  MULTI-TASKING PROGRAMS  (continued)


 0115
 0116 PROCEDURE OP_INPUT;
 0117    PASSES=0;
 0118    IF CURSOR_MOVE_FLAG=TRUE
 0119       THEN BEGIN
 0120            CURSOR_MOVE_FLAG=FALSE;
 0121            PUTCHAR(_RETURN);
 0122            CURSOR_RT(COL_COUNT);
 0123            END;
 0124
 0125    REPEAT
 0126       INCHAR=GETKEY;
 0127       IF INCHAR >= LOLIMIT .AND INCHAR <= HILIMIT
 0128          THEN BEGIN
 0129               IF COL_COUNT < COL_LIMIT
 0130                  THEN BEGIN
 0131                       PUTCHAR(INCHAR);
 0132                       COL_COUNT=COL_COUNT+1;
 0133                       END;
 0134                   ELSE PUTCHAR(BELL);
 0135               END;
 0136
 0137       IF INCHAR = NON_DESTRUCTIVE_BACKSPACE
 0138          THEN IF COL_COUNT <> 1
 0139               THEN BEGIN
 0140                    PUTCHAR(NON_DESTRUCTIVE_BACKSPACE);
 0141                    PUTCHAR(_SPACE);
 0142                    PUTCHAR(NON_DESTRUCTIVE_BACKSPACE);
 0143                    COL_COUNT=COL_COUNT-1;
 0144                    END;
 0145          ELSE PUTCHAR(BELL);
 0146       PASSES=PASSES+1;
 0147       IF INCHAR=ESCAPE .OR INCHAR=_RETURN
 0148          THEN BREAK;
 0149    UNTIL PASSES=PCOUNT;
 0150 ENDPROC;
 0151
 0152 INTEGER NUMBRINIT 100,100,100;
 0153 INTEGER DELAYINIT 1,1,1;
 0154 BYTE    TOGGLINIT DN,DN,DN;
 0155
 0156 PROCEDURE MAIN:BYTE INDEX;
 0157    CURSOR_MOVE_FLAG=TRUE;
 0158    FLASH_COUNT=FDELAY;
 0159    FLASH_TOGGLE=TRUE;
 0160
 0161    INDEX=0;
 0162    REPEAT
 0163       DNUMBER(INDEX)=NUMBRINIT(INDEX);
 0164       DCOUNT(INDEX)=DELAYINIT(INDEX);
 0165       TOGGLE(INDEX)=TOGGLINIT(INDEX);
 0166       INDEX=INDEX+1
 0167    UNTIL INDEX=3;
 0168
 0169    PRINT("\N\N\N\N\N\N\N\N\N\N");
 0170    CURSOR_UP(4);
 0171

9.09.00  MULTI-TASKING PROGRAMS  (continued)


 0172 OP_INPUT_NEW_LINE:
 0173
 0174    PUTCHAR(_RETURN);
 0175    PRINT("  * * TYPE SOMETHING HERE * * ");  /* EQUAL TO DISPLAY WIDTH */
 0176    COL_COUNT=1;
 0177    PUTCHAR(_RETURN);
 0178
 0179    REPEAT
 0180       FLASH_MESSAGE;
 0181       DISPLAY_COUNTS;
 0182       COUNT;
 0183       OP_INPUT;
 0184
 0185       IF INCHAR = _RETURN
 0186          THEN GOTO OP_INPUT_NEW_LINE;
 0187
 0188       IF INCHAR = ESCAPE
 0189          THEN BREAK;
 0190    FOREVER;
 0191
 0192    CURSOR_DN(4);


9.09.00  MULTI-TASKING PROGRAMS  (continued)

 Lines 1, 2 and 3 are the GLOBAL variable declaration. Note that it is the  first
 declaration  in  the  procedure.  Of  particular  interest  is  they way we have
 declared DNUMBER, DCOUNT, and TOGGLE. Each of these has been  declared  as  a  3
 element  vector (0, 1, and 2). The reasons for this will become clearer later in
 this discussion.

 Lines 5 and 6 are the now familiar library inclusions.

 Lines 10 through 13 are a series of constants that tell  the  remainder  of  the
 program  what  codes  to  use  for  the  functions  indicated.  Declaring system
 dependant variables like this at the top of a program as constants will not only
 make  the  program  more  portable than would be the case if we had imbedded the
 codes into the body of  the  program  but  will  also  clearly  identify  system
 dependant variables.

 Lines  15  through  17  are  another  group  of  CONSTANTS placed in a prominent
 position in the program for similar reasons  to  those  stated  above.  You  are
 allowed  to  make  as  many  CONSTANT declarations in a program as you wish, and
 position them wherever you wish.

 Lines 19 through 21 are the PRNUM procedure discussed in section 8.05.08.

 Lines 23 through 28 are a function that is passed a single byte  called  NUMBER.
 One  each iteration of the REPEAT loop between lines 24 and 27 the code declared
 in the CONSTANT 'NON-DESTRUCTIVE_CURSOR_UP' will be  transmitted  to  the  video
 display  via  the  PUTCHAR  routine  in  IOSUBS  on line 25. NUMBER will then be
 decremented on line 26 and tested for a zero condition on line 27. If NUMBER  is
 not  zero  the  loop  will  be executed over and over again until NUMBER finally
 equals zero. This procedure allows us to move the display cursor up a  specified
 number of lines, the minimum is 1 the maximum is 255.

 The  procedure  between  lines 30 - 35 performs a similar function but moves the
 cursor down instead of up.

 The procedure between lines 37 through is also similar  but  it  decrements  the
 value of number immediately upon entry at line 38. If NUMBER is equal to zero at
 this point the procedure will be terminated via the RETURN statement in line 40.
 If  NUMBER  is  not  zero  at  this  point a REPEAT loop similar to the one just
 discussed will be entered. This program has obviously been structured to  reject
 the value of 1 being assigned to NUMBER. The reason for this will become obvious
 shortly.

 The next procedure between lines 47 and 55 is somewhat more complicated. Again a
 REPEAT...UNTIL  loop is present so we must be doing something several times, but
 what? Upon entry we set a local variable called TIMER to zero. In this procedure
 TIMER  will  be  used  to  subscript  vectors.  On  the  first  iteration of the
 REPEAT...UNTIL loop line 50 can be read as: 'IF DCOUNT(0)=0' which points to the
 first  element  of  DCOUNT  and  compares  it  with zero. If it is zero the THEN
 statement on line 51 will be executed. On the first iteration of the  loop  this
 line  can  be  read as: 'THEN DCOUNT(0)=DCOUNT * (1)' CDELAY is a constant which
 will be multiplied by one and assigned to DCOUNT(0). This will reset  the  delay
 counter to its upper limit. If the comparison with zero on line 50 were not true
 then line 52 would be executed. On the first iteration this line could  be  read
 as  'DCOUNT(0)=DCOUNT(0)-1',  a  simple  decrement  of  the first element in the
 vector. Line 53 is then executed which bumps the value of TIMER to  1.  Line  54
 looks  to  see  if  TIMER  is  3 which it won't be until two more iterations are
 completed.


9.09.00  MULTI-TASKING PROGRAMS  (continued)

 On  the  second  and  third  (final)  iterations  the  only  line  that   varies
 significantly is line 51. On the second iteration CDELAY will be multiplied by 2
 and on the third by 3. By the end of the third iteration  we  will  have  either
 reset  every delay counter, i.e. DCOUNT(0), DCOUNT(1) and DCOUNT(2) to its reset
 count value or will have decremented it by one.  The  structure  of  this  delay
 counter  routine  is  a  very  efficient  expansion  of the single delay counter
 routine discussed earlier in this section. Instead of assigning  a  reset  count
 based  on the multiplication of CDELAY and TIMER we could just as well taken the
 data from a READ-ONLY  data  table  OR  another  set  of  vectors.  In  fact  to
 illustrate this point we will be doing just this later in the program.

 Lines 57 through 76 form another procedure that accesses a series of vectors via
 an  incrementing  index.  Line 58 initializes the index COUNTER to zero. Line 59
 calls the routine DELAY_TIMERS we just discussed. Note that the key word CALL is
 not  used.  The  structure of PL/9 is such that simply entering a procedure name
 implies a call  to  that  procedure.  Perhaps  if  we  had  called  DELAY_TIMERS
 'DECREMENT_THE_3_DELAY_TIMERS_IF_THEY_ARE_NOT_ZERO_OR_RESET_THEM_IF_THEY_ARE'...
 this single entry would have made  more  sense.  There  is  nothing  wrong  with
 calling  a  procedure  by  a  name  such  as this, and it does not cause PL/9 to
 generate any extra code. Long procedure names only have two drawbacks...they are
 a  pain  in  the  neck  to type in if the procedure is used several times in the
 program AND they can interfere with the presentation when  nesting  the  control
 arguments.

 Lines  61  through 75 form the main body of this program. On the first iteration
 of the REPEAT...UNTIL loop line 62 would read 'IF DCOUNT(0) = 0'.  What  we  are
 doing  here is testing to see if the first delay counter DCOUNT(0) has timed out
 yet. If the time delay is completed, as indicated by DCOUNT(0)  being  equal  to
 zero  the  program will proceed into the body of the program between lines 63 to
 73. If DCOUNT(0) is not zero the main body of the  program  will  be  completely
 bypassed  and  line  74 executed. Assuming that DCOUNT(0) is 0 line 63 will then
 test TOGGLE(0) and see if it is set to 'UP'. UP is a constant  equal  to  0.  UP
 simply  serves as a convenient label to tell us what we are actually looking for
 and to improve the readability of the program. If we had said 'IF  TOGGLE(0)  =0
 THEN'  what  would  be the significance of '0'. The use of constants rather than
 embedding cryptic references to 0 and 1 (or any other states or counter  values)
 greatly  improves  program  readability  AT  NO  EXPENSE  IN  CODE EFFICIENCY OR
 EXECUTION SPEED.

 If TOGGLE(0) was equal to UP lines 64 through 68 will be executed. If  TOGGLE(0)
 was not equal to UP lines 69 through 73 would be executed. Assume that TOGGLE(0)
 was equal to UP for a moment. Line 65 would be  executed  and  may  be  read  as
 DNUMBER(0)=DNUMBER(0)+1,  a  simple  increment.  Then  line 66 is executed which
 tests to see if DNUMBER(0) has reached 99 yet. If it has line 67  will  then  be
 executed  as  TOGGLE(0)=DN.  Where  DN  is another constant declared as being 1.
 Control is now passed to line 74.

 Lines 69 through 73 form the alternative path which handle the  case  where  the
 counter  is counting down toward -99. When -99 is reached the TOGGLE is then set
 to start the counter counting up toward +99.

 Line 74 bumps COUNTER to the next value, which, after the first iteration,  will
 make  COUNTER  equal  to  1.  Line  75  tests  COUNTER  and compares it with the
 termination value of 3. Obviously 1 is not equal to 3 so the main  body  of  the
 program  commencing  at  line  61 will be executed over again, this time with an
 index of 1. The second iteration will do exactly the same as the first but  will
 access  the  second  element  of  the  vectors  DCOUNT,  DNUMBER, and DTOGGLE as
 DCOUNT(1), DNUMBER(1), and DTOGGLE(1);

9.09.00  MULTI-TASKING PROGRAMS  (continued)

 The  use  of vectors in this application CONSIDERABLY improves not only the code
 efficiency of the program but also the execution  speed.  If  we  had  not  used
 vectors  we  have  had  to duplicate the main body of the DELAY_TIMERS procedure
 three times and the main body of the COUNT procedure  three  times.  This  would
 have  in turn necessitated three calls to the different delay routines and three
 calls to the different COUNT routines. Virtually any program that  requires  the
 same  or similar function to be repeated several times will be best done through
 vectors and data tables. Once vectors are fully understood the  procedures  that
 use them will be just as readable as the procedures that don't.

 Lines 78 through 84 form a function called NEW_LINE. Line  79  sets  the  global
 variable CURSOR_MOVE_FLAG to true in order to inform another part of the program
 that the cursor has been moved. The cursor is then moved  down  by  calling  the
 CURSOR_DN routine and passing along the incoming variable LINES which was passed
 to NEW_LINE by whoever called it. Line 81 returns the cursor to the left side of
 the screen by sending a carriage return (but no line feed!) to the video display
 via the PUTCHAR routine in IOSUBS. The next line sends 4 spaces out to the video
 display  via  another  routine in IOSUBS, and the following line sends a another
 carriage return out to the video display. This bit of gyration is used to cancel
 the  effect of the decrementing displays starting out as 99, a two digit number,
 decrementing into single  digit  numbers  and  then  finally  decrementing  into
 negative  two  digit  numbers.  This procedure simply erases the contents of the
 line of interest before the latest count value is displayed by another routine.

 Lines 86 through 98 form yet another vector  oriented  REPEAT...UNTIL  procedure
 called  DISPLAY_COUNTS.  As  the name suggests this is the routine that will put
 the counter values on the video display. Again we  initialize  an  index  called
 COUNTER  to zero on line 87. The main body of the procedure is contained between
 line 89 and line 97. Line 90 can be read as 'IF DCOUNT(0)  =  0'  on  the  first
 iteration  of  the REPEAT...UNTIL loop. This means if delay counter DCOUNT(0) is
 zero we are to execute lines 91 through 95, if it is not control will be  passed
 directly  to  line  96.  Lets take the case where DCOUNT(0) is in fact 0. If you
 remember the previous procedure would have decremented DNUMBER(0)  if  DCOUNT(0)
 was  zero.  What  this  procedure does is display the number ONLY if it has been
 decremented.

 Line 92 will position the cursor two lines down PLUS the value  of  COUNTER.  On
 the  first  iteration  this  would move the cursor down two lines, on the second
 three lines, etc.  NEW_LINE  clear  off  the  last  count  value  as  previously
 described. PRNUM will then print 'DNUMBER(0)' on the video display. Control will
 then be passed to line 96 which will increment our index COUNTER. Line 97  looks
 for  a  termination  value of 3, and, as in the two previous examples causes the
 main body of the loop to be executed two more  times  to  access  the  next  two
 elements of the vectors.

 It  is  important to note the trouble we are going to to prevent the cursor from
 being moved EXCEPT when we actually need to position  it  in  order  to  display
 data. This is a very important consideration for serial I/O.

 Lines  100 through 114 form a procedure called FLASH_MESSAGE that, believe it or
 not, does NOT use vectors! This  procedure,  as  its  name  implies,  flashes  a
 message  on the video display. On entry line 101 tests to see if the flash delay
 counter FLASH_COUNT has reached zero yet. If it has lines 102 through  112  will
 be  executed.  Otherwise  control  will  be passed to line 113 which will simply
 decrement FLASH_COUNT and terminate the procedure at line  114.  Again  we  have
 created  a  procedure  that  produces  a  delay  without  actually  seizing  the
 processor, a mandatory requirement  of  a  multi-tasking  program  that  is  not
 interrupt driven.

9.09.00  MULTI-TASKING PROGRAMS  (continued)

 Lines  102  through  112 form the main body of the FLASH_MESSAGE procedure. Lets
 take it apart and see what makes it tick. First we move the cursor up two  lines
 via  the  function  call to CURSOR_UP on line 103. (We'll be explaining what all
 the cursor movements are for a bit later in this  somewhat  protracted  treatis)
 Then  we then set the CURSOR_MOVE_FLAG to indicate that we have moved the cursor
 (these long names are really nice aren't they!). We then send a carriage  return
 (no  line  feed) to the video display via PUTCHAR on line 105. Next we reset the
 flash delay counter FLASH_COUNT to the value of the constant FDELAY.

 Remember what we said earlier in this discussion about declaring time constants,
 delays,  terminal  I/O  characters,  I/O  addresses,  etc.,  as constants at the
 BEGINNING of a program. Imagine what a nuisance it  would  be  to  have  to  dig
 through  the  body  of this program to change the time constants we have used so
 far. With numbers of this nature declared near the  start  of  the  program  the
 'fine  tuning'  of  program delay counters, or the reconfiguration of the system
 hardware will be greatly simplified at a later date. One of the main rules  that
 we, and others involved in industrial control work, have learned the hard way is
 that...


  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
  *                                                                           *
  *  Control programs should beSTRUCTUREDto accommodateINEVITABLEchanges! *
  *                                                                           *
  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


 ANY  control program that is written on the basis of 'THE SPECIFICATION' without
 any thought as to providing the 'hooks'  to  facilitate  the  inevitable  'small
 change' is setting a course for disaster and probably a very dissatisfied client
 at the end of the day.

 It  the  job of a good control programmer to structure his programs so that when
 changes must be incorporated it will not require  a  complete  re-write  of  the
 program.  PL/9  has  built  in capabilities to assist the programmer along these
 lines but a great deal of the responsibility for program structure lies  in  the
 hands of the programmer. If, for example, you wrote this program as one big MAIN
 procedure without any of the  smaller  subroutine  structures  illustrated,  you
 would  produce  a  program that would be very difficult indeed to maintain. When
 you define separate elements of the main program as  individual  procedures  not
 only  is  the  program  easier to troubleshoot it is also easy to add extra bits
 here and there when then are needed without major surgery!

 Where  were  we?  Oh  yes,  line  107.  This  line serves to invert the variable
 FLASH_TOGGLE. The state of FLASH_TOGGLE will determine if we are  going  to  put
 the  message  up  on  the display or if we are going to send a blank line to the
 display. Each time FLASH_COUNT reaches zero we will be  toggling  the  state  of
 FLASH_TOGGLE back and forth to give a 50% duty cycle on the flash rate. Line 108
 then tests the state of FLASH_TOGGLE to determine if line 109 or line 110 is  to
 be  executed.  Line  109  will print the message on the screen and line 110 will
 remove the message from the screen.


9.09.00  MULTI-TASKING PROGRAMS  (continued)

 Lines 116 through 150 form the procedure OP_INPUT which  controls  the  operator
 input  line.  Line  116  initializes  a  pass  counter to zero. Line 116 sends a
 carriage return to the display. Line 118 finds out if the cursor has been  moved
 by  somebody  else  and  if  it has begins executing lines 119 through 123 which
 restore it to the position  the  operator  left  it  in.  Line  120  resets  the
 CURSOR_MOVE_FLAG. Line 121 puts the cursor at the left margin and line 122 moves
 the cursor to the right by the current value of COL_COUNT. This  serves  to  put
 the  cursor  back  to  the  place  the  operator  last  had it when this task is
 selected.

 Lines 125 through 149 form the main body of this procedure. If you look  closely
 at  line 149 and see what value we have assigned to PCOUNT (200) it would appear
 that we are breaking one of our own rules. This procedure will hang  on  to  the
 processor  for 199 iterations of the loop between lines 125 and 149. Why? I hear
 you ask! PRIORITY I answer!  This  procedure  is  one  of  several  tasks  which
 manipulate  the display cursor up and down the screen AND this task is expecting
 input from an operator. Since the operator needs to see the cursor in  order  to
 manipulate his data line we must take steps to ensure that the cursor remains on
 the operator input line the majority of the time. If we did not assign this task
 a  high  priority by making the processor execute it 199 times the program would
 still work but the operator would not be able to see the  cursor.  Try  changing
 the constant PCOUNT=200 to PCOUNT=1 and see what happens.

 Line  126  uses the IOSUBS procedure GETKEY to poll the keyboard. GETKEY, unlike
 GETCHAR, does not hang onto the processor. It will return with with  a  keyboard
 code  if a key was hit or a NULL ($00) if one wasn't. Line 121 then compares the
 incoming character with the CONSTANTS LOLIMIT and HILIMIT to  determine  whether
 the  code  is acceptable or not. If the incoming character passes the limit test
 lines 128 through 135 will be executed, otherwise control will be passed to line
 137.  Line  129  compares  the  variable COL_COUNT, which represents the current
 column the cursor is in,  with  the  constant  COL_LIMIT.  Once  again  we  used
 constants  to  define  three  potentially  variable  items: LOLIMIT, HILIMIT and
 COL_LIMIT to make  our  program  more  adaptable.  If  COL_COUNT  is  less  than
 COL_LIMIT  the  operator  still  has  room on his display to enter characters so
 lines 130 through 133 will be executed. Line 131 echos  the  incoming  character
 back  to the video display. Line 132 bumps the column counter. If line 129 found
 that the operator was already at the right  column  limit  (entering  characters
 moves  the  cursor  to  the right!) line 134 would send a BELL code to the video
 display, which, if it supports the BELL code $07, will 'beep'  the  operator  to
 warn  him  that  he  is  at his display limit. All he can do at this point is to
 back-space or keep hitting characters and getting a 'beep' for his efforts.

 Lines 137 through 145 handle the situation when  the  incoming  character  is  a
 backspace.  The  structure of line 121 assumes that backspace will not be within
 the range of LOLIMIT to HILIMIT. If there was any chance of the  backspace  code
 falling into this range we could simply add another argument as follows:


    IF INCHAR >= LOLIMIT .AND INCHAR <= HILIMIT
       .AND INCHAR <> NON_DESTRUCTIVE_BACKSPACE
       THEN BEGIN


9.09.00  MULTI-TASKING PROGRAMS  (continued)

 If  the  incoming character is verified to be a back-space on line 137, line 138
 then tests to see if COL_COUNT is at the  left  margin  which  is  signified  by
 COL_COUNT  being equal to one. If this is the case line 145 will be executed and
 another 'beep' sent to the operator. If the COL_COUNT indicates that the  cursor
 is  anywhere  else  on the display lines 140 through 144 will be executed. Lines
 140 through 142 are identical to the 'rub-out' routine discussed in the  section
 on  'GOTO'  (9.03.02)  and serve to back up the cursor and rub-out the character
 just back-spaced over. Line 143 then decrements the column counter to keep track
 of the back spaces.

 Line  146  bumps  the pass counter PASSES. Line 147 tests to see if the incoming
 character is equal to the constant ESCAPE or the constant _RETURN. If it is  the
 OP_INPUT  procedure  will  be  terminated immediately via the BREAK statement on
 line 148. Line 149 completes the loop and keeps passing control back to line 125
 until PASSES is equal to the constant PCOUNT thus holding onto the processor for
 several passes in order to establish this event as a high priority task.

 Now that we have defined the various procedures in this  program  lets  see  how
 they fit together to give us our five concurrent tasks:

 1. We  have DELAY_TIMERS which either resets or decrements the three delays used
    to control the rate that the three counters are decremented/incremented.

 2. We have COUNT which  either  increments  or  decrements  the  three  counters
    depending on the state of the delay count and the state of the toggle flag.

 3. We have DISPLAY_COUNTS which will display each of the counter values AS it is
    decremented. If the count value has not changed since the last screen  update
    the information on the screen will be left alone.

 4. We  have  FLASH_MESSAGE  which  either sends a message or a blank line to the
    display at the end of each delay interval which it handles internally.

 5. We have the high priority task OP_INPUT which  controls  an  edited  line  of
    information on the screen.


 Armed with all of these procedures (which  can  be  tested  one  at  a  time  if
 problems  arise)  we  now  enter  the realm of the main procedure, appropriately
 named MAIN. The first section of MAIN between lines 157 and 167 deals  with  the
 initialization  of  all  of  the variables used in the program, a very important
 step! Lines 157 through 159 should be pretty obvious.

 As promised earlier we are now going to initialize all of the READ/WRITE vectors
 from  a  set of READ-ONLY data tables. The data tables are declared at lines 152
 through 154. They could just as easily been declared in the early  part  of  the
 program,  say  at  line  18, just after the constants. In practice this is where
 they really should have been declared if one  suspects  that  they  may  require
 alteration  or  fiddling  at  a later date. The use of data tables to initialize
 every element of a vector to the same value is a bit  of  overkill  to  say  the
 least  BUT  it  does give one the opportunity to vary the value assigned to each
 element of  the  vector  should  the  need  arise.  Just  before  we  enter  the
 REPEAT...UNTIL  loop  between  lines 162 and 167 we initialize the index counter
 INDEX to zero at line 161. Once inside  the  REPEAT...UNTIL  loop  we  have  the
 following simplification on the first iteration:

    DNUMBER(0)=NUMBRINIT(0);
    DCOUNT(0)=DELAYINIT(0);
    TOGGLE(0)=TOGGLINIT(0);
9.09.00  MULTI-TASKING PROGRAMS  (continued)

 This structure simply plucks the data out of the data table and installs it  the
 appropriate vector. The second and third iterations are just a repetition of the
 process for the remaining elements of the vectors.

 Line 169 performs 10 carriage return - line feeds to clear an area on the  video
 display for the information to be presented by the program. Line 170 immediately
 moves the cursor up 4 lines. This position (the operator input line) will be the
 base position for all subsequent cursor movements.

 We  now  enter  the  meat  of  the  program. Simple isn't it? Generally speaking
 providing that you use used  STRUCTURED  PROGRAMMING  throughout  your  software
 development  jobs most, if not all, MAIN procedures will look as simple as this!
 All of the complexity should be placed into individual procedures which  may  be
 run on their own, and, perhaps more importantly, DEBUGGED on their own. The LAST
 thing you want to do is write a single large procedure and TRY to debug it!

 Lines 179 through 190 embody the main program which as REPEAT...FOREVER suggests
 is designed to run forever. Just before we enter this part of the  program  note
 that  a  label  'OP_INPUT_NEW_LINE:' has been declared at line 172. This will be
 used for a subsequent GOTO instruction. Line 174 returns the cursor to the  left
 margin.  Line 175 then prints a message out to the display on the operator input
 line (remember we left the cursor on this line).  Line  176  resets  the  cursor
 column  counter to indicate that the cursor is in the left column. Line 177 then
 puts the cursor where we just said it was.

 We  now enter the body of the REPEAT...FOREVER loop. The only method of escaping
 from the program is provided in lines 185 and 188. If the RETURN key is hit  (it
 will  be  detected  during  OP_INPUT and assigned to the global variable INCHAR)
 line 185 will be true and therefore line 186 will be executed. Line  186  passes
 control back to the label 'OP_INPUT_NEW_LINE' where the current line is replaced
 by as indicated in line 175. The main body of the program is then re-entered.

 If you hit the ESCAPE key (it is also detected within OP_INPUT) line 188 will be
 true the program will be terminated by the BREAK statement in line 189. Line 175
 then moves the cursor down 4 lines. The omission of the last ENDPROC will  cause
 PL/9 to JUMP to the FLEX warm entry point ($CD03). If you put an ENDPROC at line
 176 the program would CRASH when the escape key is hit! If you put an ENDPROC at
 the  end  of  a program that can be terminated, i.e. you have provided an escape
 from the REPEAT FOREVER loop, YOU, the programmer must  direct  the  program  to
 some sensible place, back into FLEX, the System Monitor, etc;

 Now  to define the various cursor movements as promised earlier. As we mentioned
 the base position for the video display cursor is on  the  operator  input  data
 line  of  the display. When FLASH_MESSAGE is called in line 180 it will move the
 cursor up two lines if, and only if, the message line is to be updated. Once the
 message  line is updated the cursor is moved back to the operator input line. At
 this  point  the  cursor  may  not  be  in  the  appropriate  column  but  since
 FLASH_MESSAGE  has set a flag to tell OP_INPUT it moved the cursor OP_INPUT will
 be able to restore it to the correct column. When DISPLAY_COUNTS  is  called  in
 line 181 it to will move the cursor only when required. It will also restore the
 cursor to the operator input line and  set  the  global  CURSOR_MOVE_FLAG.  When
 OP_INPUT  is  finally  called  in  line  183  it  will restore the cursor to the
 appropriate column if it finds the CURSOR_MOVE_FLAG set.

 We hope this rather long dissertation has  given  you  some  insights  into  the
 structures required to write multi-tasking software without recourse to hardware
 interrupts. The two areas where hardware interrupts are mandatory are when  your
 polling  loop is too slow to capture a real-time event or when you must input or
 output data at a steady rate.
9.09.01  A MULTI-TASKING KERNEL IN PL/9

 If  this  section looks familiar it is because it appeared in the May 1984 issue
 of '68 Micro Journal. This section is not identical to the article, however,  as
 it uses the STACK key word that is now available in PL/9.

 Have  you ever written a program that does two or more jobs at the same time? If
 you have, then you've probably run across the problem  of  resource  allocation,
 going something like this:

 The  main  program  is cycling round, looking at the keyboard to see whether you
 want it to do anything. When you hit a key it goes into  a  flurry  of  activity
 while  it  sorts  out  your  request.  If this activity only means updating some
 variables or doing a few calculations, then the program will  get  back  to  the
 keyboard  before  your finger has even released the key. But suppose that you've
 asked it to set in motion some complex I/O function,  such  as  ramping  up  the
 voltage  on  a D/A converter, which requires the program to change a value every
 time a timer overflows? In a single-task program, your  keyboard  will  go  dead
 until that task has finished. The problem is compounded if there are several D/A
 converters, each ramping at different rates.

 OK, so it's possible to write a single-task program, like the program  described
 in the preceeding section, that can handle this sort of job. The problem then is
 that each of the tasks gets thoroughly bound up with each of the others, to  the
 extent  that  maintaining  the program becomes a real pain. What would be really
 nice would be to write each of the tasks separately and tell the CPU to  execute
 all of them in parallel.

 Now  I know that OS-9 is out there just waiting to be used for this sort of job.
 OS-9 is great if the drivers already exist  for  the  I/O  device  you  have  to
 handle,  but the job of writing special interface drivers is just too much for a
 lot of people. Furthermore, you don't  actually  know  when  OS-9  is  going  to
 suspend a task and start up another, which makes interlocking global variables a
 bit tricky. However, if you  can  handle  OS-9  and  if  OS-9  can  handle  your
 application,  and  you  don't mind having to integrate a copy of the OS-9 kernal
 (with the associated license fees) in each and every product you sell, use it by
 all means.

 What  we are going to describe in this section is a simple technique for writing
 programs that are divided into separate tasks, all operating concurrently,  with
 as  much  or as little interaction between them as you wish, and all without the
 use of interrupts of any kind!.

 The heart of the technique is a routine called SWITCH, whose job it is to change
 from one task to another. Suppose that three tasks are set up;  a  main  program
 and  two  secondary  jobs  called  TASK1 and TASK2. Each must contain sufficient
 calls to SWITCH to avoid hogging the CPU. When SWITCH is  called,  if  the  main
 program  is  running  then  it  is  suspended  and TASK1 is resumed; if TASK1 is
 running then TASK2 is resumed and if TASK2 is running then the main  program  is
 resumed.  Each task can run for as long as it likes, then a call to SWITCH gives
 the next task some CPU time in a round-robin fashion.

 The advantage of this scheme is that unlike one that uses timer interrupts there
 is no need to guard against one process  interrupting  another  and  interfering
 with  a  variable that is being worked with. If you want to mess with a variable
 you do it, only handing control over to the  next  task  when  you're  good  and
 ready.

 It  is  important to note that any program loop that grabs the processor (like a
 repeat ... until loop) should include a call to SWITCH unless you actually  want
 to suspend all other tasks while the current program loop is being executed.
9.09.01  A MULTI-TASKING KERNEL IN PL/9  (continued)

 The way the system works is quite simple. As  part  of  your  program's  scratch
 space  you allocate a stack for each of the secondary tasks. The amount of space
 you allocate to each stack is determined by the  subroutine  nest  level,  local
 variable  allocation  and whether there are any recursive procedures being used.
 It is a good idea to be generous with stack allocation as  if  one  tasks  stack
 collides  with another the result will be disaster! The starting address of each
 secondary task is placed at the very top of its reserved stack area. A  two-byte
 pointer  to  this  stored address is also kept for each task and one is reserved
 for the main program. Lastly, a byte is reserved  that  records  which  task  is
 currently active. This byte is intially set to zero, the main program.

 Having  done  this initialisation, the main program can now start. At some point
 it is necessary to start up the multi-tasking system. A good place to put a call
 to  SWITCH  is  in  the program loop that polls the keyboard to see if a key has
 been pressed. This ensures that as long as no key is operated a steady supply of
 calls to SWITCH will be generated.

 The  first  call  to SWITCH causes the stack pointer to be saved in the two-byte
 pointer reserved for the main program. It is then re-loaded with the contents of
 task  1's  pointer  and  a  return-from-subroutine  is executed. This causes the
 address of task 1 to be put into the program counter, which starts it executing.
 At  some  point  it  too  calls  SWITCH, which in the same way saves the current
 status and starts up task 2. When task  2  calls  SWITCH  the  main  program  is
 resumed at the point it left off. This structure is illustrated in the following
 diagram:

                               +------------------+
                               | INITIALIZE TASKS |
                               +------------------+
                                        |
                                        v
                                        |
                               +------------------+
                               |      TASK 0      |
               +-------<-------|  (MAIN PROGRAM)  |-------<-------+
               |               +------------------+               |
               |                                                  |
               v                                                  ^
               |                                                  |
               |                 +--------------+                 |
               +------->---------|              |--------->-------+
                                 |    SWITCH    |
               +-------<---------|              |---------<-------+
               |                 +--------------+                 |
               |                   |          |                   |
               v                   |          |                   ^
               |                   ^          v                   |
               |                   |          |                   |
         +-----------+             |          |             +-----------+
         |  TASK  1  |------>------+          +------>------|  TASK  2  |
         +-----------+                                      +-----------+


 Note the most important feature of the diagram, that once the multi-tasking has
 begun  it  goes  on  forever.  None of the tasks can be allowed to finish or the
 system will stop. In practice, this restriction can be  overcome  by  allocating
 flags that tell SWITCH which tasks are currently active.  In this way, new tasks
 can be introduced when they are needed. The alternative is for an inactive  task
 to stay in an endless loop, generating calls to SWITCH.
9.09.01  A MULTI-TASKING KERNEL IN PL/9  (continued)

 The following PL/9 program should illustrate the use of this technique. Firstly,
 the necessary scratch variables. These are declared here as GLOBAL variables but
 they  could  equally well be declared using the AT statement. Since this program
 will actually run, I'll put ORIGIN and STACK statements first:

    ORIGIN = $8000; STACK = *;   /* I.E. STACK = $8000 */

    CONSTANT NO_OF_TASKS=3;    /* TASKS 0, 1 AND 2 */

    GLOBAL

       BYTE DUMMY1(100):     /* LENGTH OF STACK FOR TASK 1 */
       INTEGER STACK1:

       BYTE DUMMY2(100):     /* LENGTH OF STACK FOR TASK 2 */
       INTEGER STACK2:

       INTEGER TASK_TABLE(NO_OF_TASKS):
       BYTE TASK;

 The  user's  own variables can be included anywhere in this list. Note that each
 of the secondary tasks has a stack area (declared using  dummy  variables),  and
 space  for  the return address (variables stack1 and stack2). The length of each
 stack (100 bytes) is completely arbitrary. The amount of stack is determined  by
 how much procedure nesting takes place, the amount of local variables being used
 in the various procedures and if any recursive procedures are used. If you don't
 allocate  sufficient  space  you  will  find out soon enough as the program will
 crash as soon as the stacks collide with one another. The  main  program  has  a
 pointer table (task_table) and a byte variable (task) that records which task is
 currently active.

 The SWITCH procedure must be near the start of the program, since it's called by
 other procedures It looks like this:

    PROCEDURE SWITCH;
       TASK_TABLE(TASK) = STACK;
       TASK = TASK + 1;
       IF TASK = NO_OF_TASKS THEN TASK = 0;
       STACK = TASK_TABLE(TASK);
    ENDPROC;

 Now comes the body of the program, including the secondary tasks. The  first  of
 these  is called TASK_1 (but you can use any name you wish). Its job is to cause
 the terminal bell to ring at regular intervals. Note the call to SWITCH  in  the
 inner loop:

    PROCEDURE TASK_1: INTEGER COUNT;
       REPEAT
          COUNT = 1000;
          REPEAT
             SWITCH;
             COUNT = COUNT - 1;
          UNTIL COUNT = 0;
          ACCA = 7;          /* ASCII "BELL" */
          CALL $CD18;        /* FLEX "PUTCHR" */
       FOREVER;
    ENDPROC;


9.09.01  A MULTI-TASKING KERNEL IN PL/9  (continued)

 The second task, called  task_2,  sends  to  the  terminal  the  complete  ASCII
 character set from $20 through $7D, over and over again:

    PROCEDURE TASK_2: BYTE CHAR;
       REPEAT
          CHAR = $20;
          REPEAT
             SWITCH;
             ACCA = CHAR;
             CALL $CD18;
             CHAR = CHAR + 1;
          UNTIL CHAR = $7E;
       FOREVER;
    ENDPROC;

 The next routine forms part of the main program. It echoes to the printer  every
 key  that is typed. It is so designed as to generate calls to SWITCH while it is
 waiting for a key:

    PROCEDURE ECHO_TO_PRINTER: BYTE CHAR;
       CALL $CCC0;               /* INITIALISE PRINTER */
       REPEAT
          REPEAT
             SWITCH;
             CALL $CD4E;         /* FLEX "STAT" */
          UNTIL (CCR AND 4) = 0;
          CALL $CD15;            /* FLEX "GETCHR" */
          CHAR = ACCA;
          CALL $CCE4;            /* OUTPUT TO PRINTER */
       UNTIL CHAR = $1B;         /* WAIT FOR <ESCAPE> */
    ENDPROC;


 Lastly we have the main program,  which  as  its  first  job  must  set  up  the
 multi-tasking system:

    PROCEDURE MAIN;

       TASK=0;                   /* TASK 0 (MAIN PROGRAM) ACTIVE */

       TASK_TABLE(1)=.STACK1;    /* ADDRESS OF STACK1 -> TABLE */
       STACK1=.TASK_1;           /* ADDRESS OF TASK 1 -> STACK1 */

       TASK_TABLE(2)=.STACK2;    /* ADDRESS OF STACK2 -> TABLE */
       STACK2=.TASK_2;           /* ADDRESS OF TASK 2 -> STACK2 */

       ECHO_TO_PRINTER;


9.09.01  A MULTI-TASKING KERNEL IN PL/9  (continued)

 All that "main" does after initialising the  multi-tasking  system  is  to  call
 "echo_to_printer"  to  run  the primary task. In this example we have placed the
 primary task in a 'repeat ... until' loop which gives us an oportunity to make a
 smooth  return  to FLEX whenever the ESCAPE key is hit. In a practical dedicated
 program the primary task is usually within  a  'repeat  ...  forever'  (endless)
 loop. Since the object of this  section  was  to  present  a  program  that  the
 majority  of FLEX users could type in, compile and run we restricted it to calls
 through 'FLEX'. The only assumption that we have made about the readers hardware
 is  that he or she has a printer!

 A  multi-tasking  system  of  this  kind  is  designed  to  cope  with real-time
 applications where actions are taken dependant upon some outside event, and it's
 rather  difficult  to produce a realistic example when the only outside event is
 the keyboard and the only I/O device is a printer and terminal!


 NOTE 1: You should turn off the TTYSET  PAUSE  and  load  your  printer  drivers
         before starting the program.

 NOTE 2: Your  version  of  FLEX  must  preserve  the  registers as stated in the
         programmers manual or the program is likely to crash.


 If  you  are  used  to  working  with multi-tasking software or interrupt driven
 software you are probably saying to yourself that the basic structure  described
 in  this  section  should also work with interrupts. YOU ARE CORRECT! There are,
 however, a few additional rules to follow. We will present  these  in  the  next
 section.


9.09.02  MULTI-TASKING WITH INTERRUPTS (SWI)

 Before we dive into the discussion of this topic we are going  to  simplify  the
 example program used in the previous section so that it will be easier to define
 the differences between the various structures required to  implement  interrupt
 driven multi-tasking programs.

 If  you  refer  to  the  listing  on  the  following  two pages you will see the
 simplification referred to above (Multi-Tasking Demonstration Program  2).  This
 multitasking program has three tasks, defined as 'TASK_0', 'TASK_1' and 'TASK_2'
 instead of the original 'ECHO_TO_PRINTER',  'TASK_1'  and  'TASK_2'.  The  tasks
 themselves  have  also  been  greatly  simplified:  'TASK_0'  outputs  the ASCII
 character 'A', 'TASK_1' outputs the ASCII character 'B' and 'TASK_2' outputs the
 ASCII  character 'C'. Not particularly clever but all we want is an illustration
 of the structures involved.

 Start-up is achieved in much the same manner as the original program; the return
 addresses  of  the  second  and  third  tasks  are  placed  at  the top of their
 respective stacks and the 'TASK_TABLE' initialized to point to  the  stacks  for
 the  second  and  third  tasks.  'TASK_0'  is  then  called and the muti-tasking
 operation begins. As each task ends it makes a call to  switch  which  'retires'
 the  task  being  executed,  saving  its return address and stack pointer in the
 process. The next task is then started up, when it ends it is  retired  and  the
 next  task  initiated.  And  on  it  goes  in  round-robin  fashion.  The key to
 successful operation is:

 A. Each task must be within a 'REPEAT ... FOREVER' loop.
 B. Each task must not grab the processor for any appreciable length of time.

 This type of multi-tasking structure has one great advantage:
               ___________________________________________________
              YOU ARE IN COMPLETE CONTROL OF HOW LONG A TASK RUNS

 This means that there is never any problem of interlocking global variables.

 Multi-Tasking  Demonstration  Program  3,  four  pages  along, is the exact same
 program but instead of having a normal procedure called 'SWITCH'  we  are  using
 the  reserved  procedure  name  'SWI'  (Software  Interrupt) to do the same job.
 Notice that  the  contents  of  'SWI'  and  'SWITCH'  are  identical.  The  only
 difference  between  program  '3'  and program '2' is the way the stacks and the

 stack pointers are initialized. Lets examine the stack initialization closely as
 it  is  important  that you understand the fundamental differences required when
 you intend to multi-task with the  use  of  interrupts.  The  same  basic  stack
 initialization  is  used regardless of the source of the interrupt: SWI, SWI2 or
 SWI3 (user generated) or IRQ, FIRQ or NMI (hardware generated).

 Line  69  saves  the stack pointer associated with the stack for TASK_0. Line 71
 puts the address of TASK_1 at the top of the stack associated with TASK_1.  Line
 73 preloads the stack and moves the stack pointer down by the appropriate number
 of bytes. Line 74 saves the the stack  pointer  in  the  TASK_TABLE.  The  major
 difference  between this initialization sequence and the initialization sequence
 associated with program 3 is the way we manipulate the  stack  pointerBEFOREwe
 save  its  value  in  the  TASK_TABLE.  WHY?  In program 2 only an RTS (PULS PC)
 instruction is executed at the end of SWITCH and hence only the  return  address
 need be on the stack. In program 2 an RTI (PULS CC,D,DP,X,Y,U,PC) instruction is
 executed at the end of SWI and hence a complete set of register values  must  be
 present  on  the  stack  before they are pulled. Since we are not using hardware
 interrupts there is no need to alter the state of the 'CC'  before  we  pre-load
 the  stack,  nor is there any need to preserve the 'Y' register (global pointer)
 as you are in complete control of the call to 'NEXT_TASK'.
9.09.02  MULTI-TASKING WITH INTERRUPTS (SWI)  (continued)

 0001 /* Multi-Tasking Demonstration Program 2 */
 0002
 0003 ORIGIN = $8000;
 0004 STACK = *;
 0005
 0006 CONSTANT NO_OF_TASKS = 3;    /* Tasks 0, 1 and 2 */
 0007
 0008 GLOBAL
 0009    BYTE DUMMY1(100):     /* Length of stack for task 1 */
 0010    INTEGER STACK1:
 0011
 0012    BYTE DUMMY2(100):     /* Length of stack for task 2 */
 0013    INTEGER STACK2:
 0014
 0015    INTEGER TASK_TABLE(NO_OF_TASKS):
 0016    BYTE TASK;
 0017
 0018
 0019 PROCEDURE SWITCH;
 0020    TASK_TABLE(TASK) = STACK;
 0021    TASK = TASK + 1;
 0022    IF TASK = NO_OF_TASKS
 0023       THEN TASK = 0;
 0024    STACK = TASK_TABLE(TASK);
 0025 ENDPROC;
 0026
 0027
 0028 PROCEDURE OUTCHAR(BYTE CHAR);
 0029    ACCA = CHAR;
 0030    CALL $CD18;
 0031 ENDPROC;
 0032
 0033
 0034 PROCEDURE TASK_0;
 0035    REPEAT
 0036       OUTCHAR('A);
 0037       SWITCH;
 0038    FOREVER;
 0039 ENDPROC;
 0040
 0041
 0042 PROCEDURE TASK_1;
 0043    REPEAT
 0044       OUTCHAR('B);
 0045       SWITCH;
 0046    FOREVER;
 0047 ENDPROC;
 0048
 0049
 0050 PROCEDURE TASK_2;
 0051    REPEAT
 0052       OUTCHAR('C);
 0053       SWITCH;
 0054    FOREVER;
 0055 ENDPROC;


9.09.02  MULTI-TASKING WITH INTERRUPTS (SWI)  (continued)

 0056
 0057
 0058
 0059 PROCEDURE MAIN;
 0060
 0061    TASK = 0;                /* Task 0 (main program) active */
 0062
 0063    STACK1 = .TASK_1;        /* put address of task 1 on top of stack       */
 0064    TASK_TABLE(1) = .STACK1; /* save base of stack in task table */
 0065
 0066    STACK2 = .TASK_2;        /* put address of task 2 on top of stack       */
 0067    TASK_TABLE(2) = .STACK2; /* save base of stack in task table */
 0068
 0069
 0070    TASK_0;


 NOTE:  Ensure  that  you  set  up  the TTYSET 'WD' to the width of your terminal
        screen (e.g. WD=80) and turn off the PAUSE function (PS=N) before you run
        any of the programs in this and the following sections.


9.09.02  MULTI-TASKING WITH INTERRUPTS (SWI)  (continued)

 0001 /* Multi-Tasking Demonstration Program 3 */
 0002
 0003 ORIGIN = $8000;
 0004 STACK = *;
 0005
 0006 CONSTANT NO_OF_TASKS = 3;    /* Tasks 0, 1 and 2 */
 0007
 0008 GLOBAL
 0009    BYTE DUMMY1(100):     /* Length of stack for task 1 */
 0010    INTEGER STACK1:
 0011
 0012    BYTE DUMMY2(100):     /* Length of stack for task 2 */
 0013    INTEGER STACK2:
 0014
 0015    INTEGER TASK_TABLE(NO_OF_TASKS):
 0016    BYTE TASK:
 0017    INTEGER STACK_SAVE;
 0018
 0019
 0020 PROCEDURE SWI;
 0021    TASK_TABLE(TASK) = STACK;
 0022    TASK = TASK + 1;
 0023    IF TASK = NO_OF_TASKS
 0024       THEN TASK = 0;
 0025    STACK = TASK_TABLE(TASK);
 0026 ENDPROC;
 0027
 0028
 0029 PROCEDURE OUTCHAR(BYTE CHAR);
 0030    ACCA = CHAR;
 0031    CALL $CD18;
 0032 ENDPROC;
 0033
 0034
 0035 PROCEDURE NEXT_TASK;
 0036   GEN $3F;   /* SWI */
 0037 ENDPROC;
 0038
 0039
 0040 PROCEDURE TASK_0;
 0041    REPEAT
 0042       OUTCHAR('A);
 0043       NEXT_TASK;
 0044    FOREVER;
 0045 ENDPROC;
 0046
 0047
 0048 PROCEDURE TASK_1;
 0049    REPEAT
 0050       OUTCHAR('B);
 0051       NEXT_TASK;
 0052    FOREVER;
 0053 ENDPROC;
 0054
 0055


9.09.02  MULTI-TASKING WITH INTERRUPTS (SWI)  (continued)

 0056 PROCEDURE TASK_2;
 0057    REPEAT
 0058       OUTCHAR('C);
 0059       NEXT_TASK;
 0060    FOREVER;
 0061 ENDPROC;
 0062
 0063
 0064
 0065 PROCEDURE MAIN;
 0066
 0067    TASK = 0;              /* Task 0 (main program) active */
 0068
 0069    STACK_SAVE = STACK;    /* save main program stack pointer */
 0070
 0071    STACK1 = .TASK_1;      /* put address of task 1 on top of stack */
 0072    STACK = .STACK1;       /* aim stack at stack area for task 1 */
 0073    GEN $34,$7F;           /* pre-load stack 1 (PSHS CC,D,DP,X,Y,U) */
 0074    TASK_TABLE(1) = STACK; /* save base of stack in task table */
 0075
 0076    STACK2 = .TASK_2;      /* put address of task 2 on top of stack */
 0077    STACK = .STACK2;       /* aim stack at stack area for task 2 */
 0078    GEN $34,$7F;           /* pre-load stack 2 (PSHS CC,D,DP,X,Y,U) */
 0079    TASK_TABLE(2) = STACK; /* save base of stack in task table */
 0080
 0081    STACK = STACK_SAVE;    /* re-aim stack back to task 0 stack area *      /
 0082
 0083    TASK_0;


9.09.03  MULTI-TASKING WITH INTERRUPTS (IRQ)

 Multi-tasking Demonstration Program 4, two pages  along,  is  a  progression  of
 program  3.  The  former  uses  'IRQ' as the task switching mechanism whilst the
 latter used 'SWI'. Obviously the major difference is going to be  the  inclusion
 of  a  hardware  device that we can program to generate interrupts. The Motorola
 MC6840 is ideally suited to this purpose as  the  programmer  has  a  degree  of
 control  over  the  rate  at which interrupts are generated that is not possible
 with other devices with the possible exception of the Rockwell R6522 VIA.

 Aside from the hardware content of this program (between lines 24  and  38)  the
 major  difference  between  program  3  and  this  one  is  once  again  in  the
 initialization sequence. This time we save the 'Y' register (global pointer)  in
 line  93.  This  is  necessary  as  you  will not have any idea of what code the
 processor is executing, and hence  the  state  of  the  'Y'  register,  when  an
 interrupt  occurs.  If  you  wish  to  access  global  variables  from within an
 interrupt procedure you must save and  restore  'Y'.  See  section  9.11.00  for
 futher details.

 Line 96 clears the IRQ flag of the  CCR.  Since  we  have  not  initialized  the
 interrupt  generating  device at this stage this will not have any effect on the
 execution of the program. Lines 100 through 103 are  identical  in  function  to
 lines 71 through 74 in program 3. Line 112 starts the IRQ generator and line 114
 gets the ball rolling long before the first IRQ occurs.

 Other points to note are line 42 which restores the 'Y' register to point at the
 base of the global variables. Likewise if you have used 'DPAGE' to aim the  'DP'
 register  at  some area of 'AT' variables you should restore the 'DP' within the
 IRQ service routine if you are going to make any reference to  them  during  the
 IRQ  service  interval. Line 50 services the MC6840 and forces it to release the
 IRQ line before we terminate the IRQ service routine.

 One danger when working in a multi-tasking environment driven by  interrupts  is
 that  you  must  interlock  all global variables. Since PL/9 procedures that use
 local  variables  and/or  are  passed/return variables are inherently re-entrant
 there is never any danger in this area. The  danger  exists  in  interrupting  a
 procedure  that  is working on a global variable (including 'AT' variables which
 obviously includes I/O devices as well) that will be used by  another  procedure
 or manipulated by another procedure. Suppose, for example, that TASK_0's job was
 to read a 16 channel A/D converter and update a global variable data  table  and
 that  TASK_1's  job  was  to  analyze the data in the data table and take one of
 several courses of action depending on what it finds there. Clearly if TASK_0 is
 interrupted  before  its  job  is  done the result could be disaster. One way of
 preventing this is to mask the IRQ  flag  in  the  CCR  whilst  critical  global
 variables  are  being  manipulated or decisions that are based on thier contents
 are taken. Another approach is to set a flag whilst a critical global access  is
 taking  place. This flag is interrogated by the interrupt service routine and if
 set simply refuses to switch to the next task until it is cleared.  As  soon  as
 the  procedure  that  is manipulating the global variables is finished it clears
 the flag and normal operation resumes.

 The two approaches are equally valid. The  former  will  result  in  the  period
 between  interrupts varying which means that the interrupt 'tick' will not occur
 on a regular basis. The latter approach ensures that the interrupt  'tick'  will
 occur at a steady rate which may be useful if the interrupt 'tick' is being used
 for system time-keeping.

 We mask and unmask the IRQ flag between lines 54 and 58. This enables you to use
 the <ESCAPE> key to stop output and prevents the FLEX 'PUTCHR' routine, which is
 not re-entrant, from being interrupted.

9.09.03  MULTI-TASKING WITH INTERRUPTS (IRQ)  (continued)

 Note how we suspend each of the tasks (lines 70, 78 and 86). Each of  the  tasks
 will execute until it hits 'SUSPEND_TASK'. When 'SUSPEND_TASK' is called and the
 'CWAI' instruction is encountered by the MC6809 it will simply stop dead in  its
 tracks and wait for the IRQ to occur. At this point the IRQ service routine will
 switch to the next task.

                     ________________________________________
                    THIS IS VERY WASTEFUL OF PROCESSING TIME


                                      BUT

           ____________________________________________________________
          IT ENSURES THAT THE INTERRUPT 'TICK' OCCURS AT A STEADY RATE


 Obviously it would be advantageous to have better control of the termination  of
 a  task  and  its priority in relation to other tasks. This will be discussed in
 the analysis of Program 5 which is in the next section.


9.09.03  MULTI-TASKING WITH INTERRUPTS (IRQ)  (continued)

 0001 /* Multi-Tasking Demonstration Program 4 */
 0002
 0003 ORIGIN = $8000;
 0004 STACK = $7FFE;  /* 'Y' will be saved at $7FFE/F */
 0005
 0006
 0007 AT $E030:BYTE TIMER;         /* base address of MC6840 timer */
 0008
 0009 CONSTANT NO_OF_TASKS = 3;    /* Tasks 0, 1 and 2 */
 0010
 0011
 0012 GLOBAL
 0013    BYTE DUMMY1(100):         /* Length of stack for task 1 */
 0014    INTEGER STACK1:
 0015
 0016    BYTE DUMMY2(100):         /* Length of stack for task 2 */
 0017    INTEGER STACK2:
 0018
 0019    INTEGER TASK_TABLE(NO_OF_TASKS):
 0020    BYTE TASK:
 0021    INTEGER STACK_SAVE;
 0022
 0023
 0024 PROCEDURE INITIALIZE_TIMER;
 0025    TIMER(1) = 0;    /* select control register # 3 */
 0026    TIMER(0) = $42;  /* enable IRQ, use '/E' for clock source */
 0027    TIMER(6) = $4E;
 0028    TIMER(7) = $20;  /* ($4E20 = 20000) 100 Hertz w/2 MHz CPU */
 0029    TIMER(1) = 1;    /* select control register # 1 */
 0030    TIMER(0) = 1;    /* reset timer */
 0031    TIMER(0) = 0;    /* start IRQ's */
 0032 ENDPROC;
 0033
 0034
 0035 PROCEDURE SERVICE_TIMER;
 0036    ACCB = TIMER(1);
 0037    ACCB = TIMER(6);  /* clear IRQ */
 0038 ENDPROC;
 0039
 0040
 0041 PROCEDURE IRQ;
 0042    GEN $10,$BE,$7F,$FE;  /* LDY $7FFE (recover global pointer) */
 0043                          /* also recover 'DP' if you use DPAGE! */
 0044
 0045    TASK_TABLE(TASK) = STACK;
 0046    TASK = TASK + 1;
 0047    IF TASK = NO_OF_TASKS
 0048       THEN TASK = 0;
 0049    STACK = TASK_TABLE(TASK);
 0050    SERVICE_TIMER;
 0051 ENDPROC;
 0052
 0053
 0054 PROCEDURE OUTCHAR(BYTE CHAR);
 0055    CCR = CCR OR $10;   /* kill IRQ */
 0056    ACCA = CHAR;
 0057    CALL $CD18;
 0058    CCR = CCR AND $EF;  /* enable IRQ */
 0059 ENDPROC;
9.09.03  MULTI-TASKING WITH INTERRUPTS (IRQ)  (continued)

 0060
 0061
 0062 PROCEDURE SUSPEND_TASK;
 0063    GEN $3C,$EF;   /* CWAI #$EF */
 0064 ENDPROC;
 0065
 0066
 0067 PROCEDURE TASK_0;
 0068    REPEAT
 0069       OUTCHAR('A);
 0070       SUSPEND_TASK;
 0071    FOREVER;
 0072 ENDPROC;
 0073
 0074
 0075 PROCEDURE TASK_1;
 0076    REPEAT
 0077       OUTCHAR('B);
 0078       SUSPEND_TASK;
 0079    FOREVER;
 0080 ENDPROC;
 0081
 0082
 0083 PROCEDURE TASK_2;
 0084    REPEAT
 0085       OUTCHAR('C);
 0086       SUSPEND_TASK;
 0087    FOREVER;
 0088 ENDPROC;
 0089
 0090
 0091 PROCEDURE MAIN;
 0092
 0093    GEN $10,$BF,$7F,$FE;   /* STY $7FFE (just above stack) */
 0094
 0095    TASK = 0;              /* Task 0 active */
 0096    CCR = CCR AND $EF;     /* enable IRQ in pre-load CCR */
 0097
 0098    STACK_SAVE = STACK;    /* save task 0 program stack pointer */
 0099
 0100    STACK1 = .TASK_1;      /* put address of task 1 on top of stack */
 0101    STACK = .STACK1;       /* aim stack at stack area for task 1 */
 0102    GEN $34,$7F;           /* pre-load stack 1 (PSHS CC,D,DP,X,Y,U) */
 0103    TASK_TABLE(1) = STACK; /* save base of stack in task table */
 0104
 0105    STACK2 = .TASK_2;      /* put address of task 2 on top of stack */
 0106    STACK = .STACK2;       /* aim stack at stack area for task 2 */
 0107    GEN $34,$7F;           /* pre-load stack 2 (PSHS CC,D,DP,X,Y,U) */
 0108    TASK_TABLE(2) = STACK; /* save base of stack in task table */
 0109
 0110    STACK = STACK_SAVE;    /* re-aim stack back to task 0 stack area *      /
 0111
 0112    INITIALIZE_TIMER;
 0113
 0114    TASK_0;


9.09.04  BETTER CONTROL OF AN IRQ DRIVEN MULTI-TASKING PROGRAM

 Program 5 introduces some additional control over task switching in the form  of
 giving  each task a pre-determined number of IRQ time slices. These are directly
 related to the tasks priority within the system, the  higher  the  priority  the
 more time is allocated to it.

 The  major  differences  between  this  program and program 4 is the way the IRQ
 service routine is structured and the absense of any task  terminating  function
 (CWAI).

 Each  time  the IRQ service routine is entered, by interrupting the current task
 via the hardware  timer,  the  state  of  the  'TASK_DURATION_COUNTER'  will  be
 evaluated. If the counter is zero the next task will be selected and the counter
 loaded with the count (priority) associated with that task. If  the  counter  is
 not  zero  the  counter  is  decremented  by  one and control is returned to the
 interupted program.

 It should be obvious that a running program can terminate itself by setting the
 'TASK_DURATION_COUNTER' to zero.

 This  gives  us  a  bit  more  control  but  this  may  not  be  enough for many
 applications.  The  final  program,  discussed  in  the  following section, will
 illustrate several additional control mechanisms.


9.09.04  BETTER CONTROL OF AN IRQ DRIVEN MULTI-TASKING PROGRAM  (continued)

 0001 /* Multi-Tasking Demonstration Program 5 */
 0002
 0003 ORIGIN = $8000;
 0004 STACK = $7FFE;  /* 'Y' will be saved at $7FFE/F */
 0005
 0006
 0007 AT $E030:BYTE TIMER;         /* base address of MC6840 timer */
 0008
 0009 CONSTANT NO_OF_TASKS = 3,      /* Tasks 0, 1 and 2 */
 0010          TASK0_PRIORITY = 10,  /* 10 IRQ TIME SLICES */
 0011          TASK1_PRIORITY = 20,  /* 20 IRQ TIME SLICES */
 0012          TASK2_PRIORITY = 30;  /* 30 IRQ TIME SLICES */
 0013
 0014
 0015 GLOBAL
 0016    BYTE DUMMY1(100):         /* Length of stack for task 1 */
 0017    INTEGER STACK1:
 0018
 0019    BYTE DUMMY2(100):         /* Length of stack for task 2 */
 0020    INTEGER STACK2:
 0021
 0022    INTEGER TASK_TABLE(NO_OF_TASKS):
 0023    BYTE TASK_PRIORITY_TABLE(NO_OF_TASKS):
 0024    BYTE TASK, TASK_DURATION_COUNTER, CURRENT_TASK:
 0025    INTEGER STACK_SAVE;
 0026
 0027
 0028 PROCEDURE INITIALIZE_TIMER;
 0029    TIMER(1) = 0;    /* select control register # 3 */
 0030    TIMER(0) = $42;  /* enable IRQ, use '/E' for clock source */
 0031    TIMER(6) = $4E;
 0032    TIMER(7) = $20;  /* ($4E20 = 20000) 100 Hertz w/2 MHz CPU */
 0033    TIMER(1) = 1;    /* select control register # 1 */
 0034    TIMER(0) = 1;    /* reset timer */
 0035    TIMER(0) = 0;    /* start IRQ's */
 0036 ENDPROC;
 0037
 0038
 0039 PROCEDURE SERVICE_TIMER;
 0040    ACCB = TIMER(1);
 0041    ACCB = TIMER(6);  /* clear IRQ */
 0042 ENDPROC;
 0043
 0044


9.09.04  BETTER CONTROL OF AN IRQ DRIVEN MULTI-TASKING PROGRAM  (continued)

 0045 PROCEDURE IRQ;
 0046    GEN $10,$BE,$7F,$FE;  /* LDY $7FFE (recover global pointer) */
 0047                          /* also recover 'DP' if you use DPAGE! */
 0048
 0049    IF TASK_DURATION_COUNTER <> 0
 0050       THEN TASK_DURATION_COUNTER = TASK_DURATION_COUNTER - 1;
 0051
 0052    IF TASK_DURATION_COUNTER = 0
 0053       THEN BEGIN
 0054            TASK_TABLE(TASK) = STACK;
 0055            TASK = TASK + 1;
 0056            IF TASK = NO_OF_TASKS
 0057               THEN TASK = 0;
 0058            TASK_DURATION_COUNTER = TASK_PRIORITY_TABLE(TASK);
 0059            STACK = TASK_TABLE(TASK);
 0060            END;
 0061
 0062    SERVICE_TIMER;
 0063 ENDPROC;
 0064
 0065
 0066 PROCEDURE OUTCHAR(BYTE CHAR);
 0067    CCR = CCR OR $10;   /* kill IRQ */
 0068    ACCA = CHAR;
 0069    CALL $CD18;
 0070    CCR = CCR AND $EF;  /* enable IRQ */
 0071 ENDPROC;
 0072
 0073
 0074 PROCEDURE TASK_0;
 0075    REPEAT
 0076       OUTCHAR('A);
 0077    FOREVER;
 0078 ENDPROC;
 0079
 0080
 0081 PROCEDURE TASK_1;
 0082    REPEAT
 0083       OUTCHAR('B);
 0084    FOREVER;
 0085 ENDPROC;
 0086
 0087
 0088 PROCEDURE TASK_2;
 0089    REPEAT
 0090       OUTCHAR('C);
 0091    FOREVER;
 0092 ENDPROC;
 0093
 0094


9.09.04  BETTER CONTROL OF AN IRQ DRIVEN MULTI-TASKING PROGRAM  (continued)

 0095 PROCEDURE MAIN;
 0096
 0097    GEN $10,$BF,$7F,$FE;    /* STY $7FFE (just above stack) */
 0098
 0099    TASK = 0;               /* Task 0 active */
 0100
 0101    TASK_DURATION_COUNTER  = TASK0_PRIORITY;
 0102
 0103    TASK_PRIORITY_TABLE(0) = TASK0_PRIORITY;
 0104    TASK_PRIORITY_TABLE(1) = TASK1_PRIORITY;
 0105    TASK_PRIORITY_TABLE(2) = TASK2_PRIORITY;
 0106
 0107    CCR = CCR AND $EF;      /* enable IRQ in pre-load CCR */
 0108
 0109    STACK_SAVE = STACK;     /* save task 0 program stack pointer */
 0110
 0111    STACK1 = .TASK_1;       /* put address of task 1 on top of stack */
 0112    STACK = .STACK1;        /* aim stack at stack area for task 1 */
 0113    GEN $34,$7F;            /* pre-load stack 1 (PSHS CC,D,DP,X,Y,U) */
 0114    TASK_TABLE(1) = STACK;  /* save base of stack in task table */
 0115
 0116    STACK2 = .TASK_2;       /* put address of task 2 on top of stack */
 0117    STACK = .STACK2;        /* aim stack at stack area for task 2 */
 0118    GEN $34,$7F;            /* pre-load stack 2 (PSHS CC,D,DP,X,Y,U) */
 0119    TASK_TABLE(2) = STACK;  /* save base of stack in task table */
 0120
 0121    STACK = STACK_SAVE;     /* re-aim stack back to task 0 stack area */
 0122
 0123    INITIALIZE_TIMER;
 0124
 0125    TASK_0;


9.09.04  BETTER CONTROL OF AN IRQ DRIVEN MULTI-TASKING PROGRAM  (continued)

 Program 6 introduces several control  mechanisms  and  tidies  up  some  of  the
 undesirable features of the earlier programs.

 The  first  thing  to  note  is that we have now put all of the global variables
 right after the 'GLOBAL' declaration to shorten the addressing range required to
 access  them.  This  results  in a significant code saving, even in a program of
 this size. Next note that we must now explicity  declare  the  stack  associated
 with 'TASK_0'.

 We  have  two  additional  timer  control routines between lines 48 and 57. They
 function as their names suggest.

 The  'ASMPROC'  named  'NEW_TASK'  at  line  66  forces  an  eary IRQ service by
 simulating the register push that will  occur  when  a  real  IRQ  takes  place.
 Control is then passed into the normal IRQ service routine at line 70.

 The IRQ service routine is very similar to that of  program  5  except  for  the
 additional  control  code  between  lines 79 and 93. The purpose of this control
 code is to determine if a task has been put to sleep (line 84) and if it has  to
 move  on  to  the next task (line 85). Obviously if there is any possiblity that
 all of the tasks may  accidentally  get  put  to  sleep  you  must  insert  some
 additional arguments after line 84 otherwise the program will loop between lines
 80 and 85 forever.

 Lines 88 through 92 handle the  situation  where  the  previous  task  has  been
 terminated.  These  lines ensure that the next task is allocated a full IRQ time
 slice rather than just the remainder of the previous task's time slice.

 Lines 98 through 103 provide the primary mechanism by which a task may terminate
 itself early.

 Lines  106  through  106 provide the mechanism by which a task may put itself to
 sleep. The syntax for using this procedure is: 'SLEEP_TASK(N)' where 'N' is  any
 valid  task  number.  Once  a task is put to sleep it will not be serviced again
 until another task wakes it up.

 Lines 112 through 114 provide the mechansim to wake  up  a  sleeping  task.  The
 syntax is: 'WAKE_TASK(N)' where 'N' is any valid task number.

 There  is  nothing  in  principle  to  prevent you from dynamically altering the
 priorities of the various tasks whist the program is running. The  restraint  is
 that  an  interrupt  must  not occur whilst you are manipulating the global data
 involved!

 If  you  run this program as presented you will notice something very strange if
 you monitor the IRQ  line  with  an  oscilloscope.  THERE  ARE  NO  IRQ'S  BEING
 GENERATED!!!  This is because each task lasts less than the IRQ time slice. When
 each task terminates itself it forces the processor to switch to the  next  task
 and initiate a new time slice which will do exactly the same thing.

 Obviously if you want to use the IRQ for system time-keeping some other approach
 must be used. Try changing lines 128, 136, and 144 to  'TASK_DURATION_COUNTER  =
 0' and see what happens.

 If  you  intend to adopt multi-tasking as a programming approach we suggest that
 you spend a reasonable amount of time trying out  your  programming  ideas  with
 simple programs such as this one. This way should something go wrong you stand a
 fair chance of finding the problem whilst the structure of your program is  very
 primative.
9.09.04  BETTER CONTROL OF AN IRQ DRIVEN MULTI-TASKING PROGRAM  (continued)

 0001 /* Multi-Tasking Demonstration Program 6 */
 0002
 0003 ORIGIN = $8000;
 0004 STACK = $7FFE;  /* 'Y' will be saved at $7FFE/F */
 0005
 0006
 0007 AT $E030:BYTE TIMER;         /* base address of MC6840 timer */
 0008
 0009 CONSTANT NO_OF_TASKS = 3,      /* Tasks 0, 1 and 2 */
 0010          STOPPED = -1,
 0011          RUNNING = 0,
 0012          TERMINATED = 1,
 0013          ACTIVE = -1,
 0014          SLEEP  = 0,
 0015          TASK0_PRIORITY = 10,  /* 10 IRQ TIME SLICES */
 0016          TASK1_PRIORITY = 20,  /* 20 IRQ TIME SLICES */
 0017          TASK2_PRIORITY = 30;  /* 30 IRQ TIME SLICES */
 0018
 0019
 0020 GLOBAL
 0021    INTEGER TASK_TABLE(NO_OF_TASKS):
 0022    BYTE TASK_PRIORITY_TABLE(NO_OF_TASKS):
 0023    BYTE TASK_STATUS_TABLE(NO_OF_TASKS):
 0024    BYTE TASK, TASK_DURATION_COUNTER, CURRENT_TASK, TIMER_STATUS:
 0025    INTEGER STACK_SAVE:
 0026
 0027    BYTE DUMMY0(100):         /* Length of stack for task 0 */
 0028    INTEGER STACK0:
 0029
 0030    BYTE DUMMY1(100):         /* Length of stack for task 1 */
 0031    INTEGER STACK1:
 0032
 0033    BYTE DUMMY2(100):         /* Length of stack for task 2 */
 0034    INTEGER STACK2;
 0035
 0036
 0037 PROCEDURE INITIALIZE_TIMER;
 0038    TIMER(1) = 0;    /* select control register # 3 */
 0039    TIMER(0) = $42;  /* enable IRQ, use '/E' for clock source */
 0040    TIMER(6) = $4E;
 0041    TIMER(7) = $20;  /* ($4E20 = 20000) 100 Hertz w/2 MHz CPU */
 0042    TIMER(1) = 1;    /* select control register # 1 */
 0043    TIMER(0) = 1;    /* hold timer in preset state */
 0044    TIMER_STATUS = STOPPED;
 0045 ENDPROC;
 0046
 0047
 0048 PROCEDURE TIMER_ON;
 0049    TIMER(0) = 0;
 0050    TIMER_STATUS = RUNNING;
 0051 ENDPROC;
 0052
 0053
 0054 PROCEDURE TIMER_OFF;
 0055    TIMER(0) = 1;
 0056    TIMER_STATUS = STOPPED;
 0057 ENDPROC;


9.09.04  BETTER CONTROL OF AN IRQ DRIVEN MULTI-TASKING PROGRAM  (continued)

 0058
 0059
 0060 PROCEDURE SERVICE_TIMER;
 0061    ACCB = TIMER(1);
 0062    ACCB = TIMER(6);  /* clear IRQ */
 0063 ENDPROC;
 0064
 0065
 0066 ASMPROC NEW_TASK;
 0067    GEN $34,$7F;   /* PSHS CC,D,DP,X,Y,U  (SIMULATE IRQ EXCEPT FOR 'PC') */
 0068
 0069
 0070 PROCEDURE IRQ;
 0071    GEN $10,$BE,$7F,$FE;  /* LDY $7FFE (recover global pointer) */
 0072                          /* also recover 'DP' if you use DPAGE! */
 0073
 0074    IF TASK_DURATION_COUNTER <> 0
 0075       THEN TASK_DURATION_COUNTER = TASK_DURATION_COUNTER - 1;
 0076
 0077    IF TASK_DURATION_COUNTER = 0
 0078       THEN BEGIN
 0079            TASK_TABLE(TASK) = STACK;
 0080       TRY_ANOTHER:
 0081            TASK = TASK + 1;
 0082            IF TASK = NO_OF_TASKS
 0083               THEN TASK = 0;
 0084            IF TASK_STATUS_TABLE(TASK) = SLEEP
 0085               THEN GOTO TRY_ANOTHER;
 0086            TASK_DURATION_COUNTER = TASK_PRIORITY_TABLE(TASK);
 0087            STACK = TASK_TABLE(TASK);
 0088            IF CURRENT_TASK = TERMINATED
 0089               THEN BEGIN
 0090                    CURRENT_TASK = ACTIVE;
 0091                    TIMER_ON;  /* initiate fresh time-slice */
 0092                    END;
 0093            END;
 0094    SERVICE_TIMER;
 0095 ENDPROC;
 0096
 0097
 0098 PROCEDURE TERMINATE_TASK;
 0099    TASK_DURATION_COUNTER = 0;
 0100    CURRENT_TASK = TERMINATED;
 0101    TIMER_OFF;  /* ensures next task gets full time-slice */
 0102    NEW_TASK;
 0103 ENDPROC;
 0104
 0105
 0106 PROCEDURE SLEEP_TASK(BYTE N);
 0107    TASK_STATUS_TABLE(N) = SLEEP;
 0108    TERMINATE_TASK;
 0109 ENDPROC;
 0110


9.09.04  BETTER CONTROL OF AN IRQ DRIVEN MULTI-TASKING PROGRAM  (continued)

 0111
 0112 PROCEDURE WAKE_TASK(BYTE N);
 0113    TASK_STATUS_TABLE(N) = ACTIVE;
 0114 ENDPROC;
 0115
 0116
 0117 PROCEDURE OUTCHAR(BYTE CHAR);
 0118    CCR = CCR OR $10;   /* kill IRQ */
 0119    ACCA = CHAR;
 0120    CALL $CD18;
 0121    CCR = CCR AND $EF;  /* enable IRQ */
 0122 ENDPROC;
 0123
 0124
 0125 PROCEDURE TASK_0;
 0126    REPEAT
 0127       OUTCHAR('A);
 0128       TERMINATE_TASK;
 0129    FOREVER;
 0130 ENDPROC;
 0131
 0132
 0133 PROCEDURE TASK_1;
 0134    REPEAT
 0135       OUTCHAR('B);
 0136       TERMINATE_TASK;
 0137    FOREVER;
 0138 ENDPROC;
 0139
 0140
 0141 PROCEDURE TASK_2;
 0142    REPEAT
 0143       OUTCHAR('C);
 0144       TERMINATE_TASK;
 0145    FOREVER;
 0146 ENDPROC;
 0147
 0148


9.09.04  BETTER CONTROL OF AN IRQ DRIVEN MULTI-TASKING PROGRAM  (continued)

 0149 PROCEDURE MAIN;
 0150
 0151    GEN $10,$BF,$7F,$FE;    /* STY $7FFE (just above stack) */
 0152
 0153    TASK = 0;               /* Task 0 active */
 0154
 0155    CURRENT_TASK = ACTIVE;
 0156    TASK_DURATION_COUNTER = TASK0_PRIORITY;
 0157
 0158    TASK_PRIORITY_TABLE(0) = TASK0_PRIORITY;
 0159    TASK_PRIORITY_TABLE(1) = TASK1_PRIORITY;
 0160    TASK_PRIORITY_TABLE(2) = TASK2_PRIORITY;
 0161
 0162    TASK_STATUS_TABLE(0) = ACTIVE;
 0163    TASK_STATUS_TABLE(1) = ACTIVE;
 0164    TASK_STATUS_TABLE(2) = ACTIVE;
 0165
 0166    CCR = CCR AND $EF;      /* enable IRQ in pre-load CCR */
 0167
 0168    STACK2 = .TASK_2;       /* put address of task 2 on top of stack */
 0169    STACK = .STACK2;        /* aim stack at stack area for task 2 */
 0170    GEN $34,$7F;            /* pre-load stack 2 (PSHS CC,D,DP,X,Y,U) */
 0171    TASK_TABLE(2) = STACK;  /* save base of stack in task table */
 0172
 0173    STACK1 = .TASK_1;       /* put address of task 1 on top of stack */
 0174    STACK = .STACK1;        /* aim stack at stack area for task 1 */
 0175    GEN $34,$7F;            /* pre-load stack 1 (PSHS CC,D,DP,X,Y,U) */
 0176    TASK_TABLE(1) = STACK;  /* save base of stack in task table */
 0177
 0178    STACK = .STACK0;        /* aim stack at task 0 area */
 0179
 0180    INITIALIZE_TIMER;
 0181    TIMER_ON;
 0182
 0183    TASK_0;


9.09.04  BETTER CONTROL OF AN IRQ DRIVEN MULTI-TASKING PROGRAM  (continued)

 You may have noted that we have declared a GLOBAL variable called 'TIMER_STATUS'
 but  have not used it anywhere other than between lines 37 and 57. This variable
 would normally be used in a supervisory program to determine if  the  IRQ  timer
 was running or not.


 We hope this section has given you some insight into  how  simple  multi-tasking
 kernals really are. Once you understand the basic principles involved you should
 be able to write a multi-tasking program that runs  under  interrupts  with  the
 same ease you would write normal PL/9 programs.


 The main rules when writing multi-tasking programs are:

 1. Make sure you allocate sufficient stack space to each task.  Be  generous  if
    you  are  in  doubt. If any recursive programs are going to be used make sure
    there is PLENTY of stack available.

 2. Don't forget to service the interrupting  device  in  the  interrupt  service
    routine. Failing to do so will generally result in the IRQ line remaining low
    which will cause the service routine to be re-entered the instant the RTI  is
    executed ... this will completely lock up the system.

 3. Be  careful with global variables that are used by several procedures. Ensure
    that the next task is not selected  until  the  current  task  is  completely
    finished manipulating/analyzing them.

 4. Even  though  the examples we have presented have not used local variables in
    any of the tasks or in the interrupt service procedure there  is  nothing  to
    prevent  you from using local variables in multi-tasking programs in the same
    manner you would with conventional PL/9 programs.

 5. If you write any ASMPROCS that are to be used by a multi-tasking program that
    runs  under  hardware  interrupts make sure it is re-entrant. This means that
    all variable storage must be on the stack. If the ASMPROC manipulates  GLOBAL
    data,  including  'AT'  data  which  includes  I/O devices the program is NOT
    re-entrant.  If  you  must  do this within a procedure ensure that you either
    mask the interrupt until you have completed manipulating the data  or  set  a
    flag  to  let  other  procedures that will use the data know that it is still
    being processed.


                        THIS PAGE INTENTIONALLY LEFT BLANK
