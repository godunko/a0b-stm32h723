pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32H723.svd

pragma Restrictions (No_Elaboration_Code);

with A0B.Types.SVD;
with System;

package A0B.SVD.STM32H723.OctoSPII_O_Manager is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR_REQ2ACK_TIME_Field is A0B.Types.SVD.Byte;

   --  OctoSPI IO Manager Control Register
   type CR_Register is record
      --  Multiplexed mode Enable
      MUXEN          : Boolean := False;
      --  unspecified
      Reserved_1_15  : A0B.Types.SVD.UInt15 := 16#0#;
      --  REQ to ACK Time
      REQ2ACK_TIME   : CR_REQ2ACK_TIME_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : A0B.Types.SVD.Byte := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CR_Register use record
      MUXEN          at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      REQ2ACK_TIME   at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype P1CR_IOLSRC_Field is A0B.Types.SVD.UInt2;
   subtype P1CR_IOHSRC_Field is A0B.Types.SVD.UInt2;

   --  OctoSPI IO Manager Port 1 configuration register
   type P1CR_Register is record
      --  CLK/CLKn Enable for Port n
      CLKEN          : Boolean := True;
      --  CLK/CLKn Source for Port n
      CLKSRC         : Boolean := False;
      --  unspecified
      Reserved_2_3   : A0B.Types.SVD.UInt2 := 16#0#;
      --  DQSEN
      DQSEN          : Boolean := True;
      --  DQSSRC
      DQSSRC         : Boolean := False;
      --  unspecified
      Reserved_6_7   : A0B.Types.SVD.UInt2 := 16#0#;
      --  NCSEN
      NCSEN          : Boolean := True;
      --  NCSSRC
      NCSSRC         : Boolean := False;
      --  unspecified
      Reserved_10_15 : A0B.Types.SVD.UInt6 := 16#0#;
      --  IOLEN
      IOLEN          : Boolean := True;
      --  IOLSRC
      IOLSRC         : P1CR_IOLSRC_Field := 16#0#;
      --  unspecified
      Reserved_19_23 : A0B.Types.SVD.UInt5 := 16#0#;
      --  IOHEN
      IOHEN          : Boolean := True;
      --  IOHSRC
      IOHSRC         : P1CR_IOHSRC_Field := 16#1#;
      --  unspecified
      Reserved_27_31 : A0B.Types.SVD.UInt5 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for P1CR_Register use record
      CLKEN          at 0 range 0 .. 0;
      CLKSRC         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      DQSEN          at 0 range 4 .. 4;
      DQSSRC         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      NCSEN          at 0 range 8 .. 8;
      NCSSRC         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      IOLEN          at 0 range 16 .. 16;
      IOLSRC         at 0 range 17 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      IOHEN          at 0 range 24 .. 24;
      IOHSRC         at 0 range 25 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype P2CR_IOLSRC_Field is A0B.Types.SVD.UInt2;
   subtype P2CR_IOHSRC_Field is A0B.Types.SVD.UInt2;

   --  OctoSPI IO Manager Port 2 configuration register
   type P2CR_Register is record
      --  CLKEN
      CLKEN          : Boolean := True;
      --  CLKSRC
      CLKSRC         : Boolean := True;
      --  unspecified
      Reserved_2_3   : A0B.Types.SVD.UInt2 := 16#0#;
      --  DQSEN
      DQSEN          : Boolean := True;
      --  DQSSRC
      DQSSRC         : Boolean := True;
      --  unspecified
      Reserved_6_7   : A0B.Types.SVD.UInt2 := 16#0#;
      --  NCSEN
      NCSEN          : Boolean := True;
      --  NCSSRC
      NCSSRC         : Boolean := True;
      --  unspecified
      Reserved_10_15 : A0B.Types.SVD.UInt6 := 16#0#;
      --  IOLEN
      IOLEN          : Boolean := True;
      --  IOLSRC
      IOLSRC         : P2CR_IOLSRC_Field := 16#2#;
      --  unspecified
      Reserved_19_23 : A0B.Types.SVD.UInt5 := 16#0#;
      --  IOHEN
      IOHEN          : Boolean := True;
      --  IOHSRC
      IOHSRC         : P2CR_IOHSRC_Field := 16#3#;
      --  unspecified
      Reserved_27_31 : A0B.Types.SVD.UInt5 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for P2CR_Register use record
      CLKEN          at 0 range 0 .. 0;
      CLKSRC         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      DQSEN          at 0 range 4 .. 4;
      DQSSRC         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      NCSEN          at 0 range 8 .. 8;
      NCSSRC         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      IOLEN          at 0 range 16 .. 16;
      IOLSRC         at 0 range 17 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      IOHEN          at 0 range 24 .. 24;
      IOHSRC         at 0 range 25 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  OctoSPI IO Manager
   type OctoSPII_O_Manager_Peripheral is record
      --  OctoSPI IO Manager Control Register
      CR   : aliased CR_Register;
      pragma Volatile_Full_Access (CR);
      --  OctoSPI IO Manager Port 1 configuration register
      P1CR : aliased P1CR_Register;
      pragma Volatile_Full_Access (P1CR);
      --  OctoSPI IO Manager Port 2 configuration register
      P2CR : aliased P2CR_Register;
      pragma Volatile_Full_Access (P2CR);
   end record
     with Volatile;

   for OctoSPII_O_Manager_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      P1CR at 16#4# range 0 .. 31;
      P2CR at 16#8# range 0 .. 31;
   end record;

   --  OctoSPI IO Manager
   OctoSPII_O_Manager_Periph : aliased OctoSPII_O_Manager_Peripheral
     with Import, Address => OctoSPII_O_Manager_Base;

end A0B.SVD.STM32H723.OctoSPII_O_Manager;
