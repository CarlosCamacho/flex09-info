*  SIMPLE UART "ECHO" CODE 

* Register initialization values before execution:
*
* PC=00030300  SR=2700
* USP=00080000 *ISP=00004000 (Stack pointers not used)
*
* D1 = SCCE3 holding register
* D3 = count of characters received
* D4 = count of characters transmitted
* D5 = count of BSY conditions occuring (no receive buffers available)
* D6 = 1 or greater, if character(s) waiting to be transmitted, 0 otherwise
* A0 = current Rx BD pointer
* A1 = current "next TX byte" to send pointer
* A2 = current Tx BD pointer
* A3 = temp

* SCC3 Tx Buffer Descriptors initialization:
* 00700640  5000 0000 0003 0000
* 00700648  7000 0000 0003 0001  (wrap bit set)

* SCC3 Rx Buffer Descriptors initialization:
* 00700600  d000 0000 0003 0002
* 00700608  f000 0000 0003 0003  (wrap bit set)

BAR	 EQU	$0F2
GIMR	 EQU	$700812
IPR	 EQU	$700814
IMR	 EQU	$700816
ISR	 EQU	$700818
PACNT	 EQU	$70081e
SIMODE EQU	$7008b4
SCON3	 EQU	$7008a2
SCM3	 EQU	$7008a4
SCCE3	 EQU	$7008a8
SCCM3	 EQU	$7008aa

* SCC3 initialization code:

	 ORG	$30300

	 MOVE.W #$700,BAR		      ; BAR = 0700
* Base Address = $700000, so ALL 68302 on-chip peripherals begin at
* address $700xxx.

	 MOVE.W #$00A0,GIMR		; GIMR = 00a0
	 MOVE.W #$FFFF,IPR		; clear IPR
	 MOVE.L #$30500,$2a0		; SCC3 vector initialization

	 MOVE.W #$0300,PACNT		; PACNT = 0300
* Causes the SCC3 TXD3 and RXD3 pins to be enabled.  TCLK3 and RCLK3
* pins are left as parallel I/O pins.

	 MOVE.W #$0,SIMODE		; SIMODE = 0000 (its reset value)
* SCC3 is set up for NMSI (i.e. modem) operation.  No multiplexed
* modes are used on the other SCCs.

	 MOVE.W #$00d8,SCON3	      ; SCON3 = 00d8 for ~9600 baud at 16.67 MHz
* Baud Rate generator is used for transmit and receive. Rate is 9556bps.

	 MOVE.W #$171,SCM3		; SCM3 = 0171
* No parity.  Normal UART operation.  8-bit characters.  2 Stop bits.
* The CD* and CTS* lines not used to enable reception and transmission,
* but do cause a status change in the SCC3 Event register.

	 MOVE.L #$50000000,$700640	; Set up Tx BD 0 Status and Count
	 MOVE.L #$30000,$700644 	; Set up Tx BD 0 Buffer Address
	 MOVE.L #$70000000,$700648	; Set up Tx BD 1 Status and Count
	 MOVE.L #$30001,$70064c 	; Set up Tx BD 1 Buffer Address
* Set up 2 Tx BDs

	 MOVE.L #$d0000000,$700600     ; Set up Rx BD 0 Status and Count
	 MOVE.L #$30002,$700604        ; Set up Rx BD 0 Buffer Address
	 MOVE.L #$f0000000,$700608     ; Set up Rx BD 1 Status and Count
	 MOVE.L #$30003,$70060c        ; Set up Rx BD 1 Buffer Address
* Set up 2 Rx BDs

	 MOVE.W #$0,$700680	      ; clear RFCR/TFCR (Function code setup)
* Must be initialized to a value other than 7, or won't work with chip selects

	 MOVE.W #$1,$700682	      ; MRBLR = 0001  (one-byte receive buffers)
* This combined with the "I" bit set in the Rx BD, gives interrupts on each
* character received.  

	 MOVE.W #$4,$70069c	      ; MAX_IDL don't care since MRBLR = 1.
* Normally set to a small value, it closes a receive buffer if a certain
* number of idles are received without a new character.  Note that 0 is the
* maximum value.  In this case the buffer will always be closed after 1
* character, so MAX_IDL is a don't care.

	 MOVE.W #$1,$7006A0	      ; BRKCR = 1.  Only one break char. sent if
* STOP TRANSMIT command executed.  The STOP TRANSMIT command is not used in
* this code.

	 MOVE.W #$0,$7006A2		; PAREC = 0000
	 MOVE.W #$0,$7006A4		; FRMEC = 0000
	 MOVE.W #$0,$7006A6		; NOSEC = 0000
	 MOVE.W #$0,$7006A8		; BRKEC = 0000
* Initialize counters to zero

	 MOVE.W #$0,$7006aa		; UADDR1 = 0000
	 MOVE.W #$0,$7006ac		; UADDR2 = 0000
*  UART Address characters not used in normal operation.

	 MOVE.W #$8000,$7006B0		; CHARACTER1 = 8000
* No control characters are initialized to cause special interrupts.
* The flow-control facility (XON-XOFF) is not used.

	 MOVE.B #$FF,SCCE3		; clear SCCE3
	 MOVE.B #$15,SCCM3		; SCCM3 = 15
* Interrupts in SCCM3 are allowed only for BRK (break character
* received), BSY (no receive buffer available), and RX (buffer
* received).  Note that buffers are 1 character in this application.

	 MOVE.W #$0100,IMR	       ; IMR = 0100. Allow SCC3 interrupts only.

	 MOVE.W #$17d,SCM3	       ; SCM3 = 017d
* Set ENR and ENT bits in SCM3.

	 CLR.L D0		             ; clear all used data registers
	 CLR.L D1   
	 CLR.L D3
	 CLR.L D4
	 CLR.L D5
	 CLR.L D6

	 MOVEA.L #$700600,A0	       ; Load A0 as current Rx BD pointer
	 MOVEA.L #$30002,A1	       ; Load A1 as current "next Tx Byte" ptr
	 MOVEA.L #$700640,A2	       ; Load A2 as current Tx BD pointer

	 MOVE.W #$2000,SR	             ; Enable interrupts. Stay in spvr mode.

****************************************************************************
* Transmit Code

* OUTERLOOP:
OUTLOOP  CMPI.B #$0,D6		       ; Something to send (is D6>=1?)
	 BEQ.B	OUTLOOP 	       ; Stay in outerloop if 0
	 SUBQ.B #$1,D6		       ; Decrement send status by 1 (0=empty)

* INNERLOOP:
INLOOP	 BTST.B #$0F,(A2)	       ; Test Ready bit of Tx BD
	 BNE.B INLOOP		       ; Fall thru if 0, else wait in innerloop

* The following sets up and sends out the transmit buffer
	 ADDQ.W #$1,D4		       ; Increment number of chars transmitted
	 MOVEA.L A2,A3		       ; A3 will be used to find Tx data buffer
	 ADDQ.W #$4,A3		       ; Inc A3 to point to Tx data pointer
	 MOVEA.L (A3),A3	             ; A3 now points to Tx Data buffer
	 MOVE.B (A1),(A3)	             ; Move char from Rx Buffer to Tx Buffer
	 ADDQ.W #2,A2		       ; Increment A2 to point to byte count
	 MOVE.W #$1,(A2)	             ; Set Tx BD Byte count to 1
	 SUBQ.W #2,A2		       ; A2 now points to beginning of Tx BD
	 BSET.B #$07,(A2)	             ; Set Ready bit of Tx BD
* The Tx BD send data status is not checked since the only one is CTS* lost,
* which is not applicable, since CTS is ignored in this application.

* The following updates A2 to point to the next Tx BD
	 BTST.B #$05,(A2)	             ; test Wrap bit
	 BNE.B REINIT2		       ; If set, reinit A2 to 700640
	 ADDA.W #$08,A2 	             ; else inc A2 by 8 to next Tx BD
	 BRA.B CONT		             ; Jump to Continue on
REINIT2  MOVEA.L #$700640,A2	       ; Reinitialize A2

* Determine what the next byte to "echo" will be and then go to OUTERLOOP
CONT	 ADDQ.W #$1,A1		       ; Increment A1 to next byte to send
	 CMPA.L #$30004,A1	       ; Is A1 = 30004?  ***
	 BEQ.B NEWA1		       ; If so, go to NEWA1
	 BRA.B OUTLOOP		       ; Jump back to outerloop and wait
NEWA1	 SUBQ.W #$02,A1 	             ; Set A1 back to 30002  ***
	 BRA.B OUTLOOP		       ; Jump back to outerloop and wait
* The two lines with *** above are dependent on the number of Rx BDs used.
* If the number is increased, these values should be increased by the same
* amount.  These are the only lines dependent on the Rx BD or Tx BD setup.

******************************************************************************
* SCC3 interrupt routine:

	 ORG $30500

	 CLR.L D1		      	 ; clear D1
	 MOVE.B SCCE3,D1	             ; Move SCCE3 status to D1
	 MOVE.B #$15,SCCE3	       ; Clear only BRK, BSY and RX in SCCE3.

	 BTST.B #$2,D1		       ; Is BSY set?
	 BNE.B BUSY		             ; Jump to BUSY handler if set

* Test Break:
BRKTEST  BTST.B #$4,D1		       ; Is BRK set?
	 BNE.B BREAK		       ; Jump to BREAK handler if set

* Test Receive:
RECTEST  BTST.B #$0,D1		       ; Is RX set?
	 BNE.B RECEIVE		       ; Jump to RECEIVE handler if set
	 JMP ALMDONE		       ; Jump to About Done (impossible)

* Busy handler:
BUSY	 ADDQ.B #1,D5		       ; Inc Busy counter (no receive buffers)
	 BSET.B #$F,(A0)	             ; set Empty bit of current Rx BD
	 JMP BRKTEST		       ; Jump to test for BREAK

* Break handler:
BREAK	 NOP			             ; This code ignores received breaks
* The UART BRKEC will record the number of breaks received
	 JMP RECTEST		       ; Jump to test for RECEIVE

* Receive handler:
RECEIVE  ADDQ.W #1,D3		       ; Increment number of chars received
	 ADDQ.B #1,D6		       ; D6 inc by 1 (character ready to send)

	 ADDQ.W #1,A0		       ; Inc A0 to point to Rx BD byte status
	 CMPI.B #$0,(A0)	             ; Does status = 00?
	 BNE.B BSTAT		       ; Jump to Bad Status if not 00
INCPTR	 SUBQ.W #1,A0		 ; Dec A0 to point to beginning of Rx BD
	 ANDI.W #$FF00,(A0)	       ; Clear out Rx BD status
	 BSET.B #$07,(A0)	             ; Set Empty bit of Rx BD
	 BTST.B #$05,(A0)	             ; test Wrap bit
	 BNE.B REINIT0		       ; If set, reinit A0 to 700600
	 ADDA.W #$08,A0 	             ; else inc A0 by 8 to next Rx BD
	 BRA.B ALMDONE		       ; Jump to Almost Done
REINIT0  MOVEA.L #$700600,A0	       ; Reinitialize A0
	 BRA.B ALMDONE		       ; Jump to almost Done

* Bad Status:
BSTAT	 NOP			             ; Bad status handler would go here
* Note that the UART FRMEC, NOSEC, and PAREC counters record bad status.
	 BRA.B INCPTR		       ; Jump back to Receive handler

* Almost Done:
ALMDONE  MOVE.W #$0100,ISR	       ; Clear SCC3 bit in the ISR
	 RTE			             ; end of interrupt handler
	 END
