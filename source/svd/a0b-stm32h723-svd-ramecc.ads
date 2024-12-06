pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32H723.svd


with A0B.Types.SVD;
with System;

package A0B.STM32H723.SVD.RAMECC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  RAMECC interrupt enable register
   type IER_Register is record
      --  Global interrupt enable
      GIE           : Boolean := False;
      --  Global ECC single error interrupt enable
      GECCSEIE      : Boolean := False;
      --  Global ECC double error interrupt enable
      GECCDEIE      : Boolean := False;
      --  Global ECC double error on byte write (BW) interrupt enable
      GECCDEBWIE    : Boolean := False;
      --  unspecified
      Reserved_4_31 : A0B.Types.SVD.UInt28 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for IER_Register use record
      GIE           at 0 range 0 .. 0;
      GECCSEIE      at 0 range 1 .. 1;
      GECCDEIE      at 0 range 2 .. 2;
      GECCDEBWIE    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RAMECC monitor x configuration register
   type M1CR_Register is record
      --  unspecified
      Reserved_0_1  : A0B.Types.SVD.UInt2 := 16#0#;
      --  ECC single error interrupt enable
      ECCSEIE       : Boolean := False;
      --  ECC double error interrupt enable
      ECCDEIE       : Boolean := False;
      --  ECC double error on byte write (BW) interrupt enable
      ECCDEBWIE     : Boolean := False;
      --  ECC error latching enable
      ECCELEN       : Boolean := False;
      --  unspecified
      Reserved_6_31 : A0B.Types.SVD.UInt26 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for M1CR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      ECCSEIE       at 0 range 2 .. 2;
      ECCDEIE       at 0 range 3 .. 3;
      ECCDEBWIE     at 0 range 4 .. 4;
      ECCELEN       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  RAMECC monitor x status register
   type M1SR_Register is record
      --  unspecified
      Reserved_0_1  : A0B.Types.SVD.UInt2 := 16#0#;
      --  ECC single error interrupt enable
      ECCSEIE       : Boolean := False;
      --  ECC double error interrupt enable
      ECCDEIE       : Boolean := False;
      --  ECC double error on byte write (BW) interrupt enable
      ECCDEBWIE     : Boolean := False;
      --  ECC error latching enable
      ECCELEN       : Boolean := False;
      --  unspecified
      Reserved_6_31 : A0B.Types.SVD.UInt26 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for M1SR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      ECCSEIE       at 0 range 2 .. 2;
      ECCDEIE       at 0 range 3 .. 3;
      ECCDEBWIE     at 0 range 4 .. 4;
      ECCELEN       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  RAMECC monitor x failing address register
   type M1FAR_Register is record
      --  unspecified
      Reserved_0_1  : A0B.Types.SVD.UInt2 := 16#0#;
      --  ECC single error interrupt enable
      ECCSEIE       : Boolean := False;
      --  ECC double error interrupt enable
      ECCDEIE       : Boolean := False;
      --  ECC double error on byte write (BW) interrupt enable
      ECCDEBWIE     : Boolean := False;
      --  ECC error latching enable
      ECCELEN       : Boolean := False;
      --  unspecified
      Reserved_6_31 : A0B.Types.SVD.UInt26 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for M1FAR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      ECCSEIE       at 0 range 2 .. 2;
      ECCDEIE       at 0 range 3 .. 3;
      ECCDEBWIE     at 0 range 4 .. 4;
      ECCELEN       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  RAMECC monitor x failing data low register
   type M1FDRL_Register is record
      --  unspecified
      Reserved_0_1  : A0B.Types.SVD.UInt2 := 16#0#;
      --  ECC single error interrupt enable
      ECCSEIE       : Boolean := False;
      --  ECC double error interrupt enable
      ECCDEIE       : Boolean := False;
      --  ECC double error on byte write (BW) interrupt enable
      ECCDEBWIE     : Boolean := False;
      --  ECC error latching enable
      ECCELEN       : Boolean := False;
      --  unspecified
      Reserved_6_31 : A0B.Types.SVD.UInt26 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for M1FDRL_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      ECCSEIE       at 0 range 2 .. 2;
      ECCDEIE       at 0 range 3 .. 3;
      ECCDEBWIE     at 0 range 4 .. 4;
      ECCELEN       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  RAMECC monitor x failing data high register
   type M1FDRH_Register is record
      --  unspecified
      Reserved_0_1  : A0B.Types.SVD.UInt2 := 16#0#;
      --  ECC single error interrupt enable
      ECCSEIE       : Boolean := False;
      --  ECC double error interrupt enable
      ECCDEIE       : Boolean := False;
      --  ECC double error on byte write (BW) interrupt enable
      ECCDEBWIE     : Boolean := False;
      --  ECC error latching enable
      ECCELEN       : Boolean := False;
      --  unspecified
      Reserved_6_31 : A0B.Types.SVD.UInt26 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for M1FDRH_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      ECCSEIE       at 0 range 2 .. 2;
      ECCDEIE       at 0 range 3 .. 3;
      ECCDEBWIE     at 0 range 4 .. 4;
      ECCELEN       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  RAMECC monitor x failing ECC error code register
   type M1FECR_Register is record
      --  ECC single error detected and corrected flag
      SEDCF         : Boolean := False;
      --  ECC double error detected flag
      DEDF          : Boolean := False;
      --  ECC double error on byte write (BW) detected flag
      DEBWDF        : Boolean := False;
      --  unspecified
      Reserved_3_31 : A0B.Types.SVD.UInt29 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for M1FECR_Register use record
      SEDCF         at 0 range 0 .. 0;
      DEDF          at 0 range 1 .. 1;
      DEBWDF        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RAMECC monitor x configuration register
   type M2CR_Register is record
      --  ECC single error detected and corrected flag
      SEDCF         : Boolean := False;
      --  ECC double error detected flag
      DEDF          : Boolean := False;
      --  ECC double error on byte write (BW) detected flag
      DEBWDF        : Boolean := False;
      --  unspecified
      Reserved_3_31 : A0B.Types.SVD.UInt29 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for M2CR_Register use record
      SEDCF         at 0 range 0 .. 0;
      DEDF          at 0 range 1 .. 1;
      DEBWDF        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RAMECC monitor x status register
   type M2SR_Register is record
      --  ECC single error detected and corrected flag
      SEDCF         : Boolean := False;
      --  ECC double error detected flag
      DEDF          : Boolean := False;
      --  ECC double error on byte write (BW) detected flag
      DEBWDF        : Boolean := False;
      --  unspecified
      Reserved_3_31 : A0B.Types.SVD.UInt29 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for M2SR_Register use record
      SEDCF         at 0 range 0 .. 0;
      DEDF          at 0 range 1 .. 1;
      DEBWDF        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RAMECC monitor x failing address register
   type M2FAR_Register is record
      --  ECC single error detected and corrected flag
      SEDCF         : Boolean := False;
      --  ECC double error detected flag
      DEDF          : Boolean := False;
      --  ECC double error on byte write (BW) detected flag
      DEBWDF        : Boolean := False;
      --  unspecified
      Reserved_3_31 : A0B.Types.SVD.UInt29 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for M2FAR_Register use record
      SEDCF         at 0 range 0 .. 0;
      DEDF          at 0 range 1 .. 1;
      DEBWDF        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RAMECC monitor x failing data low register
   type M2FDRL_Register is record
      --  ECC single error detected and corrected flag
      SEDCF         : Boolean := False;
      --  ECC double error detected flag
      DEDF          : Boolean := False;
      --  ECC double error on byte write (BW) detected flag
      DEBWDF        : Boolean := False;
      --  unspecified
      Reserved_3_31 : A0B.Types.SVD.UInt29 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for M2FDRL_Register use record
      SEDCF         at 0 range 0 .. 0;
      DEDF          at 0 range 1 .. 1;
      DEBWDF        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RAMECC monitor x status register
   type M1SR_Register_1 is record
      --  ECC single error detected and corrected flag
      SEDCF         : Boolean := False;
      --  ECC double error detected flag
      DEDF          : Boolean := False;
      --  ECC double error on byte write (BW) detected flag
      DEBWDF        : Boolean := False;
      --  unspecified
      Reserved_3_31 : A0B.Types.SVD.UInt29 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for M1SR_Register_1 use record
      SEDCF         at 0 range 0 .. 0;
      DEDF          at 0 range 1 .. 1;
      DEBWDF        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RAMECC monitor x configuration register
   type M2CR_Register_1 is record
      --  unspecified
      Reserved_0_1  : A0B.Types.SVD.UInt2 := 16#0#;
      --  ECC single error interrupt enable
      ECCSEIE       : Boolean := False;
      --  ECC double error interrupt enable
      ECCDEIE       : Boolean := False;
      --  ECC double error on byte write (BW) interrupt enable
      ECCDEBWIE     : Boolean := False;
      --  ECC error latching enable
      ECCELEN       : Boolean := False;
      --  unspecified
      Reserved_6_31 : A0B.Types.SVD.UInt26 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for M2CR_Register_1 use record
      Reserved_0_1  at 0 range 0 .. 1;
      ECCSEIE       at 0 range 2 .. 2;
      ECCDEIE       at 0 range 3 .. 3;
      ECCDEBWIE     at 0 range 4 .. 4;
      ECCELEN       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  RAMECC monitor x configuration register
   type M3CR_Register is record
      --  unspecified
      Reserved_0_1  : A0B.Types.SVD.UInt2 := 16#0#;
      --  ECC single error interrupt enable
      ECCSEIE       : Boolean := False;
      --  ECC double error interrupt enable
      ECCDEIE       : Boolean := False;
      --  ECC double error on byte write (BW) interrupt enable
      ECCDEBWIE     : Boolean := False;
      --  ECC error latching enable
      ECCELEN       : Boolean := False;
      --  unspecified
      Reserved_6_31 : A0B.Types.SVD.UInt26 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for M3CR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      ECCSEIE       at 0 range 2 .. 2;
      ECCDEIE       at 0 range 3 .. 3;
      ECCDEBWIE     at 0 range 4 .. 4;
      ECCELEN       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  RAMECC monitor x status register
   type M3SR_Register is record
      --  ECC single error detected and corrected flag
      SEDCF         : Boolean := False;
      --  ECC double error detected flag
      DEDF          : Boolean := False;
      --  ECC double error on byte write (BW) detected flag
      DEBWDF        : Boolean := False;
      --  unspecified
      Reserved_3_31 : A0B.Types.SVD.UInt29 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for M3SR_Register use record
      SEDCF         at 0 range 0 .. 0;
      DEDF          at 0 range 1 .. 1;
      DEBWDF        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RAMECC monitor x configuration register
   type M4CR_Register is record
      --  unspecified
      Reserved_0_1  : A0B.Types.SVD.UInt2 := 16#0#;
      --  ECC single error interrupt enable
      ECCSEIE       : Boolean := False;
      --  ECC double error interrupt enable
      ECCDEIE       : Boolean := False;
      --  ECC double error on byte write (BW) interrupt enable
      ECCDEBWIE     : Boolean := False;
      --  ECC error latching enable
      ECCELEN       : Boolean := False;
      --  unspecified
      Reserved_6_31 : A0B.Types.SVD.UInt26 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for M4CR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      ECCSEIE       at 0 range 2 .. 2;
      ECCDEIE       at 0 range 3 .. 3;
      ECCDEBWIE     at 0 range 4 .. 4;
      ECCELEN       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  RAMECC monitor x status register
   type M4SR_Register is record
      --  ECC single error detected and corrected flag
      SEDCF         : Boolean := False;
      --  ECC double error detected flag
      DEDF          : Boolean := False;
      --  ECC double error on byte write (BW) detected flag
      DEBWDF        : Boolean := False;
      --  unspecified
      Reserved_3_31 : A0B.Types.SVD.UInt29 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for M4SR_Register use record
      SEDCF         at 0 range 0 .. 0;
      DEDF          at 0 range 1 .. 1;
      DEBWDF        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RAMECC monitor x configuration register
   type M5CR_Register is record
      --  unspecified
      Reserved_0_1  : A0B.Types.SVD.UInt2 := 16#0#;
      --  ECC single error interrupt enable
      ECCSEIE       : Boolean := False;
      --  ECC double error interrupt enable
      ECCDEIE       : Boolean := False;
      --  ECC double error on byte write (BW) interrupt enable
      ECCDEBWIE     : Boolean := False;
      --  ECC error latching enable
      ECCELEN       : Boolean := False;
      --  unspecified
      Reserved_6_31 : A0B.Types.SVD.UInt26 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for M5CR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      ECCSEIE       at 0 range 2 .. 2;
      ECCDEIE       at 0 range 3 .. 3;
      ECCDEBWIE     at 0 range 4 .. 4;
      ECCELEN       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  RAMECC monitor x status register
   type M5SR_Register is record
      --  ECC single error detected and corrected flag
      SEDCF         : Boolean := False;
      --  ECC double error detected flag
      DEDF          : Boolean := False;
      --  ECC double error on byte write (BW) detected flag
      DEBWDF        : Boolean := False;
      --  unspecified
      Reserved_3_31 : A0B.Types.SVD.UInt29 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for M5SR_Register use record
      SEDCF         at 0 range 0 .. 0;
      DEDF          at 0 range 1 .. 1;
      DEBWDF        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type RAMECC1_Disc is
     (DRH,
      ECR);

   --  ECC controller is associated to each RAM area
   type RAMECC1_Peripheral
     (Discriminent : RAMECC1_Disc := DRH)
   is record
      --  RAMECC interrupt enable register
      IER    : aliased IER_Register;
      pragma Volatile_Full_Access (IER);
      --  RAMECC monitor x configuration register
      M1CR   : aliased M1CR_Register;
      pragma Volatile_Full_Access (M1CR);
      --  RAMECC monitor x status register
      M1SR   : aliased M1SR_Register;
      pragma Volatile_Full_Access (M1SR);
      --  RAMECC monitor x failing address register
      M1FAR  : aliased M1FAR_Register;
      pragma Volatile_Full_Access (M1FAR);
      --  RAMECC monitor x failing data low register
      M1FDRL : aliased M1FDRL_Register;
      pragma Volatile_Full_Access (M1FDRL);
      --  RAMECC monitor x failing data high register
      M1FDRH : aliased M1FDRH_Register;
      pragma Volatile_Full_Access (M1FDRH);
      --  RAMECC monitor x failing ECC error code register
      M1FECR : aliased M1FECR_Register;
      pragma Volatile_Full_Access (M1FECR);
      --  RAMECC monitor x configuration register
      M2CR   : aliased M2CR_Register;
      pragma Volatile_Full_Access (M2CR);
      --  RAMECC monitor x status register
      M2SR   : aliased M2SR_Register;
      pragma Volatile_Full_Access (M2SR);
      --  RAMECC monitor x failing address register
      M2FAR  : aliased M2FAR_Register;
      pragma Volatile_Full_Access (M2FAR);
      --  RAMECC monitor x failing data low register
      M2FDRL : aliased M2FDRL_Register;
      pragma Volatile_Full_Access (M2FDRL);
      --  RAMECC monitor x failing data high register
      M2FDRH : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing ECC error code register
      M2FECR : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x configuration register
      M3CR   : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x status register
      M3SR   : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing address register
      M3FAR  : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing data low register
      M3FDRL : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing data high register
      M3FDRH : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing ECC error code register
      M3FECR : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x configuration register
      M4CR   : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x status register
      M4SR   : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing address register
      M4FAR  : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing data low register
      M4FDRL : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x configuration register
      M5CR   : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x status register
      M5SR   : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing address register
      M5FAR  : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing data low register
      M5FDRL : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing data high register
      M5FDRH : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing ECC error code register
      M5FECR : aliased A0B.Types.SVD.UInt32;
      case Discriminent is
         when DRH =>
            --  RAMECC monitor x failing data high register
            M4FDRH : aliased A0B.Types.SVD.UInt32;
         when ECR =>
            --  RAMECC monitor x failing ECC error code register
            M4FECR : aliased A0B.Types.SVD.UInt32;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for RAMECC1_Peripheral use record
      IER    at 16#0# range 0 .. 31;
      M1CR   at 16#20# range 0 .. 31;
      M1SR   at 16#24# range 0 .. 31;
      M1FAR  at 16#28# range 0 .. 31;
      M1FDRL at 16#2C# range 0 .. 31;
      M1FDRH at 16#30# range 0 .. 31;
      M1FECR at 16#34# range 0 .. 31;
      M2CR   at 16#40# range 0 .. 31;
      M2SR   at 16#44# range 0 .. 31;
      M2FAR  at 16#48# range 0 .. 31;
      M2FDRL at 16#4C# range 0 .. 31;
      M2FDRH at 16#50# range 0 .. 31;
      M2FECR at 16#58# range 0 .. 31;
      M3CR   at 16#60# range 0 .. 31;
      M3SR   at 16#64# range 0 .. 31;
      M3FAR  at 16#68# range 0 .. 31;
      M3FDRL at 16#6C# range 0 .. 31;
      M3FDRH at 16#70# range 0 .. 31;
      M3FECR at 16#7C# range 0 .. 31;
      M4CR   at 16#80# range 0 .. 31;
      M4SR   at 16#84# range 0 .. 31;
      M4FAR  at 16#88# range 0 .. 31;
      M4FDRL at 16#8C# range 0 .. 31;
      M5CR   at 16#A0# range 0 .. 31;
      M5SR   at 16#A4# range 0 .. 31;
      M5FAR  at 16#A8# range 0 .. 31;
      M5FDRL at 16#AC# range 0 .. 31;
      M5FDRH at 16#B0# range 0 .. 31;
      M5FECR at 16#B4# range 0 .. 31;
      M4FDRH at 16#90# range 0 .. 31;
      M4FECR at 16#90# range 0 .. 31;
   end record;

   --  ECC controller is associated to each RAM area
   RAMECC1_Periph : aliased RAMECC1_Peripheral
     with Import, Address => RAMECC1_Base;

   type RAMECC2_Disc is
     (DRH,
      ECR);

   --  ECC controller is associated to each RAM area
   type RAMECC2_Peripheral
     (Discriminent : RAMECC2_Disc := DRH)
   is record
      --  RAMECC interrupt enable register
      IER    : aliased IER_Register;
      pragma Volatile_Full_Access (IER);
      --  RAMECC monitor x configuration register
      M1CR   : aliased M1CR_Register;
      pragma Volatile_Full_Access (M1CR);
      --  RAMECC monitor x status register
      M1SR   : aliased M1SR_Register_1;
      pragma Volatile_Full_Access (M1SR);
      --  RAMECC monitor x failing address register
      M1FAR  : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing data low register
      M1FDRL : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing data high register
      M1FDRH : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing ECC error code register
      M1FECR : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x configuration register
      M2CR   : aliased M2CR_Register_1;
      pragma Volatile_Full_Access (M2CR);
      --  RAMECC monitor x status register
      M2SR   : aliased M2SR_Register;
      pragma Volatile_Full_Access (M2SR);
      --  RAMECC monitor x failing address register
      M2FAR  : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing data low register
      M2FDRL : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing data high register
      M2FDRH : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing ECC error code register
      M2FECR : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x configuration register
      M3CR   : aliased M3CR_Register;
      pragma Volatile_Full_Access (M3CR);
      --  RAMECC monitor x status register
      M3SR   : aliased M3SR_Register;
      pragma Volatile_Full_Access (M3SR);
      --  RAMECC monitor x failing address register
      M3FAR  : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing data low register
      M3FDRL : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing data high register
      M3FDRH : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing ECC error code register
      M3FECR : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x configuration register
      M4CR   : aliased M4CR_Register;
      pragma Volatile_Full_Access (M4CR);
      --  RAMECC monitor x status register
      M4SR   : aliased M4SR_Register;
      pragma Volatile_Full_Access (M4SR);
      --  RAMECC monitor x failing address register
      M4FAR  : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing data low register
      M4FDRL : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x configuration register
      M5CR   : aliased M5CR_Register;
      pragma Volatile_Full_Access (M5CR);
      --  RAMECC monitor x status register
      M5SR   : aliased M5SR_Register;
      pragma Volatile_Full_Access (M5SR);
      --  RAMECC monitor x failing address register
      M5FAR  : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing data low register
      M5FDRL : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing data high register
      M5FDRH : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing ECC error code register
      M5FECR : aliased A0B.Types.SVD.UInt32;
      case Discriminent is
         when DRH =>
            --  RAMECC monitor x failing data high register
            M4FDRH : aliased A0B.Types.SVD.UInt32;
         when ECR =>
            --  RAMECC monitor x failing ECC error code register
            M4FECR : aliased A0B.Types.SVD.UInt32;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for RAMECC2_Peripheral use record
      IER    at 16#0# range 0 .. 31;
      M1CR   at 16#20# range 0 .. 31;
      M1SR   at 16#24# range 0 .. 31;
      M1FAR  at 16#28# range 0 .. 31;
      M1FDRL at 16#2C# range 0 .. 31;
      M1FDRH at 16#30# range 0 .. 31;
      M1FECR at 16#34# range 0 .. 31;
      M2CR   at 16#40# range 0 .. 31;
      M2SR   at 16#44# range 0 .. 31;
      M2FAR  at 16#48# range 0 .. 31;
      M2FDRL at 16#4C# range 0 .. 31;
      M2FDRH at 16#50# range 0 .. 31;
      M2FECR at 16#58# range 0 .. 31;
      M3CR   at 16#60# range 0 .. 31;
      M3SR   at 16#64# range 0 .. 31;
      M3FAR  at 16#68# range 0 .. 31;
      M3FDRL at 16#6C# range 0 .. 31;
      M3FDRH at 16#70# range 0 .. 31;
      M3FECR at 16#7C# range 0 .. 31;
      M4CR   at 16#80# range 0 .. 31;
      M4SR   at 16#84# range 0 .. 31;
      M4FAR  at 16#88# range 0 .. 31;
      M4FDRL at 16#8C# range 0 .. 31;
      M5CR   at 16#A0# range 0 .. 31;
      M5SR   at 16#A4# range 0 .. 31;
      M5FAR  at 16#A8# range 0 .. 31;
      M5FDRL at 16#AC# range 0 .. 31;
      M5FDRH at 16#B0# range 0 .. 31;
      M5FECR at 16#B4# range 0 .. 31;
      M4FDRH at 16#90# range 0 .. 31;
      M4FECR at 16#90# range 0 .. 31;
   end record;

   --  ECC controller is associated to each RAM area
   RAMECC2_Periph : aliased RAMECC2_Peripheral
     with Import, Address => RAMECC2_Base;

   --  ECC controller is associated to each RAM area
   type RAMECC3_Peripheral is record
      --  RAMECC interrupt enable register
      IER    : aliased IER_Register;
      pragma Volatile_Full_Access (IER);
      --  RAMECC monitor x configuration register
      M1CR   : aliased M1CR_Register;
      pragma Volatile_Full_Access (M1CR);
      --  RAMECC monitor x status register
      M1SR   : aliased M1SR_Register_1;
      pragma Volatile_Full_Access (M1SR);
      --  RAMECC monitor x failing address register
      M1FAR  : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing data low register
      M1FDRL : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing data high register
      M1FDRH : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing ECC error code register
      M1FECR : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x configuration register
      M2CR   : aliased M2CR_Register_1;
      pragma Volatile_Full_Access (M2CR);
      --  RAMECC monitor x status register
      M2SR   : aliased M2SR_Register;
      pragma Volatile_Full_Access (M2SR);
      --  RAMECC monitor x failing address register
      M2FAR  : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing data low register
      M2FDRL : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing data high register
      M2FDRH : aliased A0B.Types.SVD.UInt32;
      --  RAMECC monitor x failing ECC error code register
      M2FECR : aliased A0B.Types.SVD.UInt32;
   end record
     with Volatile;

   for RAMECC3_Peripheral use record
      IER    at 16#0# range 0 .. 31;
      M1CR   at 16#20# range 0 .. 31;
      M1SR   at 16#24# range 0 .. 31;
      M1FAR  at 16#28# range 0 .. 31;
      M1FDRL at 16#2C# range 0 .. 31;
      M1FDRH at 16#30# range 0 .. 31;
      M1FECR at 16#34# range 0 .. 31;
      M2CR   at 16#40# range 0 .. 31;
      M2SR   at 16#44# range 0 .. 31;
      M2FAR  at 16#48# range 0 .. 31;
      M2FDRL at 16#4C# range 0 .. 31;
      M2FDRH at 16#50# range 0 .. 31;
      M2FECR at 16#58# range 0 .. 31;
   end record;

   --  ECC controller is associated to each RAM area
   RAMECC3_Periph : aliased RAMECC3_Peripheral
     with Import, Address => RAMECC3_Base;

end A0B.STM32H723.SVD.RAMECC;
