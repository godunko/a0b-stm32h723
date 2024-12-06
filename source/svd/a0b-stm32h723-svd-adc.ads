pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32H723.svd


with A0B.Types.SVD;
with System;

package A0B.STM32H723.SVD.ADC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  ADC ready This bit is set by hardware after the ADC has been enabled
   --  (bit ADEN=1) and when the ADC reaches a state where it is ready to
   --  accept conversion requests. It is cleared by software writing 1 to it.
   type ADC_ISR_ADRDY_Field is
     (--  ADC not yet ready to start conversion (or the flag event was already
--  acknowledged and cleared by software)
      B_0x0,
      --  ADC is ready to start conversion
      B_0x1)
     with Size => 1;
   for ADC_ISR_ADRDY_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  End of sampling flag This bit is set by hardware during the conversion
   --  of any channel (only for regular channels), at the end of the sampling
   --  phase.
   type ADC_ISR_EOSMP_Field is
     (--  not at the end of the sampling phase (or the flag event was already
--  acknowledged and cleared by software)
      B_0x0,
      --  End of sampling phase reached
      B_0x1)
     with Size => 1;
   for ADC_ISR_EOSMP_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  End of conversion flag This bit is set by hardware at the end of each
   --  regular conversion of a channel when a new data is available in the
   --  ADC_DR register. It is cleared by software writing 1 to it or by reading
   --  the ADC_DR register
   type ADC_ISR_EOC_Field is
     (--  Regular channel conversion not complete (or the flag event was already
--  acknowledged and cleared by software)
      B_0x0,
      --  Regular channel conversion complete
      B_0x1)
     with Size => 1;
   for ADC_ISR_EOC_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  End of regular sequence flag This bit is set by hardware at the end of
   --  the conversions of a regular sequence of channels. It is cleared by
   --  software writing 1 to it.
   type ADC_ISR_EOS_Field is
     (--  Regular Conversions sequence not complete (or the flag event was already
--  acknowledged and cleared by software)
      B_0x0,
      --  Regular Conversions sequence complete
      B_0x1)
     with Size => 1;
   for ADC_ISR_EOS_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  ADC overrun This bit is set by hardware when an overrun occurs on a
   --  regular channel, meaning that a new conversion has completed while the
   --  EOC flag was already set. It is cleared by software writing 1 to it.
   type ADC_ISR_OVR_Field is
     (--  No overrun occurred (or the flag event was already acknowledged and cleared
--  by software)
      B_0x0,
      --  Overrun has occurred
      B_0x1)
     with Size => 1;
   for ADC_ISR_OVR_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Injected channel end of conversion flag This bit is set by hardware at
   --  the end of each injected conversion of a channel when a new data is
   --  available in the corresponding ADC_JDRy register. It is cleared by
   --  software writing 1 to it or by reading the corresponding ADC_JDRy
   --  register
   type ADC_ISR_JEOC_Field is
     (--  Injected channel conversion not complete (or the flag event was already
--  acknowledged and cleared by software)
      B_0x0,
      --  Injected channel conversion complete
      B_0x1)
     with Size => 1;
   for ADC_ISR_JEOC_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Injected channel end of sequence flag This bit is set by hardware at the
   --  end of the conversions of all injected channels in the group. It is
   --  cleared by software writing 1 to it.
   type ADC_ISR_JEOS_Field is
     (--  Injected conversion sequence not complete (or the flag event was already
--  acknowledged and cleared by software)
      B_0x0,
      --  Injected conversions complete
      B_0x1)
     with Size => 1;
   for ADC_ISR_JEOS_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Analog watchdog 1 flag This bit is set by hardware when the converted
   --  voltage crosses the values programmed in the fields LT1[11:0] and
   --  HT1[11:0] of ADC_TR1 register. It is cleared by software. writing 1 to
   --  it.
   type ADC_ISR_AWD1_Field is
     (--  No analog watchdog 1 event occurred (or the flag event was already
--  acknowledged and cleared by software)
      B_0x0,
      --  Analog watchdog 1 event occurred
      B_0x1)
     with Size => 1;
   for ADC_ISR_AWD1_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Analog watchdog 2 flag This bit is set by hardware when the converted
   --  voltage crosses the values programmed in the fields LT2[7:0] and
   --  HT2[7:0] of ADC_TR2 register. It is cleared by software writing 1 to it.
   type ADC_ISR_AWD2_Field is
     (--  No analog watchdog 2 event occurred (or the flag event was already
--  acknowledged and cleared by software)
      B_0x0,
      --  Analog watchdog 2 event occurred
      B_0x1)
     with Size => 1;
   for ADC_ISR_AWD2_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Analog watchdog 3 flag This bit is set by hardware when the converted
   --  voltage crosses the values programmed in the fields LT3[7:0] and
   --  HT3[7:0] of ADC_TR3 register. It is cleared by software writing 1 to it.
   type ADC_ISR_AWD3_Field is
     (--  No analog watchdog 3 event occurred (or the flag event was already
--  acknowledged and cleared by software)
      B_0x0,
      --  Analog watchdog 3 event occurred
      B_0x1)
     with Size => 1;
   for ADC_ISR_AWD3_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Injected context queue overflow This bit is set by hardware when an
   --  Overflow of the Injected Queue of Context occurs. It is cleared by
   --  software writing 1 to it. Refer to for more information.
   type ADC_ISR_JQOVF_Field is
     (--  No injected context queue overflow occurred (or the flag event was already
--  acknowledged and cleared by software)
      B_0x0,
      --  Injected context queue overflow has occurred
      B_0x1)
     with Size => 1;
   for ADC_ISR_JQOVF_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  ADC LDO output voltage ready bit This bit is set and cleared by
   --  hardware. It indicates that the ADC internal LDO output is ready and
   --  that the ADC can be enabled or calibrated. Note: Refer to for the
   --  availability of the LDO regulator.
   type ADC_ISR_LDORDY_Field is
     (--  ADC LDO voltage regulator disabled
      B_0x0,
      --  ADC LDO voltage regulator enabled
      B_0x1)
     with Size => 1;
   for ADC_ISR_LDORDY_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  ADC interrupt and status register
   type ADC_ISR_Register is record
      --  ADC ready This bit is set by hardware after the ADC has been enabled
      --  (bit ADEN=1) and when the ADC reaches a state where it is ready to
      --  accept conversion requests. It is cleared by software writing 1 to
      --  it.
      ADRDY          : ADC_ISR_ADRDY_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  End of sampling flag This bit is set by hardware during the
      --  conversion of any channel (only for regular channels), at the end of
      --  the sampling phase.
      EOSMP          : ADC_ISR_EOSMP_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  End of conversion flag This bit is set by hardware at the end of each
      --  regular conversion of a channel when a new data is available in the
      --  ADC_DR register. It is cleared by software writing 1 to it or by
      --  reading the ADC_DR register
      EOC            : ADC_ISR_EOC_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  End of regular sequence flag This bit is set by hardware at the end
      --  of the conversions of a regular sequence of channels. It is cleared
      --  by software writing 1 to it.
      EOS            : ADC_ISR_EOS_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  ADC overrun This bit is set by hardware when an overrun occurs on a
      --  regular channel, meaning that a new conversion has completed while
      --  the EOC flag was already set. It is cleared by software writing 1 to
      --  it.
      OVR            : ADC_ISR_OVR_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Injected channel end of conversion flag This bit is set by hardware
      --  at the end of each injected conversion of a channel when a new data
      --  is available in the corresponding ADC_JDRy register. It is cleared by
      --  software writing 1 to it or by reading the corresponding ADC_JDRy
      --  register
      JEOC           : ADC_ISR_JEOC_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Injected channel end of sequence flag This bit is set by hardware at
      --  the end of the conversions of all injected channels in the group. It
      --  is cleared by software writing 1 to it.
      JEOS           : ADC_ISR_JEOS_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Analog watchdog 1 flag This bit is set by hardware when the converted
      --  voltage crosses the values programmed in the fields LT1[11:0] and
      --  HT1[11:0] of ADC_TR1 register. It is cleared by software. writing 1
      --  to it.
      AWD1           : ADC_ISR_AWD1_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Analog watchdog 2 flag This bit is set by hardware when the converted
      --  voltage crosses the values programmed in the fields LT2[7:0] and
      --  HT2[7:0] of ADC_TR2 register. It is cleared by software writing 1 to
      --  it.
      AWD2           : ADC_ISR_AWD2_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Analog watchdog 3 flag This bit is set by hardware when the converted
      --  voltage crosses the values programmed in the fields LT3[7:0] and
      --  HT3[7:0] of ADC_TR3 register. It is cleared by software writing 1 to
      --  it.
      AWD3           : ADC_ISR_AWD3_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Injected context queue overflow This bit is set by hardware when an
      --  Overflow of the Injected Queue of Context occurs. It is cleared by
      --  software writing 1 to it. Refer to for more information.
      JQOVF          : ADC_ISR_JQOVF_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  unspecified
      Reserved_11_11 : A0B.Types.SVD.Bit := 16#0#;
      --  Read-only. ADC LDO output voltage ready bit This bit is set and
      --  cleared by hardware. It indicates that the ADC internal LDO output is
      --  ready and that the ADC can be enabled or calibrated. Note: Refer to
      --  for the availability of the LDO regulator.
      LDORDY         : ADC_ISR_LDORDY_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  unspecified
      Reserved_13_31 : A0B.Types.SVD.UInt19 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_ISR_Register use record
      ADRDY          at 0 range 0 .. 0;
      EOSMP          at 0 range 1 .. 1;
      EOC            at 0 range 2 .. 2;
      EOS            at 0 range 3 .. 3;
      OVR            at 0 range 4 .. 4;
      JEOC           at 0 range 5 .. 5;
      JEOS           at 0 range 6 .. 6;
      AWD1           at 0 range 7 .. 7;
      AWD2           at 0 range 8 .. 8;
      AWD3           at 0 range 9 .. 9;
      JQOVF          at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      LDORDY         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  ADC ready interrupt enable This bit is set and cleared by software to
   --  enable/disable the ADC Ready interrupt. Note: The software is allowed to
   --  write this bit only when ADSTART=0 and JADSTART=0 (which ensures that no
   --  conversion is ongoing).
   type ADC_IER_ADRDYIE_Field is
     (--  ADRDY interrupt disabled
      B_0x0,
      --  ADRDY interrupt enabled. An interrupt is generated when the ADRDY bit is
--  set.
      B_0x1)
     with Size => 1;
   for ADC_IER_ADRDYIE_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  End of sampling flag interrupt enable for regular conversions This bit
   --  is set and cleared by software to enable/disable the end of the sampling
   --  phase interrupt for regular conversions. Note: The software is allowed
   --  to write this bit only when ADSTART=0 (which ensures that no regular
   --  conversion is ongoing).
   type ADC_IER_EOSMPIE_Field is
     (--  EOSMP interrupt disabled.
      B_0x0,
      --  EOSMP interrupt enabled. An interrupt is generated when the EOSMP bit is
--  set.
      B_0x1)
     with Size => 1;
   for ADC_IER_EOSMPIE_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  End of regular conversion interrupt enable This bit is set and cleared
   --  by software to enable/disable the end of a regular conversion interrupt.
   --  Note: The software is allowed to write this bit only when ADSTART=0
   --  (which ensures that no regular conversion is ongoing).
   type ADC_IER_EOCIE_Field is
     (--  EOC interrupt disabled.
      B_0x0,
      --  EOC interrupt enabled. An interrupt is generated when the EOC bit is set.
      B_0x1)
     with Size => 1;
   for ADC_IER_EOCIE_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  End of regular sequence of conversions interrupt enable This bit is set
   --  and cleared by software to enable/disable the end of regular sequence of
   --  conversions interrupt. Note: The software is allowed to write this bit
   --  only when ADSTART=0 (which ensures that no regular conversion is
   --  ongoing).
   type ADC_IER_EOSIE_Field is
     (--  EOS interrupt disabled
      B_0x0,
      --  EOS interrupt enabled. An interrupt is generated when the EOS bit is set.
      B_0x1)
     with Size => 1;
   for ADC_IER_EOSIE_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Overrun interrupt enable This bit is set and cleared by software to
   --  enable/disable the Overrun interrupt of a regular conversion. Note: The
   --  software is allowed to write this bit only when ADSTART=0 (which ensures
   --  that no regular conversion is ongoing).
   type ADC_IER_OVRIE_Field is
     (--  Overrun interrupt disabled
      B_0x0,
      --  Overrun interrupt enabled. An interrupt is generated when the OVR bit is
--  set.
      B_0x1)
     with Size => 1;
   for ADC_IER_OVRIE_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  End of injected conversion interrupt enable This bit is set and cleared
   --  by software to enable/disable the end of an injected conversion
   --  interrupt. Note: The software is allowed to write this bit only when
   --  JADSTART is cleared to 0 (no injected conversion is ongoing).
   type ADC_IER_JEOCIE_Field is
     (--  JEOC interrupt disabled.
      B_0x0,
      --  JEOC interrupt enabled. An interrupt is generated when the JEOC bit is set.
      B_0x1)
     with Size => 1;
   for ADC_IER_JEOCIE_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  End of injected sequence of conversions interrupt enable This bit is set
   --  and cleared by software to enable/disable the end of injected sequence
   --  of conversions interrupt. Note: The software is allowed to write this
   --  bit only when JADSTART=0 (which ensures that no injected conversion is
   --  ongoing).
   type ADC_IER_JEOSIE_Field is
     (--  JEOS interrupt disabled
      B_0x0,
      --  JEOS interrupt enabled. An interrupt is generated when the JEOS bit is set.
      B_0x1)
     with Size => 1;
   for ADC_IER_JEOSIE_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Analog watchdog 1 interrupt enable This bit is set and cleared by
   --  software to enable/disable the analog watchdog 1 interrupt. Note: The
   --  software is allowed to write this bit only when ADSTART=0 and JADSTART=0
   --  (which ensures that no conversion is ongoing).
   type ADC_IER_AWD1IE_Field is
     (--  Analog watchdog 1 interrupt disabled
      B_0x0,
      --  Analog watchdog 1 interrupt enabled
      B_0x1)
     with Size => 1;
   for ADC_IER_AWD1IE_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Analog watchdog 2 interrupt enable This bit is set and cleared by
   --  software to enable/disable the analog watchdog 2 interrupt. Note: The
   --  software is allowed to write this bit only when ADSTART=0 and JADSTART=0
   --  (which ensures that no conversion is ongoing).
   type ADC_IER_AWD2IE_Field is
     (--  Analog watchdog 2 interrupt disabled
      B_0x0,
      --  Analog watchdog 2 interrupt enabled
      B_0x1)
     with Size => 1;
   for ADC_IER_AWD2IE_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Analog watchdog 3 interrupt enable This bit is set and cleared by
   --  software to enable/disable the analog watchdog 2 interrupt. Note: The
   --  software is allowed to write this bit only when ADSTART=0 and JADSTART=0
   --  (which ensures that no conversion is ongoing).
   type ADC_IER_AWD3IE_Field is
     (--  Analog watchdog 3 interrupt disabled
      B_0x0,
      --  Analog watchdog 3 interrupt enabled
      B_0x1)
     with Size => 1;
   for ADC_IER_AWD3IE_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Injected context queue overflow interrupt enable This bit is set and
   --  cleared by software to enable/disable the Injected Context Queue
   --  Overflow interrupt. Note: The software is allowed to write this bit only
   --  when JADSTART=0 (which ensures that no injected conversion is ongoing).
   type ADC_IER_JQOVFIE_Field is
     (--  Injected Context Queue Overflow interrupt disabled
      B_0x0,
      --  Injected Context Queue Overflow interrupt enabled. An interrupt is
--  generated when the JQOVF bit is set.
      B_0x1)
     with Size => 1;
   for ADC_IER_JQOVFIE_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  ADC interrupt enable register
   type ADC_IER_Register is record
      --  ADC ready interrupt enable This bit is set and cleared by software to
      --  enable/disable the ADC Ready interrupt. Note: The software is allowed
      --  to write this bit only when ADSTART=0 and JADSTART=0 (which ensures
      --  that no conversion is ongoing).
      ADRDYIE        : ADC_IER_ADRDYIE_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  End of sampling flag interrupt enable for regular conversions This
      --  bit is set and cleared by software to enable/disable the end of the
      --  sampling phase interrupt for regular conversions. Note: The software
      --  is allowed to write this bit only when ADSTART=0 (which ensures that
      --  no regular conversion is ongoing).
      EOSMPIE        : ADC_IER_EOSMPIE_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  End of regular conversion interrupt enable This bit is set and
      --  cleared by software to enable/disable the end of a regular conversion
      --  interrupt. Note: The software is allowed to write this bit only when
      --  ADSTART=0 (which ensures that no regular conversion is ongoing).
      EOCIE          : ADC_IER_EOCIE_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  End of regular sequence of conversions interrupt enable This bit is
      --  set and cleared by software to enable/disable the end of regular
      --  sequence of conversions interrupt. Note: The software is allowed to
      --  write this bit only when ADSTART=0 (which ensures that no regular
      --  conversion is ongoing).
      EOSIE          : ADC_IER_EOSIE_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Overrun interrupt enable This bit is set and cleared by software to
      --  enable/disable the Overrun interrupt of a regular conversion. Note:
      --  The software is allowed to write this bit only when ADSTART=0 (which
      --  ensures that no regular conversion is ongoing).
      OVRIE          : ADC_IER_OVRIE_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  End of injected conversion interrupt enable This bit is set and
      --  cleared by software to enable/disable the end of an injected
      --  conversion interrupt. Note: The software is allowed to write this bit
      --  only when JADSTART is cleared to 0 (no injected conversion is
      --  ongoing).
      JEOCIE         : ADC_IER_JEOCIE_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  End of injected sequence of conversions interrupt enable This bit is
      --  set and cleared by software to enable/disable the end of injected
      --  sequence of conversions interrupt. Note: The software is allowed to
      --  write this bit only when JADSTART=0 (which ensures that no injected
      --  conversion is ongoing).
      JEOSIE         : ADC_IER_JEOSIE_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Analog watchdog 1 interrupt enable This bit is set and cleared by
      --  software to enable/disable the analog watchdog 1 interrupt. Note: The
      --  software is allowed to write this bit only when ADSTART=0 and
      --  JADSTART=0 (which ensures that no conversion is ongoing).
      AWD1IE         : ADC_IER_AWD1IE_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Analog watchdog 2 interrupt enable This bit is set and cleared by
      --  software to enable/disable the analog watchdog 2 interrupt. Note: The
      --  software is allowed to write this bit only when ADSTART=0 and
      --  JADSTART=0 (which ensures that no conversion is ongoing).
      AWD2IE         : ADC_IER_AWD2IE_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Analog watchdog 3 interrupt enable This bit is set and cleared by
      --  software to enable/disable the analog watchdog 2 interrupt. Note: The
      --  software is allowed to write this bit only when ADSTART=0 and
      --  JADSTART=0 (which ensures that no conversion is ongoing).
      AWD3IE         : ADC_IER_AWD3IE_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Injected context queue overflow interrupt enable This bit is set and
      --  cleared by software to enable/disable the Injected Context Queue
      --  Overflow interrupt. Note: The software is allowed to write this bit
      --  only when JADSTART=0 (which ensures that no injected conversion is
      --  ongoing).
      JQOVFIE        : ADC_IER_JQOVFIE_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  unspecified
      Reserved_11_31 : A0B.Types.SVD.UInt21 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_IER_Register use record
      ADRDYIE        at 0 range 0 .. 0;
      EOSMPIE        at 0 range 1 .. 1;
      EOCIE          at 0 range 2 .. 2;
      EOSIE          at 0 range 3 .. 3;
      OVRIE          at 0 range 4 .. 4;
      JEOCIE         at 0 range 5 .. 5;
      JEOSIE         at 0 range 6 .. 6;
      AWD1IE         at 0 range 7 .. 7;
      AWD2IE         at 0 range 8 .. 8;
      AWD3IE         at 0 range 9 .. 9;
      JQOVFIE        at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  ADC enable control This bit is set by software to enable the ADC. The
   --  ADC will be effectively ready to operate once the flag ADRDY has been
   --  set. It is cleared by hardware when the ADC is disabled, after the
   --  execution of the ADDIS command. Note: The software is allowed to set
   --  ADEN only when all bits of ADC_CR registers are 0 (ADCAL=0, JADSTART=0,
   --  ADSTART=0, ADSTP=0, ADDIS=0 and ADEN=0) except for bit ADVREGEN which
   --  must be 1 (and the software must have wait for the startup time of the
   --  voltage regulator)
   type ADC_CR_ADEN_Field is
     (--  ADC is disabled (OFF state)
      B_0x0,
      --  Write 1 to enable the ADC.
      B_0x1)
     with Size => 1;
   for ADC_CR_ADEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  ADC disable command This bit is set by software to disable the ADC
   --  (ADDIS command) and put it into power-down state (OFF state). It is
   --  cleared by hardware once the ADC is effectively disabled (ADEN is also
   --  cleared by hardware at this time). Note: The software is allowed to set
   --  ADDIS only when ADEN=1 and both ADSTART=0 and JADSTART=0 (which ensures
   --  that no conversion is ongoing)
   type ADC_CR_ADDIS_Field is
     (--  no ADDIS command ongoing
      B_0x0,
      --  Write 1 to disable the ADC. Read 1 means that an ADDIS command is in
--  progress.
      B_0x1)
     with Size => 1;
   for ADC_CR_ADDIS_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  ADC start of regular conversion This bit is set by software to start ADC
   --  conversion of regular channels. Depending on the configuration bits
   --  EXTEN, a conversion will start immediately (software trigger
   --  configuration) or once a regular hardware trigger event occurs (hardware
   --  trigger configuration). It is cleared by hardware: in single conversion
   --  mode (CONT=0, DISCEN=0) when software trigger is selected (EXTEN=0x0):
   --  at the assertion of the End of Regular Conversion Sequence (EOS) flag.
   --  In discontinuous conversion mode (CONT=0, DISCEN=1), when the software
   --  trigger is selected (EXTEN=0x0): at the end of conversion (EOC) flag. in
   --  all other cases: after the execution of the ADSTP command, at the same
   --  time that ADSTP is cleared by hardware. Note: The software is allowed to
   --  set ADSTART only when ADEN=1 and ADDIS=0 (ADC is enabled and there is no
   --  pending request to disable the ADC) In auto-injection mode (JAUTO=1),
   --  regular and auto-injected conversions are started by setting bit ADSTART
   --  (JADSTART must be kept cleared)
   type ADC_CR_ADSTART_Field is
     (--  No ADC regular conversion is ongoing.
      B_0x0,
      --  Write 1 to start regular conversions. Read 1 means that the ADC is
--  operating and eventually converting a regular channel.
      B_0x1)
     with Size => 1;
   for ADC_CR_ADSTART_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  ADC start of injected conversion This bit is set by software to start
   --  ADC conversion of injected channels. Depending on the configuration bits
   --  JEXTEN, a conversion will start immediately (software trigger
   --  configuration) or once an injected hardware trigger event occurs
   --  (hardware trigger configuration). It is cleared by hardware: in single
   --  conversion mode when software trigger is selected (JEXTSEL=0x0): at the
   --  assertion of the End of Injected Conversion Sequence (JEOS) flag. in all
   --  cases: after the execution of the JADSTP command, at the same time that
   --  JADSTP is cleared by hardware. Note: The software is allowed to set
   --  JADSTART only when ADEN=1 and ADDIS=0 (ADC is enabled and there is no
   --  pending request to disable the ADC). In auto-injection mode (JAUTO=1),
   --  regular and auto-injected conversions are started by setting bit ADSTART
   --  (JADSTART must be kept cleared)
   type ADC_CR_JADSTART_Field is
     (--  No ADC injected conversion is ongoing.
      B_0x0,
      --  Write 1 to start injected conversions. Read 1 means that the ADC is
--  operating and eventually converting an injected channel.
      B_0x1)
     with Size => 1;
   for ADC_CR_JADSTART_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  ADC stop of regular conversion command This bit is set by software to
   --  stop and discard an ongoing regular conversion (ADSTP Command). It is
   --  cleared by hardware when the conversion is effectively discarded and the
   --  ADC regular sequence and triggers can be re-configured. The ADC is then
   --  ready to accept a new start of regular conversions (ADSTART command).
   --  Note: The software is allowed to set ADSTP only when ADSTART=1 and
   --  ADDIS=0 (ADC is enabled and eventually converting a regular conversion
   --  and there is no pending request to disable the ADC). In auto-injection
   --  mode (JAUTO=1), setting ADSTP bit aborts both regular and injected
   --  conversions (do not use JADSTP). In dual ADC regular simultaneous mode
   --  and interleaved mode, the bit ADSTP of the master ADC must be used to
   --  stop regular conversions. The other ADSTP bit is inactive.
   type ADC_CR_ADSTP_Field is
     (--  No ADC stop regular conversion command ongoing
      B_0x0,
      --  Write 1 to stop regular conversions ongoing. Read 1 means that an ADSTP
--  command is in progress.
      B_0x1)
     with Size => 1;
   for ADC_CR_ADSTP_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  ADC stop of injected conversion command This bit is set by software to
   --  stop and discard an ongoing injected conversion (JADSTP Command). It is
   --  cleared by hardware when the conversion is effectively discarded and the
   --  ADC injected sequence and triggers can be re-configured. The ADC is then
   --  ready to accept a new start of injected conversions (JADSTART command).
   --  Note: The software is allowed to set JADSTP only when JADSTART=1 and
   --  ADDIS=0 (ADC is enabled and eventually converting an injected conversion
   --  and there is no pending request to disable the ADC). In auto-injection
   --  mode (JAUTO=1), setting ADSTP bit aborts both regular and injected
   --  conversions (do not use JADSTP)
   type ADC_CR_JADSTP_Field is
     (--  No ADC stop injected conversion command ongoing
      B_0x0,
      --  Write 1 to stop injected conversions ongoing. Read 1 means that an ADSTP
--  command is in progress.
      B_0x1)
     with Size => 1;
   for ADC_CR_JADSTP_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Boost mode control This bitfield is set and cleared by software to
   --  enable/disable the Boost mode. Note: The software is allowed to write
   --  this bit only when ADSTART=0 and JADSTART=0 (which ensures that no
   --  conversion is ongoing). When dual mode is enabled (bits DAMDF of
   --  ADCx_CCR register are not equal to zero), the BOOST bitfield of the
   --  slave ADC is no more writable and its content must be equal to the
   --  master ADC BOOST bitfield.
   type ADC_CR_BOOST_Field is
     (--  used when ADC clock ≤ 6.25 MHz
      B_0x0,
      --  used when 6.25 MHz < ADC clock frequency≤ 12.5 MHz
      B_0x1,
      --  used when 12.5 MHz < ADC clock ≤25.0 MHz
      B_0x2,
      --  used when 25.0 MHz < ADC clock ≤ 50.0 MHz
      B_0x3)
     with Size => 2;
   for ADC_CR_BOOST_Field use
     (B_0x0 => 0,
      B_0x1 => 1,
      B_0x2 => 2,
      B_0x3 => 3);

   --  Linearity calibration This bit is set and cleared by software to enable
   --  the Linearity calibration. Note: The software is allowed to write this
   --  bit only when the ADC is disabled and is not calibrating (ADCAL=0,
   --  JADSTART=0, JADSTP=0, ADSTART=0, ADSTP=0, ADDIS=0 and ADEN=0).
   type ADC_CR_ADCALLIN_Field is
     (--  Writing ADCAL will launch a calibration without the Linearity calibration.
      B_0x0,
      --  Writing ADCAL will launch a calibration with he Linearity calibration.
      B_0x1)
     with Size => 1;
   for ADC_CR_ADCALLIN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  ADC_CR_LINCALRDYW array
   type ADC_CR_LINCALRDYW_Field_Array is array (1 .. 6) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for ADC_CR_LINCALRDYW
   type ADC_CR_LINCALRDYW_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LINCALRDYW as a value
            Val : A0B.Types.SVD.UInt6;
         when True =>
            --  LINCALRDYW as an array
            Arr : ADC_CR_LINCALRDYW_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for ADC_CR_LINCALRDYW_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  ADC voltage regulator enable This bits is set by software to enable the
   --  ADC voltage regulator. Before performing any operation such as launching
   --  a calibration or enabling the ADC, the ADC voltage regulator must first
   --  be enabled and the software must wait for the regulator start-up time.
   --  For more details about the ADC voltage regulator enable and disable
   --  sequences, refer to (ADVREGEN). The software can program this bitfield
   --  only when the ADC is disabled (ADCAL=0, JADSTART=0, ADSTART=0, ADSTP=0,
   --  ADDIS=0 and ADEN=0).
   type ADC_CR_ADVREGEN_Field is
     (--  ADC Voltage regulator disabled
      B_0x0,
      --  ADC Voltage regulator enabled.
      B_0x1)
     with Size => 1;
   for ADC_CR_ADVREGEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Deep-power-down enable This bit is set and cleared by software to put
   --  the ADC in deep-power-down mode. Note: The software is allowed to write
   --  this bit only when the ADC is disabled (ADCAL=0, JADSTART=0, JADSTP=0,
   --  ADSTART=0, ADSTP=0, ADDIS=0 and ADEN=0).
   type ADC_CR_DEEPPWD_Field is
     (--  ADC not in deep-power down
      B_0x0,
      --  ADC in deep-power-down (default reset state)
      B_0x1)
     with Size => 1;
   for ADC_CR_DEEPPWD_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Differential mode for calibration This bit is set and cleared by
   --  software to configure the single-ended or differential inputs mode for
   --  the calibration. Note: The software is allowed to write this bit only
   --  when the ADC is disabled and is not calibrating (ADCAL=0, JADSTART=0,
   --  JADSTP=0, ADSTART=0, ADSTP=0, ADDIS=0 and ADEN=0).
   type ADC_CR_ADCALDIF_Field is
     (--  Writing ADCAL will launch a calibration in Single-ended inputs Mode.
      B_0x0,
      --  Writing ADCAL will launch a calibration in Differential inputs Mode.
      B_0x1)
     with Size => 1;
   for ADC_CR_ADCALDIF_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  ADC calibration This bit is set by software to start the calibration of
   --  the ADC. Program first the bit ADCALDIF to determine if this calibration
   --  applies for single-ended or differential inputs mode. It is cleared by
   --  hardware after calibration is complete. Note: The software is allowed to
   --  launch a calibration by setting ADCAL only when ADEN=0. The software is
   --  allowed to update the calibration factor by writing ADC_CALFACT only
   --  when ADEN=1 and ADSTART=0 and JADSTART=0 (ADC enabled and no conversion
   --  is ongoing)
   type ADC_CR_ADCAL_Field is
     (--  Calibration complete
      B_0x0,
      --  Write 1 to calibrate the ADC. Read at 1 means that a calibration in
--  progress.
      B_0x1)
     with Size => 1;
   for ADC_CR_ADCAL_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  ADC control register
   type ADC_CR_Register is record
      --  ADC enable control This bit is set by software to enable the ADC. The
      --  ADC will be effectively ready to operate once the flag ADRDY has been
      --  set. It is cleared by hardware when the ADC is disabled, after the
      --  execution of the ADDIS command. Note: The software is allowed to set
      --  ADEN only when all bits of ADC_CR registers are 0 (ADCAL=0,
      --  JADSTART=0, ADSTART=0, ADSTP=0, ADDIS=0 and ADEN=0) except for bit
      --  ADVREGEN which must be 1 (and the software must have wait for the
      --  startup time of the voltage regulator)
      ADEN           : ADC_CR_ADEN_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  ADC disable command This bit is set by software to disable the ADC
      --  (ADDIS command) and put it into power-down state (OFF state). It is
      --  cleared by hardware once the ADC is effectively disabled (ADEN is
      --  also cleared by hardware at this time). Note: The software is allowed
      --  to set ADDIS only when ADEN=1 and both ADSTART=0 and JADSTART=0
      --  (which ensures that no conversion is ongoing)
      ADDIS          : ADC_CR_ADDIS_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  ADC start of regular conversion This bit is set by software to start
      --  ADC conversion of regular channels. Depending on the configuration
      --  bits EXTEN, a conversion will start immediately (software trigger
      --  configuration) or once a regular hardware trigger event occurs
      --  (hardware trigger configuration). It is cleared by hardware: in
      --  single conversion mode (CONT=0, DISCEN=0) when software trigger is
      --  selected (EXTEN=0x0): at the assertion of the End of Regular
      --  Conversion Sequence (EOS) flag. In discontinuous conversion mode
      --  (CONT=0, DISCEN=1), when the software trigger is selected
      --  (EXTEN=0x0): at the end of conversion (EOC) flag. in all other cases:
      --  after the execution of the ADSTP command, at the same time that ADSTP
      --  is cleared by hardware. Note: The software is allowed to set ADSTART
      --  only when ADEN=1 and ADDIS=0 (ADC is enabled and there is no pending
      --  request to disable the ADC) In auto-injection mode (JAUTO=1), regular
      --  and auto-injected conversions are started by setting bit ADSTART
      --  (JADSTART must be kept cleared)
      ADSTART        : ADC_CR_ADSTART_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  ADC start of injected conversion This bit is set by software to start
      --  ADC conversion of injected channels. Depending on the configuration
      --  bits JEXTEN, a conversion will start immediately (software trigger
      --  configuration) or once an injected hardware trigger event occurs
      --  (hardware trigger configuration). It is cleared by hardware: in
      --  single conversion mode when software trigger is selected
      --  (JEXTSEL=0x0): at the assertion of the End of Injected Conversion
      --  Sequence (JEOS) flag. in all cases: after the execution of the JADSTP
      --  command, at the same time that JADSTP is cleared by hardware. Note:
      --  The software is allowed to set JADSTART only when ADEN=1 and ADDIS=0
      --  (ADC is enabled and there is no pending request to disable the ADC).
      --  In auto-injection mode (JAUTO=1), regular and auto-injected
      --  conversions are started by setting bit ADSTART (JADSTART must be kept
      --  cleared)
      JADSTART       : ADC_CR_JADSTART_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  ADC stop of regular conversion command This bit is set by software to
      --  stop and discard an ongoing regular conversion (ADSTP Command). It is
      --  cleared by hardware when the conversion is effectively discarded and
      --  the ADC regular sequence and triggers can be re-configured. The ADC
      --  is then ready to accept a new start of regular conversions (ADSTART
      --  command). Note: The software is allowed to set ADSTP only when
      --  ADSTART=1 and ADDIS=0 (ADC is enabled and eventually converting a
      --  regular conversion and there is no pending request to disable the
      --  ADC). In auto-injection mode (JAUTO=1), setting ADSTP bit aborts both
      --  regular and injected conversions (do not use JADSTP). In dual ADC
      --  regular simultaneous mode and interleaved mode, the bit ADSTP of the
      --  master ADC must be used to stop regular conversions. The other ADSTP
      --  bit is inactive.
      ADSTP          : ADC_CR_ADSTP_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  ADC stop of injected conversion command This bit is set by software
      --  to stop and discard an ongoing injected conversion (JADSTP Command).
      --  It is cleared by hardware when the conversion is effectively
      --  discarded and the ADC injected sequence and triggers can be
      --  re-configured. The ADC is then ready to accept a new start of
      --  injected conversions (JADSTART command). Note: The software is
      --  allowed to set JADSTP only when JADSTART=1 and ADDIS=0 (ADC is
      --  enabled and eventually converting an injected conversion and there is
      --  no pending request to disable the ADC). In auto-injection mode
      --  (JAUTO=1), setting ADSTP bit aborts both regular and injected
      --  conversions (do not use JADSTP)
      JADSTP         : ADC_CR_JADSTP_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  unspecified
      Reserved_6_7   : A0B.Types.SVD.UInt2 := 16#0#;
      --  Boost mode control This bitfield is set and cleared by software to
      --  enable/disable the Boost mode. Note: The software is allowed to write
      --  this bit only when ADSTART=0 and JADSTART=0 (which ensures that no
      --  conversion is ongoing). When dual mode is enabled (bits DAMDF of
      --  ADCx_CCR register are not equal to zero), the BOOST bitfield of the
      --  slave ADC is no more writable and its content must be equal to the
      --  master ADC BOOST bitfield.
      BOOST          : ADC_CR_BOOST_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  unspecified
      Reserved_10_15 : A0B.Types.SVD.UInt6 := 16#0#;
      --  Linearity calibration This bit is set and cleared by software to
      --  enable the Linearity calibration. Note: The software is allowed to
      --  write this bit only when the ADC is disabled and is not calibrating
      --  (ADCAL=0, JADSTART=0, JADSTP=0, ADSTART=0, ADSTP=0, ADDIS=0 and
      --  ADEN=0).
      ADCALLIN       : ADC_CR_ADCALLIN_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  unspecified
      Reserved_17_21 : A0B.Types.SVD.UInt5 := 16#0#;
      --  Linearity calibration ready Word 1 Refer to LINCALRDYW6 description.
      --  Note: ADC_CALFACT2[29:0] corresponds linearity correction factor
      --  bits[29:0]. The software is allowed to toggle this bit only if the
      --  LINCALRDYW6, LINCALRDYW5, LINCALRDYW4, LINCALRDYW3 and LINCALRDYW2
      --  bits are left unchanged.
      LINCALRDYW     : ADC_CR_LINCALRDYW_Field :=
                        (As_Array => False, Val => 16#0#);
      --  ADC voltage regulator enable This bits is set by software to enable
      --  the ADC voltage regulator. Before performing any operation such as
      --  launching a calibration or enabling the ADC, the ADC voltage
      --  regulator must first be enabled and the software must wait for the
      --  regulator start-up time. For more details about the ADC voltage
      --  regulator enable and disable sequences, refer to (ADVREGEN). The
      --  software can program this bitfield only when the ADC is disabled
      --  (ADCAL=0, JADSTART=0, ADSTART=0, ADSTP=0, ADDIS=0 and ADEN=0).
      ADVREGEN       : ADC_CR_ADVREGEN_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Deep-power-down enable This bit is set and cleared by software to put
      --  the ADC in deep-power-down mode. Note: The software is allowed to
      --  write this bit only when the ADC is disabled (ADCAL=0, JADSTART=0,
      --  JADSTP=0, ADSTART=0, ADSTP=0, ADDIS=0 and ADEN=0).
      DEEPPWD        : ADC_CR_DEEPPWD_Field := A0B.STM32H723.SVD.ADC.B_0x1;
      --  Differential mode for calibration This bit is set and cleared by
      --  software to configure the single-ended or differential inputs mode
      --  for the calibration. Note: The software is allowed to write this bit
      --  only when the ADC is disabled and is not calibrating (ADCAL=0,
      --  JADSTART=0, JADSTP=0, ADSTART=0, ADSTP=0, ADDIS=0 and ADEN=0).
      ADCALDIF       : ADC_CR_ADCALDIF_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  ADC calibration This bit is set by software to start the calibration
      --  of the ADC. Program first the bit ADCALDIF to determine if this
      --  calibration applies for single-ended or differential inputs mode. It
      --  is cleared by hardware after calibration is complete. Note: The
      --  software is allowed to launch a calibration by setting ADCAL only
      --  when ADEN=0. The software is allowed to update the calibration factor
      --  by writing ADC_CALFACT only when ADEN=1 and ADSTART=0 and JADSTART=0
      --  (ADC enabled and no conversion is ongoing)
      ADCAL          : ADC_CR_ADCAL_Field := A0B.STM32H723.SVD.ADC.B_0x0;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_CR_Register use record
      ADEN           at 0 range 0 .. 0;
      ADDIS          at 0 range 1 .. 1;
      ADSTART        at 0 range 2 .. 2;
      JADSTART       at 0 range 3 .. 3;
      ADSTP          at 0 range 4 .. 4;
      JADSTP         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      BOOST          at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      ADCALLIN       at 0 range 16 .. 16;
      Reserved_17_21 at 0 range 17 .. 21;
      LINCALRDYW     at 0 range 22 .. 27;
      ADVREGEN       at 0 range 28 .. 28;
      DEEPPWD        at 0 range 29 .. 29;
      ADCALDIF       at 0 range 30 .. 30;
      ADCAL          at 0 range 31 .. 31;
   end record;

   --  Data Management configuration This bit is set and cleared by software to
   --  select how ADC interface output data are managed. Note: The software is
   --  allowed to write this bit only when ADSTART=0 and JADSTART=0 (which
   --  ensures that no conversion is ongoing). In dual-ADC modes, this bit is
   --  not relevant and replaced by control bit DAMDF of the ADCx_CCR register.
   type ADC_CFGR_DMNGT_Field is
     (--  Regular conversion data stored in DR only
      B_0x0,
      --  DMA One Shot Mode selected
      B_0x1,
      --  DFSDM mode selected
      B_0x2,
      --  DMA Circular Mode selected
      B_0x3)
     with Size => 2;
   for ADC_CFGR_DMNGT_Field use
     (B_0x0 => 0,
      B_0x1 => 1,
      B_0x2 => 2,
      B_0x3 => 3);

   --  Data resolution These bits are written by software to select the
   --  resolution of the conversion. Others: Reserved, must not be used. Note:
   --  The software is allowed to write these bits only when ADSTART=0 and
   --  JADSTART=0 (which ensures that no conversion is ongoing).
   type ADC_CFGR_RES_Field is
     (--  16 bits
      B_0x0,
      --  14 bits in legacy mode (not optimized power consumption)
      B_0x1,
      --  12 bits in legacy mode (not optimized power consumption)
      B_0x2,
      --  10 bits
      B_0x3,
      --  14 bits
      B_0x5,
      --  12 bits
      B_0x6,
      --  8 bits
      B_0x7)
     with Size => 3;
   for ADC_CFGR_RES_Field use
     (B_0x0 => 0,
      B_0x1 => 1,
      B_0x2 => 2,
      B_0x3 => 3,
      B_0x5 => 5,
      B_0x6 => 6,
      B_0x7 => 7);

   --  External trigger selection for regular group These bits select the
   --  external event used to trigger the start of conversion of a regular
   --  group: ... Note: The software is allowed to write these bits only when
   --  ADSTART=0 (which ensures that no regular conversion is ongoing).
   type ADC_CFGR_EXTSEL_Field is
     (--  Event 0
      B_0x0,
      --  Event 1
      B_0x1,
      --  Event 2
      B_0x2,
      --  Event 3
      B_0x3,
      --  Event 4
      B_0x4,
      --  Event 5
      B_0x5,
      --  Event 6
      B_0x6,
      --  Event 7
      B_0x7,
      --  Event 31
      B_0x1F)
     with Size => 5;
   for ADC_CFGR_EXTSEL_Field use
     (B_0x0 => 0,
      B_0x1 => 1,
      B_0x2 => 2,
      B_0x3 => 3,
      B_0x4 => 4,
      B_0x5 => 5,
      B_0x6 => 6,
      B_0x7 => 7,
      B_0x1F => 31);

   --  External trigger enable and polarity selection for regular channels
   --  These bits are set and cleared by software to select the external
   --  trigger polarity and enable the trigger of a regular group. Note: The
   --  software is allowed to write these bits only when ADSTART=0 (which
   --  ensures that no regular conversion is ongoing).
   type ADC_CFGR_EXTEN_Field is
     (--  Hardware trigger detection disabled (conversions can be launched by
--  software)
      B_0x0,
      --  Hardware trigger detection on the rising edge
      B_0x1,
      --  Hardware trigger detection on the falling edge
      B_0x2,
      --  Hardware trigger detection on both the rising and falling edges
      B_0x3)
     with Size => 2;
   for ADC_CFGR_EXTEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1,
      B_0x2 => 2,
      B_0x3 => 3);

   --  Overrun Mode This bit is set and cleared by software and configure the
   --  way data overrun is managed. Note: The software is allowed to write this
   --  bit only when ADSTART=0 (which ensures that no regular conversion is
   --  ongoing).
   type ADC_CFGR_OVRMOD_Field is
     (--  ADC_DR register is preserved with the old data when an overrun is detected.
      B_0x0,
      --  ADC_DR register is overwritten with the last conversion result when an
--  overrun is detected.
      B_0x1)
     with Size => 1;
   for ADC_CFGR_OVRMOD_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Single / continuous conversion mode for regular conversions This bit is
   --  set and cleared by software. If it is set, regular conversion takes
   --  place continuously until it is cleared. Note: It is not possible to have
   --  both discontinuous mode and continuous mode enabled: it is forbidden to
   --  set both DISCEN=1 and CONT=1. The software is allowed to write this bit
   --  only when ADSTART=0 (which ensures that no regular conversion is
   --  ongoing). When dual mode is enabled (DAMDF bits in ADCx_CCR register are
   --  not equal to zero), the bit CONT of the slave ADC is no more writable
   --  and its content is equal to the bit CONT of the master ADC.
   type ADC_CFGR_CONT_Field is
     (--  Single conversion mode
      B_0x0,
      --  Continuous conversion mode
      B_0x1)
     with Size => 1;
   for ADC_CFGR_CONT_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Delayed conversion mode This bit is set and cleared by software to
   --  enable/disable the Auto Delayed Conversion mode.. Note: The software is
   --  allowed to write this bit only when ADSTART=0 and JADSTART=0 (which
   --  ensures that no conversion is ongoing). When dual mode is enabled (DAMDF
   --  bits in ADCx_CCR register are not equal to zero), the bit AUTDLY of the
   --  slave ADC is no more writable and its content is equal to the bit AUTDLY
   --  of the master ADC.
   type ADC_CFGR_AUTDLY_Field is
     (--  Auto-delayed conversion mode off
      B_0x0,
      --  Auto-delayed conversion mode on
      B_0x1)
     with Size => 1;
   for ADC_CFGR_AUTDLY_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Discontinuous mode for regular channels This bit is set and cleared by
   --  software to enable/disable Discontinuous mode for regular channels.
   --  Note: It is not possible to have both discontinuous mode and continuous
   --  mode enabled: it is forbidden to set both DISCEN=1 and CONT=1. It is not
   --  possible to use both auto-injected mode and discontinuous mode
   --  simultaneously: the bits DISCEN and JDISCEN must be kept cleared by
   --  software when JAUTO is set. The software is allowed to write this bit
   --  only when ADSTART=0 (which ensures that no regular conversion is
   --  ongoing). When dual mode is enabled (DAMDF bits in ADCx_CCR register are
   --  not equal to zero), the bit DISCEN of the slave ADC is no more writable
   --  and its content is equal to the bit DISCEN of the master ADC.
   type ADC_CFGR_DISCEN_Field is
     (--  Discontinuous mode for regular channels disabled
      B_0x0,
      --  Discontinuous mode for regular channels enabled
      B_0x1)
     with Size => 1;
   for ADC_CFGR_DISCEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Discontinuous mode channel count These bits are written by software to
   --  define the number of regular channels to be converted in discontinuous
   --  mode, after receiving an external trigger. ... Note: The software is
   --  allowed to write these bits only when ADSTART=0 (which ensures that no
   --  regular conversion is ongoing). When dual mode is enabled (DAMDF bits in
   --  ADCx_CCR register are not equal to zero), the bits DISCNUM[2:0] of the
   --  slave ADC are no more writable and their content is equal to the bits
   --  DISCNUM[2:0] of the master ADC.
   type ADC_CFGR_DISCNUM_Field is
     (--  1 channel
      B_0x0,
      --  2 channels
      B_0x1,
      --  8 channels
      B_0x7)
     with Size => 3;
   for ADC_CFGR_DISCNUM_Field use
     (B_0x0 => 0,
      B_0x1 => 1,
      B_0x7 => 7);

   --  Discontinuous mode on injected channels This bit is set and cleared by
   --  software to enable/disable discontinuous mode on the injected channels
   --  of a group. Note: The software is allowed to write this bit only when
   --  JADSTART=0 (which ensures that no injected conversion is ongoing). It is
   --  not possible to use both auto-injected mode and discontinuous mode
   --  simultaneously: the bits DISCEN and JDISCEN must be kept cleared by
   --  software when JAUTO is set. When dual mode is enabled (bits DAMDF of
   --  ADCx_CCR register are not equal to zero), the bit JDISCEN of the slave
   --  ADC is no more writable and its content is equal to the bit JDISCEN of
   --  the master ADC.
   type ADC_CFGR_JDISCEN_Field is
     (--  Discontinuous mode on injected channels disabled
      B_0x0,
      --  Discontinuous mode on injected channels enabled
      B_0x1)
     with Size => 1;
   for ADC_CFGR_JDISCEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  JSQR queue mode This bit is set and cleared by software. It defines how
   --  an empty Queue is managed. Refer to for more information. Note: The
   --  software is allowed to write this bit only when JADSTART=0 (which
   --  ensures that no injected conversion is ongoing). When dual mode is
   --  enabled (DAMDF bits in ADCx_CCR register are not equal to zero), the bit
   --  JQM of the slave ADC is no more writable and its content is equal to the
   --  bit JQM of the master ADC.
   type ADC_CFGR_JQM_Field is
     (--  JSQR Mode 0: The Queue is never empty and maintains the last written
--  configuration into JSQR.
      B_0x0,
      --  JSQR Mode 1: The Queue can be empty and when this occurs, the software and
--  hardware triggers of the injected sequence are both internally disabled
--  just after the completion of the last valid injected sequence.
      B_0x1)
     with Size => 1;
   for ADC_CFGR_JQM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Enable the watchdog 1 on a single channel or on all channels This bit is
   --  set and cleared by software to enable the analog watchdog on the channel
   --  identified by the AWD1CH[4:0] bits or on all the channels Note: The
   --  software is allowed to write this bit only when ADSTART=0 and JADSTART=0
   --  (which ensures that no conversion is ongoing).
   type ADC_CFGR_AWD1SGL_Field is
     (--  Analog watchdog 1 enabled on all channels
      B_0x0,
      --  Analog watchdog 1 enabled on a single channel
      B_0x1)
     with Size => 1;
   for ADC_CFGR_AWD1SGL_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Analog watchdog 1 enable on regular channels This bit is set and cleared
   --  by software Note: The software is allowed to write this bit only when
   --  ADSTART=0 (which ensures that no regular conversion is ongoing).
   type ADC_CFGR_AWD1EN_Field is
     (--  Analog watchdog 1 disabled on regular channels
      B_0x0,
      --  Analog watchdog 1 enabled on regular channels
      B_0x1)
     with Size => 1;
   for ADC_CFGR_AWD1EN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Analog watchdog 1 enable on injected channels This bit is set and
   --  cleared by software Note: The software is allowed to write this bit only
   --  when JADSTART=0 (which ensures that no injected conversion is ongoing).
   type ADC_CFGR_JAWD1EN_Field is
     (--  Analog watchdog 1 disabled on injected channels
      B_0x0,
      --  Analog watchdog 1 enabled on injected channels
      B_0x1)
     with Size => 1;
   for ADC_CFGR_JAWD1EN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Automatic injected group conversion This bit is set and cleared by
   --  software to enable/disable automatic injected group conversion after
   --  regular group conversion. Note: The software is allowed to write this
   --  bit only when ADSTART=0 and JADSTART=0 (which ensures that no regular
   --  nor injected conversion is ongoing). When dual mode is enabled (DAMDF
   --  bits in ADCx_CCR register are not equal to zero), the bit JAUTO of the
   --  slave ADC is no more writable and its content is equal to the bit JAUTO
   --  of the master ADC.
   type ADC_CFGR_JAUTO_Field is
     (--  Automatic injected group conversion disabled
      B_0x0,
      --  Automatic injected group conversion enabled
      B_0x1)
     with Size => 1;
   for ADC_CFGR_JAUTO_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Analog watchdog 1 channel selection These bits are set and cleared by
   --  software. They select the input channel to be guarded by the analog
   --  watchdog. ..... others: Reserved, must not be used Note: The channel
   --  selected by AWD1CH must be also selected into the SQRi or JSQRi
   --  registers. The software is allowed to write these bits only when
   --  ADSTART=0 and JADSTART=0 (which ensures that no conversion is ongoing).
   type ADC_CFGR_AWD1CH_Field is
     (--  ADC analog input channel-0 monitored by AWD1
      B_0x0,
      --  ADC analog input channel-1 monitored by AWD1
      B_0x1,
      --  ADC analog input channel-19 monitored by AWD1
      B_0x12)
     with Size => 5;
   for ADC_CFGR_AWD1CH_Field use
     (B_0x0 => 0,
      B_0x1 => 1,
      B_0x12 => 18);

   --  Injected Queue disable These bits are set and cleared by software to
   --  disable the Injected Queue mechanism: Note: The software is allowed to
   --  write this bit only when ADSTART=0 and JADSTART=0 (which ensures that no
   --  regular nor injected conversion is ongoing). A set or reset of JQDIS bit
   --  causes the injected queue to be flushed and the JSQR register is
   --  cleared.
   type ADC_CFGR_JQDIS_Field is
     (--  Injected Queue enabled
      B_0x0,
      --  Injected Queue disabled
      B_0x1)
     with Size => 1;
   for ADC_CFGR_JQDIS_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  ADC configuration register
   type ADC_CFGR_Register is record
      --  Data Management configuration This bit is set and cleared by software
      --  to select how ADC interface output data are managed. Note: The
      --  software is allowed to write this bit only when ADSTART=0 and
      --  JADSTART=0 (which ensures that no conversion is ongoing). In dual-ADC
      --  modes, this bit is not relevant and replaced by control bit DAMDF of
      --  the ADCx_CCR register.
      DMNGT          : ADC_CFGR_DMNGT_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Data resolution These bits are written by software to select the
      --  resolution of the conversion. Others: Reserved, must not be used.
      --  Note: The software is allowed to write these bits only when ADSTART=0
      --  and JADSTART=0 (which ensures that no conversion is ongoing).
      RES            : ADC_CFGR_RES_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  External trigger selection for regular group These bits select the
      --  external event used to trigger the start of conversion of a regular
      --  group: ... Note: The software is allowed to write these bits only
      --  when ADSTART=0 (which ensures that no regular conversion is ongoing).
      EXTSEL         : ADC_CFGR_EXTSEL_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  External trigger enable and polarity selection for regular channels
      --  These bits are set and cleared by software to select the external
      --  trigger polarity and enable the trigger of a regular group. Note: The
      --  software is allowed to write these bits only when ADSTART=0 (which
      --  ensures that no regular conversion is ongoing).
      EXTEN          : ADC_CFGR_EXTEN_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Overrun Mode This bit is set and cleared by software and configure
      --  the way data overrun is managed. Note: The software is allowed to
      --  write this bit only when ADSTART=0 (which ensures that no regular
      --  conversion is ongoing).
      OVRMOD         : ADC_CFGR_OVRMOD_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Single / continuous conversion mode for regular conversions This bit
      --  is set and cleared by software. If it is set, regular conversion
      --  takes place continuously until it is cleared. Note: It is not
      --  possible to have both discontinuous mode and continuous mode enabled:
      --  it is forbidden to set both DISCEN=1 and CONT=1. The software is
      --  allowed to write this bit only when ADSTART=0 (which ensures that no
      --  regular conversion is ongoing). When dual mode is enabled (DAMDF bits
      --  in ADCx_CCR register are not equal to zero), the bit CONT of the
      --  slave ADC is no more writable and its content is equal to the bit
      --  CONT of the master ADC.
      CONT           : ADC_CFGR_CONT_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Delayed conversion mode This bit is set and cleared by software to
      --  enable/disable the Auto Delayed Conversion mode.. Note: The software
      --  is allowed to write this bit only when ADSTART=0 and JADSTART=0
      --  (which ensures that no conversion is ongoing). When dual mode is
      --  enabled (DAMDF bits in ADCx_CCR register are not equal to zero), the
      --  bit AUTDLY of the slave ADC is no more writable and its content is
      --  equal to the bit AUTDLY of the master ADC.
      AUTDLY         : ADC_CFGR_AUTDLY_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  unspecified
      Reserved_15_15 : A0B.Types.SVD.Bit := 16#0#;
      --  Discontinuous mode for regular channels This bit is set and cleared
      --  by software to enable/disable Discontinuous mode for regular
      --  channels. Note: It is not possible to have both discontinuous mode
      --  and continuous mode enabled: it is forbidden to set both DISCEN=1 and
      --  CONT=1. It is not possible to use both auto-injected mode and
      --  discontinuous mode simultaneously: the bits DISCEN and JDISCEN must
      --  be kept cleared by software when JAUTO is set. The software is
      --  allowed to write this bit only when ADSTART=0 (which ensures that no
      --  regular conversion is ongoing). When dual mode is enabled (DAMDF bits
      --  in ADCx_CCR register are not equal to zero), the bit DISCEN of the
      --  slave ADC is no more writable and its content is equal to the bit
      --  DISCEN of the master ADC.
      DISCEN         : ADC_CFGR_DISCEN_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Discontinuous mode channel count These bits are written by software
      --  to define the number of regular channels to be converted in
      --  discontinuous mode, after receiving an external trigger. ... Note:
      --  The software is allowed to write these bits only when ADSTART=0
      --  (which ensures that no regular conversion is ongoing). When dual mode
      --  is enabled (DAMDF bits in ADCx_CCR register are not equal to zero),
      --  the bits DISCNUM[2:0] of the slave ADC are no more writable and their
      --  content is equal to the bits DISCNUM[2:0] of the master ADC.
      DISCNUM        : ADC_CFGR_DISCNUM_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Discontinuous mode on injected channels This bit is set and cleared
      --  by software to enable/disable discontinuous mode on the injected
      --  channels of a group. Note: The software is allowed to write this bit
      --  only when JADSTART=0 (which ensures that no injected conversion is
      --  ongoing). It is not possible to use both auto-injected mode and
      --  discontinuous mode simultaneously: the bits DISCEN and JDISCEN must
      --  be kept cleared by software when JAUTO is set. When dual mode is
      --  enabled (bits DAMDF of ADCx_CCR register are not equal to zero), the
      --  bit JDISCEN of the slave ADC is no more writable and its content is
      --  equal to the bit JDISCEN of the master ADC.
      JDISCEN        : ADC_CFGR_JDISCEN_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  JSQR queue mode This bit is set and cleared by software. It defines
      --  how an empty Queue is managed. Refer to for more information. Note:
      --  The software is allowed to write this bit only when JADSTART=0 (which
      --  ensures that no injected conversion is ongoing). When dual mode is
      --  enabled (DAMDF bits in ADCx_CCR register are not equal to zero), the
      --  bit JQM of the slave ADC is no more writable and its content is equal
      --  to the bit JQM of the master ADC.
      JQM            : ADC_CFGR_JQM_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Enable the watchdog 1 on a single channel or on all channels This bit
      --  is set and cleared by software to enable the analog watchdog on the
      --  channel identified by the AWD1CH[4:0] bits or on all the channels
      --  Note: The software is allowed to write this bit only when ADSTART=0
      --  and JADSTART=0 (which ensures that no conversion is ongoing).
      AWD1SGL        : ADC_CFGR_AWD1SGL_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Analog watchdog 1 enable on regular channels This bit is set and
      --  cleared by software Note: The software is allowed to write this bit
      --  only when ADSTART=0 (which ensures that no regular conversion is
      --  ongoing).
      AWD1EN         : ADC_CFGR_AWD1EN_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Analog watchdog 1 enable on injected channels This bit is set and
      --  cleared by software Note: The software is allowed to write this bit
      --  only when JADSTART=0 (which ensures that no injected conversion is
      --  ongoing).
      JAWD1EN        : ADC_CFGR_JAWD1EN_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Automatic injected group conversion This bit is set and cleared by
      --  software to enable/disable automatic injected group conversion after
      --  regular group conversion. Note: The software is allowed to write this
      --  bit only when ADSTART=0 and JADSTART=0 (which ensures that no regular
      --  nor injected conversion is ongoing). When dual mode is enabled (DAMDF
      --  bits in ADCx_CCR register are not equal to zero), the bit JAUTO of
      --  the slave ADC is no more writable and its content is equal to the bit
      --  JAUTO of the master ADC.
      JAUTO          : ADC_CFGR_JAUTO_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Analog watchdog 1 channel selection These bits are set and cleared by
      --  software. They select the input channel to be guarded by the analog
      --  watchdog. ..... others: Reserved, must not be used Note: The channel
      --  selected by AWD1CH must be also selected into the SQRi or JSQRi
      --  registers. The software is allowed to write these bits only when
      --  ADSTART=0 and JADSTART=0 (which ensures that no conversion is
      --  ongoing).
      AWD1CH         : ADC_CFGR_AWD1CH_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Injected Queue disable These bits are set and cleared by software to
      --  disable the Injected Queue mechanism: Note: The software is allowed
      --  to write this bit only when ADSTART=0 and JADSTART=0 (which ensures
      --  that no regular nor injected conversion is ongoing). A set or reset
      --  of JQDIS bit causes the injected queue to be flushed and the JSQR
      --  register is cleared.
      JQDIS          : ADC_CFGR_JQDIS_Field := A0B.STM32H723.SVD.ADC.B_0x1;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_CFGR_Register use record
      DMNGT          at 0 range 0 .. 1;
      RES            at 0 range 2 .. 4;
      EXTSEL         at 0 range 5 .. 9;
      EXTEN          at 0 range 10 .. 11;
      OVRMOD         at 0 range 12 .. 12;
      CONT           at 0 range 13 .. 13;
      AUTDLY         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      DISCEN         at 0 range 16 .. 16;
      DISCNUM        at 0 range 17 .. 19;
      JDISCEN        at 0 range 20 .. 20;
      JQM            at 0 range 21 .. 21;
      AWD1SGL        at 0 range 22 .. 22;
      AWD1EN         at 0 range 23 .. 23;
      JAWD1EN        at 0 range 24 .. 24;
      JAUTO          at 0 range 25 .. 25;
      AWD1CH         at 0 range 26 .. 30;
      JQDIS          at 0 range 31 .. 31;
   end record;

   --  Regular Oversampling Enable This bit is set and cleared by software to
   --  enable regular oversampling. Note: The software is allowed to write this
   --  bit only when ADSTART=0 and JADSTART=0 (which ensures that no conversion
   --  is ongoing)
   type ADC_CFGR2_ROVSE_Field is
     (--  Regular Oversampling disabled
      B_0x0,
      --  Regular Oversampling enabled
      B_0x1)
     with Size => 1;
   for ADC_CFGR2_ROVSE_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Injected Oversampling Enable This bit is set and cleared by software to
   --  enable injected oversampling. Note: The software is allowed to write
   --  this bit only when ADSTART=0 and JADSTART=0 (which ensures that no
   --  conversion is ongoing)
   type ADC_CFGR2_JOVSE_Field is
     (--  Injected Oversampling disabled
      B_0x0,
      --  Injected Oversampling enabled
      B_0x1)
     with Size => 1;
   for ADC_CFGR2_JOVSE_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Oversampling right shift This bitfield is set and cleared by software to
   --  define the right shifting applied to the raw oversampling result.
   --  Others: Reserved, must not be used. Note: The software is allowed to
   --  write these bits only when ADSTART=0 (which ensures that no conversion
   --  is ongoing).
   type ADC_CFGR2_OVSS_Field is
     (--  No right shift
      B_0x0,
      --  Shift right 1-bit
      B_0x1,
      --  Shift right 2-bits
      B_0x2,
      --  Shift right 3-bits
      B_0x3,
      --  Shift right 4-bits
      B_0x4,
      --  Shift right 5-bits
      B_0x5,
      --  Shift right 6-bits
      B_0x6,
      --  Shift right 7-bits
      B_0x7,
      --  Shift right 8-bits
      B_0x8,
      --  Shift right 9-bits
      B_0x9,
      --  Shift right 10-bits
      B_0xA,
      --  Shift right 11-bits
      B_0xB)
     with Size => 4;
   for ADC_CFGR2_OVSS_Field use
     (B_0x0 => 0,
      B_0x1 => 1,
      B_0x2 => 2,
      B_0x3 => 3,
      B_0x4 => 4,
      B_0x5 => 5,
      B_0x6 => 6,
      B_0x7 => 7,
      B_0x8 => 8,
      B_0x9 => 9,
      B_0xA => 10,
      B_0xB => 11);

   --  Triggered Regular Oversampling This bit is set and cleared by software
   --  to enable triggered oversampling Note: The software is allowed to write
   --  this bit only when ADSTART=0 (which ensures that no conversion is
   --  ongoing).
   type ADC_CFGR2_TROVS_Field is
     (--  All oversampled conversions for a channel are done consecutively following
--  a trigger
      B_0x0,
      --  Each oversampled conversion for a channel needs a new trigger
      B_0x1)
     with Size => 1;
   for ADC_CFGR2_TROVS_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Regular Oversampling mode This bit is set and cleared by software to
   --  select the regular oversampling mode. Note: The software is allowed to
   --  write this bit only when ADSTART=0 (which ensures that no conversion is
   --  ongoing).
   type ADC_CFGR2_ROVSM_Field is
     (--  Continued mode: When injected conversions are triggered, the oversampling
--  is temporary stopped and continued after the injection sequence
--  (oversampling buffer is maintained during injected sequence)
      B_0x0,
      --  Resumed mode: When injected conversions are triggered, the current
--  oversampling is aborted and resumed from start after the injection sequence
--  (oversampling buffer is zeroed by injected sequence start)
      B_0x1)
     with Size => 1;
   for ADC_CFGR2_ROVSM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Right-shift data after Offset 1 correction This bitfield is set and
   --  cleared by software to right-shift 1-bit data after offset1 correction.
   --  This bit can only be used for 8-bit and 16-bit data format (see (ADC_DR,
   --  ADC_JDRy, OFFSETy, OFFSETy_CH, OVSS, LSHIFT, RSHIFT, SSATE) for
   --  details).
   type ADC_CFGR2_RSHIFT1_Field is
     (--  Right-shifting disabled
      B_0x0,
      --  Data is right-shifted 1-bit.
      B_0x1)
     with Size => 1;
   for ADC_CFGR2_RSHIFT1_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  ADC_CFGR2_RSHIFT array
   type ADC_CFGR2_RSHIFT_Field_Array is array (2 .. 4) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC_CFGR2_RSHIFT
   type ADC_CFGR2_RSHIFT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RSHIFT as a value
            Val : A0B.Types.SVD.UInt3;
         when True =>
            --  RSHIFT as an array
            Arr : ADC_CFGR2_RSHIFT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC_CFGR2_RSHIFT_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Oversampling ratio This bitfield is set and cleared by software to
   --  define the oversampling ratio. 2: 3x ... 1023: 1024x Note: The software
   --  is allowed to write this bit only when ADSTART=0 (which ensures that no
   --  conversion is ongoing).
   type ADC_CFGR2_OSVR_Field is
     (--  1x (no oversampling)
      B_0x0,
      --  2x
      B_0x1)
     with Size => 10;
   for ADC_CFGR2_OSVR_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Left shift factor This bitfield is set and cleared by software to define
   --  the left shifting applied to the final result with or without
   --  oversampling. Note: The software is allowed to write this bit only when
   --  ADSTART=0 (which ensures that no conversion is ongoing).
   type ADC_CFGR2_LSHIFT_Field is
     (--  No left shift
      B_0x0,
      --  Shift left 1-bit
      B_0x1,
      --  Shift left 2-bits
      B_0x2,
      --  Shift left 3-bits
      B_0x3,
      --  Shift left 4-bits
      B_0x4,
      --  Shift left 5-bits
      B_0x5,
      --  Shift left 6-bits
      B_0x6,
      --  Shift left 7-bits
      B_0x7,
      --  Shift left 8-bits
      B_0x8,
      --  Shift left 9-bits
      B_0x9,
      --  Shift left 10-bits
      B_0xA,
      --  Shift left 11-bits
      B_0xB,
      --  Shift left 12-bits
      B_0xC,
      --  Shift left 13-bits
      B_0xD,
      --  Shift left 14-bits
      B_0xE,
      --  Shift left 15-bits
      B_0xF)
     with Size => 4;
   for ADC_CFGR2_LSHIFT_Field use
     (B_0x0 => 0,
      B_0x1 => 1,
      B_0x2 => 2,
      B_0x3 => 3,
      B_0x4 => 4,
      B_0x5 => 5,
      B_0x6 => 6,
      B_0x7 => 7,
      B_0x8 => 8,
      B_0x9 => 9,
      B_0xA => 10,
      B_0xB => 11,
      B_0xC => 12,
      B_0xD => 13,
      B_0xE => 14,
      B_0xF => 15);

   --  ADC configuration register 2
   type ADC_CFGR2_Register is record
      --  Regular Oversampling Enable This bit is set and cleared by software
      --  to enable regular oversampling. Note: The software is allowed to
      --  write this bit only when ADSTART=0 and JADSTART=0 (which ensures that
      --  no conversion is ongoing)
      ROVSE          : ADC_CFGR2_ROVSE_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Injected Oversampling Enable This bit is set and cleared by software
      --  to enable injected oversampling. Note: The software is allowed to
      --  write this bit only when ADSTART=0 and JADSTART=0 (which ensures that
      --  no conversion is ongoing)
      JOVSE          : ADC_CFGR2_JOVSE_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  unspecified
      Reserved_2_4   : A0B.Types.SVD.UInt3 := 16#0#;
      --  Oversampling right shift This bitfield is set and cleared by software
      --  to define the right shifting applied to the raw oversampling result.
      --  Others: Reserved, must not be used. Note: The software is allowed to
      --  write these bits only when ADSTART=0 (which ensures that no
      --  conversion is ongoing).
      OVSS           : ADC_CFGR2_OVSS_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Triggered Regular Oversampling This bit is set and cleared by
      --  software to enable triggered oversampling Note: The software is
      --  allowed to write this bit only when ADSTART=0 (which ensures that no
      --  conversion is ongoing).
      TROVS          : ADC_CFGR2_TROVS_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Regular Oversampling mode This bit is set and cleared by software to
      --  select the regular oversampling mode. Note: The software is allowed
      --  to write this bit only when ADSTART=0 (which ensures that no
      --  conversion is ongoing).
      ROVSM          : ADC_CFGR2_ROVSM_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Right-shift data after Offset 1 correction This bitfield is set and
      --  cleared by software to right-shift 1-bit data after offset1
      --  correction. This bit can only be used for 8-bit and 16-bit data
      --  format (see (ADC_DR, ADC_JDRy, OFFSETy, OFFSETy_CH, OVSS, LSHIFT,
      --  RSHIFT, SSATE) for details).
      RSHIFT1        : ADC_CFGR2_RSHIFT1_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Right-shift data after Offset 2 correction Refer to RSHIFT1
      --  description
      RSHIFT         : ADC_CFGR2_RSHIFT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_15_15 : A0B.Types.SVD.Bit := 16#0#;
      --  Oversampling ratio This bitfield is set and cleared by software to
      --  define the oversampling ratio. 2: 3x ... 1023: 1024x Note: The
      --  software is allowed to write this bit only when ADSTART=0 (which
      --  ensures that no conversion is ongoing).
      OSVR           : ADC_CFGR2_OSVR_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  unspecified
      Reserved_26_27 : A0B.Types.SVD.UInt2 := 16#0#;
      --  Left shift factor This bitfield is set and cleared by software to
      --  define the left shifting applied to the final result with or without
      --  oversampling. Note: The software is allowed to write this bit only
      --  when ADSTART=0 (which ensures that no conversion is ongoing).
      LSHIFT         : ADC_CFGR2_LSHIFT_Field := A0B.STM32H723.SVD.ADC.B_0x0;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_CFGR2_Register use record
      ROVSE          at 0 range 0 .. 0;
      JOVSE          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVSS           at 0 range 5 .. 8;
      TROVS          at 0 range 9 .. 9;
      ROVSM          at 0 range 10 .. 10;
      RSHIFT1        at 0 range 11 .. 11;
      RSHIFT         at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      OSVR           at 0 range 16 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      LSHIFT         at 0 range 28 .. 31;
   end record;

   --  Channel x sampling time selection (x = 0 to 9) These bits are written by
   --  software to select the sampling time individually for each channel.
   --  During sample cycles, the channel selection bits must remain unchanged.
   --  Note: The software is allowed to write these bits only when ADSTART=0
   --  and JADSTART=0 (which ensures that no conversion is ongoing).
   type ADC_SMPR1_SMP0_Field is
     (--  1.5 ADC clock cycles
      B_0x0,
      --  2.5 ADC clock cycles
      B_0x1,
      --  8.5 ADC clock cycles
      B_0x2,
      --  16.5 ADC clock cycles
      B_0x3,
      --  32.5 ADC clock cycles
      B_0x4,
      --  64.5 ADC clock cycles
      B_0x5,
      --  387.5 ADC clock cycles
      B_0x6,
      --  810.5 ADC clock cycles
      B_0x7)
     with Size => 3;
   for ADC_SMPR1_SMP0_Field use
     (B_0x0 => 0,
      B_0x1 => 1,
      B_0x2 => 2,
      B_0x3 => 3,
      B_0x4 => 4,
      B_0x5 => 5,
      B_0x6 => 6,
      B_0x7 => 7);

   --  ADC_SMPR1_SMP array
   type ADC_SMPR1_SMP_Field_Array is array (0 .. 9) of ADC_SMPR1_SMP0_Field
     with Component_Size => 3, Size => 30;

   --  Type definition for ADC_SMPR1_SMP
   type ADC_SMPR1_SMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SMP as a value
            Val : A0B.Types.SVD.UInt30;
         when True =>
            --  SMP as an array
            Arr : ADC_SMPR1_SMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 30;

   for ADC_SMPR1_SMP_Field use record
      Val at 0 range 0 .. 29;
      Arr at 0 range 0 .. 29;
   end record;

   --  ADC sample time register 1
   type ADC_SMPR1_Register is record
      --  Channel x sampling time selection (x = 0 to 9) These bits are written
      --  by software to select the sampling time individually for each
      --  channel. During sample cycles, the channel selection bits must remain
      --  unchanged. Note: The software is allowed to write these bits only
      --  when ADSTART=0 and JADSTART=0 (which ensures that no conversion is
      --  ongoing).
      SMP            : ADC_SMPR1_SMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : A0B.Types.SVD.UInt2 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_SMPR1_Register use record
      SMP            at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Channel x sampling time selection (x = 10 to 19) These bits are written
   --  by software to select the sampling time individually for each channel.
   --  During sampling cycles, the channel selection bits must remain
   --  unchanged. Note: The software is allowed to write these bits only when
   --  ADSTART=0 and JADSTART=0 (which ensures that no conversion is ongoing).
   type ADC_SMPR2_SMP10_Field is
     (--  1.5 ADC clock cycles
      B_0x0,
      --  2.5 ADC clock cycles
      B_0x1,
      --  8.5 ADC clock cycles
      B_0x2,
      --  16.5 ADC clock cycles
      B_0x3,
      --  32.5 ADC clock cycles
      B_0x4,
      --  64.5 ADC clock cycles
      B_0x5,
      --  387.5 ADC clock cycles
      B_0x6,
      --  810.5 ADC clock cycles
      B_0x7)
     with Size => 3;
   for ADC_SMPR2_SMP10_Field use
     (B_0x0 => 0,
      B_0x1 => 1,
      B_0x2 => 2,
      B_0x3 => 3,
      B_0x4 => 4,
      B_0x5 => 5,
      B_0x6 => 6,
      B_0x7 => 7);

   --  ADC_SMPR2_SMP array
   type ADC_SMPR2_SMP_Field_Array is array (10 .. 19)
     of ADC_SMPR2_SMP10_Field
     with Component_Size => 3, Size => 30;

   --  Type definition for ADC_SMPR2_SMP
   type ADC_SMPR2_SMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SMP as a value
            Val : A0B.Types.SVD.UInt30;
         when True =>
            --  SMP as an array
            Arr : ADC_SMPR2_SMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 30;

   for ADC_SMPR2_SMP_Field use record
      Val at 0 range 0 .. 29;
      Arr at 0 range 0 .. 29;
   end record;

   --  ADC sample time register 2
   type ADC_SMPR2_Register is record
      --  Channel x sampling time selection (x = 10 to 19) These bits are
      --  written by software to select the sampling time individually for each
      --  channel. During sampling cycles, the channel selection bits must
      --  remain unchanged. Note: The software is allowed to write these bits
      --  only when ADSTART=0 and JADSTART=0 (which ensures that no conversion
      --  is ongoing).
      SMP            : ADC_SMPR2_SMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : A0B.Types.SVD.UInt2 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_SMPR2_Register use record
      SMP            at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  :Channel x (VINP[i]) pre selection (x = 0 to 19) These bits are written
   --  by software to pre select the input channel at IO instance to be
   --  converted. Note: The software is allowed to write these bits only when
   --  ADSTART=0 and JADSTART=0 (which ensures that no conversion is ongoing).
   type ADC_PCSEL_PCSEL0_Field is
     (--  Input Channel x (Vinp x) is not pre selected for conversion, the ADC
--  conversion result with this channel shows wrong result.
      B_0x0,
      --  Input Channel x (Vinp x) is pre selected for conversion
      B_0x1)
     with Size => 1;
   for ADC_PCSEL_PCSEL0_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  ADC_PCSEL_PCSEL array
   type ADC_PCSEL_PCSEL_Field_Array is array (0 .. 19)
     of ADC_PCSEL_PCSEL0_Field
     with Component_Size => 1, Size => 20;

   --  Type definition for ADC_PCSEL_PCSEL
   type ADC_PCSEL_PCSEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PCSEL as a value
            Val : A0B.Types.SVD.UInt20;
         when True =>
            --  PCSEL as an array
            Arr : ADC_PCSEL_PCSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 20;

   for ADC_PCSEL_PCSEL_Field use record
      Val at 0 range 0 .. 19;
      Arr at 0 range 0 .. 19;
   end record;

   --  ADC channel preselection register
   type ADC_PCSEL_Register is record
      --  :Channel x (VINP[i]) pre selection (x = 0 to 19) These bits are
      --  written by software to pre select the input channel at IO instance to
      --  be converted. Note: The software is allowed to write these bits only
      --  when ADSTART=0 and JADSTART=0 (which ensures that no conversion is
      --  ongoing).
      PCSEL          : ADC_PCSEL_PCSEL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : A0B.Types.SVD.UInt12 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_PCSEL_Register use record
      PCSEL          at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ADC_LTR1_LTR1_Field is A0B.Types.SVD.UInt26;

   --  ADC watchdog threshold register 1
   type ADC_LTR1_Register is record
      --  Analog watchdog 1 lower threshold These bits are written by software
      --  to define the lower threshold for the analog watchdog 1. Refer to
      --  AWD2CH, AWD3CH, AWD_HTRy, AWD_LTRy, AWDy) Note: The software is
      --  allowed to write these bits only when ADSTART=0 and JADSTART=0 (which
      --  ensures that no conversion is ongoing).
      LTR1           : ADC_LTR1_LTR1_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : A0B.Types.SVD.UInt6 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_LTR1_Register use record
      LTR1           at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype ADC_HTR1_HTR1_Field is A0B.Types.SVD.UInt26;

   --  ADC watchdog threshold register 1
   type ADC_HTR1_Register is record
      --  Analog watchdog 1 higher threshold These bits are written by software
      --  to define the higher threshold for the analog watchdog 1. Refer to
      --  AWD2CH, AWD3CH, AWD_HTRy, AWD_LTRy, AWDy) Note: The software is
      --  allowed to write these bits only when ADSTART=0 and JADSTART=0 (which
      --  ensures that no conversion is ongoing).
      HTR1           : ADC_HTR1_HTR1_Field := 16#3FFFFFF#;
      --  unspecified
      Reserved_26_31 : A0B.Types.SVD.UInt6 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_HTR1_Register use record
      HTR1           at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Regular channel sequence length These bits are written by software to
   --  define the total number of conversions in the regular channel conversion
   --  sequence. ... Note: The software is allowed to write these bits only
   --  when ADSTART=0 (which ensures that no regular conversion is ongoing).
   type ADC_SQR1_L_Field is
     (--  1 conversion
      B_0x0,
      --  2 conversions
      B_0x1,
      --  16 conversions
      B_0xF)
     with Size => 4;
   for ADC_SQR1_L_Field use
     (B_0x0 => 0,
      B_0x1 => 1,
      B_0xF => 15);

   subtype ADC_SQR1_SQ1_Field is A0B.Types.SVD.UInt5;
   subtype ADC_SQR1_SQ2_Field is A0B.Types.SVD.UInt5;
   subtype ADC_SQR1_SQ3_Field is A0B.Types.SVD.UInt5;
   subtype ADC_SQR1_SQ4_Field is A0B.Types.SVD.UInt5;

   --  ADC regular sequence register 1
   type ADC_SQR1_Register is record
      --  Regular channel sequence length These bits are written by software to
      --  define the total number of conversions in the regular channel
      --  conversion sequence. ... Note: The software is allowed to write these
      --  bits only when ADSTART=0 (which ensures that no regular conversion is
      --  ongoing).
      L              : ADC_SQR1_L_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  unspecified
      Reserved_4_5   : A0B.Types.SVD.UInt2 := 16#0#;
      --  1st conversion in regular sequence These bits are written by software
      --  with the channel number (0..19) assigned as the 1st in the regular
      --  conversion sequence. Note: The software is allowed to write these
      --  bits only when ADSTART=0 (which ensures that no regular conversion is
      --  ongoing).
      SQ1            : ADC_SQR1_SQ1_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : A0B.Types.SVD.Bit := 16#0#;
      --  2nd conversion in regular sequence These bits are written by software
      --  with the channel number (0..19) assigned as the 2nd in the regular
      --  conversion sequence. Note: The software is allowed to write these
      --  bits only when ADSTART=0 (which ensures that no regular conversion is
      --  ongoing).
      SQ2            : ADC_SQR1_SQ2_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : A0B.Types.SVD.Bit := 16#0#;
      --  3rd conversion in regular sequence These bits are written by software
      --  with the channel number (0..19) assigned as the 3rd in the regular
      --  conversion sequence. Note: The software is allowed to write these
      --  bits only when ADSTART=0 (which ensures that no regular conversion is
      --  ongoing).
      SQ3            : ADC_SQR1_SQ3_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : A0B.Types.SVD.Bit := 16#0#;
      --  4th conversion in regular sequence These bits are written by software
      --  with the channel number (0..19) assigned as the 4th in the regular
      --  conversion sequence.
      SQ4            : ADC_SQR1_SQ4_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : A0B.Types.SVD.UInt3 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_SQR1_Register use record
      L              at 0 range 0 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      SQ1            at 0 range 6 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SQ2            at 0 range 12 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      SQ3            at 0 range 18 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      SQ4            at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype ADC_SQR2_SQ5_Field is A0B.Types.SVD.UInt5;
   subtype ADC_SQR2_SQ6_Field is A0B.Types.SVD.UInt5;
   subtype ADC_SQR2_SQ7_Field is A0B.Types.SVD.UInt5;
   subtype ADC_SQR2_SQ8_Field is A0B.Types.SVD.UInt5;
   subtype ADC_SQR2_SQ9_Field is A0B.Types.SVD.UInt5;

   --  ADC regular sequence register 2
   type ADC_SQR2_Register is record
      --  5th conversion in regular sequence These bits are written by software
      --  with the channel number (0..19) assigned as the 5th in the regular
      --  conversion sequence. Note: The software is allowed to write these
      --  bits only when ADSTART=0 (which ensures that no regular conversion is
      --  ongoing).
      SQ5            : ADC_SQR2_SQ5_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : A0B.Types.SVD.Bit := 16#0#;
      --  6th conversion in regular sequence These bits are written by software
      --  with the channel number (0..19) assigned as the 6th in the regular
      --  conversion sequence. Note: The software is allowed to write these
      --  bits only when ADSTART=0 (which ensures that no regular conversion is
      --  ongoing).
      SQ6            : ADC_SQR2_SQ6_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : A0B.Types.SVD.Bit := 16#0#;
      --  7th conversion in regular sequence These bits are written by software
      --  with the channel number (0..19) assigned as the 7th in the regular
      --  conversion sequence. Note: The software is allowed to write these
      --  bits only when ADSTART=0 (which ensures that no regular conversion is
      --  ongoing).
      SQ7            : ADC_SQR2_SQ7_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : A0B.Types.SVD.Bit := 16#0#;
      --  8th conversion in regular sequence These bits are written by software
      --  with the channel number (0..19) assigned as the 8th in the regular
      --  conversion sequence Note: The software is allowed to write these bits
      --  only when ADSTART=0 (which ensures that no regular conversion is
      --  ongoing).
      SQ8            : ADC_SQR2_SQ8_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : A0B.Types.SVD.Bit := 16#0#;
      --  9th conversion in regular sequence These bits are written by software
      --  with the channel number (0..19) assigned as the 9th in the regular
      --  conversion sequence. Note: The software is allowed to write these
      --  bits only when ADSTART=0 (which ensures that no regular conversion is
      --  ongoing).
      SQ9            : ADC_SQR2_SQ9_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : A0B.Types.SVD.UInt3 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_SQR2_Register use record
      SQ5            at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SQ6            at 0 range 6 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SQ7            at 0 range 12 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      SQ8            at 0 range 18 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      SQ9            at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype ADC_SQR3_SQ10_Field is A0B.Types.SVD.UInt5;
   subtype ADC_SQR3_SQ11_Field is A0B.Types.SVD.UInt5;
   subtype ADC_SQR3_SQ12_Field is A0B.Types.SVD.UInt5;
   subtype ADC_SQR3_SQ13_Field is A0B.Types.SVD.UInt5;
   subtype ADC_SQR3_SQ14_Field is A0B.Types.SVD.UInt5;

   --  ADC regular sequence register 3
   type ADC_SQR3_Register is record
      --  10th conversion in regular sequence These bits are written by
      --  software with the channel number (0..19) assigned as the 10th in the
      --  regular conversion sequence. Note: The software is allowed to write
      --  these bits only when ADSTART=0 (which ensures that no regular
      --  conversion is ongoing).
      SQ10           : ADC_SQR3_SQ10_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : A0B.Types.SVD.Bit := 16#0#;
      --  11th conversion in regular sequence These bits are written by
      --  software with the channel number (0..19) assigned as the 11th in the
      --  regular conversion sequence. Note: The software is allowed to write
      --  these bits only when ADSTART=0 (which ensures that no regular
      --  conversion is ongoing).
      SQ11           : ADC_SQR3_SQ11_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : A0B.Types.SVD.Bit := 16#0#;
      --  12th conversion in regular sequence These bits are written by
      --  software with the channel number (0..19) assigned as the 12th in the
      --  regular conversion sequence. Note: The software is allowed to write
      --  these bits only when ADSTART=0 (which ensures that no regular
      --  conversion is ongoing).
      SQ12           : ADC_SQR3_SQ12_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : A0B.Types.SVD.Bit := 16#0#;
      --  13th conversion in regular sequence These bits are written by
      --  software with the channel number (0..19) assigned as the 13th in the
      --  regular conversion sequence. Note: The software is allowed to write
      --  these bits only when ADSTART=0 (which ensures that no regular
      --  conversion is ongoing).
      SQ13           : ADC_SQR3_SQ13_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : A0B.Types.SVD.Bit := 16#0#;
      --  14th conversion in regular sequence These bits are written by
      --  software with the channel number (0..19) assigned as the 14th in the
      --  regular conversion sequence. Note: The software is allowed to write
      --  these bits only when ADSTART=0 (which ensures that no regular
      --  conversion is ongoing).
      SQ14           : ADC_SQR3_SQ14_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : A0B.Types.SVD.UInt3 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_SQR3_Register use record
      SQ10           at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SQ11           at 0 range 6 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SQ12           at 0 range 12 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      SQ13           at 0 range 18 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      SQ14           at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype ADC_SQR4_SQ15_Field is A0B.Types.SVD.UInt5;
   subtype ADC_SQR4_SQ16_Field is A0B.Types.SVD.UInt5;

   --  ADC regular sequence register 4
   type ADC_SQR4_Register is record
      --  15th conversion in regular sequence These bits are written by
      --  software with the channel number (0..19) assigned as the 15th in the
      --  regular conversion sequence. Note: The software is allowed to write
      --  these bits only when ADSTART=0 (which ensures that no regular
      --  conversion is ongoing).
      SQ15           : ADC_SQR4_SQ15_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : A0B.Types.SVD.Bit := 16#0#;
      --  16th conversion in regular sequence These bits are written by
      --  software with the channel number (0..19) assigned as the 16th in the
      --  regular conversion sequence. Note: The software is allowed to write
      --  these bits only when ADSTART=0 (which ensures that no regular
      --  conversion is ongoing).
      SQ16           : ADC_SQR4_SQ16_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : A0B.Types.SVD.UInt21 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_SQR4_Register use record
      SQ15           at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SQ16           at 0 range 6 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Injected channel sequence length These bits are written by software to
   --  define the total number of conversions in the injected channel
   --  conversion sequence. Note: The software is allowed to write these bits
   --  only when JADSTART is cleared to 0 (no injected conversion is ongoing).
   type ADC_JSQR_JL_Field is
     (--  1 conversion
      B_0x0,
      --  2 conversions
      B_0x1,
      --  3 conversions
      B_0x2,
      --  4 conversions
      B_0x3)
     with Size => 2;
   for ADC_JSQR_JL_Field use
     (B_0x0 => 0,
      B_0x1 => 1,
      B_0x2 => 2,
      B_0x3 => 3);

   --  External trigger selection for injected group These bits select the
   --  external event used to trigger the start of conversion of an injected
   --  group: ... Note: The software is allowed to write these bits only when
   --  JADSTART is cleared to 0 (no injected conversion is ongoing).
   type ADC_JSQR_JEXTSEL_Field is
     (--  Event 0
      B_0x0,
      --  Event 1
      B_0x1,
      --  Event 2
      B_0x2,
      --  Event 3
      B_0x3,
      --  Event 4
      B_0x4,
      --  Event 5
      B_0x5,
      --  Event 6
      B_0x6,
      --  Event 7
      B_0x7,
      --  Event 31:
      B_0x1F)
     with Size => 5;
   for ADC_JSQR_JEXTSEL_Field use
     (B_0x0 => 0,
      B_0x1 => 1,
      B_0x2 => 2,
      B_0x3 => 3,
      B_0x4 => 4,
      B_0x5 => 5,
      B_0x6 => 6,
      B_0x7 => 7,
      B_0x1F => 31);

   --  External trigger enable and polarity selection for injected channels
   --  These bits are set and cleared by software to select the external
   --  trigger polarity and enable the trigger of an injected group. If JQDIS=1
   --  (queue disabled), Hardware trigger detection disabled (conversions can
   --  be launched by software Note: The software is allowed to write these
   --  bits only when JADSTART is cleared to 0 (no injected conversion is
   --  ongoing). If JQM=1 and if the Queue of Context becomes empty, the
   --  software and hardware triggers of the injected sequence are both
   --  internally disabled (refer to Queue of context for injected conversions)
   type ADC_JSQR_JEXTEN_Field is
     (--  If JQDIS=0 (queue enabled), Hardware and software trigger detection
--  disabled and
      B_0x0,
      --  Hardware trigger detection on the rising edge
      B_0x1,
      --  Hardware trigger detection on the falling edge
      B_0x2,
      --  Hardware trigger detection on both the rising and falling edges
      B_0x3)
     with Size => 2;
   for ADC_JSQR_JEXTEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1,
      B_0x2 => 2,
      B_0x3 => 3);

   subtype ADC_JSQR_JSQ1_Field is A0B.Types.SVD.UInt5;
   subtype ADC_JSQR_JSQ2_Field is A0B.Types.SVD.UInt5;
   subtype ADC_JSQR_JSQ3_Field is A0B.Types.SVD.UInt5;
   subtype ADC_JSQR_JSQ4_Field is A0B.Types.SVD.UInt5;

   --  ADC injected sequence register
   type ADC_JSQR_Register is record
      --  Injected channel sequence length These bits are written by software
      --  to define the total number of conversions in the injected channel
      --  conversion sequence. Note: The software is allowed to write these
      --  bits only when JADSTART is cleared to 0 (no injected conversion is
      --  ongoing).
      JL             : ADC_JSQR_JL_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  External trigger selection for injected group These bits select the
      --  external event used to trigger the start of conversion of an injected
      --  group: ... Note: The software is allowed to write these bits only
      --  when JADSTART is cleared to 0 (no injected conversion is ongoing).
      JEXTSEL        : ADC_JSQR_JEXTSEL_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  External trigger enable and polarity selection for injected channels
      --  These bits are set and cleared by software to select the external
      --  trigger polarity and enable the trigger of an injected group. If
      --  JQDIS=1 (queue disabled), Hardware trigger detection disabled
      --  (conversions can be launched by software Note: The software is
      --  allowed to write these bits only when JADSTART is cleared to 0 (no
      --  injected conversion is ongoing). If JQM=1 and if the Queue of Context
      --  becomes empty, the software and hardware triggers of the injected
      --  sequence are both internally disabled (refer to Queue of context for
      --  injected conversions)
      JEXTEN         : ADC_JSQR_JEXTEN_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  1st conversion in the injected sequence These bits are written by
      --  software with the channel number (0..19) assigned as the 1st in the
      --  injected conversion sequence. Note: The software is allowed to write
      --  these bits only when JADSTART is cleared to 0 (no injected conversion
      --  is ongoing) unless the context queue is enabled (JQDIS=0 in ADC_CFGR
      --  register).
      JSQ1           : ADC_JSQR_JSQ1_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : A0B.Types.SVD.Bit := 16#0#;
      --  2nd conversion in the injected sequence These bits are written by
      --  software with the channel number (0..19) assigned as the 2nd in the
      --  injected conversion sequence. Note: The software is allowed to write
      --  these bits only when JADSTART is cleared to 0 (no injected conversion
      --  is ongoing) unless the context queue is enabled (JQDIS=0 in ADC_CFGR
      --  register).
      JSQ2           : ADC_JSQR_JSQ2_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : A0B.Types.SVD.Bit := 16#0#;
      --  3rd conversion in the injected sequence These bits are written by
      --  software with the channel number (0..19) assigned as the 3rd in the
      --  injected conversion sequence. Note: The software is allowed to write
      --  these bits only when JADSTART is cleared to 0 (no injected conversion
      --  is ongoing) unless the context queue is enabled (JQDIS=0 in ADC_CFGR
      --  register).
      JSQ3           : ADC_JSQR_JSQ3_Field := 16#0#;
      --  unspecified
      Reserved_26_26 : A0B.Types.SVD.Bit := 16#0#;
      --  4th conversion in the injected sequence These bits are written by
      --  software with the channel number (0..19) assigned as the 4th in the
      --  injected conversion sequence. Note: The software is allowed to write
      --  these bits only when JADSTART is cleared to 0 (no injected conversion
      --  is ongoing) unless the context queue is enabled (JQDIS=0 in ADC_CFGR
      --  register).
      JSQ4           : ADC_JSQR_JSQ4_Field := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_JSQR_Register use record
      JL             at 0 range 0 .. 1;
      JEXTSEL        at 0 range 2 .. 6;
      JEXTEN         at 0 range 7 .. 8;
      JSQ1           at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      JSQ2           at 0 range 15 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      JSQ3           at 0 range 21 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      JSQ4           at 0 range 27 .. 31;
   end record;

   subtype ADC_OFR1_OFFSET1_Field is A0B.Types.SVD.UInt26;
   subtype ADC_OFR1_OFFSET1_CH_Field is A0B.Types.SVD.UInt5;

   --  Signed saturation Enable This bit is written by software to enable or
   --  disable the Signed saturation feature. This bit can be enabled only for
   --  8-bit and 16-bit data format (see alignment and offset (ADC_DR,
   --  ADC_JDRy, OFFSETy, OFFSETy_CH, OVSS, LSHIFT, RSHIFT, SSATE) for
   --  details). Note: The software is allowed to write this bit only when
   --  ADSTART=0 and JADSTART=0 (which ensures that no conversion is ongoing).
   type ADC_OFR1_SSATE_Field is
     (--  Offset is subtracted maintaining data integrity and extending result size
--  (9-bit and 17-bit signed format).
      B_0x0,
      --  Offset is subtracted and result is saturated to maintain result size.
      B_0x1)
     with Size => 1;
   for ADC_OFR1_SSATE_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  ADC injected channel 1 offset register
   type ADC_OFR1_Register is record
      --  Data offset y for the channel programmed into bits OFFSETy_CH[4:0]
      --  These bits are written by software to define the offset y to be
      --  subtracted from the raw converted data when converting a channel (can
      --  be regular or injected). The channel to which applies the data offset
      --  y must be programmed in the bits OFFSETy_CH[4:0]. The conversion
      --  result can be read from in the ADC_DR (regular conversion) or from in
      --  the ADC_JDRyi registers (injected conversion). When OFFSETy[25:0]
      --  bitfield is reset, the offset compensation is disabled. Note: The
      --  software is allowed to write these bits only when ADSTART=0 and
      --  JADSTART=0 (which ensures that no conversion is ongoing). If several
      --  offset (OFFSETy) point to the same channel, only the offset with the
      --  lowest x value is considered for the subtraction. Ex: if
      --  OFFSET1_CH[4:0]=4 and OFFSET2_CH[4:0]=4, this is OFFSET1[25:0] which
      --  is subtracted when converting channel 4.
      OFFSET1    : ADC_OFR1_OFFSET1_Field := 16#0#;
      --  Channel selection for the Data offset y These bits are written by
      --  software to define the channel to which the offset programmed into
      --  bits OFFSETy[25:0] will apply. Note: The software is allowed to write
      --  these bits only when ADSTART=0 and JADSTART=0 (which ensures that no
      --  conversion is ongoing).
      OFFSET1_CH : ADC_OFR1_OFFSET1_CH_Field := 16#0#;
      --  Signed saturation Enable This bit is written by software to enable or
      --  disable the Signed saturation feature. This bit can be enabled only
      --  for 8-bit and 16-bit data format (see alignment and offset (ADC_DR,
      --  ADC_JDRy, OFFSETy, OFFSETy_CH, OVSS, LSHIFT, RSHIFT, SSATE) for
      --  details). Note: The software is allowed to write this bit only when
      --  ADSTART=0 and JADSTART=0 (which ensures that no conversion is
      --  ongoing).
      SSATE      : ADC_OFR1_SSATE_Field := A0B.STM32H723.SVD.ADC.B_0x0;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_OFR1_Register use record
      OFFSET1    at 0 range 0 .. 25;
      OFFSET1_CH at 0 range 26 .. 30;
      SSATE      at 0 range 31 .. 31;
   end record;

   subtype ADC_OFR2_OFFSET2_Field is A0B.Types.SVD.UInt26;
   subtype ADC_OFR2_OFFSET2_CH_Field is A0B.Types.SVD.UInt5;

   --  Signed saturation Enable This bit is written by software to enable or
   --  disable the Signed saturation feature. This bit can be enabled only for
   --  8-bit and 16-bit data format (see alignment and offset (ADC_DR,
   --  ADC_JDRy, OFFSETy, OFFSETy_CH, OVSS, LSHIFT, RSHIFT, SSATE) for
   --  details). Note: The software is allowed to write this bit only when
   --  ADSTART=0 and JADSTART=0 (which ensures that no conversion is ongoing).
   type ADC_OFR2_SSATE_Field is
     (--  Offset is subtracted maintaining data integrity and extending result size
--  (9-bit and 17-bit signed format).
      B_0x0,
      --  Offset is subtracted and result is saturated to maintain result size.
      B_0x1)
     with Size => 1;
   for ADC_OFR2_SSATE_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  ADC injected channel 2 offset register
   type ADC_OFR2_Register is record
      --  Data offset y for the channel programmed into bits OFFSETy_CH[4:0]
      --  These bits are written by software to define the offset y to be
      --  subtracted from the raw converted data when converting a channel (can
      --  be regular or injected). The channel to which applies the data offset
      --  y must be programmed in the bits OFFSETy_CH[4:0]. The conversion
      --  result can be read from in the ADC_DR (regular conversion) or from in
      --  the ADC_JDRyi registers (injected conversion). When OFFSETy[25:0]
      --  bitfield is reset, the offset compensation is disabled. Note: The
      --  software is allowed to write these bits only when ADSTART=0 and
      --  JADSTART=0 (which ensures that no conversion is ongoing). If several
      --  offset (OFFSETy) point to the same channel, only the offset with the
      --  lowest x value is considered for the subtraction. Ex: if
      --  OFFSET1_CH[4:0]=4 and OFFSET2_CH[4:0]=4, this is OFFSET1[25:0] which
      --  is subtracted when converting channel 4.
      OFFSET2    : ADC_OFR2_OFFSET2_Field := 16#0#;
      --  Channel selection for the Data offset y These bits are written by
      --  software to define the channel to which the offset programmed into
      --  bits OFFSETy[25:0] will apply. Note: The software is allowed to write
      --  these bits only when ADSTART=0 and JADSTART=0 (which ensures that no
      --  conversion is ongoing).
      OFFSET2_CH : ADC_OFR2_OFFSET2_CH_Field := 16#0#;
      --  Signed saturation Enable This bit is written by software to enable or
      --  disable the Signed saturation feature. This bit can be enabled only
      --  for 8-bit and 16-bit data format (see alignment and offset (ADC_DR,
      --  ADC_JDRy, OFFSETy, OFFSETy_CH, OVSS, LSHIFT, RSHIFT, SSATE) for
      --  details). Note: The software is allowed to write this bit only when
      --  ADSTART=0 and JADSTART=0 (which ensures that no conversion is
      --  ongoing).
      SSATE      : ADC_OFR2_SSATE_Field := A0B.STM32H723.SVD.ADC.B_0x0;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_OFR2_Register use record
      OFFSET2    at 0 range 0 .. 25;
      OFFSET2_CH at 0 range 26 .. 30;
      SSATE      at 0 range 31 .. 31;
   end record;

   subtype ADC_OFR3_OFFSET3_Field is A0B.Types.SVD.UInt26;
   subtype ADC_OFR3_OFFSET3_CH_Field is A0B.Types.SVD.UInt5;

   --  Signed saturation Enable This bit is written by software to enable or
   --  disable the Signed saturation feature. This bit can be enabled only for
   --  8-bit and 16-bit data format (see alignment and offset (ADC_DR,
   --  ADC_JDRy, OFFSETy, OFFSETy_CH, OVSS, LSHIFT, RSHIFT, SSATE) for
   --  details). Note: The software is allowed to write this bit only when
   --  ADSTART=0 and JADSTART=0 (which ensures that no conversion is ongoing).
   type ADC_OFR3_SSATE_Field is
     (--  Offset is subtracted maintaining data integrity and extending result size
--  (9-bit and 17-bit signed format).
      B_0x0,
      --  Offset is subtracted and result is saturated to maintain result size.
      B_0x1)
     with Size => 1;
   for ADC_OFR3_SSATE_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  ADC injected channel 3 offset register
   type ADC_OFR3_Register is record
      --  Data offset y for the channel programmed into bits OFFSETy_CH[4:0]
      --  These bits are written by software to define the offset y to be
      --  subtracted from the raw converted data when converting a channel (can
      --  be regular or injected). The channel to which applies the data offset
      --  y must be programmed in the bits OFFSETy_CH[4:0]. The conversion
      --  result can be read from in the ADC_DR (regular conversion) or from in
      --  the ADC_JDRyi registers (injected conversion). When OFFSETy[25:0]
      --  bitfield is reset, the offset compensation is disabled. Note: The
      --  software is allowed to write these bits only when ADSTART=0 and
      --  JADSTART=0 (which ensures that no conversion is ongoing). If several
      --  offset (OFFSETy) point to the same channel, only the offset with the
      --  lowest x value is considered for the subtraction. Ex: if
      --  OFFSET1_CH[4:0]=4 and OFFSET2_CH[4:0]=4, this is OFFSET1[25:0] which
      --  is subtracted when converting channel 4.
      OFFSET3    : ADC_OFR3_OFFSET3_Field := 16#0#;
      --  Channel selection for the Data offset y These bits are written by
      --  software to define the channel to which the offset programmed into
      --  bits OFFSETy[25:0] will apply. Note: The software is allowed to write
      --  these bits only when ADSTART=0 and JADSTART=0 (which ensures that no
      --  conversion is ongoing).
      OFFSET3_CH : ADC_OFR3_OFFSET3_CH_Field := 16#0#;
      --  Signed saturation Enable This bit is written by software to enable or
      --  disable the Signed saturation feature. This bit can be enabled only
      --  for 8-bit and 16-bit data format (see alignment and offset (ADC_DR,
      --  ADC_JDRy, OFFSETy, OFFSETy_CH, OVSS, LSHIFT, RSHIFT, SSATE) for
      --  details). Note: The software is allowed to write this bit only when
      --  ADSTART=0 and JADSTART=0 (which ensures that no conversion is
      --  ongoing).
      SSATE      : ADC_OFR3_SSATE_Field := A0B.STM32H723.SVD.ADC.B_0x0;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_OFR3_Register use record
      OFFSET3    at 0 range 0 .. 25;
      OFFSET3_CH at 0 range 26 .. 30;
      SSATE      at 0 range 31 .. 31;
   end record;

   subtype ADC_OFR4_OFFSET4_Field is A0B.Types.SVD.UInt26;
   subtype ADC_OFR4_OFFSET4_CH_Field is A0B.Types.SVD.UInt5;

   --  Signed saturation Enable This bit is written by software to enable or
   --  disable the Signed saturation feature. This bit can be enabled only for
   --  8-bit and 16-bit data format (see alignment and offset (ADC_DR,
   --  ADC_JDRy, OFFSETy, OFFSETy_CH, OVSS, LSHIFT, RSHIFT, SSATE) for
   --  details). Note: The software is allowed to write this bit only when
   --  ADSTART=0 and JADSTART=0 (which ensures that no conversion is ongoing).
   type ADC_OFR4_SSATE_Field is
     (--  Offset is subtracted maintaining data integrity and extending result size
--  (9-bit and 17-bit signed format).
      B_0x0,
      --  Offset is subtracted and result is saturated to maintain result size.
      B_0x1)
     with Size => 1;
   for ADC_OFR4_SSATE_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  ADC injected channel 4 offset register
   type ADC_OFR4_Register is record
      --  Data offset y for the channel programmed into bits OFFSETy_CH[4:0]
      --  These bits are written by software to define the offset y to be
      --  subtracted from the raw converted data when converting a channel (can
      --  be regular or injected). The channel to which applies the data offset
      --  y must be programmed in the bits OFFSETy_CH[4:0]. The conversion
      --  result can be read from in the ADC_DR (regular conversion) or from in
      --  the ADC_JDRyi registers (injected conversion). When OFFSETy[25:0]
      --  bitfield is reset, the offset compensation is disabled. Note: The
      --  software is allowed to write these bits only when ADSTART=0 and
      --  JADSTART=0 (which ensures that no conversion is ongoing). If several
      --  offset (OFFSETy) point to the same channel, only the offset with the
      --  lowest x value is considered for the subtraction. Ex: if
      --  OFFSET1_CH[4:0]=4 and OFFSET2_CH[4:0]=4, this is OFFSET1[25:0] which
      --  is subtracted when converting channel 4.
      OFFSET4    : ADC_OFR4_OFFSET4_Field := 16#0#;
      --  Channel selection for the Data offset y These bits are written by
      --  software to define the channel to which the offset programmed into
      --  bits OFFSETy[25:0] will apply. Note: The software is allowed to write
      --  these bits only when ADSTART=0 and JADSTART=0 (which ensures that no
      --  conversion is ongoing).
      OFFSET4_CH : ADC_OFR4_OFFSET4_CH_Field := 16#0#;
      --  Signed saturation Enable This bit is written by software to enable or
      --  disable the Signed saturation feature. This bit can be enabled only
      --  for 8-bit and 16-bit data format (see alignment and offset (ADC_DR,
      --  ADC_JDRy, OFFSETy, OFFSETy_CH, OVSS, LSHIFT, RSHIFT, SSATE) for
      --  details). Note: The software is allowed to write this bit only when
      --  ADSTART=0 and JADSTART=0 (which ensures that no conversion is
      --  ongoing).
      SSATE      : ADC_OFR4_SSATE_Field := A0B.STM32H723.SVD.ADC.B_0x0;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_OFR4_Register use record
      OFFSET4    at 0 range 0 .. 25;
      OFFSET4_CH at 0 range 26 .. 30;
      SSATE      at 0 range 31 .. 31;
   end record;

   subtype ADC_AWD2CR_AWD2CH_Field is A0B.Types.SVD.UInt20;

   --  ADC analog watchdog 2 configuration register	
   type ADC_AWD2CR_Register is record
      --  Analog watchdog 2 channel selection These bits are set and cleared by
      --  software. They enable and select the input channels to be guarded by
      --  the analog watchdog 2. AWD2CH[i] = 0: ADC analog input channel-i is
      --  not monitored by AWD2 AWD2CH[i] = 1: ADC analog input channel-i is
      --  monitored by AWD2 When AWD2CH[19:0] = 000..0, the analog Watchdog 2
      --  is disabled Note: The channels selected by AWD2CH must be also
      --  selected into the SQRi or JSQRi registers. The software is allowed to
      --  write these bits only when ADSTART=0 and JADSTART=0 (which ensures
      --  that no conversion is ongoing).
      AWD2CH         : ADC_AWD2CR_AWD2CH_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : A0B.Types.SVD.UInt12 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_AWD2CR_Register use record
      AWD2CH         at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ADC_AWD3CR_AWD3CH_Field is A0B.Types.SVD.UInt20;

   --  ADC analog watchdog 3 configuration register	
   type ADC_AWD3CR_Register is record
      --  Analog watchdog 3 channel selection These bits are set and cleared by
      --  software. They enable and select the input channels to be guarded by
      --  the analog watchdog 3. AWD3CH[i] = 0: ADC analog input channel-i is
      --  not monitored by AWD3 AWD3CH[i] = 1: ADC analog input channel-i is
      --  monitored by AWD3 When AWD3CH[19:0] = 000..0, the analog Watchdog 3
      --  is disabled Note: The channels selected by AWD3CH must be also
      --  selected into the SQRi or JSQRi registers. The software is allowed to
      --  write these bits only when ADSTART=0 and JADSTART=0 (which ensures
      --  that no conversion is ongoing).
      AWD3CH         : ADC_AWD3CR_AWD3CH_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : A0B.Types.SVD.UInt12 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_AWD3CR_Register use record
      AWD3CH         at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ADC_LTR2_LTR2_Field is A0B.Types.SVD.UInt26;

   --  ADC watchdog lower threshold register 2
   type ADC_LTR2_Register is record
      --  Analog watchdog 2 lower threshold These bits are written by software
      --  to define the lower threshold for the analog watchdog 2. Refer to
      --  AWD2CH, AWD3CH, AWD_HTRy, AWD_LTRy, AWDy). Note: The software is
      --  allowed to write these bits only when ADSTART=0 and JADSTART=0 (which
      --  ensures that no conversion is ongoing).
      LTR2           : ADC_LTR2_LTR2_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : A0B.Types.SVD.UInt6 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_LTR2_Register use record
      LTR2           at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype ADC_HTR2_HTR2_Field is A0B.Types.SVD.UInt26;

   --  ADC watchdog higher threshold register 2
   type ADC_HTR2_Register is record
      --  Analog watchdog 2 higher threshold These bits are written by software
      --  to define the higher threshold for the analog watchdog 2. Refer to
      --  AWD2CH, AWD3CH, AWD_HTRy, AWD_LTRy, AWDy). Note: The software is
      --  allowed to write these bits only when ADSTART=0 and JADSTART=0 (which
      --  ensures that no conversion is ongoing).
      HTR2           : ADC_HTR2_HTR2_Field := 16#3FFFFFF#;
      --  unspecified
      Reserved_26_31 : A0B.Types.SVD.UInt6 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_HTR2_Register use record
      HTR2           at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype ADC_LTR3_LTR3_Field is A0B.Types.SVD.UInt26;

   --  ADC watchdog lower threshold register 3
   type ADC_LTR3_Register is record
      --  Analog watchdog 3 lower threshold These bits are written by software
      --  to define the lower threshold for the analog watchdog 3. Refer to
      --  AWD2CH, AWD3CH, AWD_HTRy, AWD_LTRy, AWDy) Note: The software is
      --  allowed to write these bits only when ADSTART=0 and JADSTART=0 (which
      --  ensures that no conversion is ongoing).
      LTR3           : ADC_LTR3_LTR3_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : A0B.Types.SVD.UInt6 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_LTR3_Register use record
      LTR3           at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype ADC_HTR3_HTR3_Field is A0B.Types.SVD.UInt26;

   --  ADC watchdog higher threshold register 3
   type ADC_HTR3_Register is record
      --  Analog watchdog 3 higher threshold These bits are written by software
      --  to define the higher threshold for the analog watchdog 3. Refer to
      --  AWD2CH, AWD3CH, AWD_HTRy, AWD_LTRy, AWDy) Note: The software is
      --  allowed to write these bits only when ADSTART=0 and JADSTART=0 (which
      --  ensures that no conversion is ongoing).
      HTR3           : ADC_HTR3_HTR3_Field := 16#3FFFFFF#;
      --  unspecified
      Reserved_26_31 : A0B.Types.SVD.UInt6 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_HTR3_Register use record
      HTR3           at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype ADC_DIFSEL_DIFSEL_Field is A0B.Types.SVD.UInt20;

   --  ADC differential mode selection register
   type ADC_DIFSEL_Register is record
      --  Differential mode for channels 19 to 0 These bits are set and cleared
      --  by software. They allow to select if a channel is configured as
      --  single ended or differential mode. DIFSEL[i] = 0: ADC analog input
      --  channel-i is configured in single ended mode DIFSEL[i] = 1: ADC
      --  analog input channel-i is configured in differential mode Note: The
      --  software is allowed to write these bits only when the ADC is disabled
      --  (ADCAL=0, JADSTART=0, JADSTP=0, ADSTART=0, ADSTP=0, ADDIS=0 and
      --  ADEN=0).
      DIFSEL         : ADC_DIFSEL_DIFSEL_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : A0B.Types.SVD.UInt12 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_DIFSEL_Register use record
      DIFSEL         at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ADC_CALFACT_CALFACT_S_Field is A0B.Types.SVD.UInt11;
   subtype ADC_CALFACT_CALFACT_D_Field is A0B.Types.SVD.UInt11;

   --  ADC calibration factors register
   type ADC_CALFACT_Register is record
      --  Calibration Factors In Single-Ended mode These bits are written by
      --  hardware or by software. Once a single-ended inputs calibration is
      --  complete, they are updated by hardware with the calibration factors.
      --  Software can write these bits with a new calibration factor. If the
      --  new calibration factor is different from the current one stored into
      --  the analog ADC, it will then be applied once a new single-ended
      --  conversion is launched. Note: The software is allowed to write these
      --  bits only when ADEN=1, ADSTART=0 and JADSTART=0 (ADC is enabled and
      --  no calibration is ongoing and no conversion is ongoing).
      CALFACT_S      : ADC_CALFACT_CALFACT_S_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : A0B.Types.SVD.UInt5 := 16#0#;
      --  Calibration Factors in differential mode These bits are written by
      --  hardware or by software. Once a differential inputs calibration is
      --  complete, they are updated by hardware with the calibration factors.
      --  Software can write these bits with a new calibration factor. If the
      --  new calibration factor is different from the current one stored into
      --  the analog ADC, it will then be applied once a new differential
      --  conversion is launched. Note: The software is allowed to write these
      --  bits only when ADEN=1, ADSTART=0 and JADSTART=0 (ADC is enabled and
      --  no calibration is ongoing and no conversion is ongoing).
      CALFACT_D      : ADC_CALFACT_CALFACT_D_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : A0B.Types.SVD.UInt5 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_CALFACT_Register use record
      CALFACT_S      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      CALFACT_D      at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype ADC_CALFACT2_LINCALFACT_Field is A0B.Types.SVD.UInt30;

   --  ADC calibration factor register 2
   type ADC_CALFACT2_Register is record
      --  Linearity Calibration Factor These bits are written by hardware or by
      --  software. They hold 30-bit out of the 160-bit linearity calibration
      --  factor. Once a single-ended inputs calibration is complete, they are
      --  updated by hardware with the calibration factors. Software can write
      --  these bits with a new calibration factor. If the new calibration
      --  factor is different from the current one stored into the analog ADC,
      --  it will then be applied once a new single-ended calibration is
      --  launched. Note: The software is allowed to write these bits only when
      --  ADEN=1, ADSTART=0 and JADSTART=0 (ADC is enabled and no calibration
      --  is ongoing and no conversion is ongoing).
      LINCALFACT     : ADC_CALFACT2_LINCALFACT_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : A0B.Types.SVD.UInt2 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_CALFACT2_Register use record
      LINCALFACT     at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  ADC Common status register
   type CSR_Register is record
      --  Read-only. Master ADC ready
      ADRDY_MST      : Boolean;
      --  Read-only. End of Sampling phase flag of the master ADC
      EOSMP_MST      : Boolean;
      --  Read-only. End of regular conversion of the master ADC
      EOC_MST        : Boolean;
      --  Read-only. End of regular sequence flag of the master ADC
      EOS_MST        : Boolean;
      --  Read-only. Overrun flag of the master ADC
      OVR_MST        : Boolean;
      --  Read-only. End of injected conversion flag of the master ADC
      JEOC_MST       : Boolean;
      --  Read-only. End of injected sequence flag of the master ADC
      JEOS_MST       : Boolean;
      --  Read-only. Analog watchdog 1 flag of the master ADC
      AWD1_MST       : Boolean;
      --  Read-only. Analog watchdog 2 flag of the master ADC
      AWD2_MST       : Boolean;
      --  Read-only. Analog watchdog 3 flag of the master ADC
      AWD3_MST       : Boolean;
      --  Read-only. Injected Context Queue Overflow flag of the master ADC
      JQOVF_MST      : Boolean;
      --  unspecified
      Reserved_11_15 : A0B.Types.SVD.UInt5;
      --  Read-only. Slave ADC ready
      ADRDY_SLV      : Boolean;
      --  Read-only. End of Sampling phase flag of the slave ADC
      EOSMP_SLV      : Boolean;
      --  Read-only. End of regular conversion of the slave ADC
      EOC_SLV        : Boolean;
      --  Read-only. End of regular sequence flag of the slave ADC
      EOS_SLV        : Boolean;
      --  Read-only. Overrun flag of the slave ADC
      OVR_SLV        : Boolean;
      --  Read-only. End of injected conversion flag of the slave ADC
      JEOC_SLV       : Boolean;
      --  Read-only. End of injected sequence flag of the slave ADC
      JEOS_SLV       : Boolean;
      --  Read-only. Analog watchdog 1 flag of the slave ADC
      AWD1_SLV       : Boolean;
      --  Read-only. Analog watchdog 2 flag of the slave ADC
      AWD2_SLV       : Boolean;
      --  Read-only. Analog watchdog 3 flag of the slave ADC
      AWD3_SLV       : Boolean;
      --  Read-only. Injected Context Queue Overflow flag of the slave ADC
      JQOVF_SLV      : Boolean;
      --  unspecified
      Reserved_27_31 : A0B.Types.SVD.UInt5;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      ADRDY_MST      at 0 range 0 .. 0;
      EOSMP_MST      at 0 range 1 .. 1;
      EOC_MST        at 0 range 2 .. 2;
      EOS_MST        at 0 range 3 .. 3;
      OVR_MST        at 0 range 4 .. 4;
      JEOC_MST       at 0 range 5 .. 5;
      JEOS_MST       at 0 range 6 .. 6;
      AWD1_MST       at 0 range 7 .. 7;
      AWD2_MST       at 0 range 8 .. 8;
      AWD3_MST       at 0 range 9 .. 9;
      JQOVF_MST      at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      ADRDY_SLV      at 0 range 16 .. 16;
      EOSMP_SLV      at 0 range 17 .. 17;
      EOC_SLV        at 0 range 18 .. 18;
      EOS_SLV        at 0 range 19 .. 19;
      OVR_SLV        at 0 range 20 .. 20;
      JEOC_SLV       at 0 range 21 .. 21;
      JEOS_SLV       at 0 range 22 .. 22;
      AWD1_SLV       at 0 range 23 .. 23;
      AWD2_SLV       at 0 range 24 .. 24;
      AWD3_SLV       at 0 range 25 .. 25;
      JQOVF_SLV      at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype CCR_DUAL_Field is A0B.Types.SVD.UInt5;
   subtype CCR_DELAY_Field is A0B.Types.SVD.UInt4;
   subtype CCR_DAMDF_Field is A0B.Types.SVD.UInt2;
   subtype CCR_CKMODE_Field is A0B.Types.SVD.UInt2;
   subtype CCR_PRESC_Field is A0B.Types.SVD.UInt4;

   --  ADC common control register
   type CCR_Register is record
      --  Dual ADC mode selection
      DUAL           : CCR_DUAL_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : A0B.Types.SVD.UInt3 := 16#0#;
      --  Delay between 2 sampling phases
      DELAY_k        : CCR_DELAY_Field := 16#0#;
      --  unspecified
      Reserved_12_13 : A0B.Types.SVD.UInt2 := 16#0#;
      --  Dual ADC Mode Data Format
      DAMDF          : CCR_DAMDF_Field := 16#0#;
      --  ADC clock mode
      CKMODE         : CCR_CKMODE_Field := 16#0#;
      --  ADC prescaler
      PRESC          : CCR_PRESC_Field := 16#0#;
      --  VREFINT enable
      VREFEN         : Boolean := False;
      --  Temperature sensor enable
      VSENSEEN       : Boolean := False;
      --  VBAT enable
      VBATEN         : Boolean := False;
      --  unspecified
      Reserved_25_31 : A0B.Types.SVD.UInt7 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      DUAL           at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DELAY_k        at 0 range 8 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      DAMDF          at 0 range 14 .. 15;
      CKMODE         at 0 range 16 .. 17;
      PRESC          at 0 range 18 .. 21;
      VREFEN         at 0 range 22 .. 22;
      VSENSEEN       at 0 range 23 .. 23;
      VBATEN         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype CDR_RDATA_MST_Field is A0B.Types.SVD.UInt16;
   subtype CDR_RDATA_SLV_Field is A0B.Types.SVD.UInt16;

   --  ADC common regular data register for dual and triple modes
   type CDR_Register is record
      --  Read-only. Regular data of the master ADC
      RDATA_MST : CDR_RDATA_MST_Field;
      --  Read-only. Regular data of the slave ADC
      RDATA_SLV : CDR_RDATA_SLV_Field;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CDR_Register use record
      RDATA_MST at 0 range 0 .. 15;
      RDATA_SLV at 0 range 16 .. 31;
   end record;

   --  ADC interrupt and status register
   type ADC_ISR_Register_1 is record
      --  ADC ready This bit is set by hardware after the ADC has been enabled
      --  (ADEN = 1) and when the ADC reaches a state where it is ready to
      --  accept conversion requests. It is cleared by software writing 1 to
      --  it.
      ADRDY          : ADC_ISR_ADRDY_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  End of sampling flag This bit is set by hardware during the
      --  conversion of any channel (only for regular channels), at the end of
      --  the sampling phase.
      EOSMP          : ADC_ISR_EOSMP_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  End of conversion flag This bit is set by hardware at the end of each
      --  regular conversion of a channel when a new data is available in the
      --  ADC_DR register. It is cleared by software writing 1 to it or by
      --  reading the ADC_DR register
      EOC            : ADC_ISR_EOC_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  End of regular sequence flag This bit is set by hardware at the end
      --  of the conversions of a regular sequence of channels. It is cleared
      --  by software writing 1 to it.
      EOS            : ADC_ISR_EOS_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  ADC overrun This bit is set by hardware when an overrun occurs on a
      --  regular channel, meaning that a new conversion has completed while
      --  the EOC flag was already set. It is cleared by software writing 1 to
      --  it.
      OVR            : ADC_ISR_OVR_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Injected channel end of conversion flag This bit is set by hardware
      --  at the end of each injected conversion of a channel when a new data
      --  is available in the corresponding ADC_JDRy register. It is cleared by
      --  software writing 1 to it or by reading the corresponding ADC_JDRy
      --  register
      JEOC           : ADC_ISR_JEOC_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Injected channel end of sequence flag This bit is set by hardware at
      --  the end of the conversions of all injected channels in the group. It
      --  is cleared by software writing 1 to it.
      JEOS           : ADC_ISR_JEOS_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Analog watchdog 1 flag This bit is set by hardware when the converted
      --  voltage crosses the values programmed in the fields LT1[11:0] and
      --  HT1[11:0] of ADC_TR1 register. It is cleared by software. writing 1
      --  to it.
      AWD1           : ADC_ISR_AWD1_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Analog watchdog 2 flag This bit is set by hardware when the converted
      --  voltage crosses the values programmed in the fields LT2[7:0] and
      --  HT2[7:0] of ADC_TR2 register. It is cleared by software writing 1 to
      --  it.
      AWD2           : ADC_ISR_AWD2_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Analog watchdog 3 flag This bit is set by hardware when the converted
      --  voltage crosses the values programmed in the fields LT3[7:0] and
      --  HT3[7:0] of ADC_TR3 register. It is cleared by software writing 1 to
      --  it.
      AWD3           : ADC_ISR_AWD3_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Injected context queue overflow This bit is set by hardware when an
      --  Overflow of the Injected Queue of Context occurs. It is cleared by
      --  software writing 1 to it. Refer to for more information.
      JQOVF          : ADC_ISR_JQOVF_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  unspecified
      Reserved_11_31 : A0B.Types.SVD.UInt21 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_ISR_Register_1 use record
      ADRDY          at 0 range 0 .. 0;
      EOSMP          at 0 range 1 .. 1;
      EOC            at 0 range 2 .. 2;
      EOS            at 0 range 3 .. 3;
      OVR            at 0 range 4 .. 4;
      JEOC           at 0 range 5 .. 5;
      JEOS           at 0 range 6 .. 6;
      AWD1           at 0 range 7 .. 7;
      AWD2           at 0 range 8 .. 8;
      AWD3           at 0 range 9 .. 9;
      JQOVF          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  ADC control register
   type ADC_CR_Register_1 is record
      --  ADC enable control This bit is set by software to enable the ADC. The
      --  ADC is effectively ready to operate once the flag ADRDY has been set.
      --  It is cleared by hardware when the ADC is disabled, after the
      --  execution of the ADDIS command. Note: The software is allowed to set
      --  ADEN only when all bits of ADC_CR registers are 0 (ADCAL = 0,
      --  JADSTART = 0, ADSTART = 0, ADSTP = 0, ADDIS = 0 and ADEN = 0) except
      --  for bit ADVREGEN which must be 1 (and the software must have wait for
      --  the startup time of the voltage regulator)
      ADEN          : ADC_CR_ADEN_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  ADC disable command This bit is set by software to disable the ADC
      --  (ADDIS command) and put it into power-down state (OFF state). It is
      --  cleared by hardware once the ADC is effectively disabled (ADEN is
      --  also cleared by hardware at this time). Note: The software is allowed
      --  to set ADDIS only when ADEN = 1 and both ADSTART = 0 and JADSTART = 0
      --  (which ensures that no conversion is ongoing)
      ADDIS         : ADC_CR_ADDIS_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  ADC start of regular conversion This bit is set by software to start
      --  ADC conversion of regular channels. Depending on the configuration
      --  bits EXTEN, a conversion immediately starts (software trigger
      --  configuration) or once a regular hardware trigger event occurs
      --  (hardware trigger configuration). It is cleared by hardware: in
      --  Single conversion mode when software trigger is selected (EXTSEL =
      --  0x0): at the assertion of the End of Regular Conversion Sequence
      --  (EOS) flag. in all cases: after the execution of the ADSTP command,
      --  at the same time that ADSTP is cleared by hardware. Note: The
      --  software is allowed to set ADSTART only when ADEN = 1 and ADDIS = 0
      --  (ADC is enabled and there is no pending request to disable the ADC)
      --  In auto-injection mode (JAUTO = 1), regular and auto-injected
      --  conversions are started by setting bit ADSTART (JADSTART must be kept
      --  cleared)
      ADSTART       : ADC_CR_ADSTART_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  ADC start of injected conversion This bit is set by software to start
      --  ADC conversion of injected channels. Depending on the configuration
      --  bits JEXTEN, a conversion immediately starts (software trigger
      --  configuration) or once an injected hardware trigger event occurs
      --  (hardware trigger configuration). It is cleared by hardware: in
      --  Single conversion mode when software trigger is selected (JEXTSEL =
      --  0x0): at the assertion of the End of Injected Conversion Sequence
      --  (JEOS) flag. in all cases: after the execution of the JADSTP command,
      --  at the same time that JADSTP is cleared by hardware. Note: The
      --  software is allowed to set JADSTART only when ADEN = 1 and ADDIS = 0
      --  (ADC is enabled and there is no pending request to disable the ADC).
      --  In auto-injection mode (JAUTO = 1), regular and auto-injected
      --  conversions are started by setting bit ADSTART (JADSTART must be kept
      --  cleared)
      JADSTART      : ADC_CR_JADSTART_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  ADC stop of regular conversion command This bit is set by software to
      --  stop and discard an ongoing regular conversion (ADSTP Command). It is
      --  cleared by hardware when the conversion is effectively discarded and
      --  the ADC regular sequence and triggers can be re-configured. The ADC
      --  is then ready to accept a new start of regular conversions (ADSTART
      --  command). Note: The software is allowed to set ADSTP only when
      --  ADSTART = 1 and ADDIS = 0 (ADC is enabled and eventually converting a
      --  regular conversion and there is no pending request to disable the
      --  ADC). In auto-injection mode (JAUTO = 1), setting ADSTP bit aborts
      --  both regular and injected conversions (do not use JADSTP).
      ADSTP         : ADC_CR_ADSTP_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  ADC stop of injected conversion command This bit is set by software
      --  to stop and discard an ongoing injected conversion (JADSTP Command).
      --  It is cleared by hardware when the conversion is effectively
      --  discarded and the ADC injected sequence and triggers can be
      --  re-configured. The ADC is then ready to accept a new start of
      --  injected conversions (JADSTART command). Note: The software is
      --  allowed to set JADSTP only when JADSTART = 1 and ADDIS = 0 (ADC is
      --  enabled and eventually converting an injected conversion and there is
      --  no pending request to disable the ADC) In Auto-injection mode (JAUTO
      --  = 1), setting ADSTP bit aborts both regular and injected conversions
      --  (do not use JADSTP)
      JADSTP        : ADC_CR_JADSTP_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  unspecified
      Reserved_6_27 : A0B.Types.SVD.UInt22 := 16#0#;
      --  ADC voltage regulator enable This bits is set by software to enable
      --  the ADC voltage regulator. Before performing any operation such as
      --  launching a calibration or enabling the ADC, the ADC voltage
      --  regulator must first be enabled and the software must wait for the
      --  regulator start-up time. For more details about the ADC voltage
      --  regulator enable and disable sequences, refer to (ADVREGEN). The
      --  software can program this bit field only when the ADC is disabled
      --  (ADCAL = 0, JADSTART = 0, ADSTART = 0, ADSTP = 0, ADDIS = 0 and ADEN
      --  = 0).
      ADVREGEN      : ADC_CR_ADVREGEN_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Deep-power-down enable This bit is set and cleared by software to put
      --  the ADC in Deep-power-down mode. Note: The software is allowed to
      --  write this bit only when the ADC is disabled (ADCAL = 0, JADSTART =
      --  0, JADSTP = 0, ADSTART = 0, ADSTP = 0, ADDIS = 0 and ADEN = 0).
      DEEPPWD       : ADC_CR_DEEPPWD_Field := A0B.STM32H723.SVD.ADC.B_0x1;
      --  Differential mode for calibration This bit is set and cleared by
      --  software to configure the Single-ended or Differential inputs mode
      --  for the calibration. Note: The software is allowed to write this bit
      --  only when the ADC is disabled and is not calibrating (ADCAL = 0,
      --  JADSTART = 0, JADSTP = 0, ADSTART = 0, ADSTP = 0, ADDIS = 0 and ADEN
      --  = 0).
      ADCALDIF      : ADC_CR_ADCALDIF_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  ADC calibration This bit is set by software to start the calibration
      --  of the ADC. Program first the bit ADCALDIF to determine if this
      --  calibration applies for Single-ended or Differential inputs mode. It
      --  is cleared by hardware after calibration is complete. Note: The
      --  software is allowed to launch a calibration by setting ADCAL only
      --  when ADEN = 0. The software is allowed to update the calibration
      --  factor by writing ADC_CALFACT only when ADEN = 1 and ADSTART = 0 and
      --  JADSTART = 0 (ADC enabled and no conversion is ongoing)
      ADCAL         : ADC_CR_ADCAL_Field := A0B.STM32H723.SVD.ADC.B_0x0;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_CR_Register_1 use record
      ADEN          at 0 range 0 .. 0;
      ADDIS         at 0 range 1 .. 1;
      ADSTART       at 0 range 2 .. 2;
      JADSTART      at 0 range 3 .. 3;
      ADSTP         at 0 range 4 .. 4;
      JADSTP        at 0 range 5 .. 5;
      Reserved_6_27 at 0 range 6 .. 27;
      ADVREGEN      at 0 range 28 .. 28;
      DEEPPWD       at 0 range 29 .. 29;
      ADCALDIF      at 0 range 30 .. 30;
      ADCAL         at 0 range 31 .. 31;
   end record;

   --  Direct memory access enable This bit is set and cleared by software to
   --  enable the generation of DMA requests. This allows to use the DMA to
   --  manage automatically the converted data. For more details, refer to
   --  conversions using the DMA. Note: The software is allowed to write this
   --  bit only when ADSTART = 0 and JADSTART = 0 (which ensures that no
   --  conversion is ongoing).
   type ADC_CFGR_DMAEN_Field is
     (--  DMA disabled
      B_0x0,
      --  DMA enabled
      B_0x1)
     with Size => 1;
   for ADC_CFGR_DMAEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Direct memory access configuration This bit is set and cleared by
   --  software to select between two DMA modes of operation and is effective
   --  only when DMAEN = 1. For more details, refer to Note: The software is
   --  allowed to write this bit only when ADSTART = 0 and JADSTART = 0 (which
   --  ensures that no conversion is ongoing).
   type ADC_CFGR_DMACFG_Field is
     (--  DMA One Shot mode selected
      B_0x0,
      --  DMA Circular mode selected
      B_0x1)
     with Size => 1;
   for ADC_CFGR_DMACFG_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  DFSDM mode configuration This bit is set and cleared by software to
   --  enable the DFSDM mode. It is effective only when DMAEN = 0. Note: To
   --  make sure no conversion is ongoing, the software is allowed to write
   --  this bit only when ADSTART = 0 and JADSTART = 0.
   type ADC_CFGR_DFSDMCFG_Field is
     (--  DFSDM mode disabled
      B_0x0,
      --  DFSDM mode enabled
      B_0x1)
     with Size => 1;
   for ADC_CFGR_DFSDMCFG_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Data resolution These bits are written by software to select the
   --  resolution of the conversion. Note: The software is allowed to write
   --  these bits only when ADSTART = 0 and JADSTART = 0 (which ensures that no
   --  conversion is ongoing).
   type ADC_CFGR_RES_Field_1 is
     (--  12-bit
      B_0x0,
      --  10-bit
      B_0x1,
      --  8-bit
      B_0x2,
      --  6-bit
      B_0x3)
     with Size => 2;
   for ADC_CFGR_RES_Field_1 use
     (B_0x0 => 0,
      B_0x1 => 1,
      B_0x2 => 2,
      B_0x3 => 3);

--   --  External trigger selection for regular group These bits select the
--   --  external event used to trigger the start of conversion of a regular
--   --  group: ... Note: The software is allowed to write these bits only when
--   --  ADSTART = 0 (which ensures that no regular conversion is ongoing).
--   type ADC_CFGR_EXTSEL0_Field is
--     (--  adc_ext_trg0
--      B_0x0,
--      --  adc_ext_trg1
--      B_0x1,
--      --  adc_ext_trg2
--      B_0x2,
--      --  adc_ext_trg3
--      B_0x3,
--      --  adc_ext_trg4
--      B_0x4,
--      --  adc_ext_trg5
--      B_0x5,
--      --  adc_ext_trg6
--      B_0x6,
--      --  adc_ext_trg7
--      B_0x7,
--      --  adc_ext_trg31
--      B_0x1F)
--     with Size => 5;
--   for ADC_CFGR_EXTSEL0_Field use
--     (B_0x0 => 0,
--      B_0x1 => 1,
--      B_0x2 => 2,
--      B_0x3 => 3,
--      B_0x4 => 4,
--      B_0x5 => 5,
--      B_0x6 => 6,
--      B_0x7 => 7,
--      B_0x1F => 31);
--
--   --  ADC_CFGR_EXTSEL array
--   type ADC_CFGR_EXTSEL_Field_Array is array (0 .. 4)
--     of ADC_CFGR_EXTSEL0_Field
--     with Component_Size => 1, Size => 5;

   --  Type definition for ADC_CFGR_EXTSEL
   type ADC_CFGR_EXTSEL_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTSEL as a value
            Val : A0B.Types.SVD.UInt5;
         when True =>
            --  EXTSEL as an array
            null;
--            Arr : ADC_CFGR_EXTSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for ADC_CFGR_EXTSEL_Field_1 use record
      Val at 0 range 0 .. 4;
--      Arr at 0 range 0 .. 4;
   end record;

   --  Data alignment This bit is set and cleared by software to select right
   --  or left alignment. Refer to register, data alignment and offset (ADC_DR,
   --  OFFSET, OFFSET_CH, ALIGN). Note: The software is allowed to write this
   --  bit only when ADSTART = 0 and JADSTART = 0 (which ensures that no
   --  conversion is ongoing).
   type ADC_CFGR_ALIGN_Field is
     (--  Right alignment
      B_0x0,
      --  Left alignment
      B_0x1)
     with Size => 1;
   for ADC_CFGR_ALIGN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  ADC configuration register
   type ADC_CFGR_Register_1 is record
      --  Direct memory access enable This bit is set and cleared by software
      --  to enable the generation of DMA requests. This allows to use the DMA
      --  to manage automatically the converted data. For more details, refer
      --  to conversions using the DMA. Note: The software is allowed to write
      --  this bit only when ADSTART = 0 and JADSTART = 0 (which ensures that
      --  no conversion is ongoing).
      DMAEN    : ADC_CFGR_DMAEN_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Direct memory access configuration This bit is set and cleared by
      --  software to select between two DMA modes of operation and is
      --  effective only when DMAEN = 1. For more details, refer to Note: The
      --  software is allowed to write this bit only when ADSTART = 0 and
      --  JADSTART = 0 (which ensures that no conversion is ongoing).
      DMACFG   : ADC_CFGR_DMACFG_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  DFSDM mode configuration This bit is set and cleared by software to
      --  enable the DFSDM mode. It is effective only when DMAEN = 0. Note: To
      --  make sure no conversion is ongoing, the software is allowed to write
      --  this bit only when ADSTART = 0 and JADSTART = 0.
      DFSDMCFG : ADC_CFGR_DFSDMCFG_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Data resolution These bits are written by software to select the
      --  resolution of the conversion. Note: The software is allowed to write
      --  these bits only when ADSTART = 0 and JADSTART = 0 (which ensures that
      --  no conversion is ongoing).
      RES      : ADC_CFGR_RES_Field_1 := A0B.STM32H723.SVD.ADC.B_0x0;
      --  External trigger selection for regular group These bits select the
      --  external event used to trigger the start of conversion of a regular
      --  group: ... Note: The software is allowed to write these bits only
      --  when ADSTART = 0 (which ensures that no regular conversion is
      --  ongoing).
      EXTSEL   : ADC_CFGR_EXTSEL_Field_1 := (As_Array => False, Val => 16#0#);
      --  External trigger enable and polarity selection for regular channels
      --  These bits are set and cleared by software to select the external
      --  trigger polarity and enable the trigger of a regular group. Note: The
      --  software is allowed to write these bits only when ADSTART = 0 (which
      --  ensures that no regular conversion is ongoing).
      EXTEN    : ADC_CFGR_EXTEN_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Overrun mode This bit is set and cleared by software and configure
      --  the way data overrun is managed. Note: The software is allowed to
      --  write this bit only when ADSTART = 0 (which ensures that no regular
      --  conversion is ongoing).
      OVRMOD   : ADC_CFGR_OVRMOD_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Single / Continuous conversion mode for regular conversions This bit
      --  is set and cleared by software. If it is set, regular conversion
      --  takes place continuously until it is cleared. Note: It is not
      --  possible to have both Discontinuous mode and Continuous mode enabled:
      --  it is forbidden to set both DISCEN = 1 and CONT = 1. The software is
      --  allowed to write this bit only when ADSTART = 0 (which ensures that
      --  no regular conversion is ongoing).
      CONT     : ADC_CFGR_CONT_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Delayed conversion mode This bit is set and cleared by software to
      --  enable/disable the Auto Delayed Conversion mode.. Note: The software
      --  is allowed to write this bit only when ADSTART = 0 and JADSTART = 0
      --  (which ensures that no conversion is ongoing).
      AUTDLY   : ADC_CFGR_AUTDLY_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Data alignment This bit is set and cleared by software to select
      --  right or left alignment. Refer to register, data alignment and offset
      --  (ADC_DR, OFFSET, OFFSET_CH, ALIGN). Note: The software is allowed to
      --  write this bit only when ADSTART = 0 and JADSTART = 0 (which ensures
      --  that no conversion is ongoing).
      ALIGN    : ADC_CFGR_ALIGN_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Discontinuous mode for regular channels This bit is set and cleared
      --  by software to enable/disable Discontinuous mode for regular
      --  channels. Note: It is not possible to have both Discontinuous mode
      --  and Continuous mode enabled: it is forbidden to set both DISCEN = 1
      --  and CONT = 1. It is not possible to use both auto-injected mode and
      --  Discontinuous mode simultaneously: the bits DISCEN and JDISCEN must
      --  be kept cleared by software when JAUTO is set. The software is
      --  allowed to write this bit only when ADSTART = 0 (which ensures that
      --  no regular conversion is ongoing).
      DISCEN   : ADC_CFGR_DISCEN_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Discontinuous mode channel count These bits are written by software
      --  to define the number of regular channels to be converted in
      --  Discontinuous mode, after receiving an external trigger. ... Note:
      --  The software is allowed to write these bits only when ADSTART = 0
      --  (which ensures that no regular conversion is ongoing).
      DISCNUM  : ADC_CFGR_DISCNUM_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Discontinuous mode on injected channels This bit is set and cleared
      --  by software to enable/disable Discontinuous mode on the injected
      --  channels of a group. Note: The software is allowed to write this bit
      --  only when JADSTART = 0 (which ensures that no injected conversion is
      --  ongoing). It is not possible to use both auto-injected mode and
      --  Discontinuous mode simultaneously: the bits DISCEN and JDISCEN must
      --  be kept cleared by software when JAUTO is set.
      JDISCEN  : ADC_CFGR_JDISCEN_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  JSQR queue mode This bit is set and cleared by software. It defines
      --  how an empty Queue is managed. Refer to for more information. Note:
      --  The software is allowed to write this bit only when JADSTART = 0
      --  (which ensures that no injected conversion is ongoing).
      JQM      : ADC_CFGR_JQM_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Enable the watchdog 1 on a single channel or on all channels This bit
      --  is set and cleared by software to enable the analog watchdog on the
      --  channel identified by the AWD1CH[4:0] bits or on all the channels
      --  Note: The software is allowed to write these bits only when ADSTART =
      --  0 and JADSTART = 0 (which ensures that no conversion is ongoing).
      AWD1SGL  : ADC_CFGR_AWD1SGL_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Analog watchdog 1 enable on regular channels This bit is set and
      --  cleared by software Note: The software is allowed to write this bit
      --  only when ADSTART = 0 (which ensures that no regular conversion is
      --  ongoing).
      AWD1EN   : ADC_CFGR_AWD1EN_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Analog watchdog 1 enable on injected channels This bit is set and
      --  cleared by software Note: The software is allowed to write this bit
      --  only when JADSTART = 0 (which ensures that no injected conversion is
      --  ongoing).
      JAWD1EN  : ADC_CFGR_JAWD1EN_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Automatic injected group conversion This bit is set and cleared by
      --  software to enable/disable automatic injected group conversion after
      --  regular group conversion. Note: The software is allowed to write this
      --  bit only when ADSTART = 0 and JADSTART = 0 (which ensures that no
      --  regular nor injected conversion is ongoing).
      JAUTO    : ADC_CFGR_JAUTO_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Analog watchdog 1 channel selection These bits are set and cleared by
      --  software. They select the input channel to be guarded by the analog
      --  watchdog. ..... others: reserved, must not be used Note: Some
      --  channels are not connected physically. Keep the corresponding
      --  AWD1CH[4:0] setting to the reset value. The channel selected by
      --  AWD1CH must be also selected into the SQRi or JSQRi registers. The
      --  software is allowed to write these bits only when ADSTART = 0 and
      --  JADSTART = 0 (which ensures that no conversion is ongoing).
      AWD1CH   : ADC_CFGR_AWD1CH_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Injected Queue disable These bits are set and cleared by software to
      --  disable the Injected Queue mechanism : Note: The software is allowed
      --  to write this bit only when ADSTART = 0 and JADSTART = 0 (which
      --  ensures that no regular nor injected conversion is ongoing). A set or
      --  reset of JQDIS bit causes the injected queue to be flushed and the
      --  JSQR register is cleared.
      JQDIS    : ADC_CFGR_JQDIS_Field := A0B.STM32H723.SVD.ADC.B_0x1;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_CFGR_Register_1 use record
      DMAEN    at 0 range 0 .. 0;
      DMACFG   at 0 range 1 .. 1;
      DFSDMCFG at 0 range 2 .. 2;
      RES      at 0 range 3 .. 4;
      EXTSEL   at 0 range 5 .. 9;
      EXTEN    at 0 range 10 .. 11;
      OVRMOD   at 0 range 12 .. 12;
      CONT     at 0 range 13 .. 13;
      AUTDLY   at 0 range 14 .. 14;
      ALIGN    at 0 range 15 .. 15;
      DISCEN   at 0 range 16 .. 16;
      DISCNUM  at 0 range 17 .. 19;
      JDISCEN  at 0 range 20 .. 20;
      JQM      at 0 range 21 .. 21;
      AWD1SGL  at 0 range 22 .. 22;
      AWD1EN   at 0 range 23 .. 23;
      JAWD1EN  at 0 range 24 .. 24;
      JAUTO    at 0 range 25 .. 25;
      AWD1CH   at 0 range 26 .. 30;
      JQDIS    at 0 range 31 .. 31;
   end record;

   --  Oversampling ratio This bitfield is set and cleared by software to
   --  define the oversampling ratio. Note: The software is allowed to write
   --  these bits only when ADSTART = 0 (which ensures that no conversion is
   --  ongoing).
   type ADC_CFGR2_OVSR_Field is
     (--  2x
      B_0x0,
      --  4x
      B_0x1,
      --  8x
      B_0x2,
      --  16x
      B_0x3,
      --  32x
      B_0x4,
      --  64x
      B_0x5,
      --  128x
      B_0x6,
      --  256x
      B_0x7)
     with Size => 3;
   for ADC_CFGR2_OVSR_Field use
     (B_0x0 => 0,
      B_0x1 => 1,
      B_0x2 => 2,
      B_0x3 => 3,
      B_0x4 => 4,
      B_0x5 => 5,
      B_0x6 => 6,
      B_0x7 => 7);

   --  Oversampling shift This bitfield is set and cleared by software to
   --  define the right shifting applied to the raw oversampling result. Other
   --  codes reserved Note: The software is allowed to write these bits only
   --  when ADSTART = 0 (which ensures that no conversion is ongoing).
   type ADC_CFGR2_OVSS_Field_1 is
     (--  No shift
      B_0x0,
      --  Shift 1-bit
      B_0x1,
      --  Shift 2-bits
      B_0x2,
      --  Shift 3-bits
      B_0x3,
      --  Shift 4-bits
      B_0x4,
      --  Shift 5-bits
      B_0x5,
      --  Shift 6-bits
      B_0x6,
      --  Shift 7-bits
      B_0x7,
      --  Shift 8-bits
      B_0x8)
     with Size => 4;
   for ADC_CFGR2_OVSS_Field_1 use
     (B_0x0 => 0,
      B_0x1 => 1,
      B_0x2 => 2,
      B_0x3 => 3,
      B_0x4 => 4,
      B_0x5 => 5,
      B_0x6 => 6,
      B_0x7 => 7,
      B_0x8 => 8);

   --  Software trigger bit for sampling time control trigger mode This bit is
   --  set and cleared by software to enable the bulb sampling mode. Note: The
   --  software is allowed to write this bit only when ADSTART = 0 (which
   --  ensures that no conversion is ongoing).
   type ADC_CFGR2_SWTRIG_Field is
     (--  Software trigger starts the conversion for sampling time control trigger
--  mode
      B_0x0,
      --  Software trigger starts the sampling for sampling time control trigger mode
      B_0x1)
     with Size => 1;
   for ADC_CFGR2_SWTRIG_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Bulb sampling mode This bit is set and cleared by software to enable the
   --  bulb sampling mode. SAMPTRIG bit must not be set when the BULB bit is
   --  set. The very first ADC conversion is performed with the sampling time
   --  specified in SMPx bits. Note: The software is allowed to write this bit
   --  only when ADSTART = 0 (which ensures that no conversion is ongoing).
   type ADC_CFGR2_BULB_Field is
     (--  Bulb sampling mode disabled
      B_0x0,
      --  Bulb sampling mode enabled. The sampling period starts just after the
--  previous end of conversion.
      B_0x1)
     with Size => 1;
   for ADC_CFGR2_BULB_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Sampling time control trigger mode This bit is set and cleared by
   --  software to enable the sampling time control trigger mode. The sampling
   --  time starts on the trigger rising edge, and the conversion on the
   --  trigger falling edge. EXTEN bit should be set to 01. BULB bit must not
   --  be set when the SMPTRIG bit is set. When EXTEN bit is set to 00, set
   --  SWTRIG to start the sampling and clear SWTRIG bit to start the
   --  conversion. Note: The software is allowed to write this bit only when
   --  ADSTART = 0 (which ensures that no conversion is ongoing).
   type ADC_CFGR2_SMPTRIG_Field is
     (--  Sampling time control trigger mode disabled
      B_0x0,
      --  Sampling time control trigger mode enabled
      B_0x1)
     with Size => 1;
   for ADC_CFGR2_SMPTRIG_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  ADC configuration register 2
   type ADC_CFGR2_Register_1 is record
      --  Regular Oversampling Enable This bit is set and cleared by software
      --  to enable regular oversampling. Note: The software is allowed to
      --  write this bit only when ADSTART = 0 and JADSTART = 0 (which ensures
      --  that no conversion is ongoing)
      ROVSE          : ADC_CFGR2_ROVSE_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Injected Oversampling Enable This bit is set and cleared by software
      --  to enable injected oversampling. Note: The software is allowed to
      --  write this bit only when ADSTART = 0 and JADSTART = 0 (which ensures
      --  that no conversion is ongoing)
      JOVSE          : ADC_CFGR2_JOVSE_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Oversampling ratio This bitfield is set and cleared by software to
      --  define the oversampling ratio. Note: The software is allowed to write
      --  these bits only when ADSTART = 0 (which ensures that no conversion is
      --  ongoing).
      OVSR           : ADC_CFGR2_OVSR_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Oversampling shift This bitfield is set and cleared by software to
      --  define the right shifting applied to the raw oversampling result.
      --  Other codes reserved Note: The software is allowed to write these
      --  bits only when ADSTART = 0 (which ensures that no conversion is
      --  ongoing).
      OVSS           : ADC_CFGR2_OVSS_Field_1 := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Triggered Regular Oversampling This bit is set and cleared by
      --  software to enable triggered oversampling Note: The software is
      --  allowed to write this bit only when ADSTART = 0 (which ensures that
      --  no conversion is ongoing).
      TROVS          : ADC_CFGR2_TROVS_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Regular Oversampling mode This bit is set and cleared by software to
      --  select the regular oversampling mode. Note: The software is allowed
      --  to write this bit only when ADSTART = 0 (which ensures that no
      --  conversion is ongoing).
      ROVSM          : ADC_CFGR2_ROVSM_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  unspecified
      Reserved_11_24 : A0B.Types.SVD.UInt14 := 16#0#;
      --  Software trigger bit for sampling time control trigger mode This bit
      --  is set and cleared by software to enable the bulb sampling mode.
      --  Note: The software is allowed to write this bit only when ADSTART = 0
      --  (which ensures that no conversion is ongoing).
      SWTRIG         : ADC_CFGR2_SWTRIG_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Bulb sampling mode This bit is set and cleared by software to enable
      --  the bulb sampling mode. SAMPTRIG bit must not be set when the BULB
      --  bit is set. The very first ADC conversion is performed with the
      --  sampling time specified in SMPx bits. Note: The software is allowed
      --  to write this bit only when ADSTART = 0 (which ensures that no
      --  conversion is ongoing).
      BULB           : ADC_CFGR2_BULB_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Sampling time control trigger mode This bit is set and cleared by
      --  software to enable the sampling time control trigger mode. The
      --  sampling time starts on the trigger rising edge, and the conversion
      --  on the trigger falling edge. EXTEN bit should be set to 01. BULB bit
      --  must not be set when the SMPTRIG bit is set. When EXTEN bit is set to
      --  00, set SWTRIG to start the sampling and clear SWTRIG bit to start
      --  the conversion. Note: The software is allowed to write this bit only
      --  when ADSTART = 0 (which ensures that no conversion is ongoing).
      SMPTRIG        : ADC_CFGR2_SMPTRIG_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  unspecified
      Reserved_28_31 : A0B.Types.SVD.UInt4 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_CFGR2_Register_1 use record
      ROVSE          at 0 range 0 .. 0;
      JOVSE          at 0 range 1 .. 1;
      OVSR           at 0 range 2 .. 4;
      OVSS           at 0 range 5 .. 8;
      TROVS          at 0 range 9 .. 9;
      ROVSM          at 0 range 10 .. 10;
      Reserved_11_24 at 0 range 11 .. 24;
      SWTRIG         at 0 range 25 .. 25;
      BULB           at 0 range 26 .. 26;
      SMPTRIG        at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Addition of one clock cycle to the sampling time. To make sure no
   --  conversion is ongoing, the software is allowed to write this bit only
   --  when ADSTART = 0 and JADSTART = 0.
   type ADC_SMPR1_SMPPLUS_Field is
     (--  The sampling time remains set to 2.5 ADC clock cycles remains
      B_0x0,
      --  2.5 ADC clock cycle sampling time becomes 3.5 ADC clock cycles for the
--  ADC_SMPR1 and ADC_SMPR2 registers.
      B_0x1)
     with Size => 1;
   for ADC_SMPR1_SMPPLUS_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  ADC sample time register 1
   type ADC_SMPR1_Register_1 is record
      --  Channel x sampling time selection These bits are written by software
      --  to select the sampling time individually for each channel. During
      --  sample cycles, the channel selection bits must remain unchanged.
      --  Note: The software is allowed to write these bits only when ADSTART =
      --  0 and JADSTART = 0 (which ensures that no conversion is ongoing).
      --  Some channels are not connected physically. Keep the corresponding
      --  SMPx[2:0] setting to the reset value.
      SMP            : ADC_SMPR1_SMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_30 : A0B.Types.SVD.Bit := 16#0#;
      --  Addition of one clock cycle to the sampling time. To make sure no
      --  conversion is ongoing, the software is allowed to write this bit only
      --  when ADSTART = 0 and JADSTART = 0.
      SMPPLUS        : ADC_SMPR1_SMPPLUS_Field := A0B.STM32H723.SVD.ADC.B_0x0;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_SMPR1_Register_1 use record
      SMP            at 0 range 0 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      SMPPLUS        at 0 range 31 .. 31;
   end record;

   --  ADC_SMPR2_SMP array
   type ADC_SMPR2_SMP_Field_Array_1 is array (10 .. 18)
     of ADC_SMPR2_SMP10_Field
     with Component_Size => 3, Size => 27;

   --  Type definition for ADC_SMPR2_SMP
   type ADC_SMPR2_SMP_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SMP as a value
            Val : A0B.Types.SVD.UInt27;
         when True =>
            --  SMP as an array
            Arr : ADC_SMPR2_SMP_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 27;

   for ADC_SMPR2_SMP_Field_1 use record
      Val at 0 range 0 .. 26;
      Arr at 0 range 0 .. 26;
   end record;

   --  ADC sample time register 2
   type ADC_SMPR2_Register_1 is record
      --  Channel x sampling time selection These bits are written by software
      --  to select the sampling time individually for each channel. During
      --  sampling cycles, the channel selection bits must remain unchanged.
      --  Note: The software is allowed to write these bits only when ADSTART =
      --  0 and JADSTART = 0 (which ensures that no conversion is ongoing).
      --  Some channels are not connected physically. Keep the corresponding
      --  SMPx[2:0] setting to the reset value.
      SMP            : ADC_SMPR2_SMP_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_27_31 : A0B.Types.SVD.UInt5 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_SMPR2_Register_1 use record
      SMP            at 0 range 0 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype ADC_TR1_LT1_Field is A0B.Types.SVD.UInt12;

   --  Analog watchdog filtering parameter This bit is set and cleared by
   --  software. ... Note: The software is allowed to write this bit only when
   --  ADSTART = 0 (which ensures that no conversion is ongoing).
   type ADC_TR1_AWDFILT_Field is
     (--  No filtering
      B_0x0,
      --  two consecutive detection generates an AWDx flag or an interrupt
      B_0x1,
      --  Eight consecutive detection generates an AWDx flag or an interrupt
      B_0x7)
     with Size => 3;
   for ADC_TR1_AWDFILT_Field use
     (B_0x0 => 0,
      B_0x1 => 1,
      B_0x7 => 7);

   subtype ADC_TR1_HT1_Field is A0B.Types.SVD.UInt12;

   --  ADC watchdog threshold register 1
   type ADC_TR1_Register is record
      --  Analog watchdog 1 lower threshold These bits are written by software
      --  to define the lower threshold for the analog watchdog 1. Refer to
      --  AWD2CH, AWD3CH, AWD_HTx, AWD_LTx, AWDx) Note: The software is allowed
      --  to write these bits only when ADSTART = 0 and JADSTART = 0 (which
      --  ensures that no conversion is ongoing).
      LT1            : ADC_TR1_LT1_Field := 16#0#;
      --  Analog watchdog filtering parameter This bit is set and cleared by
      --  software. ... Note: The software is allowed to write this bit only
      --  when ADSTART = 0 (which ensures that no conversion is ongoing).
      AWDFILT        : ADC_TR1_AWDFILT_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  unspecified
      Reserved_15_15 : A0B.Types.SVD.Bit := 16#0#;
      --  Analog watchdog 1 higher threshold These bits are written by software
      --  to define the higher threshold for the analog watchdog 1. Refer to
      --  AWD2CH, AWD3CH, AWD_HTx, AWD_LTx, AWDx) Note: The software is allowed
      --  to write these bits only when ADSTART = 0 and JADSTART = 0 (which
      --  ensures that no conversion is ongoing).
      HT1            : ADC_TR1_HT1_Field := 16#FFF#;
      --  unspecified
      Reserved_28_31 : A0B.Types.SVD.UInt4 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_TR1_Register use record
      LT1            at 0 range 0 .. 11;
      AWDFILT        at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HT1            at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype ADC_TR2_LT2_Field is A0B.Types.SVD.Byte;
   subtype ADC_TR2_HT2_Field is A0B.Types.SVD.Byte;

   --  ADC watchdog threshold register 2
   type ADC_TR2_Register is record
      --  Analog watchdog 2 lower threshold These bits are written by software
      --  to define the lower threshold for the analog watchdog 2. Refer to
      --  AWD2CH, AWD3CH, AWD_HTx, AWD_LTx, AWDx) Note: The software is allowed
      --  to write these bits only when ADSTART = 0 and JADSTART = 0 (which
      --  ensures that no conversion is ongoing).
      LT2            : ADC_TR2_LT2_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : A0B.Types.SVD.Byte := 16#0#;
      --  Analog watchdog 2 higher threshold These bits are written by software
      --  to define the higher threshold for the analog watchdog 2. Refer to
      --  AWD2CH, AWD3CH, AWD_HTx, AWD_LTx, AWDx) Note: The software is allowed
      --  to write these bits only when ADSTART = 0 and JADSTART = 0 (which
      --  ensures that no conversion is ongoing).
      HT2            : ADC_TR2_HT2_Field := 16#FF#;
      --  unspecified
      Reserved_24_31 : A0B.Types.SVD.Byte := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_TR2_Register use record
      LT2            at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      HT2            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype ADC_TR3_LT3_Field is A0B.Types.SVD.Byte;
   subtype ADC_TR3_HT3_Field is A0B.Types.SVD.Byte;

   --  ADC watchdog threshold register 3
   type ADC_TR3_Register is record
      --  Analog watchdog 3 lower threshold These bits are written by software
      --  to define the lower threshold for the analog watchdog 3. This
      --  watchdog compares the 8-bit of LT3 with the 8 MSB of the converted
      --  data. Note: The software is allowed to write these bits only when
      --  ADSTART = 0 and JADSTART = 0 (which ensures that no conversion is
      --  ongoing).
      LT3            : ADC_TR3_LT3_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : A0B.Types.SVD.Byte := 16#0#;
      --  Analog watchdog 3 higher threshold These bits are written by software
      --  to define the higher threshold for the analog watchdog 3. Refer to
      --  AWD2CH, AWD3CH, AWD_HTx, AWD_LTx, AWDx) Note: The software is allowed
      --  to write these bits only when ADSTART = 0 and JADSTART = 0 (which
      --  ensures that no conversion is ongoing).
      HT3            : ADC_TR3_HT3_Field := 16#FF#;
      --  unspecified
      Reserved_24_31 : A0B.Types.SVD.Byte := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_TR3_Register use record
      LT3            at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      HT3            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype ADC_DR_RDATA_Field is A0B.Types.SVD.UInt16;

   --  ADC regular data register
   type ADC_DR_Register is record
      --  Read-only. Regular data converted These bits are read-only. They
      --  contain the conversion result from the last converted regular
      --  channel. The data are left- or right-aligned as described in .
      RDATA          : ADC_DR_RDATA_Field;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_DR_Register use record
      RDATA          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ADC_OFR_OFFSET_Field is A0B.Types.SVD.UInt12;

   --  Positive offset This bit is set and cleared by software to enable the
   --  positive offset. Note: The software is allowed to write these bits only
   --  when ADSTART = 0 and JADSTART = 0 (which ensures that no conversion is
   --  ongoing).
   type ADC_OFR1_OFFSETPOS_Field is
     (--  Negative offset
      B_0x0,
      --  Positive offset
      B_0x1)
     with Size => 1;
   for ADC_OFR1_OFFSETPOS_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Saturation enable This bit is set and cleared by software to enable the
   --  saturation at 0x000 and 0xFFF for the offset function. Note: The
   --  software is allowed to write these bits only when ADSTART = 0 and
   --  JADSTART = 0 (which ensures that no conversion is ongoing).
   type ADC_OFR1_SATEN_Field is
     (--  No saturation control, offset result can be signed
      B_0x0,
      --  Saturation enabled, offset result unsigned and saturated at 0x000 and 0xFFF
      B_0x1)
     with Size => 1;
   for ADC_OFR1_SATEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   subtype ADC_OFR_OFFSET_CH_Field is A0B.Types.SVD.UInt5;

   --  ADC offset 1 register
   type ADC_OFR_Register is record
      --  Data offset y for the channel programmed into bits OFFSET_CH[4:0]
      --  These bits are written by software to define the offset to be
      --  subtracted from the raw converted data when converting a channel (can
      --  be regular or injected). The channel to which applies the data offset
      --  must be programmed in the bits OFFSET_CH[4:0]. The conversion result
      --  can be read from in the ADC_DR (regular conversion) or from in the
      --  ADC_JDRyi registers (injected conversion). Note: The software is
      --  allowed to write these bits only when ADSTART = 0 and JADSTART = 0
      --  (which ensures that no conversion is ongoing). If several offset
      --  (OFFSET) point to the same channel, only the offset with the lowest x
      --  value is considered for the subtraction. Ex: if OFFSET1_CH[4:0] = 4
      --  and OFFSET2_CH[4:0] = 4, this is OFFSET1[11:0] which is subtracted
      --  when converting channel 4.
      OFFSET         : ADC_OFR_OFFSET_Field := 16#0#;
      --  unspecified
      Reserved_12_23 : A0B.Types.SVD.UInt12 := 16#0#;
      --  Positive offset This bit is set and cleared by software to enable the
      --  positive offset. Note: The software is allowed to write these bits
      --  only when ADSTART = 0 and JADSTART = 0 (which ensures that no
      --  conversion is ongoing).
      OFFSETPOS      : ADC_OFR1_OFFSETPOS_Field :=
                        A0B.STM32H723.SVD.ADC.B_0x0;
      --  Saturation enable This bit is set and cleared by software to enable
      --  the saturation at 0x000 and 0xFFF for the offset function. Note: The
      --  software is allowed to write these bits only when ADSTART = 0 and
      --  JADSTART = 0 (which ensures that no conversion is ongoing).
      SATEN          : ADC_OFR1_SATEN_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  Channel selection for the data offset y These bits are written by
      --  software to define the channel to which the offset programmed into
      --  bits OFFSET[11:0] applies. Note: The software is allowed to write
      --  these bits only when ADSTART = 0 and JADSTART = 0 (which ensures that
      --  no conversion is ongoing). Some channels are not connected physically
      --  and must not be selected for the data offset y. If OFFSET_EN is set,
      --  it is not allowed to select the same channel for different ADC_OFRy
      --  registers.
      OFFSET_CH      : ADC_OFR_OFFSET_CH_Field := 16#0#;
      --  Offset y enable This bit is written by software to enable or disable
      --  the offset programmed into bits OFFSET[11:0]. Note: The software is
      --  allowed to write this bit only when ADSTART = 0 and JADSTART = 0
      --  (which ensures that no conversion is ongoing).
      OFFSET_EN      : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_OFR_Register use record
      OFFSET         at 0 range 0 .. 11;
      Reserved_12_23 at 0 range 12 .. 23;
      OFFSETPOS      at 0 range 24 .. 24;
      SATEN          at 0 range 25 .. 25;
      OFFSET_CH      at 0 range 26 .. 30;
      OFFSET_EN      at 0 range 31 .. 31;
   end record;

   subtype ADC_JDR_JDATA_Field is A0B.Types.SVD.UInt16;

   --  ADC injected channel 1 data register
   type ADC_JDR_Register is record
      --  Read-only. Injected data These bits are read-only. They contain the
      --  conversion result from injected channel y. The data are left -or
      --  right-aligned as described in .
      JDATA          : ADC_JDR_JDATA_Field;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_JDR_Register use record
      JDATA          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ADC_AWD2CR_AWD2CH_Field_1 is A0B.Types.SVD.UInt19;

   --  ADC Analog Watchdog 2 Configuration Register
   type ADC_AWD2CR_Register_1 is record
      --  Analog watchdog 2 channel selection These bits are set and cleared by
      --  software. They enable and select the input channels to be guarded by
      --  the analog watchdog 2. AWD2CH[i] = 0: ADC analog input channel i is
      --  not monitored by AWD2 AWD2CH[i] = 1: ADC analog input channel i is
      --  monitored by AWD2 When AWD2CH[18:0] = 000..0, the analog Watchdog 2
      --  is disabled Note: The channels selected by AWD2CH must be also
      --  selected into the SQRi or JSQRi registers. The software is allowed to
      --  write these bits only when ADSTART = 0 and JADSTART = 0 (which
      --  ensures that no conversion is ongoing). Some channels are not
      --  connected physically and must not be selected for the analog
      --  watchdog.
      AWD2CH         : ADC_AWD2CR_AWD2CH_Field_1 := 16#0#;
      --  unspecified
      Reserved_19_31 : A0B.Types.SVD.UInt13 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_AWD2CR_Register_1 use record
      AWD2CH         at 0 range 0 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ADC_AWD3CR_AWD3CH_Field_1 is A0B.Types.SVD.UInt19;

   --  ADC Analog Watchdog 3 Configuration Register
   type ADC_AWD3CR_Register_1 is record
      --  Analog watchdog 3 channel selection These bits are set and cleared by
      --  software. They enable and select the input channels to be guarded by
      --  the analog watchdog 3. AWD3CH[i] = 0: ADC analog input channel i is
      --  not monitored by AWD3 AWD3CH[i] = 1: ADC analog input channel i is
      --  monitored by AWD3 When AWD3CH[18:0] = 000..0, the analog Watchdog 3
      --  is disabled Note: The channels selected by AWD3CH must be also
      --  selected into the SQRi or JSQRi registers. The software is allowed to
      --  write these bits only when ADSTART = 0 and JADSTART = 0 (which
      --  ensures that no conversion is ongoing). Some channels are not
      --  connected physically and must not be selected for the analog
      --  watchdog.
      AWD3CH         : ADC_AWD3CR_AWD3CH_Field_1 := 16#0#;
      --  unspecified
      Reserved_19_31 : A0B.Types.SVD.UInt13 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_AWD3CR_Register_1 use record
      AWD3CH         at 0 range 0 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ADC_DIFSEL_DIFSEL_Field_1 is A0B.Types.SVD.UInt19;

   --  ADC Differential mode Selection Register
   type ADC_DIFSEL_Register_1 is record
      --  Differential mode for channels 18 to 0. These bits are set and
      --  cleared by software. They allow to select if a channel is configured
      --  as Single-ended or Differential mode. DIFSEL[i] = 0: ADC analog input
      --  channel is configured in Single-ended mode DIFSEL[i] = 1: ADC analog
      --  input channel i is configured in Differential mode Note: The DIFSEL
      --  bits corresponding to channels that are either connected to a
      --  single-ended I/O port or to an internal channel must be kept their
      --  reset value (Single-ended input mode). The software is allowed to
      --  write these bits only when the ADC is disabled (ADCAL = 0, JADSTART =
      --  0, JADSTP = 0, ADSTART = 0, ADSTP = 0, ADDIS = 0 and ADEN = 0).
      DIFSEL         : ADC_DIFSEL_DIFSEL_Field_1 := 16#0#;
      --  unspecified
      Reserved_19_31 : A0B.Types.SVD.UInt13 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_DIFSEL_Register_1 use record
      DIFSEL         at 0 range 0 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ADC_CALFACT_CALFACT_S_Field_1 is A0B.Types.SVD.UInt7;
   subtype ADC_CALFACT_CALFACT_D_Field_1 is A0B.Types.SVD.UInt7;

   --  ADC Calibration Factors
   type ADC_CALFACT_Register_1 is record
      --  Calibration Factors In Single-ended mode These bits are written by
      --  hardware or by software. Once a single-ended inputs calibration is
      --  complete, they are updated by hardware with the calibration factors.
      --  Software can write these bits with a new calibration factor. If the
      --  new calibration factor is different from the current one stored into
      --  the analog ADC, it is then applied once a new single-ended
      --  calibration is launched. Note: The software is allowed to write these
      --  bits only when ADEN = 1, ADSTART = 0 and JADSTART = 0 (ADC is enabled
      --  and no calibration is ongoing and no conversion is ongoing).
      CALFACT_S      : ADC_CALFACT_CALFACT_S_Field_1 := 16#0#;
      --  unspecified
      Reserved_7_15  : A0B.Types.SVD.UInt9 := 16#0#;
      --  Calibration Factors in differential mode These bits are written by
      --  hardware or by software. Once a differential inputs calibration is
      --  complete, they are updated by hardware with the calibration factors.
      --  Software can write these bits with a new calibration factor. If the
      --  new calibration factor is different from the current one stored into
      --  the analog ADC, it is then applied once a new differential
      --  calibration is launched. Note: The software is allowed to write these
      --  bits only when ADEN = 1, ADSTART = 0 and JADSTART = 0 (ADC is enabled
      --  and no calibration is ongoing and no conversion is ongoing).
      CALFACT_D      : ADC_CALFACT_CALFACT_D_Field_1 := 16#0#;
      --  unspecified
      Reserved_23_31 : A0B.Types.SVD.UInt9 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_CALFACT_Register_1 use record
      CALFACT_S      at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      CALFACT_D      at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  ADC common status register
   type ADC_CSR_Register is record
      --  Read-only. Master ADC ready This bit is a copy of the ADRDY bit in
      --  the corresponding ADC_ISR register.
      ADRDY_MST      : Boolean;
      --  Read-only. End of Sampling phase flag of the master ADC This bit is a
      --  copy of the EOSMP bit in the corresponding ADC_ISR register.
      EOSMP_MST      : Boolean;
      --  Read-only. End of regular conversion of the master ADC This bit is a
      --  copy of the EOC bit in the corresponding ADC_ISR register.
      EOC_MST        : Boolean;
      --  Read-only. End of regular sequence flag of the master ADC This bit is
      --  a copy of the EOS bit in the corresponding ADC_ISR register.
      EOS_MST        : Boolean;
      --  Read-only. Overrun flag of the master ADC This bit is a copy of the
      --  OVR bit in the corresponding ADC_ISR register.
      OVR_MST        : Boolean;
      --  Read-only. End of injected conversion flag of the master ADC This bit
      --  is a copy of the JEOC bit in the corresponding ADC_ISR register.
      JEOC_MST       : Boolean;
      --  Read-only. End of injected sequence flag of the master ADC This bit
      --  is a copy of the JEOS bit in the corresponding ADC_ISR register.
      JEOS_MST       : Boolean;
      --  Read-only. Analog watchdog 1 flag of the master ADC This bit is a
      --  copy of the AWD1 bit in the corresponding ADC_ISR register.
      AWD1_MST       : Boolean;
      --  Read-only. Analog watchdog 2 flag of the master ADC This bit is a
      --  copy of the AWD2 bit in the corresponding ADC_ISR register.
      AWD2_MST       : Boolean;
      --  Read-only. Analog watchdog 3 flag of the master ADC This bit is a
      --  copy of the AWD3 bit in the corresponding ADC_ISR register.
      AWD3_MST       : Boolean;
      --  Read-only. Injected Context Queue Overflow flag of the master ADC
      --  This bit is a copy of the JQOVF bit in the corresponding ADC_ISR
      --  register.
      JQOVF_MST      : Boolean;
      --  unspecified
      Reserved_11_31 : A0B.Types.SVD.UInt21;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_CSR_Register use record
      ADRDY_MST      at 0 range 0 .. 0;
      EOSMP_MST      at 0 range 1 .. 1;
      EOC_MST        at 0 range 2 .. 2;
      EOS_MST        at 0 range 3 .. 3;
      OVR_MST        at 0 range 4 .. 4;
      JEOC_MST       at 0 range 5 .. 5;
      JEOS_MST       at 0 range 6 .. 6;
      AWD1_MST       at 0 range 7 .. 7;
      AWD2_MST       at 0 range 8 .. 8;
      AWD3_MST       at 0 range 9 .. 9;
      JQOVF_MST      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  ADC clock mode These bits are set and cleared by software to define the
   --  ADC clock scheme (which is common to both master and slave ADCs): In all
   --  synchronous clock modes, there is no jitter in the delay from a timer
   --  trigger to the start of a conversion. Note: The software is allowed to
   --  write these bits only when the ADCs are disabled (ADCAL = 0, JADSTART =
   --  0, ADSTART = 0, ADSTP = 0, ADDIS = 0 and ADEN = 0).
   type ADC_CCR_CKMODE_Field is
     (--  adc_ker_ck (x = 3) (Asynchronous clock mode), generated at product level
--  (refer to Section 6: Reset and clock control (RCC))
      B_0x0,
      --  adc_hclk/1 (Synchronous clock mode). This configuration must be enabled
--  only if the AHB clock prescaler is set to 1 (HPRE[3:0] = 0XXX in RCC_CFGR
--  register) and if the system clock has a 50% duty cycle.
      B_0x1,
      --  adc_hclk/2 (Synchronous clock mode)
      B_0x2,
      --  adc_hclk/4 (Synchronous clock mode)
      B_0x3)
     with Size => 2;
   for ADC_CCR_CKMODE_Field use
     (B_0x0 => 0,
      B_0x1 => 1,
      B_0x2 => 2,
      B_0x3 => 3);

   --  ADC prescaler These bits are set and cleared by software to select the
   --  frequency of the clock to the ADC. The clock is common for all the ADCs.
   --  other: reserved Note: The software is allowed to write these bits only
   --  when the ADC is disabled (ADCAL = 0, JADSTART = 0, ADSTART = 0, ADSTP =
   --  0, ADDIS = 0 and ADEN = 0). The ADC prescaler value is applied only when
   --  CKMODE[1:0] = 0b00.
   type ADC_CCR_PRESC_Field is
     (--  input ADC clock not divided
      B_0x0,
      --  input ADC clock divided by 2
      B_0x1,
      --  input ADC clock divided by 4
      B_0x2,
      --  input ADC clock divided by 6
      B_0x3,
      --  input ADC clock divided by 8
      B_0x4,
      --  input ADC clock divided by 10
      B_0x5,
      --  input ADC clock divided by 12
      B_0x6,
      --  input ADC clock divided by 16
      B_0x7,
      --  input ADC clock divided by 32
      B_0x8,
      --  input ADC clock divided by 64
      B_0x9,
      --  input ADC clock divided by 128
      B_0xA,
      --  input ADC clock divided by 256
      B_0xB)
     with Size => 4;
   for ADC_CCR_PRESC_Field use
     (B_0x0 => 0,
      B_0x1 => 1,
      B_0x2 => 2,
      B_0x3 => 3,
      B_0x4 => 4,
      B_0x5 => 5,
      B_0x6 => 6,
      B_0x7 => 7,
      B_0x8 => 8,
      B_0x9 => 9,
      B_0xA => 10,
      B_0xB => 11);

   --  VREFINT enable This bit is set and cleared by software to enable/disable
   --  the VREFINT channel.
   type ADC_CCR_VREFEN_Field is
     (--  VREFINT channel disabled
      B_0x0,
      --  VREFINT channel enabled
      B_0x1)
     with Size => 1;
   for ADC_CCR_VREFEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  VSENSE enable This bit is set and cleared by software to control VSENSE.
   type ADC_CCR_TSEN_Field is
     (--  Temperature sensor channel disabled
      B_0x0,
      --  Temperature sensor channel enabled
      B_0x1)
     with Size => 1;
   for ADC_CCR_TSEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  VBAT enable This bit is set and cleared by software to control.
   type ADC_CCR_VBATEN_Field is
     (--  VBAT channel disabled
      B_0x0,
      --  VBAT channel enabled
      B_0x1)
     with Size => 1;
   for ADC_CCR_VBATEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  ADC common control register
   type ADC_CCR_Register is record
      --  unspecified
      Reserved_0_15  : A0B.Types.SVD.UInt16 := 16#0#;
      --  ADC clock mode These bits are set and cleared by software to define
      --  the ADC clock scheme (which is common to both master and slave ADCs):
      --  In all synchronous clock modes, there is no jitter in the delay from
      --  a timer trigger to the start of a conversion. Note: The software is
      --  allowed to write these bits only when the ADCs are disabled (ADCAL =
      --  0, JADSTART = 0, ADSTART = 0, ADSTP = 0, ADDIS = 0 and ADEN = 0).
      CKMODE         : ADC_CCR_CKMODE_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  ADC prescaler These bits are set and cleared by software to select
      --  the frequency of the clock to the ADC. The clock is common for all
      --  the ADCs. other: reserved Note: The software is allowed to write
      --  these bits only when the ADC is disabled (ADCAL = 0, JADSTART = 0,
      --  ADSTART = 0, ADSTP = 0, ADDIS = 0 and ADEN = 0). The ADC prescaler
      --  value is applied only when CKMODE[1:0] = 0b00.
      PRESC          : ADC_CCR_PRESC_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  VREFINT enable This bit is set and cleared by software to
      --  enable/disable the VREFINT channel.
      VREFEN         : ADC_CCR_VREFEN_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  VSENSE enable This bit is set and cleared by software to control
      --  VSENSE.
      TSEN           : ADC_CCR_TSEN_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  VBAT enable This bit is set and cleared by software to control.
      VBATEN         : ADC_CCR_VBATEN_Field := A0B.STM32H723.SVD.ADC.B_0x0;
      --  unspecified
      Reserved_25_31 : A0B.Types.SVD.UInt7 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_CCR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      CKMODE         at 0 range 16 .. 17;
      PRESC          at 0 range 18 .. 21;
      VREFEN         at 0 range 22 .. 22;
      TSEN           at 0 range 23 .. 23;
      VBATEN         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype ADC_CDR_RDATA_MST_Field is A0B.Types.SVD.UInt16;
   subtype ADC_CDR_RDATA_SLV_Field is A0B.Types.SVD.UInt16;

   --  ADC common regular data register for dual 			 and triple modes
   type ADC_CDR_Register is record
      --  Read-only. Regular data of the master 				 ADC
      RDATA_MST : ADC_CDR_RDATA_MST_Field;
      --  Read-only. Regular data of the slave 				 ADC
      RDATA_SLV : ADC_CDR_RDATA_SLV_Field;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ADC_CDR_Register use record
      RDATA_MST at 0 range 0 .. 15;
      RDATA_SLV at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog to Digital Converter
   type ADC1_Peripheral is record
      --  ADC interrupt and status register
      ADC_ISR      : aliased ADC_ISR_Register;
      pragma Volatile_Full_Access (ADC_ISR);
      --  ADC interrupt enable register
      ADC_IER      : aliased ADC_IER_Register;
      pragma Volatile_Full_Access (ADC_IER);
      --  ADC control register
      ADC_CR       : aliased ADC_CR_Register;
      pragma Volatile_Full_Access (ADC_CR);
      --  ADC configuration register
      ADC_CFGR     : aliased ADC_CFGR_Register;
      pragma Volatile_Full_Access (ADC_CFGR);
      --  ADC configuration register 2
      ADC_CFGR2    : aliased ADC_CFGR2_Register;
      pragma Volatile_Full_Access (ADC_CFGR2);
      --  ADC sample time register 1
      ADC_SMPR1    : aliased ADC_SMPR1_Register;
      pragma Volatile_Full_Access (ADC_SMPR1);
      --  ADC sample time register 2
      ADC_SMPR2    : aliased ADC_SMPR2_Register;
      pragma Volatile_Full_Access (ADC_SMPR2);
      --  ADC channel preselection register
      ADC_PCSEL    : aliased ADC_PCSEL_Register;
      pragma Volatile_Full_Access (ADC_PCSEL);
      --  ADC watchdog threshold register 1
      ADC_LTR1     : aliased ADC_LTR1_Register;
      pragma Volatile_Full_Access (ADC_LTR1);
      --  ADC watchdog threshold register 1
      ADC_HTR1     : aliased ADC_HTR1_Register;
      pragma Volatile_Full_Access (ADC_HTR1);
      --  ADC regular sequence register 1
      ADC_SQR1     : aliased ADC_SQR1_Register;
      pragma Volatile_Full_Access (ADC_SQR1);
      --  ADC regular sequence register 2
      ADC_SQR2     : aliased ADC_SQR2_Register;
      pragma Volatile_Full_Access (ADC_SQR2);
      --  ADC regular sequence register 3
      ADC_SQR3     : aliased ADC_SQR3_Register;
      pragma Volatile_Full_Access (ADC_SQR3);
      --  ADC regular sequence register 4
      ADC_SQR4     : aliased ADC_SQR4_Register;
      pragma Volatile_Full_Access (ADC_SQR4);
      --  ADC regular Data Register
      ADC_DR       : aliased A0B.Types.SVD.UInt32;
      --  ADC injected sequence register
      ADC_JSQR     : aliased ADC_JSQR_Register;
      pragma Volatile_Full_Access (ADC_JSQR);
      --  ADC injected channel 1 offset register
      ADC_OFR1     : aliased ADC_OFR1_Register;
      pragma Volatile_Full_Access (ADC_OFR1);
      --  ADC injected channel 2 offset register
      ADC_OFR2     : aliased ADC_OFR2_Register;
      pragma Volatile_Full_Access (ADC_OFR2);
      --  ADC injected channel 3 offset register
      ADC_OFR3     : aliased ADC_OFR3_Register;
      pragma Volatile_Full_Access (ADC_OFR3);
      --  ADC injected channel 4 offset register
      ADC_OFR4     : aliased ADC_OFR4_Register;
      pragma Volatile_Full_Access (ADC_OFR4);
      --  ADC injected channel 1 data register
      ADC_JDR1     : aliased A0B.Types.SVD.UInt32;
      --  ADC injected channel 2 data register
      ADC_JDR2     : aliased A0B.Types.SVD.UInt32;
      --  ADC injected channel 3 data register
      ADC_JDR3     : aliased A0B.Types.SVD.UInt32;
      --  ADC injected channel 4 data register
      ADC_JDR4     : aliased A0B.Types.SVD.UInt32;
      --  ADC analog watchdog 2 configuration register	
      ADC_AWD2CR   : aliased ADC_AWD2CR_Register;
      pragma Volatile_Full_Access (ADC_AWD2CR);
      --  ADC analog watchdog 3 configuration register	
      ADC_AWD3CR   : aliased ADC_AWD3CR_Register;
      pragma Volatile_Full_Access (ADC_AWD3CR);
      --  ADC watchdog lower threshold register 2
      ADC_LTR2     : aliased ADC_LTR2_Register;
      pragma Volatile_Full_Access (ADC_LTR2);
      --  ADC watchdog higher threshold register 2
      ADC_HTR2     : aliased ADC_HTR2_Register;
      pragma Volatile_Full_Access (ADC_HTR2);
      --  ADC watchdog lower threshold register 3
      ADC_LTR3     : aliased ADC_LTR3_Register;
      pragma Volatile_Full_Access (ADC_LTR3);
      --  ADC watchdog higher threshold register 3
      ADC_HTR3     : aliased ADC_HTR3_Register;
      pragma Volatile_Full_Access (ADC_HTR3);
      --  ADC differential mode selection register
      ADC_DIFSEL   : aliased ADC_DIFSEL_Register;
      pragma Volatile_Full_Access (ADC_DIFSEL);
      --  ADC calibration factors register
      ADC_CALFACT  : aliased ADC_CALFACT_Register;
      pragma Volatile_Full_Access (ADC_CALFACT);
      --  ADC calibration factor register 2
      ADC_CALFACT2 : aliased ADC_CALFACT2_Register;
      pragma Volatile_Full_Access (ADC_CALFACT2);
   end record
     with Volatile;

   for ADC1_Peripheral use record
      ADC_ISR      at 16#0# range 0 .. 31;
      ADC_IER      at 16#4# range 0 .. 31;
      ADC_CR       at 16#8# range 0 .. 31;
      ADC_CFGR     at 16#C# range 0 .. 31;
      ADC_CFGR2    at 16#10# range 0 .. 31;
      ADC_SMPR1    at 16#14# range 0 .. 31;
      ADC_SMPR2    at 16#18# range 0 .. 31;
      ADC_PCSEL    at 16#1C# range 0 .. 31;
      ADC_LTR1     at 16#20# range 0 .. 31;
      ADC_HTR1     at 16#24# range 0 .. 31;
      ADC_SQR1     at 16#30# range 0 .. 31;
      ADC_SQR2     at 16#34# range 0 .. 31;
      ADC_SQR3     at 16#38# range 0 .. 31;
      ADC_SQR4     at 16#3C# range 0 .. 31;
      ADC_DR       at 16#40# range 0 .. 31;
      ADC_JSQR     at 16#4C# range 0 .. 31;
      ADC_OFR1     at 16#60# range 0 .. 31;
      ADC_OFR2     at 16#64# range 0 .. 31;
      ADC_OFR3     at 16#68# range 0 .. 31;
      ADC_OFR4     at 16#6C# range 0 .. 31;
      ADC_JDR1     at 16#80# range 0 .. 31;
      ADC_JDR2     at 16#84# range 0 .. 31;
      ADC_JDR3     at 16#88# range 0 .. 31;
      ADC_JDR4     at 16#8C# range 0 .. 31;
      ADC_AWD2CR   at 16#A0# range 0 .. 31;
      ADC_AWD3CR   at 16#A4# range 0 .. 31;
      ADC_LTR2     at 16#B0# range 0 .. 31;
      ADC_HTR2     at 16#B4# range 0 .. 31;
      ADC_LTR3     at 16#B8# range 0 .. 31;
      ADC_HTR3     at 16#BC# range 0 .. 31;
      ADC_DIFSEL   at 16#C0# range 0 .. 31;
      ADC_CALFACT  at 16#C4# range 0 .. 31;
      ADC_CALFACT2 at 16#C8# range 0 .. 31;
   end record;

   --  Analog to Digital Converter
   ADC1_Periph : aliased ADC1_Peripheral
     with Import, Address => ADC1_Base;

   --  Analog to Digital Converter
   ADC2_Periph : aliased ADC1_Peripheral
     with Import, Address => ADC2_Base;

   --  Analog-to-Digital Converter
   type ADC12_Common_Peripheral is record
      --  ADC Common status register
      CSR  : aliased CSR_Register;
      pragma Volatile_Full_Access (CSR);
      --  ADC common control register
      CCR  : aliased CCR_Register;
      pragma Volatile_Full_Access (CCR);
      --  ADC common regular data register for dual and triple modes
      CDR  : aliased CDR_Register;
      pragma Volatile_Full_Access (CDR);
      --  ADC x common regular data register for 32-bit dual mode
      CDR2 : aliased A0B.Types.SVD.UInt32;
   end record
     with Volatile;

   for ADC12_Common_Peripheral use record
      CSR  at 16#0# range 0 .. 31;
      CCR  at 16#8# range 0 .. 31;
      CDR  at 16#C# range 0 .. 31;
      CDR2 at 16#10# range 0 .. 31;
   end record;

   --  Analog-to-Digital Converter
   ADC12_Common_Periph : aliased ADC12_Common_Peripheral
     with Import, Address => ADC12_Common_Base;

   --  Analog-to-Digital Converter
   type ADC3_Peripheral is record
      --  ADC interrupt and status register
      ADC_ISR     : aliased ADC_ISR_Register_1;
      pragma Volatile_Full_Access (ADC_ISR);
      --  ADC interrupt enable register
      ADC_IER     : aliased ADC_IER_Register;
      pragma Volatile_Full_Access (ADC_IER);
      --  ADC control register
      ADC_CR      : aliased ADC_CR_Register_1;
      pragma Volatile_Full_Access (ADC_CR);
      --  ADC configuration register
      ADC_CFGR    : aliased ADC_CFGR_Register_1;
      pragma Volatile_Full_Access (ADC_CFGR);
      --  ADC configuration register 2
      ADC_CFGR2   : aliased ADC_CFGR2_Register_1;
      pragma Volatile_Full_Access (ADC_CFGR2);
      --  ADC sample time register 1
      ADC_SMPR1   : aliased ADC_SMPR1_Register_1;
      pragma Volatile_Full_Access (ADC_SMPR1);
      --  ADC sample time register 2
      ADC_SMPR2   : aliased ADC_SMPR2_Register_1;
      pragma Volatile_Full_Access (ADC_SMPR2);
      --  ADC watchdog threshold register 1
      ADC_TR1     : aliased ADC_TR1_Register;
      pragma Volatile_Full_Access (ADC_TR1);
      --  ADC watchdog threshold register 2
      ADC_TR2     : aliased ADC_TR2_Register;
      pragma Volatile_Full_Access (ADC_TR2);
      --  ADC watchdog threshold register 3
      ADC_TR3     : aliased ADC_TR3_Register;
      pragma Volatile_Full_Access (ADC_TR3);
      --  ADC regular sequence register 1
      ADC_SQR1    : aliased ADC_SQR1_Register;
      pragma Volatile_Full_Access (ADC_SQR1);
      --  ADC regular sequence register 2
      ADC_SQR2    : aliased ADC_SQR2_Register;
      pragma Volatile_Full_Access (ADC_SQR2);
      --  ADC regular sequence register 3
      ADC_SQR3    : aliased ADC_SQR3_Register;
      pragma Volatile_Full_Access (ADC_SQR3);
      --  ADC regular sequence register 4
      ADC_SQR4    : aliased ADC_SQR4_Register;
      pragma Volatile_Full_Access (ADC_SQR4);
      --  ADC regular data register
      ADC_DR      : aliased ADC_DR_Register;
      pragma Volatile_Full_Access (ADC_DR);
      --  ADC injected sequence register
      ADC_JSQR    : aliased ADC_JSQR_Register;
      pragma Volatile_Full_Access (ADC_JSQR);
      --  ADC offset 1 register
      ADC_OFR1    : aliased ADC_OFR_Register;
      pragma Volatile_Full_Access (ADC_OFR1);
      --  ADC offset 2 register
      ADC_OFR2    : aliased ADC_OFR_Register;
      pragma Volatile_Full_Access (ADC_OFR2);
      --  ADC offset 3 register
      ADC_OFR3    : aliased ADC_OFR_Register;
      pragma Volatile_Full_Access (ADC_OFR3);
      --  ADC offset 4 register
      ADC_OFR4    : aliased ADC_OFR_Register;
      pragma Volatile_Full_Access (ADC_OFR4);
      --  ADC injected channel 1 data register
      ADC_JDR1    : aliased ADC_JDR_Register;
      pragma Volatile_Full_Access (ADC_JDR1);
      --  ADC injected channel 2 data register
      ADC_JDR2    : aliased ADC_JDR_Register;
      pragma Volatile_Full_Access (ADC_JDR2);
      --  ADC injected channel 3 data register
      ADC_JDR3    : aliased ADC_JDR_Register;
      pragma Volatile_Full_Access (ADC_JDR3);
      --  ADC injected channel 4 data register
      ADC_JDR4    : aliased ADC_JDR_Register;
      pragma Volatile_Full_Access (ADC_JDR4);
      --  ADC Analog Watchdog 2 Configuration Register
      ADC_AWD2CR  : aliased ADC_AWD2CR_Register_1;
      pragma Volatile_Full_Access (ADC_AWD2CR);
      --  ADC Analog Watchdog 3 Configuration Register
      ADC_AWD3CR  : aliased ADC_AWD3CR_Register_1;
      pragma Volatile_Full_Access (ADC_AWD3CR);
      --  ADC Differential mode Selection Register
      ADC_DIFSEL  : aliased ADC_DIFSEL_Register_1;
      pragma Volatile_Full_Access (ADC_DIFSEL);
      --  ADC Calibration Factors
      ADC_CALFACT : aliased ADC_CALFACT_Register_1;
      pragma Volatile_Full_Access (ADC_CALFACT);
   end record
     with Volatile;

   for ADC3_Peripheral use record
      ADC_ISR     at 16#0# range 0 .. 31;
      ADC_IER     at 16#4# range 0 .. 31;
      ADC_CR      at 16#8# range 0 .. 31;
      ADC_CFGR    at 16#C# range 0 .. 31;
      ADC_CFGR2   at 16#10# range 0 .. 31;
      ADC_SMPR1   at 16#14# range 0 .. 31;
      ADC_SMPR2   at 16#18# range 0 .. 31;
      ADC_TR1     at 16#20# range 0 .. 31;
      ADC_TR2     at 16#24# range 0 .. 31;
      ADC_TR3     at 16#28# range 0 .. 31;
      ADC_SQR1    at 16#30# range 0 .. 31;
      ADC_SQR2    at 16#34# range 0 .. 31;
      ADC_SQR3    at 16#38# range 0 .. 31;
      ADC_SQR4    at 16#3C# range 0 .. 31;
      ADC_DR      at 16#40# range 0 .. 31;
      ADC_JSQR    at 16#4C# range 0 .. 31;
      ADC_OFR1    at 16#60# range 0 .. 31;
      ADC_OFR2    at 16#64# range 0 .. 31;
      ADC_OFR3    at 16#68# range 0 .. 31;
      ADC_OFR4    at 16#6C# range 0 .. 31;
      ADC_JDR1    at 16#80# range 0 .. 31;
      ADC_JDR2    at 16#84# range 0 .. 31;
      ADC_JDR3    at 16#88# range 0 .. 31;
      ADC_JDR4    at 16#8C# range 0 .. 31;
      ADC_AWD2CR  at 16#A0# range 0 .. 31;
      ADC_AWD3CR  at 16#A4# range 0 .. 31;
      ADC_DIFSEL  at 16#B0# range 0 .. 31;
      ADC_CALFACT at 16#B4# range 0 .. 31;
   end record;

   --  Analog-to-Digital Converter
   ADC3_Periph : aliased ADC3_Peripheral
     with Import, Address => ADC3_Base;

   --  Analog-to-Digital Converter
   type ADC3_Common_Peripheral is record
      --  ADC common status register
      ADC_CSR  : aliased ADC_CSR_Register;
      pragma Volatile_Full_Access (ADC_CSR);
      --  ADC common control register
      ADC_CCR  : aliased ADC_CCR_Register;
      pragma Volatile_Full_Access (ADC_CCR);
      --  ADC common regular data register for dual 			 and triple modes
      ADC_CDR  : aliased ADC_CDR_Register;
      pragma Volatile_Full_Access (ADC_CDR);
      --  ADC x common regular data register for 			 32-bit dual mode
      ADC_CDR2 : aliased A0B.Types.SVD.UInt32;
   end record
     with Volatile;

   for ADC3_Common_Peripheral use record
      ADC_CSR  at 16#0# range 0 .. 31;
      ADC_CCR  at 16#8# range 0 .. 31;
      ADC_CDR  at 16#C# range 0 .. 31;
      ADC_CDR2 at 16#10# range 0 .. 31;
   end record;

   --  Analog-to-Digital Converter
   ADC3_Common_Periph : aliased ADC3_Common_Peripheral
     with Import, Address => ADC3_Common_Base;

end A0B.STM32H723.SVD.ADC;
