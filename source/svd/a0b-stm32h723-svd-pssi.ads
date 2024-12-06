pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32H723.svd


with A0B.Types.SVD;
with System;

package A0B.STM32H723.SVD.PSSI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Parallel data clock polarity This bit configures the capture edge of the
   --  parallel clock or the edge used for driving outputs, depending on OUTEN.
   type PSSI_CR_CKPOL_Field is
     (--  Falling edge active for inputs or rising edge active for outputs
      B_0x0,
      --  Rising edge active for inputs or falling edge active for outputs.
      B_0x1)
     with Size => 1;
   for PSSI_CR_CKPOL_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Data enable (PSSI_DE) polarity This bit indicates the level on the
   --  PSSI_DE pin when the data are not valid on the parallel interface.
   type PSSI_CR_DEPOL_Field is
     (--  PSSI_DE active low (0 indicates that data is valid)
      B_0x0,
      --  PSSI_DE active high (1 indicates that data is valid)
      B_0x1)
     with Size => 1;
   for PSSI_CR_DEPOL_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Ready (PSSI_RDY) polarity This bit indicates the level on the PSSI_RDY
   --  pin when the data are not valid on the parallel interface.
   type PSSI_CR_RDYPOL_Field is
     (--  PSSI_RDY active low (0 indicates that the receiver is ready to receive)
      B_0x0,
      --  PSSI_RDY active high (1 indicates that the receiver is ready to receive)
      B_0x1)
     with Size => 1;
   for PSSI_CR_RDYPOL_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Extended data mode
   type PSSI_CR_EDM_Field is
     (--  Interface captures 8-bit data on every parallel data clock
      B_0x0,
      --  Reserved, must not be selected
      B_0x1,
      --  Reserved, must not be selected
      B_0x2,
      --  The interface captures 16-bit data on every parallel data clock
      B_0x3)
     with Size => 2;
   for PSSI_CR_EDM_Field use
     (B_0x0 => 0,
      B_0x1 => 1,
      B_0x2 => 2,
      B_0x3 => 3);

   --  PSSI enable The contents of the FIFO are flushed when ENABLE is cleared
   --  to 0. Note: When ENABLE=1, the content of PSSI_CR must not be changed,
   --  except for the ENABLE bit itself. All configuration bits can change as
   --  soon as ENABLE changes from 0 to 1. The DMA controller and all PSSI
   --  configuration registers must be programmed correctly before setting the
   --  ENABLE bit to 1. The ENABLE bit and the DCMI ENABLE bit (bit 15 of
   --  DCMI_CR) must not be set to 1 at the same time.
   type PSSI_CR_ENABLE_Field is
     (--  PSSI disabled
      B_0x0,
      --  PSSI enabled
      B_0x1)
     with Size => 1;
   for PSSI_CR_ENABLE_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Data enable and ready configuration When the PSSI_RDY function is mapped
   --  to the PSSI_DE pin (settings 101 or 111), it is still the RDYPOL bit
   --  which determines its polarity. Similarly, when the PSSI_DE function is
   --  mapped to the PSSI_RDY pin (settings 110 or 111), it is still the DEPOL
   --  bit which determines its polarity.
   type PSSI_CR_DERDYCFG_Field is
     (--  PSSI_DE and PSSI_RDY both disabled
      B_0x0,
      --  Only PSSI_RDY enabled
      B_0x1,
      --  Only PSSI_DE enabled
      B_0x2,
      --  Both PSSI_RDY and PSSI_DE alternate functions enabled
      B_0x3,
      --  Both PSSI_RDY and PSSI_DE features enabled - bidirectional on PSSI_RDY pin
--  (see )
      B_0x4,
      --  Only PSSI_RDY function enabled, but mapped to PSSI_DE pin
      B_0x5,
      --  Only PSSI_DE function enabled, but mapped to PSSI_RDY pin
      B_0x6,
      --  Both PSSI_RDY and PSSI_DE features enabled - bidirectional on PSSI_DE pin
--  (see )
      B_0x7)
     with Size => 3;
   for PSSI_CR_DERDYCFG_Field use
     (B_0x0 => 0,
      B_0x1 => 1,
      B_0x2 => 2,
      B_0x3 => 3,
      B_0x4 => 4,
      B_0x5 => 5,
      B_0x6 => 6,
      B_0x7 => 7);

   --  DMA enable bit
   type PSSI_CR_DMAEN_Field is
     (--  DMA transfers are disabled. The user application can directly access the
--  PSSI_DR register when DMA transfers are disabled.
      B_0x0,
      --  DMA transfers are enabled (default configuration). A DMA channel in the
--  general-purpose DMA controller must be configured to perform transfers
--  from/to PSSI_DR.
      B_0x1)
     with Size => 1;
   for PSSI_CR_DMAEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Data direction selection bit
   type PSSI_CR_OUTEN_Field is
     (--  Receive mode: data is input synchronously with PSSI_PDCK
      B_0x0,
      --  Transmit mode: data is output synchronously with PSSI_PDCK
      B_0x1)
     with Size => 1;
   for PSSI_CR_OUTEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  PSSI control register
   type PSSI_CR_Register is record
      --  unspecified
      Reserved_0_4   : A0B.Types.SVD.UInt5 := 16#0#;
      --  Parallel data clock polarity This bit configures the capture edge of
      --  the parallel clock or the edge used for driving outputs, depending on
      --  OUTEN.
      CKPOL          : PSSI_CR_CKPOL_Field := A0B.STM32H723.SVD.PSSI.B_0x0;
      --  Data enable (PSSI_DE) polarity This bit indicates the level on the
      --  PSSI_DE pin when the data are not valid on the parallel interface.
      DEPOL          : PSSI_CR_DEPOL_Field := A0B.STM32H723.SVD.PSSI.B_0x0;
      --  unspecified
      Reserved_7_7   : A0B.Types.SVD.Bit := 16#0#;
      --  Ready (PSSI_RDY) polarity This bit indicates the level on the
      --  PSSI_RDY pin when the data are not valid on the parallel interface.
      RDYPOL         : PSSI_CR_RDYPOL_Field := A0B.STM32H723.SVD.PSSI.B_0x0;
      --  unspecified
      Reserved_9_9   : A0B.Types.SVD.Bit := 16#0#;
      --  Extended data mode
      EDM            : PSSI_CR_EDM_Field := A0B.STM32H723.SVD.PSSI.B_0x0;
      --  unspecified
      Reserved_12_13 : A0B.Types.SVD.UInt2 := 16#0#;
      --  PSSI enable The contents of the FIFO are flushed when ENABLE is
      --  cleared to 0. Note: When ENABLE=1, the content of PSSI_CR must not be
      --  changed, except for the ENABLE bit itself. All configuration bits can
      --  change as soon as ENABLE changes from 0 to 1. The DMA controller and
      --  all PSSI configuration registers must be programmed correctly before
      --  setting the ENABLE bit to 1. The ENABLE bit and the DCMI ENABLE bit
      --  (bit 15 of DCMI_CR) must not be set to 1 at the same time.
      ENABLE         : PSSI_CR_ENABLE_Field := A0B.STM32H723.SVD.PSSI.B_0x0;
      --  unspecified
      Reserved_15_17 : A0B.Types.SVD.UInt3 := 16#0#;
      --  Data enable and ready configuration When the PSSI_RDY function is
      --  mapped to the PSSI_DE pin (settings 101 or 111), it is still the
      --  RDYPOL bit which determines its polarity. Similarly, when the PSSI_DE
      --  function is mapped to the PSSI_RDY pin (settings 110 or 111), it is
      --  still the DEPOL bit which determines its polarity.
      DERDYCFG       : PSSI_CR_DERDYCFG_Field := A0B.STM32H723.SVD.PSSI.B_0x0;
      --  unspecified
      Reserved_21_29 : A0B.Types.SVD.UInt9 := 16#0#;
      --  DMA enable bit
      DMAEN          : PSSI_CR_DMAEN_Field := A0B.STM32H723.SVD.PSSI.B_0x1;
      --  Data direction selection bit
      OUTEN          : PSSI_CR_OUTEN_Field := A0B.STM32H723.SVD.PSSI.B_0x0;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PSSI_CR_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      CKPOL          at 0 range 5 .. 5;
      DEPOL          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RDYPOL         at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      EDM            at 0 range 10 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      ENABLE         at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      DERDYCFG       at 0 range 18 .. 20;
      Reserved_21_29 at 0 range 21 .. 29;
      DMAEN          at 0 range 30 .. 30;
      OUTEN          at 0 range 31 .. 31;
   end record;

   --  FIFO is ready to transfer four bytes
   type PSSI_SR_RTT4B_Field is
     (--  FIFO is not ready for a four-byte transfer
      B_0x0,
      --  FIFO is ready for a four-byte (32-bit) transfer. In receive mode, this
--  means that at least four valid data bytes are in the FIFO. In transmit
--  mode, this means that there are at least four bytes free in the FIFO.
      B_0x1)
     with Size => 1;
   for PSSI_SR_RTT4B_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  FIFO is ready to transfer one byte
   type PSSI_SR_RTT1B_Field is
     (--  FIFO is not ready for a 1-byte transfer
      B_0x0,
      --  FIFO is ready for a one byte (32-bit) transfer. In receive mode, this means
--  that at least one valid data byte is in the FIFO. In transmit mode, this
--  means that there is at least one byte free in the FIFO.
      B_0x1)
     with Size => 1;
   for PSSI_SR_RTT1B_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  PSSI status register
   type PSSI_SR_Register is record
      --  unspecified
      Reserved_0_1  : A0B.Types.SVD.UInt2;
      --  Read-only. FIFO is ready to transfer four bytes
      RTT4B         : PSSI_SR_RTT4B_Field;
      --  Read-only. FIFO is ready to transfer one byte
      RTT1B         : PSSI_SR_RTT1B_Field;
      --  unspecified
      Reserved_4_31 : A0B.Types.SVD.UInt28;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PSSI_SR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      RTT4B         at 0 range 2 .. 2;
      RTT1B         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Data buffer overrun/underrun raw interrupt status This bit is cleared by
   --  writing a 1 to the OVR_ISC bit in PSSI_ICR.
   type PSSI_RIS_OVR_RIS_Field is
     (--  No overrun/underrun occurred
      B_0x0,
      --  An overrun/underrun occurred: overrun in receive mode, underrun in transmit
--  mode.
      B_0x1)
     with Size => 1;
   for PSSI_RIS_OVR_RIS_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  PSSI raw interrupt status register
   type PSSI_RIS_Register is record
      --  unspecified
      Reserved_0_0  : A0B.Types.SVD.Bit;
      --  Read-only. Data buffer overrun/underrun raw interrupt status This bit
      --  is cleared by writing a 1 to the OVR_ISC bit in PSSI_ICR.
      OVR_RIS       : PSSI_RIS_OVR_RIS_Field;
      --  unspecified
      Reserved_2_31 : A0B.Types.SVD.UInt30;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PSSI_RIS_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      OVR_RIS       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Data buffer overrun/underrun interrupt enable
   type PSSI_IER_OVR_IE_Field is
     (--  No interrupt generation
      B_0x0,
      --  An interrupt is generated if either an overrun or an underrun error
--  occurred.
      B_0x1)
     with Size => 1;
   for PSSI_IER_OVR_IE_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  PSSI interrupt enable register
   type PSSI_IER_Register is record
      --  unspecified
      Reserved_0_0  : A0B.Types.SVD.Bit := 16#0#;
      --  Data buffer overrun/underrun interrupt enable
      OVR_IE        : PSSI_IER_OVR_IE_Field := A0B.STM32H723.SVD.PSSI.B_0x0;
      --  unspecified
      Reserved_2_31 : A0B.Types.SVD.UInt30 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PSSI_IER_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      OVR_IE        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Data buffer overrun/underrun masked interrupt status This bit is set to
   --  1 only when PSSI_IER/OVR_IE and PSSI_RIS/OVR_RIS are both set to 1.
   type PSSI_MIS_OVR_MIS_Field is
     (--  No interrupt is generated when an overrun/underrun error occurs
      B_0x0,
      --  An interrupt is generated if there is either an overrun or an underrun
--  error and the OVR_IE bit is set in PSSI_IER.
      B_0x1)
     with Size => 1;
   for PSSI_MIS_OVR_MIS_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  PSSI masked interrupt status register
   type PSSI_MIS_Register is record
      --  unspecified
      Reserved_0_0  : A0B.Types.SVD.Bit;
      --  Read-only. Data buffer overrun/underrun masked interrupt status This
      --  bit is set to 1 only when PSSI_IER/OVR_IE and PSSI_RIS/OVR_RIS are
      --  both set to 1.
      OVR_MIS       : PSSI_MIS_OVR_MIS_Field;
      --  unspecified
      Reserved_2_31 : A0B.Types.SVD.UInt30;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PSSI_MIS_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      OVR_MIS       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  PSSI interrupt clear register
   type PSSI_ICR_Register is record
      --  unspecified
      Reserved_0_0  : A0B.Types.SVD.Bit := 16#0#;
      --  Write-only. Data buffer overrun/underrun interrupt status clear
      --  Writing this bit to 1 clears the OVR_RIS bit in PSSI_RIS.
      OVR_ISC       : Boolean := False;
      --  unspecified
      Reserved_2_31 : A0B.Types.SVD.UInt30 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PSSI_ICR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      OVR_ISC       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  PSSI_DR_BYTE array element
   subtype PSSI_DR_BYTE_Element is A0B.Types.SVD.Byte;

   --  PSSI_DR_BYTE array
   type PSSI_DR_BYTE_Field_Array is array (0 .. 3) of PSSI_DR_BYTE_Element
     with Component_Size => 8, Size => 32;

   --  PSSI data register
   type PSSI_DR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BYTE as a value
            Val : A0B.Types.SVD.UInt32;
         when True =>
            --  BYTE as an array
            Arr : PSSI_DR_BYTE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSSI_DR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PSSI register block
   type PSSI_Peripheral is record
      --  PSSI control register
      PSSI_CR  : aliased PSSI_CR_Register;
      pragma Volatile_Full_Access (PSSI_CR);
      --  PSSI status register
      PSSI_SR  : aliased PSSI_SR_Register;
      pragma Volatile_Full_Access (PSSI_SR);
      --  PSSI raw interrupt status register
      PSSI_RIS : aliased PSSI_RIS_Register;
      pragma Volatile_Full_Access (PSSI_RIS);
      --  PSSI interrupt enable register
      PSSI_IER : aliased PSSI_IER_Register;
      pragma Volatile_Full_Access (PSSI_IER);
      --  PSSI masked interrupt status register
      PSSI_MIS : aliased PSSI_MIS_Register;
      pragma Volatile_Full_Access (PSSI_MIS);
      --  PSSI interrupt clear register
      PSSI_ICR : aliased PSSI_ICR_Register;
      pragma Volatile_Full_Access (PSSI_ICR);
      --  PSSI data register
      PSSI_DR  : aliased PSSI_DR_Register;
      pragma Volatile_Full_Access (PSSI_DR);
   end record
     with Volatile;

   for PSSI_Peripheral use record
      PSSI_CR  at 16#0# range 0 .. 31;
      PSSI_SR  at 16#4# range 0 .. 31;
      PSSI_RIS at 16#8# range 0 .. 31;
      PSSI_IER at 16#C# range 0 .. 31;
      PSSI_MIS at 16#10# range 0 .. 31;
      PSSI_ICR at 16#14# range 0 .. 31;
      PSSI_DR  at 16#28# range 0 .. 31;
   end record;

   --  PSSI register block
   PSSI_Periph : aliased PSSI_Peripheral
     with Import, Address => PSSI_Base;

end A0B.STM32H723.SVD.PSSI;
