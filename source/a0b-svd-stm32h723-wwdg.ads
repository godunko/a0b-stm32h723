pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32H723.svd

pragma Restrictions (No_Elaboration_Code);

with A0B.Types.SVD;
with System;

package A0B.SVD.STM32H723.WWDG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR_T_Field is A0B.Types.SVD.UInt7;

   --  Control register
   type CR_Register is record
      --  7-bit counter (MSB to LSB) These bits contain the value of the
      --  watchdog counter. It is decremented every (4096 x 2WDGTB[1:0]) PCLK
      --  cycles. A reset is produced when it is decremented from 0x40 to 0x3F
      --  (T6 becomes cleared).
      T             : CR_T_Field := 16#7F#;
      --  Activation bit This bit is set by software and only cleared by
      --  hardware after a reset. When WDGA=1, the watchdog can generate a
      --  reset.
      WDGA          : Boolean := False;
      --  unspecified
      Reserved_8_31 : A0B.Types.SVD.UInt24 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CR_Register use record
      T             at 0 range 0 .. 6;
      WDGA          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CFR_W_Field is A0B.Types.SVD.UInt7;
   subtype CFR_WDGTB_Field is A0B.Types.SVD.UInt2;

   --  Configuration register
   type CFR_Register is record
      --  7-bit window value These bits contain the window value to be compared
      --  to the downcounter.
      W              : CFR_W_Field := 16#7F#;
      --  unspecified
      Reserved_7_8   : A0B.Types.SVD.UInt2 := 16#0#;
      --  Early wakeup interrupt When set, an interrupt occurs whenever the
      --  counter reaches the value 0x40. This interrupt is only cleared by
      --  hardware after a reset.
      EWI            : Boolean := False;
      --  unspecified
      Reserved_10_10 : A0B.Types.SVD.Bit := 16#0#;
      --  Timer base The time base of the prescaler can be modified as follows:
      WDGTB          : CFR_WDGTB_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : A0B.Types.SVD.UInt19 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CFR_Register use record
      W              at 0 range 0 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      EWI            at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WDGTB          at 0 range 11 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Status register
   type SR_Register is record
      --  Early wakeup interrupt flag This bit is set by hardware when the
      --  counter has reached the value 0x40. It must be cleared by software by
      --  writing 0. A write of 1 has no effect. This bit is also set if the
      --  interrupt is not enabled.
      EWIF          : Boolean := False;
      --  unspecified
      Reserved_1_31 : A0B.Types.SVD.UInt31 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SR_Register use record
      EWIF          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  WWDG
   type WWDG1_Peripheral is record
      --  Control register
      CR  : aliased CR_Register;
      pragma Volatile_Full_Access (CR);
      --  Configuration register
      CFR : aliased CFR_Register;
      pragma Volatile_Full_Access (CFR);
      --  Status register
      SR  : aliased SR_Register;
      pragma Volatile_Full_Access (SR);
   end record
     with Volatile;

   for WWDG1_Peripheral use record
      CR  at 16#0# range 0 .. 31;
      CFR at 16#4# range 0 .. 31;
      SR  at 16#8# range 0 .. 31;
   end record;

   --  WWDG
   WWDG1_Periph : aliased WWDG1_Peripheral
     with Import, Address => WWDG1_Base;

end A0B.SVD.STM32H723.WWDG;
