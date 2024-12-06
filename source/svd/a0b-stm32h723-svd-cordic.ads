pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32H723.svd


with A0B.Types.SVD;
with System;

package A0B.STM32H723.SVD.CORDIC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Function
   type CORDIC_CSR_FUNC_Field is
     (--  Cosine
      B_0x0,
      --  Sine
      B_0x1)
     with Size => 4;
   for CORDIC_CSR_FUNC_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Precision required (number of iterations) To determine the number of
   --  iterations needed for a given accuracy refer to . Note that for most
   --  functions, the recommended range for this field is 3 to 6.
   type CORDIC_CSR_PRECISION_Field is
     (--  (Number of iterations)/4
      B_0x1,
      --  (Number of iterations)/4
      B_0x2,
      --  (Number of iterations)/4
      B_0x3,
      --  (Number of iterations)/4
      B_0x4,
      --  (Number of iterations)/4
      B_0x5,
      --  (Number of iterations)/4
      B_0x6,
      --  (Number of iterations)/4
      B_0x7,
      --  (Number of iterations)/4
      B_0x8,
      --  (Number of iterations)/4
      B_0x9,
      --  (Number of iterations)/4
      B_0xa,
      --  (Number of iterations)/4
      B_0xb,
      --  (Number of iterations)/4
      B_0xc,
      --  (Number of iterations)/4
      B_0xd,
      --  (Number of iterations)/4
      B_0xe,
      --  (Number of iterations)/4
      B_0xf)
     with Size => 4;
   for CORDIC_CSR_PRECISION_Field use
     (B_0x1 => 1,
      B_0x2 => 2,
      B_0x3 => 3,
      B_0x4 => 4,
      B_0x5 => 5,
      B_0x6 => 6,
      B_0x7 => 7,
      B_0x8 => 8,
      B_0x9 => 9,
      B_0xa => 10,
      B_0xb => 11,
      B_0xc => 12,
      B_0xd => 13,
      B_0xe => 14,
      B_0xf => 15);

   subtype CORDIC_CSR_SCALE_Field is A0B.Types.SVD.UInt3;

   --  Enable interrupt. This bit is set and cleared by software. A read
   --  returns the current state of the bit.
   type CORDIC_CSR_IEN_Field is
     (--  Disabled. No interrupt requests are generated.
      B_0x0,
      --  Enabled. An interrupt request is generated whenever the RRDY flag is set.
      B_0x1)
     with Size => 1;
   for CORDIC_CSR_IEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Enable DMA read channel This bit is set and cleared by software. A read
   --  returns the current state of the bit.
   type CORDIC_CSR_DMAREN_Field is
     (--  Disabled. No DMA read requests are generated.
      B_0x0,
      --  Enabled. Requests are generated on the DMA read channel whenever the RRDY
--  flag is set.
      B_0x1)
     with Size => 1;
   for CORDIC_CSR_DMAREN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Enable DMA write channel This bit is set and cleared by software. A read
   --  returns the current state of the bit.
   type CORDIC_CSR_DMAWEN_Field is
     (--  Disabled. No DMA write requests are generated.
      B_0x0,
      --  Enabled. Requests are generated on the DMA write channel whenever no
--  operation is pending
      B_0x1)
     with Size => 1;
   for CORDIC_CSR_DMAWEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Number of results in the CORDIC_RDATA register Reads return the current
   --  state of the bit.
   type CORDIC_CSR_NRES_Field is
     (--  Only one 32-bit value (or two 16-bit values if RESSIZE = 1) is transferred
--  to the CORDIC_RDATA register on completion of the next calculation. One
--  read from CORDIC_RDATA resets the RRDY flag.
      B_0x0,
      --  Two 32-bit values are transferred to the CORDIC_RDATA register on
--  completion of the next calculation. Two reads from CORDIC_RDATA are
--  necessary to reset the RRDY flag.
      B_0x1)
     with Size => 1;
   for CORDIC_CSR_NRES_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Number of arguments expected by the CORDIC_WDATA register Reads return
   --  the current state of the bit.
   type CORDIC_CSR_NARGS_Field is
     (--  Only one 32-bit write (or two 16-bit values if ARGSIZE = 1) is needed for
--  the next calculation.
      B_0x0,
      --  Two 32-bit values must be written to the CORDIC_WDATA register to trigger
--  the next calculation.
      B_0x1)
     with Size => 1;
   for CORDIC_CSR_NARGS_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Width of output data RESSIZE selects the number of bits used to
   --  represent output data. If 32-bit data is selected, the CORDIC_RDATA
   --  register contains results in q1.31 format. If 16-bit data is selected,
   --  the least significant half-word of CORDIC_RDATA contains the primary
   --  result (RES1) in q1.15 format, and the most significant half-word
   --  contains the secondary result (RES2), also in q1.15 format.
   type CORDIC_CSR_RESSIZE_Field is
     (--  32-bit
      B_0x0,
      --  16-bit
      B_0x1)
     with Size => 1;
   for CORDIC_CSR_RESSIZE_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Width of input data ARGSIZE selects the number of bits used to represent
   --  input data. If 32-bit data is selected, the CORDIC_WDATA register
   --  expects arguments in q1.31 format. If 16-bit data is selected, the
   --  CORDIC_WDATA register expects arguments in q1.15 format. The primary
   --  argument (ARG1) is written to the least significant half-word, and the
   --  secondary argument (ARG2) to the most significant half-word.
   type CORDIC_CSR_ARGSIZE_Field is
     (--  32-bit
      B_0x0,
      --  16-bit
      B_0x1)
     with Size => 1;
   for CORDIC_CSR_ARGSIZE_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Result ready flag This bit is set by hardware when a CORDIC operation
   --  completes. It is reset by hardware when the CORDIC_RDATA register is
   --  read (NRES+1) times. When this bit is set, if the IEN bit is also set,
   --  the CORDIC interrupt is asserted. If the DMAREN bit is set, a DMA read
   --  channel request is generated. While this bit is set, no new calculation
   --  is started.
   type CORDIC_CSR_RRDY_Field is
     (--  No new result in output register
      B_0x0,
      --  CORDIC_RDATA register contains new data.
      B_0x1)
     with Size => 1;
   for CORDIC_CSR_RRDY_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  CORDIC control/status register
   type CORDIC_CSR_Register is record
      --  Function
      FUNC           : CORDIC_CSR_FUNC_Field :=
                        A0B.STM32H723.SVD.CORDIC.B_0x0;
      --  Precision required (number of iterations) To determine the number of
      --  iterations needed for a given accuracy refer to . Note that for most
      --  functions, the recommended range for this field is 3 to 6.
      PRECISION      : CORDIC_CSR_PRECISION_Field :=
                        A0B.STM32H723.SVD.CORDIC.B_0x5;
      --  Scaling factor The value of this field indicates the scaling factor
      --  applied to the arguments and/or results. A value n implies that the
      --  arguments have been multiplied by a factor 2-n, and/or the results
      --  need to be multiplied by 2n. Refer to for the applicability of the
      --  scaling factor for each function and the appropriate range.
      SCALE          : CORDIC_CSR_SCALE_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : A0B.Types.SVD.UInt5 := 16#0#;
      --  Enable interrupt. This bit is set and cleared by software. A read
      --  returns the current state of the bit.
      IEN            : CORDIC_CSR_IEN_Field := A0B.STM32H723.SVD.CORDIC.B_0x0;
      --  Enable DMA read channel This bit is set and cleared by software. A
      --  read returns the current state of the bit.
      DMAREN         : CORDIC_CSR_DMAREN_Field :=
                        A0B.STM32H723.SVD.CORDIC.B_0x0;
      --  Enable DMA write channel This bit is set and cleared by software. A
      --  read returns the current state of the bit.
      DMAWEN         : CORDIC_CSR_DMAWEN_Field :=
                        A0B.STM32H723.SVD.CORDIC.B_0x0;
      --  Number of results in the CORDIC_RDATA register Reads return the
      --  current state of the bit.
      NRES           : CORDIC_CSR_NRES_Field :=
                        A0B.STM32H723.SVD.CORDIC.B_0x0;
      --  Number of arguments expected by the CORDIC_WDATA register Reads
      --  return the current state of the bit.
      NARGS          : CORDIC_CSR_NARGS_Field :=
                        A0B.STM32H723.SVD.CORDIC.B_0x0;
      --  Width of output data RESSIZE selects the number of bits used to
      --  represent output data. If 32-bit data is selected, the CORDIC_RDATA
      --  register contains results in q1.31 format. If 16-bit data is
      --  selected, the least significant half-word of CORDIC_RDATA contains
      --  the primary result (RES1) in q1.15 format, and the most significant
      --  half-word contains the secondary result (RES2), also in q1.15 format.
      RESSIZE        : CORDIC_CSR_RESSIZE_Field :=
                        A0B.STM32H723.SVD.CORDIC.B_0x0;
      --  Width of input data ARGSIZE selects the number of bits used to
      --  represent input data. If 32-bit data is selected, the CORDIC_WDATA
      --  register expects arguments in q1.31 format. If 16-bit data is
      --  selected, the CORDIC_WDATA register expects arguments in q1.15
      --  format. The primary argument (ARG1) is written to the least
      --  significant half-word, and the secondary argument (ARG2) to the most
      --  significant half-word.
      ARGSIZE        : CORDIC_CSR_ARGSIZE_Field :=
                        A0B.STM32H723.SVD.CORDIC.B_0x0;
      --  unspecified
      Reserved_23_30 : A0B.Types.SVD.Byte := 16#0#;
      --  Read-only. Result ready flag This bit is set by hardware when a
      --  CORDIC operation completes. It is reset by hardware when the
      --  CORDIC_RDATA register is read (NRES+1) times. When this bit is set,
      --  if the IEN bit is also set, the CORDIC interrupt is asserted. If the
      --  DMAREN bit is set, a DMA read channel request is generated. While
      --  this bit is set, no new calculation is started.
      RRDY           : CORDIC_CSR_RRDY_Field :=
                        A0B.STM32H723.SVD.CORDIC.B_0x0;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CORDIC_CSR_Register use record
      FUNC           at 0 range 0 .. 3;
      PRECISION      at 0 range 4 .. 7;
      SCALE          at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      IEN            at 0 range 16 .. 16;
      DMAREN         at 0 range 17 .. 17;
      DMAWEN         at 0 range 18 .. 18;
      NRES           at 0 range 19 .. 19;
      NARGS          at 0 range 20 .. 20;
      RESSIZE        at 0 range 21 .. 21;
      ARGSIZE        at 0 range 22 .. 22;
      Reserved_23_30 at 0 range 23 .. 30;
      RRDY           at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CORDIC register block
   type CORDIC_Peripheral is record
      --  CORDIC control/status register
      CORDIC_CSR   : aliased CORDIC_CSR_Register;
      pragma Volatile_Full_Access (CORDIC_CSR);
      --  CORDIC argument register
      CORDIC_WDATA : aliased A0B.Types.SVD.UInt32;
      --  CORDIC result register
      CORDIC_RDATA : aliased A0B.Types.SVD.UInt32;
   end record
     with Volatile;

   for CORDIC_Peripheral use record
      CORDIC_CSR   at 16#0# range 0 .. 31;
      CORDIC_WDATA at 16#4# range 0 .. 31;
      CORDIC_RDATA at 16#8# range 0 .. 31;
   end record;

   --  CORDIC register block
   CORDIC_Periph : aliased CORDIC_Peripheral
     with Import, Address => CORDIC_Base;

end A0B.STM32H723.SVD.CORDIC;
