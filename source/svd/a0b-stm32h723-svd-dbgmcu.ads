pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32H723.svd

pragma Restrictions (No_Elaboration_Code);

with A0B.Types.SVD;
with System;

package A0B.STM32H723.SVD.DBGMCU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype IDC_DEV_ID_Field is A0B.Types.SVD.UInt12;
   subtype IDC_REV_ID_Field is A0B.Types.SVD.UInt16;

   --  DBGMCU Identity Code Register
   type IDC_Register is record
      --  Read-only. Device ID
      DEV_ID         : IDC_DEV_ID_Field;
      --  unspecified
      Reserved_12_15 : A0B.Types.SVD.UInt4;
      --  Read-only. Revision
      REV_ID         : IDC_REV_ID_Field;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for IDC_Register use record
      DEV_ID         at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      REV_ID         at 0 range 16 .. 31;
   end record;

   --  DBGMCU Configuration Register
   type CR_Register is record
      --  Allow D1 domain debug in Sleep mode
      DBGSLPD1       : Boolean := False;
      --  Allow D1 domain debug in Stop mode
      DBGSTPD1       : Boolean := False;
      --  Allow D1 domain debug in Standby mode
      DBGSTBD1       : Boolean := False;
      --  Allow D2 domain debug in Sleep mode
      DBGSLPD2       : Boolean := False;
      --  Allow D2 domain debug in Stop mode
      DBGSTPD2       : Boolean := False;
      --  Allow D2 domain debug in Standby mode
      DBGSTBD2       : Boolean := False;
      --  unspecified
      Reserved_6_6   : A0B.Types.SVD.Bit := 16#0#;
      --  Allow debug in D3 Stop mode
      DBGSTPD3       : Boolean := False;
      --  Allow debug in D3 Standby mode
      DBGSTBD3       : Boolean := False;
      --  unspecified
      Reserved_9_19  : A0B.Types.SVD.UInt11 := 16#0#;
      --  Trace port clock enable
      TRACECLKEN     : Boolean := False;
      --  D1 debug clock enable
      D1DBGCKEN      : Boolean := False;
      --  D3 debug clock enable
      D3DBGCKEN      : Boolean := False;
      --  unspecified
      Reserved_23_27 : A0B.Types.SVD.UInt5 := 16#0#;
      --  External trigger output enable
      TRGOEN         : Boolean := False;
      --  unspecified
      Reserved_29_31 : A0B.Types.SVD.UInt3 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CR_Register use record
      DBGSLPD1       at 0 range 0 .. 0;
      DBGSTPD1       at 0 range 1 .. 1;
      DBGSTBD1       at 0 range 2 .. 2;
      DBGSLPD2       at 0 range 3 .. 3;
      DBGSTPD2       at 0 range 4 .. 4;
      DBGSTBD2       at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      DBGSTPD3       at 0 range 7 .. 7;
      DBGSTBD3       at 0 range 8 .. 8;
      Reserved_9_19  at 0 range 9 .. 19;
      TRACECLKEN     at 0 range 20 .. 20;
      D1DBGCKEN      at 0 range 21 .. 21;
      D3DBGCKEN      at 0 range 22 .. 22;
      Reserved_23_27 at 0 range 23 .. 27;
      TRGOEN         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  DBGMCU APB3 peripheral freeze register CPU1
   type APB3FZ_Register is record
      --  unspecified
      Reserved_0_5  : A0B.Types.SVD.UInt6 := 16#0#;
      --  WWDG1 stop in debug
      WWDG1         : Boolean := False;
      --  unspecified
      Reserved_7_31 : A0B.Types.SVD.UInt25 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB3FZ_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      WWDG1         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  APB1LFZ_DBG_TIM array
   type APB1LFZ_DBG_TIM_Field_Array is array (2 .. 10) of Boolean
     with Component_Size => 1, Size => 9;

   --  Type definition for APB1LFZ_DBG_TIM
   type APB1LFZ_DBG_TIM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DBG_TIM as a value
            Val : A0B.Types.SVD.UInt9;
         when True =>
            --  DBG_TIM as an array
            Arr : APB1LFZ_DBG_TIM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for APB1LFZ_DBG_TIM_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  APB1LFZ_DBG_I2C array
   type APB1LFZ_DBG_I2C_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for APB1LFZ_DBG_I2C
   type APB1LFZ_DBG_I2C_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DBG_I2C as a value
            Val : A0B.Types.SVD.UInt3;
         when True =>
            --  DBG_I2C as an array
            Arr : APB1LFZ_DBG_I2C_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for APB1LFZ_DBG_I2C_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  DBGMCU APB1L peripheral freeze register
   type APB1LFZ_Register is record
      --  TIM2 stop in debug
      DBG_TIM        : APB1LFZ_DBG_TIM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  LPTIM1 stop in debug
      DBG_LPTIM1     : Boolean := False;
      --  unspecified
      Reserved_10_10 : A0B.Types.SVD.Bit := 16#0#;
      --  WWDG2 stop in debug
      DBG_WWDG2      : Boolean := False;
      --  unspecified
      Reserved_12_20 : A0B.Types.SVD.UInt9 := 16#0#;
      --  I2C1 SMBUS timeout stop in debug
      DBG_I2C        : APB1LFZ_DBG_I2C_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : A0B.Types.SVD.Byte := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB1LFZ_Register use record
      DBG_TIM        at 0 range 0 .. 8;
      DBG_LPTIM1     at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      DBG_WWDG2      at 0 range 11 .. 11;
      Reserved_12_20 at 0 range 12 .. 20;
      DBG_I2C        at 0 range 21 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  APB2FZ_DBG_TIM array
   type APB2FZ_DBG_TIM_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for APB2FZ_DBG_TIM
   type APB2FZ_DBG_TIM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DBG_TIM as a value
            Val : A0B.Types.SVD.UInt2;
         when True =>
            --  DBG_TIM as an array
            Arr : APB2FZ_DBG_TIM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for APB2FZ_DBG_TIM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  APB2FZ_DBG_TIM array
   type APB2FZ_DBG_TIM_Field_Array_1 is array (15 .. 17) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for APB2FZ_DBG_TIM
   type APB2FZ_DBG_TIM_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DBG_TIM as a value
            Val : A0B.Types.SVD.UInt3;
         when True =>
            --  DBG_TIM as an array
            Arr : APB2FZ_DBG_TIM_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for APB2FZ_DBG_TIM_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  DBGMCU APB2 peripheral freeze register
   type APB2FZ_Register is record
      --  TIM1 stop in debug
      DBG_TIM        : APB2FZ_DBG_TIM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_15  : A0B.Types.SVD.UInt14 := 16#0#;
      --  TIM15 stop in debug
      DBG_TIM_1      : APB2FZ_DBG_TIM_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_31 : A0B.Types.SVD.UInt13 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB2FZ_Register use record
      DBG_TIM        at 0 range 0 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      DBG_TIM_1      at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  APB4FZ_DBG_LPTIM array
   type APB4FZ_DBG_LPTIM_Field_Array is array (2 .. 5) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for APB4FZ_DBG_LPTIM
   type APB4FZ_DBG_LPTIM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DBG_LPTIM as a value
            Val : A0B.Types.SVD.UInt4;
         when True =>
            --  DBG_LPTIM as an array
            Arr : APB4FZ_DBG_LPTIM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for APB4FZ_DBG_LPTIM_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  APB4FZ_DBG_WDGLSD array
   type APB4FZ_DBG_WDGLSD_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for APB4FZ_DBG_WDGLSD
   type APB4FZ_DBG_WDGLSD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DBG_WDGLSD as a value
            Val : A0B.Types.SVD.UInt2;
         when True =>
            --  DBG_WDGLSD as an array
            Arr : APB4FZ_DBG_WDGLSD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for APB4FZ_DBG_WDGLSD_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  DBGMCU APB4 peripheral freeze register
   type APB4FZ_Register is record
      --  unspecified
      Reserved_0_6   : A0B.Types.SVD.UInt7 := 16#0#;
      --  I2C4 SMBUS timeout stop in debug
      DBG_I2C4       : Boolean := False;
      --  unspecified
      Reserved_8_8   : A0B.Types.SVD.Bit := 16#0#;
      --  LPTIM2 stop in debug
      DBG_LPTIM      : APB4FZ_DBG_LPTIM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_13_15 : A0B.Types.SVD.UInt3 := 16#0#;
      --  RTC stop in debug
      DBG_RTC        : Boolean := False;
      --  unspecified
      Reserved_17_17 : A0B.Types.SVD.Bit := 16#0#;
      --  Independent watchdog for D1 stop in debug
      DBG_WDGLSD     : APB4FZ_DBG_WDGLSD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : A0B.Types.SVD.UInt12 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB4FZ_Register use record
      Reserved_0_6   at 0 range 0 .. 6;
      DBG_I2C4       at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      DBG_LPTIM      at 0 range 9 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DBG_RTC        at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      DBG_WDGLSD     at 0 range 18 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Microcontroller Debug Unit
   type DBGMCU_Peripheral is record
      --  DBGMCU Identity Code Register
      IDC      : aliased IDC_Register;
      pragma Volatile_Full_Access (IDC);
      --  DBGMCU Configuration Register
      CR       : aliased CR_Register;
      pragma Volatile_Full_Access (CR);
      --  DBGMCU APB3 peripheral freeze register CPU1
      APB3FZ1  : aliased APB3FZ_Register;
      pragma Volatile_Full_Access (APB3FZ1);
      --  DBGMCU APB3 peripheral freeze register CPU2
      APB3FZ2  : aliased APB3FZ_Register;
      pragma Volatile_Full_Access (APB3FZ2);
      --  DBGMCU APB1L peripheral freeze register
      APB1LFZ1 : aliased APB1LFZ_Register;
      pragma Volatile_Full_Access (APB1LFZ1);
      --  DBGMCU APB1L peripheral freeze register CPU2
      APB1LFZ2 : aliased APB1LFZ_Register;
      pragma Volatile_Full_Access (APB1LFZ2);
      --  DBGMCU APB2 peripheral freeze register
      APB2FZ1  : aliased APB2FZ_Register;
      pragma Volatile_Full_Access (APB2FZ1);
      --  DBGMCU APB2 peripheral freeze register CPU2
      APB2FZ2  : aliased APB2FZ_Register;
      pragma Volatile_Full_Access (APB2FZ2);
      --  DBGMCU APB4 peripheral freeze register
      APB4FZ1  : aliased APB4FZ_Register;
      pragma Volatile_Full_Access (APB4FZ1);
      --  DBGMCU APB4 peripheral freeze register CPU2
      APB4FZ2  : aliased APB4FZ_Register;
      pragma Volatile_Full_Access (APB4FZ2);
   end record
     with Volatile;

   for DBGMCU_Peripheral use record
      IDC      at 16#0# range 0 .. 31;
      CR       at 16#4# range 0 .. 31;
      APB3FZ1  at 16#34# range 0 .. 31;
      APB3FZ2  at 16#38# range 0 .. 31;
      APB1LFZ1 at 16#3C# range 0 .. 31;
      APB1LFZ2 at 16#40# range 0 .. 31;
      APB2FZ1  at 16#4C# range 0 .. 31;
      APB2FZ2  at 16#50# range 0 .. 31;
      APB4FZ1  at 16#54# range 0 .. 31;
      APB4FZ2  at 16#58# range 0 .. 31;
   end record;

   --  Microcontroller Debug Unit
   DBGMCU_Periph : aliased DBGMCU_Peripheral
     with Import, Address => DBGMCU_Base;

end A0B.STM32H723.SVD.DBGMCU;
