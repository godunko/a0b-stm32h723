pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32H723.svd

pragma Restrictions (No_Elaboration_Code);

with A0B.Types.SVD;
with System;

package A0B.STM32H723.SVD.FMAC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype FMAC_X1BUFCFG_X1_BASE_Field is A0B.Types.SVD.Byte;
   subtype FMAC_X1BUFCFG_X1_BUF_SIZE_Field is A0B.Types.SVD.Byte;

   --  Watermark for buffer full flag Defines the threshold for setting the X1
   --  buffer full flag when operating in circular mode. The flag is set if the
   --  number of free spaces in the buffer is less than 2FULL_WM. 2: Threshold
   --  = 4 3: Threshold = 8 Setting a threshold greater than 1 allows several
   --  data to be transferred into the buffer under one interrupt. Threshold
   --  should be set to 1 if DMA write requests are enabled (DMAWEN = 1 in
   --  FMAC_CR register).
   type FMAC_X1BUFCFG_FULL_WM_Field is
     (--  Threshold = 1
      B_0x0,
      --  Threshold = 2
      B_0x1)
     with Size => 2;
   for FMAC_X1BUFCFG_FULL_WM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  FMAC X1 buffer configuration register
   type FMAC_X1BUFCFG_Register is record
      --  Base address of X1 buffer
      X1_BASE        : FMAC_X1BUFCFG_X1_BASE_Field := 16#0#;
      --  Allocated size of X1 buffer in 16-bit words The minimum buffer size
      --  is the number of feed-forward taps in the filter (+ the watermark
      --  threshold - 1).
      X1_BUF_SIZE    : FMAC_X1BUFCFG_X1_BUF_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_16_23 : A0B.Types.SVD.Byte := 16#0#;
      --  Watermark for buffer full flag Defines the threshold for setting the
      --  X1 buffer full flag when operating in circular mode. The flag is set
      --  if the number of free spaces in the buffer is less than 2FULL_WM. 2:
      --  Threshold = 4 3: Threshold = 8 Setting a threshold greater than 1
      --  allows several data to be transferred into the buffer under one
      --  interrupt. Threshold should be set to 1 if DMA write requests are
      --  enabled (DMAWEN = 1 in FMAC_CR register).
      FULL_WM        : FMAC_X1BUFCFG_FULL_WM_Field :=
                        A0B.STM32H723.SVD.FMAC.B_0x0;
      --  unspecified
      Reserved_26_31 : A0B.Types.SVD.UInt6 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for FMAC_X1BUFCFG_Register use record
      X1_BASE        at 0 range 0 .. 7;
      X1_BUF_SIZE    at 0 range 8 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      FULL_WM        at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype FMAC_X2BUFCFG_X2_BASE_Field is A0B.Types.SVD.Byte;
   subtype FMAC_X2BUFCFG_X2_BUF_SIZE_Field is A0B.Types.SVD.Byte;

   --  FMAC X2 buffer configuration register
   type FMAC_X2BUFCFG_Register is record
      --  Base address of X2 buffer The X2 buffer base address can be modified
      --  while START=1, for example to change coefficient values. The filter
      --  should be stalled when doing this, since changing the coefficients
      --  while a calculation is ongoing affects the result.
      X2_BASE        : FMAC_X2BUFCFG_X2_BASE_Field := 16#0#;
      --  Size of X2 buffer in 16-bit words This bitfield can not be modified
      --  when a function is ongoing (START = 1).
      X2_BUF_SIZE    : FMAC_X2BUFCFG_X2_BUF_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for FMAC_X2BUFCFG_Register use record
      X2_BASE        at 0 range 0 .. 7;
      X2_BUF_SIZE    at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FMAC_YBUFCFG_Y_BASE_Field is A0B.Types.SVD.Byte;
   subtype FMAC_YBUFCFG_Y_BUF_SIZE_Field is A0B.Types.SVD.Byte;

   --  Watermark for buffer empty flag Defines the threshold for setting the Y
   --  buffer empty flag when operating in circular mode. The flag is set if
   --  the number of unread values in the buffer is less than 2EMPTY_WM. 2:
   --  Threshold = 4 3: Threshold = 8 Setting a threshold greater than 1 allows
   --  several data to be transferred from the buffer under one interrupt.
   --  Threshold should be set to 1 if DMA read requests are enabled (DMAREN =
   --  1 in FMAC_CR register).
   type FMAC_YBUFCFG_EMPTY_WM_Field is
     (--  Threshold = 1
      B_0x0,
      --  Threshold = 2
      B_0x1)
     with Size => 2;
   for FMAC_YBUFCFG_EMPTY_WM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  FMAC Y buffer configuration register
   type FMAC_YBUFCFG_Register is record
      --  Base address of Y buffer
      Y_BASE         : FMAC_YBUFCFG_Y_BASE_Field := 16#0#;
      --  Size of Y buffer in 16-bit words For FIR filters, the minimum buffer
      --  size is 1 (+ the watermark threshold). For IIR filters the minimum
      --  buffer size is the number of feedback taps (+ the watermark
      --  threshold).
      Y_BUF_SIZE     : FMAC_YBUFCFG_Y_BUF_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_16_23 : A0B.Types.SVD.Byte := 16#0#;
      --  Watermark for buffer empty flag Defines the threshold for setting the
      --  Y buffer empty flag when operating in circular mode. The flag is set
      --  if the number of unread values in the buffer is less than 2EMPTY_WM.
      --  2: Threshold = 4 3: Threshold = 8 Setting a threshold greater than 1
      --  allows several data to be transferred from the buffer under one
      --  interrupt. Threshold should be set to 1 if DMA read requests are
      --  enabled (DMAREN = 1 in FMAC_CR register).
      EMPTY_WM       : FMAC_YBUFCFG_EMPTY_WM_Field :=
                        A0B.STM32H723.SVD.FMAC.B_0x0;
      --  unspecified
      Reserved_26_31 : A0B.Types.SVD.UInt6 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for FMAC_YBUFCFG_Register use record
      Y_BASE         at 0 range 0 .. 7;
      Y_BUF_SIZE     at 0 range 8 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      EMPTY_WM       at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype FMAC_PARAM_P_Field is A0B.Types.SVD.Byte;
   subtype FMAC_PARAM_Q_Field is A0B.Types.SVD.Byte;
   subtype FMAC_PARAM_R_Field is A0B.Types.SVD.Byte;

   --  Function 2: Load X2 buffer 3: Load Y buffer 4 to 7: Reserved 8:
   --  Convolution (FIR filter) 9: IIR filter (direct form 1) This bitfield can
   --  not be modified when a function is ongoing (START = 1)
   type FMAC_PARAM_FUNC_Field is
     (--  Reset value for the field
      FMAC_PARAM_FUNC_Field_Reset,
      --  Load X1 buffer
      B_0x1)
     with Size => 7;
   for FMAC_PARAM_FUNC_Field use
     (FMAC_PARAM_FUNC_Field_Reset => 0,
      B_0x1 => 1);

   --  Enable execution Setting this bit triggers the execution of the function
   --  selected in the FUNC bitfield. Resetting it by software stops any
   --  ongoing function. For initialization functions, this bit is reset by
   --  hardware.
   type FMAC_PARAM_START_Field is
     (--  Stop execution
      B_0x0,
      --  Start execution
      B_0x1)
     with Size => 1;
   for FMAC_PARAM_START_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  FMAC parameter register
   type FMAC_PARAM_Register is record
      --  Input parameter P. The value of this parameter is dependent on the
      --  function This bitfield can not be modified when a function is ongoing
      --  (START = 1)
      P     : FMAC_PARAM_P_Field := 16#0#;
      --  Input parameter Q. The value of this parameter is dependent on the
      --  function. This bitfield can not be modified when a function is
      --  ongoing (START = 1)
      Q     : FMAC_PARAM_Q_Field := 16#0#;
      --  Input parameter R. The value of this parameter is dependent on the
      --  function. This bitfield can not be modified when a function is
      --  ongoing (START = 1)
      R     : FMAC_PARAM_R_Field := 16#0#;
      --  Function 2: Load X2 buffer 3: Load Y buffer 4 to 7: Reserved 8:
      --  Convolution (FIR filter) 9: IIR filter (direct form 1) This bitfield
      --  can not be modified when a function is ongoing (START = 1)
      FUNC  : FMAC_PARAM_FUNC_Field := FMAC_PARAM_FUNC_Field_Reset;
      --  Enable execution Setting this bit triggers the execution of the
      --  function selected in the FUNC bitfield. Resetting it by software
      --  stops any ongoing function. For initialization functions, this bit is
      --  reset by hardware.
      START : FMAC_PARAM_START_Field := A0B.STM32H723.SVD.FMAC.B_0x0;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for FMAC_PARAM_Register use record
      P     at 0 range 0 .. 7;
      Q     at 0 range 8 .. 15;
      R     at 0 range 16 .. 23;
      FUNC  at 0 range 24 .. 30;
      START at 0 range 31 .. 31;
   end record;

   --  Enable read interrupt This bit is set and cleared by software. A read
   --  returns the current state of the bit.
   type FMAC_CR_RIEN_Field is
     (--  Disabled. No read interrupt requests are generated.
      B_0x0,
      --  Enabled. An interrupt request is generated while the Y buffer EMPTY flag is
--  not set.
      B_0x1)
     with Size => 1;
   for FMAC_CR_RIEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Enable write interrupt This bit is set and cleared by software. A read
   --  returns the current state of the bit.
   type FMAC_CR_WIEN_Field is
     (--  Disabled. No write interrupt requests are generated.
      B_0x0,
      --  Enabled. An interrupt request is generated while the X1 buffer FULL flag is
--  not set.
      B_0x1)
     with Size => 1;
   for FMAC_CR_WIEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Enable overflow error interrupts This bit is set and cleared by
   --  software. A read returns the current state of the bit.
   type FMAC_CR_OVFLIEN_Field is
     (--  Disabled. No interrupts are generated upon overflow detection.
      B_0x0,
      --  Enabled. An interrupt request is generated if the OVFL flag is set
      B_0x1)
     with Size => 1;
   for FMAC_CR_OVFLIEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Enable underflow error interrupts This bit is set and cleared by
   --  software. A read returns the current state of the bit.
   type FMAC_CR_UNFLIEN_Field is
     (--  Disabled. No interrupts are generated upon underflow detection.
      B_0x0,
      --  Enabled. An interrupt request is generated if the UNFL flag is set
      B_0x1)
     with Size => 1;
   for FMAC_CR_UNFLIEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Enable saturation error interrupts This bit is set and cleared by
   --  software. A read returns the current state of the bit.
   type FMAC_CR_SATIEN_Field is
     (--  Disabled. No interrupts are generated upon saturation detection.
      B_0x0,
      --  Enabled. An interrupt request is generated if the SAT flag is set
      B_0x1)
     with Size => 1;
   for FMAC_CR_SATIEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Enable DMA read channel requests This bit can only be modified when
   --  START= 0 in the FMAC_PARAM register. A read returns the current state of
   --  the bit.
   type FMAC_CR_DMAREN_Field is
     (--  Disable. No DMA requests are generated
      B_0x0,
      --  Enable. DMA requests are generated while the Y buffer is not empty.
      B_0x1)
     with Size => 1;
   for FMAC_CR_DMAREN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Enable DMA write channel requests This bit can only be modified when
   --  START= 0 in the FMAC_PARAM register. A read returns the current state of
   --  the bit.
   type FMAC_CR_DMAWEN_Field is
     (--  Disable. No DMA requests are generated
      B_0x0,
      --  Enable. DMA requests are generated while the X1 buffer is not full.
      B_0x1)
     with Size => 1;
   for FMAC_CR_DMAWEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Enable clipping
   type FMAC_CR_CLIPEN_Field is
     (--  Clipping disabled. Values at the output of the accumulator which exceed the
--  q1.15 range, wrap.
      B_0x0,
      --  Clipping enabled. Values at the output of the accumulator which exceed the
--  q1.15 range are saturated to the maximum positive or negative value (+1 or
--  -1) according to the sign.
      B_0x1)
     with Size => 1;
   for FMAC_CR_CLIPEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Reset FMAC unit This resets the write and read pointers, the internal
   --  control logic, the FMAC_SR register and the FMAC_PARAM register,
   --  including the START bit if active. Other register settings are not
   --  affected. This bit is reset by hardware.
   type FMAC_CR_RESET_Field is
     (--  Reset inactive
      B_0x0,
      --  Reset active
      B_0x1)
     with Size => 1;
   for FMAC_CR_RESET_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  FMAC control register
   type FMAC_CR_Register is record
      --  Enable read interrupt This bit is set and cleared by software. A read
      --  returns the current state of the bit.
      RIEN           : FMAC_CR_RIEN_Field := A0B.STM32H723.SVD.FMAC.B_0x0;
      --  Enable write interrupt This bit is set and cleared by software. A
      --  read returns the current state of the bit.
      WIEN           : FMAC_CR_WIEN_Field := A0B.STM32H723.SVD.FMAC.B_0x0;
      --  Enable overflow error interrupts This bit is set and cleared by
      --  software. A read returns the current state of the bit.
      OVFLIEN        : FMAC_CR_OVFLIEN_Field := A0B.STM32H723.SVD.FMAC.B_0x0;
      --  Enable underflow error interrupts This bit is set and cleared by
      --  software. A read returns the current state of the bit.
      UNFLIEN        : FMAC_CR_UNFLIEN_Field := A0B.STM32H723.SVD.FMAC.B_0x0;
      --  Enable saturation error interrupts This bit is set and cleared by
      --  software. A read returns the current state of the bit.
      SATIEN         : FMAC_CR_SATIEN_Field := A0B.STM32H723.SVD.FMAC.B_0x0;
      --  unspecified
      Reserved_5_7   : A0B.Types.SVD.UInt3 := 16#0#;
      --  Enable DMA read channel requests This bit can only be modified when
      --  START= 0 in the FMAC_PARAM register. A read returns the current state
      --  of the bit.
      DMAREN         : FMAC_CR_DMAREN_Field := A0B.STM32H723.SVD.FMAC.B_0x0;
      --  Enable DMA write channel requests This bit can only be modified when
      --  START= 0 in the FMAC_PARAM register. A read returns the current state
      --  of the bit.
      DMAWEN         : FMAC_CR_DMAWEN_Field := A0B.STM32H723.SVD.FMAC.B_0x0;
      --  unspecified
      Reserved_10_14 : A0B.Types.SVD.UInt5 := 16#0#;
      --  Enable clipping
      CLIPEN         : FMAC_CR_CLIPEN_Field := A0B.STM32H723.SVD.FMAC.B_0x0;
      --  Reset FMAC unit This resets the write and read pointers, the internal
      --  control logic, the FMAC_SR register and the FMAC_PARAM register,
      --  including the START bit if active. Other register settings are not
      --  affected. This bit is reset by hardware.
      RESET          : FMAC_CR_RESET_Field := A0B.STM32H723.SVD.FMAC.B_0x0;
      --  unspecified
      Reserved_17_31 : A0B.Types.SVD.UInt15 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for FMAC_CR_Register use record
      RIEN           at 0 range 0 .. 0;
      WIEN           at 0 range 1 .. 1;
      OVFLIEN        at 0 range 2 .. 2;
      UNFLIEN        at 0 range 3 .. 3;
      SATIEN         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DMAREN         at 0 range 8 .. 8;
      DMAWEN         at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      CLIPEN         at 0 range 15 .. 15;
      RESET          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Y buffer empty flag The buffer is flagged as empty if the number of
   --  unread data is less than the EMPTY_WM threshold. The number of unread
   --  data is the difference between the read pointer and the current output
   --  destination address. This flag is set and cleared by hardware, or by a
   --  reset. Note: after the last sample is read from the Y buffer there is a
   --  delay of 3 clock cycles before the YEMPTY flag goes high. To avoid any
   --  risk of underflow it is recommended to insert a software delay after
   --  reading from the Y buffer before reading the FMAC_SR. Alternatively, an
   --  EMPTY_WM threshold of 2 can be used.
   type FMAC_SR_YEMPTY_Field is
     (--  Y buffer not empty. If the RIEN bit is set, the interrupt request is
--  asserted until the flag is set. If DMAREN is set, DMA read channel requests
--  are generated until the flag is set.
      B_0x0,
      --  Y buffer empty.
      B_0x1)
     with Size => 1;
   for FMAC_SR_YEMPTY_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  X1 buffer full flag The buffer is flagged as full if the number of
   --  available spaces is less than the FULL_WM threshold. The number of
   --  available spaces is the difference between the write pointer and the
   --  least recent sample currently in use. This flag is set and cleared by
   --  hardware, or by a reset. Note: after the last available space in the X1
   --  buffer is filled there is a delay of 3 clock cycles before the X1FULL
   --  flag goes high. To avoid any risk of overflow it is recommended to
   --  insert a software delay after writing to the X1 buffer before reading
   --  the FMAC_SR. Alternatively, a FULL_WM threshold of 2 can be used.
   type FMAC_SR_X1FULL_Field is
     (--  X1 buffer not full. If the WIEN bit is set, the interrupt request is
--  asserted until the flag is set. If DMAWEN is set, DMA write channel
--  requests are generated until the flag is set.
      B_0x0,
      --  X1 buffer full.
      B_0x1)
     with Size => 1;
   for FMAC_SR_X1FULL_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Overflow error flag An overflow occurs when a write is made to
   --  FMAC_WDATA when no free space is available in the X1 buffer. This flag
   --  is cleared by a reset of the unit.
   type FMAC_SR_OVFL_Field is
     (--  No overflow detected
      B_0x0,
      --  Overflow detected. If the OVFLIEN bit is set, an interrupt is generated.
      B_0x1)
     with Size => 1;
   for FMAC_SR_OVFL_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Underflow error flag An underflow occurs when a read is made from
   --  FMAC_RDATA when no valid data is available in the Y buffer. This flag is
   --  cleared by a reset of the unit.
   type FMAC_SR_UNFL_Field is
     (--  No underflow detected
      B_0x0,
      --  Underflow detected. If the UNFLIEN bit is set, an interrupt is generated.
      B_0x1)
     with Size => 1;
   for FMAC_SR_UNFL_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Saturation error flag Saturation occurs when the result of an
   --  accumulation exceeds the numeric range of the accumulator. This flag is
   --  cleared by a reset of the unit.
   type FMAC_SR_SAT_Field is
     (--  No saturation detected
      B_0x0,
      --  Saturation detected. If the SATIEN bit is set, an interrupt is generated.
      B_0x1)
     with Size => 1;
   for FMAC_SR_SAT_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  FMAC status register
   type FMAC_SR_Register is record
      --  Read-only. Y buffer empty flag The buffer is flagged as empty if the
      --  number of unread data is less than the EMPTY_WM threshold. The number
      --  of unread data is the difference between the read pointer and the
      --  current output destination address. This flag is set and cleared by
      --  hardware, or by a reset. Note: after the last sample is read from the
      --  Y buffer there is a delay of 3 clock cycles before the YEMPTY flag
      --  goes high. To avoid any risk of underflow it is recommended to insert
      --  a software delay after reading from the Y buffer before reading the
      --  FMAC_SR. Alternatively, an EMPTY_WM threshold of 2 can be used.
      YEMPTY         : FMAC_SR_YEMPTY_Field;
      --  Read-only. X1 buffer full flag The buffer is flagged as full if the
      --  number of available spaces is less than the FULL_WM threshold. The
      --  number of available spaces is the difference between the write
      --  pointer and the least recent sample currently in use. This flag is
      --  set and cleared by hardware, or by a reset. Note: after the last
      --  available space in the X1 buffer is filled there is a delay of 3
      --  clock cycles before the X1FULL flag goes high. To avoid any risk of
      --  overflow it is recommended to insert a software delay after writing
      --  to the X1 buffer before reading the FMAC_SR. Alternatively, a FULL_WM
      --  threshold of 2 can be used.
      X1FULL         : FMAC_SR_X1FULL_Field;
      --  unspecified
      Reserved_2_7   : A0B.Types.SVD.UInt6;
      --  Read-only. Overflow error flag An overflow occurs when a write is
      --  made to FMAC_WDATA when no free space is available in the X1 buffer.
      --  This flag is cleared by a reset of the unit.
      OVFL           : FMAC_SR_OVFL_Field;
      --  Read-only. Underflow error flag An underflow occurs when a read is
      --  made from FMAC_RDATA when no valid data is available in the Y buffer.
      --  This flag is cleared by a reset of the unit.
      UNFL           : FMAC_SR_UNFL_Field;
      --  Read-only. Saturation error flag Saturation occurs when the result of
      --  an accumulation exceeds the numeric range of the accumulator. This
      --  flag is cleared by a reset of the unit.
      SAT            : FMAC_SR_SAT_Field;
      --  unspecified
      Reserved_11_31 : A0B.Types.SVD.UInt21;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for FMAC_SR_Register use record
      YEMPTY         at 0 range 0 .. 0;
      X1FULL         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      OVFL           at 0 range 8 .. 8;
      UNFL           at 0 range 9 .. 9;
      SAT            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype FMAC_WDATA_WDATA_Field is A0B.Types.SVD.UInt16;

   --  FMAC write data register
   type FMAC_WDATA_Register is record
      --  Write-only. Write data When a write access to this register occurs,
      --  the write data are transferred to the address offset indicated by the
      --  write pointer. The pointer address is automatically incremented after
      --  each write access.
      WDATA          : FMAC_WDATA_WDATA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for FMAC_WDATA_Register use record
      WDATA          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FMAC_RDATA_RDATA_Field is A0B.Types.SVD.UInt16;

   --  FMAC read data register
   type FMAC_RDATA_Register is record
      --  Read-only. Read data When a read access to this register occurs, the
      --  read data are the contents of the Y output buffer at the address
      --  offset indicated by the READ pointer. The pointer address is
      --  automatically incremented after each read access.
      RDATA          : FMAC_RDATA_RDATA_Field;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for FMAC_RDATA_Register use record
      RDATA          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  FMAC register block
   type FMAC_Peripheral is record
      --  FMAC X1 buffer configuration register
      FMAC_X1BUFCFG : aliased FMAC_X1BUFCFG_Register;
      pragma Volatile_Full_Access (FMAC_X1BUFCFG);
      --  FMAC X2 buffer configuration register
      FMAC_X2BUFCFG : aliased FMAC_X2BUFCFG_Register;
      pragma Volatile_Full_Access (FMAC_X2BUFCFG);
      --  FMAC Y buffer configuration register
      FMAC_YBUFCFG  : aliased FMAC_YBUFCFG_Register;
      pragma Volatile_Full_Access (FMAC_YBUFCFG);
      --  FMAC parameter register
      FMAC_PARAM    : aliased FMAC_PARAM_Register;
      pragma Volatile_Full_Access (FMAC_PARAM);
      --  FMAC control register
      FMAC_CR       : aliased FMAC_CR_Register;
      pragma Volatile_Full_Access (FMAC_CR);
      --  FMAC status register
      FMAC_SR       : aliased FMAC_SR_Register;
      pragma Volatile_Full_Access (FMAC_SR);
      --  FMAC write data register
      FMAC_WDATA    : aliased FMAC_WDATA_Register;
      pragma Volatile_Full_Access (FMAC_WDATA);
      --  FMAC read data register
      FMAC_RDATA    : aliased FMAC_RDATA_Register;
      pragma Volatile_Full_Access (FMAC_RDATA);
   end record
     with Volatile;

   for FMAC_Peripheral use record
      FMAC_X1BUFCFG at 16#0# range 0 .. 31;
      FMAC_X2BUFCFG at 16#4# range 0 .. 31;
      FMAC_YBUFCFG  at 16#8# range 0 .. 31;
      FMAC_PARAM    at 16#C# range 0 .. 31;
      FMAC_CR       at 16#10# range 0 .. 31;
      FMAC_SR       at 16#14# range 0 .. 31;
      FMAC_WDATA    at 16#18# range 0 .. 31;
      FMAC_RDATA    at 16#1C# range 0 .. 31;
   end record;

   --  FMAC register block
   FMAC_Periph : aliased FMAC_Peripheral
     with Import, Address => FMAC_Base;

end A0B.STM32H723.SVD.FMAC;
