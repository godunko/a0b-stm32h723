pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32H723.svd

pragma Restrictions (No_Elaboration_Code);

with A0B.Types.SVD;
with System;

package A0B.SVD.STM32H723.SPDIFRX is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR_SPDIFRXEN_Field is A0B.Types.SVD.UInt2;
   subtype CR_DRFMT_Field is A0B.Types.SVD.UInt2;
   subtype CR_NBTR_Field is A0B.Types.SVD.UInt2;
   subtype CR_INSEL_Field is A0B.Types.SVD.UInt3;

   --  Control register
   type CR_Register is record
      --  Peripheral Block Enable
      SPDIFRXEN      : CR_SPDIFRXEN_Field := 16#0#;
      --  Receiver DMA ENable for data flow
      RXDMAEN        : Boolean := False;
      --  STerEO Mode
      RXSTEO         : Boolean := False;
      --  RX Data format
      DRFMT          : CR_DRFMT_Field := 16#0#;
      --  Mask Parity error bit
      PMSK           : Boolean := False;
      --  Mask of Validity bit
      VMSK           : Boolean := False;
      --  Mask of channel status and user bits
      CUMSK          : Boolean := False;
      --  Mask of Preamble Type bits
      PTMSK          : Boolean := False;
      --  Control Buffer DMA ENable for control flow
      CBDMAEN        : Boolean := False;
      --  Channel Selection
      CHSEL          : Boolean := False;
      --  Maximum allowed re-tries during synchronization phase
      NBTR           : CR_NBTR_Field := 16#0#;
      --  Wait For Activity
      WFA            : Boolean := False;
      --  unspecified
      Reserved_15_15 : A0B.Types.SVD.Bit := 16#0#;
      --  input selection
      INSEL          : CR_INSEL_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : A0B.Types.SVD.Bit := 16#0#;
      --  Symbol Clock Enable
      CKSEN          : Boolean := False;
      --  Backup Symbol Clock Enable
      CKSBKPEN       : Boolean := False;
      --  unspecified
      Reserved_22_31 : A0B.Types.SVD.UInt10 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CR_Register use record
      SPDIFRXEN      at 0 range 0 .. 1;
      RXDMAEN        at 0 range 2 .. 2;
      RXSTEO         at 0 range 3 .. 3;
      DRFMT          at 0 range 4 .. 5;
      PMSK           at 0 range 6 .. 6;
      VMSK           at 0 range 7 .. 7;
      CUMSK          at 0 range 8 .. 8;
      PTMSK          at 0 range 9 .. 9;
      CBDMAEN        at 0 range 10 .. 10;
      CHSEL          at 0 range 11 .. 11;
      NBTR           at 0 range 12 .. 13;
      WFA            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      INSEL          at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      CKSEN          at 0 range 20 .. 20;
      CKSBKPEN       at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Interrupt mask register
   type IMR_Register is record
      --  RXNE interrupt enable
      RXNEIE        : Boolean := False;
      --  Control Buffer Ready Interrupt Enable
      CSRNEIE       : Boolean := False;
      --  Parity error interrupt enable
      PERRIE        : Boolean := False;
      --  Overrun error Interrupt Enable
      OVRIE         : Boolean := False;
      --  Synchronization Block Detected Interrupt Enable
      SBLKIE        : Boolean := False;
      --  Synchronization Done
      SYNCDIE       : Boolean := False;
      --  Serial Interface Error Interrupt Enable
      IFEIE         : Boolean := False;
      --  unspecified
      Reserved_7_31 : A0B.Types.SVD.UInt25 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for IMR_Register use record
      RXNEIE        at 0 range 0 .. 0;
      CSRNEIE       at 0 range 1 .. 1;
      PERRIE        at 0 range 2 .. 2;
      OVRIE         at 0 range 3 .. 3;
      SBLKIE        at 0 range 4 .. 4;
      SYNCDIE       at 0 range 5 .. 5;
      IFEIE         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype SR_WIDTH5_Field is A0B.Types.SVD.UInt15;

   --  Status register
   type SR_Register is record
      --  Read-only. Read data register not empty
      RXNE           : Boolean;
      --  Read-only. Control Buffer register is not empty
      CSRNE          : Boolean;
      --  Read-only. Parity error
      PERR           : Boolean;
      --  Read-only. Overrun error
      OVR            : Boolean;
      --  Read-only. Synchronization Block Detected
      SBD            : Boolean;
      --  Read-only. Synchronization Done
      SYNCD          : Boolean;
      --  Read-only. Framing error
      FERR           : Boolean;
      --  Read-only. Synchronization error
      SERR           : Boolean;
      --  Read-only. Time-out error
      TERR           : Boolean;
      --  unspecified
      Reserved_9_15  : A0B.Types.SVD.UInt7;
      --  Read-only. Duration of 5 symbols counted with SPDIF_CLK
      WIDTH5         : SR_WIDTH5_Field;
      --  unspecified
      Reserved_31_31 : A0B.Types.SVD.Bit;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SR_Register use record
      RXNE           at 0 range 0 .. 0;
      CSRNE          at 0 range 1 .. 1;
      PERR           at 0 range 2 .. 2;
      OVR            at 0 range 3 .. 3;
      SBD            at 0 range 4 .. 4;
      SYNCD          at 0 range 5 .. 5;
      FERR           at 0 range 6 .. 6;
      SERR           at 0 range 7 .. 7;
      TERR           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      WIDTH5         at 0 range 16 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Interrupt Flag Clear register
   type IFCR_Register is record
      --  unspecified
      Reserved_0_1  : A0B.Types.SVD.UInt2 := 16#0#;
      --  Write-only. Clears the Parity error flag
      PERRCF        : Boolean := False;
      --  Write-only. Clears the Overrun error flag
      OVRCF         : Boolean := False;
      --  Write-only. Clears the Synchronization Block Detected flag
      SBDCF         : Boolean := False;
      --  Write-only. Clears the Synchronization Done flag
      SYNCDCF       : Boolean := False;
      --  unspecified
      Reserved_6_31 : A0B.Types.SVD.UInt26 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for IFCR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      PERRCF        at 0 range 2 .. 2;
      OVRCF         at 0 range 3 .. 3;
      SBDCF         at 0 range 4 .. 4;
      SYNCDCF       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype FMT0_DR_DR_Field is A0B.Types.SVD.UInt24;
   subtype FMT0_DR_PT_Field is A0B.Types.SVD.UInt2;

   --  Data input register
   type FMT0_DR_Register is record
      --  Read-only. Parity Error bit
      DR             : FMT0_DR_DR_Field;
      --  Read-only. Parity Error bit
      PE             : Boolean;
      --  Read-only. Validity bit
      V              : Boolean;
      --  Read-only. User bit
      U              : Boolean;
      --  Read-only. Channel Status bit
      C              : Boolean;
      --  Read-only. Preamble Type
      PT             : FMT0_DR_PT_Field;
      --  unspecified
      Reserved_30_31 : A0B.Types.SVD.UInt2;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for FMT0_DR_Register use record
      DR             at 0 range 0 .. 23;
      PE             at 0 range 24 .. 24;
      V              at 0 range 25 .. 25;
      U              at 0 range 26 .. 26;
      C              at 0 range 27 .. 27;
      PT             at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CSR_USR_Field is A0B.Types.SVD.UInt16;
   subtype CSR_CS_Field is A0B.Types.SVD.Byte;

   --  Channel Status register
   type CSR_Register is record
      --  Read-only. User data information
      USR            : CSR_USR_Field;
      --  Read-only. Channel A status information
      CS             : CSR_CS_Field;
      --  Read-only. Start Of Block
      SOB            : Boolean;
      --  unspecified
      Reserved_25_31 : A0B.Types.SVD.UInt7;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      USR            at 0 range 0 .. 15;
      CS             at 0 range 16 .. 23;
      SOB            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype DIR_THI_Field is A0B.Types.SVD.UInt13;
   subtype DIR_TLO_Field is A0B.Types.SVD.UInt13;

   --  Debug Information register
   type DIR_Register is record
      --  Read-only. Threshold HIGH
      THI            : DIR_THI_Field;
      --  unspecified
      Reserved_13_15 : A0B.Types.SVD.UInt3;
      --  Read-only. Threshold LOW
      TLO            : DIR_TLO_Field;
      --  unspecified
      Reserved_29_31 : A0B.Types.SVD.UInt3;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for DIR_Register use record
      THI            at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TLO            at 0 range 16 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Receiver Interface
   type SPDIFRX_Peripheral is record
      --  Control register
      CR      : aliased CR_Register;
      pragma Volatile_Full_Access (CR);
      --  Interrupt mask register
      IMR     : aliased IMR_Register;
      pragma Volatile_Full_Access (IMR);
      --  Status register
      SR      : aliased SR_Register;
      pragma Volatile_Full_Access (SR);
      --  Interrupt Flag Clear register
      IFCR    : aliased IFCR_Register;
      pragma Volatile_Full_Access (IFCR);
      --  Data input register
      FMT0_DR : aliased FMT0_DR_Register;
      pragma Volatile_Full_Access (FMT0_DR);
      --  Channel Status register
      CSR     : aliased CSR_Register;
      pragma Volatile_Full_Access (CSR);
      --  Debug Information register
      DIR     : aliased DIR_Register;
      pragma Volatile_Full_Access (DIR);
   end record
     with Volatile;

   for SPDIFRX_Peripheral use record
      CR      at 16#0# range 0 .. 31;
      IMR     at 16#4# range 0 .. 31;
      SR      at 16#8# range 0 .. 31;
      IFCR    at 16#C# range 0 .. 31;
      FMT0_DR at 16#10# range 0 .. 31;
      CSR     at 16#14# range 0 .. 31;
      DIR     at 16#18# range 0 .. 31;
   end record;

   --  Receiver Interface
   SPDIFRX_Periph : aliased SPDIFRX_Peripheral
     with Import, Address => SPDIFRX_Base;

end A0B.SVD.STM32H723.SPDIFRX;
